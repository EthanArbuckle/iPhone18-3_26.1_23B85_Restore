uint64_t AccessibilityComponent.label.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessibilityComponent(0) + 20);

  return outlined init with copy of LocalizedStringResource?(v3, a1);
}

uint64_t AccessibilityComponent.label.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AccessibilityComponent(0) + 20);

  return outlined assign with take of LocalizedStringResource?(a1, v3);
}

uint64_t AccessibilityComponent.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessibilityComponent(0) + 24);

  return outlined init with copy of LocalizedStringResource?(v3, a1);
}

uint64_t AccessibilityComponent.value.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AccessibilityComponent(0) + 24);

  return outlined assign with take of LocalizedStringResource?(a1, v3);
}

uint64_t AccessibilityComponent.traitsRawValue.setter(uint64_t a1)
{
  result = type metadata accessor for AccessibilityComponent(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t AccessibilityComponent.customContent.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessibilityComponent(0) + 32));
}

uint64_t AccessibilityComponent.customContent.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessibilityComponent(0) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AccessibilityComponent.customRotorsRawValue.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessibilityComponent(0) + 36));
}

uint64_t AccessibilityComponent.customRotorsRawValue.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessibilityComponent(0) + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AccessibilityComponent.systemActions.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for AccessibilityComponent(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t AccessibilityComponent.systemActions.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for AccessibilityComponent(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t AccessibilityComponent.customActions.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessibilityComponent(0) + 44));
}

uint64_t AccessibilityComponent.customActions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessibilityComponent(0) + 44);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AccessibilityComponent.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for AccessibilityComponent(0);
  v3 = v2[5];
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(*(v4 - 8) + 56);
  v5(&a1[v3], 1, 1, v4);
  result = (v5)(&a1[v2[6]], 1, 1, v4);
  *&a1[v2[7]] = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *&a1[v2[8]] = MEMORY[0x1E69E7CC0];
  *&a1[v2[9]] = v7;
  *&a1[v2[10]] = 0;
  *&a1[v2[11]] = v7;
  return result;
}

int64_t specialized __AccessibilityComponent.init(from:)@<X0>(_OWORD *a1@<X8>)
{
  IsRoot = REAccessibilityComponentIsRoot();
  IsEnabled = REAccessibilityComponentIsEnabled();
  if (REAccessibilityComponentGetIdentifier())
  {
    v4 = String.init(cString:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  if (REAccessibilityComponentGetLabel())
  {
    v7 = String.init(cString:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  if (REAccessibilityComponentGetDescription())
  {
    v10 = String.init(cString:)();
    v39 = v11;
    v40 = v10;
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v12 = MEMORY[0x1C68F3280](0x6D6F747375435841, 0xEF746E65746E6F43);
  v13 = NSClassFromString(v12);

  if (!v13)
  {
    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  result = REAccessibilityComponentGetCustomContentCount();
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v16 = MEMORY[0x1E69E7CC0];
    if (result)
    {
      v32 = v9;
      v33 = v7;
      v34 = v6;
      v35 = v4;
      v36 = IsEnabled;
      v37 = IsRoot;
      v38 = a1;
      v46[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
      v17 = 0;
      v16 = v46[0];
      while (1)
      {
        v18 = REAccessibilityComponentGetCustomContentLabelAtIndex();
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = REAccessibilityComponentGetCustomContentValueAtIndex();
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        result = REAccessibilityComponentGetCustomContentImportanceAtIndex();
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v26 = result;
        v46[0] = v16;
        v28 = *(v16 + 16);
        v27 = *(v16 + 24);
        if (v28 >= v27 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          v16 = v46[0];
        }

        ++v17;
        *(v16 + 16) = v28 + 1;
        v29 = (v16 + 40 * v28);
        v29[4] = v19;
        v29[5] = v21;
        v29[6] = v23;
        v29[7] = v25;
        v29[8] = v26;
        if (v15 == v17)
        {
          a1 = v38;
          IsEnabled = v36;
          IsRoot = v37;
          v6 = v34;
          v4 = v35;
          v9 = v32;
          v7 = v33;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    LOBYTE(v42) = IsRoot;
    BYTE1(v42) = IsEnabled;
    *(&v42 + 1) = v4;
    *&v43 = v6;
    *(&v43 + 1) = v7;
    *&v44 = v9;
    *(&v44 + 1) = v40;
    *&v45 = v39;
    *(&v45 + 1) = v16;
    LOBYTE(v46[0]) = IsRoot;
    BYTE1(v46[0]) = IsEnabled;
    v46[1] = v4;
    v46[2] = v6;
    v46[3] = v7;
    v46[4] = v9;
    v46[5] = v40;
    v46[6] = v39;
    v46[7] = v16;
    outlined init with copy of __AccessibilityComponent(&v42, v41);
    result = outlined destroy of __AccessibilityComponent(v46);
    v30 = v43;
    *a1 = v42;
    a1[1] = v30;
    v31 = v45;
    a1[2] = v44;
    a1[3] = v31;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t specialized static AccessibilityComponent.RotorTypeInternal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for LocalizedStringResource();
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessibilityComponent.RotorTypeInternal(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v25 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22AccessibilityComponentV17RotorTypeInternalO_AEtMd, &_s17RealityFoundation22AccessibilityComponentV17RotorTypeInternalO_AEtMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v25 - v17;
  v20 = *(v19 + 56);
  outlined init with copy of AccessibilityComponent.CustomContent(a1, &v25 - v17, type metadata accessor for AccessibilityComponent.RotorTypeInternal);
  outlined init with copy of AccessibilityComponent.CustomContent(a2, &v18[v20], type metadata accessor for AccessibilityComponent.RotorTypeInternal);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of AccessibilityComponent.CustomContent(v18, v14, type metadata accessor for AccessibilityComponent.RotorTypeInternal);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v22 = *v14 == *&v18[v20];
      goto LABEL_6;
    }

LABEL_8:
    outlined destroy of BodyTrackingComponent?(v18, &_s17RealityFoundation22AccessibilityComponentV17RotorTypeInternalO_AEtMd, &_s17RealityFoundation22AccessibilityComponentV17RotorTypeInternalO_AEtMR);
    v22 = 0;
    return v22 & 1;
  }

  outlined init with copy of AccessibilityComponent.CustomContent(v18, v11, type metadata accessor for AccessibilityComponent.RotorTypeInternal);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v11, v26);
    goto LABEL_8;
  }

  v21 = v26;
  (*(v4 + 32))(v7, &v18[v20], v26);
  v22 = MEMORY[0x1C68F21E0](v11, v7);
  v23 = *(v4 + 8);
  v23(v7, v21);
  v23(v11, v21);
LABEL_6:
  outlined destroy of AccessibilityComponent.CustomContent(v18, type metadata accessor for AccessibilityComponent.RotorTypeInternal);
  return v22 & 1;
}

uint64_t outlined init with copy of LocalizedStringResource?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of AccessibilityComponent.CustomContent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of LocalizedStringResource?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions()
{
  result = lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions;
  if (!lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions;
  if (!lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions;
  if (!lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions;
  if (!lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions);
  }

  return result;
}

void type metadata completion function for AccessibilityComponent()
{
  type metadata accessor for LocalizedStringResource?(319, &lazy cache variable for type metadata for LocalizedStringResource?, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LocalizedStringResource?(319, &lazy cache variable for type metadata for [AccessibilityComponent.CustomContent], type metadata accessor for AccessibilityComponent.CustomContent, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LocalizedStringResource?(319, &lazy cache variable for type metadata for [AccessibilityComponent.RotorTypeInternal], type metadata accessor for AccessibilityComponent.RotorTypeInternal, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for LocalizedStringResource?(319, &lazy cache variable for type metadata for [LocalizedStringResource], MEMORY[0x1E6968E10], MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for LocalizedStringResource?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for AccessibilityComponent.CustomContent()
{
  type metadata accessor for LocalizedStringResource();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AXCustomContentImportance(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for AccessibilityComponent.RotorTypeInternal()
{
  result = type metadata accessor for LocalizedStringResource();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __AccessibilityComponent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for __AccessibilityComponent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocalizedStringResource();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of AccessibilityComponent.RotorTypeInternal(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AccessibilityComponent.CustomContent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AudioResource.Calibration.Kind.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1C68F4C10](a3 & 1);
  return MEMORY[0x1C68F4C50](v3);
}

Swift::Int AudioResource.Calibration.Kind.hashValue.getter(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1C68F4C10](a2 & 1);
  MEMORY[0x1C68F4C50](v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AudioResource.Calibration.Kind(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      v5 = *a1;
      v6 = *a2;
      if (v2 == v3)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    v8 = *a1;
    v9 = *a2;
    if (v2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t static AudioResource.Calibration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*a1 != *a2)
    {
      v4 = 0;
    }

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t AudioResource.Calibration.hash(into:)()
{
  if ((*v0 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  MEMORY[0x1C68F4C10](*(v0 + 8));
  return MEMORY[0x1C68F4C50](v1);
}

Swift::Int AudioResource.Calibration.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v1 = 0;
  }

  MEMORY[0x1C68F4C10](v2);
  MEMORY[0x1C68F4C50](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AudioResource.Calibration(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*a1 != *a2)
    {
      v4 = 0;
    }

    if (v4 == 1)
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      LOBYTE(v4) = 1;
    }

    if ((v4 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioResource.Calibration.Kind()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v1 = 0;
  }

  MEMORY[0x1C68F4C10](v2);
  MEMORY[0x1C68F4C50](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AudioResource.Calibration and conformance AudioResource.Calibration()
{
  result = lazy protocol witness table cache variable for type AudioResource.Calibration and conformance AudioResource.Calibration;
  if (!lazy protocol witness table cache variable for type AudioResource.Calibration and conformance AudioResource.Calibration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioResource.Calibration and conformance AudioResource.Calibration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioResource.Calibration.Kind and conformance AudioResource.Calibration.Kind()
{
  result = lazy protocol witness table cache variable for type AudioResource.Calibration.Kind and conformance AudioResource.Calibration.Kind;
  if (!lazy protocol witness table cache variable for type AudioResource.Calibration.Kind and conformance AudioResource.Calibration.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioResource.Calibration.Kind and conformance AudioResource.Calibration.Kind);
  }

  return result;
}

Swift::Int ShaderGraphMaterial.LoadError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t ShaderGraphMaterial.init(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[54] = a4;
  v5[55] = a5;
  v5[52] = a2;
  v5[53] = a3;
  v5[51] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMR);
  v5[56] = v6;
  v7 = *(v6 - 8);
  v5[57] = v7;
  v8 = *(v7 + 64) + 15;
  v5[58] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMR);
  v5[59] = v9;
  v10 = *(v9 - 8);
  v5[60] = v10;
  v11 = *(v10 + 64) + 15;
  v5[61] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial.init(named:from:), 0, 0);
}

uint64_t ShaderGraphMaterial.init(named:from:)()
{
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  v3 = *(v0 + 440);
  v27 = *(v0 + 448);
  v28 = *(v0 + 488);
  v4 = *(v0 + 424);
  v5 = *(v0 + 432);
  v6 = *(v0 + 416);
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v5;
  v7[5] = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in ShaderGraphMaterial.init(named:from:);
  *(v8 + 24) = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  v10 = swift_allocObject();
  _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGSgWOi0_(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMR);
  v11 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v12 = swift_allocObject();
  v13 = *(v0 + 96);
  *(v11 + 88) = *(v0 + 80);
  *(v11 + 104) = v13;
  *(v11 + 120) = *(v0 + 112);
  *(v11 + 130) = *(v0 + 122);
  v14 = *(v0 + 32);
  *(v11 + 24) = *(v0 + 16);
  *(v11 + 40) = v14;
  v15 = *(v0 + 64);
  *(v11 + 56) = *(v0 + 48);
  *(v12 + 16) = 0;
  *(v11 + 16) = v12;
  *(v11 + 72) = v15;
  *(v10 + 16) = v11;
  v16 = swift_allocObject();
  v16[2] = _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGIeghn_Iegg_AByxsAF_pGRi_zRi0_zlyAEIsegn_Iegg_TRTA;
  v16[3] = v8;
  v16[4] = v11;
  v16[5] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  outlined copy of Data._Representation(v5, v3);

  *(v10 + 24) = Future.init(_:)();
  v20 = specialized LoadRequest<A>.thenWaitForResourceSharing()();
  *(v0 + 496) = v20;

  *(v0 + 400) = v20;
  v21 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);

  MEMORY[0x1C68F2E40](v0 + 400, v9, v21);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v27);
  v22 = *(MEMORY[0x1E695BFB8] + 4);
  v23 = swift_task_alloc();
  *(v0 + 504) = v23;
  *v23 = v0;
  v23[1] = ShaderGraphMaterial.init(named:from:);
  v24 = *(v0 + 488);
  v25 = *(v0 + 472);

  return MEMORY[0x1EEDB5D38](v0 + 144, v25);
}

{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = ShaderGraphMaterial.init(named:from:);
  }

  else
  {
    v3 = ShaderGraphMaterial.init(named:from:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 360) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial.init(named:from:), v2, v1);
}

{
  v1 = v0[45];
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[36];

  v0[46] = static ShaderGraphMaterial.loadAsync(named:from:)(v4, v2, v3);

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial.init(named:from:), 0, 0);
}

{
  v1 = v0[44];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];
  v0[34] = v0[46];

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  v6 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  MEMORY[0x1C68F2E40](v0 + 34, v5, v6);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v7 = *(MEMORY[0x1E695BFB8] + 4);
  v8 = swift_task_alloc();
  v0[47] = v8;
  *v8 = v0;
  v8[1] = ShaderGraphMaterial.init(named:from:);
  v9 = v0[44];
  v10 = v0[42];

  return MEMORY[0x1EEDB5D38](v0 + 2, v10);
}

{
  v2 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = ShaderGraphMaterial.init(named:from:);
  }

  else
  {
    v3 = ShaderGraphMaterial.init(named:from:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v1;
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 249) = *(v0 + 121);
  v2 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v2;
  v3 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v3;
  v4 = _s17RealityFoundation19ShaderGraphMaterialVSgWOg((v0 + 144));
  v5 = *(v0 + 368);
  v7 = *(v0 + 344);
  v6 = *(v0 + 352);
  v8 = *(v0 + 336);
  if (v4 == 1)
  {
    type metadata accessor for CancellationError();
    _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    (*(v7 + 8))(v6, v8);
    v9 = *(v0 + 352);
    v10 = *(v0 + 328);
    v11 = *(v0 + 304);
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  else
  {
    v14 = *(v0 + 328);
    v15 = *(v0 + 304);
    v16 = *(v0 + 280);
    (*(v7 + 8))(*(v0 + 352), *(v0 + 336));

    v17 = *(v0 + 144);
    v18 = *(v0 + 160);
    v19 = *(v0 + 192);
    v16[2] = *(v0 + 176);
    v16[3] = v19;
    *v16 = v17;
    v16[1] = v18;
    v20 = *(v0 + 208);
    v21 = *(v0 + 224);
    v22 = *(v0 + 240);
    *(v16 + 105) = *(v0 + 249);
    v16[5] = v21;
    v16[6] = v22;
    v16[4] = v20;
    v23 = type metadata accessor for URL();
    (*(*(v23 - 8) + 8))(v15, v23);
  }

  v13 = *(v0 + 8);

  return v13();
}

{
  v1 = v0[46];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];

  (*(v3 + 8))(v2, v4);
  v5 = v0[48];
  v6 = v0[44];
  v7 = v0[41];
  v8 = v0[38];
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 8))(v8, v9);

  v10 = v0[1];

  return v10();
}

void closure #1 in ShaderGraphMaterial.init(named:from:)(uint64_t a1, uint64_t a2)
{

  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(swift_unownedRetainStrong() + 24);

  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  aBlock[4] = partial apply for implicit closure #2 in implicit closure #1 in closure #1 in closure #1 in static ShaderGraphMaterial.loadMaterialXAsync(_:data:);
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?, @guaranteed CFErrorRef?) -> ();
  aBlock[3] = &block_descriptor_169;
  v9 = _Block_copy(aBlock);

  String.utf8CString.getter();
  RIOEntityUsingMaterialCreateFromInMemoryDataBufferAsync();

  _Block_release(v9);
}

void partial apply for closure #1 in ShaderGraphMaterial.init(named:from:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  closure #1 in ShaderGraphMaterial.init(named:from:)(a1, a2);
}

uint64_t ShaderGraphMaterial.AsyncDestination.completion(_:_:)(uint64_t a1, void *a2, void (*a3)(__int128 *))
{
  if (!a1)
  {
    if (a2)
    {
      type metadata accessor for CFErrorRef(0);
      _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      v6 = swift_allocError();
      *v7 = a2;
    }

    else
    {
      lazy protocol witness table accessor for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError();
      v6 = swift_allocError();
      *v12 = 4;
    }

    *&v30 = v6;
    _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGWOi0_(&v30);
    v27 = v34;
    v28 = v35;
    v29[0] = v36[0];
    *(v29 + 10) = *(v36 + 10);
    v23 = v30;
    v24 = v31;
    v25 = v32;
    v26 = v33;
    v13 = a2;
    a3(&v23);
    goto LABEL_13;
  }

  *(&v38 + 1) = MEMORY[0x1E69E6B70];
  *&v37 = a1;
  outlined init with copy of Any(&v37, &v30);
  swift_dynamicCast();
  v4 = v23;
  __swift_destroy_boxed_opaque_existential_1(&v37);
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    swift_dynamicCastClassUnconditional();
LABEL_10:
    static ShaderGraphMaterial.unpackModelEntity(_:)(&v16);
    v14[4] = v20;
    v14[5] = v21;
    v15[0] = v22[0];
    *(v15 + 9) = *(v22 + 9);
    v14[0] = v16;
    v14[1] = v17;
    v14[2] = v18;
    v14[3] = v19;
    v32 = v18;
    v33 = v19;
    v30 = v16;
    v31 = v17;
    *(v36 + 9) = *(v22 + 9);
    v35 = v21;
    v36[0] = v22[0];
    v34 = v20;
    _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGWOi_(&v30);
    v27 = v34;
    v28 = v35;
    v29[0] = v36[0];
    *(v29 + 10) = *(v36 + 10);
    v23 = v30;
    v24 = v31;
    v25 = v32;
    v26 = v33;
    outlined init with copy of ShaderGraphMaterial(v14, &v37);
    a3(&v23);

    outlined destroy of ShaderGraphMaterial(v14);
LABEL_13:
    v41 = v27;
    v42 = v28;
    v43[0] = v29[0];
    *(v43 + 10) = *(v29 + 10);
    v37 = v23;
    v38 = v24;
    v39 = v25;
    v40 = v26;
    return outlined destroy of BodyTrackingComponent?(&v37, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    v9 = specialized static Entity.entityInfoType(_:)();
    if (v9)
    {
      v10 = (*(v9 + 232))();
      v11 = *(v10 + 16);

      MEMORY[0x1C68F9740](v11, 0);
      *(v10 + 16) = v23;
      MEMORY[0x1C68F9740](v4, v10);
    }

    else
    {
      makeEntity(for:)(v23);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGIeghn_Iegg_AByxsAF_pGRi_zRi0_zlyAEIsegn_Iegg_TRTA()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t ShaderGraphMaterial.init(named:from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[39] = a5;
  v6[40] = a6;
  v6[37] = a3;
  v6[38] = a4;
  v6[35] = a1;
  v6[36] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMR);
  v6[41] = v7;
  v8 = *(v7 - 8);
  v6[42] = v8;
  v9 = *(v8 + 64) + 15;
  v6[43] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMR);
  v6[44] = v10;
  v11 = *(v10 - 8);
  v6[45] = v11;
  v12 = *(v11 + 64) + 15;
  v6[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial.init(named:from:in:), 0, 0);
}

uint64_t ShaderGraphMaterial.init(named:from:in:)()
{
  type metadata accessor for MainActor();
  *(v0 + 376) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial.init(named:from:in:), v2, v1);
}

{
  v1 = v0[47];
  v2 = v0[39];
  v3 = v0[40];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[36];

  v0[48] = static ShaderGraphMaterial.loadAsync(named:from:in:)(v6, v5, v4, v2, v3);

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial.init(named:from:in:), 0, 0);
}

{
  v1 = v0[46];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];
  v0[34] = v0[48];

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  v6 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  MEMORY[0x1C68F2E40](v0 + 34, v5, v6);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v7 = *(MEMORY[0x1E695BFB8] + 4);
  v8 = swift_task_alloc();
  v0[49] = v8;
  *v8 = v0;
  v8[1] = ShaderGraphMaterial.init(named:from:in:);
  v9 = v0[46];
  v10 = v0[44];

  return MEMORY[0x1EEDB5D38](v0 + 2, v10);
}

{
  v2 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = ShaderGraphMaterial.init(named:from:in:);
  }

  else
  {
    v3 = ShaderGraphMaterial.init(named:from:in:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v1;
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 249) = *(v0 + 121);
  v2 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v2;
  v3 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v3;
  v4 = _s17RealityFoundation19ShaderGraphMaterialVSgWOg((v0 + 144));
  v5 = *(v0 + 384);
  v7 = *(v0 + 360);
  v6 = *(v0 + 368);
  v8 = *(v0 + 352);
  if (v4 == 1)
  {
    v9 = *(v0 + 320);
    type metadata accessor for CancellationError();
    _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    (*(v7 + 8))(v6, v8);
    v10 = *(v0 + 368);
    v11 = *(v0 + 344);
  }

  else
  {
    v13 = *(v0 + 344);
    v14 = *(v0 + 320);
    v15 = *(v0 + 280);
    (*(v7 + 8))(*(v0 + 368), *(v0 + 352));

    v16 = *(v0 + 144);
    v17 = *(v0 + 160);
    v18 = *(v0 + 192);
    v15[2] = *(v0 + 176);
    v15[3] = v18;
    *v15 = v16;
    v15[1] = v17;
    v19 = *(v0 + 208);
    v20 = *(v0 + 224);
    v21 = *(v0 + 240);
    *(v15 + 105) = *(v0 + 249);
    v15[5] = v20;
    v15[6] = v21;
    v15[4] = v19;
  }

  v12 = *(v0 + 8);

  return v12();
}

{
  v1 = v0[48];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[44];
  v5 = v0[40];

  (*(v3 + 8))(v2, v4);
  v6 = v0[50];
  v7 = v0[46];
  v8 = v0[43];

  v9 = v0[1];

  return v9();
}

uint64_t static ShaderGraphMaterial.loadAsync(named:from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = [objc_opt_self() mainBundle];
  }

  v11 = a5;
  v12 = specialized static __ServiceLocator.shared.getter();
  v13 = *(*(v12 + 168) + 16);
  swift_beginAccess();
  v14 = *(v12 + 24);
  swift_unownedRetainStrong();
  v15 = *(v14 + 32);

  v16 = v13;
  v17 = v15;

  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = v10;
  v18[6] = a1;
  v18[7] = a2;
  v18[8] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  v19 = swift_allocObject();
  _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGSgWOi0_(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMR);
  v20 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v21 = swift_allocObject();
  v22 = v34[5];
  *(v20 + 88) = v34[4];
  *(v20 + 104) = v22;
  *(v20 + 120) = v35[0];
  *(v20 + 130) = *(v35 + 10);
  v23 = v34[1];
  *(v20 + 24) = v34[0];
  *(v20 + 40) = v23;
  v24 = v34[3];
  *(v20 + 56) = v34[2];
  *(v21 + 16) = 0;
  *(v20 + 16) = v21;
  *(v20 + 72) = v24;
  *(v19 + 16) = v20;
  v25 = swift_allocObject();
  v25[2] = partial apply for closure #1 in static ShaderGraphMaterial.loadAsync(named:from:in:);
  v25[3] = v18;
  v25[4] = v20;
  v25[5] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = v16;
  v30 = v17;

  v31 = v10;

  *(v19 + 24) = Future.init(_:)();
  v32 = specialized LoadRequest<A>.thenWaitForResourceSharing()();

  return v32;
}

uint64_t ShaderGraphMaterial.init(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[37] = a3;
  v4[38] = a4;
  v4[35] = a1;
  v4[36] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMR);
  v4[39] = v5;
  v6 = *(v5 - 8);
  v4[40] = v6;
  v7 = *(v6 + 64) + 15;
  v4[41] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMR);
  v4[42] = v8;
  v9 = *(v8 - 8);
  v4[43] = v9;
  v10 = *(v9 + 64) + 15;
  v4[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial.init(named:from:), 0, 0);
}

uint64_t static ShaderGraphMaterial.loadAsync(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v34 = a1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = specialized static __ServiceLocator.shared.getter();
  v9 = *(*(v8 + 168) + 16);
  swift_beginAccess();
  v10 = *(v8 + 24);
  swift_unownedRetainStrong();
  v11 = *(v10 + 32);

  v12 = v9;
  v36 = v12;
  v13 = v11;

  (*(v5 + 16))(v7, a3, v4);
  v14 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  (*(v5 + 32))(v16 + v14, v7, v4);
  v17 = (v16 + v15);
  v18 = v35;
  *v17 = v34;
  v17[1] = v18;
  *(v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  v19 = swift_allocObject();
  _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGSgWOi0_(v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMR);
  v20 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v21 = swift_allocObject();
  v22 = v37[5];
  *(v20 + 88) = v37[4];
  *(v20 + 104) = v22;
  *(v20 + 120) = v38[0];
  *(v20 + 130) = *(v38 + 10);
  v23 = v37[1];
  *(v20 + 24) = v37[0];
  *(v20 + 40) = v23;
  v24 = v37[3];
  *(v20 + 56) = v37[2];
  *(v21 + 16) = 0;
  *(v20 + 16) = v21;
  *(v20 + 72) = v24;
  *(v19 + 16) = v20;
  v25 = swift_allocObject();
  v25[2] = partial apply for closure #1 in static ShaderGraphMaterial.loadAsync(named:from:);
  v25[3] = v16;
  v25[4] = v20;
  v25[5] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = v36;
  v30 = v13;

  *(v19 + 24) = Future.init(_:)();
  v31 = specialized LoadRequest<A>.thenWaitForResourceSharing()();

  return v31;
}

uint64_t ShaderGraphMaterial.init(materialXLabel:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[54] = a4;
  v5[55] = a5;
  v5[52] = a2;
  v5[53] = a3;
  v5[51] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCy0E10Foundation19ShaderGraphMaterialVGGMR);
  v5[56] = v6;
  v7 = *(v6 - 8);
  v5[57] = v7;
  v8 = *(v7 + 64) + 15;
  v5[58] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCy0F10Foundation19ShaderGraphMaterialVG_GMR);
  v5[59] = v9;
  v10 = *(v9 - 8);
  v5[60] = v10;
  v11 = *(v10 + 64) + 15;
  v5[61] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ShaderGraphMaterial.init(materialXLabel:data:), 0, 0);
}

uint64_t ShaderGraphMaterial.init(materialXLabel:data:)()
{
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  v3 = *(v0 + 440);
  v28 = *(v0 + 448);
  v29 = *(v0 + 488);
  v4 = *(v0 + 424);
  v5 = *(v0 + 432);
  v6 = *(v0 + 416);
  v7 = *(*(specialized static __ServiceLocator.shared.getter() + 168) + 16);
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v5;
  v8[4] = v3;
  v8[5] = v6;
  v8[6] = v4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  v9 = swift_allocObject();
  _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGSgWOi0_(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMR);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v11 = swift_allocObject();
  v12 = *(v0 + 96);
  *(v10 + 88) = *(v0 + 80);
  *(v10 + 104) = v12;
  *(v10 + 120) = *(v0 + 112);
  *(v10 + 130) = *(v0 + 122);
  v13 = *(v0 + 32);
  *(v10 + 24) = *(v0 + 16);
  *(v10 + 40) = v13;
  v14 = *(v0 + 64);
  *(v10 + 56) = *(v0 + 48);
  *(v11 + 16) = 0;
  *(v10 + 16) = v11;
  *(v10 + 72) = v14;
  *(v9 + 16) = v10;
  v15 = swift_allocObject();
  v15[2] = partial apply for closure #1 in static ShaderGraphMaterial.loadMaterialXAsync(_:data:);
  v15[3] = v8;
  v15[4] = v10;
  v15[5] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = v7;
  outlined copy of Data._Representation(v5, v3);

  *(v9 + 24) = Future.init(_:)();
  v20 = specialized LoadRequest<A>.thenWaitForResourceSharing()();
  *(v0 + 496) = v20;

  *(v0 + 400) = v20;
  v21 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);

  MEMORY[0x1C68F2E40](v0 + 400, v27, v21);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v28);
  v22 = *(MEMORY[0x1E695BFB8] + 4);
  v23 = swift_task_alloc();
  *(v0 + 504) = v23;
  *v23 = v0;
  v23[1] = ShaderGraphMaterial.init(materialXLabel:data:);
  v24 = *(v0 + 488);
  v25 = *(v0 + 472);

  return MEMORY[0x1EEDB5D38](v0 + 144, v25);
}

{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = ShaderGraphMaterial.init(materialXLabel:data:);
  }

  else
  {
    v3 = ShaderGraphMaterial.init(materialXLabel:data:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 224);
  *(v0 + 336) = *(v0 + 208);
  *(v0 + 352) = v1;
  *(v0 + 368) = *(v0 + 240);
  *(v0 + 377) = *(v0 + 249);
  v2 = *(v0 + 160);
  *(v0 + 272) = *(v0 + 144);
  *(v0 + 288) = v2;
  v3 = *(v0 + 192);
  *(v0 + 304) = *(v0 + 176);
  *(v0 + 320) = v3;
  v4 = _s17RealityFoundation19ShaderGraphMaterialVSgWOg((v0 + 272));
  v5 = *(v0 + 488);
  v6 = *(v0 + 496);
  v7 = *(v0 + 472);
  v8 = *(v0 + 480);
  if (v4 == 1)
  {
    v10 = *(v0 + 432);
    v9 = *(v0 + 440);
    type metadata accessor for CancellationError();
    _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    outlined consume of Data._Representation(v10, v9);
    (*(v8 + 8))(v5, v7);
    v11 = *(v0 + 488);
    v12 = *(v0 + 464);
  }

  else
  {
    v14 = *(v0 + 464);
    v16 = *(v0 + 432);
    v15 = *(v0 + 440);
    v17 = *(v0 + 408);
    (*(v8 + 8))(*(v0 + 488), *(v0 + 472));

    outlined consume of Data._Representation(v16, v15);
    v18 = *(v0 + 272);
    v19 = *(v0 + 288);
    v20 = *(v0 + 320);
    v17[2] = *(v0 + 304);
    v17[3] = v20;
    *v17 = v18;
    v17[1] = v19;
    v21 = *(v0 + 336);
    v22 = *(v0 + 352);
    v23 = *(v0 + 368);
    *(v17 + 105) = *(v0 + 377);
    v17[5] = v22;
    v17[6] = v23;
    v17[4] = v21;
  }

  v13 = *(v0 + 8);

  return v13();
}

{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[59];
  v4 = v0[60];
  v6 = v0[54];
  v5 = v0[55];

  outlined consume of Data._Representation(v6, v5);
  (*(v4 + 8))(v2, v3);
  v7 = v0[64];
  v8 = v0[61];
  v9 = v0[58];

  v10 = v0[1];

  return v10();
}

uint64_t closure #1 in static ShaderGraphMaterial.loadAsync(named:from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v29 = a7;
  v33 = a3;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v15 - 8);
  v16 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v30 = *(v19 - 8);
  v31 = v19;
  v20 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v23[2] = a4;
  v23[3] = a5;
  v24 = v29;
  v23[4] = a6;
  v23[5] = v24;
  v23[6] = a8;
  v23[7] = a1;
  v23[8] = a2;
  v23[9] = a9;
  aBlock[4] = partial apply for closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:in:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_120;
  v25 = _Block_copy(aBlock);

  v26 = a6;

  v27 = a9;
  static DispatchQoS.unspecified.getter();
  v34 = MEMORY[0x1E69E7CC0];
  _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v22, v18, v25);
  _Block_release(v25);
  (*(v32 + 8))(v18, v15);
  (*(v30 + 8))(v22, v31);
}

uint64_t closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:in:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v78 = a8;
  v86 = a7;
  v87 = a6;
  v88 = a4;
  v89 = a5;
  v77 = type metadata accessor for DispatchWorkItemFlags();
  v76 = *(v77 - 8);
  v11 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DispatchQoS();
  v73 = *(v75 - 8);
  v13 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v72 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_SStSgMd, _s10Foundation3URLV_SStSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v82 = &v70 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_SStMd, &_s10Foundation3URLV_SStMR);
  v80 = *(v18 - 8);
  v81 = v18;
  v19 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v71 = &v70 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v83 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v70 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v70 - v28;
  v30 = type metadata accessor for URL();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v79 = &v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v84 = &v70 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v70 - v37;
  type metadata accessor for LoadUtilities();
  v85 = a1;
  v39 = a1;
  v40 = a2;
  v41 = a3;
  static LoadUtilities.getURL(name:in:allowingExtensions:)(v39, a2, a3, &outlined read-only object #0 of one-time initialization function for usdExtensions, v29);
  v42 = *(v31 + 48);
  if (v42(v29, 1, v30) == 1)
  {
    v43 = v86;
    outlined destroy of BodyTrackingComponent?(v29, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    static LoadUtilities.getURLForMaterialX(name:in:)(v85, a2, v41, v26);
    if (v42(v26, 1, v30) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v26, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v44 = v83;
      static LoadUtilities.getURLForRealityFile(name:in:)(v85, a2, v41, v83);
      if (v42(v44, 1, v30) == 1)
      {
        outlined destroy of BodyTrackingComponent?(v44, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v45 = v82;
        static LoadUtilities.getURLForRealityFile(withScene:in:)(v85, v40, v41, v82);
        v46 = v81;
        v47 = (*(v80 + 48))(v45, 1, v81);
        v49 = v88;
        v48 = v89;
        v50 = v87;
        if (v47 == 1)
        {
          outlined destroy of BodyTrackingComponent?(v45, &_s10Foundation3URLV_SStSgMd, _s10Foundation3URLV_SStSgMR);
          v51 = swift_allocObject();
          *(v51 + 16) = v50;
          *(v51 + 24) = v43;
          v95 = partial apply for closure #1 in closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:);
          v96 = v51;
          aBlock = MEMORY[0x1E69E9820];
          v92 = 1107296256;
          v93 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          v94 = &block_descriptor_126;
          v52 = _Block_copy(&aBlock);

          v53 = v72;
          static DispatchQoS.unspecified.getter();
          v90 = MEMORY[0x1E69E7CC0];
          _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          v54 = v74;
          v55 = v77;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x1C68F3CA0](0, v53, v54, v52);
          _Block_release(v52);
          (*(v76 + 8))(v54, v55);
          (*(v73 + 8))(v53, v75);
        }

        else
        {
          v68 = v45;
          v69 = v71;
          outlined init with take of (URL, String)(v68, v71);
          static ShaderGraphMaterial.loadAsyncFromRealityFile(fileName:materialLabel:url:fulfill:)(*(v69 + *(v46 + 48)), *(v69 + *(v46 + 48) + 8), v49, v48, v69, v50, v43);
          return outlined destroy of BodyTrackingComponent?(v69, &_s10Foundation3URLV_SStMd, &_s10Foundation3URLV_SStMR);
        }
      }

      else
      {
        v67 = v79;
        (*(v31 + 32))(v79, v44, v30);
        static ShaderGraphMaterial.loadAsyncFromRealityFile(materialLabel:url:fulfill:)(v88, v89, v67, v87, v43);
        return (*(v31 + 8))(v67, v30);
      }
    }

    else
    {
      v57 = v84;
      (*(v31 + 32))(v84, v26, v30);
      v58 = v43;

      v59 = specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v60 = *(v59 + 24);
      v61 = *(swift_unownedRetainStrong() + 24);

      URL._bridgeToObjectiveC()(v62);
      v64 = v63;
      v65 = swift_allocObject();
      *(v65 + 16) = v87;
      *(v65 + 24) = v58;
      v95 = partial apply for implicit closure #2 in implicit closure #1 in closure #1 in closure #1 in static ShaderGraphMaterial.loadMaterialXAsync(_:data:);
      v96 = v65;
      aBlock = MEMORY[0x1E69E9820];
      v92 = 1107296256;
      v93 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?, @guaranteed CFErrorRef?) -> ();
      v94 = &block_descriptor_133_1;
      v66 = _Block_copy(&aBlock);

      String.utf8CString.getter();
      RIOEntityUsingMaterialCreateFromMtlxURLAsync();

      _Block_release(v66);

      return (*(v31 + 8))(v57, v30);
    }
  }

  else
  {
    (*(v31 + 32))(v38, v29, v30);
    static ShaderGraphMaterial.loadAsyncFromUSD(primPath:url:fulfill:)(v88, v89, v38, v87, v86);
    return (*(v31 + 8))(v38, v30);
  }
}

void static ShaderGraphMaterial.loadAsyncFromUSD(primPath:url:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v13 = *(v12 + 24);
  swift_unownedRetainStrong();
  v14 = *(v13 + 32);

  v15 = v14;

  v16 = specialized static ShaderGraphMaterial.createInMemoryMaterialLoadingImportSession(primPath:url:)(a1, a2);
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v15;
  v17[4] = a4;
  v17[5] = a5;
  aBlock[4] = partial apply for closure #1 in static ShaderGraphMaterial.loadAsyncFromUSD(primPath:url:fulfill:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_95;
  v18 = _Block_copy(aBlock);
  v19 = v15;
  v20 = v16;

  RIOImportSessionSetSceneUpdatePassCompletion();
  _Block_release(v18);
  RIOImportSessionUpdate();
}

void static ShaderGraphMaterial.loadAsyncFromRealityFile(materialLabel:url:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a4;
  v66 = a5;
  v64 = a2;
  v63 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v69 = *(v5 - 8);
  v70 = v5;
  v6 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v16 + 120, &aBlock);
  v17 = v77;
  v18 = v78;
  __swift_project_boxed_opaque_existential_1(&aBlock, v77);
  v19 = *(v18 + 4);

  v20 = v19(v17, v18);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  swift_beginAccess();
  v21 = *(v16 + 24);
  swift_unownedRetainStrong();
  v22 = *(v21 + 32);

  v23 = *(*(v16 + 168) + 16);
  *v15 = v23;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if ((URL.isFileURL.getter() & 1) == 0)
  {
    v32 = swift_allocObject();
    v33 = v66;
    *(v32 + 16) = v65;
    *(v32 + 24) = v33;
    v78 = partial apply for closure #1 in closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:);
    v79 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v34 = &block_descriptor_65_0;
LABEL_9:
    v76 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v77 = v34;
    v37 = _Block_copy(&aBlock);

    v38 = v22;
    v39 = v68;
    static DispatchQoS.unspecified.getter();
    v73 = MEMORY[0x1E69E7CC0];
    _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v40 = v24;
    v41 = v67;
    v42 = v70;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v39, v41, v37);
    _Block_release(v37);

    (*(v69 + 8))(v41, v42);
    (*(v71 + 8))(v39, v72);

    return;
  }

  URL._bridgeToObjectiveC()(v25);
  v27 = v26;
  v28 = RERealityFileMountFileAtURL();

  if (!v28)
  {
    v35 = swift_allocObject();
    v36 = v66;
    *(v35 + 16) = v65;
    *(v35 + 24) = v36;
    v78 = partial apply for closure #2 in static ShaderGraphMaterial.loadAsyncFromRealityFile(materialLabel:url:fulfill:);
    v79 = v35;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v34 = &block_descriptor_71_0;
    goto LABEL_9;
  }

  String.utf8CString.getter();
  AssetDescriptorFromLabel = RERealityFileCreateAssetDescriptorFromLabel();

  v62 = v22;
  v61 = v20;
  if (AssetDescriptorFromLabel)
  {
    v64 = v28;
    v30 = REAssetHandleCreateWithAssetDescriptor();
    type metadata accessor for NSObject();
    v31 = static NSObject.== infix(_:_:)();
    v60 = v24;
    if (v31)
    {
      REAssetHandleLoadNow();
    }

    else
    {
      REAssetHandleLoadNowFromOtherQueue();
    }

    v51 = swift_allocObject();
    v52 = v65;
    v53 = v66;
    v51[2] = v30;
    v51[3] = v52;
    v51[4] = v53;
    v78 = partial apply for closure #4 in static ShaderGraphMaterial.loadAsyncFromRealityFile(materialLabel:url:fulfill:);
    v79 = v51;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v76 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v77 = &block_descriptor_83_2;
    v54 = _Block_copy(&aBlock);

    v55 = v68;
    static DispatchQoS.unspecified.getter();
    v73 = MEMORY[0x1E69E7CC0];
    _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v56 = v67;
    v57 = v70;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v58 = v62;
    MEMORY[0x1C68F3CA0](0, v55, v56, v54);
    _Block_release(v54);
    (*(v69 + 8))(v56, v57);
    (*(v71 + 8))(v55, v72);

    RERelease();
    RERealityFileUnmount();
  }

  else
  {
    v43 = swift_allocObject();
    v44 = v66;
    *(v43 + 16) = v65;
    *(v43 + 24) = v44;
    v78 = partial apply for closure #3 in static ShaderGraphMaterial.loadAsyncFromRealityFile(materialLabel:url:fulfill:);
    v79 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v76 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v77 = &block_descriptor_77_0;
    v45 = _Block_copy(&aBlock);

    v46 = v68;
    static DispatchQoS.unspecified.getter();
    v73 = MEMORY[0x1E69E7CC0];
    _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v47 = v24;
    v48 = v67;
    v49 = v70;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v50 = v62;
    MEMORY[0x1C68F3CA0](0, v46, v48, v45);
    _Block_release(v45);
    (*(v69 + 8))(v48, v49);
    (*(v71 + 8))(v46, v72);

    RERealityFileUnmount();
  }
}

void static ShaderGraphMaterial.loadAsyncFromRealityFile(fileName:materialLabel:url:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v70 = a6;
  v71 = a7;
  v69 = a4;
  v68 = a3;
  v67 = a2;
  v66 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v74 = *(v7 - 8);
  v75 = v7;
  v8 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v76 = *(v10 - 8);
  v77 = v10;
  v11 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v18 + 120, &aBlock);
  v19 = v82;
  v20 = v83;
  __swift_project_boxed_opaque_existential_1(&aBlock, v82);
  v21 = *(v20 + 4);

  v22 = v21(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  swift_beginAccess();
  v23 = *(v18 + 24);
  swift_unownedRetainStrong();
  v24 = *(v23 + 32);

  v25 = *(*(v18 + 168) + 16);
  *v17 = v25;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if ((URL.isFileURL.getter() & 1) == 0)
  {
    v34 = swift_allocObject();
    v35 = v71;
    *(v34 + 16) = v70;
    *(v34 + 24) = v35;
    v83 = partial apply for closure #1 in closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:);
    v84 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v80 = 1107296256;
    v36 = &block_descriptor_139;
LABEL_9:
    v81 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v82 = v36;
    v39 = _Block_copy(&aBlock);

    v40 = v73;
    static DispatchQoS.unspecified.getter();
    v78 = MEMORY[0x1E69E7CC0];
    _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    v41 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v42 = v72;
    v43 = v75;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v40, v42, v39);
    _Block_release(v39);

    (*(v74 + 8))(v42, v43);
    (*(v76 + 8))(v40, v77);

    return;
  }

  URL._bridgeToObjectiveC()(v27);
  v29 = v28;
  v30 = RERealityFileMountFileAtURL();

  if (!v30)
  {
    v37 = swift_allocObject();
    v38 = v71;
    *(v37 + 16) = v70;
    *(v37 + 24) = v38;
    v83 = partial apply for closure #1 in closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:);
    v84 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v80 = 1107296256;
    v36 = &block_descriptor_145;
    goto LABEL_9;
  }

  aBlock = v66;
  v80 = v67;

  MEMORY[0x1C68F3410](58, 0xE100000000000000);

  MEMORY[0x1C68F3410](v68, v69);

  String.utf8CString.getter();

  AssetDescriptorFromLabel = RERealityFileCreateAssetDescriptorFromLabel();

  v65 = v26;
  if (AssetDescriptorFromLabel)
  {
    v32 = REAssetHandleCreateWithAssetDescriptor();
    RERelease();
    type metadata accessor for NSObject();
    v33 = static NSObject.== infix(_:_:)();
    v64 = v22;
    if (v33)
    {
      REAssetHandleLoadNow();
    }

    else
    {
      REAssetHandleLoadNowFromOtherQueue();
    }

    v47 = swift_allocObject();
    v48 = v70;
    v49 = v71;
    v47[2] = v32;
    v47[3] = v48;
    v47[4] = v49;
    v83 = partial apply for closure #4 in static ShaderGraphMaterial.loadAsyncFromRealityFile(fileName:materialLabel:url:fulfill:);
    v84 = v47;
    aBlock = MEMORY[0x1E69E9820];
    v80 = 1107296256;
    v50 = &block_descriptor_163;
LABEL_18:
    v81 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v82 = v50;
    v60 = _Block_copy(&aBlock);

    v61 = v73;
    static DispatchQoS.unspecified.getter();
    v78 = MEMORY[0x1E69E7CC0];
    _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v62 = v72;
    v63 = v75;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v61, v62, v60);
    _Block_release(v60);
    (*(v74 + 8))(v62, v63);
    (*(v76 + 8))(v61, v77);

    goto LABEL_19;
  }

  String.utf8CString.getter();
  v44 = RERealityFileCreateAssetDescriptorFromLabel();

  if (v44)
  {
    v45 = REAssetHandleCreateWithAssetDescriptor();
    RERelease();
    type metadata accessor for NSObject();
    v46 = static NSObject.== infix(_:_:)();
    v64 = v22;
    if (v46)
    {
      REAssetHandleLoadNow();
    }

    else
    {
      REAssetHandleLoadNowFromOtherQueue();
    }

    v57 = swift_allocObject();
    v58 = v70;
    v59 = v71;
    v57[2] = v45;
    v57[3] = v58;
    v57[4] = v59;
    v83 = partial apply for closure #4 in static ShaderGraphMaterial.loadAsyncFromRealityFile(fileName:materialLabel:url:fulfill:);
    v84 = v57;
    aBlock = MEMORY[0x1E69E9820];
    v80 = 1107296256;
    v50 = &block_descriptor_157_0;
    goto LABEL_18;
  }

  v51 = swift_allocObject();
  v52 = v71;
  *(v51 + 16) = v70;
  *(v51 + 24) = v52;
  v83 = partial apply for closure #5 in static ShaderGraphMaterial.loadAsyncFromRealityFile(fileName:materialLabel:url:fulfill:);
  v84 = v51;
  aBlock = MEMORY[0x1E69E9820];
  v80 = 1107296256;
  v81 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v82 = &block_descriptor_151;
  v53 = _Block_copy(&aBlock);

  v71 = v30;
  v54 = v73;
  static DispatchQoS.unspecified.getter();
  v78 = MEMORY[0x1E69E7CC0];
  _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v55 = v72;
  v56 = v75;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v54, v55, v53);
  _Block_release(v53);
  (*(v74 + 8))(v55, v56);
  (*(v76 + 8))(v54, v77);

LABEL_19:
  RERealityFileUnmount();
}

uint64_t closure #1 in static ShaderGraphMaterial.loadAsync(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v37 = a6;
  v38 = a7;
  v35 = a5;
  v36 = a2;
  v43 = a3;
  v34 = a1;
  v40 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v40 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a4, v14, v17);
  v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v20 = (v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v15 + 32))(v22 + v19, v18, v14);
  v23 = (v22 + v20);
  v24 = v34;
  v25 = v36;
  v26 = v37;
  *v23 = v35;
  v23[1] = v26;
  v27 = (v22 + v21);
  *v27 = v24;
  v27[1] = v25;
  v28 = v38;
  *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = v38;
  aBlock[4] = partial apply for closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_47_1;
  v29 = _Block_copy(aBlock);

  v30 = v28;
  static DispatchQoS.unspecified.getter();
  v44 = MEMORY[0x1E69E7CC0];
  _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v31 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v13, v10, v29);
  _Block_release(v29);
  (*(v42 + 8))(v10, v31);
  (*(v39 + 8))(v13, v41);
}

void closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a6;
  v39 = a2;
  v40 = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v36 = *(v13 - 8);
  v14 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = URL.pathExtension.getter();
  v19 = v17;
  if (v18 != 0x7974696C616572 || v17 != 0xE700000000000000)
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((v20 & 1) == 0)
    {
      v35 = a5;
      aBlock = v18;
      v43 = v19;
      MEMORY[0x1EEE9AC00](v20);
      *(&v35 - 2) = &aBlock;
      if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), (&v35 - 4), &outlined read-only object #0 of one-time initialization function for usdExtensions))
      {

        static ShaderGraphMaterial.loadAsyncFromUSD(primPath:url:fulfill:)(v39, v40, a1, a4, v35);
        return;
      }

      v23 = v35;
      if (v18 == 2020373613 && v19 == 0xE400000000000000)
      {
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v24 & 1) == 0)
        {
          v33 = swift_allocObject();
          *(v33 + 16) = a4;
          *(v33 + 24) = v23;
          v46 = partial apply for closure #1 in closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:);
          v47 = v33;
          aBlock = MEMORY[0x1E69E9820];
          v43 = 1107296256;
          v44 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          v45 = &block_descriptor_53_0;
          v34 = _Block_copy(&aBlock);

          static DispatchQoS.unspecified.getter();
          v41 = MEMORY[0x1E69E7CC0];
          _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x1C68F3CA0](0, v16, v12, v34);
          _Block_release(v34);
          (*(v37 + 8))(v12, v9);
          (*(v36 + 8))(v16, v13);

          return;
        }
      }

      v25 = specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v26 = *(v25 + 24);
      v27 = *(swift_unownedRetainStrong() + 24);

      URL._bridgeToObjectiveC()(v28);
      v30 = v29;
      v31 = swift_allocObject();
      *(v31 + 16) = a4;
      *(v31 + 24) = v23;
      v46 = partial apply for implicit closure #2 in implicit closure #1 in static ShaderGraphMaterial.loadAsyncFromMaterialX(materialLabel:url:fulfill:);
      v47 = v31;
      aBlock = MEMORY[0x1E69E9820];
      v43 = 1107296256;
      v44 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?, @guaranteed CFErrorRef?) -> ();
      v45 = &block_descriptor_59_0;
      v32 = _Block_copy(&aBlock);

      String.utf8CString.getter();
      RIOEntityUsingMaterialCreateFromMtlxURLAsync();

      _Block_release(v32);

      return;
    }
  }

  v21 = v39;
  v22 = v40;

  static ShaderGraphMaterial.loadAsyncFromRealityFile(materialLabel:url:fulfill:)(v21, v22, a1, a4, a5);
}

uint64_t closure #1 in closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:in:)(void (*a1)(__int128 *), uint64_t a2, char a3)
{
  lazy protocol witness table accessor for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError();
  v5 = swift_allocError();
  *v6 = a3;
  *&v15[0] = v5;
  _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGWOi0_(v15);
  v12 = v15[4];
  v13 = v15[5];
  v14[0] = v16[0];
  *(v14 + 10) = *(v16 + 10);
  v8 = v15[0];
  v9 = v15[1];
  v10 = v15[2];
  v11 = v15[3];
  a1(&v8);
  v17[4] = v12;
  v17[5] = v13;
  v18[0] = v14[0];
  *(v18 + 10) = *(v14 + 10);
  v17[0] = v8;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  return outlined destroy of BodyTrackingComponent?(v17, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
}

uint64_t static ShaderGraphMaterial.transferToShaderGraphMaterial(coreAsset:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (REAssetHandleAssetType() != 2 || REMaterialAssetGetType() != 7)
  {
    _s17RealityFoundation19ShaderGraphMaterialVSgWOi0_(&v14);
    goto LABEL_7;
  }

  v4 = REMaterialParameterBlockValueCreate();
  v5 = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(a1);
  if (v5)
  {
    v6 = v5;
    swift_beginAccess();
    v7 = *(v6 + 16);
    ByteSizeOfSGUniforms = REMaterialAssetGetByteSizeOfSGUniforms();
    if ((ByteSizeOfSGUniforms & 0x8000000000000000) == 0)
    {
      *&v14 = v6;
      *(&v14 + 1) = MEMORY[0x1E69E7CC0];
      LOBYTE(v15) = 0;
      *(&v15 + 1) = 0;
      *v16 = v4;
      memset(&v16[8], 0, 32);
      *&v16[40] = xmmword_1C18A9570;
      *&v16[56] = ByteSizeOfSGUniforms;
      *v17 = 0;
      *&v17[8] = 257;
      *&v17[16] = 0;
      v17[24] = 1;
      destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(&v14, v9);
LABEL_7:
      v10 = *&v16[48];
      a2[4] = *&v16[32];
      a2[5] = v10;
      a2[6] = *v17;
      *(a2 + 105) = *&v17[9];
      v11 = v15;
      *a2 = v14;
      a2[1] = v11;
      v12 = *&v16[16];
      a2[2] = *v16;
      a2[3] = v12;
      return RERelease();
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #4 in static ShaderGraphMaterial.loadAsyncFromRealityFile(materialLabel:url:fulfill:)(uint64_t a1, void (*a2)(__int128 *))
{
  static ShaderGraphMaterial.transferToShaderGraphMaterial(coreAsset:)(a1, &v24);
  v35 = v28;
  v36 = v29;
  v37[0] = v30[0];
  *(v37 + 9) = *(v30 + 9);
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = v27;
  if (_s17RealityFoundation19ShaderGraphMaterialVSgWOg(&v31) == 1)
  {
    lazy protocol witness table accessor for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError();
    v3 = swift_allocError();
    *v4 = 0;
    *&v15 = v3;
    _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGWOi0_(&v15);
    v12 = v19;
    v13 = v20;
    v14[0] = v21[0];
    *(v14 + 10) = *(v21 + 10);
    v8 = v15;
    v9 = v16;
    v10 = v17;
    v11 = v18;
    a2(&v8);
  }

  else
  {
    v19 = v35;
    v20 = v36;
    v21[0] = v37[0];
    *(v21 + 9) = *(v37 + 9);
    v15 = v31;
    v16 = v32;
    v17 = v33;
    v18 = v34;
    _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGWOi_(&v15);
    v12 = v19;
    v13 = v20;
    v14[0] = v21[0];
    *(v14 + 10) = *(v21 + 10);
    v8 = v15;
    v9 = v16;
    v10 = v17;
    v11 = v18;
    v6[2] = v26;
    v6[3] = v27;
    v6[0] = v24;
    v6[1] = v25;
    *&v7[9] = *(v30 + 9);
    v6[5] = v29;
    *v7 = v30[0];
    v6[4] = v28;
    outlined init with copy of ShaderGraphMaterial(v6, v22);
    a2(&v8);
    outlined destroy of BodyTrackingComponent?(&v24, &_s17RealityFoundation19ShaderGraphMaterialVSgMd, &_s17RealityFoundation19ShaderGraphMaterialVSgMR);
  }

  v22[4] = v12;
  v22[5] = v13;
  v23[0] = v14[0];
  *(v23 + 10) = *(v14 + 10);
  v22[0] = v8;
  v22[1] = v9;
  v22[2] = v10;
  v22[3] = v11;
  return outlined destroy of BodyTrackingComponent?(v22, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
}

uint64_t static ShaderGraphMaterial.unpackModelEntity(_:)@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for ModelEntity();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + 16);

    Component = REEntityGetComponent();
    if (Component && (v13 = Component, result = static ModelComponent.__fromCore(_:borrowStrongReference:)(&v13, 0, &v16), (v6 = v16) != 0))
    {
      if (*(v17 + 16))
      {
        outlined init with copy of __REAssetService(v17 + 32, v14);
        outlined consume of ModelComponent?(v6);
        outlined init with take of ForceEffectBase(v14, v18);
        outlined init with copy of __REAssetService(v18, &v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_1(v18);

          v7 = v14[5];
          a1[4] = v14[4];
          a1[5] = v7;
          a1[6] = v15[0];
          *(a1 + 105) = *(v15 + 9);
          v8 = v14[1];
          *a1 = v14[0];
          a1[1] = v8;
          v9 = v14[3];
          a1[2] = v14[2];
          a1[3] = v9;
        }

        else
        {
          lazy protocol witness table accessor for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError();
          swift_allocError();
          *v12 = 0;
          swift_willThrow();

          return __swift_destroy_boxed_opaque_existential_1(v18);
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      outlined consume of ModelComponent?(0);
      lazy protocol witness table accessor for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError();
      swift_allocError();
      *v11 = 1;
      swift_willThrow();
    }
  }

  else
  {
    lazy protocol witness table accessor for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError();
    swift_allocError();
    *v10 = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t closure #1 in static ShaderGraphMaterial.loadAsyncFromUSD(primPath:url:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  RootEntity = RIOImportSessionGetRootEntity();
  if (!RootEntity)
  {
    lazy protocol witness table accessor for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError();
    v19 = swift_allocError();
    *v20 = 4;
    swift_willThrow();
LABEL_6:
    v22 = swift_allocObject();
    v22[2] = a3;
    v22[3] = a4;
    v22[4] = v19;
    *&v41 = partial apply for closure #2 in closure #1 in static ShaderGraphMaterial.loadAsyncFromUSD(primPath:url:fulfill:);
    *(&v41 + 1) = v22;
    *&v39 = MEMORY[0x1E69E9820];
    *(&v39 + 1) = 1107296256;
    *&v40 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v40 + 1) = &block_descriptor_101;
    v23 = _Block_copy(&v39);

    v24 = v19;
    static DispatchQoS.unspecified.getter();
    *&v37[0] = MEMORY[0x1E69E7CC0];
    _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v14, v10, v23);
    _Block_release(v23);

    (*(v34 + 8))(v10, v7);
    (*(v32 + 8))(v14, v33);
    goto LABEL_7;
  }

  v16 = RootEntity;
  type metadata accessor for Entity();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  MEMORY[0x1C68F9740](v16, v17);
  *&v39 = v17;
  v18 = *(v17 + 16);
  if (!REEntityGetChildCount())
  {
    lazy protocol witness table accessor for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError();
    v19 = swift_allocError();
    *v21 = 4;
    swift_willThrow();

    goto LABEL_6;
  }

  Entity.ChildCollection.subscript.getter(0);
  static ShaderGraphMaterial.unpackModelEntity(_:)(v37);

  v43 = v37[4];
  v44 = v37[5];
  v45[0] = v38[0];
  *(v45 + 9) = *(v38 + 9);
  v39 = v37[0];
  v40 = v37[1];
  v41 = v37[2];
  v42 = v37[3];
  v26 = swift_allocObject();
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;
  v27 = v44;
  *(v26 + 96) = v43;
  *(v26 + 112) = v27;
  *(v26 + 128) = v45[0];
  *(v26 + 137) = *(v45 + 9);
  v28 = v40;
  *(v26 + 32) = v39;
  *(v26 + 48) = v28;
  v29 = v42;
  *(v26 + 64) = v41;
  *(v26 + 80) = v29;
  v36[4] = partial apply for closure #1 in closure #1 in static ShaderGraphMaterial.loadAsyncFromUSD(primPath:url:fulfill:);
  v36[5] = v26;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 1107296256;
  v36[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v36[3] = &block_descriptor_107;
  v30 = _Block_copy(v36);

  outlined init with copy of ShaderGraphMaterial(&v39, v37);
  static DispatchQoS.unspecified.getter();
  *&v37[0] = MEMORY[0x1E69E7CC0];
  _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v14, v10, v30);

  _Block_release(v30);
  outlined destroy of ShaderGraphMaterial(&v39);
  (*(v34 + 8))(v10, v7);
  (*(v32 + 8))(v14, v33);
LABEL_7:

  return RIOImportSessionSetSceneUpdatePassCompletion();
}

uint64_t closure #1 in closure #1 in static ShaderGraphMaterial.loadAsyncFromUSD(primPath:url:fulfill:)(void (*a1)(__int128 *), uint64_t a2, __int128 *a3)
{
  v5 = a3[5];
  v20 = a3[4];
  v21 = v5;
  v22[0] = a3[6];
  *(v22 + 9) = *(a3 + 105);
  v6 = a3[1];
  v16 = *a3;
  v17 = v6;
  v7 = a3[3];
  v18 = a3[2];
  v19 = v7;
  _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGWOi_(&v16);
  v13 = v20;
  v14 = v21;
  v15[0] = v22[0];
  *(v15 + 10) = *(v22 + 10);
  v9 = v16;
  v10 = v17;
  v11 = v18;
  v12 = v19;
  outlined init with copy of ShaderGraphMaterial(a3, v23);
  a1(&v9);
  v23[4] = v13;
  v23[5] = v14;
  v24[0] = v15[0];
  *(v24 + 10) = *(v15 + 10);
  v23[0] = v9;
  v23[1] = v10;
  v23[2] = v11;
  v23[3] = v12;
  return outlined destroy of BodyTrackingComponent?(v23, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
}

uint64_t closure #2 in closure #1 in static ShaderGraphMaterial.loadAsyncFromUSD(primPath:url:fulfill:)(void (*a1)(__int128 *), uint64_t a2, void *a3)
{
  *&v14[0] = a3;
  _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGWOi0_(v14);
  v11 = v14[4];
  v12 = v14[5];
  v13[0] = v15[0];
  *(v13 + 10) = *(v15 + 10);
  v7 = v14[0];
  v8 = v14[1];
  v9 = v14[2];
  v10 = v14[3];
  v5 = a3;
  a1(&v7);
  v16[4] = v11;
  v16[5] = v12;
  v17[0] = v13[0];
  *(v17 + 10) = *(v13 + 10);
  v16[0] = v7;
  v16[1] = v8;
  v16[2] = v9;
  v16[3] = v10;
  return outlined destroy of BodyTrackingComponent?(v16, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
}

uint64_t closure #1 in static ShaderGraphMaterial.loadMaterialXAsync(_:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a3;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v13 - 8);
  v14 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v17 = *(v24 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a4;
  v21[5] = a5;
  v21[6] = a6;
  v21[7] = a7;
  aBlock[4] = partial apply for closure #1 in closure #1 in static ShaderGraphMaterial.loadMaterialXAsync(_:data:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_44;
  v22 = _Block_copy(aBlock);

  outlined copy of Data._Representation(a4, a5);

  static DispatchQoS.unspecified.getter();
  v27 = MEMORY[0x1E69E7CC0];
  _sS2cEs5ErrorsWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v20, v16, v22);
  _Block_release(v22);
  (*(v25 + 8))(v16, v13);
  (*(v17 + 8))(v20, v24);
}

void closure #1 in closure #1 in static ShaderGraphMaterial.loadMaterialXAsync(_:data:)(uint64_t a1, uint64_t a2)
{

  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(swift_unownedRetainStrong() + 24);

  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  aBlock[4] = partial apply for implicit closure #2 in implicit closure #1 in closure #1 in closure #1 in static ShaderGraphMaterial.loadMaterialXAsync(_:data:);
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?, @guaranteed CFErrorRef?) -> ();
  aBlock[3] = &block_descriptor_34_2;
  v9 = _Block_copy(aBlock);

  String.utf8CString.getter();
  RIOEntityUsingMaterialCreateFromInMemoryMtlxDataBufferAsync();

  _Block_release(v9);
}

uint64_t ShaderGraphMaterial.addToLoadRequest(_:)(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(a1 + 16);
  return REAssetLoadRequestAddAsset();
}

unint64_t lazy protocol witness table accessor for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError()
{
  result = lazy protocol witness table cache variable for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError;
  if (!lazy protocol witness table cache variable for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError;
  if (!lazy protocol witness table cache variable for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError);
  }

  return result;
}

void partial apply for closure #1 in closure #1 in static ShaderGraphMaterial.loadMaterialXAsync(_:data:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  closure #1 in closure #1 in static ShaderGraphMaterial.loadMaterialXAsync(_:data:)(v0[2], v0[3]);
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _sS2cEs5ErrorsWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in static ShaderGraphMaterial.loadAsync(named:from:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = (v2 + v7);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v2 + v8);

  return closure #1 in static ShaderGraphMaterial.loadAsync(named:from:)(a1, a2, v9, v2 + v6, v11, v12, v13);
}

void partial apply for closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);
  v10 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in static ShaderGraphMaterial.loadAsync(named:from:)(v0 + v2, v6, v7, v8, v9, v10);
}

double _s17RealityFoundation19ShaderGraphMaterialVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t specialized static ShaderGraphMaterial.createInMemoryMaterialLoadingImportSession(primPath:url:)(uint64_t a1, uint64_t a2)
{
  v4 = RIOPxrUsdStageCreateInMemory();
  v27 = RIOPxrSdfPathCreateFromCString();
  v26 = RIOPxrTfTokenCreateWithCString();
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();
  v6 = MEMORY[0x1C68F3280](a1, a2);
  v7 = [v6 lastPathComponent];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  MEMORY[0x1C68F3410](v8, v10);

  String.utf8CString.getter();

  v11 = RIOPxrSdfPathCreateFromCString();

  v25 = RIOPxrTfTokenCreateWithCString();
  v12 = RIOPxrUsdStageCreatePrimIfNeeded();
  String.utf8CString.getter();
  v13 = RIOPxrSdfPathCreateFromCString();

  URL.path.getter();
  String.utf8CString.getter();

  RIOPxrUsdPrimAddReference();

  v14 = RIOPxrTfTokenCreateWithCString();
  Relationship = RIOPxrUsdPrimCreateCreateRelationship();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C1898160;
  *(v16 + 32) = v11;
  type metadata accessor for RIOPxrSdfPathRef(0);
  v17 = v11;
  isa = Array._bridgeToObjectiveC()().super.isa;

  RIOPxrUsdRelationshipSetTargets();

  v19 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v20 = *(v19 + 24);
  v21 = *(swift_unownedRetainStrong() + 24);

  v22 = RIOImportSessionCreateWithStage();
  if (!v22)
  {
    lazy protocol witness table accessor for type ShaderGraphMaterial.LoadError and conformance ShaderGraphMaterial.LoadError();
    swift_allocError();
    *v23 = 4;
    swift_willThrow();
  }

  return v22;
}

uint64_t outlined init with take of (URL, String)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_SStMd, &_s10Foundation3URLV_SStMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static StateMachineGraphCreator.createGraph(from:)@<X0>(uint64_t *a1@<X8>)
{
  v46 = MEMORY[0x1E69E7CC0];
  StateCount = REStateMachineAssetGetStateCount();
  if (StateCount < 0)
  {
    goto LABEL_53;
  }

  v9 = StateCount;
  if (StateCount)
  {
    v10 = 0;
    v2 = MEMORY[0x1E69E7CC0];
    do
    {
      REStateMachineAssetGetStateAtIndex();
      v11 = static StateMachineGraphCreator.createStateAndItsTransitions(from:)(&v42);
      v12 = v42;
      v13 = v43;
      v14 = v44;
      v15 = v45;
      RERelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
      }

      v17 = *(v2 + 2);
      v16 = *(v2 + 3);
      if (v17 >= v16 >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v2);
      }

      ++v10;
      *(v2 + 2) = v17 + 1;
      v18 = &v2[32 * v17];
      *(v18 + 4) = v12;
      *(v18 + 5) = v13;
      *(v18 + 6) = v14;
      *(v18 + 7) = v15;
      specialized Array.append<A>(contentsOf:)(v11);
    }

    while (v9 != v10);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  if (REStateMachineAssetGetAnyState())
  {
    v3 = static StateMachineGraphCreator.createStateAndItsTransitions(from:)(&v42);

    RERelease();
    v1 = v42;
    v4 = v43;
    v6 = v44;
    v5 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_54;
    }

    while (1)
    {
      v20 = *(v2 + 2);
      v19 = *(v2 + 3);
      if (v20 >= v19 >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v2);
      }

      *(v2 + 2) = v20 + 1;
      v21 = &v2[32 * v20];
      *(v21 + 4) = v1;
      *(v21 + 5) = v4;
      *(v21 + 6) = v6;
      *(v21 + 7) = v5;
      v22 = *(v3 + 16);

      v41 = v22;
      if (!v22)
      {
LABEL_38:
        specialized Array.append<A>(contentsOf:)(v3);
        break;
      }

      v40 = a1;
      a1 = 0;
      v1 = 0;
      v23 = v46;
      while (v1 < *(v3 + 16))
      {
        v4 = *(a1 + v3 + 48);
        v5 = *(a1 + v3 + 56);
        v24 = *(a1 + v3 + 64);
        v25 = *(a1 + v3 + 72);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        }

        if (v1 >= *(v3 + 16))
        {
          goto LABEL_47;
        }

        v26 = (a1 + v3);
        v27 = *(a1 + v3 + 56);
        v26[6] = v24;
        v26[7] = v25;

        if (v1 >= *(v3 + 16))
        {
          goto LABEL_48;
        }

        v28 = v26[9];
        v26[8] = v4;
        v26[9] = v5;

        v5 = *(v3 + 16);
        v29 = *(v23 + 2);
        v4 = v29 + v5;
        if (__OFADD__(v29, v5))
        {
          goto LABEL_49;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v4 <= *(v23 + 3) >> 1)
        {
          if (*(v3 + 16))
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (v29 <= v4)
          {
            v31 = v29 + v5;
          }

          else
          {
            v31 = v29;
          }

          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v31, 1, v23);
          if (*(v3 + 16))
          {
LABEL_33:
            if ((*(v23 + 3) >> 1) - *(v23 + 2) < v5)
            {
              goto LABEL_51;
            }

            swift_arrayInitWithCopy();

            if (v5)
            {
              v32 = *(v23 + 2);
              v33 = __OFADD__(v32, v5);
              v34 = v32 + v5;
              if (v33)
              {
                goto LABEL_52;
              }

              *(v23 + 2) = v34;
            }

            goto LABEL_18;
          }
        }

        if (v5)
        {
          goto LABEL_50;
        }

LABEL_18:
        ++v1;
        a1 += 9;
        if (v41 == v1)
        {
          v46 = v23;
          a1 = v40;
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }
  }

  REStateMachineAssetGetInitialStateName();
  v36 = String.init(cString:)();
  v37 = v35;
  v38 = v46;
  if (!v36 && v35 == 0xE000000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {

    if (*(v2 + 2))
    {
      v36 = *(v2 + 4);
      v37 = *(v2 + 5);
    }

    else
    {
      v36 = 0;
      v37 = 0xE000000000000000;
    }
  }

  *a1 = v36;
  a1[1] = v37;
  a1[2] = v2;
  a1[3] = v38;
  return result;
}

uint64_t static StateMachineGraphCreator.createStateAndItsTransitions(from:)(uint64_t a1)
{
  REStateMachineAssetStateGetName();
  v22 = String.init(cString:)();
  v3 = v2;
  REStateMachineAssetStateGetExitTime();
  v5 = v4;
  result = REStateMachineAssetStateGetTransitionCount();
  if (result < 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v7 = result;
  v21 = a1;
  if (result)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      REStateMachineAssetStateGetTransitionAtIndex();
      static StateMachineGraphCreator.createTransition(from:fromStateName:)(v22, v3, v23);
      RERelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v11 = *(v9 + 2);
      v10 = *(v9 + 3);
      if (v11 >= v10 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
      }

      ++v8;
      *(v9 + 2) = v11 + 1;
      v12 = &v9[72 * v11];
      *(v12 + 2) = v23[0];
      v13 = v23[1];
      v14 = v23[2];
      v15 = v23[3];
      *(v12 + 12) = v24;
      *(v12 + 4) = v14;
      *(v12 + 5) = v15;
      *(v12 + 3) = v13;
    }

    while (v7 != v8);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  result = REStateMachineAssetStateGetCommandCount();
  if (result < 0)
  {
    goto LABEL_23;
  }

  v16 = result;
  if (result)
  {
    v17 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    do
    {
      REStateMachineAssetStateGetCommandAtIndex();
      static StateMachineGraphCreator.createCommand(from:)(v23);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
      }

      v20 = v18[2];
      v19 = v18[3];
      if (v20 >= v19 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v18);
      }

      ++v17;
      v18[2] = v20 + 1;
      outlined init with take of ForceEffectBase(v23, &v18[5 * v20 + 4]);
      RERelease();
    }

    while (v16 != v17);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  *v21 = v22;
  *(v21 + 8) = v3;
  *(v21 + 16) = v5;
  *(v21 + 24) = v18;
  return v9;
}

uint64_t static StateMachineGraphCreator.createTransition(from:fromStateName:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  REStateMachineAssetTransitionGetName();
  v6 = String.init(cString:)();
  v8 = v7;
  REStateMachineAssetTransitionGetToStateName();
  v9 = String.init(cString:)();
  v11 = v10;
  REStateMachineAssetTransitionGetTransitionTime();
  v13 = v12;
  InterruptionType = REStateMachineAssetTransitionGetInterruptionType();
  ConditionCount = REStateMachineAssetTransitionGetConditionCount();
  if (ConditionCount < 0)
  {
    __break(1u);
LABEL_27:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v16 = ConditionCount;
    v37 = InterruptionType;
    v38 = v9;
    v39 = v8;
    v40 = v6;
    v41 = a1;
    v42 = a2;
    if (ConditionCount)
    {
      v17 = 0;
      v18 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        REStateMachineAssetTransitionGetConditionAtIndex();
        Type = REStateMachineAssetTransitionConditionGetType();
        if (Type == 1)
        {
          REStateMachineAssetTransitionConditionGetParameterName();
          v20 = String.init(cString:)();
          v47 = &type metadata for StateMachineConditionTrigger;
          v48 = &protocol witness table for StateMachineConditionTrigger;
          *&v43 = v20;
          *(&v43 + 1) = v21;
        }

        else
        {
          if (Type)
          {
            goto LABEL_27;
          }

          REStateMachineAssetTransitionConditionGetParameterName();
          v22 = String.init(cString:)();
          v24 = v23;
          ParameterType = REStateMachineAssetTransitionConditionGetParameterType();
          ConditionOperator = REStateMachineAssetTransitionConditionGetConditionOperator();
          v27 = ConditionOperator;
          if (ConditionOperator >= 6)
          {
            *&v43 = 0;
            *(&v43 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(45);
            MEMORY[0x1C68F3410](0xD00000000000002BLL, 0x80000001C18ED5B0);
            type metadata accessor for REStateTransitionConditionOperator(0);
            _print_unlocked<A, B>(_:_:)();
            goto LABEL_27;
          }

          if (ParameterType <= 1)
          {
            if (ParameterType != 1)
            {
              goto LABEL_27;
            }

            ConstantInt = REStateMachineAssetTransitionConditionGetConstantInt();
            v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineConditionVySiGMd, &_s17RealityFoundation21StateMachineConditionVySiGMR);
            v48 = &protocol witness table for StateMachineCondition<A>;
            v31 = swift_allocObject();
            *&v43 = v31;
            *(v31 + 40) = ConstantInt;
            *(v31 + 16) = v22;
            *(v31 + 24) = v24;
            *(v31 + 32) = v27;
          }

          else
          {
            if (ParameterType == 2)
            {
              REStateMachineAssetTransitionConditionGetConstantFloat();
              v29 = v28;
              v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineConditionVySfGMd, &_s17RealityFoundation21StateMachineConditionVySfGMR);
              v48 = &protocol witness table for StateMachineCondition<A>;
              v46 = v29;
            }

            else
            {
              if (ParameterType != 3)
              {
                goto LABEL_27;
              }

              ConstantBool = REStateMachineAssetTransitionConditionGetConstantBool();
              v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineConditionVySbGMd, &_s17RealityFoundation21StateMachineConditionVySbGMR);
              v48 = &protocol witness table for StateMachineCondition<A>;
              v45 = ConstantBool;
            }

            *&v43 = v22;
            *(&v43 + 1) = v24;
            v44 = v27;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
        }

        v34 = v18[2];
        v33 = v18[3];
        if (v34 >= v33 >> 1)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v18);
        }

        ++v17;
        v18[2] = v34 + 1;
        outlined init with take of ForceEffectBase(&v43, &v18[5 * v34 + 4]);
        RERelease();
        if (v16 == v17)
        {
          goto LABEL_23;
        }
      }
    }

    v18 = MEMORY[0x1E69E7CC0];
LABEL_23:
    static StateMachineUtils.convert(_:)(v37, &v43);
    v35 = v43;
    *a3 = v40;
    *(a3 + 8) = v39;
    *(a3 + 16) = v41;
    *(a3 + 24) = v42;
    *(a3 + 32) = v38;
    *(a3 + 40) = v11;
    *(a3 + 48) = v13;
    *(a3 + 56) = v35;
    *(a3 + 64) = v18;
  }

  return result;
}

uint64_t static StateMachineGraphCreator.createCommand(from:)@<X0>(uint64_t a1@<X8>)
{
  Type = REStateMachineAssetCommandGetType();
  REStateMachineAssetCommandGetEntityBindTarget();
  v3 = String.init(cString:)();
  v5 = v4;
  v6 = specialized static StateMachineGraphCreator.getCommandParameters(from:)();
  if (!v3 && v5 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = -1;
    if (Type <= 2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    static InternalBindPath.targetFromPath(_:)(v3, v5, v19);
    v7 = v19[0];
    v8 = v19[1];
    v9 = v20;
    if (Type <= 2)
    {
LABEL_5:
      if (Type == 1)
      {

        v10 = _s17RealityFoundation24StateMachineGraphCreatorV14parameterValue33_7B97689064990206E90624C7EC967102LLyxSayAA0cD24CommandParameterProtocol_pG_SStAA0cdmnH0RzlFZSS_Tt2g5(v6, 0x6F6974616D696E41, 0xED0000656D614E6ELL);
        v12 = v11;
        v13 = _s17RealityFoundation24StateMachineGraphCreatorV14parameterValue33_7B97689064990206E90624C7EC967102LLyxSayAA0cD24CommandParameterProtocol_pG_SStAA0cdmnH0RzlFZSb_Tt2g5(v6, 0xD000000000000018, 0x80000001C18E7D00);

        *(a1 + 24) = &type metadata for StateMachineAnimationPlayCommand;
        *(a1 + 32) = &protocol witness table for StateMachineAnimationPlayCommand;
        v14 = swift_allocObject();
        *a1 = v14;
        *(v14 + 16) = 0;
        *(v14 + 24) = 0;
        *(v14 + 32) = -1;
        result = outlined consume of BindTarget?(0, 0, 0xFFu);
        *(v14 + 16) = v7;
        *(v14 + 24) = v8;
        *(v14 + 32) = v9;
        *(v14 + 40) = v10;
        *(v14 + 48) = v12;
        *(v14 + 56) = v13 & 1;
        return result;
      }

      if (Type == 2)
      {

        *(a1 + 24) = &type metadata for StateMachineAnimationStopCommand;
        *(a1 + 32) = &protocol witness table for StateMachineAnimationStopCommand;
        result = outlined consume of BindTarget?(0, 0, 0xFFu);
        goto LABEL_12;
      }

      goto LABEL_15;
    }
  }

  if (Type == 3)
  {

    *(a1 + 24) = &type metadata for StateMachineAnimationStopAllCommand;
    *(a1 + 32) = &protocol witness table for StateMachineAnimationStopAllCommand;
LABEL_12:
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    return result;
  }

  if (Type == 4)
  {

    _s17RealityFoundation24StateMachineGraphCreatorV14parameterValue33_7B97689064990206E90624C7EC967102LLyxSayAA0cD24CommandParameterProtocol_pG_SStAA0cdmnH0RzlFZSd_Tt2g5(v6, 0x6B63616279616C50, 0xEC000000656D6954);
    v17 = v16;

    *(a1 + 24) = &type metadata for StateMachineAnimationSetPlaybackTimeCommand;
    *(a1 + 32) = &protocol witness table for StateMachineAnimationSetPlaybackTimeCommand;
    v18 = swift_allocObject();
    *a1 = v18;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = -1;
    result = outlined consume of BindTarget?(0, 0, 0xFFu);
    *(v18 + 16) = v7;
    *(v18 + 24) = v8;
    *(v18 + 32) = v9;
    *(v18 + 40) = v17;
    return result;
  }

LABEL_15:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation24StateMachineGraphCreatorV14parameterValue33_7B97689064990206E90624C7EC967102LLyxSayAA0cD24CommandParameterProtocol_pG_SStAA0cdmnH0RzlFZSS_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_12:
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    goto LABEL_14;
  }

  v6 = a1 + 32;
  while (1)
  {
    outlined init with copy of __REAssetService(v6, &v17);
    v7 = v18;
    v8 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, v18);
    if ((*(v8 + 8))(v7, v8) == a2 && v9 == a3)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined init with copy of __REAssetService(&v17, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation36StateMachineCommandParameterProtocol_pMd, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySSGMd, &_s17RealityFoundation28StateMachineCommandParameterVySSGMR);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(&v17);
    v6 += 40;
    if (!--v5)
    {
      goto LABEL_12;
    }
  }

  outlined init with take of ForceEffectBase(&v17, v20);
LABEL_14:
  outlined init with copy of StateMachineCommandParameterProtocol?(v20, &v17);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation36StateMachineCommandParameterProtocol_pMd, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySSGMd, &_s17RealityFoundation28StateMachineCommandParameterVySSGMR);
    if (swift_dynamicCast())
    {
      if (v15)
      {
        outlined destroy of StateMachineCommandParameterProtocol?(v20);

        outlined consume of StateMachineCommandParameter<String>?(v14, v15);
        return v16;
      }
    }

    else
    {
      v14 = 0;
    }

    v13 = v14;
  }

  else
  {
    outlined destroy of StateMachineCommandParameterProtocol?(&v17);
    v13 = 0;
  }

  outlined consume of StateMachineCommandParameter<String>?(v13, 0);
  *&v17 = 0;
  *(&v17 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  MEMORY[0x1C68F3410](0xD00000000000001DLL, 0x80000001C18ED4D0);
  MEMORY[0x1C68F3410](a2, a3);
  MEMORY[0x1C68F3410](0x6570797420666F20, 0xE900000000000020);
  MEMORY[0x1C68F3410](0x676E69727453, 0xE600000000000000);
  MEMORY[0x1C68F3410](0x756F6620746F6E20, 0xEA0000000000646ELL);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation24StateMachineGraphCreatorV14parameterValue33_7B97689064990206E90624C7EC967102LLyxSayAA0cD24CommandParameterProtocol_pG_SStAA0cdmnH0RzlFZSb_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_12:
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    goto LABEL_14;
  }

  v6 = a1 + 32;
  while (1)
  {
    outlined init with copy of __REAssetService(v6, &v15);
    v7 = v16;
    v8 = v17;
    __swift_project_boxed_opaque_existential_1(&v15, v16);
    if ((*(v8 + 8))(v7, v8) == a2 && v9 == a3)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined init with copy of __REAssetService(&v15, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation36StateMachineCommandParameterProtocol_pMd, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySbGMd, &_s17RealityFoundation28StateMachineCommandParameterVySbGMR);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(&v15);
    v6 += 40;
    if (!--v5)
    {
      goto LABEL_12;
    }
  }

  outlined init with take of ForceEffectBase(&v15, v18);
LABEL_14:
  outlined init with copy of StateMachineCommandParameterProtocol?(v18, &v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation36StateMachineCommandParameterProtocol_pMd, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySbGMd, &_s17RealityFoundation28StateMachineCommandParameterVySbGMR);
    if ((swift_dynamicCast() & 1) != 0 && v13)
    {
      outlined destroy of StateMachineCommandParameterProtocol?(v18);

      return v14 & 1;
    }
  }

  else
  {
    outlined destroy of StateMachineCommandParameterProtocol?(&v15);
  }

  *&v15 = 0;
  *(&v15 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  MEMORY[0x1C68F3410](0xD00000000000001DLL, 0x80000001C18ED4D0);
  MEMORY[0x1C68F3410](a2, a3);
  MEMORY[0x1C68F3410](0x6570797420666F20, 0xE900000000000020);
  MEMORY[0x1C68F3410](1819242306, 0xE400000000000000);
  MEMORY[0x1C68F3410](0x756F6620746F6E20, 0xEA0000000000646ELL);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation24StateMachineGraphCreatorV14parameterValue33_7B97689064990206E90624C7EC967102LLyxSayAA0cD24CommandParameterProtocol_pG_SStAA0cdmnH0RzlFZSd_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_12:
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    goto LABEL_14;
  }

  v6 = a1 + 32;
  while (1)
  {
    outlined init with copy of __REAssetService(v6, &v14);
    v7 = v15;
    v8 = v16;
    __swift_project_boxed_opaque_existential_1(&v14, v15);
    if ((*(v8 + 8))(v7, v8) == a2 && v9 == a3)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined init with copy of __REAssetService(&v14, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation36StateMachineCommandParameterProtocol_pMd, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySdGMd, &_s17RealityFoundation28StateMachineCommandParameterVySdGMR);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(&v14);
    v6 += 40;
    if (!--v5)
    {
      goto LABEL_12;
    }
  }

  outlined init with take of ForceEffectBase(&v14, v17);
LABEL_14:
  outlined init with copy of StateMachineCommandParameterProtocol?(v17, &v14);
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation36StateMachineCommandParameterProtocol_pMd, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySdGMd, &_s17RealityFoundation28StateMachineCommandParameterVySdGMR);
    if ((swift_dynamicCast() & 1) != 0 && v13)
    {
      outlined destroy of StateMachineCommandParameterProtocol?(v17);
    }
  }

  else
  {
    outlined destroy of StateMachineCommandParameterProtocol?(&v14);
  }

  *&v14 = 0;
  *(&v14 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  MEMORY[0x1C68F3410](0xD00000000000001DLL, 0x80000001C18ED4D0);
  MEMORY[0x1C68F3410](a2, a3);
  MEMORY[0x1C68F3410](0x6570797420666F20, 0xE900000000000020);
  MEMORY[0x1C68F3410](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1C68F3410](0x756F6620746F6E20, 0xEA0000000000646ELL);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static StateMachineGraphCreator.commandTargetEntity(of:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  v6 = result;
  v7 = *(result + 16);
  if (v7)
  {
    v8 = 0;
    v9 = result + 32;
    while (1)
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        return result;
      }

      outlined init with copy of __REAssetService(v9, &v18);
      v10 = v20;
      v11 = v21;
      __swift_project_boxed_opaque_existential_1(&v18, v20);
      if ((*(v11 + 8))(v10, v11) == 0x6E45746567726154 && v12 == 0xEC00000079746974)
      {
        break;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        goto LABEL_12;
      }

      ++v8;
      result = __swift_destroy_boxed_opaque_existential_1(&v18);
      v9 += 40;
      if (v7 == v8)
      {
        goto LABEL_10;
      }
    }

LABEL_12:

    outlined init with take of ForceEffectBase(&v18, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation36StateMachineCommandParameterProtocol_pMd, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVyAA10BindTargetOGMd, &_s17RealityFoundation28StateMachineCommandParameterVyAA10BindTargetOGMR);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      goto LABEL_14;
    }

    v15 = v19;
    v16 = v20;
    v17 = v21;
    outlined copy of BindTarget(v19, v20, v21);

    result = outlined consume of BindTarget(v15, v16, v17);
    *a2 = v15;
    *(a2 + 8) = v16;
    *(a2 + 16) = v17;
  }

  else
  {
LABEL_10:

LABEL_14:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = -1;
  }

  return result;
}

uint64_t static StateMachineGraphCreator.createCoreState(from:outgoingTransitions:)(uint64_t *a1, uint64_t a2)
{
  v66 = type metadata accessor for Logger();
  v67 = *(v66 - 8);
  v4 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v59 - v7;
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v70 = a1[3];
  String.utf8CString.getter();
  v11 = REStateMachineAssetStateCreate();

  v71 = v11;
  result = REStateMachineAssetStateSetExitTime();
  v14 = *(a2 + 16);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      v16 = a2 + 32 + 72 * i;
      v17 = *(v16 + 64);
      v19 = *(v16 + 32);
      v18 = *(v16 + 40);
      v20 = *v16;
      v21 = *(v16 + 8);
      v22 = *(v16 + 56);
      v23 = *(v16 + 48);
      String.utf8CString.getter();
      String.utf8CString.getter();

      REStateMachineAssetTransitionCreate();

      v24 = *(v17 + 16);
      if (v24)
      {
        v25 = v17 + 32;
        do
        {
          outlined init with copy of __REAssetService(v25, v80);
          v26 = specialized static StateMachineGraphCreator.createCoreCondition(from:)(v80);
          __swift_destroy_boxed_opaque_existential_1(v80);
          if (v26)
          {
            REStateMachineAssetTransitionAddCondition();
          }

          v25 += 40;
          --v24;
        }

        while (v24);
      }

      result = REStateMachineAssetStateAddTransition();
    }
  }

  v27 = v63;
  v69 = *(v70 + 16);
  if (!v69)
  {
    return v71;
  }

  v28 = 0;
  v68 = v70 + 32;
  v65 = "Scope";
  v64 = (v67 + 8);
  v59 = "hineCommand type ";
  v62 = 0x80000001C18ED340;
  *&v13 = 136315138;
  v61 = v13;
  while (v28 < *(v70 + 16))
  {
    outlined init with copy of __REAssetService(v68 + 40 * v28, v80);
    specialized static StateMachineGraphCreator.commandTypeName(of:)(v80);
    if (v29)
    {
      static StateMachineGraphCreator.commandTargetEntity(of:)(v80, &v76);
      if (v77 != 255)
      {
        specialized static InternalBindPath.pathFromTarget(_:_:)(&v76, 1);
        outlined consume of BindTarget(v76, *(&v76 + 1), v77);
      }

      String.utf8CString.getter();

      String.utf8CString.getter();

      REStateMachineAssetCommandCreate();

      v36 = v81;
      v37 = v82;
      __swift_project_boxed_opaque_existential_1(v80, v81);
      v38 = (*(v37 + 8))(v36, v37);
      v39 = *(v38 + 16);
      if (v39)
      {
        v67 = v38;
        v40 = v38 + 32;
        do
        {
          outlined init with copy of __REAssetService(v40, &v76);
          outlined init with copy of __REAssetService(&v76, v75);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation36StateMachineCommandParameterProtocol_pMd, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pMR);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySiGMd, &_s17RealityFoundation28StateMachineCommandParameterVySiGMR);
          if (swift_dynamicCast())
          {
            v41 = v78;
            v42 = v79;
            __swift_project_boxed_opaque_existential_1(&v76, v78);
            (*(v42 + 8))(v41, v42);

            String.utf8CString.getter();

            REStateMachineAssetCommandAddParameterInt();
          }

          else
          {
            outlined init with copy of __REAssetService(&v76, v75);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySfGMd, &_s17RealityFoundation28StateMachineCommandParameterVySfGMR);
            if (swift_dynamicCast())
            {
              v43 = v78;
              v44 = v79;
              __swift_project_boxed_opaque_existential_1(&v76, v78);
              (*(v44 + 8))(v43, v44);
              String.utf8CString.getter();

              REStateMachineAssetCommandAddParameterFloat();
LABEL_27:

              goto LABEL_28;
            }

            outlined init with copy of __REAssetService(&v76, v75);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySdGMd, &_s17RealityFoundation28StateMachineCommandParameterVySdGMR);
            if (swift_dynamicCast())
            {
              v45 = v78;
              v46 = v79;
              __swift_project_boxed_opaque_existential_1(&v76, v78);
              (*(v46 + 8))(v45, v46);
              String.utf8CString.getter();

              REStateMachineAssetCommandAddParameterDouble();
              goto LABEL_27;
            }

            outlined init with copy of __REAssetService(&v76, v75);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySbGMd, &_s17RealityFoundation28StateMachineCommandParameterVySbGMR);
            if (swift_dynamicCast())
            {
              v47 = v78;
              v48 = v79;
              __swift_project_boxed_opaque_existential_1(&v76, v78);
              (*(v48 + 8))(v47, v48);
              String.utf8CString.getter();

              REStateMachineAssetCommandAddParameterBool();
            }

            else
            {
              outlined init with copy of __REAssetService(&v76, v75);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySSGMd, &_s17RealityFoundation28StateMachineCommandParameterVySSGMR);
              if (!swift_dynamicCast())
              {
                outlined init with copy of __REAssetService(&v76, v75);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVyAA10BindTargetOGMd, &_s17RealityFoundation28StateMachineCommandParameterVyAA10BindTargetOGMR);
                if (swift_dynamicCast())
                {
                  v51 = v72;
                  v52 = v73;
                  v53 = v74;

                  outlined consume of BindTarget(v51, v52, v53);
                }

                else
                {
                  v54 = v60;
                  Logger.init(subsystem:category:)();
                  v55 = Logger.logObject.getter();
                  v56 = static os_log_type_t.error.getter();
                  if (os_log_type_enabled(v55, v56))
                  {
                    v57 = swift_slowAlloc();
                    v58 = swift_slowAlloc();
                    v75[0] = v58;
                    *v57 = v61;
                    *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004CLL, v59 | 0x8000000000000000, v75);
                    _os_log_impl(&dword_1C1358000, v55, v56, "%s", v57, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v58);
                    MEMORY[0x1C6902A30](v58, -1, -1);
                    MEMORY[0x1C6902A30](v57, -1, -1);
                  }

                  (*v64)(v54, v66);
                }

                goto LABEL_29;
              }

              v50 = v78;
              v49 = v79;
              __swift_project_boxed_opaque_existential_1(&v76, v78);
              (*(v49 + 8))(v50, v49);
              String.utf8CString.getter();

              String.utf8CString.getter();
              REStateMachineAssetCommandAddParameterString();

              v27 = v63;
            }
          }

LABEL_28:

LABEL_29:
          __swift_destroy_boxed_opaque_existential_1(&v76);
          v40 += 40;
          --v39;
        }

        while (v39);
      }

      REStateMachineAssetStateAddCommand();
    }

    else
    {
      *&v76 = 0;
      *(&v76 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      *&v76 = 0xD000000000000021;
      *(&v76 + 1) = v62;
      __swift_project_boxed_opaque_existential_1(v80, v81);
      swift_getDynamicType();
      v30 = _typeName(_:qualified:)();
      MEMORY[0x1C68F3410](v30);

      v31 = v76;
      Logger.init(subsystem:category:)();

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&v76 = v35;
        *v34 = v61;
        *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, *(&v31 + 1), &v76);
        _os_log_impl(&dword_1C1358000, v32, v33, "%s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x1C6902A30](v35, -1, -1);
        MEMORY[0x1C6902A30](v34, -1, -1);
      }

      (*v64)(v27, v66);
    }

    ++v28;
    result = __swift_destroy_boxed_opaque_existential_1(v80);
    if (v28 == v69)
    {
      return v71;
    }
  }

  __break(1u);
  return result;
}

uint64_t static StateMachineGraphCreator.createCoreAsset(from:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  v52 = a1[2];
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say17RealityFoundation22StateMachineTransitionVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5 = *(v3 + 16);
  if (!v5)
  {
LABEL_25:
    REStateMachineAssetStateGraphCreate();
    v36 = *(v52 + 16);
    if (v36)
    {
      v37 = (v52 + 56);
      v38 = MEMORY[0x1E69E7CC0];
      do
      {
        v41 = *(v37 - 3);
        v40 = *(v37 - 2);
        v42 = *(v37 - 1);
        v43 = *v37;
        *&v54 = v41;
        *(&v54 + 1) = v40;
        *&v55 = v42;
        *(&v55 + 1) = v43;
        v44 = v4[2];

        if (v44 && (v45 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v40), (v46 & 1) != 0))
        {
          v39 = *(v4[7] + 8 * v45);
        }

        else
        {
          v39 = v38;
        }

        static StateMachineGraphCreator.createCoreState(from:outgoingTransitions:)(&v54, v39);

        REStateMachineAssetStateGraphAddState();
        v37 += 4;
        --v36;
      }

      while (v36);
    }

    v47 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v47 + 120, &v54);
    v48 = *(&v55 + 1);
    v49 = v56;
    __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
    (*(v49 + 32))(v48, v49);
    __swift_destroy_boxed_opaque_existential_1(&v54);
    String.utf8CString.getter();
    v50 = REStateMachineAssetSingleGraphCreate();

    return v50;
  }

  v6 = (v3 + 32);
  while (1)
  {
    v10 = v6[2];
    v9 = v6[3];
    v11 = v6[1];
    v58 = *(v6 + 8);
    v56 = v10;
    v57 = v9;
    v55 = v11;
    v54 = *v6;
    v12 = v11;
    if (!v4[2])
    {
      outlined init with copy of StateMachineTransition(&v54, v53);
      v14 = MEMORY[0x1E69E7CC0];
      goto LABEL_9;
    }

    outlined init with copy of StateMachineTransition(&v54, v53);

    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v12, *(&v12 + 1));
    v14 = MEMORY[0x1E69E7CC0];
    if (v15)
    {
      v14 = *(v4[7] + 8 * v13);
LABEL_9:
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation22StateMachineTransitionVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation22StateMachineTransitionVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v17 = v55;
    *(inited + 32) = v54;
    v18 = v58;
    v20 = v56;
    v19 = v57;
    *(inited + 48) = v17;
    *(inited + 64) = v20;
    *(inited + 80) = v19;
    *(inited + 96) = v18;
    v21 = *(v14 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v23 = *(v14 + 3) >> 1, v23 <= v21))
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v21 + 1, 1, v14);
      v23 = *(v14 + 3) >> 1;
    }

    if (v23 <= *(v14 + 2))
    {
      break;
    }

    swift_arrayInitWithCopy();

    ++*(v14 + 2);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v53[0] = v4;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v12, *(&v12 + 1));
    v27 = v4[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_34;
    }

    v30 = v25;
    if (v4[3] >= v29)
    {
      if (v24)
      {
        v4 = v53[0];
        if (v25)
        {
          goto LABEL_3;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v4 = v53[0];
        if (v30)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, v24);
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v12, *(&v12 + 1));
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_36;
      }

      v26 = v31;
      v4 = v53[0];
      if (v30)
      {
LABEL_3:
        v7 = v4[7];
        v8 = *(v7 + 8 * v26);
        *(v7 + 8 * v26) = v14;

        goto LABEL_4;
      }
    }

    v4[(v26 >> 6) + 8] |= 1 << v26;
    *(v4[6] + 16 * v26) = v12;
    *(v4[7] + 8 * v26) = v14;
    v33 = v4[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_35;
    }

    v4[2] = v35;
LABEL_4:
    v6 = (v6 + 72);
    if (!--v5)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized static StateMachineGraphCreator.getCommandParameters(from:)()
{
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  v41 = *MEMORY[0x1E69E9840];
  while (1)
  {
    v2 = *(&outlined read-only object #0 of static StateMachineGraphCreator.getCommandParameters(from:) + v0 + 32);
    ParameterCount = REStateMachineAssetCommandGetParameterCount();
    if (ParameterCount < 0)
    {
      __break(1u);
    }

    v4 = ParameterCount;
    v32 = v0;
    if (ParameterCount)
    {
      break;
    }

LABEL_2:
    v0 = v32 + 1;
    if (v32 == 4)
    {
      v30 = *MEMORY[0x1E69E9840];
      return v1;
    }
  }

  v5 = 0;
  while (1)
  {
    REStateMachineAssetCommandGetParameterNameAtIndex();
    v7 = String.init(cString:)();
    v9 = v8;
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    if (v2 > 2)
    {
      break;
    }

    if (!v2)
    {
      String.utf8CString.getter();
      ParameterStringAsChars = REStateMachineAssetCommandGetParameterStringAsChars();

      if (ParameterStringAsChars)
      {
        v13 = String.init(cString:)();
        v15 = v14;
      }

      else
      {
        v13 = 0;
        v15 = 0xE000000000000000;
      }

      outlined destroy of StateMachineCommandParameterProtocol?(&v38);
      *(&v39 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySSGMd, &_s17RealityFoundation28StateMachineCommandParameterVySSGMR);
      v40 = &protocol witness table for StateMachineCommandParameter<A>;
      v29 = swift_allocObject();
      *&v38 = v29;
      v29[4] = v13;
      v29[5] = v15;
      v29[2] = v7;
      v29[3] = v9;
      goto LABEL_20;
    }

    if (v2 == 1)
    {
      v37[0] = 0;
      String.utf8CString.getter();
      REStateMachineAssetCommandGetParameterInt();
      outlined destroy of StateMachineCommandParameterProtocol?(&v38);

      v10 = v37[0];
      *(&v39 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySiGMd, &_s17RealityFoundation28StateMachineCommandParameterVySiGMR);
      v40 = &protocol witness table for StateMachineCommandParameter<A>;
      *&v39 = v10;
    }

    else
    {
      LODWORD(v37[0]) = 0;
      String.utf8CString.getter();
      REStateMachineAssetCommandGetParameterFloat();
      outlined destroy of StateMachineCommandParameterProtocol?(&v38);

      v16 = v37[0];
      *(&v39 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySfGMd, &_s17RealityFoundation28StateMachineCommandParameterVySfGMR);
      v40 = &protocol witness table for StateMachineCommandParameter<A>;
      LODWORD(v39) = v16;
    }

LABEL_19:
    *&v38 = v7;
    *(&v38 + 1) = v9;
LABEL_20:
    outlined init with copy of StateMachineCommandParameterProtocol?(&v38, &v34);
    if (v35)
    {
      outlined init with take of ForceEffectBase(&v34, v37);
      outlined init with copy of __REAssetService(v37, &v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
        v33 = v1;
      }

      v20 = v1[2];
      v19 = v1[3];
      if (v20 >= v19 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v1);
        v33 = v1;
      }

      __swift_destroy_boxed_opaque_existential_1(v37);
      v21 = v35;
      v22 = v36;
      v23 = __swift_mutable_project_boxed_opaque_existential_1(&v34, v35);
      v24 = *(*(v21 - 8) + 64);
      v25 = MEMORY[0x1EEE9AC00](v23);
      v27 = &v32 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v27, v25);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v20, v27, &v33, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(&v34);
      v6 = &v38;
    }

    else
    {
      outlined destroy of StateMachineCommandParameterProtocol?(&v38);
      v6 = &v34;
    }

    outlined destroy of StateMachineCommandParameterProtocol?(v6);
    if (v4 == ++v5)
    {
      goto LABEL_2;
    }
  }

  if (v2 == 3)
  {
    v37[0] = 0;
    String.utf8CString.getter();
    REStateMachineAssetCommandGetParameterDouble();
    outlined destroy of StateMachineCommandParameterProtocol?(&v38);

    v11 = v37[0];
    *(&v39 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySdGMd, &_s17RealityFoundation28StateMachineCommandParameterVySdGMR);
    v40 = &protocol witness table for StateMachineCommandParameter<A>;
    *&v39 = v11;
    goto LABEL_19;
  }

  if (v2 == 4)
  {
    LOBYTE(v37[0]) = 0;
    String.utf8CString.getter();
    REStateMachineAssetCommandGetParameterBool();
    outlined destroy of StateMachineCommandParameterProtocol?(&v38);

    v17 = v37[0];
    *(&v39 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySbGMd, &_s17RealityFoundation28StateMachineCommandParameterVySbGMR);
    v40 = &protocol witness table for StateMachineCommandParameter<A>;
    LOBYTE(v39) = v17;
    goto LABEL_19;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t specialized static StateMachineGraphCreator.commandTypeName(of:)(uint64_t a1)
{
  outlined init with copy of __REAssetService(a1, &v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19StateMachineCommand_pMd, &_s17RealityFoundation19StateMachineCommand_pMR);
  if (swift_dynamicCast())
  {
    v2 = 0x6F6974616D696E41;
    outlined consume of BindTarget?(v4[0], v4[1], v5);
  }

  else
  {
    outlined init with copy of __REAssetService(a1, v4);
    if (swift_dynamicCast())
    {
      v2 = 0x6F6974616D696E41;
      outlined consume of BindTarget?(v6, v7, v8);
    }

    else
    {
      outlined init with copy of __REAssetService(a1, v4);
      if (swift_dynamicCast())
      {
        v2 = 0xD000000000000010;
        outlined consume of BindTarget?(v6, v7, v8);
      }

      else
      {
        outlined init with copy of __REAssetService(a1, v4);
        if (swift_dynamicCast())
        {
          outlined consume of BindTarget?(v6, v7, v8);
          return 0xD000000000000018;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return v2;
}

uint64_t specialized static StateMachineGraphCreator.createCoreCondition(from:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (!*(v4 + 16))
  {

    v9 = 0xD000000000000027;
    v10 = 0x80000001C18ED420;
    goto LABEL_6;
  }

  outlined init with copy of __REAssetService(v4 + 32, v13);

  v5 = v14;
  v6 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v6 + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v13);
  outlined init with copy of __REAssetService(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation29StateMachineConditionProtocol_pMd, &_s17RealityFoundation29StateMachineConditionProtocol_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineConditionVySiGMd, &_s17RealityFoundation21StateMachineConditionVySiGMR);
  if (!swift_dynamicCast())
  {
    outlined init with copy of __REAssetService(a1, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineConditionVySfGMd, &_s17RealityFoundation21StateMachineConditionVySfGMR);
    if (swift_dynamicCast())
    {
      String.utf8CString.getter();

      v12 = REStateMachineAssetFloatConditionCreate();
LABEL_11:
      v8 = v12;

      goto LABEL_12;
    }

    outlined init with copy of __REAssetService(a1, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineConditionVySbGMd, &_s17RealityFoundation21StateMachineConditionVySbGMR);
    if (swift_dynamicCast())
    {
      String.utf8CString.getter();

      v12 = REStateMachineAssetBoolConditionCreate();
      goto LABEL_11;
    }

    outlined init with copy of __REAssetService(a1, v13);
    if (swift_dynamicCast())
    {

      String.utf8CString.getter();

      v7 = REStateMachineAssetTriggerConditionCreate();
      goto LABEL_4;
    }

    v10 = 0x80000001C18ED400;
    v9 = 0xD00000000000001DLL;
LABEL_6:
    specialized static StateMachineUtils.logError(_:)(v9, v10);
    return 0;
  }

  String.utf8CString.getter();

  v7 = REStateMachineAssetIntConditionCreate();
LABEL_4:
  v8 = v7;
LABEL_12:

  return v8;
}

uint64_t outlined init with copy of StateMachineCommandParameterProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation36StateMachineCommandParameterProtocol_pSgMd, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of StateMachineCommandParameterProtocol?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation36StateMachineCommandParameterProtocol_pSgMd, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined consume of StateMachineCommandParameter<String>?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  String.index(before:)();
  return String.subscript.getter();
}

uint64_t static Entity.loadAnchorAsync(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v70 = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = [objc_opt_self() mainBundle];
  }

  v11 = a3;
  v12 = specialized static __ServiceLocator.shared.getter();
  v13 = *(*(v12 + 168) + 16);
  swift_beginAccess();
  v14 = *(v12 + 24);
  swift_unownedRetainStrong();
  v15 = *(v14 + 32);

  v16 = v13;
  v17 = v15;

  v18 = *(*(v12 + 168) + 32);
  *v9 = v17;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v19 = v17;

  v20 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v20)
  {
    v68 = v19;
    type metadata accessor for LoadRequestDependencies();
    v21 = swift_allocObject();
    v22 = MEMORY[0x1E69E7CC0];
    *(v21 + 16) = MEMORY[0x1E69E7CC0];
    v23 = (v21 + 16);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    v71 = v21;
    *(v21 + 24) = v24;
    v20 = 1;
    swift_beginAccess();
    *v23 = v22;
    if (one-time initialization token for asynchronousLoadOptions == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v25 = static Entity.asynchronousLoadOptions;
  swift_beginAccess();
  v26 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA06AnchorC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA06AnchorC0CGMR);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = v70;
  *(v27 + 16) = v70;
  *(v27 + 24) = a2;
  *(v27 + 32) = v25;
  *(v27 + 33) = v26;
  *(v27 + 34) = v20;
  *(v27 + 36) = 4;
  swift_weakAssign();
  swift_beginAccess();
  outlined init with copy of [String : String](v12 + 176, &v72, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  if (!v73)
  {

    outlined destroy of BodyTrackingComponent?(&v72, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
LABEL_11:
    v66 = v10;
    v44 = swift_allocObject();
    *(v44 + 16) = v25;
    v45 = v70;
    *(v44 + 24) = v18;
    *(v44 + 32) = v45;
    *(v44 + 40) = a2;
    *(v44 + 48) = v10;
    v46 = v68;
    v47 = v69;
    *(v44 + 56) = v68;
    *(v44 + 64) = v47;
    *(v44 + 72) = v27;
    *(v44 + 80) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMd, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMR);
    v48 = swift_allocObject();
    v70 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMR);
    v49 = swift_allocObject();
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    *(v49 + 16) = v50;
    *(v49 + 24) = 0;
    *(v49 + 32) = -1;
    *(v48 + 16) = v49;
    v51 = swift_allocObject();
    v51[2] = partial apply for closure #2 in static Entity.loadAnchorAsync(named:in:);
    v51[3] = v44;
    v52 = v71;
    v51[4] = v49;
    v51[5] = v52;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMR);
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    swift_allocObject();
    v56 = v16;
    v57 = v46;

    v58 = v66;

    v59 = Future.init(_:)();

    v34 = v70;

    *(v34 + 24) = v59;

    return v34;
  }

  v62 = v25;
  v63 = v12;
  v64 = v16;
  v65 = v18;
  outlined init with take of ForceEffectBase(&v72, v74);
  v29 = v75;
  v30 = v76;
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v31 = *(v30 + 16);

  if ((v31(v28, a2, v10, v29, v30) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v74);
    v18 = v65;
    v16 = v64;
    LOBYTE(v25) = v62;
    goto LABEL_11;
  }

  outlined init with copy of __REAssetService(v74, &v72);
  v32 = swift_allocObject();
  v32[2] = v28;
  v32[3] = a2;
  v33 = v69;
  v32[4] = v10;
  v32[5] = v33;
  v32[6] = v27;
  outlined init with take of ForceEffectBase(&v72, (v32 + 7));
  v32[12] = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMd, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMR);
  v34 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMR);
  v35 = swift_allocObject();
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v35 + 16) = v36;
  *(v35 + 24) = 0;
  *(v35 + 32) = -1;
  *(v34 + 16) = v35;
  v37 = swift_allocObject();
  v37[2] = partial apply for closure #1 in static Entity.loadAnchorAsync(named:in:);
  v37[3] = v32;
  v38 = v71;
  v37[4] = v35;
  v37[5] = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMR);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();

  v42 = v10;

  v43 = Future.init(_:)();

  *(v34 + 24) = v43;

  __swift_destroy_boxed_opaque_existential_1(v74);
  return v34;
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5(uint64_t a1)
{
  v1[5] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD12AnchorEntityCGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD12AnchorEntityCGGMR);
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF12AnchorEntityCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF12AnchorEntityCG_GMR);
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v9;
  v1[15] = v8;

  return MEMORY[0x1EEE6DFA0](_s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TY0_, v9, v8);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TY0_()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v0[2] = v0[5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMd, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMR);
  v7 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<AnchorEntity> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMd, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMR);
  MEMORY[0x1C68F2ED0](v6, v7);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v4 + 8))(v3, v5);
  v0[16] = static MainActor.shared.getter();
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type AsyncThrowingPublisher<LoadRequest<AnchorEntity>>.Iterator and conformance AsyncThrowingPublisher<A>.Iterator, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF12AnchorEntityCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF12AnchorEntityCG_GMR);
  v9 = *(MEMORY[0x1E69E85A8] + 4);
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TQ1_;
  v11 = v0[11];
  v12 = v0[9];

  return MEMORY[0x1EEE6D8C8](v0 + 3, v12, v8);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TY4_;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TY2_;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TY2_()
{
  v1 = v0[16];

  v0[19] = v0[3];
  v2 = v0[14];
  v3 = v0[15];

  return MEMORY[0x1EEE6DFA0](_s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TY3_, v2, v3);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TY4_()
{
  v1 = v0[16];
  v0[4] = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();

  v2 = v0[14];
  v3 = v0[15];

  return MEMORY[0x1EEE6DFA0](_s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TY5_, v2, v3);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5(uint64_t a1)
{
  v1[5] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD17BodyTrackedEntityCGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD17BodyTrackedEntityCGGMR);
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF17BodyTrackedEntityCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF17BodyTrackedEntityCG_GMR);
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v9;
  v1[15] = v8;

  return MEMORY[0x1EEE6DFA0](_s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5TY0_, v9, v8);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5TY0_()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v0[2] = v0[5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMd, &_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMR);
  v7 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<BodyTrackedEntity> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMd, &_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMR);
  MEMORY[0x1C68F2ED0](v6, v7);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v4 + 8))(v3, v5);
  v0[16] = static MainActor.shared.getter();
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type AsyncThrowingPublisher<LoadRequest<BodyTrackedEntity>>.Iterator and conformance AsyncThrowingPublisher<A>.Iterator, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF17BodyTrackedEntityCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF17BodyTrackedEntityCG_GMR);
  v9 = *(MEMORY[0x1E69E85A8] + 4);
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5TQ1_;
  v11 = v0[11];
  v12 = v0[9];

  return MEMORY[0x1EEE6D8C8](v0 + 3, v12, v8);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5TQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY4_;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5TY2_;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5TY2_()
{
  v1 = v0[16];

  v0[19] = v0[3];
  v2 = v0[14];
  v3 = v0[15];

  return MEMORY[0x1EEE6DFA0](_s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5TY3_, v2, v3);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA011BodyTrackedC0C_Tt0g5TY3_()
{
  v1 = v0[19];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  (*(v4 + 8))(v3, v5);
  if (v1)
  {
    v6 = v0[19];
    v7 = v0[11];
    v8 = v0[8];

    v9 = v0[1];

    return v9(v6);
  }

  else
  {
    type metadata accessor for CancellationError();
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    v11 = v0[11];
    v12 = v0[8];

    v13 = v0[1];

    return v13();
  }
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(uint64_t a1)
{
  v1[5] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD6EntityCGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD6EntityCGGMR);
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF6EntityCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF6EntityCG_GMR);
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v9;
  v1[15] = v8;

  return MEMORY[0x1EEE6DFA0](_s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY0_, v9, v8);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY0_()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v0[2] = v0[5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA6EntityCGMd, &_s10RealityKit11LoadRequestCyAA6EntityCGMR);
  v7 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<Entity> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA6EntityCGMd, &_s10RealityKit11LoadRequestCyAA6EntityCGMR);
  MEMORY[0x1C68F2ED0](v6, v7);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v4 + 8))(v3, v5);
  v0[16] = static MainActor.shared.getter();
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type AsyncThrowingPublisher<LoadRequest<Entity>>.Iterator and conformance AsyncThrowingPublisher<A>.Iterator, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF6EntityCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF6EntityCG_GMR);
  v9 = *(MEMORY[0x1E69E85A8] + 4);
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TQ1_;
  v11 = v0[11];
  v12 = v0[9];

  return MEMORY[0x1EEE6D8C8](v0 + 3, v12, v8);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA05ModelC0C_Tt0g5(uint64_t a1)
{
  v1[5] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD11ModelEntityCGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD11ModelEntityCGGMR);
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF11ModelEntityCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF11ModelEntityCG_GMR);
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v9;
  v1[15] = v8;

  return MEMORY[0x1EEE6DFA0](_s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA05ModelC0C_Tt0g5TY0_, v9, v8);
}

uint64_t _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA05ModelC0C_Tt0g5TY0_()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v0[2] = v0[5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
  v7 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<ModelEntity> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
  MEMORY[0x1C68F2ED0](v6, v7);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v4 + 8))(v3, v5);
  v0[16] = static MainActor.shared.getter();
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type AsyncThrowingPublisher<LoadRequest<ModelEntity>>.Iterator and conformance AsyncThrowingPublisher<A>.Iterator, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF11ModelEntityCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF11ModelEntityCG_GMR);
  v9 = *(MEMORY[0x1E69E85A8] + 4);
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = _s10RealityKit6EntityC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAA06AnchorC0C_Tt0g5TQ1_;
  v11 = v0[11];
  v12 = v0[9];

  return MEMORY[0x1EEE6D8C8](v0 + 3, v12, v8);
}

uint64_t static Entity.loadAnchorAsync(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v3 = static Entity.__loadAnchorAsync(contentsOf:withName:downsamplingStrategy:)(a1, a2, a3, v5);
  outlined destroy of BodyTrackingComponent?(v5, &_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
  return v3;
}

uint64_t static Entity.loadAnchorAsync(from:named:options:asyncOptions:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v65 = a3;
  v63 = a2;
  v67 = a1;
  Trace = type metadata accessor for LoadTrace(0);
  v9 = *(*(Trace - 1) + 64);
  MEMORY[0x1EEE9AC00](Trace);
  v64 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for UUID();
  v11 = *(v57 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = *a6;
  v61 = a5;
  v59 = *(a5 + 48);
  v20 = specialized static __ServiceLocator.shared.getter();
  v21 = *(*(v20 + 168) + 16);
  swift_beginAccess();
  v22 = *(v20 + 24);
  swift_unownedRetainStrong();
  v23 = *(v22 + 32);
  v66 = v20;

  v24 = v21;
  v25 = v23;

  *v19 = v25;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15);
  v26 = v25;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  result = (*(v16 + 8))(v19, v15);
  if (v22)
  {
    *&v68[0] = 0;
    *(&v68[0] + 1) = 0xE000000000000000;
    if (a4)
    {
      v28 = v65;
    }

    else
    {
      v28 = 0x64656D616E6E75;
    }

    if (a4)
    {
      v29 = a4;
    }

    else
    {
      v29 = 0xE700000000000000;
    }

    v54[1] = a4;

    MEMORY[0x1C68F3410](v28, v29);

    MEMORY[0x1C68F3410](45, 0xE100000000000000);
    UUID.init()();
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v30 = v57;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v31);

    (*(v11 + 8))(v14, v30);
    v32 = v68[0];
    v57 = *(*(v66 + 168) + 24);
    v55 = swift_allocBox();
    v34 = v33;
    v56 = v33;

    LoadTracer.beginLoad(loadType:logMsgTarget:)(2, v32, *(&v32 + 1), v34);
    type metadata accessor for LoadRequestDependencies();
    v35 = swift_allocObject();
    Trace = v26;
    v36 = MEMORY[0x1E69E7CC0];
    *(v35 + 16) = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v35 + 24) = v37;
    swift_beginAccess();
    *(v35 + 16) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA06AnchorC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA06AnchorC0CGMR);
    v38 = swift_allocObject();
    swift_weakInit();
    *(v38 + 16) = v32;
    LOBYTE(v36) = v60;
    *(v38 + 32) = v60;
    *(v38 + 33) = v59;
    *(v38 + 34) = 1;
    *(v38 + 36) = 4;
    swift_weakAssign();
    outlined init with copy of Entity.__LoadOptions(v61, v68);
    v39 = swift_allocObject();
    v40 = v62;
    *(v39 + 16) = v24;
    *(v39 + 24) = v40;
    v62 = v24;
    v41 = v63;
    *(v39 + 32) = v67;
    *(v39 + 40) = v41;
    *(v39 + 48) = v65;
    *(v39 + 56) = a4;
    *(v39 + 64) = v32;
    v42 = v68[3];
    *(v39 + 112) = v68[2];
    *(v39 + 128) = v42;
    *(v39 + 144) = v68[4];
    *(v39 + 160) = v69;
    v43 = v68[1];
    *(v39 + 80) = v68[0];
    *(v39 + 96) = v43;
    *(v39 + 168) = v36;
    *(v39 + 176) = v55;
    *(v39 + 184) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMd, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMR);
    v44 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12AnchorEntityCs5Error_pGSgGMR);
    v45 = swift_allocObject();
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v45 + 16) = v46;
    *(v45 + 24) = 0;
    *(v45 + 32) = -1;
    *(v44 + 16) = v45;
    v47 = swift_allocObject();
    v47[2] = partial apply for closure #1 in static Entity.loadAnchorAsync(from:named:options:asyncOptions:);
    v47[3] = v39;
    v47[4] = v45;
    v47[5] = v35;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit12AnchorEntityCs5Error_pGMR);
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    v51 = v62;

    outlined copy of Data._Representation(v67, v41);

    *(v44 + 24) = Future.init(_:)();
    v52 = v56;
    swift_beginAccess();
    v53 = v64;
    outlined init with copy of LoadTrace(v52, v64, type metadata accessor for LoadTrace);
    specialized LoadTracer.subscribe<A>(to:with:)(v44, v53);

    outlined destroy of LoadTrace(v53, type metadata accessor for LoadTrace);

    return v44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Entity.loadBodyTrackedAsync(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v57 = a3;
  }

  else
  {
    v57 = [objc_opt_self() mainBundle];
  }

  v12 = a3;
  v13 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v14 = *(v13 + 24);
  swift_unownedRetainStrong();
  v15 = *(v14 + 32);

  v16 = v15;

  *v11 = v16;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v58 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  v18 = *(v8 + 8);
  v17 = v8 + 8;
  v18(v11, v7);
  if (v16)
  {
    type metadata accessor for LoadRequestDependencies();
    v3 = swift_allocObject();
    v19 = MEMORY[0x1E69E7CC0];
    *(v3 + 16) = MEMORY[0x1E69E7CC0];
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v3 + 24) = v20;
    swift_beginAccess();
    *(v3 + 16) = v19;
    if (one-time initialization token for asynchronousLoadOptions == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v21 = static Entity.asynchronousLoadOptions;
  swift_beginAccess();
  v22 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA011BodyTrackedC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA011BodyTrackedC0CGMR);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = a1;
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  *(v23 + 32) = v21;
  *(v23 + 33) = v22;
  *(v23 + 34) = 256;
  *(v23 + 36) = 3;
  swift_weakAssign();
  swift_beginAccess();
  outlined init with copy of [String : String](v13 + 176, &v59, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  v25 = v57;
  v26 = v58;
  if (v60)
  {
    v54 = v17;
    v55 = v13;
    outlined init with take of ForceEffectBase(&v59, v61);
    v28 = v62;
    v27 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v29 = *(v27 + 16);

    v53 = v3;
    if (v29(v24, a2, v25, v28, v27))
    {
      outlined init with copy of __REAssetService(v61, &v59);
      v30 = swift_allocObject();
      v30[2] = v24;
      v30[3] = a2;
      v31 = v56;
      v30[4] = v25;
      v30[5] = v31;
      v30[6] = v23;
      outlined init with take of ForceEffectBase(&v59, (v30 + 7));
      v30[12] = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMd, &_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMR);
      v32 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17BodyTrackedEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17BodyTrackedEntityCs5Error_pGSgGMR);
      v33 = swift_allocObject();
      v34 = swift_allocObject();
      *(v34 + 16) = 0;
      *(v33 + 16) = v34;
      *(v33 + 24) = 0;
      *(v33 + 32) = -1;
      *(v32 + 16) = v33;
      v35 = swift_allocObject();
      v35[2] = partial apply for closure #1 in static Entity.loadBodyTrackedAsync(named:in:);
      v35[3] = v30;
      v36 = v53;
      v35[4] = v33;
      v35[5] = v36;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit17BodyTrackedEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit17BodyTrackedEntityCs5Error_pGMR);
      v38 = *(v37 + 48);
      v39 = *(v37 + 52);
      swift_allocObject();

      v40 = v25;

      v41 = Future.init(_:)();

      *(v32 + 24) = v41;
      __swift_destroy_boxed_opaque_existential_1(v61);
      return v32;
    }

    __swift_destroy_boxed_opaque_existential_1(v61);
    v26 = v58;
    v3 = v53;
  }

  else
  {

    outlined destroy of BodyTrackingComponent?(&v59, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  }

  v43 = swift_allocObject();
  *(v43 + 16) = v24;
  *(v43 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMd, &_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMR);
  v44 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17BodyTrackedEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17BodyTrackedEntityCs5Error_pGSgGMR);
  v45 = swift_allocObject();
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v45 + 16) = v46;
  *(v45 + 24) = 0;
  *(v45 + 32) = -1;
  *(v44 + 16) = v45;
  v47 = swift_allocObject();
  v47[2] = partial apply for closure #2 in static Entity.loadBodyTrackedAsync(named:in:);
  v47[3] = v43;
  v47[4] = v45;
  v47[5] = v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit17BodyTrackedEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit17BodyTrackedEntityCs5Error_pGMR);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();

  v51 = Future.init(_:)();

  result = v44;
  *(v44 + 24) = v51;
  return result;
}

uint64_t static Entity.loadBodyTrackedAsync(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a2;
  v69 = a1;
  v67 = type metadata accessor for URL();
  v5 = *(v67 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v13 = *(v12 + 24);
  swift_unownedRetainStrong();
  v14 = *(v13 + 32);

  v15 = v14;

  *v11 = v15;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (v15)
  {
    v64 = v6;
    v62 = v3;
    v66 = v16;
    type metadata accessor for LoadRequestDependencies();
    v11 = swift_allocObject();
    v17 = MEMORY[0x1E69E7CC0];
    v11[2] = MEMORY[0x1E69E7CC0];
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    v11[3] = v18;
    swift_beginAccess();
    v11[2] = v17;
    if (one-time initialization token for asynchronousLoadOptions == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v19 = static Entity.asynchronousLoadOptions;
  v20 = v69;
  v21 = URL.absoluteString.getter();
  v23 = v22;
  swift_beginAccess();
  v24 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA011BodyTrackedC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA011BodyTrackedC0CGMR);
  v25 = swift_allocObject();
  swift_weakInit();
  *(v25 + 16) = v21;
  *(v25 + 24) = v23;
  *(v25 + 32) = v19;
  *(v25 + 33) = v24;
  *(v25 + 34) = 256;
  *(v25 + 36) = 3;
  swift_weakAssign();
  swift_beginAccess();
  outlined init with copy of [String : String](v12 + 176, &v70, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  if (!v71)
  {

    outlined destroy of BodyTrackingComponent?(&v70, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
    v30 = v11;
LABEL_8:
    v49 = v68;
    v50 = v67;
    (*(v5 + 16))(v68, v69, v67);
    v51 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v52 = swift_allocObject();
    (*(v5 + 32))(v52 + v51, v49, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMd, &_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMR);
    v40 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17BodyTrackedEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17BodyTrackedEntityCs5Error_pGSgGMR);
    v53 = swift_allocObject();
    v54 = swift_allocObject();
    *(v54 + 16) = 0;
    *(v53 + 16) = v54;
    *(v53 + 24) = 0;
    *(v53 + 32) = -1;
    *(v40 + 16) = v53;
    v55 = swift_allocObject();
    v55[2] = partial apply for closure #2 in static Entity.loadBodyTrackedAsync(contentsOf:withName:);
    v55[3] = v52;
    v55[4] = v53;
    v55[5] = v30;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit17BodyTrackedEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit17BodyTrackedEntityCs5Error_pGMR);
    v57 = *(v56 + 48);
    v58 = *(v56 + 52);
    swift_allocObject();

    v59 = Future.init(_:)();

    *(v40 + 24) = v59;
    return v40;
  }

  v61 = a3;
  outlined init with take of ForceEffectBase(&v70, v72);
  v26 = v73;
  v27 = v74;
  __swift_project_boxed_opaque_existential_1(v72, v73);
  v28 = *(v27 + 24);

  v29 = v28(v20, v26, v27);
  v30 = v11;
  if ((v29 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v72);
    goto LABEL_8;
  }

  v31 = v67;
  (*(v5 + 16))(v68, v20, v67);
  outlined init with copy of __REAssetService(v72, &v70);
  v32 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v33 = (v64 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v64 = v30;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v69 = v12;
  v37 = swift_allocObject();
  (*(v5 + 32))(v37 + v32, v68, v31);
  v38 = (v37 + v33);
  v39 = v61;
  *v38 = v63;
  v38[1] = v39;
  *(v37 + v34) = v62;
  *(v37 + v35) = v25;
  outlined init with take of ForceEffectBase(&v70, v37 + v36);
  *(v37 + ((v36 + 47) & 0xFFFFFFFFFFFFFFF8)) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMd, &_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMR);
  v40 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17BodyTrackedEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17BodyTrackedEntityCs5Error_pGSgGMR);
  v41 = swift_allocObject();
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v41 + 16) = v42;
  *(v41 + 24) = 0;
  *(v41 + 32) = -1;
  *(v40 + 16) = v41;
  v43 = swift_allocObject();
  v43[2] = partial apply for closure #1 in static Entity.loadBodyTrackedAsync(contentsOf:withName:);
  v43[3] = v37;
  v44 = v64;
  v43[4] = v41;
  v43[5] = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit17BodyTrackedEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit17BodyTrackedEntityCs5Error_pGMR);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();

  v48 = Future.init(_:)();

  *(v40 + 24) = v48;
  __swift_destroy_boxed_opaque_existential_1(v72);
  return v40;
}

uint64_t static Entity.loadBodyTrackedAsync(from:named:options:asyncOptions:)(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v48 = a3;
  v53 = a1;
  v54 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = *a6;
  v51 = a5;
  v49 = *(a5 + 48);
  v19 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v20 = *(v19 + 24);
  swift_unownedRetainStrong();
  v21 = *(v20 + 32);

  v22 = v21;

  *v18 = v22;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
  v23 = v22;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  result = (*(v15 + 8))(v18, v14);
  if (v20)
  {
    *&v55[0] = 0;
    *(&v55[0] + 1) = 0xE000000000000000;
    if (a4)
    {
      v25 = v48;
    }

    else
    {
      v25 = 0x64656D616E6E75;
    }

    v48 = v23;
    if (a4)
    {
      v26 = a4;
    }

    else
    {
      v26 = 0xE700000000000000;
    }

    MEMORY[0x1C68F3410](v25, v26);

    MEMORY[0x1C68F3410](45, 0xE100000000000000);
    UUID.init()();
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v27);

    (*(v10 + 8))(v13, v9);
    v28 = v55[0];
    type metadata accessor for LoadRequestDependencies();
    v29 = swift_allocObject();
    v30 = MEMORY[0x1E69E7CC0];
    *(v29 + 16) = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v29 + 24) = v31;
    swift_beginAccess();
    *(v29 + 16) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA011BodyTrackedC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA011BodyTrackedC0CGMR);
    v32 = swift_allocObject();
    swift_weakInit();
    *(v32 + 16) = v28;
    *(v32 + 32) = v50;
    *(v32 + 33) = v49;
    *(v32 + 34) = 256;
    *(v32 + 36) = 3;
    swift_weakAssign();
    outlined init with copy of Entity.__LoadOptions(v51, v55);
    v33 = swift_allocObject();
    v34 = v55[3];
    *(v33 + 88) = v55[2];
    *(v33 + 104) = v34;
    *(v33 + 120) = v55[4];
    v35 = v55[1];
    *(v33 + 56) = v55[0];
    v36 = v52;
    v52 = v19;
    v37 = v53;
    v38 = v54;
    *(v33 + 16) = v36;
    *(v33 + 24) = v37;
    *(v33 + 32) = v38;
    *(v33 + 40) = v28;
    v39 = v56;
    *(v33 + 72) = v35;
    *(v33 + 136) = v39;
    *(v33 + 144) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMd, &_s10RealityKit11LoadRequestCyAA17BodyTrackedEntityCGMR);
    v40 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17BodyTrackedEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit17BodyTrackedEntityCs5Error_pGSgGMR);
    v41 = swift_allocObject();
    v42 = swift_allocObject();
    *(v42 + 16) = 0;
    *(v41 + 16) = v42;
    *(v41 + 24) = 0;
    *(v41 + 32) = -1;
    *(v40 + 16) = v41;
    v43 = swift_allocObject();
    v43[2] = partial apply for closure #1 in static Entity.loadBodyTrackedAsync(from:named:options:asyncOptions:);
    v43[3] = v33;
    v43[4] = v41;
    v43[5] = v29;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit17BodyTrackedEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit17BodyTrackedEntityCs5Error_pGMR);
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();

    outlined copy of Data._Representation(v37, v38);

    v47 = Future.init(_:)();

    *(v40 + 24) = v47;
    return v40;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Entity.loadModelAsync(from:named:options:asyncOptions:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v57 = a5;
  v55 = a3;
  v59 = a1;
  v60 = a2;
  Trace = type metadata accessor for LoadTrace(0);
  v7 = *(*(Trace - 8) + 64);
  MEMORY[0x1EEE9AC00](Trace - 8);
  v62 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for UUID();
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = specialized static __ServiceLocator.shared.getter();
  v19 = *(*(v18 + 168) + 16);
  swift_beginAccess();
  v20 = *(v18 + 24);
  swift_unownedRetainStrong();
  v21 = *(v20 + 32);
  v61 = v18;

  v22 = v19;
  v23 = v21;

  *v17 = v23;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  v26 = *(v14 + 8);
  v25 = v14 + 8;
  v26(v17, v13);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_9;
  }

  v53 = v24;
  v54 = v22;
  *&v63[0] = 0;
  *(&v63[0] + 1) = 0xE000000000000000;
  if (a4)
  {
    v27 = v55;
  }

  else
  {
    v27 = 0x64656D616E6E75;
  }

  if (a4)
  {
    v28 = a4;
  }

  else
  {
    v28 = 0xE700000000000000;
  }

  MEMORY[0x1C68F3410](v27, v28);

  MEMORY[0x1C68F3410](45, 0xE100000000000000);
  UUID.init()();
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v29 = v56;
  v30 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v30);

  (*(v9 + 8))(v12, v29);
  v12 = *(&v63[0] + 1);
  v25 = *&v63[0];
  v31 = *(*(v61 + 168) + 24);

  LODWORD(v9) = 2;
  LoadTracer.beginLoad(loadType:logMsgTarget:)(2, v25, v12, v62);
  type metadata accessor for LoadRequestDependencies();
  v22 = swift_allocObject();
  v32 = MEMORY[0x1E69E7CC0];
  v22[2] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  v22[3] = v33;
  swift_beginAccess();
  v22[2] = v32;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    goto LABEL_11;
  }

LABEL_9:
  v34 = static Entity.asynchronousLoadOptions;
  v35 = v57;
  v36 = *(v57 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA05ModelC0CGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_AA05ModelC0CGMR);
  v37 = swift_allocObject();
  swift_weakInit();
  *(v37 + 16) = v25;
  *(v37 + 24) = v12;
  *(v37 + 32) = v34;
  *(v37 + 33) = v36;
  *(v37 + 34) = 256;
  *(v37 + 36) = v9;
  swift_weakAssign();
  outlined init with copy of Entity.__LoadOptions(v35, v63);
  v38 = swift_allocObject();
  v39 = v63[3];
  *(v38 + 88) = v63[2];
  *(v38 + 104) = v39;
  *(v38 + 120) = v63[4];
  v40 = v63[1];
  *(v38 + 56) = v63[0];
  v42 = v59;
  v41 = v60;
  *(v38 + 16) = v58;
  *(v38 + 24) = v42;
  *(v38 + 32) = v41;
  *(v38 + 40) = v25;
  *(v38 + 48) = v12;
  v43 = v64;
  *(v38 + 72) = v40;
  *(v38 + 136) = v43;
  *(v38 + 144) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
  v44 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit11ModelEntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit11ModelEntityCs5Error_pGSgGMR);
  v45 = swift_allocObject();
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v45 + 16) = v46;
  *(v45 + 24) = 0;
  *(v45 + 32) = -1;
  *(v44 + 16) = v45;
  v47 = swift_allocObject();
  v47[2] = partial apply for closure #1 in static Entity.loadModelAsync(from:named:options:asyncOptions:);
  v47[3] = v38;
  v47[4] = v45;
  v47[5] = v22;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit11ModelEntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit11ModelEntityCs5Error_pGMR);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();

  outlined copy of Data._Representation(v42, v41);

  *(v44 + 24) = Future.init(_:)();
  v51 = v62;
  specialized LoadTracer.subscribe<A>(to:with:)(v44, v62);

  outlined destroy of LoadTrace(v51, type metadata accessor for LoadTrace);
  return v44;
}

uint64_t specialized LoadTracer.subscribe<A>(to:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation9LoadTraceVSgMd, &_s17RealityFoundation9LoadTraceVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v25 - v8;
  Trace = type metadata accessor for LoadTrace(0);
  v28 = *(Trace - 8);
  v10 = v28;
  v29 = Trace;
  v11 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](Trace);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocBox();
  v25 = a2;
  v26 = v13;
  v15 = v14;
  outlined init with copy of LoadTrace(a2, v14, type metadata accessor for LoadTrace);
  v31 = a1;
  v27 = type metadata accessor for LoadTrace;
  outlined init with copy of LoadTrace(a2, v12, type metadata accessor for LoadTrace);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  outlined init with take of RealityFileLoadInformation(v12, v18 + v16, type metadata accessor for LoadTrace);
  *(v18 + v17) = v3;
  outlined init with copy of LoadTrace(v25, v12, type metadata accessor for LoadTrace);
  v19 = swift_allocObject();
  outlined init with take of RealityFileLoadInformation(v12, v19 + v16, type metadata accessor for LoadTrace);
  *(v19 + v17) = v3;
  *(v19 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMd, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<AnchorEntity> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMd, &_s10RealityKit11LoadRequestCyAA12AnchorEntityCGMR);
  v20 = Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  v21 = *(v15 + 1);
  *(v15 + 1) = v20;

  v22 = *v15;
  v23 = v30;
  outlined init with copy of LoadTrace(v15, v30, v27);
  (*(v28 + 56))(v23, 0, 1, v29);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v23, v22);
  swift_endAccess();
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation9LoadTraceVSgMd, &_s17RealityFoundation9LoadTraceVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v25 - v8;
  Trace = type metadata accessor for LoadTrace(0);
  v28 = *(Trace - 8);
  v10 = v28;
  v29 = Trace;
  v11 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](Trace);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocBox();
  v25 = a2;
  v26 = v13;
  v15 = v14;
  outlined init with copy of LoadTrace(a2, v14, type metadata accessor for LoadTrace);
  v31 = a1;
  v27 = type metadata accessor for LoadTrace;
  outlined init with copy of LoadTrace(a2, v12, type metadata accessor for LoadTrace);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  outlined init with take of RealityFileLoadInformation(v12, v18 + v16, type metadata accessor for LoadTrace);
  *(v18 + v17) = v3;
  outlined init with copy of LoadTrace(v25, v12, type metadata accessor for LoadTrace);
  v19 = swift_allocObject();
  outlined init with take of RealityFileLoadInformation(v12, v19 + v16, type metadata accessor for LoadTrace);
  *(v19 + v17) = v3;
  *(v19 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA6EntityCGMd, &_s10RealityKit11LoadRequestCyAA6EntityCGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<Entity> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA6EntityCGMd, &_s10RealityKit11LoadRequestCyAA6EntityCGMR);
  v20 = Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  v21 = *(v15 + 1);
  *(v15 + 1) = v20;

  v22 = *v15;
  v23 = v30;
  outlined init with copy of LoadTrace(v15, v30, v27);
  (*(v28 + 56))(v23, 0, 1, v29);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v23, v22);
  swift_endAccess();
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation9LoadTraceVSgMd, &_s17RealityFoundation9LoadTraceVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v25 - v8;
  Trace = type metadata accessor for LoadTrace(0);
  v28 = *(Trace - 8);
  v10 = v28;
  v29 = Trace;
  v11 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](Trace);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocBox();
  v25 = a2;
  v26 = v13;
  v15 = v14;
  outlined init with copy of LoadTrace(a2, v14, type metadata accessor for LoadTrace);
  v31 = a1;
  v27 = type metadata accessor for LoadTrace;
  outlined init with copy of LoadTrace(a2, v12, type metadata accessor for LoadTrace);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  outlined init with take of RealityFileLoadInformation(v12, v18 + v16, type metadata accessor for LoadTrace);
  *(v18 + v17) = v3;
  outlined init with copy of LoadTrace(v25, v12, type metadata accessor for LoadTrace);
  v19 = swift_allocObject();
  outlined init with take of RealityFileLoadInformation(v12, v19 + v16, type metadata accessor for LoadTrace);
  *(v19 + v17) = v3;
  *(v19 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<ModelEntity> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
  v20 = Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  v21 = *(v15 + 1);
  *(v15 + 1) = v20;

  v22 = *v15;
  v23 = v30;
  outlined init with copy of LoadTrace(v15, v30, v27);
  (*(v28 + 56))(v23, 0, 1, v29);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v23, v22);
  swift_endAccess();
}

uint64_t specialized closure #2 in LoadTracer.subscribe<A>(to:with:)(uint64_t a1, unsigned int *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation9LoadTraceVSgMd, &_s17RealityFoundation9LoadTraceVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v18 - v6;
  type metadata accessor for LoadTrace(0);
  v8 = swift_projectBox();
  v9 = *(a2 + 4);
  v10 = *(a2 + 16);
  RECreateLoadTraceTypeBitFieldSignpostArg();
  v11 = *a2;
  v12 = *(a1 + 16);
  REEntityGetLocalId();
  RESignpostEmitREAssetEntityLoadEndedImpulse();
  v13 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v13 + 120, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16__REAssetService_pMd, &_s10RealityKit16__REAssetService_pMR);
  type metadata accessor for __REAssetManager();
  if (swift_dynamicCast())
  {
    v14 = *(v18[1] + 88);
    if (_REAssetManagerIsFullLoadTracingEnabled())
    {
      v15 = *(a1 + 16);
      REEntityAddLoadTraceComponent();
    }
  }

  swift_beginAccess();
  v16 = *v8;
  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(v16, v7);
  swift_endAccess();
  return outlined destroy of BodyTrackingComponent?(v7, &_s17RealityFoundation9LoadTraceVSgMd, &_s17RealityFoundation9LoadTraceVSgMR);
}

uint64_t Entity.init(contentsOf:withName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  v5[34] = type metadata accessor for MainActor();
  v5[35] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[36] = v7;
  v5[37] = v6;

  return MEMORY[0x1EEE6DFA0](Entity.init(contentsOf:withName:options:), v7, v6);
}

uint64_t Entity.init(contentsOf:withName:options:)()
{
  outlined init with copy of [String : String](*(v0 + 256), v0 + 104, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  if (*(v0 + 128) == 1)
  {
    *(v0 + 192) = 0u;
    *(v0 + 224) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 80) = 1;
    *(v0 + 84) = 0;
    *(v0 + 88) = 2;
    *(v0 + 96) = 0;
    outlined assign with take of __DownsamplingStrategy?(v0 + 192, v0 + 16);
    *(v0 + 56) = 0;
    if (*(v0 + 128) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v0 + 104, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
    }
  }

  else
  {
    v1 = *(v0 + 152);
    *(v0 + 48) = *(v0 + 136);
    *(v0 + 64) = v1;
    *(v0 + 80) = *(v0 + 168);
    *(v0 + 96) = *(v0 + 184);
    v2 = *(v0 + 120);
    *(v0 + 16) = *(v0 + 104);
    *(v0 + 32) = v2;
  }

  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 264);
  *(v0 + 392) = static Entity.asynchronousLoadOptions;
  v4 = *(v3 + 272);
  v12 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 304) = v6;
  *v6 = v0;
  v6[1] = Entity.init(contentsOf:withName:options:);
  v7 = *(v0 + 264);
  v8 = *(v0 + 240);
  v9 = *(v0 + 248);
  v10 = *(v0 + 232);

  return v12(v10, v8, v9, v0 + 16, v0 + 392);
}

{
  v1 = v0[39];
  v2 = v0[34];
  v0[41] = (*(v0[33] + 232))();

  Entity.copy(to:recursive:)(v3, 1);
  v0[42] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[43] = v5;
  v0[44] = v4;

  return MEMORY[0x1EEE6DFA0](Entity.init(contentsOf:withName:options:), v5, v4);
}

{
  v2 = v0[33];
  v1 = v0[34];
  v3 = static Entity.enumerateReferences(root:)(v0[41]);
  v0[45] = v3;
  v0[46] = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  v0[47] = v4;
  *(v4 + 16) = v3;
  v5 = *(MEMORY[0x1E69E88A0] + 4);
  v6 = swift_task_alloc();
  v0[48] = v6;
  *v6 = v0;
  v6[1] = Entity.init(contentsOf:withName:options:);

  return MEMORY[0x1EEE6DD58]();
}

{
  v1 = v0[42];

  v2 = v0[36];
  v3 = v0[37];

  return MEMORY[0x1EEE6DFA0](Entity.init(contentsOf:withName:options:), v2, v3);
}

{
  v1 = v0[35];

  if (v0[12])
  {
    Entity.LoadStatistics.log()();
  }

  v2 = v0[41];
  v3 = v0[39];
  v4 = v0[32];
  v5 = v0[29];

  outlined destroy of BodyTrackingComponent?(v4, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(v5, v6);
  outlined destroy of Entity.__LoadOptions((v0 + 2));

  v7 = v0[1];
  v8 = v0[41];

  return v7(v8);
}

{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[29];

  outlined destroy of BodyTrackingComponent?(v2, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(v3, v4);
  outlined destroy of Entity.__LoadOptions((v0 + 2));
  v5 = v0[1];
  v6 = v0[40];

  return v5();
}

uint64_t Entity.init(contentsOf:withName:options:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 304);
  v5 = *(*v2 + 248);
  v10 = *v2;
  v3[39] = a1;
  v3[40] = v1;

  v6 = v3[36];
  v7 = v3[37];
  if (v1)
  {
    v8 = Entity.init(contentsOf:withName:options:);
  }

  else
  {
    v8 = Entity.init(contentsOf:withName:options:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

void Entity.init(contentsOf:withName:options:)()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[46];
    v5 = v2[47];
    v7 = v2[45];

    v8 = v2[43];
    v9 = v2[44];

    MEMORY[0x1EEE6DFA0](Entity.init(contentsOf:withName:options:), v8, v9);
  }
}

uint64_t Entity.init(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[34] = a3;
  v4[35] = v3;
  v4[32] = a1;
  v4[33] = a2;
  v5 = type metadata accessor for URL();
  v4[36] = v5;
  v6 = *(v5 - 8);
  v4[37] = v6;
  v7 = *(v6 + 64) + 15;
  v4[38] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[39] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[40] = v9;
  v4[41] = v8;

  return MEMORY[0x1EEE6DFA0](Entity.init(contentsOf:withName:), v9, v8);
}

uint64_t Entity.init(contentsOf:withName:)()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 256);
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0;
  *(v0 + 192) = 0u;
  *(v0 + 65) = 0;
  *(v0 + 72) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 80) = 1;
  *(v0 + 84) = 0;
  *(v0 + 88) = 2;
  outlined assign with take of __DownsamplingStrategy?(v0 + 192, v0 + 16);
  *(v0 + 56) = 0;
  swift_beginAccess();
  *(v0 + 64) = static RKARSystemCore.generateDecimatedMeshes;
  Statistics = type metadata accessor for Entity.LoadStatistics();
  v6 = *(Statistics + 48);
  v7 = *(Statistics + 52);
  v8 = swift_allocObject();
  Date.init()();
  v9 = v8 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
  *v9 = 0;
  *(v9 + 8) = 2;
  *(v8 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_loadRequestStats) = MEMORY[0x1E69E7CC0];
  *(v8 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_async) = 1;
  v10 = (v8 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
  *v10 = 0xD000000000000027;
  v10[1] = 0x80000001C18ED610;
  *(v0 + 96) = v8;
  (*(v2 + 16))(v1, v4, v3);
  outlined init with copy of Entity.__LoadOptions(v0 + 16, v0 + 104);
  v11 = swift_task_alloc();
  *(v0 + 336) = v11;
  *v11 = v0;
  v11[1] = Entity.init(contentsOf:withName:);
  v12 = *(v0 + 304);
  v13 = *(v0 + 272);
  v14 = *(v0 + 280);
  v15 = *(v0 + 264);

  return Entity.init(contentsOf:withName:options:)(v12, v15, v13, v0 + 104);
}

{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[36];
  v4 = v0[37];
  v5 = v0[32];

  (*(v4 + 8))(v5, v3);
  outlined destroy of Entity.__LoadOptions((v0 + 2));

  v6 = v0[1];
  v7 = v0[44];

  return v6(v7);
}

{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[36];
  v4 = v0[37];
  v5 = v0[32];

  (*(v4 + 8))(v5, v3);
  outlined destroy of Entity.__LoadOptions((v0 + 2));

  v6 = v0[1];
  v7 = v0[43];

  return v6();
}

uint64_t Entity.init(contentsOf:withName:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v7 = v4[40];
    v8 = v4[41];
    v9 = Entity.init(contentsOf:withName:);
  }

  else
  {
    v4[44] = a1;
    v7 = v4[40];
    v8 = v4[41];
    v9 = Entity.init(contentsOf:withName:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t static Entity.updateInteractions(root:)(uint64_t a1)
{
  v2 = swift_beginAccess();
  v3 = static Entity.__disableUpdateInteractionEntities;
  if (static Entity.__disableUpdateInteractionEntities)
  {
    v28 = a1;
    MEMORY[0x1EEE9AC00](v2);
    v27[2] = &v28;

    v4 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_Say10RealityKit6EntityCG_TG5TA_0, v27, v3);

    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (static __RKEntityInteractionsComponent.registration && (v6 = *(static __RKEntityInteractionsComponent.registration + 3), v7 = *(a1 + 16), REEntityGetCustomComponent()) && (Object = RECustomComponentGetObject()) != 0)
  {
    if (*(Object + 16))
    {
    }

    else
    {
      v9 = __RKEntityInteractionsComponent.decodedJSON()();
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);

  if (v10)
  {
    if (static __RKEntityInteractionsComponent.registration && (v11 = *(static __RKEntityInteractionsComponent.registration + 3), v12 = *(a1 + 16), REEntityGetCustomComponent()) && (v13 = RECustomComponentGetObject()) != 0)
    {
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = *(v13 + 16);
      }

      else
      {
        v14 = __RKEntityInteractionsComponent.decodedJSON()();
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    Entity.__interactions.setter(MEMORY[0x1E69E7CC0]);
    Entity.__interactions.setter(v14);
  }

  v16 = *(a1 + 16);
  if (REEntityGetChildCount() < 1)
  {
  }

  v17 = 0;
  while (1)
  {
    v18 = *(a1 + 16);
    result = REEntityGetChildCount();
    if (v17 >= result)
    {
      break;
    }

    v19 = *(a1 + 16);
    result = REEntityGetChild();
    if (!result)
    {
      goto LABEL_38;
    }

    v20 = result;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v21 = swift_dynamicCastClassUnconditional();
LABEL_23:
      v22 = v21;
      goto LABEL_27;
    }

    result = REEntityIsBeingDestroyed();
    if (result)
    {
      goto LABEL_37;
    }

    v23 = specialized static Entity.entityInfoType(_:)();
    if (!v23)
    {
      v21 = makeEntity(for:)(v20);
      goto LABEL_23;
    }

    v22 = (*(v23 + 232))();
    v24 = *(v22 + 16);

    MEMORY[0x1C68F9740](v24, 0);
    *(v22 + 16) = v20;
    MEMORY[0x1C68F9740](v20, v22);

LABEL_27:
    v25 = *(a1 + 16);
    result = REEntityGetChildCount();
    if (v17 >= result)
    {
      goto LABEL_36;
    }

    ++v17;
    static Entity.updateInteractions(root:)(v22);

    v26 = *(a1 + 16);
    if (v17 >= REEntityGetChildCount())
    {
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Entity.updateSceneGravityIfNeeded()()
{
  v1 = *(v0 + 16);
  SceneNullable = REEntityGetSceneNullable();
  if (SceneNullable)
  {
    v3 = SceneNullable;
    v4 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v4)
    {
      v5 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      v5 = Scene.init(coreScene:)(v3);
    }

    v6 = v5;
    swift_beginAccess();
    if (static __RKScenePhysics.registration)
    {
      v7 = *(static __RKScenePhysics.registration + 3);
      v8 = *(v6 + 16);
      ComponentsOfCustomType = RESceneGetComponentsOfCustomType();
      if (v10)
      {
        v11 = *ComponentsOfCustomType;
        Object = RECustomComponentGetObject();
        if (Object)
        {
          v17 = *Object;
          v13 = *(v6 + 16);
          if (RESceneGetECSManagerNullable())
          {
            ServiceLocator = REECSManagerGetServiceLocator();
            if (MEMORY[0x1C68FE290](ServiceLocator))
            {
              REPhysicsSimulationServiceGetDefaultGravity();
              if (*v15.i32 != *v17.i32 || (v16 = vceq_f32(*&vextq_s8(v15, v15, 4uLL), *&vextq_s8(v17, v17, 4uLL)), (v16.i32[0] & v16.i32[1] & 1) == 0))
              {
                REPhysicsSimulationServiceSetDefaultGravity();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t static RealityFileLoadInformationResolver.resolve(url:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v55[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v55[-v10];
  if ((specialized static RealityFileLoadInformationResolver.urlContainsPathExtension(_:_:)(a1, 0x7974696C616572, 0xE700000000000000) & 1) == 0)
  {
    Information = type metadata accessor for RealityFileLoadInformation(0);
    v22 = *(*(Information - 8) + 56);

    return v22(a2, 1, 1, Information);
  }

  v57 = a2;
  v12 = *(v5 + 16);
  v62 = v4;
  v12(v11, a1, v4);
  v13 = URL.absoluteString.getter();
  v15 = specialized BidirectionalCollection.last.getter(v13, v14);
  v17 = v16;

  if (!v17)
  {
    v20 = 1;
    goto LABEL_12;
  }

  if (v15 != 47 || v17 != 0xE100000000000000)
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v20 = v19 ^ 1;
LABEL_12:
    v56 = v20;
    goto LABEL_14;
  }

  v56 = 0;
LABEL_14:
  v59 = 0;
  v60 = 0;
  v24 = (v5 + 8);
  v58 = (v5 + 32);
  v25 = MEMORY[0x1E69E6158];
  v26 = v8;
  while (1)
  {
    LODWORD(v61) = specialized static RealityFileLoadInformationResolver.urlContainsPathExtension(_:_:)(v11, 0x7974696C616572, 0xE700000000000000);
    v65 = URL.pathExtension.getter();
    v66 = v27;
    v63 = 0x7974696C616572;
    v64 = 0xE700000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v28 = v25;
    v29 = StringProtocol.caseInsensitiveCompare<A>(_:)();

    v30 = v11;
    URL.deletingLastPathComponent()();
    v31 = specialized static RealityFileLoadInformationResolver.urlContainsPathExtension(_:_:)(v26, 0x7974696C616572, 0xE700000000000000);
    v32 = *v24;
    v33 = v26;
    (*v24)(v26, v62);
    if ((v61 & 1) == 0 || !((v29 != 0) | v31 & 1))
    {
      break;
    }

    v61 = v32;
    v65 = URL.lastPathComponent.getter();
    v66 = v34;
    v25 = v28;
    v35 = StringProtocol.removingPercentEncoding.getter();
    if (!v36)
    {
      v61(v30, v62);

      goto LABEL_29;
    }

    v37 = v35;
    v38 = v36;

    v39 = MEMORY[0x1C68F3280](v37, v38);

    if (v60)
    {
      v40 = v59;
    }

    else
    {
      v40 = 0;
    }

    if (v60)
    {
      v41 = v60;
    }

    else
    {
      v41 = 0xE000000000000000;
    }

    v42 = MEMORY[0x1C68F3280](v40, v41);

    v43 = [v39 stringByAppendingPathComponent_];

    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v44;

    v26 = v33;
    URL.deletingLastPathComponent()();
    v45 = v62;
    v61(v30, v62);
    (*v58)(v30, v33, v45);
    v11 = v30;
  }

  URL.path.getter();
  v46 = String.count.getter();

  if (v46 < 2 || (v65 = URL.pathExtension.getter(), v66 = v47, v63 = 0x7974696C616572, v64 = 0xE700000000000000, v48 = StringProtocol.caseInsensitiveCompare<A>(_:)(), , v48))
  {
    v32(v30, v62);
LABEL_29:

    v49 = type metadata accessor for RealityFileLoadInformation(0);
    return (*(*(v49 - 8) + 56))(v57, 1, 1, v49);
  }

  v50 = v60;
  if (v56 & 1 | (v60 == 0))
  {
    v51 = v57;
    v52 = v59;
  }

  else
  {
    v65 = v59;
    v66 = v60;

    MEMORY[0x1C68F3410](47, 0xE100000000000000);

    v52 = v65;
    v50 = v66;
    v51 = v57;
  }

  (*v58)(v51, v30, v62);
  v53 = type metadata accessor for RealityFileLoadInformation(0);
  v54 = &v51[*(v53 + 20)];
  *v54 = v52;
  v54[1] = v50;
  return (*(*(v53 - 8) + 56))(v51, 0, 1, v53);
}

uint64_t static Entity.__loadAsync(named:in:options:asyncOptions:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned __int8 *a5)
{
  v103 = a2;
  v100 = a1;
  Trace = type metadata accessor for LoadTrace(0);
  v9 = *(*(Trace - 8) + 64);
  MEMORY[0x1EEE9AC00](Trace);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v101) = *a5;
  v95 = a4;
  LODWORD(v99) = *(a4 + 48);
  if (a3)
  {
    v104 = a3;
  }

  else
  {
    v104 = [objc_opt_self() mainBundle];
  }

  v17 = a3;
  v18 = specialized static __ServiceLocator.shared.getter();
  v19 = *(*(v18 + 168) + 16);
  swift_beginAccess();
  v20 = *(v18 + 24);
  swift_unownedRetainStrong();
  v21 = *(v20 + 32);

  v97 = v19;
  v22 = v21;

  v23 = *(*(v18 + 168) + 32);
  *v16 = v22;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12);
  v24 = v22;
  v102 = v23;

  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v16, v12);
  if (v20)
  {
    v26 = *(*(v18 + 168) + 24);
    *&v106 = 0;
    *(&v106 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(17);
    v27 = v103;

    v28 = v100;
    *&v106 = v100;
    *(&v106 + 1) = v27;
    MEMORY[0x1C68F3410](0x7562206D6F726620, 0xED000020656C646ELL);
    v29 = [v104 bundleIdentifier];
    v30 = v18;
    v92 = v24;
    if (v29)
    {
      v31 = v29;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
    }

    else
    {
      v34 = 0x80000001C18ED640;
      v32 = 0xD000000000000010;
    }

    v94 = v11;
    v35 = swift_allocBox();
    v37 = v36;
    MEMORY[0x1C68F3410](v32, v34);

    v91 = v37;
    v93 = v26;
    LoadTracer.beginLoad(loadType:logMsgTarget:)(2, v106, *(&v106 + 1), v37);

    type metadata accessor for LoadRequestDependencies();
    v38 = swift_allocObject();
    v39 = MEMORY[0x1E69E7CC0];
    *(v38 + 16) = MEMORY[0x1E69E7CC0];
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    *(v38 + 24) = v40;
    swift_beginAccess();
    *(v38 + 16) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMR);
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = v103;
    *(v41 + 16) = v28;
    *(v41 + 24) = v42;
    *(v41 + 32) = v101;
    *(v41 + 33) = v99;
    *(v41 + 34) = 1;
    *(v41 + 36) = 1;
    swift_weakAssign();
    swift_beginAccess();
    outlined init with copy of [String : String](v30 + 176, &v106, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
    v98 = v35;
    if (*(&v107 + 1))
    {
      outlined init with take of ForceEffectBase(&v106, &v112);
      v43 = v28;
      v44 = v113;
      v45 = v114;
      __swift_project_boxed_opaque_existential_1(&v112, v113);
      v46 = *(v45 + 16);

      v89 = v38;

      if (v46(v43, v42, v104, v44, v45))
      {
        v47 = v95;
        v48 = *(v95 + 80);
        if (v48)
        {
          v49 = v48 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
          *v49 = 1;
          *(v49 + 8) = 0;
        }

        outlined init with copy of Entity.__LoadOptions(v47, &v106);
        outlined init with copy of __REAssetService(&v112, v105);
        v50 = swift_allocObject();
        *(v50 + 16) = v100;
        *(v50 + 24) = v42;
        *(v50 + 32) = v104;
        *(v50 + 40) = v99;
        v51 = v109;
        *(v50 + 80) = v108;
        *(v50 + 96) = v51;
        *(v50 + 112) = v110;
        v52 = v111;
        v53 = v107;
        *(v50 + 48) = v106;
        *(v50 + 64) = v53;
        v54 = v96;
        *(v50 + 128) = v52;
        *(v50 + 136) = v54;
        *(v50 + 144) = v41;
        outlined init with take of ForceEffectBase(v105, v50 + 152);
        v55 = v92;
        *(v50 + 192) = v92;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA6EntityCGMd, &_s10RealityKit11LoadRequestCyAA6EntityCGMR);
        v56 = swift_allocObject();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMR);
        v57 = swift_allocObject();
        v58 = swift_allocObject();
        *(v58 + 16) = 0;
        *(v57 + 16) = v58;
        *(v57 + 24) = 0;
        *(v57 + 32) = -1;
        *(v56 + 16) = v57;
        v59 = swift_allocObject();
        v59[2] = partial apply for closure #1 in static Entity.__loadAsync(named:in:options:asyncOptions:);
        v59[3] = v50;
        v60 = v89;
        v59[4] = v57;
        v59[5] = v60;
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMR);
        v62 = *(v61 + 48);
        v63 = *(v61 + 52);
        swift_allocObject();
        v64 = v55;

        v65 = v104;

        *(v56 + 24) = Future.init(_:)();
        v66 = v94;
        outlined init with copy of LoadTrace(v91, v94, type metadata accessor for LoadTrace);
        specialized LoadTracer.subscribe<A>(to:with:)(v56, v66);

        outlined destroy of LoadTrace(v66, type metadata accessor for LoadTrace);
        __swift_destroy_boxed_opaque_existential_1(&v112);
        goto LABEL_16;
      }

      v67 = v98;
      v99 = v30;
      __swift_destroy_boxed_opaque_existential_1(&v112);
      v68 = v89;
      v28 = v100;
    }

    else
    {
      v67 = v35;
      v99 = v30;

      outlined destroy of BodyTrackingComponent?(&v106, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
      v68 = v38;
    }

    outlined init with copy of Entity.__LoadOptions(v95, &v106);
    v69 = swift_allocObject();
    v70 = v97;
    *(v69 + 16) = v97;
    *(v69 + 24) = v101;
    v71 = v109;
    *(v69 + 64) = v108;
    *(v69 + 80) = v71;
    *(v69 + 96) = v110;
    v72 = v111;
    v73 = v107;
    *(v69 + 32) = v106;
    *(v69 + 48) = v73;
    v74 = v102;
    *(v69 + 112) = v72;
    *(v69 + 120) = v74;
    *(v69 + 128) = v28;
    *(v69 + 136) = v42;
    v75 = v104;
    *(v69 + 144) = v104;
    *(v69 + 152) = v67;
    v76 = v92;
    v77 = v96;
    *(v69 + 160) = v92;
    *(v69 + 168) = v77;
    *(v69 + 176) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA6EntityCGMd, &_s10RealityKit11LoadRequestCyAA6EntityCGMR);
    v56 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMR);
    v78 = swift_allocObject();
    v79 = swift_allocObject();
    *(v79 + 16) = 0;
    *(v78 + 16) = v79;
    *(v78 + 24) = 0;
    *(v78 + 32) = -1;
    *(v56 + 16) = v78;
    v80 = swift_allocObject();
    v80[2] = partial apply for closure #2 in static Entity.__loadAsync(named:in:options:asyncOptions:);
    v80[3] = v69;
    v80[4] = v78;
    v80[5] = v68;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMR);
    v82 = *(v81 + 48);
    v83 = *(v81 + 52);
    swift_allocObject();
    v101 = v70;
    v84 = v76;

    v85 = v75;

    *(v56 + 24) = Future.init(_:)();
    v86 = v91;
    swift_beginAccess();
    v87 = v94;
    outlined init with copy of LoadTrace(v86, v94, type metadata accessor for LoadTrace);
    specialized LoadTracer.subscribe<A>(to:with:)(v56, v87);

    outlined destroy of LoadTrace(v87, type metadata accessor for LoadTrace);
LABEL_16:

    return v56;
  }

  __break(1u);
  return result;
}

uint64_t static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v146 = a3;
  v134 = a2;
  v133 = type metadata accessor for URL();
  v130 = *(v133 - 8);
  v8 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v129 = v9;
  v132 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Trace = type metadata accessor for LoadTrace(0);
  v11 = *(*(Trace - 8) + 64);
  MEMORY[0x1EEE9AC00](Trace);
  v141 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v126 - v15;
  Information = type metadata accessor for RealityFileLoadInformation(0);
  v139 = *(Information - 8);
  v17 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](Information);
  v128 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v140 = &v126 - v20;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v148) = *a5;
  v131 = a4;
  v145 = *(a4 + 48);
  v26 = specialized static __ServiceLocator.shared.getter();
  v27 = *(*(v26 + 168) + 16);
  swift_beginAccess();
  v28 = *(v26 + 24);
  swift_unownedRetainStrong();
  v29 = *(v28 + 32);

  v147 = v27;
  v30 = v29;

  v31 = *(*(v26 + 168) + 32);
  *v25 = v30;
  (*(v22 + 104))(v25, *MEMORY[0x1E69E8020], v21);
  v149 = v30;

  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  result = (*(v22 + 8))(v25, v21);
  if (v28)
  {
    v150 = v31;
    v33 = *(*(v26 + 168) + 24);
    v137 = swift_allocBox();
    v35 = v34;

    v36 = URL.lastPathComponent.getter();
    v143 = v35;
    LoadTracer.beginLoad(loadType:logMsgTarget:)(2, v36, v37, v35);

    type metadata accessor for LoadRequestDependencies();
    v38 = swift_allocObject();
    v39 = MEMORY[0x1E69E7CC0];
    *(v38 + 16) = MEMORY[0x1E69E7CC0];
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v38 + 24) = v41;
    swift_beginAccess();
    *(v38 + 16) = v39;
    v42 = URL.absoluteString.getter();
    v44 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMR);
    v45 = swift_allocObject();
    swift_weakInit();
    *(v45 + 16) = v42;
    *(v45 + 24) = v44;
    *(v45 + 32) = v148;
    *(v45 + 33) = v145;
    *(v45 + 34) = 1;
    *(v45 + 36) = 1;
    swift_weakAssign();
    type metadata accessor for RealityFileLoadInformationResolver();

    v46 = a1;
    static RealityFileLoadInformationResolver.resolve(url:)(a1, v16);
    v47 = v139;
    v48 = (*(v139 + 48))(v16, 1, Information);
    v144 = v26;
    v136 = v33;
    v142 = v40;
    if (v48 == 1)
    {
      outlined destroy of BodyTrackingComponent?(v16, &_s17RealityFoundation0A19FileLoadInformationVSgMd, &_s17RealityFoundation0A19FileLoadInformationVSgMR);
      swift_beginAccess();
      outlined init with copy of [String : String](v26 + 176, &v152, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
      if (*(&v153 + 1))
      {
        outlined init with take of ForceEffectBase(&v152, &v158);
        v49 = v159;
        v50 = v160;
        __swift_project_boxed_opaque_existential_1(&v158, v159);
        v51 = v46;
        v52 = (*(v50 + 24))(v46, v49, v50);
        v53 = v143;
        if (v52)
        {
          v139 = v38;
          v54 = v131;
          v55 = *(v131 + 80);
          if (v55)
          {
            v56 = v55 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
            *v56 = 1;
            *(v56 + 8) = 0;
          }

          v57 = v130;
          (*(v130 + 16))(v132, v46, v133);
          outlined init with copy of Entity.__LoadOptions(v54, &v152);
          outlined init with copy of __REAssetService(&v158, v151);
          v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
          v59 = (v129 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
          v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
          v148 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
          v61 = (v60 + 39) & 0xFFFFFFFFFFFFFFF8;
          v62 = (v61 + 95) & 0xFFFFFFFFFFFFFFF8;
          v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
          v64 = swift_allocObject();
          v65 = v150;
          *(v64 + 16) = v144;
          *(v64 + 24) = v65;
          (*(v57 + 32))(v64 + v58, v132, v133);
          *(v64 + v59) = v135;
          *(v64 + v60) = v147;
          v66 = v64 + v148;
          v67 = v146;
          *v66 = v134;
          *(v66 + 8) = v67;
          *(v66 + 16) = v145;
          v68 = v64 + v61;
          v69 = v155;
          *(v68 + 32) = v154;
          *(v68 + 48) = v69;
          *(v68 + 64) = v156;
          *(v68 + 80) = v157;
          v70 = v153;
          *v68 = v152;
          *(v68 + 16) = v70;
          *(v64 + v62) = v45;
          outlined init with take of ForceEffectBase(v151, v64 + v63);
          v71 = v149;
          *(v64 + ((v63 + 47) & 0xFFFFFFFFFFFFFFF8)) = v149;
          v72 = swift_allocObject();
          *(v72 + 16) = partial apply for closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:);
          *(v72 + 24) = v64;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA6EntityCGMd, &_s10RealityKit11LoadRequestCyAA6EntityCGMR);
          v73 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMR);
          v74 = swift_allocObject();
          v75 = swift_allocObject();
          *(v75 + 16) = 0;
          *(v74 + 16) = v75;
          *(v74 + 24) = 0;
          *(v74 + 32) = -1;
          *(v73 + 16) = v74;
          v76 = swift_allocObject();
          v76[2] = _ss6ResultOy10RealityKit6EntityCs5Error_pGIegg_Iegg_AByxsAF_pGRi_zRi0_zlyAEIsegn_Iegg_TRTA;
          v76[3] = v72;
          v77 = v139;
          v76[4] = v74;
          v76[5] = v77;
          v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMR);
          v79 = *(v78 + 48);
          v80 = *(v78 + 52);
          swift_allocObject();

          v81 = v147;
          v82 = v71;

          v83 = v73;
          *(v73 + 24) = Future.init(_:)();
          v84 = v141;
          outlined init with copy of LoadTrace(v143, v141, type metadata accessor for LoadTrace);
          specialized LoadTracer.subscribe<A>(to:with:)(v83, v84);

          outlined destroy of LoadTrace(v84, type metadata accessor for LoadTrace);
          __swift_destroy_boxed_opaque_existential_1(&v158);
          goto LABEL_12;
        }

        __swift_destroy_boxed_opaque_existential_1(&v158);
      }

      else
      {
        outlined destroy of BodyTrackingComponent?(&v152, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
        v53 = v143;
        v51 = a1;
      }

      v112 = v130;
      v113 = v132;
      v114 = v133;
      (*(v130 + 16))(v132, v51, v133);
      v115 = (*(v112 + 80) + 16) & ~*(v112 + 80);
      v116 = swift_allocObject();
      (*(v112 + 32))(v116 + v115, v113, v114);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA6EntityCGMd, &_s10RealityKit11LoadRequestCyAA6EntityCGMR);
      v117 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMR);
      v118 = swift_allocObject();
      v119 = swift_allocObject();
      *(v119 + 16) = 0;
      *(v118 + 16) = v119;
      *(v118 + 24) = 0;
      *(v118 + 32) = -1;
      *(v117 + 16) = v118;
      v120 = swift_allocObject();
      v120[2] = partial apply for closure #3 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:);
      v120[3] = v116;
      v120[4] = v118;
      v120[5] = v38;
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMR);
      v122 = *(v121 + 48);
      v123 = *(v121 + 52);
      swift_allocObject();

      *(v117 + 24) = Future.init(_:)();
      v124 = v53;
      v83 = v117;
      v125 = v141;
      outlined init with copy of LoadTrace(v124, v141, type metadata accessor for LoadTrace);
      specialized LoadTracer.subscribe<A>(to:with:)(v117, v125);

      outlined destroy of LoadTrace(v125, type metadata accessor for LoadTrace);
    }

    else
    {
      v85 = v140;
      outlined init with take of RealityFileLoadInformation(v16, v140, type metadata accessor for RealityFileLoadInformation);
      outlined init with copy of Entity.__LoadOptions(v131, &v152);
      v86 = v128;
      outlined init with copy of LoadTrace(v85, v128, type metadata accessor for RealityFileLoadInformation);
      v87 = *(v47 + 80);
      v139 = v38;
      v88 = (v87 + 136) & ~v87;
      v89 = (v127 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
      v90 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
      v91 = (v90 + 15) & 0xFFFFFFFFFFFFFFF8;
      v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
      v93 = swift_allocObject();
      v94 = v155;
      *(v93 + 72) = v154;
      *(v93 + 88) = v94;
      *(v93 + 104) = v156;
      v95 = v153;
      *(v93 + 40) = v152;
      v96 = v146;
      *(v93 + 16) = v134;
      *(v93 + 24) = v96;
      *(v93 + 32) = v148;
      v97 = v157;
      *(v93 + 56) = v95;
      v98 = v150;
      *(v93 + 120) = v97;
      *(v93 + 128) = v98;
      outlined init with take of RealityFileLoadInformation(v86, v93 + v88, type metadata accessor for RealityFileLoadInformation);
      *(v93 + v89) = v137;
      *(v93 + v90) = v149;
      *(v93 + v91) = v135;
      *(v93 + v92) = v45;
      v99 = v147;
      *(v93 + ((v92 + 15) & 0xFFFFFFFFFFFFFFF8)) = v147;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA6EntityCGMd, &_s10RealityKit11LoadRequestCyAA6EntityCGMR);
      v100 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMR);
      v101 = swift_allocObject();
      v102 = swift_allocObject();
      *(v102 + 16) = 0;
      *(v101 + 16) = v102;
      *(v101 + 24) = 0;
      *(v101 + 32) = -1;
      *(v100 + 16) = v101;
      v103 = swift_allocObject();
      v103[2] = partial apply for closure #1 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:);
      v103[3] = v93;
      v104 = v139;
      v103[4] = v101;
      v103[5] = v104;
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMR);
      v106 = *(v105 + 48);
      v107 = *(v105 + 52);
      swift_allocObject();

      v108 = v99;
      v109 = v149;

      v83 = v100;
      *(v100 + 24) = Future.init(_:)();
      v110 = v143;
      swift_beginAccess();
      v111 = v141;
      outlined init with copy of LoadTrace(v110, v141, type metadata accessor for LoadTrace);
      specialized LoadTracer.subscribe<A>(to:with:)(v83, v111);

      outlined destroy of LoadTrace(v111, type metadata accessor for LoadTrace);
      outlined destroy of LoadTrace(v140, type metadata accessor for RealityFileLoadInformation);
    }

LABEL_12:

    return v83;
  }

  __break(1u);
  return result;
}

uint64_t static Entity.loadAsync(from:named:options:asyncOptions:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v65 = a3;
  v63 = a2;
  v67 = a1;
  Trace = type metadata accessor for LoadTrace(0);
  v9 = *(*(Trace - 1) + 64);
  MEMORY[0x1EEE9AC00](Trace);
  v64 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for UUID();
  v11 = *(v57 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = *a6;
  v61 = a5;
  v59 = *(a5 + 48);
  v20 = specialized static __ServiceLocator.shared.getter();
  v21 = *(*(v20 + 168) + 16);
  swift_beginAccess();
  v22 = *(v20 + 24);
  swift_unownedRetainStrong();
  v23 = *(v22 + 32);
  v66 = v20;

  v24 = v21;
  v25 = v23;

  *v19 = v25;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15);
  v26 = v25;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  result = (*(v16 + 8))(v19, v15);
  if (v22)
  {
    *&v68[0] = 0;
    *(&v68[0] + 1) = 0xE000000000000000;
    if (a4)
    {
      v28 = v65;
    }

    else
    {
      v28 = 0x64656D616E6E75;
    }

    if (a4)
    {
      v29 = a4;
    }

    else
    {
      v29 = 0xE700000000000000;
    }

    v54[1] = a4;

    MEMORY[0x1C68F3410](v28, v29);

    MEMORY[0x1C68F3410](45, 0xE100000000000000);
    UUID.init()();
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v30 = v57;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v31);

    (*(v11 + 8))(v14, v30);
    v32 = v68[0];
    v57 = *(*(v66 + 168) + 24);
    v55 = swift_allocBox();
    v34 = v33;
    v56 = v33;

    LoadTracer.beginLoad(loadType:logMsgTarget:)(2, v32, *(&v32 + 1), v34);
    type metadata accessor for LoadRequestDependencies();
    v35 = swift_allocObject();
    Trace = v26;
    v36 = MEMORY[0x1E69E7CC0];
    *(v35 + 16) = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v35 + 24) = v37;
    swift_beginAccess();
    *(v35 + 16) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMR);
    v38 = swift_allocObject();
    swift_weakInit();
    *(v38 + 16) = v32;
    LOBYTE(v36) = v60;
    *(v38 + 32) = v60;
    *(v38 + 33) = v59;
    *(v38 + 34) = 1;
    *(v38 + 36) = 1;
    swift_weakAssign();
    outlined init with copy of Entity.__LoadOptions(v61, v68);
    v39 = swift_allocObject();
    v40 = v62;
    *(v39 + 16) = v24;
    *(v39 + 24) = v40;
    v62 = v24;
    v41 = v63;
    *(v39 + 32) = v67;
    *(v39 + 40) = v41;
    *(v39 + 48) = v65;
    *(v39 + 56) = a4;
    *(v39 + 64) = v32;
    v42 = v68[3];
    *(v39 + 112) = v68[2];
    *(v39 + 128) = v42;
    *(v39 + 144) = v68[4];
    *(v39 + 160) = v69;
    v43 = v68[1];
    *(v39 + 80) = v68[0];
    *(v39 + 96) = v43;
    *(v39 + 168) = v36;
    *(v39 + 176) = v55;
    *(v39 + 184) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA6EntityCGMd, &_s10RealityKit11LoadRequestCyAA6EntityCGMR);
    v44 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit6EntityCs5Error_pGSgGMR);
    v45 = swift_allocObject();
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v45 + 16) = v46;
    *(v45 + 24) = 0;
    *(v45 + 32) = -1;
    *(v44 + 16) = v45;
    v47 = swift_allocObject();
    v47[2] = partial apply for closure #1 in static Entity.loadAsync(from:named:options:asyncOptions:);
    v47[3] = v39;
    v47[4] = v45;
    v47[5] = v35;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit6EntityCs5Error_pGMR);
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    v51 = v62;

    outlined copy of Data._Representation(v67, v41);

    *(v44 + 24) = Future.init(_:)();
    v52 = v56;
    swift_beginAccess();
    v53 = v64;
    outlined init with copy of LoadTrace(v52, v64, type metadata accessor for LoadTrace);
    specialized LoadTracer.subscribe<A>(to:with:)(v44, v53);

    outlined destroy of LoadTrace(v53, type metadata accessor for LoadTrace);

    return v44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t Entity.LoadError.errorDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Error = type metadata accessor for Entity.LoadError(0);
  v8 = *(*(Error - 8) + 64);
  MEMORY[0x1EEE9AC00](Error);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of LoadTrace(v1, v10, type metadata accessor for Entity.LoadError);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v3 + 32))(v6, v10, v2);
      v31 = 0;
      v32 = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      v31 = 0xD00000000000001ELL;
      v32 = 0x80000001C18EDD60;
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v23);

      v21 = 34;
      v22 = 0xE100000000000000;
      goto LABEL_11;
    case 2u:
      v18 = *v10;
      v19 = v10[1];
      v31 = 0;
      v32 = 0xE000000000000000;
      _StringGuts.grow(_:)(98);
      MEMORY[0x1C68F3410](0xD00000000000001DLL, 0x80000001C18EDC70);
      MEMORY[0x1C68F3410](v18, v19);

      v13 = 0xD000000000000043;
      v14 = 0x80000001C18EDC90;
      goto LABEL_14;
    case 3u:
      (*(v3 + 32))(v6, v10, v2);
      v31 = 0;
      v32 = 0xE000000000000000;
      _StringGuts.grow(_:)(104);
      MEMORY[0x1C68F3410](0xD000000000000022, 0x80000001C18EDBF0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v20);

      v21 = 0xD000000000000044;
      v22 = 0x80000001C18EDC20;
LABEL_11:
      MEMORY[0x1C68F3410](v21, v22);
      v24 = v31;
      (*(v3 + 8))(v6, v2);
      return v24;
    case 4u:
      v16 = *v10;
      v17 = v10[1];
      v31 = 0;
      v32 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      v31 = 0xD000000000000020;
      v32 = 0x80000001C18EDB50;
      MEMORY[0x1C68F3410](v16, v17);

      return v31;
    case 5u:
      v25 = *v10;
      v26 = v10[1];
      v28 = v10[2];
      v27 = v10[3];
      v31 = 0;
      v32 = 0xE000000000000000;
      _StringGuts.grow(_:)(84);
      MEMORY[0x1C68F3410](0xD000000000000019, 0x80000001C18EDA60);
      MEMORY[0x1C68F3410](v25, v26);

      MEMORY[0x1C68F3410](0xD000000000000017, 0x80000001C18EDA80);
      MEMORY[0x1C68F3410](v28, v27);

      v13 = 0xD000000000000020;
      v14 = 0x80000001C18EDAA0;
      goto LABEL_14;
    case 6u:
      v29 = *v10;
      v30 = v10[1];
      v31 = 0;
      v32 = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      v31 = 0xD000000000000016;
      v32 = 0x80000001C18EDA40;
      MEMORY[0x1C68F3410](v29, v30);

      v13 = 11810;
      v14 = 0xE200000000000000;
      goto LABEL_14;
    case 7u:
      return 0xD000000000000031;
    case 8u:
      return 0xD000000000000030;
    case 9u:
      return 0xD000000000000030;
    case 0xAu:
      return 0xD000000000000022;
    case 0xBu:
      return 0xD000000000000037;
    case 0xCu:
      return 0xD000000000000030;
    default:
      v11 = *v10;
      v12 = v10[1];
      v31 = 0;
      v32 = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v31 = 0xD000000000000023;
      v32 = 0x80000001C18DF870;
      MEMORY[0x1C68F3410](v11, v12);

      v13 = 0x6E7562206E692022;
      v14 = 0xEB00000000656C64;
LABEL_14:
      MEMORY[0x1C68F3410](v13, v14);
      return v31;
  }
}

uint64_t one-time initialization function for synchronousLoadOptions()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v13);
  v1 = v14;
  v2 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  if (((*(v2 + 64))(v1, v2) & 1) == 0)
  {
    v11 = 2;
    goto LABEL_18;
  }

  if (one-time initialization token for categoriesSupportingResourceSharingBeforeECSCommits != -1)
  {
    swift_once();
  }

  v3 = static RequestLoadableUtilities.categoriesSupportingResourceSharingBeforeECSCommits;
  if (!*(static RequestLoadableUtilities.categoriesSupportingResourceSharingBeforeECSCommits + 16) || (v4 = *(static RequestLoadableUtilities.categoriesSupportingResourceSharingBeforeECSCommits + 40), Hasher.init(_seed:)(), String.hash(into:)(), v5 = Hasher._finalize()(), v6 = -1 << *(v3 + 32), v7 = v5 & ~v6, ((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0))
  {
    v10 = 0;
    goto LABEL_17;
  }

  v8 = ~v6;
  while (1)
  {
    v9 = *(*(v3 + 48) + v7);
    if (v9 > 4)
    {
      break;
    }

    *(*(v3 + 48) + v7);
    *(*(v3 + 48) + v7);
LABEL_12:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      v7 = (v7 + 1) & v8;
      if ((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
      {
        continue;
      }
    }

    goto LABEL_17;
  }

  if (*(*(v3 + 48) + v7) <= 6u || v9 == 7 || v9 == 9)
  {
    goto LABEL_12;
  }

  v10 = 1;
LABEL_17:
  v11 = v10 & 1;
LABEL_18:
  static Entity.synchronousLoadOptions = v11;
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t one-time initialization function for asynchronousLoadOptions()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  if ((*(v2 + 56))(v1, v2))
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  static Entity.asynchronousLoadOptions = v3;
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t static Entity.load(named:in:)(void *a1, uint64_t a2, void *a3)
{
  v122 = a1;
  Trace = type metadata accessor for LoadTrace(0);
  v6 = *(*(Trace - 8) + 64);
  MEMORY[0x1EEE9AC00](Trace - 8);
  v96 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v95 = (&v92 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v92 - v12;
  v99 = type metadata accessor for URL();
  v101 = *(v99 - 8);
  v14 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  Statistics = type metadata accessor for Entity.LoadStatistics();
  v22 = *(Statistics + 48);
  v23 = *(Statistics + 52);
  v24 = swift_allocObject();
  Date.init()();
  v25 = v24 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
  *v25 = 0;
  v94 = v25;
  *(v25 + 8) = 2;
  *(v24 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_loadRequestStats) = MEMORY[0x1E69E7CC0];
  *(v24 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_async) = 0;
  v98 = v24;
  v26 = (v24 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
  *v26 = 0xD000000000000016;
  v26[1] = 0x80000001C18ED660;
  if (a3)
  {
    v104 = a3;
  }

  else
  {
    v104 = [objc_opt_self() mainBundle];
  }

  v27 = a3;
  v28 = specialized static __ServiceLocator.shared.getter();
  v29 = *(*(v28 + 168) + 32);
  swift_beginAccess();
  v30 = *(v28 + 24);
  swift_unownedRetainStrong();
  v31 = *(v30 + 32);
  v103 = v28;

  v100 = v29;

  v32 = v31;

  *v20 = v32;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16);
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v20, v16);
  if (v30)
  {
    if (one-time initialization token for synchronousLoadOptions == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v33 = static Entity.synchronousLoadOptions;
  swift_beginAccess();
  v34 = static RKARSystemCore.generateDecimatedMeshes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMd, &_s10RealityKit6EntityC0A10FoundationE12LoadFinisher33_F26D63620DB78A19432B1EBEC9E8266ALLCy_ACGMR);
  inited = swift_initStackObject();
  swift_weakInit();
  v36 = v122;
  *(inited + 16) = v122;
  *(inited + 24) = a2;
  *(inited + 32) = v33;
  *(inited + 33) = v34;
  *(inited + 34) = 1;
  *(inited + 36) = 1;
  swift_weakAssign();
  type metadata accessor for LoadUtilities();

  v37 = v104;
  static LoadUtilities.getURL(name:in:allowingExtensions:)(v36, a2, v104, &outlined read-only object #0 of one-time initialization function for usdExtensions, v13);
  v38 = v101;
  v39 = v99;
  if ((*(v101 + 48))(v13, 1, v99) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v40 = *(*(v103 + 168) + 24);
    v113 = 0;
    *&v114 = 0xE000000000000000;

    _StringGuts.grow(_:)(17);

    v113 = v36;
    *&v114 = a2;
    MEMORY[0x1C68F3410](0x7562206D6F726620, 0xED000020656C646ELL);
    v41 = [v37 bundleIdentifier];
    v93 = a2;
    if (v41)
    {
      v42 = v41;
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;
    }

    else
    {
      v45 = 0x80000001C18ED640;
      v43 = 0xD000000000000010;
    }

    MEMORY[0x1C68F3410](v43, v45);

    v55 = v96;
    LoadTracer.beginLoad(loadType:logMsgTarget:)(1, v113, v114, v96);

    memset(v118, 0, 25);
    v117 = 0u;
    v116 = 0u;
    v115 = 0u;
    v114 = 0u;
    v118[25] = 1;
    v120 = 0;
    v119 = 0;
    LOBYTE(v113) = 2;
    v118[27] = v33 != 2;
    v118[26] = (v33 & 0xFE) != 2;
    v121 = v98;

    v65 = v122;
    v66 = v93;
    v67 = v104;
    v68 = v102;
    __SceneResourceCache.findSceneResource(named:bundle:options:)(v122, v93, v104, &v113, &v108);
    v102 = v68;
    if (v68)
    {

      v69 = v55;
    }

    else if (v109)
    {
      outlined init with take of ForceEffectBase(&v108, &v110);
      outlined init with copy of __REAssetService(&v110, &v108);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27SceneResourceLoadResultBase_pMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24SceneResourceEntityMaker_pMd, &_s17RealityFoundation24SceneResourceEntityMaker_pMR);
      swift_dynamicCast();
      v70 = v106;
      v55 = v107;
      __swift_project_boxed_opaque_existential_1(v105, v106);
      v71 = v102;
      v72 = (*(v55 + 8))(v70, v55);
      v73 = v104;
      v102 = v71;
      if (v71)
      {

        outlined destroy of LoadTrace(v96, type metadata accessor for LoadTrace);
        __swift_destroy_boxed_opaque_existential_1(v105);
        __swift_destroy_boxed_opaque_existential_1(&v110);
        goto LABEL_17;
      }

      v55 = v72;
      __swift_destroy_boxed_opaque_existential_1(v105);
      v86 = v111;
      v87 = v112;
      __swift_project_boxed_opaque_existential_1(&v110, v111);
      v88 = (*(v87 + 16))(v86, v87);
      v89 = v96;
      *(v96 + 16) = v88 & 1;
      __swift_destroy_boxed_opaque_existential_1(&v110);
      v90 = v102;
      specialized Entity.LoadFinisher.setupAfterRealityLoadSync(_:)(v55);
      v102 = v90;
      if (!v90)
      {
        static Entity.loadReferences(root:)(v55);
        v102 = 0;
        LoadTracer.endLoad(of:with:)(v55, v89);
        Entity.LoadStatistics.log()();

        outlined destroy of LoadTrace(v89, type metadata accessor for LoadTrace);
        outlined destroy of __REAssetBundle.LoadOptions(&v113);
        return v55;
      }

      v69 = v89;
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v108, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMR);

      type metadata accessor for Entity.LoadError(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
      v77 = swift_allocError();
      *v78 = v65;
      v78[1] = v66;
      v79 = v77;
      swift_storeEnumTagMultiPayload();
      v102 = v79;
      swift_willThrow();

      v69 = v96;
    }

    outlined destroy of LoadTrace(v69, type metadata accessor for LoadTrace);
LABEL_17:
    outlined destroy of __REAssetBundle.LoadOptions(&v113);
    return v55;
  }

  v96 = inited;
  v46 = v97;
  (*(v38 + 32))(v97, v13, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_1C1897F90;
  *(v47 + 32) = 1701869940;
  v48 = MEMORY[0x1E69E6158];
  *(v47 + 40) = 0xE400000000000000;
  strcpy((v47 + 48), "LoadFromBundle");
  *(v47 + 63) = -18;
  *(v47 + 72) = v48;
  *(v47 + 80) = 0x73746E65746E6F63;
  *(v47 + 88) = 0xEA0000000000664FLL;
  *(v47 + 120) = v39;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v47 + 96));
  (*(v38 + 16))(boxed_opaque_existential_1, v46, v39);
  *(v47 + 128) = 0x64656D616ELL;
  *(v47 + 136) = 0xE500000000000000;
  *(v47 + 144) = v36;
  *(v47 + 152) = a2;
  *(v47 + 168) = MEMORY[0x1E69E6158];
  *(v47 + 176) = 0x656C646E7562;
  v50 = a2;
  *(v47 + 184) = 0xE600000000000000;
  v51 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x1E696AAE8);
  *(v47 + 192) = v37;
  *(v47 + 216) = v51;
  *(v47 + 224) = 0xD000000000000015;
  *(v47 + 232) = 0x80000001C18ED680;
  v52 = static RKARSystemCore.generateDecimatedMeshes;
  *(v47 + 264) = MEMORY[0x1E69E6370];
  *(v47 + 240) = v52;

  v53 = v37;
  v54 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v47);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v55 = v103;
  swift_beginAccess();
  outlined init with copy of [String : String](v55 + 176, &v110, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
  if (!v111)
  {

    outlined destroy of BodyTrackingComponent?(&v110, &_s17RealityFoundation16USDImportService_pSgMd, &_s17RealityFoundation16USDImportService_pSgMR);
LABEL_23:
    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
    v74 = swift_allocError();
    *v75 = v122;
    v75[1] = v50;
    v76 = v74;
    swift_storeEnumTagMultiPayload();
    v102 = v76;
    swift_willThrow();

    (*(v101 + 8))(v97, v39);
    return v55;
  }

  v104 = v54;
  outlined init with take of ForceEffectBase(&v110, &v113);
  v56 = v115;
  __swift_project_boxed_opaque_existential_1(&v113, v115);
  if (((*(*(&v56 + 1) + 16))(v122, v50, v53, v56, *(&v56 + 1)) & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1(&v113);
    goto LABEL_23;
  }

  v57 = v94;
  *v94 = 1;
  *(v57 + 8) = 0;
  v58 = *(*(v55 + 168) + 24);
  *&v110 = 0;
  *(&v110 + 1) = 0xE000000000000000;
  v94 = v58;

  _StringGuts.grow(_:)(17);

  *&v110 = v122;
  *(&v110 + 1) = v50;
  MEMORY[0x1C68F3410](0x7562206D6F726620, 0xED000020656C646ELL);
  v122 = v53;
  v59 = [v53 bundleIdentifier];
  if (v59)
  {
    v60 = v59;
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64 = v95;
  }

  else
  {
    v63 = 0x80000001C18ED640;
    v64 = v95;
    v61 = 0xD000000000000010;
  }

  MEMORY[0x1C68F3410](v61, v63);

  LoadTracer.beginLoad(loadType:logMsgTarget:)(1, v110, *(&v110 + 1), v64);

  v55 = *(&v115 + 1);
  v80 = v115;
  __swift_project_boxed_opaque_existential_1(&v113, v115);
  v81 = v102;
  v82 = (*(v55 + 32))(v104, v80, v55);
  v102 = v81;
  if (v81)
  {

    outlined destroy of LoadTrace(v64, type metadata accessor for LoadTrace);
    (*(v101 + 8))(v97, v99);
  }

  else
  {
    v55 = v82;

    specialized static Entity.applyHackForRealityIOUSDImports(rootEntity:)(v55);
    v83 = v102;
    specialized Entity.LoadFinisher.setupAfterUSDLoadSync(_:)(v55, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:));
    v84 = (v101 + 8);
    v102 = v83;
    if (!v83)
    {
      v91 = v95;
      LoadTracer.endLoad(of:with:)(v55, v95);
      Entity.LoadStatistics.log()();

      outlined destroy of LoadTrace(v91, type metadata accessor for LoadTrace);
      (*v84)(v97, v99);
      __swift_destroy_boxed_opaque_existential_1(&v113);
      return v55;
    }

    outlined destroy of LoadTrace(v95, type metadata accessor for LoadTrace);
    (*v84)(v97, v99);
  }

  __swift_destroy_boxed_opaque_existential_1(&v113);
  return v55;
}

uint64_t static Entity.loadReferences(root:)(uint64_t a1)
{
  v2 = v1;
  v3 = static Entity.enumerateReferences(root:)(a1);
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    v13 = v4 & 0xC000000000000001;
    while (v13)
    {
      v7 = MEMORY[0x1C68F41F0](v6, v4);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_17;
      }

LABEL_12:
      v9 = *(v7 + 16);

      if (REEntityGetComponent())
      {
        ReferenceComponent.init(from:)(v12);

        v10 = v12[33];

        if (v10 != 1)
        {
          static ReferenceComponent.loadReference(at:)(v7);
          if (v2)
          {
          }
        }
      }

      else
      {
      }

      ++v6;
      if (v8 == i)
      {
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v7 = *(v4 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_12;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }
}

uint64_t static Entity.loadAsync(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v6 = static RKARSystemCore.generateDecimatedMeshes;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v15 = 0;
  v16 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v17 = 1;
  v18 = 0;
  v19 = 2;
  v20 = 0;
  outlined assign with take of __DownsamplingStrategy?(v9, v11);
  v13 = 0;
  v14 = v6;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  LOBYTE(v9[0]) = static Entity.asynchronousLoadOptions;
  v7 = static Entity.__loadAsync(named:in:options:asyncOptions:)(a1, a2, a3, v11, v9);
  outlined destroy of Entity.__LoadOptions(v11);
  return v7;
}

uint64_t static Entity.__loadAsync(named:in:generateDecimatedMesh:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v16 = 0;
  v17 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v18 = 1;
  v19 = 0;
  v20 = 2;
  v21 = 0;
  outlined assign with take of __DownsamplingStrategy?(v10, v12);
  v14 = 0;
  v15 = a4;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  LOBYTE(v10[0]) = static Entity.asynchronousLoadOptions;
  v8 = static Entity.__loadAsync(named:in:options:asyncOptions:)(a1, a2, a3, v12, v10);
  outlined destroy of Entity.__LoadOptions(v12);
  return v8;
}

uint64_t Entity.__LoadOptions.init(downsamplingStrategy:realityPerformanceReport:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  *(a3 + 64) = 1;
  *(a3 + 68) = 0;
  *(a3 + 72) = 2;
  *(a3 + 80) = 0;
  result = outlined assign with take of __DownsamplingStrategy?(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t closure #1 in static Entity.__loadAsync(named:in:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v49 = a8;
  v46 = a6;
  v45 = a4;
  v47 = a2;
  v48 = a9;
  v16 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v16 - 8);
  v44 = v16;
  v17 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v41 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v40 = *(v42 - 8);
  v19 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v39[1] = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 1701869940;
  *(inited + 16) = xmmword_1C18A1E70;
  v23 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x80000001C18EDFC0;
  *(inited + 72) = v23;
  *(inited + 80) = 0x64656D616ELL;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = a3;
  *(inited + 104) = a4;
  *(inited + 120) = v23;
  *(inited + 128) = 0x656C646E7562;
  *(inited + 136) = 0xE600000000000000;
  v24 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x1E696AAE8);
  *(inited + 144) = a5;
  *(inited + 168) = v24;
  *(inited + 176) = 0xD000000000000015;
  *(inited + 184) = 0x80000001C18ED680;
  v25 = MEMORY[0x1E69E6370];
  *(inited + 192) = v46;
  *(inited + 216) = v25;
  *(inited + 224) = 0xD000000000000018;
  *(inited + 232) = 0x80000001C18EDE40;
  *(inited + 240) = *(a7 + 49);
  *(inited + 264) = v25;
  *(inited + 272) = 0x694C79726F6D656DLL;
  *(inited + 280) = 0xEB0000000074696DLL;
  v26 = *(a7 + 56);
  LOBYTE(a3) = *(a7 + 64);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  *(inited + 288) = v26;
  *(inited + 296) = a3;
  *(inited + 312) = v27;
  strcpy((inited + 320), "featuresToSkip");
  *(inited + 335) = -18;
  *(inited + 336) = *(a7 + 68);
  *(inited + 360) = &type metadata for Entity.__LoadOptions.LoadableFeatures;
  *(inited + 368) = 0x6C6C69666C7566;
  *(inited + 376) = 0xE700000000000000;
  outlined init with copy of Entity.__LoadOptions(a7, v50);
  v28 = swift_allocObject();
  v29 = v48;
  *(v28 + 16) = v49;
  *(v28 + 24) = v29;
  v30 = v50[3];
  *(v28 + 64) = v50[2];
  *(v28 + 80) = v30;
  *(v28 + 96) = v50[4];
  v31 = v51;
  v32 = v50[1];
  *(v28 + 32) = v50[0];
  *(v28 + 48) = v32;
  *(v28 + 112) = v31;
  *(v28 + 120) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  *(v28 + 128) = v21;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for closure #1 in closure #1 in static Entity.__loadAsync(named:in:options:asyncOptions:);
  *(v33 + 24) = v28;
  *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit6EntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit6EntityCs5Error_pGcMR);
  *(inited + 384) = partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed Result<A, Error>) -> ();
  *(inited + 392) = v33;

  v34 = a5;

  v35 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v36 = a10[3];
  v37 = a10[4];
  __swift_project_boxed_opaque_existential_1(a10, v36);
  (*(v37 + 40))(v35, v36, v37);
}

uint64_t closure #1 in closure #1 in static Entity.__loadAsync(named:in:options:asyncOptions:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  if (a2)
  {
    return a6(a1, 1);
  }

  specialized static Entity.applyHackForRealityIOUSDImports(rootEntity:)(a1);
  outlined init with copy of Entity.__LoadOptions(a5, v12);
  specialized Entity.LoadFinisher.setupAfterUSDLoadAsync(_:options:_:)(a1, v12, a6, a7, specialized Entity.LoadFinisher.recursivelyAddAssets(to:forEntity:), specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:));
  return outlined destroy of BodyTrackingComponent?(v12, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
}

uint64_t closure #2 in static Entity.__loadAsync(named:in:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v39 = a4;
  v48 = a3;
  v38 = a2;
  v43 = a13;
  v42 = a12;
  v41 = a11;
  v40 = a10;
  v44 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v44 - 8);
  v19 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchQoS();
  v45 = *(v46 - 8);
  v22 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  outlined init with copy of Entity.__LoadOptions(a5, v51);
  v26 = swift_allocObject();
  v27 = v51[3];
  *(v26 + 56) = v51[2];
  *(v26 + 72) = v27;
  *(v26 + 88) = v51[4];
  v28 = v51[1];
  *(v26 + 24) = v51[0];
  *(v26 + 16) = v39;
  v29 = v52;
  *(v26 + 40) = v28;
  *(v26 + 104) = v29;
  *(v26 + 112) = a6;
  *(v26 + 120) = a7;
  *(v26 + 128) = a8;
  v30 = v40;
  *(v26 + 136) = a9;
  *(v26 + 144) = v30;
  v31 = v41;
  v32 = v42;
  *(v26 + 152) = v41;
  *(v26 + 160) = v32;
  *(v26 + 168) = v43;
  *(v26 + 176) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  *(v26 + 184) = v25;
  aBlock[4] = partial apply for closure #1 in closure #2 in static Entity.__loadAsync(named:in:options:asyncOptions:);
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_736;
  v33 = _Block_copy(aBlock);

  v34 = a9;

  v35 = v31;

  static DispatchQoS.unspecified.getter();
  v49 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v36 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v24, v21, v33);
  _Block_release(v33);
  (*(v47 + 8))(v21, v36);
  (*(v45 + 8))(v24, v46);
}

uint64_t closure #1 in closure #2 in static Entity.__loadAsync(named:in:options:asyncOptions:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v56 = a8;
  v49 = a12;
  v48 = a11;
  v17 = a1;
  v18 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v18 - 8);
  v55 = v18;
  v19 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v51 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v52 = *(v21 - 8);
  v53 = v21;
  v22 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v50 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LoadTrace(0);
  v24 = swift_projectBox();
  memset(v74, 0, 25);
  v73 = 0u;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v74[25] = 1;
  v75 = 0;
  v76 = 0;
  LOBYTE(aBlock) = 1;
  v74[26] = (a1 & 0xFE) != 2;
  v74[27] = v17 != 2;
  v77 = *(a2 + 80);

  outlined assign with copy of __DownsamplingStrategy?(a2, &v71 + 8);
  __SceneResourceCache.findSceneResource(named:bundle:options:)(a4, a5, a6, &aBlock, &v59);
  if (*(&v60 + 1))
  {
    outlined init with take of ForceEffectBase(&v59, v66);
    v32 = v67;
    v33 = v68;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    v34 = (*(v33 + 16))(v32, v33);
    swift_beginAccess();
    *(v24 + 16) = v34 & 1;
    outlined init with copy of __REAssetService(v66, v65);
    outlined init with copy of Entity.__LoadOptions(a2, &v59);
    v35 = swift_allocObject();
    *(v35 + 16) = a9;
    outlined init with take of ForceEffectBase(v65, v35 + 24);
    v36 = v62;
    *(v35 + 104) = v61;
    *(v35 + 120) = v36;
    *(v35 + 136) = v63;
    v37 = v60;
    *(v35 + 72) = v59;
    *(v35 + 64) = a10;
    v38 = v64;
    *(v35 + 88) = v37;
    v39 = v48;
    v40 = v49;
    *(v35 + 152) = v38;
    *(v35 + 160) = v39;
    *(v35 + 168) = v40;
    v58[4] = partial apply for closure #1 in closure #1 in closure #2 in static Entity.__loadAsync(named:in:options:asyncOptions:);
    v58[5] = v35;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 1107296256;
    v58[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v58[3] = &block_descriptor_748;
    v41 = _Block_copy(v58);

    v42 = v50;
    static DispatchQoS.unspecified.getter();
    v57 = MEMORY[0x1E69E7CC0];
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v43 = v51;
    v44 = v55;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v42, v43, v41);
    _Block_release(v41);
    (*(v54 + 8))(v43, v44);
    (*(v52 + 8))(v42, v53);

    __swift_destroy_boxed_opaque_existential_1(v66);
    return outlined destroy of __REAssetBundle.LoadOptions(&aBlock);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v59, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMR);
    type metadata accessor for Entity.LoadError(0);
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
    v46 = swift_allocError();
    *v47 = a4;
    v47[1] = a5;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    outlined destroy of __REAssetBundle.LoadOptions(&aBlock);
    v25 = swift_allocObject();
    v26 = v49;
    v25[2] = v48;
    v25[3] = v26;
    v25[4] = v46;
    *(&v71 + 1) = partial apply for closure #1 in closure #1 in static AudioFileResource.loadAsync(contentsOf:withName:inputMode:loadingStrategy:shouldLoop:);
    *&v72 = v25;
    aBlock = MEMORY[0x1E69E9820];
    *&v70 = 1107296256;
    *(&v70 + 1) = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *&v71 = &block_descriptor_742;
    v27 = _Block_copy(&aBlock);

    v28 = v46;
    v29 = v50;
    static DispatchQoS.unspecified.getter();
    *&v59 = MEMORY[0x1E69E7CC0];
    _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v30 = v51;
    v31 = v55;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v29, v30, v27);
    _Block_release(v27);

    (*(v54 + 8))(v30, v31);
    (*(v52 + 8))(v29, v53);
  }
}

uint64_t static Entity.load(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Statistics = type metadata accessor for Entity.LoadStatistics();
  v8 = *(Statistics + 48);
  v9 = *(Statistics + 52);
  v10 = swift_allocObject();
  Date.init()();
  v11 = v10 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
  *v11 = 0;
  *(v11 + 8) = 2;
  *(v10 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_loadRequestStats) = MEMORY[0x1E69E7CC0];
  *(v10 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_async) = 0;
  v12 = (v10 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_functionName);
  *v12 = 0xD000000000000021;
  v12[1] = 0x80000001C18ED6A0;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v21 = 0;
  v22 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v23 = 1;
  v24 = 0;
  v25 = 2;
  outlined assign with take of __DownsamplingStrategy?(v16, v18);
  v20 = 0;
  v26 = v10;

  v13 = specialized static Entity.__load(contentsOf:withName:loadOptions:)(a1, a2, a3, v18);
  v14 = v13;
  if (!v3)
  {
    static Entity.loadReferences(root:)(v13);
    Entity.LoadStatistics.log()();
  }

  outlined destroy of Entity.__LoadOptions(v18);
  return v14;
}

uint64_t Entity.__LoadOptions.memoryLimit.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t Entity.__LoadOptions.memoryLimit.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t Entity.__AsyncLoadOptions.loadOnResourceSharingClients.setter(uint64_t result)
{
  v2 = *v1;
  if (result)
  {
    if (v2 != 2)
    {
      return result;
    }

    v3 = 3;
  }

  else
  {
    if (v2 == 2)
    {
      return result;
    }

    v3 = 2;
  }

  *v1 = v3;
  return result;
}

unsigned __int8 **(*Entity.__AsyncLoadOptions.loadOnResourceSharingClients.modify(uint64_t a1))(unsigned __int8 **result)
{
  *a1 = v1;
  *(a1 + 8) = *v1 != 2;
  return Entity.__AsyncLoadOptions.loadOnResourceSharingClients.modify;
}

unsigned __int8 **Entity.__AsyncLoadOptions.loadOnResourceSharingClients.modify(unsigned __int8 **result)
{
  v1 = *result;
  v2 = **result;
  if (*(result + 8))
  {
    if (v2 == 2)
    {
      *v1 = 3;
    }
  }

  else if (v2 != 2)
  {
    *v1 = 2;
  }

  return result;
}

uint64_t Entity.__AsyncLoadOptions.waitForResourceSharingClients.setter(uint64_t result)
{
  v2 = *v1 & 0xFE;
  if (result)
  {
    if (v2 != 2)
    {
      return result;
    }

    v3 = 0;
  }

  else
  {
    if (v2 == 2)
    {
      return result;
    }

    v3 = 3;
  }

  *v1 = v3;
  return result;
}

uint64_t (*Entity.__AsyncLoadOptions.waitForResourceSharingClients.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = (*v1 & 0xFE) != 2;
  return Entity.__AsyncLoadOptions.waitForResourceSharingClients.modify;
}

uint64_t Entity.__AsyncLoadOptions.waitForResourceSharingClients.modify(uint64_t result)
{
  v1 = *result;
  v2 = **result & 0xFE;
  if (*(result + 8))
  {
    if (v2 == 2)
    {
      *v1 = 0;
    }
  }

  else if (v2 != 2)
  {
    *v1 = 3;
  }

  return result;
}

uint64_t Entity.__AsyncLoadOptions.init(loadOnResourceSharingClients:waitForResourceSharingClients:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X8>)
{
  if (a2)
  {
    if (result)
    {
      *a3 = 0;
    }

    else
    {
      type metadata accessor for Entity.LoadError(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
      swift_allocError();
      *v4 = 0xD0000000000000ABLL;
      v4[1] = 0x80000001C18ED6D0;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  else
  {
    if (result)
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    *a3 = v3;
  }

  return result;
}

uint64_t Entity.__AsyncLoadOptions.init(preloadAndWaitForResourceSharingClients:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    v2 = 0;
  }

  else
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t static Entity.__load(contentsOf:withName:downsamplingStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v15 = 0;
  v16 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v17 = 1;
  v18 = 0;
  v19 = 2;
  v20 = 0;
  outlined assign with take of __DownsamplingStrategy?(v10, v12);
  v14 = 0;
  outlined assign with copy of __DownsamplingStrategy?(a4, v12);
  v8 = specialized static Entity.__load(contentsOf:withName:loadOptions:)(a1, a2, a3, v12);
  outlined destroy of Entity.__LoadOptions(v12);
  return v8;
}

uint64_t static Entity.forceRetrieveGenerateDecimatedMeshes.setter(char a1)
{
  result = swift_beginAccess();
  static Entity.forceRetrieveGenerateDecimatedMeshes = a1;
  return result;
}

uint64_t static Entity.loadAsync(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = static RKARSystemCore.generateDecimatedMeshes;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v15 = 0;
  v16 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v17 = 1;
  v18 = 0;
  v19 = 2;
  v20 = 0;
  outlined assign with take of __DownsamplingStrategy?(v9, v11);
  v13 = 0;
  v14 = v6;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  LOBYTE(v9[0]) = static Entity.asynchronousLoadOptions;
  v7 = static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(a1, a2, a3, v11, v9);
  outlined destroy of Entity.__LoadOptions(v11);
  return v7;
}

uint64_t static Entity.__loadAsync(contentsOf:withName:generateDecimatedMesh:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v16 = 0;
  v17 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v18 = 1;
  v19 = 0;
  v20 = 2;
  v21 = 0;
  outlined assign with take of __DownsamplingStrategy?(v10, v12);
  v14 = 0;
  v15 = a4;
  if (one-time initialization token for asynchronousLoadOptions != -1)
  {
    swift_once();
  }

  LOBYTE(v10[0]) = static Entity.asynchronousLoadOptions;
  v8 = static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(a1, a2, a3, v12, v10);
  outlined destroy of Entity.__LoadOptions(v12);
  return v8;
}

uint64_t closure #1 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v48 = a7;
  v47 = a5;
  v45[1] = a4;
  v46 = a3;
  v45[2] = a2;
  v59 = a13;
  v52 = a12;
  v51 = a11;
  v50 = a10;
  v49 = a9;
  v56 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v56 - 8);
  v18 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v54 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v55 = *(v57 - 8);
  v20 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v53 = v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Information = type metadata accessor for RealityFileLoadInformation(0);
  v23 = *(Information - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](Information - 8);
  v25 = v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  outlined init with copy of Entity.__LoadOptions(a6, v62);
  outlined init with copy of LoadTrace(a8, v25, type metadata accessor for RealityFileLoadInformation);
  v27 = (*(v23 + 80) + 136) & ~*(v23 + 80);
  v28 = (v24 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v62[3];
  *(v32 + 72) = v62[2];
  *(v32 + 88) = v33;
  *(v32 + 104) = v62[4];
  v34 = v62[1];
  *(v32 + 40) = v62[0];
  *(v32 + 16) = v46;
  *(v32 + 24) = a4;
  *(v32 + 32) = v47;
  v35 = v63;
  *(v32 + 56) = v34;
  v36 = v48;
  *(v32 + 120) = v35;
  *(v32 + 128) = v36;
  outlined init with take of RealityFileLoadInformation(v25, v32 + v27, type metadata accessor for RealityFileLoadInformation);
  *(v32 + v28) = v49;
  v37 = v50;
  *(v32 + v29) = v50;
  *(v32 + v30) = v51;
  *(v32 + v31) = v52;
  v38 = (v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v38 = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  v38[1] = v26;
  aBlock[4] = partial apply for doLoadEntityFromURLAsync #1 () in closure #1 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:);
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_661;
  v39 = _Block_copy(aBlock);

  v40 = v37;

  v41 = v53;
  static DispatchQoS.unspecified.getter();
  v60 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v42 = v54;
  v43 = v56;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v41, v42, v39);
  _Block_release(v39);
  (*(v58 + 8))(v42, v43);
  (*(v55 + 8))(v41, v57);
}

uint64_t doLoadEntityFromURLAsync #1 () in closure #1 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v48 = a8;
  v41 = a12;
  v40 = a11;
  v17 = a3;
  v18 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v18 - 8);
  v47 = v18;
  v19 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v43 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v44 = *(v21 - 8);
  v45 = v21;
  v22 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v42 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LoadTrace(0);
  v24 = swift_projectBox();
  v60 = 256;
  v58 = 0u;
  memset(v59, 0, 56);
  v63 = 0;
  v64 = 0;
  LOBYTE(aBlock) = 1;
  v59[7] = a1;
  v59[8] = a2;
  v62 = v17 != 2;
  v61 = (a3 & 0xFE) != 2;
  v65 = *(a4 + 80);

  outlined assign with copy of __DownsamplingStrategy?(a4, &v59[1]);
  Information = type metadata accessor for RealityFileLoadInformation(0);
  __SceneResourceCache.loadSceneResource(url:sceneName:loadOptions:)(a6, *(a6 + *(Information + 20)), *(a6 + *(Information + 20) + 8), &aBlock, v54);
  v26 = v55;
  v27 = v56;
  __swift_project_boxed_opaque_existential_1(v54, v55);
  v28 = (*(v27 + 16))(v26, v27);
  swift_beginAccess();
  *(v24 + 16) = v28 & 1;
  outlined init with copy of __REAssetService(v54, v53);
  outlined init with copy of Entity.__LoadOptions(a4, v51);
  v29 = swift_allocObject();
  *(v29 + 16) = a9;
  outlined init with take of ForceEffectBase(v53, v29 + 24);
  v30 = v51[3];
  *(v29 + 104) = v51[2];
  *(v29 + 120) = v30;
  *(v29 + 136) = v51[4];
  v31 = v51[1];
  *(v29 + 72) = v51[0];
  *(v29 + 64) = a10;
  v32 = v52;
  *(v29 + 88) = v31;
  v33 = v40;
  v34 = v41;
  *(v29 + 152) = v32;
  *(v29 + 160) = v33;
  *(v29 + 168) = v34;
  v50[4] = partial apply for closure #1 in doLoadEntityFromURLAsync #1 () in closure #1 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:);
  v50[5] = v29;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 1107296256;
  v50[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v50[3] = &block_descriptor_673;
  v35 = _Block_copy(v50);

  v36 = v42;
  static DispatchQoS.unspecified.getter();
  v49 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v37 = v43;
  v38 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v36, v37, v35);
  _Block_release(v35);
  (*(v46 + 8))(v37, v38);
  (*(v44 + 8))(v36, v45);

  __swift_destroy_boxed_opaque_existential_1(v54);
  return outlined destroy of __REAssetBundle.LoadOptions(&aBlock);
}

uint64_t closure #1 in closure #1 in closure #2 in static Entity.__loadAsync(named:in:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  outlined init with copy of __REAssetService(a2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27SceneResourceLoadResultBase_pMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24SceneResourceEntityMaker_pMd, &_s17RealityFoundation24SceneResourceEntityMaker_pMR);
  swift_dynamicCast();
  v9 = v15;
  v10 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v11 = (*(v10 + 8))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v14);
  outlined init with copy of Entity.__LoadOptions(a4, v13);
  specialized Entity.LoadFinisher.setupAfterRealityLoadAsync(_:options:_:)(v11, v13, a5, a6, specialized Entity.LoadFinisher.makeLoadRequest(completedWith:passedTo:));

  return outlined destroy of BodyTrackingComponent?(v13, &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
}

uint64_t closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v54 = a8;
  v66 = a7;
  v55 = a6;
  v53 = a4;
  v52 = a3;
  v59 = a2;
  v57 = a1;
  v51 = a10;
  v50 = a9;
  v58 = a14;
  v56 = a12;
  v63 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v63 - 8);
  v15 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchQoS();
  v62 = *(v64 - 8);
  v17 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v60 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for URL();
  v19 = *(v49 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v49);
  v22 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, a5, v21);
  outlined init with copy of Entity.__LoadOptions(a11, v70);
  outlined init with copy of __REAssetService(a13, v69);
  v23 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v46 = (v23 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + v20 + 31) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 95) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v48 + 47) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v19 + 32))(v30 + v23, v22, v49);
  v31 = v30 + v46;
  v32 = v50;
  *v31 = v54;
  *(v31 + 8) = v32;
  *(v31 + 16) = v51;
  *(v30 + v24) = v52;
  *(v30 + v25) = v53;
  *(v30 + v26) = v55;
  v33 = v30 + v27;
  v34 = v70[3];
  *(v33 + 32) = v70[2];
  *(v33 + 48) = v34;
  *(v33 + 64) = v70[4];
  *(v33 + 80) = v71;
  v35 = v70[1];
  *v33 = v70[0];
  *(v33 + 16) = v35;
  *(v30 + v28) = v56;
  v36 = (v30 + v29);
  v37 = v59;
  *v36 = v57;
  v36[1] = v37;
  outlined init with take of ForceEffectBase(v69, v30 + v48);
  v38 = v58;
  *(v30 + v47) = v58;
  aBlock[4] = partial apply for closure #1 in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:);
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_683;
  v39 = _Block_copy(aBlock);

  v40 = v38;
  v41 = v60;
  static DispatchQoS.unspecified.getter();
  v67 = MEMORY[0x1E69E7CC0];
  _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v42 = v61;
  v43 = v63;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v41, v42, v39);
  _Block_release(v39);
  (*(v65 + 8))(v42, v43);
  (*(v62 + 8))(v41, v64);
}

uint64_t postLoad #1 (data:) in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit20__SceneResourceCacheC08ImportedC0VSgMd, &_s10RealityKit20__SceneResourceCacheC08ImportedC0VSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v41 - v10;
  v12 = type metadata accessor for __SceneResourceCache.ImportedScene(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

  v20 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
  if ((v21 & 1) == 0)
  {
    goto LABEL_26;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v20, v53);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v48 = v4;
  v49 = a3;
  if (v51 == 0x64616F4C74736F50 && v52 == 0xEC00000061746144)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
LABEL_26:
      type metadata accessor for Entity.LoadError(0);
      _s10RealityKit6EntityC9LoadErrorOAEs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

  v23 = specialized __RawDictionaryStorage.find<A>(_:)(0x797469746E65, 0xE600000000000000);
  if ((v24 & 1) == 0)
  {
    goto LABEL_26;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v23, v53);
  type metadata accessor for Entity();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v25 = v51;
  if (!*(a1 + 16) || (v26 = specialized __RawDictionaryStorage.find<A>(_:)(0x646574726F706D69, 0xEE0073656E656353), (v27 & 1) == 0) || (outlined init with copy of Any(*(a1 + 56) + 32 * v26, v53), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_26;
  }

  v41 = v25;
  v28 = v51;
  swift_beginAccess();
  outlined init with copy of __REAssetService(a2 + 120, v53);
  v29 = v54;
  v30 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  __REAssetService.asManager.getter(v29, v30);
  v31 = v28;
  v46 = *(v32 + 88);

  result = __swift_destroy_boxed_opaque_existential_1(v53);
  v45 = *(v28 + 16);
  if (v45)
  {
    v34 = 0;
    v43 = (v13 + 48);
    v44 = v28 + 32;
    v47 = MEMORY[0x1E69E7CC0];
    v35 = v48;
    v42 = v28;
    while (v34 < *(v31 + 16))
    {
      v56 = *(v44 + 8 * v34);
      closure #1 in postLoad #1 (data:) in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)(&v56, v11);
      if ((*v43)(v11, 1, v12) == 1)
      {
        result = outlined destroy of BodyTrackingComponent?(v11, &_s10RealityKit20__SceneResourceCacheC08ImportedC0VSgMd, &_s10RealityKit20__SceneResourceCacheC08ImportedC0VSgMR);
      }

      else
      {
        outlined init with take of RealityFileLoadInformation(v11, v19, type metadata accessor for __SceneResourceCache.ImportedScene);
        outlined init with take of RealityFileLoadInformation(v19, v16, type metadata accessor for __SceneResourceCache.ImportedScene);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
        }

        v36 = v47;
        v38 = v47[2];
        v37 = v47[3];
        if (v38 >= v37 >> 1)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v37 > 1, v38 + 1, 1, v47);
        }

        v36[2] = v38 + 1;
        v39 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v47 = v36;
        result = outlined init with take of RealityFileLoadInformation(v16, v36 + v39 + *(v13 + 72) * v38, type metadata accessor for __SceneResourceCache.ImportedScene);
        v31 = v42;
      }

      if (v45 == ++v34)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
    v47 = MEMORY[0x1E69E7CC0];
    v35 = v48;
LABEL_28:

    __SceneResourceCache.registerImportedScenes(url:importedScenes:)(v47, v53);

    if (v35)
    {
    }

    else
    {

      specialized static Entity.applyHackForRealityIOUSDImports(rootEntity:)(v41);

      specialized static Entity.addInputTargetComponentsAndCollisionShapesToTapTriggerTargets(for:)(v40);
    }
  }

  return result;
}

uint64_t closure #1 in postLoad #1 (data:) in closure #2 in static Entity.__loadAsync(contentsOf:withName:options:asyncOptions:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_20;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_20;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v4, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  if (v19 == 0xD000000000000010 && 0x80000001C18EDFA0 == v20)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (*(v3 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(0x737341656E656373, 0xEE00656D614E7465);
    if (v8)
    {
      outlined init with copy of Any(*(v3 + 56) + 32 * v7, v21);
      if (swift_dynamicCast())
      {
        String.utf8CString.getter();

        AssetHandle = REAssetManagerCreateAssetHandle();

        if (AssetHandle)
        {
          if (*(v3 + 16))
          {
            v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x6D614E656E656373, 0xE900000000000065);
            if (v11)
            {
              outlined init with copy of Any(*(v3 + 56) + 32 * v10, v21);
              if (swift_dynamicCast())
              {
                if (*(v3 + 16))
                {
                  v12 = specialized __RawDictionaryStorage.find<A>(_:)(0x657669746361, 0xE600000000000000);
                  if (v13)
                  {
                    outlined init with copy of Any(*(v3 + 56) + 32 * v12, v21);
                    if (swift_dynamicCast())
                    {
                      type metadata accessor for __REAsset();
                      v14 = swift_allocObject();
                      *(v14 + 16) = AssetHandle;
                      UUID.init()();
                      v15 = type metadata accessor for __SceneResourceCache.ImportedScene(0);
                      v16 = (a2 + v15[5]);
                      *v16 = v19;
                      v16[1] = v20;
                      *(a2 + v15[6]) = v14;
                      *(a2 + v15[7]) = v19;
                      return (*(*(v15 - 1) + 56))(a2, 0, 1, v15);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_20:
  v18 = type metadata accessor for __SceneResourceCache.ImportedScene(0);
  return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
}