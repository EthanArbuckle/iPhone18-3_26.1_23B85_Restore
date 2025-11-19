uint64_t specialized HeterogeneousCollection.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a4 + 16);
  if (v12)
  {
    v12 = *(a4 + 4 * v12 + 28);
  }

  v17 = MEMORY[0x1E69E7CC0];
  if (*(MEMORY[0x1E69E7CC0] + 16) <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  v14 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
  v16[7] = a3;
  v16[8] = a4;
  v16[9] = a5;
  v16[10] = a6;
  MEMORY[0x1EEE9AC00](v14);
  v16[2] = &v17;
  v16[3] = a1;
  v16[4] = a2;
  HeterogeneousCollection.forEach(_:)(partial apply for specialized closure #1 in HeterogeneousCollection.map<A>(_:), v16);
  return v17;
}

uint64_t specialized closure #1 in HeterogeneousCollection.map<A>(_:)(uint64_t a1, uint64_t *a2, void (*a3)(void *__return_ptr))
{
  a3(v11);
  v4 = v11[0];
  v5 = v11[1];
  v6 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v6;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
    v6 = *a2;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
    v6 = *a2;
  }

  *(v6 + 16) = v9 + 1;
  v10 = v6 + 16 * v9;
  *(v10 + 32) = v4;
  *(v10 + 40) = v5;
  return result;
}

uint64_t TypedCanonicalViewID.init(index:implicitID:explicitID:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for TypedCanonicalViewID();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 40);

  return v9(v10, a3, a4);
}

uint64_t TypedCanonicalViewID.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v0[1]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int TypedCanonicalViewID.hashValue.getter()
{
  Hasher.init(_seed:)();
  TypedCanonicalViewID.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TypedCanonicalViewID<A>()
{
  Hasher.init(_seed:)();
  TypedCanonicalViewID.hash(into:)();
  return Hasher._finalize()();
}

uint64_t TypedCanonicalViewID.asCanonical()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16) == &type metadata for Nil)
  {
    v5 = *v2;
    result = (*(*(a1 - 8) + 8))(v2);
    v6 = 0;
  }

  else
  {
    result = TypedCanonicalViewID.unsafeAsCanonicalWithExplicitID()(a1, v7);
    v5 = v7[0];
    v6 = v7[1];
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t TypedCanonicalViewID.unsafeAsCanonicalWithExplicitID()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  (*(v9 + 32))(v7, &v2[*(v8 + 40)], v4, v5);
  result = AnyHashable2.init<A>(_:)(v7, v4, &v14);
  v12 = v14;
  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t specialized makeCanonical<A>(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  outlined init with copy of Any(a1, v22);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CanonicalViewIDProtocol);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v19, v23);
    v4 = v24;
    v5 = v25;
    v6 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v7 = MEMORY[0x1EEE9AC00](v6);
    (*(v9 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    (*(v5 + 24))(v4, v5);
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  outlined destroy of CanonicalViewIDProtocol?(&v19, &lazy cache variable for type metadata for CanonicalViewIDProtocol?, &lazy cache variable for type metadata for CanonicalViewIDProtocol, &protocol descriptor for CanonicalViewIDProtocol, type metadata accessor for ScrollStateRequest?);
  outlined init with copy of Any(a1, v22);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Hashable);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v19, v23);
    v10 = v24;
    v11 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v12 = MEMORY[0x1EEE9AC00](v11);
    v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v14, v12);
    AnyHashable2.init<A>(_:)(v14, v10, &v19);
    v16 = v19;
    *a2 = 0xFFFFFFFF00000000;
    a2[1] = v16;
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  outlined destroy of CanonicalViewIDProtocol?(&v19, &lazy cache variable for type metadata for Hashable?, &lazy cache variable for type metadata for Hashable, MEMORY[0x1E69E5EA0], type metadata accessor for ScrollStateRequest?);
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD7BE60);
  v18 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v18);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double one-time initialization function for empty()
{
  v0 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    v2 = MEMORY[0x1E69E7CC0];
    v3 = __CocoaSet.count.getter();
    if (v3)
    {
      v2 = v3;
      v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5(v3, 0);
      specialized Array._copyContents(initializing:)(v4 + 32, v2, MEMORY[0x1E69E7CC0]);
      v6 = v5;

      v0 = v4;
      if (v6 == v2)
      {
        goto LABEL_2;
      }

      __break(1u);
    }

    v0 = v2;
  }

LABEL_2:
  HeterogeneousCollection.init(_:)(v0, v7);
  result = *v7;
  static HeterogeneousViewIDs.empty = v7[0];
  xmmword_1EAB1F010 = v7[1];
  return result;
}

double HeterogeneousViewIDs.init()@<D0>(_OWORD *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    v5 = MEMORY[0x1E69E7CC0];
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      v5 = v6;
      v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5(v6, 0);
      specialized Array._copyContents(initializing:)(v7 + 32, v5, MEMORY[0x1E69E7CC0]);
      v9 = v8;

      v2 = v7;
      if (v9 == v5)
      {
        goto LABEL_2;
      }

      __break(1u);
    }

    v2 = v5;
  }

LABEL_2:
  HeterogeneousCollection.init(_:)(v2, v10);
  result = *v10;
  v4 = v10[1];
  *a1 = v10[0];
  a1[1] = v4;
  return result;
}

uint64_t static HeterogeneousViewIDs.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for empty != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *(&static HeterogeneousViewIDs.empty + 1);
  *a1 = static HeterogeneousViewIDs.empty;
  *(a1 + 8) = v1;
  *(a1 + 16) = xmmword_1EAB1F010;
}

uint64_t HeterogeneousViewIDs.count.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    return *(v1 + 4 * v2 + 28);
  }

  else
  {
    return 0;
  }
}

uint64_t HeterogeneousViewIDs.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v2[1];
  v25 = *v2;
  v26 = v5;
  v27 = *(v2 + 1);

  HeterogeneousCollection.element(at:)(a1);

  outlined init with copy of Any(v29, v24);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CanonicalViewIDProtocol);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v21, &v25);
    v6 = *(&v27 + 1);
    v7 = v28;
    v8 = __swift_project_boxed_opaque_existential_1(&v25, *(&v27 + 1));
    v9 = MEMORY[0x1EEE9AC00](v8);
    (*(v11 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    (*(v7 + 24))(v6, v7);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(&v25);
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  outlined destroy of CanonicalViewIDProtocol?(&v21, &lazy cache variable for type metadata for CanonicalViewIDProtocol?, &lazy cache variable for type metadata for CanonicalViewIDProtocol, &protocol descriptor for CanonicalViewIDProtocol, type metadata accessor for ScrollStateRequest?);
  outlined init with copy of Any(v29, v24);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Hashable);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v21, &v25);
    v12 = *(&v27 + 1);
    v13 = __swift_project_boxed_opaque_existential_1(&v25, *(&v27 + 1));
    v14 = MEMORY[0x1EEE9AC00](v13);
    v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v16, v14);
    AnyHashable2.init<A>(_:)(v16, v12, &v21);
    v18 = v21;
    *a2 = 0xFFFFFFFF00000000;
    a2[1] = v18;
    goto LABEL_5;
  }

  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  outlined destroy of CanonicalViewIDProtocol?(&v21, &lazy cache variable for type metadata for Hashable?, &lazy cache variable for type metadata for Hashable, MEMORY[0x1E69E5EA0], type metadata accessor for ScrollStateRequest?);
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD7BE60);
  v20 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v20);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t HeterogeneousViewIDs.forEach(_:)(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  v8[2] = result;
  v8[3] = a2;
  v4 = *(v3 + 16);
  if (v4)
  {

    swift_retain_n();

    v5 = 0;
    while (v5 < *(v3 + 16))
    {
      v6 = *(v3 + 8 * v5++ + 32);
      v7 = *(*v6 + 128);

      v7(partial apply for closure #1 in HeterogeneousViewIDs.forEach(_:), v8);

      if (v4 == v5)
      {
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t closure #1 in HeterogeneousViewIDs.forEach(_:)(uint64_t a1, void (*a2)(unint64_t *))
{
  outlined init with copy of Any(a1, v23);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CanonicalViewIDProtocol);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v20, &v24);
    v4 = v26;
    v5 = v27;
    v6 = __swift_project_boxed_opaque_existential_1(&v24, v26);
    v7 = MEMORY[0x1EEE9AC00](v6);
    (*(v9 + 16))(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    (*(v5 + 24))(&v20, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(&v24);
    v10 = *(&v20 + 1);
    v11 = v20;
LABEL_5:
    v24 = v11;
    v25 = v10;
    a2(&v24);
  }

  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  outlined destroy of CanonicalViewIDProtocol?(&v20, &lazy cache variable for type metadata for CanonicalViewIDProtocol?, &lazy cache variable for type metadata for CanonicalViewIDProtocol, &protocol descriptor for CanonicalViewIDProtocol, type metadata accessor for ScrollStateRequest?);
  outlined init with copy of Any(a1, v23);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Hashable);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v20, &v24);
    v12 = v26;
    v13 = __swift_project_boxed_opaque_existential_1(&v24, v26);
    v14 = MEMORY[0x1EEE9AC00](v13);
    v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v16, v14);
    AnyHashable2.init<A>(_:)(v16, v12, &v20);
    v10 = v20;
    __swift_destroy_boxed_opaque_existential_1(&v24);
    v11 = 0xFFFFFFFF00000000;
    goto LABEL_5;
  }

  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  outlined destroy of CanonicalViewIDProtocol?(&v20, &lazy cache variable for type metadata for Hashable?, &lazy cache variable for type metadata for Hashable, MEMORY[0x1E69E5EA0], type metadata accessor for ScrollStateRequest?);
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD7BE60);
  v19 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v19);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

SwiftUI::HeterogeneousViewIDIndexLookupTable __swiftcall HeterogeneousViewIDs.makeIndexLookupTableIfNeeded()()
{
  v2 = v0;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 24);
    v4 = *(v1 + 16);
  }

  else
  {

    v6 = specialized HeterogeneousIndexLookupTable.init(_:)(v5);
    v3 = v7;
    *(v1 + 16) = v6;
    *(v1 + 24) = v7;
  }

  *v2 = v4;
  v2[1] = v3;

  result.lookupTable.count = v9;
  result.lookupTable.homogenousLookupTable._rawValue = v8;
  return result;
}

uint64_t HeterogeneousViewIDIndexLookupTable.index(for:)(unsigned int *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  v7 = *v2;
  v6 = v2[1];
  if (!v5)
  {
    return specialized index #1 <A>(explicitID:) in HeterogeneousViewIDIndexLookupTable.index(for:)(*v2, v2[1], v3 | (v4 << 32));
  }

  (*(*v5 + 104))(v15);
  outlined init with take of AnyTrackedValue(v15, v16);
  v8 = v17;
  v9 = v18;
  v10 = __swift_project_boxed_opaque_existential_1(v16, v17);
  if (v3)
  {
    v11 = 0;
  }

  else
  {
    v11 = v4 == -1;
  }

  if (v11)
  {
    v12 = HeterogeneousIndexLookupTable.index<A>(for:)(v10, v7, v6, v8, v9);
  }

  else
  {
    v12 = index #1 <A>(explicitID:) in HeterogeneousViewIDIndexLookupTable.index(for:)(v10, v7, v6, v3 | (v4 << 32), v5, v8);
  }

  v14 = v12;
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v14;
}

uint64_t specialized index #1 <A>(explicitID:) in HeterogeneousViewIDIndexLookupTable.index(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a3;
  type metadata accessor for TypedCanonicalViewID<Nil>();
  if (!*(a1 + 16))
  {
    return 0;
  }

  v5 = v4;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(**(*(a1 + 56) + 8 * v6) + 104);
  v9 = lazy protocol witness table accessor for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>(&lazy protocol witness table cache variable for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>, type metadata accessor for TypedCanonicalViewID<Nil>);

  v10 = v8(&v12, v5, v9);

  return v10;
}

uint64_t index #1 <A>(explicitID:) in HeterogeneousViewIDIndexLookupTable.index(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TypedCanonicalViewID();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v22 - v17;
  (*(v11 + 16))(v13, a1, a6, v16);
  *v18 = a4;
  (*(v11 + 32))(&v18[*(v14 + 40)], v13, a6);
  WitnessTable = swift_getWitnessTable();
  v20 = HeterogeneousIndexLookupTable.index<A>(for:)(v18, a2, a3, v14, WitnessTable);
  (*(v15 + 8))(v18, v14);
  return v20;
}

uint64_t HeterogeneousViewIDs.init(_:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v10 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7SwiftUI29AbstractHomogeneousCollectionC_Tt0g5(MEMORY[0x1E69E7CC0]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 48))(&v10, v4, v5);
  outlined init with copy of HeterogeneousViewIDsAccumulator(&v10, v8);
  HeterogeneousViewIDsAccumulator.finalize()(v9);
  outlined destroy of HeterogeneousViewIDsAccumulator(&v10);
  v6 = v9[1];
  *a2 = v9[0];
  a2[1] = v6;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double HeterogeneousViewIDsAccumulator.init()@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    v3 = a1;
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
      v5 = v4;
      v1 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5(v4, 0);
      specialized Array._copyContents(initializing:)(v1 + 32, v5, MEMORY[0x1E69E7CC0]);
      v7 = v6;

      a1 = v3;
      if (v7 == v5)
      {
        goto LABEL_2;
      }

      __break(1u);
    }

    a1 = v3;
  }

LABEL_2:
  *a1 = v1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 81) = 0u;
  return result;
}

uint64_t ContiguousArray<A>.asContiguousArray<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == a3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for AbstractContiguousArray.isEmpty.getter in conformance <A> ContiguousArray<A>()
{
  swift_getWitnessTable();

  return Collection.isEmpty.getter();
}

uint64_t HeterogeneousViewIDsAccumulator.count.getter()
{
  v1 = *(v0 + 8);
  outlined init with copy of AbstractContiguousArray?(v0 + 16, v6, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
  v2 = v7;
  if (v7)
  {
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v4 = (*(v3 + 40))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v6);
    result = v1 + v4;
    if (__OFADD__(v1, v4))
    {
      __break(1u);
    }
  }

  else
  {
    outlined destroy of CanonicalViewIDProtocol?(v6, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    return v1;
  }

  return result;
}

uint64_t HeterogeneousViewIDsAccumulator.isEmpty.getter()
{
  if (*(v0 + 8))
  {
    v1 = 0;
  }

  else
  {
    outlined init with copy of AbstractContiguousArray?(v0 + 16, v5, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    v2 = v6;
    if (v6)
    {
      v3 = v7;
      __swift_project_boxed_opaque_existential_1(v5, v6);
      v1 = (*(v3 + 48))(v2, v3);
      __swift_destroy_boxed_opaque_existential_1(v5);
    }

    else
    {
      outlined destroy of CanonicalViewIDProtocol?(v5, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
      v1 = 1;
    }
  }

  return v1 & 1;
}

uint64_t HeterogeneousViewIDsAccumulator.withBuffer<A>(of:body:)(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = *(v5 + 40);
  if (v10 && (v11 = *(v5 + 48), __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40)), (v12 = (*(v11 + 24))(a4, a4, v10, v11)) != 0))
  {
    v19[0] = v12;
    outlined destroy of CanonicalViewIDProtocol?(v5 + 16, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0;
  }

  else
  {
    outlined init with copy of AbstractContiguousArray?(v5 + 16, &v17, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    if (v18)
    {
      outlined init with take of AnyTrackedValue(&v17, v19);
      v13 = v20;
      v14 = v21;
      v15 = __swift_project_boxed_opaque_existential_1(v19, v20);
      append #1 <A><A1>(buffer:) in HeterogeneousViewIDsAccumulator.append<A>(contentsOf:)(v15, v6, a4, v13, a5, v14);
      outlined destroy of CanonicalViewIDProtocol?(v6 + 16, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
      *(v6 + 16) = 0u;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0;
      __swift_destroy_boxed_opaque_existential_1(v19);
    }

    else
    {
      outlined destroy of CanonicalViewIDProtocol?(&v17, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    }

    v19[0] = ContiguousArray.init()();
  }

  a2(v19);
  $defer #1 <A>() in HeterogeneousViewIDsAccumulator.withBuffer<A>(of:body:)(v6, v19);
}

uint64_t append #1 <A><A1>(buffer:) in HeterogeneousViewIDsAccumulator.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = (*(a6 + 32))(a4, a6);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for HomogeneousCollection();
  specialized HomogeneousCollection.__allocating_init(_:)(v7);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v8 = ContiguousArray.count.getter();

  v10 = *(a2 + 8);
  v11 = __OFADD__(v10, v8);
  v12 = v10 + v8;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 8) = v12;
  }

  return result;
}

uint64_t $defer #1 <A>() in HeterogeneousViewIDsAccumulator.withBuffer<A>(of:body:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v5[3] = type metadata accessor for ContiguousArray();
  v5[4] = swift_getWitnessTable();
  v5[0] = v3;

  return outlined assign with take of AbstractContiguousArray?(v5, a1 + 16, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
}

void HeterogeneousViewIDsAccumulator.append(_:)(unsigned int *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 1);
  if (v3)
  {
    (*(*v3 + 104))(v8);
    outlined init with take of AnyTrackedValue(v8, v9);
    v4 = v10;
    v5 = v11;
    v6 = __swift_project_boxed_opaque_existential_1(v9, v10);
    HeterogeneousViewIDsAccumulator.append<A>(index:implicitID:explicitID:)(v1, v2, v6, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v7 = *a1;

    HeterogeneousViewIDsAccumulator.append(index:implicitID:)(v7, v2);
  }
}

uint64_t HeterogeneousViewIDsAccumulator.append<A>(index:implicitID:explicitID:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TypedCanonicalViewID();
  v14 = *(v13 - 8);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v18 = &v21 - v17;
  if (v9 || a2 != -1)
  {
    (*(v10 + 16))(v12, a3, a4, v16);
    *v18 = v9;
    *(v18 + 1) = a2;
    (*(v10 + 32))(&v18[*(v13 + 40)], v12, a4);
    HeterogeneousViewIDsAccumulator.append<A>(_:)(v18, a4, a5);
    return (*(v14 + 8))(v18, v13);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v15);
    *(&v21 - 4) = a4;
    *(&v21 - 3) = a5;
    *(&v21 - 2) = a3;
    return HeterogeneousViewIDsAccumulator.withBuffer<A>(of:body:)(v19, partial apply for closure #1 in HeterogeneousViewIDsAccumulator.append<A>(index:implicitID:explicitID:), (&v21 - 6), a4, a5);
  }
}

Swift::Void __swiftcall HeterogeneousViewIDsAccumulator.append(index:implicitID:)(Swift::Int32 index, Swift::Int32 implicitID)
{
  v3 = *&implicitID;
  v4 = *&index;
  outlined init with copy of AbstractContiguousArray?(v2 + 56, &v10, &lazy cache variable for type metadata for (Hashable, isUnary: Bool)?, type metadata accessor for (Hashable, isUnary: Bool), MEMORY[0x1E69E6720], type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>);
  if (*&v11[8])
  {
    *&v13[9] = *&v11[9];
    v12 = v10;
    *v13 = *v11;
    v5 = *&v11[8];
    v6 = *&v11[9] >> 56;
    v7 = __swift_project_boxed_opaque_existential_1(&v12, *&v11[8]);
    outlined init with copy of (Hashable, isUnary: Bool)(&v12, &v10, type metadata accessor for (Hashable, isUnary: Bool));
    v8 = v11[24];
    __swift_destroy_boxed_opaque_existential_1(&v10);
    if (v8)
    {
      v9 = -1;
    }

    else
    {
      v9 = v3;
    }

    HeterogeneousViewIDsAccumulator.append<A>(index:implicitID:explicitID:)(v4, v9, v7, v5, v6);
    outlined destroy of (Hashable, isUnary: Bool)(&v12, type metadata accessor for (Hashable, isUnary: Bool));
  }

  else
  {
    outlined destroy of CanonicalViewIDProtocol?(&v10, &lazy cache variable for type metadata for (Hashable, isUnary: Bool)?, type metadata accessor for (Hashable, isUnary: Bool), MEMORY[0x1E69E6720], type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>);
    specialized HeterogeneousViewIDsAccumulator.append<A>(_:)(v4 | (v3 << 32));
  }
}

uint64_t specialized HeterogeneousViewIDsAccumulator.append<A>(_:)(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = v1[5];
  if (v5 && (v6 = v1[6], __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]), type metadata accessor for TypedCanonicalViewID<Nil>(), (v8 = (*(v6 + 24))(v7, v7, v5, v6)) != 0))
  {
    v9 = v8;
    outlined destroy of CanonicalViewIDProtocol?(v2 + 16, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0;
    *&v22 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_10;
    }

    v10 = *(v9 + 16) + 1;
  }

  else
  {
    outlined init with copy of AbstractContiguousArray?((v1 + 2), &v22, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    if (v23)
    {
      outlined init with take of AnyTrackedValue(&v22, v24);
      v11 = v25;
      v12 = v26;
      v13 = __swift_project_boxed_opaque_existential_1(v24, v25);
      type metadata accessor for TypedCanonicalViewID<Nil>();
      v15 = v14;
      v16 = lazy protocol witness table accessor for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>(&lazy protocol witness table cache variable for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>, type metadata accessor for TypedCanonicalViewID<Nil>);
      append #1 <A><A1>(buffer:) in HeterogeneousViewIDsAccumulator.append<A>(contentsOf:)(v13, v2, v15, v11, v16, v12);
      outlined destroy of CanonicalViewIDProtocol?(v2 + 16, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
      *(v2 + 16) = 0u;
      *(v2 + 32) = 0u;
      *(v2 + 48) = 0;
      __swift_destroy_boxed_opaque_existential_1(v24);
    }

    else
    {
      outlined destroy of CanonicalViewIDProtocol?(&v22, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    }

    *&v22 = MEMORY[0x1E69E7CC0];
    v10 = 1;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 1);
  v9 = v22;
LABEL_10:
  v18 = *(v9 + 16);
  v17 = *(v9 + 24);
  if (v18 >= v17 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
    v9 = v22;
  }

  *(v9 + 16) = v18 + 1;
  v19 = v9 + 8 * v18;
  *(v19 + 32) = v3;
  *(v19 + 36) = v4;
  type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>(0, &lazy cache variable for type metadata for ContiguousArray<TypedCanonicalViewID<Nil>>, type metadata accessor for TypedCanonicalViewID<Nil>, MEMORY[0x1E69E6BE8]);
  v25 = v20;
  v26 = lazy protocol witness table accessor for type ContiguousArray<TypedCanonicalViewID<Nil>> and conformance <A> ContiguousArray<A>();
  v24[0] = v9;
  return outlined assign with take of AbstractContiguousArray?(v24, v2 + 16, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
}

uint64_t HeterogeneousViewIDsAccumulator.append<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TypedCanonicalViewID();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;
  WitnessTable = swift_getWitnessTable();
  return HeterogeneousViewIDsAccumulator.withBuffer<A>(of:body:)(WitnessTable, partial apply for closure #1 in HeterogeneousViewIDsAccumulator.append<A>(_:), v9, v6, WitnessTable);
}

uint64_t closure #1 in HeterogeneousViewIDsAccumulator.append<A>(index:implicitID:explicitID:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  type metadata accessor for ContiguousArray();
  return ContiguousArray.append(_:)();
}

uint64_t closure #1 in HeterogeneousViewIDsAccumulator.append<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TypedCanonicalViewID();
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v8 - v5, a2, v3, v4);
  type metadata accessor for ContiguousArray();
  return ContiguousArray.append(_:)();
}

uint64_t HeterogeneousViewIDsAccumulator.UnsafeOutputBuffer.init<A>(buffer:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TypedCanonicalViewID();
  result = UnsafeMutableBufferPointer.baseAddress.getter();
  if (result)
  {
    v6 = *(*(v4 - 8) + 72);
    v7 = *(v4 + 40);
    *a2 = result;
    *(a2 + 8) = a1;
    *(a2 + 16) = v6;
    *(a2 + 24) = xmmword_18DDD9A00;
    *(a2 + 40) = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void HeterogeneousViewIDsAccumulator.UnsafeOutputBuffer.initialize<A>(at:index:implicitID:explicitID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v5[2];
  v16 = v15 * v14;
  if ((v15 * v14) >> 64 == (v15 * v14) >> 63)
  {
    v17 = v5[4];
    v18 = v5[5];
    v19 = v5[3];
    v20 = *v5 + v16;
    *(v20 + v19) = v7;
    *(v20 + v17) = v8;
    (*(v10 + 16))(v13, v9, a5, v11);
    _sSpsRi_zrlE10initialize2toyxn_tF(v13, v20 + v18, a5);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall HeterogeneousViewIDsAccumulator.UnsafeOutputBuffer.initialize(at:index:implicitID:)(Swift::Int at, Swift::Int32 index, Swift::Int32 implicitID)
{
  v4 = v3[2];
  v5 = at * v4;
  if ((at * v4) >> 64 == (at * v4) >> 63)
  {
    v6 = v3[4];
    v7 = *v3 + v5;
    *(v7 + v3[3]) = index;
    *(v7 + v6) = implicitID;
  }

  else
  {
    __break(1u);
  }
}

uint64_t HeterogeneousViewIDsAccumulator.UnsafeOutputBuffer.mutableExplicitIDPointer<A>(at:for:)(uint64_t result)
{
  v2 = v1[2];
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    return *v1 + v1[5] + result * v2;
  }

  __break(1u);
  return result;
}

uint64_t HeterogeneousViewIDsAccumulator.appendWithUnsafeOutputBuffer<A>(explicitID:count:body:)(uint64_t result, uint64_t a2)
{
  if (a2 >= 1)
  {
    MEMORY[0x1EEE9AC00](result);
    v2 = type metadata accessor for TypedCanonicalViewID();
    v3 = ContiguousArray.init(unsafeUninitializedCapacity:initializingWith:)();
    WitnessTable = swift_getWitnessTable();
    HeterogeneousViewIDsAccumulator.append<A>(contentsOf:)(v3, v2, WitnessTable);
  }

  return result;
}

uint64_t closure #1 in HeterogeneousViewIDsAccumulator.appendWithUnsafeOutputBuffer<A>(explicitID:count:body:)(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  HeterogeneousViewIDsAccumulator.UnsafeOutputBuffer.init<A>(buffer:)(*(a1 + 8), &v13);
  v9 = v13;
  v10 = v14;
  v11 = v15;
  v12 = v16;
  result = a3(&v9);
  *a2 = a5;
  return result;
}

unint64_t HeterogeneousViewIDsAccumulator.append<A>(indices:implicitID:explicitID:)(unint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  while (1)
  {
    v5 = HIDWORD(result);
    if (result == HIDWORD(result))
    {
      break;
    }

    if (result > 0 || SHIDWORD(result) < 1 || a2 != -1)
    {
      v10 = a2 == -1;
      v11 = result;
      v12 = a5;
      v13 = a4;
      v14 = a3;
      v15 = a2;
      v16 = specialized Collection.count.getter(result);
      MEMORY[0x1EEE9AC00](v16);
      v18[4] = v11;
      v18[5] = v5;
      v18[6] = v15;
      return HeterogeneousViewIDsAccumulator.prepareForAppendWithSingleExplicitID<A>(explicitID:isUnary:count:body:)(v14, v10, v17, partial apply for closure #1 in HeterogeneousViewIDsAccumulator.append<A>(indices:implicitID:explicitID:), v18, v13, v12);
    }

    v6 = result;
    v7 = a3;
    v8 = a4;
    v9 = a5;
    HeterogeneousViewIDsAccumulator.append<A>(indices:implicitID:explicitID:)(result);
    HeterogeneousViewIDsAccumulator.append<A>(index:implicitID:explicitID:)(0, -1, v7, v8, v9);
    result = v6 & 0xFFFFFFFF00000000 | 1;
    a2 = -1;
    a3 = v7;
    a4 = v8;
    a5 = v9;
  }

  return result;
}

uint64_t closure #1 in HeterogeneousViewIDsAccumulator.append<A>(indices:implicitID:explicitID:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = HIDWORD(a3);
  if (a3 != HIDWORD(a3))
  {
    if (SHIDWORD(a3) >= a3)
    {
      v6 = result;
      while (a3 < v4)
      {
        v7 = (a3 + 1);
        result = v6(a3, a4);
        a3 = v7;
        if (v4 == v7)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t HeterogeneousViewIDsAccumulator.prepareForAppendWithSingleExplicitID<A>(explicitID:isUnary:count:body:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for TypedCanonicalViewID();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = a5;
  v18 = a2;
  v19 = a1;
  WitnessTable = swift_getWitnessTable();
  return HeterogeneousViewIDsAccumulator.withBuffer<A>(of:body:)(WitnessTable, partial apply for closure #1 in HeterogeneousViewIDsAccumulator.prepareForAppendWithSingleExplicitID<A>(explicitID:isUnary:count:body:), v17, v14, WitnessTable);
}

uint64_t closure #1 in HeterogeneousViewIDsAccumulator.prepareForAppendWithSingleExplicitID<A>(explicitID:isUnary:count:body:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t (*)(uint64_t a1, int a2), double))
{
  type metadata accessor for TypedCanonicalViewID();
  result = ContiguousArray.count.getter();
  v6 = __OFADD__(result, a2);
  v7 = result + a2;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for ContiguousArray();
    ContiguousArray.reserveCapacity(_:)(v7);
    v9 = MEMORY[0x1EEE9AC00](v8);
    return a3(partial apply for closure #1 in closure #1 in HeterogeneousViewIDsAccumulator.prepareForAppendWithSingleExplicitID<A>(explicitID:isUnary:count:body:), v9);
  }

  return result;
}

uint64_t closure #1 in closure #1 in HeterogeneousViewIDsAccumulator.prepareForAppendWithSingleExplicitID<A>(explicitID:isUnary:count:body:)(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = a1;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TypedCanonicalViewID();
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - v16;
  if (a4)
  {
    v18 = -1;
  }

  else
  {
    v18 = a2;
  }

  (*(v11 + 16))(v13, a5, a6, v15);
  *v17 = v10;
  *(v17 + 1) = v18;
  (*(v11 + 32))(&v17[*(v14 + 40)], v13, a6);
  type metadata accessor for ContiguousArray();
  return ContiguousArray.append(_:)();
}

uint64_t HeterogeneousViewIDsAccumulator.appendSlowPath<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v6 = 0;
  return ViewList.applyIDs(from:transform:to:)(&v7, &v5, partial apply for closure #1 in HeterogeneousViewIDsAccumulator.appendSlowPath<A>(_:), &v4, a2, a3);
}

uint64_t closure #1 in HeterogeneousViewIDsAccumulator.appendSlowPath<A>(_:)(void *a1)
{
  v1 = a1[1];
  v10[0] = *a1;
  v10[1] = v1;

  v2 = _ViewList_ID.Canonical.init(id:)(v10, &v13);
  v3 = v13;
  v4 = v14;
  if (v15)
  {
    (*(*v15 + 104))(v9, v2);
    outlined init with take of AnyTrackedValue(v9, v10);
    v5 = v11;
    v6 = v12;
    v7 = __swift_project_boxed_opaque_existential_1(v10, v11);
    HeterogeneousViewIDsAccumulator.append<A>(index:implicitID:explicitID:)(v3, v4, v7, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    HeterogeneousViewIDsAccumulator.append(index:implicitID:)(v13, v14);
  }

  return 1;
}

uint64_t specialized BidirectionalCollection._distance(from:to:)(uint64_t a1, BOOL a2, uint64_t a3, int a4)
{
  v43 = a3;
  type metadata accessor for RangeSet<String.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E7BA8]);
  v45 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - v9;
  type metadata accessor for RangeSet<String.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E7BE0]);
  v46 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - v13;
  type metadata accessor for RangeSet<String.Index>.Ranges(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  v48 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v44 = &v38 - v19;
  type metadata accessor for (SelectionRanges<String.Index>, SelectionRanges<String.Index>.Index)();
  v47 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v38 - v24;
  if (a2)
  {
    if (a4)
    {
      if (a1 >= v43)
      {
        if (v43 >= a1)
        {
          return 0;
        }

        goto LABEL_22;
      }

LABEL_7:
      v40 = (v8 + 8);
      v41 = (v12 + 32);
      v42 = (v12 + 8);
      LODWORD(v38) = a4;
      LODWORD(v39) = a4 | v43 ^ 1;
      v26 = 1;
      while (1)
      {
        v28 = &v25[*(v47 + 48)];
        outlined init with copy of SelectionRanges<String.Index>(v49, v25);
        *v28 = a1;
        *(v28 + 8) = a2;
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v30 = EnumCaseMultiPayload == 1;
        if (EnumCaseMultiPayload == 1)
        {
          v28 = v44;
          outlined init with copy of SelectionRanges<String.Index>(v25, v44);
          if (!a2)
          {
            goto LABEL_43;
          }

          v31 = v46;
          (*v41)(v14, v28, v46);
          RangeSet.ranges.getter();
          v52 = a1;
          lazy protocol witness table accessor for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges();
          v28 = v10;
          v32 = v45;
          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of Collection.endIndex.getter();
          v54 = v51;
          v55 = v50;
          dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
          (*v40)(v10, v32);
          (*v42)(v14, v31);
          v27 = __OFADD__(a1++, 1);
          if (v27)
          {
            goto LABEL_41;
          }

          outlined destroy of SelectionRanges<String.Index>(v25);
          if ((v38 & 1) != 0 && a1 == v43)
          {
            return v26;
          }
        }

        else
        {
          if (a2 || (a1 & 1) != 0)
          {
            goto LABEL_46;
          }

          outlined destroy of SelectionRanges<String.Index>(v25);
          if ((v39 & 1) == 0)
          {
            return v26;
          }

          a1 = 1;
        }

        a2 = v30;
        v27 = __OFADD__(v26++, 1);
        if (v27)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          (*v42)(v28, v46);
          goto LABEL_45;
        }
      }
    }
  }

  else
  {
    if (a4)
    {
      goto LABEL_7;
    }

    if ((a1 & 1) == 0)
    {
      if ((v43 & 1) == 0 || ((v43 ^ a1) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_7;
    }

    if ((v43 & 1) != 0 || ((v43 ^ a1) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_22:
  v42 = (v12 + 32);
  v38 = (v8 + 8);
  v39 = (v12 + 8);
  LODWORD(v41) = a4 | v43;
  v26 = -1;
  v40 = v17;
  while (1)
  {
    v28 = &v22[*(v47 + 48)];
    outlined init with copy of SelectionRanges<String.Index>(v49, v22);
    *v28 = a1;
    *(v28 + 8) = a2;
    v34 = swift_getEnumCaseMultiPayload();
    v33 = v34 == 1;
    if (v34 == 1)
    {
      break;
    }

    if (a2 || (a1 & 1) == 0)
    {
      goto LABEL_46;
    }

    outlined destroy of SelectionRanges<String.Index>(v22);
    if ((v41 & 1) == 0)
    {
      return v26;
    }

    a1 = 0;
LABEL_24:
    a2 = v33;
    v27 = __OFSUB__(v26--, 1);
    if (v27)
    {
      goto LABEL_40;
    }
  }

  outlined init with copy of SelectionRanges<String.Index>(v22, v17);
  if (a2)
  {
    v35 = v46;
    (*v42)(v14, v17, v46);
    v28 = v14;
    RangeSet.ranges.getter();
    v27 = __OFSUB__(a1--, 1);
    if (v27)
    {
      goto LABEL_42;
    }

    LODWORD(v44) = v33;
    v52 = a1;
    lazy protocol witness table accessor for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges();
    v36 = v45;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v54 = v51;
    v55 = v50;
    dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
    (*v38)(v10, v36);
    v28 = v14;
    (*v39)(v14, v35);
    outlined destroy of SelectionRanges<String.Index>(v22);
    if (a4)
    {
      v17 = v40;
      LOBYTE(v33) = v44;
      if (a1 == v43)
      {
        return v26;
      }
    }

    else
    {
      v17 = v40;
      LOBYTE(v33) = v44;
    }

    goto LABEL_24;
  }

  (*v39)(v17, v46);
LABEL_45:
  a2 = 0;
LABEL_46:
  v54 = 0;
  v55 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  MEMORY[0x193ABEDD0](0x207865646E49, 0xE600000000000000);
  v52 = a1;
  v53 = a2;
  type metadata accessor for RangeSet<String.Index>.Ranges(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>.Index, type metadata accessor for SelectionRanges.Index);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD7BE80);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v40 = a3;
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0);
  v8 = v7;
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  type metadata accessor for SelectionRanges<AttributedString.Index>(0);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v38 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v39 = &v35 - v19;
  type metadata accessor for (SelectionRanges<AttributedString.Index>, SelectionRanges<AttributedString.Index>.Index)();
  v42 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v35 - v24;
  v41 = a4;
  if (a2)
  {
    if (a4)
    {
      if (a1 >= v40)
      {
        if (v40 >= a1)
        {
          return 0;
        }

        goto LABEL_22;
      }

LABEL_7:
      ++v36;
      v37 = (v13 + 32);
      v38 = (v13 + 8);
      LODWORD(v35) = a4 | v40 ^ 1;
      v26 = 1;
      while (1)
      {
        v28 = &v25[*(v42 + 48)];
        outlined init with copy of (Hashable, isUnary: Bool)(v44, v25, type metadata accessor for SelectionRanges<AttributedString.Index>);
        *v28 = a1;
        v28[8] = a2;
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v30 = EnumCaseMultiPayload == 1;
        if (EnumCaseMultiPayload == 1)
        {
          v28 = v39;
          outlined init with copy of (Hashable, isUnary: Bool)(v25, v39, type metadata accessor for SelectionRanges<AttributedString.Index>);
          if (!a2)
          {
            goto LABEL_42;
          }

          (*v37)(v15, v28, v12);
          RangeSet.ranges.getter();
          v47 = a1;
          lazy protocol witness table accessor for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, type metadata accessor for RangeSet<AttributedString.Index>.Ranges);
          v28 = v10;
          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of Collection.endIndex.getter();
          v49 = v46;
          v50 = v45;
          dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
          (*v36)(v10, v8);
          (*v38)(v15, v12);
          v27 = __OFADD__(a1++, 1);
          if (v27)
          {
            goto LABEL_40;
          }

          outlined destroy of (Hashable, isUnary: Bool)(v25, type metadata accessor for SelectionRanges<AttributedString.Index>);
          if ((v41 & 1) != 0 && a1 == v40)
          {
            return v26;
          }
        }

        else
        {
          if (a2 || (a1 & 1) != 0)
          {
            goto LABEL_45;
          }

          outlined destroy of (Hashable, isUnary: Bool)(v25, type metadata accessor for SelectionRanges<AttributedString.Index>);
          if ((v35 & 1) == 0)
          {
            return v26;
          }

          a1 = 1;
        }

        a2 = v30;
        v27 = __OFADD__(v26++, 1);
        if (v27)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          v34 = v38;
          goto LABEL_44;
        }
      }
    }
  }

  else
  {
    if (a4)
    {
      goto LABEL_7;
    }

    if ((a1 & 1) == 0)
    {
      if ((v40 & 1) == 0 || ((v40 ^ a1) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_7;
    }

    if ((v40 & 1) != 0 || ((v40 ^ a1) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_22:
  v39 = (v13 + 32);
  v35 = v36 + 1;
  v36 = (v13 + 8);
  LODWORD(v37) = a4 | v40;
  v26 = -1;
  while (1)
  {
    v28 = &v22[*(v42 + 48)];
    outlined init with copy of (Hashable, isUnary: Bool)(v44, v22, type metadata accessor for SelectionRanges<AttributedString.Index>);
    *v28 = a1;
    v28[8] = a2;
    v31 = swift_getEnumCaseMultiPayload();
    v32 = v31 == 1;
    if (v31 != 1)
    {
      if (a2 || (a1 & 1) == 0)
      {
        goto LABEL_45;
      }

      outlined destroy of (Hashable, isUnary: Bool)(v22, type metadata accessor for SelectionRanges<AttributedString.Index>);
      if ((v37 & 1) == 0)
      {
        return v26;
      }

      a1 = 0;
      goto LABEL_23;
    }

    v28 = v38;
    outlined init with copy of (Hashable, isUnary: Bool)(v22, v38, type metadata accessor for SelectionRanges<AttributedString.Index>);
    if (!a2)
    {
      break;
    }

    (*v39)(v15, v28, v12);
    v28 = v15;
    RangeSet.ranges.getter();
    v27 = __OFSUB__(a1--, 1);
    if (v27)
    {
      goto LABEL_41;
    }

    v47 = a1;
    lazy protocol witness table accessor for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, type metadata accessor for RangeSet<AttributedString.Index>.Ranges);
    v28 = v10;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v49 = v46;
    v50 = v45;
    dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
    (*v35)(v10, v8);
    (*v36)(v15, v12);
    outlined destroy of (Hashable, isUnary: Bool)(v22, type metadata accessor for SelectionRanges<AttributedString.Index>);
    if ((v41 & 1) != 0 && a1 == v40)
    {
      return v26;
    }

LABEL_23:
    a2 = v32;
    v27 = __OFSUB__(v26--, 1);
    if (v27)
    {
      goto LABEL_39;
    }
  }

  v34 = v36;
LABEL_44:
  (*v34)(v28, v12);
  a2 = 0;
LABEL_45:
  v49 = 0;
  v50 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  MEMORY[0x193ABEDD0](0x207865646E49, 0xE600000000000000);
  v47 = a1;
  v48 = a2;
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0, &lazy cache variable for type metadata for SelectionRanges<AttributedString.Index>.Index, type metadata accessor for SelectionRanges.Index);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD7BE80);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *initializeBufferWithCopyOfBuffer for TypedCanonicalViewID(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-9 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v9 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v10 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v9 = *v10;
    (*(v4 + 16))((v9 + v5 + 4) & ~v5, (v10 + v5 + 4) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xFC ^ 0x1FC) & (v5 + 16)));
  }

  return v3;
}

_DWORD *initializeWithCopy for TypedCanonicalViewID(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 16))((v4 + *(v6 + 80) + 4) & ~*(v6 + 80), (v5 + *(v6 + 80) + 4) & ~*(v6 + 80));
  return a1;
}

_DWORD *assignWithCopy for TypedCanonicalViewID(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 24))((v4 + *(v6 + 80) + 4) & ~*(v6 + 80), (v5 + *(v6 + 80) + 4) & ~*(v6 + 80));
  return a1;
}

_DWORD *initializeWithTake for TypedCanonicalViewID(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 32))((v4 + *(v6 + 80) + 4) & ~*(v6 + 80), (v5 + *(v6 + 80) + 4) & ~*(v6 + 80));
  return a1;
}

_DWORD *assignWithTake for TypedCanonicalViewID(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 40))((v4 + *(v6 + 80) + 4) & ~*(v6 + 80), (v5 + *(v6 + 80) + 4) & ~*(v6 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for TypedCanonicalViewID(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6);
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

void storeEnumTagSinglePayload for TypedCanonicalViewID(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 4) & ~v8;

  v18(v19);
}

uint64_t assignWithCopy for HeterogeneousViewIDsAccumulator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    v5 = (a1 + 16);
    if (v4)
    {
      __swift_assign_boxed_opaque_existential_1(v5, (a2 + 16));
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else if (v4)
  {
    *(a1 + 40) = v4;
    *(a1 + 48) = *(a2 + 48);
    (**(v4 - 8))(a1 + 16, a2 + 16);
    goto LABEL_8;
  }

  v6 = *(a2 + 16);
  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
LABEL_8:
  v8 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (!v8)
    {
      outlined destroy of (Hashable, isUnary: Bool)(a1 + 56, type metadata accessor for (Hashable, isUnary: Bool));
      v9 = *(a2 + 81);
      v10 = *(a2 + 72);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = v10;
      *(a1 + 81) = v9;
      return a1;
    }

    __swift_assign_boxed_opaque_existential_1((a1 + 56), (a2 + 56));
  }

  else
  {
    if (!v8)
    {
      v11 = *(a2 + 56);
      v12 = *(a2 + 72);
      *(a1 + 81) = *(a2 + 81);
      *(a1 + 72) = v12;
      *(a1 + 56) = v11;
      return a1;
    }

    *(a1 + 80) = v8;
    *(a1 + 88) = *(a2 + 88);
    (**(v8 - 8))(a1 + 56, a2 + 56);
  }

  *(a1 + 96) = *(a2 + 96);
  return a1;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for HeterogeneousViewIDsAccumulator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  if (*(a1 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 16);
  }

  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  if (!*(a1 + 80))
  {
    goto LABEL_7;
  }

  if (!*(a2 + 80))
  {
    outlined destroy of (Hashable, isUnary: Bool)(a1 + 56, type metadata accessor for (Hashable, isUnary: Bool));
LABEL_7:
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 81) = *(a2 + 81);
    return a1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t getEnumTagSinglePayload for HeterogeneousViewIDsAccumulator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t storeEnumTagSinglePayload for HeterogeneousViewIDsAccumulator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeterogeneousViewIDsAccumulator.UnsafeOutputBuffer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 48))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for HeterogeneousViewIDsAccumulator.UnsafeOutputBuffer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

void type metadata accessor for RangeSet<AttributedString.Index>.Ranges(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AttributedString.Index();
    v7 = lazy protocol witness table accessor for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined init with copy of (Hashable, isUnary: Bool)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of (Hashable, isUnary: Bool)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (SelectionRanges<AttributedString.Index>, SelectionRanges<AttributedString.Index>.Index)()
{
  if (!lazy cache variable for type metadata for (SelectionRanges<AttributedString.Index>, SelectionRanges<AttributedString.Index>.Index))
  {
    type metadata accessor for SelectionRanges<AttributedString.Index>(255);
    type metadata accessor for RangeSet<AttributedString.Index>.Ranges(255, &lazy cache variable for type metadata for SelectionRanges<AttributedString.Index>.Index, type metadata accessor for SelectionRanges.Index);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (SelectionRanges<AttributedString.Index>, SelectionRanges<AttributedString.Index>.Index));
    }
  }
}

uint64_t lazy protocol witness table accessor for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of SelectionRanges<String.Index>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RangeSet<String.Index>.Ranges(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SelectionRanges<String.Index>(uint64_t a1)
{
  type metadata accessor for RangeSet<String.Index>.Ranges(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (SelectionRanges<String.Index>, SelectionRanges<String.Index>.Index)()
{
  if (!lazy cache variable for type metadata for (SelectionRanges<String.Index>, SelectionRanges<String.Index>.Index))
  {
    type metadata accessor for RangeSet<String.Index>.Ranges(255, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
    type metadata accessor for RangeSet<String.Index>.Ranges(255, &lazy cache variable for type metadata for SelectionRanges<String.Index>.Index, type metadata accessor for SelectionRanges.Index);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (SelectionRanges<String.Index>, SelectionRanges<String.Index>.Index));
    }
  }
}

void type metadata accessor for RangeSet<String.Index>.Ranges(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges()
{
  result = lazy protocol witness table cache variable for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges;
  if (!lazy protocol witness table cache variable for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges)
  {
    type metadata accessor for RangeSet<String.Index>.Ranges(255, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E7BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges);
  }

  return result;
}

uint64_t static TupleContent<each A>._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a3;
  v10 = *a1;
  v11 = *(a2 + 48);
  v46 = *(a2 + 32);
  v47 = v11;
  v48 = *(a2 + 64);
  v49 = *(a2 + 80);
  v12 = *(a2 + 16);
  v44 = *a2;
  v45 = v12;
  if (a3 != 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v8)
    {
      v15 = 0;
      v16 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 < 4)
      {
        goto LABEL_8;
      }

      if (&v14[-v16] < 0x20)
      {
        goto LABEL_8;
      }

      v15 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v17 = (v16 + 16);
      v18 = v14 + 16;
      v19 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 4;
      }

      while (v19);
      if (v15 != v8)
      {
LABEL_8:
        v21 = v8 - v15;
        v22 = 8 * v15;
        v23 = &v14[8 * v15];
        v24 = (v16 + v22);
        do
        {
          v25 = *v24++;
          *v23 = v25;
          v23 += 8;
          --v21;
        }

        while (v21);
      }
    }

    swift_getTupleTypeMetadata();
  }

  result = AGTupleCount();
  if (result == 1)
  {
    *(&v41[2] + 8) = v46;
    *(&v41[3] + 8) = v47;
    *(&v41[4] + 8) = v48;
    *(v41 + 8) = v44;
    DWORD2(v41[5]) = v49;
    *(&v41[1] + 8) = v45;
    LODWORD(v41[0]) = v10;
    v42 = 0uLL;
    if (v8)
    {
      outlined init with copy of _ViewInputs(&v44, v40);
      v28 = (a4 & 0xFFFFFFFFFFFFFFFELL);
      v29 = (a5 & 0xFFFFFFFFFFFFFFFELL);
      Unary = type metadata accessor for TupleContent<each A>.MakeUnary();
      do
      {
        v32 = *v28++;
        v31 = v32;
        v33 = *v29++;
        result = TupleContent<each A>.MakeUnary.visit<A>(type:)(v31, Unary, v31, v33);
        --v8;
      }

      while (v8);
      v34 = v42;
      if (v42)
      {
        v35 = DWORD2(v42);
        v36 = HIDWORD(*(&v42 + 1));
        v40[4] = v41[4];
        v40[5] = v41[5];
        v40[6] = v42;
        v40[0] = v41[0];
        v40[1] = v41[1];
        v40[2] = v41[2];
        v40[3] = v41[3];
        v37 = *(*(Unary - 8) + 8);

        result = v37(v40, Unary);
        *a6 = v34;
        *(a6 + 8) = v35;
        *(a6 + 12) = v36;
        return result;
      }
    }

    else
    {
      result = outlined init with copy of _ViewInputs(&v44, v40);
    }

    __break(1u);
  }

  else if (result)
  {
    v38 = type metadata accessor for TupleContent();
    LODWORD(v40[0]) = v10;
    v41[2] = v46;
    v41[3] = v47;
    v41[4] = v48;
    LODWORD(v41[5]) = v49;
    v41[0] = v44;
    v41[1] = v45;
    v43 = a5;
    WitnessTable = swift_getWitnessTable();
    return static View.makeImplicitRoot(view:inputs:)(v40, v41, v38, WitnessTable, a6);
  }

  else
  {
    *a6 = MEMORY[0x1E69E7CC0];
    v27 = *MEMORY[0x1E698D3F8];
    *(a6 + 8) = 0;
    *(a6 + 12) = v27;
  }

  return result;
}

uint64_t TupleContent<each A>.MakeUnary.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v42 = *MEMORY[0x1E69E9840];
  v17[1] = *v4;
  type metadata accessor for TupleContent();
  type metadata accessor for _GraphValue();
  _GraphValue.unsafeBitCast<A>(to:)(&v18);
  v8 = v18;
  v9 = *(v4 + 56);
  v38 = *(v4 + 40);
  v39 = v9;
  v40 = *(v4 + 72);
  v41 = *(v4 + 88);
  v10 = *(v4 + 24);
  v36 = *(v4 + 8);
  v37 = v10;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v29 = v39;
  v30 = v40;
  v31 = v41;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v12 = v38;
  LODWORD(v28) = 0;
  v17[0] = v8;
  v32[0] = v36;
  v32[1] = v37;
  v33 = v41;
  v32[3] = v39;
  v32[4] = v40;
  v32[2] = v28;
  v22 = v28;
  v23 = v39;
  v24 = v40;
  v25 = v41;
  v20 = v36;
  v21 = v37;
  v13 = *(a4 + 24);
  outlined init with copy of _ViewInputs(&v36, v34);
  outlined init with copy of _ViewInputs(v32, v34);
  v13(v19, v17, &v20, a3, a4);
  v34[2] = v22;
  v34[3] = v23;
  v34[4] = v24;
  v35 = v25;
  v34[0] = v20;
  v34[1] = v21;
  outlined destroy of _ViewInputs(v34);
  LODWORD(v28) = v12;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v19, &v26);
    AGSubgraphEndTreeElement();
  }

  v22 = v28;
  v23 = v29;
  v24 = v30;
  v25 = v31;
  v20 = v26;
  v21 = v27;
  outlined destroy of _ViewInputs(&v20);
  v14 = v19[0];
  v15 = v19[1];

  *(v5 + 96) = v14;
  *(v5 + 104) = v15;
  return result;
}

uint64_t static TupleContent<each A>._makeViewList(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a5;
  v10 = *a1;
  if (a3 != 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a3)
    {
      v13 = 0;
      v14 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (a3 < 4)
      {
        goto LABEL_8;
      }

      if (&v12[-v14] < 0x20)
      {
        goto LABEL_8;
      }

      v13 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      v15 = (v14 + 16);
      v16 = v12 + 16;
      v17 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v18 = *v15;
        *(v16 - 1) = *(v15 - 1);
        *v16 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
      if (v13 != a3)
      {
LABEL_8:
        v19 = a3 - v13;
        v20 = 8 * v13;
        v21 = &v12[8 * v13];
        v22 = (v14 + v20);
        do
        {
          v23 = *v22++;
          *v21 = v23;
          v21 += 8;
          --v19;
        }

        while (v19);
      }
    }

    swift_getTupleTypeMetadata();
  }

  v24 = *(a2 + 56);
  outlined init with copy of _ViewListInputs(a2, v36);
  v37 = v10;
  outlined init with take of _ViewListInputs(v36, v38);
  v40 = 0;
  v41 = 0;
  v42 = (v24 & 0x200) != 0;
  v43 = BYTE2(v24) & 1;
  v44 = MEMORY[0x1E69E7CC0];
  if ((v24 & 0x200) != 0 && (v39 & 0x200) != 0)
  {
    v39 &= ~0x200uLL;
  }

  if (a3)
  {
    v34 = a6;
    v25 = 0;
    v26 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v27 = v35 & 0xFFFFFFFFFFFFFFFELL;
    while (1)
    {
      v28 = *(v26 + 8 * v25);
      v29 = *(v27 + 8 * v25);
      v40 = v25;
      v41 = AGTupleElementOffset();
      List = type metadata accessor for TupleContent<each A>.MakeList();
      result = TupleView.MakeList.visit<A>(type:)(v28, List, v28, v29);
      if (v25 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (a3 == ++v25)
      {
        v32 = v44;
        a6 = v34;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
LABEL_20:
    static _ViewListOutputs.concat(_:inputs:)(v32, v38, a6);
    v33 = type metadata accessor for TupleContent<each A>.MakeList();
    return (*(*(v33 - 8) + 8))(&v37, v33);
  }

  return result;
}

uint64_t static TupleContent<each A>._viewListCount(inputs:)(_OWORD *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[3];
  v43[2] = a1[2];
  v43[3] = v8;
  v43[4] = a1[4];
  v9 = a1[1];
  v43[0] = *a1;
  v43[1] = v9;
  if (a2 == 1)
  {
    if ((BYTE9(v43[0]) & 2) != 0)
    {
      return AGTupleCount();
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v13 = 0;
      v14 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_10;
      }

      if (&v12[-v14] < 0x20)
      {
        goto LABEL_10;
      }

      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v15 = (v14 + 16);
      v16 = v12 + 16;
      v17 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v18 = *v15;
        *(v16 - 1) = *(v15 - 1);
        *v16 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
      if (v13 != a2)
      {
LABEL_10:
        v19 = a2 - v13;
        v20 = 8 * v13;
        v21 = &v12[8 * v13];
        v22 = (v14 + v20);
        do
        {
          v23 = *v22++;
          *v21 = v23;
          v21 += 8;
          --v19;
        }

        while (v19);
      }
    }

    swift_getTupleTypeMetadata();
    if ((BYTE9(v43[0]) & 2) != 0)
    {
      return AGTupleCount();
    }
  }

  v24 = a1[3];
  v40 = a1[2];
  v41 = v24;
  v42[0] = a1[4];
  v25 = a1[1];
  v38 = *a1;
  v39 = v25;
  *&v42[1] = 0;
  BYTE8(v42[1]) = 0;
  outlined init with copy of _ViewListCountInputs(v43, &v33);
  if (a2)
  {
    v26 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v27 = (a4 & 0xFFFFFFFFFFFFFFFELL);
    v28 = type metadata accessor for TupleContent<each A>.CountViews();
    v29 = a2;
    while (1)
    {
      TupleView.CountViews.visit<A>(type:)(*v26, v28, *v26, *v27);
      if (BYTE8(v42[1]) == 1)
      {
        break;
      }

      ++v27;
      ++v26;
      if (!--v29)
      {
        v30 = *&v42[1];
        goto LABEL_19;
      }
    }

    v32 = *&v42[1];
    v35 = v40;
    v36 = v41;
    v37[0] = v42[0];
    *(v37 + 9) = *(v42 + 9);
    v33 = v38;
    v34 = v39;
    (*(*(v28 - 8) + 8))(&v33, v28);
    return v32;
  }

  else
  {
    v30 = 0;
LABEL_19:
    v35 = v40;
    v36 = v41;
    v37[0] = v42[0];
    *(v37 + 9) = *(v42 + 9);
    v33 = v38;
    v34 = v39;
    v31 = type metadata accessor for TupleContent<each A>.CountViews();
    (*(*(v31 - 8) + 8))(&v33, v31);
    return v30;
  }
}

uint64_t outlined consume of Image.NamedResolved?(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    outlined consume of Image.Location(a3);
  }

  return result;
}

uint64_t specialized HeterogeneousViewIDsAccumulator.append<A>(contentsOf:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  if (v4 && (v5 = *(v1 + 48), __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40)), (v6 = (*(v5 + 24))(&type metadata for ForEachConstantID, &type metadata for ForEachConstantID, v4, v5)) != 0))
  {
    *&v15 = v6;
    outlined destroy of AbstractContiguousArray?(v1 + 16);
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0;

    specialized ContiguousArray.append<A>(contentsOf:)(v7);
    type metadata accessor for ContiguousArray<ForEachConstantID>();
    v18 = v8;
    v19 = lazy protocol witness table accessor for type ContiguousArray<TypedCanonicalViewID<ForEachConstantID>> and conformance <A> ContiguousArray<A>(&lazy protocol witness table cache variable for type ContiguousArray<ForEachConstantID> and conformance <A> ContiguousArray<A>, type metadata accessor for ContiguousArray<ForEachConstantID>, lazy protocol witness table accessor for type ForEachConstantID and conformance ForEachConstantID);
    v17[0] = v15;
  }

  else
  {
    outlined init with copy of AbstractContiguousArray?(v1 + 16, &v15);
    if (v16)
    {
      outlined init with take of AnyTrackedValue(&v15, v17);
      v9 = v18;
      v10 = v19;
      v11 = __swift_project_boxed_opaque_existential_1(v17, v18);
      v12 = lazy protocol witness table accessor for type ForEachConstantID and conformance ForEachConstantID();
      append #1 <A><A1>(buffer:) in HeterogeneousViewIDsAccumulator.append<A>(contentsOf:)(v11, v2, &type metadata for ForEachConstantID, v9, v12, v10);
      outlined destroy of AbstractContiguousArray?(v2 + 16);
      *(v2 + 16) = 0u;
      *(v2 + 32) = 0u;
      *(v2 + 48) = 0;
      __swift_destroy_boxed_opaque_existential_1(v17);
    }

    else
    {
      outlined destroy of AbstractContiguousArray?(&v15);
    }

    type metadata accessor for ContiguousArray<ForEachConstantID>();
    v18 = v13;
    v19 = lazy protocol witness table accessor for type ContiguousArray<TypedCanonicalViewID<ForEachConstantID>> and conformance <A> ContiguousArray<A>(&lazy protocol witness table cache variable for type ContiguousArray<ForEachConstantID> and conformance <A> ContiguousArray<A>, type metadata accessor for ContiguousArray<ForEachConstantID>, lazy protocol witness table accessor for type ForEachConstantID and conformance ForEachConstantID);
    v17[0] = a1;
  }

  return outlined assign with take of AbstractContiguousArray?(v17, v2 + 16);
}

{
  v2 = v1;
  v4 = *(v1 + 40);
  if (v4 && (v5 = *(v1 + 48), __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40)), type metadata accessor for TypedCanonicalViewID<ForEachConstantID>(), (v7 = (*(v5 + 24))(v6, v6, v4, v5)) != 0))
  {
    *&v18 = v7;
    outlined destroy of AbstractContiguousArray?(v1 + 16);
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0;

    specialized ContiguousArray.append<A>(contentsOf:)(v8);
    type metadata accessor for ContiguousArray<TypedCanonicalViewID<ForEachConstantID>>();
    v21 = v9;
    v22 = lazy protocol witness table accessor for type ContiguousArray<TypedCanonicalViewID<ForEachConstantID>> and conformance <A> ContiguousArray<A>(&lazy protocol witness table cache variable for type ContiguousArray<TypedCanonicalViewID<ForEachConstantID>> and conformance <A> ContiguousArray<A>, type metadata accessor for ContiguousArray<TypedCanonicalViewID<ForEachConstantID>>, lazy protocol witness table accessor for type TypedCanonicalViewID<ForEachConstantID> and conformance TypedCanonicalViewID<A>);
    v20[0] = v18;
  }

  else
  {
    outlined init with copy of AbstractContiguousArray?(v1 + 16, &v18);
    if (v19)
    {
      outlined init with take of AnyTrackedValue(&v18, v20);
      v10 = v21;
      v11 = v22;
      v12 = __swift_project_boxed_opaque_existential_1(v20, v21);
      type metadata accessor for TypedCanonicalViewID<ForEachConstantID>();
      v14 = v13;
      v15 = lazy protocol witness table accessor for type TypedCanonicalViewID<ForEachConstantID> and conformance TypedCanonicalViewID<A>();
      append #1 <A><A1>(buffer:) in HeterogeneousViewIDsAccumulator.append<A>(contentsOf:)(v12, v2, v14, v10, v15, v11);
      outlined destroy of AbstractContiguousArray?(v2 + 16);
      *(v2 + 16) = 0u;
      *(v2 + 32) = 0u;
      *(v2 + 48) = 0;
      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    else
    {
      outlined destroy of AbstractContiguousArray?(&v18);
    }

    type metadata accessor for ContiguousArray<TypedCanonicalViewID<ForEachConstantID>>();
    v21 = v16;
    v22 = lazy protocol witness table accessor for type ContiguousArray<TypedCanonicalViewID<ForEachConstantID>> and conformance <A> ContiguousArray<A>(&lazy protocol witness table cache variable for type ContiguousArray<TypedCanonicalViewID<ForEachConstantID>> and conformance <A> ContiguousArray<A>, type metadata accessor for ContiguousArray<TypedCanonicalViewID<ForEachConstantID>>, lazy protocol witness table accessor for type TypedCanonicalViewID<ForEachConstantID> and conformance TypedCanonicalViewID<A>);
    v20[0] = a1;
  }

  return outlined assign with take of AbstractContiguousArray?(v20, v2 + 16);
}

uint64_t ForEachConstantID.init(_:_:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t ForEachConstantID.init<A>(_:_:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

void ForEachConstantID.hash(into:)()
{
  v1 = *(v0 + 8);
  MEMORY[0x193AC11A0](*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int ForEachConstantID.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ForEachConstantID()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ForEachConstantID()
{
  v1 = *(v0 + 8);
  MEMORY[0x193AC11A0](*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ForEachConstantID()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 8);
  MEMORY[0x193AC11A0](*v0);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t ForEachState.appendViewIDsForDynamicChildCount<A>(into:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 2;
  v14 = 0;
  v5 = *(v4 + 168);
  v6 = *(v4 + 172);
  v11 = 0;
  v12 = 0;
  v9[2] = a1;
  v7 = *(a4 + 64);
  v10 = v6;
  return v7(&v14, &v13, v5 | (v6 << 32), &v11, partial apply for closure #1 in ForEachState.appendViewIDsForDynamicChildCount<A>(into:_:), v9, a3, a4);
}

uint64_t ForEachState.appendViewIDsForSingleChildView(into:explicitIDOffsets:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2 - a1;
  v5 = a2 < a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v6 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6)
  {
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v4 + 16) = v6;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v10[1] = v6;
  v11 = 0;
  v10[0] = v4 + 32;
  closure #1 in ForEachState.appendViewIDsForSingleChildView(into:explicitIDOffsets:)(v10, &v11, a1, a2, v3);
  a3 = v11;
  v5 = v6 < v11;
  if (v6 >= v11)
  {
    *(v4 + 16) = v11;
    specialized HeterogeneousViewIDsAccumulator.append<A>(contentsOf:)(v4);
  }

LABEL_12:
  __break(1u);
  if (v5)
  {
    __break(1u);
  }

  *(v4 + 16) = a3;

  __break(1u);
  return result;
}

uint64_t ForEachState.appendViewIDsForMultipleChildren(into:childViewIndices:explicitIDKeyPath:)(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v24 = a3;
  v25 = a1;
  v6 = *v3;
  v7 = *v3;
  v8 = *(*v3 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v23 - v10;
  v13 = specialized Collection.count.getter(v12);
  v14 = *(*v4 + 160);
  swift_beginAccess();
  v15 = *(v6 + 104);
  v16 = *(v6 + 112);
  v26 = v8;
  v23 = *(v7 + 88);
  v27 = v23;
  v28 = v15;
  v29 = v16;
  v17 = type metadata accessor for ForEach();
  result = (*(*(v17 - 8) + 48))(v4 + v14, 1, v17);
  if (result != 1)
  {
    (*(v9 + 16))(v11, v4 + v14, v8);
    v19 = dispatch thunk of Collection.count.getter();
    result = (*(v9 + 8))(v11, v8);
    if ((v19 * v13) >> 64 == (v19 * v13) >> 63)
    {
      MEMORY[0x1EEE9AC00](result);
      *(&v23 - 4) = v24;
      *(&v23 - 3) = v4;
      *(&v23 - 4) = a2;
      *(&v23 - 3) = v20;
      v21 = v23;
      *(&v23 - 1) = v13;
      return HeterogeneousViewIDsAccumulator.appendWithUnsafeOutputBuffer<A>(explicitID:count:body:)(v21, v22);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ForEachState.appendViewIDsForMultipleChildren(into:childViewIndices:explicitIDOffsets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v23[1] = a1;
  v9 = *v4;
  v10 = *(*v4 + 80);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v23 - v12;
  v15 = specialized Collection.count.getter(v14);
  v16 = *(*v5 + 160);
  swift_beginAccess();
  v25 = v10;
  v17 = *(v9 + 88);
  v24 = *(v9 + 104);
  *v26 = v17;
  *&v26[16] = v24;
  v18 = type metadata accessor for ForEach();
  result = (*(*(v18 - 8) + 48))(v5 + v16, 1, v18);
  if (result == 1)
  {
    goto LABEL_7;
  }

  (*(v11 + 16))(v13, v5 + v16, v10);
  v20 = dispatch thunk of Collection.count.getter();
  result = (*(v11 + 8))(v13, v10);
  v21 = v20 * v15;
  if ((v20 * v15) >> 64 != (v20 * v15) >> 63)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (v21 >= 1)
  {
    type metadata accessor for TypedCanonicalViewID<ForEachConstantID>();
    v22 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v22 + 16) = v21;
    v25 = v22 + 32;
    *v26 = v20 * v15;
    *&v26[8] = xmmword_18DDD9E10;
    *&v26[24] = xmmword_18DDACA80;
    closure #1 in ForEachState.appendViewIDsForMultipleChildren(into:childViewIndices:explicitIDOffsets:)(&v25, a3, a4, a2, v15, v5);
    *(v22 + 16) = v21;
    specialized HeterogeneousViewIDsAccumulator.append<A>(contentsOf:)(v22);
  }

  return result;
}

uint64_t ForEachState.appendViewIDsForMultipleChildren(into:childViews:explicitIDKeyPath:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a3;
  v24 = a1;
  v6 = *v3;
  v7 = *v3;
  v8 = *(*v3 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v22 - v10;
  v13 = *(v12 + 16);
  v14 = v6[20];
  swift_beginAccess();
  v15 = v6[13];
  v16 = v6[14];
  v25 = v8;
  v22 = *(v7 + 11);
  v26 = v22;
  v27 = v15;
  v28 = v16;
  v17 = type metadata accessor for ForEach();
  result = (*(*(v17 - 8) + 48))(v4 + v14, 1, v17);
  if (result != 1)
  {
    (*(v9 + 16))(v11, v4 + v14, v8);
    v19 = dispatch thunk of Collection.count.getter();
    result = (*(v9 + 8))(v11, v8);
    if ((v19 * v13) >> 64 == (v19 * v13) >> 63)
    {
      MEMORY[0x1EEE9AC00](result);
      *(&v22 - 4) = v23;
      *(&v22 - 3) = v4;
      v20 = v22;
      *(&v22 - 2) = a2;
      *(&v22 - 1) = v13;
      return HeterogeneousViewIDsAccumulator.appendWithUnsafeOutputBuffer<A>(explicitID:count:body:)(v20, v21);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ForEachState.appendViewIDsForMultipleChildren(into:childViews:explicitIDOffsets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24[1] = a1;
  v9 = *v4;
  v10 = *(*v4 + 80);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v24 - v12;
  v15 = *(v14 + 16);
  v17 = *(v16 + 160);
  swift_beginAccess();
  v26 = v10;
  v18 = *(v9 + 88);
  v25 = *(v9 + 104);
  *v27 = v18;
  *&v27[16] = v25;
  v19 = type metadata accessor for ForEach();
  result = (*(*(v19 - 8) + 48))(v5 + v17, 1, v19);
  if (result == 1)
  {
    goto LABEL_7;
  }

  (*(v11 + 16))(v13, v5 + v17, v10);
  v21 = dispatch thunk of Collection.count.getter();
  result = (*(v11 + 8))(v13, v10);
  v22 = v21 * v15;
  if ((v21 * v15) >> 64 != (v21 * v15) >> 63)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (v22 >= 1)
  {
    type metadata accessor for TypedCanonicalViewID<ForEachConstantID>();
    v23 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v23 + 16) = v22;
    v26 = v23 + 32;
    *v27 = v21 * v15;
    *&v27[8] = xmmword_18DDD9E10;
    *&v27[24] = xmmword_18DDACA80;
    closure #1 in ForEachState.appendViewIDsForMultipleChildren(into:childViews:explicitIDOffsets:)(&v26, a3, a4, a2, v15, v5);
    *(v23 + 16) = v22;
    specialized HeterogeneousViewIDsAccumulator.append<A>(contentsOf:)(v23);
  }

  return result;
}

uint64_t closure #1 in ForEachState.appendViewIDsForDynamicChildCount<A>(into:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = *a4;
  v8 = *(a4 + 8);
  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v19 = v7;
  LOBYTE(v20) = v8;
  _ViewList_TemporarySublistTransform.bindID(_:)(&v24);
  v9 = v25;
  v23[0] = v24;
  v23[1] = v25;

  v10 = _ViewList_ID.Canonical.init(id:)(v23, &v19);
  if (v20)
  {
    (*(*v20 + 104))(&v19, v10);
    v11 = v21;
    v12 = v22;
    v13 = __swift_project_boxed_opaque_existential_1(&v19, v21);
    if (*(v9 + 16))
    {
      v14 = *(v9 + 52);
    }

    else
    {
      v14 = 0;
    }

    MEMORY[0x1EEE9AC00](v15);
    v17[2] = a3;
    v17[3] = v7;
    v18 = v8;
    HeterogeneousViewIDsAccumulator.withExplicitID<A>(_:isUnary:body:)(v13, v14, partial apply for closure #1 in closure #1 in ForEachState.appendViewIDsForDynamicChildCount<A>(into:_:), v17, v11, v12);

    __swift_destroy_boxed_opaque_existential_1(&v19);
  }

  else
  {

    v19 = v7;
    LOBYTE(v20) = v8;
    appendViewIDs #1 <A, B, C><A1>(into:transform:) in closure #1 in ForEachState.appendViewIDsForDynamicChildCount<A>(into:_:)(a5, &v19, a3);
  }

  return 1;
}

uint64_t appendViewIDs #1 <A, B, C><A1>(into:transform:) in closure #1 in ForEachState.appendViewIDsForDynamicChildCount<A>(into:_:)(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined init with copy of _ViewList_Node(a3, &v24);
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v9 = *(v24 + 16);
      if (v9)
      {
        v10 = v24 + 32;
        do
        {
          outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v10, &v14);
          v11 = DWORD2(v16);
          outlined init with take of AnyTrackedValue(&v14, &v19);
          v23 = v11;
          v12 = v21;
          v13 = v22;
          __swift_project_boxed_opaque_existential_1(&v19, v21);
          (*(v13 + 48))(a1, v12, v13);
          outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(&v19);
          v10 += 48;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      LODWORD(v14) = v24;
      *(&v14 + 1) = *(&v24 + 1);
      *&v15 = v25;
      BYTE8(v15) = BYTE8(v25);
      _ViewList_Section.appendViewIDs(into:)(a1);
    }
  }

  else if (v29)
  {
    v16 = v26;
    v17 = v27;
    v18[0] = *v28;
    *(v18 + 13) = *&v28[13];
    v14 = v24;
    v15 = v25;
    v19 = v4;
    v20 = v5;
    _ViewList_TemporarySublistTransform.apply(sublist:)(&v14);
    _ViewList_Sublist.appendViewIDs(into:)(a1);
    return outlined destroy of _ViewList_Sublist(&v14);
  }

  else
  {
    outlined init with take of AnyTrackedValue(&v24, &v14);
    v6 = *(&v15 + 1);
    v7 = v16;
    __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
    (*(v7 + 48))(a1, v6, v7);
    return __swift_destroy_boxed_opaque_existential_1(&v14);
  }
}

uint64_t RandomAccessCollection.forEachUnsafeElement(_:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v42[7] = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v32 - v9;
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - v12;
  v37 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v33 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v42[3] = a3;
  v42[4] = a4;
  v40 = a2;
  v41 = a4;
  v39 = a1;
  v42[5] = a1;
  v42[6] = a2;
  v19 = v38;
  result = dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (LOBYTE(v42[0]) == 1)
  {
    v42[0] = 0;
    (*(v37 + 2))(v36, v19, a3);
    dispatch thunk of Sequence.makeIterator()();
    v36 = a3;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v37 = v18;
    v38 = v16;
    v35 = AssociatedConformanceWitness;
    dispatch thunk of IteratorProtocol.next()();
    v22 = v34;
    v23 = *(v34 + 48);
    if (v23(v13, 1, AssociatedTypeWitness) != 1)
    {
      v24 = v22 + 32;
      v25 = *(v22 + 32);
      do
      {
        v26 = v24;
        v27 = v25(v10, v13, AssociatedTypeWitness);
        MEMORY[0x1EEE9AC00](v27);
        v28 = v41;
        *(&v32 - 6) = v36;
        *(&v32 - 5) = v28;
        v29 = v40;
        *(&v32 - 4) = v39;
        *(&v32 - 3) = v29;
        *(&v32 - 2) = v42;
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v10, partial apply for closure #2 in RandomAccessCollection.forEachUnsafeElement(_:), (&v32 - 8), AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v30);
        (*(v22 + 8))(v10, AssociatedTypeWitness);
        if (__OFADD__(v42[0], 1))
        {
          __break(1u);
        }

        ++v42[0];
        dispatch thunk of IteratorProtocol.next()();
        v31 = v23(v13, 1, AssociatedTypeWitness);
        v24 = v26;
      }

      while (v31 != 1);
    }

    return (*(v33 + 8))(v37, v38);
  }

  return result;
}

void *closure #1 in ForEachState.appendViewIDsForSingleChildView(into:explicitIDOffsets:)(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 == a4)
  {
LABEL_7:
    if (!__OFSUB__(a4, a3))
    {
      *a2 = a4 - a3;
      return result;
    }
  }

  else
  {
    if (a4 < a3)
    {
      goto LABEL_11;
    }

    v5 = 16 * a3;
    v6 = a3;
    while (a4 != v6)
    {
      if (*(a5 + 172))
      {
        goto LABEL_12;
      }

      v7 = *(a5 + 168);
      v8 = *result + v5;
      *v8 = v6;
      *(v8 + 8) = v7;
      v5 += 16;
      if (a4 == ++v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t closure #1 in ForEachState.appendViewIDsForMultipleChildren(into:childViews:explicitIDKeyPath:)(_OWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a5;
  AssociatedConformanceWitness = a4;
  v65[8] = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v54 = *a3;
  v8 = v54;
  v9 = *(v7 + *MEMORY[0x1E69E77B0]);
  v50 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v47 - v10;
  v12 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v47 - v13;
  v15 = v8[13];
  v16 = v8[10];
  v59 = *(*(*(v15 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v61 = &v47 - v17;
  v57 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v49 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v56 = &v47 - v21;
  v22 = a1[1];
  v64[0] = *a1;
  v64[1] = v22;
  v64[2] = a1[2];
  v53 = KeyPath.makeInitializeFunction()();
  v55 = v23;
  v24 = *(*a3 + 160);
  swift_beginAccess();
  v25 = *(v7 + *MEMORY[0x1E69E77B0] + 8);
  v26 = v8[12];
  v27 = v8[14];
  v65[0] = v16;
  v65[1] = v25;
  v52 = v25;
  v65[2] = v26;
  v65[3] = v15;
  v63 = v15;
  v65[4] = v27;
  v28 = type metadata accessor for ForEach();
  if ((*(*(v28 - 8) + 48))(a3 + v24, 1, v28) == 1)
  {
    goto LABEL_10;
  }

  v29 = v56;
  v48 = *(v57 + 16);
  v30 = v48(v56, a3 + v24, v16);
  v51 = &v47;
  MEMORY[0x1EEE9AC00](v30);
  v31 = v52;
  *(&v47 - 12) = v16;
  *(&v47 - 11) = v31;
  v32 = v63;
  *(&v47 - 10) = v26;
  *(&v47 - 9) = v32;
  v33 = v54[15];
  *(&v47 - 8) = v27;
  *(&v47 - 7) = v33;
  v34 = v60;
  *(&v47 - 6) = AssociatedConformanceWitness;
  *(&v47 - 5) = v34;
  *(&v47 - 4) = v64;
  v35 = v55;
  *(&v47 - 3) = v53;
  *(&v47 - 2) = v35;
  MEMORY[0x1EEE9AC00](v36);
  *(&v47 - 4) = v16;
  *(&v47 - 3) = v37;
  *(&v47 - 2) = partial apply for closure #1 in closure #1 in ForEachState.appendViewIDsForMultipleChildren(into:childViews:explicitIDKeyPath:);
  *(&v47 - 1) = v38;
  v60 = v38;
  dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (v65[0])
  {
    v65[0] = 0;
    v48(v49, v29, v16);
    dispatch thunk of Sequence.makeIterator()();
    v59 = v16;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    dispatch thunk of IteratorProtocol.next()();
    v39 = *(v50 + 48);
    if (v39(v14, 1, v9) != 1)
    {
      v40 = *(v50 + 32);
      v41 = (v50 + 8);
      while (1)
      {
        v42 = v40(v11, v14, v9);
        MEMORY[0x1EEE9AC00](v42);
        v43 = v63;
        *(&v47 - 6) = v59;
        *(&v47 - 5) = v43;
        v44 = v60;
        *(&v47 - 4) = partial apply for closure #1 in closure #1 in ForEachState.appendViewIDsForMultipleChildren(into:childViews:explicitIDKeyPath:);
        *(&v47 - 3) = v44;
        *(&v47 - 2) = v65;
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, closure #2 in RandomAccessCollection.forEachUnsafeElement(_:)partial apply, (&v47 - 8), v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v45);
        (*v41)(v11, v9);
        if (__OFADD__(v65[0], 1))
        {
          break;
        }

        ++v65[0];
        dispatch thunk of IteratorProtocol.next()();
        if (v39(v14, 1, v9) == 1)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_10:
      __break(1u);
    }

LABEL_7:

    (*(v47 + 8))(v61, AssociatedTypeWitness);
    return (*(v57 + 8))(v56, v59);
  }

  else
  {

    return (*(v57 + 8))(v29, v16);
  }
}

uint64_t closure #1 in closure #1 in ForEachState.appendViewIDsForMultipleChildren(into:childViews:explicitIDKeyPath:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = result * a4;
    if ((result * a4) >> 64 == (result * a4) >> 63)
    {
      v8 = 0;
      v9 = *a5;
      v10 = a5[2];
      v11 = a5[3];
      v12 = (a3 + 36);
      v13 = a5[4];
      v14 = a5[5];
      while (1)
      {
        v15 = v7 + v8;
        if (__OFADD__(v7, v8))
        {
          break;
        }

        v16 = v15 * v10;
        if ((v15 * v10) >> 64 != (v15 * v10) >> 63)
        {
          goto LABEL_9;
        }

        v17 = *(v12 - 1);
        v18 = *v12;
        ++v8;
        v12 += 2;
        v19 = v9 + v16;
        *(v19 + v11) = v17;
        *(v19 + v13) = v18;
        result = a6(a2, v19 + v14);
        if (v6 == v8)
        {
          return result;
        }
      }

      __break(1u);
LABEL_9:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t closure #1 in ForEachState.appendViewIDsForMultipleChildren(into:childViewIndices:explicitIDKeyPath:)(_OWORD *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v63 = a5;
  AssociatedConformanceWitness = a4;
  v69[8] = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v57 = *a3;
  v8 = v57;
  v9 = MEMORY[0x1E69E77B0];
  v10 = *(v7 + *MEMORY[0x1E69E77B0]);
  v52 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v64 = &v49 - v11;
  v12 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v49 - v13;
  v15 = v8[13];
  v16 = v8[10];
  v62 = *(*(*(v15 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v65 = &v49 - v17;
  v60 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v51 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v59 = &v49 - v21;
  v22 = a1[1];
  v68[0] = *a1;
  v68[1] = v22;
  v68[2] = a1[2];
  v56 = KeyPath.makeInitializeFunction()();
  v58 = v23;
  v24 = *(*a3 + 160);
  swift_beginAccess();
  v25 = *(v7 + *v9 + 8);
  v26 = v8[12];
  v27 = v8[14];
  v69[0] = v16;
  v69[1] = v25;
  v54 = v25;
  v69[2] = v26;
  v69[3] = v15;
  v67 = v15;
  v55 = v27;
  v69[4] = v27;
  v28 = type metadata accessor for ForEach();
  if ((*(*(v28 - 8) + 48))(a3 + v24, 1, v28) == 1)
  {
    goto LABEL_10;
  }

  v29 = AssociatedConformanceWitness;
  v30 = HIDWORD(AssociatedConformanceWitness);
  v31 = v59;
  v50 = *(v60 + 16);
  v32 = v50(v59, a3 + v24, v16);
  v53 = &v49;
  MEMORY[0x1EEE9AC00](v32);
  v33 = v54;
  *(&v49 - 12) = v16;
  *(&v49 - 11) = v33;
  v34 = v67;
  *(&v49 - 10) = v26;
  *(&v49 - 9) = v34;
  v35 = v57[15];
  *(&v49 - 8) = v55;
  *(&v49 - 7) = v35;
  *(&v49 - 12) = v29;
  *(&v49 - 11) = v30;
  *(&v49 - 5) = v63;
  *(&v49 - 4) = v68;
  v36 = v58;
  *(&v49 - 3) = v56;
  *(&v49 - 2) = v36;
  MEMORY[0x1EEE9AC00](v37);
  *(&v49 - 4) = v16;
  *(&v49 - 3) = v38;
  *(&v49 - 2) = partial apply for closure #1 in closure #1 in ForEachState.appendViewIDsForMultipleChildren(into:childViewIndices:explicitIDKeyPath:);
  *(&v49 - 1) = v39;
  v63 = v39;
  dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (v69[0])
  {
    v69[0] = 0;
    v50(v51, v31, v16);
    dispatch thunk of Sequence.makeIterator()();
    v62 = v16;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    dispatch thunk of IteratorProtocol.next()();
    v40 = *(v52 + 48);
    if (v40(v14, 1, v10) != 1)
    {
      v41 = *(v52 + 32);
      v42 = (v52 + 8);
      v43 = v64;
      while (1)
      {
        v44 = v41(v43, v14, v10);
        MEMORY[0x1EEE9AC00](v44);
        v45 = v67;
        *(&v49 - 6) = v62;
        *(&v49 - 5) = v45;
        v46 = v63;
        *(&v49 - 4) = partial apply for closure #1 in closure #1 in ForEachState.appendViewIDsForMultipleChildren(into:childViewIndices:explicitIDKeyPath:);
        *(&v49 - 3) = v46;
        *(&v49 - 2) = v69;
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v43, closure #2 in RandomAccessCollection.forEachUnsafeElement(_:)partial apply, (&v49 - 8), v10, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v47);
        (*v42)(v43, v10);
        if (__OFADD__(v69[0], 1))
        {
          break;
        }

        ++v69[0];
        dispatch thunk of IteratorProtocol.next()();
        if (v40(v14, 1, v10) == 1)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_10:
      __break(1u);
    }

LABEL_7:

    (*(v49 + 8))(v65, AssociatedTypeWitness);
    return (*(v60 + 8))(v59, v62);
  }

  else
  {

    return (*(v60 + 8))(v31, v16);
  }
}

uint64_t closure #1 in closure #1 in ForEachState.appendViewIDsForMultipleChildren(into:childViewIndices:explicitIDKeyPath:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v6 = HIDWORD(a3);
  if (a3 != HIDWORD(a3))
  {
    if (SHIDWORD(a3) >= a3)
    {
      v7 = result * a4;
      if ((result * a4) >> 64 != (result * a4) >> 63)
      {
LABEL_14:
        __break(1u);
        return result;
      }

      v8 = *a5;
      v9 = a5[2];
      v10 = a5[3];
      v11 = a3;
      v12 = a3 >> 32;
      v13 = a5[4];
      v14 = a5[5];
      while (v11 < v12)
      {
        v15 = v7 + v11;
        if (__OFADD__(v7, v11))
        {
          goto LABEL_11;
        }

        if ((v15 * v9) >> 64 != (v15 * v9) >> 63)
        {
          goto LABEL_12;
        }

        v16 = v8 + v15 * v9;
        *(v16 + v10) = v11;
        *(v16 + v13) = 0;
        result = a6(a2, v16 + v14);
        if (v6 == ++v11)
        {
          return result;
        }
      }

      __break(1u);
LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }

  return result;
}

void *closure #1 in ForEachState.appendViewIDsForMultipleChildren(into:childViews:explicitIDOffsets:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != a3)
  {
    if (a3 >= a2)
    {
      v6 = *result;
      v7 = result[2];
      v8 = result[3];
      v9 = result[4];
      v10 = result[5];
      v11 = (a4 + 36);
      v12 = *(a4 + 16);
      while (a2 < a3)
      {
        if (v12)
        {
          v13 = 0;
          v14 = a2 * a5;
          result = v11;
          while ((a2 * a5) >> 64 == (a2 * a5) >> 63)
          {
            v15 = v14 + v13;
            if (__OFADD__(v14, v13))
            {
              goto LABEL_16;
            }

            if (*(a6 + 172))
            {
              goto LABEL_20;
            }

            v16 = v15 * v7;
            if ((v15 * v7) >> 64 != (v15 * v7) >> 63)
            {
              goto LABEL_17;
            }

            v17 = *(result - 1);
            v18 = *result;
            ++v13;
            ++result;
            v19 = *(a6 + 168);
            v20 = v6 + v16;
            *(v20 + v8) = v17;
            *(v20 + v9) = v18;
            v21 = v20 + v10;
            *v21 = a2;
            *(v21 + 8) = v19;
            if (v12 == v13)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
          break;
        }

LABEL_5:
        if (++a2 == a3)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t *closure #1 in ForEachState.appendViewIDsForMultipleChildren(into:childViewIndices:explicitIDOffsets:)(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != a3)
  {
    if (a3 >= a2)
    {
      v6 = *result;
      v7 = result[2];
      v8 = result[3];
      v9 = result[4];
      v10 = result[5];
      while (a2 < a3)
      {
        if (a4 != HIDWORD(a4))
        {
          v11 = a2 * a5;
          result = a4;
          if (SHIDWORD(a4) < a4)
          {
            goto LABEL_21;
          }

          while ((a4 >> 32) != result)
          {
            if ((a2 * a5) >> 64 != (a2 * a5) >> 63)
            {
              goto LABEL_17;
            }

            v12 = result + v11;
            if (__OFADD__(v11, result))
            {
              goto LABEL_18;
            }

            if (*(a6 + 172))
            {
              goto LABEL_23;
            }

            v13 = v12 * v7;
            if ((v12 * v7) >> 64 != (v12 * v7) >> 63)
            {
              goto LABEL_19;
            }

            v14 = *(a6 + 168);
            v15 = v6 + v13;
            *(v15 + v8) = result;
            *(v15 + v9) = 0;
            v16 = v15 + v10;
            *v16 = a2;
            *(v16 + 8) = v14;
            result = (result + 1);
            if (HIDWORD(a4) == result)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
LABEL_17:
          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          break;
        }

LABEL_5:
        if (++a2 == a3)
        {
          return result;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in KeyPath.makeInitializeFunction()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11 + v12, v13, v7);
  return _sSpsRi_zrlE10initialize2toyxn_tF(v9, a2, a5);
}

void type metadata accessor for TypedCanonicalViewID<ForEachConstantID>()
{
  if (!lazy cache variable for type metadata for TypedCanonicalViewID<ForEachConstantID>)
  {
    lazy protocol witness table accessor for type ForEachConstantID and conformance ForEachConstantID();
    v0 = type metadata accessor for TypedCanonicalViewID();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedCanonicalViewID<ForEachConstantID>);
    }
  }
}

uint64_t outlined init with copy of AbstractContiguousArray?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AbstractContiguousArray?(0, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AbstractContiguousArray?(uint64_t a1)
{
  type metadata accessor for AbstractContiguousArray?(0, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for ContiguousArray<TypedCanonicalViewID<ForEachConstantID>>()
{
  if (!lazy cache variable for type metadata for ContiguousArray<TypedCanonicalViewID<ForEachConstantID>>)
  {
    type metadata accessor for TypedCanonicalViewID<ForEachConstantID>();
    v0 = type metadata accessor for ContiguousArray();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ContiguousArray<TypedCanonicalViewID<ForEachConstantID>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TypedCanonicalViewID<ForEachConstantID> and conformance TypedCanonicalViewID<A>()
{
  result = lazy protocol witness table cache variable for type TypedCanonicalViewID<ForEachConstantID> and conformance TypedCanonicalViewID<A>;
  if (!lazy protocol witness table cache variable for type TypedCanonicalViewID<ForEachConstantID> and conformance TypedCanonicalViewID<A>)
  {
    type metadata accessor for TypedCanonicalViewID<ForEachConstantID>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypedCanonicalViewID<ForEachConstantID> and conformance TypedCanonicalViewID<A>);
  }

  return result;
}

uint64_t outlined assign with take of AbstractContiguousArray?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AbstractContiguousArray?(0, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for ContiguousArray<ForEachConstantID>()
{
  if (!lazy cache variable for type metadata for ContiguousArray<ForEachConstantID>)
  {
    v0 = type metadata accessor for ContiguousArray();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ContiguousArray<ForEachConstantID>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ContiguousArray<TypedCanonicalViewID<ForEachConstantID>> and conformance <A> ContiguousArray<A>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in ForEachState.appendViewIDsForDynamicChildCount<A>(into:_:)(unint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v5 = *(v1 + 24);
  v6 = v3;
  return appendViewIDs #1 <A, B, C><A1>(into:transform:) in closure #1 in ForEachState.appendViewIDsForDynamicChildCount<A>(into:_:)(a1, &v5, v2);
}

void type metadata accessor for AbstractContiguousArray?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for AnyTrackedValue(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined destroy of (list: ViewList, attribute: Attribute<ViewList>)(uint64_t a1)
{
  type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Text.DateStyle.timer(units:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 4;
  *(a2 + 8) = result;
  *(a2 + 16) = 2;
  return result;
}

uint64_t Text.DateStyle.UnitsConfiguration.init(units:style:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

void one-time initialization function for time()
{
  static Text.DateStyle.time = 0;
  qword_1EAB0CE50 = 0;
  byte_1EAB0CE58 = 3;
}

uint64_t static Text.DateStyle.time.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for time != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = qword_1EAB0CE50;
  v2 = byte_1EAB0CE58;
  *a1 = static Text.DateStyle.time;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  return result;
}

void one-time initialization function for date()
{
  static Text.DateStyle.date = 1;
  qword_1EAB1F238 = 0;
  byte_1EAB1F240 = 3;
}

uint64_t static Text.DateStyle.date.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for date != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = qword_1EAB1F238;
  v2 = byte_1EAB1F240;
  *a1 = static Text.DateStyle.date;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  return result;
}

void one-time initialization function for relative()
{
  static Text.DateStyle.relative = 2;
  qword_1EAB1F250 = 0;
  byte_1EAB1F258 = 3;
}

uint64_t static Text.DateStyle.relative.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for relative != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = qword_1EAB1F250;
  v2 = byte_1EAB1F258;
  *a1 = static Text.DateStyle.relative;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  return result;
}

void one-time initialization function for offset()
{
  static Text.DateStyle.offset = 3;
  qword_1EAB0A9F8 = 0;
  byte_1EAB0AA00 = 3;
}

uint64_t static Text.DateStyle.offset.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for offset != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = qword_1EAB0A9F8;
  v2 = byte_1EAB0AA00;
  *a1 = static Text.DateStyle.offset;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  return result;
}

void one-time initialization function for timer()
{
  static Text.DateStyle.timer = 4;
  qword_1EAB1F268 = 0;
  byte_1EAB1F270 = 3;
}

uint64_t static Text.DateStyle.timer.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for timer != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = qword_1EAB1F268;
  v2 = byte_1EAB1F270;
  *a1 = static Text.DateStyle.timer;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  return result;
}

uint64_t *static Text.DateStyle.relative(unitConfiguration:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 8);
  *a2 = 2;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  return result;
}

unint64_t Text.DateStyle.UnitsConfiguration.Style.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Text.DateStyle.UnitsConfiguration.CodingKeys()
{
  if (*v0)
  {
    return 0x656C797473;
  }

  else
  {
    return 0x7374696E75;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Text.DateStyle.UnitsConfiguration.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7374696E75 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Text.DateStyle.UnitsConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Text.DateStyle.UnitsConfiguration.CodingKeys and conformance Text.DateStyle.UnitsConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Text.DateStyle.UnitsConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Text.DateStyle.UnitsConfiguration.CodingKeys and conformance Text.DateStyle.UnitsConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Text.DateStyle.UnitsConfiguration.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Text.DateStyle.UnitsConfiguration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Text.DateStyle.UnitsConfiguration.CodingKeys>, lazy protocol witness table accessor for type Text.DateStyle.UnitsConfiguration.CodingKeys and conformance Text.DateStyle.UnitsConfiguration.CodingKeys, &unk_1F007A010, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v12 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Text.DateStyle.UnitsConfiguration.CodingKeys and conformance Text.DateStyle.UnitsConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = v8;
  v16 = 0;
  type metadata accessor for CodableRawRepresentable<NSCalendarUnit>();
  lazy protocol witness table accessor for type NSCalendarUnit and conformance NSCalendarUnit(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSCalendarUnit> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSCalendarUnit>);
  v9 = v13;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v9)
  {
    v15 = v12;
    v14 = 1;
    lazy protocol witness table accessor for type Text.DateStyle.UnitsConfiguration.Style and conformance Text.DateStyle.UnitsConfiguration.Style();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Text.DateStyle.UnitsConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  type metadata accessor for KeyedEncodingContainer<Text.DateStyle.UnitsConfiguration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Text.DateStyle.UnitsConfiguration.CodingKeys>, lazy protocol witness table accessor for type Text.DateStyle.UnitsConfiguration.CodingKeys and conformance Text.DateStyle.UnitsConfiguration.CodingKeys, &unk_1F007A010, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Text.DateStyle.UnitsConfiguration.CodingKeys and conformance Text.DateStyle.UnitsConfiguration.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v6;
    v10 = v14;
    type metadata accessor for CodableRawRepresentable<NSCalendarUnit>();
    v17 = 0;
    lazy protocol witness table accessor for type NSCalendarUnit and conformance NSCalendarUnit(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSCalendarUnit> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSCalendarUnit>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v18;
    v15 = 1;
    lazy protocol witness table accessor for type Text.DateStyle.UnitsConfiguration.Style and conformance Text.DateStyle.UnitsConfiguration.Style();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v9 + 8))(v8, v5);
    v13 = v16;
    *v10 = v11;
    *(v10 + 8) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Text.DateStyle.Storage@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Text.DateStyle.Storage.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void Text.DateStyle.unitConfiguration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Text.DateStyle.unitConfiguration.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Text.DateStyle.units.getter()
{
  v1 = *v0;
  v2 = 252;
  if (v1 == 1)
  {
    v2 = 28;
  }

  v3 = v1 == 4;
  v4 = 224;
  if (!v3)
  {
    v4 = v2;
  }

  if (v0[16] == 3)
  {
    return v4;
  }

  else
  {
    return *(v0 + 1);
  }
}

uint64_t Text.DateStyle.text(for:)(uint64_t a1)
{
  v133 = a1;
  v2 = MEMORY[0x1E69E6720];
  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for SystemFormatStyle.DateOffset?, type metadata accessor for SystemFormatStyle.DateOffset, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v132 = &v103 - v4;
  type metadata accessor for TimeDataSource<Date><A>.DateStorage(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v131 = &v103 - v6;
  v7 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v121 = *(v7 - 8);
  v122 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v120 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v118 = *(v9 - 8);
  v119 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v117 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v123 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v129 = *(v12 - 8);
  v130 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v128 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for Date.FormatStyle.Symbol.Minute();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for Date.FormatStyle.Symbol.Hour.AMPMStyle();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v107 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for Date.FormatStyle.Symbol.Hour();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v106 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FormatStyleCapitalizationContext();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v126 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TimeZone();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v125 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Calendar();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v124 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Locale();
  MEMORY[0x1EEE9AC00](v23 - 8);
  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for Date.FormatStyle.TimeStyle?, MEMORY[0x1E69690E8], v2);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v103 - v25;
  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for Date.FormatStyle.DateStyle?, MEMORY[0x1E69690F0], v2);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v103 - v28;
  v30 = type metadata accessor for Date.FormatStyle();
  v127 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v103 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v103 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v103 - v40;
  type metadata accessor for WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>();
  MEMORY[0x1EEE9AC00](v42);
  MEMORY[0x1EEE9AC00](v43);
  v47 = *v1;
  if ((v47 - 2) >= 3)
  {
    v104 = v32;
    v57 = v26;
    v105 = v35;
    v131 = v38;
    v132 = v41;
    v58 = v123;
    if (v47)
    {
      v85 = type metadata accessor for Date.FormatStyle.DateStyle();
      (*(*(v85 - 8) + 56))(v29, 1, 1, v85);
      v86 = type metadata accessor for Date.FormatStyle.TimeStyle();
      (*(*(v86 - 8) + 56))(v57, 1, 1, v86);
      static Locale.autoupdatingCurrent.getter();
      static Calendar.autoupdatingCurrent.getter();
      v87 = static TimeZone.autoupdatingCurrent.getter();
      MEMORY[0x193ABCD20](v87);
      v88 = v104;
      Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
      static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
      v89 = v105;
      Date.FormatStyle.year(_:)();
      (*(v115 + 8))(v58, v116);
      v90 = v127;
      v91 = *(v127 + 8);
      v92 = v91(v88, v30);
      v93 = v117;
      MEMORY[0x193ABD2D0](v92);
      v94 = v131;
      Date.FormatStyle.month(_:)();
      (*(v118 + 8))(v93, v119);
      v95 = v91(v89, v30);
      v96 = v120;
      MEMORY[0x193ABD150](v95);
      v97 = v132;
      Date.FormatStyle.day(_:)();
      (*(v121 + 8))(v96, v122);
      v91(v94, v30);
      v99 = v128;
      v98 = v129;
      v100 = v130;
      (*(v129 + 16))(v128, v133, v130);
      type metadata accessor for FormatStyleStorage();
      v101 = swift_allocObject();
      type metadata accessor for FormatStyleBox<Date.FormatStyle>();
      v102 = swift_allocObject();
      (*(v98 + 32))(v102 + *(*v102 + 136), v99, v100);
      (*(v90 + 32))(v102 + *(*v102 + 144), v97, v30);
      result = v101;
      *(v101 + 16) = v102;
    }

    else
    {
      v122 = v44;
      v123 = v46;
      v59 = &v103 - v45;
      v60 = type metadata accessor for Date.FormatStyle.DateStyle();
      (*(*(v60 - 8) + 56))(v29, 1, 1, v60);
      v61 = type metadata accessor for Date.FormatStyle.TimeStyle();
      (*(*(v61 - 8) + 56))(v57, 1, 1, v61);
      static Locale.autoupdatingCurrent.getter();
      static Calendar.autoupdatingCurrent.getter();
      v62 = static TimeZone.autoupdatingCurrent.getter();
      MEMORY[0x193ABCD20](v62);
      v63 = v105;
      Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
      v64 = v107;
      static Date.FormatStyle.Symbol.Hour.AMPMStyle.abbreviated.getter();
      v65 = v106;
      static Date.FormatStyle.Symbol.Hour.defaultDigits(amPM:)();
      (*(v110 + 8))(v64, v111);
      v66 = v131;
      Date.FormatStyle.hour(_:)();
      (*(v108 + 8))(v65, v109);
      v67 = *(v127 + 8);
      v68 = v67(v63, v30);
      v69 = v112;
      MEMORY[0x193ABD300](v68);
      v70 = v132;
      Date.FormatStyle.minute(_:)();
      (*(v113 + 8))(v69, v114);
      v67(v66, v30);
      Date.FormatStyle.attributedStyle.getter();
      v67(v70, v30);
      v71 = v122;
      v72 = *(v122 + 76);
      v73 = *MEMORY[0x1E6968580];
      v74 = type metadata accessor for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field();
      v75 = *(v74 - 8);
      v76 = *(v75 + 104);
      v76(&v59[v72], v73, v74);
      v77 = *(v75 + 56);
      v77(&v59[v72], 0, 1, v74);
      v78 = *(v71 + 80);
      v76(&v59[v78], *MEMORY[0x1E6968560], v74);
      v77(&v59[v78], 0, 1, v74);
      v80 = v128;
      v79 = v129;
      v81 = v130;
      (*(v129 + 16))(v128, v133, v130);
      v82 = v123;
      outlined init with take of WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>(v59, v123, type metadata accessor for WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>);
      type metadata accessor for FormatStyleStorage();
      v83 = swift_allocObject();
      type metadata accessor for FormatStyleBox<WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>>();
      v84 = swift_allocObject();
      (*(v79 + 32))(v84 + *(*v84 + 136), v80, v81);
      outlined init with take of WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>(v82, v84 + *(*v84 + 144), type metadata accessor for WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>);
      result = v83;
      *(v83 + 16) = v84;
    }
  }

  else
  {
    v48 = v1[16];
    v49 = *(v1 + 1);
    type metadata accessor for TimeDataSource<Date><A>.DateStorage(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
    v51 = v131;
    (*(*(v50 - 8) + 56))(v131, 1, 1, v50);
    v134 = v47;
    v135 = v49;
    v136 = v48;
    v52 = v132;
    Text.DateStyle.format(for:)(v133, v132);
    v53 = type metadata accessor for SystemFormatStyle.DateOffset();
    result = (*(*(v53 - 8) + 48))(v52, 1, v53);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      type metadata accessor for TimeDataFormattingStorage<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>();
      v55 = swift_allocObject();
      outlined init with take of TimeDataSource<Date><A>.DateStorage(v51, v55 + *(*v55 + 176));
      outlined init with take of WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>(v52, v55 + *(*v55 + 184), type metadata accessor for SystemFormatStyle.DateOffset);
      result = v55;
      v56 = v55 + *(*v55 + 192);
      *v56 = 0;
      *(v56 + 8) = 1;
    }
  }

  return result;
}

uint64_t Text.DateStyle.format(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a1;
  v4 = type metadata accessor for Date();
  v94 = *(v4 - 8);
  v95 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v80 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v80 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v80 - v16;
  v18 = type metadata accessor for SystemFormatStyle.DateOffset();
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v80 - v21;
  v28.n128_f64[0] = MEMORY[0x1EEE9AC00](v23);
  v29 = *v2;
  if (v29 < 2)
  {
    v35 = *(v24 + 56);

    return v35(a2, 1, 1, v18, v28);
  }

  else
  {
    v89 = v24;
    v90 = a2;
    v30 = *(v2 + 1);
    v31 = v2[16];
    v88 = &v80 - v25;
    v92 = v17;
    v86 = v6;
    if (v29 - 2 >= 2)
    {
      v84 = v30;
      v41 = v6;
      v91 = v8;
      type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date.ComponentsFormatStyle.Field>, MEMORY[0x1E6969498], MEMORY[0x1E69E6F90]);
      type metadata accessor for Date.ComponentsFormatStyle.Field();
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_18DDAF080;
      static Date.ComponentsFormatStyle.Style.spellOut.getter();
      static Date.ComponentsFormatStyle.Field.minute.getter();
      static Date.ComponentsFormatStyle.Field.second.getter();
      v43 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt0gq5Tf4g_n(v42);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v44 = v7;
      if (v31 != 3)
      {
        v67 = specialized Set<>.init(_:)(v84, 0);
        v43 = specialized _NativeSet.intersection(_:)(v67, v43);
      }

      v69 = v93;
      v68 = v94;
      v70 = v92;
      v84 = v43;
      v93 = *(v43 + 16);
      static NumberFormatStyleConfiguration.SignDisplayStrategy.never.getter();
      v71 = *(v68 + 16);
      v72 = v41;
      v71(v41, v69, v95);
      v73 = v91;
      v74 = *(v91 + 2);
      v75 = v87;
      v74(v87, v70, v44);
      v66 = v88;
      *(v88 + v18[8]) = 0;
      static Calendar.autoupdatingCurrent.getter();
      *(v66 + v18[11]) = 0;
      *(v66 + v18[12]) = 0;
      v85 = v18[13];
      v76 = v72;
      v77 = v95;
      v71(v66, v76, v95);
      *(v66 + v18[5]) = v84;
      *(v66 + v18[6]) = v93;
      v74((v66 + v18[7]), v75, v44);
      static Locale.autoupdatingCurrent.getter();
      v78 = *(v73 + 1);
      v78(v75, v44);
      (*(v94 + 8))(v86, v77);
      v78(v92, v44);
      *(v66 + v85) = 1;
    }

    else
    {
      v84 = v26;
      v85 = v31;
      v83 = v27;
      v82 = v29;
      if (v31 == 3)
      {
        v32 = v6;
        v33 = 1;
        if (v29 == 2)
        {
          v33 = 2;
        }

        v81 = v7;
        v87 = v33;
        v34 = v8;
        v45 = v91;
        if (v29 == 2)
        {
          static NumberFormatStyleConfiguration.SignDisplayStrategy.never.getter();
        }

        else
        {
          static NumberFormatStyleConfiguration.SignDisplayStrategy.always(includingZero:)();
        }

        type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date.ComponentsFormatStyle.Field>, MEMORY[0x1E6969498], MEMORY[0x1E69E6F90]);
        type metadata accessor for Date.ComponentsFormatStyle.Field();
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_18DDAC2E0;
        static Date.ComponentsFormatStyle.Style.wide.getter();
        static Date.ComponentsFormatStyle.Style.narrow.getter();
        static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
        static Date.ComponentsFormatStyle.Style.spellOut.getter();
        static Date.ComponentsFormatStyle.Field.minute.getter();
        static Date.ComponentsFormatStyle.Field.second.getter();
        v80 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt0gq5Tf4g_n(v46);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v47 = *(v94 + 16);
        v47(v32, v93, v95);
        v48 = *(v34 + 2);
        v49 = v92;
        v50 = v45;
        v51 = v81;
        v48(v92, v50, v81);
        *&v22[v18[8]] = 0;
        static Calendar.autoupdatingCurrent.getter();
        v22[v18[11]] = 0;
        v22[v18[12]] = 0;
        v22[v18[13]] = 0;
        v52 = v32;
        v53 = v95;
        v47(v22, v52, v95);
        *&v22[v18[5]] = v80;
        *&v22[v18[6]] = v87;
        v48(&v22[v18[7]], v49, v51);
        static Locale.autoupdatingCurrent.getter();
        v54 = *(v34 + 1);
        v54(v49, v51);
        (*(v94 + 8))(v86, v53);
        v54(v91, v51);
        v55 = 0;
        v56 = v85;
      }

      else
      {
        v37 = v29;
        v38 = specialized Set<>.init(_:)(v30, 0);
        v39 = 1;
        if (v37 == 2)
        {
          v39 = 2;
        }

        v91 = v38;
        v87 = v39;
        v40 = v7;
        if (v37 == 2)
        {
          static NumberFormatStyleConfiguration.SignDisplayStrategy.never.getter();
        }

        else
        {
          static NumberFormatStyleConfiguration.SignDisplayStrategy.always(includingZero:)();
        }

        v80 = *(v94 + 16);
        v57 = v6;
        v80(v6, v93, v95);
        v58 = *(v8 + 2);
        v59 = v92;
        v58(v92, v12, v40);
        *&v22[v18[8]] = 0;
        static Calendar.autoupdatingCurrent.getter();
        v22[v18[11]] = 0;
        v22[v18[12]] = 0;
        v22[v18[13]] = 0;
        v60 = v57;
        v61 = v95;
        v80(v22, v60, v95);
        *&v22[v18[5]] = v91;
        *&v22[v18[6]] = v87;
        v58(&v22[v18[7]], v59, v40);
        static Locale.autoupdatingCurrent.getter();
        v62 = *(v8 + 1);
        v62(v59, v40);
        (*(v94 + 8))(v86, v61);
        v62(v12, v40);
        v56 = v85;
        v55 = 2 - v85;
      }

      v63 = v83;
      outlined init with copy of ClosedRange<Date>(v22, v83, type metadata accessor for SystemFormatStyle.DateOffset);
      if (v56 == 3)
      {
        v64 = v82 == 2;
      }

      else
      {
        v64 = v55;
      }

      v65 = v84;
      specialized FormatStyle.exactSizeVariant(_:)(v84, v64);
      outlined destroy of ClosedRange<Date>(v63, type metadata accessor for SystemFormatStyle.DateOffset);
      outlined destroy of ClosedRange<Date>(v22, type metadata accessor for SystemFormatStyle.DateOffset);
      v66 = v88;
      outlined init with take of WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>(v65, v88, type metadata accessor for SystemFormatStyle.DateOffset);
    }

    v79 = v90;
    outlined init with take of WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>(v66, v90, type metadata accessor for SystemFormatStyle.DateOffset);
    return (*(v89 + 56))(v79, 0, 1, v18);
  }
}

uint64_t Text.init(_:style:)(uint64_t a1)
{
  v2 = Text.DateStyle.text(for:)(a1);
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

uint64_t Text.init(dateFormat:timeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for DateTextStorage(0);
  v8 = swift_allocObject();
  v9 = v8 + OBJC_IVAR____TtC7SwiftUIP33_AEE0E21EC7C6B2D1204F94F94CBF738915DateTextStorage_storage;
  type metadata accessor for (dateFormat: ResolvableCurrentDate.DateFormat, timeZone: TimeZone?)();
  v11 = *(v10 + 48);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a4;
  outlined init with take of TimeZone?(a3, v9 + v11);
  type metadata accessor for DateTextStorage.Storage(0);
  swift_storeEnumTagMultiPayload();
  return v8;
}

uint64_t Text.init(timerInterval:pauseTime:countsDown:showsHours:)(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = MEMORY[0x1E6969530];
  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17[-v10];
  type metadata accessor for ClosedRange<Date>();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v17[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of ClosedRange<Date>(a1, v14, type metadata accessor for ClosedRange<Date>);
  outlined init with copy of TimeZone?(a2, v11, &lazy cache variable for type metadata for Date?, v8);
  v15 = specialized Text.init(timerInterval:pauseTime:countsDown:showsHours:animateSecondCounting:)(v14, v11, a3, a4);
  outlined destroy of TimeZone?(a2, &lazy cache variable for type metadata for Date?, v8);
  outlined destroy of ClosedRange<Date>(a1, type metadata accessor for ClosedRange<Date>);
  return v15;
}

uint64_t Text.init(interval:pauseAt:countdown:units:)(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t a5, char a6)
{
  v27 = a5;
  v26 = a4;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25[-v15];
  v17 = type metadata accessor for DateInterval();
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v25[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = *(v11 + 16);
  v21(v16, a1, v10, v18);
  type metadata accessor for ClosedRange<Date>();
  (v21)(v13, a1 + *(v22 + 36), v10);
  DateInterval.init(start:end:)();
  v23 = specialized Text.init(interval:pauseAt:countdown:units:)(v20, a2, a3 & 1, v26, v27, a6 & 1);
  outlined destroy of ClosedRange<Date>(a1, type metadata accessor for ClosedRange<Date>);
  return v23;
}

uint64_t LocalizedStringKey.StringInterpolation.appendInterpolation(_:style:)(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a2;
  v10 = *(a2 + 1);
  LOBYTE(a2) = a2[16];
  (*(v5 + 16))(v8, a1, v4, v6);
  v15[8] = v9;
  v16 = v10;
  v17 = a2;
  v11 = Text.DateStyle.text(for:)(v8);
  v13 = v12;
  (*(v5 + 8))(v8, v4);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v11, 0, v13 & 1, MEMORY[0x1E69E7CC0]);
  outlined consume of Text.Storage(v11, 0, v13 & 1);
}

uint64_t LocalizedStringKey.StringInterpolation.appendInterpolation(interval:pauseAt:countdown:units:)(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t a5, int a6)
{
  v33 = a5;
  v31 = a6;
  v32 = a4;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for DateInterval();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClosedRange<Date>();
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ClosedRange<Date>(a1, v22, type metadata accessor for ClosedRange<Date>);
  v23 = *(v10 + 16);
  v23(v15, v22, v9);
  v23(v12, &v22[*(v20 + 44)], v9);
  DateInterval.init(start:end:)();
  v24 = specialized Text.init(interval:pauseAt:countdown:units:)(v18, a2, a3 & 1, v32, v33, v31 & 1);
  v26 = v25;
  LOBYTE(a2) = v27;
  v29 = v28;
  outlined destroy of ClosedRange<Date>(v22, type metadata accessor for ClosedRange<Date>);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v24, v26, a2 & 1, v29);
  outlined consume of Text.Storage(v24, v26, a2 & 1);
}

uint64_t LocalizedStringKey.StringInterpolation.appendInterpolation(interval:pauseAt:countdown:units:)(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t a5, char a6)
{
  v12 = type metadata accessor for DateInterval();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a1, v13);
  v17 = specialized Text.init(interval:pauseAt:countdown:units:)(v15, a2, a3 & 1, a4, a5, a6 & 1);
  v19 = v18;
  LOBYTE(a4) = v20;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v17, v18, v20 & 1, v21);
  outlined consume of Text.Storage(v17, v19, a4 & 1);
}

uint64_t LocalizedStringKey.StringInterpolation.appendInterpolation(timerInterval:pauseTime:countsDown:showsHours:)(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v28 = a4;
  v7 = MEMORY[0x1E6969530];
  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27[-v12];
  type metadata accessor for ClosedRange<Date>();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v27[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27[-v18];
  outlined init with copy of ClosedRange<Date>(a1, &v27[-v18], type metadata accessor for ClosedRange<Date>);
  outlined init with copy of TimeZone?(a2, v13, &lazy cache variable for type metadata for Date?, v7);
  outlined init with copy of ClosedRange<Date>(v19, v16, type metadata accessor for ClosedRange<Date>);
  outlined init with copy of TimeZone?(v13, v10, &lazy cache variable for type metadata for Date?, v7);
  v20 = specialized Text.init(timerInterval:pauseTime:countsDown:showsHours:animateSecondCounting:)(v16, v10, a3, v28);
  v22 = v21;
  LOBYTE(a1) = v23;
  v25 = v24;
  outlined destroy of TimeZone?(v13, &lazy cache variable for type metadata for Date?, v7);
  outlined destroy of ClosedRange<Date>(v19, type metadata accessor for ClosedRange<Date>);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v20, v22, a1 & 1, v25);
  outlined consume of Text.Storage(v20, v22, a1 & 1);
}

uint64_t Text.init(progressInterval:countsDown:)(uint64_t a1, char a2)
{
  type metadata accessor for DateTextStorage(0);
  v4 = swift_allocObject();
  v5 = v4 + OBJC_IVAR____TtC7SwiftUIP33_AEE0E21EC7C6B2D1204F94F94CBF738915DateTextStorage_storage;
  type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
  v7 = *(v6 + 48);
  outlined init with take of WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>(a1, v5, type metadata accessor for ClosedRange<Date>);
  *(v5 + v7) = a2;
  type metadata accessor for DateTextStorage.Storage(0);
  swift_storeEnumTagMultiPayload();
  return v4;
}

uint64_t DateTextStorage.resolve<A>(into:in:with:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v92 = a3;
  v94 = a4;
  v95 = a5;
  v93 = a1;
  v80 = type metadata accessor for ResolvableProgress();
  MEMORY[0x1EEE9AC00](v80);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClosedRange<Date>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v81 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for TimeZone();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for ResolvableCurrentDate();
  MEMORY[0x1EEE9AC00](v86);
  v82 = (&v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v80 - v13;
  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v88 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v90 = &v80 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v80 - v19;
  v20 = type metadata accessor for ResolvableDateInterval();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DateInterval();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v80 - v28;
  v30 = type metadata accessor for DateTextStorage.Storage(0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a2;
  v34 = *(a2 + 8);
  v96 = v33;
  v92 = *v92;
  outlined init with copy of ClosedRange<Date>(v91 + OBJC_IVAR____TtC7SwiftUIP33_AEE0E21EC7C6B2D1204F94F94CBF738915DateTextStorage_storage, v32, type metadata accessor for DateTextStorage.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v36 = *v32;
      v37 = *(v32 + 1);
      v38 = v32[16];
      type metadata accessor for (dateFormat: ResolvableCurrentDate.DateFormat, timeZone: TimeZone?)();
      v40 = v89;
      outlined init with take of TimeZone?(&v32[*(v39 + 48)], v89);
      outlined init with copy of TimeZone?(v40, v90, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
      v41 = v82;
      *v82 = v36;
      *(v41 + 8) = v37;
      *(v41 + 16) = v38;
      v42 = v86;
      v43 = *(v86 + 20);
      if (v34)
      {
        swift_retain_n();
        v44 = v41 + v43;
        v45 = v96;
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v96, v44);
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v45, v41 + *(v42 + 24));

        v91 = 0;
        v46 = v85;
        v47 = v84;
        v48 = v83;
      }

      else
      {
        v61 = v41 + v43;
        v62 = v96;
        _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v96, v61);
        v91 = 0;
        v63 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v62);
        v47 = v84;
        v48 = v83;
        if (v63)
        {
          v64 = *(*v63 + 248);
          v65 = *(v42 + 24);
          v66 = v63;
          v67 = type metadata accessor for Locale();
          (*(*(v67 - 8) + 16))(v41 + v65, &v66[v64], v67);
        }

        else
        {
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }

          v68 = type metadata accessor for Locale();
          v69 = __swift_project_value_buffer(v68, static LocaleKey.defaultValue);
          (*(*(v68 - 8) + 16))(v41 + *(v42 + 24), v69, v68);
        }

        v46 = v85;
      }

      v70 = v88;
      v71 = v90;
      outlined init with copy of TimeZone?(v90, v88, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
      v72 = *(v47 + 48);
      if (v72(v70, 1, v46) == 1)
      {
        v73 = v48;
        if (v34)
        {
          _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v96, v48);
        }

        else
        {
          _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v96, v48);
        }

        v74 = v92;
        outlined destroy of TimeZone?(v90, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
        v75 = v88;
        if (v72(v88, 1, v46) != 1)
        {
          outlined destroy of TimeZone?(v75, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
        }
      }

      else
      {

        outlined destroy of TimeZone?(v71, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
        v73 = v48;
        (*(v47 + 32))(v48, v70, v46);
        v74 = v92;
      }

      (*(v47 + 32))(v41 + *(v42 + 28), v73, v46);
      v76 = v87;
      outlined init with take of WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>(v41, v87, type metadata accessor for ResolvableCurrentDate);
      v106 = v96;
      v107 = v34;
      v105 = v74;
      defaultContentTransition #1 <A>(_:) in DateTextStorage.resolve<A>(into:in:with:)(0, v96, v34, &v101);
      v97 = v101;
      v100 = v104;
      v99 = v103;
      v98 = v102;
      v77 = v95;
      v78 = *(v95 + 96);
      v79 = lazy protocol witness table accessor for type NSCalendarUnit and conformance NSCalendarUnit(&lazy protocol witness table cache variable for type ResolvableCurrentDate and conformance ResolvableCurrentDate, type metadata accessor for ResolvableCurrentDate);
      v78(v76, &v106, &v105, &v97, v42, v79, v94, v77);
      outlined consume of ContentTransition?(v97, v98 | ((v99 | (v100 << 16)) << 32));
      outlined destroy of ClosedRange<Date>(v76, type metadata accessor for ResolvableCurrentDate);
      return outlined destroy of TimeZone?(v89, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
    }

    else
    {
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
      v55 = v32[*(v54 + 48)];
      v56 = v81;
      outlined init with take of WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>(v32, v81, type metadata accessor for ClosedRange<Date>);
      outlined init with copy of ClosedRange<Date>(v56, v7, type metadata accessor for ClosedRange<Date>);
      v57 = v80;
      v7[*(v80 + 20)] = v55;
      v106 = v96;
      v107 = v34;
      v105 = v92;
      defaultContentTransition #1 <A>(_:) in DateTextStorage.resolve<A>(into:in:with:)(v55, v96, v34, &v101);
      v97 = v101;
      v100 = v104;
      v99 = v103;
      v98 = v102;
      v58 = v95;
      v59 = *(v95 + 96);
      v60 = lazy protocol witness table accessor for type NSCalendarUnit and conformance NSCalendarUnit(&lazy protocol witness table cache variable for type ResolvableProgress and conformance ResolvableProgress, type metadata accessor for ResolvableProgress);
      v59(v7, &v106, &v105, &v97, v57, v60, v94, v58);
      outlined consume of ContentTransition?(v97, v98 | ((v99 | (v100 << 16)) << 32));
      outlined destroy of ClosedRange<Date>(v7, type metadata accessor for ResolvableProgress);
      return outlined destroy of ClosedRange<Date>(v56, type metadata accessor for ClosedRange<Date>);
    }
  }

  else
  {
    (*(v24 + 32))(v29, v32, v23);
    (*(v24 + 16))(v26, v29, v23);
    v49 = v96;
    v106 = v96;
    v107 = v34;

    ResolvableDateInterval.init(_:in:)(v26, &v106, v22);
    v106 = v49;
    v107 = v34;
    v97 = v92;
    v101 = 0;
    v104 = 2;
    v103 = 0;
    v102 = 0;
    v50 = v95;
    v51 = *(v95 + 96);
    v52 = lazy protocol witness table accessor for type NSCalendarUnit and conformance NSCalendarUnit(&lazy protocol witness table cache variable for type ResolvableDateInterval and conformance ResolvableDateInterval, type metadata accessor for ResolvableDateInterval);
    v51(v22, &v106, &v97, &v101, v20, v52, v94, v50);
    outlined destroy of ClosedRange<Date>(v22, type metadata accessor for ResolvableDateInterval);
    return (*(v24 + 8))(v29, v23);
  }
}

uint64_t defaultContentTransition #1 <A>(_:) in DateTextStorage.resolve<A>(into:in:with:)@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(a2, &v29);

    v7 = v29;
    v8 = v30 | (v31 << 32);
    v9 = v32;
    v10 = v34;
  }

  else
  {
    v11 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(a2);
    if (v11)
    {
      v7 = v11[9];
      v8 = *(v11 + 20) | (*(v11 + 84) << 32);
      v9 = *(v11 + 85);
      v10 = *(v11 + 87);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v7 = static ContentTransition.State.defaultValue;
      v8 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v9 = BYTE13(static ContentTransition.State.defaultValue);
      v10 = HIBYTE(static ContentTransition.State.defaultValue);
    }

    outlined copy of ContentTransition.Storage(v7, v8, v9);
  }

  outlined consume of ContentTransition.Storage(v7, v8, v9);

  if (v10 == 1)
  {
    result = static ContentTransition.numericText(countsDown:)(a1 & 1, &v29);
    v13 = v29;
    v14 = v30;
    v15 = v31 << 32;
    v16 = v32;
    v17 = v33;
LABEL_18:
    *a4 = v13;
    *(a4 + 8) = v14;
    *(a4 + 14) = v17 != 0;
    *(a4 + 12) = (v15 | (v16 << 40)) >> 32;
    return result;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v18 = static Semantics_v5_2.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
LABEL_17:
      result = static ContentTransition.numericText(countsDown:)(a1 & 1, &v24);
      v13 = v24;
      v14 = v25;
      v15 = v26 << 32;
      v16 = v27;
      v17 = v28;
      goto LABEL_18;
    }
  }

  else if (static Semantics.forced < v18)
  {
    goto LABEL_17;
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v19 = static ContentTransition.identity;
  v20 = word_1EAB144D4;
  v21 = dword_1EAB144D0;
  *(a4 + 8) = dword_1EAB144D0;
  v22 = HIBYTE(word_1EAB144D4);
  v23 = (v20 << 32) | (HIBYTE(word_1EAB144D4) << 40);
  BYTE6(v20) = byte_1EAB144D6 != 0;
  *a4 = v19;
  *(a4 + 14) = BYTE6(v20);
  *(a4 + 12) = WORD2(v23);
  return outlined copy of ContentTransition.Storage(v19, v21 & 0xFFFFFF00FFFFFFFFLL | (v20 << 32), v22);
}

uint64_t DateTextStorage.isEqual(to:)()
{
  v1 = type metadata accessor for DateTextStorage.Storage(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    outlined init with copy of ClosedRange<Date>(v0 + OBJC_IVAR____TtC7SwiftUIP33_AEE0E21EC7C6B2D1204F94F94CBF738915DateTextStorage_storage, v6, type metadata accessor for DateTextStorage.Storage);
    outlined init with copy of ClosedRange<Date>(v8 + OBJC_IVAR____TtC7SwiftUIP33_AEE0E21EC7C6B2D1204F94F94CBF738915DateTextStorage_storage, v3, type metadata accessor for DateTextStorage.Storage);
    v9 = specialized static DateTextStorage.Storage.== infix(_:_:)(v6, v3);
    outlined destroy of ClosedRange<Date>(v3, type metadata accessor for DateTextStorage.Storage);
    outlined destroy of ClosedRange<Date>(v6, type metadata accessor for DateTextStorage.Storage);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t DateTextStorage.__deallocating_deinit()
{
  outlined destroy of ClosedRange<Date>(v0 + OBJC_IVAR____TtC7SwiftUIP33_AEE0E21EC7C6B2D1204F94F94CBF738915DateTextStorage_storage, type metadata accessor for DateTextStorage.Storage);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Text.DateStyle.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x656761726F7473;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Text.DateStyle.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656761726F7473 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018DD7BF80 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Text.DateStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Text.DateStyle.CodingKeys and conformance Text.DateStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Text.DateStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Text.DateStyle.CodingKeys and conformance Text.DateStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Text.DateStyle.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Text.DateStyle.UnitsConfiguration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Text.DateStyle.CodingKeys>, lazy protocol witness table accessor for type Text.DateStyle.CodingKeys and conformance Text.DateStyle.CodingKeys, &type metadata for Text.DateStyle.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v10[0] = *(v1 + 8);
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Text.DateStyle.CodingKeys and conformance Text.DateStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  v8 = v10[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v8)
  {
    v10[2] = v10[0];
    v11 = v12;
    v13 = 1;
    lazy protocol witness table accessor for type Text.DateStyle.UnitsConfiguration and conformance Text.DateStyle.UnitsConfiguration();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Text.DateStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  type metadata accessor for KeyedEncodingContainer<Text.DateStyle.UnitsConfiguration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Text.DateStyle.CodingKeys>, lazy protocol witness table accessor for type Text.DateStyle.CodingKeys and conformance Text.DateStyle.CodingKeys, &type metadata for Text.DateStyle.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Text.DateStyle.CodingKeys and conformance Text.DateStyle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v15;
    v19 = 0;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    if (v10 >= 5)
    {
      lazy protocol witness table accessor for type Text.DateStyle.Errors and conformance Text.DateStyle.Errors();
      swift_allocError();
      swift_willThrow();
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      v14 = v10;
      v18 = 1;
      lazy protocol witness table accessor for type Text.DateStyle.UnitsConfiguration and conformance Text.DateStyle.UnitsConfiguration();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v11 = v16;
      v12 = v17;
      (*(v6 + 8))(v8, v5);
      *v9 = v14;
      *(v9 + 8) = v11;
      *(v9 + 16) = v12;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type Text.DateStyle.UnitsConfiguration.CodingKeys and conformance Text.DateStyle.UnitsConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.CodingKeys and conformance Text.DateStyle.UnitsConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.CodingKeys and conformance Text.DateStyle.UnitsConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.CodingKeys and conformance Text.DateStyle.UnitsConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.CodingKeys and conformance Text.DateStyle.UnitsConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.CodingKeys and conformance Text.DateStyle.UnitsConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.CodingKeys and conformance Text.DateStyle.UnitsConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.CodingKeys and conformance Text.DateStyle.UnitsConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.CodingKeys and conformance Text.DateStyle.UnitsConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.CodingKeys and conformance Text.DateStyle.UnitsConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.CodingKeys and conformance Text.DateStyle.UnitsConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.CodingKeys and conformance Text.DateStyle.UnitsConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.CodingKeys and conformance Text.DateStyle.UnitsConfiguration.CodingKeys);
  }

  return result;
}

void type metadata accessor for CodableRawRepresentable<NSCalendarUnit>()
{
  if (!lazy cache variable for type metadata for CodableRawRepresentable<NSCalendarUnit>)
  {
    type metadata accessor for NSCalendarUnit(255);
    lazy protocol witness table accessor for type NSCalendarUnit and conformance NSCalendarUnit(&lazy protocol witness table cache variable for type NSCalendarUnit and conformance NSCalendarUnit, type metadata accessor for NSCalendarUnit);
    v0 = type metadata accessor for CodableRawRepresentable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CodableRawRepresentable<NSCalendarUnit>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type NSCalendarUnit and conformance NSCalendarUnit(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Text.DateStyle.UnitsConfiguration.Style and conformance Text.DateStyle.UnitsConfiguration.Style()
{
  result = lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.Style and conformance Text.DateStyle.UnitsConfiguration.Style;
  if (!lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.Style and conformance Text.DateStyle.UnitsConfiguration.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.Style and conformance Text.DateStyle.UnitsConfiguration.Style);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.Style and conformance Text.DateStyle.UnitsConfiguration.Style;
  if (!lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.Style and conformance Text.DateStyle.UnitsConfiguration.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.Style and conformance Text.DateStyle.UnitsConfiguration.Style);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.Style and conformance Text.DateStyle.UnitsConfiguration.Style;
  if (!lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.Style and conformance Text.DateStyle.UnitsConfiguration.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.Style and conformance Text.DateStyle.UnitsConfiguration.Style);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.Style and conformance Text.DateStyle.UnitsConfiguration.Style;
  if (!lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.Style and conformance Text.DateStyle.UnitsConfiguration.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration.Style and conformance Text.DateStyle.UnitsConfiguration.Style);
  }

  return result;
}

void type metadata accessor for (dateFormat: ResolvableCurrentDate.DateFormat, timeZone: TimeZone?)()
{
  if (!lazy cache variable for type metadata for (dateFormat: ResolvableCurrentDate.DateFormat, timeZone: TimeZone?))
  {
    type metadata accessor for TimeZone?(255, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (dateFormat: ResolvableCurrentDate.DateFormat, timeZone: TimeZone?));
    }
  }
}

uint64_t outlined init with take of TimeZone?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized static Text.DateStyle.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[16];
  v3 = a2[16];
  if (v2 == 3)
  {
    if (v3 != 3)
    {
      return 0;
    }
  }

  else if (v3 == 3 || *(a1 + 1) != *(a2 + 1) || v2 != v3)
  {
    return 0;
  }

  return 1;
}

uint64_t specialized static ReferenceDateModifier._makeViewInputs(modifier:inputs:)(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  AGGraphCreateOffsetAttribute2();
  v3 = AGCreateWeakAttribute();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA18ReferenceDateInputV_Tt2g5(a2, v3);
}

uint64_t specialized static DateTextStorage.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v82 = a1;
  v83 = a2;
  type metadata accessor for ClosedRange<Date>();
  v75 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v79 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for TimeZone();
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v72 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (TimeZone?, TimeZone?)();
  v74 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v77 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v73 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v72 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v72 - v12;
  v13 = type metadata accessor for DateInterval();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DateTextStorage.Storage(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v72 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v72 - v24;
  type metadata accessor for (DateTextStorage.Storage, DateTextStorage.Storage)();
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = &v28[*(v29 + 56)];
  outlined init with copy of ClosedRange<Date>(v82, v28, type metadata accessor for DateTextStorage.Storage);
  outlined init with copy of ClosedRange<Date>(v83, v30, type metadata accessor for DateTextStorage.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of ClosedRange<Date>(v28, v25, type metadata accessor for DateTextStorage.Storage);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v14 + 32))(v16, v30, v13);
      v58 = static DateInterval.== infix(_:_:)();
      v61 = *(v14 + 8);
      v61(v16, v13);
      v61(v25, v13);
      outlined destroy of ClosedRange<Date>(v28, type metadata accessor for DateTextStorage.Storage);
      return v58 & 1;
    }

    (*(v14 + 8))(v25, v13);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 1)
  {
    outlined init with copy of ClosedRange<Date>(v28, v22, type metadata accessor for DateTextStorage.Storage);
    v33 = *v22;
    v32 = *(v22 + 1);
    v34 = v22[16];
    type metadata accessor for (dateFormat: ResolvableCurrentDate.DateFormat, timeZone: TimeZone?)();
    v36 = *(v35 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = *v30;
      v38 = *(v30 + 8);
      v39 = *(v30 + 16);
      v40 = &v22[v36];
      v41 = v81;
      outlined init with take of TimeZone?(v40, v81);
      v42 = v30 + v36;
      v43 = v80;
      outlined init with take of TimeZone?(v42, v80);
      v86[0] = v33;
      v86[1] = v32;
      v87 = v34;
      v84[0] = v37;
      v84[1] = v38;
      v85 = v39;
      v44 = specialized static ResolvableCurrentDate.DateFormat.== infix(_:_:)(v86, v84);
      outlined consume of ResolvableCurrentDate.DateFormat();
      outlined consume of ResolvableCurrentDate.DateFormat();
      if (v44)
      {
        v45 = *(v74 + 48);
        v46 = MEMORY[0x1E6969BC0];
        v47 = v77;
        outlined init with copy of TimeZone?(v41, v77, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
        outlined init with copy of TimeZone?(v43, v47 + v45, &lazy cache variable for type metadata for TimeZone?, v46);
        v48 = v76;
        v49 = *(v76 + 48);
        v50 = v78;
        if (v49(v47, 1, v78) == 1)
        {
          v51 = MEMORY[0x1E6969BC0];
          outlined destroy of TimeZone?(v43, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
          outlined destroy of TimeZone?(v41, &lazy cache variable for type metadata for TimeZone?, v51);
          if (v49(v47 + v45, 1, v50) == 1)
          {
            outlined destroy of TimeZone?(v47, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
LABEL_27:
            outlined destroy of ClosedRange<Date>(v28, type metadata accessor for DateTextStorage.Storage);
            v58 = 1;
            return v58 & 1;
          }

          goto LABEL_24;
        }

        v65 = v73;
        outlined init with copy of TimeZone?(v47, v73, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
        if (v49(v47 + v45, 1, v50) == 1)
        {
          v66 = MEMORY[0x1E6969BC0];
          outlined destroy of TimeZone?(v80, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
          outlined destroy of TimeZone?(v81, &lazy cache variable for type metadata for TimeZone?, v66);
          (*(v48 + 8))(v65, v50);
LABEL_24:
          v64 = type metadata accessor for (TimeZone?, TimeZone?);
          v63 = v47;
          goto LABEL_25;
        }

        v67 = v47 + v45;
        v68 = v72;
        (*(v48 + 32))(v72, v67, v50);
        lazy protocol witness table accessor for type NSCalendarUnit and conformance NSCalendarUnit(&lazy protocol witness table cache variable for type TimeZone and conformance TimeZone, MEMORY[0x1E6969BC0]);
        v69 = dispatch thunk of static Equatable.== infix(_:_:)();
        v70 = *(v48 + 8);
        v70(v68, v50);
        v71 = MEMORY[0x1E6969BC0];
        outlined destroy of TimeZone?(v80, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
        outlined destroy of TimeZone?(v81, &lazy cache variable for type metadata for TimeZone?, v71);
        v70(v65, v50);
        outlined destroy of TimeZone?(v47, &lazy cache variable for type metadata for TimeZone?, v71);
        if (v69)
        {
          goto LABEL_27;
        }

LABEL_28:
        v59 = type metadata accessor for DateTextStorage.Storage;
        goto LABEL_17;
      }

      v62 = MEMORY[0x1E6969BC0];
      outlined destroy of TimeZone?(v43, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
      outlined destroy of TimeZone?(v41, &lazy cache variable for type metadata for TimeZone?, v62);
      v59 = type metadata accessor for DateTextStorage.Storage;
LABEL_17:
      outlined destroy of ClosedRange<Date>(v28, v59);
      v58 = 0;
      return v58 & 1;
    }

    outlined destroy of TimeZone?(&v22[v36], &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
    outlined consume of ResolvableCurrentDate.DateFormat();
LABEL_16:
    v59 = type metadata accessor for (DateTextStorage.Storage, DateTextStorage.Storage);
    goto LABEL_17;
  }

  outlined init with copy of ClosedRange<Date>(v28, v19, type metadata accessor for DateTextStorage.Storage);
  type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
  v53 = *(v52 + 48);
  v54 = v19[v53];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of ClosedRange<Date>(v19, type metadata accessor for ClosedRange<Date>);
    goto LABEL_16;
  }

  v55 = *(v30 + v53);
  v56 = v79;
  outlined init with take of WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>(v30, v79, type metadata accessor for ClosedRange<Date>);
  type metadata accessor for Date();
  lazy protocol witness table accessor for type NSCalendarUnit and conformance NSCalendarUnit(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    outlined destroy of ClosedRange<Date>(v56, type metadata accessor for ClosedRange<Date>);
    v63 = v19;
    v64 = type metadata accessor for ClosedRange<Date>;
LABEL_25:
    outlined destroy of ClosedRange<Date>(v63, v64);
    v59 = type metadata accessor for DateTextStorage.Storage;
    goto LABEL_17;
  }

  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of ClosedRange<Date>(v56, type metadata accessor for ClosedRange<Date>);
  outlined destroy of ClosedRange<Date>(v19, type metadata accessor for ClosedRange<Date>);
  if ((v57 & 1) == 0)
  {
    goto LABEL_28;
  }

  outlined destroy of ClosedRange<Date>(v28, type metadata accessor for DateTextStorage.Storage);
  v58 = v54 ^ v55 ^ 1;
  return v58 & 1;
}

unint64_t specialized Text.DateStyle.Storage.init(rawValue:)(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t specialized Text.init(timerInterval:pauseTime:countsDown:showsHours:animateSecondCounting:)(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v67 = a4;
  LODWORD(v68) = a3;
  v6 = type metadata accessor for SystemFormatStyle.Timer();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v73 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimeDataSource<Date><A>.DateStorage(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v70 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v59 - v11;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  v65 = type metadata accessor for DateInterval();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ResolvableTimer();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v69 = &v59 - v25;
  v75 = a1;
  v72 = a2;
  v63 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF10Foundation4DateV_s5NeverOSdTg5(partial apply for closure #1 in Text.init(timerInterval:pauseTime:countsDown:showsHours:animateSecondCounting:));
  v62 = v26;
  v59 = 0;
  v60 = v13;
  v27 = *(v13 + 16);
  v27(v18, a1, v12);
  type metadata accessor for ClosedRange<Date>();
  v29 = *(v28 + 36);
  v74 = a1;
  v61 = v12;
  v27(v15, a1 + v29, v12);
  v66 = v18;
  DateInterval.init(start:end:)();
  if (v67)
  {
    v30 = 224;
  }

  else
  {
    v30 = 192;
  }

  EnvironmentValues.init()(v76);
  v32 = v76[0];
  v31 = v76[1];
  v33 = &v23[v21[5]];
  v34 = v64;
  v35 = v20;
  v36 = v20;
  v37 = v65;
  (*(v64 + 16))(v23, v36);
  *v33 = v63;
  v33[8] = v62 & 1;
  v23[v21[6]] = v68;
  *&v23[v21[7]] = v30;
  v38 = v21[8];
  if (v31)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v32, &v23[v38]);

    v39 = v21[9];

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v32, &v23[v39]);

    v40 = v21[10];

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v32, &v23[v40]);

    (*(v34 + 8))(v35, v37);
  }

  else
  {
    v68 = v35;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v32, &v23[v38]);
    v41 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v32);
    if (v41)
    {
      v42 = *(*v41 + 248);
      v43 = v21[9];
      v44 = v41;
      v45 = type metadata accessor for Locale();
      (*(*(v45 - 8) + 16))(&v23[v43], &v44[v42], v45);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Locale();
      v47 = __swift_project_value_buffer(v46, static LocaleKey.defaultValue);
      (*(*(v46 - 8) + 16))(&v23[v21[9]], v47, v46);
    }

    v48 = v68;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v32, &v23[v21[10]]);
    (*(v34 + 8))(v48, v37);
  }

  v49 = v69;
  outlined init with take of WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>(v23, v69, type metadata accessor for ResolvableTimer);
  v50 = v70;
  if (*(v49 + v21[5] + 8))
  {
    v51 = 1;
  }

  else
  {
    v52 = (v60 + 8);
    if (*(v49 + v21[6]) == 1)
    {
      DateInterval.end.getter();
      static Date.- infix(_:_:)();
    }

    else
    {
      DateInterval.start.getter();
      static Date.+ infix(_:_:)();
    }

    (*v52)(v66, v61);
    v51 = 0;
  }

  type metadata accessor for TimeDataSource<Date><A>.DateStorage(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  (*(*(v53 - 8) + 56))(v50, v51, 1, v53);
  v54 = v71;
  outlined init with take of TimeDataSource<Date><A>.DateStorage(v50, v71);
  v55 = v73;
  ResolvableTimer.format.getter(v73);
  outlined destroy of TimeZone?(v72, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  outlined destroy of ClosedRange<Date>(v49, type metadata accessor for ResolvableTimer);
  type metadata accessor for TimeDataFormattingStorage<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.Timer>();
  v56 = swift_allocObject();
  outlined init with take of TimeDataSource<Date><A>.DateStorage(v54, v56 + *(*v56 + 176));
  outlined init with take of WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>(v55, v56 + *(*v56 + 184), type metadata accessor for SystemFormatStyle.Timer);
  v57 = v56 + *(*v56 + 192);
  *v57 = 0x404E000000000000;
  *(v57 + 8) = 0;
  outlined destroy of ClosedRange<Date>(v74, type metadata accessor for ClosedRange<Date>);
  return v56;
}

uint64_t outlined destroy of TimeZone?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for TimeZone?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t specialized Text.init(interval:pauseAt:countdown:units:)(char *a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6)
{
  v59 = a4;
  v60 = a6;
  v61 = a5;
  v58 = a3;
  v57 = a2;
  v7 = type metadata accessor for SystemFormatStyle.Timer();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v66 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for Date();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimeDataSource<Date><A>.DateStorage(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v53 - v13;
  v14 = type metadata accessor for DateInterval();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ResolvableTimer();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v62 = &v53 - v23;
  v24 = *(v15 + 16);
  v65 = a1;
  v24(v17, a1, v14, v22);
  EnvironmentValues.init()(v67);
  v26 = v67[0];
  v25 = v67[1];
  v27 = &v20[v18[5]];
  (v24)(v20, v17, v14);
  *v27 = v57;
  v28 = v59;
  v27[8] = v58 & 1;
  v20[v18[6]] = v28;
  v29 = 224;
  if ((v60 & 1) == 0)
  {
    v29 = v61;
  }

  *&v20[v18[7]] = v29;
  v30 = v18[8];
  if (v25)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v26, &v20[v30]);

    v31 = v18[9];

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v26, &v20[v31]);

    v32 = v18[10];

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v26, &v20[v32]);

    v33 = *(v15 + 8);
    v33(v17, v14);
    v34 = v62;
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v26, &v20[v30]);
    v35 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v26);
    if (v35)
    {
      v36 = *(*v35 + 248);
      v37 = v18[9];
      v38 = v35;
      v39 = type metadata accessor for Locale();
      (*(*(v39 - 8) + 16))(&v20[v37], &v38[v36], v39);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Locale();
      v41 = __swift_project_value_buffer(v40, static LocaleKey.defaultValue);
      (*(*(v40 - 8) + 16))(&v20[v18[9]], v41, v40);
    }

    v34 = v62;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v26, &v20[v18[10]]);
    v33 = *(v15 + 8);
    v33(v17, v14);
  }

  outlined init with take of WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>(v20, v34, type metadata accessor for ResolvableTimer);
  if (*(v34 + v18[5] + 8))
  {
    v42 = 1;
    v43 = v63;
  }

  else
  {
    v44 = (v54 + 8);
    if (*(v34 + v18[6]) == 1)
    {
      v45 = v55;
      DateInterval.end.getter();
      v43 = v63;
      static Date.- infix(_:_:)();
    }

    else
    {
      v45 = v55;
      DateInterval.start.getter();
      v43 = v63;
      static Date.+ infix(_:_:)();
    }

    (*v44)(v45, v56);
    v42 = 0;
  }

  type metadata accessor for TimeDataSource<Date><A>.DateStorage(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
  (*(*(v46 - 8) + 56))(v43, v42, 1, v46);
  v47 = v43;
  v48 = v64;
  outlined init with take of TimeDataSource<Date><A>.DateStorage(v47, v64);
  v49 = v66;
  ResolvableTimer.format.getter(v66);
  v33(v65, v14);
  outlined destroy of ClosedRange<Date>(v34, type metadata accessor for ResolvableTimer);
  type metadata accessor for TimeDataFormattingStorage<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.Timer>();
  v50 = swift_allocObject();
  outlined init with take of TimeDataSource<Date><A>.DateStorage(v48, v50 + *(*v50 + 176));
  outlined init with take of WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>(v49, v50 + *(*v50 + 184), type metadata accessor for SystemFormatStyle.Timer);
  v51 = v50 + *(*v50 + 192);
  *v51 = 0x404E000000000000;
  *(v51 + 8) = 0;
  return v50;
}

void type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)()
{
  if (!lazy cache variable for type metadata for (interval: ClosedRange<Date>, countdown: Bool))
  {
    type metadata accessor for ClosedRange<Date>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (interval: ClosedRange<Date>, countdown: Bool));
    }
  }
}

uint64_t outlined init with take of WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Text.DateStyle.CodingKeys and conformance Text.DateStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Text.DateStyle.CodingKeys and conformance Text.DateStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.DateStyle.CodingKeys and conformance Text.DateStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.DateStyle.CodingKeys and conformance Text.DateStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.DateStyle.CodingKeys and conformance Text.DateStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.DateStyle.CodingKeys and conformance Text.DateStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.DateStyle.CodingKeys and conformance Text.DateStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.DateStyle.CodingKeys and conformance Text.DateStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.DateStyle.CodingKeys and conformance Text.DateStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.DateStyle.CodingKeys and conformance Text.DateStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.DateStyle.CodingKeys and conformance Text.DateStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.DateStyle.CodingKeys and conformance Text.DateStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.DateStyle.CodingKeys and conformance Text.DateStyle.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.DateStyle.UnitsConfiguration and conformance Text.DateStyle.UnitsConfiguration()
{
  result = lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration and conformance Text.DateStyle.UnitsConfiguration;
  if (!lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration and conformance Text.DateStyle.UnitsConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration and conformance Text.DateStyle.UnitsConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration and conformance Text.DateStyle.UnitsConfiguration;
  if (!lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration and conformance Text.DateStyle.UnitsConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.DateStyle.UnitsConfiguration and conformance Text.DateStyle.UnitsConfiguration);
  }

  return result;
}

void type metadata accessor for KeyedEncodingContainer<Text.DateStyle.UnitsConfiguration.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type Text.DateStyle.Errors and conformance Text.DateStyle.Errors()
{
  result = lazy protocol witness table cache variable for type Text.DateStyle.Errors and conformance Text.DateStyle.Errors;
  if (!lazy protocol witness table cache variable for type Text.DateStyle.Errors and conformance Text.DateStyle.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.DateStyle.Errors and conformance Text.DateStyle.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.DateStyle.Errors and conformance Text.DateStyle.Errors;
  if (!lazy protocol witness table cache variable for type Text.DateStyle.Errors and conformance Text.DateStyle.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.DateStyle.Errors and conformance Text.DateStyle.Errors);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Text.DateStyle(uint64_t a1, unsigned int a2)
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
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for Text.DateStyle(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Text.DateStyle.UnitsConfiguration(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Text.DateStyle.UnitsConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ReferenceDateModifier(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(v4 - 8);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

void *initializeWithCopy for ReferenceDateModifier(void *a1, const void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v7 = *(*(v6 - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *assignWithCopy for ReferenceDateModifier(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 16))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 24))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *initializeWithTake for ReferenceDateModifier(void *a1, const void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v7 = *(*(v6 - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v5 + 32))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *assignWithTake for ReferenceDateModifier(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 32))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 40))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t type metadata completion function for DateTextStorage()
{
  result = type metadata accessor for DateTextStorage.Storage(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for DateTextStorage.Storage(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = v15 + ((v5 + 16) & ~v5);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v16 = type metadata accessor for Date();
      v17 = *(*(v16 - 8) + 16);
      v17(a1, a2, v16);
      type metadata accessor for ClosedRange<Date>();
      v17(a1 + *(v18 + 36), (a2 + *(v18 + 36)), v16);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
      *(a1 + *(v19 + 48)) = *(a2 + *(v19 + 48));
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v7 = *a2;
      v8 = a2[1];
      v9 = *(a2 + 16);
      outlined copy of CollectionDifference<ScrollEdgeEffectTag.ID>.Change();
      *a1 = v7;
      *(a1 + 8) = v8;
      *(a1 + 16) = v9;
      type metadata accessor for (dateFormat: ResolvableCurrentDate.DateFormat, timeZone: TimeZone?)();
      v11 = *(v10 + 48);
      v12 = type metadata accessor for TimeZone();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(a2 + v11, 1, v12))
      {
        type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
        memcpy((a1 + v11), a2 + v11, *(*(v14 - 8) + 64));
      }

      else
      {
        (*(v13 + 16))(a1 + v11, a2 + v11, v12);
        (*(v13 + 56))(a1 + v11, 0, 1, v12);
      }
    }

    else
    {
      v20 = type metadata accessor for DateInterval();
      (*(*(v20 - 8) + 16))(a1, a2, v20);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for DateTextStorage.Storage(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v10 = type metadata accessor for Date();
    v13 = *(*(v10 - 8) + 8);
    (v13)((v10 - 8), a1, v10);
    type metadata accessor for ClosedRange<Date>();
    v6 = a1 + *(v11 + 36);
    v5 = v10;
    v4 = v13;
  }

  else if (result == 1)
  {
    outlined consume of ResolvableCurrentDate.DateFormat();
    type metadata accessor for (dateFormat: ResolvableCurrentDate.DateFormat, timeZone: TimeZone?)();
    v8 = *(v7 + 48);
    v9 = type metadata accessor for TimeZone();
    v12 = *(v9 - 8);
    result = (*(v12 + 48))(a1 + v8, 1, v9);
    if (result)
    {
      return result;
    }

    v4 = *(v12 + 8);
    v6 = a1 + v8;
    v5 = v9;
  }

  else
  {
    if (result)
    {
      return result;
    }

    v3 = type metadata accessor for DateInterval();
    v4 = *(*(v3 - 8) + 8);
    v5 = v3;
    v6 = a1;
  }

  return v4(v6, v5);
}

uint64_t initializeWithCopy for DateTextStorage.Storage(uint64_t a1, uint64_t *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v13 = type metadata accessor for Date();
    v14 = *(*(v13 - 8) + 16);
    v14(a1, a2, v13);
    type metadata accessor for ClosedRange<Date>();
    v14(a1 + *(v15 + 36), (a2 + *(v15 + 36)), v13);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
    *(a1 + *(v16 + 48)) = *(a2 + *(v16 + 48));
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = *(a2 + 16);
    outlined copy of CollectionDifference<ScrollEdgeEffectTag.ID>.Change();
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    type metadata accessor for (dateFormat: ResolvableCurrentDate.DateFormat, timeZone: TimeZone?)();
    v9 = *(v8 + 48);
    v10 = type metadata accessor for TimeZone();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(a2 + v9, 1, v10))
    {
      type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
      memcpy((a1 + v9), a2 + v9, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(a1 + v9, a2 + v9, v10);
      (*(v11 + 56))(a1 + v9, 0, 1, v10);
    }
  }

  else
  {
    v17 = type metadata accessor for DateInterval();
    (*(*(v17 - 8) + 16))(a1, a2, v17);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for DateTextStorage.Storage(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    outlined destroy of ClosedRange<Date>(a1, type metadata accessor for DateTextStorage.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 16);
      v14(a1, a2, v13);
      type metadata accessor for ClosedRange<Date>();
      v14(a1 + *(v15 + 36), (a2 + *(v15 + 36)), v13);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
      *(a1 + *(v16 + 48)) = *(a2 + *(v16 + 48));
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v5 = *a2;
      v6 = a2[1];
      v7 = *(a2 + 16);
      outlined copy of CollectionDifference<ScrollEdgeEffectTag.ID>.Change();
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      type metadata accessor for (dateFormat: ResolvableCurrentDate.DateFormat, timeZone: TimeZone?)();
      v9 = *(v8 + 48);
      v10 = type metadata accessor for TimeZone();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(a2 + v9, 1, v10))
      {
        type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
        memcpy((a1 + v9), a2 + v9, *(*(v12 - 8) + 64));
      }

      else
      {
        (*(v11 + 16))(a1 + v9, a2 + v9, v10);
        (*(v11 + 56))(a1 + v9, 0, 1, v10);
      }
    }

    else
    {
      v17 = type metadata accessor for DateInterval();
      (*(*(v17 - 8) + 16))(a1, a2, v17);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for DateTextStorage.Storage(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = type metadata accessor for Date();
    v11 = *(*(v10 - 8) + 32);
    v11(a1, a2, v10);
    type metadata accessor for ClosedRange<Date>();
    v11(a1 + *(v12 + 36), a2 + *(v12 + 36), v10);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
    *(a1 + *(v13 + 48)) = *(a2 + *(v13 + 48));
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    type metadata accessor for (dateFormat: ResolvableCurrentDate.DateFormat, timeZone: TimeZone?)();
    v6 = *(v5 + 48);
    v7 = type metadata accessor for TimeZone();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2 + v6, 1, v7))
    {
      type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
      memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a1 + v6, a2 + v6, v7);
      (*(v8 + 56))(a1 + v6, 0, 1, v7);
    }
  }

  else
  {
    v14 = type metadata accessor for DateInterval();
    (*(*(v14 - 8) + 32))(a1, a2, v14);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for DateTextStorage.Storage(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of ClosedRange<Date>(a1, type metadata accessor for DateTextStorage.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v10 = type metadata accessor for Date();
      v11 = *(*(v10 - 8) + 32);
      v11(a1, a2, v10);
      type metadata accessor for ClosedRange<Date>();
      v11(a1 + *(v12 + 36), a2 + *(v12 + 36), v10);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
      *(a1 + *(v13 + 48)) = *(a2 + *(v13 + 48));
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
      type metadata accessor for (dateFormat: ResolvableCurrentDate.DateFormat, timeZone: TimeZone?)();
      v6 = *(v5 + 48);
      v7 = type metadata accessor for TimeZone();
      v8 = *(v7 - 8);
      if ((*(v8 + 48))(a2 + v6, 1, v7))
      {
        type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
        memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
      }

      else
      {
        (*(v8 + 32))(a1 + v6, a2 + v6, v7);
        (*(v8 + 56))(a1 + v6, 0, 1, v7);
      }
    }

    else
    {
      v14 = type metadata accessor for DateInterval();
      (*(*(v14 - 8) + 32))(a1, a2, v14);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void type metadata completion function for DateTextStorage.Storage()
{
  v0 = type metadata accessor for DateInterval();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for TimeZone?(319, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v7 = &v5;
      type metadata accessor for ClosedRange<Date>();
      if (v3 <= 0x3F)
      {
        swift_getTupleTypeLayout2();
        v8 = &v4;
        swift_initEnumMetadataMultiPayload();
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type Text.DateStyle.Storage and conformance Text.DateStyle.Storage()
{
  result = lazy protocol witness table cache variable for type Text.DateStyle.Storage and conformance Text.DateStyle.Storage;
  if (!lazy protocol witness table cache variable for type Text.DateStyle.Storage and conformance Text.DateStyle.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.DateStyle.Storage and conformance Text.DateStyle.Storage);
  }

  return result;
}

void type metadata accessor for (TimeZone?, TimeZone?)()
{
  if (!lazy cache variable for type metadata for (TimeZone?, TimeZone?))
  {
    type metadata accessor for TimeZone?(255, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (TimeZone?, TimeZone?));
    }
  }
}

void type metadata accessor for (DateTextStorage.Storage, DateTextStorage.Storage)()
{
  if (!lazy cache variable for type metadata for (DateTextStorage.Storage, DateTextStorage.Storage))
  {
    type metadata accessor for DateTextStorage.Storage(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (DateTextStorage.Storage, DateTextStorage.Storage));
    }
  }
}

uint64_t outlined init with copy of ClosedRange<Date>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for TimeDataFormattingStorage<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.Timer>()
{
  if (!lazy cache variable for type metadata for TimeDataFormattingStorage<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.Timer>)
  {
    type metadata accessor for TimeDataSource<Date><A>.DateStorage(255, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
    type metadata accessor for SystemFormatStyle.Timer();
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage();
    lazy protocol witness table accessor for type NSCalendarUnit and conformance NSCalendarUnit(&lazy protocol witness table cache variable for type SystemFormatStyle.Timer and conformance SystemFormatStyle.Timer, type metadata accessor for SystemFormatStyle.Timer);
    v0 = type metadata accessor for TimeDataFormattingStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TimeDataFormattingStorage<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.Timer>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage()
{
  result = lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage;
  if (!lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage)
  {
    type metadata accessor for TimeDataSource<Date><A>.DateStorage(255, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage);
  }

  return result;
}

uint64_t partial apply for closure #1 in Text.init(timerInterval:pauseTime:countsDown:showsHours:animateSecondCounting:)@<X0>(void *a1@<X8>)
{
  result = Date.timeIntervalSince(_:)();
  *a1 = v3;
  return result;
}

void type metadata accessor for WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>()
{
  if (!lazy cache variable for type metadata for WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>)
  {
    type metadata accessor for Date.FormatStyle.Attributed();
    lazy protocol witness table accessor for type NSCalendarUnit and conformance NSCalendarUnit(&lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed, MEMORY[0x1E6969178]);
    lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute();
    lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute();
    v0 = MEMORY[0x1E69685B0];
    lazy protocol witness table accessor for type NSCalendarUnit and conformance NSCalendarUnit(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field, MEMORY[0x1E69685B0]);
    lazy protocol witness table accessor for type NSCalendarUnit and conformance NSCalendarUnit(&lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field, v0);
    v1 = type metadata accessor for WhitespaceRemovingFormatStyle();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>);
    }
  }
}

void type metadata accessor for TimeDataFormattingStorage<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>()
{
  if (!lazy cache variable for type metadata for TimeDataFormattingStorage<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>)
  {
    type metadata accessor for TimeDataSource<Date><A>.DateStorage(255, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
    type metadata accessor for SystemFormatStyle.DateOffset();
    lazy protocol witness table accessor for type TimeDataSource<Date><A>.DateStorage and conformance TimeDataSource<A><A>.DateStorage();
    lazy protocol witness table accessor for type NSCalendarUnit and conformance NSCalendarUnit(&lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset, type metadata accessor for SystemFormatStyle.DateOffset);
    v0 = type metadata accessor for TimeDataFormattingStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TimeDataFormattingStorage<TimeDataSource<Date><A>.DateStorage, SystemFormatStyle.DateOffset>);
    }
  }
}

void type metadata accessor for FormatStyleBox<Date.FormatStyle>()
{
  if (!lazy cache variable for type metadata for FormatStyleBox<Date.FormatStyle>)
  {
    type metadata accessor for Date.FormatStyle();
    lazy protocol witness table accessor for type NSCalendarUnit and conformance NSCalendarUnit(&lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle, MEMORY[0x1E6969328]);
    lazy protocol witness table accessor for type NSCalendarUnit and conformance NSCalendarUnit(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
    v0 = type metadata accessor for FormatStyleBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FormatStyleBox<Date.FormatStyle>);
    }
  }
}

void type metadata accessor for FormatStyleBox<WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>>()
{
  if (!lazy cache variable for type metadata for FormatStyleBox<WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>>)
  {
    type metadata accessor for WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>();
    lazy protocol witness table accessor for type NSCalendarUnit and conformance NSCalendarUnit(&lazy protocol witness table cache variable for type WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute> and conformance WhitespaceRemovingFormatStyle<A, B>, type metadata accessor for WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>);
    lazy protocol witness table accessor for type NSCalendarUnit and conformance NSCalendarUnit(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
    v0 = type metadata accessor for FormatStyleBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FormatStyleBox<WhitespaceRemovingFormatStyle<Date.FormatStyle.Attributed, AttributeScopes.FoundationAttributes.DateFieldAttribute>>);
    }
  }
}

void static SystemColorDefinition.systemRGB(_:_:_:_:)(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>)
{
  v7 = a2 / 255.0;
  v8 = a3 / 255.0;
  v9 = -(a2 / 255.0);
  if (v7 > 0.0)
  {
    v9 = v7;
  }

  if (v9 <= 0.04045)
  {
    v10 = v9 * 0.077399;
  }

  else
  {
    v10 = 1.0;
    if (v9 != 1.0)
    {
      v11 = a4;
      v12 = powf((v9 * 0.94787) + 0.052133, 2.4);
      a4 = v11;
      v10 = v12;
    }
  }

  v13 = -v8;
  if (v8 > 0.0)
  {
    v13 = v8;
  }

  v14 = a4 / 255.0;
  if (v13 <= 0.04045)
  {
    v15 = v13 * 0.077399;
  }

  else
  {
    v15 = 1.0;
    if (v13 != 1.0)
    {
      v15 = powf((v13 * 0.94787) + 0.052133, 2.4);
    }
  }

  if (v14 <= 0.0)
  {
    v16 = -v14;
  }

  else
  {
    v16 = v14;
  }

  if (v16 <= 0.04045)
  {
    v17 = v16 * 0.077399;
  }

  else
  {
    v17 = 1.0;
    if (v16 != 1.0)
    {
      v17 = powf((v16 * 0.94787) + 0.052133, 2.4);
    }
  }

  v18 = -v15;
  if (v8 > 0.0)
  {
    v18 = v15;
  }

  v19 = -v10;
  if (v7 > 0.0)
  {
    v19 = v10;
  }

  if (v14 <= 0.0)
  {
    v17 = -v17;
  }

  *a1 = v19;
  *(a1 + 4) = v18;
  *(a1 + 8) = v17;
  *(a1 + 12) = a5 * 0.01;
  *(a1 + 16) = 2143289344;
}

float static SystemColorDefinition.opacity(at:environment:)(uint64_t a1)
{
  result = 0.18;
  if (a1 == 2)
  {
    result = 0.25;
  }

  if (a1 == 1)
  {
    result = 0.5;
  }

  if (a1 <= 0)
  {
    return 1.0;
  }

  return result;
}

{
  return static SystemColorDefinition.opacity(at:environment:)(a1);
}

uint64_t specialized ColorProvider._apply(color:to:)(uint64_t result, uint64_t a2, void *a3)
{
  v11 = *(a2 + 24);
  if (v11 <= 2)
  {
    v60 = v10;
    v61 = v9;
    v62 = v8;
    v63 = v7;
    v64 = v6;
    v65 = v5;
    v66 = v3;
    v67 = v4;
    v13 = *a2;
    if (v11)
    {
      if (v11 == 1)
      {
        v14 = *(a2 + 8);
        if (v14 == *(a2 + 16))
        {
          return result;
        }

        v15 = result;
        v16 = *(a2 + 48);
        v17 = *(a2 + 56);
        v58 = v16;
        v59 = v17;
        EnvironmentValues.effectiveTintAdjustmentMode.getter(&v57);
        v19 = a3;
        if (v57 == 1)
        {
          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.DesaturatedColor>, lazy protocol witness table accessor for type Color.DesaturatedColor and conformance Color.DesaturatedColor, &type metadata for Color.DesaturatedColor, type metadata accessor for ColorBox);
          v19 = swift_allocObject();
          v19[2] = a3;
        }

        v49 = v16;
        v50 = v17;
        v20 = *(*v19 + 112);

        v21 = v20(&v49);
        v23 = v22;
        v25 = v24;
        v27 = v26;

        v28 = *(a2 + 56);
        v49 = *(a2 + 48);
        v50 = v28;
        v29 = *(*v15 + 168);

        v30 = v29(v14, &v49);

        v49 = __PAIR64__(v23, LODWORD(v21));
        LODWORD(v50) = v25;
        *(&v50 + 1) = v27 * v30;
        v51 = 2143289344;
        v52 = 0;
        v53 = 1065353216;
        v54 = 0;
        v55 = -1;
        v31 = MEMORY[0x1E69E7CC0];
        v56 = MEMORY[0x1E69E7CC0];
        v48 = v13;
        if (*(a2 + 40) == 1)
        {
          v31 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v32, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v49, &v48, v14);
        result = outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v31;
        v33 = 1;
      }

      else
      {
        v41 = result;
        if (v13 >= 1)
        {
          v42 = *(a2 + 56);
          v49 = *(a2 + 48);
          v50 = v42;
          v43 = *(*result + 168);
          v44 = result;

          v45 = v43(v13, &v49);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v41 = swift_allocObject();
          *(v41 + 16) = v44;
          *(v41 + 24) = v45;
        }

        v46 = *(a2 + 32);
        v47 = *(a2 + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v46, v47);
        *(a2 + 32) = v41;
        v33 = 3;
      }

      *(a2 + 40) = v33;
    }

    else
    {
      v34 = result;
      if (v13 >= 1)
      {
        v35 = *(a2 + 56);
        v49 = *(a2 + 48);
        v50 = v35;
        v36 = *(*result + 168);
        v37 = result;

        v38 = v36(v13, &v49);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v34 = swift_allocObject();
        *(v34 + 16) = v37;
        *(v34 + 24) = v38;
      }

      v39 = *(a2 + 32);
      v40 = *(a2 + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v39, v40);
      *(a2 + 32) = v34;
      *(a2 + 40) = 0;
    }
  }

  return result;
}

uint64_t specialized ColorProvider._apply(color:to:)(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  v12 = *(a2 + 24);
  if (v12 <= 2)
  {
    v51 = v11;
    v52 = v10;
    v53 = v9;
    v54 = v8;
    v55 = v7;
    v56 = v6;
    v57 = v4;
    v58 = v5;
    v14 = *a2;
    if (v12)
    {
      if (v12 == 1)
      {
        v15 = *(a2 + 8);
        if (v15 == *(a2 + 16))
        {
          return result;
        }

        v44 = *(a2 + 48);
        v16 = result;
        v18 = (*(*a3 + 112))(&v44);
        v20 = v19;
        v22 = v21;
        v23 = *(a2 + 56);
        *&v44 = *(a2 + 48);
        *(&v44 + 1) = v23;
        v24 = *(*v16 + 168);

        v25 = v24(v15, &v44);

        *&v44 = __PAIR64__(v20, LODWORD(v18));
        DWORD2(v44) = v22;
        *(&v44 + 3) = v25 * a4;
        v45 = 2143289344;
        v46 = 0;
        v47 = 1065353216;
        v48 = 0;
        v49 = -1;
        v26 = MEMORY[0x1E69E7CC0];
        v50 = MEMORY[0x1E69E7CC0];
        v43 = v14;
        if (*(a2 + 40) == 1)
        {
          v26 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v27, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v44, &v43, v15);
        result = outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v26;
        v28 = 1;
      }

      else
      {
        v36 = result;
        if (v14 >= 1)
        {
          v37 = *(a2 + 56);
          *&v44 = *(a2 + 48);
          *(&v44 + 1) = v37;
          v38 = *(*result + 168);
          v39 = result;

          v40 = v38(v14, &v44);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v36 = swift_allocObject();
          *(v36 + 16) = v39;
          *(v36 + 24) = v40;
        }

        v41 = *(a2 + 32);
        v42 = *(a2 + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v41, v42);
        *(a2 + 32) = v36;
        v28 = 3;
      }

      *(a2 + 40) = v28;
    }

    else
    {
      v29 = result;
      if (v14 >= 1)
      {
        v30 = *(a2 + 56);
        *&v44 = *(a2 + 48);
        *(&v44 + 1) = v30;
        v31 = *(*result + 168);
        v32 = result;

        v33 = v31(v14, &v44);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v29 = swift_allocObject();
        *(v29 + 16) = v32;
        *(v29 + 24) = v33;
      }

      v34 = *(a2 + 32);
      v35 = *(a2 + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v34, v35);
      *(a2 + 32) = v29;
      *(a2 + 40) = 0;
    }
  }

  return result;
}

{
  v8 = *(a2 + 24);
  if (v8 <= 2)
  {
    v49 = v7;
    v50 = v6;
    v51 = v4;
    v52 = v5;
    v10 = *a2;
    if (v8)
    {
      if (v8 == 1)
      {
        v11 = *(a2 + 8);
        if (v11 == *(a2 + 16))
        {
          return result;
        }

        v12 = *(a2 + 56);
        v39 = *(a2 + 48);
        v40 = v12;
        v13 = *(*a3 + 120);
        v14 = result;

        v13(v47, &v39);

        v15 = v48 * a4;
        v16 = *(a2 + 56);
        v39 = *(a2 + 48);
        v40 = v16;
        v17 = *(*v14 + 168);

        v18 = v17(v11, &v39);
        v36 = LODWORD(v18);

        v39 = vmul_n_f32(v47[0], a4);
        v40 = vmul_f32(v47[1], __PAIR64__(v36, LODWORD(a4)));
        v41 = v15;
        v42 = 0;
        v43 = 1065353216;
        v44 = 0;
        v45 = -1;
        v19 = MEMORY[0x1E69E7CC0];
        v46 = MEMORY[0x1E69E7CC0];
        v38 = v10;
        if (*(a2 + 40) == 1)
        {
          v19 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v20, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v39, &v38, v11);
        result = outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v19;
        v21 = 1;
      }

      else
      {
        v29 = result;
        if (v10 >= 1)
        {
          v30 = *(a2 + 56);
          v39 = *(a2 + 48);
          v40 = v30;
          v31 = *(*result + 168);
          v32 = result;

          v33 = v31(v10, &v39);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v29 = swift_allocObject();
          *(v29 + 16) = v32;
          *(v29 + 24) = v33;
        }

        v34 = *(a2 + 32);
        v35 = *(a2 + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v34, v35);
        *(a2 + 32) = v29;
        v21 = 3;
      }

      *(a2 + 40) = v21;
    }

    else
    {
      v22 = result;
      if (v10 >= 1)
      {
        v23 = *(a2 + 56);
        v39 = *(a2 + 48);
        v40 = v23;
        v24 = *(*result + 168);
        v25 = result;

        v26 = v24(v10, &v39);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v22 = swift_allocObject();
        *(v22 + 16) = v25;
        *(v22 + 24) = v26;
      }

      v27 = *(a2 + 32);
      v28 = *(a2 + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v27, v28);
      *(a2 + 32) = v22;
      *(a2 + 40) = 0;
    }
  }

  return result;
}

uint64_t specialized ColorProvider._apply(color:to:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v7 = *(a2 + 24);
  if (v7 <= 2)
  {
    v45 = v6;
    v46 = v5;
    v47 = v3;
    v48 = v4;
    v9 = result;
    v10 = *a2;
    if (v7)
    {
      if (v7 == 1)
      {
        v11 = *(a2 + 8);
        if (v11 == *(a2 + 16))
        {
          return result;
        }

        *&v12 = vcvts_n_f32_s64(a3, 0xAuLL);
        v13 = *(a2 + 56);
        v37 = *(a2 + 48);
        v38 = v13;
        v14 = *(*v9 + 168);

        v15 = v14(v11, &v37);

        __asm { FMOV            V0.2S, #-1.0 }

        v37 = _D0;
        v38 = __PAIR64__(LODWORD(v15), v12);
        v39 = 2143289344;
        v40 = 0;
        v41 = 1065353216;
        v42 = 0;
        v43 = -1;
        v21 = MEMORY[0x1E69E7CC0];
        v44 = MEMORY[0x1E69E7CC0];
        v36 = v10;
        if (*(a2 + 40) == 1)
        {
          v21 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v22, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v37, &v36, v11);
        result = outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v21;
        v23 = 1;
      }

      else
      {
        v30 = result;
        if (v10 >= 1)
        {
          v31 = *(a2 + 56);
          v37 = *(a2 + 48);
          v38 = v31;
          v32 = *(*v9 + 168);

          v33 = v32(v10, &v37);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v30 = swift_allocObject();
          *(v30 + 16) = v9;
          *(v30 + 24) = v33;
        }

        v34 = *(a2 + 32);
        v35 = *(a2 + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v34, v35);
        *(a2 + 32) = v30;
        v23 = 3;
      }

      *(a2 + 40) = v23;
    }

    else
    {
      v24 = result;
      if (v10 >= 1)
      {
        v25 = *(a2 + 56);
        v37 = *(a2 + 48);
        v38 = v25;
        v26 = *(*v9 + 168);

        v27 = v26(v10, &v37);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v24 = swift_allocObject();
        *(v24 + 16) = v9;
        *(v24 + 24) = v27;
      }

      v28 = *(a2 + 32);
      v29 = *(a2 + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v28, v29);
      *(a2 + 32) = v24;
      *(a2 + 40) = 0;
    }
  }

  return result;
}

uint64_t specialized ColorProvider._apply(color:to:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *(a2 + 24);
  if (v9 <= 2)
  {
    v48 = v8;
    v49 = v7;
    v50 = v6;
    v51 = v5;
    v52 = v3;
    v53 = v4;
    v11 = *a2;
    if (v9)
    {
      if (v9 == 1)
      {
        v12 = *(a2 + 8);
        if (v12 == *(a2 + 16))
        {
          return result;
        }

        v41 = *(a2 + 48);
        v13 = result;
        v14 = (*(*a3 + 112))(&v41);
        v17 = (v16 * 0.0722) + ((v14 * 0.2126) + (v15 * 0.7152));
        v19 = v18 * 0.8;
        v20 = *(a2 + 56);
        *&v41 = *(a2 + 48);
        *(&v41 + 1) = v20;
        v21 = *(*v13 + 168);

        v22 = v21(v12, &v41);

        *&v41 = v17;
        *(&v41 + 1) = v17;
        *(&v41 + 2) = v17;
        *(&v41 + 3) = v19 * v22;
        v42 = 2143289344;
        v43 = 0;
        v44 = 1065353216;
        v45 = 0;
        v46 = -1;
        v23 = MEMORY[0x1E69E7CC0];
        v47 = MEMORY[0x1E69E7CC0];
        v40 = v11;
        if (*(a2 + 40) == 1)
        {
          v23 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v24, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v41, &v40, v12);
        result = outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v23;
        v25 = 1;
      }

      else
      {
        v33 = result;
        if (v11 >= 1)
        {
          v34 = *(a2 + 56);
          *&v41 = *(a2 + 48);
          *(&v41 + 1) = v34;
          v35 = *(*result + 168);
          v36 = result;

          v37 = v35(v11, &v41);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v33 = swift_allocObject();
          *(v33 + 16) = v36;
          *(v33 + 24) = v37;
        }

        v38 = *(a2 + 32);
        v39 = *(a2 + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v38, v39);
        *(a2 + 32) = v33;
        v25 = 3;
      }

      *(a2 + 40) = v25;
    }

    else
    {
      v26 = result;
      if (v11 >= 1)
      {
        v27 = *(a2 + 56);
        *&v41 = *(a2 + 48);
        *(&v41 + 1) = v27;
        v28 = *(*result + 168);
        v29 = result;

        v30 = v28(v11, &v41);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v26 = swift_allocObject();
        *(v26 + 16) = v29;
        *(v26 + 24) = v30;
      }

      v31 = *(a2 + 32);
      v32 = *(a2 + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v31, v32);
      *(a2 + 32) = v26;
      *(a2 + 40) = 0;
    }
  }

  return result;
}

uint64_t specialized ColorProvider._apply(color:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *(a2 + 24);
  if (v12 <= 2)
  {
    v68 = v11;
    v69 = v10;
    v70 = v9;
    v71 = v8;
    v72 = v7;
    v73 = v6;
    v74 = v4;
    v75 = v5;
    v14 = *a2;
    if (v12)
    {
      if (v12 == 1)
      {
        v15 = *(a2 + 8);
        if (v15 == *(a2 + 16))
        {
          return result;
        }

        v17 = *(a2 + 56);
        v60 = *(a2 + 48);
        v16 = v60;
        v61 = v17;
        v18 = result;
        v20 = (*(*a3 + 112))(&v60);
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v60 = v16;
        v61 = v17;
        v27 = (*(*a4 + 112))(&v60);
        Color.Resolved.over(_:)(v27, v28, v29, v30, v20, v22, v24, v26);
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v39 = *(a2 + 56);
        v60 = *(a2 + 48);
        v61 = v39;
        v40 = *(*v18 + 168);

        v41 = v40(v15, &v60);

        v60 = __PAIR64__(v34, v32);
        LODWORD(v61) = v36;
        *(&v61 + 1) = v38 * v41;
        v62 = 2143289344;
        v63 = 0;
        v64 = 1065353216;
        v65 = 0;
        v66 = -1;
        v42 = MEMORY[0x1E69E7CC0];
        v67 = MEMORY[0x1E69E7CC0];
        v59 = v14;
        if (*(a2 + 40) == 1)
        {
          v42 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v43, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v60, &v59, v15);
        result = outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v42;
        v44 = 1;
      }

      else
      {
        v52 = result;
        if (v14 >= 1)
        {
          v53 = *(a2 + 56);
          v60 = *(a2 + 48);
          v61 = v53;
          v54 = *(*result + 168);
          v55 = result;

          v56 = v54(v14, &v60);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v52 = swift_allocObject();
          *(v52 + 16) = v55;
          *(v52 + 24) = v56;
        }

        v57 = *(a2 + 32);
        v58 = *(a2 + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v57, v58);
        *(a2 + 32) = v52;
        v44 = 3;
      }

      *(a2 + 40) = v44;
    }

    else
    {
      v45 = result;
      if (v14 >= 1)
      {
        v46 = *(a2 + 56);
        v60 = *(a2 + 48);
        v61 = v46;
        v47 = *(*result + 168);
        v48 = result;

        v49 = v47(v14, &v60);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v45 = swift_allocObject();
        *(v45 + 16) = v48;
        *(v45 + 24) = v49;
      }

      v50 = *(a2 + 32);
      v51 = *(a2 + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v50, v51);
      *(a2 + 32) = v45;
      *(a2 + 40) = 0;
    }
  }

  return result;
}

{
  v12 = *(a2 + 24);
  if (v12 <= 2)
  {
    v57 = v11;
    v58 = v10;
    v59 = v9;
    v60 = v8;
    v61 = v7;
    v62 = v6;
    v63 = v4;
    v64 = v5;
    v14 = *a2;
    if (v12)
    {
      if (v12 == 1)
      {
        v15 = *(a2 + 8);
        if (v15 == *(a2 + 16))
        {
          return result;
        }

        v18 = *(a2 + 56);
        v49 = *(a2 + 48);
        v17 = v49;
        v50 = v18;
        v19 = result;
        v20 = (*(*a3 + 168))(a4, &v49);
        v49 = v17;
        v50 = v18;
        v21 = (*(*a3 + 112))(&v49);
        v23 = v22;
        v25 = v24;
        v27 = v20 * v26;
        v28 = *(a2 + 56);
        v49 = *(a2 + 48);
        v50 = v28;
        v29 = *(*v19 + 168);

        v30 = v29(v15, &v49);

        v49 = __PAIR64__(v23, LODWORD(v21));
        LODWORD(v50) = v25;
        *(&v50 + 1) = v27 * v30;
        v51 = 2143289344;
        v52 = 0;
        v53 = 1065353216;
        v54 = 0;
        v55 = -1;
        v31 = MEMORY[0x1E69E7CC0];
        v56 = MEMORY[0x1E69E7CC0];
        v48 = v14;
        if (*(a2 + 40) == 1)
        {
          v31 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v32, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v49, &v48, v15);
        result = outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v31;
        v33 = 1;
      }

      else
      {
        v41 = result;
        if (v14 >= 1)
        {
          v42 = *(a2 + 56);
          v49 = *(a2 + 48);
          v50 = v42;
          v43 = *(*result + 168);
          v44 = result;

          v45 = v43(v14, &v49);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v41 = swift_allocObject();
          *(v41 + 16) = v44;
          *(v41 + 24) = v45;
        }

        v46 = *(a2 + 32);
        v47 = *(a2 + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v46, v47);
        *(a2 + 32) = v41;
        v33 = 3;
      }

      *(a2 + 40) = v33;
    }

    else
    {
      v34 = result;
      if (v14 >= 1)
      {
        v35 = *(a2 + 56);
        v49 = *(a2 + 48);
        v50 = v35;
        v36 = *(*result + 168);
        v37 = result;

        v38 = v36(v14, &v49);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v34 = swift_allocObject();
        *(v34 + 16) = v37;
        *(v34 + 24) = v38;
      }

      v39 = *(a2 + 32);
      v40 = *(a2 + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v39, v40);
      *(a2 + 32) = v34;
      *(a2 + 40) = 0;
    }
  }

  return result;
}

{
  v10 = *(a2 + 24);
  if (v10 <= 2)
  {
    v50 = v9;
    v51 = v8;
    v52 = v7;
    v53 = v6;
    v54 = v4;
    v55 = v5;
    v12 = *a2;
    if (v10)
    {
      if (v10 == 1)
      {
        v13 = *(a2 + 8);
        if (v13 == *(a2 + 16))
        {
          return result;
        }

        v40 = *(a2 + 48);
        v14 = result;
        (*(*a3 + 120))(&v47, &v40);
        v16 = v48;
        v17 = v49;
        if ((a4 & 0x100000000) != 0)
        {
          v18 = NAN;
        }

        else
        {
          v18 = *&a4;
        }

        v19 = *(a2 + 56);
        *&v40 = *(a2 + 48);
        *(&v40 + 1) = v19;
        v20 = *(*v14 + 168);

        v21 = v20(v13, &v40);

        *&v40 = v47;
        DWORD2(v40) = v16;
        *(&v40 + 3) = v17 * v21;
        v41 = v18;
        v42 = 0;
        v43 = 1065353216;
        v44 = 0;
        v45 = -1;
        v22 = MEMORY[0x1E69E7CC0];
        v46 = MEMORY[0x1E69E7CC0];
        v39 = v12;
        if (*(a2 + 40) == 1)
        {
          v22 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v23, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v40, &v39, v13);
        result = outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v22;
        v24 = 1;
      }

      else
      {
        v32 = result;
        if (v12 >= 1)
        {
          v33 = *(a2 + 56);
          *&v40 = *(a2 + 48);
          *(&v40 + 1) = v33;
          v34 = *(*result + 168);
          v35 = result;

          v36 = v34(v12, &v40);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v32 = swift_allocObject();
          *(v32 + 16) = v35;
          *(v32 + 24) = v36;
        }

        v37 = *(a2 + 32);
        v38 = *(a2 + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v37, v38);
        *(a2 + 32) = v32;
        v24 = 3;
      }

      *(a2 + 40) = v24;
    }

    else
    {
      v25 = result;
      if (v12 >= 1)
      {
        v26 = *(a2 + 56);
        *&v40 = *(a2 + 48);
        *(&v40 + 1) = v26;
        v27 = *(*result + 168);
        v28 = result;

        v29 = v27(v12, &v40);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v25 = swift_allocObject();
        *(v25 + 16) = v28;
        *(v25 + 24) = v29;
      }

      v30 = *(a2 + 32);
      v31 = *(a2 + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v30, v31);
      *(a2 + 32) = v25;
      *(a2 + 40) = 0;
    }
  }

  return result;
}

uint64_t specialized ColorProvider._apply(color:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v13 = *(a2 + 24);
  if (v13 <= 2)
  {
    v70 = v12;
    v71 = v11;
    v72 = v10;
    v73 = v9;
    v74 = v8;
    v75 = v7;
    v76 = v5;
    v77 = v6;
    v15 = *a2;
    if (v13)
    {
      if (v13 == 1)
      {
        v16 = *(a2 + 8);
        if (v16 == *(a2 + 16))
        {
          return result;
        }

        v18 = *(a2 + 56);
        v62 = *(a2 + 48);
        v17 = v62;
        v63 = v18;
        v19 = result;
        v22 = (*(*a3 + 112))(&v62);
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v62 = v17;
        v63 = v18;
        v29 = (*(*a4 + 112))(&v62);
        ResolvedGradient.ColorSpace.mix(_:_:by:)(v22, v24, v26, v28, v29, v30, v31, v32, a5);
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v41 = *(a2 + 56);
        v62 = *(a2 + 48);
        v63 = v41;
        v42 = *(*v19 + 168);

        v43 = v42(v16, &v62);

        v62 = __PAIR64__(v36, v34);
        LODWORD(v63) = v38;
        *(&v63 + 1) = v40 * v43;
        v64 = 2143289344;
        v65 = 0;
        v66 = 1065353216;
        v67 = 0;
        v68 = -1;
        v44 = MEMORY[0x1E69E7CC0];
        v69 = MEMORY[0x1E69E7CC0];
        v61 = v15;
        if (*(a2 + 40) == 1)
        {
          v44 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v45, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v62, &v61, v16);
        result = outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v44;
        v46 = 1;
      }

      else
      {
        v54 = result;
        if (v15 >= 1)
        {
          v55 = *(a2 + 56);
          v62 = *(a2 + 48);
          v63 = v55;
          v56 = *(*result + 168);
          v57 = result;

          v58 = v56(v15, &v62);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v54 = swift_allocObject();
          *(v54 + 16) = v57;
          *(v54 + 24) = v58;
        }

        v59 = *(a2 + 32);
        v60 = *(a2 + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v59, v60);
        *(a2 + 32) = v54;
        v46 = 3;
      }

      *(a2 + 40) = v46;
    }

    else
    {
      v47 = result;
      if (v15 >= 1)
      {
        v48 = *(a2 + 56);
        v62 = *(a2 + 48);
        v63 = v48;
        v49 = *(*result + 168);
        v50 = result;

        v51 = v49(v15, &v62);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v47 = swift_allocObject();
        *(v47 + 16) = v50;
        *(v47 + 24) = v51;
      }

      v52 = *(a2 + 32);
      v53 = *(a2 + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v52, v53);
      *(a2 + 32) = v47;
      *(a2 + 40) = 0;
    }
  }

  return result;
}

uint64_t specialized ColorProvider._apply(color:to:)(uint64_t result, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v42 = a3;
  v43 = a4 & 1;
  v44 = a5;
  if (*(a2 + 24) <= 2u)
  {
    v6 = *a2;
    if (*(a2 + 24))
    {
      if (*(a2 + 24) == 1)
      {
        v7 = *(a2 + 8);
        if (v7 == *(a2 + 16))
        {
          return result;
        }

        v8 = *(a2 + 56);
        v34 = *(a2 + 48);
        v35 = v8;
        v9 = result;

        GradientColorProvider.resolveHDR(in:)(&v34, &v45);

        v10 = v46;
        v11 = v47;
        v12 = v48;
        v13 = *(a2 + 56);
        v34 = *(a2 + 48);
        v35 = v13;
        v14 = *(*v9 + 168);

        v15 = v14(v7, &v34);

        v34 = v45;
        LODWORD(v35) = v10;
        *(&v35 + 1) = v11 * v15;
        v36 = v12;
        v37 = 0;
        v38 = 1065353216;
        v39 = 0;
        v40 = -1;
        v16 = MEMORY[0x1E69E7CC0];
        v41 = MEMORY[0x1E69E7CC0];
        v33 = v6;
        if (*(a2 + 40) == 1)
        {
          v16 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v17, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v34, &v33, v7);
        result = outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v16;
        v18 = 1;
      }

      else
      {
        v26 = result;
        if (v6 >= 1)
        {
          v27 = *(a2 + 56);
          v34 = *(a2 + 48);
          v35 = v27;
          v28 = *(*result + 168);
          v29 = result;

          v30 = v28(v6, &v34);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v26 = swift_allocObject();
          *(v26 + 16) = v29;
          *(v26 + 24) = v30;
        }

        v31 = *(a2 + 32);
        v32 = *(a2 + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v31, v32);
        *(a2 + 32) = v26;
        v18 = 3;
      }

      *(a2 + 40) = v18;
    }

    else
    {
      v19 = result;
      if (v6 >= 1)
      {
        v20 = *(a2 + 56);
        v34 = *(a2 + 48);
        v35 = v20;
        v21 = *(*result + 168);
        v22 = result;

        v23 = v21(v6, &v34);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v19 = swift_allocObject();
        *(v19 + 16) = v22;
        *(v19 + 24) = v23;
      }

      v24 = *(a2 + 32);
      v25 = *(a2 + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v24, v25);
      *(a2 + 32) = v19;
      *(a2 + 40) = 0;
    }
  }

  return result;
}

uint64_t specialized ColorProvider.resolveHDR(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, float *a4@<X8>)
{
  v19 = a1;
  v20 = a2;
  EnvironmentValues.effectiveTintAdjustmentMode.getter(&v18);
  v8 = a3;
  if (v18 == 1)
  {
    type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.DesaturatedColor>, lazy protocol witness table accessor for type Color.DesaturatedColor and conformance Color.DesaturatedColor, &type metadata for Color.DesaturatedColor, type metadata accessor for ColorBox);
    v8 = swift_allocObject();
    v8[2] = a3;
  }

  v19 = a1;
  v20 = a2;
  v9 = *(*v8 + 112);

  v10 = v9(&v19);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  *a4 = v10;
  *(a4 + 1) = v12;
  *(a4 + 2) = v14;
  *(a4 + 3) = v16;
  a4[4] = NAN;
  return result;
}

float SystemColorType.resolve(in:)(__int128 *a1)
{
  v4 = *v1;
  v3 = *a1;
  SystemColorType.resolveHDR(in:)(&v3, &v5);
  return v5;
}

uint64_t SystemColorType.CodingKeys.stringValue.getter(char a1)
{
  result = 6579570;
  switch(a1)
  {
    case 1:
      result = 0x65676E61726FLL;
      break;
    case 2:
      result = 0x776F6C6C6579;
      break;
    case 3:
      result = 0x6E65657267;
      break;
    case 4:
      result = 1818322292;
      break;
    case 5:
      result = 1953393005;
      break;
    case 6:
      result = 1851881827;
      break;
    case 7:
      result = 1702194274;
      break;
    case 8:
      result = 0x6F6769646E69;
      break;
    case 9:
      result = 0x656C70727570;
      break;
    case 10:
      result = 1802398064;
      break;
    case 11:
      result = 0x6E776F7262;
      break;
    case 12:
      result = 2036429415;
      break;
    case 13:
      v3 = 1835627120;
      goto LABEL_15;
    case 14:
    case 19:
      result = 0x7261646E6F636573;
      break;
    case 15:
    case 20:
      result = 0x7972616974726574;
      break;
    case 16:
    case 21:
      result = 0x616E726574617571;
      break;
    case 17:
      v3 = 1852405105;
LABEL_15:
      result = v3 | 0x79726100000000;
      break;
    case 18:
      result = 0x467972616D697270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemColorType.BlueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.BlueCodingKeys and conformance SystemColorType.BlueCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemColorType.BlueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.BlueCodingKeys and conformance SystemColorType.BlueCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemColorType.BrownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.BrownCodingKeys and conformance SystemColorType.BrownCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemColorType.BrownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.BrownCodingKeys and conformance SystemColorType.BrownCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SystemColorType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SystemColorType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemColorType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.CodingKeys and conformance SystemColorType.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemColorType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.CodingKeys and conformance SystemColorType.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemColorType.CyanCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.CyanCodingKeys and conformance SystemColorType.CyanCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemColorType.CyanCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.CyanCodingKeys and conformance SystemColorType.CyanCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemColorType.GrayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.GrayCodingKeys and conformance SystemColorType.GrayCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemColorType.GrayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.GrayCodingKeys and conformance SystemColorType.GrayCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemColorType.GreenCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.GreenCodingKeys and conformance SystemColorType.GreenCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemColorType.GreenCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.GreenCodingKeys and conformance SystemColorType.GreenCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemColorType.IndigoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.IndigoCodingKeys and conformance SystemColorType.IndigoCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemColorType.IndigoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.IndigoCodingKeys and conformance SystemColorType.IndigoCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemColorType.MintCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.MintCodingKeys and conformance SystemColorType.MintCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemColorType.MintCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.MintCodingKeys and conformance SystemColorType.MintCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemColorType.OrangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.OrangeCodingKeys and conformance SystemColorType.OrangeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemColorType.OrangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.OrangeCodingKeys and conformance SystemColorType.OrangeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemColorType.PinkCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.PinkCodingKeys and conformance SystemColorType.PinkCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemColorType.PinkCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.PinkCodingKeys and conformance SystemColorType.PinkCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemColorType.PrimaryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.PrimaryCodingKeys and conformance SystemColorType.PrimaryCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemColorType.PrimaryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.PrimaryCodingKeys and conformance SystemColorType.PrimaryCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemColorType.PrimaryFillCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.PrimaryFillCodingKeys and conformance SystemColorType.PrimaryFillCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemColorType.PrimaryFillCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.PrimaryFillCodingKeys and conformance SystemColorType.PrimaryFillCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemColorType.PurpleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.PurpleCodingKeys and conformance SystemColorType.PurpleCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemColorType.PurpleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.PurpleCodingKeys and conformance SystemColorType.PurpleCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemColorType.QuaternaryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.QuaternaryCodingKeys and conformance SystemColorType.QuaternaryCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemColorType.QuaternaryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.QuaternaryCodingKeys and conformance SystemColorType.QuaternaryCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemColorType.QuaternaryFillCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.QuaternaryFillCodingKeys and conformance SystemColorType.QuaternaryFillCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemColorType.QuaternaryFillCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.QuaternaryFillCodingKeys and conformance SystemColorType.QuaternaryFillCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemColorType.QuinaryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.QuinaryCodingKeys and conformance SystemColorType.QuinaryCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemColorType.QuinaryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.QuinaryCodingKeys and conformance SystemColorType.QuinaryCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemColorType.RedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.RedCodingKeys and conformance SystemColorType.RedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemColorType.RedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.RedCodingKeys and conformance SystemColorType.RedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemColorType.SecondaryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.SecondaryCodingKeys and conformance SystemColorType.SecondaryCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemColorType.SecondaryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.SecondaryCodingKeys and conformance SystemColorType.SecondaryCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemColorType.SecondaryFillCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.SecondaryFillCodingKeys and conformance SystemColorType.SecondaryFillCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemColorType.SecondaryFillCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.SecondaryFillCodingKeys and conformance SystemColorType.SecondaryFillCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemColorType.TealCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.TealCodingKeys and conformance SystemColorType.TealCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemColorType.TealCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.TealCodingKeys and conformance SystemColorType.TealCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemColorType.TertiaryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.TertiaryCodingKeys and conformance SystemColorType.TertiaryCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemColorType.TertiaryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.TertiaryCodingKeys and conformance SystemColorType.TertiaryCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemColorType.TertiaryFillCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.TertiaryFillCodingKeys and conformance SystemColorType.TertiaryFillCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemColorType.TertiaryFillCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.TertiaryFillCodingKeys and conformance SystemColorType.TertiaryFillCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemColorType.YellowCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.YellowCodingKeys and conformance SystemColorType.YellowCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemColorType.YellowCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemColorType.YellowCodingKeys and conformance SystemColorType.YellowCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SystemColorType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>, lazy protocol witness table accessor for type SystemColorType.QuaternaryFillCodingKeys and conformance SystemColorType.QuaternaryFillCodingKeys, &unk_1F007A4F0, MEMORY[0x1E69E6F58]);
  v144 = *(v5 - 8);
  v145 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v143 = &v86 - v6;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemColorType.TertiaryFillCodingKeys>, lazy protocol witness table accessor for type SystemColorType.TertiaryFillCodingKeys and conformance SystemColorType.TertiaryFillCodingKeys, &unk_1F007A4D0, v4);
  v141 = *(v7 - 8);
  v142 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v140 = &v86 - v8;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemColorType.SecondaryFillCodingKeys>, lazy protocol witness table accessor for type SystemColorType.SecondaryFillCodingKeys and conformance SystemColorType.SecondaryFillCodingKeys, &unk_1F007A4B0, v4);
  v138 = *(v9 - 8);
  v139 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v137 = &v86 - v10;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemColorType.PrimaryFillCodingKeys>, lazy protocol witness table accessor for type SystemColorType.PrimaryFillCodingKeys and conformance SystemColorType.PrimaryFillCodingKeys, &unk_1F007A490, v4);
  v135 = *(v11 - 8);
  v136 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v134 = &v86 - v12;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemColorType.QuinaryCodingKeys>, lazy protocol witness table accessor for type SystemColorType.QuinaryCodingKeys and conformance SystemColorType.QuinaryCodingKeys, &unk_1F007A470, v4);
  v132 = *(v13 - 8);
  v133 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v131 = &v86 - v14;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemColorType.QuaternaryCodingKeys>, lazy protocol witness table accessor for type SystemColorType.QuaternaryCodingKeys and conformance SystemColorType.QuaternaryCodingKeys, &unk_1F007A450, v4);
  v129 = *(v15 - 8);
  v130 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v128 = &v86 - v16;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemColorType.TertiaryCodingKeys>, lazy protocol witness table accessor for type SystemColorType.TertiaryCodingKeys and conformance SystemColorType.TertiaryCodingKeys, &unk_1F007A430, v4);
  v127[1] = v17;
  v127[0] = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v126 = &v86 - v18;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemColorType.SecondaryCodingKeys>, lazy protocol witness table accessor for type SystemColorType.SecondaryCodingKeys and conformance SystemColorType.SecondaryCodingKeys, &unk_1F007A410, v4);
  v125[1] = v19;
  v125[0] = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v124 = &v86 - v20;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemColorType.PrimaryCodingKeys>, lazy protocol witness table accessor for type SystemColorType.PrimaryCodingKeys and conformance SystemColorType.PrimaryCodingKeys, &unk_1F007A3F0, v4);
  v123[1] = v21;
  v123[0] = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v122 = &v86 - v22;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemColorType.GrayCodingKeys>, lazy protocol witness table accessor for type SystemColorType.GrayCodingKeys and conformance SystemColorType.GrayCodingKeys, &unk_1F007A3D0, v4);
  v121[1] = v23;
  v121[0] = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v120 = &v86 - v24;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemColorType.BrownCodingKeys>, lazy protocol witness table accessor for type SystemColorType.BrownCodingKeys and conformance SystemColorType.BrownCodingKeys, &unk_1F007A3B0, v4);
  v119 = v25;
  v118 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v117 = &v86 - v26;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemColorType.PinkCodingKeys>, lazy protocol witness table accessor for type SystemColorType.PinkCodingKeys and conformance SystemColorType.PinkCodingKeys, &unk_1F007A390, v4);
  v116 = v27;
  v115 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v114 = &v86 - v28;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemColorType.PurpleCodingKeys>, lazy protocol witness table accessor for type SystemColorType.PurpleCodingKeys and conformance SystemColorType.PurpleCodingKeys, &unk_1F007A370, v4);
  v113 = v29;
  v112 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v111 = &v86 - v30;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemColorType.IndigoCodingKeys>, lazy protocol witness table accessor for type SystemColorType.IndigoCodingKeys and conformance SystemColorType.IndigoCodingKeys, &unk_1F007A350, v4);
  v110 = v31;
  v109 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v108 = &v86 - v32;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemColorType.BlueCodingKeys>, lazy protocol witness table accessor for type SystemColorType.BlueCodingKeys and conformance SystemColorType.BlueCodingKeys, &unk_1F007A330, v4);
  v107 = v33;
  v106 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v105 = &v86 - v34;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemColorType.CyanCodingKeys>, lazy protocol witness table accessor for type SystemColorType.CyanCodingKeys and conformance SystemColorType.CyanCodingKeys, &unk_1F007A310, v4);
  v104 = v35;
  v103 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v102 = &v86 - v36;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemColorType.MintCodingKeys>, lazy protocol witness table accessor for type SystemColorType.MintCodingKeys and conformance SystemColorType.MintCodingKeys, &unk_1F007A2F0, v4);
  v101 = v37;
  v100 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v99 = &v86 - v38;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemColorType.TealCodingKeys>, lazy protocol witness table accessor for type SystemColorType.TealCodingKeys and conformance SystemColorType.TealCodingKeys, &unk_1F007A2D0, v4);
  v98 = v39;
  v97 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v96 = &v86 - v40;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemColorType.GreenCodingKeys>, lazy protocol witness table accessor for type SystemColorType.GreenCodingKeys and conformance SystemColorType.GreenCodingKeys, &unk_1F007A2B0, v4);
  v95 = v41;
  v94 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v93 = &v86 - v42;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemColorType.YellowCodingKeys>, lazy protocol witness table accessor for type SystemColorType.YellowCodingKeys and conformance SystemColorType.YellowCodingKeys, &unk_1F007A290, v4);
  v92 = v43;
  v91 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v90 = &v86 - v44;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemColorType.OrangeCodingKeys>, lazy protocol witness table accessor for type SystemColorType.OrangeCodingKeys and conformance SystemColorType.OrangeCodingKeys, &unk_1F007A270, v4);
  v89 = v45;
  v88 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v87 = &v86 - v46;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemColorType.RedCodingKeys>, lazy protocol witness table accessor for type SystemColorType.RedCodingKeys and conformance SystemColorType.RedCodingKeys, &unk_1F007A250, v4);
  v48 = v47;
  v86 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v86 - v49;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SystemColorType.CodingKeys>, lazy protocol witness table accessor for type SystemColorType.CodingKeys and conformance SystemColorType.CodingKeys, &unk_1F007A230, v4);
  v147 = v51;
  v52 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v86 - v53;
  v55 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SystemColorType.CodingKeys and conformance SystemColorType.CodingKeys();
  v146 = v54;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v56 = (v52 + 8);
  switch(v55)
  {
    case 1:
      v149 = 1;
      lazy protocol witness table accessor for type SystemColorType.OrangeCodingKeys and conformance SystemColorType.OrangeCodingKeys();
      v74 = v87;
      v57 = v146;
      v58 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v88 + 8);
      v64 = v74;
      v65 = v121;
      goto LABEL_24;
    case 2:
      v149 = 2;
      lazy protocol witness table accessor for type SystemColorType.YellowCodingKeys and conformance SystemColorType.YellowCodingKeys();
      v70 = v90;
      v57 = v146;
      v58 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v91 + 8);
      v64 = v70;
      v65 = v123;
      goto LABEL_24;
    case 3:
      v149 = 3;
      lazy protocol witness table accessor for type SystemColorType.GreenCodingKeys and conformance SystemColorType.GreenCodingKeys();
      v72 = v93;
      v57 = v146;
      v58 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v94 + 8);
      v64 = v72;
      v65 = v125;
      goto LABEL_24;
    case 4:
      v149 = 4;
      lazy protocol witness table accessor for type SystemColorType.TealCodingKeys and conformance SystemColorType.TealCodingKeys();
      v67 = v96;
      v57 = v146;
      v58 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v97 + 8);
      v64 = v67;
      v65 = v127;
      goto LABEL_24;
    case 5:
      v149 = 5;
      lazy protocol witness table accessor for type SystemColorType.MintCodingKeys and conformance SystemColorType.MintCodingKeys();
      v80 = v99;
      v57 = v146;
      v58 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v100 + 8);
      v64 = v80;
      v65 = &v129;
      goto LABEL_24;
    case 6:
      v149 = 6;
      lazy protocol witness table accessor for type SystemColorType.CyanCodingKeys and conformance SystemColorType.CyanCodingKeys();
      v82 = v102;
      v57 = v146;
      v58 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v103 + 8);
      v64 = v82;
      v65 = &v132;
      goto LABEL_24;
    case 7:
      v149 = 7;
      lazy protocol witness table accessor for type SystemColorType.BlueCodingKeys and conformance SystemColorType.BlueCodingKeys();
      v73 = v105;
      v57 = v146;
      v58 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v106 + 8);
      v64 = v73;
      v65 = &v135;
      goto LABEL_24;
    case 8:
      v149 = 8;
      lazy protocol witness table accessor for type SystemColorType.IndigoCodingKeys and conformance SystemColorType.IndigoCodingKeys();
      v84 = v108;
      v57 = v146;
      v58 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v109 + 8);
      v64 = v84;
      v65 = &v138;
      goto LABEL_24;
    case 9:
      v149 = 9;
      lazy protocol witness table accessor for type SystemColorType.PurpleCodingKeys and conformance SystemColorType.PurpleCodingKeys();
      v69 = v111;
      v57 = v146;
      v58 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v112 + 8);
      v64 = v69;
      v65 = &v141;
      goto LABEL_24;
    case 10:
      v149 = 10;
      lazy protocol witness table accessor for type SystemColorType.PinkCodingKeys and conformance SystemColorType.PinkCodingKeys();
      v83 = v114;
      v57 = v146;
      v58 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v115 + 8);
      v64 = v83;
      v65 = &v144;
      goto LABEL_24;
    case 11:
      v149 = 11;
      lazy protocol witness table accessor for type SystemColorType.BrownCodingKeys and conformance SystemColorType.BrownCodingKeys();
      v66 = v117;
      v57 = v146;
      v58 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v118 + 8);
      v64 = v66;
      v65 = &v147;
      goto LABEL_24;
    case 12:
      v149 = 12;
      lazy protocol witness table accessor for type SystemColorType.GrayCodingKeys and conformance SystemColorType.GrayCodingKeys();
      v68 = v120;
      v57 = v146;
      v58 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v121[0] + 8);
      v64 = v68;
      v65 = &v148;
      goto LABEL_24;
    case 13:
      v149 = 13;
      lazy protocol witness table accessor for type SystemColorType.PrimaryCodingKeys and conformance SystemColorType.PrimaryCodingKeys();
      v81 = v122;
      v57 = v146;
      v58 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v123[0] + 8);
      v64 = v81;
      v65 = &v150;
      goto LABEL_24;
    case 14:
      v149 = 14;
      lazy protocol witness table accessor for type SystemColorType.SecondaryCodingKeys and conformance SystemColorType.SecondaryCodingKeys();
      v62 = v124;
      v57 = v146;
      v58 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v125[0] + 8);
      v64 = v62;
      v65 = &v151;
      goto LABEL_24;
    case 15:
      v149 = 15;
      lazy protocol witness table accessor for type SystemColorType.TertiaryCodingKeys and conformance SystemColorType.TertiaryCodingKeys();
      v71 = v126;
      v57 = v146;
      v58 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v127[0] + 8);
      v64 = v71;
      v65 = &v152;
LABEL_24:
      v63(v64, *(v65 - 32));
      goto LABEL_25;
    case 16:
      v149 = 16;
      lazy protocol witness table accessor for type SystemColorType.QuaternaryCodingKeys and conformance SystemColorType.QuaternaryCodingKeys();
      v59 = v128;
      v57 = v146;
      v58 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v61 = v129;
      v60 = v130;
      goto LABEL_21;
    case 17:
      v149 = 17;
      lazy protocol witness table accessor for type SystemColorType.QuinaryCodingKeys and conformance SystemColorType.QuinaryCodingKeys();
      v59 = v131;
      v57 = v146;
      v58 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v61 = v132;
      v60 = v133;
      goto LABEL_21;
    case 18:
      v149 = 18;
      lazy protocol witness table accessor for type SystemColorType.PrimaryFillCodingKeys and conformance SystemColorType.PrimaryFillCodingKeys();
      v59 = v134;
      v57 = v146;
      v58 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v61 = v135;
      v60 = v136;
LABEL_21:
      (*(v61 + 8))(v59, v60);
      goto LABEL_25;
    case 19:
      v149 = 19;
      lazy protocol witness table accessor for type SystemColorType.SecondaryFillCodingKeys and conformance SystemColorType.SecondaryFillCodingKeys();
      v75 = v137;
      v76 = v146;
      v77 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v79 = v138;
      v78 = v139;
      goto LABEL_28;
    case 20:
      v149 = 20;
      lazy protocol witness table accessor for type SystemColorType.TertiaryFillCodingKeys and conformance SystemColorType.TertiaryFillCodingKeys();
      v75 = v140;
      v76 = v146;
      v77 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v79 = v141;
      v78 = v142;
      goto LABEL_28;
    case 21:
      v149 = 21;
      lazy protocol witness table accessor for type SystemColorType.QuaternaryFillCodingKeys and conformance SystemColorType.QuaternaryFillCodingKeys();
      v75 = v143;
      v76 = v146;
      v77 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v79 = v144;
      v78 = v145;
LABEL_28:
      (*(v79 + 8))(v75, v78);
      result = (*v56)(v76, v77);
      break;
    default:
      v149 = 0;
      lazy protocol witness table accessor for type SystemColorType.RedCodingKeys and conformance SystemColorType.RedCodingKeys();
      v57 = v146;
      v58 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v86 + 8))(v50, v48);
LABEL_25:
      result = (*v56)(v57, v58);
      break;
  }

  return result;
}

Swift::Int SystemColorType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t SystemColorType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v180 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemColorType.QuaternaryFillCodingKeys>, lazy protocol witness table accessor for type SystemColorType.QuaternaryFillCodingKeys and conformance SystemColorType.QuaternaryFillCodingKeys, &unk_1F007A4F0, MEMORY[0x1E69E6F48]);
  v158 = v4;
  v157 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v179 = &v114 - v5;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemColorType.TertiaryFillCodingKeys>, lazy protocol witness table accessor for type SystemColorType.TertiaryFillCodingKeys and conformance SystemColorType.TertiaryFillCodingKeys, &unk_1F007A4D0, v3);
  v156 = v6;
  v155 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v176 = &v114 - v7;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemColorType.SecondaryFillCodingKeys>, lazy protocol witness table accessor for type SystemColorType.SecondaryFillCodingKeys and conformance SystemColorType.SecondaryFillCodingKeys, &unk_1F007A4B0, v3);
  v154 = v8;
  v153 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v175 = &v114 - v9;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemColorType.PrimaryFillCodingKeys>, lazy protocol witness table accessor for type SystemColorType.PrimaryFillCodingKeys and conformance SystemColorType.PrimaryFillCodingKeys, &unk_1F007A490, v3);
  v152 = v10;
  v151 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v174 = &v114 - v11;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemColorType.QuinaryCodingKeys>, lazy protocol witness table accessor for type SystemColorType.QuinaryCodingKeys and conformance SystemColorType.QuinaryCodingKeys, &unk_1F007A470, v3);
  v150 = v12;
  v149 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v173 = &v114 - v13;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemColorType.QuaternaryCodingKeys>, lazy protocol witness table accessor for type SystemColorType.QuaternaryCodingKeys and conformance SystemColorType.QuaternaryCodingKeys, &unk_1F007A450, v3);
  v148 = v14;
  v147 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v172 = &v114 - v15;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemColorType.TertiaryCodingKeys>, lazy protocol witness table accessor for type SystemColorType.TertiaryCodingKeys and conformance SystemColorType.TertiaryCodingKeys, &unk_1F007A430, v3);
  v146 = v16;
  v145 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v171 = &v114 - v17;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemColorType.SecondaryCodingKeys>, lazy protocol witness table accessor for type SystemColorType.SecondaryCodingKeys and conformance SystemColorType.SecondaryCodingKeys, &unk_1F007A410, v3);
  v144 = v18;
  v143 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v170 = &v114 - v19;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemColorType.PrimaryCodingKeys>, lazy protocol witness table accessor for type SystemColorType.PrimaryCodingKeys and conformance SystemColorType.PrimaryCodingKeys, &unk_1F007A3F0, v3);
  v142 = v20;
  v141 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v169 = &v114 - v21;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemColorType.GrayCodingKeys>, lazy protocol witness table accessor for type SystemColorType.GrayCodingKeys and conformance SystemColorType.GrayCodingKeys, &unk_1F007A3D0, v3);
  v140 = v22;
  v139 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v168 = &v114 - v23;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemColorType.BrownCodingKeys>, lazy protocol witness table accessor for type SystemColorType.BrownCodingKeys and conformance SystemColorType.BrownCodingKeys, &unk_1F007A3B0, v3);
  v138 = v24;
  v137 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v167 = &v114 - v25;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemColorType.PinkCodingKeys>, lazy protocol witness table accessor for type SystemColorType.PinkCodingKeys and conformance SystemColorType.PinkCodingKeys, &unk_1F007A390, v3);
  v136 = v26;
  v135 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v166 = &v114 - v27;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemColorType.PurpleCodingKeys>, lazy protocol witness table accessor for type SystemColorType.PurpleCodingKeys and conformance SystemColorType.PurpleCodingKeys, &unk_1F007A370, v3);
  v134 = v28;
  v133 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v165 = &v114 - v29;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemColorType.IndigoCodingKeys>, lazy protocol witness table accessor for type SystemColorType.IndigoCodingKeys and conformance SystemColorType.IndigoCodingKeys, &unk_1F007A350, v3);
  v132 = v30;
  v131 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v164 = &v114 - v31;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemColorType.BlueCodingKeys>, lazy protocol witness table accessor for type SystemColorType.BlueCodingKeys and conformance SystemColorType.BlueCodingKeys, &unk_1F007A330, v3);
  v130 = v32;
  v129 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v163 = &v114 - v33;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemColorType.CyanCodingKeys>, lazy protocol witness table accessor for type SystemColorType.CyanCodingKeys and conformance SystemColorType.CyanCodingKeys, &unk_1F007A310, v3);
  v128 = v34;
  v127 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v178 = &v114 - v35;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemColorType.MintCodingKeys>, lazy protocol witness table accessor for type SystemColorType.MintCodingKeys and conformance SystemColorType.MintCodingKeys, &unk_1F007A2F0, v3);
  v126 = v36;
  v125 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v177 = &v114 - v37;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemColorType.TealCodingKeys>, lazy protocol witness table accessor for type SystemColorType.TealCodingKeys and conformance SystemColorType.TealCodingKeys, &unk_1F007A2D0, v3);
  v124 = v38;
  v123 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v162 = &v114 - v39;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemColorType.GreenCodingKeys>, lazy protocol witness table accessor for type SystemColorType.GreenCodingKeys and conformance SystemColorType.GreenCodingKeys, &unk_1F007A2B0, v3);
  v122 = v40;
  v121 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v161 = &v114 - v41;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemColorType.YellowCodingKeys>, lazy protocol witness table accessor for type SystemColorType.YellowCodingKeys and conformance SystemColorType.YellowCodingKeys, &unk_1F007A290, v3);
  v120 = v42;
  v119 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v160 = &v114 - v43;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemColorType.OrangeCodingKeys>, lazy protocol witness table accessor for type SystemColorType.OrangeCodingKeys and conformance SystemColorType.OrangeCodingKeys, &unk_1F007A270, v3);
  v118 = v44;
  v117 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v159 = &v114 - v45;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemColorType.RedCodingKeys>, lazy protocol witness table accessor for type SystemColorType.RedCodingKeys and conformance SystemColorType.RedCodingKeys, &unk_1F007A250, v3);
  v47 = v46;
  v116 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v114 - v48;
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SystemColorType.CodingKeys>, lazy protocol witness table accessor for type SystemColorType.CodingKeys and conformance SystemColorType.CodingKeys, &unk_1F007A230, v3);
  v51 = v50;
  v52 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v114 - v53;
  v55 = a1[3];
  v182 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v55);
  lazy protocol witness table accessor for type SystemColorType.CodingKeys and conformance SystemColorType.CodingKeys();
  v56 = v181;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v56)
  {
LABEL_8:
    v73 = v182;
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  v115 = v49;
  v114 = v47;
  v57 = v177;
  v58 = v178;
  v181 = 0;
  v60 = v179;
  v59 = v180;
  v61 = v52;
  v62 = v54;
  v63 = KeyedDecodingContainer.allKeys.getter();
  v64 = (2 * *(v63 + 16)) | 1;
  v183 = v63;
  v184 = v63 + 32;
  v185 = 0;
  v186 = v64;
  v65 = specialized Collection<>.popFirst()();
  if (v185 != v186 >> 1)
  {
LABEL_6:
    v69 = v51;
    v70 = type metadata accessor for DecodingError();
    swift_allocError();
    v72 = v71;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v72 = &type metadata for SystemColorType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v70 - 8) + 104))(v72, *MEMORY[0x1E69E6AF8], v70);
    swift_willThrow();
    (*(v61 + 8))(v62, v69);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v66 = v65;
  switch(v65)
  {
    case 0:
      v187 = 0;
      lazy protocol witness table accessor for type SystemColorType.RedCodingKeys and conformance SystemColorType.RedCodingKeys();
      v67 = v115;
      v68 = v181;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v68)
      {
        goto LABEL_51;
      }

      (*(v116 + 8))(v67, v114);
      goto LABEL_53;
    case 1:
      v187 = 1;
      lazy protocol witness table accessor for type SystemColorType.OrangeCodingKeys and conformance SystemColorType.OrangeCodingKeys();
      v95 = v159;
      v96 = v181;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v96)
      {
        goto LABEL_51;
      }

      (*(v117 + 8))(v95, v118);
      goto LABEL_53;
    case 2:
      v187 = 2;
      lazy protocol witness table accessor for type SystemColorType.YellowCodingKeys and conformance SystemColorType.YellowCodingKeys();
      v87 = v160;
      v88 = v181;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v88)
      {
        goto LABEL_51;
      }

      (*(v119 + 8))(v87, v120);
      goto LABEL_53;
    case 3:
      v187 = 3;
      lazy protocol witness table accessor for type SystemColorType.GreenCodingKeys and conformance SystemColorType.GreenCodingKeys();
      v91 = v161;
      v92 = v181;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v92)
      {
        goto LABEL_51;
      }

      (*(v121 + 8))(v91, v122);
      goto LABEL_53;
    case 4:
      v187 = 4;
      lazy protocol witness table accessor for type SystemColorType.TealCodingKeys and conformance SystemColorType.TealCodingKeys();
      v81 = v162;
      v82 = v181;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v82)
      {
        goto LABEL_51;
      }

      (*(v123 + 8))(v81, v124);
      goto LABEL_53;
    case 5:
      v187 = 5;
      lazy protocol witness table accessor for type SystemColorType.MintCodingKeys and conformance SystemColorType.MintCodingKeys();
      v101 = v181;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v101)
      {
        goto LABEL_51;
      }

      (*(v125 + 8))(v57, v126);
      goto LABEL_53;
    case 6:
      v187 = 6;
      lazy protocol witness table accessor for type SystemColorType.CyanCodingKeys and conformance SystemColorType.CyanCodingKeys();
      v105 = v181;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v105)
      {
        goto LABEL_51;
      }

      (*(v127 + 8))(v58, v128);
      goto LABEL_53;
    case 7:
      v187 = 7;
      lazy protocol witness table accessor for type SystemColorType.BlueCodingKeys and conformance SystemColorType.BlueCodingKeys();
      v93 = v163;
      v94 = v181;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v94)
      {
        goto LABEL_51;
      }

      (*(v129 + 8))(v93, v130);
      goto LABEL_53;
    case 8:
      v187 = 8;
      lazy protocol witness table accessor for type SystemColorType.IndigoCodingKeys and conformance SystemColorType.IndigoCodingKeys();
      v110 = v164;
      v111 = v181;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v111)
      {
        goto LABEL_51;
      }

      (*(v131 + 8))(v110, v132);
      goto LABEL_53;
    case 9:
      v187 = 9;
      lazy protocol witness table accessor for type SystemColorType.PurpleCodingKeys and conformance SystemColorType.PurpleCodingKeys();
      v85 = v165;
      v86 = v181;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v86)
      {
        goto LABEL_51;
      }

      (*(v133 + 8))(v85, v134);
      goto LABEL_53;
    case 10:
      v187 = 10;
      lazy protocol witness table accessor for type SystemColorType.PinkCodingKeys and conformance SystemColorType.PinkCodingKeys();
      v108 = v166;
      v109 = v181;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v109)
      {
        goto LABEL_51;
      }

      (*(v135 + 8))(v108, v136);
      goto LABEL_53;
    case 11:
      v187 = 11;
      lazy protocol witness table accessor for type SystemColorType.BrownCodingKeys and conformance SystemColorType.BrownCodingKeys();
      v79 = v167;
      v80 = v181;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v80)
      {
        goto LABEL_51;
      }

      (*(v137 + 8))(v79, v138);
      goto LABEL_53;
    case 12:
      v187 = 12;
      lazy protocol witness table accessor for type SystemColorType.GrayCodingKeys and conformance SystemColorType.GrayCodingKeys();
      v83 = v168;
      v84 = v181;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v84)
      {
        goto LABEL_51;
      }

      (*(v139 + 8))(v83, v140);
      goto LABEL_53;
    case 13:
      v187 = 13;
      lazy protocol witness table accessor for type SystemColorType.PrimaryCodingKeys and conformance SystemColorType.PrimaryCodingKeys();
      v103 = v169;
      v104 = v181;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v104)
      {
        goto LABEL_51;
      }

      (*(v141 + 8))(v103, v142);
      goto LABEL_53;
    case 14:
      v187 = 14;
      lazy protocol witness table accessor for type SystemColorType.SecondaryCodingKeys and conformance SystemColorType.SecondaryCodingKeys();
      v77 = v170;
      v78 = v181;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v78)
      {
        goto LABEL_51;
      }

      (*(v143 + 8))(v77, v144);
      goto LABEL_53;
    case 15:
      v187 = 15;
      lazy protocol witness table accessor for type SystemColorType.TertiaryCodingKeys and conformance SystemColorType.TertiaryCodingKeys();
      v89 = v171;
      v90 = v181;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v90)
      {
        goto LABEL_51;
      }

      (*(v145 + 8))(v89, v146);
      goto LABEL_53;
    case 16:
      v187 = 16;
      lazy protocol witness table accessor for type SystemColorType.QuaternaryCodingKeys and conformance SystemColorType.QuaternaryCodingKeys();
      v75 = v172;
      v76 = v181;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v76)
      {
        goto LABEL_51;
      }

      (*(v147 + 8))(v75, v148);
      goto LABEL_53;
    case 17:
      v187 = 17;
      lazy protocol witness table accessor for type SystemColorType.QuinaryCodingKeys and conformance SystemColorType.QuinaryCodingKeys();
      v97 = v173;
      v98 = v181;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v98)
      {
        goto LABEL_51;
      }

      (*(v149 + 8))(v97, v150);
      goto LABEL_53;
    case 18:
      v187 = 18;
      lazy protocol witness table accessor for type SystemColorType.PrimaryFillCodingKeys and conformance SystemColorType.PrimaryFillCodingKeys();
      v106 = v174;
      v107 = v181;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v107)
      {
        goto LABEL_51;
      }

      (*(v151 + 8))(v106, v152);
      goto LABEL_53;
    case 19:
      v187 = 19;
      lazy protocol witness table accessor for type SystemColorType.SecondaryFillCodingKeys and conformance SystemColorType.SecondaryFillCodingKeys();
      v112 = v175;
      v113 = v181;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v113)
      {
        goto LABEL_51;
      }

      (*(v153 + 8))(v112, v154);
      goto LABEL_53;
    case 20:
      v187 = 20;
      lazy protocol witness table accessor for type SystemColorType.TertiaryFillCodingKeys and conformance SystemColorType.TertiaryFillCodingKeys();
      v99 = v176;
      v100 = v181;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v100)
      {
        goto LABEL_51;
      }

      (*(v155 + 8))(v99, v156);
      goto LABEL_53;
    case 21:
      v187 = 21;
      lazy protocol witness table accessor for type SystemColorType.QuaternaryFillCodingKeys and conformance SystemColorType.QuaternaryFillCodingKeys();
      v102 = v181;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v102)
      {
LABEL_51:
        (*(v61 + 8))(v62, v51);
        goto LABEL_7;
      }

      (*(v157 + 8))(v60, v158);
LABEL_53:
      (*(v61 + 8))(v62, v51);
      swift_unknownObjectRelease();
      v73 = v182;
      *v59 = v66;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_1(v73);
}