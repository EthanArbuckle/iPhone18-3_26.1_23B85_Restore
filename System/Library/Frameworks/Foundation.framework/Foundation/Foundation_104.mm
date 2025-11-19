uint64_t specialized PredicateExpressions.ArithmeticOperator.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579297 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463617274627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796C7069746C756DLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t PredicateExpressions.CollectionIndexSubscript.evaluate(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = a2[5];
  v42 = a2[3];
  v43 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  v41 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v38 - v10;
  v11 = a2[4];
  v12 = a2[2];
  v13 = swift_getAssociatedTypeWitness();
  v45 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = *a1;
  v17 = &v38 - v16;
  v46 = v15;
  v18 = v48;
  result = (*(v11 + 16))(&v46, v12, v11, v14);
  if (!v18)
  {
    v48 = v8;
    v21 = v40;
    v20 = v41;
    v46 = v15;
    v22 = v44;
    (*(v43 + 16))(&v46, v42);
    v23 = v48;
    dispatch thunk of Collection.startIndex.getter();
    v43 = v13;
    swift_getAssociatedConformanceWitness();
    v24 = v23;
    LOBYTE(v23) = dispatch thunk of static Comparable.>= infix(_:_:)();
    v38 = v17;
    v25 = *(v21 + 8);
    v25(v24, v20);
    if (v23 & 1) != 0 && (dispatch thunk of Collection.endIndex.getter(), v26 = dispatch thunk of static Comparable.< infix(_:_:)(), v24 = v48, v27 = v26, v25(v48, v20), (v27))
    {
      v48 = v25;
      v28 = v38;
      v29 = v43;
      v30 = dispatch thunk of Collection.subscript.read();
      v32 = v31;
      v33 = swift_getAssociatedTypeWitness();
      (*(*(v33 - 8) + 16))(v39, v32, v33);
      v30(&v46, 0);
      v48(v22, v20);
      return (*(v45 + 8))(v28, v29);
    }

    else
    {
      v46 = 0;
      v47 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      MEMORY[0x1865CB0E0](0x207865646E49, 0xE600000000000000);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x1865CB0E0](0xD000000000000034, 0x80000001814839D0);
      v34 = v43;
      dispatch thunk of Collection.startIndex.getter();
      _print_unlocked<A, B>(_:_:)();
      v25(v24, v20);
      MEMORY[0x1865CB0E0](0x203C2E2E20, 0xE500000000000000);
      dispatch thunk of Collection.endIndex.getter();
      _print_unlocked<A, B>(_:_:)();
      v25(v24, v20);
      MEMORY[0x1865CB0E0](41, 0xE100000000000000);
      v35 = v46;
      v36 = v47;
      lazy protocol witness table accessor for type PredicateError and conformance PredicateError();
      swift_allocError();
      *v37 = v35;
      *(v37 + 8) = v36;
      *(v37 + 16) = 2;
      swift_willThrow();
      v25(v22, v20);
      return (*(v45 + 8))(v38, v34);
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateError and conformance PredicateError()
{
  result = lazy protocol witness table cache variable for type PredicateError and conformance PredicateError;
  if (!lazy protocol witness table cache variable for type PredicateError and conformance PredicateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateError and conformance PredicateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PredicateError and conformance PredicateError;
  if (!lazy protocol witness table cache variable for type PredicateError and conformance PredicateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateError and conformance PredicateError);
  }

  return result;
}

uint64_t static PredicateExpressions.build_subscript<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  return static PredicateExpressions.build_subscript<A, B>(_:_:)(a1, a2, a3, a4, a5, a6, a7, type metadata accessor for PredicateExpressions.CollectionIndexSubscript, a8);
}

{
  return static PredicateExpressions.build_subscript<A, B>(_:_:)(a1, a2, a3, a4, a5, a6, a7, type metadata accessor for PredicateExpressions.CollectionRangeSubscript, a8);
}

uint64_t PredicateExpressions.CollectionIndexSubscript.description.getter()
{
  _StringGuts.grow(_:)(48);
  MEMORY[0x1865CB0E0](0xD000000000000022, 0x8000000181483A10);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x3A7865646E69202CLL, 0xE900000000000020);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.CollectionIndexSubscript<>.encode(to:)(void *a1)
{
  return PredicateExpressions.CollectionIndexSubscript<>.encode(to:)(a1);
}

{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t PredicateExpressions.CollectionIndexSubscript<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  return PredicateExpressions.CollectionIndexSubscript<>.init(from:)(a1, a2, a3, a4, a5);
}

{
  v36 = a4;
  v38 = a3;
  v34 = a5;
  v33 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v37 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v14;
  v39[0] = v14;
  v39[1] = v15;
  v39[2] = v16;
  v40 = v17;
  v41 = v18;
  v20 = v19(0, v39, v12);
  v32 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v22;
  v31 = a1;
  v29 = v20;
  __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
  v23 = v37;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v24 = v30;
  (*(v35 + 32))(v30, v23, v42);
  __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v25 = v29;
  (*(v33 + 32))(&v24[*(v29 + 60)], v9, a2);
  __swift_destroy_boxed_opaque_existential_1(v39);
  v26 = v32;
  (*(v32 + 16))(v34, v24, v25);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return (*(v26 + 8))(v24, v25);
}

uint64_t PredicateExpressions.CollectionIndexSubscript.init(wrapped:index:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, void *)@<X7>, uint64_t a9@<X8>)
{
  (*(*(a3 - 8) + 32))(a9, a1);
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v17 = a8(0, v19);
  return (*(*(a4 - 8) + 32))(a9 + *(v17 + 60), a2, a4);
}

uint64_t PredicateExpressions.CollectionRangeSubscript.evaluate(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = a2[6];
  v6 = a2[4];
  v41 = a2[2];
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v36 = &v32 - v8;
  v39 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for Range();
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v32 - v10;
  v11 = swift_checkMetadataState();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v16 = *a1;
  v42 = v16;
  v17 = v44;
  result = (*(v6 + 16))(&v42, v41, v6, v13);
  if (!v17)
  {
    v44 = v12;
    v41 = v9;
    v42 = v16;
    (*(a2[5] + 16))(&v42, a2[3]);
    v19 = v36;
    v20 = v15;
    dispatch thunk of Collection.startIndex.getter();
    v21 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v37 = *(v37 + 8);
    (v37)(v19, AssociatedTypeWitness);
    if (v21 & 1) != 0 && (dispatch thunk of Collection.endIndex.getter(), v22 = dispatch thunk of static Comparable.<= infix(_:_:)(), (v37)(v19, AssociatedTypeWitness), (v22))
    {
      v33 = v11;
      dispatch thunk of Collection.startIndex.getter();
      v23 = dispatch thunk of static Comparable.>= infix(_:_:)();
      (v37)(v19, AssociatedTypeWitness);
      if (v23)
      {
        dispatch thunk of Collection.endIndex.getter();
        v24 = dispatch thunk of static Comparable.<= infix(_:_:)();
        (v37)(v19, AssociatedTypeWitness);
        if (v24)
        {
          v25 = v33;
          v26 = v40;
          dispatch thunk of Collection.subscript.getter();
          (*(v38 + 8))(v26, v41);
          return (*(v44 + 8))(v15, v25);
        }
      }

      v42 = 0;
      v43 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      MEMORY[0x1865CB0E0](0x207865646E49, 0xE600000000000000);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x1865CB0E0](0xD000000000000034, 0x80000001814839D0);
      v11 = v33;
      dispatch thunk of Collection.startIndex.getter();
      _print_unlocked<A, B>(_:_:)();
      v31 = v37;
      (v37)(v19, AssociatedTypeWitness);
      MEMORY[0x1865CB0E0](0x202E2E2E20, 0xE500000000000000);
      dispatch thunk of Collection.endIndex.getter();
      _print_unlocked<A, B>(_:_:)();
      v31(v19, AssociatedTypeWitness);
    }

    else
    {
      v42 = 0;
      v43 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      MEMORY[0x1865CB0E0](0x207865646E49, 0xE600000000000000);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x1865CB0E0](0xD000000000000034, 0x80000001814839D0);
      dispatch thunk of Collection.startIndex.getter();
      _print_unlocked<A, B>(_:_:)();
      v27 = v37;
      (v37)(v19, AssociatedTypeWitness);
      MEMORY[0x1865CB0E0](0x202E2E2E20, 0xE500000000000000);
      dispatch thunk of Collection.endIndex.getter();
      _print_unlocked<A, B>(_:_:)();
      v27(v19, AssociatedTypeWitness);
    }

    MEMORY[0x1865CB0E0](41, 0xE100000000000000);
    v28 = v42;
    v29 = v43;
    lazy protocol witness table accessor for type PredicateError and conformance PredicateError();
    swift_allocError();
    *v30 = v28;
    *(v30 + 8) = v29;
    *(v30 + 16) = 2;
    swift_willThrow();
    (*(v38 + 8))(v40, v41);
    return (*(v44 + 8))(v20, v11);
  }

  return result;
}

uint64_t static PredicateExpressions.build_subscript<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, void *)@<X7>, uint64_t a9@<X8>)
{
  (*(*(a3 - 8) + 16))(a9, a1);
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v17 = a8(0, v19);
  return (*(*(a4 - 8) + 16))(a9 + *(v17 + 60), a2, a4);
}

uint64_t PredicateExpressions.CollectionRangeSubscript.description.getter()
{
  _StringGuts.grow(_:)(48);
  MEMORY[0x1865CB0E0](0xD000000000000022, 0x8000000181483A40);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x3A65676E6172202CLL, 0xE900000000000020);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.CollectionContainsCollection.init(base:other:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for PredicateExpressions.CollectionContainsCollection();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 76), a2, a4);
}

uint64_t PredicateExpressions.CollectionContainsCollection.evaluate(_:)(uint64_t *a1, void *a2)
{
  v4 = a2[3];
  v20 = a2[5];
  v21 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v22 = &v18 - v6;
  v7 = a2[4];
  v8 = a2[2];
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  v14 = *a1;
  v24 = v14;
  v15 = v23;
  (*(v7 + 16))(&v24, v8, v7, v11);
  if (!v15)
  {
    v23 = v10;
    v24 = v14;
    v16 = v22;
    (*(v20 + 16))(&v24, v21);
    LOBYTE(v14) = Collection<>.contains<A>(_:)();
    (*(v19 + 8))(v16, AssociatedTypeWitness);
    (*(v23 + 8))(v13, v9);
  }

  return v14 & 1;
}

uint64_t protocol witness for PredicateExpression.evaluate(_:) in conformance PredicateExpressions.CollectionContainsCollection<A, B>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = PredicateExpressions.CollectionContainsCollection.evaluate(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t PredicateExpressions.CollectionContainsCollection.description.getter()
{
  _StringGuts.grow(_:)(49);
  MEMORY[0x1865CB0E0](0xD000000000000023, 0x8000000181483A70);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x3A726568746F202CLL, 0xE900000000000020);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.CollectionContainsCollection<>.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t PredicateExpressions.CollectionContainsCollection<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v35 = a4;
  v37 = a3;
  v33 = a5;
  v32 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v10 - 8);
  *&v12 = MEMORY[0x1EEE9AC00](v11);
  v36 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v14;
  v38[0] = v14;
  v38[1] = v15;
  v38[2] = v16;
  v39 = v17;
  v40 = v12;
  v41 = v18;
  v19 = type metadata accessor for PredicateExpressions.CollectionContainsCollection();
  v31 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v21;
  v30 = a1;
  v28 = v19;
  __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  v22 = v36;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v23 = v29;
  (*(v34 + 32))(v29, v22, v42);
  __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v24 = v28;
  (*(v32 + 32))(&v23[*(v28 + 76)], v9, a2);
  __swift_destroy_boxed_opaque_existential_1(v38);
  v25 = v31;
  (*(v31 + 16))(v33, v23, v24);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return (*(v25 + 8))(v23, v24);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.CollectionContainsCollection<A, B>(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PredicateExpressions.ComparisonOperator.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PredicateExpressions.ComparisonOperator.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PredicateExpressions.ComparisonOperator.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PredicateExpressions.ComparisonOperator.CodingKeys and conformance PredicateExpressions.ComparisonOperator.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PredicateExpressions.ComparisonOperator.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PredicateExpressions.ComparisonOperator.CodingKeys and conformance PredicateExpressions.ComparisonOperator.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int PredicateExpressions.ComparisonOperator.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

uint64_t PredicateExpressions.ComparisonOperator.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation15EmptyCodingKeysOGMd);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation20PredicateExpressionsO18ComparisonOperatorO10CodingKeys33_ABF9C2C4EB35CAE5C3D84C740B7347C5LLOGMd);
  v38 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  v18 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type PredicateExpressions.ComparisonOperator.CodingKeys and conformance PredicateExpressions.ComparisonOperator.CodingKeys();
  v19 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v39 = 0;
  v20 = v37;
  v21 = KeyedDecodingContainer.allKeys.getter();
  v22 = (2 * *(v21 + 16)) | 1;
  v41 = v21;
  v42 = v21 + 32;
  v43 = 0;
  v44 = v22;
  v23 = specialized Collection<>.popFirst()();
  v24 = v17;
  if (v23 != 4 && v43 == v44 >> 1)
  {
    v45 = v23;
    if (v23 <= 1u)
    {
      if (v23)
      {
        v46 = 1;
        lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
        v33 = v39;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v33)
        {
          (*(v36 + 8))(v11, v20);
          goto LABEL_20;
        }
      }

      else
      {
        v46 = 0;
        lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
        v25 = v39;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v25)
        {
          (*(v36 + 8))(v14, v20);
LABEL_20:
          (*(v38 + 8))(v17, v15);
          swift_unknownObjectRelease();
          v31 = v35;
LABEL_23:
          *v31 = v45;
          return __swift_destroy_boxed_opaque_existential_1(v40);
        }
      }

      (*(v38 + 8))(v17, v15);
      goto LABEL_18;
    }

    v30 = v38;
    v31 = v35;
    if (v23 == 2)
    {
      v46 = 2;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v32 = v39;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v32)
      {
        (*(v36 + 8))(v8, v20);
LABEL_22:
        (*(v30 + 8))(v24, v15);
        swift_unknownObjectRelease();
        goto LABEL_23;
      }
    }

    else
    {
      v46 = 3;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v34 = v39;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v34)
      {
        (*(v36 + 8))(v5, v20);
        goto LABEL_22;
      }
    }

    (*(v30 + 8))(v24, v15);
LABEL_18:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v26 = type metadata accessor for DecodingError();
  swift_allocError();
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *v28 = &type metadata for PredicateExpressions.ComparisonOperator;
  KeyedDecodingContainer.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
  swift_willThrow();
  (*(v38 + 8))(v24, v15);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t PredicateExpressions.Comparison.init(lhs:rhs:op:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v11 = *a3;
  v12 = type metadata accessor for PredicateExpressions.Comparison();
  (*(*(a4 - 8) + 32))(&a6[*(v12 + 60)], a1, a4);
  result = (*(*(a5 - 8) + 32))(&a6[*(v12 + 64)], a2, a5);
  *a6 = v11;
  return result;
}

uint64_t PredicateExpressions.Comparison.evaluate(_:)(uint64_t *a1, uint64_t a2)
{
  v6 = *(a2 + 32);
  v7 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  v15 = *a1;
  v16 = *(a2 + 60);
  v26 = v15;
  v17 = *(v6 + 16);
  v25 = v2;
  v18 = v2 + v16;
  v17(&v26, v7, v6, v12);
  if (!v3)
  {
    v20 = v24;
    v19 = v25;
    v26 = v15;
    (*(*(a2 + 40) + 16))(&v26, *(a2 + 24));
    if (*v19 > 1u)
    {
      if (*v19 == 2)
      {
        v22 = dispatch thunk of static Comparable.> infix(_:_:)();
      }

      else
      {
        v22 = dispatch thunk of static Comparable.>= infix(_:_:)();
      }
    }

    else if (*v19)
    {
      v22 = dispatch thunk of static Comparable.<= infix(_:_:)();
    }

    else
    {
      v22 = dispatch thunk of static Comparable.< infix(_:_:)();
    }

    v18 = v22;
    v23 = *(v20 + 8);
    v23(v10, AssociatedTypeWitness);
    v23(v14, AssociatedTypeWitness);
  }

  return v18 & 1;
}

uint64_t protocol witness for PredicateExpression.evaluate(_:) in conformance PredicateExpressions.Comparison<A, B>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PredicateExpressions.Comparison.evaluate(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t PredicateExpressions.Comparison<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v40 = a4;
  v34 = a6;
  v10 = *(a3 - 8);
  v36 = a5;
  v37 = v10;
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[0] = v15;
  v41[1] = v16;
  v41[2] = v17;
  v42 = v18;
  v43 = v19;
  v20 = type metadata accessor for PredicateExpressions.Comparison();
  v33 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v22;
  v32 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  v23 = v39;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v40 = v20;
  (*(v38 + 32))(&v31[*(v20 + 60)], v23, a2);
  __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  v24 = v35;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  (*(v37 + 32))(&v31[*(v40 + 64)], v24, a3);
  __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  lazy protocol witness table accessor for type PredicateExpressions.ComparisonOperator and conformance PredicateExpressions.ComparisonOperator();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v25 = v32;
  v26 = v31;
  *v31 = v44;
  __swift_destroy_boxed_opaque_existential_1(v41);
  v27 = v33;
  v28 = v40;
  (*(v33 + 16))(v34, v26, v40);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return (*(v27 + 8))(v26, v28);
}

uint64_t getEnumTagSinglePayload for PredicateExpressions.Comparison(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0xFC)
  {
    v13 = 252;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 1) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *&a1[v15];
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v12 > 0xFC)
      {
        v24 = &a1[v9 + 1] & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v24);
        }

        else
        {
          return (*(v7 + 48))((v24 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *a1;
        if (v23 >= 4)
        {
          return v23 - 3;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = a1[v15];
  if (!a1[v15])
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (a1[2] << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void storeEnumTagSinglePayload for PredicateExpressions.Comparison(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(a4 + 24);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0xFC)
  {
    v14 = 252;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 1) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_51:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v13 > 0xFC)
  {
    v24 = &a1[v10 + 1] & ~v10;
    if (v8 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else
  {
    *a1 = a2 + 3;
  }
}

uint64_t specialized PredicateExpressions.ComparisonOperator.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E6168547373656CLL && a2 == 0xE800000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6168547373656CLL && a2 == 0xEF6C61757145724FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5472657461657267 && a2 == 0xEB000000006E6168 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000181483AC0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t PredicateExpressions.Conditional.init(test:trueBranch:falseBranch:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  v12 = type metadata accessor for PredicateExpressions.Conditional();
  (*(*(a5 - 8) + 32))(a7 + *(v12 + 68), a2, a5);
  return (*(*(a6 - 8) + 32))(a7 + *(v12 + 72), a3, a6);
}

void *PredicateExpressions.Conditional.evaluate(_:)(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v6 = *a1;
  result = (*(a2[5] + 16))(&v7, &v6, a2[2]);
  if (!v2)
  {
    v6 = v4;
    if (v7 == 1)
    {
      return (*(a2[6] + 16))(&v6, a2[3]);
    }

    else
    {
      return (*(a2[7] + 16))(&v6, a2[4]);
    }
  }

  return result;
}

uint64_t static PredicateExpressions.build_Conditional<A, B, C>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 16))(a7, a1, a4);
  v12 = type metadata accessor for PredicateExpressions.Conditional();
  (*(*(a5 - 8) + 16))(a7 + *(v12 + 68), a2, a5);
  return (*(*(a6 - 8) + 16))(a7 + *(v12 + 72), a3, a6);
}

uint64_t PredicateExpressions.Conditional.description.getter()
{
  _StringGuts.grow(_:)(54);
  MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181483AE0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x724265757274202CLL, 0xEE00203A68636E61);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x4265736C6166202CLL, 0xEF203A68636E6172);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.Conditional<>.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t PredicateExpressions.Conditional<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v49 = a5;
  v38 = a6;
  v37 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45[0] = v17;
  v45[1] = v18;
  v45[2] = v19;
  v39 = v19;
  v46 = v20;
  v47 = v21;
  v48 = v22;
  v23 = type metadata accessor for PredicateExpressions.Conditional();
  v36 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v32 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = v23;
  v34 = v25;
  v35 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
  v26 = v44;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  (*(v42 + 32))(v34, v26, a2);
  __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
  v27 = v41;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v28 = v33;
  (*(v43 + 32))(&v34[*(v33 + 68)], v27, a3);
  __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v29 = v34;
  (*(v37 + 32))(&v34[*(v28 + 72)], v40, v39);
  __swift_destroy_boxed_opaque_existential_1(v45);
  v30 = v36;
  (*(v36 + 16))(v38, v29, v28);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return (*(v30 + 8))(v29, v28);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.Conditional<A, B, C>(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PredicateExpressions.Conditional(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v8 + 80);
  v13 = *(*(a3[3] - 8) + 64);
  v14 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(*(a3[2] - 8) + 64) + v12;
  v17 = a2 - v15;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v18 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v15)
      {
LABEL_31:
        if (v6 == v15)
        {
          v25 = *(v5 + 48);

          return v25();
        }

        else
        {
          v27 = (a1 + v16) & ~v12;
          if (v9 == v15)
          {
            v28 = *(v8 + 48);
            v29 = *(v8 + 84);
            v30 = a3[3];
          }

          else
          {
            v28 = *(v11 + 48);
            v27 = (v27 + v13 + v14) & ~v14;
            v29 = *(v11 + 84);
            v30 = a3[4];
          }

          return v28(v27, v29, v30);
        }
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_30;
  }

LABEL_17:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v15 + (v24 | v22) + 1;
}

char *storeEnumTagSinglePayload for PredicateExpressions.Conditional(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v7 - 8) + 64);
  v16 = *(v12 + 80);
  if (*(v12 + 84) <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + *(*(v8 - 8) + 64);
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = result;
        bzero(result, v18);
        result = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_53:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&result[v18] = 0;
  }

  else if (v21)
  {
    result[v18] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v6 == v17)
  {
    v29 = *(v5 + 56);

    return v29();
  }

  else
  {
    v30 = &result[v13 + v14] & ~v14;
    if (v10 == v17)
    {
      v31 = *(v9 + 56);

      return v31(v30);
    }

    else
    {
      v32 = *(v12 + 56);
      v33 = (v30 + v15 + v16) & ~v16;

      return v32(v33);
    }
  }
}

uint64_t PredicateExpressions.Conjunction.init(lhs:rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for PredicateExpressions.Conjunction();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t PredicateExpressions.Conjunction.evaluate(_:)(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v7 = *a1;
  (*(a2[4] + 16))(&v8 + 1, &v7, a2[2]);
  if (!v2)
  {
    if (BYTE1(v8) == 1)
    {
      v7 = v4;
      (*(a2[5] + 16))(&v8, &v7, a2[3]);
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

uint64_t protocol witness for PredicateExpression.evaluate(_:) in conformance PredicateExpressions.Conjunction<A, B>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = PredicateExpressions.Conjunction.evaluate(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t PredicateExpressions.Conjunction.description.getter()
{
  _StringGuts.grow(_:)(29);
  MEMORY[0x1865CB0E0](0xD000000000000011, 0x8000000181483B00);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x203A736872202CLL, 0xE700000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.Conjunction<>.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t PredicateExpressions.Conjunction<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v33 = a4;
  v35 = a3;
  v31 = a5;
  v30 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v13;
  v36[0] = v13;
  v36[1] = v14;
  v36[2] = v15;
  v37 = v16;
  v17 = type metadata accessor for PredicateExpressions.Conjunction();
  v29 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v19;
  v28 = a1;
  v26 = v17;
  __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  v20 = v34;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v21 = v27;
  (*(v32 + 32))(v27, v20, v38);
  __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v22 = v26;
  (*(v30 + 32))(&v21[*(v26 + 52)], v9, a2);
  __swift_destroy_boxed_opaque_existential_1(v36);
  v23 = v29;
  (*(v29 + 16))(v31, v21, v22);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return (*(v23 + 8))(v21, v22);
}

uint64_t PredicateExpressions.DictionaryKeySubscript.init(wrapped:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for PredicateExpressions.DictionaryKeySubscript();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 68), a2, a4);
}

void *PredicateExpressions.DictionaryKeySubscript.evaluate(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v6 = a2[6];
  v7 = a2[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v16 - v11;
  v13 = *a1;
  v19 = v13;
  result = (*(a2[5] + 16))(&v20, &v19, a2[2], v10);
  if (!v3)
  {
    v17 = v9;
    v15 = v20;
    v19 = v13;
    (*(v6 + 16))(&v19, v7, v6);
    MEMORY[0x1865CAB40](v12, v15, AssociatedTypeWitness, a2[4], a2[7]);

    return (*(v17 + 8))(v12, AssociatedTypeWitness);
  }

  return result;
}

uint64_t static PredicateExpressions.build_subscript<A, B, C>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, a1);
  v8 = type metadata accessor for PredicateExpressions.DictionaryKeySubscript();
  return (*(*(a4 - 8) + 16))(a5 + *(v8 + 68), a2, a4);
}

uint64_t PredicateExpressions.DictionaryKeySubscript.description.getter()
{
  _StringGuts.grow(_:)(44);
  MEMORY[0x1865CB0E0](0xD000000000000020, 0x8000000181483B20);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x203A79656B202CLL, 0xE700000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.DictionaryKeySubscript<>.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t PredicateExpressions.DictionaryKeySubscript<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v36 = a3;
  v33 = a4;
  v32 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v12;
  v37[0] = v12;
  v37[1] = v13;
  v37[2] = v14;
  v38 = v15;
  v39 = v16;
  v40 = v17;
  v18 = type metadata accessor for PredicateExpressions.DictionaryKeySubscript();
  v31 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v4)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v8;
  v30 = a1;
  v27 = v18;
  v28 = v20;
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  v21 = v35;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v22 = v28;
  (*(v34 + 32))(v28, v21, v41);
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  v23 = v29;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v24 = v27;
  (*(v32 + 32))(&v22[*(v27 + 68)], v23, a2);
  __swift_destroy_boxed_opaque_existential_1(v37);
  v25 = v31;
  (*(v31 + 16))(v33, v22, v24);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return (*(v25 + 8))(v22, v24);
}

uint64_t PredicateExpressions.DictionaryKeyDefaultValueSubscript.init(wrapped:key:default:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  v12 = type metadata accessor for PredicateExpressions.DictionaryKeyDefaultValueSubscript();
  (*(*(a5 - 8) + 32))(a7 + *(v12 + 76), a2, a5);
  return (*(*(a6 - 8) + 32))(a7 + *(v12 + 80), a3, a6);
}

void *PredicateExpressions.DictionaryKeyDefaultValueSubscript.evaluate(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v6 = a2[4];
  v32 = a2[7];
  v33 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v30 = v8;
  v31 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = a2[6];
  v37 = a2[3];
  v13 = swift_getAssociatedTypeWitness();
  v34 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v30 - v14;
  v35 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - v17;
  v19 = *a1;
  v41 = *a1;
  v20 = *(a2[5] + 16);
  v21 = a2[2];
  v38 = v3;
  v22 = v40;
  result = v20(&v42, &v41, v21, v16);
  if (!v22)
  {
    v40 = v18;
    v41 = v19;
    v24 = v42;
    (*(v12 + 16))(&v41, v37, v12);
    v25 = v11;
    v26 = v39;
    MEMORY[0x1865CAB40](v39, v24, v13, AssociatedTypeWitness, a2[8]);

    (*(v34 + 8))(v26, v13);
    v27 = v35;
    if ((*(v35 + 48))(v25, 1, AssociatedTypeWitness) == 1)
    {
      (*(v31 + 8))(v25, v30);
      v42 = v19;
      return (*(v32 + 16))(&v42, v33);
    }

    else
    {
      v28 = *(v27 + 32);
      v29 = v40;
      v28(v40, v25, AssociatedTypeWitness);
      return (v28)(v36, v29, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t static PredicateExpressions.build_subscript<A, B, C>(_:_:default:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 16))(a7, a1, a4);
  v12 = type metadata accessor for PredicateExpressions.DictionaryKeyDefaultValueSubscript();
  (*(*(a5 - 8) + 16))(a7 + *(v12 + 76), a2, a5);
  return (*(*(a6 - 8) + 16))(a7 + *(v12 + 80), a3, a6);
}

uint64_t PredicateExpressions.DictionaryKeyDefaultValueSubscript.description.getter()
{
  _StringGuts.grow(_:)(74);
  MEMORY[0x1865CB0E0](0xD00000000000002CLL, 0x8000000181483B50);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x203A79656B202CLL, 0xE700000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0xD000000000000010, 0x8000000181483B80);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.DictionaryKeyDefaultValueSubscript<>.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t PredicateExpressions.DictionaryKeyDefaultValueSubscript<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v50 = a5;
  v38 = a6;
  v37 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45[0] = v17;
  v45[1] = v18;
  v45[2] = v19;
  v39 = v19;
  v46 = v20;
  v47 = v21;
  v48 = v23;
  v49 = v22;
  v24 = type metadata accessor for PredicateExpressions.DictionaryKeyDefaultValueSubscript();
  v36 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v33 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = v24;
  v34 = v26;
  v35 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
  v27 = v44;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  (*(v42 + 32))(v34, v27, a2);
  __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
  v28 = v41;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v29 = v33;
  (*(v43 + 32))(&v34[*(v33 + 76)], v28, a3);
  __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v30 = v34;
  (*(v37 + 32))(&v34[*(v29 + 80)], v40, v39);
  __swift_destroy_boxed_opaque_existential_1(v45);
  v31 = v36;
  (*(v36 + 16))(v38, v30, v29);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return (*(v31 + 8))(v30, v29);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.DictionaryKeySubscript<A, B, C>(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.DictionaryKeyDefaultValueSubscript<A, B, C>(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t PredicateExpressions.Disjunction.init(lhs:rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for PredicateExpressions.Disjunction();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t PredicateExpressions.Disjunction.evaluate(_:)(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v7 = *a1;
  (*(a2[4] + 16))(&v8 + 1, &v7, a2[2]);
  if (!v2)
  {
    if ((v8 & 0x100) != 0)
    {
      v5 = 1;
    }

    else
    {
      v7 = v4;
      (*(a2[5] + 16))(&v8, &v7, a2[3]);
      v5 = v8;
    }
  }

  return v5 & 1;
}

uint64_t protocol witness for PredicateExpression.evaluate(_:) in conformance PredicateExpressions.Disjunction<A, B>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = PredicateExpressions.Disjunction.evaluate(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t PredicateExpressions.Disjunction.description.getter()
{
  _StringGuts.grow(_:)(29);
  MEMORY[0x1865CB0E0](0xD000000000000011, 0x8000000181483BA0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x203A736872202CLL, 0xE700000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.Disjunction<>.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t PredicateExpressions.Disjunction<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v33 = a4;
  v35 = a3;
  v31 = a5;
  v30 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v13;
  v36[0] = v13;
  v36[1] = v14;
  v36[2] = v15;
  v37 = v16;
  v17 = type metadata accessor for PredicateExpressions.Disjunction();
  v29 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v19;
  v28 = a1;
  v26 = v17;
  __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  v20 = v34;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v21 = v27;
  (*(v32 + 32))(v27, v20, v38);
  __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v22 = v26;
  (*(v30 + 32))(&v21[*(v26 + 52)], v9, a2);
  __swift_destroy_boxed_opaque_existential_1(v36);
  v23 = v29;
  (*(v29 + 16))(v31, v21, v22);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return (*(v23 + 8))(v21, v22);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.Disjunction<A, B>(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1);
}

uint64_t PredicateExpressions.IntDivision.init(lhs:rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, void *)@<X7>, uint64_t a9@<X8>)
{
  (*(*(a3 - 8) + 32))(a9, a1);
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v17 = a8(0, v19);
  return (*(*(a4 - 8) + 32))(a9 + *(v17 + 60), a2, a4);
}

uint64_t PredicateExpressions.IntDivision.evaluate(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void (*a3)(char *, char *, uint64_t, void)@<X2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v23 = a4;
  v7 = a2[4];
  v8 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  v16 = *a1;
  v24 = v16;
  result = (*(v7 + 16))(&v24, v8, v7, v13);
  if (!v4)
  {
    v18 = v22;
    v24 = v16;
    (*(a2[5] + 16))(&v24, a2[3]);
    v21(v15, v11, AssociatedTypeWitness, a2[6]);
    v19 = *(v18 + 8);
    v19(v11, AssociatedTypeWitness);
    return (v19)(v15, AssociatedTypeWitness);
  }

  return result;
}

uint64_t static PredicateExpressions.build_Division<A, B>(lhs:rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  return static PredicateExpressions.build_Division<A, B>(lhs:rhs:)(a1, a2, a3, a4, a5, a6, a7, type metadata accessor for PredicateExpressions.IntDivision, a8);
}

{
  return static PredicateExpressions.build_Division<A, B>(lhs:rhs:)(a1, a2, a3, a4, a5, a6, a7, type metadata accessor for PredicateExpressions.FloatDivision, a8);
}

uint64_t static PredicateExpressions.build_Division<A, B>(lhs:rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, void *)@<X7>, uint64_t a9@<X8>)
{
  (*(*(a3 - 8) + 16))(a9, a1);
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v17 = a8(0, v19);
  return (*(*(a4 - 8) + 16))(a9 + *(v17 + 60), a2, a4);
}

uint64_t PredicateExpressions.FloatDivision.description.getter()
{
  _StringGuts.grow(_:)(31);
  MEMORY[0x1865CB0E0](0xD000000000000013, 0x8000000181483BC0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x203A736872202CLL, 0xE700000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.IntDivision.description.getter()
{
  _StringGuts.grow(_:)(29);
  MEMORY[0x1865CB0E0](0xD000000000000011, 0x8000000181483BE0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x203A736872202CLL, 0xE700000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.IntRemainder.description.getter()
{
  _StringGuts.grow(_:)(30);
  MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181483C00);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x203A736872202CLL, 0xE700000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.FloatDivision<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  return PredicateExpressions.FloatDivision<>.init(from:)(a1, a2, a3, a4, a5);
}

{
  v36 = a4;
  v38 = a3;
  v34 = a5;
  v33 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v37 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v14;
  v39[0] = v14;
  v39[1] = v15;
  v39[2] = v16;
  v40 = v17;
  v41 = v18;
  v20 = v19(0, v39, v12);
  v32 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v22;
  v31 = a1;
  v29 = v20;
  __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
  v23 = v37;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v24 = v30;
  (*(v35 + 32))(v30, v23, v42);
  __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v25 = v29;
  (*(v33 + 32))(&v24[*(v29 + 60)], v9, a2);
  __swift_destroy_boxed_opaque_existential_1(v39);
  v26 = v32;
  (*(v32 + 16))(v34, v24, v25);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return (*(v26 + 8))(v24, v25);
}

uint64_t PredicateExpressions.Equal.init(lhs:rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for PredicateExpressions.Equal();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 60), a2, a4);
}

uint64_t PredicateExpressions.ExpressionEvaluate.input.getter@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t *a2@<X8>)
{
  v3 = TupleTypeMetadata;
  v5 = *(TupleTypeMetadata + 16);
  if (v5 == 1)
  {
    v6 = *(*(TupleTypeMetadata + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v9 = 0;
      v10 = *(v3 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v5 != v9)
      {
LABEL_9:
        v15 = v5 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v23 + 16))(v22, v2 + *(v3 + 68), v6, v20);
  if (v5)
  {
    v25 = (*(v3 + 32) & 0xFFFFFFFFFFFFFFFELL);
    v26 = (v6 + 32);
    v27 = v5;
    do
    {
      if (v5 == 1)
      {
        v28 = 0;
      }

      else
      {
        v28 = *v26;
      }

      v30 = *v25++;
      v29 = v30;
      v31 = *a2++;
      result = (*(*(v29 - 8) + 32))(v31, &v22[v28]);
      v26 += 4;
      --v27;
    }

    while (v27);
  }

  return result;
}

uint64_t PredicateExpressions.ExpressionEvaluate.init(expression:input:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = a3;
  v55 = a2;
  v53 = a9;
  if (a3 == 1)
  {
    TupleTypeMetadata = *(a5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v14)
    {
      v19 = 0;
      v20 = a5 & 0xFFFFFFFFFFFFFFFELL;
      if (v14 < 4)
      {
        goto LABEL_9;
      }

      if (&v18[-v20] < 0x20)
      {
        goto LABEL_9;
      }

      v19 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      v21 = (v20 + 16);
      v22 = v18 + 16;
      v23 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v24 = *v21;
        *(v22 - 1) = *(v21 - 1);
        *v22 = v24;
        v21 += 2;
        v22 += 2;
        v23 -= 4;
      }

      while (v23);
      if (v19 != v14)
      {
LABEL_9:
        v25 = v14 - v19;
        v26 = 8 * v19;
        v27 = &v18[8 * v19];
        v28 = (v20 + v26);
        do
        {
          v29 = *v28++;
          *v27 = v29;
          v27 += 8;
          --v25;
        }

        while (v25);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v56 = TupleTypeMetadata;
  v50[0] = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v31 = v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v14;
  v58 = a4;
  v54 = a5;
  v59 = a5;
  v60 = a6;
  v61 = a7;
  v62 = a8;
  v32 = type metadata accessor for PredicateExpressions.ExpressionEvaluate();
  v50[1] = v50;
  v33 = *(v32 - 8);
  v34.n128_f64[0] = MEMORY[0x1EEE9AC00](v32);
  v36 = v50 - v35;
  v37 = *(a4 - 8);
  v38 = *(v37 + 16);
  v51 = a1;
  v52 = a4;
  v38(v50 - v35, a1, a4, v34);
  if (v14)
  {
    v39 = v55;
    v40 = (v54 & 0xFFFFFFFFFFFFFFFELL);
    v41 = (v56 + 32);
    v42 = v14;
    do
    {
      if (v14 == 1)
      {
        v43 = 0;
      }

      else
      {
        v43 = *v41;
      }

      v45 = *v40++;
      v44 = v45;
      v46 = *v39++;
      (*(*(v44 - 8) + 16))(&v31[v43], v46);
      v41 += 4;
      --v42;
    }

    while (v42);
  }

  (*(v37 + 8))(v51, v52);
  (*(v50[0] + 32))(&v36[*(v32 + 68)], v31, v56);
  result = (*(v33 + 32))(v53, v36, v32);
  if (v14)
  {
    v48 = (v54 & 0xFFFFFFFFFFFFFFFELL) - 8;
    v49 = v55 - 1;
    do
    {
      result = (*(*(*(v48 + 8 * v14) - 8) + 8))(v49[v14]);
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t PredicateExpressions.ExpressionEvaluate.evaluate(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v4 = *(a2 + 16);
  v5 = 8 * v4;
  v71 = a1;
  if (v4 == 1)
  {
    TupleTypeMetadata = *(*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v7 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v4)
    {
      v8 = 0;
      v9 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v4 < 4)
      {
        goto LABEL_9;
      }

      if (&v7[-v9] < 0x20)
      {
        goto LABEL_9;
      }

      v8 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      v10 = (v9 + 16);
      v11 = v7 + 16;
      v12 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 1) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v4 != v8)
      {
LABEL_9:
        v14 = v4 - v8;
        v15 = 8 * v8;
        v16 = &v7[8 * v8];
        v17 = (v9 + v15);
        do
        {
          v18 = *v17++;
          *v16 = v18;
          v16 += 8;
          --v14;
        }

        while (v14);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v67 = &v57;
  v69 = TupleTypeMetadata;
  v64 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v75 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v4;
  if (v4 == 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  }

  else
  {
    v74 = &v57;
    MEMORY[0x1EEE9AC00](v19);
    if (v4)
    {
      v22 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
      v23 = *(a2 + 56) & 0xFFFFFFFFFFFFFFFELL;
      v24 = (&v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      v25 = v76;
      do
      {
        v22 += 8;
        v23 += 8;
        *v24++ = swift_getAssociatedTypeWitness();
        --v25;
      }

      while (v25);
    }

    v4 = v76;
    AssociatedTypeWitness = swift_getTupleTypeMetadata();
  }

  v66 = &v57;
  v68 = AssociatedTypeWitness;
  v63 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v74 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = &v57;
  MEMORY[0x1EEE9AC00](v27);
  if (v4)
  {
    v28 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(a2 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v30 = (&v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v31 = v76;
    do
    {
      v28 += 8;
      v29 += 8;
      *v30++ = swift_getAssociatedTypeWitness();
      --v31;
    }

    while (v31);
  }

  v32 = v76;
  v33 = type metadata accessor for Expression();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v57 - v36;
  v38 = v72;
  v39 = *v71;
  v77 = *v71;
  v40 = v73;
  result = (*(*(a2 + 48) + 16))(&v77, *(a2 + 24), v35);
  if (!v40)
  {
    v58 = v37;
    v59 = v34;
    v60 = v33;
    v61 = &v57;
    v42 = MEMORY[0x1EEE9AC00](result);
    v73 = (&v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v43 = (*(v64 + 16))(v75, v38 + *(a2 + 68), v69, v42);
    if (v32)
    {
      v70 = v39;
      v44 = 0;
      v45 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
      v71 = (*(a2 + 56) & 0xFFFFFFFFFFFFFFFELL);
      v72 = v45;
      v46 = 32;
      do
      {
        if (v32 == 1)
        {
          v47 = v74;
        }

        else
        {
          v47 = &v74[*(v68 + v46)];
        }

        v48 = *(v72 + 8 * v44);
        v49 = v71[v44];
        v50 = *(v48 - 8);
        v51 = MEMORY[0x1EEE9AC00](v43);
        v53 = &v57 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v50 + 16))(v53, &v75[v54], v48, v51);
        v77 = v70;
        (*(v49 + 16))(&v77, v48, v49);
        v43 = (*(v50 + 8))(v53, v48);
        v73[v44++] = v47;
        v46 += 16;
        v32 = v76;
      }

      while (v76 != v44);
    }

    v55 = v60;
    v56 = v58;
    Expression.evaluate(_:)(v73, v60, v62);
    (*(v59 + 8))(v56, v55);
    (*(v63 + 8))(v74, v68);
    return (*(v64 + 8))(v75, v69);
  }

  return result;
}

uint64_t static PredicateExpressions.build_evaluate<A, B, C>(_:_:)@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v12 = TupleTypeMetadata;
  v13 = 8 * a3;
  v52 = a7;
  v53 = a8;
  v51 = a6;
  v54 = a5;
  v49 = a9;
  if (a3 == 1)
  {
    v14 = *(a5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v16 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a3)
    {
      v17 = 0;
      v18 = v15 & 0xFFFFFFFFFFFFFFFELL;
      if (a3 < 4)
      {
        goto LABEL_9;
      }

      if (&v16[-v18] < 0x20)
      {
        goto LABEL_9;
      }

      v17 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      v19 = (v18 + 16);
      v20 = v16 + 16;
      v21 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v22 = *v19;
        *(v20 - 1) = *(v19 - 1);
        *v20 = v22;
        v19 += 2;
        v20 += 2;
        v21 -= 4;
      }

      while (v21);
      if (v17 != a3)
      {
LABEL_9:
        v23 = a3 - v17;
        v24 = 8 * v17;
        v25 = &v16[8 * v17];
        v26 = (v18 + v24);
        do
        {
          v27 = *v26++;
          *v25 = v27;
          v25 += 8;
          --v23;
        }

        while (v23);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v14 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v29 = v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[1] = v48;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v34 + 16);
  v50 = a4;
  v36 = v35(v33, v12, a4, v31);
  v48[0] = v48;
  MEMORY[0x1EEE9AC00](v36);
  v37 = (v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v38 = (v54 & 0xFFFFFFFFFFFFFFFELL);
    v39 = (v14 + 32);
    v40 = (v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v41 = a3;
    do
    {
      if (a3 == 1)
      {
        v42 = 0;
      }

      else
      {
        v42 = *v39;
      }

      v44 = *v38++;
      v43 = v44;
      v45 = &v29[v42];
      v46 = *a2++;
      (*(*(v43 - 8) + 16))(&v29[v42], v46);
      *v40++ = v45;
      v39 += 4;
      --v41;
    }

    while (v41);
  }

  return PredicateExpressions.ExpressionEvaluate.init(expression:input:)(v33, v37, a3, v50, v54, v51, v52, v53, v49);
}

uint64_t PredicateExpressions.ExpressionEvaluate.description.getter(uint64_t a1)
{
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(45);
  MEMORY[0x1865CB0E0](0xD00000000000001FLL, 0x8000000181483C20);
  _print_unlocked<A, B>(_:_:)();
  v2 = MEMORY[0x1865CB0E0](0x3A7475706E69202CLL, 0xE900000000000020);
  if (*(a1 + 16) != 1)
  {
    MEMORY[0x1EEE9AC00](v2);
    v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v3)
    {
      v6 = 0;
      v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v3 < 4)
      {
        goto LABEL_8;
      }

      if (&v5[-v7] < 0x20)
      {
        goto LABEL_8;
      }

      v6 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = (v7 + 16);
      v9 = v5 + 16;
      v10 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v11 = *v8;
        *(v9 - 1) = *(v8 - 1);
        *v9 = v11;
        v8 += 2;
        v9 += 2;
        v10 -= 4;
      }

      while (v10);
      if (v3 != v6)
      {
LABEL_8:
        v12 = v3 - v6;
        v13 = 8 * v6;
        v14 = &v5[8 * v6];
        v15 = (v7 + v13);
        do
        {
          v16 = *v15++;
          *v14 = v16;
          v14 += 8;
          --v12;
        }

        while (v12);
      }
    }

    swift_getTupleTypeMetadata();
  }

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return v18[0];
}

uint64_t PredicateExpressions.ExpressionEvaluate<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v8 = *(a2 + 16);
  v52 = a6;
  v53 = a4;
  if (v8 == 1)
  {
    v9 = v6;
    TupleTypeMetadata = *(*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v11 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v8)
    {
      v14 = 0;
      v15 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v8 < 4)
      {
        goto LABEL_9;
      }

      if (&v13[-v15] < 0x20)
      {
        goto LABEL_9;
      }

      v14 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v16 = (v15 + 16);
      v17 = v13 + 16;
      v18 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v19 = *v16;
        *(v17 - 1) = *(v16 - 1);
        *v17 = v19;
        v16 += 2;
        v17 += 2;
        v18 -= 4;
      }

      while (v18);
      if (v8 != v14)
      {
LABEL_9:
        v20 = v8 - v14;
        v21 = 8 * v14;
        v22 = &v13[8 * v14];
        v23 = (v15 + v21);
        do
        {
          v24 = *v23++;
          *v22 = v24;
          v22 += 8;
          --v20;
        }

        while (v20);
      }
    }

    v9 = v6;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v11;
  }

  v51 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](a1);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
  v28 = v56;
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(v54);
  }

  v47 = &v47;
  v48 = TupleTypeMetadata;
  v30 = v51;
  (*(v51 + 16))(v26, v9 + *(a2 + 68), TupleTypeMetadata);
  v31 = v26;
  if (v8)
  {
    v32 = v8;
    v33 = (*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL);
    v34 = v52 & 0xFFFFFFFFFFFFFFFELL;
    v35 = 32;
    v49 = v26;
    v50 = v32;
    v36 = v32;
    while (1)
    {
      v56 = 0;
      v53 = v36;
      v52 = &v47;
      v37 = *v33;
      v38 = *(*v33 - 8);
      v39 = MEMORY[0x1EEE9AC00](v31);
      v41 = &v47 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v38 + 16))(v41, v42 + v43, v37, v39);
      __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
      v44 = v56;
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      v45 = v53;
      if (v44)
      {
        break;
      }

      (*(v38 + 8))(v41, v37);
      v46 = v51;
      v35 += 16;
      v34 += 8;
      ++v33;
      v36 = v45 - 1;
      v31 = v49;
      if (!v36)
      {
        goto LABEL_20;
      }
    }

    (*(v38 + 8))(v41, v37);
    (*(v51 + 8))(v49, v48);
    return __swift_destroy_boxed_opaque_existential_1(v54);
  }

  v46 = v30;
LABEL_20:
  (*(v46 + 8))(v31, v48);
  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t PredicateExpressions.ExpressionEvaluate<>.init(from:)@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v51 = a8;
  v56 = a7;
  if (a2 == 1)
  {
    v15 = a1;
    TupleTypeMetadata = *(a4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v20 = 0;
      v21 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v19[-v21] < 0x20)
      {
        goto LABEL_9;
      }

      v20 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v22 = (v21 + 16);
      v23 = v19 + 16;
      v24 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v25 = *v22;
        *(v23 - 1) = *(v22 - 1);
        *v23 = v25;
        v22 += 2;
        v23 += 2;
        v24 -= 4;
      }

      while (v24);
      if (v20 != a2)
      {
LABEL_9:
        v26 = a2 - v20;
        v27 = 8 * v20;
        v28 = &v19[8 * v20];
        v29 = (v21 + v27);
        do
        {
          v30 = *v29++;
          *v28 = v30;
          v28 += 8;
          --v26;
        }

        while (v26);
      }
    }

    v15 = v17;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v52 = TupleTypeMetadata;
  v61 = &v48;
  v67 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v32 = &v48 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = &v48;
  v53 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v54 = a3;
  v55 = &v48 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63[0] = a2;
  v63[1] = a3;
  v63[2] = a4;
  v64 = a5;
  v65 = a6;
  v66 = a9;
  v35 = type metadata accessor for PredicateExpressions.ExpressionEvaluate();
  v59 = &v48;
  v62 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v48 - v36;
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v38 = v58;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v38)
  {
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  v57 = v35;
  v58 = v32;
  v50 = v37;
  __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
  v40 = v54;
  v39 = v55;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v49 = v15;
  (*(v53 + 32))(v50, v39, v40);
  if (a2)
  {
    v42 = 0;
    v55 = (a10 & 0xFFFFFFFFFFFFFFFELL);
    v56 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v43 = v52 + 16;
    do
    {
      __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      ++v42;
      v43 += 16;
      v44 = v67;
      v45 = v57;
      v46 = v62;
    }

    while (a2 != v42);
  }

  else
  {
    v44 = v67;
    v45 = v57;
    v46 = v62;
  }

  v47 = v50;
  (*(v44 + 32))(&v50[*(v45 + 68)], v58, v52);
  __swift_destroy_boxed_opaque_existential_1(v63);
  (*(v46 + 16))(v51, v47, v45);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return (*(v46 + 8))(v47, v45);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.ExpressionEvaluate<A, Pack{repeat B}, C>(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  WitnessTable = swift_getWitnessTable();
  a1[1] = WitnessTable;
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  MEMORY[0x1EEE9AC00](WitnessTable);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      *&v12[8 * i] = *(*((v5 & 0xFFFFFFFFFFFFFFFELL) + 8 * i) + 16);
    }

    MEMORY[0x1EEE9AC00](v9);
    v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = 0;
    do
    {
      *&v17[8 * v18] = *(*(v15 + 8 * v18) + 24);
      ++v18;
    }

    while (v14 != v18);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    v17 = v21 - v19;
  }

  v21[4] = v7;
  v21[5] = v8;
  v21[6] = v12;
  v21[7] = v17;
  a1[2] = swift_getWitnessTable();
  v21[0] = v7;
  v21[1] = v8;
  v21[2] = v12;
  v21[3] = v17;
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t type metadata completion function for PredicateExpressions.ExpressionEvaluate(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v20[14] = 0;
    v21 = result;
    if (*(a1 + 16) == 1)
    {
      result = swift_checkMetadataState();
      if (v4 > 0x3F)
      {
        return result;
      }

LABEL_14:
      v20[15] = 0;
      v22 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }

    MEMORY[0x1EEE9AC00](result);
    v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
    if (v5)
    {
      v8 = 0;
      v9 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_11;
      }

      if (&v7[-v9] < 0x20)
      {
        goto LABEL_11;
      }

      v8 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v10 = (v9 + 16);
      v11 = v7 + 16;
      v12 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 1) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v5 != v8)
      {
LABEL_11:
        v14 = v5 - v8;
        v15 = 8 * v8;
        v16 = &v7[8 * v8];
        v17 = (v9 + v15);
        do
        {
          v18 = *v17++;
          *v16++ = v18;
          --v14;
        }

        while (v14);
      }
    }

    result = swift_getTupleTypeMetadata();
    if (v19 <= 0x3F)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t PredicateExpressions.Filter.init(_:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (one-time initialization token for nextID != -1)
  {
    v16 = a7;
    v17 = a6;
    v18 = a5;
    v19 = a4;
    swift_once();
    a4 = v19;
    a5 = v18;
    a6 = v17;
    a7 = v16;
  }

  add_explicit = atomic_fetch_add_explicit(&static PredicateExpressions.VariableID.nextID, 1uLL, memory_order_relaxed);
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = a7;
  v13 = *(type metadata accessor for PredicateExpressions.Filter() + 64);
  *(a8 + v13) = add_explicit;
  v14 = *(a3 - 8);
  (*(v14 + 16))(a8, a1, a3);
  v20[0] = *(a8 + v13);
  a2(v20);
  return (*(v14 + 8))(a1, a3);
}

uint64_t PredicateExpressions.Filter.evaluate(_:)(uint64_t *a1, void *a2)
{
  v6 = a2[4];
  v7 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = *a1;
  v15 = v16;
  v8 = *(v6 + 16);

  v9 = v8(&v15, v7, v6);
  if (v3)
  {
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    v10 = a2[3];
    *(&AssociatedTypeWitness - 8) = v7;
    *(&AssociatedTypeWitness - 7) = v10;
    v12 = a2[5];
    v11 = a2[6];
    *(&AssociatedTypeWitness - 6) = v6;
    *(&AssociatedTypeWitness - 5) = v12;
    *(&AssociatedTypeWitness - 4) = v11;
    *(&AssociatedTypeWitness - 3) = &v16;
    *(&AssociatedTypeWitness - 2) = v2;
    v2 = Sequence.filter(_:)();
  }

  return v2;
}

uint64_t closure #1 in PredicateExpressions.Filter.evaluate(_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v25 - v17;
  v28[0] = a4;
  v28[1] = a5;
  v28[2] = a6;
  v28[3] = a7;
  v28[4] = a8;
  v19 = *(a3 + *(type metadata accessor for PredicateExpressions.Filter() + 64));
  v20 = *(AssociatedTypeWitness - 8);
  (*(v20 + 16))(v18, v26, AssociatedTypeWitness);
  (*(v20 + 56))(v18, 0, 1, AssociatedTypeWitness);
  v28[0] = v19;
  PredicateBindings.subscript.setter(v18, v28, AssociatedTypeWitness);
  v28[0] = *a2;
  v21 = *(a7 + 16);

  v22 = v27;
  v21(&v29, v28, a5, a7);

  if (!v22)
  {
    v23 = v29;
  }

  return v23 & 1;
}

uint64_t protocol witness for PredicateExpression.evaluate(_:) in conformance PredicateExpressions.Filter<A, B>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = PredicateExpressions.Filter.evaluate(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t static PredicateExpressions.build_filter<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v22[0] = a8;
  v22[1] = a3;
  v23 = a2;
  v14 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v14 + 16);
  v18(v17, v15);
  if (one-time initialization token for nextID != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static PredicateExpressions.VariableID.nextID, 1uLL, memory_order_relaxed);
  v24[0] = a4;
  v24[1] = a5;
  v24[2] = a6;
  v24[3] = a7;
  v24[4] = v22[0];
  v20 = *(type metadata accessor for PredicateExpressions.Filter() + 64);
  *(a9 + v20) = add_explicit;
  (v18)(a9, v17, a4);
  v24[0] = *(a9 + v20);
  v23(v24);
  return (*(v14 + 8))(v17, a4);
}

uint64_t PredicateExpressions.Filter.description.getter()
{
  _StringGuts.grow(_:)(46);
  MEMORY[0x1865CB0E0](0xD000000000000011, 0x8000000181483C40);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x626169726176202CLL, 0xEC000000203A656CLL);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v0);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  MEMORY[0x1865CB0E0](0x656C626169726156, 0xE900000000000028);

  MEMORY[0x1865CB0E0](0x7265746C6966202CLL, 0xEA0000000000203ALL);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.Filter<>.encode(to:)(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v3)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    v8 = *(v2 + *(a2 + 64));
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    type metadata accessor for PredicateExpressions.Variable();
    swift_getWitnessTable();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t PredicateExpressions.Filter<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v43 = a4;
  v35 = a6;
  v10 = *(a3 - 8);
  v39 = a5;
  v40 = v10;
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[0] = v15;
  v44[1] = v16;
  v36 = v18;
  v37 = v17;
  v44[2] = v17;
  v45 = v19;
  v46 = v18;
  v20 = type metadata accessor for PredicateExpressions.Filter();
  v34 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v31 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = v22;
  v33 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  v23 = v42;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v24 = v32;
  (*(v41 + 32))(v32, v23, a2);
  __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  v25 = v38;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v43 = v20;
  (*(v40 + 32))(&v24[*(v20 + 60)], v25, a3);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for PredicateExpressions.Variable();
  __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  swift_getWitnessTable();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v26 = v33;
  v27 = v43;
  v28 = v32;
  *&v32[*(v43 + 64)] = v47;
  __swift_destroy_boxed_opaque_existential_1(v44);
  v29 = v34;
  (*(v34 + 16))(v35, v28, v27);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return (*(v29 + 8))(v28, v27);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.Filter<A, B>(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PredicateExpressions.Filter(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  if (v10 >= a2)
  {
    goto LABEL_27;
  }

  v12 = ((*(*(v6 - 8) + 64) + (v11 & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = a2 - v10;
  v14 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v12);
      if (v18)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (v18)
      {
        goto LABEL_20;
      }
    }

LABEL_26:
    if (v10)
    {
LABEL_27:
      if (v5 >= v8)
      {
        return (*(v4 + 48))();
      }

      else
      {
        return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
      }
    }

    return 0;
  }

  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = *(a1 + v12);
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_20:
  v19 = v18 - 1;
  if (v14)
  {
    v19 = 0;
    v20 = *a1;
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v19) + 1;
}

unsigned int *storeEnumTagSinglePayload for PredicateExpressions.Filter(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 >= a3)
  {
    v17 = 0;
    v18 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v12;
    if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(result + v13) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v13) = 0;
      }

      else if (v17)
      {
        *(result + v13) = 0;
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
      if (v6 >= v9)
      {
        v24 = *(v5 + 56);

        return v24();
      }

      else
      {
        v22 = *(v8 + 56);
        v23 = (result + v10 + v11) & ~v11;

        return v22(v23);
      }
    }
  }

  if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v20 = ~v12 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(result + v13) = v19;
    }

    else
    {
      *(result + v13) = v19;
    }
  }

  else if (v17)
  {
    *(result + v13) = v19;
  }

  return result;
}

uint64_t PredicateExpressions.NotEqual.init(lhs:rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for PredicateExpressions.NotEqual();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 60), a2, a4);
}

uint64_t PredicateExpressions.Negation.evaluate(_:)(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  (*(*(a2 + 24) + 16))(&var1, &v5, *(a2 + 16));
  if (!v2)
  {
    v3 = var1 ^ 1;
  }

  return v3 & 1;
}

uint64_t protocol witness for PredicateExpression.evaluate(_:) in conformance PredicateExpressions.Negation<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PredicateExpressions.Negation.evaluate(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t PredicateExpressions.Negation.description.getter()
{
  _StringGuts.grow(_:)(21);
  MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181483C60);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.Negation<>.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t PredicateExpressions.Negation<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v19[6] = a3;
  v17 = a4;
  v16 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PredicateExpressions.Negation();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v4)
  {
    v14 = v8;
    v15 = v9;
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    v12 = v18;
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    (*(v16 + 32))(v11, v12, a2);
    __swift_destroy_boxed_opaque_existential_1(v19);
    (*(v15 + 32))(v17, v11, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.Negation<A>(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t PredicateExpressions.OptionalFlatMap.init<>(_:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  return PredicateExpressions.OptionalFlatMap.init<>(_:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  v16 = *(a3 - 8);
  (*(v16 + 16))(a8, a1, a3);
  if (one-time initialization token for nextID != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static PredicateExpressions.VariableID.nextID, 1uLL, memory_order_relaxed);
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = a7;
  v20[5] = a9;
  *(a8 + *(type metadata accessor for PredicateExpressions.OptionalFlatMap() + 72)) = add_explicit;
  v20[0] = add_explicit;
  a2(v20);
  return (*(v16 + 8))(a1, a3);
}

{
  return PredicateExpressions.OptionalFlatMap.init<>(_:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t PredicateExpressions.OptionalFlatMap.evaluate(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v6 = *(a2 + 32);
  v36 = *(a2 + 56);
  v37 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v38 = &AssociatedTypeWitness - v7;
  v40 = *(*(a2 + 24) - 8);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &AssociatedTypeWitness - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v10;
  v11 = type metadata accessor for Optional();
  v44 = *(v11 - 8);
  v45 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v35 = &AssociatedTypeWitness - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &AssociatedTypeWitness - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &AssociatedTypeWitness - v16;
  v48 = *a1;
  v47 = v48;
  v18 = *(a2 + 48);
  v19 = *(v18 + 16);
  v20 = *(a2 + 16);

  v21 = v46;
  v19(&v47, v20, v18);
  if (!v21)
  {
    v22 = v43;
    v23 = v44;
    v24 = v42;
    v25 = v45;
    (*(v44 + 16))(v42, v17, v45);
    v26 = v40;
    v27 = v24;
    v28 = v41;
    if ((*(v40 + 48))(v27, 1, v41) == 1)
    {
      (*(v23 + 8))(v17, v25);
      (*(*(*(a2 + 40) - 8) + 56))(v39, 1, 1);
    }

    else
    {
      v46 = v17;
      (*(v26 + 32))(v22, v42, v28);
      v29 = *(v3 + *(a2 + 72));
      v30 = v35;
      (*(v26 + 16))(v35, v22, v28);
      (*(v26 + 56))(v30, 0, 1, v28);
      v47 = v29;
      PredicateBindings.subscript.setter(v30, &v47, v28);
      v47 = v48;
      v31 = v36;
      v32 = *(v36 + 16);

      v32(&v47, v37, v31);

      type metadata accessor for Optional();
      swift_dynamicCast();
      (*(v26 + 8))(v43, v28);
      (*(v44 + 8))(v46, v45);
    }
  }
}

uint64_t PredicateExpressions.NilCoalesce.init(lhs:rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for PredicateExpressions.NilCoalesce();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t PredicateExpressions.NilCoalesce.evaluate(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v6 = a2[5];
  v7 = a2[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v21 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v13 = *a1;
  v23 = v13;
  result = (*(a2[4] + 16))(&v23, a2[2], v10);
  if (!v3)
  {
    v19 = v9;
    v20 = 0;
    v15 = *(AssociatedTypeWitness - 8);
    v18 = *(v15 + 48);
    if (v18(v12, 1, AssociatedTypeWitness) == 1)
    {
      v23 = v13;
      v16 = v20;
      (*(v6 + 16))(&v23, v7, v6);
      v20 = v16;
      result = v18(v12, 1, AssociatedTypeWitness);
      if (result != 1)
      {
        return (*(v21 + 8))(v12, v19);
      }
    }

    else
    {
      return (*(v15 + 32))(v22, v12, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t PredicateExpressions.ForcedUnwrap.evaluate(_:)@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2[3];
  v28 = type metadata accessor for Optional();
  v8 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  v26 = *a1;
  result = (*(a2[4] + 16))(&v26, a2[2], v12);
  if (!v3)
  {
    v16 = v8;
    v17 = *(v8 + 16);
    v18 = v28;
    v17(v10, v14, v28);
    v19 = *(v7 - 8);
    v20 = (*(v19 + 48))(v10, 1, v7);
    v21 = *(v16 + 8);
    if (v20 == 1)
    {
      v21(v10, v18);
      v26 = 0;
      v27 = 0xE000000000000000;
      _StringGuts.grow(_:)(44);

      v26 = 0xD000000000000029;
      v27 = 0x8000000181483C80;
      v22 = _typeName(_:qualified:)();
      MEMORY[0x1865CB0E0](v22);

      MEMORY[0x1865CB0E0](39, 0xE100000000000000);
      v23 = v26;
      v24 = v27;
      lazy protocol witness table accessor for type PredicateError and conformance PredicateError();
      swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v24;
      *(v25 + 16) = 0;
      swift_willThrow();
      return (v21)(v14, v18);
    }

    else
    {
      v21(v14, v18);
      return (*(v19 + 32))(a3, v10, v7);
    }
  }

  return result;
}

uint64_t PredicateExpressions.OptionalFlatMap.description.getter()
{
  _StringGuts.grow(_:)(57);
  MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181483CB0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x626169726176202CLL, 0xEC000000203A656CLL);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v0);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  MEMORY[0x1865CB0E0](0x656C626169726156, 0xE900000000000028);

  MEMORY[0x1865CB0E0](0x66736E617274202CLL, 0xED0000203A6D726FLL);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.NilCoalesce.description.getter()
{
  _StringGuts.grow(_:)(29);
  MEMORY[0x1865CB0E0](0xD000000000000011, 0x8000000181483CD0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x203A736872202CLL, 0xE700000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.ForcedUnwrap.description.getter()
{
  _StringGuts.grow(_:)(23);
  MEMORY[0x1865CB0E0](0xD000000000000014, 0x8000000181483CF0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.OptionalFlatMap<>.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    type metadata accessor for PredicateExpressions.Variable();
    swift_getWitnessTable();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t PredicateExpressions.OptionalFlatMap<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v42 = a4;
  v36 = a5;
  v40 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[0] = v13;
  v43[1] = v14;
  v37 = v14;
  v43[2] = v15;
  v44 = v16;
  v45 = v17;
  v46 = v18;
  v19 = type metadata accessor for PredicateExpressions.OptionalFlatMap();
  v35 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = v21;
  v34 = a1;
  v32 = a3;
  __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
  v22 = v41;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  (*(v39 + 32))(v33, v22, a2);
  __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
  v23 = v38;
  v24 = v32;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v42 = v19;
  v25 = *(v19 + 68);
  v26 = v33;
  (*(v40 + 32))(&v33[v25], v23, v24);
  type metadata accessor for PredicateExpressions.Variable();
  __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
  swift_getWitnessTable();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v27 = v34;
  v28 = v42;
  *&v26[*(v42 + 72)] = v47;
  __swift_destroy_boxed_opaque_existential_1(v43);
  v29 = v35;
  (*(v35 + 16))(v36, v26, v28);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return (*(v29 + 8))(v26, v28);
}

uint64_t PredicateExpressions.NilCoalesce<>.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t PredicateExpressions.NilCoalesce<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v33 = a4;
  v35 = a3;
  v31 = a5;
  v30 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v13;
  v36[0] = v13;
  v36[1] = v14;
  v36[2] = v15;
  v37 = v16;
  v17 = type metadata accessor for PredicateExpressions.NilCoalesce();
  v29 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v19;
  v28 = a1;
  v26 = v17;
  __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  v20 = v34;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v21 = v27;
  (*(v32 + 32))(v27, v20, v38);
  __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v22 = v26;
  (*(v30 + 32))(&v21[*(v26 + 52)], v9, a2);
  __swift_destroy_boxed_opaque_existential_1(v36);
  v23 = v29;
  (*(v29 + 16))(v31, v21, v22);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return (*(v23 + 8))(v21, v22);
}

uint64_t PredicateExpressions.ForcedUnwrap<>.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t PredicateExpressions.ForcedUnwrap<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v19[6] = a3;
  v17 = a4;
  v16 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PredicateExpressions.ForcedUnwrap();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v4)
  {
    v14 = v8;
    v15 = v9;
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    v12 = v18;
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    (*(v16 + 32))(v11, v12, a2);
    __swift_destroy_boxed_opaque_existential_1(v19);
    (*(v15 + 32))(v17, v11, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.ForcedUnwrap<A, B>(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PredicateExpressions.OptionalFlatMap(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 32);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  if (v10 >= a2)
  {
    goto LABEL_27;
  }

  v12 = ((*(*(v6 - 8) + 64) + (v11 & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = a2 - v10;
  v14 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v12);
      if (v18)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (v18)
      {
        goto LABEL_20;
      }
    }

LABEL_26:
    if (v10)
    {
LABEL_27:
      if (v5 >= v8)
      {
        return (*(v4 + 48))();
      }

      else
      {
        return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
      }
    }

    return 0;
  }

  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = *(a1 + v12);
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_20:
  v19 = v18 - 1;
  if (v14)
  {
    v19 = 0;
    v20 = *a1;
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v19) + 1;
}

unsigned int *storeEnumTagSinglePayload for PredicateExpressions.OptionalFlatMap(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 32);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 >= a3)
  {
    v17 = 0;
    v18 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v12;
    if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(result + v13) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v13) = 0;
      }

      else if (v17)
      {
        *(result + v13) = 0;
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
      if (v6 >= v9)
      {
        v24 = *(v5 + 56);

        return v24();
      }

      else
      {
        v22 = *(v8 + 56);
        v23 = (result + v10 + v11) & ~v11;

        return v22(v23);
      }
    }
  }

  if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v20 = ~v12 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(result + v13) = v19;
    }

    else
    {
      *(result + v13) = v19;
    }
  }

  else if (v17)
  {
    *(result + v13) = v19;
  }

  return result;
}

unint64_t PredicateExpressions.PredicateEvaluate.evaluate(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = 8 * v3;
  v69 = a1;
  if (v3 == 1)
  {
    TupleTypeMetadata = *(*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v6 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v3)
    {
      v7 = 0;
      v8 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v3 < 4)
      {
        goto LABEL_9;
      }

      if (&v6[-v8] < 0x20)
      {
        goto LABEL_9;
      }

      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v9 = (v8 + 16);
      v10 = v6 + 16;
      v11 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v12 = *v9;
        *(v10 - 1) = *(v9 - 1);
        *v10 = v12;
        v9 += 2;
        v10 += 2;
        v11 -= 4;
      }

      while (v11);
      if (v3 != v7)
      {
LABEL_9:
        v13 = v3 - v7;
        v14 = 8 * v7;
        v15 = &v6[8 * v7];
        v16 = (v8 + v14);
        do
        {
          v17 = *v16++;
          *v15 = v17;
          v15 += 8;
          --v13;
        }

        while (v13);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v65 = &v57;
  v67 = TupleTypeMetadata;
  v62 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v73 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v3;
  if (v3 == 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  }

  else
  {
    v72 = &v57;
    MEMORY[0x1EEE9AC00](v18);
    if (v3)
    {
      v21 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
      v22 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v23 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      v24 = v74;
      do
      {
        v21 += 8;
        v22 += 8;
        *v23++ = swift_getAssociatedTypeWitness();
        --v24;
      }

      while (v24);
    }

    v3 = v74;
    AssociatedTypeWitness = swift_getTupleTypeMetadata();
  }

  v64 = &v57;
  v66 = AssociatedTypeWitness;
  v61 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v72 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = &v57;
  MEMORY[0x1EEE9AC00](v26);
  if (v3)
  {
    v27 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v28 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v29 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v30 = v74;
    do
    {
      v27 += 8;
      v28 += 8;
      *v29++ = swift_getAssociatedTypeWitness();
      --v30;
    }

    while (v30);
  }

  v31 = v74;
  v32 = type metadata accessor for Predicate();
  v33 = *(v32 - 8);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v57 - v35;
  v37 = v70;
  v38 = *v69;
  v75 = *v69;
  v39 = v71;
  v40 = (*(*(a2 + 40) + 16))(&v75, *(a2 + 24), v34);
  if (!v39)
  {
    v57 = v36;
    v58 = v33;
    v59 = v32;
    v60 = &v57;
    v41 = MEMORY[0x1EEE9AC00](v40);
    v71 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v42 = (*(v62 + 16))(v73, v37 + *(a2 + 60), v67, v41);
    if (v31)
    {
      v43 = 0;
      v44 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
      v69 = (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL);
      v70 = v44;
      v45 = 32;
      v68 = v38;
      do
      {
        if (v31 == 1)
        {
          v46 = v72;
        }

        else
        {
          v46 = &v72[*(v66 + v45)];
        }

        v47 = *(v70 + 8 * v43);
        v48 = v69[v43];
        v49 = *(v47 - 8);
        v50 = MEMORY[0x1EEE9AC00](v42);
        v52 = &v57 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v49 + 16))(v52, &v73[v53], v47, v50);
        v75 = v68;
        (*(v48 + 16))(&v75, v47, v48);
        v42 = (*(v49 + 8))(v52, v47);
        v71[v43++] = v46;
        v45 += 16;
        v31 = v74;
      }

      while (v74 != v43);
    }

    v54 = v59;
    v55 = v57;
    LOBYTE(v37) = Predicate.evaluate(_:)(v71, v59);
    (*(v58 + 8))(v55, v54);
    (*(v61 + 8))(v72, v66);
    (*(v62 + 8))(v73, v67);
  }

  return v37 & 1;
}

unint64_t protocol witness for PredicateExpression.evaluate(_:) in conformance PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PredicateExpressions.PredicateEvaluate.evaluate(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t PredicateExpressions.PredicateEvaluate.description.getter(uint64_t a1)
{
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(43);
  MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181483D10);
  _print_unlocked<A, B>(_:_:)();
  v2 = MEMORY[0x1865CB0E0](0x3A7475706E69202CLL, 0xE900000000000020);
  if (*(a1 + 16) != 1)
  {
    MEMORY[0x1EEE9AC00](v2);
    v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v3)
    {
      v6 = 0;
      v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v3 < 4)
      {
        goto LABEL_8;
      }

      if (&v5[-v7] < 0x20)
      {
        goto LABEL_8;
      }

      v6 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = (v7 + 16);
      v9 = v5 + 16;
      v10 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v11 = *v8;
        *(v9 - 1) = *(v8 - 1);
        *v9 = v11;
        v8 += 2;
        v9 += 2;
        v10 -= 4;
      }

      while (v10);
      if (v3 != v6)
      {
LABEL_8:
        v12 = v3 - v6;
        v13 = 8 * v6;
        v14 = &v5[8 * v6];
        v15 = (v7 + v13);
        do
        {
          v16 = *v15++;
          *v14 = v16;
          v14 += 8;
          --v12;
        }

        while (v12);
      }
    }

    swift_getTupleTypeMetadata();
  }

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return v18[0];
}

uint64_t PredicateExpressions.PredicateEvaluate<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v8 = *(a2 + 16);
  v52 = a6;
  v53 = a4;
  if (v8 == 1)
  {
    v9 = v6;
    TupleTypeMetadata = *(*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v11 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v8)
    {
      v14 = 0;
      v15 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v8 < 4)
      {
        goto LABEL_9;
      }

      if (&v13[-v15] < 0x20)
      {
        goto LABEL_9;
      }

      v14 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v16 = (v15 + 16);
      v17 = v13 + 16;
      v18 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v19 = *v16;
        *(v17 - 1) = *(v16 - 1);
        *v17 = v19;
        v16 += 2;
        v17 += 2;
        v18 -= 4;
      }

      while (v18);
      if (v8 != v14)
      {
LABEL_9:
        v20 = v8 - v14;
        v21 = 8 * v14;
        v22 = &v13[8 * v14];
        v23 = (v15 + v21);
        do
        {
          v24 = *v23++;
          *v22 = v24;
          v22 += 8;
          --v20;
        }

        while (v20);
      }
    }

    v9 = v6;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v11;
  }

  v51 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](a1);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
  v28 = v56;
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(v54);
  }

  v47 = &v47;
  v48 = TupleTypeMetadata;
  v30 = v51;
  (*(v51 + 16))(v26, v9 + *(a2 + 60), TupleTypeMetadata);
  v31 = v26;
  if (v8)
  {
    v32 = v8;
    v33 = (*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL);
    v34 = v52 & 0xFFFFFFFFFFFFFFFELL;
    v35 = 32;
    v49 = v26;
    v50 = v32;
    v36 = v32;
    while (1)
    {
      v56 = 0;
      v53 = v36;
      v52 = &v47;
      v37 = *v33;
      v38 = *(*v33 - 8);
      v39 = MEMORY[0x1EEE9AC00](v31);
      v41 = &v47 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v38 + 16))(v41, v42 + v43, v37, v39);
      __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
      v44 = v56;
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      v45 = v53;
      if (v44)
      {
        break;
      }

      (*(v38 + 8))(v41, v37);
      v46 = v51;
      v35 += 16;
      v34 += 8;
      ++v33;
      v36 = v45 - 1;
      v31 = v49;
      if (!v36)
      {
        goto LABEL_20;
      }
    }

    (*(v38 + 8))(v41, v37);
    (*(v51 + 8))(v49, v48);
    return __swift_destroy_boxed_opaque_existential_1(v54);
  }

  v46 = v30;
LABEL_20:
  (*(v46 + 8))(v31, v48);
  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t PredicateExpressions.PredicateEvaluate<>.init(from:)@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v50 = a8;
  v55 = a6;
  if (a2 == 1)
  {
    v14 = a1;
    TupleTypeMetadata = *(a4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v19 = 0;
      v20 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v18[-v20] < 0x20)
      {
        goto LABEL_9;
      }

      v19 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v21 = (v20 + 16);
      v22 = v18 + 16;
      v23 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v24 = *v21;
        *(v22 - 1) = *(v21 - 1);
        *v22 = v24;
        v21 += 2;
        v22 += 2;
        v23 -= 4;
      }

      while (v23);
      if (v19 != a2)
      {
LABEL_9:
        v25 = a2 - v19;
        v26 = 8 * v19;
        v27 = &v18[8 * v19];
        v28 = (v20 + v26);
        do
        {
          v29 = *v28++;
          *v27 = v29;
          v27 += 8;
          --v25;
        }

        while (v25);
      }
    }

    v14 = v16;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v51 = TupleTypeMetadata;
  v60 = &v47;
  v65 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v31 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = &v47;
  v52 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v53 = a3;
  v54 = &v47 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62[0] = a2;
  v62[1] = a3;
  v62[2] = a4;
  v63 = a5;
  v64 = a7;
  v34 = type metadata accessor for PredicateExpressions.PredicateEvaluate();
  v58 = &v47;
  v61 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v47 - v35;
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v37 = v57;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v37)
  {
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  v56 = v34;
  v57 = v31;
  v49 = v36;
  __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
  v39 = v53;
  v38 = v54;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v48 = v14;
  (*(v52 + 32))(v49, v38, v39);
  if (a2)
  {
    v41 = 0;
    v54 = (a9 & 0xFFFFFFFFFFFFFFFELL);
    v55 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v42 = v51 + 16;
    do
    {
      __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      ++v41;
      v42 += 16;
      v43 = v65;
      v44 = v56;
      v45 = v61;
    }

    while (a2 != v41);
  }

  else
  {
    v43 = v65;
    v44 = v56;
    v45 = v61;
  }

  v46 = v49;
  (*(v43 + 32))(&v49[*(v44 + 60)], v57, v51);
  __swift_destroy_boxed_opaque_existential_1(v62);
  (*(v45 + 16))(v50, v46, v44);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return (*(v45 + 8))(v46, v44);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a3 + 16);
  v5 = *(*a3 + 24);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    v11 = 0;
    v12 = *(v7 + 8);
    do
    {
      *&v10[8 * v11] = *(*((v12 & 0xFFFFFFFFFFFFFFFELL) + 8 * v11) + 16);
      ++v11;
    }

    while (v8 != v11);
    MEMORY[0x1EEE9AC00](v6);
    v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = 0;
    do
    {
      *&v16[8 * v17] = *(*(v14 + 8 * v17) + 24);
      ++v17;
    }

    while (v13 != v17);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    v16 = v20 - v18;
  }

  v20[4] = v4;
  v20[5] = v5;
  v20[6] = v10;
  v20[7] = v16;
  *(a1 + 16) = swift_getWitnessTable();
  v20[0] = v4;
  v20[1] = v5;
  v20[2] = v10;
  v20[3] = v16;
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t PredicateExpressions.Range.evaluate(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v5 = a2[4];
  v6 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v44 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - v17;
  v19 = *a1;
  v49 = v19;
  v20 = v51;
  result = (*(v5 + 16))(&v49, v6, v5, v16);
  if (!v20)
  {
    v22 = v12;
    v23 = TupleTypeMetadata2;
    v24 = v47;
    v51 = v9;
    v49 = v19;
    (*(a2[5] + 16))(&v49, a2[3]);
    v25 = a2[6];
    v26 = v18;
    v27 = AssociatedTypeWitness;
    v43 = v25;
    if (dispatch thunk of static Comparable.<= infix(_:_:)())
    {
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if (result)
      {
        v28 = v18;
        v29 = *(v48 + 32);
        v29(v22, v28, AssociatedTypeWitness);
        v30 = v23;
        v29(&v22[*(v23 + 48)], v24, v27);
        v31 = v29;
        v42 = v29;
        v32 = v44;
        v33 = v51;
        (*(v44 + 16))(v51, v22, v30);
        v47 = *(v30 + 48);
        v31(v45, v33, v27);
        v34 = *(v48 + 8);
        v34(&v47[v33], v27);
        (*(v32 + 32))(v33, v22, v30);
        v35 = *(v30 + 48);
        v36 = type metadata accessor for Range();
        v42(v45 + *(v36 + 36), &v33[v35], v27);
        return (v34)(v33, v27);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v49 = 0;
      v50 = 0xE000000000000000;
      _StringGuts.grow(_:)(54);
      MEMORY[0x1865CB0E0](0xD000000000000020, 0x8000000181483D30);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x1865CB0E0](0xD000000000000011, 0x8000000181483D60);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x1865CB0E0](41, 0xE100000000000000);
      v37 = v49;
      v38 = v50;
      lazy protocol witness table accessor for type PredicateError and conformance PredicateError();
      swift_allocError();
      *v39 = v37;
      *(v39 + 8) = v38;
      *(v39 + 16) = 2;
      swift_willThrow();
      v40 = *(v48 + 8);
      v40(v24, AssociatedTypeWitness);
      return (v40)(v26, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t PredicateExpressions.Range.description.getter()
{
  _StringGuts.grow(_:)(27);
  MEMORY[0x1865CB0E0](0x6F6C2865676E6152, 0xED0000203A726577);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x3A7265707075202CLL, 0xE900000000000020);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.Range<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  return PredicateExpressions.Range<>.init(from:)(a1, a2, a3, a4, a5);
}

{
  v36 = a4;
  v38 = a3;
  v34 = a5;
  v33 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v37 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v14;
  v39[0] = v14;
  v39[1] = v15;
  v39[2] = v16;
  v40 = v17;
  v41 = v18;
  v20 = v19(0, v39, v12);
  v32 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v22;
  v31 = a1;
  v29 = v20;
  __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
  v23 = v37;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v24 = v30;
  (*(v35 + 32))(v30, v23, v42);
  __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v25 = v29;
  (*(v33 + 32))(&v24[*(v29 + 60)], v9, a2);
  __swift_destroy_boxed_opaque_existential_1(v39);
  v26 = v32;
  (*(v32 + 16))(v34, v24, v25);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return (*(v26 + 8))(v24, v25);
}

uint64_t PredicateExpressions.ClosedRange.evaluate(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v37 = a3;
  v5 = a2[4];
  v6 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v36 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v39 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - v17;
  v19 = *a1;
  v42 = v19;
  v20 = v41;
  result = (*(v5 + 16))(&v42, v6, v5, v16);
  if (!v20)
  {
    v22 = v12;
    v24 = TupleTypeMetadata2;
    v23 = v39;
    v35 = v9;
    v42 = v19;
    (*(a2[5] + 16))(&v42, a2[3]);
    v41 = 0;
    v34 = a2[6];
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v25 = *(v23 + 32);
      v26 = v22;
      v25(v22, v18, AssociatedTypeWitness);
      v27 = v24;
      v25(&v26[*(v24 + 48)], v40, AssociatedTypeWitness);
      v29 = v35;
      v28 = v36;
      (*(v36 + 16))(v35, v26, v27);
      v40 = *(v27 + 48);
      v25(v37, v29, AssociatedTypeWitness);
      v30 = *(v23 + 8);
      v39 = v23 + 8;
      v30(&v40[v29], AssociatedTypeWitness);
      v31 = v30;
      (*(v28 + 32))(v29, v26, v27);
      v32 = *(v27 + 48);
      v33 = type metadata accessor for ClosedRange();
      v25(&v37[*(v33 + 36)], &v29[v32], AssociatedTypeWitness);
      return v31(v29, AssociatedTypeWitness);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t PredicateExpressions.ClosedRange.description.getter()
{
  _StringGuts.grow(_:)(33);
  MEMORY[0x1865CB0E0](0xD000000000000013, 0x8000000181483D80);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x3A7265707075202CLL, 0xE900000000000020);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.Range.init(lower:upper:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, void *)@<X7>, uint64_t a9@<X8>)
{
  (*(*(a3 - 8) + 32))(a9, a1);
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v17 = a8(0, v19);
  return (*(*(a4 - 8) + 32))(a9 + *(v17 + 60), a2, a4);
}

uint64_t PredicateExpressions.RangeExpressionContains.evaluate(_:)(uint64_t *a1, void *a2)
{
  v2 = a2;
  v4 = a2[5];
  v22 = v2[3];
  v23 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24 = &v20 - v6;
  v7 = v2[4];
  v8 = v2[2];
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = *a1;
  v26 = v14;
  v15 = v25;
  (*(v7 + 16))(&v26, v8, v7, v11);
  if (!v15)
  {
    v16 = v9;
    v17 = v21;
    v25 = AssociatedTypeWitness;
    v26 = v14;
    (*(v23 + 16))(&v26, v22);
    v19 = v24;
    LOBYTE(v2) = dispatch thunk of RangeExpression.contains(_:)();
    (*(v17 + 8))(v19, v25);
    (*(v10 + 8))(v13, v16);
  }

  return v2 & 1;
}

uint64_t protocol witness for PredicateExpression.evaluate(_:) in conformance PredicateExpressions.RangeExpressionContains<A, B>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = PredicateExpressions.RangeExpressionContains.evaluate(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t static PredicateExpressions.build_Range<A, B>(lower:upper:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, void *)@<X7>, uint64_t a9@<X8>)
{
  (*(*(a3 - 8) + 16))(a9, a1);
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v17 = a8(0, v19);
  return (*(*(a4 - 8) + 16))(a9 + *(v17 + 60), a2, a4);
}

uint64_t PredicateExpressions.RangeExpressionContains.description.getter()
{
  _StringGuts.grow(_:)(47);
  MEMORY[0x1865CB0E0](0xD00000000000001FLL, 0x8000000181483DA0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x6E656D656C65202CLL, 0xEB00000000203A74);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.RangeExpressionContains<A, B>(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1);
}

uint64_t PredicateExpressions.StringContainsRegex.init(subject:regex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for PredicateExpressions.StringContainsRegex();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 68), a2, a4);
}

uint64_t PredicateExpressions.StringContainsRegex.description.getter()
{
  _StringGuts.grow(_:)(43);
  MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181483DC0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x3A7865676572202CLL, 0xE900000000000020);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.StringContainsRegex.evaluate(_:)(uint64_t *a1, void *a2)
{
  v4 = a2[3];
  v20 = a2[5];
  v22 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v18 - v6;
  v7 = a2[4];
  v8 = a2[2];
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  v14 = *a1;
  v24 = v14;
  v15 = v23;
  (*(v7 + 16))(&v24, v8, v7, v11);
  if (!v15)
  {
    v23 = v10;
    v24 = v14;
    v16 = v21;
    (*(v20 + 16))(&v24, v22);
    LOBYTE(v14) = BidirectionalCollection<>.contains<A>(_:)();
    (*(v19 + 8))(v16, AssociatedTypeWitness);
    (*(v23 + 8))(v13, v9);
  }

  return v14 & 1;
}

uint64_t protocol witness for PredicateExpression.evaluate(_:) in conformance PredicateExpressions.StringContainsRegex<A, B>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = PredicateExpressions.StringContainsRegex.evaluate(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t PredicateExpressions.PredicateRegex.regex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PredicateExpressions.PredicateRegex._Storage(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PredicateExpressions.PredicateRegex._Storage(v1, v5, type metadata accessor for PredicateExpressions.PredicateRegex._Storage);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd);
  return (*(*(v6 - 8) + 32))(a1, v5, v6);
}

uint64_t PredicateExpressions.PredicateRegex.stringRepresentation.getter()
{
  v1 = *(v0 + *(type metadata accessor for PredicateExpressions.PredicateRegex(0) + 20));

  return v1;
}

uint64_t PredicateExpressions.PredicateRegex.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25[1] = a3;
  v27 = a4;
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Regex();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - v9;
  v26 = type metadata accessor for PredicateExpressions.PredicateRegex(0);
  v11 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of RegexComponent.regex.getter();
  Regex<A>.init<A>(_:)();
  v14 = Regex._literalPattern.getter();
  v16 = v15;
  (*(*(a2 - 8) + 8))(a1, a2);
  if (v16)
  {
    (*(v8 + 32))(v13, v10, v7);
    v17 = v26;
    v18 = &v13[*(v26 + 20)];
    *v18 = v14;
    v18[1] = v16;
    v19 = v13;
    v20 = v27;
    outlined init with take of PredicateExpressions.PredicateRegex(v19, v27, type metadata accessor for PredicateExpressions.PredicateRegex);
    v21 = 0;
    v22 = v20;
    v23 = v17;
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    v21 = 1;
    v23 = v26;
    v22 = v27;
  }

  return (*(v11 + 56))(v22, v21, 1, v23);
}

uint64_t PredicateExpressions.PredicateRegex.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd);
  v22 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v19 - v4;
  v6 = type metadata accessor for PredicateExpressions.PredicateRegex._Storage(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PredicateExpressions.PredicateRegex(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v8;
  v21 = v11;
  v12 = v25;
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  v13 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v14 = v21;
  v15 = &v21[*(v9 + 20)];
  *v15 = v13;
  v15[1] = v16;

  Regex<A>.init(_:)();
  v17 = v20;
  (*(v22 + 32))(v20, v5, v12);
  outlined init with take of PredicateExpressions.PredicateRegex(v17, v14, type metadata accessor for PredicateExpressions.PredicateRegex._Storage);
  __swift_destroy_boxed_opaque_existential_1(v24);
  outlined init with copy of PredicateExpressions.PredicateRegex._Storage(v14, v23, type metadata accessor for PredicateExpressions.PredicateRegex);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of PredicateExpressions.PredicateRegex(v14);
}

uint64_t outlined init with take of PredicateExpressions.PredicateRegex(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of PredicateExpressions.PredicateRegex._Storage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PredicateExpressions.PredicateRegex(uint64_t a1)
{
  v2 = type metadata accessor for PredicateExpressions.PredicateRegex(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PredicateExpressions.PredicateRegex.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  type metadata accessor for PredicateExpressions.PredicateRegex(0);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PredicateExpressions.PredicateRegex(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance PredicateExpressions.PredicateRegex@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PredicateExpressions.PredicateRegex._Storage(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PredicateExpressions.PredicateRegex._Storage(v1, v5, type metadata accessor for PredicateExpressions.PredicateRegex._Storage);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd);
  return (*(*(v6 - 8) + 32))(a1, v5, v6);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PredicateExpressions.PredicateRegex(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v37 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Regex();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd);
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO0B5RegexVSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v32 - v15;
  v32 = type metadata accessor for PredicateExpressions.PredicateRegex(0);
  v17 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v33 = &v32 - v22;
  (*(v10 + 16))(v13, a1, a2, v21);
  dispatch thunk of RegexComponent.regex.getter();
  Regex<A>.init<A>(_:)();
  v23 = v7;
  v24 = Regex._literalPattern.getter();
  v26 = v25;
  (*(v10 + 8))(v13, a2);
  if (v26)
  {
    (*(v36 + 32))(v19, v9, v23);
    v27 = v32;
    v28 = &v19[*(v32 + 20)];
    *v28 = v24;
    v28[1] = v26;
    outlined init with take of PredicateExpressions.PredicateRegex(v19, v16, type metadata accessor for PredicateExpressions.PredicateRegex);
    v29 = 0;
  }

  else
  {
    (*(v36 + 8))(v9, v23);
    v29 = 1;
    v27 = v32;
  }

  (*(v17 + 56))(v16, v29, 1, v27);
  if ((*(v17 + 48))(v16, 1, v27) == 1)
  {
    outlined destroy of PredicateExpressions.PredicateRegex?(v16);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v30 = v33;
    outlined init with take of PredicateExpressions.PredicateRegex(v16, v33, type metadata accessor for PredicateExpressions.PredicateRegex);
    return outlined init with take of PredicateExpressions.PredicateRegex(v30, v37, type metadata accessor for PredicateExpressions.PredicateRegex);
  }

  return result;
}

uint64_t outlined destroy of PredicateExpressions.PredicateRegex?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO0B5RegexVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PredicateExpressions.StringContainsRegex<>.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t PredicateExpressions.StringContainsRegex<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v34 = a4;
  v36 = a3;
  v32 = a5;
  v31 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v13;
  v37[0] = v13;
  v37[1] = v14;
  v37[2] = v15;
  v38 = v16;
  v39 = v18;
  v40 = v17;
  v19 = type metadata accessor for PredicateExpressions.StringContainsRegex();
  v30 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v21;
  v29 = a1;
  v27 = v19;
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  v22 = v35;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v23 = v28;
  (*(v33 + 32))(v28, v22, v41);
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v24 = v27;
  (*(v31 + 32))(&v23[*(v27 + 68)], v9, a2);
  __swift_destroy_boxed_opaque_existential_1(v37);
  v25 = v30;
  (*(v30 + 16))(v32, v23, v24);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return (*(v25 + 8))(v23, v24);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.StringContainsRegex<A, B>(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1);
}

uint64_t PredicateExpressions.SequenceContains.init(sequence:element:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for PredicateExpressions.SequenceContains();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 68), a2, a4);
}

uint64_t PredicateExpressions.SequenceContains.evaluate(_:)(uint64_t *a1, void *a2)
{
  v4 = a2[5];
  v26 = a2[3];
  v27 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v24 - v6;
  v8 = a2[4];
  v9 = a2[2];
  v10 = swift_getAssociatedTypeWitness();
  v28 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v14 = *a1;
  v30 = v14;
  v15 = v29;
  (*(v8 + 16))(&v30, v9, v8, v11);
  if (!v15)
  {
    v30 = v14;
    (*(v27 + 16))(&v30, v26);
    v17 = v7;
    v18 = a2[6];
    v19 = dispatch thunk of Sequence._customContainsEquatableElement(_:)();
    v20 = v17;
    if (v19 == 2)
    {
      MEMORY[0x1EEE9AC00](v19);
      *(&v24 - 4) = v10;
      *(&v24 - 3) = v18;
      *(&v24 - 2) = a2[7];
      *(&v24 - 1) = v21;
      v22 = v21;
      LOBYTE(v14) = Sequence.contains(where:)();
      v23 = v25;
    }

    else
    {
      LOBYTE(v14) = v19;
      v23 = v25;
      v22 = v20;
    }

    (*(v28 + 8))(v13, v10);
    (*(v23 + 8))(v22, AssociatedTypeWitness);
  }

  return v14 & 1;
}

uint64_t protocol witness for PredicateExpression.evaluate(_:) in conformance PredicateExpressions.SequenceContains<A, B>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = PredicateExpressions.SequenceContains.evaluate(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t protocol witness for PredicateExpression.evaluate(_:) in conformance PredicateExpressions.SequenceContainsWhere<A, B>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = PredicateExpressions.SequenceContainsWhere.evaluate(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t PredicateExpressions.SequenceContainsWhere.init(_:builder:)@<X0>(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t (*a9)(void, void *))
{
  if (one-time initialization token for nextID != -1)
  {
    v17 = a7;
    v18 = a6;
    v19 = a5;
    v20 = a4;
    swift_once();
    a4 = v20;
    a5 = v19;
    a6 = v18;
    a7 = v17;
  }

  add_explicit = atomic_fetch_add_explicit(&static PredicateExpressions.VariableID.nextID, 1uLL, memory_order_relaxed);
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v21[4] = a7;
  v14 = *(a9(0, v21) + 64);
  *(a8 + v14) = add_explicit;
  v15 = *(a3 - 8);
  (*(v15 + 16))(a8, a1, a3);
  v21[0] = *(a8 + v14);
  a2(v21);
  return (*(v15 + 8))(a1, a3);
}

uint64_t PredicateExpressions.SequenceContainsWhere.evaluate(_:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, double))
{
  v24 = a3;
  v25 = a4;
  v6 = v5;
  v9 = a2[4];
  v10 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v22 - v11;
  v28 = *a1;
  v27 = v28;
  v13 = *(v9 + 16);

  v14 = v13(&v27, v10, v9);
  if (!v5)
  {
    v15 = v23;
    v16 = MEMORY[0x1EEE9AC00](v14);
    v17 = a2[3];
    *(&v22 - 8) = v10;
    *(&v22 - 7) = v17;
    v19 = a2[5];
    v18 = a2[6];
    *(&v22 - 6) = v9;
    *(&v22 - 5) = v19;
    *(&v22 - 4) = v18;
    *(&v22 - 3) = &v28;
    *(&v22 - 2) = v4;
    v20 = AssociatedTypeWitness;
    v6 = v25(v24, v16);
    (*(v15 + 8))(v12, v20);
  }

  return v6 & 1;
}

uint64_t closure #1 in PredicateExpressions.SequenceContainsWhere.evaluate(_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void, uint64_t *, double))
{
  v28 = a1;
  v27 = a3;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for Optional();
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v27 - v18;
  v30[0] = a4;
  v30[1] = a5;
  v30[2] = a6;
  v30[3] = a7;
  v30[4] = a8;
  v20 = a9(0, v30, v17);
  v21 = *(v27 + *(v20 + 64));
  v22 = *(AssociatedTypeWitness - 8);
  (*(v22 + 16))(v19, v28, AssociatedTypeWitness);
  (*(v22 + 56))(v19, 0, 1, AssociatedTypeWitness);
  v30[0] = v21;
  PredicateBindings.subscript.setter(v19, v30, AssociatedTypeWitness);
  v30[0] = *a2;
  v23 = *(a7 + 16);

  v24 = v29;
  v23(&v31, v30, a5, a7);

  if (!v24)
  {
    v25 = v31;
  }

  return v25 & 1;
}

uint64_t protocol witness for PredicateExpression.evaluate(_:) in conformance PredicateExpressions.SequenceAllSatisfy<A, B>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = PredicateExpressions.SequenceAllSatisfy.evaluate(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t PredicateExpressions.SequenceStartsWith.init(base:prefix:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for PredicateExpressions.SequenceStartsWith();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 76), a2, a4);
}

uint64_t PredicateExpressions.SequenceStartsWith.evaluate(_:)(uint64_t *a1, void *a2)
{
  v4 = a2[3];
  v20 = a2[5];
  v21 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v22 = &v18 - v6;
  v7 = a2[4];
  v8 = a2[2];
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  v14 = *a1;
  v24 = v14;
  v15 = v23;
  (*(v7 + 16))(&v24, v8, v7, v11);
  if (!v15)
  {
    v23 = v10;
    v24 = v14;
    v16 = v22;
    (*(v20 + 16))(&v24, v21);
    LOBYTE(v14) = Sequence<>.starts<A>(with:)();
    (*(v19 + 8))(v16, AssociatedTypeWitness);
    (*(v23 + 8))(v13, v9);
  }

  return v14 & 1;
}

uint64_t protocol witness for PredicateExpression.evaluate(_:) in conformance PredicateExpressions.SequenceStartsWith<A, B>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = PredicateExpressions.SequenceStartsWith.evaluate(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t static PredicateExpressions.build_contains<A, B>(_:where:)@<X0>(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t (*a10)(void, void *))
{
  v23 = a7;
  v24 = a8;
  v25 = a3;
  v26 = a2;
  v14 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v14 + 16);
  v18(v17, v15);
  if (one-time initialization token for nextID != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static PredicateExpressions.VariableID.nextID, 1uLL, memory_order_relaxed);
  v27[0] = a4;
  v27[1] = a5;
  v27[2] = a6;
  v27[3] = v23;
  v27[4] = v24;
  v20 = *(a10(0, v27) + 64);
  *(a9 + v20) = add_explicit;
  (v18)(a9, v17, a4);
  v27[0] = *(a9 + v20);
  v26(v27);
  return (*(v14 + 8))(v17, a4);
}

uint64_t static PredicateExpressions.build_starts<A, B>(_:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, a1);
  v8 = type metadata accessor for PredicateExpressions.SequenceStartsWith();
  return (*(*(a4 - 8) + 16))(a5 + *(v8 + 76), a2, a4);
}

uint64_t PredicateExpressions.SequenceContains.description.getter()
{
  _StringGuts.grow(_:)(43);
  MEMORY[0x1865CB0E0](0xD00000000000001BLL, 0x8000000181483E50);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x6E656D656C65202CLL, 0xEB00000000203A74);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.SequenceContainsWhere.description.getter()
{
  _StringGuts.grow(_:)(59);
  MEMORY[0x1865CB0E0](0xD000000000000020, 0x8000000181483E70);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x626169726176202CLL, 0xEC000000203A656CLL);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v0);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  MEMORY[0x1865CB0E0](0x656C626169726156, 0xE900000000000028);

  MEMORY[0x1865CB0E0](0x203A74736574202CLL, 0xE800000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.SequenceAllSatisfy.description.getter()
{
  _StringGuts.grow(_:)(56);
  MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181483EA0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x626169726176202CLL, 0xEC000000203A656CLL);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v0);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  MEMORY[0x1865CB0E0](0x656C626169726156, 0xE900000000000028);

  MEMORY[0x1865CB0E0](0x203A74736574202CLL, 0xE800000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.SequenceContains<>.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t PredicateExpressions.SequenceContains<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v34 = a4;
  v36 = a3;
  v32 = a5;
  v31 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v13;
  v37[0] = v13;
  v37[1] = v14;
  v37[2] = v15;
  v38 = v16;
  v39 = v18;
  v40 = v17;
  v19 = type metadata accessor for PredicateExpressions.SequenceContains();
  v30 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v21;
  v29 = a1;
  v27 = v19;
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  v22 = v35;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v23 = v28;
  (*(v33 + 32))(v28, v22, v41);
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v24 = v27;
  (*(v31 + 32))(&v23[*(v27 + 68)], v9, a2);
  __swift_destroy_boxed_opaque_existential_1(v37);
  v25 = v30;
  (*(v30 + 16))(v32, v23, v24);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return (*(v25 + 8))(v23, v24);
}

uint64_t PredicateExpressions.SequenceContainsWhere<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  return PredicateExpressions.SequenceContainsWhere<>.init(from:)(a1, a2, a3, a4, a5, a6);
}

{
  v45 = a4;
  v37 = a6;
  v10 = *(a3 - 8);
  v41 = a5;
  v42 = v10;
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v44 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[0] = v16;
  v46[1] = v17;
  v38 = v19;
  v39 = v18;
  v46[2] = v18;
  v47 = v20;
  v48 = v19;
  v22 = v21(0, v46, v14);
  v36 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v33 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v24;
  v35 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
  v25 = v44;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  (*(v43 + 32))(v34, v25, a2);
  __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
  v26 = v40;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v45 = v22;
  v27 = *(v22 + 60);
  v28 = v34;
  (*(v42 + 32))(&v34[v27], v26, a3);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for PredicateExpressions.Variable();
  __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
  swift_getWitnessTable();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v29 = v35;
  v30 = v45;
  *&v28[*(v45 + 64)] = v49;
  __swift_destroy_boxed_opaque_existential_1(v46);
  v31 = v36;
  (*(v36 + 16))(v37, v28, v30);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return (*(v31 + 8))(v28, v30);
}

uint64_t PredicateExpressions.SequenceContainsWhere<>.encode(to:)(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v3)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    v8 = *(v2 + *(a2 + 64));
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    type metadata accessor for PredicateExpressions.Variable();
    swift_getWitnessTable();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

{
  return PredicateExpressions.SequenceAllSatisfy<>.encode(to:)(a1, a2);
}

uint64_t PredicateExpressions.SequenceStartsWith<>.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t PredicateExpressions.SequenceStartsWith<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v35 = a4;
  v37 = a3;
  v33 = a5;
  v32 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v10 - 8);
  *&v12 = MEMORY[0x1EEE9AC00](v11);
  v36 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v14;
  v38[0] = v14;
  v38[1] = v15;
  v38[2] = v16;
  v39 = v17;
  v40 = v12;
  v41 = v18;
  v19 = type metadata accessor for PredicateExpressions.SequenceStartsWith();
  v31 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v21;
  v30 = a1;
  v28 = v19;
  __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  v22 = v36;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v23 = v29;
  (*(v34 + 32))(v29, v22, v42);
  __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v24 = v28;
  (*(v32 + 32))(&v23[*(v28 + 76)], v9, a2);
  __swift_destroy_boxed_opaque_existential_1(v38);
  v25 = v31;
  (*(v31 + 16))(v33, v23, v24);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return (*(v25 + 8))(v23, v24);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.SequenceContainsWhere<A, B>(uint64_t a1)
{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1);
}

{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.SequenceAllSatisfy<A, B>(uint64_t a1)
{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1);
}

{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.SequenceStartsWith<A, B>(uint64_t a1)
{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1);
}

{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1);
}

uint64_t PredicateExpressions.StringCaseInsensitiveCompare.init(root:other:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for PredicateExpressions.StringCaseInsensitiveCompare();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 68), a2, a4);
}

id PredicateExpressions.StringCaseInsensitiveCompare.evaluate(_:)(id *a1, void *a2)
{
  v4 = a2[5];
  v24 = a2[3];
  v25 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v26 = &v22 - v6;
  v7 = a2[4];
  v8 = a2[2];
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v14 = *a1;
  v28 = v14;
  v15 = v27;
  (*(v7 + 16))(&v28, v8, v7, v11);
  if (!v15)
  {
    v27 = v10;
    v16 = v23;
    v28 = v14;
    (*(v25 + 16))(&v28, v24);
    StringProtocol._ephemeralString.getter();
    v18 = String._bridgeToObjectiveCImpl()();

    v19 = AssociatedTypeWitness;
    v20 = v26;
    StringProtocol._ephemeralString.getter();
    v21 = String._bridgeToObjectiveCImpl()();

    v14 = [v18 caseInsensitiveCompare_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v16 + 8))(v20, v19);
    (*(v27 + 8))(v13, v9);
  }

  return v14;
}

id protocol witness for PredicateExpression.evaluate(_:) in conformance PredicateExpressions.StringCaseInsensitiveCompare<A, B>@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = PredicateExpressions.StringCaseInsensitiveCompare.evaluate(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t static PredicateExpressions.build_caseInsensitiveCompare<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, a1);
  v8 = type metadata accessor for PredicateExpressions.StringCaseInsensitiveCompare();
  return (*(*(a4 - 8) + 16))(a5 + *(v8 + 68), a2, a4);
}

uint64_t PredicateExpressions.StringCaseInsensitiveCompare.description.getter()
{
  _StringGuts.grow(_:)(49);
  MEMORY[0x1865CB0E0](0xD000000000000023, 0x8000000181483EC0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x3A726568746F202CLL, 0xE900000000000020);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.StringCaseInsensitiveCompare<>.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t PredicateExpressions.StringCaseInsensitiveCompare<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v34 = a4;
  v36 = a3;
  v32 = a5;
  v31 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v13;
  v37[0] = v13;
  v37[1] = v14;
  v37[2] = v15;
  v38 = v16;
  v39 = v18;
  v40 = v17;
  v19 = type metadata accessor for PredicateExpressions.StringCaseInsensitiveCompare();
  v30 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v21;
  v29 = a1;
  v27 = v19;
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  v22 = v35;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v23 = v28;
  (*(v33 + 32))(v28, v22, v41);
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v24 = v27;
  (*(v31 + 32))(&v23[*(v27 + 68)], v9, a2);
  __swift_destroy_boxed_opaque_existential_1(v37);
  v25 = v30;
  (*(v30 + 16))(v32, v23, v24);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return (*(v25 + 8))(v23, v24);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.StringCaseInsensitiveCompare<A, B>(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1);
}

uint64_t PredicateExpressions.ConditionalCast.evaluate(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2[4];
  v8 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = *a1;
  result = (*(v7 + 16))(&v14, v8, v7, v10);
  if (!v3)
  {
    v12 = a2[3];
    v13 = swift_dynamicCast();
    return (*(*(v12 - 8) + 56))(a3, v13 ^ 1u, 1, v12);
  }

  return result;
}

uint64_t PredicateExpressions.ForceCast.evaluate(_:)@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v39 = a2[3];
  v6 = type metadata accessor for Optional();
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v9 = a2[4];
  v10 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v16 = *a1;
  v18 = &v31 - v17;
  v37 = v16;
  result = (*(v9 + 16))(&v37, v10, v9, v15);
  if (!v3)
  {
    v20 = v35;
    v21 = AssociatedTypeWitness;
    v32 = v6;
    v33 = 0;
    (*(v11 + 16))(v13, v18, AssociatedTypeWitness);
    v22 = v39;
    v23 = swift_dynamicCast();
    v24 = *(*(v22 - 8) + 56);
    if (v23)
    {
      v25 = *(v22 - 8);
      v24(v8, 0, 1, v22);
      (*(v25 + 32))(v34, v8, v22);
    }

    else
    {
      v24(v8, 1, 1, v22);
      (*(v20 + 8))(v8, v32);
      v37 = 0;
      v38 = 0xE000000000000000;
      _StringGuts.grow(_:)(41);

      v37 = 0xD00000000000001ELL;
      v38 = 0x8000000181483EF0;
      swift_getDynamicType();
      v26 = _typeName(_:qualified:)();
      MEMORY[0x1865CB0E0](v26);

      MEMORY[0x1865CB0E0](0x27206F742027, 0xE600000000000000);
      v27 = _typeName(_:qualified:)();
      MEMORY[0x1865CB0E0](v27);

      MEMORY[0x1865CB0E0](39, 0xE100000000000000);
      v28 = v37;
      v29 = v38;
      lazy protocol witness table accessor for type PredicateError and conformance PredicateError();
      swift_allocError();
      *v30 = v28;
      *(v30 + 8) = v29;
      *(v30 + 16) = 1;
      swift_willThrow();
    }

    return (*(v11 + 8))(v18, v21);
  }

  return result;
}

uint64_t PredicateExpressions.TypeCheck.evaluate(_:)(uint64_t *a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v17 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 32);
  v10 = *(v8 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = *a1;
  (*(v9 + 16))(&v18, v10, v9, v12);
  if (!v3)
  {
    v13 = v17;
    v14 = swift_dynamicCast();
    v2 = v14;
    if (v14)
    {
      (*(v13 + 8))(v7, v5);
    }
  }

  return v2 & 1;
}

uint64_t protocol witness for PredicateExpression.evaluate(_:) in conformance PredicateExpressions.TypeCheck<A, B>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PredicateExpressions.TypeCheck.evaluate(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t PredicateExpressions.ConditionalCast.description.getter()
{
  _StringGuts.grow(_:)(43);
  MEMORY[0x1865CB0E0](0xD000000000000017, 0x8000000181483F10);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x657269736564202CLL, 0xEF203A6570795464);
  v0 = _typeName(_:qualified:)();
  MEMORY[0x1865CB0E0](v0);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.ForceCast.description.getter()
{
  _StringGuts.grow(_:)(37);
  MEMORY[0x1865CB0E0](0xD000000000000011, 0x8000000181483F30);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x657269736564202CLL, 0xEF203A6570795464);
  v0 = _typeName(_:qualified:)();
  MEMORY[0x1865CB0E0](v0);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.TypeCheck.description.getter()
{
  _StringGuts.grow(_:)(37);
  MEMORY[0x1865CB0E0](0xD000000000000011, 0x8000000181483F50);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x657269736564202CLL, 0xEF203A6570795464);
  v0 = _typeName(_:qualified:)();
  MEMORY[0x1865CB0E0](v0);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.ConditionalCast<>.encode(to:)(void *a1)
{
  return PredicateExpressions.ConditionalCast<>.encode(to:)(a1);
}

{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t PredicateExpressions.ConditionalCast<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  return PredicateExpressions.ConditionalCast<>.init(from:)(a1, a2, a3, a4);
}

{
  v21[6] = a3;
  v19 = a4;
  v18 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v9(0, v7);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v4)
  {
    v16 = v10;
    v17 = v11;
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    v14 = v20;
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    (*(v18 + 32))(v13, v14, a2);
    __swift_destroy_boxed_opaque_existential_1(v21);
    (*(v17 + 32))(v19, v13, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.TypeCheck<A, B>(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t PredicateExpressions.UnaryMinus.evaluate(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13[1] = a3;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v13 - v10;
  v14 = *a1;
  result = (*(v5 + 16))(&v14, v6, v5, v9);
  if (!v3)
  {
    dispatch thunk of static SignedNumeric.- prefix(_:)();
    return (*(v8 + 8))(v11, AssociatedTypeWitness);
  }

  return result;
}

uint64_t PredicateExpressions.UnaryMinus.description.getter()
{
  _StringGuts.grow(_:)(23);
  MEMORY[0x1865CB0E0](0xD000000000000014, 0x8000000181483F70);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t PredicateExpressions.UnaryMinus<>.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t PredicateExpressions.UnaryMinus<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v19[6] = a3;
  v17 = a4;
  v16 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PredicateExpressions.UnaryMinus();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v4)
  {
    v14 = v8;
    v15 = v9;
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    v12 = v18;
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    (*(v16 + 32))(v11, v12, a2);
    __swift_destroy_boxed_opaque_existential_1(v19);
    (*(v15 + 32))(v17, v11, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.UnaryMinus<A>(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t Expression.evaluate(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = a1;
  v7 = *(a2 + 16);
  v8 = 8 * v7;
  v49 = v7;
  v45 = a3;
  if (v7 == 1)
  {
    TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v7)
    {
      v10 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v11 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v12 = v49;
      do
      {
        v10 += 8;
        *v11++ = type metadata accessor for PredicateExpressions.Variable();
        --v12;
      }

      while (v12);
    }

    v7 = v49;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v4 = v3;
  }

  v43 = TupleTypeMetadata;
  v13 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v48 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7 == 1)
  {
    type metadata accessor for PredicateExpressions.Variable();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v17 = TupleTypeMetadata2;
  }

  else
  {
    v46 = &v38;
    v47 = v4;
    MEMORY[0x1EEE9AC00](v14);
    if (v7)
    {
      v18 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v19 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v20 = v49;
      do
      {
        v18 += 8;
        type metadata accessor for PredicateExpressions.Variable();
        *v19++ = swift_getTupleTypeMetadata2();
        --v20;
      }

      while (v20);
    }

    v7 = v49;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata();
    v17 = TupleTypeMetadata2;
    v4 = v47;
  }

  v44 = &v38;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Hashable & Sendable(v4, v50);
  v40 = v52;
  v41 = v51;
  v39 = __swift_project_boxed_opaque_existential_1(v50, v51);
  v42 = &v38;
  v23 = MEMORY[0x1EEE9AC00](v39);
  v47 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = v43;
  (*(v13 + 16))(v48, v4 + *(a2 + 44), v43, v23);
  v46 = *(a2 + 24);
  if (v7)
  {
    v25 = v47;
    v26 = (v46 & 0xFFFFFFFFFFFFFFFELL);
    v27 = (v24 + 32);
    v28 = (v17 + 32);
    v29 = v7;
    do
    {
      if (v7 == 1)
      {
        v33 = 0;
      }

      else
      {
        v33 = *v28;
      }

      v34 = *v26;
      type metadata accessor for PredicateExpressions.Variable();
      v35 = swift_getTupleTypeMetadata2();
      v36 = 0;
      if (v49 != 1)
      {
        v36 = *v27;
      }

      v30 = &v22[v33];
      v31 = *(v35 + 48);
      *v30 = *&v48[v36];
      v32 = *v6++;
      (*(*(v34 - 8) + 16))(&v30[v31], v32, v34);
      *v25++ = v30;
      v27 += 4;
      v28 += 4;
      ++v26;
      --v29;
      v7 = v49;
    }

    while (v29);
  }

  PredicateBindings.init<each A>(_:)(v47, v7, v46, &v53);
  (*(*(v40 + 8) + 16))(&v53, v41);

  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t Expression.variable.getter@<X0>(uint64_t a1@<X0>, void **a2@<X8>)
{
  v5 = *(a1 + 16);
  if (v5 == 1)
  {
    TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable();
    v7 = TupleTypeMetadata;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v5)
    {
      v9 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v10 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v11 = v5;
      do
      {
        v9 += 8;
        *v10++ = type metadata accessor for PredicateExpressions.Variable();
        --v11;
      }

      while (v11);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v15 + 16))(v14, v2 + *(a1 + 44), v7, v12);
  if (v5)
  {
    v17 = (v7 + 32);
    v18 = v5;
    do
    {
      if (v5 == 1)
      {
        v19 = 0;
      }

      else
      {
        v19 = *v17;
      }

      v20 = *a2++;
      *v20 = *&v14[v19];
      v17 += 4;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t Expression.init(_:)@<X0>(void (*a1)(__int128 *__return_ptr, char **)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a5;
  v8 = 8 * a3;
  v38[3] = a2;
  v39 = a1;
  if (a3 == 1)
  {
    TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable();
    v10 = TupleTypeMetadata;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (a3)
    {
      v12 = a4 & 0xFFFFFFFFFFFFFFFELL;
      v13 = (v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v14 = a3;
      do
      {
        v12 += 8;
        *v13++ = type metadata accessor for PredicateExpressions.Variable();
        --v14;
      }

      while (v14);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v10 = TupleTypeMetadata;
    v7 = a5;
  }

  v15 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[2] = v38;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v38 - v19;
  v38[1] = v38;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v38 - v22;
  if (a3)
  {
    if (one-time initialization token for nextID != -1)
    {
      swift_once();
    }

    v24 = (v10 + 32);
    v25 = a3;
    do
    {
      if (a3 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      *&v23[v26] = atomic_fetch_add_explicit(&static PredicateExpressions.VariableID.nextID, 1uLL, memory_order_relaxed);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  v27 = *(type metadata accessor for Expression() + 44);
  v28 = (*(v15 + 32))(v7 + v27, v23, v10);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v30 = (v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v17, v7 + v27, v10, v29);
  v31 = v39;
  if (a3)
  {
    v32 = (v10 + 32);
    v33 = v30;
    v34 = a3;
    do
    {
      if (a3 == 1)
      {
        v35 = 0;
        v36 = v20;
      }

      else
      {
        v35 = *v32;
        v36 = &v20[v35];
      }

      *&v20[v35] = *&v17[v35];
      *v33++ = v36;
      v32 += 4;
      --v34;
    }

    while (v34);
  }

  v31(v40, v30);
  return outlined init with take of Equatable(v40, v7);
}

uint64_t _expressionCompatibleValue(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PredicateExpressions.PredicateRegex(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v63 - v9;
  outlined init with copy of Any(a1, v87);
  outlined init with copy of Any(v87, v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  swift_dynamicCast();
  if (!v86)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  outlined destroy of TermOfAddress?(&v85, &_sypSgMd);
  v11 = MEMORY[0x1E69E6158];
  if (swift_dynamicCast())
  {

LABEL_27:
    __swift_destroy_boxed_opaque_existential_1(v87);
    return outlined init with copy of Any(a1, a2);
  }

  if (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast())
  {
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    outlined consume of Data._Representation(v85, *(&v85 + 1));
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v13 = MEMORY[0x1E69E6530];
  if (swift_dynamicCast())
  {
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_27;
  }

  type metadata accessor for NSDecimal(0);
  if ((swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || swift_dynamicCast())
  {
    goto LABEL_27;
  }

  type metadata accessor for NSComparisonResult(0);
  if (swift_dynamicCast())
  {
    v14 = v85;
    *(a2 + 24) = v13;
    *a2 = v14;
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  if (swift_dynamicCast())
  {
    outlined init with take of PredicateExpressions.PredicateRegex(v10, v7);
    v15 = &v7[*(v5 + 20)];
    v17 = *v15;
    v16 = *(v15 + 1);
    *(a2 + 24) = v11;
    *a2 = v17;
    *(a2 + 8) = v16;

    outlined destroy of PredicateExpressions.PredicateRegex(v7);
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  if (swift_dynamicCast())
  {
    v18 = v85;
    *(a2 + 24) = v11;
    *a2 = v18;
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sST_pMd);
  if (!swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14AnyClosedRange33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd);
    if (!swift_dynamicCast())
    {
      lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
      swift_allocError();
      *v57 = 1;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v87);
    }

    outlined init with take of Equatable(&v85, v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypSgGMd);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_181215ED0;
    v39 = v83;
    v40 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    (v40[1])(&v80, v78, v39, v40);
    __swift_destroy_boxed_opaque_existential_1(v78);
    v41 = *(&v81 + 1);
    v42 = __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
    v77 = v41;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v76);
    (*(*(v41 - 8) + 16))(boxed_opaque_existential_0, v42, v41);
    _expressionCompatibleValue(for:)(v76);
    if (v2)
    {
      __swift_destroy_boxed_opaque_existential_1(v76);
      __swift_destroy_boxed_opaque_existential_1(&v80);
      *(v22 + 16) = 0;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v76);
      __swift_destroy_boxed_opaque_existential_1(&v80);
      v58 = v83;
      v59 = v84;
      __swift_project_boxed_opaque_existential_1(v82, v83);
      (v59[1])(&v80, v78, v58, v59);
      __swift_destroy_boxed_opaque_existential_1(&v80);
      v60 = v79;
      v61 = __swift_project_boxed_opaque_existential_1(v78, v79);
      v77 = v60;
      v62 = __swift_allocate_boxed_opaque_existential_0(v76);
      (*(*(v60 - 8) + 16))(v62, v61, v60);
      _expressionCompatibleValue(for:)(v76);
      __swift_destroy_boxed_opaque_existential_1(v76);
      __swift_destroy_boxed_opaque_existential_1(v78);
LABEL_55:
      *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypSgGMd);
      *a2 = v22;
    }

    goto LABEL_59;
  }

  outlined init with take of Equatable(&v85, v82);
  v20 = v83;
  v19 = v84;
  v75 = __swift_project_boxed_opaque_existential_1(v82, v83);
  v21 = dispatch thunk of Sequence.underestimatedCount.getter();
  v76[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21 & ~(v21 >> 63), 0);
  v22 = v76[0];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = &v63;
  v88 = AssociatedTypeWitness;
  v66 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v25 = &v63 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  (*(v29 + 16))(&v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v75, v20, v27);
  v75 = v25;
  v72 = v20;
  v71 = v19;
  result = dispatch thunk of Sequence.makeIterator()();
  if ((v21 & 0x8000000000000000) == 0)
  {
    if (v21)
    {
      v30 = swift_getAssociatedTypeWitness();
      v31 = *(*(type metadata accessor for Optional() - 8) + 64);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v74 = AssociatedConformanceWitness;
      v73 = v30 - 8;
      do
      {
        MEMORY[0x1EEE9AC00](AssociatedConformanceWitness);
        dispatch thunk of IteratorProtocol.next()();
        v33 = *(v30 - 8);
        result = (*(v33 + 48))(&v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v30);
        if (result == 1)
        {
          goto LABEL_61;
        }

        v79 = v30;
        v34 = __swift_allocate_boxed_opaque_existential_0(v78);
        (*(v33 + 16))(v34, &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
        _expressionCompatibleValue(for:)(v78);
        if (v2)
        {
          __swift_destroy_boxed_opaque_existential_1(v78);
          (*(v66 + 8))(v75, v88);

          (*(v33 + 8))(&v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
          goto LABEL_59;
        }

        __swift_destroy_boxed_opaque_existential_1(v78);
        AssociatedConformanceWitness = (*(v33 + 8))(&v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
        v76[0] = v22;
        v36 = *(v22 + 16);
        v35 = *(v22 + 24);
        if (v36 >= v35 >> 1)
        {
          AssociatedConformanceWitness = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
          v22 = v76[0];
        }

        *(v22 + 16) = v36 + 1;
        v37 = v22 + 32 * v36;
        v38 = v81;
        *(v37 + 32) = v80;
        *(v37 + 48) = v38;
      }

      while (--v21);
    }

    v44 = swift_getAssociatedTypeWitness();
    v45 = *(v44 - 8);
    v74 = *(v45 + 64);
    v65 = type metadata accessor for Optional();
    v64 = *(v65 - 8);
    v73 = *(v64 + 64);
    v46 = swift_getAssociatedConformanceWitness();
    v72 = v46;
    v71 = (v45 + 48);
    v69 = (v45 + 32);
    v68 = (v45 + 16);
    v70 = (v45 + 8);
    while (1)
    {
      MEMORY[0x1EEE9AC00](v46);
      v48 = &v63 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      MEMORY[0x1EEE9AC00](v49);
      v51 = &v63 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      dispatch thunk of IteratorProtocol.next()();
      if ((*v71)(v51, 1, v44) == 1)
      {
        (*(v66 + 8))(v75, v88);
        (*(v64 + 8))(v51, v65);
        goto LABEL_55;
      }

      (*v69)(v48, v51, v44);
      v79 = v44;
      v52 = __swift_allocate_boxed_opaque_existential_0(v78);
      (*v68)(v52, v48, v44);
      _expressionCompatibleValue(for:)(v78);
      if (v2)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v78);
      v46 = (*v70)(v48, v44);
      v76[0] = v22;
      v54 = *(v22 + 16);
      v53 = *(v22 + 24);
      if (v54 >= v53 >> 1)
      {
        v46 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1);
        v22 = v76[0];
      }

      *(v22 + 16) = v54 + 1;
      v55 = v22 + 32 * v54;
      v56 = v81;
      *(v55 + 32) = v80;
      *(v55 + 48) = v56;
    }

    __swift_destroy_boxed_opaque_existential_1(v78);
    (*v70)(v48, v44);
    (*(v66 + 8))(v75, v88);

LABEL_59:
    __swift_destroy_boxed_opaque_existential_1(v82);
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t ClosedRange._bounds.getter(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  a1[3] = v6;
  a1[4] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  v12 = *(*(v6 - 8) + 16);
  v12(boxed_opaque_existential_0, v3, v6);
  v9 = *(a3 + 36);
  a2[3] = v6;
  a2[4] = v7;
  v10 = __swift_allocate_boxed_opaque_existential_0(a2);

  return (v12)(v10, v3 + v9, v6);
}

uint64_t PredicateExpressions.Value.convert(state:)(uint64_t a1, uint64_t a2)
{
  v18 = *(a2 + 16);
  v4 = v18;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v2, v4);
  _expressionCompatibleValue(for:)(v17, v19);
  __swift_destroy_boxed_opaque_existential_1(v17);
  if (v3)
  {
    return v2;
  }

  v6 = v20;
  if (!v20)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v7 = __swift_project_boxed_opaque_existential_1(v19, v20);
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = *(v8 + 16);
  v12(v17 - v11, v10);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    v21 = v17;
    v16 = MEMORY[0x1EEE9AC00](result);
    (v12)(v17 - v11, v17 - v11, v6, v16);
    v14 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v8 + 8))(v17 - v11, v6);
    goto LABEL_6;
  }

  if (v9 == 8)
  {
    v14 = *(v17 - v11);
    v15 = *(v8 + 8);
    swift_unknownObjectRetain();
    v15(v17 - v11, v6);
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v19);
LABEL_8:
    v2 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.Value<A>(uint64_t a1, uint64_t a2)
{
  result = PredicateExpressions.Value.convert(state:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

void *protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.Variable<A>(uint64_t a1)
{
  result = specialized PredicateExpressions.Variable.convert(state:)(a1);
  if (!v1)
  {
    v3 = result;
    v4 = result;
    return v3;
  }

  return result;
}

id PredicateExpressions.KeyPath.convert(state:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v247 = a1;
  v260 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 32);
  v245 = a2;
  v7 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v242 - v11;
  v248 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v246 = v242 - v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v242 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 16);
  v250 = v5;
  v20(v18, v5, v7, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd);
  v249 = v7;
  if (swift_dynamicCast())
  {
    v243 = v6;
    v244 = AssociatedTypeWitness;
    outlined init with take of Equatable(&v254, &v257);
    v22 = v258;
    v21 = v259;
    __swift_project_boxed_opaque_existential_1(&v257, v258);
    v23 = (*(v21 + 16))(v247, v22, v21);
    if (!v3)
    {
      v31 = v23;
      v32 = v24;
      __swift_destroy_boxed_opaque_existential_1(&v257);
      if (v32)
      {
        LOBYTE(v257) = 1;
        v33 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v34 = v31;
        v35 = objc_opt_self();
        v36 = [v35 expressionForConstantValue_];
        swift_unknownObjectRelease();
        LOBYTE(v257) = 0;
        v37 = [v35 expressionForConstantValue_];
        swift_unknownObjectRelease();
        v31 = [v35 expressionForConditional:v34 trueExpression:v36 falseExpression:v37];
      }

      v25 = v244;
      goto LABEL_21;
    }

    __swift_destroy_boxed_opaque_existential_1(&v257);
    v4 = 0;
    v25 = v3;
    AssociatedTypeWitness = v244;
    v6 = v243;
  }

  else
  {
    v256 = 0;
    v254 = 0u;
    v255 = 0u;
    outlined destroy of TermOfAddress?(&v254, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd);
    v25 = 0;
  }

  *&v257 = MEMORY[0x1E69E7CC0];
  (*(v6 + 16))(&v257, v249, v6);
  v26 = v248;
  if (v4)
  {

    (*(v26 + 56))(v12, 1, 1, AssociatedTypeWitness);
    (*(v10 + 8))(v12, v9);
    if (v25)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  (*(v26 + 56))(v12, 0, 1, AssociatedTypeWitness);
  v27 = v246;
  (*(v26 + 32))(v246, v12, AssociatedTypeWitness);
  v253 = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v251[1]);
  (*(v26 + 16))(boxed_opaque_existential_0, v27, AssociatedTypeWitness);
  _expressionCompatibleValue(for:)(&v251[1], &v254);
  __swift_destroy_boxed_opaque_existential_1(&v251[1]);
  if (!*(&v255 + 1))
  {
    (*(v26 + 8))(v27, AssociatedTypeWitness);
    outlined destroy of TermOfAddress?(&v254, &_sypSgMd);
    if (v25)
    {
      goto LABEL_11;
    }

LABEL_10:
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v29 = 2;
LABEL_11:
    swift_willThrow();
    return v25;
  }

  v243 = v6;
  v244 = AssociatedTypeWitness;
  v247 = 0;
  outlined init with take of Any(&v254, &v257);
  v38 = v258;
  v39 = __swift_project_boxed_opaque_existential_1(&v257, v258);
  v242[2] = v242;
  v40 = *(v38 - 8);
  v41 = v40[8];
  v42 = MEMORY[0x1EEE9AC00](v39);
  v43 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v44 = (v242 - v43);
  v45 = v40[2];
  v45(v242 - v43, v42);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if (isClassOrObjCExistentialType)
  {
    if (v41 != 8)
    {
      __break(1u);
LABEL_218:

      v83 = v44;
      goto LABEL_219;
    }

    v47 = *v44;
    v48 = v40[1];
    swift_unknownObjectRetain();
    v48(v242 - v43, v38);
  }

  else
  {
    v242[1] = v242;
    v170 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
    (v45)(v242 - v43, v242 - v43, v38, v170);
    v47 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (v40[1])(v242 - v43, v38);
  }

  v31 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v257);
  v25 = v244;
  (*(v26 + 8))(v246, v244);
LABEL_21:
  if (v25 == MEMORY[0x1E69E67B0] || v25 == MEMORY[0x1E69E6158])
  {
    v26 = 0x6874676E656CLL;
  }

  else
  {
    v26 = 0x746E756F6340;
  }

  v50 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v51)
  {
    v52 = v50;
    v53 = v51;

    if ([v31 expressionType] == 1)
    {
LABEL_29:
      v54 = String._bridgeToObjectiveCImpl()();

      v55 = [objc_opt_self() expressionForKeyPath_];
LABEL_169:
      v25 = v55;
      swift_unknownObjectRelease();

      return v25;
    }

    if ([v31 expressionType] != 3)
    {
      goto LABEL_122;
    }

    v57 = [v31 keyPath];
    v250 = v31;
    if (v57)
    {
      v58 = v57;
      isTaggedPointer = _objc_isTaggedPointer(v57);
      v60 = v58;
      v61 = v60;
      if (isTaggedPointer)
      {
        TaggedPointerTag = _objc_getTaggedPointerTag(v60);
        switch(TaggedPointerTag)
        {
          case 0:
            *&v251[1] = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v98 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v99)
            {
              [v61 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v65 = *(&v254 + 1);
              v63 = v254;
LABEL_112:

LABEL_113:
              *&v257 = 64;
              *(&v257 + 1) = 0xE100000000000000;
              *&v254 = v63;
              *(&v254 + 1) = v65;
              if ((v65 & 0x1000000000000000) != 0)
              {
                lazy protocol witness table accessor for type String and conformance String();
                StringProtocol._ephemeralString.getter();
                StringProtocol._ephemeralString.getter();
                v107 = String._bridgeToObjectiveCImpl()();

                v108 = String._bridgeToObjectiveCImpl()();

                v109 = [v107 rangeOfString_];
                v111 = v110;
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                if (v109 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  goto LABEL_127;
                }

                if (__OFADD__(v109, v111))
                {
                  __break(1u);
                }

                StringProtocol._toUTF16Indices(_:)();

                v31 = v250;
              }

              else
              {
                v112 = String.subscript.getter();
                v114 = v113;

                *&v251[1] = 64;
                v252 = 0xE100000000000000;
                v115 = Substring.init<A>(_:)();
                if ((v112 ^ v114) < 0x4000 || !((v115 ^ v116) >> 14))
                {

LABEL_127:

                  v31 = v250;
LABEL_128:
                  v129 = [v31 keyPath];
                  if (!v129)
                  {
                    v136 = 0;
                    goto LABEL_140;
                  }

                  v130 = v129;
                  v131 = _objc_isTaggedPointer(v129);
                  v132 = v130;
                  v133 = v132;
                  if (!v131)
                  {
LABEL_134:
                    LOBYTE(v254) = 0;
                    *&v257 = 0;
                    *v251 = 0;
                    IsCF = __CFStringIsCF();
                    if (!IsCF)
                    {
                      v135 = v31;
                      v140 = v133;
                      v141 = String.init(_nativeStorage:)();
                      if (v142)
                      {
                        v136 = v141;
                        v138 = v142;

                        goto LABEL_163;
                      }

                      *&v257 = [v140 length];
                      if (!v257)
                      {

                        v136 = 0;
                        v138 = 0xE000000000000000;
                        goto LABEL_163;
                      }

                      v31 = v135;
                      goto LABEL_165;
                    }

                    v136 = v257;
                    if (v257)
                    {
                      if (v251[0] == 1)
                      {
                        if (v254)
                        {
                          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                        }

                        else
                        {
                          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                        }

                        v145 = String.init<A>(_immortalCocoaString:count:encoding:)();
                        goto LABEL_166;
                      }

                      if (v251[1])
                      {
                        v135 = v31;
                        if (v254 != 1)
                        {
                          IsCF = [v133 lengthOfBytesUsingEncoding_];
                        }

                        MEMORY[0x1EEE9AC00](IsCF);
                        v147 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        v138 = v148;
                        v149 = HIBYTE(v148) & 0xF;
                        if ((v148 & 0x2000000000000000) == 0)
                        {
                          v149 = v147 & 0xFFFFFFFFFFFFLL;
                        }

                        if (v149)
                        {
                          v136 = v147;

                          goto LABEL_163;
                        }
                      }

LABEL_165:
                      v145 = String.init(_cocoaString:)();
LABEL_166:
                      v136 = v145;
                      v138 = v146;
                      goto LABEL_167;
                    }

LABEL_140:
                    v138 = 0xE000000000000000;
LABEL_168:
                    *&v257 = v136;
                    *(&v257 + 1) = v138;
                    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
                    MEMORY[0x1865CB0E0](v52, v53);

                    v150 = String._bridgeToObjectiveCImpl()();

                    v55 = [objc_opt_self() expressionForKeyPath_];
                    goto LABEL_169;
                  }

                  v134 = _objc_getTaggedPointerTag(v132);
                  if (!v134)
                  {
                    goto LABEL_147;
                  }

                  if (v134 != 22)
                  {
                    if (v134 == 2)
                    {
                      v135 = v31;
                      MEMORY[0x1EEE9AC00](v134);
                      v136 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v138 = v137;

LABEL_163:
                      v31 = v135;
                      goto LABEL_168;
                    }

                    goto LABEL_134;
                  }

                  result = [v133 UTF8String];
                  if (result)
                  {
                    v143 = String.init(utf8String:)(result);
                    if (v144)
                    {
                      goto LABEL_148;
                    }

                    __break(1u);
LABEL_147:
                    *&v251[1] = 0;
                    _CFIndirectTaggedPointerStringGetContents();
                    v143 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                    if (!v144)
                    {
                      [v133 mutableCopy];
                      _bridgeAnyObjectToAny(_:)();

                      swift_unknownObjectRelease();
                      swift_dynamicCast();
                      v138 = *(&v254 + 1);
                      v136 = v254;
                      goto LABEL_167;
                    }

LABEL_148:
                    v136 = v143;
                    v138 = v144;

LABEL_167:
                    goto LABEL_168;
                  }

                  goto LABEL_307;
                }

                specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v115, v116, v117, v118, 0, 0, 0, 0, 0, v112, v114);
                v120 = v119;

                v31 = v250;
                if (v120)
                {
                  goto LABEL_128;
                }
              }

LABEL_122:
              v121 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSExpression);
              v258 = v121;
              *&v257 = v31;
              v122 = objc_opt_self();
              v123 = String._bridgeToObjectiveCImpl()();
              v124 = v31;
              v125 = v123;
              v126 = v124;
              v127 = [v122 _newKeyPathExpressionForString_];
              swift_unknownObjectRelease();
              if (!v127)
              {
                v121 = 0;
                *(&v254 + 1) = 0;
                *&v255 = 0;
              }

              *&v254 = v127;
              *(&v255 + 1) = v121;
              v128 = objc_allocWithZone(NSKeyPathExpression);
              result = @nonobjc NSKeyPathExpression.init(operand:andKeyPath:)(&v257, &v254);
              if (result)
              {
LABEL_125:
                v25 = result;

                return v25;
              }

              goto LABEL_300;
            }

            v63 = v98;
            v65 = v99;
LABEL_94:

            goto LABEL_112;
          case 0x16:
            result = [v61 UTF8String];
            if (!result)
            {
LABEL_303:
              __break(1u);
              goto LABEL_304;
            }

            result = String.init(utf8String:)(result);
            if (!v97)
            {
LABEL_304:
              __break(1u);
LABEL_305:
              __break(1u);
LABEL_306:
              __break(1u);
LABEL_307:
              __break(1u);
              goto LABEL_308;
            }

            v63 = result;
            v65 = v97;
            goto LABEL_94;
          case 2:
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            v63 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v65 = v64;

            goto LABEL_113;
        }
      }

      LOBYTE(v254) = 0;
      *&v257 = 0;
      *v251 = 0;
      v66 = __CFStringIsCF();
      if (v66)
      {
        v63 = v257;
        if (!v257)
        {

          v65 = 0xE000000000000000;
          goto LABEL_113;
        }

        if (v251[0] == 1)
        {
          if (v254)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v100 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_111;
        }

        if (v251[1])
        {
          if (v254 != 1)
          {
            v66 = [v61 lengthOfBytesUsingEncoding_];
          }

          MEMORY[0x1EEE9AC00](v66);
          v102 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v65 = v103;
          v104 = HIBYTE(v103) & 0xF;
          if ((v103 & 0x2000000000000000) == 0)
          {
            v104 = v102 & 0xFFFFFFFFFFFFLL;
          }

          if (v104)
          {
            v63 = v102;
            goto LABEL_94;
          }
        }

LABEL_110:
        v100 = String.init(_cocoaString:)();
LABEL_111:
        v63 = v100;
        v65 = v101;
        goto LABEL_112;
      }

      v76 = v61;
      v77 = String.init(_nativeStorage:)();
      if (v78)
      {
        v63 = v77;
        v65 = v78;

        goto LABEL_113;
      }

      *&v257 = [v76 length];
      if (v257)
      {
        goto LABEL_110;
      }
    }

    v63 = 0;
    v65 = 0xE000000000000000;
    goto LABEL_113;
  }

  if (!swift_conformsToProtocol2() || (static PredicateExpressions.KeyPath.kind<A>(_:collectionType:)(&v257), v257 == 4))
  {

    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v56 = 0;
    swift_willThrow();

    return v25;
  }

  if (v257 > 1u)
  {
    v67 = v31;
    if (v257 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_181218E20;
      v69 = String._bridgeToObjectiveCImpl()();
      v70 = objc_opt_self();
      v71 = [v70 expressionForSymbolicString_];
      result = swift_unknownObjectRelease();
      if (!v71)
      {
LABEL_301:
        __break(1u);
        goto LABEL_302;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_181218E20;
      v74 = String._bridgeToObjectiveCImpl()();
      v70 = objc_opt_self();
      v71 = [v70 expressionForSymbolicString_];
      result = swift_unknownObjectRelease();
      if (!v71)
      {
LABEL_302:
        __break(1u);
        goto LABEL_303;
      }
    }

    *(v68 + 56) = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSExpression);
    *(v68 + 32) = v71;
    v75 = String._bridgeToObjectiveCImpl()();
    v25 = [v70 expressionForFunction:v67 selectorName:v75 arguments:_ContiguousArrayBuffer._asCocoaArray()()];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v25;
  }

  if (v257)
  {
    if ([v31 expressionType] == 1)
    {
      v72 = String._bridgeToObjectiveCImpl()();

      v73 = [objc_opt_self() expressionForKeyPath_];
LABEL_285:
      swift_unknownObjectRelease();
      goto LABEL_286;
    }

    if ([v31 expressionType] != 3)
    {
      goto LABEL_278;
    }

    v88 = [v31 keyPath];
    if (v88)
    {
      v89 = v88;
      v90 = _objc_isTaggedPointer(v88);
      v91 = v89;
      v83 = v91;
      if (v90)
      {
        v92 = _objc_getTaggedPointerTag(v91);
        switch(v92)
        {
          case 0:
            v93 = v31;
            *&v251[1] = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v158 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v159)
            {
              [v83 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v96 = *(&v254 + 1);
              v94 = v254;
              goto LABEL_268;
            }

            goto LABEL_185;
          case 0x16:
LABEL_179:
            v93 = v31;
            result = [v83 UTF8String];
            if (!result)
            {
LABEL_309:
              __break(1u);
              goto LABEL_310;
            }

            v158 = String.init(utf8String:)(result);
            if (!v159)
            {
              __break(1u);
              goto LABEL_182;
            }

LABEL_185:
            v94 = v158;
            v96 = v159;
LABEL_186:

LABEL_268:
LABEL_269:
            *&v257 = 64;
            *(&v257 + 1) = 0xE100000000000000;
            *&v254 = v94;
            *(&v254 + 1) = v96;
            if ((v96 & 0x1000000000000000) != 0)
            {
              lazy protocol witness table accessor for type String and conformance String();
              StringProtocol._ephemeralString.getter();
              StringProtocol._ephemeralString.getter();
              v209 = String._bridgeToObjectiveCImpl()();

              v210 = String._bridgeToObjectiveCImpl()();

              v211 = [v209 rangeOfString_];
              v213 = v212;
              swift_unknownObjectRelease();
              result = swift_unknownObjectRelease();
              if (v211 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_283;
              }

              if (__OFADD__(v211, v213))
              {
                goto LABEL_299;
              }

              StringProtocol._toUTF16Indices(_:)();

              v31 = v93;
            }

            else
            {
              v214 = String.subscript.getter();
              v216 = v215;

              *&v251[1] = 64;
              v252 = 0xE100000000000000;
              v217 = Substring.init<A>(_:)();
              if ((v214 ^ v216) < 0x4000 || !((v217 ^ v218) >> 14))
              {

LABEL_283:

                v31 = v93;
LABEL_284:
                v229 = [v31 keyPath];
                v230 = static String._unconditionallyBridgeFromObjectiveC(_:)(v229);
                v232 = v231;

                *&v257 = v230;
                *(&v257 + 1) = v232;
                MEMORY[0x1865CB0E0](46, 0xE100000000000000);
                MEMORY[0x1865CB0E0](v26, 0xE600000000000000);

                v233 = String._bridgeToObjectiveCImpl()();

                v73 = [objc_opt_self() expressionForKeyPath_];
                goto LABEL_285;
              }

              specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v217, v218, v219, v220, 0, 0, 0, 0, 0, v214, v216);
              v222 = v221;

              v31 = v93;
              if (v222)
              {
                goto LABEL_284;
              }
            }

LABEL_278:
            v223 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSExpression);
            v258 = v223;
            *&v257 = v31;
            v224 = objc_opt_self();
            v225 = String._bridgeToObjectiveCImpl()();
            v226 = v31;
            v227 = [v224 _newKeyPathExpressionForString_];
            swift_unknownObjectRelease();
            if (!v227)
            {
              v223 = 0;
              *(&v254 + 1) = 0;
              *&v255 = 0;
            }

            *&v254 = v227;
            *(&v255 + 1) = v223;
            v228 = objc_allocWithZone(NSKeyPathExpression);
            result = @nonobjc NSKeyPathExpression.init(operand:andKeyPath:)(&v257, &v254);
            if (!result)
            {
              goto LABEL_306;
            }

            v73 = result;

LABEL_286:
            *&v257 = 0;
            v234 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
            v235 = [objc_opt_self() expressionForConstantValue_];
            swift_unknownObjectRelease();
            v25 = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v73 rightExpression:v235 modifier:0 type:4 options:0];

            return v25;
          case 2:
            v93 = v31;
            MEMORY[0x1EEE9AC00](v92);
            v94 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v96 = v95;

            goto LABEL_269;
        }
      }

      LOBYTE(v254) = 0;
      *&v257 = 0;
      *v251 = 0;
      v106 = __CFStringIsCF();
      if (v106)
      {
        v94 = v257;
        if (!v257)
        {
          v93 = v31;

          v96 = 0xE000000000000000;
          goto LABEL_269;
        }

        if (v251[0] == 1)
        {
          v93 = v31;
          if (v254)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v162 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_267;
        }

        if (v251[1])
        {
          v93 = v31;
          if (v254 != 1)
          {
            v106 = [v83 lengthOfBytesUsingEncoding_];
          }

          MEMORY[0x1EEE9AC00](v106);
          v167 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v96 = v168;
          v169 = HIBYTE(v168) & 0xF;
          if ((v168 & 0x2000000000000000) == 0)
          {
            v169 = v167 & 0xFFFFFFFFFFFFLL;
          }

          if (v169)
          {
            v94 = v167;
            goto LABEL_186;
          }
        }

        else
        {
          v93 = v31;
        }

LABEL_266:
        v162 = String.init(_cocoaString:)();
LABEL_267:
        v94 = v162;
        v96 = v163;
        goto LABEL_268;
      }

      v93 = v31;
      v153 = v83;
      v154 = String.init(_nativeStorage:)();
      if (v155)
      {
        v94 = v154;
        v96 = v155;

        goto LABEL_269;
      }

      *&v257 = [v153 length];
      if (v257)
      {
        goto LABEL_266;
      }
    }

    else
    {
      v93 = v31;
    }

    v94 = 0;
    v96 = 0xE000000000000000;
    goto LABEL_269;
  }

  if ([v31 expressionType] == 1)
  {
    goto LABEL_29;
  }

  if ([v31 expressionType] != 3)
  {
    goto LABEL_231;
  }

  v249 = v26;
  v26 = &selRef_initWithBundleIdentifier_storeIdentifier_;
  v79 = [v31 keyPath];
  if (!v79)
  {
    v43 = v31;
    goto LABEL_106;
  }

  v80 = v79;
  v81 = _objc_isTaggedPointer(v79);
  v82 = v80;
  v83 = v82;
  if (!v81)
  {
LABEL_95:
    LOBYTE(v254) = 0;
    *&v257 = 0;
    *v251 = 0;
    v105 = __CFStringIsCF();
    if (v105)
    {
      v85 = v257;
      if (!v257)
      {
        v43 = v31;

        v87 = 0xE000000000000000;
        goto LABEL_222;
      }

      if (v251[0] == 1)
      {
        v43 = v31;
        if (v254)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v160 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_220;
      }

      if (v251[1])
      {
        v43 = v31;
        if (v254 != 1)
        {
          v105 = [v83 lengthOfBytesUsingEncoding_];
        }

        MEMORY[0x1EEE9AC00](v105);
        v44 = v83;
        v164 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v87 = v165;
        v166 = HIBYTE(v165) & 0xF;
        if ((v165 & 0x2000000000000000) == 0)
        {
          v166 = v164 & 0xFFFFFFFFFFFFLL;
        }

        if (v166)
        {
          v85 = v164;
          goto LABEL_210;
        }

        goto LABEL_218;
      }

      v43 = v31;
LABEL_219:
      v160 = String.init(_cocoaString:)();
LABEL_220:
      v85 = v160;
      v87 = v161;
      goto LABEL_221;
    }

    v43 = v31;
    v44 = v83;
    v151 = String.init(_nativeStorage:)();
    if (v152)
    {
      v85 = v151;
      v87 = v152;
LABEL_210:

      goto LABEL_222;
    }

    *&v257 = [v44 length];
    if (v257)
    {
      goto LABEL_219;
    }

LABEL_106:
    v85 = 0;
    v87 = 0xE000000000000000;
    goto LABEL_222;
  }

  v84 = _objc_getTaggedPointerTag(v82);
  if (v84)
  {
    if (v84 != 22)
    {
      if (v84 == 2)
      {
        v43 = v31;
        MEMORY[0x1EEE9AC00](v84);
        v85 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v87 = v86;

        goto LABEL_222;
      }

      goto LABEL_95;
    }

    v43 = v31;
    result = [v83 UTF8String];
    if (!result)
    {
LABEL_308:
      __break(1u);
      goto LABEL_309;
    }

    v156 = String.init(utf8String:)(result);
    if (v157)
    {
      goto LABEL_183;
    }

    __break(1u);
    goto LABEL_179;
  }

LABEL_182:
  v43 = v31;
  *&v251[1] = 0;
  _CFIndirectTaggedPointerStringGetContents();
  v156 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (!v157)
  {
    [v83 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v87 = *(&v254 + 1);
    v85 = v254;
    goto LABEL_221;
  }

LABEL_183:
  v85 = v156;
  v87 = v157;

LABEL_221:
LABEL_222:
  *&v257 = 64;
  *(&v257 + 1) = 0xE100000000000000;
  *&v254 = v85;
  *(&v254 + 1) = v87;
  if ((v87 & 0x1000000000000000) != 0)
  {
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    StringProtocol._ephemeralString.getter();
    v171 = String._bridgeToObjectiveCImpl()();

    v172 = String._bridgeToObjectiveCImpl()();

    v173 = [v171 rangeOfString_];
    v175 = v174;
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if (v173 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_236;
    }

    if (!__OFADD__(v173, v175))
    {
      StringProtocol._toUTF16Indices(_:)();

      v31 = v43;
      goto LABEL_231;
    }

    __break(1u);
LABEL_299:
    __break(1u);
LABEL_300:
    __break(1u);
    goto LABEL_301;
  }

  v176 = String.subscript.getter();
  v178 = v177;

  *&v251[1] = 64;
  v252 = 0xE100000000000000;
  v179 = Substring.init<A>(_:)();
  if ((v176 ^ v178) >= 0x4000 && (v179 ^ v180) >> 14)
  {
    specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v179, v180, v181, v182, 0, 0, 0, 0, 0, v176, v178);
    v184 = v183;

    v31 = v43;
    if (v184)
    {
      goto LABEL_237;
    }

LABEL_231:
    v185 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSExpression);
    v258 = v185;
    *&v257 = v31;
    v186 = objc_opt_self();
    v187 = String._bridgeToObjectiveCImpl()();
    v188 = v31;
    v189 = v187;
    v126 = v188;
    v190 = [v186 _newKeyPathExpressionForString_];
    swift_unknownObjectRelease();
    if (!v190)
    {
      v185 = 0;
      *(&v254 + 1) = 0;
      *&v255 = 0;
    }

    *&v254 = v190;
    *(&v255 + 1) = v185;
    v191 = objc_allocWithZone(NSKeyPathExpression);
    result = @nonobjc NSKeyPathExpression.init(operand:andKeyPath:)(&v257, &v254);
    if (result)
    {
      goto LABEL_125;
    }

    goto LABEL_305;
  }

LABEL_236:

  v31 = v43;
LABEL_237:
  v192 = [v31 *(v26 + 3800)];
  if (!v192)
  {
    v199 = 0;
    v201 = 0xE000000000000000;
    goto LABEL_296;
  }

  v193 = v192;
  v194 = _objc_isTaggedPointer(v192);
  v195 = v193;
  v196 = v195;
  if (!v194)
  {
LABEL_243:
    LOBYTE(v254) = 0;
    *&v257 = 0;
    *v251 = 0;
    v202 = __CFStringIsCF();
    if (!v202)
    {
      v198 = v31;
      v203 = v196;
      v204 = String.init(_nativeStorage:)();
      if (v205)
      {
        v199 = v204;
        v201 = v205;

        goto LABEL_295;
      }

      *&v257 = [v203 length];
      if (!v257)
      {

        v199 = 0;
        v201 = 0xE000000000000000;
        goto LABEL_295;
      }

      goto LABEL_293;
    }

    v199 = v257;
    if (v257)
    {
      if (v251[0] == 1)
      {
        if (v254)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v199 = String.init<A>(_immortalCocoaString:count:encoding:)();
        v201 = v208;

        goto LABEL_296;
      }

      v198 = v31;
      if (v251[1])
      {
        if (v254 != 1)
        {
          v202 = [v196 lengthOfBytesUsingEncoding_];
        }

        MEMORY[0x1EEE9AC00](v202);
        v236 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v201 = v237;
        v238 = HIBYTE(v237) & 0xF;
        if ((v237 & 0x2000000000000000) == 0)
        {
          v238 = v236 & 0xFFFFFFFFFFFFLL;
        }

        if (v238)
        {
          v199 = v236;

LABEL_294:
          goto LABEL_295;
        }
      }

LABEL_293:
      v199 = String.init(_cocoaString:)();
      v201 = v239;
      goto LABEL_294;
    }

    v201 = 0xE000000000000000;
LABEL_296:
    v240 = v249;
    *&v257 = v199;
    *(&v257 + 1) = v201;
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    MEMORY[0x1865CB0E0](v240, 0xE600000000000000);

    v241 = String._bridgeToObjectiveCImpl()();

    v55 = [objc_opt_self() expressionForKeyPath_];
    goto LABEL_169;
  }

  v197 = _objc_getTaggedPointerTag(v195);
  if (!v197)
  {
    goto LABEL_255;
  }

  if (v197 != 22)
  {
    if (v197 == 2)
    {
      v198 = v31;
      MEMORY[0x1EEE9AC00](v197);
      v199 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v201 = v200;

LABEL_295:
      v31 = v198;
      goto LABEL_296;
    }

    goto LABEL_243;
  }

  result = [v196 UTF8String];
  if (result)
  {
    v206 = String.init(utf8String:)(result);
    if (v207)
    {
LABEL_256:
      v199 = v206;
      v201 = v207;

      goto LABEL_296;
    }

    __break(1u);
LABEL_255:
    *&v251[1] = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v206 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v207)
    {
      [v196 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v201 = *(&v254 + 1);
      v199 = v254;

      goto LABEL_296;
    }

    goto LABEL_256;
  }

LABEL_310:
  __break(1u);
  return result;
}

id protocol witness for ConvertibleExpression.convert(state:) in conformance PredicateExpressions.KeyPath<A, B>(uint64_t a1, uint64_t a2)
{
  result = PredicateExpressions.KeyPath.convert(state:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t PredicateExpressions.PredicateEvaluate.convert(state:)(int64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = 8 * v4;
  if (v4 == 1)
  {
    TupleTypeMetadata = *(*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v7 = v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v4)
    {
      v8 = 0;
      v9 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v4 < 4)
      {
        goto LABEL_9;
      }

      if (&v7[-v9] < 0x20)
      {
        goto LABEL_9;
      }

      v8 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      v10 = (v9 + 16);
      v11 = v7 + 16;
      v12 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 1) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v4 != v8)
      {
LABEL_9:
        v14 = v4 - v8;
        v15 = 8 * v8;
        v16 = &v7[8 * v8];
        v17 = (v9 + v15);
        do
        {
          v18 = *v17++;
          *v16 = v18;
          v16 += 8;
          --v14;
        }

        while (v14);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v168 = a1;
  v156 = v148;
  v160 = TupleTypeMetadata;
  v152 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v169 = v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = v4;
  if (v4 == 1)
  {
    swift_getAssociatedTypeWitness();
    v21 = type metadata accessor for PredicateExpressions.Variable();
  }

  else
  {
    v174 = v148;
    MEMORY[0x1EEE9AC00](v19);
    if (v4)
    {
      v22 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
      v23 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v24 = (v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      v25 = v173;
      do
      {
        v22 += 8;
        v23 += 8;
        swift_getAssociatedTypeWitness();
        *v24++ = type metadata accessor for PredicateExpressions.Variable();
        --v25;
      }

      while (v25);
    }

    v4 = v173;
    v21 = swift_getTupleTypeMetadata();
  }

  v155 = v148;
  v159 = v21;
  v172 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v164 = v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = v148;
  MEMORY[0x1EEE9AC00](v27);
  v28 = (v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v4)
  {
    v29 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v30 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v31 = v28;
    v32 = v173;
    do
    {
      v29 += 8;
      v30 += 8;
      *v31++ = swift_getAssociatedTypeWitness();
      --v32;
    }

    while (v32);
  }

  v33 = v173;
  v34 = type metadata accessor for Predicate();
  v35 = type metadata accessor for Optional();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = v148 - v37;
  v153 = v148;
  v39 = *(v34 - 8);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = (v148 - v42);
  *&v182 = MEMORY[0x1E69E7CC0];
  v44 = v175;
  (*(*(a2 + 40) + 16))(&v182, *(a2 + 24), v41);
  if (v44)
  {

    (*(v39 + 56))(v38, 1, 1, v34);
    (*(v36 + 8))(v38, v35);
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v45 = 2;
    swift_willThrow();
    return v156;
  }

  v174 = 0;

  (*(v39 + 56))(v38, 0, 1, v34);
  v149 = v39;
  (*(v39 + 32))(v43, v38, v34);
  v150 = v34;
  (v172[2])(v164, v43 + *(v34 + 36), v159);
  isClassOrObjCExistentialType = (*(v152 + 16))(v169, &v176[*(a2 + 60)], v160);
  v151 = v43;
  if (!v33)
  {
    v65 = v168;
LABEL_73:
    v121 = v151[3];
    v122 = v151[4];
    v123 = __swift_project_boxed_opaque_existential_1(v151, v121);
    v124 = MEMORY[0x1EEE9AC00](v123);
    (*(v126 + 16))(v148 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0), v123, v121, v124);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd);
    if (swift_dynamicCast())
    {
      outlined init with take of Equatable(&v179, &v182);
      v127 = v183;
      v128 = v184;
      __swift_project_boxed_opaque_existential_1(&v182, v183);
      v129 = v174;
      v130 = (*(v128 + 16))(v65, v127, v128);
      v131 = v129;
      if (!v129)
      {
        v46 = v130;
        __swift_destroy_boxed_opaque_existential_1(&v182);
        v138 = v150;
        v139 = v149;
        v140 = v151;
        goto LABEL_92;
      }

      __swift_destroy_boxed_opaque_existential_1(&v182);
      v132 = 0;
      v58 = v131;
    }

    else
    {
      v181 = 0;
      v179 = 0u;
      v180 = 0u;
      outlined destroy of TermOfAddress?(&v179, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd);
      v58 = 0;
      v132 = v174;
    }

    v133 = v151;
    *&v182 = MEMORY[0x1E69E7CC0];
    (*(*(v122 + 8) + 16))(&v185, &v182, v121);
    if (v132)
    {

LABEL_82:
      if (!v58)
      {
        lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
        swift_allocError();
        *v134 = 2;
      }

      v46 = v156;
      swift_willThrow();
      (*(v149 + 8))(v133, v150);
      (*(v152 + 8))(v169, v160);
      return v46;
    }

    if (v185 == 2)
    {
      goto LABEL_82;
    }

    v178 = MEMORY[0x1E69E6370];
    LOBYTE(v177[0]) = v185 & 1;
    _expressionCompatibleValue(for:)(v177, &v179);
    __swift_destroy_boxed_opaque_existential_1(v177);
    if (!*(&v180 + 1))
    {
      outlined destroy of TermOfAddress?(&v179, &_sypSgMd);
      goto LABEL_82;
    }

    v167 = 0;
    outlined init with take of Any(&v179, &v182);
    v69 = v183;
    v141 = __swift_project_boxed_opaque_existential_1(&v182, v183);
    isUniquelyReferenced_nonNull_native = *(v69 - 8);
    v142 = *(isUniquelyReferenced_nonNull_native + 64);
    v143 = MEMORY[0x1EEE9AC00](v141);
    v65 = (v142 + 15) & 0xFFFFFFFFFFFFFFF0;
    v82 = v148 - v65;
    AssociatedTypeWitness = *(isUniquelyReferenced_nonNull_native + 16);
    AssociatedTypeWitness(v148 - v65, v143);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    if (isClassOrObjCExistentialType)
    {
      if (v142 != 8)
      {
        __break(1u);
LABEL_104:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v144 = *v82;
      v145 = *(isUniquelyReferenced_nonNull_native + 8);
      swift_unknownObjectRetain();
      v145(v148 - v65, v69);
    }

    else
    {
LABEL_102:
      v176 = v148;
      v147 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
      (AssociatedTypeWitness)(v148 - v65, v82, v69, v147);
      v144 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (*(isUniquelyReferenced_nonNull_native + 8))(v82, v69);
    }

    v146 = v151;
    v46 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v182);
    v138 = v150;
    v139 = v149;
    v140 = v146;
LABEL_92:
    (*(v139 + 8))(v140, v138);
    (*(v152 + 8))(v169, v160);
    return v46;
  }

  v48 = 0;
  v158 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
  v157 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL;
  while (1)
  {
    v51 = v33 == 1 ? v164 : &v164[*(v159 + 16 * v48 + 32)];
    v172 = v148;
    v52 = *(v158 + 8 * v48);
    v170 = *(v157 + 8 * v48);
    AssociatedTypeWitness = *v51;
    v54 = *(v52 - 1);
    v55 = *(v54 + 64);
    v56 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
    v57 = v148 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
    v171 = v54;
    v59 = *(v54 + 16);
    v58 = (v54 + 16);
    v61 = v59(v57, &v169[v60], v52, v56);
    v62 = MEMORY[0x1EEE9AC00](v61);
    v175 = v57;
    v59(v57, v57, v52, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pMd);
    v176 = v52;
    if (swift_dynamicCast())
    {
      outlined init with take of Equatable(&v179, &v182);
      v63 = v183;
      v64 = v184;
      __swift_project_boxed_opaque_existential_1(&v182, v183);
      v65 = v168;
      v66 = v174;
      v67 = (*(v64 + 16))(v168, v63, v64);
      v69 = v66;
      if (!v66)
      {
        v90 = v67;
        v102 = v68;
        __swift_destroy_boxed_opaque_existential_1(&v182);
        v174 = 0;
        if (v102)
        {
          LOBYTE(v182) = 1;
          v103 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
          v104 = objc_opt_self();
          v58 = &selRef_decomposedStringWithCanonicalMapping;
          v105 = [v104 expressionForConstantValue_];
          swift_unknownObjectRelease();
          LOBYTE(v182) = 0;
          v69 = v48;
          v106 = [v104 expressionForConstantValue_];
          swift_unknownObjectRelease();
          v107 = [v104 expressionForConditional:v90 trueExpression:v105 falseExpression:v106];

          v48 = v69;
          (*(v171 + 8))(v175, v176);
          v90 = v107;
        }

        else
        {
          (*(v171 + 8))(v175, v176);
        }

        goto LABEL_40;
      }

      v162 = AssociatedTypeWitness;
      v163 = v48;
      __swift_destroy_boxed_opaque_existential_1(&v182);
      v167 = v66;
      v174 = 0;
    }

    else
    {
      v162 = AssociatedTypeWitness;
      v163 = v48;
      v181 = 0;
      v179 = 0u;
      v180 = 0u;
      outlined destroy of TermOfAddress?(&v179, &_s10Foundation21ConvertibleExpression33_A3487D94EFC39AEF5509F22CD3D93BF3LL_pSgMd);
      v167 = 0;
    }

    v70 = MEMORY[0x1E69E7CC0];
    v71 = v170;
    v72 = v176;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v166 = v148;
    v58 = *(AssociatedTypeWitness - 1);
    MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    v74 = v148 - v73;
    v75 = type metadata accessor for Optional();
    v165 = v148;
    v76 = *(v75 - 8);
    v77 = MEMORY[0x1EEE9AC00](v75);
    v79 = v148 - v78;
    *&v182 = v70;
    v80 = v174;
    (*(v71 + 2))(&v182, v72, v71, v77);
    if (v80)
    {

      (v58[7])(v79, 1, 1, AssociatedTypeWitness);
      (*(v76 + 8))(v79, v75);
      goto LABEL_87;
    }

    (v58[7])(v79, 0, 1, AssociatedTypeWitness);
    (v58[4])(v74, v79, AssociatedTypeWitness);
    v178 = AssociatedTypeWitness;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v177);
    (v58[2])(boxed_opaque_existential_0, v74, AssociatedTypeWitness);
    _expressionCompatibleValue(for:)(v177, &v179);
    __swift_destroy_boxed_opaque_existential_1(v177);
    if (!*(&v180 + 1))
    {
      break;
    }

    v170 = v74;
    v174 = 0;
    outlined init with take of Any(&v179, &v182);
    v82 = v183;
    v83 = __swift_project_boxed_opaque_existential_1(&v182, v183);
    v161 = v148;
    v69 = *(v82 - 1);
    v84 = *(v69 + 64);
    v85 = MEMORY[0x1EEE9AC00](v83);
    v86 = (v84 + 15) & 0xFFFFFFFFFFFFFFF0;
    v65 = v69 + 16;
    isUniquelyReferenced_nonNull_native = *(v69 + 16);
    (isUniquelyReferenced_nonNull_native)(v148 - v86, v85);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    if (isClassOrObjCExistentialType)
    {
      if (v84 != 8)
      {
        goto LABEL_99;
      }

      v88 = *(v148 - v86);
      v89 = *(v69 + 8);
      v69 += 8;
      swift_unknownObjectRetain();
      v89(v148 - v86, v82);
    }

    else
    {
      v148[1] = v148;
      v108 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
      (isUniquelyReferenced_nonNull_native)(v148 - v86, v148 - v86, v82, v108);
      v88 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v109 = *(v69 + 8);
      v69 += 8;
      v109(v148 - v86, v82);
    }

    v90 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v182);
    v91 = v58[1];
    ++v58;
    (v91)(v170, AssociatedTypeWitness);
    (*(v171 + 8))(v175, v176);
    v65 = v168;
    v48 = v163;
    AssociatedTypeWitness = v162;
LABEL_40:
    v92 = v90;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93 = *(v65 + 8);
    *&v182 = v93;
    v82 = v93;
    isClassOrObjCExistentialType = specialized __RawDictionaryStorage.find<A>(_:)(AssociatedTypeWitness);
    v95 = *(v93 + 2);
    v96 = (v94 & 1) == 0;
    v97 = __OFADD__(v95, v96);
    v98 = v95 + v96;
    if (v97)
    {
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v58 = v94;
    if (*(v93 + 3) < v98)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v98, isUniquelyReferenced_nonNull_native);
      v82 = v182;
      isClassOrObjCExistentialType = specialized __RawDictionaryStorage.find<A>(_:)(AssociatedTypeWitness);
      if ((v58 & 1) != (v99 & 1))
      {
        goto LABEL_104;
      }

LABEL_46:
      if (v58)
      {
        goto LABEL_25;
      }

      goto LABEL_47;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v82 = v93;
      goto LABEL_46;
    }

    v163 = v48;
    v110 = isClassOrObjCExistentialType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSo12NSExpressionCGMd);
    v111 = static _DictionaryStorage.copy(original:)();
    v82 = v111;
    if (*(v93 + 2))
    {
      v162 = AssociatedTypeWitness;
      isClassOrObjCExistentialType = v111 + 64;
      isUniquelyReferenced_nonNull_native = (v93 + 64);
      v112 = ((1 << v82[32]) + 63) >> 6;
      if (v82 != v93 || isClassOrObjCExistentialType >= isUniquelyReferenced_nonNull_native + 8 * v112)
      {
        isClassOrObjCExistentialType = memmove(isClassOrObjCExistentialType, v93 + 64, 8 * v112);
      }

      v65 = 0;
      *(v82 + 2) = *(v93 + 2);
      v113 = 1 << v93[32];
      v114 = *(v93 + 8);
      if (v113 < 64)
      {
        v115 = ~(-1 << v113);
      }

      else
      {
        v115 = -1;
      }

      v69 = v115 & v114;
      AssociatedTypeWitness = ((v113 + 63) >> 6);
      if ((v115 & v114) != 0)
      {
        do
        {
          v116 = __clz(__rbit64(v69));
          v69 &= v69 - 1;
LABEL_67:
          v119 = v116 | (v65 << 6);
          v120 = *(*(v93 + 7) + 8 * v119);
          *(*(v82 + 6) + 8 * v119) = *(*(v93 + 6) + 8 * v119);
          *(*(v82 + 7) + 8 * v119) = v120;
          isClassOrObjCExistentialType = v120;
        }

        while (v69);
      }

      v117 = v65;
      while (1)
      {
        v65 = v117 + 1;
        if (__OFADD__(v117, 1))
        {
          goto LABEL_101;
        }

        if (v65 >= AssociatedTypeWitness)
        {
          v65 = v168;
          AssociatedTypeWitness = v162;
          break;
        }

        v118 = *(isUniquelyReferenced_nonNull_native + 8 * v65);
        ++v117;
        if (v118)
        {
          v116 = __clz(__rbit64(v118));
          v69 = (v118 - 1) & v118;
          goto LABEL_67;
        }
      }
    }

    isClassOrObjCExistentialType = v110;
    v48 = v163;
    if (v58)
    {
LABEL_25:
      v49 = *(v82 + 7);
      v50 = *(v49 + 8 * isClassOrObjCExistentialType);
      *(v49 + 8 * isClassOrObjCExistentialType) = v92;

      goto LABEL_26;
    }

LABEL_47:
    *&v82[8 * (isClassOrObjCExistentialType >> 6) + 64] |= 1 << isClassOrObjCExistentialType;
    *(*(v82 + 6) + 8 * isClassOrObjCExistentialType) = AssociatedTypeWitness;
    *(*(v82 + 7) + 8 * isClassOrObjCExistentialType) = v92;

    v100 = *(v82 + 2);
    v97 = __OFADD__(v100, 1);
    v101 = v100 + 1;
    if (v97)
    {
      goto LABEL_100;
    }

    *(v82 + 2) = v101;
LABEL_26:
    *(v65 + 8) = v82;
    ++v48;
    v33 = v173;
    if (v48 == v173)
    {
      goto LABEL_73;
    }
  }

  (v58[1])(v74, AssociatedTypeWitness);
  outlined destroy of TermOfAddress?(&v179, &_sypSgMd);
LABEL_87:
  v46 = v156;
  v135 = v151;
  if (!v167)
  {
    lazy protocol witness table accessor for type NSPredicateConversionError and conformance NSPredicateConversionError();
    swift_allocError();
    *v136 = 2;
  }

  swift_willThrow();
  (*(v171 + 8))(v175, v176);
  (*(v149 + 8))(v135, v150);
  (*(v152 + 8))(v169, v160);
  return v46;
}