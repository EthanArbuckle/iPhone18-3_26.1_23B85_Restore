uint64_t storeEnumTagSinglePayload for ImportError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for ImportError(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ExportError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ExportError(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for XPCServiceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCServiceError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t closure #1 in HKWorkoutConfiguration.protoRepresentation.getter(_DWORD *a1, id a2)
{
  result = [a2 activityType];
  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_8;
  }

  *a1 = result;
  result = [a2 locationType];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  if (HIDWORD(result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = type metadata accessor for Apple_Workout_WorkoutConfiguration();
  v7 = a1 + *(v6 + 24);
  *v7 = v5;
  v7[4] = 0;
  result = [a2 swimmingLocationType];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!HIDWORD(result))
  {
    v8 = a1 + *(v6 + 28);
    *v8 = result;
    v8[4] = 0;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t CadenceThresholdAlert.init(target:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t CadenceThresholdAlert.target.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CadenceThresholdAlert.target.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t static CadenceThresholdAlert.== infix(_:_:)()
{
  type metadata accessor for NSUnitFrequency();

  return static Measurement.== infix<A, B>(_:_:)();
}

uint64_t CadenceThresholdAlert.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int CadenceThresholdAlert.hashValue.getter()
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CadenceThresholdAlert()
{
  type metadata accessor for NSUnitFrequency();

  return static Measurement.== infix<A, B>(_:_:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CadenceThresholdAlert()
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CadenceThresholdAlert()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CadenceThresholdAlert()
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for WorkoutAlertProtable.protoRepresentation.getter in conformance CadenceThresholdAlert()
{
  return protocol witness for WorkoutAlertProtable.protoRepresentation.getter in conformance CadenceThresholdAlert();
}

{
  type metadata accessor for Apple_Workout_WorkoutAlert(0);
  lazy protocol witness table accessor for type CadenceThresholdAlert and conformance CadenceThresholdAlert(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert, type metadata accessor for Apple_Workout_WorkoutAlert);
  return static Message.with(_:)();
}

uint64_t protocol witness for WorkoutAlertProtable.validateValues(for:location:) in conformance CadenceThresholdAlert()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
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

uint64_t static WorkoutAlert<>.cadence(_:unit:)(void *a1)
{
  type metadata accessor for NSUnitFrequency();
  v2 = a1;

  return Measurement.init(value:unit:)();
}

BOOL static CadenceRangeAlert.== infix(_:_:)()
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

uint64_t CadenceRangeAlert.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v1 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR) + 36);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int CadenceRangeAlert.hashValue.getter()
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v1 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR) + 36);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance CadenceRangeAlert()
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CadenceRangeAlert()
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v1 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR) + 36);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CadenceRangeAlert()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v1 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR) + 36);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CadenceRangeAlert()
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>);
  dispatch thunk of Hashable.hash(into:)();
  v1 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR) + 36);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void protocol witness for WorkoutAlertProtable.validateValues(for:location:) in conformance CadenceRangeAlert()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  Measurement.value.getter();
  v2 = v1;
  v3 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR) + 36);
  Measurement.value.getter();
  specialized WorkoutAlertValidating.validateRangeValue(_:_:)(v2, v4);
}

uint64_t static WorkoutAlert<>.cadence(_:unit:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
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
    v23(&v10[*(v22 + 48)], v15, v11);
    _sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGWOcTm_0(v10, v7, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMR);
    v24 = *(v22 + 48);
    v23(a2, v7, v11);
    v25 = v12[1];
    v25(&v7[v24], v11);
    _sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGWObTm_0(v10, v7, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMR);
    v26 = *(v22 + 48);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
    v23(&a2[*(v27 + 36)], &v7[v26], v11);
    return (v25)(v7, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGWObTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t instantiation function for generic protocol witness table for CadenceThresholdAlert(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CadenceThresholdAlert and conformance CadenceThresholdAlert(&lazy protocol witness table cache variable for type CadenceThresholdAlert and conformance CadenceThresholdAlert, type metadata accessor for CadenceThresholdAlert);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type CadenceThresholdAlert and conformance CadenceThresholdAlert(&lazy protocol witness table cache variable for type CadenceThresholdAlert and conformance CadenceThresholdAlert, type metadata accessor for CadenceThresholdAlert);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CadenceThresholdAlert and conformance CadenceThresholdAlert(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t instantiation function for generic protocol witness table for CadenceRangeAlert(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CadenceThresholdAlert and conformance CadenceThresholdAlert(&lazy protocol witness table cache variable for type CadenceRangeAlert and conformance CadenceRangeAlert, type metadata accessor for CadenceRangeAlert);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type CadenceThresholdAlert and conformance CadenceThresholdAlert(&lazy protocol witness table cache variable for type CadenceRangeAlert and conformance CadenceRangeAlert, type metadata accessor for CadenceRangeAlert);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for CadenceThresholdAlert(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for Measurement<NSUnitFrequency>()
{
  if (!lazy cache variable for type metadata for Measurement<NSUnitFrequency>)
  {
    type metadata accessor for NSUnitFrequency();
    v0 = type metadata accessor for Measurement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Measurement<NSUnitFrequency>);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

uint64_t type metadata completion function for CadenceThresholdAlert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for Apple_Workout_PowerAlert()
{
  type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(319, &lazy cache variable for type metadata for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget()
{
  result = type metadata accessor for Apple_Workout_PowerValue(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_PowerRange(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Workout_ZoneValue(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for Apple_Workout_PowerAlert(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Apple_Workout_PowerRange()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(319, &lazy cache variable for type metadata for Apple_Workout_PowerValue?, type metadata accessor for Apple_Workout_PowerValue);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata completion function for Apple_Workout_PowerValue()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_PowerValue.PowerUnit(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Apple_Workout_PowerValue.PowerUnit(uint64_t result, int a2, int a3)
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

uint64_t getEnumTag for Apple_Workout_PowerValue.PowerUnit(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for Apple_Workout_PowerValue.PowerUnit(uint64_t result, int a2)
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

unint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_PowerValue.PowerUnit@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance Apple_Workout_PowerValue.PowerUnit()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_PowerValue.PowerUnit@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Apple_Workout_PowerValue.PowerUnit(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_PowerValue.PowerUnit()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_PowerValue.PowerUnit(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_PowerValue.PowerUnit()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_PowerValue.PowerUnit(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_PowerValue.PowerUnit] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_PowerValue.PowerUnit] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_PowerValue.PowerUnit] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10WorkoutKit06Apple_A11_PowerValueV0D4UnitOGMd, &_sSay10WorkoutKit06Apple_A11_PowerValueV0D4UnitOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_PowerValue.PowerUnit] and conformance [A]);
  }

  return result;
}

uint64_t Apple_Workout_PowerAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        closure #3 in Apple_Workout_PowerAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 2:
        closure #2 in Apple_Workout_PowerAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 1:
        closure #1 in Apple_Workout_PowerAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_PowerAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Workout_PowerValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a1, v14, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v14, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v14, v22, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v22, v19, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v19, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
      v34 = v49;
    }

    else
    {
      outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v29, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
      v36 = v44;
      outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v19, v44, type metadata accessor for Apple_Workout_PowerValue);
      outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v36, v29, type metadata accessor for Apple_Workout_PowerValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }
  }

  v37 = v47;
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerValue and conformance Apple_Workout_PowerValue, type metadata accessor for Apple_Workout_PowerValue);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v29, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  }

  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(v29, v37, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v29, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
    return outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v37, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  }

  else
  {
    v40 = v45;
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v37, v45, type metadata accessor for Apple_Workout_PowerValue);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v29, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
    v41 = v43;
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v43, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v40, v41, type metadata accessor for Apple_Workout_PowerValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t closure #2 in Apple_Workout_PowerAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Workout_PowerRange(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerRangeVSgMd, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a1, v14, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v14, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v14, v22, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v22, v19, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v29, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMd, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMR);
      v36 = v45;
      outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v19, v45, type metadata accessor for Apple_Workout_PowerRange);
      outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v36, v29, type metadata accessor for Apple_Workout_PowerRange);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v19, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
      v34 = v49;
    }
  }

  v37 = v47;
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange, type metadata accessor for Apple_Workout_PowerRange);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v29, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMd, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMR);
  }

  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(v29, v37, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMd, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v29, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMd, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMR);
    return outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v37, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMd, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMR);
  }

  else
  {
    v40 = v44;
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v37, v44, type metadata accessor for Apple_Workout_PowerRange);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v29, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMd, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMR);
    v41 = v43;
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v43, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v40, v41, type metadata accessor for Apple_Workout_PowerRange);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t closure #3 in Apple_Workout_PowerAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Workout_ZoneValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a1, v14, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v14, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v14, v22, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v22, v19, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v29, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
      v36 = v45;
      outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v19, v45, type metadata accessor for Apple_Workout_ZoneValue);
      outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v36, v29, type metadata accessor for Apple_Workout_ZoneValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v19, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
      v34 = v49;
    }
  }

  v37 = v47;
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_ZoneValue and conformance Apple_Workout_ZoneValue, type metadata accessor for Apple_Workout_ZoneValue);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v29, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
  }

  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(v29, v37, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v29, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
    return outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v37, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
  }

  else
  {
    v40 = v44;
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v37, v44, type metadata accessor for Apple_Workout_ZoneValue);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v29, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
    v41 = v43;
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v43, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v40, v41, type metadata accessor for Apple_Workout_ZoneValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t Apple_Workout_PowerAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(v3, &v16 - v10, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v12 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      closure #2 in Apple_Workout_PowerAlert.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #3 in Apple_Workout_PowerAlert.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else
  {
    closure #1 in Apple_Workout_PowerAlert.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v11, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
  if (!v4)
  {
LABEL_8:
    v15 = v3 + *(type metadata accessor for Apple_Workout_PowerAlert(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_PowerAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_PowerValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a1, v8, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v13 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v8, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v8, v12, type metadata accessor for Apple_Workout_PowerValue);
    lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerValue and conformance Apple_Workout_PowerValue, type metadata accessor for Apple_Workout_PowerValue);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v12, type metadata accessor for Apple_Workout_PowerValue);
  }

  result = outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v8, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_PowerAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_PowerRange(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a1, v8, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v13 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v8, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v8, v12, type metadata accessor for Apple_Workout_PowerRange);
    lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange, type metadata accessor for Apple_Workout_PowerRange);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v12, type metadata accessor for Apple_Workout_PowerRange);
  }

  result = outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v8, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
  __break(1u);
  return result;
}

uint64_t closure #3 in Apple_Workout_PowerAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_ZoneValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a1, v8, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v13 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v8, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v8, v12, type metadata accessor for Apple_Workout_ZoneValue);
    lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_ZoneValue and conformance Apple_Workout_ZoneValue, type metadata accessor for Apple_Workout_ZoneValue);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v12, type metadata accessor for Apple_Workout_ZoneValue);
  }

  result = outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v8, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_PowerAlert@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_PowerAlert@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_PowerAlert(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_PowerAlert(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_PowerAlert;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_PowerAlert(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert, type metadata accessor for Apple_Workout_PowerAlert);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_PowerAlert(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert, type metadata accessor for Apple_Workout_PowerAlert);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_PowerAlert()
{
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert, type metadata accessor for Apple_Workout_PowerAlert);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_PowerValue.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        lazy protocol witness table accessor for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_PowerValue.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), lazy protocol witness table accessor for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    if (!v0[2] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Apple_Workout_PowerValue(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_PowerValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_PowerValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_PowerValue(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_PowerValue(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_PowerValue;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_PowerValue(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerValue and conformance Apple_Workout_PowerValue, type metadata accessor for Apple_Workout_PowerValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_PowerValue(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerValue and conformance Apple_Workout_PowerValue, type metadata accessor for Apple_Workout_PowerValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_PowerValue()
{
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerValue and conformance Apple_Workout_PowerValue, type metadata accessor for Apple_Workout_PowerValue);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_PowerRange.decodeMessage<A>(decoder:)()
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
      closure #1 in Apple_Workout_PowerRange.decodeMessage<A>(decoder:)();
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_PowerRange.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_PowerRange.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_PowerRange(0) + 20);
  type metadata accessor for Apple_Workout_PowerValue(0);
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerValue and conformance Apple_Workout_PowerValue, type metadata accessor for Apple_Workout_PowerValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in Apple_Workout_PowerRange.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_PowerRange(0) + 24);
  type metadata accessor for Apple_Workout_PowerValue(0);
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerValue and conformance Apple_Workout_PowerValue, type metadata accessor for Apple_Workout_PowerValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_PowerRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_PowerRange.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Apple_Workout_PowerRange.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_PowerRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_PowerValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_PowerRange(0);
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a1 + *(v14 + 20), v8, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v8, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  }

  outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v8, v13, type metadata accessor for Apple_Workout_PowerValue);
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerValue and conformance Apple_Workout_PowerValue, type metadata accessor for Apple_Workout_PowerValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v13, type metadata accessor for Apple_Workout_PowerValue);
}

uint64_t closure #2 in Apple_Workout_PowerRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_PowerValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_PowerRange(0);
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a1 + *(v14 + 24), v8, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v8, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  }

  outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v8, v13, type metadata accessor for Apple_Workout_PowerValue);
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerValue and conformance Apple_Workout_PowerValue, type metadata accessor for Apple_Workout_PowerValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v13, type metadata accessor for Apple_Workout_PowerValue);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_PowerRange@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Workout_PowerValue(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 24);

  return v8(v6, 1, 1, v5);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_PowerRange@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_PowerRange(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_PowerRange(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange, type metadata accessor for Apple_Workout_PowerRange);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_PowerAlert@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_PowerRange(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange, type metadata accessor for Apple_Workout_PowerRange);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_PowerAlert()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_PowerRange()
{
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange, type metadata accessor for Apple_Workout_PowerRange);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_PowerAlert()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized static Apple_Workout_PowerValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (*(a1 + 2) == *(a2 + 2))
  {
    v4 = *(type metadata accessor for Apple_Workout_PowerValue(0) + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Apple_Workout_PowerRange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_PowerValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v46 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v45 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerValueVSg_ADtMd, &_s10WorkoutKit06Apple_A11_PowerValueVSg_ADtMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v50 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - v20;
  v48 = type metadata accessor for Apple_Workout_PowerRange(0);
  v49 = v16;
  v22 = *(v48 + 20);
  v23 = *(v16 + 48);
  v51 = a1;
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a1 + v22, v21, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  v52 = a2;
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a2 + v22, &v21[v23], &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  v24 = *(v5 + 48);
  if (v24(v21, 1, v4) == 1)
  {
    if (v24(&v21[v23], 1, v4) == 1)
    {
      v25 = v4;
      outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v21, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(v21, v15, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  if (v24(&v21[v23], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v15, type metadata accessor for Apple_Workout_PowerValue);
LABEL_10:
    v30 = &_s10WorkoutKit06Apple_A11_PowerValueVSg_ADtMd;
    v31 = &_s10WorkoutKit06Apple_A11_PowerValueVSg_ADtMR;
LABEL_33:
    v37 = v21;
    goto LABEL_34;
  }

  v32 = &v21[v23];
  v33 = v47;
  outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v32, v47, type metadata accessor for Apple_Workout_PowerValue);
  v34 = *v15;
  v35 = *v33;
  if (*(v15 + 8))
  {
    v34 = *v15 != 0;
  }

  if (*(v33 + 8) == 1)
  {
    if (v35)
    {
      if (v34 != 1)
      {
        goto LABEL_32;
      }
    }

    else if (v34)
    {
LABEL_32:
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v33, type metadata accessor for Apple_Workout_PowerValue);
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v15, type metadata accessor for Apple_Workout_PowerValue);
      v30 = &_s10WorkoutKit06Apple_A11_PowerValueVSgMd;
      v31 = &_s10WorkoutKit06Apple_A11_PowerValueVSgMR;
      goto LABEL_33;
    }
  }

  else if (v34 != v35)
  {
    goto LABEL_32;
  }

  if (v15[2] != *(v33 + 16))
  {
    goto LABEL_32;
  }

  v25 = v4;
  v42 = *(v4 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  LOBYTE(v42) = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v33, type metadata accessor for Apple_Workout_PowerValue);
  outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v15, type metadata accessor for Apple_Workout_PowerValue);
  outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v21, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  if ((v42 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_4:
  v26 = *(v48 + 24);
  v27 = *(v49 + 48);
  v28 = v50;
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(v51 + v26, v50, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(v52 + v26, v28 + v27, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  if (v24(v28, 1, v25) != 1)
  {
    v36 = v46;
    outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(v28, v46, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
    if (v24((v28 + v27), 1, v25) == 1)
    {
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v36, type metadata accessor for Apple_Workout_PowerValue);
      goto LABEL_19;
    }

    v38 = v28 + v27;
    v39 = v45;
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v38, v45, type metadata accessor for Apple_Workout_PowerValue);
    v40 = *v36;
    v41 = *v39;
    if (*(v36 + 8))
    {
      v40 = *v36 != 0;
    }

    if (*(v39 + 8) == 1)
    {
      if (v41)
      {
        if (v40 != 1)
        {
          goto LABEL_43;
        }
      }

      else if (v40)
      {
LABEL_43:
        outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v39, type metadata accessor for Apple_Workout_PowerValue);
        outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v36, type metadata accessor for Apple_Workout_PowerValue);
        v30 = &_s10WorkoutKit06Apple_A11_PowerValueVSgMd;
        v31 = &_s10WorkoutKit06Apple_A11_PowerValueVSgMR;
        v37 = v28;
        goto LABEL_34;
      }
    }

    else if (v40 != v41)
    {
      goto LABEL_43;
    }

    if (*(v36 + 16) == *(v39 + 16))
    {
      v44 = *(v25 + 24);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      LOBYTE(v44) = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v39, type metadata accessor for Apple_Workout_PowerValue);
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v36, type metadata accessor for Apple_Workout_PowerValue);
      outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v28, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
      if (v44)
      {
        goto LABEL_7;
      }

LABEL_35:
      v29 = 0;
      return v29 & 1;
    }

    goto LABEL_43;
  }

  if (v24((v28 + v27), 1, v25) != 1)
  {
LABEL_19:
    v30 = &_s10WorkoutKit06Apple_A11_PowerValueVSg_ADtMd;
    v31 = &_s10WorkoutKit06Apple_A11_PowerValueVSg_ADtMR;
    v37 = v28;
LABEL_34:
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v37, v30, v31);
    goto LABEL_35;
  }

  outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v28, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
LABEL_7:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v29 & 1;
}

uint64_t specialized static Apple_Workout_PowerAlert.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSg_AFtMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a1, &v24 - v15, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a2, &v16[v18], &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v16, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Workout_PowerAlert(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(v16, v12, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v12, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
LABEL_6:
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v16, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSg_AFtMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(&v16[v18], v8, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
  v21 = specialized static Apple_Workout_PowerAlert.OneOf_PowerAlertTarget.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v8, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
  outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v12, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
  outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v16, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Apple_Workout_PowerAlert.OneOf_PowerAlertTarget.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v47 = type metadata accessor for Apple_Workout_ZoneValue(0);
  v3 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v48 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Apple_Workout_PowerRange(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_PowerValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = (&v46 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetO_AEtMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetO_AEtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v46 - v25;
  v28 = *(v27 + 56);
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(a1, &v46 - v25);
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v49, &v26[v28]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v26, v22);
    if (swift_getEnumCaseMultiPayload())
    {
      v31 = type metadata accessor for Apple_Workout_PowerValue;
      v32 = v22;
LABEL_13:
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v32, v31);
      outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v26, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetO_AEtMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetO_AEtMR);
LABEL_32:
      v30 = 0;
      return v30 & 1;
    }

    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(&v26[v28], v12, type metadata accessor for Apple_Workout_PowerValue);
    v39 = *v22;
    v40 = *v12;
    if (*(v22 + 8))
    {
      v39 = *v22 != 0;
    }

    if (*(v12 + 8) == 1)
    {
      if (v40)
      {
        if (v39 != 1)
        {
          goto LABEL_29;
        }
      }

      else if (v39)
      {
        goto LABEL_29;
      }
    }

    else if (v39 != v40)
    {
      goto LABEL_29;
    }

    if (v22[2] == v12[2])
    {
      v43 = *(v9 + 24);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v44 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v12, type metadata accessor for Apple_Workout_PowerValue);
      if (v44)
      {
        v37 = type metadata accessor for Apple_Workout_PowerValue;
        v38 = v22;
        goto LABEL_28;
      }

      goto LABEL_30;
    }

LABEL_29:
    outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v12, type metadata accessor for Apple_Workout_PowerValue);
LABEL_30:
    v41 = type metadata accessor for Apple_Workout_PowerValue;
    v42 = v22;
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v26, v16);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v31 = type metadata accessor for Apple_Workout_ZoneValue;
      v32 = v16;
      goto LABEL_13;
    }

    v33 = &v26[v28];
    v34 = v48;
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v33, v48, type metadata accessor for Apple_Workout_ZoneValue);
    if (*v16 == *v34)
    {
      v35 = *(v47 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v34, type metadata accessor for Apple_Workout_ZoneValue);
      if (v36)
      {
        v37 = type metadata accessor for Apple_Workout_ZoneValue;
        v38 = v16;
LABEL_28:
        outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v38, v37);
        outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v26, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
        v30 = 1;
        return v30 & 1;
      }
    }

    else
    {
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v34, type metadata accessor for Apple_Workout_ZoneValue);
    }

    v41 = type metadata accessor for Apple_Workout_ZoneValue;
    v42 = v16;
LABEL_31:
    outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v42, v41);
    outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v26, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
    goto LABEL_32;
  }

  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v26, v19);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v31 = type metadata accessor for Apple_Workout_PowerRange;
    v32 = v19;
    goto LABEL_13;
  }

  outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(&v26[v28], v8, type metadata accessor for Apple_Workout_PowerRange);
  v30 = specialized static Apple_Workout_PowerRange.== infix(_:_:)(v19, v8);
  outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v8, type metadata accessor for Apple_Workout_PowerRange);
  outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v19, type metadata accessor for Apple_Workout_PowerRange);
  outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v26, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
  return v30 & 1;
}

uint64_t outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata completion function for Apple_Workout_SpeedAlert()
{
  type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(319, &lazy cache variable for type metadata for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget()
{
  result = type metadata accessor for Apple_Workout_SpeedValue(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_SpeedRange(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for Apple_Workout_SpeedAlert(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Apple_Workout_SpeedRange()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(319, &lazy cache variable for type metadata for Apple_Workout_SpeedValue?, type metadata accessor for Apple_Workout_SpeedValue);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata completion function for Apple_Workout_SpeedValue()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(319, &lazy cache variable for type metadata for Apple_Workout_DistanceValue?, type metadata accessor for Apple_Workout_DistanceValue);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(319, &lazy cache variable for type metadata for Apple_Workout_TimeValue?, type metadata accessor for Apple_Workout_TimeValue);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t Apple_Workout_SpeedAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      closure #1 in Apple_Workout_SpeedAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_SpeedAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_SpeedAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Workout_SpeedValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a1, v14, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v14, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v14, v22, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
    outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v22, v19, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v19, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
      v34 = v49;
    }

    else
    {
      outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v29, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
      v36 = v45;
      outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v19, v45, type metadata accessor for Apple_Workout_SpeedValue);
      outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v36, v29, type metadata accessor for Apple_Workout_SpeedValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }
  }

  v37 = v47;
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedValue and conformance Apple_Workout_SpeedValue, type metadata accessor for Apple_Workout_SpeedValue);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v29, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  }

  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v29, v37, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v29, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
    return outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v37, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  }

  else
  {
    v40 = v44;
    outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v37, v44, type metadata accessor for Apple_Workout_SpeedValue);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v29, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
    v41 = v43;
    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v43, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
    outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v40, v41, type metadata accessor for Apple_Workout_SpeedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t closure #2 in Apple_Workout_SpeedAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Workout_SpeedRange(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedRangeVSgMd, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a1, v14, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v14, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v14, v22, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
    outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v22, v19, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v29, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMd, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMR);
      v36 = v45;
      outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v19, v45, type metadata accessor for Apple_Workout_SpeedRange);
      outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v36, v29, type metadata accessor for Apple_Workout_SpeedRange);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v19, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
      v34 = v49;
    }
  }

  v37 = v47;
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange, type metadata accessor for Apple_Workout_SpeedRange);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v29, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMd, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMR);
  }

  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v29, v37, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMd, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v29, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMd, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMR);
    return outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v37, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMd, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMR);
  }

  else
  {
    v40 = v44;
    outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v37, v44, type metadata accessor for Apple_Workout_SpeedRange);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v29, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMd, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMR);
    v41 = v43;
    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v43, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
    outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v40, v41, type metadata accessor for Apple_Workout_SpeedRange);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t Apple_Workout_SpeedAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v3, &v15 - v10, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v12 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in Apple_Workout_SpeedAlert.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in Apple_Workout_SpeedAlert.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v11, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for Apple_Workout_SpeedAlert(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_SpeedAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_SpeedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a1, v8, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v13 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v8, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v8, v12, type metadata accessor for Apple_Workout_SpeedValue);
    lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedValue and conformance Apple_Workout_SpeedValue, type metadata accessor for Apple_Workout_SpeedValue);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v12, type metadata accessor for Apple_Workout_SpeedValue);
  }

  result = outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v8, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_SpeedAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_SpeedRange(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a1, v8, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v13 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v8, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v8, v12, type metadata accessor for Apple_Workout_SpeedRange);
    lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange, type metadata accessor for Apple_Workout_SpeedRange);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v12, type metadata accessor for Apple_Workout_SpeedRange);
  }

  result = outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v8, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_SpeedAlert@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_SpeedAlert@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_SpeedAlert(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_SpeedAlert(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_SpeedAlert;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_SpeedAlert(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert, type metadata accessor for Apple_Workout_SpeedAlert);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_SpeedAlert(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert, type metadata accessor for Apple_Workout_SpeedAlert);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_SpeedAlert()
{
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert, type metadata accessor for Apple_Workout_SpeedAlert);

  return Message.hash(into:)();
}

uint64_t closure #1 in Apple_Workout_SpeedValue.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_SpeedValue(0) + 20);
  type metadata accessor for Apple_Workout_DistanceValue(0);
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in Apple_Workout_SpeedValue.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_SpeedValue(0) + 24);
  type metadata accessor for Apple_Workout_TimeValue(0);
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #1 in Apple_Workout_SpeedValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for Apple_Workout_SpeedValue(0);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a1 + *(v14 + 20), v8, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v8, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  }

  outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v8, v13, type metadata accessor for Apple_Workout_DistanceValue);
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v13, type metadata accessor for Apple_Workout_DistanceValue);
}

uint64_t closure #2 in Apple_Workout_SpeedValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for Apple_Workout_SpeedValue(0);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a1 + *(v14 + 24), v8, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v8, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  }

  outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v8, v13, type metadata accessor for Apple_Workout_TimeValue);
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v13, type metadata accessor for Apple_Workout_TimeValue);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_SpeedValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_SpeedValue(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedValue and conformance Apple_Workout_SpeedValue, type metadata accessor for Apple_Workout_SpeedValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_SpeedValue(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedValue and conformance Apple_Workout_SpeedValue, type metadata accessor for Apple_Workout_SpeedValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_SpeedValue()
{
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedValue and conformance Apple_Workout_SpeedValue, type metadata accessor for Apple_Workout_SpeedValue);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_SpeedValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v9, a2, a3);
    }

    else if (result == 2)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_SpeedRange.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_SpeedRange(0) + 20);
  type metadata accessor for Apple_Workout_SpeedValue(0);
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedValue and conformance Apple_Workout_SpeedValue, type metadata accessor for Apple_Workout_SpeedValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in Apple_Workout_SpeedRange.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_SpeedRange(0) + 24);
  type metadata accessor for Apple_Workout_SpeedValue(0);
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedValue and conformance Apple_Workout_SpeedValue, type metadata accessor for Apple_Workout_SpeedValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_SpeedValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    a5(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_SpeedRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_SpeedValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_SpeedRange(0);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a1 + *(v14 + 20), v8, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v8, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  }

  outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v8, v13, type metadata accessor for Apple_Workout_SpeedValue);
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedValue and conformance Apple_Workout_SpeedValue, type metadata accessor for Apple_Workout_SpeedValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v13, type metadata accessor for Apple_Workout_SpeedValue);
}

uint64_t closure #2 in Apple_Workout_SpeedRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_SpeedValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_SpeedRange(0);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a1 + *(v14 + 24), v8, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v8, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  }

  outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v8, v13, type metadata accessor for Apple_Workout_SpeedValue);
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedValue and conformance Apple_Workout_SpeedValue, type metadata accessor for Apple_Workout_SpeedValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v13, type metadata accessor for Apple_Workout_SpeedValue);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_SpeedRange@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Workout_SpeedValue(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 24);

  return v8(v6, 1, 1, v5);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_SpeedValue@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_SpeedValue(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_SpeedRange(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange, type metadata accessor for Apple_Workout_SpeedRange);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_SpeedAlert@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_SpeedRange(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange, type metadata accessor for Apple_Workout_SpeedRange);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_SpeedAlert()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_SpeedRange()
{
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange, type metadata accessor for Apple_Workout_SpeedRange);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_SpeedAlert()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized static Apple_Workout_SpeedRange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_SpeedValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v34 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedValueVSg_ADtMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSg_ADtMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v37 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  v36 = type metadata accessor for Apple_Workout_SpeedRange(0);
  v20 = *(v36 + 20);
  v21 = *(v14 + 48);
  v38 = a1;
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a1 + v20, v19, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  v39 = a2;
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a2 + v20, &v19[v21], &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) != 1)
  {
    outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v19, v13, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
    if (v22(&v19[v21], 1, v4) != 1)
    {
      v24 = v35;
      outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(&v19[v21], v35, type metadata accessor for Apple_Workout_SpeedValue);
      v25 = specialized static Apple_Workout_SpeedValue.== infix(_:_:)(v13, v24);
      outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v24, type metadata accessor for Apple_Workout_SpeedValue);
      outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v13, type metadata accessor for Apple_Workout_SpeedValue);
      outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v19, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v13, type metadata accessor for Apple_Workout_SpeedValue);
LABEL_6:
    v23 = v19;
LABEL_14:
    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v23, &_s10WorkoutKit06Apple_A11_SpeedValueVSg_ADtMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSg_ADtMR);
    goto LABEL_15;
  }

  if (v22(&v19[v21], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v19, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
LABEL_8:
  v26 = v37;
  v27 = *(v36 + 24);
  v28 = *(v14 + 48);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v38 + v27, v37, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v39 + v27, v26 + v28, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  if (v22(v26, 1, v4) == 1)
  {
    if (v22((v26 + v28), 1, v4) == 1)
    {
      outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v26, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
LABEL_18:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v30 & 1;
    }

    goto LABEL_13;
  }

  v29 = v34;
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v26, v34, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  if (v22((v26 + v28), 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v29, type metadata accessor for Apple_Workout_SpeedValue);
LABEL_13:
    v23 = v26;
    goto LABEL_14;
  }

  v32 = v35;
  outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v26 + v28, v35, type metadata accessor for Apple_Workout_SpeedValue);
  v33 = specialized static Apple_Workout_SpeedValue.== infix(_:_:)(v29, v32);
  outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v32, type metadata accessor for Apple_Workout_SpeedValue);
  outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v29, type metadata accessor for Apple_Workout_SpeedValue);
  outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v26, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  if (v33)
  {
    goto LABEL_18;
  }

LABEL_15:
  v30 = 0;
  return v30 & 1;
}

uint64_t specialized static Apple_Workout_SpeedAlert.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSg_AFtMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a1, &v24 - v15, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a2, &v16[v18], &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v16, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Workout_SpeedAlert(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v16, v12, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v12, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
LABEL_6:
    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v16, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSg_AFtMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(&v16[v18], v8, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
  v21 = specialized static Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v8, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
  outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v12, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
  outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v16, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Apple_Workout_SpeedValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
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
  v45 = &v43 - v8;
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
  v46 = type metadata accessor for Apple_Workout_SpeedValue(0);
  v25 = *(v46 + 20);
  v26 = *(v21 + 56);
  v51 = a1;
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a1 + v25, v24, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v52 + v25, &v24[v26], &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v27 = *(v12 + 48);
  if (v27(v24, 1, v11) != 1)
  {
    outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v24, v19, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    if (v27(&v24[v26], 1, v11) != 1)
    {
      outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(&v24[v26], v15, type metadata accessor for Apple_Workout_DistanceValue);
      v31 = specialized static Apple_Workout_DistanceValue.== infix(_:_:)(v19, v15);
      outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v15, type metadata accessor for Apple_Workout_DistanceValue);
      outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v19, type metadata accessor for Apple_Workout_DistanceValue);
      outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v24, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v19, type metadata accessor for Apple_Workout_DistanceValue);
LABEL_6:
    v28 = &_s10WorkoutKit06Apple_A14_DistanceValueVSg_ADtMd;
    v29 = &_s10WorkoutKit06Apple_A14_DistanceValueVSg_ADtMR;
    v30 = v24;
LABEL_14:
    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v24, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
LABEL_8:
  v32 = *(v46 + 24);
  v33 = *(v47 + 48);
  v34 = v50;
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v51 + v32, v50, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v52 + v32, v34 + v33, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v35 = v49;
  v36 = *(v48 + 48);
  if (v36(v34, 1, v49) == 1)
  {
    if (v36(v34 + v33, 1, v35) == 1)
    {
      outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v34, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
LABEL_18:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v38 & 1;
    }

    goto LABEL_13;
  }

  v37 = v45;
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v34, v45, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if (v36(v34 + v33, 1, v35) == 1)
  {
    outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v37, type metadata accessor for Apple_Workout_TimeValue);
LABEL_13:
    v28 = &_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMd;
    v29 = &_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMR;
    v30 = v34;
    goto LABEL_14;
  }

  v40 = v34 + v33;
  v41 = v44;
  outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v40, v44, type metadata accessor for Apple_Workout_TimeValue);
  v42 = static Apple_Workout_TimeValue.== infix(_:_:)(v37, v41);
  outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v41, type metadata accessor for Apple_Workout_TimeValue);
  outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v37, type metadata accessor for Apple_Workout_TimeValue);
  outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v34, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if (v42)
  {
    goto LABEL_18;
  }

LABEL_15:
  v38 = 0;
  return v38 & 1;
}

uint64_t specialized static Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_SpeedRange(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Workout_SpeedValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetO_AEtMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetO_AEtMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - v21;
  v24 = *(v23 + 56);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(a1, &v31 - v21);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(a2, &v22[v24]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v22, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(&v22[v24], v7, type metadata accessor for Apple_Workout_SpeedRange);
      v25 = specialized static Apple_Workout_SpeedRange.== infix(_:_:)(v15, v7);
      outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v7, type metadata accessor for Apple_Workout_SpeedRange);
      v26 = v15;
      v27 = type metadata accessor for Apple_Workout_SpeedRange;
LABEL_9:
      outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v26, v27);
      outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v22, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
      return v25 & 1;
    }

    v28 = type metadata accessor for Apple_Workout_SpeedRange;
    v29 = v15;
  }

  else
  {
    outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v22, v18);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(&v22[v24], v11, type metadata accessor for Apple_Workout_SpeedValue);
      v25 = specialized static Apple_Workout_SpeedValue.== infix(_:_:)(v18, v11);
      outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v11, type metadata accessor for Apple_Workout_SpeedValue);
      v26 = v18;
      v27 = type metadata accessor for Apple_Workout_SpeedValue;
      goto LABEL_9;
    }

    v28 = type metadata accessor for Apple_Workout_SpeedValue;
    v29 = v18;
  }

  outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v29, v28);
  outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v22, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetO_AEtMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetO_AEtMR);
  v25 = 0;
  return v25 & 1;
}

uint64_t outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for Apple_Workout_PacerWorkoutComposition()
{
  result = type metadata singleton initialization cache for Apple_Workout_PacerWorkoutComposition;
  if (!type metadata singleton initialization cache for Apple_Workout_PacerWorkoutComposition)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Apple_Workout_PacerWorkoutComposition()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?();
    if (v1 <= 0x3F)
    {
      _s10WorkoutKit06Apple_A14_DistanceValueVSgMaTm_0(319, &lazy cache variable for type metadata for Apple_Workout_DistanceValue?, type metadata accessor for Apple_Workout_DistanceValue);
      if (v2 <= 0x3F)
      {
        _s10WorkoutKit06Apple_A14_DistanceValueVSgMaTm_0(319, &lazy cache variable for type metadata for Apple_Workout_TimeValue?, type metadata accessor for Apple_Workout_TimeValue);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void _s10WorkoutKit06Apple_A14_DistanceValueVSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t Apple_Workout_PacerWorkoutComposition.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        closure #3 in Apple_Workout_PacerWorkoutComposition.decodeMessage<A>(decoder:)();
      }

      else if (result == 4)
      {
        closure #4 in Apple_Workout_PacerWorkoutComposition.decodeMessage<A>(decoder:)();
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }

    else if (result == 2)
    {
      v3 = *(type metadata accessor for Apple_Workout_PacerWorkoutComposition() + 24);
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t closure #3 in Apple_Workout_PacerWorkoutComposition.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_PacerWorkoutComposition() + 28);
  type metadata accessor for Apple_Workout_DistanceValue(0);
  lazy protocol witness table accessor for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #4 in Apple_Workout_PacerWorkoutComposition.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_PacerWorkoutComposition() + 32);
  type metadata accessor for Apple_Workout_TimeValue(0);
  lazy protocol witness table accessor for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_PacerWorkoutComposition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Apple_Workout_PacerWorkoutComposition.traverse<A>(visitor:)(v3);
    if (!v4)
    {
      closure #2 in Apple_Workout_PacerWorkoutComposition.traverse<A>(visitor:)(v3, a1, a2, a3);
      closure #3 in Apple_Workout_PacerWorkoutComposition.traverse<A>(visitor:)(v3, a1, a2, a3);
      v9 = v3 + *(type metadata accessor for Apple_Workout_PacerWorkoutComposition() + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_PacerWorkoutComposition.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_PacerWorkoutComposition();
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_PacerWorkoutComposition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for Apple_Workout_PacerWorkoutComposition();
  _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_0(a1 + *(v14 + 28), v8, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of (Apple_Workout_DistanceValue?, Apple_Workout_DistanceValue?)(v8, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  }

  _s10WorkoutKit06Apple_A10_TimeValueVWObTm_1(v8, v13, type metadata accessor for Apple_Workout_DistanceValue);
  lazy protocol witness table accessor for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s10WorkoutKit06Apple_A10_TimeValueVWOhTm_0(v13, type metadata accessor for Apple_Workout_DistanceValue);
}

uint64_t closure #3 in Apple_Workout_PacerWorkoutComposition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for Apple_Workout_PacerWorkoutComposition();
  _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_0(a1 + *(v14 + 32), v8, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of (Apple_Workout_DistanceValue?, Apple_Workout_DistanceValue?)(v8, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  }

  _s10WorkoutKit06Apple_A10_TimeValueVWObTm_1(v8, v13, type metadata accessor for Apple_Workout_TimeValue);
  lazy protocol witness table accessor for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s10WorkoutKit06Apple_A10_TimeValueVWOhTm_0(v13, type metadata accessor for Apple_Workout_TimeValue);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_PacerWorkoutComposition@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[a1[5]];
  UnknownStorage.init()();
  v5 = a1[7];
  v6 = &a2[a1[6]];
  *v6 = 0;
  v6[4] = 1;
  v7 = type metadata accessor for Apple_Workout_DistanceValue(0);
  (*(*(v7 - 8) + 56))(&a2[v5], 1, 1, v7);
  v8 = a1[8];
  v9 = type metadata accessor for Apple_Workout_TimeValue(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(&a2[v8], 1, 1, v9);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_PacerWorkoutComposition@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_PacerWorkoutComposition(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_PacerWorkoutComposition(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_PacerWorkoutComposition;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_PacerWorkoutComposition(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition, type metadata accessor for Apple_Workout_PacerWorkoutComposition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_PacerWorkoutComposition@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_PacerWorkoutComposition._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_PacerWorkoutComposition(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition, type metadata accessor for Apple_Workout_PacerWorkoutComposition);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_PacerWorkoutComposition()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_PacerWorkoutComposition()
{
  lazy protocol witness table accessor for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition, type metadata accessor for Apple_Workout_PacerWorkoutComposition);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_PacerWorkoutComposition()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_PacerWorkoutComposition.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Apple_Workout_TimeValue(0);
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = &v54 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMd, &_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMR);
  v11 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v13 = &v54 - v12;
  v14 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v54 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSg_ADtMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSg_ADtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v54 - v25;
  if (*a1 != *a2)
  {
    goto LABEL_22;
  }

  v27 = type metadata accessor for Apple_Workout_PacerWorkoutComposition();
  v28 = *(v27 + 24);
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*v29 != *v31)
    {
      LOBYTE(v32) = 1;
    }

    if (v32)
    {
      goto LABEL_22;
    }
  }

  v54 = v7;
  v55 = v13;
  v33 = *(v27 + 28);
  v34 = *(v23 + 48);
  v56 = a1;
  v57 = v27;
  _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_0(a1 + v33, v26, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v35 = a2 + v33;
  v36 = a2;
  _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_0(v35, &v26[v34], &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v37 = *(v15 + 48);
  if (v37(v26, 1, v14) != 1)
  {
    _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_0(v26, v22, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    if (v37(&v26[v34], 1, v14) != 1)
    {
      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_1(&v26[v34], v18, type metadata accessor for Apple_Workout_DistanceValue);
      v41 = static Apple_Workout_DistanceValue.== infix(_:_:)(v22, v18);
      _s10WorkoutKit06Apple_A10_TimeValueVWOhTm_0(v18, type metadata accessor for Apple_Workout_DistanceValue);
      _s10WorkoutKit06Apple_A10_TimeValueVWOhTm_0(v22, type metadata accessor for Apple_Workout_DistanceValue);
      outlined destroy of (Apple_Workout_DistanceValue?, Apple_Workout_DistanceValue?)(v26, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      if ((v41 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    _s10WorkoutKit06Apple_A10_TimeValueVWOhTm_0(v22, type metadata accessor for Apple_Workout_DistanceValue);
LABEL_13:
    v38 = &_s10WorkoutKit06Apple_A14_DistanceValueVSg_ADtMd;
    v39 = &_s10WorkoutKit06Apple_A14_DistanceValueVSg_ADtMR;
    v40 = v26;
LABEL_21:
    outlined destroy of (Apple_Workout_DistanceValue?, Apple_Workout_DistanceValue?)(v40, v38, v39);
    goto LABEL_22;
  }

  if (v37(&v26[v34], 1, v14) != 1)
  {
    goto LABEL_13;
  }

  outlined destroy of (Apple_Workout_DistanceValue?, Apple_Workout_DistanceValue?)(v26, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
LABEL_15:
  v42 = *(v57 + 32);
  v43 = *(v59 + 48);
  v44 = v55;
  _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_0(v56 + v42, v55, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_0(v36 + v42, v44 + v43, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v45 = v61;
  v46 = *(v60 + 48);
  if (v46(v44, 1, v61) == 1)
  {
    if (v46(v44 + v43, 1, v45) == 1)
    {
      outlined destroy of (Apple_Workout_DistanceValue?, Apple_Workout_DistanceValue?)(v44, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
LABEL_25:
      v53 = *(v57 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v48 & 1;
    }

    goto LABEL_20;
  }

  v47 = v58;
  _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_0(v44, v58, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if (v46(v44 + v43, 1, v45) == 1)
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWOhTm_0(v47, type metadata accessor for Apple_Workout_TimeValue);
LABEL_20:
    v38 = &_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMd;
    v39 = &_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMR;
    v40 = v44;
    goto LABEL_21;
  }

  v50 = v44 + v43;
  v51 = v54;
  _s10WorkoutKit06Apple_A10_TimeValueVWObTm_1(v50, v54, type metadata accessor for Apple_Workout_TimeValue);
  v52 = static Apple_Workout_TimeValue.== infix(_:_:)(v47, v51);
  _s10WorkoutKit06Apple_A10_TimeValueVWOhTm_0(v51, type metadata accessor for Apple_Workout_TimeValue);
  _s10WorkoutKit06Apple_A10_TimeValueVWOhTm_0(v47, type metadata accessor for Apple_Workout_TimeValue);
  outlined destroy of (Apple_Workout_DistanceValue?, Apple_Workout_DistanceValue?)(v44, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if (v52)
  {
    goto LABEL_25;
  }

LABEL_22:
  v48 = 0;
  return v48 & 1;
}

uint64_t _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of (Apple_Workout_DistanceValue?, Apple_Workout_DistanceValue?)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10WorkoutKit06Apple_A10_TimeValueVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10WorkoutKit06Apple_A10_TimeValueVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition(unint64_t *a1, void (*a2)(uint64_t))
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

double *closure #1 in CLLocationCoordinate2D.protoRepresentation.getter(double *result, double a2, double a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

Swift::Double __swiftcall CLLocationCoordinate2D.distance(from:)(__C::CLLocationCoordinate2D from)
{
  v3 = v2;
  v4 = v1;
  v5 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:from.latitude longitude:from.longitude];
  v6 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v4 longitude:v3];
  [v6 distanceFromLocation_];
  v8 = v7;

  return v8;
}

uint64_t CLLocationCoordinate2D.hash(into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x23EEA0D70](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x23EEA0D70](*&v3);
}

Swift::Int CLLocationCoordinate2D.hashValue.getter(double a1, double a2)
{
  Hasher.init(_seed:)();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x23EEA0D70](*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x23EEA0D70](*&v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CLLocationCoordinate2D()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  CLLocationCoordinate2D.hash(into:)(v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CLLocationCoordinate2D()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  CLLocationCoordinate2D.hash(into:)(v1, v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type CLLocationCoordinate2D and conformance CLLocationCoordinate2D()
{
  result = lazy protocol witness table cache variable for type CLLocationCoordinate2D and conformance CLLocationCoordinate2D;
  if (!lazy protocol witness table cache variable for type CLLocationCoordinate2D and conformance CLLocationCoordinate2D)
  {
    type metadata accessor for CLLocationCoordinate2D(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLLocationCoordinate2D and conformance CLLocationCoordinate2D);
  }

  return result;
}

uint64_t Array<A>.calculateLocationDistance()(double *a1)
{
  v1 = *(a1 + 2);
  if (v1)
  {
    v2 = a1 + 5;
    v3 = a1[5];
    v4 = a1[4];
    v5 = 0.0;
    do
    {
      v6 = *(v2 - 1);
      v7 = *v2;
      v8 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v4 longitude:v3];
      v9 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v6 longitude:v7];
      [v9 distanceFromLocation_];
      v11 = v10;

      v5 = v5 + v11;
      v2 += 2;
      v4 = v6;
      v3 = v7;
      --v1;
    }

    while (v1);
  }

  v12 = [objc_opt_self() meters];
  type metadata accessor for NSUnitLength();

  return Measurement.init(value:unit:)();
}

unint64_t type metadata accessor for NSUnitLength()
{
  result = lazy cache variable for type metadata for NSUnitLength;
  if (!lazy cache variable for type metadata for NSUnitLength)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUnitLength);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static Apple_Workout_PowerAlert.targetAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-v6];
  type metadata accessor for Apple_Workout_PowerValue(0);
  v11 = a2;
  lazy protocol witness table accessor for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert(&lazy protocol witness table cache variable for type Apple_Workout_PowerValue and conformance Apple_Workout_PowerValue, type metadata accessor for Apple_Workout_PowerValue);
  static Message.with(_:)();
  v8 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_1(v7, a1, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
}

uint64_t closure #1 in static Apple_Workout_PowerAlert.targetAlert(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, double), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v18[-v11];
  v13 = a3(0, v10);
  v14 = 4;
  if (*(a2 + *(v13 + 20)))
  {
    v14 = 6;
  }

  *a1 = v14;
  *(a1 + 8) = 1;
  *(a1 + 16) = a4;
  *(a1 + 24) = 1;
  type metadata accessor for Apple_Workout_PowerAlert(0);
  v19 = a2;
  lazy protocol witness table accessor for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert(&lazy protocol witness table cache variable for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert, type metadata accessor for Apple_Workout_PowerAlert);
  static Message.with(_:)();
  v15 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  v16 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_1(v12, a1 + *(v16 + 24), &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
}

uint64_t closure #1 in closure #1 in static Apple_Workout_PowerAlert.rangeAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-v6];
  type metadata accessor for Apple_Workout_PowerRange(0);
  v11 = a2;
  lazy protocol witness table accessor for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert(&lazy protocol witness table cache variable for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange, type metadata accessor for Apple_Workout_PowerRange);
  static Message.with(_:)();
  v8 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_1(v7, a1, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
}

uint64_t closure #1 in closure #1 in closure #1 in static Apple_Workout_PowerAlert.rangeAlert(_:)(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v4 = type metadata accessor for Apple_Workout_PowerValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a2;
  lazy protocol witness table accessor for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert(&lazy protocol witness table cache variable for type Apple_Workout_PowerValue and conformance Apple_Workout_PowerValue, type metadata accessor for Apple_Workout_PowerValue);
  static Message.with(_:)();
  v9 = type metadata accessor for Apple_Workout_PowerRange(0);
  v10 = *(v9 + 20);
  outlined destroy of Apple_Workout_PowerValue?(a1 + v10);
  outlined init with take of Apple_Workout_PowerValue(v8, a1 + v10);
  v11 = *(v5 + 56);
  v11(a1 + v10, 0, 1, v4);
  v15 = v17;
  static Message.with(_:)();
  v12 = *(v9 + 24);
  outlined destroy of Apple_Workout_PowerValue?(a1 + v12);
  outlined init with take of Apple_Workout_PowerValue(v8, a1 + v12);
  return (v11)(a1 + v12, 0, 1, v4);
}

uint64_t closure #1 in closure #1 in closure #1 in static Apple_Workout_PowerAlert.targetAlert(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  *a1 = 1;
  *(a1 + 8) = 1;
  v7 = [objc_opt_self() watts];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  *(a1 + 16) = v9;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in static Apple_Workout_PowerAlert.rangeAlert(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  *a1 = 1;
  *(a1 + 8) = 1;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR) + 36);
  v8 = [objc_opt_self() watts];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v10 = v9;
  result = (*(v3 + 8))(v6, v2);
  *(a1 + 16) = v10;
  return result;
}

uint64_t closure #1 in static Apple_Workout_PowerAlert.zoneAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11[-v6];
  *a1 = 4;
  *(a1 + 8) = 1;
  *(a1 + 16) = 3;
  *(a1 + 24) = 1;
  type metadata accessor for Apple_Workout_PowerAlert(0);
  v12 = a2;
  lazy protocol witness table accessor for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert(&lazy protocol witness table cache variable for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert, type metadata accessor for Apple_Workout_PowerAlert);
  static Message.with(_:)();
  v8 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_1(v7, a1 + *(v9 + 24), &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
}

uint64_t closure #1 in closure #1 in static Apple_Workout_PowerAlert.zoneAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-v6];
  type metadata accessor for Apple_Workout_ZoneValue(0);
  v11 = a2;
  lazy protocol witness table accessor for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert(&lazy protocol witness table cache variable for type Apple_Workout_ZoneValue and conformance Apple_Workout_ZoneValue, type metadata accessor for Apple_Workout_ZoneValue);
  static Message.with(_:)();
  v8 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_1(v7, a1, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
}

_DWORD *partial apply for closure #1 in closure #1 in closure #1 in static Apple_Workout_PowerAlert.zoneAlert(_:)(_DWORD *result)
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

uint64_t _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of Apple_Workout_PowerValue?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_PowerValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_PowerValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double RoutePoint.coordinate.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t RoutePoint.altitude.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t RoutePoint.altitude.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t RoutePoint.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BinaryDecodingOptions();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for Apple_Workout_RoutePoint(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  v22 = a1;
  v23 = a2;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint(&lazy protocol witness table cache variable for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint, type metadata accessor for Apple_Workout_RoutePoint);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v3)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  outlined init with copy of Apple_Workout_RoutePoint(v15, v12);
  RoutePoint.init(from:)(v12, &v19);
  outlined destroy of Apple_Workout_RoutePoint(v15, type metadata accessor for Apple_Workout_RoutePoint);
  result = outlined consume of Data._Representation(a1, a2);
  v17 = v20;
  v18 = BYTE8(v20);
  *a3 = v19;
  *(a3 + 16) = v17;
  *(a3 + 24) = v18;
  return result;
}

uint64_t outlined init with copy of Apple_Workout_RoutePoint(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_RoutePoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RoutePoint.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Apple_Workout_LocationCoordinate2D(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Apple_Workout_RoutePoint(0);
  outlined init with copy of Apple_Workout_LocationCoordinate2D?(a1 + *(v13 + 20), v7);
  v14 = *(v9 + 48);
  if (v14(v7, 1, v8) == 1)
  {
    *v12 = 0.0;
    v12[1] = 0.0;
    v15 = v12 + *(v8 + 24);
    UnknownStorage.init()();
    if (v14(v7, 1, v8) != 1)
    {
      outlined destroy of Apple_Workout_LocationCoordinate2D?(v7);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_LocationCoordinate2D(v7, v12);
  }

  v17 = *v12;
  v16 = v12[1];
  outlined destroy of Apple_Workout_RoutePoint(v12, type metadata accessor for Apple_Workout_LocationCoordinate2D);
  v24.latitude = v17;
  v24.longitude = v16;
  if (CLLocationCoordinate2DIsValid(v24))
  {
    v18 = a1 + *(v13 + 24);
    v19 = *v18;
    v20 = *(v18 + 8);
    result = outlined destroy of Apple_Workout_RoutePoint(a1, type metadata accessor for Apple_Workout_RoutePoint);
    *a2 = v17;
    *(a2 + 8) = v16;
    *(a2 + 16) = v19;
    *(a2 + 24) = v20;
  }

  else
  {
    lazy protocol witness table accessor for type RouteValidationError and conformance RouteValidationError();
    swift_allocError();
    *v22 = v17;
    *(v22 + 8) = v16;
    *(v22 + 16) = 0;
    swift_willThrow();
    return outlined destroy of Apple_Workout_RoutePoint(a1, type metadata accessor for Apple_Workout_RoutePoint);
  }

  return result;
}

uint64_t RoutePoint.dataRepresentation.getter()
{
  v2 = v1;
  v3 = type metadata accessor for Apple_Workout_RoutePoint(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  v7 = *(v0 + 8);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  v15.latitude = *v0;
  v15.longitude = v7;
  v11 = CLLocationCoordinate2DIsValid(v15);
  if (v11)
  {
    MEMORY[0x28223BE20](v11);
    *(&v14 - 4) = v8;
    *(&v14 - 3) = v7;
    *(&v14 - 2) = v9;
    *(&v14 - 8) = v10;
    lazy protocol witness table accessor for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint(&lazy protocol witness table cache variable for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint, type metadata accessor for Apple_Workout_RoutePoint);
    static Message.with(_:)();
    v2 = Message.serializedData(partial:)();
    outlined destroy of Apple_Workout_RoutePoint(v6, type metadata accessor for Apple_Workout_RoutePoint);
  }

  else
  {
    lazy protocol witness table accessor for type RouteValidationError and conformance RouteValidationError();
    swift_allocError();
    *v12 = v8;
    *(v12 + 8) = v7;
    *(v12 + 16) = 0;
    swift_willThrow();
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type RouteValidationError and conformance RouteValidationError()
{
  result = lazy protocol witness table cache variable for type RouteValidationError and conformance RouteValidationError;
  if (!lazy protocol witness table cache variable for type RouteValidationError and conformance RouteValidationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RouteValidationError and conformance RouteValidationError);
  }

  return result;
}

uint64_t closure #1 in RoutePoint.protoRepresentation.getter(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  v10 = type metadata accessor for Apple_Workout_LocationCoordinate2D(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a4;
  v21 = a5;
  lazy protocol witness table accessor for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint(&lazy protocol witness table cache variable for type Apple_Workout_LocationCoordinate2D and conformance Apple_Workout_LocationCoordinate2D, type metadata accessor for Apple_Workout_LocationCoordinate2D);
  static Message.with(_:)();
  v15 = type metadata accessor for Apple_Workout_RoutePoint(0);
  v16 = *(v15 + 20);
  outlined destroy of Apple_Workout_LocationCoordinate2D?(a1 + v16);
  outlined init with take of Apple_Workout_LocationCoordinate2D(v14, a1 + v16);
  result = (*(v11 + 56))(a1 + v16, 0, 1, v10);
  if ((a3 & 1) == 0)
  {
    v18 = a1 + *(v15 + 24);
    *v18 = a2;
    *(v18 + 8) = 0;
  }

  return result;
}

void RoutePoint.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  CLLocationCoordinate2D.hash(into:)(v1, v2);
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x23EEA0D70](v5);
  }
}

Swift::Int RoutePoint.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  CLLocationCoordinate2D.hash(into:)(v1, v2);
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x23EEA0D70](v5);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RoutePoint()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  CLLocationCoordinate2D.hash(into:)(v1, v2);
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x23EEA0D70](v5);
  }

  return Hasher._finalize()();
}

BOOL specialized static RoutePoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0;
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    return (v4 & 1) == 0;
  }
}

unint64_t lazy protocol witness table accessor for type RoutePoint and conformance RoutePoint()
{
  result = lazy protocol witness table cache variable for type RoutePoint and conformance RoutePoint;
  if (!lazy protocol witness table cache variable for type RoutePoint and conformance RoutePoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoutePoint and conformance RoutePoint);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RoutePoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RoutePoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of Apple_Workout_LocationCoordinate2D?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_LocationCoordinate2D(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_LocationCoordinate2D(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_LocationCoordinate2D?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_RoutePoint(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ValidationError.isStrict.getter()
{
  return 1;
}

{
  return 1;
}

unint64_t instantiation function for generic protocol witness table for CompositionValidationError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for CustomValidationError(uint64_t a1)
{
  result = _s10WorkoutKit21CustomValidationErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type CustomValidationError and conformance CustomValidationError, type metadata accessor for CustomValidationError);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for PacerValidationError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PacerValidationError and conformance PacerValidationError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PacerValidationError and conformance PacerValidationError()
{
  result = lazy protocol witness table cache variable for type PacerValidationError and conformance PacerValidationError;
  if (!lazy protocol witness table cache variable for type PacerValidationError and conformance PacerValidationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerValidationError and conformance PacerValidationError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SwimBikeRunValidationError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SwimBikeRunValidationError and conformance SwimBikeRunValidationError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SwimBikeRunValidationError and conformance SwimBikeRunValidationError()
{
  result = lazy protocol witness table cache variable for type SwimBikeRunValidationError and conformance SwimBikeRunValidationError;
  if (!lazy protocol witness table cache variable for type SwimBikeRunValidationError and conformance SwimBikeRunValidationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwimBikeRunValidationError and conformance SwimBikeRunValidationError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for RouteValidationError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type RouteValidationError and conformance RouteValidationError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for WorkoutPlanValidationError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type WorkoutPlanValidationError and conformance WorkoutPlanValidationError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutPlanValidationError and conformance WorkoutPlanValidationError()
{
  result = lazy protocol witness table cache variable for type WorkoutPlanValidationError and conformance WorkoutPlanValidationError;
  if (!lazy protocol witness table cache variable for type WorkoutPlanValidationError and conformance WorkoutPlanValidationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutPlanValidationError and conformance WorkoutPlanValidationError);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for GoalValidationError(uint64_t a1)
{
  result = _s10WorkoutKit21CustomValidationErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
  *(a1 + 8) = result;
  return result;
}

uint64_t _s10WorkoutKit21CustomValidationErrorOACs0E0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CustomValidationError(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AlertValidationError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for CustomValidationError()
{
  type metadata accessor for HKWorkoutActivityType(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for (WorkoutGoal, HKWorkoutActivityType, HKWorkoutSessionLocationType)(319, &lazy cache variable for type metadata for (WorkoutGoal, HKWorkoutActivityType, HKWorkoutSessionLocationType), type metadata accessor for HKWorkoutSessionLocationType);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PacerValidationError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PacerValidationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SwimBikeRunValidationError(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SwimBikeRunValidationError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RouteValidationError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RouteValidationError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t getEnumTag for RouteValidationError(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for RouteValidationError(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

void type metadata completion function for GoalValidationError()
{
  type metadata accessor for (HKWorkoutActivityType, HKWorkoutSessionLocationType)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (WorkoutGoal, HKWorkoutActivityType, HKWorkoutSessionLocationType)(319, &lazy cache variable for type metadata for (WorkoutGoal, HKWorkoutActivityType, HKWorkoutSessionLocationType), type metadata accessor for HKWorkoutSessionLocationType);
    if (v1 <= 0x3F)
    {
      type metadata accessor for (WorkoutGoal, HKWorkoutActivityType, HKWorkoutSessionLocationType)(319, &lazy cache variable for type metadata for (WorkoutGoal, HKWorkoutActivityType, HKWorkoutSwimmingLocationType), type metadata accessor for HKWorkoutSwimmingLocationType);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (HKWorkoutActivityType, HKWorkoutSessionLocationType)()
{
  if (!lazy cache variable for type metadata for (HKWorkoutActivityType, HKWorkoutSessionLocationType))
  {
    type metadata accessor for HKWorkoutActivityType(255);
    type metadata accessor for HKWorkoutSessionLocationType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (HKWorkoutActivityType, HKWorkoutSessionLocationType));
    }
  }
}

void type metadata accessor for (WorkoutGoal, HKWorkoutActivityType, HKWorkoutSessionLocationType)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for WorkoutGoal();
    type metadata accessor for HKWorkoutActivityType(255);
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AlertValidationError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AlertValidationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for AlertValidationError(uint64_t a1)
{
  if (*(a1 + 16) <= 2u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t destructiveInjectEnumTag for AlertValidationError(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t specialized WorkoutAlertProtable.supports(activity:location:)(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type SpeedRangeAlert and conformance SpeedRangeAlert(&lazy protocol witness table cache variable for type HeartRateRangeAlert and conformance HeartRateRangeAlert, type metadata accessor for HeartRateRangeAlert);
  v5 = *(v4 + 48);
  v6 = type metadata accessor for HeartRateRangeAlert();
  v5(a1, a2, v6, v4);
  return 1;
}

{
  specialized WorkoutAlertProtable.validate(for:location:context:)(a1, a2, 0);
  return 1;
}

{
  specialized WorkoutAlertProtable.validate(for:location:context:)(a1, a2, 0);
  return 1;
}

{
  specialized WorkoutAlertProtable.validate(for:location:context:)(a1, a2, 0);
  return 1;
}

{
  specialized WorkoutAlertProtable.validate(for:location:context:)(a1, a2, 0);
  return 1;
}

{
  specialized WorkoutAlertProtable.validate(for:location:context:)(a1, 0, a2);
  return 1;
}

uint64_t specialized WorkoutAlertProtable.validate(for:location:context:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a1 == 13)
  {
    goto LABEL_22;
  }

  if (a1 == 37)
  {
    if (a2 != 2)
    {
      goto LABEL_22;
    }

    v6 = a3;
    v7 = 1;
    v8 = 2;
    v9 = 37;
  }

  else
  {
    v6 = a3;
    v8 = 0;
    v7 = 0;
    v9 = a1;
  }

  lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
  v10 = swift_allocError();
  *v11 = v9;
  *(v11 + 8) = v8;
  *(v11 + 16) = v7;
  swift_willThrow();
  v53 = v10;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit15ValidationError_pMd, "xE");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v49 = 0;
    memset(v48, 0, sizeof(v48));
    outlined destroy of ValidationError?(v48);
    return swift_willThrow();
  }

  outlined init with take of ValidationError(v48, v50);
  v13 = v51;
  v14 = v52;
  v15 = __swift_project_boxed_opaque_existential_1(v50, v51);
  if ((v6 & 1) == 0)
  {
    v26 = *(v13 - 8);
    v27 = *(v26 + 64);
    v28 = MEMORY[0x28223BE20](v15);
    v30 = v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v30, v28);
    v31 = *(v14 + 8);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v26 + 8))(v30, v13);
    }

    else
    {
      swift_allocError();
      (*(v26 + 32))(v42, v30, v13);
    }

    goto LABEL_19;
  }

  v47[1] = v3;
  if ((*(v14 + 16))(v13, v14))
  {
    v16 = v51;
    v17 = v52;
    v18 = __swift_project_boxed_opaque_existential_1(v50, v51);
    v19 = *(v16 - 8);
    v20 = *(v19 + 64);
    v21 = MEMORY[0x28223BE20](v18);
    v23 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v23, v21);
    v24 = *(v17 + 8);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v19 + 8))(v23, v16);
    }

    else
    {
      swift_allocError();
      (*(v19 + 32))(v46, v23, v16);
    }

LABEL_19:
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  if (one-time initialization token for validations != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static WorkoutKitLog.validations);
  v33 = v10;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v48[0] = v37;
    *v36 = 136315394;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E61527265776F50, 0xEF7472656C416567, v48);
    *(v36 + 12) = 2080;
    v53 = v10;
    v38 = v10;
    v39 = String.init<A>(describing:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v48);

    *(v36 + 14) = v41;
    _os_log_impl(&dword_23B5E7000, v34, v35, "%s not supported due to: %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA1330](v37, -1, -1);
    MEMORY[0x23EEA1330](v36, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
LABEL_22:
  v43 = lazy protocol witness table accessor for type SpeedRangeAlert and conformance SpeedRangeAlert(&lazy protocol witness table cache variable for type PowerRangeAlert and conformance PowerRangeAlert, type metadata accessor for PowerRangeAlert);
  v44 = *(v43 + 48);
  v45 = type metadata accessor for PowerRangeAlert(0);
  return v44(a1, a2, v45, v43);
}

{
  v7 = type metadata accessor for SpeedRangeAlert(0);
  v8 = v7;
  if (a1 == 13)
  {
    goto LABEL_29;
  }

  if (a1 == 37)
  {
    if (a2 != 2)
    {
      goto LABEL_29;
    }

    v51 = &type metadata for WorkoutKitFeatures;
    v52 = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
    LOBYTE(v50[0]) = 3;
    v12 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v50);
    if (v12)
    {
      goto LABEL_29;
    }

    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    v10 = swift_allocError();
    v11 = xmmword_23B67C930;
    goto LABEL_9;
  }

  if (a1 != 71)
  {
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    v10 = swift_allocError();
    *v13 = a1;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    goto LABEL_11;
  }

  if (a2 == 2)
  {
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    v10 = swift_allocError();
    v11 = xmmword_23B67C940;
LABEL_9:
    *v9 = v11;
    *(v9 + 16) = 1;
    goto LABEL_11;
  }

  if (*(v3 + *(v7 + 20)))
  {
    goto LABEL_29;
  }

  lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
  v10 = swift_allocError();
  *v34 = 0;
  *(v34 + 8) = 0;
  *(v34 + 16) = 2;
LABEL_11:
  swift_willThrow();
  v53 = v10;
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit15ValidationError_pMd, "xE");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v49 = 0;
    memset(v48, 0, sizeof(v48));
    outlined destroy of ValidationError?(v48);
    return swift_willThrow();
  }

  outlined init with take of ValidationError(v48, v50);
  v15 = v51;
  v16 = v52;
  v17 = __swift_project_boxed_opaque_existential_1(v50, v51);
  if ((a3 & 1) == 0)
  {
    Description = v15[-1].Description;
    v29 = Description[8];
    v30 = MEMORY[0x28223BE20](v17);
    v32 = v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (Description[2])(v32, v30);
    v33 = *(v16 + 8);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (Description[1])(v32, v15);
    }

    else
    {
      swift_allocError();
      (Description[4])(v44, v32, v15);
    }

    goto LABEL_26;
  }

  v47[1] = v3;
  if ((*(v16 + 16))(v15, v16))
  {
    v18 = v51;
    v19 = v52;
    v20 = __swift_project_boxed_opaque_existential_1(v50, v51);
    v21 = v18[-1].Description;
    v22 = v21[8];
    v23 = MEMORY[0x28223BE20](v20);
    v25 = v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (v21[2])(v25, v23);
    v26 = *(v19 + 8);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (v21[1])(v25, v18);
    }

    else
    {
      swift_allocError();
      (v21[4])(v46, v25, v18);
    }

LABEL_26:
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  if (one-time initialization token for validations != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static WorkoutKitLog.validations);
  v36 = v10;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    *&v48[0] = v47[0];
    *v39 = 136315394;
    *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E61526465657053, 0xEF7472656C416567, v48);
    *(v39 + 12) = 2080;
    v53 = v10;
    v40 = v10;
    v41 = String.init<A>(describing:)();
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v48);

    *(v39 + 14) = v43;
    _os_log_impl(&dword_23B5E7000, v37, v38, "%s not supported due to: %s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA1330](v47[0], -1, -1);
    MEMORY[0x23EEA1330](v39, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
LABEL_29:
  v45 = lazy protocol witness table accessor for type SpeedRangeAlert and conformance SpeedRangeAlert(&lazy protocol witness table cache variable for type SpeedRangeAlert and conformance SpeedRangeAlert, type metadata accessor for SpeedRangeAlert);
  return (*(v45 + 48))(a1, a2, v8, v45);
}

{
  if (a1 == 13)
  {
    goto LABEL_22;
  }

  if (a1 == 37)
  {
    if (a2 != 2)
    {
      goto LABEL_22;
    }

    v6 = a3;
    v7 = 1;
    v8 = 2;
    v9 = 37;
  }

  else
  {
    v6 = a3;
    v8 = 0;
    v7 = 0;
    v9 = a1;
  }

  lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
  v10 = swift_allocError();
  *v11 = v9;
  *(v11 + 8) = v8;
  *(v11 + 16) = v7;
  swift_willThrow();
  v53 = v10;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit15ValidationError_pMd, "xE");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v49 = 0;
    memset(v48, 0, sizeof(v48));
    outlined destroy of ValidationError?(v48);
    return swift_willThrow();
  }

  outlined init with take of ValidationError(v48, v50);
  v13 = v51;
  v14 = v52;
  v15 = __swift_project_boxed_opaque_existential_1(v50, v51);
  if ((v6 & 1) == 0)
  {
    v26 = *(v13 - 8);
    v27 = *(v26 + 64);
    v28 = MEMORY[0x28223BE20](v15);
    v30 = v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v30, v28);
    v31 = *(v14 + 8);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v26 + 8))(v30, v13);
    }

    else
    {
      swift_allocError();
      (*(v26 + 32))(v42, v30, v13);
    }

    goto LABEL_19;
  }

  v47[1] = v3;
  if ((*(v14 + 16))(v13, v14))
  {
    v16 = v51;
    v17 = v52;
    v18 = __swift_project_boxed_opaque_existential_1(v50, v51);
    v19 = *(v16 - 8);
    v20 = *(v19 + 64);
    v21 = MEMORY[0x28223BE20](v18);
    v23 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v23, v21);
    v24 = *(v17 + 8);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v19 + 8))(v23, v16);
    }

    else
    {
      swift_allocError();
      (*(v19 + 32))(v46, v23, v16);
    }

LABEL_19:
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  if (one-time initialization token for validations != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static WorkoutKitLog.validations);
  v33 = v10;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v48[0] = v37;
    *v36 = 136315394;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000023B67FBC0, v48);
    *(v36 + 12) = 2080;
    v53 = v10;
    v38 = v10;
    v39 = String.init<A>(describing:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v48);

    *(v36 + 14) = v41;
    _os_log_impl(&dword_23B5E7000, v34, v35, "%s not supported due to: %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA1330](v37, -1, -1);
    MEMORY[0x23EEA1330](v36, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
LABEL_22:
  v43 = lazy protocol witness table accessor for type SpeedRangeAlert and conformance SpeedRangeAlert(&lazy protocol witness table cache variable for type CadenceRangeAlert and conformance CadenceRangeAlert, type metadata accessor for CadenceRangeAlert);
  v44 = *(v43 + 48);
  v45 = type metadata accessor for CadenceRangeAlert(0);
  return v44(a1, a2, v45, v43);
}

{
  if (a1 == 13)
  {
    goto LABEL_22;
  }

  if (a1 == 37)
  {
    if (a2 != 2)
    {
      goto LABEL_22;
    }

    v6 = a3;
    v7 = 1;
    v8 = 2;
    v9 = 37;
  }

  else
  {
    v6 = a3;
    v8 = 0;
    v7 = 0;
    v9 = a1;
  }

  lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
  v10 = swift_allocError();
  *v11 = v9;
  *(v11 + 8) = v8;
  *(v11 + 16) = v7;
  swift_willThrow();
  v53 = v10;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit15ValidationError_pMd, "xE");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v49 = 0;
    memset(v48, 0, sizeof(v48));
    outlined destroy of ValidationError?(v48);
    return swift_willThrow();
  }

  outlined init with take of ValidationError(v48, v50);
  v13 = v51;
  v14 = v52;
  v15 = __swift_project_boxed_opaque_existential_1(v50, v51);
  if ((v6 & 1) == 0)
  {
    v26 = *(v13 - 8);
    v27 = *(v26 + 64);
    v28 = MEMORY[0x28223BE20](v15);
    v30 = v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v30, v28);
    v31 = *(v14 + 8);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v26 + 8))(v30, v13);
    }

    else
    {
      swift_allocError();
      (*(v26 + 32))(v42, v30, v13);
    }

    goto LABEL_19;
  }

  v47[1] = v3;
  if ((*(v14 + 16))(v13, v14))
  {
    v16 = v51;
    v17 = v52;
    v18 = __swift_project_boxed_opaque_existential_1(v50, v51);
    v19 = *(v16 - 8);
    v20 = *(v19 + 64);
    v21 = MEMORY[0x28223BE20](v18);
    v23 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v23, v21);
    v24 = *(v17 + 8);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v19 + 8))(v23, v16);
    }

    else
    {
      swift_allocError();
      (*(v19 + 32))(v46, v23, v16);
    }

LABEL_19:
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  if (one-time initialization token for validations != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static WorkoutKitLog.validations);
  v33 = v10;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v48[0] = v37;
    *v36 = 136315394;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x800000023B67FBA0, v48);
    *(v36 + 12) = 2080;
    v53 = v10;
    v38 = v10;
    v39 = String.init<A>(describing:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v48);

    *(v36 + 14) = v41;
    _os_log_impl(&dword_23B5E7000, v34, v35, "%s not supported due to: %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA1330](v37, -1, -1);
    MEMORY[0x23EEA1330](v36, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
LABEL_22:
  v43 = lazy protocol witness table accessor for type SpeedRangeAlert and conformance SpeedRangeAlert(&lazy protocol witness table cache variable for type PowerThresholdAlert and conformance PowerThresholdAlert, type metadata accessor for PowerThresholdAlert);
  v44 = *(v43 + 48);
  v45 = type metadata accessor for PowerThresholdAlert(0);
  return v44(a1, a2, v45, v43);
}

{
  v7 = type metadata accessor for SpeedThresholdAlert(0);
  v8 = v7;
  if (a1 == 13)
  {
    goto LABEL_29;
  }

  if (a1 == 37)
  {
    if (a2 != 2)
    {
      goto LABEL_29;
    }

    v51 = &type metadata for WorkoutKitFeatures;
    v52 = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
    LOBYTE(v50[0]) = 3;
    v12 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v50);
    if (v12)
    {
      goto LABEL_29;
    }

    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    v10 = swift_allocError();
    v11 = xmmword_23B67C930;
    goto LABEL_9;
  }

  if (a1 != 71)
  {
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    v10 = swift_allocError();
    *v13 = a1;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    goto LABEL_11;
  }

  if (a2 == 2)
  {
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    v10 = swift_allocError();
    v11 = xmmword_23B67C940;
LABEL_9:
    *v9 = v11;
    *(v9 + 16) = 1;
    goto LABEL_11;
  }

  if (*(v3 + *(v7 + 20)))
  {
    goto LABEL_29;
  }

  lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
  v10 = swift_allocError();
  *v34 = 0;
  *(v34 + 8) = 0;
  *(v34 + 16) = 2;
LABEL_11:
  swift_willThrow();
  v53 = v10;
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit15ValidationError_pMd, "xE");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v49 = 0;
    memset(v48, 0, sizeof(v48));
    outlined destroy of ValidationError?(v48);
    return swift_willThrow();
  }

  outlined init with take of ValidationError(v48, v50);
  v15 = v51;
  v16 = v52;
  v17 = __swift_project_boxed_opaque_existential_1(v50, v51);
  if ((a3 & 1) == 0)
  {
    Description = v15[-1].Description;
    v29 = Description[8];
    v30 = MEMORY[0x28223BE20](v17);
    v32 = v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (Description[2])(v32, v30);
    v33 = *(v16 + 8);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (Description[1])(v32, v15);
    }

    else
    {
      swift_allocError();
      (Description[4])(v44, v32, v15);
    }

    goto LABEL_26;
  }

  v47[1] = v3;
  if ((*(v16 + 16))(v15, v16))
  {
    v18 = v51;
    v19 = v52;
    v20 = __swift_project_boxed_opaque_existential_1(v50, v51);
    v21 = v18[-1].Description;
    v22 = v21[8];
    v23 = MEMORY[0x28223BE20](v20);
    v25 = v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (v21[2])(v25, v23);
    v26 = *(v19 + 8);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (v21[1])(v25, v18);
    }

    else
    {
      swift_allocError();
      (v21[4])(v46, v25, v18);
    }

LABEL_26:
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  if (one-time initialization token for validations != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static WorkoutKitLog.validations);
  v36 = v10;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    *&v48[0] = v47[0];
    *v39 = 136315394;
    *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x800000023B67FB80, v48);
    *(v39 + 12) = 2080;
    v53 = v10;
    v40 = v10;
    v41 = String.init<A>(describing:)();
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v48);

    *(v39 + 14) = v43;
    _os_log_impl(&dword_23B5E7000, v37, v38, "%s not supported due to: %s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA1330](v47[0], -1, -1);
    MEMORY[0x23EEA1330](v39, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
LABEL_29:
  v45 = lazy protocol witness table accessor for type SpeedRangeAlert and conformance SpeedRangeAlert(&lazy protocol witness table cache variable for type SpeedThresholdAlert and conformance SpeedThresholdAlert, type metadata accessor for SpeedThresholdAlert);
  return (*(v45 + 48))(a1, a2, v8, v45);
}

{
  if (a1 == 13)
  {
    goto LABEL_22;
  }

  if (a1 == 37)
  {
    if (a2 != 2)
    {
      goto LABEL_22;
    }

    v6 = a3;
    v7 = 1;
    v8 = 2;
    v9 = 37;
  }

  else
  {
    v6 = a3;
    v8 = 0;
    v7 = 0;
    v9 = a1;
  }

  lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
  v10 = swift_allocError();
  *v11 = v9;
  *(v11 + 8) = v8;
  *(v11 + 16) = v7;
  swift_willThrow();
  v53 = v10;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit15ValidationError_pMd, "xE");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v49 = 0;
    memset(v48, 0, sizeof(v48));
    outlined destroy of ValidationError?(v48);
    return swift_willThrow();
  }

  outlined init with take of ValidationError(v48, v50);
  v13 = v51;
  v14 = v52;
  v15 = __swift_project_boxed_opaque_existential_1(v50, v51);
  if ((v6 & 1) == 0)
  {
    v26 = *(v13 - 8);
    v27 = *(v26 + 64);
    v28 = MEMORY[0x28223BE20](v15);
    v30 = v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v30, v28);
    v31 = *(v14 + 8);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v26 + 8))(v30, v13);
    }

    else
    {
      swift_allocError();
      (*(v26 + 32))(v42, v30, v13);
    }

    goto LABEL_19;
  }

  v47[1] = v3;
  if ((*(v14 + 16))(v13, v14))
  {
    v16 = v51;
    v17 = v52;
    v18 = __swift_project_boxed_opaque_existential_1(v50, v51);
    v19 = *(v16 - 8);
    v20 = *(v19 + 64);
    v21 = MEMORY[0x28223BE20](v18);
    v23 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v23, v21);
    v24 = *(v17 + 8);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v19 + 8))(v23, v16);
    }

    else
    {
      swift_allocError();
      (*(v19 + 32))(v46, v23, v16);
    }

LABEL_19:
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  if (one-time initialization token for validations != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static WorkoutKitLog.validations);
  v33 = v10;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v48[0] = v37;
    *v36 = 136315394;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000023B67FBE0, v48);
    *(v36 + 12) = 2080;
    v53 = v10;
    v38 = v10;
    v39 = String.init<A>(describing:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v48);

    *(v36 + 14) = v41;
    _os_log_impl(&dword_23B5E7000, v34, v35, "%s not supported due to: %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA1330](v37, -1, -1);
    MEMORY[0x23EEA1330](v36, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
LABEL_22:
  v43 = lazy protocol witness table accessor for type SpeedRangeAlert and conformance SpeedRangeAlert(&lazy protocol witness table cache variable for type CadenceThresholdAlert and conformance CadenceThresholdAlert, type metadata accessor for CadenceThresholdAlert);
  v44 = *(v43 + 48);
  v45 = type metadata accessor for CadenceThresholdAlert(0);
  return v44(a1, a2, v45, v43);
}

id static WorkoutAlertMetric.countPerMinute.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCADC0]) initWithCoefficient_];
  v1 = objc_allocWithZone(MEMORY[0x277CCAE00]);
  v2 = MEMORY[0x23EEA0A00](0x696D2F746E756F63, 0xE90000000000006ELL);
  v3 = [v1 initWithSymbol:v2 converter:v0];

  return v3;
}

void protocol witness for WorkoutAlertProtable.validate(for:location:context:) in conformance HeartRateZoneAlert()
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

Swift::Int WorkoutAlertMetric.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutAlertMetric()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutAlertMetric()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type WorkoutAlertMetric and conformance WorkoutAlertMetric()
{
  result = lazy protocol witness table cache variable for type WorkoutAlertMetric and conformance WorkoutAlertMetric;
  if (!lazy protocol witness table cache variable for type WorkoutAlertMetric and conformance WorkoutAlertMetric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutAlertMetric and conformance WorkoutAlertMetric);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutAlertMetric(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutAlertMetric(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined destroy of ValidationError?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit15ValidationError_pSgMd, "xE");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of ValidationError(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t specialized WorkoutAlertProtable.validate(for:location:context:)(uint64_t result, char a2, uint64_t a3)
{
  if (result == 13)
  {
    if (a3 >= 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  v5 = result;
  lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
  v7 = swift_allocError();
  *v8 = v5;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  swift_willThrow();
  v42 = v7;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit15ValidationError_pMd, "xE");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    outlined destroy of ValidationError?(v40);
    return swift_willThrow();
  }

  outlined init with take of ValidationError(v40, v43);
  v10 = v44;
  v11 = v45;
  v12 = __swift_project_boxed_opaque_existential_1(v43, v44);
  if ((a2 & 1) == 0)
  {
    v22 = *(v10 - 8);
    v23 = *(v22 + 64);
    v24 = MEMORY[0x28223BE20](v12);
    v26 = v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v26, v24);
    v27 = *(v11 + 8);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v22 + 8))(v26, v10);
    }

    else
    {
      swift_allocError();
      (*(v22 + 32))(v38, v26, v10);
    }

    goto LABEL_22;
  }

  if ((*(v11 + 16))(v10, v11))
  {
    v13 = v44;
    v14 = v45;
    v15 = __swift_project_boxed_opaque_existential_1(v43, v44);
    v16 = *(v13 - 8);
    v17 = *(v16 + 64);
    v18 = MEMORY[0x28223BE20](v15);
    v20 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v20, v18);
    v21 = *(v14 + 8);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v16 + 8))(v20, v13);
    }

    else
    {
      swift_allocError();
      (*(v16 + 32))(v39, v20, v13);
    }

LABEL_22:
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  if (one-time initialization token for validations != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static WorkoutKitLog.validations);
  v29 = v7;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v40[0] = v33;
    *v32 = 136315394;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E6F5A7265776F50, 0xEE007472656C4165, v40);
    *(v32 + 12) = 2080;
    v42 = v7;
    v34 = v7;
    v35 = String.init<A>(describing:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v40);

    *(v32 + 14) = v37;
    _os_log_impl(&dword_23B5E7000, v30, v31, "%s not supported due to: %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA1330](v33, -1, -1);
    MEMORY[0x23EEA1330](v32, -1, -1);
  }

  else
  {
  }

  result = __swift_destroy_boxed_opaque_existential_1(v43);
  if (a3 < 1)
  {
LABEL_3:
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    swift_allocError();
    *v3 = xmmword_23B6784C0;
    *(v3 + 16) = 3;
    return swift_willThrow();
  }

  return result;
}

BOOL specialized WorkoutAlertProtable.supports(activity:location:)(uint64_t a1)
{
  if (a1 <= 0)
  {
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    v2 = swift_allocError();
    *v3 = xmmword_23B6784C0;
    *(v3 + 16) = 3;
    swift_willThrow();
    if (one-time initialization token for validations != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WorkoutKitLog.validations);
    v5 = v2;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x800000023B67FC00, v15);
      *(v8 + 12) = 2080;
      v10 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v15);

      *(v8 + 14) = v13;
      _os_log_impl(&dword_23B5E7000, v6, v7, "%s not supported due to: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEA1330](v9, -1, -1);
      MEMORY[0x23EEA1330](v8, -1, -1);
    }

    else
    {
    }
  }

  return a1 > 0;
}

uint64_t lazy protocol witness table accessor for type SpeedRangeAlert and conformance SpeedRangeAlert(unint64_t *a1, void (*a2)(uint64_t))
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

void WorkoutGoal.validate<A>(for:location:swimmingLocation:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a5;
  v62 = a1;
  v63 = a4;
  v55 = a3;
  v57 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  v56 = *(v13 - 8);
  v14 = *(v56 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - v15;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v61 = *(v58 - 8);
  v17 = *(v61 + 64);
  MEMORY[0x28223BE20](v58);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v54 - v21;
  v23 = type metadata accessor for WorkoutGoal();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (&v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of WorkoutGoal(v5, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v44 = *v26;
      v45 = v26[1];
      _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
      v46 = v45;
      Measurement.init(value:unit:)();
      v47 = v60;
      Measurement.value.getter();
      if (v48 <= 0.0)
      {
        type metadata accessor for GoalValidationError(0);
        lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*(v59 + 8))(v12, v47);
      }

      else
      {
        (*(v59 + 8))(v12, v47);
      }
    }

    else
    {
      v35 = *v26;
      v36 = v26[1];
      _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
      v37 = v36;
      Measurement.init(value:unit:)();
      v38 = v65;
      WorkoutGoal.validateDistanceSupported<A>(for:location:kind:)(v62, v57);
      if (v38)
      {
        (*(v61 + 8))(v22, v58);
      }

      else
      {
        v51 = v58;
        Measurement.value.getter();
        v52 = v61;
        if (v53 <= 0.0)
        {
          type metadata accessor for GoalValidationError(0);
          lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          (*(v52 + 8))(v22, v51);
        }

        else
        {
          (*(v61 + 8))(v22, v51);
        }
      }
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v39 = *v26;
    v40 = v26[1];
    _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
    v41 = v40;
    Measurement.init(value:unit:)();
    v42 = v65;
    WorkoutGoal.validateEnergySupported<A>(for:location:kind:)(v62, v57, v63);
    if (v42 || (Measurement.value.getter(), v43 > 0.0))
    {
      (*(v56 + 8))(v16, v13);
    }

    else
    {
      type metadata accessor for GoalValidationError(0);
      lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v56 + 8))(v16, v13);
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMR) + 48);
    v29 = v61;
    v30 = v58;
    (*(v61 + 32))(v19, v26, v58);
    v31 = v59;
    v32 = v26 + v28;
    v33 = v60;
    (*(v59 + 32))(v9, v32, v60);
    v34 = v65;
    WorkoutGoal.validateDistanceWithTimeSupported<A>(for:swimmingLocation:kind:)(v62, v55, v63);
    if (v34)
    {
      (*(v31 + 8))(v9, v33);
      (*(v29 + 8))(v19, v30);
    }

    else
    {
      Measurement.value.getter();
      if (v49 <= 0.0 || (Measurement.value.getter(), v50 <= 0.0))
      {
        type metadata accessor for GoalValidationError(0);
        lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      (*(v31 + 8))(v9, v33);
      (*(v61 + 8))(v19, v30);
    }
  }
}

uint64_t WorkoutGoal.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for BinaryDecodingOptions();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = a2;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v3)
  {
    Apple_Workout_WorkoutGoal.workoutKitRepresentation.getter(a3);
    _s10WorkoutKit06Apple_a1_A4GoalVWOhTm_0(v12, type metadata accessor for Apple_Workout_WorkoutGoal);
  }

  return outlined consume of Data._Representation(a1, a2);
}

uint64_t WorkoutGoal.dataRepresentation.getter()
{
  v1 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal);
  static Message.with(_:)();
  v5 = Message.serializedData(partial:)();
  _s10WorkoutKit06Apple_a1_A4GoalVWOhTm_0(v4, type metadata accessor for Apple_Workout_WorkoutGoal);
  return v5;
}

uint64_t closure #1 in WorkoutGoal.protoRepresentation.getter(void *a1, uint64_t a2)
{
  v59 = a1;
  v51 = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0);
  v3 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v53 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v55 = *(v58 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v58);
  v54 = &v50 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v52 = *(v57 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v50 - v8;
  v9 = type metadata accessor for Apple_Workout_EnergyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_TimeValue(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for WorkoutGoal();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of WorkoutGoal(a2, v24);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      v37 = *v24;
      v38 = v24[1];
      v39 = v59;
      *v59 = 3;
      *(v39 + 8) = 1;
      *(&v50 - 2) = MEMORY[0x28223BE20](result);
      *(&v50 - 1) = v38;
      lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue);
      static Message.with(_:)();

      v40 = *(type metadata accessor for Apple_Workout_WorkoutGoal(0) + 20);
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v39 + v40, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
      outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v20, v39 + v40, type metadata accessor for Apple_Workout_DistanceValue);
      v41 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v41 - 8) + 56))(v39 + v40, 0, 1, v41);
    }

    v48 = *v24;
    v49 = v24[1];
    v44 = v59;
    *v59 = 1;
    *(v44 + 8) = 1;
    *(&v50 - 2) = MEMORY[0x28223BE20](result);
    *(&v50 - 1) = v49;
    lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue);
    static Message.with(_:)();

    v45 = *(type metadata accessor for Apple_Workout_WorkoutGoal(0) + 20);
    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v44 + v45, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v16, v44 + v45, type metadata accessor for Apple_Workout_TimeValue);
    v46 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
    goto LABEL_10;
  }

  if (result == 2)
  {
    v42 = *v24;
    v43 = v24[1];
    v44 = v59;
    *v59 = 2;
    *(v44 + 8) = 1;
    *(&v50 - 2) = MEMORY[0x28223BE20](result);
    *(&v50 - 1) = v43;
    lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type Apple_Workout_EnergyValue and conformance Apple_Workout_EnergyValue, type metadata accessor for Apple_Workout_EnergyValue);
    static Message.with(_:)();

    v45 = *(type metadata accessor for Apple_Workout_WorkoutGoal(0) + 20);
    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v44 + v45, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v12, v44 + v45, type metadata accessor for Apple_Workout_EnergyValue);
    v46 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
LABEL_10:
    swift_storeEnumTagMultiPayload();
    return (*(*(v46 - 8) + 56))(v44 + v45, 0, 1, v46);
  }

  if (result == 3)
  {
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMR) + 48);
    v27 = v52;
    v28 = v56;
    (*(v52 + 32))();
    v29 = v55;
    v30 = v24 + v26;
    v31 = v54;
    v32 = (*(v55 + 32))(v54, v30, v58);
    v33 = v59;
    *v59 = 5;
    *(v33 + 8) = 1;
    MEMORY[0x28223BE20](v32);
    *(&v50 - 2) = v28;
    *(&v50 - 1) = v31;
    lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
    v34 = v53;
    static Message.with(_:)();
    v35 = *(type metadata accessor for Apple_Workout_WorkoutGoal(0) + 20);
    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v33 + v35, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v34, v33 + v35, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
    v36 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v36 - 8) + 56))(v33 + v35, 0, 1, v36);
    (*(v29 + 8))(v31, v58);
    return (*(v27 + 8))(v56, v57);
  }

  else
  {
    v47 = v59;
    *v59 = 4;
    *(v47 + 8) = 1;
  }

  return result;
}

uint64_t closure #1 in closure #1 in WorkoutGoal.protoRepresentation.getter(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v35 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  v11 = a2;
  Measurement.init(value:unit:)();
  v12 = Measurement.unit.getter();
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 kilometers];
  LOBYTE(v12) = static NSObject.== infix(_:_:)();

  if (v12)
  {

    Measurement.value.getter();
    v17 = v16;
    result = (*(v5 + 8))(v10, v4);
    v19 = 2;
  }

  else
  {
    v20 = v14;
    v21 = [v13 feet];
    v22 = static NSObject.== infix(_:_:)();

    if (v22)
    {

      Measurement.value.getter();
      v17 = v23;
      result = (*(v5 + 8))(v10, v4);
      v19 = 3;
    }

    else
    {
      v24 = v20;
      v25 = [v13 yards];
      v26 = static NSObject.== infix(_:_:)();

      if (v26)
      {

        Measurement.value.getter();
        v17 = v27;
        result = (*(v5 + 8))(v10, v4);
        v19 = 4;
      }

      else
      {
        v28 = [v13 miles];
        v29 = static NSObject.== infix(_:_:)();

        if (v29)
        {
          Measurement.value.getter();
          v17 = v30;
          result = (*(v5 + 8))(v10, v4);
          v19 = 5;
        }

        else
        {
          v31 = [v13 meters];
          v32 = v35;
          Measurement<>.converted(to:)();

          Measurement.value.getter();
          v17 = v33;
          v34 = *(v5 + 8);
          v34(v32, v4);
          result = (v34)(v10, v4);
          v19 = 1;
        }
      }
    }
  }

  *(a1 + 16) = v17;
  *a1 = v19;
  *(a1 + 8) = 1;
  return result;
}

uint64_t closure #2 in closure #1 in WorkoutGoal.protoRepresentation.getter(uint64_t a1, void *a2)
{
  v27 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
  v11 = a2;
  Measurement.init(value:unit:)();
  v12 = Measurement.unit.getter();
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 hours];
  LOBYTE(v12) = static NSObject.== infix(_:_:)();

  if (v12)
  {

    Measurement.value.getter();
    v17 = v16;
    result = (*(v4 + 8))(v10, v3);
    v19 = 3;
  }

  else
  {
    v20 = [v13 minutes];
    v21 = static NSObject.== infix(_:_:)();

    if (v21)
    {
      Measurement.value.getter();
      v17 = v22;
      result = (*(v4 + 8))(v10, v3);
      v19 = 2;
    }

    else
    {
      v23 = [v13 seconds];
      Measurement<>.converted(to:)();

      Measurement.value.getter();
      v17 = v24;
      v25 = *(v4 + 8);
      v25(v8, v3);
      result = (v25)(v10, v3);
      v19 = 1;
    }
  }

  v26 = v27;
  *(v27 + 16) = v17;
  *v26 = v19;
  *(v26 + 8) = 1;
  return result;
}

uint64_t closure #3 in closure #1 in WorkoutGoal.protoRepresentation.getter(uint64_t a1, void *a2)
{
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
  v11 = a2;
  Measurement.init(value:unit:)();
  v12 = Measurement.unit.getter();
  v13 = objc_opt_self();
  v14 = [v13 kilojoules];
  LOBYTE(a2) = static NSObject.== infix(_:_:)();

  if (a2)
  {
    Measurement.value.getter();
    v16 = v15;
    result = (*(v4 + 8))(v10, v3);
    v18 = 2;
  }

  else
  {
    v19 = [v13 kilocalories];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v16 = v20;
    v21 = *(v4 + 8);
    v21(v8, v3);
    result = (v21)(v10, v3);
    v18 = 1;
  }

  v22 = v23;
  *(v23 + 16) = v16;
  *v22 = v18;
  *(v22 + 8) = 1;
  return result;
}

uint64_t closure #4 in closure #1 in WorkoutGoal.protoRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v247 = a3;
  v242 = a1;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v229 = *(v243 - 8);
  v4 = *(v229 + 64);
  MEMORY[0x28223BE20](v243);
  v227 = &v207 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v234 = &v207 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v230 = &v207 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v232 = &v207 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v226 = &v207 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v241 = &v207 - v17;
  MEMORY[0x28223BE20](v16);
  v239 = &v207 - v18;
  v19 = type metadata accessor for Apple_Workout_TimeValue(0);
  v244 = *(v19 - 8);
  v245 = v19;
  v20 = *(v244 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v233 = &v207 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v228 = (&v207 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v231 = &v207 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v225 = (&v207 - v28);
  v29 = MEMORY[0x28223BE20](v27);
  v240 = &v207 - v30;
  MEMORY[0x28223BE20](v29);
  v238 = (&v207 - v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v211 = *(v32 - 8);
  v33 = *(v211 + 64);
  MEMORY[0x28223BE20](v32);
  v210 = &v207 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v216 = &v207 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v213 = &v207 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v215 = &v207 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v209 = &v207 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v220 = &v207 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v218 = &v207 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v224 = &v207 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v222 = &v207 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v237 = &v207 - v54;
  MEMORY[0x28223BE20](v53);
  v235 = (&v207 - v55);
  v56 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v248 = *(v56 - 8);
  v57 = v248[8];
  v58 = MEMORY[0x28223BE20](v56);
  v214 = &v207 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v58);
  v208 = (&v207 - v61);
  v62 = MEMORY[0x28223BE20](v60);
  v212 = &v207 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v207 = (&v207 - v65);
  v66 = MEMORY[0x28223BE20](v64);
  v219 = &v207 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v217 = (&v207 - v69);
  v70 = MEMORY[0x28223BE20](v68);
  v223 = &v207 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v221 = (&v207 - v73);
  v74 = MEMORY[0x28223BE20](v72);
  v236 = &v207 - v75;
  MEMORY[0x28223BE20](v74);
  v77 = &v207 - v76;
  v78 = v32;
  v79 = a2;
  v80 = Measurement.unit.getter();
  v81 = objc_opt_self();
  v82 = v80;
  v83 = [v81 kilometers];
  _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  v84 = static NSObject.== infix(_:_:)();

  v246 = v56;
  if ((v84 & 1) == 0)
  {
    v237 = v79;
    v92 = v248;
    v88 = v242;
    v93 = v82;
    v94 = [v81 feet];
    v95 = static NSObject.== infix(_:_:)();

    if (v95)
    {

      Measurement.value.getter();
      v97 = v96;
      v98 = *(type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0) + 20);
      v99 = v222;
      _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v88 + v98, v222, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      v100 = v92[6];
      v101 = v246;
      if (v100(v99, 1, v246) == 1)
      {
        v102 = v221;
        *v221 = 0;
        *(v102 + 8) = 1;
        v103 = v102 + *(v101 + 24);
        UnknownStorage.init()();
        if (v100(v99, 1, v101) != 1)
        {
          outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v99, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
        }
      }

      else
      {
        v102 = v221;
        outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v99, v221, type metadata accessor for Apple_Workout_DistanceValue);
      }

      v102[2] = v97;
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v88 + v98, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v102, v88 + v98, type metadata accessor for Apple_Workout_DistanceValue);
      v124 = v92[7];
      v125 = v246;
      v124(v88 + v98, 0, 1, v246);
      v126 = v224;
      v127 = v125;
      _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v88 + v98, v224, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      if (v100(v126, 1, v125) == 1)
      {
        v128 = v223;
        *(v223 + 16) = 0;
        v129 = v128 + *(v127 + 24);
        UnknownStorage.init()();
        v130 = v100(v126, 1, v127);
        v131 = v128;
        v123 = v243;
        if (v130 != 1)
        {
          outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v126, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
        }
      }

      else
      {
        v131 = v223;
        outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v126, v223, type metadata accessor for Apple_Workout_DistanceValue);
        v123 = v243;
      }

      *v131 = 3;
      *(v131 + 8) = 1;
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v88 + v98, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v131, v88 + v98, type metadata accessor for Apple_Workout_DistanceValue);
      v124(v88 + v98, 0, 1, v127);
      goto LABEL_52;
    }

    v112 = v93;
    v113 = [v81 yards];
    v114 = static NSObject.== infix(_:_:)();

    if (v114)
    {

      Measurement.value.getter();
      v116 = v115;
      v117 = *(type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0) + 20);
      v118 = v218;
      _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v88 + v117, v218, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      v119 = v92[6];
      v120 = v246;
      if (v119(v118, 1, v246) == 1)
      {
        v121 = v217;
        *v217 = 0;
        *(v121 + 8) = 1;
        v122 = v121 + *(v120 + 24);
        UnknownStorage.init()();
        if (v119(v118, 1, v120) != 1)
        {
          outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v118, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
        }
      }

      else
      {
        v121 = v217;
        outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v118, v217, type metadata accessor for Apple_Workout_DistanceValue);
      }

      v121[2] = v116;
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v88 + v117, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v121, v88 + v117, type metadata accessor for Apple_Workout_DistanceValue);
      v141 = v92[7];
      v142 = v246;
      v141(v88 + v117, 0, 1, v246);
      v143 = v220;
      v144 = v142;
      _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v88 + v117, v220, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      if (v119(v143, 1, v142) == 1)
      {
        v145 = v219;
        *(v219 + 16) = 0;
        v146 = v145 + *(v144 + 24);
        UnknownStorage.init()();
        v147 = v145;
        if (v119(v143, 1, v144) != 1)
        {
          outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v143, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
        }
      }

      else
      {
        v147 = v219;
        outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v143, v219, type metadata accessor for Apple_Workout_DistanceValue);
      }

      v157 = 4;
    }

    else
    {
      v132 = [v81 miles];
      v133 = static NSObject.== infix(_:_:)();

      if ((v133 & 1) == 0)
      {
        v148 = [v81 meters];
        v149 = v210;
        Measurement<>.converted(to:)();

        Measurement.value.getter();
        v151 = v150;
        (*(v211 + 8))(v149, v78);
        v117 = *(type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0) + 20);
        v152 = v213;
        _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v88 + v117, v213, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
        v153 = v92[6];
        v154 = v246;
        if (v153(v152, 1, v246) == 1)
        {
          v155 = v208;
          *v208 = 0;
          *(v155 + 8) = 1;
          v156 = v155 + *(v154 + 24);
          UnknownStorage.init()();
          if (v153(v152, 1, v154) != 1)
          {
            outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v152, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
          }
        }

        else
        {
          v155 = v208;
          outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v152, v208, type metadata accessor for Apple_Workout_DistanceValue);
        }

        v155[2] = v151;
        outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v88 + v117, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
        outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v155, v88 + v117, type metadata accessor for Apple_Workout_DistanceValue);
        v141 = v92[7];
        v162 = v246;
        v141(v88 + v117, 0, 1, v246);
        v163 = v216;
        v144 = v162;
        _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v88 + v117, v216, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
        if (v153(v163, 1, v162) == 1)
        {
          v164 = v214;
          *(v214 + 16) = 0;
          v165 = v164 + *(v144 + 24);
          UnknownStorage.init()();
          v147 = v164;
          if (v153(v163, 1, v144) != 1)
          {
            outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v163, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
          }
        }

        else
        {
          v147 = v214;
          outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v163, v214, type metadata accessor for Apple_Workout_DistanceValue);
        }

        *v147 = 1;
        *(v147 + 8) = 1;
        goto LABEL_51;
      }

      Measurement.value.getter();
      v135 = v134;
      v117 = *(type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0) + 20);
      v136 = v209;
      _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v88 + v117, v209, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      v137 = v92[6];
      v138 = v246;
      if (v137(v136, 1, v246) == 1)
      {
        v139 = v207;
        *v207 = 0;
        *(v139 + 8) = 1;
        v140 = v139 + *(v138 + 24);
        UnknownStorage.init()();
        if (v137(v136, 1, v138) != 1)
        {
          outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v136, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
        }
      }

      else
      {
        v139 = v207;
        outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v136, v207, type metadata accessor for Apple_Workout_DistanceValue);
      }

      v139[2] = v135;
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v88 + v117, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v139, v88 + v117, type metadata accessor for Apple_Workout_DistanceValue);
      v141 = v92[7];
      v158 = v246;
      v141(v88 + v117, 0, 1, v246);
      v159 = v215;
      v144 = v158;
      _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v88 + v117, v215, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      if (v137(v159, 1, v158) == 1)
      {
        v160 = v212;
        *(v212 + 16) = 0;
        v161 = v160 + *(v144 + 24);
        UnknownStorage.init()();
        v147 = v160;
        if (v137(v159, 1, v144) != 1)
        {
          outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v159, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
        }

        v157 = 5;
      }

      else
      {
        v147 = v212;
        outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v159, v212, type metadata accessor for Apple_Workout_DistanceValue);
        v157 = 5;
      }
    }

    *v147 = v157;
    *(v147 + 8) = 1;
LABEL_51:
    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v88 + v117, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v147, v88 + v117, type metadata accessor for Apple_Workout_DistanceValue);
    v141(v88 + v117, 0, 1, v144);
    v123 = v243;
LABEL_52:
    v111 = v245;
    goto LABEL_53;
  }

  Measurement.value.getter();
  v86 = v85;
  v87 = *(type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0) + 20);
  v88 = v242;
  v89 = v235;
  _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v242 + v87, v235, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v90 = v248[6];
  if (v90(v89, 1, v56) == 1)
  {
    *v77 = 0;
    v77[8] = 1;
    v91 = &v77[*(v56 + 24)];
    UnknownStorage.init()();
    if (v90(v89, 1, v56) != 1)
    {
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v89, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v89, v77, type metadata accessor for Apple_Workout_DistanceValue);
  }

  *(v77 + 2) = v86;
  outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v88 + v87, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v77, v88 + v87, type metadata accessor for Apple_Workout_DistanceValue);
  v104 = v248[7];
  v105 = v246;
  v248 += 7;
  v235 = v104;
  (v104)(v88 + v87, 0, 1, v246);
  v106 = v237;
  v107 = v105;
  _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v88 + v87, v237, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  if (v90(v106, 1, v105) == 1)
  {
    v108 = v236;
    *(v236 + 16) = 0;
    v109 = v108 + *(v105 + 24);
    UnknownStorage.init()();
    v110 = v90(v106, 1, v105);
    v111 = v245;
    if (v110 != 1)
    {
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v106, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    }
  }

  else
  {
    v108 = v236;
    outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v106, v236, type metadata accessor for Apple_Workout_DistanceValue);
    v111 = v245;
  }

  *v108 = 2;
  *(v108 + 8) = 1;
  outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v88 + v87, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v108, v88 + v87, type metadata accessor for Apple_Workout_DistanceValue);
  (v235)(v88 + v87, 0, 1, v107);
  v123 = v243;
LABEL_53:
  v166 = Measurement.unit.getter();
  v167 = objc_opt_self();
  v168 = v166;
  v169 = [v167 hours];
  _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
  v170 = static NSObject.== infix(_:_:)();

  if (v170)
  {

    Measurement.value.getter();
    v172 = v171;
    v173 = *(type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0) + 24);
    v174 = v239;
    _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v88 + v173, v239, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    v175 = v244;
    v176 = *(v244 + 48);
    if (v176(v174, 1, v111) == 1)
    {
      v177 = v238;
      *v238 = 0;
      *(v177 + 8) = 1;
      v178 = v177 + *(v111 + 24);
      UnknownStorage.init()();
      if (v176(v174, 1, v111) != 1)
      {
        outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v174, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      }
    }

    else
    {
      v177 = v238;
      outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v174, v238, type metadata accessor for Apple_Workout_TimeValue);
    }

    v177[2] = v172;
    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v88 + v173, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v177, v88 + v173, type metadata accessor for Apple_Workout_TimeValue);
    v188 = *(v175 + 56);
    v188(v88 + v173, 0, 1, v111);
    v189 = v241;
    _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v88 + v173, v241, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    if (v176(v189, 1, v111) == 1)
    {
      v190 = v240;
      *(v240 + 16) = 0;
      v191 = v190 + *(v111 + 24);
      UnknownStorage.init()();
      if (v176(v189, 1, v111) != 1)
      {
        outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v189, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      }
    }

    else
    {
      v190 = v240;
      outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v189, v240, type metadata accessor for Apple_Workout_TimeValue);
    }

    v201 = 3;
LABEL_70:
    *v190 = v201;
    *(v190 + 8) = 1;
    goto LABEL_83;
  }

  v179 = [v167 minutes];
  v180 = static NSObject.== infix(_:_:)();

  if (v180)
  {
    Measurement.value.getter();
    v182 = v181;
    v173 = *(type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0) + 24);
    v183 = v226;
    _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v88 + v173, v226, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    v184 = v244;
    v185 = *(v244 + 48);
    if (v185(v183, 1, v111) == 1)
    {
      v186 = v225;
      *v225 = 0;
      *(v186 + 8) = 1;
      v187 = v186 + *(v111 + 24);
      UnknownStorage.init()();
      if (v185(v183, 1, v111) != 1)
      {
        outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v183, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      }
    }

    else
    {
      v186 = v225;
      outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v183, v225, type metadata accessor for Apple_Workout_TimeValue);
    }

    v186[2] = v182;
    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v88 + v173, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v186, v88 + v173, type metadata accessor for Apple_Workout_TimeValue);
    v188 = *(v184 + 56);
    v188(v88 + v173, 0, 1, v111);
    v202 = v232;
    _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v88 + v173, v232, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    if (v185(v202, 1, v111) == 1)
    {
      v190 = v231;
      *(v231 + 16) = 0;
      v203 = v190 + *(v111 + 24);
      UnknownStorage.init()();
      if (v185(v202, 1, v111) != 1)
      {
        outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v202, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      }

      v201 = 2;
    }

    else
    {
      v190 = v231;
      outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v202, v231, type metadata accessor for Apple_Workout_TimeValue);
      v201 = 2;
    }

    goto LABEL_70;
  }

  v192 = [v167 seconds];
  v193 = v227;
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v195 = v194;
  (*(v229 + 8))(v193, v123);
  v173 = *(type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0) + 24);
  v196 = v230;
  _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v88 + v173, v230, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v197 = v244;
  v198 = *(v244 + 48);
  if (v198(v196, 1, v111) == 1)
  {
    v199 = v228;
    *v228 = 0;
    *(v199 + 8) = 1;
    v200 = v199 + *(v111 + 24);
    UnknownStorage.init()();
    if (v198(v196, 1, v111) != 1)
    {
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v196, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    }
  }

  else
  {
    v199 = v228;
    outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v196, v228, type metadata accessor for Apple_Workout_TimeValue);
  }

  v199[2] = v195;
  outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v88 + v173, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v199, v88 + v173, type metadata accessor for Apple_Workout_TimeValue);
  v188 = *(v197 + 56);
  v188(v88 + v173, 0, 1, v111);
  v204 = v234;
  _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v88 + v173, v234, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if (v198(v204, 1, v111) == 1)
  {
    v190 = v233;
    *(v233 + 16) = 0;
    v205 = v190 + *(v111 + 24);
    UnknownStorage.init()();
    if (v198(v204, 1, v111) != 1)
    {
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v204, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    }
  }

  else
  {
    v190 = v233;
    outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v204, v233, type metadata accessor for Apple_Workout_TimeValue);
  }

  *v190 = 1;
  *(v190 + 8) = 1;
LABEL_83:
  outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v88 + v173, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v190, v88 + v173, type metadata accessor for Apple_Workout_TimeValue);
  return (v188)(v88 + v173, 0, 1, v111);
}

uint64_t WorkoutGoal.validateDistanceSupported<A>(for:location:kind:)(uint64_t result, uint64_t a2)
{
  switch(result)
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
      return result;
    case 25:
    case 35:
    case 39:
    case 41:
      if (a2 == 2)
      {
        v3 = result;
        type metadata accessor for GoalValidationError(0);
        lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
        swift_allocError();
        *v4 = v3;
        v4[1] = 2;
        goto LABEL_6;
      }

      break;
    default:
      v5 = result;
      type metadata accessor for GoalValidationError(0);
      lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
      swift_allocError();
      v8 = v7;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
      v10 = *(v9 + 48);
      v11 = *(v9 + 64);
      outlined init with copy of WorkoutGoal(v2, v8);
      *(v8 + v10) = v5;
      *(v8 + v11) = a2;
LABEL_6:
      swift_storeEnumTagMultiPayload();
      result = swift_willThrow();
      break;
  }

  return result;
}

uint64_t WorkoutGoal.validateEnergySupported<A>(for:location:kind:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CustomWorkout();
  if (result == a3)
  {
    type metadata accessor for CustomValidationError(0);
    lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type CustomValidationError and conformance CustomValidationError, type metadata accessor for CustomValidationError);
    swift_allocError();
    v9 = v8;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
    v11 = *(v10 + 48);
    v12 = *(v10 + 64);
    outlined init with copy of WorkoutGoal(v3, v9);
    *(v9 + v11) = a1;
    *(v9 + v12) = a2;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t WorkoutGoal.validateDistanceWithTimeSupported<A>(for:swimmingLocation:kind:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CustomWorkout();
  if (result != a3 || a1 != 46 || a2 != 1)
  {
    type metadata accessor for GoalValidationError(0);
    lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError);
    swift_allocError();
    v9 = v8;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d16SwimmingLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d16SwimmingLocationF0VtMR);
    v11 = *(v10 + 48);
    v12 = *(v10 + 64);
    outlined init with copy of WorkoutGoal(v3, v9);
    *(v9 + v11) = a1;
    *(v9 + v12) = a2;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

void WorkoutGoal.hash(into:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = type metadata accessor for WorkoutGoal();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WorkoutGoal(v0, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v17 = *v14;
    v18 = *(v14 + 1);
    if (EnumCaseMultiPayload)
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMR) + 48);
        (*(v7 + 32))(v10, v14, v6);
        (*(v2 + 32))(v5, &v14[v16], v1);
        MEMORY[0x23EEA0D50](4);
        _s10Foundation11MeasurementVySo12NSUnitLengthCGACyxGSHAAWlTm_0(&lazy protocol witness table cache variable for type Measurement<NSUnitLength> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
        dispatch thunk of Hashable.hash(into:)();
        _s10Foundation11MeasurementVySo12NSUnitLengthCGACyxGSHAAWlTm_0(&lazy protocol witness table cache variable for type Measurement<NSUnitDuration> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
        dispatch thunk of Hashable.hash(into:)();
        (*(v2 + 8))(v5, v1);
        (*(v7 + 8))(v10, v6);
      }

      else
      {
        MEMORY[0x23EEA0D50](0);
      }

      return;
    }

    v17 = *v14;
    v18 = *(v14 + 1);
    v19 = 3;
  }

  MEMORY[0x23EEA0D50](v19);
  v20 = 0.0;
  if (v17 != 0.0)
  {
    v20 = v17;
  }

  MEMORY[0x23EEA0D70](*&v20);
  NSObject.hash(into:)();
}

Swift::Int WorkoutGoal.hashValue.getter()
{
  Hasher.init(_seed:)();
  WorkoutGoal.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutGoal()
{
  Hasher.init(_seed:)();
  WorkoutGoal.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutGoal()
{
  Hasher.init(_seed:)();
  WorkoutGoal.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static WorkoutGoal.== infix(_:_:)(void (*a1)(char *, uint64_t *, uint64_t), uint64_t a2)
{
  v106 = a1;
  v107 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  v96 = *(v2 - 8);
  v97 = v2;
  v3 = *(v96 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v94 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v93 = &v92 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v100 = *(v7 - 8);
  v101 = v7;
  v8 = v100[8];
  v9 = MEMORY[0x28223BE20](v7);
  v95 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v99 = &v92 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v103 = &v92 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v92 - v15;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v102 = *(v105 - 8);
  v17 = v102[8];
  v18 = MEMORY[0x28223BE20](v105);
  v98 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v104 = &v92 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v92 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v92 - v25;
  v27 = type metadata accessor for WorkoutGoal();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = (&v92 - v33);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = (&v92 - v36);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = (&v92 - v39);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v92 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = (&v92 - v44);
  outlined init with copy of WorkoutGoal(v106, &v92 - v44);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v62 = v103;
    if (EnumCaseMultiPayload)
    {
      v77 = v16;
      v78 = *v45;
      v79 = v45[1];
      outlined init with copy of WorkoutGoal(v107, v37);
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        v65 = v37;
        goto LABEL_18;
      }

      v80 = *v37;
      v81 = v37[1];
      _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
      v82 = v79;
      v83 = v77;
      Measurement.init(value:unit:)();
      v84 = v81;
      Measurement.init(value:unit:)();
      v60 = static Measurement.== infix<A, B>(_:_:)();

      v74 = v101;
      v75 = v100[1];
      v75(v62, v101);
      v76 = v83;
LABEL_20:
      v75(v76, v74);
      return v60 & 1;
    }

    v63 = *v45;
    v64 = v45[1];
    outlined init with copy of WorkoutGoal(v107, v40);
    if (!swift_getEnumCaseMultiPayload())
    {
      v85 = *v40;
      v86 = v40[1];
      _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
      v87 = v64;
      Measurement.init(value:unit:)();
      v88 = v86;
      Measurement.init(value:unit:)();
      v60 = static Measurement.== infix<A, B>(_:_:)();

      v75 = v102[1];
      v74 = v105;
      v75(v24, v105);
      v76 = v26;
      goto LABEL_20;
    }

    v65 = v40;
LABEL_18:
    _s10WorkoutKit06Apple_a1_A4GoalVWOhTm_0(v65, type metadata accessor for WorkoutGoal);
    v60 = 0;
    return v60 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v66 = *v45;
    v67 = v45[1];
    outlined init with copy of WorkoutGoal(v107, v34);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v68 = *v34;
      v69 = v34[1];
      _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
      v70 = v67;
      v71 = v93;
      Measurement.init(value:unit:)();
      v72 = v69;
      v73 = v94;
      Measurement.init(value:unit:)();
      v60 = static Measurement.== infix<A, B>(_:_:)();

      v74 = v97;
      v75 = *(v96 + 8);
      v75(v73, v97);
      v76 = v71;
      goto LABEL_20;
    }

    v65 = v34;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 3)
  {
    outlined init with copy of WorkoutGoal(v107, v43);
    v60 = swift_getEnumCaseMultiPayload() == 4;
    _s10WorkoutKit06Apple_a1_A4GoalVWOhTm_0(v43, type metadata accessor for WorkoutGoal);
    return v60 & 1;
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMR);
  v48 = *(v47 + 48);
  v49 = v102;
  v106 = v102[4];
  v106(v104, v45, v105);
  v50 = v100;
  v51 = v100[4];
  v52 = v45 + v48;
  v53 = v99;
  v54 = v101;
  v51(v99, v52, v101);
  outlined init with copy of WorkoutGoal(v107, v31);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    (v50[1])(v53, v54);
    (v49[1])(v104, v105);
    v65 = v31;
    goto LABEL_18;
  }

  v55 = *(v47 + 48);
  v56 = v105;
  v106(v98, v31, v105);
  v57 = v95;
  v51(v95, &v31[v55], v54);
  _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  v58 = v104;
  if (static Measurement.== infix<A, B>(_:_:)())
  {
    _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    v59 = v99;
    v60 = static Measurement.== infix<A, B>(_:_:)();
    v61 = v102;
  }

  else
  {
    v60 = 0;
    v61 = v102;
    v59 = v99;
  }

  v89 = v50[1];
  v89(v57, v54);
  v90 = v61[1];
  v90(v98, v56);
  v89(v59, v54);
  v90(v58, v56);
  return v60 & 1;
}

uint64_t _s10Foundation11MeasurementVySo12NSUnitLengthCGACyxGSHAAWlTm_0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10WorkoutKit06Apple_a1_A4GoalVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata completion function for Apple_Workout_WorkoutGoal()
{
  type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue?()
{
  if (!lazy cache variable for type metadata for Apple_Workout_WorkoutGoal.OneOf_GoalValue?)
  {
    type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Apple_Workout_WorkoutGoal.OneOf_GoalValue?);
    }
  }
}

uint64_t type metadata accessor for Apple_Workout_WorkoutGoal(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_WorkoutGoal.GoalType(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Apple_Workout_WorkoutGoal.GoalType(uint64_t result, int a2, int a3)
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

uint64_t getEnumTag for Apple_Workout_WorkoutGoal.GoalType(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for Apple_Workout_WorkoutGoal.GoalType(uint64_t result, int a2)
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

uint64_t type metadata completion function for Apple_Workout_WorkoutGoal.OneOf_GoalValue()
{
  result = type metadata accessor for Apple_Workout_TimeValue(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_EnergyValue(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Workout_DistanceValue(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(319);
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

void protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_WorkoutGoal.GoalType(uint64_t a1@<X8>)
{
  specialized Apple_Workout_WorkoutGoal.GoalType.init(rawValue:)();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_WorkoutGoal.GoalType(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  specialized Apple_Workout_WorkoutGoal.GoalType.init(rawValue:)();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_WorkoutGoal.GoalType()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_WorkoutGoal.GoalType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_WorkoutGoal.GoalType()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_WorkoutGoal.GoalType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_WorkoutGoal.GoalType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_WorkoutGoal.GoalType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10WorkoutKit06Apple_a1_A4GoalV0D4TypeOGMd, &_sSay10WorkoutKit06Apple_a1_A4GoalV0D4TypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_WorkoutGoal.GoalType] and conformance [A]);
  }

  return result;
}

uint64_t Apple_Workout_WorkoutGoal.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 2)
        {
          closure #2 in Apple_Workout_WorkoutGoal.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            closure #3 in Apple_Workout_WorkoutGoal.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
            break;
          case 4:
            closure #4 in Apple_Workout_WorkoutGoal.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
            break;
          case 5:
            closure #5 in Apple_Workout_WorkoutGoal.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_WorkoutGoal.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for Apple_Workout_TimeValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v50 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v52 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v45 - v28;
  v51 = v6;
  v30 = *(v6 + 56);
  v54 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v45 - v28, 1, 1, v31, v27);
  v33 = *(type metadata accessor for Apple_Workout_WorkoutGoal(0) + 20);
  v48 = a1;
  v46 = v33;
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(a1 + v33, v14, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v47 = v16;
  v34 = (*(v16 + 48))(v14, 1, v15);
  if (v34 == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v14, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    v35 = v15;
    v36 = v54;
  }

  else
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v14, v22, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v22, v19, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v19, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
      v36 = v54;
    }

    else
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v29, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      v37 = v19;
      v38 = v49;
      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v37, v49, type metadata accessor for Apple_Workout_TimeValue);
      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v38, v29, type metadata accessor for Apple_Workout_TimeValue);
      v36 = v54;
      v32(v29, 0, 1, v54);
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v29, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  }

  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v29, v39, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v29, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v39, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  }

  else
  {
    v42 = v50;
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v39, v50, type metadata accessor for Apple_Workout_TimeValue);
    if (v34 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v29, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    v43 = v48;
    v44 = v46;
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v48 + v46, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v42, v43 + v44, type metadata accessor for Apple_Workout_TimeValue);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v35);
  }
}

uint64_t closure #3 in Apple_Workout_WorkoutGoal.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for Apple_Workout_EnergyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A12_EnergyValueVSgMd, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v52 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v45 - v28;
  v51 = v6;
  v30 = *(v6 + 56);
  v54 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v45 - v28, 1, 1, v31, v27);
  v33 = *(type metadata accessor for Apple_Workout_WorkoutGoal(0) + 20);
  v48 = a1;
  v46 = v33;
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(a1 + v33, v14, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v47 = v16;
  v34 = (*(v16 + 48))(v14, 1, v15);
  if (v34 == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v14, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    v35 = v15;
  }

  else
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v14, v22, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v22, v19, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v29, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMd, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMR);
      v36 = v19;
      v37 = v50;
      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v36, v50, type metadata accessor for Apple_Workout_EnergyValue);
      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v37, v29, type metadata accessor for Apple_Workout_EnergyValue);
      v38 = v54;
      v32(v29, 0, 1, v54);
      goto LABEL_7;
    }

    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v19, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
  }

  v38 = v54;
LABEL_7:
  v39 = v52;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type Apple_Workout_EnergyValue and conformance Apple_Workout_EnergyValue, type metadata accessor for Apple_Workout_EnergyValue);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v29, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMd, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMR);
  }

  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v29, v39, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMd, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMR);
  if ((*(v51 + 48))(v39, 1, v38) == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v29, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMd, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMR);
    return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v39, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMd, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMR);
  }

  else
  {
    v42 = v49;
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v39, v49, type metadata accessor for Apple_Workout_EnergyValue);
    if (v34 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v29, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMd, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMR);
    v43 = v48;
    v44 = v46;
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v48 + v46, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v42, v43 + v44, type metadata accessor for Apple_Workout_EnergyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v35);
  }
}

uint64_t closure #4 in Apple_Workout_WorkoutGoal.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v52 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v45 - v28;
  v51 = v6;
  v30 = *(v6 + 56);
  v54 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v45 - v28, 1, 1, v31, v27);
  v33 = *(type metadata accessor for Apple_Workout_WorkoutGoal(0) + 20);
  v48 = a1;
  v46 = v33;
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(a1 + v33, v14, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v47 = v16;
  v34 = (*(v16 + 48))(v14, 1, v15);
  if (v34 == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v14, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    v35 = v15;
  }

  else
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v14, v22, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v22, v19, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v29, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      v36 = v19;
      v37 = v50;
      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v36, v50, type metadata accessor for Apple_Workout_DistanceValue);
      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v37, v29, type metadata accessor for Apple_Workout_DistanceValue);
      v38 = v54;
      v32(v29, 0, 1, v54);
      goto LABEL_7;
    }

    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v19, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
  }

  v38 = v54;
LABEL_7:
  v39 = v52;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v29, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  }

  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v29, v39, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  if ((*(v51 + 48))(v39, 1, v38) == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v29, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v39, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  }

  else
  {
    v42 = v49;
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v39, v49, type metadata accessor for Apple_Workout_DistanceValue);
    if (v34 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v29, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    v43 = v48;
    v44 = v46;
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v48 + v46, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v42, v43 + v44, type metadata accessor for Apple_Workout_DistanceValue);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v35);
  }
}

uint64_t closure #5 in Apple_Workout_WorkoutGoal.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMd, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v52 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v45 - v28;
  v51 = v6;
  v30 = *(v6 + 56);
  v54 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v45 - v28, 1, 1, v31, v27);
  v33 = *(type metadata accessor for Apple_Workout_WorkoutGoal(0) + 20);
  v48 = a1;
  v46 = v33;
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(a1 + v33, v14, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v47 = v16;
  v34 = (*(v16 + 48))(v14, 1, v15);
  if (v34 == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v14, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    v35 = v15;
  }

  else
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v14, v22, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v22, v19, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v29, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMd, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMR);
      v36 = v19;
      v37 = v50;
      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v36, v50, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v37, v29, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
      v38 = v54;
      v32(v29, 0, 1, v54);
      goto LABEL_7;
    }

    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v19, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
  }

  v38 = v54;
LABEL_7:
  v39 = v52;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v29, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMd, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMR);
  }

  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v29, v39, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMd, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMR);
  if ((*(v51 + 48))(v39, 1, v38) == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v29, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMd, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMR);
    return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v39, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMd, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMR);
  }

  else
  {
    v42 = v49;
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v39, v49, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
    if (v34 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v29, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMd, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMR);
    v43 = v48;
    v44 = v46;
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v48 + v46, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v42, v43 + v44, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v35);
  }
}

uint64_t Apple_Workout_WorkoutGoal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - v12;
  if (*v3)
  {
    v14 = *(v3 + 8);
    v21 = *v3;
    v22 = v14;
    lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  v16 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v6 + *(v16 + 20), v13, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v17 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  if ((*(*(v17 - 8) + 48))(v13, 1, v17) == 1)
  {
    goto LABEL_13;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v19 = v5;
    if (EnumCaseMultiPayload == 2)
    {
      closure #3 in Apple_Workout_WorkoutGoal.traverse<A>(visitor:)(v6, a1, a2, a3);
    }

    else
    {
      closure #4 in Apple_Workout_WorkoutGoal.traverse<A>(visitor:)(v6, a1, a2, a3);
    }
  }

  else
  {
    v19 = v5;
    if (EnumCaseMultiPayload)
    {
      closure #2 in Apple_Workout_WorkoutGoal.traverse<A>(visitor:)(v6, a1, a2, a3);
    }

    else
    {
      closure #1 in Apple_Workout_WorkoutGoal.traverse<A>(visitor:)(v6, a1, a2, a3);
    }
  }

  result = outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v13, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
  if (!v19)
  {
LABEL_13:
    v20 = v6 + *(v16 + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_WorkoutGoal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_TimeValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(a1 + *(v13 + 20), v8, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v14 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v8, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v8, v12, type metadata accessor for Apple_Workout_TimeValue);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v12, type metadata accessor for Apple_Workout_TimeValue);
  }

  result = outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v8, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_WorkoutGoal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_EnergyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(a1 + *(v13 + 20), v8, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v14 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v8, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v8, v12, type metadata accessor for Apple_Workout_EnergyValue);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type Apple_Workout_EnergyValue and conformance Apple_Workout_EnergyValue, type metadata accessor for Apple_Workout_EnergyValue);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v12, type metadata accessor for Apple_Workout_EnergyValue);
  }

  result = outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v8, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
  __break(1u);
  return result;
}

uint64_t closure #3 in Apple_Workout_WorkoutGoal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(a1 + *(v13 + 20), v8, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v14 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v8, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v8, v12, type metadata accessor for Apple_Workout_DistanceValue);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v12, type metadata accessor for Apple_Workout_DistanceValue);
  }

  result = outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v8, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
  __break(1u);
  return result;
}

uint64_t closure #4 in Apple_Workout_WorkoutGoal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(a1 + *(v13 + 20), v8, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v14 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v8, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v8, v12, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v12, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
  }

  result = outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v8, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_WorkoutGoal@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_WorkoutGoal@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_WorkoutGoal(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_WorkoutGoal(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_WorkoutGoal;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_WorkoutGoal(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_WorkoutGoal(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_WorkoutGoal()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_WorkoutGoal()
{
  lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_WorkoutGoal()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_WorkoutGoal@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t specialized static Apple_Workout_WorkoutGoal.OneOf_GoalValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v48 = a2;
  v2 = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_EnergyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_TimeValue(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v45 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v45 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v45 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueO_AEtMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueO_AEtMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v45 - v32;
  v35 = *(v34 + 56);
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v47, &v45 - v32);
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v48, &v33[v35]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v33, v23);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v37 = type metadata accessor for Apple_Workout_DistanceValue;
        v38 = v23;
        goto LABEL_15;
      }

      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(&v33[v35], v8, type metadata accessor for Apple_Workout_DistanceValue);
      v39 = static Apple_Workout_DistanceValue.== infix(_:_:)(v23, v8);
      v40 = type metadata accessor for Apple_Workout_DistanceValue;
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v8, type metadata accessor for Apple_Workout_DistanceValue);
      v41 = v23;
    }

    else
    {
      outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v33, v20);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v37 = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue;
        v38 = v20;
        goto LABEL_15;
      }

      v43 = v46;
      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(&v33[v35], v46, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
      v39 = specialized static Apple_Workout_PoolSwimDistanceWithTimeValue.== infix(_:_:)(v20, v43);
      v40 = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue;
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v43, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
      v41 = v20;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v33, v26);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v37 = type metadata accessor for Apple_Workout_EnergyValue;
      v38 = v26;
      goto LABEL_15;
    }

    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(&v33[v35], v12, type metadata accessor for Apple_Workout_EnergyValue);
    v39 = static Apple_Workout_EnergyValue.== infix(_:_:)(v26, v12);
    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v12, type metadata accessor for Apple_Workout_EnergyValue);
    v41 = v26;
    v42 = type metadata accessor for Apple_Workout_EnergyValue;
LABEL_18:
    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v41, v42);
    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v33, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    return v39 & 1;
  }

  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v33, v29);
  if (!swift_getEnumCaseMultiPayload())
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(&v33[v35], v16, type metadata accessor for Apple_Workout_TimeValue);
    v39 = static Apple_Workout_TimeValue.== infix(_:_:)(v29, v16);
    v40 = type metadata accessor for Apple_Workout_TimeValue;
    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v16, type metadata accessor for Apple_Workout_TimeValue);
    v41 = v29;
LABEL_17:
    v42 = v40;
    goto LABEL_18;
  }

  v37 = type metadata accessor for Apple_Workout_TimeValue;
  v38 = v29;
LABEL_15:
  outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v38, v37);
  _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v33, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueO_AEtMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueO_AEtMR);
  v39 = 0;
  return v39 & 1;
}

uint64_t specialized static Apple_Workout_WorkoutGoal.== infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSg_AFtMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v28 - v15;
  v17 = *a1;
  v18 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v18 > 2)
    {
      if (v18 == 3)
      {
        if (v17 != 3)
        {
          goto LABEL_18;
        }
      }

      else if (v18 == 4)
      {
        if (v17 != 4)
        {
          goto LABEL_18;
        }
      }

      else if (v17 != 5)
      {
        goto LABEL_18;
      }
    }

    else if (v18)
    {
      if (v18 == 1)
      {
        if (v17 != 1)
        {
          goto LABEL_18;
        }
      }

      else if (v17 != 2)
      {
        goto LABEL_18;
      }
    }

    else if (v17)
    {
      goto LABEL_18;
    }
  }

  else if (v17 != v18)
  {
    goto LABEL_18;
  }

  v19 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v20 = a1;
  v28[0] = v19;
  v28[1] = a1;
  v21 = *(v19 + 20);
  v22 = *(v13 + 48);
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v20 + v21, v16, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(a2 + v21, &v16[v22], &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v22], 1, v4) == 1)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v16, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
LABEL_21:
      v27 = *(v28[0] + 24);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v24 & 1;
    }

    goto LABEL_17;
  }

  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v16, v12, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  if (v23(&v16[v22], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v12, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
LABEL_17:
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v16, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSg_AFtMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSg_AFtMR);
    goto LABEL_18;
  }

  _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(&v16[v22], v8, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
  v26 = specialized static Apple_Workout_WorkoutGoal.OneOf_GoalValue.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v8, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
  outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v12, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
  _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v16, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  if (v26)
  {
    goto LABEL_21;
  }

LABEL_18:
  v24 = 0;
  return v24 & 1;
}

uint64_t outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static PacerWorkout.supportsActivity(_:)(uint64_t a1)
{
  if (qword_284E21CD8 == a1 || unk_284E21CE0 == a1 || qword_284E21CE8 == a1)
  {
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    v4 = swift_allocError();
    *v5 = a1;
    v6 = v5 + 1;
  }

  else
  {
    if ((a1 - 13) <= 0x3A && ((1 << (a1 - 13)) & 0x400000001000001) != 0)
    {
      return 1;
    }

    lazy protocol witness table accessor for type PacerValidationError and conformance PacerValidationError();
    v4 = swift_allocError();
    *v18 = a1;
    v18[1] = 0;
    v6 = v18 + 2;
  }

  *v6 = 0;
  swift_willThrow();
  if (one-time initialization token for validations != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static WorkoutKitLog.validations);
  v8 = v4;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v13 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_23B5E7000, v9, v10, "Not supported due to %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23EEA1330](v12, -1, -1);
    MEMORY[0x23EEA1330](v11, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t PacerWorkout.activity.setter(uint64_t result)
{
  *v1 = result;
  if (qword_284E21CD8 == result || unk_284E21CE0 == result || qword_284E21CE8 == result)
  {
    v10 = result;
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    v5 = swift_allocError();
    v9 = 1;
    v7 = v8;
    goto LABEL_12;
  }

  if ((result - 13) > 0x3A || ((1 << (result - 13)) & 0x400000001000001) == 0)
  {
    v4 = result;
    lazy protocol witness table accessor for type PacerValidationError and conformance PacerValidationError();
    v5 = swift_allocError();
    v7 = v6;
    *v6 = v4;
    v8 = v6 + 1;
    v9 = 2;
    v10 = 0;
LABEL_12:
    *v8 = v10;
    LOBYTE(v7[v9]) = 0;
    swift_willThrow();
    v11 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t PacerWorkout.activity.modify(uint64_t result, char a2)
{
  if (a2)
  {
    return result;
  }

  v2 = **(result + 8);
  if (qword_284E21CD8 == v2 || unk_284E21CE0 == v2 || qword_284E21CE8 == v2)
  {
    v12 = result;
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    v7 = swift_allocError();
    v8 = 1;
    v9 = v6;
LABEL_16:
    *v6 = v2;
    LOBYTE(v9[v8]) = 0;
    swift_willThrow();
    *v12 = v7;
    v11 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if ((v2 - 13) > 0x3A || ((1 << (v2 - 13)) & 0x400000001000001) == 0)
  {
    v12 = result;
    lazy protocol witness table accessor for type PacerValidationError and conformance PacerValidationError();
    v7 = swift_allocError();
    v9 = v10;
    *v10 = v2;
    v6 = v10 + 1;
    v8 = 2;
    v2 = 0;
    goto LABEL_16;
  }

  return result;
}

uint64_t PacerWorkout.distance.getter()
{
  v1 = type metadata accessor for WorkoutGoal();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = (&v13 - v6);
  v8 = *(type metadata accessor for PacerWorkout() + 24);
  outlined init with copy of WorkoutGoal(v0 + v8, v7);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of WorkoutGoal(v7, type metadata accessor for WorkoutGoal);
    v13 = 0;
    v14 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v13 = 0xD000000000000024;
    v14 = 0x800000023B67FD00;
    outlined init with copy of WorkoutGoal(v0 + v8, v5);
    v12 = String.init<A>(describing:)();
    MEMORY[0x23EEA0A50](v12);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = *v7;
    v10 = v7[1];
    _sSo12NSUnitLengthCMaTm_0(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    return Measurement.init(value:unit:)();
  }

  return result;
}