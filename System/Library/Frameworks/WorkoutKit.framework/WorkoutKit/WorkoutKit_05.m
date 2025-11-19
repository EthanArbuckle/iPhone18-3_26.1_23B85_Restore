uint64_t type metadata accessor for Apple_Workout_WorkoutPlan(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for [String](uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Apple_Workout_WorkoutPlan.Version(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Apple_Workout_WorkoutPlan.Version(uint64_t result, int a2, int a3)
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

uint64_t getEnumTag for Apple_Workout_WorkoutPlan.Version(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for Apple_Workout_WorkoutPlan.Version(uint64_t result, int a2)
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

uint64_t type metadata completion function for Apple_Workout_WorkoutPlan.OneOf_Content()
{
  result = type metadata accessor for Apple_Workout_GoalWorkoutComposition();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_CustomWorkoutComposition(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Workout_PacerWorkoutComposition();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition();
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

unint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_WorkoutPlan.Version@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance Apple_Workout_WorkoutPlan.Version()
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

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_WorkoutPlan.Version@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Apple_Workout_WorkoutPlan.Version(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_WorkoutPlan.Version()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_WorkoutPlan.Version(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_WorkoutPlan.Version()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_WorkoutPlan.Version(uint64_t *a1, uint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_WorkoutPlan.Version] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_WorkoutPlan.Version] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_WorkoutPlan.Version] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10WorkoutKit06Apple_a1_A4PlanV7VersionOGMd, &_sSay10WorkoutKit06Apple_a1_A4PlanV7VersionOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_WorkoutPlan.Version] and conformance [A]);
  }

  return result;
}

uint64_t Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 99)
    {
      if (result <= 10)
      {
        if (result == 9)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }

        else if (result == 10)
        {
          closure #2 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        }
      }

      else
      {
        switch(result)
        {
          case 11:
            closure #3 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
            break;
          case 13:
            closure #4 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
            break;
          case 14:
            closure #5 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
            break;
        }
      }
    }

    else if (result > 999)
    {
      switch(result)
      {
        case 1000:
          closure #9 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)();
          break;
        case 1001:
          v14 = *(type metadata accessor for Apple_Workout_WorkoutPlan(0) + 32);
LABEL_26:
          v4 = 0;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 1002:
          v12 = *(type metadata accessor for Apple_Workout_WorkoutPlan(0) + 36);
          goto LABEL_26;
      }
    }

    else
    {
      switch(result)
      {
        case 'd':
          closure #6 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)();
          break;
        case 'e':
          v13 = *(type metadata accessor for Apple_Workout_WorkoutPlan(0) + 48);
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 'f':
          v11 = *(type metadata accessor for Apple_Workout_WorkoutPlan(0) + 24);
          dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
          break;
      }
    }
  }
}

uint64_t closure #2 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for Apple_Workout_GoalWorkoutComposition();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v50 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMd, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMR);
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
  v33 = *(type metadata accessor for Apple_Workout_WorkoutPlan(0) + 20);
  v48 = a1;
  v46 = v33;
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(a1 + v33, v14, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v47 = v16;
  v34 = (*(v16 + 48))(v14, 1, v15);
  if (v34 == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v14, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    v35 = v15;
    v36 = v54;
  }

  else
  {
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v14, v22, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v22, v19, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v19, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
      v36 = v54;
    }

    else
    {
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v29, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMd, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMR);
      v37 = v19;
      v38 = v49;
      outlined init with take of Apple_Workout_GoalWorkoutComposition(v37, v49, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
      outlined init with take of Apple_Workout_GoalWorkoutComposition(v38, v29, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
      v36 = v54;
      v32(v29, 0, 1, v54);
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v29, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMd, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMR);
  }

  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(v29, v39, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMd, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v29, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMd, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMR);
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v39, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMd, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMR);
  }

  else
  {
    v42 = v50;
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v39, v50, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
    if (v34 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v29, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMd, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMR);
    v43 = v48;
    v44 = v46;
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v48 + v46, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v42, v43 + v44, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v35);
  }
}

uint64_t closure #3 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for Apple_Workout_CustomWorkoutComposition(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMd, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMR);
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
  v33 = *(type metadata accessor for Apple_Workout_WorkoutPlan(0) + 20);
  v48 = a1;
  v46 = v33;
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(a1 + v33, v14, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v47 = v16;
  v34 = (*(v16 + 48))(v14, 1, v15);
  if (v34 == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v14, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    v35 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v14, v22, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v22, v19, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v29, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMd, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMR);
      v36 = v19;
      v37 = v50;
      outlined init with take of Apple_Workout_GoalWorkoutComposition(v36, v50, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
      outlined init with take of Apple_Workout_GoalWorkoutComposition(v37, v29, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
      v38 = v54;
      v32(v29, 0, 1, v54);
      goto LABEL_7;
    }

    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v19, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  }

  v38 = v54;
LABEL_7:
  v39 = v52;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_CustomWorkoutComposition and conformance Apple_Workout_CustomWorkoutComposition, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v29, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMd, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMR);
  }

  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(v29, v39, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMd, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMR);
  if ((*(v51 + 48))(v39, 1, v38) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v29, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMd, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMR);
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v39, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMd, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v39, v49, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
    if (v34 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v29, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMd, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMR);
    v43 = v48;
    v44 = v46;
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v48 + v46, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v42, v43 + v44, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v35);
  }
}

uint64_t closure #4 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for Apple_Workout_PacerWorkoutComposition();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMd, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMR);
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
  v33 = *(type metadata accessor for Apple_Workout_WorkoutPlan(0) + 20);
  v48 = a1;
  v46 = v33;
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(a1 + v33, v14, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v47 = v16;
  v34 = (*(v16 + 48))(v14, 1, v15);
  if (v34 == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v14, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    v35 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v14, v22, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v22, v19, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v29, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMd, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMR);
      v36 = v19;
      v37 = v50;
      outlined init with take of Apple_Workout_GoalWorkoutComposition(v36, v50, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
      outlined init with take of Apple_Workout_GoalWorkoutComposition(v37, v29, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
      v38 = v54;
      v32(v29, 0, 1, v54);
      goto LABEL_7;
    }

    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v19, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  }

  v38 = v54;
LABEL_7:
  v39 = v52;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v29, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMd, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMR);
  }

  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(v29, v39, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMd, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMR);
  if ((*(v51 + 48))(v39, 1, v38) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v29, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMd, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMR);
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v39, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMd, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v39, v49, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
    if (v34 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v29, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMd, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMR);
    v43 = v48;
    v44 = v46;
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v48 + v46, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v42, v43 + v44, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v35);
  }
}

uint64_t closure #5 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMd, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMR);
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
  v33 = *(type metadata accessor for Apple_Workout_WorkoutPlan(0) + 20);
  v48 = a1;
  v46 = v33;
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(a1 + v33, v14, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v47 = v16;
  v34 = (*(v16 + 48))(v14, 1, v15);
  if (v34 == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v14, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    v35 = v15;
  }

  else
  {
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v14, v22, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v22, v19, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v29, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMd, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMR);
      v36 = v19;
      v37 = v50;
      outlined init with take of Apple_Workout_GoalWorkoutComposition(v36, v50, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
      outlined init with take of Apple_Workout_GoalWorkoutComposition(v37, v29, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
      v38 = v54;
      v32(v29, 0, 1, v54);
      goto LABEL_7;
    }

    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v19, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  }

  v38 = v54;
LABEL_7:
  v39 = v52;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v29, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMd, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMR);
  }

  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(v29, v39, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMd, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMR);
  if ((*(v51 + 48))(v39, 1, v38) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v29, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMd, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMR);
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v39, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMd, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v39, v49, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
    if (v34 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v29, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMd, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMR);
    v43 = v48;
    v44 = v46;
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v48 + v46, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v42, v43 + v44, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v35);
  }
}

uint64_t closure #6 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_WorkoutPlan(0) + 44);
  type metadata accessor for Apple_Workout_WorkoutRoute(0);
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute, type metadata accessor for Apple_Workout_WorkoutRoute);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #9 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_WorkoutPlan(0) + 28);
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = *v3;
  v14 = v3[1];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  v17 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(v3 + v17[5], v12, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v18 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  if ((*(*(v18 - 8) + 48))(v12, 1, v18) == 1)
  {
    v19 = v5;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      v19 = v5;
      if (EnumCaseMultiPayload == 2)
      {
        closure #3 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      else
      {
        closure #4 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(v3, a1, a2, a3);
      }
    }

    else
    {
      v19 = v5;
      if (EnumCaseMultiPayload)
      {
        closure #2 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      else
      {
        closure #1 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(v3, a1, a2, a3);
      }
    }

    result = outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v12, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
    if (v19)
    {
      return result;
    }
  }

  result = closure #5 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v19)
  {
    closure #6 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(v3);
    if (*(*(v3 + v17[6]) + 16))
    {
      dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)();
    }

    v21 = v3 + v17[7];
    v22 = *v21;
    LOBYTE(v21) = v21[8];
    v24 = v22;
    v25 = v21;
    lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (*(v3 + v17[8]))
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if (*(v3 + v17[9]))
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    v23 = v3 + v17[10];
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_GoalWorkoutComposition();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(a1 + *(v13 + 20), v8, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v14 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v8, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v8, v12, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v12, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
  }

  result = outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v8, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_CustomWorkoutComposition(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(a1 + *(v13 + 20), v8, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v14 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v8, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v8, v12, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_CustomWorkoutComposition and conformance Apple_Workout_CustomWorkoutComposition, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v12, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
  }

  result = outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v8, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  __break(1u);
  return result;
}

uint64_t closure #3 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_PacerWorkoutComposition();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(a1 + *(v13 + 20), v8, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v14 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v8, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v8, v12, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v12, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
  }

  result = outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v8, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  __break(1u);
  return result;
}

uint64_t closure #4 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(a1 + *(v13 + 20), v8, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v14 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v8, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v8, v12, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v12, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
  }

  result = outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v8, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  __break(1u);
  return result;
}

uint64_t closure #5 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_WorkoutRoute(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(a1 + *(v14 + 44), v8, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v8, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
  }

  outlined init with take of Apple_Workout_GoalWorkoutComposition(v8, v13, type metadata accessor for Apple_Workout_WorkoutRoute);
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute, type metadata accessor for Apple_Workout_WorkoutRoute);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v13, type metadata accessor for Apple_Workout_WorkoutRoute);
}

uint64_t closure #6 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v3 = (a1 + *(result + 48));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_WorkoutPlan@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = a1[5];
  v5 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  *&a2[a1[6]] = MEMORY[0x277D84F90];
  v7 = &a2[v6];
  *v7 = 0;
  v7[8] = 1;
  v8 = a1[9];
  *&a2[a1[8]] = 0;
  *&a2[v8] = 0;
  v9 = &a2[a1[10]];
  UnknownStorage.init()();
  v10 = a1[11];
  v11 = type metadata accessor for Apple_Workout_WorkoutRoute(0);
  result = (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  v13 = &a2[a1[12]];
  *v13 = 0;
  *(v13 + 1) = 0;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_WorkoutPlan@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_WorkoutPlan(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_WorkoutPlan(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_WorkoutPlan;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_WorkoutPlan(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan, type metadata accessor for Apple_Workout_WorkoutPlan);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_WorkoutPlan(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan, type metadata accessor for Apple_Workout_WorkoutPlan);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_WorkoutPlan()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_WorkoutPlan()
{
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan, type metadata accessor for Apple_Workout_WorkoutPlan);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_WorkoutPlan()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_WorkoutPlan@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_GoalWorkoutComposition(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t specialized static Apple_Workout_WorkoutPlan.OneOf_Content.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v53 = a2;
  v2 = type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Workout_PacerWorkoutComposition();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Apple_Workout_CustomWorkoutComposition(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_GoalWorkoutComposition();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v50 - v21);
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = (&v50 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentO_AEtMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentO_AEtMR);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v50 - v31;
  v34 = *(v33 + 56);
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content(v52, &v50 - v31);
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content(v53, &v32[v34]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content(v32, v22);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v36 = type metadata accessor for Apple_Workout_PacerWorkoutComposition;
        v37 = v22;
        goto LABEL_18;
      }

      outlined init with take of Apple_Workout_GoalWorkoutComposition(&v32[v34], v8, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
      v38 = specialized static Apple_Workout_PacerWorkoutComposition.== infix(_:_:)(v22, v8);
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v8, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
      v39 = v22;
      v40 = type metadata accessor for Apple_Workout_PacerWorkoutComposition;
LABEL_22:
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v39, v40);
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v32, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
      return v38 & 1;
    }

    outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content(v32, v19);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v36 = type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition;
      v37 = v19;
      goto LABEL_18;
    }

    v47 = v50;
    outlined init with take of Apple_Workout_GoalWorkoutComposition(&v32[v34], v50, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
    v38 = static Apple_Workout_SwimBikeRunWorkoutComposition.== infix(_:_:)(v19, v47);
    v48 = type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition;
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v47, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
    v39 = v19;
LABEL_21:
    v40 = v48;
    goto LABEL_22;
  }

  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content(v32, v28);
    if (swift_getEnumCaseMultiPayload())
    {
      v36 = type metadata accessor for Apple_Workout_GoalWorkoutComposition;
      v37 = v28;
LABEL_18:
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v37, v36);
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v32, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentO_AEtMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentO_AEtMR);
LABEL_19:
      v38 = 0;
      return v38 & 1;
    }

    outlined init with take of Apple_Workout_GoalWorkoutComposition(&v32[v34], v15, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
    v38 = specialized static Apple_Workout_GoalWorkoutComposition.== infix(_:_:)(v28, v15);
    v48 = type metadata accessor for Apple_Workout_GoalWorkoutComposition;
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v15, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
    v39 = v28;
    goto LABEL_21;
  }

  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content(v32, v25);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v36 = type metadata accessor for Apple_Workout_CustomWorkoutComposition;
    v37 = v25;
    goto LABEL_18;
  }

  v41 = v51;
  outlined init with take of Apple_Workout_GoalWorkoutComposition(&v32[v34], v51, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
  v42 = *(v9 + 20);
  v43 = *&v25[v42];
  v44 = *(v41 + v42);
  if (v43 != v44)
  {
    v45 = *&v25[v42];

    v46 = closure #1 in static Apple_Workout_CustomWorkoutComposition.== infix(_:_:)(v43, v44);

    if (!v46)
    {
      goto LABEL_24;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
LABEL_24:
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v41, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v25, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v32, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
    goto LABEL_19;
  }

  outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v41, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
  outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v25, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
  outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v32, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  v38 = 1;
  return v38 & 1;
}

uint64_t specialized static Apple_Workout_WorkoutPlan.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutRoute(0);
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = (&v64 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5RouteVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A5RouteVSg_ADtMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v71 = &v64 - v13;
  v14 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v64 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSg_AFtMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSg_AFtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v64 - v25;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  v64 = v7;
  v65 = v11;
  v27 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v28 = *(v27 + 20);
  v29 = a1;
  v30 = *(v23 + 48);
  v66 = v27;
  v67 = v29;
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(v29 + v28, v26, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v31 = a2 + v28;
  v32 = a2;
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(v31, &v26[v30], &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v33 = *(v15 + 48);
  if (v33(v26, 1, v14) == 1)
  {
    if (v33(&v26[v30], 1, v14) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v26, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
      goto LABEL_11;
    }

LABEL_9:
    v34 = &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSg_AFtMd;
    v35 = &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSg_AFtMR;
    v36 = v26;
LABEL_17:
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v36, v34, v35);
    goto LABEL_18;
  }

  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(v26, v22, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  if (v33(&v26[v30], 1, v14) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v22, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
    goto LABEL_9;
  }

  outlined init with take of Apple_Workout_GoalWorkoutComposition(&v26[v30], v18, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  v37 = specialized static Apple_Workout_WorkoutPlan.OneOf_Content.== infix(_:_:)(v22, v18);
  outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v18, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v22, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v26, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  if ((v37 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  v38 = v66;
  v39 = v66[11];
  v40 = *(v65 + 48);
  v41 = v67;
  v42 = v71;
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(v67 + v39, v71, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(v32 + v39, v42 + v40, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
  v43 = v70;
  v44 = *(v69 + 48);
  if (v44(v42, 1, v70) != 1)
  {
    v45 = v68;
    outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(v42, v68, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
    if (v44(v42 + v40, 1, v43) != 1)
    {
      v48 = v42 + v40;
      v49 = v64;
      outlined init with take of Apple_Workout_GoalWorkoutComposition(v48, v64, type metadata accessor for Apple_Workout_WorkoutRoute);
      v50 = specialized static Apple_Workout_WorkoutRoute.== infix(_:_:)(v45, v49);
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v49, type metadata accessor for Apple_Workout_WorkoutRoute);
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v45, type metadata accessor for Apple_Workout_WorkoutRoute);
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v42, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
      if ((v50 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v45, type metadata accessor for Apple_Workout_WorkoutRoute);
    goto LABEL_16;
  }

  if (v44(v42 + v40, 1, v43) != 1)
  {
LABEL_16:
    v34 = &_s10WorkoutKit06Apple_a1_A5RouteVSg_ADtMd;
    v35 = &_s10WorkoutKit06Apple_a1_A5RouteVSg_ADtMR;
    v36 = v42;
    goto LABEL_17;
  }

  outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v42, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
LABEL_21:
  v51 = v38[12];
  v52 = (v41 + v51);
  v53 = *(v41 + v51 + 8);
  v54 = (v32 + v51);
  v55 = v54[1];
  if (v53)
  {
    if (!v55 || (*v52 != *v54 || v53 != v55) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v55)
  {
    goto LABEL_18;
  }

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*(v41 + v38[6]), *(v32 + v38[6])))
  {
    v56 = v38[7];
    v57 = *(v41 + v56);
    v58 = *(v41 + v56 + 8);
    v59 = v32 + v56;
    v60 = *(v32 + v56);
    v61 = v59[8];
    if (v58)
    {
      v62 = v57 != 0;
    }

    else
    {
      v62 = v57;
    }

    if (v61 == 1)
    {
      if (v60)
      {
        if (v62 != 1)
        {
          goto LABEL_18;
        }
      }

      else if (v62)
      {
        goto LABEL_18;
      }
    }

    else if (v62 != v60)
    {
      goto LABEL_18;
    }

    if (*(v41 + v38[8]) == *(v32 + v38[8]) && *(v41 + v38[9]) == *(v32 + v38[9]))
    {
      v63 = v38[10];
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v46 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v46 & 1;
    }
  }

LABEL_18:
  v46 = 0;
  return v46 & 1;
}

uint64_t outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static SingleGoalWorkout.supportsActivity(_:)(uint64_t a1)
{
  v2 = qword_284E21CD8 == a1 || unk_284E21CE0 == a1 || qword_284E21CE8 == a1;
  v3 = !v2;
  if (v2)
  {
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    v5 = swift_allocError();
    *v6 = a1;
    *(v6 + 8) = 0;
    swift_willThrow();
    if (one-time initialization token for validations != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WorkoutKitLog.validations);
    v8 = v5;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      v13 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v14 = String.init<A>(describing:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_23B5E7000, v9, v10, "Not supported due to %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x23EEA1330](v12, -1, -1);
      MEMORY[0x23EEA1330](v11, -1, -1);
    }

    else
    {
    }
  }

  return v3;
}

uint64_t static SingleGoalWorkout.supportsGoal(_:activity:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_284E21CD8 == a2 || unk_284E21CE0 == a2 || qword_284E21CE8 == a2)
  {
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    v6 = swift_allocError();
    *v7 = a2;
    *(v7 + 8) = 0;
    swift_willThrow();
    if (one-time initialization token for validations != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WorkoutKitLog.validations);
    v9 = v6;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v14 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v15 = String.init<A>(describing:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_23B5E7000, v10, v11, "Not supported due to %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x23EEA1330](v13, -1, -1);
      MEMORY[0x23EEA1330](v12, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06SinglecA0V_Tt2g5(a2, a3, 0);
    return 1;
  }
}

uint64_t key path setter for SingleGoalWorkout.activity : SingleGoalWorkout(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a2 = *a1;
  result = specialized Sequence<>.contains(_:)(v2, &outlined read-only object #0 of one-time initialization function for unsupportedActivityTypes);
  if (result)
  {
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    v4 = swift_allocError();
    *v5 = v2;
    *(v5 + 8) = 0;
    swift_willThrow();
    v6 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t SingleGoalWorkout.activity.setter(uint64_t result)
{
  *v1 = result;
  if (qword_284E21CD8 == result || unk_284E21CE0 == result || qword_284E21CE8 == result)
  {
    v4 = result;
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    v5 = swift_allocError();
    *v6 = v4;
    *(v6 + 8) = 0;
    swift_willThrow();
    v7 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t SingleGoalWorkout.activity.modify(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = **(result + 8);
    if (qword_284E21CD8 == v2 || unk_284E21CE0 == v2 || qword_284E21CE8 == v2)
    {
      v5 = result;
      v6 = **(result + 8);
      lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
      v7 = swift_allocError();
      *v8 = v6;
      *(v8 + 8) = 0;
      swift_willThrow();
      *v5 = v7;
      v9 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      String.init<A>(describing:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t key path getter for SingleGoalWorkout.goal : SingleGoalWorkout@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SingleGoalWorkout();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WorkoutGoal(a1, v8, type metadata accessor for SingleGoalWorkout);
  return _s10WorkoutKit0A4GoalOWObTm_1(&v8[*(v5 + 36)], a2, type metadata accessor for WorkoutGoal);
}

uint64_t key path setter for SingleGoalWorkout.goal : SingleGoalWorkout(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for WorkoutGoal();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WorkoutGoal(a1, v7, type metadata accessor for WorkoutGoal);
  v8 = type metadata accessor for SingleGoalWorkout();
  outlined assign with copy of WorkoutGoal(v7, a2 + *(v8 + 28));
  _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06SinglecA0V_Tt2g5(*a2, a2[1], a2[2]);
  return _s10WorkoutKit0A4GoalOWOhTm_0(v7, type metadata accessor for WorkoutGoal);
}

uint64_t SingleGoalWorkout.goal.setter(uint64_t a1)
{
  v3 = type metadata accessor for SingleGoalWorkout();
  outlined assign with copy of WorkoutGoal(a1, v1 + *(v3 + 28));
  _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06SinglecA0V_Tt2g5(*v1, v1[1], v1[2]);
  return _s10WorkoutKit0A4GoalOWOhTm_0(a1, type metadata accessor for WorkoutGoal);
}

void (*SingleGoalWorkout.goal.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = *(type metadata accessor for SingleGoalWorkout() + 28);
  return SingleGoalWorkout.goal.modify;
}

void SingleGoalWorkout.goal.modify(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *(a1 + 8);
    v3 = v2 + *(a1 + 16);
    _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06SinglecA0V_Tt2g5(*v2, v2[1], v2[2]);
  }
}

void SingleGoalWorkout.init(activity:location:swimmingLocation:goal:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v23 - v12;
  v14 = type metadata accessor for WorkoutGoal();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  [v19 setActivityType_];
  [v19 setLocationType_];
  [v19 setSwimmingLocationType_];
  outlined init with copy of WorkoutGoal(a4, v18, type metadata accessor for WorkoutGoal);
  outlined init with copy of WorkoutGoal(v18, v13, type metadata accessor for WorkoutGoal);
  (*(v15 + 56))(v13, 0, 1, v14);
  v20 = v19;
  specialized static SingleGoalWorkout.validate(configuration:goal:)(v20, v13);
  outlined destroy of WorkoutGoal?(v13, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  *a5 = [v20 activityType];
  a5[1] = [v20 locationType];
  v21 = [v20 swimmingLocationType];

  a5[2] = v21;
  v22 = type metadata accessor for SingleGoalWorkout();
  _s10WorkoutKit0A4GoalOWObTm_1(v18, a5 + *(v22 + 28), type metadata accessor for WorkoutGoal);
  _s10WorkoutKit0A4GoalOWOhTm_0(a4, type metadata accessor for WorkoutGoal);
}

uint64_t SingleGoalWorkout.init(configuration:goal:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v15 - v9;
  outlined init with copy of WorkoutGoal(a2, v15 - v9, type metadata accessor for WorkoutGoal);
  v11 = type metadata accessor for WorkoutGoal();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  specialized static SingleGoalWorkout.validate(configuration:goal:)(a1, v10);
  if (v3)
  {

    _s10WorkoutKit0A4GoalOWOhTm_0(a2, type metadata accessor for WorkoutGoal);
    return outlined destroy of WorkoutGoal?(v10, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  }

  else
  {
    outlined destroy of WorkoutGoal?(v10, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
    *a3 = [a1 activityType];
    a3[1] = [a1 locationType];
    v13 = [a1 swimmingLocationType];

    a3[2] = v13;
    v14 = type metadata accessor for SingleGoalWorkout();
    return _s10WorkoutKit0A4GoalOWObTm_1(a2, a3 + *(v14 + 28), type metadata accessor for WorkoutGoal);
  }
}

uint64_t SingleGoalWorkout.init(from:)@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WorkoutGoal();
  v43 = *(v16 - 8);
  v44 = v16;
  v17 = *(v43 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v46 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v47 = (&v41 - v20);
  v21 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  [v21 setActivityType_];
  v22 = type metadata accessor for Apple_Workout_GoalWorkoutComposition();
  v23 = (a1 + v22[6]);
  if ((v23[1] & 1) == 0)
  {
    [v21 setLocationType_];
  }

  v24 = (a1 + v22[7]);
  if ((v24[1] & 1) == 0)
  {
    [v21 setSwimmingLocationType_];
  }

  outlined init with copy of WorkoutGoal?(a1 + v22[8], v10, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  v25 = *(v12 + 48);
  if (v25(v10, 1, v11) == 1)
  {
    *v15 = 0;
    v15[8] = 1;
    v26 = *(v11 + 20);
    v27 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
    (*(*(v27 - 8) + 56))(&v15[v26], 1, 1, v27);
    v28 = &v15[*(v11 + 24)];
    UnknownStorage.init()();
    v29 = v25(v10, 1, v11);
    v30 = v6;
    v31 = v46;
    if (v29 != 1)
    {
      outlined destroy of WorkoutGoal?(v10, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
    }
  }

  else
  {
    _s10WorkoutKit0A4GoalOWObTm_1(v10, v15, type metadata accessor for Apple_Workout_WorkoutGoal);
    v30 = v6;
    v31 = v46;
  }

  v32 = v47;
  v33 = v45;
  Apple_Workout_WorkoutGoal.workoutKitRepresentation.getter(v47);
  if (v33)
  {

    _s10WorkoutKit0A4GoalOWOhTm_0(a1, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
    v34 = type metadata accessor for Apple_Workout_WorkoutGoal;
    v35 = v15;
  }

  else
  {
    _s10WorkoutKit0A4GoalOWOhTm_0(v15, type metadata accessor for Apple_Workout_WorkoutGoal);
    outlined init with copy of WorkoutGoal(v32, v31, type metadata accessor for WorkoutGoal);
    outlined init with copy of WorkoutGoal(v31, v30, type metadata accessor for WorkoutGoal);
    (*(v43 + 56))(v30, 0, 1, v44);
    specialized static SingleGoalWorkout.validate(configuration:goal:)(v21, v30);
    outlined destroy of WorkoutGoal?(v30, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
    v36 = [v21 activityType];
    v37 = v42;
    *v42 = v36;
    v37[1] = [v21 locationType];
    v38 = [v21 swimmingLocationType];

    v37[2] = v38;
    v39 = type metadata accessor for SingleGoalWorkout();
    _s10WorkoutKit0A4GoalOWObTm_1(v31, v37 + *(v39 + 28), type metadata accessor for WorkoutGoal);
    _s10WorkoutKit0A4GoalOWOhTm_0(a1, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
    v34 = type metadata accessor for WorkoutGoal;
    v35 = v32;
  }

  return _s10WorkoutKit0A4GoalOWOhTm_0(v35, v34);
}

void closure #1 in SingleGoalWorkout.protoComposition.getter(char *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (HIDWORD(*a2))
  {
    __break(1u);
    goto LABEL_12;
  }

  *a1 = *a2;
  v9 = a2[1];
  if (v9 == 1)
  {
LABEL_6:
    v11 = a2[2];
    if (!v11)
    {
LABEL_10:
      v13 = type metadata accessor for SingleGoalWorkout();
      v14 = a2 + *(v13 + 28);
      MEMORY[0x28223BE20](v13);
      v17[-2] = v15;
      lazy protocol witness table accessor for type SingleGoalWorkout and conformance SingleGoalWorkout(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal);
      static Message.with(_:)();
      v16 = *(type metadata accessor for Apple_Workout_GoalWorkoutComposition() + 32);
      outlined destroy of WorkoutGoal?(&a1[v16], &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
      _s10WorkoutKit0A4GoalOWObTm_1(v8, &a1[v16], type metadata accessor for Apple_Workout_WorkoutGoal);
      (*(v5 + 56))(&a1[v16], 0, 1, v4);
      return;
    }

    if ((v11 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v11))
      {
        v12 = &a1[*(type metadata accessor for Apple_Workout_GoalWorkoutComposition() + 28)];
        *v12 = v11;
        v12[4] = 0;
        goto LABEL_10;
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!HIDWORD(v9))
  {
    v10 = &a1[*(type metadata accessor for Apple_Workout_GoalWorkoutComposition() + 24)];
    *v10 = v9;
    v10[4] = 0;
    goto LABEL_6;
  }

LABEL_15:
  __break(1u);
}

void SingleGoalWorkout.hash(into:)()
{
  MEMORY[0x23EEA0D50](*v0);
  MEMORY[0x23EEA0D50](v0[1]);
  MEMORY[0x23EEA0D50](v0[2]);
  v1 = v0 + *(type metadata accessor for SingleGoalWorkout() + 28);
  WorkoutGoal.hash(into:)();
}

Swift::Int SingleGoalWorkout.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](*v0);
  MEMORY[0x23EEA0D50](v0[1]);
  MEMORY[0x23EEA0D50](v0[2]);
  v1 = v0 + *(type metadata accessor for SingleGoalWorkout() + 28);
  WorkoutGoal.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SingleGoalWorkout(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](*v1);
  MEMORY[0x23EEA0D50](v1[1]);
  MEMORY[0x23EEA0D50](v1[2]);
  v3 = v1 + *(a1 + 28);
  WorkoutGoal.hash(into:)();
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance SingleGoalWorkout(uint64_t a1, uint64_t a2)
{
  MEMORY[0x23EEA0D50](*v2);
  MEMORY[0x23EEA0D50](v2[1]);
  MEMORY[0x23EEA0D50](v2[2]);
  v4 = v2 + *(a2 + 28);
  WorkoutGoal.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SingleGoalWorkout(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](*v2);
  MEMORY[0x23EEA0D50](v2[1]);
  MEMORY[0x23EEA0D50](v2[2]);
  v4 = v2 + *(a2 + 28);
  WorkoutGoal.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static SingleGoalWorkout.validate(configuration:goal:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = [a1 activityType];
  if (qword_284E21CD8 == v8 || unk_284E21CE0 == v8 || qword_284E21CE8 == v8)
  {
    v11 = v8;
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    swift_allocError();
    *v12 = v11;
    *(v12 + 8) = 0;
    return swift_willThrow();
  }

  else
  {
    outlined init with copy of WorkoutGoal?(a2, v7, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
    v14 = type metadata accessor for WorkoutGoal();
    if ((*(*(v14 - 8) + 48))(v7, 1, v14) == 1)
    {
      return outlined destroy of WorkoutGoal?(v7, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
    }

    else
    {
      _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06SinglecA0V_Tt2g5([a1 activityType], objc_msgSend(a1, sel_locationType), objc_msgSend(a1, sel_swimmingLocationType));
      return _s10WorkoutKit0A4GoalOWOhTm_0(v7, type metadata accessor for WorkoutGoal);
    }
  }
}

uint64_t specialized static SingleGoalWorkout.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v5 = *(type metadata accessor for SingleGoalWorkout() + 28);

  return specialized static WorkoutGoal.== infix(_:_:)((a1 + v5), a2 + v5);
}

uint64_t outlined init with copy of WorkoutGoal(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type SingleGoalWorkout and conformance SingleGoalWorkout(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of WorkoutGoal?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10WorkoutKit0A4GoalOWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of WorkoutGoal?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10WorkoutKit0A4GoalOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WorkoutPlan.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - v12;
  static WorkoutPlan.protoComposition(from:)(a1, a2, &v15 - v12);
  if (!v3)
  {
    _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v13, v10, type metadata accessor for Apple_Workout_WorkoutPlan);
    WorkoutPlan.init(from:)(v10, a3);
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v13, type metadata accessor for Apple_Workout_WorkoutPlan);
  }

  return outlined consume of Data._Representation(a1, a2);
}

uint64_t WorkoutPlan.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v156 = type metadata accessor for Apple_Workout_WorkoutRoute(0);
  v155 = *(v156 - 8);
  v3 = *(v155 + 64);
  MEMORY[0x28223BE20](v156);
  v151 = (&v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v150 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v154 = &v148 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, "(!");
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v165 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v180 = (&v148 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v169 = &v148 - v17;
  MEMORY[0x28223BE20](v16);
  v167 = &v148 - v18;
  v19 = type metadata accessor for UUID();
  v173 = *(v19 - 8);
  v174 = v19;
  v20 = *(v173 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v164 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v175 = &v148 - v24;
  MEMORY[0x28223BE20](v23);
  v170 = &v148 - v25;
  v26 = type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v160 = &v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v161 = (&v148 - v30);
  v31 = type metadata accessor for Apple_Workout_PacerWorkoutComposition();
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v158 = &v148 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v159 = &v148 - v35;
  v36 = type metadata accessor for Apple_Workout_CustomWorkoutComposition(0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v40 = &v148 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v157 = &v148 - v41;
  v42 = type metadata accessor for Apple_Workout_GoalWorkoutComposition();
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v46 = (&v148 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v44);
  v48 = &v148 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v52 = &v148 - v51;
  v166 = type metadata accessor for WorkoutPlan.Workout(0);
  v53 = *(*(v166 - 1) + 64);
  v54 = MEMORY[0x28223BE20](v166);
  v168 = &v148 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v58 = &v148 - v57;
  v59 = MEMORY[0x28223BE20](v56);
  v61 = (&v148 - v60);
  v62 = MEMORY[0x28223BE20](v59);
  v64 = &v148 - v63;
  v65 = MEMORY[0x28223BE20](v62);
  v67 = (&v148 - v66);
  MEMORY[0x28223BE20](v65);
  v171 = &v148 - v68;
  v162 = type metadata accessor for WorkoutPlan(0);
  v69 = *(*(v162 - 8) + 64);
  v70 = MEMORY[0x28223BE20](v162);
  v163 = &v148 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v153 = &v148 - v72;
  v73 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v74 = a1 + v73[7];
  v75 = *v74;
  if (v74[8] == 1)
  {
    if (!v75)
    {
      goto LABEL_10;
    }
  }

  else if (v75 != 1)
  {
LABEL_10:
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    *v79 = 4;
    swift_willThrow();
    goto LABEL_11;
  }

  if (*(a1 + v73[8]) || *(a1 + v73[9]) != 5)
  {
    goto LABEL_10;
  }

  v148 = v73;
  v76 = v73[5];
  v149 = a1;
  _s10Foundation4UUIDVSgWOcTm_0(a1 + v76, v52, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v77 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  if ((*(*(v77 - 8) + 48))(v52, 1, v77) == 1)
  {
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    *v78 = 0;
    swift_willThrow();
LABEL_9:
    a1 = v149;
LABEL_11:
    v80 = a1;
    return _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v80, type metadata accessor for Apple_Workout_WorkoutPlan);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    a1 = v149;
    if (!EnumCaseMultiPayload)
    {
      outlined init with take of PacerWorkout(v52, v48, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
      _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v48, v46, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
      v83 = v172;
      SingleGoalWorkout.init(from:)(v46, v67);
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v48, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
      v84 = v174;
      if (v83)
      {
        goto LABEL_11;
      }

      swift_storeEnumTagMultiPayload();
      v85 = v67;
      goto LABEL_28;
    }

    v86 = v157;
    outlined init with take of PacerWorkout(v52, v157, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
    _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v86, v40, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
    v90 = v172;
    CustomWorkout.init(from:)(v40, v64);
    if (!v90)
    {
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v86, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
      swift_storeEnumTagMultiPayload();
      outlined init with take of PacerWorkout(v64, v171, type metadata accessor for WorkoutPlan.Workout);
      v84 = v174;
      goto LABEL_29;
    }

    v89 = type metadata accessor for Apple_Workout_CustomWorkoutComposition;
LABEL_22:
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v86, v89);
    goto LABEL_11;
  }

  a1 = v149;
  if (EnumCaseMultiPayload == 2)
  {
    v86 = v159;
    outlined init with take of PacerWorkout(v52, v159, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
    v87 = v158;
    _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v86, v158, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
    v88 = v172;
    PacerWorkout.init(from:)(v87, v61);
    v84 = v174;
    if (v88)
    {
      v89 = type metadata accessor for Apple_Workout_PacerWorkoutComposition;
      goto LABEL_22;
    }

    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v86, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
    swift_storeEnumTagMultiPayload();
    v85 = v61;
  }

  else
  {
    v91 = v52;
    v92 = v161;
    outlined init with take of PacerWorkout(v91, v161, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
    v93 = v160;
    _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v92, v160, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
    v94 = v172;
    SwimBikeRunWorkout.init(from:)(v93, &v176);
    v84 = v174;
    if (v94)
    {
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v92, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
      goto LABEL_11;
    }

    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v92, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
    *v58 = v176;
    *(v58 + 8) = v177;
    swift_storeEnumTagMultiPayload();
    v85 = v58;
  }

LABEL_28:
  outlined init with take of PacerWorkout(v85, v171, type metadata accessor for WorkoutPlan.Workout);
LABEL_29:
  v95 = *a1;
  v96 = a1[1];
  v97 = v167;
  UUID.init(uuidString:)();
  v98 = v173;
  v99 = *(v173 + 48);
  v172 = v173 + 48;
  v166 = v99;
  if (v99(v97, 1, v84) == 1)
  {
    _s10WorkoutKit0A5Alert_pSgWOhTm_0(v97, &_s10Foundation4UUIDVSgMd, "(!");
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    *v100 = 5;
    swift_willThrow();
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v171, type metadata accessor for WorkoutPlan.Workout);
    goto LABEL_11;
  }

  v101 = *(v98 + 32);
  v167 = (v98 + 32);
  v161 = v101;
  (v101)(v170, v97, v84);
  v102 = v148[11];
  v103 = v154;
  _s10Foundation4UUIDVSgWOcTm_0(a1 + v102, v154, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
  v104 = *(v155 + 48);
  v105 = v104(v103, 1, v156);
  _s10WorkoutKit0A5Alert_pSgWOhTm_0(v103, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
  if (v105 == 1 || (v178 = &type metadata for WorkoutKitFeatures, v179 = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures(), LOBYTE(v176) = 1, v106 = isFeatureEnabled(_:)(), __swift_destroy_boxed_opaque_existential_1(&v176), (v106 & 1) == 0))
  {
    v160 = 0;
    v159 = 0;
    v117 = 0;
    v107 = v149;
    v116 = v173;
    v112 = v174;
  }

  else
  {
    v107 = v149;
    v108 = v149 + v102;
    v109 = v150;
    _s10Foundation4UUIDVSgWOcTm_0(v108, v150, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
    v110 = v156;
    v111 = v104(v109, 1, v156);
    v112 = v174;
    if (v111 == 1)
    {
      v113 = v151;
      *v151 = MEMORY[0x277D84F90];
      v114 = v113 + *(v110 + 20);
      UnknownStorage.init()();
      *(v113 + *(v110 + 24)) = xmmword_23B67CF80;
      v115 = v104(v109, 1, v110);
      v116 = v173;
      if (v115 != 1)
      {
        _s10WorkoutKit0A5Alert_pSgWOhTm_0(v109, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
      }
    }

    else
    {
      v113 = v151;
      outlined init with take of PacerWorkout(v109, v151, type metadata accessor for Apple_Workout_WorkoutRoute);
      v116 = v173;
    }

    WorkoutPlan.Route.init(from:)(v113, &v176);
    v160 = v176;
    v117 = *(&v177 + 1);
    v159 = v177;
  }

  v118 = (v107 + v148[12]);
  v119 = v118[1];
  v158 = v117;
  if (v119)
  {
    v120 = *v118;

    UUID.init(uuidString:)();
  }

  else
  {
    result = (*(v116 + 56))(v169, 1, 1, v112);
  }

  v121 = *(v149 + v148[6]);
  v122 = *(v121 + 16);
  if (!v122)
  {
    v125 = 0;
LABEL_53:
    v180 = type metadata accessor for WorkoutPlan.Workout;
    _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v171, v168, type metadata accessor for WorkoutPlan.Workout);
    v173 = *(v116 + 16);
    (v173)(v164, v170, v112);
    _s10Foundation4UUIDVSgWOcTm_0(v169, v165, &_s10Foundation4UUIDVSgMd, "(!");
    v133 = v162;
    v132 = v163;
    v134 = (v163 + *(v162 + 24));
    *v134 = 0;
    *(v134 + 1) = 0;
    *(v134 + 2) = 0;
    v135 = v112;
    v136 = *(v116 + 56);
    v175 = *(v133 + 28);
    v136(&v175[v132], 1, 1, v112);
    _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v168, v132, v180);
    v137 = v132 + *(v133 + 20);
    v138 = v164;
    (v173)(v137, v164, v112);
    v178 = &type metadata for WorkoutKitFeatures;
    v179 = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
    LOBYTE(v176) = 1;
    v139 = v160;
    v140 = v159;
    v141 = v158;
    outlined copy of WorkoutPlan.Route?(v160, v159, v158);
    LODWORD(v172) = isFeatureEnabled(_:)();
    v142 = *(v116 + 8);
    v173 = v116 + 8;
    v180 = v142;
    (v142)(v138, v135);
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v168, type metadata accessor for WorkoutPlan.Workout);
    __swift_destroy_boxed_opaque_existential_1(&v176);
    v143 = v141;
    if ((v172 & 1) == 0)
    {
      outlined consume of WorkoutPlan.Route?(v160, v159, v141);
      v139 = 0;
      v140 = 0;
      v143 = 0;
    }

    outlined consume of WorkoutPlan.Route?(*v134, *(v134 + 1), *(v134 + 2));
    *v134 = v139;
    *(v134 + 1) = v140;
    *(v134 + 2) = v143;
    v144 = v163;
    v145 = *(v162 + 32);
    outlined assign with take of UUID?(v165, &v175[v163], &_s10Foundation4UUIDVSgMd, "(!");
    *(v144 + v145) = v125;
    v146 = v153;
    outlined init with take of PacerWorkout(v144, v153, type metadata accessor for WorkoutPlan);
    WorkoutPlan.validate()();
    if (!v147)
    {
      outlined consume of WorkoutPlan.Route?(v160, v159, v141);
      _s10WorkoutKit0A5Alert_pSgWOhTm_0(v169, &_s10Foundation4UUIDVSgMd, "(!");
      (v180)(v170, v174);
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v171, type metadata accessor for WorkoutPlan.Workout);
      outlined init with take of PacerWorkout(v146, v152, type metadata accessor for WorkoutPlan);
      v80 = v149;
      return _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v80, type metadata accessor for Apple_Workout_WorkoutPlan);
    }

    outlined consume of WorkoutPlan.Route?(v160, v159, v141);
    _s10WorkoutKit0A5Alert_pSgWOhTm_0(v169, &_s10Foundation4UUIDVSgMd, "(!");
    (v180)(v170, v174);
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v171, type metadata accessor for WorkoutPlan.Workout);
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v146, type metadata accessor for WorkoutPlan);
    goto LABEL_9;
  }

  v123 = 0;
  v124 = (v121 + 40);
  v125 = MEMORY[0x277D84F90];
  v126 = v180;
  while (v123 < *(v121 + 16))
  {
    v127 = *(v124 - 1);
    v128 = *v124;

    UUID.init(uuidString:)();

    if (v166(v126, 1, v112) == 1)
    {
      result = _s10WorkoutKit0A5Alert_pSgWOhTm_0(v126, &_s10Foundation4UUIDVSgMd, "(!");
    }

    else
    {
      (v161)(v175, v126, v112);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v125[2] + 1, 1, v125);
      }

      v130 = v125[2];
      v129 = v125[3];
      if (v130 >= v129 >> 1)
      {
        v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v129 > 1, v130 + 1, 1, v125);
      }

      v125[2] = v130 + 1;
      v131 = v125 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v130;
      v112 = v174;
      result = (v161)(v131, v175, v174);
    }

    ++v123;
    v124 += 2;
    if (v122 == v123)
    {
      v116 = v173;
      goto LABEL_53;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WorkoutPlan.validate()()
{
  v1 = v0;
  v42 = type metadata accessor for PacerWorkout();
  v2 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v4 = (&v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CustomWorkout();
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for SingleGoalWorkout();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for WorkoutPlan.Workout(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = v1;
  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v1, v20, type metadata accessor for WorkoutPlan.Workout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with take of PacerWorkout(v20, v4, type metadata accessor for PacerWorkout);
      v28 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
      [v28 setActivityType_];
      [v28 setLocationType_];
      v29 = *(v42 + 24);
      v30 = *(v42 + 28);
      v31 = v44;
      specialized static PacerWorkout.validate(configuration:distanceGoal:timeGoal:)(v28);
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v4, type metadata accessor for PacerWorkout);

      if (v31)
      {
        return;
      }
    }

    else
    {
      v35 = *v20;
      v36 = v20[2];
      v37 = v44;
      specialized static SwimBikeRunWorkout.validateActivities(_:)(v35);

      if (v37)
      {
        return;
      }
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with take of PacerWorkout(v20, v8, type metadata accessor for CustomWorkout);
    v32 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
    v33 = *v8;
    [v32 setActivityType_];
    [v32 setLocationType_];
    [v32 setSwimmingLocationType_];
    v34 = v44;
    specialized static CustomWorkout.validate(configuration:warmup:blocks:cooldown:)(v32, v8 + v5[7], *(v8 + v5[8]), v8 + v5[9]);
    v25 = v34;

    v26 = type metadata accessor for CustomWorkout;
    v27 = v8;
  }

  else
  {
    outlined init with take of PacerWorkout(v20, v16, type metadata accessor for SingleGoalWorkout);
    v22 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
    [v22 setActivityType_];
    [v22 setLocationType_];
    [v22 setSwimmingLocationType_];
    _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v16 + *(v13 + 28), v12, type metadata accessor for WorkoutGoal);
    v23 = type metadata accessor for WorkoutGoal();
    (*(*(v23 - 8) + 56))(v12, 0, 1, v23);
    v24 = v44;
    specialized static SingleGoalWorkout.validate(configuration:goal:)(v22, v12);
    v25 = v24;

    _s10WorkoutKit0A5Alert_pSgWOhTm_0(v12, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
    v26 = type metadata accessor for SingleGoalWorkout;
    v27 = v16;
  }

  _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v27, v26);
  if (!v25)
  {
LABEL_11:
    v38 = (v43 + *(type metadata accessor for WorkoutPlan(0) + 24));
    v39 = *v38;
    if (*v38)
    {
      v41 = v38[1];
      v40 = v38[2];
      outlined copy of WorkoutPlan.Route?(*v38, v41, v40);
      specialized static WorkoutPlan.Route.validate(routePoints:)(v39);
      outlined consume of WorkoutPlan.Route?(v39, v41, v40);
    }
  }
}

uint64_t WorkoutPlan.dataRepresentation(as:)(_BYTE *a1)
{
  v3 = type metadata accessor for JSONEncodingOptions();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v18 - v13;
  LOBYTE(a1) = *a1;
  WorkoutPlan.validate()();
  if (a1)
  {
    if (!v16)
    {
      v18[1] = v18;
      MEMORY[0x28223BE20](v15);
      v18[-2] = v1;
      lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan, type metadata accessor for Apple_Workout_WorkoutPlan);
      static Message.with(_:)();
      JSONEncodingOptions.init()();
      v8 = Message.jsonUTF8Data(options:)();
      (*(v4 + 8))(v7, v3);
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v11, type metadata accessor for Apple_Workout_WorkoutPlan);
    }
  }

  else if (!v16)
  {
    MEMORY[0x28223BE20](v15);
    v18[-2] = v1;
    lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan, type metadata accessor for Apple_Workout_WorkoutPlan);
    static Message.with(_:)();
    v8 = Message.serializedData(partial:)();
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v14, type metadata accessor for Apple_Workout_WorkoutPlan);
  }

  return v8;
}

uint64_t WorkoutPlan.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutPlan(0) + 20);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutPlan.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WorkoutPlan(0) + 20);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WorkoutPlan.route.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WorkoutPlan(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return outlined copy of WorkoutPlan.Route?(v4, v5, v6);
}

__n128 WorkoutPlan.route.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1 + *(type metadata accessor for WorkoutPlan(0) + 24);
  outlined consume of WorkoutPlan.Route?(*v3, *(v3 + 8), *(v3 + 16));
  result = v5;
  *v3 = v5;
  *(v3 + 16) = v2;
  return result;
}

uint64_t WorkoutPlan.alternativeUUIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutPlan(0) + 32));
}

uint64_t WorkoutPlan.alternativeUUIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WorkoutPlan(0) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t WorkoutPlan.Workout.activity.getter()
{
  v1 = type metadata accessor for PacerWorkout();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CustomWorkout();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for SingleGoalWorkout();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for WorkoutPlan.Workout(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v0, v16, type metadata accessor for WorkoutPlan.Workout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with take of PacerWorkout(v16, v4, type metadata accessor for PacerWorkout);
      v18 = *v4;
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v4, type metadata accessor for PacerWorkout);
    }

    else
    {
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v16, type metadata accessor for WorkoutPlan.Workout);
      return 82;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    outlined init with take of PacerWorkout(v16, v8, type metadata accessor for CustomWorkout);
    v18 = *v8;
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v8, type metadata accessor for CustomWorkout);
  }

  else
  {
    outlined init with take of PacerWorkout(v16, v12, type metadata accessor for SingleGoalWorkout);
    v18 = *v12;
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v12, type metadata accessor for SingleGoalWorkout);
  }

  return v18;
}

uint64_t WorkoutPlan.Workout.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for PacerWorkout();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for WorkoutStep();
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  MEMORY[0x28223BE20](v7);
  v59 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v56 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  v60 = type metadata accessor for CustomWorkout();
  v18 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v20 = (&v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for SingleGoalWorkout();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for WorkoutPlan.Workout(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v1, v28, type metadata accessor for WorkoutPlan.Workout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      outlined init with take of PacerWorkout(v28, v20, type metadata accessor for CustomWorkout);
      MEMORY[0x23EEA0D50](1);
      MEMORY[0x23EEA0D50](*v20);
      MEMORY[0x23EEA0D50](v20[1]);
      if (v20[3])
      {
        v35 = v20[2];
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v40 = v58;
      v39 = v59;
      v41 = v57;
      v42 = v55;
      v43 = v60;
      _s10Foundation4UUIDVSgWOcTm_0(v20 + *(v60 + 28), v17, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      v44 = *(v41 + 48);
      if (v44(v17, 1, v40) == 1)
      {
        Hasher._combine(_:)(0);
        v45 = v56;
      }

      else
      {
        outlined init with take of PacerWorkout(v17, v42, type metadata accessor for WorkoutStep);
        Hasher._combine(_:)(1u);
        WorkoutGoal.hash(into:)();
        _s10Foundation4UUIDVSgWOcTm_0(v42 + *(v40 + 20), &v61, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
        if (v62)
        {
          outlined init with take of WorkoutAlert(&v61, v63);
          v46 = v65;
          __swift_project_boxed_opaque_existential_1(v63, v64);
          v47 = *(v46 + 8);
          v43 = v60;
          dispatch thunk of Hashable.hash(into:)();
          __swift_destroy_boxed_opaque_existential_1(v63);
        }

        else
        {
          _s10WorkoutKit0A5Alert_pSgWOhTm_0(&v61, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
        }

        v45 = v56;
        v49 = (v42 + *(v40 + 24));
        if (v49[1])
        {
          v50 = *v49;
          String.hash(into:)();
        }

        _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v42, type metadata accessor for WorkoutStep);
      }

      specialized Array<A>.hash(into:)(a1, *(v20 + *(v43 + 32)));
      _s10Foundation4UUIDVSgWOcTm_0(v20 + *(v43 + 36), v45, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      if (v44(v45, 1, v40) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        outlined init with take of PacerWorkout(v45, v39, type metadata accessor for WorkoutStep);
        Hasher._combine(_:)(1u);
        WorkoutGoal.hash(into:)();
        _s10Foundation4UUIDVSgWOcTm_0(v39 + *(v40 + 20), &v61, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
        if (v62)
        {
          outlined init with take of WorkoutAlert(&v61, v63);
          v51 = v65;
          __swift_project_boxed_opaque_existential_1(v63, v64);
          v52 = *(v51 + 8);
          dispatch thunk of Hashable.hash(into:)();
          __swift_destroy_boxed_opaque_existential_1(v63);
        }

        else
        {
          _s10WorkoutKit0A5Alert_pSgWOhTm_0(&v61, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
        }

        v53 = (v39 + *(v40 + 24));
        if (v53[1])
        {
          v54 = *v53;
          String.hash(into:)();
        }

        _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v39, type metadata accessor for WorkoutStep);
      }

      v31 = type metadata accessor for CustomWorkout;
      v32 = v20;
    }

    else
    {
      outlined init with take of PacerWorkout(v28, v24, type metadata accessor for SingleGoalWorkout);
      MEMORY[0x23EEA0D50](0);
      MEMORY[0x23EEA0D50](*v24);
      MEMORY[0x23EEA0D50](v24[1]);
      MEMORY[0x23EEA0D50](v24[2]);
      v30 = v24 + *(v21 + 28);
      WorkoutGoal.hash(into:)();
      v31 = type metadata accessor for SingleGoalWorkout;
      v32 = v24;
    }

    return _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v32, v31);
  }

  if (EnumCaseMultiPayload == 2)
  {
    outlined init with take of PacerWorkout(v28, v6, type metadata accessor for PacerWorkout);
    MEMORY[0x23EEA0D50](2);
    MEMORY[0x23EEA0D50](*v6);
    MEMORY[0x23EEA0D50](v6[1]);
    v33 = v6 + *(v3 + 24);
    WorkoutGoal.hash(into:)();
    v34 = v6 + *(v3 + 28);
    WorkoutGoal.hash(into:)();
    v31 = type metadata accessor for PacerWorkout;
    v32 = v6;
    return _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v32, v31);
  }

  v36 = *v28;
  v37 = v28[1];
  v38 = v28[2];
  MEMORY[0x23EEA0D50](3);
  specialized Array<A>.hash(into:)(a1, v36);
  if (v38)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t WorkoutPlan.Route.points.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t WorkoutPlan.Route.snapshot.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data?(v1, *(v0 + 16));
  return v1;
}

uint64_t WorkoutPlan.Route.snapshot.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t WorkoutPlan.Route.init(points:snapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  result = outlined consume of Data?(0, 0xF000000000000000);
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t WorkoutPlan.Route.routeLength.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v10;
    v4 = (v1 + 32);
    v5 = *(v10 + 16);
    do
    {
      v6 = *v4;
      v7 = *(v10 + 24);
      if (v5 >= v7 >> 1)
      {
        v9 = *v4;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v5 + 1, 1);
        v6 = v9;
      }

      *(v10 + 16) = v5 + 1;
      *(v10 + 16 * v5 + 32) = v6;
      v4 += 2;
      ++v5;
      --v2;
    }

    while (v2);
  }

  Array<A>.calculateLocationDistance()(v3);
}

uint64_t WorkoutPlan.Route.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BinaryDecodingOptions();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for Apple_Workout_WorkoutRoute(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v17 - v14;
  v19 = a1;
  v20 = a2;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute, type metadata accessor for Apple_Workout_WorkoutRoute);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v3)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v15, v12, type metadata accessor for Apple_Workout_WorkoutRoute);
  WorkoutPlan.Route.init(from:)(v12, v17);
  _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v15, type metadata accessor for Apple_Workout_WorkoutRoute);
  result = outlined consume of Data._Representation(a1, a2);
  *a3 = *&v17[0];
  *(a3 + 8) = *(v17 + 8);
  return result;
}

uint64_t WorkoutPlan.Route.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v44 - v8;
  v53 = type metadata accessor for Apple_Workout_LocationCoordinate2D(0);
  v10 = *(v53 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v53);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for Apple_Workout_RoutePoint(0);
  v14 = *(v54 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v54);
  v55 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v52 = &v44 - v18;
  v19 = *a1;
  v20 = *(*a1 + 16);
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v45 = v2;
    v46 = a2;
    v47 = a1;
    v48 = v20;
    v56 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
    v23 = 0;
    v21 = v56;
    v24 = *(v14 + 80);
    v50 = v14;
    v51 = v19 + ((v24 + 32) & ~v24);
    v25 = (v10 + 48);
    v49 = v19;
    while (v23 < *(v19 + 16))
    {
      v26 = v52;
      _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v51 + *(v14 + 72) * v23, v52, type metadata accessor for Apple_Workout_RoutePoint);
      v27 = v55;
      _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v26, v55, type metadata accessor for Apple_Workout_RoutePoint);
      _s10Foundation4UUIDVSgWOcTm_0(v27 + *(v54 + 20), v9, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
      v28 = *v25;
      v29 = v53;
      if ((*v25)(v9, 1, v53) == 1)
      {
        *v13 = 0.0;
        v13[1] = 0.0;
        v30 = v13 + *(v29 + 24);
        UnknownStorage.init()();
        if (v28(v9, 1, v29) != 1)
        {
          _s10WorkoutKit0A5Alert_pSgWOhTm_0(v9, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
        }
      }

      else
      {
        outlined init with take of PacerWorkout(v9, v13, type metadata accessor for Apple_Workout_LocationCoordinate2D);
      }

      v32 = *v13;
      v31 = v13[1];
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v13, type metadata accessor for Apple_Workout_LocationCoordinate2D);
      v57.latitude = v32;
      v57.longitude = v31;
      if (!CLLocationCoordinate2DIsValid(v57))
      {
        lazy protocol witness table accessor for type RouteValidationError and conformance RouteValidationError();
        swift_allocError();
        *v40 = v32;
        *(v40 + 8) = v31;
        *(v40 + 16) = 0;
        swift_willThrow();
        _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v55, type metadata accessor for Apple_Workout_RoutePoint);
        _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v26, type metadata accessor for Apple_Workout_RoutePoint);

        return _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v47, type metadata accessor for Apple_Workout_WorkoutRoute);
      }

      v33 = v9;
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v26, type metadata accessor for Apple_Workout_RoutePoint);
      v34 = (v55 + *(v54 + 24));
      v35 = *v34;
      v36 = *(v34 + 8);
      result = _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v55, type metadata accessor for Apple_Workout_RoutePoint);
      v56 = v21;
      v38 = *(v21 + 16);
      v37 = *(v21 + 24);
      if (v38 >= v37 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
        v21 = v56;
      }

      ++v23;
      *(v21 + 16) = v38 + 1;
      v39 = v21 + 32 * v38;
      *(v39 + 32) = v32;
      *(v39 + 40) = v31;
      *(v39 + 48) = v35;
      *(v39 + 56) = v36;
      v19 = v49;
      v9 = v33;
      v14 = v50;
      if (v48 == v23)
      {
        a2 = v46;
        a1 = v47;
        v3 = v45;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    specialized static WorkoutPlan.Route.validate(routePoints:)(v21);
    if (v3)
    {
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(a1, type metadata accessor for Apple_Workout_WorkoutRoute);
    }

    else
    {
      v41 = (a1 + *(type metadata accessor for Apple_Workout_WorkoutRoute(0) + 24));
      v43 = *v41;
      v42 = v41[1];
      if (v42 >> 60 != 15)
      {
        outlined copy of Data?(v43, v42);
      }

      outlined consume of Data?(0, 0xF000000000000000);
      result = _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(a1, type metadata accessor for Apple_Workout_WorkoutRoute);
      *a2 = v21;
      a2[1] = v43;
      a2[2] = v42;
    }
  }

  return result;
}

uint64_t WorkoutPlan.Route.dataRepresentation.getter()
{
  v2 = type metadata accessor for Apple_Workout_WorkoutRoute(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v0;
  v10 = *(v0 + 1);
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute, type metadata accessor for Apple_Workout_WorkoutRoute);
  v6 = v2;
  static Message.with(_:)();
  if (!v1)
  {
    v6 = Message.serializedData(partial:)();
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v5, type metadata accessor for Apple_Workout_WorkoutRoute);
  }

  return v6;
}

uint64_t closure #1 in WorkoutPlan.Route.protoComposition.getter(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v31 = a3;
  v7 = type metadata accessor for Apple_Workout_RoutePoint(0);
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v29 = a1;
    v30 = a4;
    v34 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v34;
    v13 = (a2 + 56);
    while (1)
    {
      v15 = *(v13 - 3);
      v14 = *(v13 - 2);
      v16 = *(v13 - 1);
      v17 = *v13;
      v35.latitude = v15;
      v35.longitude = v14;
      v18 = CLLocationCoordinate2DIsValid(v35);
      if (!v18)
      {
        break;
      }

      MEMORY[0x28223BE20](v18);
      *(&v28 - 4) = v15;
      *(&v28 - 3) = v14;
      *(&v28 - 2) = v16;
      *(&v28 - 8) = v17;
      lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint, type metadata accessor for Apple_Workout_RoutePoint);
      static Message.with(_:)();
      v34 = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1);
        v12 = v34;
      }

      *(v12 + 16) = v20 + 1;
      outlined init with take of PacerWorkout(v10, v12 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v20, type metadata accessor for Apple_Workout_RoutePoint);
      v13 += 4;
      if (!--v11)
      {
        a1 = v29;
        a4 = v30;
        goto LABEL_9;
      }
    }

    lazy protocol witness table accessor for type RouteValidationError and conformance RouteValidationError();
    swift_allocError();
    *v21 = v15;
    *(v21 + 8) = v14;
    *(v21 + 16) = 0;
    swift_willThrow();
  }

  else
  {
LABEL_9:
    v23 = *a1;

    *a1 = v12;
    if (a4 >> 60 != 15)
    {
      v24 = (a1 + *(type metadata accessor for Apple_Workout_WorkoutRoute(0) + 24));
      v25 = *v24;
      v26 = v24[1];
      v27 = v31;
      outlined copy of Data._Representation(v31, a4);
      result = outlined consume of Data?(v25, v26);
      *v24 = v27;
      v24[1] = a4;
    }
  }

  return result;
}

void WorkoutPlan.Route.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  specialized Array<A>.hash(into:)(a1, *v1);
  if (v3 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int WorkoutPlan.Route.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, v2);
  if (v3 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutPlan.Route()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, v2);
  if (v3 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance WorkoutPlan.Route(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  specialized Array<A>.hash(into:)(a1, *v1);
  if (v3 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutPlan.Route()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, v2);
  if (v3 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t WorkoutPlan.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v32 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, "(!");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  v33 = &v27 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v14;
  v15 = type metadata accessor for WorkoutPlan.Workout(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(a1, v18, type metadata accessor for WorkoutPlan.Workout);
  v28 = v11[2];
  v28(v14, a2, v10);
  v19 = v11[7];
  v19(v9, 1, 1, v10);
  v20 = type metadata accessor for WorkoutPlan(0);
  v21 = a3;
  v22 = a3 + v20[6];
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  v31 = v20[7];
  v19((v21 + v31), 1, 1, v10);
  v23 = v20[8];
  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v18, v21, type metadata accessor for WorkoutPlan.Workout);
  v24 = v29;
  v28((v21 + v20[5]), v29, v10);
  v34[3] = &type metadata for WorkoutKitFeatures;
  v34[4] = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
  LOBYTE(v34[0]) = 1;
  isFeatureEnabled(_:)();
  v25 = v11[1];
  v25(v30, v10);
  _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v32, type metadata accessor for WorkoutPlan.Workout);
  v25(v24, v10);
  _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v18, type metadata accessor for WorkoutPlan.Workout);
  __swift_destroy_boxed_opaque_existential_1(v34);
  outlined consume of WorkoutPlan.Route?(*v22, *(v22 + 8), *(v22 + 16));
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  result = outlined assign with take of UUID?(v33, v21 + v31, &_s10Foundation4UUIDVSgMd, "(!");
  *(v21 + v23) = 0;
  return result;
}

uint64_t WorkoutPlan.init(_:id:route:referenceUUID:alternativeUUIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a3[1];
  v21 = *a3;
  v9 = a3[2];
  v10 = type metadata accessor for WorkoutPlan(0);
  v11 = a6 + v10[6];
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  v12 = v10[7];
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  (*(v14 + 56))(a6 + v12, 1, 1, v13);
  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(a1, a6, type metadata accessor for WorkoutPlan.Workout);
  (*(v14 + 16))(a6 + v10[5], a2, v13);
  v24[3] = &type metadata for WorkoutKitFeatures;
  v24[4] = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
  LOBYTE(v24[0]) = 1;
  v15 = isFeatureEnabled(_:)();
  (*(v14 + 8))(a2, v13);
  _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(a1, type metadata accessor for WorkoutPlan.Workout);
  __swift_destroy_boxed_opaque_existential_1(v24);
  if (v15)
  {
    v17 = v20;
    v16 = v21;
  }

  else
  {
    outlined consume of WorkoutPlan.Route?(v21, v20, v9);
    v16 = 0;
    v17 = 0;
    v9 = 0;
  }

  outlined consume of WorkoutPlan.Route?(*v11, *(v11 + 8), *(v11 + 16));
  *v11 = v16;
  *(v11 + 8) = v17;
  *(v11 + 16) = v9;
  v18 = v10[8];
  result = outlined assign with take of UUID?(a4, a6 + v12, &_s10Foundation4UUIDVSgMd, "(!");
  *(a6 + v18) = a5;
  return result;
}

uint64_t static WorkoutPlan.protoComposition(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v5 = type metadata accessor for JSONDecodingOptions();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BinaryDecodingOptions();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v46 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v40 = &v37 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v37 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v37 - v22;
  v24 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v45 = *(v24 - 8);
  v26 = v45 + 56;
  v25 = *(v45 + 56);
  v25(v23, 1, 1, v24);
  v50 = a1;
  v51 = a2;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v42 = a1;
  v43 = a2;
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  v39 = lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan, type metadata accessor for Apple_Workout_WorkoutPlan);
  v27 = v52;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v37 = v26;
  v38 = v25;
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    _s10WorkoutKit0A5Alert_pSgWOhTm_0(v23, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
    v25(v21, 0, 1, v24);
    outlined init with take of Apple_Workout_WorkoutPlan?(v21, v23);
    v28 = 0;
  }

  v52 = v23;
  _s10Foundation4UUIDVSgWOcTm_0(v23, v18, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  v29 = *(v45 + 48);
  v30 = v29(v18, 1, v24);
  _s10WorkoutKit0A5Alert_pSgWOhTm_0(v18, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  if (v30 == 1)
  {
    outlined copy of Data._Representation(v42, v43);
    JSONDecodingOptions.init()();
    v31 = v40;
    Message.init(jsonUTF8Data:options:)();
    v32 = v52;
    _s10WorkoutKit0A5Alert_pSgWOhTm_0(v52, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
    v38(v31, 0, 1, v24);
    outlined init with take of Apple_Workout_WorkoutPlan?(v31, v32);
  }

  else
  {
    v32 = v52;
  }

  v33 = v28;
  v34 = v46;
  _s10Foundation4UUIDVSgWOcTm_0(v32, v46, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  if (v29(v34, 1, v24) == 1)
  {
    _s10WorkoutKit0A5Alert_pSgWOhTm_0(v34, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
    if (!v33)
    {
      lazy protocol witness table accessor for type ImportError and conformance ImportError();
      swift_allocError();
      *v36 = 2;
    }

    swift_willThrow();
    return _s10WorkoutKit0A5Alert_pSgWOhTm_0(v32, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  }

  else
  {
    _s10WorkoutKit0A5Alert_pSgWOhTm_0(v32, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);

    return outlined init with take of PacerWorkout(v34, v44, type metadata accessor for Apple_Workout_WorkoutPlan);
  }
}

uint64_t WorkoutPlan.dataRepresentation.getter()
{
  v1 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  WorkoutPlan.validate()();
  if (!v6)
  {
    MEMORY[0x28223BE20](v5);
    v8[-2] = v0;
    lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan, type metadata accessor for Apple_Workout_WorkoutPlan);
    static Message.with(_:)();
    v0 = Message.serializedData(partial:)();
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v4, type metadata accessor for Apple_Workout_WorkoutPlan);
  }

  return v0;
}

WorkoutKit::WorkoutPlan::SerializationFormat_optional __swiftcall WorkoutPlan.SerializationFormat.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t WorkoutPlan.SerializationFormat.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutPlan.SerializationFormat()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x23EEA0D50](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutPlan.SerializationFormat()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x23EEA0D50](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutPlan.SerializationFormat()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x23EEA0D50](v2);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutPlan.SerializationFormat@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutPlan.SerializationFormat(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

void WorkoutPlan.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v28 = v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, "(!");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v26 - v13;
  WorkoutPlan.Workout.hash(into:)(a1);
  v15 = type metadata accessor for WorkoutPlan(0);
  v16 = v15[5];
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of Hashable.hash(into:)();
  v17 = (v2 + v15[6]);
  v18 = *v17;
  if (*v17)
  {
    v27 = v8;
    v19 = v17[2];
    v26[1] = v17[1];
    Hasher._combine(_:)(1u);
    specialized Array<A>.hash(into:)(a1, v18);
    if (v19 >> 60 == 15)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      Data.hash(into:)();
    }

    v8 = v27;
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  _s10Foundation4UUIDVSgWOcTm_0(v2 + v15[7], v14, &_s10Foundation4UUIDVSgMd, "(!");
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v20 = v28;
    (*(v5 + 32))(v28, v14, v4);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v20, v4);
  }

  v21 = *(v2 + v15[8]);
  if (v21)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x23EEA0D50](*(v21 + 16));
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = *(v5 + 16);
      v24 = v21 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v25 = *(v5 + 72);
      do
      {
        v23(v8, v24, v4);
        dispatch thunk of Hashable.hash(into:)();
        (*(v5 + 8))(v8, v4);
        v24 += v25;
        --v22;
      }

      while (v22);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int WorkoutPlan.Workout.hashValue.getter(void (*a1)(_BYTE *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutPlan.Workout(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutPlan.Workout(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for Identifiable.id.getter in conformance WorkoutPlan@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t closure #1 in WorkoutPlan.protoComposition.getter(uint64_t *a1, uint64_t a2)
{
  v127 = type metadata accessor for UUID();
  v116 = *(v127 - 8);
  v4 = *(v116 + 64);
  MEMORY[0x28223BE20](v127);
  v126 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, "(!");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v115 = &v110 - v8;
  v121 = type metadata accessor for Apple_Workout_WorkoutRoute(0);
  v110 = *(v121 - 8);
  v9 = *(v110 + 64);
  MEMORY[0x28223BE20](v121);
  v124 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for PacerWorkout();
  v11 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v120 = (&v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v117 = type metadata accessor for CustomWorkout();
  v13 = *(*(v117 - 1) + 64);
  MEMORY[0x28223BE20](v117);
  v15 = (&v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v118 = &v110 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v111 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v112 = &v110 - v23;
  MEMORY[0x28223BE20](v24);
  v113 = &v110 - v25;
  MEMORY[0x28223BE20](v26);
  v114 = &v110 - v27;
  v28 = type metadata accessor for SingleGoalWorkout();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = (&v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for WorkoutPlan.Workout(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v35 = (&v110 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v37 = a1 + v36[7];
  *v37 = 1;
  v37[8] = 1;
  *(a1 + v36[8]) = 0;
  v122 = v36;
  *(a1 + v36[9]) = 5;
  v123 = type metadata accessor for WorkoutPlan(0);
  v38 = a2 + *(v123 + 20);
  v39 = UUID.uuidString.getter();
  v41 = v40;
  v42 = a1[1];

  *a1 = v39;
  a1[1] = v41;
  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(a2, v35, type metadata accessor for WorkoutPlan.Workout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v15 = v120;
      outlined init with take of PacerWorkout(v35, v120, type metadata accessor for PacerWorkout);
      v51 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
      [v51 setActivityType_];
      [v51 setLocationType_];
      v52 = *(v119 + 24);
      v53 = v15 + *(v119 + 28);
      v54 = v125;
      specialized static PacerWorkout.validate(configuration:distanceGoal:timeGoal:)(v51);

      v55 = v124;
      if (v54)
      {
        v56 = type metadata accessor for PacerWorkout;
        goto LABEL_10;
      }

      v69 = type metadata accessor for Apple_Workout_PacerWorkoutComposition();
      MEMORY[0x28223BE20](v69);
      *(&v110 - 2) = v15;
      lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
      v70 = v112;
      static Message.with(_:)();
      v119 = 0;
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v15, type metadata accessor for PacerWorkout);
      v71 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
      v68 = v70;
    }

    else
    {
      v61 = *v35;
      v62 = v35[1];
      v63 = v35[2];
      v64 = v125;
      specialized static SwimBikeRunWorkout.validateActivities(_:)(*v35);
      v55 = v124;
      if (v64)
      {
      }

      v75 = type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition();
      v125 = &v110;
      MEMORY[0x28223BE20](v75);
      *(&v110 - 4) = v61;
      *(&v110 - 3) = v62;
      *(&v110 - 2) = v63;
      lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
      v76 = v111;
      static Message.with(_:)();
      v119 = 0;

      v77 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v77 - 8) + 56))(v76, 0, 1, v77);
      v68 = v76;
    }

    v48 = v121;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with take of PacerWorkout(v35, v15, type metadata accessor for CustomWorkout);
    v57 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
    v58 = *v15;
    [v57 setActivityType_];
    [v57 setLocationType_];
    [v57 setSwimmingLocationType_];
    v59 = v125;
    specialized static CustomWorkout.validate(configuration:warmup:blocks:cooldown:)(v57, v15 + v117[7], *(v15 + v117[8]), v15 + v117[9]);

    v48 = v121;
    v55 = v124;
    if (!v59)
    {
      v72 = type metadata accessor for Apple_Workout_CustomWorkoutComposition(0);
      v120 = a1;
      MEMORY[0x28223BE20](v72);
      *(&v110 - 2) = v15;
      lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_CustomWorkoutComposition and conformance Apple_Workout_CustomWorkoutComposition, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
      v73 = v113;
      static Message.with(_:)();
      v119 = 0;
      a1 = v120;
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v15, type metadata accessor for CustomWorkout);
      v74 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
      v68 = v73;
      goto LABEL_19;
    }

    v56 = type metadata accessor for CustomWorkout;
LABEL_10:
    v49 = v56;
    v50 = v15;
    return _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v50, v49);
  }

  outlined init with take of PacerWorkout(v35, v31, type metadata accessor for SingleGoalWorkout);
  v44 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  [v44 setActivityType_];
  [v44 setLocationType_];
  [v44 setSwimmingLocationType_];
  v45 = v118;
  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v31 + *(v28 + 28), v118, type metadata accessor for WorkoutGoal);
  v46 = type metadata accessor for WorkoutGoal();
  (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  v47 = v125;
  specialized static SingleGoalWorkout.validate(configuration:goal:)(v44, v45);
  _s10WorkoutKit0A5Alert_pSgWOhTm_0(v45, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);

  v48 = v121;
  if (v47)
  {
    v49 = type metadata accessor for SingleGoalWorkout;
    v50 = v31;
    return _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v50, v49);
  }

  v65 = type metadata accessor for Apple_Workout_GoalWorkoutComposition();
  MEMORY[0x28223BE20](v65);
  *(&v110 - 2) = v31;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
  v66 = v114;
  static Message.with(_:)();
  v119 = 0;
  _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v31, type metadata accessor for SingleGoalWorkout);
  v67 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
  v68 = v66;
  v55 = v124;
LABEL_19:
  v78 = outlined assign with take of UUID?(v68, a1 + v122[5], &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v79 = (a2 + *(v123 + 24));
  v80 = *v79;
  if (*v79)
  {
    v82 = v79[1];
    v81 = v79[2];
    MEMORY[0x28223BE20](v78);
    *(&v110 - 4) = v80;
    *(&v110 - 3) = v82;
    *(&v110 - 2) = v81;

    outlined copy of Data?(v82, v81);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute, type metadata accessor for Apple_Workout_WorkoutRoute);
    v83 = v119;
    static Message.with(_:)();
    result = outlined consume of WorkoutPlan.Route?(v80, v82, v81);
    if (v83)
    {
      return result;
    }

    v119 = 0;
    v84 = v122[11];
    _s10WorkoutKit0A5Alert_pSgWOhTm_0(a1 + v84, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
    outlined init with take of PacerWorkout(v55, a1 + v84, type metadata accessor for Apple_Workout_WorkoutRoute);
    (*(v110 + 56))(a1 + v84, 0, 1, v48);
  }

  v85 = v115;
  _s10Foundation4UUIDVSgWOcTm_0(a2 + *(v123 + 28), v115, &_s10Foundation4UUIDVSgMd, "(!");
  v86 = v116;
  v87 = v127;
  if ((*(v116 + 48))(v85, 1, v127) == 1)
  {
    result = _s10WorkoutKit0A5Alert_pSgWOhTm_0(v85, &_s10Foundation4UUIDVSgMd, "(!");
  }

  else
  {
    v88 = UUID.uuidString.getter();
    v90 = v89;
    (*(v86 + 8))(v85, v87);
    v91 = (a1 + v122[12]);
    v92 = v91[1];

    *v91 = v88;
    v91[1] = v90;
  }

  v93 = *(a2 + *(v123 + 32));
  if (v93)
  {
    v94 = *(v93 + 16);
    v95 = MEMORY[0x277D84F90];
    if (v94)
    {
      v120 = a1;
      v128 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94, 0);
      v95 = v128;
      v97 = *(v86 + 16);
      v96 = v86 + 16;
      v98 = v93 + ((*(v96 + 64) + 32) & ~*(v96 + 64));
      v124 = *(v96 + 56);
      v125 = v97;
      v123 = v96 - 8;
      do
      {
        v99 = v126;
        v100 = v127;
        v101 = v96;
        (v125)(v126, v98, v127);
        v102 = UUID.uuidString.getter();
        v104 = v103;
        (*v123)(v99, v100);
        v128 = v95;
        v106 = *(v95 + 16);
        v105 = *(v95 + 24);
        if (v106 >= v105 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v106 + 1, 1);
          v95 = v128;
        }

        *(v95 + 16) = v106 + 1;
        v107 = v95 + 16 * v106;
        *(v107 + 32) = v102;
        *(v107 + 40) = v104;
        v98 += v124;
        --v94;
        v96 = v101;
      }

      while (v94);
      a1 = v120;
    }

    v108 = v122[6];
    v109 = *(a1 + v108);

    *(a1 + v108) = v95;
  }

  return result;
}

uint64_t specialized static WorkoutPlan.Route.validate(routePoints:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 < 2)
  {
    lazy protocol witness table accessor for type RouteValidationError and conformance RouteValidationError();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 1;
    return swift_willThrow();
  }

  else
  {
    v2 = (result + 40);
    v3 = v1 + 1;
    while (--v3)
    {
      v4 = v2 + 4;
      v6 = *(v2 - 1);
      v5 = *v2;
      v9.latitude = v6;
      v9.longitude = *v2;
      result = CLLocationCoordinate2DIsValid(v9);
      v2 = v4;
      if ((result & 1) == 0)
      {
        lazy protocol witness table accessor for type RouteValidationError and conformance RouteValidationError();
        swift_allocError();
        *v7 = v6;
        *(v7 + 8) = v5;
        *(v7 + 16) = 0;
        return swift_willThrow();
      }
    }
  }

  return result;
}

BOOL specialized static WorkoutPlan.Route.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit10RoutePointV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3 >> 60 == 15)
  {
    if (v5 >> 60 == 15)
    {
      outlined copy of Data?(v2, v3);
      outlined copy of Data?(v4, v5);
      outlined consume of Data?(v2, v3);
      return 1;
    }

    goto LABEL_6;
  }

  if (v5 >> 60 == 15)
  {
LABEL_6:
    outlined copy of Data?(v2, v3);
    outlined copy of Data?(v4, v5);
    outlined consume of Data?(v2, v3);
    outlined consume of Data?(v4, v5);
    return 0;
  }

  outlined copy of Data?(v2, v3);
  outlined copy of Data?(v4, v5);
  v7 = specialized static Data.== infix(_:_:)(v2, v3, v4, v5);
  outlined consume of Data?(v4, v5);
  outlined consume of Data?(v2, v3);
  return (v7 & 1) != 0;
}

uint64_t specialized static WorkoutPlan.Workout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v48 = type metadata accessor for PacerWorkout();
  v3 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v50 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CustomWorkout();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for SingleGoalWorkout();
  v9 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v49 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for WorkoutPlan.Workout(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = (&v46 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = (&v46 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanV0A0O_AEtMd, &_s10WorkoutKit0A4PlanV0A0O_AEtMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v46 - v26;
  v29 = (&v46 + *(v28 + 56) - v26);
  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(a1, &v46 - v26, type metadata accessor for WorkoutPlan.Workout);
  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v51, v29, type metadata accessor for WorkoutPlan.Workout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v27, v17, type metadata accessor for WorkoutPlan.Workout);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v17, type metadata accessor for PacerWorkout);
        goto LABEL_27;
      }

      v31 = v50;
      outlined init with take of PacerWorkout(v29, v50, type metadata accessor for PacerWorkout);
      if (*v17 == *v31 && v17[1] == v31[1] && (specialized static WorkoutGoal.== infix(_:_:)((v17 + *(v48 + 24)), v31 + *(v48 + 24)) & 1) != 0 && (specialized static WorkoutGoal.== infix(_:_:)((v17 + *(v48 + 28)), v31 + *(v48 + 28)) & 1) != 0)
      {
        v32 = type metadata accessor for PacerWorkout;
        _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v31, type metadata accessor for PacerWorkout);
        v33 = v17;
LABEL_34:
        _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v33, v32);
LABEL_47:
        _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v27, type metadata accessor for WorkoutPlan.Workout);
        v34 = 1;
        return v34 & 1;
      }

      v42 = type metadata accessor for PacerWorkout;
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v31, type metadata accessor for PacerWorkout);
      v43 = v17;
      goto LABEL_36;
    }

    _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v27, v14, type metadata accessor for WorkoutPlan.Workout);
    v35 = *v14;
    v36 = v14[1];
    v37 = v14[2];
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      goto LABEL_27;
    }

    v38 = v29[1];
    v39 = v29[2];
    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit011SwimBikeRunB0V8ActivityO_Tt1g5(v35, *v29))
    {
      if (v37)
      {
        if (v39)
        {
          if (v36 != v38 || v37 != v39)
          {
            v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v41)
            {
              goto LABEL_47;
            }

LABEL_38:
            _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v27, type metadata accessor for WorkoutPlan.Workout);
            goto LABEL_39;
          }

LABEL_46:

          goto LABEL_47;
        }
      }

      else if (!v39)
      {

        swift_bridgeObjectRelease_n();
        goto LABEL_46;
      }
    }

    goto LABEL_38;
  }

  if (!EnumCaseMultiPayload)
  {
    _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v27, v23, type metadata accessor for WorkoutPlan.Workout);
    if (swift_getEnumCaseMultiPayload())
    {
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v23, type metadata accessor for SingleGoalWorkout);
LABEL_27:
      _s10WorkoutKit0A5Alert_pSgWOhTm_0(v27, &_s10WorkoutKit0A4PlanV0A0O_AEtMd, &_s10WorkoutKit0A4PlanV0A0O_AEtMR);
LABEL_39:
      v34 = 0;
      return v34 & 1;
    }

    v44 = v49;
    outlined init with take of PacerWorkout(v29, v49, type metadata accessor for SingleGoalWorkout);
    if (*v23 == *v44 && v23[1] == v44[1] && v23[2] == v44[2] && (specialized static WorkoutGoal.== infix(_:_:)((v23 + *(v47 + 28)), v44 + *(v47 + 28)) & 1) != 0)
    {
      v32 = type metadata accessor for SingleGoalWorkout;
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v44, type metadata accessor for SingleGoalWorkout);
      v33 = v23;
      goto LABEL_34;
    }

    v42 = type metadata accessor for SingleGoalWorkout;
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v44, type metadata accessor for SingleGoalWorkout);
    v43 = v23;
LABEL_36:
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v43, v42);
    goto LABEL_38;
  }

  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v27, v20, type metadata accessor for WorkoutPlan.Workout);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v20, type metadata accessor for CustomWorkout);
    goto LABEL_27;
  }

  outlined init with take of PacerWorkout(v29, v8, type metadata accessor for CustomWorkout);
  v34 = static CustomWorkout.== infix(_:_:)(v20, v8);
  _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v8, type metadata accessor for CustomWorkout);
  _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v20, type metadata accessor for CustomWorkout);
  _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v27, type metadata accessor for WorkoutPlan.Workout);
  return v34 & 1;
}

BOOL specialized static WorkoutPlan.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, "(!");
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - v15;
  if ((specialized static WorkoutPlan.Workout.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for WorkoutPlan(0);
  v18 = *(v17 + 20);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v48 = v8;
  v49 = v4;
  v50 = v17;
  v51 = v5;
  v19 = *(v17 + 24);
  v21 = *(a1 + v19);
  v20 = *(a1 + v19 + 8);
  v22 = *(a1 + v19 + 16);
  v23 = (a2 + v19);
  v24 = *v23;
  v25 = v23[1];
  v26 = v23[2];
  if (!v21)
  {
    v52 = v20;
    outlined copy of WorkoutPlan.Route?(0, v20, v22);
    if (!v24)
    {
      outlined copy of WorkoutPlan.Route?(0, v25, v26);
      outlined consume of WorkoutPlan.Route?(0, v52, v22);
      goto LABEL_12;
    }

    outlined copy of WorkoutPlan.Route?(v24, v25, v26);
    v31 = v52;
LABEL_10:
    outlined consume of WorkoutPlan.Route?(v21, v31, v22);
    outlined consume of WorkoutPlan.Route?(v24, v25, v26);
    return 0;
  }

  v56 = v21;
  v57 = v20;
  v58 = v22;
  if (!v24)
  {
    v31 = v20;
    outlined copy of WorkoutPlan.Route?(v21, v20, v22);
    outlined copy of WorkoutPlan.Route?(0, v25, v26);
    outlined copy of WorkoutPlan.Route?(v21, v31, v22);

    outlined consume of Data?(v31, v22);
    goto LABEL_10;
  }

  v53 = v24;
  v54 = v25;
  v55 = v26;
  v52 = v20;
  outlined copy of WorkoutPlan.Route?(v21, v20, v22);
  outlined copy of WorkoutPlan.Route?(v24, v25, v26);
  v27 = v52;
  outlined copy of WorkoutPlan.Route?(v21, v52, v22);
  v28 = specialized static WorkoutPlan.Route.== infix(_:_:)(&v56, &v53);
  v29 = v54;
  v47 = v55;

  outlined consume of Data?(v29, v47);
  v30 = v57;
  v47 = v58;

  outlined consume of Data?(v30, v47);
  outlined consume of WorkoutPlan.Route?(v21, v27, v22);
  if (!v28)
  {
    return 0;
  }

LABEL_12:
  v32 = v50;
  v33 = *(v50 + 28);
  v34 = *(v13 + 48);
  _s10Foundation4UUIDVSgWOcTm_0(a1 + v33, v16, &_s10Foundation4UUIDVSgMd, "(!");
  _s10Foundation4UUIDVSgWOcTm_0(a2 + v33, &v16[v34], &_s10Foundation4UUIDVSgMd, "(!");
  v35 = v51;
  v36 = *(v51 + 48);
  v37 = v49;
  if (v36(v16, 1, v49) != 1)
  {
    _s10Foundation4UUIDVSgWOcTm_0(v16, v12, &_s10Foundation4UUIDVSgMd, "(!");
    if (v36(&v16[v34], 1, v37) != 1)
    {
      v39 = &v16[v34];
      v40 = v48;
      (*(v35 + 32))(v48, v39, v37);
      lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v42 = *(v35 + 8);
      v42(v40, v37);
      v42(v12, v37);
      _s10WorkoutKit0A5Alert_pSgWOhTm_0(v16, &_s10Foundation4UUIDVSgMd, "(!");
      if ((v41 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_21;
    }

    (*(v35 + 8))(v12, v37);
LABEL_17:
    _s10WorkoutKit0A5Alert_pSgWOhTm_0(v16, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    return 0;
  }

  if (v36(&v16[v34], 1, v37) != 1)
  {
    goto LABEL_17;
  }

  _s10WorkoutKit0A5Alert_pSgWOhTm_0(v16, &_s10Foundation4UUIDVSgMd, "(!");
LABEL_21:
  v43 = *(v32 + 32);
  v44 = *(a1 + v43);
  v45 = *(a2 + v43);
  if (v44)
  {
    if (!v45)
    {
      return 0;
    }

    v46 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4UUIDV_Tt1g5(v44, v45);

    return (v46 & 1) != 0;
  }

  return !v45;
}

uint64_t _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of WorkoutPlan.Workout(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlan.Workout(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of PacerWorkout(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type WorkoutPlan.Route and conformance WorkoutPlan.Route()
{
  result = lazy protocol witness table cache variable for type WorkoutPlan.Route and conformance WorkoutPlan.Route;
  if (!lazy protocol witness table cache variable for type WorkoutPlan.Route and conformance WorkoutPlan.Route)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutPlan.Route and conformance WorkoutPlan.Route);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutPlan.SerializationFormat and conformance WorkoutPlan.SerializationFormat()
{
  result = lazy protocol witness table cache variable for type WorkoutPlan.SerializationFormat and conformance WorkoutPlan.SerializationFormat;
  if (!lazy protocol witness table cache variable for type WorkoutPlan.SerializationFormat and conformance WorkoutPlan.SerializationFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutPlan.SerializationFormat and conformance WorkoutPlan.SerializationFormat);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for WorkoutPlan.Route(uint64_t *a1, int a2)
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

uint64_t getEnumTagSinglePayload for WorkoutPlan.SerializationFormat(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutPlan.SerializationFormat(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4UUIDVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10WorkoutKit0A5Alert_pSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_WorkoutPlan?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = MEMORY[0x28211C320](_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t dispatch thunk of Decoder.decodeSingularDoubleField(value:)()
{
  return MEMORY[0x28217E320]();
}

{
  return MEMORY[0x28217E328]();
}

uint64_t dispatch thunk of Decoder.decodeSingularStringField(value:)()
{
  return MEMORY[0x28217E338]();
}

{
  return MEMORY[0x28217E340]();
}

uint64_t dispatch thunk of Decoder.decodeSingularUInt32Field(value:)()
{
  return MEMORY[0x28217E348]();
}

{
  return MEMORY[0x28217E350]();
}