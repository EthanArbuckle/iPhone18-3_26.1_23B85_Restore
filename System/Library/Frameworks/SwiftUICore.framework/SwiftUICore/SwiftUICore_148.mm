unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDySSypGTt0g5Tf4g_nTm(uint64_t a1, void (*a2)(void), uint64_t (*a3)(id))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    a2(0);
    v6 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v8 = *i;
      v9 = *(i - 1);

      result = a3(v9);
      if (v11)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v6[6] + 8 * result) = v9;
      *(v6[7] + 8 * result) = v8;
      v12 = v6[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v6[2] = v14;
      if (!--v3)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI14GlassContainerO5EntryV7ModelIDO_AC9SeedValueVyAC0e6EffectF17TintConfigurationV7ElementVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<GlassContainer.Entry.ModelID, SeedValue<GlassEffectContainerTintConfiguration.Element>>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = a1 + 56; ; i += 72)
    {
      v5 = *(i - 16);
      v6 = *(i - 8);
      v7 = *i;
      v8 = *(i + 16);
      v19 = *(i + 24);
      v9 = *(i + 40);
      v10 = *(i + 44);
      *&v20 = *(i - 24);
      *(&v20 + 1) = v5;
      *&v21 = v6;
      *(&v21 + 1) = v7;
      v22 = *(i + 8);
      outlined copy of GlassContainer.Entry.ModelID(v20, v5, v6, v7, v22);
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v20);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 40 * result;
      v14 = v21;
      *v13 = v20;
      *(v13 + 16) = v14;
      *(v13 + 32) = v22;
      v15 = v3[7] + 32 * result;
      *v15 = v8;
      *(v15 + 8) = v19;
      *(v15 + 24) = v9;
      *(v15 + 28) = v10;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _GraphInputs.Options and conformance _GraphInputs.Options()
{
  result = lazy protocol witness table cache variable for type _GraphInputs.Options and conformance _GraphInputs.Options;
  if (!lazy protocol witness table cache variable for type _GraphInputs.Options and conformance _GraphInputs.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.Options and conformance _GraphInputs.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _GraphInputs.Options and conformance _GraphInputs.Options;
  if (!lazy protocol witness table cache variable for type _GraphInputs.Options and conformance _GraphInputs.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.Options and conformance _GraphInputs.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _GraphInputs.Options and conformance _GraphInputs.Options;
  if (!lazy protocol witness table cache variable for type _GraphInputs.Options and conformance _GraphInputs.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.Options and conformance _GraphInputs.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _GraphInputs.Options and conformance _GraphInputs.Options;
  if (!lazy protocol witness table cache variable for type _GraphInputs.Options and conformance _GraphInputs.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.Options and conformance _GraphInputs.Options);
  }

  return result;
}

uint64_t assignWithCopy for _GraphInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for _GraphInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

unint64_t instantiation function for generic protocol witness table for MergedPhase(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MergedPhase and conformance MergedPhase();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MergedTransaction(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MergedTransaction and conformance MergedTransaction();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MergedEnvironment(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MergedEnvironment and conformance MergedEnvironment();
  *(a1 + 8) = result;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_s6UInt32VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<ObjectIdentifier, UInt32>();
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI11ResolvedIDs33_04178B540DC3B0BFBD7679A049CE48C7LLV3KeyO_AC9SeedValueVyAC14GlassContainerO5EntryV8StableIDVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<ResolvedIDs.Key, SeedValue<GlassContainer.Entry.StableID>>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 80); ; i += 14)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 1);
      v9 = *i;
      *&v18 = *(i - 6);
      *(&v18 + 1) = v5;
      *&v19 = v6;
      *(&v19 + 1) = v7;
      v20 = *(i - 16);
      outlined copy of ResolvedIDs.Key(v18, v5, v6, v7, v20);
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v18);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 40 * result;
      v13 = v19;
      *v12 = v18;
      *(v12 + 16) = v13;
      *(v12 + 32) = v20;
      v14 = v3[7] + 16 * result;
      *v14 = v8;
      *(v14 + 8) = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI14GlassContainerO5EntryV8StableIDV_SayAIGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, [GlassContainer.Entry.StableID]>();
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI17GestureDependencyO_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<GestureDependency, Int>(0, &lazy cache variable for type metadata for _DictionaryStorage<GestureDependency, Int>, lazy protocol witness table accessor for type GestureDependency and conformance GestureDependency);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GestureDependency and conformance GestureDependency()
{
  result = lazy protocol witness table cache variable for type GestureDependency and conformance GestureDependency;
  if (!lazy protocol witness table cache variable for type GestureDependency and conformance GestureDependency)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GestureDependency and conformance GestureDependency);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GestureDependency and conformance GestureDependency;
  if (!lazy protocol witness table cache variable for type GestureDependency and conformance GestureDependency)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GestureDependency and conformance GestureDependency);
  }

  return result;
}

void type metadata accessor for (GlassContainer.Entry.StableID, SeedValue<GlassContainer.EntryState>)()
{
  if (!lazy cache variable for type metadata for (GlassContainer.Entry.StableID, SeedValue<GlassContainer.EntryState>))
  {
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_5(255, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (GlassContainer.Entry.StableID, SeedValue<GlassContainer.EntryState>));
    }
  }
}

void type metadata accessor for _DictionaryStorage<CFStringRef, String>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<CFStringRef, String>)
  {
    type metadata accessor for CFStringRef(255);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<CFStringRef, String>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Stack<BodyInputElement> and conformance <A> Stack<A>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_5(255, a2, a3, type metadata accessor for Stack);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for [(_:)](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for _DictionaryStorage<AGSubgraphRef, Bool>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AGSubgraphRef, Bool>)
  {
    type metadata accessor for AGSubgraphRef(255);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef, type metadata accessor for AGSubgraphRef);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<AGSubgraphRef, Bool>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<AGSubgraphRef, [AttributeInfoTrace.Scope]>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AGSubgraphRef, [AttributeInfoTrace.Scope]>)
  {
    type metadata accessor for AGSubgraphRef(255);
    type metadata accessor for [(_:)](255, &lazy cache variable for type metadata for [AttributeInfoTrace.Scope], type metadata accessor for AttributeInfoTrace.Scope, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef, type metadata accessor for AGSubgraphRef);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<AGSubgraphRef, [AttributeInfoTrace.Scope]>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<String, AttributeInfoTrace.History>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, AttributeInfoTrace.History>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, AttributeInfoTrace.History>);
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI13_ProposedSizeV_AC26ViewGraphGeometryObserversV8Observer33_4717DAAA68693648A460F26E88C7D804LLCyAC0F16ThatFitsMeasurerV_GTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<_ProposedSize, ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer>();
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v7 = *(i - 2);
      v8 = *(i - 8);
      v9 = *i;
      v6 = *(i - 24);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 32 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 16) = v7;
      *(v12 + 24) = v8;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;

      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19CAHostingLayerEventV11MouseButtonV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<GestureDependency, Int>(0, &lazy cache variable for type metadata for _DictionaryStorage<CAHostingLayerEvent.MouseButton, Int>, lazy protocol witness table accessor for type CAHostingLayerEvent.MouseButton and conformance CAHostingLayerEvent.MouseButton);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4AxisO_AC21FocusableFillerBoundsV7MetricsVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<GestureDependency, Int>(0, &lazy cache variable for type metadata for _DictionaryStorage<Axis, FocusableFillerBounds.Metrics>, lazy protocol witness table accessor for type Axis and conformance Axis);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i = (i + 40))
    {
      v5 = *(i - 8);
      v12 = i[1];
      v13 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = (v3[7] + 32 * result);
      *v8 = v13;
      v8[1] = v12;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_So10CGColorRefaTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<NSAttributedStringKey, CGColorRef>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<String, String>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI13_ProposedSizeV_So6CGSizeVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<ScrollTargetRole.Role, [ScrollableCollection]>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ProposedSize, CGSize>, type metadata accessor for CGSize, lazy protocol witness table accessor for type _ProposedSize and conformance _ProposedSize);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 64); ; i += 3)
    {
      v5 = *(i - 4);
      v6 = *(i - 24);
      v7 = *(i - 2);
      v8 = *(i - 8);
      v15 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7, v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 32 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v11 + 24) = v8;
      *(v3[7] + 16 * result) = v15;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<ScrollTargetRole.Role, [ScrollableCollection]>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = type metadata accessor for _DictionaryStorage();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for _DictionaryStorage<String, String>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, String>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, String>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<Int, _ViewList_ID.Canonical>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Int, _ViewList_ID.Canonical>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Int, _ViewList_ID.Canonical>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, Any>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, Any>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, Any>);
    }
  }
}

uint64_t outlined init with copy of (ViewIdentity, GlassContainer.ItemData)(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  type metadata accessor for (Path, FillStyle)(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _DictionaryStorage<CFStringRef?, Int>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, unint64_t))
{
  if (!*a2)
  {
    type metadata accessor for [(_:)](255, &lazy cache variable for type metadata for CFStringRef?, type metadata accessor for CFStringRef, MEMORY[0x1E69E6720]);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type CFStringRef? and conformance <A> A?();
    v9 = a3(a1, v7, MEMORY[0x1E69E6530], v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for _DictionaryStorage<CFStringRef, [CFDictionaryRef]>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<CFStringRef, [CFDictionaryRef]>)
  {
    type metadata accessor for CFStringRef(255);
    type metadata accessor for [(_:)](255, &lazy cache variable for type metadata for [CFDictionaryRef], type metadata accessor for CFDictionaryRef, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<CFStringRef, [CFDictionaryRef]>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<CFStringRef, [String]>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<CFStringRef, [String]>)
  {
    type metadata accessor for CFStringRef(255);
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_5(255, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<CFStringRef, [String]>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<CFStringRef, CGFloat>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<CFStringRef, CGFloat>)
  {
    type metadata accessor for CFStringRef(255);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<CFStringRef, CGFloat>);
    }
  }
}

void type metadata accessor for (AnyHashable2, WeakBox<AnyLocationBase>)()
{
  if (!lazy cache variable for type metadata for (AnyHashable2, WeakBox<AnyLocationBase>))
  {
    type metadata accessor for [(_:)](255, &lazy cache variable for type metadata for WeakBox<AnyLocationBase>, type metadata accessor for AnyLocationBase, type metadata accessor for WeakBox);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AnyHashable2, WeakBox<AnyLocationBase>));
    }
  }
}

uint64_t outlined init with take of WeakBox<AnyLocationBase>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for [(_:)](0, &lazy cache variable for type metadata for WeakBox<AnyLocationBase>, type metadata accessor for AnyLocationBase, type metadata accessor for WeakBox);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _DictionaryStorage<NSAttributedStringKey, CGColorRef>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringKey, CGColorRef>)
  {
    type metadata accessor for NSAttributedStringKey(255);
    type metadata accessor for CGColorRef(255);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringKey, CGColorRef>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, AttributedString.Keys>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, AttributedString.Keys>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, AttributedString.Keys>);
    }
  }
}

void type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for _DictionaryStorage<String, UInt32>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, UInt32>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, UInt32>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, UInt32>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, UInt32>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, UInt32>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<Solarium.EnablementIdiom, (Solarium.EnablementLevel, Solarium.EnablementCriteria)>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Solarium.EnablementIdiom, (Solarium.EnablementLevel, Solarium.EnablementCriteria)>)
  {
    type metadata accessor for (Path, FillStyle)(255, &lazy cache variable for type metadata for (Solarium.EnablementLevel, Solarium.EnablementCriteria));
    lazy protocol witness table accessor for type Solarium.EnablementIdiom and conformance Solarium.EnablementIdiom();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Solarium.EnablementIdiom, (Solarium.EnablementLevel, Solarium.EnablementCriteria)>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TypeConformance<InvalidatableAttributeDescriptor>>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for TypeConformance<RemovableAttributeDescriptor>(255, a3);
    v4 = type metadata accessor for _DictionaryStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for TypeConformance<RemovableAttributeDescriptor>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for TypeConformance();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t outlined init with copy of (GlassContainer.Entry.StableID, SeedValue<GlassContainer.EntryState>)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of AccessibilityCustomAttributes.Value(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityCustomAttributes.Value();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for [ScrollableCollection]()
{
  if (!lazy cache variable for type metadata for [ScrollableCollection])
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for ScrollableCollection);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [ScrollableCollection]);
    }
  }
}

uint64_t outlined init with copy of (ObjectIdentifier, ScrollStateRequest)(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  type metadata accessor for (ObjectIdentifier, ScrollStateRequest)(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for (ObjectIdentifier, ScrollStateRequest)(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for AnyTrackedValue(255, a3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, ScrollStateRequest>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, ScrollStateRequest>)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for ScrollStateRequest);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, ScrollStateRequest>);
    }
  }
}

void *EnvironmentValues.watchDisplayVariant.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE019WatchDisplayVariantI0VG_Tt1g5(v3, a1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019WatchDisplayVariantS0VG_Tt0g5(*v1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 1;
    }

    *a1 = v5;
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.watchDisplayVariant : EnvironmentValues@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE019WatchDisplayVariantI0VG_Tt1g5(v3, &v6);

    v5 = v6;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019WatchDisplayVariantS0VG_Tt0g5(*a1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 1;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.watchDisplayVariant : EnvironmentValues(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE019WatchDisplayVariantF0VG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE019WatchDisplayVariantK0VG_Ttg5(v3, *a2);
  }
}

uint64_t EnvironmentValues.watchDisplayVariant.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE019WatchDisplayVariantF0VG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE019WatchDisplayVariantK0VG_Ttg5(v3, *v2);
  }
}

void (*EnvironmentValues.watchDisplayVariant.modify(char **a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 2) = v1;
  v5 = *v1;
  *(v3 + 3) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 4) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE019WatchDisplayVariantI0VG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019WatchDisplayVariantS0VG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 1;
    }

    v4[40] = v8;
  }

  return EnvironmentValues.watchDisplayVariant.modify;
}

void EnvironmentValues.watchDisplayVariant.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE019WatchDisplayVariantF0VG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE019WatchDisplayVariantK0VG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

SwiftUI::WatchDisplayVariant_optional __swiftcall WatchDisplayVariant.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 0xA)
  {
    v2 = 1;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type _DeviceVariant and conformance _DeviceVariant()
{
  result = lazy protocol witness table cache variable for type _DeviceVariant and conformance _DeviceVariant;
  if (!lazy protocol witness table cache variable for type _DeviceVariant and conformance _DeviceVariant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DeviceVariant and conformance _DeviceVariant);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WatchDisplayVariant and conformance WatchDisplayVariant()
{
  result = lazy protocol witness table cache variable for type WatchDisplayVariant and conformance WatchDisplayVariant;
  if (!lazy protocol witness table cache variable for type WatchDisplayVariant and conformance WatchDisplayVariant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchDisplayVariant and conformance WatchDisplayVariant);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchDisplayVariant and conformance WatchDisplayVariant;
  if (!lazy protocol witness table cache variable for type WatchDisplayVariant and conformance WatchDisplayVariant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchDisplayVariant and conformance WatchDisplayVariant);
  }

  return result;
}

uint64_t static TimeDataFormatting.FormatTransition.== infix(_:_:)()
{
  if (static ClosedRange.== infix(_:_:)())
  {
    type metadata accessor for TimeDataFormatting.FormatTransition();
    v0 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t TimeDataFormatting.FormatTransition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x66666F646E6168 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t TimeDataFormatting.FormatTransition.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x66666F646E6168;
  }

  else
  {
    return 0x65676E6172;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TimeDataFormatting.FormatTransition<A>.CodingKeys()
{
  Hasher.init(_seed:)();
  Pair.CodingKeys.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TimeDataFormatting.FormatTransition<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = TimeDataFormatting.FormatTransition.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance TimeDataFormatting.FormatTransition<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static _AttributeBody.comparisonMode.getter in conformance ResetDeltaModifier.ChildPhase();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeDataFormatting.FormatTransition<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeDataFormatting.FormatTransition<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t TimeDataFormatting.FormatTransition.encode(to:)(void *a1, uint64_t a2)
{
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  v14 = v9;
  v15 = v10;
  type metadata accessor for TimeDataFormatting.FormatTransition.CodingKeys();
  swift_getWitnessTable();
  v3 = type metadata accessor for KeyedEncodingContainer();
  v11 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for ClosedRange();
  v16 = v10;
  swift_getWitnessTable();
  v6 = v12;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v6)
  {
    return (*(v11 + 8))(v5, v3);
  }

  v8 = v11;
  LOBYTE(v13) = 1;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v8 + 8))(v5, v3);
}

uint64_t TimeDataFormatting.FormatTransition.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClosedRange();
  MEMORY[0x193ABEB50](a1, v4, *(a2 + 48));
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int TimeDataFormatting.FormatTransition.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  TimeDataFormatting.FormatTransition.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

uint64_t TimeDataFormatting.FormatTransition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v45 = a1;
  v35 = a7;
  v34 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ClosedRange();
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v32 - v13;
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v50 = a5;
  v51 = a6;
  type metadata accessor for TimeDataFormatting.FormatTransition.CodingKeys();
  swift_getWitnessTable();
  v44 = type metadata accessor for KeyedDecodingContainer();
  v37 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v15 = &v32 - v14;
  v39 = a2;
  v47 = a2;
  v48 = a3;
  v43 = a4;
  v49 = a4;
  v50 = a5;
  v51 = a6;
  v16 = type metadata accessor for TimeDataFormatting.FormatTransition();
  v33 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v19 = v45;
  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  v40 = v15;
  v20 = v46;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v21 = v19;
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  v22 = v38;
  v23 = v39;
  v24 = v21;
  v46 = v16;
  v25 = v37;
  LOBYTE(v47) = 0;
  v52 = v43;
  v26 = v41;
  swift_getWitnessTable();
  v27 = v40;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v22 + 32))(v18, v42, v26);
  LOBYTE(v47) = 1;
  v28 = v36;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v25 + 8))(v27, v44);
  v29 = v46;
  (*(v34 + 32))(&v18[*(v46 + 60)], v28, v23);
  v30 = v33;
  (*(v33 + 16))(v35, v18, v29);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return (*(v30 + 8))(v18, v29);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TimeDataFormatting.FormatTransition<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  TimeDataFormatting.FormatTransition.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

double AnyInterfaceIdiom.reducedLuminanceBudget(for:)(_BYTE *a1)
{
  result = 0.0;
  if (*a1)
  {
    if (*a1 == 1)
    {
      v3 = *(v1 + 8);
      type metadata accessor for InterfaceIdiomBox<ComplicationInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<ComplicationInterfaceIdiom>);
      v4 = *(v3 + 16);
      v5 = v4();
      result = 0.0;
      if ((v5 & 1) == 0)
      {
        type metadata accessor for InterfaceIdiomBox<ComplicationInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<WidgetInterfaceIdiom>);
        if ((v4() & 1) == 0)
        {
          type metadata accessor for InterfaceIdiomBox<ComplicationInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<WatchInterfaceIdiom>);
          v4();
        }

        return 60.0;
      }
    }

    else
    {
      return INFINITY;
    }
  }

  return result;
}

uint64_t type metadata completion function for TimeDataFormatting.FormatTransition()
{
  result = type metadata accessor for ClosedRange();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TimeDataFormatting.FormatTransition(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = v6 + v7;
  v10 = v6 + v7 + ((v6 + v7) & ~v7);
  v11 = (v10 & ~v7) + v6;
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v11 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v7 + 16) & v8));
  }

  else
  {
    v15 = *(v5 + 16);
    v15(a1, a2, v4);
    v15(((v3 + v9) & v8), ((a2 + v9) & v8), v4);
    v15(((v3 + v10) & v8), ((a2 + v10) & v8), v4);
  }

  return v3;
}

uint64_t destroy for TimeDataFormatting.FormatTransition(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v9 = *(v4 + 8);
  v9(a1, v3);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + v5;
  v7 = v6 + a1;
  v9(v7 & ~v5, v3);

  return (v9)((v7 + (v6 & ~v5)) & ~v5, v3);
}

uint64_t initializeWithCopy for TimeDataFormatting.FormatTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v7((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v5);
  v7((v9 + a1 + ((v8 + v9) & ~v9) + v8) & ~v9, (v9 + a2 + ((v8 + v9) & ~v9) + v8) & ~v9, v5);
  return a1;
}

uint64_t assignWithCopy for TimeDataFormatting.FormatTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v7((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v5);
  v7((v9 + a1 + ((v8 + v9) & ~v9) + v8) & ~v9, (v9 + a2 + ((v8 + v9) & ~v9) + v8) & ~v9, v5);
  return a1;
}

uint64_t initializeWithTake for TimeDataFormatting.FormatTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v7((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v5);
  v7((v9 + a1 + ((v8 + v9) & ~v9) + v8) & ~v9, (v9 + a2 + ((v8 + v9) & ~v9) + v8) & ~v9, v5);
  return a1;
}

uint64_t assignWithTake for TimeDataFormatting.FormatTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v7((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v5);
  v7((v9 + a1 + ((v8 + v9) & ~v9) + v8) & ~v9, (v9 + a2 + ((v8 + v9) & ~v9) + v8) & ~v9, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for TimeDataFormatting.FormatTransition(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80) + ((v6 + *(v4 + 80)) & ~*(v4 + 80))) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *storeEnumTagSinglePayload for TimeDataFormatting.FormatTransition(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80) + ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80))) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

void protocol witness for ShapeStyle.resolve(in:) in conformance Color(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v8 = *a1;
  *a2 = (*(*v4 + 112))(&v8);
  *(a2 + 4) = v5;
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
}

uint64_t Color.init<A>(provider:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ColorBox();
  (*(v4 + 16))(v6, a1, a2);
  v7 = ColorBox.__allocating_init(_:)(v6);
  (*(v4 + 8))(a1, a2);
  return v7;
}

void ColorProvider.resolveHDR(in:)(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *a1;
  *a3 = (*(a2 + 32))(&v7);
  *(a3 + 4) = v4;
  *(a3 + 8) = v5;
  *(a3 + 12) = v6;
  *(a3 + 16) = 2143289344;
}

uint64_t ColorProvider.colorDescription.getter(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return String.init<A>(describing:)();
}

uint64_t static Color.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return (*(*a1 + 88))(a2) & 1;
  }
}

void protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.DisplayP3(uint64_t a1@<X8>)
{
  *a1 = Color.DisplayP3.resolve(in:)(*v1, v1[1], v1[2]);
  *(a1 + 4) = v3;
  *(a1 + 8) = v4;
  *(a1 + 12) = v5;
  *(a1 + 16) = 2143289344;
}

double protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.KeyColorProvider@<D0>(uint64_t a1@<X8>)
{
  result = -0.00781250557;
  *a1 = xmmword_18DDFFF10;
  *(a1 + 16) = 2143289344;
  return result;
}

double protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.CustomKeyColorProvider@<D0>(uint64_t a1@<X8>)
{
  v2 = vcvts_n_f32_s64(*v1, 0xAuLL);
  __asm { FMOV            V1.2S, #-1.0 }

  *a1 = _D1;
  *(a1 + 8) = v2;
  result = 2.24711695e307;
  *(a1 + 12) = 0x7FC000003F800000;
  return result;
}

float CustomColorProvider.resolve(in:)(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(a2 + 32) + 48))(&v4, &v3, *(a2 + 16));
  return *&v4;
}

float CustomHDRColorProvider.resolveHDR(in:)@<S0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  (*(*(a2 + 32) + 48))(&v6, &v5, *(a2 + 16));
  result = v7;
  *a3 = v6;
  *(a3 + 16) = result;
  return result;
}

double protocol witness for ColorProvider.resolveHDR(in:) in conformance ContentStyle.ID@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized ColorProvider.resolveHDR(in:)(*a1, *(a1 + 8), *v2, &v5);
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t Color.provider.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

Swift::Int Color.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(*a1 + 152))(v3);
  return Hasher._finalize()();
}

uint64_t Color.applyBackgroundMaterial(shape:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  if (*(a1 + 56))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018BackgroundMaterialI033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v4, &v14);

    v5 = v14;
    v6 = v15;
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(*(a1 + 48));
    if (!v7)
    {
      return 0;
    }

    v5 = v7[9];
    v6 = v7[10];
    outlined copy of Material?(v5, v6);
  }

  if (v6 != 0xFF)
  {
    v8 = *(a1 + 56);
    v14 = *(a1 + 48);
    v15 = v8;
    v11 = v5;
    v12 = v6;
    v13 = HIDWORD(v6);

    v9 = EnvironmentValues.materialProvider(for:)(&v11);

    if (v9)
    {
      (*(*v9 + 104))(a2, a1);
      outlined consume of Material?(v5, v6);

      return 1;
    }

    outlined consume of Material?(v5, v6);
  }

  return 0;
}

float CustomHDRColorProvider.resolve(in:)(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(a2 + 32) + 48))(&v4, &v3, *(a2 + 16));
  return *&v4;
}

uint64_t CustomColorProvider.colorDescription.getter(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return String.init<A>(describing:)();
}

Swift::Int CustomColorProvider.hashValue.getter()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

double protocol witness for ColorProvider.resolveHDR(in:) in conformance CustomHDRColorProvider<A>@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  CustomHDRColorProvider.resolveHDR(in:)(a1, a2, &v5);
  result = *&v5;
  *a3 = v5;
  *(a3 + 16) = v6;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomColorProvider<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  Hasher.init(_seed:)();
  a4(v7, a2);
  return Hasher._finalize()();
}

uint64_t static ColorBox.deserialize(from:)(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*(*(v1 + 184) + 16) + 16))(v3);
  if (!v2)
  {
    return ColorBox.__allocating_init(_:)(v5);
  }

  return result;
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance ColorBox<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static ColorBox.deserialize(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id ObjcColor.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC7SwiftUI9ObjcColor_color] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ObjcColor.init(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC7SwiftUI9ObjcColor_color] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Int ObjcColor.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI9ObjcColor_color);
  Hasher.init(_seed:)();
  (*(*v1 + 152))(v3);
  return Hasher._finalize()();
}

id ObjcColor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ObjcColor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ColorProvider.colorDescription.getter in conformance Color.NamedColor()
{
  v1 = *(v0 + 16);

  return String.init<A>(describing:)();
}

void protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.HierarchicalOpacityColor(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = *v2;
  v6 = v2[1];
  v12 = v4;
  v13 = v5;
  v8 = (*(*v7 + 168))(v6, &v12);
  v12 = v4;
  v13 = v5;
  *a2 = (*(*v7 + 112))(&v12);
  *(a2 + 4) = v10;
  *(a2 + 8) = v11;
  *(a2 + 12) = v8 * v9;
  *(a2 + 16) = 2143289344;
}

void protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.DestinationOverProvider(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = a1[1];
  v6 = *v2;
  v7 = v2[1];
  v23 = *a1;
  v4 = v23;
  v24 = v5;
  v8 = (*(*v6 + 112))(&v23);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v23 = v4;
  v24 = v5;
  v15 = (*(*v7 + 112))(&v23);
  Color.Resolved.over(_:)(v15, v16, v17, v18, v8, v10, v12, v14);
  *a2 = v19;
  a2[1] = v20;
  a2[2] = v21;
  a2[3] = v22;
  a2[4] = 2143289344;
}

uint64_t protocol witness for ColorProvider.colorDescription.getter in conformance Color.DestinationOverProvider()
{

  return String.init<A>(describing:)();
}

void protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.MixProvider(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  v7 = *(v2 + 1);
  v8 = v2[5];
  v26 = *(v2 + 16);
  v24 = v4;
  v25 = v5;
  v9 = (*(*v6 + 112))(&v24);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v24 = v4;
  v25 = v5;
  v16 = (*(*v7 + 112))(&v24);
  ResolvedGradient.ColorSpace.mix(_:_:by:)(v9, v11, v13, v15, v16, v17, v18, v19, v8);
  *a2 = v20;
  a2[1] = v21;
  a2[2] = v22;
  a2[3] = v23;
  a2[4] = 2143289344;
}

uint64_t protocol witness for ColorProvider.colorDescription.getter in conformance Color.MixProvider()
{

  return String.init<A>(describing:)();
}

void protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.SettingOpacityProvider(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 2);
  v8 = *a1;
  *a2 = (*(*v4 + 112))(&v8);
  *(a2 + 4) = v6;
  *(a2 + 8) = v7;
  *(a2 + 12) = v5;
  *(a2 + 16) = 2143289344;
}

double protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.TintAdjustmentProvider@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized ColorProvider.resolveHDR(in:)(*a1, a1[1], *v2, &v5);
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

float protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.DesaturatedColor@<S0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v10 = *a1;
  v5 = (*(*v4 + 112))(&v10);
  result = (v7 * 0.0722) + ((v5 * 0.2126) + (v6 * 0.7152));
  *a2 = result;
  *(a2 + 4) = result;
  *(a2 + 8) = result;
  *(a2 + 12) = v9 * 0.8;
  *(a2 + 16) = 2143289344;
  return result;
}

uint64_t specialized ColorProvider.opacity(at:environment:)(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  if (v3)
  {

    v5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(v4);
    v7 = v6;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(*a2);
    if (v8)
    {
      v5 = v8[9];
      v7 = v8[10];
    }

    else
    {
      v7 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
      v5 = &type metadata for CoreUIDefaultSystemColorDefinition;
    }
  }

  v10[0] = v4;
  v10[1] = v3;
  return (v7[2])(a1, v10, v5, v7);
}

uint64_t instantiation function for generic protocol witness table for ColorBox<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for CustomHDRColorProvider<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t View._onBindingChange<A>(_:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v23 = a5;
  v21 = a6;
  v22 = a4;
  v20 = a2;
  v8 = type metadata accessor for Binding();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for _BindingActionModifier();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  (*(v9 + 16))(v11, a1, v8, v14);
  _BindingActionModifier.init(binding:action:)(v11, v20, a3, v16);
  View.modifier<A>(_:)(v16, v22, v12);
  v17 = *(v13 + 8);

  return v17(v16, v12);
}

uint64_t _BindingActionModifier.init(binding:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Binding();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for _BindingActionModifier();
  v10 = (a4 + *(result + 36));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t _BindingActionModifier.binding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Binding();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _BindingActionModifier.binding.setter(uint64_t a1)
{
  v3 = type metadata accessor for Binding();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t key path getter for _BindingActionModifier.action : <A>_BindingActionModifier<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1)@<X8>)
{
  v8 = *(a2 + a3 - 16);
  v7 = *(a1 + *(type metadata accessor for _BindingActionModifier() + 36));
  v5 = swift_allocObject();
  *(v5 + 16) = v8;
  *(v5 + 32) = v7;
  *a4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> ();
  a4[1] = v5;
}

uint64_t key path setter for _BindingActionModifier.action : <A>_BindingActionModifier<A>(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + a4 - 16);
  v9 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v8;
  *(v5 + 32) = v9;
  v6 = (a2 + *(type metadata accessor for _BindingActionModifier() + 36));

  *v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out ());
  v6[1] = v5;
  return result;
}

uint64_t _BindingActionModifier.action.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t _BindingActionModifier.action.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 36));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t static _BindingActionModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22[1] = a4;
  v23 = a3;
  v22[0] = a6;
  v43 = *MEMORY[0x1E69E9840];
  v9 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  v12 = type metadata accessor for BindingActionDispatcher();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v22 - v14;
  v16 = *a1;
  v41 = *a2;
  v42 = *(a2 + 2);
  LODWORD(a1) = *(a2 + 6);
  v17 = *(a2 + 44);
  v37 = *(a2 + 28);
  v38 = v17;
  v39 = *(a2 + 60);
  v40 = *(a2 + 76);
  default argument 8 of ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.init(platformItems:receiver:transaction:environment:size:position:transform:safeAreaInsets:cycleDetector:oldReceiverValue:oldItems:seed:)(&v30);
  v24 = v30;
  v25 = DWORD2(v30);
  v26 = BYTE12(v30);
  (*(*(a5 - 8) + 56))(v11, 1, 1, a5);
  BindingActionDispatcher.init(modifier:phase:cycleDetector:lastValue:lastAction:lastResetSeed:)(v16, a1, &v24, v11, 0, 0, 0, v15);
  v28 = v12;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, partial apply for closure #1 in Attribute.init<A>(_:), v27, v12, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  (*(v13 + 8))(v15, v12);
  v20 = AGGraphSetFlags();
  v30 = v41;
  v31 = v42;
  v32 = a1;
  v33 = v37;
  v34 = v38;
  v35 = v39;
  v36 = v40;
  return v23(v20, &v30);
}

uint64_t BindingActionDispatcher.init(modifier:phase:cycleDetector:lastValue:lastAction:lastResetSeed:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v13 = *(a3 + 8);
  v14 = *(a3 + 12);
  *a8 = a1;
  *(a8 + 4) = a2;
  *(a8 + 8) = *a3;
  *(a8 + 16) = v13;
  *(a8 + 20) = v14;
  v15 = type metadata accessor for BindingActionDispatcher();
  v16 = v15[11];
  v17 = type metadata accessor for Optional();
  result = (*(*(v17 - 8) + 32))(a8 + v16, a4, v17);
  v19 = (a8 + v15[12]);
  *v19 = a5;
  v19[1] = a6;
  *(a8 + v15[13]) = a7;
  return result;
}

uint64_t static _BindingActionModifier._makeViewList(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a3;
  v29 = a4;
  v27 = a6;
  v36 = *MEMORY[0x1E69E9840];
  v9 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for BindingActionDispatcher();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  v16 = *a1;
  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v17 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
LABEL_7:
      v18 = type metadata accessor for _BindingActionModifier();
      LODWORD(v33) = v16;
      return static ViewModifier.makeMultiViewList(modifier:inputs:body:)(&v33, a2, v28, v29, v18, &protocol witness table for _BindingActionModifier<A>);
    }
  }

  else if (static Semantics.forced < v17)
  {
    goto LABEL_7;
  }

  v20 = *(a2 + 24);
  default argument 8 of ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.init(platformItems:receiver:transaction:environment:size:position:transform:safeAreaInsets:cycleDetector:oldReceiverValue:oldItems:seed:)(&v33);
  v30 = v33;
  v31 = v34;
  v32 = v35;
  (*(*(a5 - 8) + 56))(v11, 1, 1, a5);
  v21 = BindingActionDispatcher.init(modifier:phase:cycleDetector:lastValue:lastAction:lastResetSeed:)(v16, v20, &v30, v11, 0, 0, 0, v15);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v12;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, closure #1 in Attribute.init<A>(_:)partial apply, (&v27 - 4), v12, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
  (*(v13 + 8))(v15, v12);
  v24 = AGGraphSetFlags();
  return (v28)(v24, a2);
}

uint64_t BindingActionDispatcher.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _BindingActionModifier();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t BindingActionDispatcher.updateValue()(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v50 = *(a1 + 24);
  v5 = type metadata accessor for _BindingActionModifier();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - v7;
  v9 = *(v4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  Value = AGGraphGetValue();
  v16 = *(a1 + 52);
  if (*(v2 + v16) != *Value >> 1)
  {
    *(v2 + v16) = *AGGraphGetValue() >> 1;
    v17 = *(a1 + 44);
    v18 = type metadata accessor for Optional();
    (*(*(v18 - 8) + 8))(v2 + v17, v18);
    (*(v9 + 56))(v2 + v17, 1, 1, v4);
    *(v2 + 12) = 0xFFFFFFFFLL;
    *(v2 + 20) = 0;
  }

  v53 = v9;
  BindingActionDispatcher.modifier.getter(v8);
  v19 = *(v8 + 1);
  v20 = *(v6 + 8);

  v51 = v20;
  v52 = v6 + 8;
  v20(v8, v5);
  v21 = v14;
  v22 = (*(*v19 + 144))(v14);

  if (v22)
  {
    v48 = v5;
    MEMORY[0x1EEE9AC00](v23);
    v24 = v50;
    *(&v47 - 4) = v4;
    *(&v47 - 3) = v24;
    *(&v47 - 2) = v14;
    type metadata accessor for Optional();
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in ChangedCallbacks.dispatch(phase:state:), (&v47 - 6), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v25, &v54);
    if (v54 == 2)
    {
      v5 = v48;
      goto LABEL_15;
    }

    v5 = v48;
    if ((v54 & 1) == 0)
    {
      goto LABEL_15;
    }

    AGGraphClearUpdate();
    v26 = *AGGraphGetValue();
    AGGraphSetUpdate();
    if (*(v2 + 12) == v26)
    {
      v27 = *(v2 + 16);
      if (!v27 || (v28 = v27 - 1, (*(v2 + 16) = v28) == 0))
      {
        if ((*(v2 + 20) & 1) == 0)
        {
          v54 = 0;
          v55 = 0xE000000000000000;
          _StringGuts.grow(_:)(44);

          v54 = 0;
          v55 = 0xE000000000000000;
          _StringGuts.grow(_:)(18);

          v54 = 0x3C676E69646E6942;
          v55 = 0xE800000000000000;
          v29 = _typeName(_:qualified:)();
          MEMORY[0x193ABEDD0](v29);

          MEMORY[0x193ABEDD0](0x6E6F69746361203ELL, 0xE800000000000000);
          MEMORY[0x193ABEDD0](0xD00000000000002ALL, 0x800000018DD75B90);
          specialized static Log.externalWarning(_:)(v54, v55);

          *(v2 + 20) = 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
      *(v2 + 12) = v26;
      *(v2 + 16) = 2;
    }

    v30 = (v2 + *(a1 + 48));
    v31 = *v30;
    if (*v30)
    {
      v32 = v30[1];
      LOBYTE(v54) = 17;
      v33 = v53;
      (*(v53 + 16))(v49, v21, v4);
      v34 = (*(v33 + 80) + 48) & ~*(v33 + 80);
      v35 = swift_allocObject();
      v36 = v49;
      v37 = v50;
      v35[2] = v4;
      v35[3] = v37;
      v35[4] = v31;
      v35[5] = v32;
      v38 = v35 + v34;
      v5 = v48;
      (*(v33 + 32))(v38, v36, v4);
      _sxRi_zRi0_zlyxIsegn_SgSQRzlWOy(v31, v32);

      static Update.enqueueAction(reason:_:)(&v54, partial apply for closure #2 in BindingActionDispatcher.updateValue(), v35);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v31, v32);
    }
  }

LABEL_15:
  v39 = *(a1 + 44);
  v40 = type metadata accessor for Optional();
  (*(*(v40 - 8) + 8))(v2 + v39, v40);
  v41 = v53;
  (*(v53 + 16))(v2 + v39, v21, v4);
  (*(v41 + 56))(v2 + v39, 0, 1, v4);
  BindingActionDispatcher.modifier.getter(v8);
  v42 = &v8[*(v5 + 36)];
  v44 = *v42;
  v43 = *(v42 + 1);

  v51(v8, v5);
  v45 = (v2 + *(a1 + 48));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(*v45, v45[1]);
  *v45 = v44;
  v45[1] = v43;
  return (*(v41 + 8))(v21, v4);
}

uint64_t type metadata completion function for _BindingActionModifier()
{
  result = type metadata accessor for Binding();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _BindingActionModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 16) & ~v6) + *(v5 + 64);
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v14 = *(v5 + 16);

    v14(v12 + 1, v13 + 1, v4);
    v16 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = v16[1];
    v18 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v18 = *v16;
    v18[1] = v17;
  }

  return a1;
}

uint64_t destroy for _BindingActionModifier(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 15;

  (*(*(*(a2 + 16) - 8) + 8))(((v3 & 0xFFFFFFFFFFFFFFF8) + *(*(*(a2 + 16) - 8) + 80) + 8) & ~*(*(*(a2 + 16) - 8) + 80));
}

void *initializeWithCopy for _BindingActionModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(v7 - 8) + 16;
  v10 = *(*(v7 - 8) + 80);
  v11 = v5 + v10 + 8;
  v12 = v6 + v10 + 8;

  v8(v11 & ~v10, v12 & ~v10, v7);
  v13 = ((v10 + 16) & ~v10) + *(v9 + 48) + 7;
  v14 = a1 + v13;
  v15 = ((a2 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = *v15;
  v16 = v15[1];
  v18 = (v14 & 0xFFFFFFFFFFFFFFF8);
  *v18 = v17;
  v18[1] = v16;

  return a1;
}

void *assignWithCopy for _BindingActionModifier(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  (*(v8 + 24))((v7 + v10 + 8) & ~v10, (v10 + 8 + v6) & ~v10);
  v11 = ((v10 + 16) & ~v10) + *(v9 + 40) + 7;
  v12 = ((a1 + v11) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((a2 + v11) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;

  return a1;
}

void *initializeWithTake for _BindingActionModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  (*(v7 + 32))((v5 + v9 + 8) & ~v9, (v6 + v9 + 8) & ~v9);
  v10 = ((v9 + 16) & ~v9) + *(v8 + 32) + 7;
  *((a1 + v10) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v10) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for _BindingActionModifier(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  (*(v8 + 40))((v7 + v10 + 8) & ~v10, (v10 + 8 + v6) & ~v10);
  v11 = ((v10 + 16) & ~v10) + *(v9 + 24) + 7;
  *((a1 + v11) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v11) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for _BindingActionModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for _BindingActionModifier(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 8) & ~v8);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t type metadata completion function for BindingActionDispatcher()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for BindingActionDispatcher(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  v10 = v9 + 7;
  v11 = (((v9 + 7 + ((v7 + 21) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4;
  v12 = v7 & 0x100000;
  if (v8 > 7 || v12 != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16)));
  }

  else
  {
    *a1 = *a2;
    v16 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v17 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v17 = *v16;
    v18 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v19 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v20 = *v19;
    *(v18 + 5) = *(v19 + 5);
    *v18 = v20;
    v21 = ((v18 + v8 + 13) & ~v8);
    v22 = ((v19 + v8 + 13) & ~v8);
    if ((*(v5 + 48))((v19 + v8 + 13) & ~v8, 1, v4))
    {
      memcpy(v21, v22, v9);
    }

    else
    {
      (*(v6 + 16))(v21, v22, v4);
      (*(v6 + 56))(v21, 0, 1, v4);
    }

    v23 = (v21 + v10) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v22 + v10) & 0xFFFFFFFFFFFFFFF8;
    if (*v24 < 0xFFFFFFFFuLL)
    {
      *v23 = *v24;
    }

    else
    {
      v25 = *(v24 + 8);
      *v23 = *v24;
      *(v23 + 8) = v25;
    }

    *((v23 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v24 + 19) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t destroy for BindingActionDispatcher(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + *(v3 + 80) + 13) & ~*(v3 + 80);
  result = (*(v3 + 48))(v4, 1, v2);
  if (!result)
  {
    result = (*(v3 + 8))(v4, v2);
  }

  v6 = v4 + *(v3 + 64);
  if (!*(v3 + 84))
  {
    ++v6;
  }

  if (*((v6 + 7) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

_DWORD *initializeWithCopy for BindingActionDispatcher(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = *v8;
  *(v7 + 5) = *(v8 + 5);
  *v7 = v9;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = ((v7 + v12 + 13) & ~v12);
  v14 = ((v8 + v12 + 13) & ~v12);
  if ((*(v11 + 48))(v14, 1, v10))
  {
    v15 = *(v11 + 84);
    v16 = *(v11 + 64);
    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 + 1;
    }

    memcpy(v13, v14, v17);
  }

  else
  {
    (*(v11 + 16))(v13, v14, v10);
    v19 = *(v11 + 56);
    v18 = v11 + 56;
    v19(v13, 0, 1, v10);
    v15 = *(v18 + 28);
    v16 = *(v18 + 8);
  }

  if (v15)
  {
    v20 = v16;
  }

  else
  {
    v20 = v16 + 1;
  }

  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*v22 < 0xFFFFFFFFuLL)
  {
    *v21 = *v22;
  }

  else
  {
    v23 = *(v22 + 8);
    *v21 = *v22;
    *(v21 + 8) = v23;
  }

  *((v21 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v22 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *assignWithCopy for BindingActionDispatcher(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = (v6 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = ((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v7 = *v8;
  *(v7 + 4) = *(v8 + 4);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = ((v11 + 13 + v7) & ~v11);
  v13 = ((v11 + 13 + v8) & ~v11);
  v14 = *(v10 + 48);
  v15 = v14(v12, 1, v9);
  v16 = v14(v13, 1, v9);
  if (v15)
  {
    if (!v16)
    {
      (*(v10 + 16))(v12, v13, v9);
      (*(v10 + 56))(v12, 0, 1, v9);
      goto LABEL_12;
    }

    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  else
  {
    if (!v16)
    {
      (*(v10 + 24))(v12, v13, v9);
      goto LABEL_12;
    }

    (*(v10 + 8))(v12, v9);
    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  memcpy(v12, v13, v19);
LABEL_12:
  if (*(v10 + 84))
  {
    v20 = *(v10 + 64);
  }

  else
  {
    v20 = *(v10 + 64) + 1;
  }

  v21 = ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = *v22;
  if (*v21 < 0xFFFFFFFFuLL)
  {
    if (v23 >= 0xFFFFFFFF)
    {
      v25 = v22[1];
      *v21 = v23;
      v21[1] = v25;

      goto LABEL_22;
    }

LABEL_21:
    *v21 = *v22;
    goto LABEL_22;
  }

  if (v23 < 0xFFFFFFFF)
  {

    goto LABEL_21;
  }

  v24 = v22[1];
  *v21 = v23;
  v21[1] = v24;

LABEL_22:
  *((v21 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v22 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *initializeWithTake for BindingActionDispatcher(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = *v8;
  *(v7 + 5) = *(v8 + 5);
  *v7 = v9;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = ((v7 + v12 + 13) & ~v12);
  v14 = ((v8 + v12 + 13) & ~v12);
  if ((*(v11 + 48))(v14, 1, v10))
  {
    v15 = *(v11 + 84);
    v16 = *(v11 + 64);
    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 + 1;
    }

    memcpy(v13, v14, v17);
  }

  else
  {
    (*(v11 + 32))(v13, v14, v10);
    v19 = *(v11 + 56);
    v18 = v11 + 56;
    v19(v13, 0, 1, v10);
    v15 = *(v18 + 28);
    v16 = *(v18 + 8);
  }

  if (v15)
  {
    v20 = v16;
  }

  else
  {
    v20 = v16 + 1;
  }

  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*v22 < 0xFFFFFFFFuLL)
  {
    *v21 = *v22;
  }

  else
  {
    v23 = *(v22 + 8);
    *v21 = *v22;
    *(v21 + 8) = v23;
  }

  *((v21 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v22 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *assignWithTake for BindingActionDispatcher(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = (v6 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = ((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v7 = *v8;
  *(v7 + 4) = *(v8 + 4);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = ((v11 + 13 + v7) & ~v11);
  v13 = ((v11 + 13 + v8) & ~v11);
  v14 = *(v10 + 48);
  v15 = v14(v12, 1, v9);
  v16 = v14(v13, 1, v9);
  if (v15)
  {
    if (!v16)
    {
      (*(v10 + 32))(v12, v13, v9);
      (*(v10 + 56))(v12, 0, 1, v9);
      goto LABEL_12;
    }

    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  else
  {
    if (!v16)
    {
      (*(v10 + 40))(v12, v13, v9);
      goto LABEL_12;
    }

    (*(v10 + 8))(v12, v9);
    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  memcpy(v12, v13, v19);
LABEL_12:
  if (*(v10 + 84))
  {
    v20 = *(v10 + 64);
  }

  else
  {
    v20 = *(v10 + 64) + 1;
  }

  v21 = ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = *v22;
  if (*v21 < 0xFFFFFFFFuLL)
  {
    if (v23 >= 0xFFFFFFFF)
    {
      v25 = v22[1];
      *v21 = v23;
      v21[1] = v25;
      goto LABEL_22;
    }

LABEL_21:
    *v21 = *v22;
    goto LABEL_22;
  }

  if (v23 < 0xFFFFFFFF)
  {

    goto LABEL_21;
  }

  v24 = v22[1];
  *v21 = v23;
  v21[1] = v24;

LABEL_22:
  *((v21 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v22 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for BindingActionDispatcher(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v9 + 7;
  if (v7 < a2 && *(a1 + ((((v10 + ((v8 + 21) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4)))
  {
    return v7 + *a1 + 1;
  }

  v12 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 13) & ~v8;
  if (v6 < 0x7FFFFFFE)
  {
    v14 = *((v10 + v12) & 0xFFFFFFFFFFFFFFF8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    if ((v14 + 1) >= 2)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = (*(v4 + 48))(v12);
    if (v13 >= 2)
    {
      return v13 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for BindingActionDispatcher(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = (((v11 + 7 + ((v10 + 21) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4;
  if (v9 >= a2)
  {
    if (v9 < a3)
    {
      a1[v12] = 0;
    }

    if (a2)
    {
      v14 = ((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 13) & ~v10);
      if (v8 < 0x7FFFFFFE)
      {
        v18 = (&v14[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v18 = 0;
          v18[1] = 0;
          *v18 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v18 = a2;
        }
      }

      else if (v8 >= a2)
      {
        v19 = *(v6 + 56);
        v20 = a2 + 1;

        v19(v14, v20);
      }

      else
      {
        if (v11 <= 3)
        {
          v15 = ~(-1 << (8 * v11));
        }

        else
        {
          v15 = -1;
        }

        if (v11)
        {
          v16 = v15 & (~v8 + a2);
          if (v11 <= 3)
          {
            v17 = v11;
          }

          else
          {
            v17 = 4;
          }

          bzero(v14, v11);
          if (v17 > 2)
          {
            if (v17 == 3)
            {
              *v14 = v16;
              v14[2] = BYTE2(v16);
            }

            else
            {
              *v14 = v16;
            }
          }

          else if (v17 == 1)
          {
            *v14 = v16;
          }

          else
          {
            *v14 = v16;
          }
        }
      }
    }
  }

  else
  {
    v13 = ~v9 + a2;
    bzero(a1, v12);
    *a1 = v13;
    if (v9 < a3)
    {
      a1[v12] = 1;
    }
  }
}

double PlacementContext.size.getter()
{
  if (*(v0 + 48))
  {
    return *AGGraphGetInputValue();
  }

  else
  {
    return *(v0 + 16);
  }
}

uint64_t _PositionAwarePlacementContext.init(context:size:environment:transform:position:safeAreaInsets:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, _DWORD *a7@<X8>)
{
  *a7 = result;
  a7[1] = result;
  a7[2] = a2;
  a7[3] = a3;
  a7[4] = a4;
  a7[5] = a5;
  a7[6] = a6;
  return result;
}

double SizeAndSpacingContext.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = v2;
  return result;
}

uint64_t SizeAndSpacingContext.subscript.getter(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(v1 + 4);
  v8 = *(v1 + 8);
  v9 = a1;
  v4 = *(v2 + *MEMORY[0x1E69E77B0] + 8);
  v5 = type metadata accessor for EnvironmentFetch();
  v11 = v5;
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v14 = 1;
  v15 = v3;
  v16 = 0;
  v17 = &v8;

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v8, partial apply for closure #1 in Rule<>.cachedValue(options:owner:), v10, v5, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v6);
}

uint64_t PlacementContext.subscript.getter(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(v1 + 4);
  v8 = *(v1 + 8);
  v9 = a1;
  v4 = *(v2 + *MEMORY[0x1E69E77B0] + 8);
  v5 = type metadata accessor for EnvironmentFetch();
  v11 = v5;
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v14 = 1;
  v15 = v3;
  v16 = 0;
  v17 = &v8;

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v8, closure #1 in Rule<>.cachedValue(options:owner:)partial apply, v10, v5, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v6);
}

uint64_t SizeAndSpacingContext.update<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18[-v14];
  v16 = *(a3 - 8);
  (*(v16 + 56))(&v18[-v14], 1, 1, a3, v13);
  v19 = a3;
  v20 = v15;
  v21 = a1;
  v22 = a2;
  AGGraphWithUpdate();
  (*(v9 + 16))(v11, v15, v8);
  result = (*(v16 + 48))(v11, 1, a3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v16 + 32))(a4, v11, a3);
    return (*(v9 + 8))(v15, v8);
  }

  return result;
}

double _PositionAwarePlacementContext.transform.getter@<D0>(uint64_t a1@<X8>)
{
  InputValue = AGGraphGetInputValue();
  v3 = *(InputValue + 8);
  v4 = *(InputValue + 16);
  v5 = *(InputValue + 24);
  v6 = *(InputValue + 32);
  v7 = *(InputValue + 40);
  *a1 = *InputValue;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  type metadata accessor for CGPoint(0);

  v8 = AGGraphGetInputValue();
  result = *v8;
  v10 = v8[1];
  *(a1 + 32) = v6 - (*v8 - v4);
  *(a1 + 40) = v7 - (v10 - v5);
  *(a1 + 16) = result;
  *(a1 + 24) = v10;
  return result;
}

uint64_t SizeAndSpacingContext.init(context:owner:environment:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  if ((a2 & 0x100000000) != 0)
  {
    v4 = result;
  }

  else
  {
    v4 = a2;
  }

  *a4 = result;
  a4[1] = v4;
  a4[2] = a3;
  return result;
}

__n128 PlacementContext.init(base:parentSize:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  *a3 = *a1;
  *(a3 + 8) = v3;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 16) = *a2;
  *(a3 + 32) = v5;
  *(a3 + 48) = 0;
  return result;
}

uint64_t ViewTransformable.convert(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  InputValue = AGGraphGetInputValue();
  v8 = *InputValue;
  v9 = *(InputValue + 8);
  v10 = *(InputValue + 16);
  v11 = *(InputValue + 24);
  v12 = *(InputValue + 32);
  v13 = *(InputValue + 40);
  type metadata accessor for CGPoint(0);

  v14 = AGGraphGetInputValue();
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = v12 - (*v14 - v10);
  v19[0] = v8;
  v19[1] = v9;
  *&v19[2] = v15;
  *&v19[3] = v16;
  *&v19[4] = v17;
  *&v19[5] = v13 - (v16 - v11);
  (*(a4 + 8))(a2, v19, a3, a4);
}

{
  InputValue = AGGraphGetInputValue();
  v8 = *InputValue;
  v9 = *(InputValue + 8);
  v10 = *(InputValue + 16);
  v11 = *(InputValue + 24);
  v12 = *(InputValue + 32);
  v13 = *(InputValue + 40);
  type metadata accessor for CGPoint(0);

  v14 = AGGraphGetInputValue();
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = v12 - (*v14 - v10);
  v19[0] = v8;
  v19[1] = v9;
  *&v19[2] = v15;
  *&v19[3] = v16;
  *&v19[4] = v17;
  *&v19[5] = v13 - (v16 - v11);
  (*(a4 + 16))(a1, v19, a3, a4);
}

uint64_t closure #1 in SizeAndSpacingContext.update<A>(_:)(uint64_t a1, void (*a2)(double), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  a2(v9);
  (*(*(a4 - 8) + 56))(v11, 0, 1, a4);
  return (*(v8 + 40))(a1, v11, v7);
}

uint64_t PlacementContext.init(context:owner:size:environment:transform:position:safeAreaInsets:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if ((a2 & 0x100000000) != 0)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  *a5 = result;
  *(a5 + 4) = v5;
  *(a5 + 8) = a4;
  *(a5 + 16) = a3;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  return result;
}

uint64_t PlacementContext.init(context:size:environment:transform:position:safeAreaInsets:)@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 4) = result;
  *(a4 + 8) = a3;
  *(a4 + 16) = a2;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 1;
  return result;
}

uint64_t _PositionAwarePlacementContext.init(context:owner:size:environment:transform:position:safeAreaInsets:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, _DWORD *a8@<X8>)
{
  if ((a2 & 0x100000000) != 0)
  {
    v8 = result;
  }

  else
  {
    v8 = a2;
  }

  *a8 = result;
  a8[1] = v8;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

void _PositionAwarePlacementContext.unadjustedSafeAreaInsets.getter(void *a1@<X8>)
{
  if (*(v1 + 24) == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
    v3 = *InputValue;
    v4 = InputValue[1];
    v5 = InputValue[2];
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
}

uint64_t _PositionAwarePlacementContext.subscript.getter(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(v1 + 4);
  v8 = *(v1 + 12);
  v9 = a1;
  v4 = *(v2 + *MEMORY[0x1E69E77B0] + 8);
  v5 = type metadata accessor for EnvironmentFetch();
  v11 = v5;
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v14 = 1;
  v15 = v3;
  v16 = 0;
  v17 = &v8;

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v8, closure #1 in Rule<>.cachedValue(options:owner:)partial apply, v10, v5, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v6);
}

uint64_t EnvironmentFetch.value.getter()
{
  EnvironmentFetch.environment.getter(&v1);
  swift_getAtKeyPath();
}

uint64_t EnvironmentFetch.hash(into:)(int a1, Swift::UInt32 a2)
{
  Hasher._combine(_:)(a2);
  type metadata accessor for KeyPath();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int EnvironmentFetch.hashValue.getter(Swift::UInt32 a1)
{
  Hasher.init(_seed:)();
  EnvironmentFetch.hash(into:)(&v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EnvironmentFetch<A>()
{
  Hasher.init(_seed:)();
  EnvironmentFetch.hash(into:)(&v2, *v0);
  return Hasher._finalize()();
}

uint64_t closure #1 in Rule<>.cachedValue(options:owner:)@<X0>(uint64_t a1@<X8>)
{
  dispatch thunk of Hashable.hashValue.getter();
  v2 = static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a1, v2, AssociatedTypeWitness);
}

uint64_t partial apply for closure #1 in Rule<>.cachedValue(options:owner:)@<X0>(uint64_t a1@<X8>)
{
  return partial apply for closure #1 in Rule<>.cachedValue(options:owner:)(a1);
}

{
  return closure #1 in Rule<>.cachedValue(options:owner:)(a1);
}

uint64_t getEnumTagSinglePayload for PlacementContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t storeEnumTagSinglePayload for PlacementContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t (*partial apply for closure #1 in closure #1 in Rule<>.cachedValue(options:owner:)())(uint64_t a1, uint64_t a2)
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  v3 = *(v0 + 16);
  *(v2 + 16) = v3;
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  return partial apply for implicit closure #1 in closure #1 in closure #1 in Rule<>.cachedValue(options:owner:);
}

uint64_t implicit closure #1 in closure #1 in closure #1 in Rule<>.cachedValue(options:owner:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v18[-v14];
  (*(v8 + 16))(v10, a1, a4, v13);
  dispatch thunk of Rule.value.getter();
  (*(v8 + 8))(v10, a4);
  v20 = a4;
  v21 = a5;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, _s14AttributeGraph4RulePAAE14_updateDefaultyySvFZySPy5ValueQzGXEfU_TA_0, v19, AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v16);
  return (*(v12 + 8))(v15, AssociatedTypeWitness);
}

void specialized ProtobufEncoder.encodeAttachedValue<A>(key:data:)(void (**a1)(void, void), __int128 *a2, void *a3, void *a4)
{
  v9 = type metadata accessor for OSSignpostID();
  v47 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 2);
  v50 = *a2;
  v51 = v12;
  v52 = *(a2 + 24);
  v13 = ProtobufEncoder.archiveWriter.getter();
  if (v13)
  {
    v14 = v13;
    v48 = a3;
    v49 = a1;
    v15 = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for RBShader);
    lazy protocol witness table accessor for type RBShader and conformance NSObject();
    v16 = a1;
    v46 = v15;
    AnyHashable.init<A>(_:)();
    swift_beginAccess();
    v17 = v14[19];
    if (*(v17 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(&v50), (v19 & 1) != 0))
    {
      v45 = *(*(v17 + 56) + 8 * v18);
      swift_endAccess();
      outlined destroy of AnyHashable(&v50);
      if (one-time initialization token for archiving != -1)
      {
        goto LABEL_20;
      }

      while (1)
      {
        v20 = type metadata accessor for OSSignposter();
        __swift_project_value_buffer(v20, static OSSignposter.archiving);
        lazy protocol witness table accessor for type Int and conformance Int();
        default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v21, v22);
        static OSSignpostID.exclusive.getter();
        v23 = OSSignposter.logHandle.getter();
        v24 = static os_signpost_type_t.event.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v25 = swift_slowAlloc();
          v44 = a4;
          v26 = v25;
          *v25 = 134217984;
          *(v25 + 4) = v45;
          v27 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&dword_18D018000, v23, v24, v27, "addAttachment.cacheHit", "index=%{name=index}ld", v26, 0xCu);
          v28 = v26;
          a4 = v44;
          MEMORY[0x193AC4820](v28, -1, -1);
        }

        v47[1](v11, v9);
        v29 = v48;
        v11 = v45;
        if ((v45 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        swift_once();
      }
    }

    else
    {
      v47 = v16;
      swift_endAccess();
      outlined destroy of AnyHashable(&v50);
      v30 = v48;
      v31 = closure #1 in closure #1 in Shader.ResolvedShader.encode(to:)(v48, a4);
      if (v4)
      {

        return;
      }

      v9 = v31;
      v36 = v32;
      v44 = a4;
      outlined copy of Data._Representation(v31, v32);
      _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4DataV_Tt1g5(v9, v36, &v50);
      v37 = v51;
      v38 = v50;
      v45 = specialized Collection<>.firstIndex(of:)(v50, *(&v50 + 1), v51, v14[4]);
      if (v39)
      {
        v50 = v38;
        LODWORD(v51) = v37;
        BYTE4(v51) = 0;
        outlined copy of Data._Representation(v9, v36);
        v11 = specialized ArchiveWriter.addAttachment(hash:from:)(&v50, v14, v9, v36);
        outlined consume of Data._Representation(v9, v36);
        a4 = v44;
      }

      else
      {
        outlined consume of Data._Representation(v9, v36);
        a4 = v44;
        v11 = v45;
      }

      v29 = v48;
      v49 = v47;
      v42 = v47;
      AnyHashable.init<A>(_:)();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v14[19];
      v14[19] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, &v50, isUniquelyReferenced_nonNull_native);
      outlined destroy of AnyHashable(&v50);
      v14[19] = v53;
      swift_endAccess();
      if (v11 < 0)
      {
        goto LABEL_19;
      }
    }

    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v11);
  }

  else
  {
    v33 = closure #1 in closure #1 in Shader.ResolvedShader.encode(to:)(a3, a4);
    v35 = a3;
    if (v4)
    {

      return;
    }

    v40 = v33;
    v41 = v34;
    ProtobufEncoder.dataField(_:_:)(2, v33, v34);
    outlined consume of Data._Representation(v40, v41);
  }
}

void specialized ProtobufEncoder.encodeAttachedValue<A>(key:data:)(void (**a1)(void, void), __int128 *a2, void *a3)
{
  v7 = type metadata accessor for OSSignpostID();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v16 = *(a2 + 2);
  v56 = *a2;
  v57 = v16;
  v54 = a2;
  v58 = *(a2 + 24);
  v17 = ProtobufEncoder.archiveWriter.getter();
  if (v17)
  {
    v18 = v17;
    v53 = a3;
    v55 = a1;
    v19 = lazy protocol witness table accessor for type DataKey #1 in closure #2 in CodablePlatformFont.encode(to:) and conformance DataKey #1 in closure #2 in CodablePlatformFont.encode(to:)();
    v20 = a1;
    AnyHashable.init<A>(_:)();
    swift_beginAccess();
    v21 = v18[19];
    if (*(v21 + 16) && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(&v56), (v23 & 1) != 0))
    {
      v24 = *(*(v21 + 56) + 8 * v22);
      swift_endAccess();
      outlined destroy of AnyHashable(&v56);
      if (one-time initialization token for archiving != -1)
      {
        goto LABEL_20;
      }

      while (1)
      {
        v25 = type metadata accessor for OSSignposter();
        __swift_project_value_buffer(v25, static OSSignposter.archiving);
        lazy protocol witness table accessor for type Int and conformance Int();
        default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v26, v27);
        v28 = v50;
        static OSSignpostID.exclusive.getter();
        v29 = OSSignposter.logHandle.getter();
        v30 = static os_signpost_type_t.event.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v31 = swift_slowAlloc();
          *v31 = 134217984;
          *(v31 + 4) = v24;
          v32 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&dword_18D018000, v29, v30, v32, "addAttachment.cacheHit", "index=%{name=index}ld", v31, 0xCu);
          MEMORY[0x193AC4820](v31, -1, -1);
        }

        (v51)[1](v28, v52);
        v33 = v53;
        if ((v24 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        swift_once();
      }
    }

    else
    {
      v51 = v20;
      v52 = v19;
      swift_endAccess();
      outlined destroy of AnyHashable(&v56);
      v34 = v53;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = Data.init(contentsOf:options:)();
      if (v3)
      {
        (*(v10 + 8))(v12, v9);

        goto LABEL_11;
      }

      v39 = v35;
      v40 = v36;
      (*(v10 + 8))(v12, v9);
      outlined copy of Data._Representation(v39, v40);
      _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4DataV_Tt1g5(v39, v40, &v56);
      v41 = v57;
      v42 = v56;
      v43 = specialized Collection<>.firstIndex(of:)(v56, *(&v56 + 1), v57, v18[4]);
      if (v44)
      {
        v56 = v42;
        LODWORD(v57) = v41;
        BYTE4(v57) = 0;
        outlined copy of Data._Representation(v39, v40);
        v43 = specialized ArchiveWriter.addAttachment(hash:from:)(&v56, v18, v39, v40);
      }

      v24 = v43;
      outlined consume of Data._Representation(v39, v40);
      v33 = v53;
      v55 = v51;
      v48 = v51;
      AnyHashable.init<A>(_:)();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v18[19];
      v18[19] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, &v56, isUniquelyReferenced_nonNull_native);
      outlined destroy of AnyHashable(&v56);
      v18[19] = v59;
      swift_endAccess();
      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }
    }

    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v24);

LABEL_11:

    return;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = Data.init(contentsOf:options:)();
  if (v3)
  {
    (*(v10 + 8))(v15, v9);
  }

  else
  {
    v45 = v37;
    v46 = v15;
    v47 = v38;
    (*(v10 + 8))(v46, v9);
    ProtobufEncoder.dataField(_:_:)(2, v45, v47);
    outlined consume of Data._Representation(v45, v47);
  }
}

uint64_t _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFAA5ImageV8LocationOAAE10BundlePath33_8E7DCD4CEB1ACDE07B249BFF4CBC75C0LLV_Tt0g503_s7a3UI5l2V8m6OAAE10n8Path33_8pqrstuvw13LLV4fromAhA15cd23Vz_tKcfcAH10Foundation4K7VKXEfU_Tf1cn_n(uint64_t a1)
{
  v4 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = type metadata accessor for Data.Deallocator();
  MEMORY[0x1EEE9AC00](v5);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v9 >= v10)
  {
    *(a1 + 24) = 0;
    goto LABEL_4;
  }

  v62 = (v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = v6;
  v2 = 0;
  v11 = 0;
  v61 = *MEMORY[0x1E6969028];
  v60 = (v7 + 104);
  do
  {
    v12 = *(a1 + 24);
    if (v12)
    {
      v13 = *(a1 + 32);
      if (v9 < v13)
      {
        goto LABEL_15;
      }

      if (v13 < v9)
      {
        goto LABEL_75;
      }

      *(a1 + 24) = 0;
    }

    v12 = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      goto LABEL_5;
    }

    if (v12 < 8)
    {
LABEL_75:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();

      return v2;
    }

LABEL_15:
    v14 = v12 & 7;
    if (v12 >> 3 == 1)
    {
      if ((v12 & 7) != 0)
      {
        if (v14 != 2)
        {
          goto LABEL_75;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_5;
        }

        if (result < 0)
        {
          goto LABEL_86;
        }

        v24 = *(a1 + 8) + result;
        if (v10 < v24)
        {
          goto LABEL_75;
        }

        *(a1 + 24) = 8;
        *(a1 + 32) = v24;
      }

      v25 = ProtobufDecoder.decodeVarint()();
      v18 = v1;
      if (v1)
      {
        goto LABEL_5;
      }

      v26 = v25;
      v27 = *(a1 + 48);
      if (one-time initialization token for readerKey != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for CodingUserInfoKey();
      v29 = __swift_project_value_buffer(v28, static ArchiveReader.readerKey);
      if (!*(v27 + 16))
      {
        goto LABEL_7;
      }

      v30 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
      if ((v31 & 1) == 0)
      {
        goto LABEL_7;
      }

      outlined init with copy of Any(*(v27 + 56) + 32 * v30, &v66);
      type metadata accessor for ArchiveReader();
      if (!swift_dynamicCast())
      {
        goto LABEL_7;
      }

      v59 = v11;
      v32 = v65;
      if (one-time initialization token for cacheKey != -1)
      {
        swift_once();
      }

      v33 = __swift_project_value_buffer(v28, static ArchiveReader.cacheKey);
      if (*(v27 + 16))
      {
        v34 = specialized __RawDictionaryStorage.find<A>(_:)(v33);
        v35 = v32;
        if (v36)
        {
          outlined init with copy of Any(*(v27 + 56) + 32 * v34, &v66);
          type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for MutableBox<[Int : Any]>, type metadata accessor for [Int : Any], type metadata accessor for MutableBox);
          result = swift_dynamicCast();
          v11 = v59;
          if (result)
          {
            if (v26 < 0)
            {
              goto LABEL_88;
            }

            v37 = v65;
            swift_beginAccess();
            v38 = *(v37 + 16);
            if (*(v38 + 16) && (v39 = specialized __RawDictionaryStorage.find<A>(_:)(v26), (v40 & 1) != 0))
            {
              outlined init with copy of Any(*(v38 + 56) + 32 * v39, &v66);
              swift_endAccess();

              outlined init with take of Any(&v66, &v65);
              v41 = swift_dynamicCast();
              if (v41)
              {
                v11 = v64;
              }

              else
              {
                v11 = 0;
              }

              if (v41)
              {
                v2 = v63;
              }

              else
              {
                v2 = 0;
              }
            }

            else
            {
              v58 = v37;
              result = swift_endAccess();
              if (!*(v35 + 16))
              {
                goto LABEL_91;
              }

              v46 = (*(v35 + 32) + 16 * v26);
              v2 = *v46;
              if ((*v46 & 0x8000000000000000) != 0)
              {
                goto LABEL_89;
              }

              v57 = *(v35 + 16);
              v47 = v46[1];

              if (v47 < 0)
              {
                goto LABEL_90;
              }

              v48 = swift_allocObject();
              *(v48 + 16) = v35;
              v56[1] = v35;
              v49 = v62;
              *v62 = OptionalAnchorValueBox.__ivar_destroyer;
              *(v49 + 8) = v48;
              (*v60)(v49, v61, v68);
              v50 = specialized Data.init(bytesNoCopy:count:deallocator:)(v57 + v2, v47, v49);
              v52 = v51;
              static String.Encoding.utf8.getter();
              v57 = v52;
              v53 = String.init(data:encoding:)();
              if (!v54)
              {
                lazy protocol witness table accessor for type Image.Location.BundlePath.Error and conformance Image.Location.BundlePath.Error();
                swift_allocError();
                swift_willThrow();

                outlined consume of Data._Representation(v50, v57);

                return v2;
              }

              v2 = v53;
              v55 = v54;

              outlined consume of Data._Representation(v50, v57);
              v67 = &type metadata for Image.Location.BundlePath;
              *&v66 = v2;
              *(&v66 + 1) = v55;
              swift_beginAccess();

              specialized Dictionary.subscript.setter(&v66, v26);
              swift_endAccess();

              v11 = v55;
            }
          }

          else
          {
          }

LABEL_7:
          v1 = v18;
          goto LABEL_8;
        }
      }

      v11 = v59;
    }

    else
    {
      if (v12 >> 3 == 2)
      {
        if (v14 != 2)
        {
          goto LABEL_75;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_5;
        }

        v16 = result;
        if (result < 0)
        {
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          return result;
        }

        v17 = *(a1 + 8);
        if (v10 < v17 + result)
        {
          goto LABEL_75;
        }

        v18 = 0;
        *(a1 + 8) = v17 + result;
        if (result)
        {
          v19 = v17 - [*a1 bytes];
          result = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v2 = v20;
          if (__OFADD__(v19, v16))
          {
            goto LABEL_84;
          }

          if (v19 + v16 < v19)
          {
            goto LABEL_85;
          }

          v21 = result;
          v16 = Data._Representation.subscript.getter();
          v23 = v22;
          outlined consume of Data._Representation(v21, v2);
        }

        else
        {
          v23 = 0xC000000000000000;
        }

        static String.Encoding.utf8.getter();
        v43 = String.init(data:encoding:)();
        if (!v44)
        {
          lazy protocol witness table accessor for type Image.Location.BundlePath.Error and conformance Image.Location.BundlePath.Error();
          swift_allocError();
          swift_willThrow();

          outlined consume of Data._Representation(v16, v23);
          return v2;
        }

        v2 = v43;
        v45 = v44;

        outlined consume of Data._Representation(v16, v23);
        v11 = v45;
        goto LABEL_7;
      }

      if ((v12 & 7) > 1)
      {
        if (v14 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            goto LABEL_5;
          }

          if (result < 0)
          {
            goto LABEL_87;
          }

          v42 = *(a1 + 8) + result;
          if (v10 < v42)
          {
            goto LABEL_75;
          }
        }

        else
        {
          if (v14 != 5)
          {
            goto LABEL_75;
          }

          v42 = *(a1 + 8) + 4;
          if (v10 < v42)
          {
            goto LABEL_75;
          }
        }

        goto LABEL_68;
      }

      if ((v12 & 7) != 0)
      {
        if (v14 != 1)
        {
          goto LABEL_75;
        }

        v42 = *(a1 + 8) + 8;
        if (v10 < v42)
        {
          goto LABEL_75;
        }

LABEL_68:
        *(a1 + 8) = v42;
        goto LABEL_8;
      }

      ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_5;
      }
    }

LABEL_8:
    v9 = *(a1 + 8);
  }

  while (v9 < v10);
  *(a1 + 24) = 0;
  if (v11)
  {
    return v2;
  }

LABEL_4:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
LABEL_5:

  return v2;
}

uint64_t _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo8RBShaderC_Tt0g503_s7a36UI6ShaderV08ResolvedC0VAAE4fromAeA15cd11Vz_tKcfcSo8l25CAHzKXEfU_AJ10Foundation4K7VKXEfU_AA013RBDisplayListD8DelegateCTf1cn_n(uint64_t a1, void *a2)
{
  v64 = a2;
  v69 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for Data.Deallocator();
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if (v10 >= v11)
  {
    *(a1 + 24) = 0;
LABEL_4:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    goto LABEL_74;
  }

  v63 = v6;
  v2 = 0;
  v62 = (v7 + 104);
  v61 = *MEMORY[0x1E6969028];
  do
  {
    v12 = *(a1 + 24);
    if (v12)
    {
      v13 = *(a1 + 32);
      if (v10 < v13)
      {
        goto LABEL_14;
      }

      if (v13 < v10)
      {
        goto LABEL_70;
      }

      *(a1 + 24) = 0;
    }

    v12 = ProtobufDecoder.decodeVarint()();
    if (v3)
    {
      goto LABEL_71;
    }

    if (v12 < 8)
    {
      goto LABEL_70;
    }

LABEL_14:
    v14 = v12 & 7;
    if (v12 >> 3 == 1)
    {
      if ((v12 & 7) != 0)
      {
        if (v14 != 2)
        {
          goto LABEL_70;
        }

        v25 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_71;
        }

        if (v25 < 0)
        {
          goto LABEL_79;
        }

        v26 = *(a1 + 8) + v25;
        if (v11 < v26)
        {
LABEL_70:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_71:

          return v2;
        }

        *(a1 + 24) = 8;
        *(a1 + 32) = v26;
      }

      v27 = ProtobufDecoder.decodeVarint()();
      if (v3)
      {
        goto LABEL_71;
      }

      v28 = v27;
      v29 = *(a1 + 48);
      if (one-time initialization token for readerKey != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for CodingUserInfoKey();
      v31 = __swift_project_value_buffer(v30, static ArchiveReader.readerKey);
      if (!*(v29 + 16))
      {
        goto LABEL_6;
      }

      v32 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
      if ((v33 & 1) == 0)
      {
        goto LABEL_6;
      }

      outlined init with copy of Any(*(v29 + 56) + 32 * v32, &v67);
      type metadata accessor for ArchiveReader();
      if (!swift_dynamicCast())
      {
        goto LABEL_6;
      }

      v34 = v66;
      if (one-time initialization token for cacheKey != -1)
      {
        swift_once();
      }

      v35 = __swift_project_value_buffer(v30, static ArchiveReader.cacheKey);
      if (*(v29 + 16))
      {
        v36 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
        if (v37)
        {
          outlined init with copy of Any(*(v29 + 56) + 32 * v36, &v67);
          type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for MutableBox<[Int : Any]>, type metadata accessor for [Int : Any], type metadata accessor for MutableBox);
          if (swift_dynamicCast())
          {
            if (v28 < 0)
            {
              goto LABEL_81;
            }

            v38 = v66;
            swift_beginAccess();
            v39 = *(v38 + 16);
            if (*(v39 + 16))
            {
              v40 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
              if (v41)
              {
                outlined init with copy of Any(*(v39 + 56) + 32 * v40, &v67);
                swift_endAccess();

                outlined init with take of Any(&v67, &v66);
                type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for RBShader);
                if (swift_dynamicCast())
                {
                  v2 = v65;
                }

                else
                {
                  v2 = 0;
                }

                goto LABEL_6;
              }
            }

            v60 = v38;
            result = swift_endAccess();
            if (!*(v34 + 16))
            {
              __break(1u);
LABEL_85:
              __break(1u);
              return result;
            }

            v49 = (*(v34 + 32) + 16 * v28);
            v50 = *v49;
            if (*v49 < 0)
            {
              goto LABEL_82;
            }

            v59 = *(v34 + 16);
            v51 = v49[1];

            if (v51 < 0)
            {
              goto LABEL_83;
            }

            v52 = swift_allocObject();
            v58[1] = v34;
            *(v52 + 16) = v34;
            *v9 = OptionalAnchorValueBox.__ivar_destroyer;
            v9[1] = v52;
            (*v62)(v9, v61, v63);
            v53 = specialized Data.init(bytesNoCopy:count:deallocator:)(v59 + v50, v51, v9);
            v55 = v54;
            closure #1 in closure #1 in Shader.ResolvedShader.init(from:)(v64, &v67);

            result = outlined consume of Data._Representation(v53, v55);
            v2 = v67;
            if (!v67)
            {
              goto LABEL_85;
            }

            v68 = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for RBShader);
            *&v67 = v2;
            swift_beginAccess();
            v56 = v2;
            specialized Dictionary.subscript.setter(&v67, v28);
            swift_endAccess();
          }
        }
      }

LABEL_6:
      v3 = 0;
      goto LABEL_7;
    }

    if (v12 >> 3 == 2)
    {
      if (v14 != 2)
      {
        goto LABEL_70;
      }

      v15 = ProtobufDecoder.decodeVarint()();
      if (v3)
      {
        goto LABEL_71;
      }

      v16 = v15;
      if (v15 < 0)
      {
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
      }

      v17 = *(a1 + 8);
      if (v11 < v17 + v15)
      {
        goto LABEL_70;
      }

      *(a1 + 8) = v17 + v15;
      if (v15)
      {
        v18 = v17 - [*a1 bytes];
        v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;
        if (__OFADD__(v18, v16))
        {
          goto LABEL_77;
        }

        if (v18 + v16 < v18)
        {
          goto LABEL_78;
        }

        v22 = v19;
        v16 = Data._Representation.subscript.getter();
        v24 = v23;
        outlined consume of Data._Representation(v22, v21);
      }

      else
      {
        v24 = 0xC000000000000000;
      }

      v43 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      *&v67 = 0;
      v45 = [v43 decodedObjectWithData:isa delegate:v64 error:&v67];

      if (!v45)
      {
        v57 = v67;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        outlined consume of Data._Representation(v16, v24);
        goto LABEL_74;
      }

      v46 = v67;

      outlined consume of Data._Representation(v16, v24);
      v2 = v45;
    }

    else
    {
      if ((v12 & 7) > 1)
      {
        if (v14 == 2)
        {
          v47 = ProtobufDecoder.decodeVarint()();
          if (v3)
          {
            goto LABEL_71;
          }

          if (v47 < 0)
          {
            goto LABEL_80;
          }

          v42 = *(a1 + 8) + v47;
          if (v11 < v42)
          {
            goto LABEL_70;
          }
        }

        else
        {
          if (v14 != 5)
          {
            goto LABEL_70;
          }

          v42 = *(a1 + 8) + 4;
          if (v11 < v42)
          {
            goto LABEL_70;
          }
        }

        goto LABEL_64;
      }

      if ((v12 & 7) != 0)
      {
        if (v14 != 1)
        {
          goto LABEL_70;
        }

        v42 = *(a1 + 8) + 8;
        if (v11 < v42)
        {
          goto LABEL_70;
        }

LABEL_64:
        *(a1 + 8) = v42;
        goto LABEL_7;
      }

      ProtobufDecoder.decodeVarint()();
      if (v3)
      {
        goto LABEL_71;
      }
    }

LABEL_7:
    v10 = *(a1 + 8);
  }

  while (v10 < v11);
  *(a1 + 24) = 0;
  if (!v2)
  {
    goto LABEL_4;
  }

LABEL_74:

  return v2;
}

unint64_t _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFAI_Tt0g503_s7a34UI19CodablePlatformFontV4fromAcA15cd21Vz_tKcfc10Foundation4K18VAFzKXEfU_A2IXEfU_Tf1ncn_n@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Data.Deallocator();
  MEMORY[0x1EEE9AC00](v5);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v9 >= v10)
  {
    v11 = 0;
    *(a1 + 24) = 0;
    v12 = 0xF000000000000000;
LABEL_4:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    return outlined consume of Data?(v11, v12);
  }

  v58 = (v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = v6;
  v65 = a2;
  v11 = 0;
  v57 = (v7 + 104);
  v56 = *MEMORY[0x1E6969028];
  v12 = 0xF000000000000000;
  while (1)
  {
    while (1)
    {
      result = *(a1 + 24);
      if (result)
      {
        v14 = *(a1 + 32);
        if (v9 < v14)
        {
          goto LABEL_13;
        }

        if (v14 < v9)
        {
          goto LABEL_4;
        }

        *(a1 + 24) = 0;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of Data?(v11, v12);
      }

      if (result < 8)
      {
        goto LABEL_4;
      }

LABEL_13:
      v15 = result & 7;
      if (result >> 3 == 1)
      {
        if ((result & 7) != 0)
        {
          if (v15 != 2)
          {
            goto LABEL_4;
          }

          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return outlined consume of Data?(v11, v12);
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_78;
          }

          v25 = *(a1 + 8) + result;
          if (v10 < v25)
          {
            goto LABEL_4;
          }

          *(a1 + 24) = 8;
          *(a1 + 32) = v25;
        }

        v26 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of Data?(v11, v12);
        }

        v27 = v26;
        v28 = *(a1 + 48);
        if (one-time initialization token for readerKey != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for CodingUserInfoKey();
        result = __swift_project_value_buffer(v29, static ArchiveReader.readerKey);
        if (*(v28 + 16))
        {
          result = specialized __RawDictionaryStorage.find<A>(_:)(result);
          if (v30)
          {
            outlined init with copy of Any(*(v28 + 56) + 32 * result, &v63);
            type metadata accessor for ArchiveReader();
            result = swift_dynamicCast();
            if (result)
            {
              v31 = v62;
              if (one-time initialization token for cacheKey != -1)
              {
                swift_once();
              }

              v32 = __swift_project_value_buffer(v29, static ArchiveReader.cacheKey);
              if (*(v28 + 16) && (v33 = specialized __RawDictionaryStorage.find<A>(_:)(v32), (v34 & 1) != 0) && (outlined init with copy of Any(*(v28 + 56) + 32 * v33, &v63), type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for MutableBox<[Int : Any]>, type metadata accessor for [Int : Any], type metadata accessor for MutableBox), result = swift_dynamicCast(), (result & 1) != 0))
              {
                if (v27 < 0)
                {
                  goto LABEL_80;
                }

                v35 = v62;
                swift_beginAccess();
                v36 = *(v35 + 16);
                if (*(v36 + 16) && (v37 = specialized __RawDictionaryStorage.find<A>(_:)(v27), (v38 & 1) != 0))
                {
                  outlined init with copy of Any(*(v36 + 56) + 32 * v37, &v63);
                  swift_endAccess();
                  outlined consume of Data?(v11, v12);

                  outlined init with take of Any(&v63, &v62);
                  result = swift_dynamicCast();
                  if (result)
                  {
                    v12 = v61;
                  }

                  else
                  {
                    v12 = 0xF000000000000000;
                  }

                  if (result)
                  {
                    v11 = v60;
                  }

                  else
                  {
                    v11 = 0;
                  }
                }

                else
                {
                  result = swift_endAccess();
                  v40 = *(v31 + 16);
                  if (!v40)
                  {
                    goto LABEL_83;
                  }

                  v41 = (*(v31 + 32) + 16 * v27);
                  v42 = v31;
                  v43 = *v41;
                  if (*v41 < 0)
                  {
                    goto LABEL_81;
                  }

                  v54 = v40;
                  v55 = v35;
                  v44 = v41[1];
                  v45 = v42;

                  if (v44 < 0)
                  {
                    goto LABEL_82;
                  }

                  v46 = swift_allocObject();
                  v53[1] = v45;
                  *(v46 + 16) = v45;
                  v47 = v57;
                  v48 = v58;
                  *v58 = OptionalAnchorValueBox.__ivar_destroyer;
                  *(v48 + 8) = v46;
                  (*v47)(v48, v56, v59);
                  v49 = specialized Data.init(bytesNoCopy:count:deallocator:)(v54 + v43, v44, v48);
                  v51 = v50;
                  outlined consume of Data?(v11, v12);
                  v64 = MEMORY[0x1E6969080];
                  *&v63 = v49;
                  *(&v63 + 1) = v51;
                  swift_beginAccess();
                  outlined copy of Data._Representation(v49, v51);
                  specialized Dictionary.subscript.setter(&v63, v27);
                  swift_endAccess();

                  v11 = v49;
                  v12 = v51;
                }
              }

              else
              {
              }
            }
          }
        }

        goto LABEL_6;
      }

      if (result >> 3 == 2)
      {
        break;
      }

      if ((result & 7) > 1)
      {
        if (v15 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return outlined consume of Data?(v11, v12);
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_79;
          }

          v39 = *(a1 + 8) + result;
          if (v10 < v39)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v15 != 5)
          {
            goto LABEL_4;
          }

          v39 = *(a1 + 8) + 4;
          if (v10 < v39)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return outlined consume of Data?(v11, v12);
          }

          goto LABEL_6;
        }

        if (v15 != 1)
        {
          goto LABEL_4;
        }

        v39 = *(a1 + 8) + 8;
        if (v10 < v39)
        {
          goto LABEL_4;
        }
      }

      *(a1 + 8) = v39;
LABEL_6:
      v9 = *(a1 + 8);
      if (v9 >= v10)
      {
        *(a1 + 24) = 0;
        if (v12 >> 60 == 15)
        {
          goto LABEL_4;
        }

        goto LABEL_74;
      }
    }

    if (v15 != 2)
    {
      goto LABEL_4;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of Data?(v11, v12);
    }

    v16 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    v17 = *(a1 + 8);
    if (v10 < v17 + result)
    {
      goto LABEL_4;
    }

    *(a1 + 8) = v17 + result;
    if (result)
    {
      v18 = v17 - [*a1 bytes];
      result = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      if (__OFADD__(v18, v16))
      {
        goto LABEL_76;
      }

      if ((v18 + v16) < v18)
      {
        goto LABEL_77;
      }

      v21 = result;
      v22 = Data._Representation.subscript.getter();
      v24 = v23;
      outlined consume of Data._Representation(v21, v20);
      result = outlined consume of Data?(v11, v12);
      v11 = v22;
      v12 = v24;
      goto LABEL_6;
    }

    result = outlined consume of Data?(v11, v12);
    v11 = 0;
    v9 = *(a1 + 8);
    v12 = 0xC000000000000000;
    if (v9 >= v10)
    {
      v11 = 0;
      *(a1 + 24) = 0;
LABEL_74:
      v52 = v65;
      *v65 = v11;
      v52[1] = v12;
      return result;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

void _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo9CGFontRefaSg_Tt0g503_s7a11UI13Codablel11V4fromAcA15cd43Vz_tKcfcSo0D3RefaSgAFzKXEfU_AI10Foundation4K6VXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for Data.Deallocator();
  MEMORY[0x1EEE9AC00](v3);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v7 < v8)
  {
    v64 = (v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v65 = v4;
    v63 = (v5 + 104);
    v62 = *MEMORY[0x1E6969028];
    v9 = 1;
    while (1)
    {
      v10 = *(a1 + 24);
      if (v10)
      {
        v11 = *(a1 + 32);
        if (v7 < v11)
        {
          goto LABEL_13;
        }

        if (v11 < v7)
        {
          goto LABEL_69;
        }

        *(a1 + 24) = 0;
      }

      v10 = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_70;
      }

      if (v10 <= 7)
      {
LABEL_69:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        goto LABEL_70;
      }

LABEL_13:
      v12 = v10 & 7;
      if (v10 >> 3 == 1)
      {
        if ((v10 & 7) != 0)
        {
          if (v12 != 2)
          {
            goto LABEL_69;
          }

          v23 = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            goto LABEL_70;
          }

          if (v23 < 0)
          {
            goto LABEL_76;
          }

          v24 = *(a1 + 8) + v23;
          if (v8 < v24)
          {
            goto LABEL_69;
          }

          *(a1 + 24) = 8;
          *(a1 + 32) = v24;
        }

        v25 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_70;
        }

        v26 = v25;
        v27 = *(a1 + 48);
        if (one-time initialization token for readerKey != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for CodingUserInfoKey();
        v29 = __swift_project_value_buffer(v28, static ArchiveReader.readerKey);
        if (*(v27 + 16))
        {
          v30 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
          if (v31)
          {
            outlined init with copy of Any(*(v27 + 56) + 32 * v30, &v67);
            type metadata accessor for ArchiveReader();
            if (swift_dynamicCast())
            {
              v32 = v66;
              if (one-time initialization token for cacheKey != -1)
              {
                swift_once();
              }

              v33 = __swift_project_value_buffer(v28, static ArchiveReader.cacheKey);
              if (*(v27 + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(v33), (v35 & 1) != 0) && (outlined init with copy of Any(*(v27 + 56) + 32 * v34, &v67), type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for MutableBox<[Int : Any]>, type metadata accessor for [Int : Any], type metadata accessor for MutableBox), (swift_dynamicCast() & 1) != 0))
              {
                if (v26 < 0)
                {
                  goto LABEL_78;
                }

                v36 = v66;
                swift_beginAccess();
                v37 = *(v36 + 16);
                if (*(v37 + 16) && (v38 = specialized __RawDictionaryStorage.find<A>(_:)(v26), (v39 & 1) != 0))
                {
                  outlined init with copy of Any(*(v37 + 56) + 32 * v38, &v67);
                  swift_endAccess();
                  outlined consume of Shader.ResolvedShader?(v9);

                  outlined init with take of Any(&v67, &v66);
                  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for CGFontRef?, type metadata accessor for CGFontRef, MEMORY[0x1E69E6720]);
                  if (swift_dynamicCast())
                  {
                    v9 = v69;
                  }

                  else
                  {
                    v9 = 1;
                  }
                }

                else
                {
                  v61[1] = v36;
                  swift_endAccess();
                  v45 = *(v32 + 16);
                  if (!v45)
                  {
                    goto LABEL_83;
                  }

                  v46 = (*(v32 + 32) + 16 * v26);
                  v47 = *v46;
                  if (*v46 < 0)
                  {
                    goto LABEL_79;
                  }

                  v48 = v46[1];

                  if (v48 < 0)
                  {
                    goto LABEL_80;
                  }

                  v49 = swift_allocObject();
                  *(v49 + 16) = v32;
                  v61[0] = v32;
                  v50 = v63;
                  v51 = v64;
                  *v64 = OptionalAnchorValueBox.__ivar_destroyer;
                  *(v51 + 8) = v49;
                  (*v50)(v51, v62, v65);
                  v52 = specialized Data.init(bytesNoCopy:count:deallocator:)(v45 + v47, v48, v51);
                  v54 = v53;
                  v55 = v52;
                  isa = Data._bridgeToObjectiveC()().super.isa;
                  v57 = CGDataProviderCreateWithCFData(isa);

                  if (!v57)
                  {
                    goto LABEL_82;
                  }

                  v58 = CGFontCreateWithDataProvider(v57);

                  outlined consume of Shader.ResolvedShader?(v9);
                  outlined consume of Data._Representation(v55, v54);
                  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for CGFontRef?, type metadata accessor for CGFontRef, MEMORY[0x1E69E6720]);
                  v68 = v59;
                  *&v67 = v58;
                  swift_beginAccess();
                  v60 = v58;
                  specialized Dictionary.subscript.setter(&v67, v26);
                  swift_endAccess();

                  v9 = v58;
                }
              }

              else
              {
              }
            }
          }
        }

        goto LABEL_6;
      }

      if (v10 >> 3 == 2)
      {
        if (v12 != 2)
        {
          goto LABEL_69;
        }

        v13 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_70;
        }

        v14 = v13;
        if (v13 < 0)
        {
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
          return;
        }

        v15 = *(a1 + 8);
        if (v8 < v15 + v13)
        {
          goto LABEL_69;
        }

        *(a1 + 8) = v15 + v13;
        if (v13)
        {
          v16 = v15 - [*a1 bytes];
          v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;
          if (__OFADD__(v16, v14))
          {
            goto LABEL_74;
          }

          if (v16 + v14 < v16)
          {
            goto LABEL_75;
          }

          v20 = v17;
          v14 = Data._Representation.subscript.getter();
          v22 = v21;
          outlined consume of Data._Representation(v20, v19);
        }

        else
        {
          v22 = 0xC000000000000000;
        }

        v41 = Data._bridgeToObjectiveC()().super.isa;
        v42 = CGDataProviderCreateWithCFData(v41);

        if (!v42)
        {
          goto LABEL_81;
        }

        v43 = CGFontCreateWithDataProvider(v42);

        outlined consume of Shader.ResolvedShader?(v9);
        outlined consume of Data._Representation(v14, v22);
        v9 = v43;
        goto LABEL_6;
      }

      if ((v10 & 7) > 1)
      {
        if (v12 == 2)
        {
          v44 = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            goto LABEL_70;
          }

          if (v44 < 0)
          {
            goto LABEL_77;
          }

          v40 = *(a1 + 8) + v44;
          if (v8 < v40)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v12 != 5)
          {
            goto LABEL_69;
          }

          v40 = *(a1 + 8) + 4;
          if (v8 < v40)
          {
            goto LABEL_69;
          }
        }
      }

      else
      {
        if ((v10 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            goto LABEL_70;
          }

          goto LABEL_6;
        }

        if (v12 != 1)
        {
          goto LABEL_69;
        }

        v40 = *(a1 + 8) + 8;
        if (v8 < v40)
        {
          goto LABEL_69;
        }
      }

      *(a1 + 8) = v40;
LABEL_6:
      v7 = *(a1 + 8);
      if (v7 >= v8)
      {
        *(a1 + 24) = 0;
        if (v9 == 1)
        {
          goto LABEL_4;
        }

        return;
      }
    }
  }

  *(a1 + 24) = 0;
LABEL_4:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
  v9 = 1;
LABEL_70:
  outlined consume of Shader.ResolvedShader?(v9);
}

uint64_t _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo9CGFontRefaSg_Tt0g503_s7a11UI13Codablel11V4fromAcA15cd44Vz_tKcfcSo0D3RefaSgAFzKXEfU0_AI10Foundation4K6VXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for Data.Deallocator();
  MEMORY[0x1EEE9AC00](v3);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v7 >= v8)
  {
    *(a1 + 24) = 0;
LABEL_4:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    v9 = 1;
LABEL_68:
    outlined consume of Shader.ResolvedShader?(v9);
    return v9;
  }

  v58 = (v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = v4;
  v57 = (v5 + 104);
  v56 = *MEMORY[0x1E6969028];
  v9 = 1;
  do
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      v11 = *(a1 + 32);
      if (v7 < v11)
      {
        goto LABEL_13;
      }

      if (v11 < v7)
      {
        goto LABEL_67;
      }

      *(a1 + 24) = 0;
    }

    v10 = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      goto LABEL_68;
    }

    if (v10 <= 7)
    {
LABEL_67:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      goto LABEL_68;
    }

LABEL_13:
    v12 = v10 & 7;
    if (v10 >> 3 == 1)
    {
      if ((v10 & 7) != 0)
      {
        if (v12 != 2)
        {
          goto LABEL_67;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_68;
        }

        if (result < 0)
        {
          goto LABEL_75;
        }

        v22 = *(a1 + 8) + result;
        if (v8 < v22)
        {
          goto LABEL_67;
        }

        *(a1 + 24) = 8;
        *(a1 + 32) = v22;
      }

      v23 = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_68;
      }

      v24 = v23;
      v25 = *(a1 + 48);
      if (one-time initialization token for readerKey != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for CodingUserInfoKey();
      v27 = __swift_project_value_buffer(v26, static ArchiveReader.readerKey);
      if (*(v25 + 16))
      {
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
        if (v29)
        {
          outlined init with copy of Any(*(v25 + 56) + 32 * v28, &v61);
          type metadata accessor for ArchiveReader();
          if (swift_dynamicCast())
          {
            v30 = v60;
            if (one-time initialization token for cacheKey != -1)
            {
              swift_once();
            }

            v31 = __swift_project_value_buffer(v26, static ArchiveReader.cacheKey);
            if (*(v25 + 16) && (v32 = specialized __RawDictionaryStorage.find<A>(_:)(v31), (v33 & 1) != 0) && (outlined init with copy of Any(*(v25 + 56) + 32 * v32, &v61), type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for MutableBox<[Int : Any]>, type metadata accessor for [Int : Any], type metadata accessor for MutableBox), result = swift_dynamicCast(), (result & 1) != 0))
            {
              if (v24 < 0)
              {
                goto LABEL_77;
              }

              v34 = v60;
              swift_beginAccess();
              v35 = *(v34 + 16);
              if (*(v35 + 16) && (v36 = specialized __RawDictionaryStorage.find<A>(_:)(v24), (v37 & 1) != 0))
              {
                outlined init with copy of Any(*(v35 + 56) + 32 * v36, &v61);
                swift_endAccess();
                outlined consume of Shader.ResolvedShader?(v9);

                outlined init with take of Any(&v61, &v60);
                type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for CGFontRef?, type metadata accessor for CGFontRef, MEMORY[0x1E69E6720]);
                if (swift_dynamicCast())
                {
                  v9 = v63;
                }

                else
                {
                  v9 = 1;
                }
              }

              else
              {
                v55[1] = v34;
                result = swift_endAccess();
                v41 = *(v30 + 16);
                if (!v41)
                {
                  goto LABEL_80;
                }

                v42 = (*(v30 + 32) + 16 * v24);
                v43 = *v42;
                if (*v42 < 0)
                {
                  goto LABEL_78;
                }

                v44 = v42[1];

                if (v44 < 0)
                {
                  goto LABEL_79;
                }

                v45 = swift_allocObject();
                *(v45 + 16) = v30;
                v55[0] = v30;
                v46 = v57;
                v47 = v58;
                *v58 = OptionalAnchorValueBox.__ivar_destroyer;
                *(v47 + 8) = v45;
                (*v46)(v47, v56, v59);
                v48 = specialized Data.init(bytesNoCopy:count:deallocator:)(v41 + v43, v44, v47);
                v50 = v49;
                isa = Data._bridgeToObjectiveC()().super.isa;
                CGFontWithData = RBDecoderCreateCGFontWithData();

                outlined consume of Shader.ResolvedShader?(v9);
                outlined consume of Data._Representation(v48, v50);
                type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for CGFontRef?, type metadata accessor for CGFontRef, MEMORY[0x1E69E6720]);
                v62 = v53;
                *&v61 = CGFontWithData;
                swift_beginAccess();
                v54 = CGFontWithData;
                specialized Dictionary.subscript.setter(&v61, v24);
                swift_endAccess();

                v9 = CGFontWithData;
              }
            }

            else
            {
            }
          }
        }
      }
    }

    else if (v10 >> 3 == 2)
    {
      if (v12 != 2)
      {
        goto LABEL_67;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_68;
      }

      v14 = result;
      if (result < 0)
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        return result;
      }

      v15 = *(a1 + 8);
      if (v8 < v15 + result)
      {
        goto LABEL_67;
      }

      *(a1 + 8) = v15 + result;
      if (result)
      {
        v16 = v15 - [*a1 bytes];
        result = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (__OFADD__(v16, v14))
        {
          goto LABEL_73;
        }

        if (v16 + v14 < v16)
        {
          goto LABEL_74;
        }

        v19 = result;
        v14 = Data._Representation.subscript.getter();
        v21 = v20;
        outlined consume of Data._Representation(v19, v18);
      }

      else
      {
        v21 = 0xC000000000000000;
      }

      v39 = Data._bridgeToObjectiveC()().super.isa;
      v40 = RBDecoderCreateCGFontWithData();

      outlined consume of Shader.ResolvedShader?(v9);
      outlined consume of Data._Representation(v14, v21);
      v9 = v40;
    }

    else
    {
      if ((v10 & 7) > 1)
      {
        if (v12 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            goto LABEL_68;
          }

          if (result < 0)
          {
            goto LABEL_76;
          }

          v38 = *(a1 + 8) + result;
          if (v8 < v38)
          {
            goto LABEL_67;
          }
        }

        else
        {
          if (v12 != 5)
          {
            goto LABEL_67;
          }

          v38 = *(a1 + 8) + 4;
          if (v8 < v38)
          {
            goto LABEL_67;
          }
        }

        goto LABEL_62;
      }

      if ((v10 & 7) != 0)
      {
        if (v12 != 1)
        {
          goto LABEL_67;
        }

        v38 = *(a1 + 8) + 8;
        if (v8 < v38)
        {
          goto LABEL_67;
        }

LABEL_62:
        *(a1 + 8) = v38;
        goto LABEL_6;
      }

      ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_68;
      }
    }

LABEL_6:
    v7 = *(a1 + 8);
  }

  while (v7 < v8);
  *(a1 + 24) = 0;
  if (v9 == 1)
  {
    goto LABEL_4;
  }

  return v9;
}

uint64_t ProtobufEncoder.archiveWriter.getter()
{
  v1 = *(v0 + 32);
  if (one-time initialization token for writerKey != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = __swift_project_value_buffer(v2, static ArchiveWriter.writerKey);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(v1 + 56) + 32 * v4, v8);
  type metadata accessor for ArchiveWriter();
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t ArchiveWriter.addAttachment(data:)(uint64_t a1, char *a2)
{
  outlined copy of Data._Representation(a1, a2);
  _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4DataV_Tt1g5(a1, a2, &v10);
  v5 = v12;
  v6 = v10;
  v7 = v11;
  result = specialized Collection<>.firstIndex(of:)(v10, v11, v12, v2[4]);
  if (v9)
  {
    v10 = v6;
    v11 = v7;
    v12 = v5;
    v13 = 0;
    outlined copy of Data._Representation(a1, a2);
    return specialized ArchiveWriter.addAttachment(hash:from:)(&v10, v2, a1, a2);
  }

  return result;
}

uint64_t ProtobufEncoder.binaryPlistData<A>(for:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();

  dispatch thunk of PropertyListEncoder.userInfo.setter();
  getContiguousArrayStorageType<A>(for:)(a2, a2);
  v4 = *(a2 - 8);
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  (*(v4 + 16))(v5, a1, a2);
  _finalizeUninitializedArray<A>(_:)();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  return v6;
}

uint64_t ProtobufEncoder.binaryPlistData<A>(for:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();

  dispatch thunk of PropertyListEncoder.userInfo.setter();
  getContiguousArrayStorageType<A>(for:)(a3, a3);
  v5 = *(a3 - 8);
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  (*(v5 + 16))(v6, a1, a3);
  _finalizeUninitializedArray<A>(_:)();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:configuration:)();

  return v7;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  *&v40 = a1;
  *(&v40 + 1) = a2;
  type metadata accessor for ContiguousBytes();

  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(__src, &v41);
    __swift_project_boxed_opaque_existential_1(&v41, v42);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v40;
    __swift_destroy_boxed_opaque_existential_1(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  outlined destroy of ContiguousBytes?(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = specialized Data._Representation.init(count:)(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v10 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:));
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data?(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  outlined consume of Data?(v35, v6);
LABEL_63:
  v32 = __src[0];
  outlined copy of Data._Representation(*&__src[0], *(&__src[0] + 1));

  outlined consume of Data._Representation(v32, *(&v32 + 1));
  return v32;
}

uint64_t one-time initialization function for writerKey()
{
  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for CodingUserInfoKey?, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v3, static ArchiveWriter.writerKey);
  v4 = __swift_project_value_buffer(v3, static ArchiveWriter.writerKey);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

double ArchiveWriter.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 1;
  *(v0 + 152) = MEMORY[0x1E69E7CC8];
  return result;
}

double ArchiveWriter.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 1;
  *(v0 + 152) = MEMORY[0x1E69E7CC8];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ArchiveWriter.finalize()()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    v2 = *(v0 + 24);
    v3 = *(v2 + 16);
    v4 = *(*v0 + 152);
    v5 = v1;
    type metadata accessor for (offset: UInt64, size: UInt64)();
    v7 = v6;

    v4(v2 + 32, v3, v7);

    if (!v5)
    {
      if (HIDWORD(*(*(v0 + 24) + 16)))
      {
        __break(1u);
      }

      else
      {
        v8[0] = *(*(v0 + 24) + 16);
        v8[1] = -782886287;
        v4(v8, 2, MEMORY[0x1E69E7668]);
        *(v0 + 16) = 1;
      }
    }
  }
}

uint64_t specialized ArchiveWriter.addAttachment(hash:from:)(uint64_t *a1, void *a2, uint64_t a3, char *a4)
{
  v105 = a2;
  v113 = *MEMORY[0x1E69E9840];
  v97 = type metadata accessor for OSSignpostError();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for OSSignpostID();
  v106 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v101 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v89 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v89 - v13);
  v15 = a1[1];
  v100 = *a1;
  v99 = v15;
  v16 = *(a1 + 4);
  LODWORD(v103) = *(a1 + 20);
  if (one-time initialization token for archiving != -1)
  {
    swift_once();
  }

  v102 = v16;
  v17 = type metadata accessor for OSSignposter();
  v18 = __swift_project_value_buffer(v17, static OSSignposter.archiving);
  static OSSignpostID.exclusive.getter();
  v98 = v18;
  v19 = OSSignposter.logHandle.getter();
  v20 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v21 = a4;
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_18D018000, v19, v20, v23, "addAttachment", "", v22, 2u);
    v24 = v22;
    a4 = v21;
    MEMORY[0x193AC4820](v24, -1, -1);
  }

  v25 = a3;

  v26 = v106;
  v27 = v104;
  (*(v106 + 16))(v11, v14, v104);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v28 = OSSignpostIntervalState.init(id:isOpen:)();
  v31 = *(v26 + 8);
  v30 = v26 + 8;
  v29 = v31;
  (v31)(v14, v27);
  v32 = v105;
  if (!v105[5])
  {
    v45 = v29;
    v46 = v28;
    v47 = a4;
    v48 = MEMORY[0x1E69E7508];
    v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *&v14->h4 = 16;
    *&v14->data[3] = 0;
    *&v14->data[1] = 0;
    v49 = v107;
    (*(*v32 + 152))(&v14->data[1], 16, v48);

    v107 = v49;
    a4 = v47;
    v28 = v46;
    if (v49)
    {
      v33 = v25;
      goto LABEL_16;
    }

    v29 = v45;
  }

  v33 = v25;
  v34 = v103;
  if (v103)
  {
    v14 = &v112;
    memset(&c, 0, sizeof(c));
    CC_SHA1_Init(&c);
    v112 = c;
    LOBYTE(md) = 0;
    swift_beginAccess();
    v35 = *&v112.data[5];
    v36 = *&v112.data[9];
    v37 = *&v112.h4;
    *(v32 + 5) = *&v112.data[1];
    *(v32 + 6) = v35;
    v38 = *&v112.data[13];
    *(v32 + 7) = v36;
    *(v32 + 8) = v38;
    *(v32 + 3) = *&v112.h0;
    *(v32 + 4) = v37;
    *(v32 + 144) = md;
  }

  v39 = v32[5];
  v40 = v107;
  (*(*v32 + 144))(v33, a4);
  v107 = v40;
  if (v40)
  {
    goto LABEL_16;
  }

  v41 = v32[5];
  v94 = v41 - v39;
  if (v41 < v39)
  {
    __break(1u);
LABEL_42:
    a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a4 + 2) + 1, 1, a4);
    v105[3] = a4;
LABEL_21:
    v55 = *(a4 + 2);
    v54 = *(a4 + 3);
    v90 = v29;
    if (v55 >= v54 >> 1)
    {
      a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, a4);
    }

    v56 = v94;
    v57 = v94 + 15;
    *(a4 + 2) = v55 + 1;
    v58 = &a4[16 * v55];
    *(v58 + 4) = v39;
    *(v58 + 5) = v56;
    v59 = v105;
    v105[3] = a4;
    v60 = v59[4];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59[4] = v60;
    v62 = v91;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v60 + 2) + 1, 1, v60);
      v105[4] = v60;
    }

    v63 = v57 & 0xFFFFFFFFFFFFFFF0;
    v65 = *(v60 + 2);
    v64 = *(v60 + 3);
    if (v65 >= v64 >> 1)
    {
      v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v60);
    }

    *(v60 + 2) = v65 + 1;
    v66 = &v60[20 * v65];
    v67 = v103;
    *(v66 + 8) = v34;
    *(v66 + 9) = v67;
    *(v66 + 10) = v33;
    *(v66 + 11) = v28;
    *(v66 + 12) = v102;
    v68 = v105;
    v105[4] = v60;
    v69 = v63 >= v94;
    v70 = v63 - v94;
    if (!v70)
    {
      a4 = v90;
      v33 = v92;
      v71 = v101;
LABEL_36:
      v14 = (*(v68[3] + 16) - 1);
      lazy protocol witness table accessor for type Int and conformance Int();
      default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v74, v75);
      lazy protocol witness table accessor for type UInt64 and conformance UInt64();
      default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v76, v77);
      v78 = OSSignposter.logHandle.getter();
      OSSignpostIntervalState.signpostID.getter();
      v79 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        LODWORD(v105) = v79;
        v80 = v71;

        v81 = v95;
        checkForErrorAndConsumeState(state:)();

        v82 = v96;
        v83 = v97;
        v84 = v33;
        if ((*(v96 + 88))(v81, v97) == *MEMORY[0x1E69E93E8])
        {
          v85 = 0;
          v86 = "[Error] Interval already ended";
        }

        else
        {
          (*(v82 + 8))(v81, v83);
          v86 = "index=%{name=index}ld size=%{xcode:size-in-bytes, name=size}llu";
          v85 = 2;
        }

        v87 = swift_slowAlloc();
        *v87 = 0;
        *(v87 + 1) = v85;
        *(v87 + 2) = 2048;
        *(v87 + 4) = v14;
        *(v87 + 12) = 2048;
        *(v87 + 14) = v94;
        v71 = v80;
        v88 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_18D018000, v78, v105, v88, "addAttachment", v86, v87, 0x16u);
        MEMORY[0x193AC4820](v87, -1, -1);
        v33 = v84;
        v62 = v91;
      }

      (v62)(v71, v104);
      goto LABEL_17;
    }

    a4 = v90;
    v33 = v92;
    v71 = v101;
    if (!v69)
    {
      __break(1u);
      goto LABEL_43;
    }

    if ((v70 & 0x8000000000000000) != 0)
    {
LABEL_43:
      __break(1u);
    }

    v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *&v14->h4 = v70;
    bzero(&v14->data[1], v70);
    v73 = v107;
    (*(*v68 + 152))(&v14->data[1], v70, MEMORY[0x1E69E7508]);

    v107 = v73;
    if (!v73)
    {
      goto LABEL_36;
    }

LABEL_16:

LABEL_17:
    outlined consume of Data._Representation(v33, a4);
    return v14;
  }

  v92 = v33;
  v93 = v28;
  v91 = v29;
  if ((v34 & 1) == 0)
  {
    v34 = v100;
    LODWORD(v33) = v99;
    v28 = HIDWORD(v99);
    v43 = HIDWORD(v100);
    v44 = v102;
LABEL_19:
    v50 = v32[4];
    v103 = v43;
    v51 = specialized Collection<>.firstIndex(of:)(v34 | (v43 << 32), v33 | (v28 << 32), v44, v50);
    if ((v52 & 1) == 0)
    {
      v14 = v51;
      v72 = v107;
      (*(*v32 + 160))(v39);

      v33 = v92;
      v107 = v72;
      if (!v72)
      {
        v32[5] = v39;
      }

      goto LABEL_17;
    }

    v102 = v44;
    v29 = a4;
    a4 = v32[3];
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v32[3] = a4;
    v106 = v30;
    if (v53)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

  result = swift_beginAccess();
  if ((v32[18] & 1) == 0)
  {
    v109 = 0;
    md = 0;
    v110 = 0;
    CC_SHA1_Final(&md, (v32 + 6));
    v34 = md;
    v43 = HIDWORD(md);
    LODWORD(v33) = v109;
    v28 = HIDWORD(v109);
    v44 = v110;
    swift_endAccess();
    LOBYTE(v112.h0) = 1;
    *(v32 + 3) = 0u;
    *(v32 + 4) = 0u;
    *(v32 + 5) = 0u;
    *(v32 + 6) = 0u;
    *(v32 + 7) = 0u;
    *(v32 + 8) = 0u;
    *(v32 + 144) = 1;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t specialized ArchiveWriter.addAttachment(hash:from:)(uint64_t a1, void *a2, void (*a3)(void), unint64_t a4)
{
  v94 = a4;
  v93 = a3;
  v95 = a2;
  v102 = *MEMORY[0x1E69E9840];
  v86 = type metadata accessor for OSSignpostError();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v88 = v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v89 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v84 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v84 - v13;
  v15 = *a1;
  v92 = *(a1 + 8);
  v91 = *(a1 + 16);
  LODWORD(v16) = *(a1 + 20);
  if (one-time initialization token for archiving != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for OSSignposter();
  v18 = __swift_project_value_buffer(v17, static OSSignposter.archiving);
  static OSSignpostID.exclusive.getter();
  v87 = v18;
  v19 = OSSignposter.logHandle.getter();
  v20 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v21 = swift_slowAlloc();
    v90 = v15;
    v22 = v7;
    v23 = v16;
    v16 = v6;
    v24 = v21;
    *v21 = 0;
    v25 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_18D018000, v19, v20, v25, "addAttachment", "", v24, 2u);
    v26 = v24;
    v6 = v16;
    LODWORD(v16) = v23;
    v7 = v22;
    v15 = v90;
    MEMORY[0x193AC4820](v26, -1, -1);
  }

  (*(v7 + 16))(v11, v14, v6);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v27 = OSSignpostIntervalState.init(id:isOpen:)();
  v30 = *(v7 + 8);
  v28 = v7 + 8;
  v29 = v30;
  (v30)(v14, v6);
  v31 = v95;
  if (v95[5])
  {
    if (!v16)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  LODWORD(v90) = v16;
  v16 = v15;
  v43 = MEMORY[0x1E69E7508];
  v20 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *&v20->h4 = 16;
  *&v20->data[3] = 0;
  *&v20->data[1] = 0;
  v44 = v96;
  (*(*v31 + 152))(&v20->data[1], 16, v43);

  v96 = v44;
  if (v44)
  {
    goto LABEL_15;
  }

  v15 = v16;
  LOBYTE(v16) = v90;
  if (v90)
  {
LABEL_7:
    v20 = &v101;
    memset(&c, 0, sizeof(c));
    CC_SHA1_Init(&c);
    v101 = c;
    LOBYTE(md) = 0;
    swift_beginAccess();
    v32 = *&v101.data[5];
    v33 = *&v101.data[9];
    v34 = *&v101.h4;
    *(v31 + 5) = *&v101.data[1];
    *(v31 + 6) = v32;
    v35 = *&v101.data[13];
    *(v31 + 7) = v33;
    *(v31 + 8) = v35;
    *(v31 + 3) = *&v101.h0;
    *(v31 + 4) = v34;
    *(v31 + 144) = md;
  }

LABEL_8:
  v36 = v31[5];
  v37 = v96;
  ArchiveWriter.withDataConsumer(do:)(v93);
  v96 = v37;
  if (v37)
  {
    goto LABEL_15;
  }

  v38 = v31[5];
  v94 = v38 - v36;
  if (v38 < v36)
  {
    __break(1u);
LABEL_42:
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
    v31[3] = v15;
LABEL_20:
    v50 = *(v15 + 16);
    v49 = *(v15 + 24);
    v84[0] = v6;
    if (v50 >= v49 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v15);
    }

    v51 = v94;
    v52 = v94 + 15;
    *(v15 + 16) = v50 + 1;
    v53 = (v15 + 16 * v50);
    *(v53 + 4) = v36;
    *(v53 + 5) = v51;
    v54 = v95;
    v95[3] = v15;
    v55 = v54[4];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54[4] = v55;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v55 + 2) + 1, 1, v55);
      v54[4] = v55;
    }

    v57 = v88;
    v58 = v90;
    v59 = v52 & 0xFFFFFFFFFFFFFFF0;
    v61 = *(v55 + 2);
    v60 = *(v55 + 3);
    v62 = v92;
    v63 = v91;
    if (v61 >= v60 >> 1)
    {
      v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v55);
      v63 = v91;
      v62 = v92;
      v55 = v83;
    }

    *(v55 + 2) = v61 + 1;
    v64 = &v55[20 * v61];
    *(v64 + 8) = v58;
    *(v64 + 9) = v28;
    *(v64 + 10) = v62;
    *(v64 + 11) = v29;
    *(v64 + 12) = v63;
    v95[4] = v55;
    v65 = v59 >= v94;
    v66 = v59 - v94;
    if (!v66)
    {
      v67 = v84[0];
      v68 = v89;
      v69 = v93;
LABEL_36:
      v20 = (*(v95[3] + 16) - 1);
      lazy protocol witness table accessor for type Int and conformance Int();
      default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v72, v73);
      lazy protocol witness table accessor for type UInt64 and conformance UInt64();
      default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v74, v75);
      v76 = OSSignposter.logHandle.getter();
      OSSignpostIntervalState.signpostID.getter();
      v77 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {

        checkForErrorAndConsumeState(state:)();

        v78 = v85;
        if ((*(v85 + 88))(v57, v86) == *MEMORY[0x1E69E93E8])
        {
          v79 = 0;
          v80 = "[Error] Interval already ended";
        }

        else
        {
          (*(v78 + 8))(v57, v86);
          v80 = "index=%{name=index}ld size=%{xcode:size-in-bytes, name=size}llu";
          v79 = 2;
        }

        v81 = swift_slowAlloc();
        *v81 = 0;
        *(v81 + 1) = v79;
        *(v81 + 2) = 2048;
        *(v81 + 4) = v20;
        *(v81 + 12) = 2048;
        *(v81 + 14) = v94;
        v82 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_18D018000, v76, v77, v82, "addAttachment", v80, v81, 0x16u);
        MEMORY[0x193AC4820](v81, -1, -1);
        v69 = v93;
      }

      (v69)(v68, v67);
      return v20;
    }

    v67 = v84[0];
    v68 = v89;
    v69 = v93;
    if (!v65)
    {
      __break(1u);
      goto LABEL_43;
    }

    if ((v66 & 0x8000000000000000) != 0)
    {
LABEL_43:
      __break(1u);
    }

    v20 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *&v20->h4 = v66;
    bzero(&v20->data[1], v66);
    v71 = v96;
    (*(*v95 + 152))(&v20->data[1], v66, MEMORY[0x1E69E7508]);

    v96 = v71;
    if (!v71)
    {
      goto LABEL_36;
    }

LABEL_15:

    return v20;
  }

  v93 = v29;
  v84[1] = v28;
  v84[2] = v27;
  if ((v16 & 1) == 0)
  {
    v28 = HIDWORD(v15);
    v42 = v92;
    v29 = HIDWORD(v92);
    v41 = v91;
LABEL_18:
    v45 = v31[4];
    v92 = v42;
    v91 = v41;
    v46 = specialized Collection<>.firstIndex(of:)(v15 | (v28 << 32), v42 | (v29 << 32), v41, v45);
    if ((v47 & 1) == 0)
    {
      v20 = v46;
      v70 = v96;
      (*(*v31 + 160))(v36);

      v96 = v70;
      if (!v70)
      {
        v31[5] = v36;
      }

      return v20;
    }

    v90 = v15;
    v15 = v31[3];
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v31[3] = v15;
    if (v48)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

  result = swift_beginAccess();
  if ((v31[18] & 1) == 0)
  {
    v98 = 0;
    md = 0;
    v99 = 0;
    CC_SHA1_Final(&md, (v31 + 6));
    v15 = md;
    v28 = HIDWORD(md);
    v40 = v98;
    v29 = HIDWORD(v98);
    v41 = v99;
    swift_endAccess();
    v42 = v40;
    LOBYTE(v101.h0) = 1;
    *(v31 + 3) = 0u;
    *(v31 + 4) = 0u;
    *(v31 + 5) = 0u;
    *(v31 + 6) = 0u;
    *(v31 + 7) = 0u;
    *(v31 + 8) = 0u;
    *(v31 + 144) = 1;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

{
  return sub_18D3BB418(a1, a2, a3, a4);
}

uint64_t ArchiveWriter.addAttachment(hash:from:)(uint64_t *a1, void (*a2)(void), char *a3)
{
  v92 = a3;
  v100 = *MEMORY[0x1E69E9840];
  v85 = type metadata accessor for OSSignpostError();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v80 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v80 - v13;
  v15 = a1[1];
  v87 = *a1;
  v90 = v15;
  v91 = *(a1 + 4);
  LODWORD(v16) = *(a1 + 20);
  if (one-time initialization token for archiving != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for OSSignposter();
  v18 = __swift_project_value_buffer(v17, static OSSignposter.archiving);
  static OSSignpostID.exclusive.getter();
  v86 = v18;
  v19 = OSSignposter.logHandle.getter();
  v20 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v21 = swift_slowAlloc();
    v83 = a2;
    v22 = v7;
    v23 = v16;
    v16 = v6;
    v24 = v21;
    *v21 = 0;
    v25 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_18D018000, v19, v20, v25, "addAttachment", "", v24, 2u);
    v26 = v24;
    v6 = v16;
    LODWORD(v16) = v23;
    v7 = v22;
    a2 = v83;
    MEMORY[0x193AC4820](v26, -1, -1);
  }

  (*(v7 + 16))(v11, v14, v6);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v27 = OSSignpostIntervalState.init(id:isOpen:)();
  v30 = *(v7 + 8);
  v28 = v7 + 8;
  v29 = v30;
  (v30)(v14, v6);
  v31 = v93;
  if (v93[5])
  {
    if (!v16)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  LODWORD(v83) = v16;
  v16 = a2;
  v43 = v29;
  v44 = MEMORY[0x1E69E7508];
  v29 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v29[2] = 16;
  v29[5] = 0;
  v29[4] = 0;
  v45 = v94;
  (*(*v31 + 152))(v29 + 4, 16, v44);

  v94 = v45;
  if (v45)
  {
    goto LABEL_15;
  }

  v29 = v43;
  a2 = v16;
  LOBYTE(v16) = v83;
  if (v83)
  {
LABEL_7:
    memset(&c, 0, sizeof(c));
    CC_SHA1_Init(&c);
    v99 = c;
    LOBYTE(md) = 0;
    swift_beginAccess();
    v32 = *&v99.data[5];
    v33 = *&v99.data[9];
    v34 = *&v99.h4;
    *(v31 + 5) = *&v99.data[1];
    *(v31 + 6) = v32;
    v35 = *&v99.data[13];
    *(v31 + 7) = v33;
    *(v31 + 8) = v35;
    *(v31 + 3) = *&v99.h0;
    *(v31 + 4) = v34;
    *(v31 + 144) = md;
  }

LABEL_8:
  v36 = v31[5];
  v37 = v92;
  v38 = v94;
  a2(v31);
  v94 = v38;
  if (v38)
  {
    goto LABEL_15;
  }

  v39 = v31[5];
  v92 = (v39 - v36);
  if (v39 < v36)
  {
    __break(1u);
LABEL_42:
    v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
    v31[3] = v37;
LABEL_20:
    v51 = *(v37 + 2);
    v50 = *(v37 + 3);
    v80 = v6;
    if (v51 >= v50 >> 1)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v37);
    }

    v52 = v92;
    v53 = v92 + 15;
    *(v37 + 2) = v51 + 1;
    v54 = &v37[16 * v51];
    *(v54 + 4) = v36;
    *(v54 + 5) = v52;
    v55 = v93;
    v93[3] = v37;
    v56 = v55[4];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55[4] = v56;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v56 + 2) + 1, 1, v56);
      v55[4] = v56;
    }

    v58 = v88;
    v59 = v53 & 0xFFFFFFFFFFFFFFF0;
    v61 = *(v56 + 2);
    v60 = *(v56 + 3);
    if (v61 >= v60 >> 1)
    {
      v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v56);
    }

    *(v56 + 2) = v61 + 1;
    v62 = &v56[20 * v61];
    *(v62 + 8) = a2;
    *(v62 + 9) = v28;
    *(v62 + 10) = v90;
    *(v62 + 11) = v27;
    *(v62 + 12) = v91;
    v93[4] = v56;
    v63 = v59 >= v92;
    v64 = v59 - v92;
    if (!v64)
    {
      v65 = v80;
      v66 = v89;
LABEL_36:
      v29 = (*(v93[3] + 16) - 1);
      lazy protocol witness table accessor for type Int and conformance Int();
      default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v69, v70);
      lazy protocol witness table accessor for type UInt64 and conformance UInt64();
      default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v71, v72);
      v73 = OSSignposter.logHandle.getter();
      OSSignpostIntervalState.signpostID.getter();
      v74 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {

        checkForErrorAndConsumeState(state:)();

        v75 = v84;
        if ((*(v84 + 88))(v58, v85) == *MEMORY[0x1E69E93E8])
        {
          v76 = 0;
          v77 = "[Error] Interval already ended";
        }

        else
        {
          (*(v75 + 8))(v58, v85);
          v77 = "index=%{name=index}ld size=%{xcode:size-in-bytes, name=size}llu";
          v76 = 2;
        }

        v78 = swift_slowAlloc();
        *v78 = 0;
        *(v78 + 1) = v76;
        *(v78 + 2) = 2048;
        *(v78 + 4) = v29;
        *(v78 + 12) = 2048;
        *(v78 + 14) = v92;
        v79 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_18D018000, v73, v74, v79, "addAttachment", v77, v78, 0x16u);
        MEMORY[0x193AC4820](v78, -1, -1);
      }

      v81(v66, v65);
      return v29;
    }

    v65 = v80;
    v66 = v89;
    if (!v63)
    {
      __break(1u);
      goto LABEL_43;
    }

    if ((v64 & 0x8000000000000000) != 0)
    {
LABEL_43:
      __break(1u);
    }

    v29 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v29[2] = v64;
    bzero(v29 + 4, v64);
    v68 = v94;
    (*(*v93 + 152))(v29 + 4, v64, MEMORY[0x1E69E7508]);

    v94 = v68;
    if (!v68)
    {
      goto LABEL_36;
    }

LABEL_15:

    return v29;
  }

  v83 = v27;
  v82 = v28;
  v81 = v29;
  if ((v16 & 1) == 0)
  {
    LODWORD(a2) = v87;
    v28 = HIDWORD(v87);
    v41 = v90;
    v27 = HIDWORD(v90);
    v42 = v91;
LABEL_18:
    v46 = v31[4];
    v91 = v42;
    v47 = specialized Collection<>.firstIndex(of:)(a2 | (v28 << 32), v41 | (v27 << 32), v42, v46);
    if ((v48 & 1) == 0)
    {
      v29 = v47;
      v67 = v94;
      (*(*v31 + 160))(v36);

      v94 = v67;
      if (!v67)
      {
        v31[5] = v36;
      }

      return v29;
    }

    v90 = v41;
    v37 = v31[3];
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v31[3] = v37;
    if (v49)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

  result = swift_beginAccess();
  if ((v31[18] & 1) == 0)
  {
    v96 = 0;
    md = 0;
    v97 = 0;
    CC_SHA1_Final(&md, (v31 + 6));
    LODWORD(a2) = md;
    v28 = HIDWORD(md);
    v41 = v96;
    v27 = HIDWORD(v96);
    v42 = v97;
    swift_endAccess();
    LOBYTE(v99.h0) = 1;
    *(v31 + 3) = 0u;
    *(v31 + 4) = 0u;
    *(v31 + 5) = 0u;
    *(v31 + 6) = 0u;
    *(v31 + 7) = 0u;
    *(v31 + 8) = 0u;
    *(v31 + 144) = 1;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

void type metadata accessor for (offset: UInt64, size: UInt64)()
{
  if (!lazy cache variable for type metadata for (offset: UInt64, size: UInt64))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: UInt64, size: UInt64));
    }
  }
}

uint64_t ArchiveWriter.didAppendBytes(ptr:count:)(uint64_t result, uint64_t a2)
{
  if (a2 >= 1)
  {
    v4 = *(v2 + 40);
    v5 = __CFADD__(v4, a2);
    v6 = v4 + a2;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      v7 = result;
      *(v2 + 40) = v6;
      result = swift_beginAccess();
      if (*(v2 + 144))
      {
        return swift_endAccess();
      }

      if (!v7)
      {
LABEL_11:
        __break(1u);
        return result;
      }

      if (!HIDWORD(a2))
      {
        CC_SHA1_Update((v2 + 48), v7, a2);
        return swift_endAccess();
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t ArchiveWriter.deinit()
{

  return v0;
}

uint64_t ArchiveWriter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double FileArchiveWriter.__allocating_init(file:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = v3;
  *(v2 + 40) = 0;
  result = 0.0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 1;
  *(v2 + 152) = MEMORY[0x1E69E7CC8];
  *(v2 + 160) = a1;
  return result;
}

uint64_t FileArchiveWriter.init(file:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = v2;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 1;
  *(v1 + 152) = MEMORY[0x1E69E7CC8];
  *(v1 + 160) = a1;
  return v1;
}

uint64_t FileArchiveWriter.__allocating_init(url:)(uint64_t a1)
{
  v2 = v1;
  URL.path.getter();
  String.utf8CString.getter();

  v4 = open(_:_:_:)();

  if ((v4 & 0x80000000) != 0)
  {
    lazy protocol witness table accessor for type Error and conformance Error();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 1;
    swift_willThrow();
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E696AC00]) initWithFileDescriptor:v4 closeOnDealloc:1];
    v2 = swift_allocObject();
    v6 = MEMORY[0x1E69E7CC0];
    *(v2 + 24) = MEMORY[0x1E69E7CC0];
    *(v2 + 32) = v6;
    *(v2 + 16) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 128) = 0u;
    *(v2 + 144) = 1;
    *(v2 + 152) = MEMORY[0x1E69E7CC8];
    *(v2 + 160) = v5;
  }

  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FileArchiveWriter.finalize()()
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ((*(v0 + 16) & 1) == 0)
  {
    ArchiveWriter.finalize()();
    if (!v1)
    {
      v2 = *(v0 + 160);
      v6[0] = 0;
      if ([v2 closeAndReturnError_])
      {
        v3 = v6[0];
      }

      else
      {
        v4 = v6[0];
        v5 = _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }
}

uint64_t FileArchiveWriter.append(_:)(uint64_t result, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v3)
    {
      if (result == result >> 32)
      {
        return result;
      }
    }

    else if ((a2 & 0xFF000000000000) == 0)
    {
      return result;
    }

LABEL_9:
    v4 = result;

    return specialized Data._Representation.withUnsafeBytes<A>(_:)(v4, a2, v2);
  }

  if (v3 == 2 && *(result + 16) != *(result + 24))
  {
    goto LABEL_9;
  }

  return result;
}

ssize_t FileArchiveWriter.appendBytes(_:size:)(char *a1, uint64_t a2)
{
  result = [*(v2 + 160) fileDescriptor];
  if (a2 >= 1)
  {
    v6 = result;
    v7 = a1;
    v8 = a2;
    do
    {
      while (1)
      {
        result = write(v6, v7, v8);
        if ((result & 0x8000000000000000) == 0)
        {
          break;
        }

        if (MEMORY[0x193ABE310]() != 35)
        {
          v13 = MEMORY[0x193ABE310]();
          lazy protocol witness table accessor for type Error and conformance Error();
          swift_allocError();
          *v14 = v13;
          *(v14 + 8) = 0;
          return swift_willThrow();
        }
      }

      v7 += result;
      v9 = v8 <= result;
      v8 -= result;
    }

    while (!v9);
    v10 = *(v2 + 40);
    v11 = __CFADD__(v10, a2);
    v12 = v10 + a2;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      *(v2 + 40) = v12;
      result = swift_beginAccess();
      if (*(v2 + 144))
      {
        return swift_endAccess();
      }

      if (a2 <= 0xFFFFFFFFLL)
      {
        CC_SHA1_Update((v2 + 48), a1, a2);
        return swift_endAccess();
      }
    }

    __break(1u);
  }

  return result;
}

void FileArchiveWriter.append<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = UnsafeBufferPointer.baseAddress.getter();
    if (v5)
    {
      v6 = *(*(a3 - 8) + 72);
      if ((a2 * v6) >> 64 == (a2 * v6) >> 63)
      {
        FileArchiveWriter.appendBytes(_:size:)(v5, a2 * v6);
        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FileArchiveWriter.rewind(to:)(Swift::UInt64 to)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 160);
  v6[0] = 0;
  if ([v3 truncateAtOffset:to error:v6])
  {
    v4 = v6[0];
  }

  else
  {
    v5 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t FileArchiveWriter.deinit()
{

  return v0;
}

uint64_t FileArchiveWriter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DataArchiveWriter.finalizeData()()
{
  if (*(v0 + 16))
  {
    goto LABEL_2;
  }

  v2 = *(v0 + 24);
  v3 = *(v2 + 16);

  specialized DataArchiveWriter.append<A>(_:)((v2 + 32), v3);

  if (v1)
  {
    return v2;
  }

  if (!HIDWORD(*(*(v0 + 24) + 16)))
  {
    v5[0] = *(*(v0 + 24) + 16);
    v5[1] = -782886287;
    specialized DataArchiveWriter.append<A>(_:)(v5, 2);
    *(v0 + 16) = 1;
LABEL_2:
    swift_beginAccess();
    v2 = *(v0 + 160);
    outlined copy of Data._Representation(v2, *(v0 + 168));
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t DataArchiveWriter.append(_:)(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Data.append(_:)();
  swift_endAccess();

  return specialized Data._Representation.withUnsafeBytes<A>(_:)(a1, a2, v2);
}

uint64_t closure #1 in DataArchiveWriter.append(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = a2 - result;
    if (a2 - result >= 1)
    {
      v5 = *(a3 + 40);
      v6 = __CFADD__(v5, v3);
      v7 = v5 + v3;
      if (v6)
      {
        __break(1u);
      }

      else
      {
        v8 = result;
        *(a3 + 40) = v7;
        result = swift_beginAccess();
        if (*(a3 + 144))
        {
          return swift_endAccess();
        }

        if (!HIDWORD(v3))
        {
          CC_SHA1_Update((a3 + 48), v8, v3);
          return swift_endAccess();
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t specialized DataArchiveWriter.append<A>(_:)(const void *a1, uint64_t a2)
{
  v3 = v2;
  result = swift_beginAccess();
  if (a2)
  {
    if (a1 && (a2 - 0x800000000000000) >> 60 != 15)
    {
      goto LABEL_16;
    }

    Data._Representation.append(contentsOf:)();
  }

  result = swift_endAccess();
  if ((a2 - 0x800000000000000) >> 60 != 15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = 16 * a2;
  if (16 * a2 < 1)
  {
    return result;
  }

  v8 = *(v3 + 40);
  v9 = __CFADD__(v8, v7);
  v10 = v8 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v3 + 40) = v10;
  result = swift_beginAccess();
  if ((*(v3 + 144) & 1) == 0)
  {
    if (!a1)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    if (!HIDWORD(v7))
    {
      CC_SHA1_Update((v3 + 48), a1, 16 * a2);
      return swift_endAccess();
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  return swift_endAccess();
}

{
  v3 = v2;
  result = swift_beginAccess();
  if (a2)
  {
    if (a1 && (a2 - 0x2000000000000000) >> 62 != 3)
    {
      goto LABEL_16;
    }

    Data._Representation.append(contentsOf:)();
  }

  result = swift_endAccess();
  if ((a2 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = 4 * a2;
  if (4 * a2 < 1)
  {
    return result;
  }

  v8 = *(v3 + 40);
  v9 = __CFADD__(v8, v7);
  v10 = v8 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v3 + 40) = v10;
  result = swift_beginAccess();
  if ((*(v3 + 144) & 1) == 0)
  {
    if (!a1)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    if (!HIDWORD(v7))
    {
      CC_SHA1_Update((v3 + 48), a1, 4 * a2);
      return swift_endAccess();
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  return swift_endAccess();
}

uint64_t DataArchiveWriter.append<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Data.append<A>(_:)();
  swift_endAccess();
  result = UnsafeBufferPointer.baseAddress.getter();
  v6 = *(*(a3 - 8) + 72);
  if ((a2 * v6) >> 64 == (a2 * v6) >> 63)
  {
    return ArchiveWriter.didAppendBytes(ptr:count:)(result, a2 * v6);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DataArchiveWriter.rewind(to:)(Swift::UInt64 to)
{
  if ((to & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_beginAccess();
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    v6 = 0;
    if (v5 != 2 || (v8 = v3 + 16, v3 = *(v3 + 16), v7 = *(v8 + 8), v6 = v7 - v3, !__OFSUB__(v7, v3)))
    {
LABEL_11:
      if (v6 >= to)
      {
        swift_beginAccess();
        Data._Representation.replaceSubrange(_:with:count:)();
        swift_endAccess();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v5)
  {
    v6 = BYTE6(v4);
    goto LABEL_11;
  }

  v9 = __OFSUB__(HIDWORD(v3), v3);
  v10 = HIDWORD(v3) - v3;
  if (!v9)
  {
    v6 = v10;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

double DataArchiveWriter.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 160) = xmmword_18DDBA7E0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 1;
  *(v0 + 152) = MEMORY[0x1E69E7CC8];
  return result;
}

double DataArchiveWriter.init()()
{
  *(v0 + 160) = xmmword_18DDBA7E0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 1;
  *(v0 + 152) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t DataArchiveWriter.deinit()
{

  outlined consume of Data._Representation(*(v0 + 160), *(v0 + 168));
  return v0;
}

uint64_t DataArchiveWriter.__deallocating_deinit()
{

  outlined consume of Data._Representation(*(v0 + 160), *(v0 + 168));

  return swift_deallocClassInstance();
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance ArchiveReader@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < *(*v2 + 40))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance ArchiveReader(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if ((v2 & 0x8000000000000000) == 0 && v2 < *(*v1 + 40))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance ArchiveReader(void *a1, uint64_t *a2))(uint64_t a1)
{
  ArchiveReader.subscript.getter(*a2);
  a1[2] = v3;
  a1[3] = v4;
  *a1 = v3;
  a1[1] = v4;
  return protocol witness for Collection.subscript.read in conformance ArchiveReader;
}

uint64_t protocol witness for Collection.subscript.getter in conformance ArchiveReader@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = *v2;
  v5 = *(*v2 + 40);
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = *a1;
  if (*a1 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = a1[1];
  if (v5 >= v7)
  {
    *a2 = v6;
    a2[1] = v7;
    a2[2] = result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void protocol witness for Collection.indices.getter in conformance ArchiveReader(void *a1@<X8>)
{
  v2 = *(*v1 + 40);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = v2;
  }
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance ArchiveReader@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0 && *(*v3 + 40) >= v4)
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance ArchiveReader@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance ArchiveReader(uint64_t *result, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 40);
  if (v4 >= *a2)
  {
    v5 = *result;
    if (((v3 | *result) & 0x8000000000000000) == 0 && v4 >= v5)
    {
      return (v3 - v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.index(after:) in conformance ArchiveReader@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || v3 >= *(*v2 + 40))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3 + 1;
  }

  return result;
}

uint64_t *protocol witness for Collection.formIndex(after:) in conformance ArchiveReader(uint64_t *result)
{
  v2 = *result;
  if (*result < 0 || v2 >= *(*v1 + 40))
  {
    __break(1u);
  }

  else
  {
    *result = v2 + 1;
  }

  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ArchiveReader(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance ArchiveReader()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t FileArchiveReader.__ivar_destroyer()
{
}

char *DataArchiveReader.__allocating_init(data:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v4 + 48) = isa;
  v6 = ArchiveReader.init(buffer:)([(objc_class *)isa bytes], [(objc_class *)isa length]);
  outlined consume of Data._Representation(a1, a2);
  return v6;
}

char *DataArchiveReader.init(data:)(uint64_t a1, unint64_t a2)
{
  v5.super.isa = Data._bridgeToObjectiveC()().super.isa;
  *(v2 + 48) = v5;
  v6 = ArchiveReader.init(buffer:)(-[objc_class bytes](v5.super.isa, sel_bytes), [*(v2 + 48) length]);
  outlined consume of Data._Representation(a1, a2);
  return v6;
}

uint64_t DataArchiveReader.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void ArchiveWriter.withDataConsumer(do:)(void (*a1)(void))
{
  v10 = *MEMORY[0x1E69E9840];
  info = v1;
  v9 = 0;
  cbks.putBytes = @objc closure #1 in closure #1 in ArchiveWriter.withDataConsumer(do:);
  cbks.releaseConsumer = 0;

  v4 = CGDataConsumerCreate(&info, &cbks);
  if (!v4)
  {
    __break(1u);
  }

  v5 = v4;
  a1();
  if (v2)
  {
    v6 = v9;
  }

  else
  {

    if (v9)
    {
      swift_willThrow();
    }
  }
}

uint64_t ProtobufDecoder.value<A>(fromBinaryPlist:type:configuration:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v16 = a1;
  v14 = a4;
  v6 = type metadata accessor for Optional();
  v15 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();

  dispatch thunk of PropertyListDecoder.userInfo.setter();
  type metadata accessor for Array();
  v18 = a3;
  swift_getWitnessTable();
  v9 = v17;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:configuration:)();
  if (!v9)
  {
    v10 = v15;
    swift_getWitnessTable();
    Collection.first.getter();
    v11 = *(a2 - 8);
    if ((*(v11 + 48))(v8, 1, a2) != 1)
    {

      (*(v11 + 32))(v14, v8, a2);
    }

    (*(v10 + 8))(v8, v6);

    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t closure #1 in closure #1 in ArchiveWriter.withDataConsumer(do:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = *(**result + 152);

    v5(a2, a3, MEMORY[0x1E69E7508]);

    return a3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v19, 0, 14);
      closure #1 in DataArchiveWriter.append(_:)(v19, v19, a3);
    }

    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
LABEL_11:

    specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v11, v12, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  if (v5)
  {
    v11 = a1;
    v12 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  data = a1;
  v14 = a2;
  v15 = BYTE2(a2);
  v16 = BYTE3(a2);
  v17 = BYTE4(a2);
  v6 = BYTE6(a2);
  v18 = BYTE5(a2);
  if (!BYTE6(a2))
  {
  }

  v7 = *(a3 + 40);
  v8 = __CFADD__(v7, BYTE6(a2));
  v9 = v7 + BYTE6(a2);
  if (v8)
  {
LABEL_17:
    __break(1u);
  }

  *(a3 + 40) = v9;
  swift_beginAccess();
  if ((*(a3 + 144) & 1) == 0)
  {
    CC_SHA1_Update((a3 + 48), &data, v6);
  }

  swift_endAccess();
}

{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      [*(a3 + 160) fileDescriptor];
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    goto LABEL_7;
  }

  if (v3)
  {
    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:

    specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v4, v5);
  }

  v7 = a1;
  v8 = a2;
  v9 = BYTE2(a2);
  v10 = BYTE3(a2);
  v11 = BYTE4(a2);
  v12 = BYTE5(a2);
  FileArchiveWriter.appendBytes(_:size:)(&v7, BYTE6(a2));
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = MEMORY[0x193ABC2C0]();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  closure #1 in DataArchiveWriter.append(_:)(v8, v14, a4);
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  v5 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = MEMORY[0x193ABC2C0]();
  if (!v5)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (result >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = result;
  }

  FileArchiveWriter.appendBytes(_:size:)(v5, v8);
}

uint64_t closure #2 in Data.init<A>(_:)@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      outlined consume of Data._Representation(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      result = a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v3 = v18[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v6, v5);
    *v3 = xmmword_18DDBA7E0;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v13 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    outlined consume of Data._Representation(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_18DDBA7E0;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(*(v16 + 2), *(v16 + 3), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v16;
      v3[1] = v10;
      return result;
    }

    *v3 = v16;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v18, 0, 15);
  result = a1(&v16, v18, v18);
  if (!v2)
  {
    return v16;
  }

  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x193ABC2C0]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v3 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      a2[2] = 15;
      a2[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(uint64_t a1, uint64_t a2)
{
  return lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchiveReader and conformance ArchiveReader, a2, type metadata accessor for ArchiveReader);
}

{
  return lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchiveReader and conformance ArchiveReader, a2, type metadata accessor for ArchiveReader);
}

uint64_t lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<ArchiveReader> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Slice<ArchiveReader>(255);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for Slice<ArchiveReader>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ArchiveReader();
    v8 = lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchiveReader and conformance ArchiveReader, v7, type metadata accessor for ArchiveReader);
    v9 = a3(a1, v6, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized Data._Representation.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return specialized Data.InlineData.init(count:)(result);
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t specialized ProtobufEncoder.encodeAttachedValue<A>(key:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = type metadata accessor for OSSignpostID();
  v41 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  v45 = *a3;
  v46 = v13;
  v47 = *(a3 + 24);
  v14 = ProtobufEncoder.archiveWriter.getter();
  if (v14)
  {
    v15 = v14;
    v43 = a1;
    v44 = a2;
    v16 = lazy protocol witness table accessor for type Image.Location.BundlePath and conformance Image.Location.BundlePath();

    v40 = v16;
    AnyHashable.init<A>(_:)();
    swift_beginAccess();
    v17 = v15[19];
    if (!*(v17 + 16) || (v18 = specialized __RawDictionaryStorage.find<A>(_:)(&v45), (v19 & 1) == 0))
    {
      swift_endAccess();
      outlined destroy of AnyHashable(&v45);

      v28 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(a4, a5);
      v30 = v29;
      outlined copy of Data._Representation(v28, v29);
      _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4DataV_Tt1g5(v28, v30, &v45);
      v10 = v46;
      v31 = *(&v45 + 1);
      v12 = v45;
      v41 = specialized Collection<>.firstIndex(of:)(v45, *(&v45 + 1), v46, v15[4]);
      if (v32)
      {
        v45 = __PAIR128__(v31, v12);
        LODWORD(v46) = v10;
        BYTE4(v46) = 0;
        outlined copy of Data._Representation(v28, v30);
        v33 = v42;
        v34 = specialized ArchiveWriter.addAttachment(hash:from:)(&v45, v15, v28, v30);
        if (v33)
        {

          return outlined consume of Data._Representation(v28, v30);
        }

        v41 = v34;
        outlined consume of Data._Representation(v28, v30);
      }

      else
      {
        outlined consume of Data._Representation(v28, v30);
      }

      v43 = a1;
      v44 = a2;

      AnyHashable.init<A>(_:)();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v15[19];
      v15[19] = 0x8000000000000000;
      v20 = v41;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v41, &v45, isUniquelyReferenced_nonNull_native);
      outlined destroy of AnyHashable(&v45);
      v15[19] = v48;
      swift_endAccess();
      goto LABEL_15;
    }

    v20 = *(*(v17 + 56) + 8 * v18);
    swift_endAccess();
    outlined destroy of AnyHashable(&v45);
    if (one-time initialization token for archiving != -1)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v21 = type metadata accessor for OSSignposter();
      __swift_project_value_buffer(v21, static OSSignposter.archiving);
      lazy protocol witness table accessor for type Int and conformance Int();
      default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v22, v23);
      static OSSignpostID.exclusive.getter();
      v24 = OSSignposter.logHandle.getter();
      v25 = static os_signpost_type_t.event.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v26 = swift_slowAlloc();
        *v26 = 134217984;
        *(v26 + 4) = v20;
        v27 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_18D018000, v24, v25, v27, "addAttachment.cacheHit", "index=%{name=index}ld", v26, 0xCu);
        MEMORY[0x193AC4820](v26, -1, -1);
      }

      (*(v41 + 8))(v12, v10);
LABEL_15:
      if ((v20 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_18:
      swift_once();
    }

    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v20);
  }

  else
  {

    v36 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(a4, a5);
    v38 = v37;
    ProtobufEncoder.dataField(_:_:)(2, v36, v37);
    return outlined consume of Data._Representation(v36, v38);
  }
}