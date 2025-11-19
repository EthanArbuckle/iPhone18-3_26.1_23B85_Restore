unint64_t lazy protocol witness table accessor for type MaskDisplayList and conformance MaskDisplayList()
{
  result = lazy protocol witness table cache variable for type MaskDisplayList and conformance MaskDisplayList;
  if (!lazy protocol witness table cache variable for type MaskDisplayList and conformance MaskDisplayList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaskDisplayList and conformance MaskDisplayList);
  }

  return result;
}

__n128 __swift_memcpy25_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #1 in static _ViewOutputs.makeMaskView(inputs:contentBody:maskBody:outputsFromMask:mayUseForegroundColor:alignment:)(uint64_t result)
{
  v2 = *(v1 + 24);
  *(result + 16) = *(*(v1 + 16) + 12);
  *(result + 20) = *(v2 + 12);
  return result;
}

uint64_t specialized closure #1 in PropertyList.subscript.getter(void *a1, Swift::Int hashValue)
{
  BloomFilter.init(hashValue:)(hashValue);
  v4 = specialized find1<A>(_:key:filter:)(a1, hashValue, v7);
  if (v4)
  {
    return *(v4 + 72);
  }

  if (one-time initialization token for introduced != -1)
  {
    swift_once();
  }

  v6 = static Semantics.DismissPopsInNavigationSplitViewRoots.introduced;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524)
  {
    return dyld_program_minos_at_least();
  }

  else
  {
    return dword_1ED53C520 >= v6;
  }
}

{
  BloomFilter.init(hashValue:)(hashValue);
  v4 = specialized find1<A>(_:key:filter:)(a1, hashValue, v9[0]);
  if (!v4)
  {
    if (one-time initialization token for v7 != -1)
    {
      swift_once();
    }

    v6 = static Semantics.v7;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
LABEL_9:
        v5 = 0;
        return v5 & 1;
      }
    }

    else if (static Semantics.forced < v6)
    {
      goto LABEL_9;
    }

    v9[3] = &type metadata for ContainerContextStylingFeatureEnabled.Key;
    v9[4] = lazy protocol witness table accessor for type ContainerContextStylingFeatureEnabled.Key and conformance ContainerContextStylingFeatureEnabled.Key();
    v7 = swift_allocObject();
    v9[0] = v7;
    *(v7 + 16) = "SwiftUI";
    *(v7 + 24) = 7;
    *(v7 + 32) = 2;
    *(v7 + 40) = "containerContextStylingEnabled";
    *(v7 + 48) = 30;
    *(v7 + 56) = 2;
    v5 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v9);
    return v5 & 1;
  }

  v5 = *(v4 + 72);
  return v5 & 1;
}

{
  BloomFilter.init(hashValue:)(hashValue);
  v4 = specialized find1<A>(_:key:filter:)(a1, hashValue, v7);
  if (v4)
  {
    return *(v4 + 72);
  }

  if (one-time initialization token for introduced != -1)
  {
    swift_once();
  }

  v6 = static EnabledFeature.introduced;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    return dyld_program_sdk_at_least();
  }

  else
  {
    return static Semantics.forced >= v6;
  }
}

uint64_t one-time initialization function for introduced(uint64_t a1)
{
  return one-time initialization function for introduced(a1, &one-time initialization token for v6, &static Semantics.v6, &static Semantics.DismissPopsInNavigationSplitViewRoots.introduced);
}

{
  return one-time initialization function for introduced(a1, &one-time initialization token for firstRelease, &static Semantics.firstRelease, &static EnabledFeature.introduced);
}

uint64_t closure #1 in static ResettableLazyLayoutRoot._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[2] = type metadata accessor for ResettableLazyLayoutRoot();
  v10[3] = a2;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a4, v10, a2, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

uint64_t static ResettableLazyLayoutRoot._makeViewList(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v17[8] = a3;
  v17[9] = a4;
  v19[0] = v9;
  type metadata accessor for ResettableLazyLayoutRoot();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static ResettableLazyLayoutRoot._makeViewList(view:inputs:), a3, v18);
  v10 = v18[0];
  swift_beginAccess();
  if ((static ResettableLazyLayoutsFeature.isEnabledForTesting & 1) != 0 || (v11 = getenv("XCODE_RUNNING_FOR_PREVIEWS")) != 0 && atoi(v11))
  {
    outlined init with copy of _ViewListInputs(a2, v18);
    v12 = ResettableListContainer.init(content:inputs:)(v10, v18, v19);
    MEMORY[0x1EEE9AC00](v12);
    v13 = type metadata accessor for ResettableListContainer();
    v17[2] = v13;
    v17[3] = swift_getWitnessTable();
    type metadata accessor for Attribute<ViewList>(0);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, closure #1 in Attribute.init<A>(_:)partial apply, v17, v13, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
    result = (*(*(v13 - 8) + 8))(v19, v13);
    *a5 = v18[0];
    *(a5 + 8) = 0;
    *(a5 + 40) = 1;
    *(a5 + 48) = *(a2 + 48);
    *(a5 + 56) = 0;
    *(a5 + 64) = 1;
  }

  else
  {
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
    }

    v19[0] = v10;
    (*(a4 + 32))(v19, a2, a3, a4);
    return $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v10, a3, a4);
  }

  return result;
}

uint64_t _VariadicView_Children.endIndex.getter()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v1 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  v4 = ViewList.count.getter(v2, v3);
  static Update.end()();
  _MovableLockUnlock(v1);
  return v4;
}

uint64_t LocationBox.projecting<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *v3;
  v12 = v3;
  v9 = *(v3 + *(v7 + 192));

  os_unfair_lock_lock(v9 + 4);
  swift_getWitnessTable();
  v10 = LocationProjectionCache.reference<A, B>(for:on:)(a1, &v12, a2, v8, a3);
  os_unfair_lock_unlock(v9 + 4);

  return v10;
}

uint64_t instantiation function for generic protocol witness table for LocationBox<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t _ViewInputs.isInLazyContainer.setter(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t *))
{

  a2(v2, a1, &v6);
}

uint64_t specialized _GraphInputs.subscript.setter(uint64_t a1, Swift::Int a2, Swift::Int a3, uint64_t a4)
{
  _GraphInputs.recordReusableInput<A>(_:)(a3, a3, a4);
  v8 = *(a4 + 8);

  return specialized PropertyList.subscript.setter(a1, a2, a3, v8);
}

uint64_t _GraphInputs.subscript.setter(uint64_t a1, Swift::Int a2, Swift::Int a3, uint64_t a4)
{
  specialized _GraphInputs.subscript.setter(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for BaseViewList(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t destroy for BaseViewList(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static _PreferenceTransformModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr)@<X2>, ValueMetadata *a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v8 = *a1;
  v9 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v9;
  v16[2] = *(a2 + 32);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v19 = *(a2 + 60);
  v20 = *(a2 + 76);
  v17 = v10;
  v18 = v11;
  a3(a6);
  *&v16[0] = v10;
  DWORD2(v16[0]) = v11;
  v14[2] = a4;
  v14[3] = a5;
  v15 = v8;

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)(v16, v12, partial apply for implicit closure #1 in static _PreferenceTransformModifier._makeView(modifier:inputs:body:), v14, a4, a5);
}

uint64_t implicit closure #1 in static _PreferenceTransformModifier._makeView(modifier:inputs:body:)(int a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v6 = a1;
  v7 = _s14AttributeGraph0A0V13dynamicMemberACyqd__Gs7KeyPathCyxqd__G_tcluigqd__xcfU_TA_0;
  KeyPath = swift_getKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  FunctionTypeMetadata = swift_getFunctionTypeMetadata();
  type metadata accessor for _PreferenceTransformModifier();
  v11 = type metadata accessor for Map();
  WitnessTable = swift_getWitnessTable();
  v3 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v6, closure #1 in Attribute.init<A>(_:)partial apply, v9, v11, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v4);

  return AssociatedTypeWitness;
}

__n128 sub_18D1A4624(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void *assignWithTake for Binding(void *a1, void *a2, uint64_t a3)
{
  v5 = a2 + 15;
  *a1 = *a2;

  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 &= 0xFFFFFFFFFFFFFFF8;
  *v6 = *v5;

  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 40))((v6 + *(v7 + 80) + 8) & ~*(v7 + 80), (*(v7 + 80) + 8 + v5) & ~*(v7 + 80));
  return a1;
}

uint64_t getEnumTag for StateOrBinding(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 64);
  v4 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v5 = ((*(v2 + 80) + 16) & ~*(v2 + 80)) + v3;
  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = a1[v6];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        return v7;
      }

      v10 = *a1;
    }

    else if (v9 == 2)
    {
      v10 = *a1;
    }

    else if (v9 == 3)
    {
      v10 = *a1 | (a1[2] << 16);
    }

    else
    {
      v10 = *a1;
    }

    v11 = (v10 | (v8 << (8 * v6))) + 2;
    LODWORD(v7) = v10 + 2;
    if (v6 >= 4)
    {
      return v7;
    }

    else
    {
      return v11;
    }
  }

  return v7;
}

void destructiveInjectEnumTag for StateOrBinding(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (a2 > 1)
  {
    v7 = *(v3 + 64);
    v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = ((*(v3 + 80) + 16) & ~*(v3 + 80)) + v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    v11 = a2 - 2;
    if (v10 < 4)
    {
      a1[v10] = (v11 >> (8 * v10)) + 2;
      if (v10)
      {
        v13 = v11 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v10 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      a1[v10] = 2;
      bzero(a1, v10);
      *a1 = v11;
    }
  }

  else
  {
    v4 = *(v3 + 64);
    v5 = ((*(v3 + 80) + 16) & ~*(v3 + 80)) + v4;
    v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v5 <= v6)
    {
      v5 = v6;
    }

    a1[v5] = a2;
  }
}

uint64_t one-time initialization function for navigation()
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_4(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  __swift_allocate_value_buffer(v4, static Log.navigation);
  v5 = __swift_project_value_buffer(v1, static Log.navigation);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = MEMORY[0x193ABEC20](0xD000000000000029, 0x800000018DD839A0);
  v8 = [v6 BOOLForKey_];

  if (v8)
  {
    Logger.init(subsystem:category:)();
    v9 = type metadata accessor for Logger();
    (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for Logger();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  }

  return outlined init with take of Logger?(v3, v5);
}

unint64_t lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children()
{
  result = lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children;
  if (!lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children;
  if (!lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children;
  if (!lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children;
  if (!lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _OffsetEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t Namespace.wrappedValue.getter(uint64_t result)
{
  if (!result)
  {
    static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();

    return AGMakeUniqueID();
  }

  return result;
}

_DWORD *initializeWithTake for EnvironmentBox(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8 + 8) & ~v8);
  v10 = ((v5 + v8 + 8) & ~v8);
  if ((*(v7 + 48))(v10, 1, v6))
  {
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 1;
    }

    memcpy(v9, v10, v13);
  }

  else
  {
    (*(v7 + 32))(v9, v10, v6);
    v15 = *(v7 + 56);
    v14 = v7 + 56;
    v15(v9, 0, 1, v6);
    v11 = *(v14 + 28);
    v12 = *(v14 + 8);
  }

  if (v11)
  {
    v16 = v12;
  }

  else
  {
    v16 = v12 + 1;
  }

  *(v9 + v16) = *(v10 + v16);
  return a1;
}

void *initializeWithTake for Environment(void *result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = a2[v3];
  v5 = v4 - 2;
  if (v4 < 2)
  {
    goto LABEL_18;
  }

  if (v3 <= 3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 4;
  }

  if (v6 <= 1)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = *a2;
  }

  else if (v6 == 2)
  {
    v7 = *a2;
  }

  else if (v6 == 3)
  {
    v7 = *a2 | (a2[2] << 16);
  }

  else
  {
    v7 = *a2;
  }

  v8 = (v7 | (v5 << (8 * v3))) + 2;
  v4 = v7 + 2;
  if (v3 < 4)
  {
    v4 = v8;
  }

LABEL_18:
  if (v4 == 1)
  {
    v9 = result;
    (*(*(*(a3 + 16) - 8) + 32))();
    result = v9;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    *result = *a2;
  }

  *(result + v3) = v10;
  return result;
}

uint64_t static EnvironmentalModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v81 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = a2[3];
  v71 = a2[2];
  v72 = v10;
  v73 = a2[4];
  v74 = *(a2 + 20);
  v11 = a2[1];
  v69 = *a2;
  v70 = v11;
  static DynamicPropertyCache.fields(of:)(a5, &v75);
  v12 = v75;
  v65 = v71;
  v66 = v72;
  v67 = v73;
  v68 = v74;
  v63 = v69;
  v64 = v70;
  v23 = DWORD1(v76);
  v24 = v9;
  LODWORD(v49) = v9;
  v57 = v75;
  v28 = *(&v75 + 1);
  v29 = v76;
  LOBYTE(v58) = v76;
  DWORD1(v58) = DWORD1(v76);
  outlined init with copy of _ViewInputs(&v69, &v75);
  static EnvironmentalModifier.makeResolvedModifier(modifier:inputs:fields:)(v55, &v75, &v49, &v63, &v57, a5, a6);
  v13 = v55[0];
  v22 = v75;
  v25 = v76;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = v65;
  v78 = v66;
  v79 = v67;
  v80 = v68;
  v75 = v63;
  v76 = v64;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v51 = v77;
  v52 = v78;
  v53 = v79;
  v54 = v80;
  v49 = v75;
  v50 = v76;
  v56 = v80;
  v16 = v77;
  LODWORD(v51) = 0;
  LODWORD(v37) = v13;
  v55[0] = v75;
  v55[1] = v76;
  v55[3] = v78;
  v55[4] = v79;
  v55[2] = v51;
  v45 = v51;
  v46 = v78;
  v47 = v79;
  v48 = v80;
  v43 = v75;
  v44 = v76;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = *(AssociatedConformanceWitness + 24);
  outlined init with copy of _ViewInputs(&v75, &v57);
  outlined init with copy of _ViewInputs(v55, &v57);
  v18(v32, &v37, &v43, a3, a4, AssociatedTypeWitness, AssociatedConformanceWitness);
  v59 = v45;
  v60 = v46;
  v61 = v47;
  v62 = v48;
  v57 = v43;
  v58 = v44;
  outlined destroy of _ViewInputs(&v57);
  LODWORD(v51) = v16;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v32, &v49);
    AGSubgraphEndTreeElement();
  }

  v45 = v51;
  v46 = v52;
  v47 = v53;
  v48 = v54;
  v43 = v49;
  v44 = v50;
  outlined destroy of _ViewInputs(&v43);
  v19 = v32[0];
  v20 = v32[1];
  if (v25)
  {
    v39 = v65;
    v40 = v66;
    v41 = v67;
    v42 = v68;
    v37 = v63;
    v38 = v64;
    outlined destroy of _ViewInputs(&v37);
  }

  else
  {
    v36 = v22;
    v31 = v24;
    v33[0] = v12;
    v33[1] = v28;
    v34 = v29;
    v35 = v23;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v31, v33, a5);
    v39 = v65;
    v40 = v66;
    v41 = v67;
    v42 = v68;
    v37 = v63;
    v38 = v64;
    outlined destroy of _ViewInputs(&v37);
  }

  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a7 = v19;
  a7[1] = v20;
  return result;
}

uint64_t ViewGraphRootValueUpdater._explicitAlignment(of:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ViewGraphRootValueUpdater._explicitAlignment(of:at:)(a1, a2, a3, partial apply for closure #1 in ViewGraphRootValueUpdater._explicitAlignment(of:at:));
}

{
  return ViewGraphRootValueUpdater._explicitAlignment(of:at:)(a1, a2, a3, partial apply for closure #1 in ViewGraphRootValueUpdater._explicitAlignment(of:at:));
}

uint64_t ViewGraph.explicitAlignment(of:at:)(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  if ((*(v3 + 361) & 0x10) != 0)
  {
    GraphHost.instantiateIfNeeded()();
    WeakValue = AGGraphGetWeakValue();
    if (!WeakValue)
    {
      v16 = 0.0;
      return *&v16;
    }

    v8 = *WeakValue;

    ViewGraph.rootViewInsets.getter();
    v13 = v9;
    if (a2 - (v10 + v12) < 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = a2 - (v10 + v12);
    }

    if (a3 - (v9 + v11) < 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = a3 - (v9 + v11);
    }

    if (one-time initialization token for lockAssertionsAreEnabled != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_15;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (_MovableLockIsOwner(static Update._lock))
    {
LABEL_15:
      *v20 = v14;
      *&v20[1] = v15;
      *&v20[2] = v14;
      *&v20[3] = v15;
      v16 = COERCE_DOUBLE((*(*v8 + 144))(a1, v20));
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        v16 = v13 + v16;
      }

      return *&v16;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  swift_beginAccess();
  if ((*(v3 + 361) & 0x10) != 0)
  {
    GraphHost.instantiateIfNeeded()();
    WeakValue = AGGraphGetWeakValue();
    if (!WeakValue)
    {
      v18 = 0.0;
      return *&v18;
    }

    v8 = *WeakValue;

    ViewGraph.rootViewInsets.getter();
    v12 = v11;
    v14 = a2 - (v11 + v13);
    if (v14 < 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v14;
    }

    v16 = a3 - (v9 + v10);
    if (v16 < 0.0)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = v16;
    }

    if (one-time initialization token for lockAssertionsAreEnabled != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_15;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (_MovableLockIsOwner(static Update._lock))
    {
LABEL_15:
      *v22 = v15;
      *&v22[1] = v17;
      *&v22[2] = v15;
      *&v22[3] = v17;
      v18 = COERCE_DOUBLE((*(*v8 + 144))(a1, v22));
      v20 = v19;

      if ((v20 & 1) == 0)
      {
        v18 = v12 + v18;
      }

      return *&v18;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in ViewGraphRootValueUpdater._explicitAlignment(of:at:)@<X0>(uint64_t a1@<X8>)
{
  return partial apply for closure #1 in ViewGraphRootValueUpdater._explicitAlignment(of:at:)(ViewGraph.explicitAlignment(of:at:), a1);
}

{
  return partial apply for closure #1 in ViewGraphRootValueUpdater._explicitAlignment(of:at:)(ViewGraph.explicitAlignment(of:at:), a1);
}

uint64_t Transaction.init(animation:)(uint64_t a1)
{
  v3 = 0;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v3, a1);

  return v3;
}

uint64_t EnvironmentValues.tintColor.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (!v2)
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04TintS033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0g5(v1);
    if (!v4)
    {
      return 0;
    }

    v3 = v4[9];

    if (!v3)
    {
      return 0;
    }

LABEL_6:
    v5 = specialized ShapeStyle.fallbackColor(in:level:)(v1, v2, 0, v3);

    return v5;
  }

  v3 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA04TintI033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt1g5(v1);

  if (v3)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA010TextSizingF033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2, uint64_t a3)
{
  v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010TextSizingS033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt0g5(*a1);
  if (!v6 || *(v6 + 72) != a2 || (v7 = v6[10], , v8 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI21AnyTextSizingModifierC_Tt1g5(a3, v7), result = , (v8 & 1) == 0))
  {
    v10 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<TextSizingKey>>();
    v11 = swift_allocObject();
    *(v11 + 72) = a2;
    *(v11 + 80) = a3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSizingKey>, &type metadata for TextSizingKey, &protocol witness table for TextSizingKey, type metadata accessor for EnvironmentPropertyKey);
    v13 = v12;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v13, 0, v10);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<TextSizingKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TextSizingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSizingKey>, &type metadata for TextSizingKey, &protocol witness table for TextSizingKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextSizingKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TextSizingKey>>);
    }
  }
}

uint64_t _GraphInputs.pixelLength.getter()
{
  if (one-time initialization token for pixelLength != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.pixelLength;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0);
  swift_endAccess();
  return v1;
}

uint64_t static _BackgroundStyleModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, void (*a4)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v52 = a5;
  v53 = a4;
  v55 = a3;
  v56 = a8;
  v102 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = a2[1];
  v97 = *a2;
  v98 = v11;
  v12 = a2[3];
  v99 = a2[2];
  *v100 = v12;
  *&v100[16] = a2[4];
  v101 = *(a2 + 20);
  v13 = v98;
  v15 = DWORD2(v98);
  v14 = HIDWORD(v98);
  v50 = DWORD2(v97);
  v51 = DWORD1(v99);
  swift_beginAccess();
  v16 = *(v13 + 16);
  v54 = v10;
  *v86 = v10;
  *&v86[4] = v16;
  *&v86[8] = *&v100[24];
  *&v86[12] = vrev64_s32(*&v100[12]);
  *&v86[20] = *&v100[28];
  v63[2] = type metadata accessor for _BackgroundStyleModifier.BackgroundInfo.Value();
  v17 = type metadata accessor for _BackgroundStyleModifier.BackgroundInfo();
  v63[3] = v17;
  v63[4] = swift_getWitnessTable();
  v18 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v86, partial apply for closure #1 in Attribute.init<A>(_:), v63, v17, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  v93 = v99;
  v94 = *v100;
  v95 = *&v100[16];
  v96 = v101;
  v91 = v97;
  v92 = v98;
  outlined init with copy of _ViewInputs(&v97, v86);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(&v91, &type metadata for _ZStackLayout, &protocol witness table for _ZStackLayout);

  closure #1 in static _BackgroundStyleModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:)(1);
  LODWORD(v95) = AGGraphCreateOffsetAttribute2();
  v20 = v93;
  closure #2 in static _BackgroundStyleModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:)(1);
  DWORD2(v95) = AGGraphCreateOffsetAttribute2();
  LODWORD(v93) = v20 | 0x18;
  if (*(*(type metadata accessor for _AnchoredShapeStyle() - 8) + 64))
  {
    closure #3 in static _BackgroundStyleModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:)(1);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v22 = *(v13 + 16);
  LOBYTE(v66) = 0;
  v87 = v99;
  v88 = *v100;
  v89 = *&v100[16];
  v90 = v101;
  *v86 = v97;
  *&v86[16] = v98;
  _ViewInputs.materialSubstrate.getter(v64);
  *&v72 = __PAIR64__(v50, v15);
  DWORD2(v72) = v14;
  *&v73 = 0;
  BYTE8(v73) = 0;
  *&v74 = 0;
  DWORD2(v74) = 0;
  ShapeStyleResolver.init(style:mode:environment:role:substrate:animationsDisabled:helper:)(OffsetAttribute2, *MEMORY[0x1E698D3F8], v22, &v66, v64, v51 & 1, &v72, &v78);
  MEMORY[0x1EEE9AC00](v23);
  v24 = type metadata accessor for ShapeStyleResolver();
  v49[2] = v24;
  v49[3] = swift_getWitnessTable();
  type metadata accessor for Attribute<_ShapeStyle_Pack>(0, &lazy cache variable for type metadata for Attribute<_ShapeStyle_Pack>, &type metadata for _ShapeStyle_Pack, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v78, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_3, v49, v24, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
  v84[2] = v80;
  v84[3] = v81;
  v85 = v82;
  v84[0] = v78;
  v84[1] = v79;
  (*(*(v24 - 8) + 8))(v84, v24);
  v27 = *v86;
  AGGraphSetFlags();
  v87 = v99;
  v88 = *v100;
  v89 = *&v100[16];
  v90 = v101;
  *v86 = v97;
  *&v86[16] = v98;
  v28 = v55;
  if (v55)
  {
    v29 = v56;
    v30 = v53;
    if (*(*(a6 - 8) + 64))
    {
      outlined init with copy of _ViewInputs(&v97, &v78);
      v31 = closure #1 in static _BackgroundModifier._makeView(modifier:inputs:body:)(1, a6, a7, type metadata accessor for _BackgroundStyleModifier, closure #1 in static PointerOffset.of(_:)partial apply);
    }

    else
    {
      outlined init with copy of _ViewInputs(&v97, &v78);
      v31 = 0;
    }

    v32 = v54;
    v33 = type metadata accessor for _BackgroundStyleModifier();
    _ViewInputs.applyBackgroundStyle<A, B>(value:offset:)(v32, v31, v33, a6, a7);
  }

  else
  {
    outlined init with copy of _ViewInputs(&v97, &v78);
    v29 = v56;
    LODWORD(v32) = v54;
    v30 = v53;
  }

  v74 = v87;
  v75 = v88;
  v76 = v89;
  v77 = v90;
  v72 = *v86;
  v73 = *&v86[16];
  v68 = v87;
  v69 = v88;
  v70 = v89;
  v71 = v90;
  v66 = *v86;
  v67 = *&v86[16];
  v34 = outlined init with copy of _ViewInputs(&v72, &v78);
  v30(v64, v34, &v66);
  v80 = v68;
  v81 = v69;
  v82 = v70;
  v83 = v71;
  v78 = v66;
  v79 = v67;
  outlined destroy of _ViewInputs(&v78);
  v35 = *&v64[0];
  v36 = DWORD2(v64[0]);
  LODWORD(v56) = HIDWORD(v64[0]);
  v37 = type metadata accessor for _BackgroundStyleModifier();
  LODWORD(v57) = v32;
  v68 = v93;
  v69 = v94;
  v70 = v95;
  v71 = v96;
  v66 = v91;
  v67 = v92;
  static ShapeStyledLeafView.makeLeafView(view:inputs:styles:interpolatorGroup:data:)(&v57, &v66, v27, 0, v38, v37, &protocol witness table for _BackgroundStyleModifier<A>, v64);
  v39 = *&v64[0];
  v40 = DWORD2(v64[0]);
  if (v28)
  {
    v41 = *&v64[0];
  }

  else
  {
    v41 = v35;
  }

  if (v28)
  {
    v42 = DWORD2(v64[0]);
  }

  else
  {
    v42 = v36;
  }

  if (v28)
  {
    v39 = v35;
    v40 = v36;
  }

  v61 = MEMORY[0x1E69E7CC0];
  v62 = 0;
  v57 = v41;
  v58 = v42;
  v59 = v39;
  v60 = v40;
  v43 = *v100;
  v44 = *(*v100 + 16);
  if (v44)
  {

    v45 = (v43 + 40);
    do
    {
      static PreferenceKey.visitKey<A>(_:)(&v57, *(v45 - 1), &type metadata for PairwisePreferenceCombinerVisitor, *v45, &protocol witness table for PairwisePreferenceCombinerVisitor);
      v45 += 2;
      --v44;
    }

    while (v44);
  }

  else
  {
  }

  v64[2] = v87;
  v64[3] = v88;
  v64[4] = v89;
  v65 = v90;
  v64[0] = *v86;
  v64[1] = *&v86[16];
  outlined destroy of _ViewInputs(v64);

  v68 = v93;
  v69 = v94;
  v70 = v95;
  v71 = v96;
  v66 = v91;
  v67 = v92;
  outlined destroy of _ViewInputs(&v66);
  *(v29 + 12) = v56;
  v46 = v61;
  v47 = v62;

  *v29 = v46;
  *(v29 + 8) = v47;
  return result;
}

uint64_t closure #1 in static _BackgroundStyleModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:)(uint64_t a1)
{
  v7[2] = type metadata accessor for _BackgroundStyleModifier.BackgroundInfo.Value();
  type metadata accessor for CGPoint(0);
  v3 = v2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v7, v3, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t closure #2 in static _BackgroundStyleModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:)(uint64_t a1)
{
  v5[2] = type metadata accessor for _BackgroundStyleModifier.BackgroundInfo.Value();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 16, closure #1 in static PointerOffset.of(_:)partial apply, v5, &type metadata for ViewSize, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v5[5];
}

uint64_t closure #3 in static _BackgroundStyleModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:)(uint64_t a1)
{
  v2 = type metadata accessor for _BackgroundStyleModifier.BackgroundInfo.Value();
  v3 = *(v2 + 36);
  v7[2] = v2;
  v8 = type metadata accessor for _AnchoredShapeStyle();
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, closure #1 in static PointerOffset.of(_:)partial apply, v7, v8, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v9;
}

uint64_t type metadata completion function for _BackgroundStyleModifier.BackgroundInfo.Value()
{
  result = type metadata accessor for _AnchoredShapeStyle();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for _AnchoredShapeStyle()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _BackgroundStyleModifier<A>.BackgroundInfo()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for _BackgroundStyleModifier<A>.BackgroundInfo(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for CodableOptional()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t _AnyMaterialCustomFillProvider.__deallocating_deinit()
{
  (*(*(*(*v0 + 128) - 8) + 8))(v0 + *(*v0 + 144));

  return swift_deallocClassInstance();
}

uint64_t initializeWithCopy for _OverlayStyleModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *(*(v5 + 48) + a1) = *(*(v5 + 48) + a2);
  return a1;
}

void specialized UnaryChildGeometry.value.getter(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = HIDWORD(a1);
  Value = AGGraphGetValue();
  v30 = Value[1];
  v31 = *Value;
  v5 = *AGGraphGetValue();
  v6 = one-time initialization token for lockAssertionsAreEnabled;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = lockAssertionsAreEnabled;
  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for _lock != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    if (!_MovableLockIsOwner(static Update._lock))
    {
      goto LABEL_26;
    }

LABEL_6:
    v32[0] = v31;
    v32[1] = v30;
    (*(*v5 + 152))(&v33, v32);

    v8 = v33;
    v9 = v34;
    v10 = v35;
    v11 = v36;
    v12 = v37;
    v13 = v38;
    v14 = v39;
    v15 = v40;
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v17 = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute != *MEMORY[0x1E698D3F8])
    {
      break;
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  v18 = *AGGraphGetValue();
  if (v17 == v2)
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v20 = *(&static LayoutComputer.defaultValue + 1);
    v19 = static LayoutComputer.defaultValue;
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    InputValue = AGGraphGetInputValue();
    v19 = *InputValue;
    v20 = InputValue[1];
    if (!v7)
    {
LABEL_11:

      goto LABEL_16;
    }
  }

  v22 = one-time initialization token for _lock;

  if (v22 != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
LABEL_26:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

LABEL_16:
  v33 = v8;
  v34 = v9;
  v35 = v10;
  v36 = v11;
  v24 = (*(*v19 + 120))(&v33);
  v25 = v23;
  v26 = NAN;
  if (v9)
  {
    v27 = NAN;
  }

  else
  {
    v27 = v8;
  }

  v28 = v14 - v12 * v24;
  v29 = v15 - v13 * v23;
  *a2 = v28;
  *(a2 + 8) = v29;
  *(a2 + 16) = v19;
  *(a2 + 24) = v20;
  *(a2 + 32) = v24;
  *(a2 + 40) = v25;
  if (!v11)
  {
    v26 = v10;
  }

  *(a2 + 48) = v27;
  *(a2 + 56) = v26;
  if (v18)
  {
    *a2 = *&v31 - CGRectGetMaxX(*(&v24 - 2));
  }
}

uint64_t specialized EnvironmentalViewChild.updateValue()()
{
  v86 = *MEMORY[0x1E69E9840];
  v70 = type metadata accessor for OSSignpostID();
  v1 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v71 = v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v54 - v4;
  Value = AGGraphGetValue();
  v8 = v7;
  v9 = *Value;

  v10 = AGGraphGetValue();
  v13 = *v10;
  v12 = *(v10 + 8);
  if (v8)
  {
  }

  else
  {
    if (v11)
    {

      v14 = swift_retain_n();
      v15 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v14);

      if (v15)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    if (AGGraphGetOutputValue())
    {
    }
  }

LABEL_10:
  v17 = *(v0 + 8);
  PropertyList.Tracker.reset()();
  if (v13)
  {
    v18 = *(v13 + 8);
  }

  else
  {
    v18 = 0;
  }

  v19 = v17[2];
  swift_retain_n();

  os_unfair_lock_lock((v19 + 16));
  *(v19 + 24) = v18;
  os_unfair_lock_unlock((v19 + 16));

  v20 = one-time initialization token for bodyInvoke;

  if (v20 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v21 = static Signpost.bodyInvoke;
    v22 = word_1ED539040;
    v78 = static Signpost.bodyInvoke;
    LOWORD(v79) = word_1ED539040;
    v63 = HIBYTE(word_1ED539040);
    BYTE2(v79) = byte_1ED539042;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v83 = v13;
      v84 = v17;

      Color.body(environment:)(&v83, v9, &v78);

      v31 = v78;
      v32 = v79;
      v33 = v80;
      v34 = v81;
      goto LABEL_51;
    }

    v58 = v22;
    v59 = *(&v21 + 1);
    v60 = v21;
    v55 = v17;
    v61 = v1;
    v56 = v13;
    v57 = v9;
    v62 = v5;
    static OSSignpostID.exclusive.getter();
    v23 = static os_signpost_type_t.begin.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 1) = xmmword_18DDAB4C0;
    v24 = AGTypeID.description.getter();
    v26 = v25;
    v27 = MEMORY[0x1E69E6158];
    v17[7] = MEMORY[0x1E69E6158];
    v28 = lazy protocol witness table accessor for type String and conformance String();
    v17[8] = v28;
    v17[4] = v24;
    v17[5] = v26;
    v29 = specialized static Tracing.libraryName(defining:)();
    v17[12] = v27;
    v17[13] = v28;
    v17[9] = v29;
    v17[10] = v30;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v63)
    {
      break;
    }

    v54[0] = _signpostLog;
    v54[1] = v12;
    v35 = v60;
    if (v60 == 20)
    {
      v36 = 3;
    }

    else
    {
      v36 = 4;
    }

    v37 = bswap32(v60) | (4 * WORD1(v60));
    v12 = v23;
    v38 = v61 + 16;
    v64 = *(v61 + 16);
    v39 = v64(v71, v62, v70);
    v1 = 0;
    LOBYTE(v83) = 1;
    *&v73 = v36;
    v68 = 16 * v36;
    v65 = v38;
    v69 = (v38 - 8);
    v67 = v17 + 4;
    v66 = v35;
LABEL_24:
    v72 = v54;
    MEMORY[0x1EEE9AC00](v39);
    v41 = v54 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = v41 + 8;
    v42 = v73;
    v43 = v41 + 8;
    do
    {
      *(v43 - 1) = 0;
      *v43 = 0;
      v43 += 16;
      --v42;
    }

    while (v42);
    v5 = &v67[5 * v1];
    v9 = v73;
    while (1)
    {
      v44 = v17[2];
      if (v1 == v44)
      {
        LOBYTE(v83) = 0;
LABEL_32:
        v47 = v66;
        if (v66 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v41[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v41[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v41[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v47 != 20 && v41[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v48 = v70;
        v49 = *v69;
        v50 = v71;
        (*v69)(v71, v70);
        v51 = __swift_project_value_buffer(v48, static OSSignpostID.continuation);
        v39 = v64(v50, v51, v48);
        if ((v83 & 1) == 0)
        {
          v49(v71, v70);

          goto LABEL_47;
        }

        goto LABEL_24;
      }

      if (v1 >= v44)
      {
        break;
      }

      ++v1;
      outlined init with copy of AnyTrackedValue(v5, &v78);
      v45 = v82;
      __swift_project_boxed_opaque_existential_1(&v78, v82);
      *(v13 - 1) = CVarArg.kdebugValue(_:)(v37 | v12, v45);
      *v13 = v46 & 1;
      v13 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v78);
      v5 += 40;
      if (!--v9)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_53:
    swift_once();
  }

  v77 = v23;
  v75 = _signpostLog;
  v76 = &dword_18D018000;
  *&v78 = v60;
  *(&v78 + 1) = v59;
  LOBYTE(v79) = v58;
  v83 = "%{public}@.body [in %{public}@]";
  v84 = 31;
  v85 = 2;
  v74 = v17;
  specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

LABEL_47:
  v83 = v56;
  v84 = v55;

  Color.body(environment:)(&v83, v57, &v78);

  v73 = v78;
  v32 = v79;
  v33 = v80;
  v34 = v81;
  static os_signpost_type_t.end.getter();
  v52 = v61;
  v53 = v62;
  if (v63)
  {
    os_signpost(_:dso:log:name:signpostID:)();
  }

  else
  {
    OSSignpostID.rawValue.getter();
    kdebug_trace();
  }

  (*(v52 + 8))(v53, v70);
  v31 = v73;
LABEL_51:
  v78 = v31;
  v79 = v32;
  v80 = v33;
  v81 = v34;
  AGGraphSetOutputValue();
}

double Color.body(environment:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v11 = *a1;
  v12 = v5;
  (*(*a2 + 120))(&v13, &v11);
  v6 = v14;
  if (v14 <= 1.0)
  {
    v7 = 0;
  }

  else
  {
    v11 = v4;
    v12 = v5;
    v9 = 3;
    EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(&v9, &v10);
    v7 = v10;
  }

  result = *&v13;
  *a3 = v13;
  *(a3 + 16) = v6;
  *(a3 + 20) = 1;
  *(a3 + 21) = v7;
  return result;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(unint64_t a1, uint64_t a2, int a3, float32x4_t *a4)
{
  LODWORD(v11) = a3;
  v230 = *MEMORY[0x1E69E9840];
  v206 = type metadata accessor for OSSignpostID();
  v202 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v15 = &v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v182 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v204 = &v182 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v200 = &v182 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v205 = &v182 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v196 = &v182 - v26;
  if (a4[2].i64[1])
  {
    Value = AGGraphGetValue();
    if (v28)
    {
      v29 = *Value;
    }

    else
    {
      v29 = -INFINITY;
    }
  }

  else
  {
    v29 = -INFINITY;
  }

  v30 = &unk_1ED52E000;
  v31 = &static Color.Resolved.legacyInterpolation;
  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    *(a1 + 22) = 1;
    goto LABEL_9;
  }

  if (*(a1 + 22) == 1)
  {
LABEL_9:
    LODWORD(v8) = *a1;
    LODWORD(v7) = *(a1 + 4);
    LODWORD(v6) = *(a1 + 8);
    v5 = *(a1 + 12);
    LODWORD(v4) = *(a1 + 16);
    if (one-time initialization token for legacyInterpolation != -1)
    {
      goto LABEL_210;
    }

    goto LABEL_10;
  }

  v35 = 0;
  v39 = a4[2].i64[1];
  if (!v39)
  {
    return;
  }

  while (2)
  {
    v207 = *a1;
    LODWORD(v4) = *(a1 + 16);
    v149 = *(v30 + 3896);

    if (v149 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (*v31)
    {
      v150 = v207;
    }

    else
    {
      v214.i8[0] = 2;
      ResolvedGradient.ColorSpace.convertIn(_:)(&v226, v207.f32[0], v207.u32[1], v207.f32[2], v207.f32[3]);
      v150 = v226;
    }

    v151.i64[0] = 0x4300000043000000;
    v151.i64[1] = 0x4300000043000000;
    v214 = vmulq_f32(v150, v151);
    LODWORD(v215) = v4;
    LOBYTE(v226) = 0;
    v152 = specialized AnimatorState.update(_:at:environment:)(&v214, v11, v29);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v57 = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v57)
    {
      v154 = 0;
    }

    else
    {
      v154 = CurrentAttribute;
    }

    if ((v152 & 1) == 0)
    {
      if (one-time initialization token for enabledCategories == -1)
      {
LABEL_170:
        if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
        {
          if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
            LODWORD(v226) = v154;
            BYTE4(v226) = CurrentAttribute == v57;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          specialized AnimatorState.nextUpdate()();
          goto LABEL_205;
        }

        __break(1u);
        goto LABEL_214;
      }

LABEL_212:
      v181 = CurrentAttribute;
      swift_once();
      CurrentAttribute = v181;
      goto LABEL_170;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      v180 = CurrentAttribute;
      swift_once();
      CurrentAttribute = v180;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_212;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
      LODWORD(v226) = v154;
      BYTE4(v226) = CurrentAttribute == v57;
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
      AGGraphAddTraceEvent();
    }

    v194 = a1;
    v195 = a4;
    v155 = one-time initialization token for animationState;
    v193 = v39;

    if (v155 != -1)
    {
LABEL_214:
      swift_once();
    }

    v56 = *(&static Signpost.animationState + 1);
    v156 = static Signpost.animationState;
    v52 = word_1ED5283E8;
    v30 = HIBYTE(word_1ED5283E8);
    v157 = byte_1ED5283EA;
    v158 = static os_signpost_type_t.end.getter();
    v226 = __PAIR128__(v56, v156);
    v227.i8[0] = v52;
    v227.i8[1] = v30;
    v227.i8[2] = v157;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_204;
    }

    v207.i32[0] = v158;
    v159 = one-time initialization token for _signpostLog;
    v55 = v193;

    if (v159 != -1)
    {
      swift_once();
    }

    v191 = v35;
    v54 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v57)
    {
      __break(1u);
      goto LABEL_216;
    }

    v55 = AGGraphGetAttributeGraph();
    Counter = AGGraphGetCounter();

    v161 = MEMORY[0x1E69E6870];
    *(v58 + 56) = MEMORY[0x1E69E6810];
    *(v58 + 64) = v161;
    *(v58 + 32) = Counter;
    v162 = AGGraphGetCurrentAttribute();
    if (v162 == v57)
    {
LABEL_216:
      __break(1u);
LABEL_217:
      swift_once();
      goto LABEL_33;
    }

    v163 = MEMORY[0x1E69E76D0];
    *(v58 + 96) = MEMORY[0x1E69E7668];
    *(v58 + 104) = v163;
    *(v58 + 72) = v162;
    *(v58 + 136) = MEMORY[0x1E69E6158];
    *(v58 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(v58 + 112) = 0x656956726F6C6F43;
    *(v58 + 120) = 0xE900000000000077;
    if (v30)
    {
      v213 = v207.i8[0];
      v211 = *&v54;
      v212 = &dword_18D018000;
      *&v226 = v156;
      *(&v226 + 1) = v56;
      v227.i8[0] = v52;
      v209[0] = "Animation: (%p) [%d] %{public}@ ended";
      v209[1] = 37;
      v210 = 2;
      v208 = *&v58;
      v164 = v196;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

      (*(v202 + 8))(v164, v206);
      goto LABEL_203;
    }

    v165 = v156;
    if (v156 == 20)
    {
      v166 = 3;
    }

    else
    {
      v166 = 4;
    }

    a1 = bswap32(v156) | (4 * WORD1(v156));
    a2 = v207.u8[0];
    v167 = v202 + 16;
    v197 = *(v202 + 16);
    v168 = (v197)(v205, v196, v206);
    v11 = 0;
    LOBYTE(v209[0]) = 1;
    v204 = v166;
    v202 = v167;
    v200 = (16 * v166);
    v201 = (v167 - 8);
    v207.i64[0] = v58;
    v198 = v165;
    v199 = (v58 + 32);
LABEL_180:
    v203 = &v182;
    MEMORY[0x1EEE9AC00](v168);
    a4 = (&v182 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = &a4->i8[8];
    v170 = v204;
    v171 = &a4->i8[8];
    do
    {
      *(v171 - 1) = 0;
      *v171 = 0;
      v171 += 16;
      --v170;
    }

    while (v170);
    v31 = &v199[5 * v11];
    v18 = v204;
    while (1)
    {
      v172 = *(v207.i64[0] + 16);
      if (v11 == v172)
      {
        LOBYTE(v209[0]) = 0;
LABEL_188:
        v175 = v198;
        if (v198 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (a4->i8[8] == 1)
        {
          kdebug_trace_string();
        }

        if (a4[1].i8[8] == 1)
        {
          kdebug_trace_string();
        }

        if (a4[2].i8[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v175 != 20 && a4[3].i8[8] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v176 = *v201;
        v30 = v205;
        v177 = v206;
        (*v201)(v205, v206);
        v178 = __swift_project_value_buffer(v177, static OSSignpostID.continuation);
        v168 = (v197)(v30, v178, v177);
        if ((v209[0] & 1) == 0)
        {

          v179 = v206;
          v176(v205, v206);
          v176(v196, v179);
LABEL_203:

LABEL_204:
          specialized AnimatorState.removeListeners()();

          a1 = v194;
          v195[2].i64[1] = 0;
LABEL_205:
          v226 = v214;
          v227.i32[0] = v215;
          Color.ResolvedHDR.animatableData.setter(&v226);

          *(a1 + 22) = 1;
          return;
        }

        goto LABEL_180;
      }

      if (v11 >= v172)
      {
        break;
      }

      ++v11;
      outlined init with copy of AnyTrackedValue(v31, &v226);
      v173 = v227.i64[1];
      v30 = v228.i64[0];
      __swift_project_boxed_opaque_existential_1(&v226, v227.i64[1]);
      *(v15 - 1) = CVarArg.kdebugValue(_:)(a1 | a2, v173);
      *v15 = v174 & 1;
      v15 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v226);
      v31 += 40;
      if (!--v18)
      {
        goto LABEL_188;
      }
    }

    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    swift_once();
LABEL_10:
    swift_beginAccess();
    if ((*v31 & 1) == 0)
    {
      v221.i8[0] = 2;
      ResolvedGradient.ColorSpace.convertIn(_:)(&v226, *&v8, LODWORD(v7), *&v6, v5);
      LODWORD(v7) = DWORD1(v226);
      LODWORD(v8) = v226;
      v5 = *(&v226 + 3);
      LODWORD(v6) = DWORD2(v226);
    }

    v9 = *&v8 * 128.0;
    v32 = *&v7 * 128.0;
    v33 = *&v6 * 128.0;
    v34 = v5 * 128.0;
    v5 = *&v4;
    if (a4[2].i8[0])
    {
      v35 = 0;
      goto LABEL_145;
    }

    v7 = v29;
    LODWORD(v8) = a4[1].i32[2];
    v36 = a4[1].f32[3];
    v37 = a4->f32[3];
    LODWORD(v6) = a4[1].i32[0];
    v38 = a4[1].f32[1];
    if (v9 == v37 && v32 == *&v6 && v33 == v38 && v34 == *&v8 && v5 == v36)
    {
      v35 = 0;
      v29 = v7;
      goto LABEL_145;
    }

    v203 = v15;
    v183 = v18;
    v187 = v32;
    v188 = v33;
    v189 = v34;
    AGGraphClearUpdate();
    v40 = a4[1];
    v226 = *a4;
    v227 = v40;
    v228 = a4[2];
    v195 = a4;
    v229 = a4[3].i32[0];
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v226, &v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
    v41 = *AGGraphGetValue();

    v42 = v41;
    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v43 = Transaction.effectiveAnimation.getter(v41);
    if (v43)
    {
      v44 = v43;
      goto LABEL_26;
    }

    v30 = 0x1ED52E000;
    if (!a2)
    {

      v35 = 0;
      a4 = v195;
      v29 = v7;
      v31 = &static Color.Resolved.legacyInterpolation;
      goto LABEL_144;
    }

    v44 = a2;
LABEL_26:
    v45 = v9 - v37;
    v46 = v187 - *&v6;
    v47 = v188 - v38;
    v48 = v189 - *&v8;
    if (v5 > v36)
    {
      v36 = v5;
    }

    v49 = v228.i64[1];
    v29 = *AGGraphGetValue();
    v194 = a1;
    v184 = v11;
    v185 = v44;
    v186 = v41;
    if (!v49)
    {
      v214.i64[0] = &type metadata for ColorView;
      type metadata accessor for ColorView.Type();
      type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == Color.ResolvedHDR._Animatable>.Type);
      v73 = swift_dynamicCast();
      if (v73)
      {
        v74 = v221.i64[0];
      }

      else
      {
        v74 = 0;
      }

      if (v73)
      {
        v75 = v221.i64[1];
      }

      else
      {
        v75 = 0;
      }

      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for AnimatorState);
      v76 = swift_allocObject();
      v77 = MEMORY[0x1E69E7CC0];
      *(v76 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v190 = v76;
      if (static Color.Resolved.legacyInterpolation == 1)
      {
        *(v76 + 32) = 0;
        *(v76 + 72) = 0;
        *(v76 + 40) = 0;
        *(v76 + 48) = 0;
        v78 = 0uLL;
      }

      else
      {
        v219.i8[0] = 2;
        ResolvedGradient.ColorSpace.convertIn(_:)(&v221, 0.0, 0, 0.0, 0.0);
        v76 = v190;
        v79.i64[0] = 0x4300000043000000;
        v79.i64[1] = 0x4300000043000000;
        v80 = v190;
        v190[2] = vmulq_f32(v221, v79);
        v80 += 2;
        v81 = static Color.Resolved.legacyInterpolation;
        v80[1].i32[0] = 0;
        v80[2].i64[1] = 0;
        v78 = 0uLL;
        if ((v81 & 1) == 0)
        {
          v219.i8[0] = 2;
          ResolvedGradient.ColorSpace.convertIn(_:)(&v221, 0.0, 0, 0.0, 0.0);
          v76 = v190;
          v82.i64[0] = 0x4300000043000000;
          v82.i64[1] = 0x4300000043000000;
          v78 = vmulq_f32(v221, v82);
        }
      }

      *(v76 + 80) = v78;
      *(v76 + 96) = 0;
      *(v76 + 104) = 1;
      *(v76 + 112) = v77;
      *(v76 + 120) = v77;
      *(v76 + 128) = 0;
      *(v76 + 136) = 0;
      *(v76 + 144) = 0;
      *(v76 + 152) = v77;
      *(v76 + 16) = v44;
      swift_beginAccess();
      *(v76 + 32) = v45;
      *(v76 + 36) = v46;
      *(v76 + 40) = v47;
      *(v76 + 44) = v48;
      *(v76 + 48) = v36;
      *(v76 + 136) = v74;
      *(v76 + 144) = v75;
      *(v76 + 56) = v29;
      *(v76 + 72) = v29;
      swift_retain_n();

      v84 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v83));
      v191 = 0;
      if (v85)
      {

        v86 = v76;
        v87 = 0;
        *(v86 + 64) = 0;
        LOBYTE(v88) = 1;
        goto LABEL_96;
      }

      if (v84 <= 0.0)
      {
        *(v76 + 64) = 0;
      }

      else
      {
        v89 = log2(v84 * 240.0);
        v90 = exp2(floor(v89 + 0.01)) * 0.00416666667;
        *(v76 + 64) = v90;
        if (v90 >= 0.0166666667)
        {

          v87 = 0;
          LOBYTE(v88) = 1;
LABEL_95:
          v86 = v190;
LABEL_96:
          *(v86 + 100) = v87;
          *(v86 + 104) = v88;
          v109 = AGGraphGetCurrentAttribute();
          v110 = v109;
          v207.i32[0] = *MEMORY[0x1E698D3F8];
          if (v109 == v207.i32[0])
          {
            v111 = 0;
          }

          else
          {
            v111 = v109;
          }

          (*(*v44 + 96))(&v214);
          v112 = v214;
          v113 = v215;
          v114 = v217;
          v208 = NAN;
          v209[0] = 0x7FF8000000000000;
          v211 = 1.0;
          v212 = 0x7FF8000000000000;
          v221 = v214;
          v222 = v215;
          v223 = v216;
          v115 = v216;
          v224 = *&v217;
          LODWORD(v204) = v218;
          LOBYTE(v225) = v218;
          static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v221, v209, &v212, &v211, &v208);
          v8 = v208;
          v4 = v209[0];
          v7 = v211;
          v6 = v212;
          if (one-time initialization token for enabledCategories != -1)
          {
            swift_once();
          }

          if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
          {
            __break(1u);
          }

          else
          {
            if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v116 = static CustomEventTrace.recorder) != 0)
            {
              v117 = v110 == v207.i32[0];
              v201 = v114;
              *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
              v118 = *(v116 + 16);
              v221.i32[0] = v111;
              v221.i8[4] = v117;
              v221.i64[1] = &type metadata for ColorView;
              v222 = v4;
              v223 = v6;
              v224 = v7;
              v225 = v8;
              type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

              v119 = v118;
              AGGraphAddTraceEvent();
              outlined consume of Animation.Function(v112.i64[0], v112.i64[1], v113, v115, v201, v204);
            }

            else
            {
              outlined consume of Animation.Function(v112.i64[0], v112.i64[1], v113, v115, v114, v204);
            }

            v120 = one-time initialization token for animationState;

            if (v120 == -1)
            {
LABEL_107:
              v52 = *(&static Signpost.animationState + 1);
              a1 = static Signpost.animationState;
              LOBYTE(v15) = word_1ED5283E8;
              LOBYTE(v67) = HIBYTE(word_1ED5283E8);
              v121 = byte_1ED5283EA;
              LODWORD(v30) = static os_signpost_type_t.begin.getter();
              v221 = __PAIR128__(v52, a1);
              LOBYTE(v222) = v15;
              BYTE1(v222) = v67;
              BYTE2(v222) = v121;
              v122 = Signpost.isEnabled.getter();
              LODWORD(v62) = v207.i32[0];
              if ((v122 & 1) == 0)
              {
                v132 = v190;

                goto LABEL_114;
              }

              v123 = one-time initialization token for _signpostLog;

              if (v123 == -1)
              {
LABEL_109:
                LODWORD(v204) = v30;
                v124 = _signpostLog;
                OSSignpostID.init(log:object:)();
                type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
                v125 = swift_allocObject();
                *(v125 + 16) = xmmword_18DDAF080;
                if (AGGraphGetCurrentAttribute() == v62)
                {
                  __break(1u);
                }

                else
                {
                  v126 = AGGraphGetAttributeGraph();
                  v127 = AGGraphGetCounter();

                  v128 = MEMORY[0x1E69E6870];
                  *(v125 + 56) = MEMORY[0x1E69E6810];
                  *(v125 + 64) = v128;
                  *(v125 + 32) = v127;
                  v129 = AGGraphGetCurrentAttribute();
                  if (v129 != v62)
                  {
                    v30 = v125;
                    v130 = MEMORY[0x1E69E76D0];
                    *(v125 + 96) = MEMORY[0x1E69E7668];
                    *(v125 + 104) = v130;
                    *(v125 + 72) = v129;
                    *(v125 + 136) = MEMORY[0x1E69E6158];
                    *(v125 + 144) = lazy protocol witness table accessor for type String and conformance String();
                    *(v125 + 112) = 0x656956726F6C6F43;
                    *(v125 + 120) = 0xE900000000000077;
                    if ((v67 & 1) == 0)
                    {
                      if (a1 == 20)
                      {
                        v133 = 3;
                      }

                      else
                      {
                        v133 = 4;
                      }

                      a4 = (bswap32(a1) | (4 * WORD1(a1)));
                      v207.i32[0] = v204;
                      v134 = (v202 + 16);
                      v192 = *(v202 + 16);
                      v135 = v192(v203, v183, v206);
                      v11 = 0;
                      v214.i8[0] = 1;
                      v204 = v133;
                      v193 = v134;
                      v199 = (16 * v133);
                      v200 = v134 - 8;
                      v197 = a1;
                      v198 = v125 + 32;
                      do
                      {
                        v201 = &v182;
                        MEMORY[0x1EEE9AC00](v135);
                        v15 = &v182 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
                        a2 = (v15 + 8);
                        v137 = v204;
                        v138 = v15 + 8;
                        do
                        {
                          *(v138 - 1) = 0;
                          *v138 = 0;
                          v138 += 16;
                          --v137;
                        }

                        while (v137);
                        v31 = (v198 + 40 * v11);
                        v18 = v204;
                        while (1)
                        {
                          v139 = *(v30 + 16);
                          if (v11 == v139)
                          {
                            break;
                          }

                          if (v11 >= v139)
                          {
                            goto LABEL_209;
                          }

                          ++v11;
                          outlined init with copy of AnyTrackedValue(v31, &v221);
                          a1 = v30;
                          v140 = v223;
                          __swift_project_boxed_opaque_existential_1(&v221, v223);
                          *(a2 - 8) = CVarArg.kdebugValue(_:)(a4 | v207.i32[0], v140);
                          *a2 = v141 & 1;
                          a2 += 16;
                          __swift_destroy_boxed_opaque_existential_1(&v221);
                          v31 += 40;
                          if (!--v18)
                          {
                            goto LABEL_127;
                          }
                        }

                        v214.i8[0] = 0;
LABEL_127:
                        v142 = v197;
                        if (v197 == 20)
                        {
                          OSSignpostID.rawValue.getter();
                        }

                        kdebug_trace();
                        if (v15[8] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (v15[24] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (v15[40] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (v142 != 20 && v15[56] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (one-time initialization token for continuation != -1)
                        {
                          swift_once();
                        }

                        v143 = *v200;
                        v144 = v203;
                        v145 = v206;
                        (*v200)(v203, v206);
                        v146 = __swift_project_value_buffer(v145, static OSSignpostID.continuation);
                        v135 = v192(v144, v146, v145);
                      }

                      while ((v214.i8[0] & 1) != 0);
                      v147 = v190;

                      v148 = v206;
                      v143(v144, v206);
                      v143(v183, v148);

                      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
                      a4 = v195;
                      v195[2].i64[1] = v147;
                      goto LABEL_142;
                    }

                    LOBYTE(v208) = v204;
                    v209[0] = &dword_18D018000;
                    v211 = *&v125;
                    v212 = v124;
                    v221.i64[0] = a1;
                    v221.i64[1] = v52;
                    LOBYTE(v222) = v15;
                    v214.i64[0] = "Animation: (%p) [%d] %{public}@ started";
                    v214.i64[1] = 39;
                    LOBYTE(v215) = 2;
                    v131 = v183;
                    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
                    v132 = v190;

                    (*(v202 + 8))(v131, v206);

LABEL_114:
                    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
                    a4 = v195;
                    v195[2].i64[1] = v132;
LABEL_142:
                    LODWORD(v11) = v184;
                    v35 = v191;
                    goto LABEL_143;
                  }
                }

                __break(1u);
              }

LABEL_224:
              swift_once();
              goto LABEL_109;
            }
          }

          swift_once();
          goto LABEL_107;
        }
      }

      v107 = v191;
      v108 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v42);
      v87 = v108;
      v191 = v107;
      v88 = HIDWORD(v108) & 1;

      goto LABEL_95;
    }

    v219.i64[0] = __PAIR64__(LODWORD(v46), LODWORD(v45));
    v219.i64[1] = __PAIR64__(LODWORD(v48), LODWORD(v47));
    v220 = v36;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v226, &v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
    v221.i8[0] = 0;
    v190 = v49;
    specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v44, &v219, v41, v29);
    v50 = AGGraphGetCurrentAttribute();
    v51 = v44;
    v52 = v50;
    v30 = *MEMORY[0x1E698D3F8];
    if (v50 == v30)
    {
      v53 = 0;
    }

    else
    {
      v53 = v50;
    }

    LODWORD(v203) = v53;
    (*(*v51 + 96))(&v214);
    v55 = v214.i64[1];
    v54 = v214.i64[0];
    v56 = v215;
    v208 = NAN;
    v209[0] = 0x7FF8000000000000;
    v211 = 1.0;
    v212 = 0x7FF8000000000000;
    v221 = v214;
    v222 = v215;
    v223 = v216;
    v57 = v216;
    v58 = v217;
    v224 = *&v217;
    v207.i32[0] = v218;
    LOBYTE(v225) = v218;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v221, v209, &v212, &v211, &v208);
    v8 = v208;
    v4 = v209[0];
    v7 = v211;
    v6 = v212;
    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_217;
    }

LABEL_33:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_219:
      swift_once();
      goto LABEL_39;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v59 = static CustomEventTrace.recorder) != 0)
    {
      LODWORD(v201) = v30;
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v60 = *(v59 + 16);
      v221.i32[0] = v203;
      v221.i8[4] = v52 == v30;
      v221.i64[1] = &type metadata for ColorView;
      v222 = v4;
      v223 = v6;
      v224 = v7;
      v225 = v8;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
      v203 = v61;

      v52 = v60;
      v30 = v201;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v54, v55, v56, v57, v58, v207.u8[0]);
    }

    else
    {
      outlined consume of Animation.Function(v54, v55, v56, v57, v58, v207.u8[0]);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v226, &v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_219;
    }

LABEL_39:
    v62 = *(&static Signpost.animationState + 1);
    a1 = static Signpost.animationState;
    v63 = word_1ED5283E8;
    v15 = HIBYTE(word_1ED5283E8);
    v64 = byte_1ED5283EA;
    v65 = static os_signpost_type_t.event.getter();
    v221 = __PAIR128__(v62, a1);
    LOBYTE(v222) = v63;
    BYTE1(v222) = v15;
    BYTE2(v222) = v64;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
      goto LABEL_92;
    }

    v207.i32[0] = v65;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v226, &v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v66 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v30)
    {
      __break(1u);
      goto LABEL_223;
    }

    v52 = v30;
    v68 = AGGraphGetAttributeGraph();
    v30 = AGGraphGetCounter();

    v69 = MEMORY[0x1E69E6870];
    *(v67 + 56) = MEMORY[0x1E69E6810];
    *(v67 + 64) = v69;
    *(v67 + 32) = v30;
    v70 = AGGraphGetCurrentAttribute();
    if (v70 == v52)
    {
LABEL_223:
      __break(1u);
      goto LABEL_224;
    }

    v30 = v67;
    v71 = MEMORY[0x1E69E76D0];
    *(v67 + 96) = MEMORY[0x1E69E7668];
    *(v67 + 104) = v71;
    *(v67 + 72) = v70;
    *(v67 + 136) = MEMORY[0x1E69E6158];
    *(v67 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(v67 + 112) = 0x656956726F6C6F43;
    *(v67 + 120) = 0xE900000000000077;
    if (v15)
    {
      LOBYTE(v208) = v207.i8[0];
      v209[0] = &dword_18D018000;
      v211 = *&v67;
      v212 = v66;
      v221.i64[0] = a1;
      v221.i64[1] = v62;
      LOBYTE(v222) = v63;
      v214.i64[0] = "Animation: (%p) [%d] %{public}@ updated";
      v214.i64[1] = 39;
      LOBYTE(v215) = 2;
      v72 = v200;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
      (*(v202 + 8))(v72, v206);
    }

    else
    {
      v91 = a1;
      if (a1 == 20)
      {
        v92 = 3;
      }

      else
      {
        v92 = 4;
      }

      v18 = (bswap32(a1) | (4 * WORD1(a1)));
      v207.i32[0] = v207.u8[0];
      v93 = (v202 + 16);
      v191 = *(v202 + 16);
      v94 = v191(v204, v200, v206);
      a1 = 0;
      v214.i8[0] = 1;
      v203 = v92;
      v192 = v93;
      v193 = v91;
      v198 = 16 * v92;
      v199 = (v93 - 8);
      v197 = v30 + 32;
      do
      {
        v201 = &v182;
        MEMORY[0x1EEE9AC00](v94);
        a4 = (&v182 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
        v11 = &a4->u64[1];
        v96 = v203;
        v97 = &a4->i8[8];
        do
        {
          *(v97 - 1) = 0;
          *v97 = 0;
          v97 += 16;
          v96 = (v96 - 1);
        }

        while (v96);
        v31 = (v197 + 40 * a1);
        a2 = v203;
        while (1)
        {
          v98 = *(v30 + 16);
          if (a1 == v98)
          {
            break;
          }

          if (a1 >= v98)
          {
            goto LABEL_208;
          }

          ++a1;
          outlined init with copy of AnyTrackedValue(v31, &v221);
          v15 = v30;
          v99 = v223;
          __swift_project_boxed_opaque_existential_1(&v221, v223);
          *(v11 - 8) = CVarArg.kdebugValue(_:)(v18 | v207.i32[0], v99);
          *v11 = v100 & 1;
          v11 += 16;
          __swift_destroy_boxed_opaque_existential_1(&v221);
          v31 += 40;
          if (!--a2)
          {
            goto LABEL_76;
          }
        }

        v214.i8[0] = 0;
LABEL_76:
        v101 = v193;
        if (v193 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (a4->i8[8] == 1)
        {
          kdebug_trace_string();
        }

        if (a4[1].i8[8] == 1)
        {
          kdebug_trace_string();
        }

        if (a4[2].i8[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v101 != 20 && a4[3].i8[8] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v102 = *v199;
        v103 = v204;
        v104 = v206;
        (*v199)(v204, v206);
        v105 = __swift_project_value_buffer(v104, static OSSignpostID.continuation);
        v94 = v191(v103, v105, v104);
      }

      while ((v214.i8[0] & 1) != 0);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
      v106 = v206;
      v102(v204, v206);
      v102(v200, v106);
    }

LABEL_92:
    v35 = 0;
    a4 = v195;
    LODWORD(v11) = v184;
LABEL_143:
    specialized AnimatorState.addListeners(transaction:)(v186);

    a1 = v194;
    v31 = &static Color.Resolved.legacyInterpolation;
    v30 = &unk_1ED52E000;
LABEL_144:
    v33 = v188;
    v34 = v189;
    v32 = v187;
LABEL_145:
    *(&a4->i64[1] + 4) = LODWORD(v9) | (LODWORD(v32) << 32);
    *(a4[1].i64 + 4) = LODWORD(v33) | (LODWORD(v34) << 32);
    a4[1].f32[3] = v5;
    a4[2].i8[0] = 0;
    v39 = a4[2].i64[1];
    if (v39)
    {
      continue;
    }

    break;
  }
}

{
  LODWORD(v11) = a3;
  v230 = *MEMORY[0x1E69E9840];
  v206 = type metadata accessor for OSSignpostID();
  v202 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v15 = &v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v182 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v204 = &v182 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v200 = &v182 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v205 = &v182 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v196 = &v182 - v26;
  if (a4[2].i64[1])
  {
    Value = AGGraphGetValue();
    if (v28)
    {
      v29 = *Value;
    }

    else
    {
      v29 = -INFINITY;
    }
  }

  else
  {
    v29 = -INFINITY;
  }

  v30 = &unk_1ED52E000;
  v31 = &static Color.Resolved.legacyInterpolation;
  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    *(a1 + 20) = 1;
    goto LABEL_9;
  }

  if (*(a1 + 20) == 1)
  {
LABEL_9:
    LODWORD(v8) = *a1;
    LODWORD(v7) = *(a1 + 4);
    LODWORD(v6) = *(a1 + 8);
    v5 = *(a1 + 12);
    LODWORD(v4) = *(a1 + 16);
    if (one-time initialization token for legacyInterpolation != -1)
    {
      goto LABEL_210;
    }

    goto LABEL_10;
  }

  v35 = 0;
  v39 = a4[2].i64[1];
  if (!v39)
  {
    return;
  }

  while (2)
  {
    v207 = *a1;
    LODWORD(v4) = *(a1 + 16);
    v149 = *(v30 + 3896);

    if (v149 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (*v31)
    {
      v150 = v207;
    }

    else
    {
      v214.i8[0] = 2;
      ResolvedGradient.ColorSpace.convertIn(_:)(&v226, v207.f32[0], v207.u32[1], v207.f32[2], v207.f32[3]);
      v150 = v226;
    }

    v151.i64[0] = 0x4300000043000000;
    v151.i64[1] = 0x4300000043000000;
    v214 = vmulq_f32(v150, v151);
    LODWORD(v215) = v4;
    LOBYTE(v226) = 0;
    v152 = specialized AnimatorState.update(_:at:environment:)(&v214, v11, v29);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v57 = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v57)
    {
      v154 = 0;
    }

    else
    {
      v154 = CurrentAttribute;
    }

    if ((v152 & 1) == 0)
    {
      if (one-time initialization token for enabledCategories == -1)
      {
LABEL_170:
        if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
        {
          if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
            LODWORD(v226) = v154;
            BYTE4(v226) = CurrentAttribute == v57;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          specialized AnimatorState.nextUpdate()();
          goto LABEL_205;
        }

        __break(1u);
        goto LABEL_214;
      }

LABEL_212:
      v181 = CurrentAttribute;
      swift_once();
      CurrentAttribute = v181;
      goto LABEL_170;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      v180 = CurrentAttribute;
      swift_once();
      CurrentAttribute = v180;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_212;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
      LODWORD(v226) = v154;
      BYTE4(v226) = CurrentAttribute == v57;
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
      AGGraphAddTraceEvent();
    }

    v194 = a1;
    v195 = a4;
    v155 = one-time initialization token for animationState;
    v193 = v39;

    if (v155 != -1)
    {
LABEL_214:
      swift_once();
    }

    v56 = *(&static Signpost.animationState + 1);
    v156 = static Signpost.animationState;
    v52 = word_1ED5283E8;
    v30 = HIBYTE(word_1ED5283E8);
    v157 = byte_1ED5283EA;
    v158 = static os_signpost_type_t.end.getter();
    v226 = __PAIR128__(v56, v156);
    v227.i8[0] = v52;
    v227.i8[1] = v30;
    v227.i8[2] = v157;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_204;
    }

    v207.i32[0] = v158;
    v159 = one-time initialization token for _signpostLog;
    v55 = v193;

    if (v159 != -1)
    {
      swift_once();
    }

    v191 = v35;
    v54 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v57)
    {
      __break(1u);
      goto LABEL_216;
    }

    v55 = AGGraphGetAttributeGraph();
    Counter = AGGraphGetCounter();

    v161 = MEMORY[0x1E69E6870];
    *(v58 + 56) = MEMORY[0x1E69E6810];
    *(v58 + 64) = v161;
    *(v58 + 32) = Counter;
    v162 = AGGraphGetCurrentAttribute();
    if (v162 == v57)
    {
LABEL_216:
      __break(1u);
LABEL_217:
      swift_once();
      goto LABEL_33;
    }

    v163 = MEMORY[0x1E69E76D0];
    *(v58 + 96) = MEMORY[0x1E69E7668];
    *(v58 + 104) = v163;
    *(v58 + 72) = v162;
    *(v58 + 136) = MEMORY[0x1E69E6158];
    *(v58 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(v58 + 112) = 0x6465766C6F736552;
    *(v58 + 120) = 0xEB00000000524448;
    if (v30)
    {
      v213 = v207.i8[0];
      v211 = *&v54;
      v212 = &dword_18D018000;
      *&v226 = v156;
      *(&v226 + 1) = v56;
      v227.i8[0] = v52;
      v209[0] = "Animation: (%p) [%d] %{public}@ ended";
      v209[1] = 37;
      v210 = 2;
      v208 = *&v58;
      v164 = v196;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

      (*(v202 + 8))(v164, v206);
      goto LABEL_203;
    }

    v165 = v156;
    if (v156 == 20)
    {
      v166 = 3;
    }

    else
    {
      v166 = 4;
    }

    a1 = bswap32(v156) | (4 * WORD1(v156));
    a2 = v207.u8[0];
    v167 = v202 + 16;
    v197 = *(v202 + 16);
    v168 = (v197)(v205, v196, v206);
    v11 = 0;
    LOBYTE(v209[0]) = 1;
    v204 = v166;
    v202 = v167;
    v200 = (16 * v166);
    v201 = (v167 - 8);
    v207.i64[0] = v58;
    v198 = v165;
    v199 = (v58 + 32);
LABEL_180:
    v203 = &v182;
    MEMORY[0x1EEE9AC00](v168);
    a4 = (&v182 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = &a4->i8[8];
    v170 = v204;
    v171 = &a4->i8[8];
    do
    {
      *(v171 - 1) = 0;
      *v171 = 0;
      v171 += 16;
      --v170;
    }

    while (v170);
    v31 = &v199[5 * v11];
    v18 = v204;
    while (1)
    {
      v172 = *(v207.i64[0] + 16);
      if (v11 == v172)
      {
        LOBYTE(v209[0]) = 0;
LABEL_188:
        v175 = v198;
        if (v198 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (a4->i8[8] == 1)
        {
          kdebug_trace_string();
        }

        if (a4[1].i8[8] == 1)
        {
          kdebug_trace_string();
        }

        if (a4[2].i8[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v175 != 20 && a4[3].i8[8] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v176 = *v201;
        v30 = v205;
        v177 = v206;
        (*v201)(v205, v206);
        v178 = __swift_project_value_buffer(v177, static OSSignpostID.continuation);
        v168 = (v197)(v30, v178, v177);
        if ((v209[0] & 1) == 0)
        {

          v179 = v206;
          v176(v205, v206);
          v176(v196, v179);
LABEL_203:

LABEL_204:
          specialized AnimatorState.removeListeners()();

          a1 = v194;
          v195[2].i64[1] = 0;
LABEL_205:
          v226 = v214;
          v227.i32[0] = v215;
          Color.ResolvedHDR.animatableData.setter(&v226);

          *(a1 + 20) = 1;
          return;
        }

        goto LABEL_180;
      }

      if (v11 >= v172)
      {
        break;
      }

      ++v11;
      outlined init with copy of AnyTrackedValue(v31, &v226);
      v173 = v227.i64[1];
      v30 = v228.i64[0];
      __swift_project_boxed_opaque_existential_1(&v226, v227.i64[1]);
      *(v15 - 1) = CVarArg.kdebugValue(_:)(a1 | a2, v173);
      *v15 = v174 & 1;
      v15 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v226);
      v31 += 40;
      if (!--v18)
      {
        goto LABEL_188;
      }
    }

    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    swift_once();
LABEL_10:
    swift_beginAccess();
    if ((*v31 & 1) == 0)
    {
      v221.i8[0] = 2;
      ResolvedGradient.ColorSpace.convertIn(_:)(&v226, *&v8, LODWORD(v7), *&v6, v5);
      LODWORD(v7) = DWORD1(v226);
      LODWORD(v8) = v226;
      v5 = *(&v226 + 3);
      LODWORD(v6) = DWORD2(v226);
    }

    v9 = *&v8 * 128.0;
    v32 = *&v7 * 128.0;
    v33 = *&v6 * 128.0;
    v34 = v5 * 128.0;
    v5 = *&v4;
    if (a4[2].i8[0])
    {
      v35 = 0;
      goto LABEL_145;
    }

    v7 = v29;
    LODWORD(v8) = a4[1].i32[2];
    v36 = a4[1].f32[3];
    v37 = a4->f32[3];
    LODWORD(v6) = a4[1].i32[0];
    v38 = a4[1].f32[1];
    if (v9 == v37 && v32 == *&v6 && v33 == v38 && v34 == *&v8 && v5 == v36)
    {
      v35 = 0;
      v29 = v7;
      goto LABEL_145;
    }

    v203 = v15;
    v183 = v18;
    v187 = v32;
    v188 = v33;
    v189 = v34;
    AGGraphClearUpdate();
    v40 = a4[1];
    v226 = *a4;
    v227 = v40;
    v228 = a4[2];
    v195 = a4;
    v229 = a4[3].i32[0];
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v226, &v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
    v41 = *AGGraphGetValue();

    v42 = v41;
    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v43 = Transaction.effectiveAnimation.getter(v41);
    if (v43)
    {
      v44 = v43;
      goto LABEL_26;
    }

    v30 = 0x1ED52E000;
    if (!a2)
    {

      v35 = 0;
      a4 = v195;
      v29 = v7;
      v31 = &static Color.Resolved.legacyInterpolation;
      goto LABEL_144;
    }

    v44 = a2;
LABEL_26:
    v45 = v9 - v37;
    v46 = v187 - *&v6;
    v47 = v188 - v38;
    v48 = v189 - *&v8;
    if (v5 > v36)
    {
      v36 = v5;
    }

    v49 = v228.i64[1];
    v29 = *AGGraphGetValue();
    v194 = a1;
    v184 = v11;
    v185 = v44;
    v186 = v41;
    if (!v49)
    {
      v214.i64[0] = &type metadata for Color.ResolvedHDR;
      type metadata accessor for Color.ResolvedHDR.Type();
      type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == Color.ResolvedHDR._Animatable>.Type);
      v73 = swift_dynamicCast();
      if (v73)
      {
        v74 = v221.i64[0];
      }

      else
      {
        v74 = 0;
      }

      if (v73)
      {
        v75 = v221.i64[1];
      }

      else
      {
        v75 = 0;
      }

      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for AnimatorState);
      v76 = swift_allocObject();
      v77 = MEMORY[0x1E69E7CC0];
      *(v76 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v190 = v76;
      if (static Color.Resolved.legacyInterpolation == 1)
      {
        *(v76 + 32) = 0;
        *(v76 + 72) = 0;
        *(v76 + 40) = 0;
        *(v76 + 48) = 0;
        v78 = 0uLL;
      }

      else
      {
        v219.i8[0] = 2;
        ResolvedGradient.ColorSpace.convertIn(_:)(&v221, 0.0, 0, 0.0, 0.0);
        v76 = v190;
        v79.i64[0] = 0x4300000043000000;
        v79.i64[1] = 0x4300000043000000;
        v80 = v190;
        v190[2] = vmulq_f32(v221, v79);
        v80 += 2;
        v81 = static Color.Resolved.legacyInterpolation;
        v80[1].i32[0] = 0;
        v80[2].i64[1] = 0;
        v78 = 0uLL;
        if ((v81 & 1) == 0)
        {
          v219.i8[0] = 2;
          ResolvedGradient.ColorSpace.convertIn(_:)(&v221, 0.0, 0, 0.0, 0.0);
          v76 = v190;
          v82.i64[0] = 0x4300000043000000;
          v82.i64[1] = 0x4300000043000000;
          v78 = vmulq_f32(v221, v82);
        }
      }

      *(v76 + 80) = v78;
      *(v76 + 96) = 0;
      *(v76 + 104) = 1;
      *(v76 + 112) = v77;
      *(v76 + 120) = v77;
      *(v76 + 128) = 0;
      *(v76 + 136) = 0;
      *(v76 + 144) = 0;
      *(v76 + 152) = v77;
      *(v76 + 16) = v44;
      swift_beginAccess();
      *(v76 + 32) = v45;
      *(v76 + 36) = v46;
      *(v76 + 40) = v47;
      *(v76 + 44) = v48;
      *(v76 + 48) = v36;
      *(v76 + 136) = v74;
      *(v76 + 144) = v75;
      *(v76 + 56) = v29;
      *(v76 + 72) = v29;
      swift_retain_n();

      v84 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v83));
      v191 = 0;
      if (v85)
      {

        v86 = v76;
        v87 = 0;
        *(v86 + 64) = 0;
        LOBYTE(v88) = 1;
        goto LABEL_96;
      }

      if (v84 <= 0.0)
      {
        *(v76 + 64) = 0;
      }

      else
      {
        v89 = log2(v84 * 240.0);
        v90 = exp2(floor(v89 + 0.01)) * 0.00416666667;
        *(v76 + 64) = v90;
        if (v90 >= 0.0166666667)
        {

          v87 = 0;
          LOBYTE(v88) = 1;
LABEL_95:
          v86 = v190;
LABEL_96:
          *(v86 + 100) = v87;
          *(v86 + 104) = v88;
          v109 = AGGraphGetCurrentAttribute();
          v110 = v109;
          v207.i32[0] = *MEMORY[0x1E698D3F8];
          if (v109 == v207.i32[0])
          {
            v111 = 0;
          }

          else
          {
            v111 = v109;
          }

          (*(*v44 + 96))(&v214);
          v112 = v214;
          v113 = v215;
          v114 = v217;
          v208 = NAN;
          v209[0] = 0x7FF8000000000000;
          v211 = 1.0;
          v212 = 0x7FF8000000000000;
          v221 = v214;
          v222 = v215;
          v223 = v216;
          v115 = v216;
          v224 = *&v217;
          LODWORD(v204) = v218;
          LOBYTE(v225) = v218;
          static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v221, v209, &v212, &v211, &v208);
          v8 = v208;
          v4 = v209[0];
          v7 = v211;
          v6 = v212;
          if (one-time initialization token for enabledCategories != -1)
          {
            swift_once();
          }

          if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
          {
            __break(1u);
          }

          else
          {
            if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v116 = static CustomEventTrace.recorder) != 0)
            {
              v117 = v110 == v207.i32[0];
              v201 = v114;
              *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
              v118 = *(v116 + 16);
              v221.i32[0] = v111;
              v221.i8[4] = v117;
              v221.i64[1] = &type metadata for Color.ResolvedHDR;
              v222 = v4;
              v223 = v6;
              v224 = v7;
              v225 = v8;
              type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

              v119 = v118;
              AGGraphAddTraceEvent();
              outlined consume of Animation.Function(v112.i64[0], v112.i64[1], v113, v115, v201, v204);
            }

            else
            {
              outlined consume of Animation.Function(v112.i64[0], v112.i64[1], v113, v115, v114, v204);
            }

            v120 = one-time initialization token for animationState;

            if (v120 == -1)
            {
LABEL_107:
              v52 = *(&static Signpost.animationState + 1);
              a1 = static Signpost.animationState;
              LOBYTE(v15) = word_1ED5283E8;
              LOBYTE(v67) = HIBYTE(word_1ED5283E8);
              v121 = byte_1ED5283EA;
              LODWORD(v30) = static os_signpost_type_t.begin.getter();
              v221 = __PAIR128__(v52, a1);
              LOBYTE(v222) = v15;
              BYTE1(v222) = v67;
              BYTE2(v222) = v121;
              v122 = Signpost.isEnabled.getter();
              LODWORD(v62) = v207.i32[0];
              if ((v122 & 1) == 0)
              {
                v132 = v190;

                goto LABEL_114;
              }

              v123 = one-time initialization token for _signpostLog;

              if (v123 == -1)
              {
LABEL_109:
                LODWORD(v204) = v30;
                v124 = _signpostLog;
                OSSignpostID.init(log:object:)();
                type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
                v125 = swift_allocObject();
                *(v125 + 16) = xmmword_18DDAF080;
                if (AGGraphGetCurrentAttribute() == v62)
                {
                  __break(1u);
                }

                else
                {
                  v126 = AGGraphGetAttributeGraph();
                  v127 = AGGraphGetCounter();

                  v128 = MEMORY[0x1E69E6870];
                  *(v125 + 56) = MEMORY[0x1E69E6810];
                  *(v125 + 64) = v128;
                  *(v125 + 32) = v127;
                  v129 = AGGraphGetCurrentAttribute();
                  if (v129 != v62)
                  {
                    v30 = v125;
                    v130 = MEMORY[0x1E69E76D0];
                    *(v125 + 96) = MEMORY[0x1E69E7668];
                    *(v125 + 104) = v130;
                    *(v125 + 72) = v129;
                    *(v125 + 136) = MEMORY[0x1E69E6158];
                    *(v125 + 144) = lazy protocol witness table accessor for type String and conformance String();
                    *(v125 + 112) = 0x6465766C6F736552;
                    *(v125 + 120) = 0xEB00000000524448;
                    if ((v67 & 1) == 0)
                    {
                      if (a1 == 20)
                      {
                        v133 = 3;
                      }

                      else
                      {
                        v133 = 4;
                      }

                      a4 = (bswap32(a1) | (4 * WORD1(a1)));
                      v207.i32[0] = v204;
                      v134 = (v202 + 16);
                      v192 = *(v202 + 16);
                      v135 = v192(v203, v183, v206);
                      v11 = 0;
                      v214.i8[0] = 1;
                      v204 = v133;
                      v193 = v134;
                      v199 = (16 * v133);
                      v200 = v134 - 8;
                      v197 = a1;
                      v198 = v125 + 32;
                      do
                      {
                        v201 = &v182;
                        MEMORY[0x1EEE9AC00](v135);
                        v15 = &v182 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
                        a2 = (v15 + 8);
                        v137 = v204;
                        v138 = v15 + 8;
                        do
                        {
                          *(v138 - 1) = 0;
                          *v138 = 0;
                          v138 += 16;
                          --v137;
                        }

                        while (v137);
                        v31 = (v198 + 40 * v11);
                        v18 = v204;
                        while (1)
                        {
                          v139 = *(v30 + 16);
                          if (v11 == v139)
                          {
                            break;
                          }

                          if (v11 >= v139)
                          {
                            goto LABEL_209;
                          }

                          ++v11;
                          outlined init with copy of AnyTrackedValue(v31, &v221);
                          a1 = v30;
                          v140 = v223;
                          __swift_project_boxed_opaque_existential_1(&v221, v223);
                          *(a2 - 8) = CVarArg.kdebugValue(_:)(a4 | v207.i32[0], v140);
                          *a2 = v141 & 1;
                          a2 += 16;
                          __swift_destroy_boxed_opaque_existential_1(&v221);
                          v31 += 40;
                          if (!--v18)
                          {
                            goto LABEL_127;
                          }
                        }

                        v214.i8[0] = 0;
LABEL_127:
                        v142 = v197;
                        if (v197 == 20)
                        {
                          OSSignpostID.rawValue.getter();
                        }

                        kdebug_trace();
                        if (v15[8] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (v15[24] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (v15[40] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (v142 != 20 && v15[56] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (one-time initialization token for continuation != -1)
                        {
                          swift_once();
                        }

                        v143 = *v200;
                        v144 = v203;
                        v145 = v206;
                        (*v200)(v203, v206);
                        v146 = __swift_project_value_buffer(v145, static OSSignpostID.continuation);
                        v135 = v192(v144, v146, v145);
                      }

                      while ((v214.i8[0] & 1) != 0);
                      v147 = v190;

                      v148 = v206;
                      v143(v144, v206);
                      v143(v183, v148);

                      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
                      a4 = v195;
                      v195[2].i64[1] = v147;
                      goto LABEL_142;
                    }

                    LOBYTE(v208) = v204;
                    v209[0] = &dword_18D018000;
                    v211 = *&v125;
                    v212 = v124;
                    v221.i64[0] = a1;
                    v221.i64[1] = v52;
                    LOBYTE(v222) = v15;
                    v214.i64[0] = "Animation: (%p) [%d] %{public}@ started";
                    v214.i64[1] = 39;
                    LOBYTE(v215) = 2;
                    v131 = v183;
                    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
                    v132 = v190;

                    (*(v202 + 8))(v131, v206);

LABEL_114:
                    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
                    a4 = v195;
                    v195[2].i64[1] = v132;
LABEL_142:
                    LODWORD(v11) = v184;
                    v35 = v191;
                    goto LABEL_143;
                  }
                }

                __break(1u);
              }

LABEL_224:
              swift_once();
              goto LABEL_109;
            }
          }

          swift_once();
          goto LABEL_107;
        }
      }

      v107 = v191;
      v108 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v42);
      v87 = v108;
      v191 = v107;
      v88 = HIDWORD(v108) & 1;

      goto LABEL_95;
    }

    v219.i64[0] = __PAIR64__(LODWORD(v46), LODWORD(v45));
    v219.i64[1] = __PAIR64__(LODWORD(v48), LODWORD(v47));
    v220 = v36;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v226, &v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
    v221.i8[0] = 0;
    v190 = v49;
    specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v44, &v219, v41, v29);
    v50 = AGGraphGetCurrentAttribute();
    v51 = v44;
    v52 = v50;
    v30 = *MEMORY[0x1E698D3F8];
    if (v50 == v30)
    {
      v53 = 0;
    }

    else
    {
      v53 = v50;
    }

    LODWORD(v203) = v53;
    (*(*v51 + 96))(&v214);
    v55 = v214.i64[1];
    v54 = v214.i64[0];
    v56 = v215;
    v208 = NAN;
    v209[0] = 0x7FF8000000000000;
    v211 = 1.0;
    v212 = 0x7FF8000000000000;
    v221 = v214;
    v222 = v215;
    v223 = v216;
    v57 = v216;
    v58 = v217;
    v224 = *&v217;
    v207.i32[0] = v218;
    LOBYTE(v225) = v218;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v221, v209, &v212, &v211, &v208);
    v8 = v208;
    v4 = v209[0];
    v7 = v211;
    v6 = v212;
    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_217;
    }

LABEL_33:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_219:
      swift_once();
      goto LABEL_39;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v59 = static CustomEventTrace.recorder) != 0)
    {
      LODWORD(v201) = v30;
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v60 = *(v59 + 16);
      v221.i32[0] = v203;
      v221.i8[4] = v52 == v30;
      v221.i64[1] = &type metadata for Color.ResolvedHDR;
      v222 = v4;
      v223 = v6;
      v224 = v7;
      v225 = v8;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
      v203 = v61;

      v52 = v60;
      v30 = v201;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v54, v55, v56, v57, v58, v207.u8[0]);
    }

    else
    {
      outlined consume of Animation.Function(v54, v55, v56, v57, v58, v207.u8[0]);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v226, &v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_219;
    }

LABEL_39:
    v62 = *(&static Signpost.animationState + 1);
    a1 = static Signpost.animationState;
    v63 = word_1ED5283E8;
    v15 = HIBYTE(word_1ED5283E8);
    v64 = byte_1ED5283EA;
    v65 = static os_signpost_type_t.event.getter();
    v221 = __PAIR128__(v62, a1);
    LOBYTE(v222) = v63;
    BYTE1(v222) = v15;
    BYTE2(v222) = v64;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
      goto LABEL_92;
    }

    v207.i32[0] = v65;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v226, &v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v66 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v30)
    {
      __break(1u);
      goto LABEL_223;
    }

    v52 = v30;
    v68 = AGGraphGetAttributeGraph();
    v30 = AGGraphGetCounter();

    v69 = MEMORY[0x1E69E6870];
    *(v67 + 56) = MEMORY[0x1E69E6810];
    *(v67 + 64) = v69;
    *(v67 + 32) = v30;
    v70 = AGGraphGetCurrentAttribute();
    if (v70 == v52)
    {
LABEL_223:
      __break(1u);
      goto LABEL_224;
    }

    v30 = v67;
    v71 = MEMORY[0x1E69E76D0];
    *(v67 + 96) = MEMORY[0x1E69E7668];
    *(v67 + 104) = v71;
    *(v67 + 72) = v70;
    *(v67 + 136) = MEMORY[0x1E69E6158];
    *(v67 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(v67 + 112) = 0x6465766C6F736552;
    *(v67 + 120) = 0xEB00000000524448;
    if (v15)
    {
      LOBYTE(v208) = v207.i8[0];
      v209[0] = &dword_18D018000;
      v211 = *&v67;
      v212 = v66;
      v221.i64[0] = a1;
      v221.i64[1] = v62;
      LOBYTE(v222) = v63;
      v214.i64[0] = "Animation: (%p) [%d] %{public}@ updated";
      v214.i64[1] = 39;
      LOBYTE(v215) = 2;
      v72 = v200;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
      (*(v202 + 8))(v72, v206);
    }

    else
    {
      v91 = a1;
      if (a1 == 20)
      {
        v92 = 3;
      }

      else
      {
        v92 = 4;
      }

      v18 = (bswap32(a1) | (4 * WORD1(a1)));
      v207.i32[0] = v207.u8[0];
      v93 = (v202 + 16);
      v191 = *(v202 + 16);
      v94 = v191(v204, v200, v206);
      a1 = 0;
      v214.i8[0] = 1;
      v203 = v92;
      v192 = v93;
      v193 = v91;
      v198 = 16 * v92;
      v199 = (v93 - 8);
      v197 = v30 + 32;
      do
      {
        v201 = &v182;
        MEMORY[0x1EEE9AC00](v94);
        a4 = (&v182 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
        v11 = &a4->u64[1];
        v96 = v203;
        v97 = &a4->i8[8];
        do
        {
          *(v97 - 1) = 0;
          *v97 = 0;
          v97 += 16;
          v96 = (v96 - 1);
        }

        while (v96);
        v31 = (v197 + 40 * a1);
        a2 = v203;
        while (1)
        {
          v98 = *(v30 + 16);
          if (a1 == v98)
          {
            break;
          }

          if (a1 >= v98)
          {
            goto LABEL_208;
          }

          ++a1;
          outlined init with copy of AnyTrackedValue(v31, &v221);
          v15 = v30;
          v99 = v223;
          __swift_project_boxed_opaque_existential_1(&v221, v223);
          *(v11 - 8) = CVarArg.kdebugValue(_:)(v18 | v207.i32[0], v99);
          *v11 = v100 & 1;
          v11 += 16;
          __swift_destroy_boxed_opaque_existential_1(&v221);
          v31 += 40;
          if (!--a2)
          {
            goto LABEL_76;
          }
        }

        v214.i8[0] = 0;
LABEL_76:
        v101 = v193;
        if (v193 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (a4->i8[8] == 1)
        {
          kdebug_trace_string();
        }

        if (a4[1].i8[8] == 1)
        {
          kdebug_trace_string();
        }

        if (a4[2].i8[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v101 != 20 && a4[3].i8[8] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v102 = *v199;
        v103 = v204;
        v104 = v206;
        (*v199)(v204, v206);
        v105 = __swift_project_value_buffer(v104, static OSSignpostID.continuation);
        v94 = v191(v103, v105, v104);
      }

      while ((v214.i8[0] & 1) != 0);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
      v106 = v206;
      v102(v204, v206);
      v102(v200, v106);
    }

LABEL_92:
    v35 = 0;
    a4 = v195;
    LODWORD(v11) = v184;
LABEL_143:
    specialized AnimatorState.addListeners(transaction:)(v186);

    a1 = v194;
    v31 = &static Color.Resolved.legacyInterpolation;
    v30 = &unk_1ED52E000;
LABEL_144:
    v33 = v188;
    v34 = v189;
    v32 = v187;
LABEL_145:
    *(&a4->i64[1] + 4) = LODWORD(v9) | (LODWORD(v32) << 32);
    *(a4[1].i64 + 4) = LODWORD(v33) | (LODWORD(v34) << 32);
    a4[1].f32[3] = v5;
    a4[2].i8[0] = 0;
    v39 = a4[2].i64[1];
    if (v39)
    {
      continue;
    }

    break;
  }
}

uint64_t StaticIf<>.init(_:then:else:)(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  a2();
  type metadata accessor for StaticIf();
  a4();
  v9 = *(*(a6 - 8) + 8);

  return v9(a1, a6);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnabledKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnabledKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnabledKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledKey>, &type metadata for EnabledKey, &protocol witness table for EnabledKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnabledKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA014GeometryReaderC033_7D6D22DF7076CCC1FC5284D8E2D1B049LLV_Tt2t4B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v101 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v80 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(v7);
  v74 = v7;
  v73 = v8;
  v9 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(v7);
  v10 = *(a2 + 16);
  v96 = *a2;
  v97 = v10;
  v98 = *(a2 + 32);
  v11 = v96;
  outlined init with copy of _GraphInputs(&v96, &v88);
  v81 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v12 = *MEMORY[0x1E698D3F8];
  v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v83 = DWORD1(v98);
  v75 = a4;
  v78 = v11;
  if ((WORD2(v98) & 0x1000) != 0)
  {
    v82 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24WithinAccessibilityRotorV_Tt2g5(v11);
  }

  else
  {
    v82 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 20) = 1;
  v79 = v12;
  if (v80 & 1 | ((v83 & 0x22) != 0) || (v15 = v12, (v82 & 1) != 0))
  {
    v16 = v97;
    swift_beginAccess();
    *&v88 = __PAIR64__(*(v16 + 16), a1);
    DWORD2(v88) = v12;
    *&v89[0] = MEMORY[0x1E69E7CC0];
    *(&v89[0] + 1) = MEMORY[0x1E69E7CC0];
    LODWORD(v89[1]) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<GeometryReaderLayout>, lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout, &type metadata for GeometryReaderLayout, type metadata accessor for DynamicLayoutComputer);
    lazy protocol witness table accessor for type DynamicLayoutComputer<GeometryReaderLayout> and conformance DynamicLayoutComputer<A>();
    v17 = Attribute.init<A>(body:value:flags:update:)();
    swift_bridgeObjectRelease_n();
    *(v14 + 16) = v17;
    *(v14 + 20) = 0;
    v18 = *(a2 + 64);
    LODWORD(v88) = *(a2 + 72);
    *(&v88 + 4) = __PAIR64__(v17, v18);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v15 = Attribute.init<A>(body:value:flags:update:)();
  }

  v19 = *(a2 + 48);
  v92 = *(a2 + 32);
  v93 = v19;
  v94 = *(a2 + 64);
  v95 = *(a2 + 80);
  v20 = *(a2 + 16);
  v90 = *a2;
  v91 = v20;
  DWORD1(v92) = v83 & 0xFFFFFFFD;
  if (v9 & 1) != 0 && (v13)
  {
    v21 = v93;
    *&v99[0] = v93;
    v22 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v88);

    v23 = *(v21 + 16);
    if (v22 != v23)
    {
      if (v22 >= v23)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      if (*(v21 + 16 * v22 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        specialized Array.remove(at:)(v22);
        v21 = v93;
      }
    }

    *&v88 = v21;
    v24 = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);

    v25 = *(v21 + 16);
    if (v24 != v25)
    {
      if (v24 >= v25)
      {
        goto LABEL_51;
      }

      if (*(v21 + 16 * v24 + 32) == &type metadata for UpdateScrollStateRequestKey)
      {
        specialized Array.remove(at:)(v24);
      }
    }
  }

  else
  {
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v88);
  }

  v26 = v79;
  if (v81 != v79)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, v79);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, 1);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(&v90, 0xFF00000000);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(&v90, v79);
  }

  v99[2] = v92;
  v99[3] = v93;
  v99[4] = v94;
  v100 = v95;
  v99[0] = v90;
  v99[1] = v91;
  v27 = _s7SwiftUI16DynamicContainerV04makeD07adaptor6inputs14AttributeGraph0H0VyAC4InfoVG_AA12_ViewOutputsVtx_AA01_K6InputsVtAA0cD7AdaptorRzlFZAA0c6LayoutkN0V_Tt2B5(&v84, a3 | (v15 << 32), partial apply for specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:), v14, v99);

  v87 = v27;
  v28 = swift_beginAccess();
  if ((*(v14 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v28);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<GeometryReaderLayout>, lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout, &type metadata for GeometryReaderLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v29);
    AGGraphMutateAttribute();
    v26 = v79;
  }

  if (!((v80 | v82) & 1 | (v81 != v26)))
  {
    outlined destroy of _GraphInputs(&v96);
    v38 = v75;
    goto LABEL_43;
  }

  v77 = AGCreateWeakAttribute();
  v30 = AGCreateWeakAttribute();
  v31 = v30;
  v72 = HIDWORD(v30);
  v32 = AGCreateWeakAttribute();
  v33 = v32;
  v71 = HIDWORD(v32);
  v65 = *(a2 + 64);
  v34 = AGCreateWeakAttribute();
  v35 = v34;
  v70 = HIDWORD(v34);
  v64 = *(a2 + 60);
  v36 = AGCreateWeakAttribute();
  v37 = v36;
  v69 = HIDWORD(v36);
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v78) == v26)
  {
    LODWORD(v67) = 0;
    v68 = 0;
  }

  else
  {
    v39 = AGCreateWeakAttribute();
    v67 = HIDWORD(v39);
    v68 = v39;
  }

  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(v84);
  v40 = AGCreateWeakAttribute();
  v41 = v40;
  v66 = HIDWORD(v40);
  if ((v80 | v82))
  {
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E6F90]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_18DDA6EB0;
    *(v42 + 56) = &type metadata for DynamicLayoutScrollable;
    *(v42 + 64) = &protocol witness table for DynamicLayoutScrollable;
    v43 = swift_allocObject();
    *(v42 + 32) = v43;
    *(v43 + 16) = v77;
    *(v43 + 24) = v31;
    *(v43 + 28) = v72;
    *(v43 + 32) = v33;
    *(v43 + 36) = v71;
    *(v43 + 40) = v35;
    *(v43 + 44) = v70;
    *(v43 + 48) = v37;
    *(v43 + 52) = v69;
    *(v43 + 56) = v68;
    *(v43 + 60) = v67;
    *(v43 + 64) = v41;
    *(v43 + 68) = v66;
    *&v88 = v42;
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
    v44 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v88) = 0;
    v45 = v44;
    v26 = v79;
    PreferencesOutputs.subscript.setter(v45, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
  }

  if (v81 != v26)
  {
    *(&v89[0] + 1) = &type metadata for DynamicLayoutScrollable;
    *&v89[1] = &protocol witness table for DynamicLayoutScrollable;
    v46 = swift_allocObject();
    *&v88 = v46;
    *(v46 + 16) = v77;
    *(v46 + 24) = v31;
    *(v46 + 28) = v72;
    *(v46 + 32) = v33;
    *(v46 + 36) = v71;
    *(v46 + 40) = v35;
    *(v46 + 44) = v70;
    *(v46 + 48) = v37;
    *(v46 + 52) = v69;
    *(v46 + 56) = v68;
    *(v46 + 60) = v67;
    *(v46 + 64) = v41;
    *(v46 + 68) = v66;
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection);
    v47 = Attribute.init<A>(body:value:flags:update:)();
    __swift_destroy_boxed_opaque_existential_1(&v88);
    *&v88 = v74;
    v48 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    v49 = *(v74 + 16);
    if (v48 == v49)
    {
LABEL_37:
      memset(&v89[4] + 8, 0, 28);
      *(&v89[3] + 8) = 0u;
      *&v88 = __PAIR64__(v64, v65);
      *(&v88 + 1) = __PAIR64__(v47, DWORD2(v97));
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v54 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v55 = specialized CachedEnvironment.attribute<A>(id:_:)(v54);
      v56 = swift_endAccess();
      LODWORD(v89[0]) = v55;
      *(v89 + 8) = v96;
      *(&v89[1] + 8) = v97;
      *(&v89[2] + 8) = v98;
      MEMORY[0x1EEE9AC00](v56);
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v74, v73, partial apply for implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:));
      outlined destroy of ScrollStateRequestTransform(&v88);
      goto LABEL_41;
    }

    if (v48 < v49)
    {
      if (*(v74 + 16 * v48 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        *&v88 = __PAIR64__(v47, v81);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for (_:)();
        lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout();
        v50 = Attribute.init<A>(body:value:flags:update:)();
        v51 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(v84);
        if ((v51 & 0x100000000) != 0)
        {
          v52 = v26;
        }

        else
        {
          v52 = v51;
        }

        *&v88 = __PAIR64__(v52, v50);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]]();
        _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
        lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>();
        v53 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v88) = 0;
        v26 = v79;
        PreferencesOutputs.subscript.setter(v53, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey);
      }

      goto LABEL_37;
    }

    goto LABEL_50;
  }

  outlined destroy of _GraphInputs(&v96);
LABEL_41:
  v38 = v75;
  if (v82)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v78);
    v57 = *(a2 + 48);
    v89[1] = *(a2 + 32);
    v89[2] = v57;
    v89[3] = *(a2 + 64);
    LODWORD(v89[4]) = *(a2 + 80);
    v58 = *(a2 + 16);
    v88 = *a2;
    v89[0] = v58;
    (*(v59 + 8))(&v88, &v84);
  }

LABEL_43:
  if ((v83 & 2) != 0)
  {
    v60 = *(v14 + 16);
    v62 = *(v14 + 20);

    if (v62)
    {
      v60 = v26;
    }

    v61 = v85 | 0x80;
  }

  else
  {

    v61 = v85;
    v60 = v86;
  }

  v89[1] = v92;
  v89[2] = v93;
  v89[3] = v94;
  LODWORD(v89[4]) = v95;
  v88 = v90;
  v89[0] = v91;
  outlined destroy of _ViewInputs(&v88);

  *v38 = v84;
  *(v38 + 8) = v61;
  *(v38 + 12) = v60;
  return result;
}

unint64_t lazy protocol witness table accessor for type DynamicLayoutComputer<GeometryReaderLayout> and conformance DynamicLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type DynamicLayoutComputer<GeometryReaderLayout> and conformance DynamicLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type DynamicLayoutComputer<GeometryReaderLayout> and conformance DynamicLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for DynamicLayoutComputer<GeometryReaderLayout>, lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout, &type metadata for GeometryReaderLayout, type metadata accessor for DynamicLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicLayoutComputer<GeometryReaderLayout> and conformance DynamicLayoutComputer<A>);
  }

  return result;
}

uint64_t SecondaryChild.value.getter@<X0>(unint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v65 = a5;
  v9 = a1;
  v64 = a6;
  v80 = *MEMORY[0x1E69E9840];
  v10 = HIDWORD(a1);
  v67 = type metadata accessor for ObservationTracking._AccessList();
  v11 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v58 - v17;
  type metadata accessor for ObservationTracking._AccessList?();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v58 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v68 = &v58 - v25;
  v66 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v69 = &v58 - v30;
  v72 = a2;
  v73 = a3;
  v74 = a4;
  v75 = v65;
  v76 = v9;
  v77 = v10;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v31 = static ObservationCenter._current;
  swift_beginAccess();
  v32 = pthread_getspecific(v31[2]);
  if (!v32)
  {
    v33 = swift_slowAlloc();
    pthread_setspecific(v31[2], v33);
    v79 = type metadata accessor for ObservationCenter();
    v31 = v31[3];
    *&v78 = v31;
    outlined init with take of Any(&v78, v33);

    v32 = v33;
  }

  outlined init with copy of Any(v32, &v78);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v34 = v70;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v36 = v66;
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
    *(v34 + 24) = v31;
    goto LABEL_9;
  }

  v59 = v13;
  v60 = CurrentAttribute;
  swift_beginAccess();
  v65 = *(v34 + 24);
  *(v34 + 24) = MEMORY[0x1E69E7CC0];
  v37 = v67;
  v38 = (*(v11 + 56))(v23, 1, 1, v67);
  MEMORY[0x1EEE9AC00](v38);
  *(&v58 - 4) = a3;
  *(&v58 - 3) = partial apply for closure #1 in SecondaryChild.value.getter;
  *(&v58 - 2) = &v71;
  v39 = type metadata accessor for Error();
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v23, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v58 - 6), v19, v39, a3, MEMORY[0x1E69E7288], &v70);
  a2 = *(v36 + 32);
  a2(v69, v28, a3);
  v40 = v68;
  outlined init with take of ObservationTracking._AccessList?(v23, v68);
  v41 = v61;
  outlined init with copy of ObservationTracking._AccessList?(v40, v61);
  if ((*(v11 + 48))(v41, 1, v37) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v40);
    v42 = v41;
    v43 = v64;
    goto LABEL_12;
  }

  v19 = *(v11 + 32);
  v44 = v63;
  v19(v63, v41, v37);
  (*(v11 + 16))(v62, v44, v37);
  v31 = *(v34 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v34 + 24) = v31;
  v58 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v47 = v31[2];
  v46 = v31[3];
  if (v47 >= v46 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v46 > 1, v47 + 1, 1, v31);
  }

  v31[2] = v47 + 1;
  v48 = v31 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v47;
  v11 = v58;
  v37 = v67;
  v19(v48, v62, v67);
  *(v34 + 24) = v31;
  (*(v11 + 8))(v63, v37);
  v43 = v64;
  v42 = v68;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v42);
  a2(v43, v69, a3);
  v49 = *(v34 + 24);
  v50 = *(v49 + 16);
  if (v50)
  {
    v52 = *(v11 + 16);
    v51 = v11 + 16;
    v68 = *(v34 + 24);
    v69 = v52;
    v53 = v49 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
    v54 = *(v51 + 56);

    v55 = v60;
    v56 = v59;
    do
    {
      (v69)(v56, v53, v37);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v55, v56);
      (*(v51 - 8))(v56, v37);
      v53 += v54;
      --v50;
    }

    while (v50);
  }

  *(v34 + 24) = v65;
}

uint64_t closure #1 in SecondaryChild.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  v10[8] = a2;
  v10[9] = a3;
  v10[10] = a4;
  v10[11] = a5;
  v8 = type metadata accessor for _OverlayPreferenceModifier();
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in closure #1 in SecondaryChild.value.getter, v10, v8, a3, a6);
}

uint64_t closure #1 in closure #1 in SecondaryChild.value.getter@<X0>(void (**a1)(char *)@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v23 = a5;
  v24 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v21 = *(v11 - 8);
  v22 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  v18 = *a1;
  SecondaryChild.preferenceValue.getter(a2, v13);
  v19 = *(v14 + 48);
  if (v19(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(a4 + 16))(a3, a4);
    if (v19(v13, 1, AssociatedTypeWitness) != 1)
    {
      (*(v21 + 8))(v13, v22);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v13, AssociatedTypeWitness);
  }

  v18(v17);
  return (*(v14 + 8))(v17, AssociatedTypeWitness);
}

uint64_t SecondaryChild.preferenceValue.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = HIDWORD(a1);
  v4 = *MEMORY[0x1E698D3F8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = AssociatedTypeWitness;
  if (v4 == v3)
  {
    v7 = *(AssociatedTypeWitness - 8);
    v8 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v12 = *(v6 - 8);
    (*(v12 + 16))(a2, Value, v6);
    v7 = v12;
    v8 = 0;
  }

  v10 = *(v7 + 56);

  return v10(a2, v8, 1, v6);
}

uint64_t protocol witness for ViewList.count(style:) in conformance ModifiedViewList(uint64_t *a1)
{
  v2 = *a1;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v6 = v2;
  return (*(v4 + 16))(&v6, v3, v4);
}

char *storeEnumTagSinglePayload for _OverlayStyleModifier(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64) + 1;
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
      if (*(v5 + 64) != -1)
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

uint64_t specialized static Text.Measurements._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  swift_beginAccess();
  LODWORD(v4) = *(v4 + 16);
  type metadata accessor for TextSizeCache();
  v5 = swift_allocObject();
  v5[2] = 0;
  type metadata accessor for PropertyList.Tracker();
  v6 = swift_allocObject();
  type metadata accessor for AtomicBuffer<TrackerData>();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = MEMORY[0x1E69E7CC8];
  *(v7 + 24) = 0;
  *(v7 + 32) = v8;
  v9 = MEMORY[0x1E69E7CC0];
  *(v7 + 40) = v8;
  *(v7 + 48) = v9;
  *(v7 + 56) = 0;
  *(v6 + 16) = v7;
  v5[3] = v6;
  v5[4] = v9;
  type metadata accessor for SuffixCache();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v5[5] = v10;
  specialized _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(v4, v5, a2);
}

uint64_t specialized _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(int a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for BoxVTable<Text.Measurements.Box>(0, &lazy cache variable for type metadata for BoxVTable<Text.Measurements.Box>);
  v8 = v7;
  result = UnsafeHeterogeneousBuffer.allocate(bytes:)(32);
  *result = v8;
  *(result + 8) = 32;
  *(result + 16) = a1;
  *(result + 24) = a2;
  v10 = *v3;
  if (!*v3)
  {
    goto LABEL_17;
  }

  if (result - v10 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (result - v10 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = *(v3 + 3);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v3 + 3) = v13;
  if (a3 < 0xFFFFFFFF80000000)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a3 < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  *(result + 12) = *(result + 12) & 0x80000000 | a3;
}

void *assignWithCopy for _OverlayPreferenceModifier(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _FixedSizeLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t key path setter for EnvironmentValues.layoutDirection : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV015LayoutDirectionF0VG_Tt2B5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV015LayoutDirectionK0VG_Ttg5(v4, *a2);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<TextCaseKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TextCaseKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextCaseKey>, &type metadata for TextCaseKey, &protocol witness table for TextCaseKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextCaseKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TextCaseKey>>);
    }
  }
}

void protocol witness for static View._makeView(view:inputs:) in conformance EmptyContent(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = *MEMORY[0x1E698D3F8];
  *(a1 + 8) = 0;
  *(a1 + 12) = v1;
}

uint64_t ViewModifier.requiring<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v3, a2);
  return (*(v6 + 32))(a3, v8, a2);
}

{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InterfaceIdiomPredicate();
  (*(v6 + 16))(v8, v3, a2);
  return StaticIf<>.init<>(_:then:)(v8, a2, a3);
}

{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContainerContextPredicate();
  (*(v6 + 16))(v8, v3, a2);
  return StaticIf<>.init<>(_:then:)(v8, a2, a3);
}

uint64_t one-time initialization function for v6_1()
{
  result = swiftUI_v6_1_os_versions();
  static Semantics.v6_1 = HIDWORD(result);
  return result;
}

uint64_t specialized PreferenceValues.Entry.subscript.setter(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v7);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  __swift_destroy_boxed_opaque_existential_1(v2 + 24);
  outlined init with take of Any(&v7, (v2 + 24));
  result = type metadata accessor for PreferenceValues.Value();
  *(v2 + 16) = *(a1 + *(result + 28));
  return result;
}

uint64_t PlatformViewRepresentableContext.environment.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + 32) == 1)
  {
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    v3 = static Update._lock;
    _MovableLockLock(static Update._lock);
    specialized static Update.begin()();
    InputValue = AGGraphGetInputValue();
    v6 = *InputValue;
    v5 = InputValue[1];
    *a1 = v6;
    a1[1] = v5;

    static Update.end()();

    return _MovableLockUnlock(v3);
  }

  else
  {
    v8 = *(v1 + 24);
    *a1 = *(v1 + 16);
    a1[1] = v8;
  }
}

uint64_t LeafLayoutEnvironment.updateValue()()
{
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *Value;
  result = AGGraphGetOutputValue();
  if (result)
  {
    if ((v3 & 1) == 0)
    {
      return result;
    }

    v6 = swift_retain_n();
    v7 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v6);

    if ((v7 & 1) == 0)
    {
    }
  }

  else
  {
  }

  v8 = *(v0 + 8);
  PropertyList.Tracker.reset()();
  if (v4)
  {
    v9 = *(v4 + 64);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v8 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v10 + 16));
  *(v10 + 24) = v9;
  os_unfair_lock_unlock((v10 + 16));

  AGGraphSetOutputValue();
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = a4 >> 1;
  v10 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = *v5;
  v11 = *(*v5 + 2);
  v8 = v11 + v10;
  if (__OFADD__(v11, v10))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = a3;
  v7 = a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v13 = *(v4 + 3) >> 1, v13 < v8))
  {
    if (v11 <= v8)
    {
      v14 = v11 + v10;
    }

    else
    {
      v14 = v11;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v14, 1, v4);
    v4 = result;
    v13 = *(result + 24) >> 1;
  }

  v15 = v13 - *(v4 + 2);
  if (v9 == v6)
  {
    if (v10 <= 0)
    {
      v10 = 0;
      v8 = v6;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v15 < v10)
  {
    __break(1u);
  }

  else
  {
    result = swift_arrayInitWithCopy();
    if (v10 <= 0)
    {
LABEL_16:
      v8 = v9;
LABEL_17:
      if (v10 != v15)
      {
        result = swift_unknownObjectRelease();
LABEL_19:
        *v5 = v4;
        return result;
      }

LABEL_23:
      v19 = *(v4 + 2);
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      outlined init with copy of PreferenceValues.Entry?(&v35, &v31, &lazy cache variable for type metadata for PreferenceValues.Entry?, &type metadata for PreferenceValues.Entry, type metadata accessor for HitTestableEvent?);
      while (v31)
      {
        outlined destroy of HitTestableEvent?(&v31, &lazy cache variable for type metadata for PreferenceValues.Entry?);
        v21 = *(v4 + 3);
        v22 = v21 >> 1;
        if ((v21 >> 1) < v19 + 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v19 + 1, 1, v4);
          v22 = *(v4 + 3) >> 1;
        }

        outlined init with copy of PreferenceValues.Entry?(&v35, v29, &lazy cache variable for type metadata for PreferenceValues.Entry?, &type metadata for PreferenceValues.Entry, type metadata accessor for HitTestableEvent?);
        if (*&v29[0])
        {
          if (v19 <= v22)
          {
            v23 = v22;
          }

          else
          {
            v23 = v19;
          }

          v24 = &v4[56 * v19 + 32];
          while (1)
          {
            v31 = v29[0];
            v32 = v29[1];
            v33 = v29[2];
            v34 = v30;
            v25 = v23;
            if (v23 == v19)
            {
              break;
            }

            result = outlined destroy of HitTestableEvent?(&v35, &lazy cache variable for type metadata for PreferenceValues.Entry?);
            v27 = v32;
            v26 = v33;
            v28 = v31;
            *(v24 + 48) = v34;
            *(v24 + 16) = v27;
            *(v24 + 32) = v26;
            *v24 = v28;
            if (v8 == v9)
            {
              v38 = 0;
              v36 = 0u;
              v37 = 0u;
              v8 = v9;
              v35 = 0u;
            }

            else
            {
              if (v8 < v6 || v8 >= v9)
              {
                goto LABEL_45;
              }

              outlined init with copy of PreferenceValues.Entry(v7 + 56 * v8++, &v35);
            }

            outlined init with copy of PreferenceValues.Entry?(&v35, v29, &lazy cache variable for type metadata for PreferenceValues.Entry?, &type metadata for PreferenceValues.Entry, type metadata accessor for HitTestableEvent?);
            v24 += 56;
            ++v19;
            v23 = v25;
            if (!*&v29[0])
            {
              goto LABEL_25;
            }
          }

          outlined destroy of PreferenceValues.Entry(&v31);
          v20 = v25;
          v19 = v25;
        }

        else
        {
LABEL_25:
          outlined destroy of HitTestableEvent?(v29, &lazy cache variable for type metadata for PreferenceValues.Entry?);
          v20 = v19;
        }

        *(v4 + 2) = v20;
        outlined init with copy of PreferenceValues.Entry?(&v35, &v31, &lazy cache variable for type metadata for PreferenceValues.Entry?, &type metadata for PreferenceValues.Entry, type metadata accessor for HitTestableEvent?);
      }

      outlined destroy of HitTestableEvent?(&v35, &lazy cache variable for type metadata for PreferenceValues.Entry?);
      swift_unknownObjectRelease();
      result = outlined destroy of HitTestableEvent?(&v31, &lazy cache variable for type metadata for PreferenceValues.Entry?);
      goto LABEL_19;
    }

    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, v10);
    v18 = v16 + v10;
    if (!v17)
    {
      *(v4 + 2) = v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t static _VariadicView_ViewRoot.makeView(root:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(__int128 *__return_ptr)@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v83 = *MEMORY[0x1E69E9840];
  v6 = a2[3];
  v7 = a2[1];
  v79 = a2[2];
  v80 = v6;
  v8 = a2[3];
  v81 = a2[4];
  v9 = a2[1];
  v77 = *a2;
  v78 = v9;
  v68 = v79;
  v69 = v8;
  v70 = a2[4];
  v10 = *a1;
  v82 = *(a2 + 20);
  v71 = *(a2 + 20);
  v66 = v77;
  v67 = v7;
  a3(&v60);
  LODWORD(v70) = *MEMORY[0x1E698D3F8];
  *(&v70 + 1) = MEMORY[0x1E69E7CD0];
  LOBYTE(v71) = 0;
  v72 = 0;
  v73 = 0;
  swift_weakInit();
  v74 = 0;
  v75 = 0;
  v76 = -1;
  v66 = v77;
  v67 = v78;
  v68 = v79;
  v69 = 0uLL;
  outlined init with copy of _GraphInputs(&v77, &v54);
  v11 = _ViewListOutputs.makeAttribute(inputs:)(&v66);
  outlined destroy of _ViewListInputs(&v66);
  outlined destroy of _ViewListOutputs(&v60);
  static DynamicPropertyCache.fields(of:)(a4, &v66);
  v12 = v66;
  v13 = v67;
  v14 = DWORD1(v67);
  v68 = v79;
  v69 = v80;
  v70 = v81;
  v71 = v82;
  v66 = v77;
  v67 = v78;
  v25 = v14;
  v26 = v10;
  LODWORD(v42) = v10;
  v54 = v12;
  v28 = v13;
  LOBYTE(v55) = v13;
  DWORD1(v55) = v14;
  outlined init with copy of _ViewInputs(&v77, &v60);
  static _VariadicView_ViewRoot.makeBody(root:list:inputs:fields:)(&v48, &v60, &v42, v11, &v66, &v54);
  v15 = v48;
  v24 = v60;
  v27 = v61;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v50 = v79;
  v51 = v80;
  v52 = v81;
  v53 = v82;
  v48 = v77;
  v49 = v78;
  v59 = v82;
  v18 = v79;
  LODWORD(v50) = 0;
  LODWORD(v36) = v15;
  v54 = v77;
  v55 = v78;
  v57 = v80;
  v58 = v81;
  v56 = v50;
  v44 = v50;
  v45 = v80;
  v46 = v81;
  v47 = v82;
  v42 = v77;
  v43 = v78;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = *(AssociatedConformanceWitness + 24);
  outlined init with copy of _ViewInputs(&v77, &v60);
  outlined init with copy of _ViewInputs(&v54, &v60);
  v20(v31, &v36, &v42, AssociatedTypeWitness, AssociatedConformanceWitness);
  v62 = v44;
  v63 = v45;
  v64 = v46;
  v65 = v47;
  v60 = v42;
  v61 = v43;
  outlined destroy of _ViewInputs(&v60);
  LODWORD(v50) = v18;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v31, &v48);
    AGSubgraphEndTreeElement();
  }

  v44 = v50;
  v45 = v51;
  v46 = v52;
  v47 = v53;
  v42 = v48;
  v43 = v49;
  outlined destroy of _ViewInputs(&v42);
  v21 = v31[0];
  v22 = v31[1];
  if (v27)
  {
    v38 = v68;
    v39 = v69;
    v40 = v70;
    v41 = v71;
    v36 = v66;
    v37 = v67;
    outlined destroy of _ViewInputs(&v36);
  }

  else
  {
    v35 = v24;
    v30 = v26;
    v32 = v12;
    v33 = v28;
    v34 = v25;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v30, &v32, a4);
    v38 = v68;
    v39 = v69;
    v40 = v70;
    v41 = v71;
    v36 = v66;
    v37 = v67;
    outlined destroy of _ViewInputs(&v36);
  }

  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a5 = v21;
  a5[1] = v22;
  return result;
}

Swift::Void __swiftcall _ConditionalContent.Container.updateValue()()
{
  v2 = v0;
  v57 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for _ConditionalContent.Info();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v43 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v43 - v9;
  v54 = type metadata accessor for Optional();
  v10 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  v19 = type metadata accessor for _ConditionalContent();
  v50 = *(v19 - 8);
  v51 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v55 = &v43 - v20;
  v48 = v1;
  _ConditionalContent.Container.content.getter(&v43 - v20);
  OutputValue = AGGraphGetOutputValue();
  v52 = v2;
  if (OutputValue)
  {
    (*(v4 + 16))(v18, OutputValue, v3);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  (*(v4 + 56))(v18, v22, 1, v3);
  v23 = *(v10 + 16);
  v56 = v18;
  v24 = v54;
  v23(v15, v18, v54);
  v25 = v10;
  v26 = *(v4 + 48);
  v27 = v26(v15, 1, v3);
  v53 = v25;
  if (v27 == 1)
  {
    (*(v25 + 8))(v15, v24);
  }

  else
  {
    v28 = _ConditionalContent.Info.matches(_:)(v55);
    v44 = *(v4 + 8);
    v45 = v4 + 8;
    v44(v15, v3);
    if (v28)
    {
      v29 = AGGraphGetOutputValue();
      if (v29)
      {
        v30 = v46;
        (*(v4 + 16))(v46, v29, v3);
        v32 = v50;
        v31 = v51;
        v33 = v55;
        v34 = (*(v50 + 24))(v30, v55, v51);
        MEMORY[0x1EEE9AC00](v34);
        *(&v43 - 2) = v52;
        *(&v43 - 1) = swift_getWitnessTable();
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v30, closure #1 in StatefulRule.value.setterpartial apply, (&v43 - 4), v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v35);
        (*(v53 + 8))(v56, v24);
        (*(v32 + 8))(v33, v31);
        v44(v30, v3);
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  v23(v12, v56, v24);
  if (v26(v12, 1, v3) == 1)
  {
    v36 = v53;
    (*(v53 + 8))(v12, v24);
    v37 = v52;
  }

  else
  {
    v38 = v47;
    (*(v4 + 32))(v47, v12, v3);
    v37 = v52;
    _ConditionalContent.Container.eraseInfo(_:)(v38, v52);
    (*(v4 + 8))(v38, v3);
    v36 = v53;
  }

  v39 = v49;
  v40 = v55;
  _ConditionalContent.Container.makeInfo(_:)(v55, v37, v49);
  MEMORY[0x1EEE9AC00](v41);
  *(&v43 - 2) = v37;
  *(&v43 - 1) = swift_getWitnessTable();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v39, partial apply for closure #1 in StatefulRule.value.setter, (&v43 - 4), v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v42);
  (*(v4 + 8))(v39, v3);
  (*(v36 + 8))(v56, v24);
  (*(v50 + 8))(v40, v51);
}

uint64_t getEnumTagSinglePayload for _ConditionalContent.Info(_DWORD *a1, int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v7 = (v3 & 0xFFFFFFFFFFFFFFF8) + 16;
  v8 = v7 & 0xFFFFFFF8;
  v9 = a2 - 2147483646;
  if ((v7 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  if (v11 == 4)
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  else if (v11 == 2)
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
LABEL_5:
      v5 = *((a1 + v3 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v5 >= 0xFFFFFFFF)
      {
        LODWORD(v5) = -1;
      }

      return (v5 + 1);
    }
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return (v8 | v13) ^ 0x80000000;
}

uint64_t _ConditionalContent.Container.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ConditionalContent();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

void _ConditionalContent.Container.makeInfo(_:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v8 = CurrentAttribute;
    v9 = AGSubgraphGetGraph();
    v11 = AGSubgraphCreate();

    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v10 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #1 in _ConditionalContent.Container.makeInfo(_:)(v3, a1, v8, v11, a2[2], a2[3], a2[4], a2[5], a3);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }
}

id closure #1 in _ConditionalContent.Container.makeInfo(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v77 = a4;
  v62 = a3;
  v82 = a1;
  v83 = a2;
  v76 = a9;
  v85[4] = *MEMORY[0x1E69E9840];
  v13 = type metadata accessor for _ConditionalContent();
  v74 = *(v13 - 8);
  v75 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v60 - v14;
  v64 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for _ConditionalContent.Storage();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v60 - v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v71 = *(AssociatedTypeWitness - 8);
  v72 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v81 = &v60 - v24;
  v25 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = swift_getAssociatedTypeWitness();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v30 = &v60 - v29;
  v65 = a5;
  v85[0] = a5;
  v85[1] = a6;
  v66 = a6;
  v85[2] = a7;
  v85[3] = a8;
  v31 = type metadata accessor for _ConditionalContent.Container();
  v32 = *(v25 + 16);
  v79 = *(v31 + 52);
  v80 = v32;
  v32(v28, v82 + v79, a7);
  v33 = *(a8 + 72);
  v67 = v30;
  v33(a7, a8);
  v34 = *(v25 + 8);
  v70 = v25 + 8;
  v78 = v34;
  v34(v28, a7);
  (*(v20 + 16))(v22, v83, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = v61;
    v36 = v66;
    v37 = (v64[4])(v61, v22, v66);
    v63 = &v60;
    LODWORD(v85[0]) = v62;
    MEMORY[0x1EEE9AC00](v37);
    *(&v60 - 4) = v36;
    v38 = type metadata accessor for _ConditionalContent.FalseChild();
    *(&v60 - 3) = v38;
    *(&v60 - 2) = swift_getWitnessTable();
    v39 = type metadata accessor for Attribute();
    v41 = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v85, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, (&v60 - 6), v38, MEMORY[0x1E69E73E0], v39, MEMORY[0x1E69E7410], v40);
    v42 = v84;
    MEMORY[0x1EEE9AC00](v41);
    *(&v60 - 2) = v36;
    *(&v60 - 2) = v42;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v35, partial apply for closure #1 in Attribute.setValue(_:), (&v60 - 4), v36, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v43);
    v44 = v82;
    v80(v28, v82 + v79, a7);
    v45 = v67;
    (*(a8 + 88))(v42, v67, a7, a8);
    v78(v28, a7);
    (v64[1])(v35, v36);
  }

  else
  {
    v46 = v60;
    v47 = v65;
    v48 = (v63[4])(v60, v22, v65);
    v64 = &v60;
    LODWORD(v85[0]) = v62;
    MEMORY[0x1EEE9AC00](v48);
    *(&v60 - 4) = v47;
    v49 = type metadata accessor for _ConditionalContent.TrueChild();
    *(&v60 - 3) = v49;
    *(&v60 - 2) = swift_getWitnessTable();
    v50 = type metadata accessor for Attribute();
    v52 = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v85, closure #1 in Attribute.init<A>(_:)partial apply, (&v60 - 6), v49, MEMORY[0x1E69E73E0], v50, MEMORY[0x1E69E7410], v51);
    v53 = v84;
    MEMORY[0x1EEE9AC00](v52);
    *(&v60 - 2) = v47;
    *(&v60 - 2) = v53;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v46, closure #1 in Attribute.setValue(_:)partial apply, (&v60 - 4), v47, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v54);
    v44 = v82;
    v80(v28, v82 + v79, a7);
    v55 = v53;
    v45 = v67;
    (*(a8 + 80))(v55, v67, a7, a8);
    v78(v28, a7);
    (v63[1])(v46, v47);
  }

  v80(v28, v44 + v79, a7);
  v56 = v81;
  (*(a8 + 64))(v81, a7, a8);
  v78(v28, a7);
  (*(v71 + 8))(v56, v72);
  (*(v68 + 8))(v45, v69);
  v57 = v73;
  (*(v74 + 16))(v73, v83, v75);
  _ConditionalContent.Info.init(content:subgraph:)(v57, v77, v76);
  v58 = v77;

  return v58;
}

uint64_t _ConditionalContent.Info.init(content:subgraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for _ConditionalContent();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for _ConditionalContent.Info();
  *(a3 + *(result + 36)) = a2;
  return result;
}

uint64_t initializeWithCopy for _ConditionalContent.Info(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(*(a3 + 16) - 8);
  if (*(*(v5 - 8) + 64) <= *(v6 + 64))
  {
    v7 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v7 = *(*(v5 - 8) + 64);
  }

  v8 = a2[v7];
  v9 = v8 - 2;
  if (v8 < 2)
  {
    goto LABEL_18;
  }

  if (v7 <= 3)
  {
    v10 = v7;
  }

  else
  {
    v10 = 4;
  }

  if (v10 <= 1)
  {
    if (!v10)
    {
      goto LABEL_18;
    }

    v11 = *a2;
  }

  else if (v10 == 2)
  {
    v11 = *a2;
  }

  else if (v10 == 3)
  {
    v11 = *a2 | (a2[2] << 16);
  }

  else
  {
    v11 = *a2;
  }

  v12 = (v11 | (v9 << (8 * v7))) + 2;
  v8 = v11 + 2;
  if (v7 < 4)
  {
    v8 = v12;
  }

LABEL_18:
  v13 = v8 == 1;
  if (v8 == 1)
  {
    v6 = *(v5 - 8);
    v14 = *(a3 + 24);
  }

  else
  {
    v14 = *(a3 + 16);
  }

  (*(v6 + 16))(a1, a2, v14);
  *(a1 + v7) = v13;
  v15 = *(&a2[v7 + 8] & 0xFFFFFFFFFFFFFFF8);
  *((v7 + 8 + a1) & 0xFFFFFFFFFFFFFFF8) = v15;
  v16 = v15;
  return a1;
}

void destroy for _ConditionalContent.Info(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(*(a2 + 16) - 8);
  if (*(*(v3 - 8) + 64) <= *(v4 + 64))
  {
    v5 = *(*(*(a2 + 16) - 8) + 64);
  }

  else
  {
    v5 = *(*(v3 - 8) + 64);
  }

  v6 = a1[v5];
  v7 = v6 - 2;
  if (v6 < 2)
  {
    goto LABEL_18;
  }

  if (v5 <= 3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 4;
  }

  if (v8 <= 1)
  {
    if (!v8)
    {
      goto LABEL_18;
    }

    v9 = *a1;
  }

  else if (v8 == 2)
  {
    v9 = *a1;
  }

  else if (v8 == 3)
  {
    v9 = *a1 | (a1[2] << 16);
  }

  else
  {
    v9 = *a1;
  }

  v10 = (v9 | (v7 << (8 * v5))) + 2;
  v6 = v9 + 2;
  if (v5 < 4)
  {
    v6 = v10;
  }

LABEL_18:
  if (v6 == 1)
  {
    v4 = *(v3 - 8);
    v11 = *(a2 + 24);
  }

  else
  {
    v11 = *(a2 + 16);
  }

  (*(v4 + 8))(a1, v11);
  v12 = *(&a1[v5 + 8] & 0xFFFFFFFFFFFFFFF8);
}

uint64_t View.preference<A>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v15 - v7;
  v9 = type metadata accessor for _PreferenceWritingModifier();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(v6 + 16))(v8, a2, AssociatedTypeWitness, v11);
  (*(v6 + 32))(v13, v8, AssociatedTypeWitness);
  View.modifier<A>(_:)(v13, a3, v9);
  return (*(v10 + 8))(v13, v9);
}

uint64_t initializeWithTake for CombinedKeyframes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 32) - 8);
  (*(v7 + 32))((*(v6 + 32) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 32) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

int *storeEnumTagSinglePayload for _ConditionalContent.Info(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v4)
  {
    v4 = *(*(*(a4 + 24) - 8) + 64);
  }

  v5 = (v4 & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v7 = a3 - 2147483646;
    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v7 = 2;
    }

    if (v7 >= 0x10000)
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    if (v7 < 0x100)
    {
      v6 = 1;
    }

    else
    {
      v6 = v8;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v9 = a2 & 0x7FFFFFFF;
    if ((v4 & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 1;
    }

    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v11 = result;
      bzero(result, v5);
      result = v11;
      *v11 = v9;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *(result + v5) = v10;
      }

      else
      {
        *(result + v5) = v10;
      }
    }

    else if (v6)
    {
      *(result + v5) = v10;
    }

    return result;
  }

  v6 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v6 <= 1)
  {
    if (v6)
    {
      *(result + v5) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v6 == 2)
  {
    *(result + v5) = 0;
    goto LABEL_28;
  }

  *(result + v5) = 0;
  if (a2)
  {
LABEL_29:
    *((result + v4 + 8) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }

  return result;
}

Swift::Bool __swiftcall ViewGraphHost.invalidateTransform()()
{
  v1 = *(v0 + 88);
  ValueState = AGGraphGetValueState();
  if ((ValueState & 1) == 0)
  {
    AGGraphInvalidateValue();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v1 + 208);
      ObjectType = swift_getObjectType();
      (*(*(v3 + 8) + 16))(ObjectType);
      swift_unknownObjectRelease();
    }
  }

  return (ValueState & 1) == 0;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _ConditionalContent<A, B>.FalseChild()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for _ConditionalContent<A, B>.FalseChild(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t PreferenceBinder.updateValue()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v71 = *(a1 + 24);
  v73 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v69 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v76 = v67 - v6;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v68 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v77 = v67 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v78 = v67 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v67 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v74 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v67 - v21;
  if (*(v1 + 28) != *AGGraphGetValue() >> 1)
  {
    *(v1 + 28) = *AGGraphGetValue() >> 1;
    *(v1 + 16) = 0xFFFFFFFFLL;
    *(v1 + 24) = 0;
    v23 = *(a1 + 60);
    (*(v7 + 8))(v1 + v23, v5);
    (*(v17 + 56))(v1 + v23, 1, 1, AssociatedTypeWitness);
  }

  Value = AGGraphGetValue();
  v80 = v25;
  v26 = *(v17 + 16);
  v84 = v17 + 16;
  v85 = v22;
  v83 = v26;
  v26(v22, Value, AssociatedTypeWitness);
  v75 = a1;
  v27 = *(v7 + 16);
  v81 = *(a1 + 60);
  v27(v16, v1 + v81, v5);
  v72 = *(v17 + 48);
  v28 = v17;
  v29 = v72(v16, 1, AssociatedTypeWitness);
  v31 = *(v7 + 8);
  v30 = v7 + 8;
  v82 = v31;
  v31(v16, v5);
  v32 = v28;
  if (v29 == 1)
  {
    if (one-time initialization token for v6_1 != -1)
    {
      swift_once();
    }

    v33 = static Semantics.v6_1;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      v32 = v28;
      if (dyld_program_sdk_at_least())
      {
        goto LABEL_20;
      }
    }

    else
    {
      v32 = v28;
      if (static Semantics.forced >= v33)
      {
        goto LABEL_20;
      }
    }
  }

  if ((v80 & 1) == 0)
  {
    return (*(v32 + 8))(v85, AssociatedTypeWitness);
  }

  v67[1] = v30;
  v35 = v78;
  v27(v78, v1 + v81, v5);
  v36 = AssociatedTypeWitness;
  v37 = v77;
  v83(v77, v85, v36);
  v80 = v32;
  (*(v32 + 56))(v37, 0, 1, v36);
  v38 = *(TupleTypeMetadata2 + 48);
  v39 = v76;
  v27(v76, v35, v5);
  v67[0] = v38;
  v27(&v39[v38], v37, v5);
  v40 = v72;
  if (v72(v39, 1, v36) == 1)
  {
    v41 = v37;
    v42 = v82;
    v82(v41, v5);
    v42(v35, v5);
    v43 = v40(&v39[v67[0]], 1, v36);
    v32 = v80;
    AssociatedTypeWitness = v36;
    if (v43 == 1)
    {
      v82(v39, v5);
      return (*(v32 + 8))(v85, AssociatedTypeWitness);
    }

LABEL_19:
    (*(v69 + 8))(v39, TupleTypeMetadata2);
    goto LABEL_20;
  }

  v44 = v68;
  v27(v68, v39, v5);
  v45 = v67[0];
  AssociatedTypeWitness = v36;
  if (v40(&v39[v67[0]], 1, v36) == 1)
  {
    v46 = v82;
    v82(v77, v5);
    v46(v78, v5);
    v32 = v80;
    (*(v80 + 8))(v44, v36);
    goto LABEL_19;
  }

  v60 = v44;
  v61 = v80;
  v62 = v74;
  (*(v80 + 32))(v74, &v39[v45], v36);
  v63 = dispatch thunk of static Equatable.== infix(_:_:)();
  v64 = *(v61 + 8);
  v64(v62, v36);
  v65 = v82;
  v82(v77, v5);
  v65(v78, v5);
  v64(v60, v36);
  v32 = v61;
  v65(v76, v5);
  if (v63)
  {
    return (*(v32 + 8))(v85, AssociatedTypeWitness);
  }

LABEL_20:
  v47 = v81;
  v82((v1 + v81), v5);
  v48 = v85;
  v83((v1 + v47), v85, AssociatedTypeWitness);
  (*(v32 + 56))(v1 + v47, 0, 1, AssociatedTypeWitness);
  AGGraphClearUpdate();
  v49 = *AGGraphGetValue();
  AGGraphSetUpdate();
  if (*(v1 + 16) != v49)
  {
    *(v1 + 16) = v49;
    *(v1 + 20) = 2;
LABEL_26:
    AGGraphClearUpdate();
    v52 = *(v75 + 32);
    v53 = v73;
    v54 = v71;
    closure #1 in PreferenceBinder.updateValue()(v1, v73, v71, v52, type metadata accessor for PreferenceBinder, type metadata accessor for _PreferenceActionModifier, &unk_1F00A74B0, partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.PreferenceKey.Value) -> (), &v86);
    AGGraphSetUpdate();
    v55 = swift_allocObject();
    *(v55 + 16) = v53;
    *(v55 + 24) = v54;
    *(v55 + 32) = v52;
    *(v55 + 40) = v86;
    LOBYTE(v86) = 13;
    v56 = v74;
    v83(v74, v48, AssociatedTypeWitness);
    v57 = v32;
    v58 = (*(v32 + 80) + 56) & ~*(v32 + 80);
    v59 = swift_allocObject();
    *(v59 + 2) = v53;
    *(v59 + 3) = v54;
    *(v59 + 4) = v52;
    *(v59 + 5) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.PreferenceKey.Value) -> (@out ());
    *(v59 + 6) = v55;
    (*(v57 + 32))(&v59[v58], v56, AssociatedTypeWitness);

    static Update.enqueueAction(reason:_:)(&v86, partial apply for closure #2 in PreferenceBinder.updateValue(), v59);

    return (*(v57 + 8))(v48, AssociatedTypeWitness);
  }

  v50 = *(v1 + 20);
  if (v50)
  {
    v51 = v50 - 1;
    *(v1 + 20) = v51;
    if (v51)
    {
      goto LABEL_26;
    }
  }

  if (*(v1 + 24) == 1)
  {
    return (*(v32 + 8))(v48, AssociatedTypeWitness);
  }

  *&v86 = 0;
  *(&v86 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  *&v86 = 0;
  *(&v86 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  *&v86 = 0xD000000000000011;
  *(&v86 + 1) = 0x800000018DD808E0;
  v66 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v66);

  MEMORY[0x193ABEDD0](0xD00000000000002ALL, 0x800000018DD75B90);
  specialized static Log.externalWarning(_:)(v86, *(&v86 + 1));

  result = (*(v32 + 8))(v48, AssociatedTypeWitness);
  *(v1 + 24) = 1;
  return result;
}

uint64_t sub_18D1AEE34()
{

  return swift_deallocObject();
}

uint64_t sub_18D1AEE6C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

void *closure #1 in PreferenceBinder.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void, void, void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v25 = a7;
  v26 = a8;
  v15 = a5(0);
  v16 = *(v15 - 1);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v25 - v18;
  (*(v16 + 16))(&v25 - v18, a1, v15, v17);
  v20 = specialized PreferenceBinder.modifier.getter(v15, a6);
  v22 = v21;
  v23 = *(v16 + 8);

  v23(v19, v15);
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = v20;
  result[6] = v22;
  *a9 = v26;
  a9[1] = result;
  return result;
}

uint64_t EnvironmentValues.explicitPreferredColorScheme.getter@<X0>(char *a1@<X8>)
{
  v2 = *v1;
  if (!v1[1])
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA028ExplicitPreferredColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2g5(v2, a1);
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA028ExplicitPreferredColorSchemeI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5(v2, a1);
}

void *Transaction.animation.getter(void *a1)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(a1);
  if (result)
  {
  }

  return result;
}

uint64_t View.transformPreference<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v5 = type metadata accessor for _PreferenceTransformModifier();
  return View.modifier<A>(_:)(v7, a4, v5);
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA08TextCaseF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextCaseKey>, &type metadata for TextCaseKey, &protocol witness table for TextCaseKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA08TextCaseV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(v4, v10);
  if (!result)
  {
    goto LABEL_7;
  }

  v8 = *(result + 72);
  if (v3 == 2)
  {
    if (v8 == 2)
    {
      return result;
    }

LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<TextCaseKey>>();
    *(swift_allocObject() + 72) = v3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  if (v8 == 2 || ((v8 ^ v3) & 1) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

void *assignWithCopy for ObservedObject(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

uint64_t initializeWithCopy for ObjectLocation(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  return a1;
}

uint64_t destroy for ObjectLocation()
{
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA07_ZStackC0V_Tt4B5@<X0>(unsigned int a1@<W0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v58[2] = *MEMORY[0x1E69E9840];
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  result = (*(v11 + 8))(v10, v11);
  if (result == 1)
  {
    if ((a3 & 0x10000) != 0)
    {
      v32 = a4[3];
      v33 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v32);
      v58[0] = 0;
      v34 = a2[3];
      v54 = a2[2];
      v55 = v34;
      v56 = a2[4];
      v57 = *(a2 + 20);
      v35 = a2[1];
      v52 = *a2;
      v53 = v35;
      (*(v33 + 16))(v51, v58, &v52, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), 0, v32, v33);
      v37 = v51[0];
      v36 = v51[1];
      result = swift_isEscapingClosureAtFileLocation();
      if ((result & 1) == 0)
      {
        if (v37)
        {
          *a5 = v37;
          *(a5 + 8) = v36;
          return result;
        }

        goto LABEL_25;
      }

LABEL_28:
      __break(1u);
    }
  }

  else if (!result && (a3 & 0x100) != 0)
  {
LABEL_25:
    *a5 = MEMORY[0x1E69E7CC0];
    v38 = *MEMORY[0x1E698D3F8];
    *(a5 + 8) = 0;
    *(a5 + 12) = v38;
    return result;
  }

  v49 = 0;
  v50 = 1;
  v44 = *(a2 + 9);
  v45 = v44 & 0x22;
  if ((v44 & 0x22) != 0)
  {
    v13 = *(a2 + 2);
    swift_beginAccess();
    *&v52 = __PAIR64__(*(v13 + 16), a1);
    *(&v52 + 1) = MEMORY[0x1E69E7CC0];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<_ZStackLayout>, lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout, &type metadata for _ZStackLayout, type metadata accessor for StaticLayoutComputer);
    lazy protocol witness table accessor for type StaticLayoutComputer<_ZStackLayout> and conformance StaticLayoutComputer<A>();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    v15 = *(a2 + 16);
    LODWORD(v52) = *(a2 + 18);
    *(&v52 + 4) = __PAIR64__(v14, v15);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v49 = Attribute.init<A>(body:value:flags:update:)();
    v50 = 0;
  }

  else
  {
    v14 = 0;
  }

  v47 = 0;
  v48 = MEMORY[0x1E69E7CC0];
  v16 = a4[4];
  v17 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x1EEE9AC00](v17);
  v42[0] = &v49;
  v42[1] = &v47;
  v43 = &v48;
  v18 = swift_allocObject();
  *(v18 + 16) = closure #2 in static Layout.makeStaticView(root:inputs:properties:list:)partial apply;
  *(v18 + 24) = v41;
  v46 = 0;
  v19 = a2[3];
  v54 = a2[2];
  v55 = v19;
  v56 = a2[4];
  v57 = *(a2 + 20);
  v20 = a2[1];
  v52 = *a2;
  v53 = v20;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v39 = thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?)partial apply;
  v40 = v22;
  (*(v16 + 16))(v58, &v46, &v52, 0, closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)partial apply, v21);
  v23 = v58[0];
  v24 = v58[1];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_28;
  }

  v27 = v44 & 2;
  v28 = v23 == 0;
  if (v23)
  {
    v29 = HIDWORD(v24);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
    v29 = *MEMORY[0x1E698D3F8];
  }

  if (v28)
  {
    LODWORD(v24) = 0;
  }

  if (v45)
  {
    MEMORY[0x1EEE9AC00](v26);
    v43 = &v48;
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<_ZStackLayout>, lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout, &type metadata for _ZStackLayout, type metadata accessor for StaticLayoutComputer);
    MEMORY[0x1EEE9AC00](v30);
    v41[0] = partial apply for specialized closure #3 in static Layout.makeStaticView(root:inputs:properties:list:);
    v41[1] = v42;
    AGGraphMutateAttribute();
  }

  else
  {
    v14 = *MEMORY[0x1E698D3F8];
  }

  if (v27)
  {
    v31 = v14;
  }

  else
  {
    v31 = v29;
  }

  *a5 = v23;
  *(a5 + 8) = v24 | (v27 << 6);
  *(a5 + 12) = v31;
}

uint64_t *EnvironmentalBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v75 = a1;
  v100 = *MEMORY[0x1E69E9840];
  v12 = type metadata accessor for OSSignpostID();
  v13 = *(v12 - 8);
  v84 = v12;
  v85 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v67 - v16;
  v77 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v67 - v19;
  result = AGGraphGetValue();
  v23 = *result;
  v24 = result[1];
  if (a2)
  {

    goto LABEL_3;
  }

  if ((v22 & 1) == 0)
  {
    return result;
  }

  if (a5 & 1) == 0 || (v26 = , v27 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v26), , (v27))
  {
LABEL_3:
    v73 = v18;
    PropertyList.Tracker.reset()();
    if (v23)
    {
      v25 = *(v23 + 64);
    }

    else
    {
      v25 = 0;
    }

    v71 = v24;
    v72 = v20;
    v74 = a7;
    v28 = *(a4 + 16);
    swift_retain_n();

    os_unfair_lock_lock((v28 + 16));
    *(v28 + 24) = v25;
    os_unfair_lock_unlock((v28 + 16));

    if (one-time initialization token for bodyInvoke != -1)
    {
      swift_once();
    }

    v29 = static Signpost.bodyInvoke;
    v30 = word_1ED539040;
    v31 = HIBYTE(word_1ED539040);
    v32 = byte_1ED539042;
    v33 = static os_signpost_type_t.begin.getter();
    v95 = v29;
    v96 = v30;
    v97 = v31;
    v98 = v32;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      goto LABEL_47;
    }

    LODWORD(v87) = v33;
    v68 = v23;
    v69 = AssociatedTypeWitness;
    v70 = a4;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_18DDAB4C0;
    v35 = AGTypeID.description.getter();
    v37 = v36;
    v38 = MEMORY[0x1E69E6158];
    *(v34 + 56) = MEMORY[0x1E69E6158];
    v39 = lazy protocol witness table accessor for type String and conformance String();
    *(v34 + 64) = v39;
    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    v40 = specialized static Tracing.libraryName(defining:)();
    *(v34 + 96) = v38;
    *(v34 + 104) = v39;
    *(v34 + 72) = v40;
    *(v34 + 80) = v41;
    if (one-time initialization token for _signpostLog == -1)
    {
      if (v31)
      {
LABEL_17:
        v94 = v87;
        v92 = _signpostLog;
        v93 = &dword_18D018000;
        v95 = v29;
        v96 = v30;
        v89 = "%{public}@.body [in %{public}@]";
        v90 = 31;
        v91 = 2;
        v88 = v34;
        v42 = v76;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v85 + 8))(v42, v84);
LABEL_46:

        a4 = v70;
        AssociatedTypeWitness = v69;
        v23 = v68;
LABEL_47:
        AGGraphClearUpdate();
        *&v95 = v23;
        *(&v95 + 1) = a4;
        v64 = v72;
        (*(v74 + 32))(&v95, v77, v74);
        AGGraphSetUpdate();
        v65 = $defer #1 <A>() in traceRuleBody<A>(_:body:)();
        MEMORY[0x1EEE9AC00](v65);
        *(&v67 - 2) = type metadata accessor for EnvironmentalBodyAccessor();
        *(&v67 - 1) = swift_getWitnessTable();
        _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v64, partial apply for closure #2 in BodyAccessor.setBody(_:), (&v67 - 4), AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v66);

        return (*(v73 + 8))(v64, AssociatedTypeWitness);
      }
    }

    else
    {
      swift_once();
      if (v31)
      {
        goto LABEL_17;
      }
    }

    if (v29 == 20)
    {
      v43 = 3;
    }

    else
    {
      v43 = 4;
    }

    v44 = bswap32(v29) | (4 * WORD1(v29));
    v45 = v87;
    v46 = v85 + 16;
    v78 = *(v85 + 16);
    v47 = v78(v86, v76, v84);
    v48 = 0;
    LOBYTE(v89) = 1;
    v85 = v46;
    v82 = 16 * *(&v29 + 1);
    v83 = (v46 - 8);
    v81 = v34 + 32;
    v80 = v29;
    v79 = *(&v29 + 1);
    do
    {
      v87 = &v67;
      MEMORY[0x1EEE9AC00](v47);
      v50 = &v67 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
      v51 = v50 + 8;
      v52 = v43;
      v53 = v50 + 8;
      do
      {
        *(v53 - 1) = 0;
        *v53 = 0;
        v53 += 16;
        --v52;
      }

      while (v52);
      v54 = v81 + 40 * v48;
      while (1)
      {
        v55 = *(v34 + 16);
        if (v48 == v55)
        {
          break;
        }

        if (v48 >= v55)
        {
          __break(1u);
        }

        ++v48;
        outlined init with copy of AnyTrackedValue(v54, &v95);
        v56 = v99;
        __swift_project_boxed_opaque_existential_1(&v95, v99);
        *(v51 - 1) = CVarArg.kdebugValue(_:)(v44 | v45, v56);
        *v51 = v57 & 1;
        v51 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v95);
        v54 += 40;
        if (!--v43)
        {
          goto LABEL_31;
        }
      }

      LOBYTE(v89) = 0;
LABEL_31:
      v58 = v80;
      if (v80 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v50[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v50[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v50[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v58 != 20 && v50[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v59 = v84;
      v60 = *v83;
      v61 = v86;
      (*v83)(v86, v84);
      v62 = __swift_project_value_buffer(v59, static OSSignpostID.continuation);
      v47 = v78(v61, v62, v59);
      v43 = v79;
    }

    while ((v89 & 1) != 0);
    v63 = v84;
    v60(v86, v84);
    v60(v76, v63);
    goto LABEL_46;
  }
}

uint64_t type metadata completion function for _MaskAlignmentEffect()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for HierarchicalShapeStyleModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      result = MEMORY[0x193AC1170](*(a2 + 40), *v12);
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v11 + 8 * v3);
          if (v3 != v6 || v16 >= v12 + 1)
          {
            *v16 = *v12;
          }

          v17 = *(a2 + 56);
          v18 = v17 + 40 * v3;
          v19 = (v17 + 40 * v6);
          if (v3 != v6 || v18 >= v19 + 40)
          {
            v9 = *v19;
            v10 = v19[1];
            *(v18 + 32) = *(v19 + 4);
            *v18 = v9;
            *(v18 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
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

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = MEMORY[0x193AC1170](*(a2 + 40), *v11);
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (v3 != v6 || v17 >= v18 + 2)
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v6, v24);
      v9 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = outlined destroy of AnyHashable(v24);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = v13 + 40 * v3;
          v15 = (v13 + 40 * v6);
          if (v3 != v6 || v14 >= v15 + 40)
          {
            v16 = *v15;
            v17 = v15[1];
            *(v14 + 32) = *(v15 + 4);
            *v14 = v16;
            *(v14 + 16) = v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v10 >= v8 || v3 >= v10)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v30 = a2 + 64;
    v28 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v29 = v7;
    do
    {
      v8 = *(v2 + 48) + 16 * v6;
      v9 = *v8;
      v10 = *(v8 + 4);
      v11 = *(v8 + 8);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      Hasher._combine(_:)(v10);
      v12 = *(v11 + 16);
      if (v12)
      {

        v13 = (v11 + 48);
        do
        {
          v14 = *(v13 - 2);
          v15 = *v13;
          v13 += 6;
          v16 = *(*v14 + 120);

          v16(v32);
          Hasher._combine(_:)(v15);

          --v12;
        }

        while (v12);
      }

      else
      {
      }

      v17 = Hasher._finalize()();

      v18 = v17 & v29;
      if (v3 >= v28)
      {
        v4 = v30;
        v2 = a2;
        if (v18 < v28)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v30;
        v2 = a2;
        if (v18 >= v28)
        {
          goto LABEL_15;
        }
      }

      if (v3 >= v18)
      {
LABEL_15:
        v19 = *(v2 + 48);
        v20 = (v19 + 16 * v3);
        v21 = (v19 + 16 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
        }

        v22 = *(v2 + 56);
        v23 = (v22 + 8 * v3);
        v24 = (v22 + 8 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v29;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
    ++*(v2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v26 = v4;
    do
    {
      v9 = *(a2 + 48) + 24 * v6;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      if (v11)
      {
        Hasher._combine(_:)(1u);
        v13 = *(*v11 + 120);

        v13(v27);
        MEMORY[0x193AC11A0](v12);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        v4 = v26;
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v26;
        if (v15 >= v8)
        {
          goto LABEL_13;
        }
      }

      if (v3 >= v15)
      {
LABEL_13:
        v16 = *(a2 + 48);
        v17 = v16 + 24 * v3;
        v18 = (v16 + 24 * v6);
        if (v3 != v6 || v17 >= v18 + 24)
        {
          v19 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 8 * v3);
        v22 = (v20 + 8 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v33 = a2 + 64;
    v31 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v8 = 40 * v6;
      v9 = *(v2 + 48) + 40 * v6;
      v11 = *v9;
      v10 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
      v14 = *(v9 + 32);
      v15 = *(v9 + 32);
      Hasher.init(_seed:)();
      if (v14 < 0)
      {
        MEMORY[0x193AC11A0](1);
        Hasher._combine(_:)(v11);
        goto LABEL_14;
      }

      MEMORY[0x193AC11A0](0);
      if (!v15)
      {
        break;
      }

      if (v15 != 1)
      {
        v16 = 0;
        goto LABEL_13;
      }

      MEMORY[0x193AC11A0](2);
      Hasher._combine(_:)(v11);
      if (v10)
      {
        Hasher._combine(_:)(1u);
        v30 = *(*v10 + 120);
        outlined copy of GlassContainer.Entry.ModelID(v11, v10, v12, v13, 1);
        v30(v34);
        v16 = v12;
LABEL_13:
        MEMORY[0x193AC11A0](v16);
        goto LABEL_14;
      }

      Hasher._combine(_:)(0);
LABEL_14:
      v17 = Hasher._finalize()();
      result = outlined consume of ResolvedIDs.Key(v11, v10, v12, v13, v15);
      v18 = v17 & v7;
      if (v3 >= v31)
      {
        v2 = a2;
        v4 = v33;
        if (v18 < v31)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v2 = a2;
        v4 = v33;
        if (v18 >= v31)
        {
          goto LABEL_19;
        }
      }

      if (v3 >= v18)
      {
LABEL_19:
        v19 = *(v2 + 48);
        v20 = v19 + 40 * v3;
        v21 = (v19 + v8);
        if (40 * v3 < v8 || v20 >= v21 + 40 || v3 != v6)
        {
          v22 = *v21;
          v23 = v21[1];
          *(v20 + 32) = *(v21 + 4);
          *v20 = v22;
          *(v20 + 16) = v23;
        }

        v24 = *(v2 + 56);
        v25 = (v24 + 16 * v3);
        v26 = (v24 + 16 * v6);
        if (16 * v3 != 16 * v6 || (v3 = v6, v25 >= v26 + 1))
        {
          *v25 = *v26;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    MEMORY[0x193AC11A0](1);
    outlined copy of GlassContainer.Entry.ModelID(v11, v10, v12, v13, 0);
    _Glass.Variant.ID.hash(into:)(v34);
    Hasher._combine(_:)(BYTE1(v10) & 1);
    (*(*v12 + 120))(v34);
    v16 = v13;
    goto LABEL_13;
  }

LABEL_27:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48) + 16 * v6;
      v10 = *v9;
      v11 = *(v9 + 4);
      v12 = *(v9 + 8);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      Hasher._combine(_:)(v11);
      if (v12)
      {
        Hasher._combine(_:)(1u);
        v13 = *(*v12 + 120);

        v13(v25);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v15)
      {
LABEL_13:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 8 * v3);
        v21 = (v19 + 8 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x193AC1170](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
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
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48) + 16 * v6;
      v10 = *v9;
      v11 = *(v9 + 4);
      v12 = *(v9 + 8);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      Hasher._combine(_:)(v11);
      if (v12)
      {
        Hasher._combine(_:)(1u);
        v13 = *(*v12 + 120);

        v13(v25);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v15)
      {
LABEL_13:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 16 * v3);
        v21 = (v19 + 16 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      v11 = *v10;
      if (*v10 == 0.0)
      {
        v11 = 0.0;
      }

      result = MEMORY[0x193AC1170](*(a2 + 40), *&v11);
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_17:
          v15 = (v9 + 8 * v3);
          if (v3 != v6 || v15 >= v10 + 1)
          {
            *v15 = *v10;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 8 * v3);
          v18 = (v16 + 8 * v6);
          if (v3 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_17;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v32 = ~v5;
    v33 = a2 + 64;
    v31 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v8 = 40 * v6;
      v9 = *(v2 + 48) + 40 * v6;
      v11 = *v9;
      v10 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
      v14 = *(v9 + 32);
      Hasher.init(_seed:)();
      if (!v14)
      {
        break;
      }

      if (v14 != 1)
      {
        v15 = 0;
        goto LABEL_11;
      }

      MEMORY[0x193AC11A0](2);
      Hasher._combine(_:)(v11);
      if (v10)
      {
        Hasher._combine(_:)(1u);
        v30 = *(*v10 + 120);

        v30(v34);
        v2 = a2;
        v15 = v12;
LABEL_11:
        MEMORY[0x193AC11A0](v15);
        goto LABEL_12;
      }

      Hasher._combine(_:)(0);
LABEL_12:
      v16 = Hasher._finalize()();
      result = outlined consume of GlassContainer.Entry.ModelID(v11, v10, v12, v13, v14);
      v17 = v16 & v32;
      if (v3 >= v31)
      {
        v4 = v33;
        if (v17 < v31)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v33;
        if (v17 >= v31)
        {
          goto LABEL_17;
        }
      }

      if (v3 >= v17)
      {
LABEL_17:
        v18 = *(v2 + 48);
        v19 = v18 + 40 * v3;
        v20 = (v18 + v8);
        if (40 * v3 < v8 || v19 >= v20 + 40 || v3 != v6)
        {
          v21 = *v20;
          v22 = v20[1];
          *(v19 + 32) = *(v20 + 4);
          *v19 = v21;
          *(v19 + 16) = v22;
        }

        v23 = *(v2 + 56);
        v24 = (v23 + 32 * v3);
        v25 = (v23 + 32 * v6);
        if (v3 != v6 || v24 >= v25 + 2)
        {
          v7 = v25[1];
          *v24 = *v25;
          v24[1] = v7;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v32;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    MEMORY[0x193AC11A0](1);
    outlined copy of _Glass.Variant.ID(v11, v10);

    _Glass.Variant.ID.hash(into:)(v34);
    Hasher._combine(_:)(BYTE1(v10) & 1);
    (*(*v12 + 120))(v34);
    v15 = v13;
    goto LABEL_11;
  }

LABEL_25:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(v2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v28;
    ++*(v2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      v10 = *(*v9 + 120);

      v10(v19);
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v12 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 8 * v3);
      v15 = (v13 + 8 * v6);
      if (v3 != v6 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      if (v3 < v6 || *(a2 + 56) + 8 * v3 >= *(a2 + 56) + 8 * v6 + 8)
      {
        type metadata accessor for [(AbstractHomogeneousCollection, Int)](0, &lazy cache variable for type metadata for WeakBox<AnyLocationBase>, type metadata accessor for AnyLocationBase, type metadata accessor for WeakBox);
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        type metadata accessor for [(AbstractHomogeneousCollection, Int)](0, &lazy cache variable for type metadata for WeakBox<AnyLocationBase>, type metadata accessor for AnyLocationBase, type metadata accessor for WeakBox);
        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v12 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_18:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x193AC1170](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
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
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t closure #1 in ValueTransactionSeed.updateValue()@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = type metadata accessor for ValueTransactionSeed();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, a1, v4, v6);
  LODWORD(a1) = *AGGraphGetValue();
  result = (*(v5 + 8))(v8, v4);
  *a2 = a1;
  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018TintAdjustmentModeS033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintAdjustmentModeKey>, &type metadata for TintAdjustmentModeKey, &protocol witness table for TintAdjustmentModeKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018TintAdjustmentModeV033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018TintAdjustmentModeV033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018TintAdjustmentModeV033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintAdjustmentModeKey>, &type metadata for TintAdjustmentModeKey, &protocol witness table for TintAdjustmentModeKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t static StyleableView._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v6 = a1[3];
  v50 = a1[2];
  v51 = v6;
  v7 = a1[3];
  v52 = a1[4];
  v8 = a1[1];
  v49[0] = *a1;
  v49[1] = v8;
  v10 = *a1;
  v9 = a1[1];
  v48 = a1[4];
  v11 = a1[3];
  v46 = a1[2];
  v47 = v11;
  v53[3] = v11;
  v53[4] = v48;
  v53[1] = v9;
  v53[2] = v46;
  v44 = *a1;
  v45 = v9;
  v53[0] = v44;
  v41 = v50;
  v42 = v7;
  v43 = a1[4];
  v39 = v10;
  v40 = v5;
  outlined init with copy of _ViewListCountInputs(v49, v54);
  outlined init with copy of _ViewListCountInputs(v53, v54);
  v12 = _ViewListCountInputs.isCurrentStyleableView<A>(_:)(a2, a2);
  v54[2] = v41;
  v54[3] = v42;
  v54[4] = v43;
  v54[0] = v39;
  v54[1] = v40;
  outlined destroy of _ViewListCountInputs(v54);
  if ((v12 & 1) == 0)
  {
    _GraphInputs.setCurrentStyleableView<A>(_:)(a2, a2);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v35 = v46;
    v36 = v47;
    v37 = v48;
    v33 = v44;
    v34 = v45;
    v30 = v46;
    v31 = v47;
    v32 = v48;
    v28 = v44;
    v29 = v45;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v21 = *(AssociatedConformanceWitness + 40);
    outlined init with copy of _ViewListCountInputs(&v33, &v39);
    v18 = v21(&v28, AssociatedTypeWitness, AssociatedConformanceWitness);
    goto LABEL_7;
  }

  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for StyleInput();
  _ViewListCountInputs.popLast<A, B>(_:)(v13, &protocol witness table for StyleInput<A>, &v26);
  v14 = v27;
  if (!v27)
  {
    v35 = v46;
    v36 = v47;
    v37 = v48;
    v33 = v44;
    v34 = v45;
    v30 = v46;
    v31 = v47;
    v32 = v48;
    v28 = v44;
    v29 = v45;
    outlined init with copy of _ViewListCountInputs(&v33, &v39);
    v22 = swift_getAssociatedTypeWitness();
    v23 = *(a3 + 8);
    v24 = swift_getAssociatedConformanceWitness();
    v18 = static ModifiedContent<>._viewListCount(inputs:)(&v28, a2, v22, v23, *(*(v24 + 8) + 8));
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (result)
  {
    v16 = result;
    v35 = v46;
    v36 = v47;
    v37 = v48;
    v33 = v44;
    v34 = v45;
    v30 = v46;
    v31 = v47;
    v32 = v48;
    v28 = v44;
    v29 = v45;
    v17 = *(result + 24);
    outlined init with copy of _ViewListCountInputs(&v33, &v39);
    v18 = v17(&v28, v14, v16);
LABEL_7:
    v25 = v18;
    v38[2] = v30;
    v38[3] = v31;
    v38[4] = v32;
    v38[0] = v28;
    v38[1] = v29;
    outlined destroy of _ViewListCountInputs(v38);
    v41 = v46;
    v42 = v47;
    v43 = v48;
    v39 = v44;
    v40 = v45;
    outlined destroy of _ViewListCountInputs(&v39);
    return v25;
  }

  __break(1u);
  return result;
}

uint64_t _ViewListCountInputs.isCurrentStyleableView<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 4);
  v6 = *MEMORY[0x1E698D3F8];
  v7 = MEMORY[0x1E69E7CC0];
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for MutableBox<CachedEnvironment>();
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 256;
  *(v9 + 88) = v8;

  v11 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA25StyleableViewContextInput33_AC59074524C298808AAD87A4737AEFFCLLV_Tt2g5(v10);
  if (v11)
  {
    v12 = v11 == a2;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v15 = v4;
  v16 = v6;
  v17 = v9;
  v18 = v6;
  v19 = v6;
  v20 = -1;
  v21 = v5;
  v22 = MEMORY[0x1E69E7CD0];
  outlined destroy of _GraphInputs(&v15);
  return v13;
}

uint64_t static StaticIf<>._viewListCount(inputs:body:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a1[1];
  v30 = *a1;
  v31 = v14;
  v15 = a1[3];
  v32 = a1[2];
  v33 = v15;
  v34 = a1[4];
  v16 = v30;
  v17 = v31;
  v18 = *MEMORY[0x1E698D3F8];
  v35 = 1;
  v19 = MEMORY[0x1E69E7CC0];
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for MutableBox<CachedEnvironment>();
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v19;
  *(v21 + 32) = 0u;
  *(v21 + 48) = 0u;
  *(v21 + 64) = 0u;
  *(v21 + 80) = 256;
  *(v21 + 88) = v20;
  *&v27 = v16;
  DWORD2(v27) = v18;
  *&v28 = v21;
  DWORD2(v28) = v18;
  HIDWORD(v28) = v18;
  LODWORD(v29) = -1;
  DWORD1(v29) = v17;
  *(&v29 + 1) = MEMORY[0x1E69E7CD0];
  v22 = *(a7 + 8);
  outlined init with copy of _ViewListCountInputs(&v30, v26);
  LOBYTE(a4) = v22(&v27, a4, a7);
  v36[0] = v27;
  v36[1] = v28;
  v36[2] = v29;
  outlined destroy of _GraphInputs(v36);
  v26[2] = v32;
  v26[3] = v33;
  v26[4] = v34;
  v26[0] = v30;
  v26[1] = v31;
  if (a4)
  {
    return (*(a8 + 40))(v26, a2, a3, a5, a8);
  }

  else
  {
    return (*(a9 + 40))(v26, a2, a3, a6, a9);
  }
}

uint64_t static StyleModifierType.viewListCount(inputs:)(_OWORD *a1)
{
  v1 = a1[3];
  v6[2] = a1[2];
  v6[3] = v1;
  v6[4] = a1[4];
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(v6, AssociatedTypeWitness, AssociatedConformanceWitness);
}

unint64_t lazy protocol witness table accessor for type AccessibilityTraits and conformance AccessibilityTraits()
{
  result = lazy protocol witness table cache variable for type AccessibilityTraits and conformance AccessibilityTraits;
  if (!lazy protocol witness table cache variable for type AccessibilityTraits and conformance AccessibilityTraits)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityTraits and conformance AccessibilityTraits);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityTraits and conformance AccessibilityTraits;
  if (!lazy protocol witness table cache variable for type AccessibilityTraits and conformance AccessibilityTraits)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityTraits and conformance AccessibilityTraits);
  }

  return result;
}

uint64_t closure #2 in GraphHost.init(data:)(unsigned int a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    GraphHost.graphInvalidation(from:)(a1);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA028ExplicitPreferredColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>, &type metadata for ExplicitPreferredColorSchemeKey, &protocol witness table for ExplicitPreferredColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA028ExplicitPreferredColorSchemeV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(v4, v10);
  if (!result)
  {
    goto LABEL_7;
  }

  v8 = *(result + 72);
  if (v3 == 2)
  {
    if (v8 == 2)
    {
      return result;
    }

LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>>();
    *(swift_allocObject() + 72) = v3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  if (v8 == 2 || ((v8 ^ v3) & 1) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

void *Transaction.disablesAnimations.getter(void *a1)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(a1);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t *assignWithCopy for _VariadicView_Children(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = a2[5];
  v5 = a1[5];
  a1[5] = v4;
  v6 = v4;

  a1[6] = a2[6];

  a1[7] = a2[7];
  return a1;
}

void type metadata accessor for (PreferenceKey.Type, AGAttribute)()
{
  if (!lazy cache variable for type metadata for (PreferenceKey.Type, AGAttribute))
  {
    type metadata accessor for CustomAttributeWriter.Type(255, &lazy cache variable for type metadata for PreferenceKey.Type, &lazy cache variable for type metadata for PreferenceKey);
    type metadata accessor for AGAttribute(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PreferenceKey.Type, AGAttribute));
    }
  }
}

void type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>()
{
  if (!lazy cache variable for type metadata for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>)
  {
    lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children();
    v0 = type metadata accessor for ForEach();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>);
    }
  }
}

uint64_t _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZAA09_VariadicE9_ChildrenV_s11AnyHashableVAQ7ElementVTt2B5@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, &v10);
  type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>(0, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>, type metadata accessor for ForEachState);
  swift_allocObject();
  v6 = specialized ForEachState.init(inputs:)(&v10);
  v10 = a1;
  v11 = v6;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>(0, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Info, type metadata accessor for ForEachState.Info);
  type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>(0, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Info.Init, type metadata accessor for ForEachState.Info.Init);
  lazy protocol witness table accessor for type ForEachList<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Init and conformance ForEachList<A, B, C>.Init(&lazy protocol witness table cache variable for type ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Info.Init and conformance ForEachState<A, B, C>.Info.Init, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Info.Init, type metadata accessor for ForEachState.Info.Init);

  v7 = Attribute.init<A>(body:value:flags:update:)();

  v6[40] = v7;
  *(v6 + 164) = 0;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA20ForEachEvictionInputV_Tt2g5(*a2);
  if ((static WeakAttribute.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for evictByDefault != -1)
  {
    swift_once();
  }

  if (static ForEachEvictionInput.evictByDefault == 1)
  {
LABEL_5:
    specialized static GraphHost.currentHost.getter();
    swift_beginAccess();

    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>(0, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Evictor, type metadata accessor for ForEachState.Evictor);
    lazy protocol witness table accessor for type ForEachList<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Init and conformance ForEachList<A, B, C>.Init(&lazy protocol witness table cache variable for type ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Evictor and conformance ForEachState<A, B, C>.Evictor, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Evictor, type metadata accessor for ForEachState.Evictor);

    Attribute.init<A>(body:value:flags:update:)();

    AGGraphSetFlags();
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>(0, &lazy cache variable for type metadata for ForEachList<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Init, type metadata accessor for ForEachList.Init);
  lazy protocol witness table accessor for type ForEachList<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Init and conformance ForEachList<A, B, C>.Init(&lazy protocol witness table cache variable for type ForEachList<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Init and conformance ForEachList<A, B, C>.Init, &lazy cache variable for type metadata for ForEachList<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Init, type metadata accessor for ForEachList.Init);
  v8 = Attribute.init<A>(body:value:flags:update:)();
  v6[42] = v8;
  *(v6 + 172) = 0;

  *a3 = v8;
  *(a3 + 8) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = a2[6];
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  return result;
}

uint64_t ViewGraph.preferenceBridge.setter(uint64_t a1)
{
  v2 = v1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    if (v5 != a1)
    {
LABEL_3:
      ViewGraph.removePreferenceOutlets(isInvalidating:)(0);
      swift_weakAssign();
      swift_beginAccess();
      if (*(v2 + 128) == 1)
      {
        GraphHost.uninstantiate(immediately:)(0);
      }

      swift_weakAssign();
      if (swift_weakLoadStrong())
      {
        PreferenceBridge.addChild(_:)(v2);
      }

      GraphHost.updateRemovedState()();
    }
  }

  else if (a1)
  {
    goto LABEL_3;
  }
}

unint64_t lazy protocol witness table accessor for type MergePreferenceKeys and conformance MergePreferenceKeys()
{
  result = lazy protocol witness table cache variable for type MergePreferenceKeys and conformance MergePreferenceKeys;
  if (!lazy protocol witness table cache variable for type MergePreferenceKeys and conformance MergePreferenceKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MergePreferenceKeys and conformance MergePreferenceKeys);
  }

  return result;
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance EventBindingBridgeFactoryInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.ImageRepresentationKey(a1, a2, a3, a4, type metadata accessor for EventBindingBridgeFactory.Type?);
}

uint64_t PreferenceBridge.addValue(_:for:)(unsigned int a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    v6 = *(v2 + 72);
    v7 = *(v6 + 16);
    if (v7)
    {
      for (i = v6 + 48; *(i - 16) != a2; i += 24)
      {
        if (!--v7)
        {
        }
      }

      Attribute = AGWeakAttributeGetAttribute();
      if (Attribute != *MEMORY[0x1E698D3F8])
      {
        MEMORY[0x1EEE9AC00](Attribute);
        v10 = type metadata accessor for PreferenceCombiner();
        MEMORY[0x1EEE9AC00](v10);
        AGGraphMutateAttribute();
        GraphHost.graphInvalidation(from:)(a1);
      }
    }
  }

  return result;
}

uint64_t PreferenceBridge.addChild(_:)(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 32);
  v5 = *(v4 + 2);
  v6 = 32;
  for (i = v5; i; --i)
  {
    v8 = *&v4[v6];
    v6 += 8;
    if (v8 == a1)
    {
      return result;
    }
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 32) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 + 1, 1, v4);
    *(v1 + 32) = v4;
  }

  v11 = *(v4 + 2);
  v10 = *(v4 + 3);
  if (v11 >= v10 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v4);
  }

  *(v4 + 2) = v11 + 1;
  *&v4[8 * v11 + 32] = a1;
  *(v1 + 32) = v4;
  return swift_endAccess();
}

uint64_t PreferenceBridge.wrapInputs(_:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);

  *a1 = v3;
  swift_beginAccess();
  v4 = *(v1 + 40);
  v5 = *(v4 + 16);
  if (!v5)
  {

    goto LABEL_26;
  }

  for (i = 0; i != v5; ++i)
  {
    if (i >= *(v4 + 16))
    {
      goto LABEL_30;
    }

    v7 = *(v4 + 32 + 16 * i);
    v8 = *(a1 + 48);
    v9 = *(v8 + 2);
    if (!v9)
    {
      v10 = 0;
      goto LABEL_19;
    }

    v10 = 0;
    v11 = v8 + 32;
    v12 = *(v8 + 2);
    do
    {
      v13 = v12 >> 1;
      v14 = v10 + (v12 >> 1);
      if (__OFADD__(v10, v12 >> 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v14 >= v9)
      {
        goto LABEL_28;
      }

      if (*&v11[16 * v14] < v7)
      {
        v10 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_29;
        }

        v13 = v12 + ~v13;
      }

      v12 = v13;
    }

    while (v13 > 0);
    if (v10 == v9)
    {
      goto LABEL_16;
    }

    if (v10 >= v9)
    {
LABEL_32:
      __break(1u);
    }

    if (*&v11[16 * v10] != v7)
    {
LABEL_16:
      if (v9 < v10)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_19:
      v18 = *(v4 + 32 + 16 * i);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 48) = v8;
      if (!isUniquelyReferenced_nonNull_native || v9 >= *(v8 + 3) >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9 + 1, 1, v8);
        *(a1 + 48) = v8;
      }

      v16 = &v8[16 * v10];
      memmove(v16 + 48, v16 + 32, 16 * (*(v8 + 2) - v10));
      ++*(v8 + 2);
      *(v16 + 2) = v18;
      *(a1 + 48) = v8;
    }
  }

LABEL_26:

  swift_beginAccess();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type MergePreferenceKeys and conformance MergePreferenceKeys();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(a1 + 56) = result;
  return result;
}

void type metadata accessor for EventBindingBridgeFactory.Type?()
{
  if (!lazy cache variable for type metadata for EventBindingBridgeFactory.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for EventBindingBridgeFactory.Type, &lazy cache variable for type metadata for EventBindingBridgeFactory);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EventBindingBridgeFactory.Type?);
    }
  }
}

void type metadata accessor for GestureContainerFactory.Type?()
{
  if (!lazy cache variable for type metadata for GestureContainerFactory.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for GestureContainerFactory.Type, &lazy cache variable for type metadata for GestureContainerFactory);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GestureContainerFactory.Type?);
    }
  }
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance GestureContainerFactoryInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.ImageRepresentationKey(a1, a2, a3, a4, type metadata accessor for GestureContainerFactory.Type?);
}

void type metadata accessor for TextAlwaysOnProvider.Type?()
{
  if (!lazy cache variable for type metadata for TextAlwaysOnProvider.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for TextAlwaysOnProvider.Type, &lazy cache variable for type metadata for TextAlwaysOnProvider);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TextAlwaysOnProvider.Type?);
    }
  }
}

uint64_t closure #1 in addValue #1 <A>(key:) in PreferenceBridge.addValue(_:for:)()
{
  AGCreateWeakAttribute();
  swift_getAssociatedTypeWitness();
  type metadata accessor for WeakAttribute();
  type metadata accessor for Array();
  return Array.append(_:)();
}

uint64_t GraphHost.graphInvalidation(from:)(uint64_t a1)
{
  if ((a1 & 0x100000000) == 0)
  {
    v2 = AGGraphGetAttributeGraph();
    result = AGGraphGetContext();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;

    swift_beginAccess();
    v5 = *AGGraphGetValue();
    swift_beginAccess();
    v6 = 0;
    if (v1[168] == 1)
    {
      swift_beginAccess();
      v6 = *(v4 + 168);
    }

    v1[168] = v6;
    if (v5)
    {

      v7 = _threadTransactionID();
      specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(v5, v7, 1, 1);
    }
  }

  result = (*(*v1 + 192))(a1);
  if (result)
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t HostPreferencesCombiner.addChild(keys:values:)(int a1, uint64_t a2)
{
  v5 = AGCreateWeakAttribute();
  v6 = *(v2 + 8);
  v7 = *(v6 + 16);
  if (!v7)
  {
LABEL_5:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 + 1, 1, v6);
      v6 = result;
    }

    v8 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v8 >= v11 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v8 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 16) = v8 + 1;
LABEL_13:
    v12 = v6 + 16 * v8;
    *(v12 + 32) = v5;
    *(v12 + 40) = a2;
    *(v2 + 8) = v6;
    return result;
  }

  v8 = 0;
  v9 = 32;
  while (*(v6 + v9) != a1)
  {
    ++v8;
    v9 += 16;
    if (v7 == v8)
    {
      goto LABEL_5;
    }
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
  }

  if (v8 < *(v6 + 16))
  {
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t static EnvironmentKey._valuesEqual(_:_:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = a2;
  v9 = 3;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in compareValues<A>(_:_:options:), &v6, AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v4);
  return v10;
}

BOOL static TupleStyleContext.acceptsAny<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA012StyleContextD0V_Tt1g5(a3, v18);
  v7 = v18[0];
  v8 = (v18[0] + 48);
  v9 = -*(v18[0] + 16);
  v10 = -1;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(v7 + 16))
    {
      __break(1u);
    }

    v11 = v8 + 3;
    v13 = *(v8 - 1);
    v12 = *v8;
    v18[0] = a2;
    v18[1] = a3;
    v18[2] = a4;
    v18[3] = a5;
    Visitor = type metadata accessor for TupleStyleContext.QueryVisitor();
    TupleStyleContext.QueryVisitor.visit<A>(_:)(v13, Visitor, v13, v12);
    v8 = v11;
  }

  return v9 + v10 != -1;
}

uint64_t TupleStyleContext.QueryVisitor.visit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v8 = *(a2 + 16);
  v9 = 8 * v8;
  if (v8 == 1)
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    v26[1] = a3;
    MEMORY[0x1EEE9AC00](a1);
    if (v8)
    {
      v12 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
      v13 = (v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v14 = v8;
      do
      {
        v12 += 8;
        *v13++ = swift_getMetatypeMetadata();
        --v14;
      }

      while (v14);
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
    v6 = a4;
  }

  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  if (*v5)
  {
    result = 1;
  }

  else
  {
    v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
    if (v8)
    {
      v20 = (*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL);
      v21 = (v17 + 32);
      v22 = (v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v23 = v8;
      do
      {
        if (v8 == 1)
        {
          v24 = 0;
        }

        else
        {
          v24 = *v21;
        }

        v25 = *v20++;
        *(v18 + v24) = v25;
        *v22++ = v18 + v24;
        v21 += 4;
        --v23;
      }

      while (v23);
    }

    result = (*(v6 + 16))(v19);
  }

  *v5 = result & 1;
  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>, &type metadata for ExplicitPreferredColorSchemeKey, &protocol witness table for ExplicitPreferredColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type VerticalEdge and conformance VerticalEdge()
{
  result = lazy protocol witness table cache variable for type VerticalEdge and conformance VerticalEdge;
  if (!lazy protocol witness table cache variable for type VerticalEdge and conformance VerticalEdge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalEdge and conformance VerticalEdge);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VerticalEdge and conformance VerticalEdge;
  if (!lazy protocol witness table cache variable for type VerticalEdge and conformance VerticalEdge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalEdge and conformance VerticalEdge);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016PreferenceBridgeI033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016PreferenceBridgeF033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>, &type metadata for EnvironmentValues.PreferenceBridgeKey, &protocol witness table for EnvironmentValues.PreferenceBridgeKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v16);
    outlined init with take of AnyTrackedValue(v16, v17);
    v12 = v18;
    v13 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (v13[1])(&type metadata for EnvironmentValues.PreferenceBridgeKey.Value, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016PreferenceBridgeF033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt2g5(a1, a2);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>>();
    v18 = v14;
    v19 = &protocol witness table for TrackedValue<A>;
    v17[0] = swift_allocObject();
    outlined init with copy of EnvironmentValues.PreferenceBridgeKey.Value(a2, v17[0] + 16);
    specialized Dictionary.subscript.setter(v17, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t sub_18D1B2DC4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>, &type metadata for EnvironmentValues.PreferenceBridgeKey, &protocol witness table for EnvironmentValues.PreferenceBridgeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>>);
    }
  }
}

uint64_t closure #2 in static ModifiedContent<>._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v49 = *MEMORY[0x1E69E9840];
  v12 = a1[3];
  v45 = a1[2];
  v46 = v12;
  v47 = a1[4];
  v48 = *(a1 + 20);
  v13 = a1[1];
  v43 = *a1;
  v44 = v13;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a9;
  v22[1] = a2;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in closure #2 in static ModifiedContent<>._makeView(modifier:inputs:body:), a5, v22);
  v14 = v22[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v35 = v45;
  v36 = v46;
  v37 = v47;
  v38 = v48;
  v33 = v43;
  v34 = v44;
  v16 = v45;
  LODWORD(v35) = 0;
  v21 = v14;
  v39[0] = v43;
  v39[1] = v44;
  v40 = v48;
  v39[3] = v46;
  v39[4] = v47;
  v39[2] = v35;
  v29 = v35;
  v30 = v46;
  v31 = v47;
  v32 = v48;
  v27 = v43;
  v28 = v44;
  v17 = *(a7 + 24);
  outlined init with copy of _ViewInputs(&v43, v41);
  outlined init with copy of _ViewInputs(v39, v41);
  v17(&v21, &v27, a3, a4, a5, a7);
  v41[2] = v29;
  v41[3] = v30;
  v41[4] = v31;
  v42 = v32;
  v41[0] = v27;
  v41[1] = v28;
  outlined destroy of _ViewInputs(v41);
  LODWORD(v35) = v16;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a8, &v33);
    AGSubgraphEndTreeElement();
  }

  v29 = v35;
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v27 = v33;
  v28 = v34;
  return outlined destroy of _ViewInputs(&v27);
}

unint64_t lazy protocol witness table accessor for type _VariadicView_Children.Child and conformance _VariadicView_Children.Child()
{
  result = lazy protocol witness table cache variable for type _VariadicView_Children.Child and conformance _VariadicView_Children.Child;
  if (!lazy protocol witness table cache variable for type _VariadicView_Children.Child and conformance _VariadicView_Children.Child)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView_Children.Child and conformance _VariadicView_Children.Child);
  }

  return result;
}

void type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children();
    v9[0] = &type metadata for _VariadicView_Children;
    v9[1] = MEMORY[0x1E69E69B8];
    v9[2] = &type metadata for _VariadicView_Children.Element;
    v9[3] = v6;
    v9[4] = MEMORY[0x1E69E69C0];
    v9[5] = &protocol witness table for _VariadicView_Children.Element;
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}