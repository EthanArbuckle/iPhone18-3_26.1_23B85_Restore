uint64_t specialized static DictionaryEncoder.KeyEncodingStrategy._convertToSnakeCase(_:)(uint64_t a1, unint64_t a2)
{
  v43 = type metadata accessor for CharacterSet();
  v6 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    return a1;
  }

  v10 = String.index(after:)();
  v45 = a2;
  v11 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v11 = 11;
  }

  v41 = 4 * v9;
  if (4 * v9 < v10 >> 14)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
    v44 = v11 | (v9 << 16);
    v42 = (v6 + 8);
    v2 = MEMORY[0x1E69E7CC0];
    v3 = 15;
    v46 = a1;
    while (1)
    {
      v47 = a1;
      v48 = v45;
      static CharacterSet.uppercaseLetters.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v13 = StringProtocol.rangeOfCharacter(from:options:range:)();
      v15 = v14;
      v16 = *v42;
      (*v42)(v8, v43);
      if (v15)
      {
        v17 = v3 >> 14;
        goto LABEL_26;
      }

      v17 = v13 >> 14;
      if (v13 >> 14 < v3 >> 14)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
      }

      v19 = *(v2 + 2);
      v18 = *(v2 + 3);
      if (v19 >= v18 >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v2);
      }

      *(v2 + 2) = v19 + 1;
      v20 = &v2[16 * v19];
      *(v20 + 4) = v3;
      *(v20 + 5) = v13;
      if (v41 < v17)
      {
        goto LABEL_37;
      }

      v3 = v45;
      a1 = v46;
      v47 = v46;
      v48 = v45;
      static CharacterSet.lowercaseLetters.getter();
      v21 = StringProtocol.rangeOfCharacter(from:options:range:)();
      v23 = v22;
      v25 = v24;
      v16(v8, v43);
      if (v25)
      {
        break;
      }

      if ((String.index(after:)() ^ v21) >= 0x4000)
      {
        v26 = String.index(before:)();
        if (v17 > v26 >> 14)
        {
          goto LABEL_39;
        }

        v28 = *(v2 + 2);
        v27 = *(v2 + 3);
        if (v28 >= v27 >> 1)
        {
          v29 = v26;
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v2);
          v26 = v29;
        }

        *(v2 + 2) = v28 + 1;
        v12 = &v2[16 * v28];
        *(v12 + 4) = v13;
        *(v12 + 5) = v26;
        v13 = v26;
      }

      v3 = v13;
      if (v41 < v23 >> 14)
      {
        goto LABEL_38;
      }
    }

    v3 = v13;
LABEL_26:
    if (v41 < v17)
    {
      goto LABEL_41;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_28;
    }
  }

  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
LABEL_28:
  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  v32 = v31 + 1;
  if (v31 >= v30 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v32;
  v33 = &v2[16 * v31];
  v34 = v44;
  *(v33 + 4) = v3;
  *(v33 + 5) = v34;
  v47 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31 + 1, 0);
  v35 = v47;
  v36 = v2 + 40;
  do
  {
    String.subscript.getter();
    v37 = Substring.lowercased()();

    v47 = v35;
    v39 = *(v35 + 16);
    v38 = *(v35 + 24);
    if (v39 >= v38 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
      v35 = v47;
    }

    v36 += 16;
    *(v35 + 16) = v39 + 1;
    *(v35 + 16 * v39 + 32) = v37;
    --v32;
  }

  while (v32);

  v47 = v35;
  _sypSgMaTm_0(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  a1 = BidirectionalCollection<>.joined(separator:)();

  return a1;
}

void specialized __DictionaryDecoder.unbox(_:as:)(uint64_t a1, SEL *a2, SEL *a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of Any(a1, v26);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull);
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  v27 = a5;
  outlined init with copy of Any(a1, v26);
  v10 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = v25;
  if (*MEMORY[0x1E695E4D0])
  {
    v12 = v25 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v12 = 0;
  }

  if (v12 || *MEMORY[0x1E695E4C0] && v25 == *MEMORY[0x1E695E4C0])
  {

LABEL_11:
    v13 = type metadata accessor for DecodingError();
    swift_allocError();
    v15 = v14;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v15 = v10;
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v13);
    swift_willThrow();
    return;
  }

  v16 = [v25 *a2];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a3];
  LOBYTE(v16) = static NSObject.== infix(_:_:)();

  if (v16)
  {
LABEL_2:

    return;
  }

  v18 = type metadata accessor for DecodingError();
  swift_allocError();
  v20 = v19;
  swift_beginAccess();

  _StringGuts.grow(_:)(43);

  v21 = [v25 description];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  MEMORY[0x18D00C9B0](v22, v24);

  MEMORY[0x18D00C9B0](0xD000000000000012, 0x800000018CD46840);
  MEMORY[0x18D00C9B0](a4, v27);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6B00], v18);
  swift_willThrow();
}

{
  outlined init with copy of Any(a1, v29);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull);
  v10 = swift_dynamicCast();
  v11 = v10;
  if (v10)
  {
    goto LABEL_2;
  }

  v30 = a5;
  outlined init with copy of Any(a1, v29);
  v12 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v13 = v28;
  if (*MEMORY[0x1E695E4D0])
  {
    v14 = v28 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v14 = 0;
  }

  if (v14 || *MEMORY[0x1E695E4C0] && v28 == *MEMORY[0x1E695E4C0])
  {

LABEL_11:
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v16;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v17 = v12;
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6AF8], v15);
    swift_willThrow();
    return;
  }

  v18 = [v28 *a2];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a3];
  v20 = static NSObject.== infix(_:_:)();

  if (v20)
  {
LABEL_2:

    v29[0] = v11;
    return;
  }

  v21 = type metadata accessor for DecodingError();
  swift_allocError();
  v23 = v22;
  swift_beginAccess();

  _StringGuts.grow(_:)(43);

  v24 = [v28 description];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  MEMORY[0x18D00C9B0](v25, v27);

  MEMORY[0x18D00C9B0](0xD000000000000012, 0x800000018CD46840);
  MEMORY[0x18D00C9B0](a4, v30);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6B00], v21);
  swift_willThrow();
}

unint64_t lazy protocol witness table accessor for type _JSONUnkeyedDecodingContainer and conformance _JSONUnkeyedDecodingContainer()
{
  result = lazy protocol witness table cache variable for type _JSONUnkeyedDecodingContainer and conformance _JSONUnkeyedDecodingContainer;
  if (!lazy protocol witness table cache variable for type _JSONUnkeyedDecodingContainer and conformance _JSONUnkeyedDecodingContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _JSONUnkeyedDecodingContainer and conformance _JSONUnkeyedDecodingContainer);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = type metadata accessor for _ContiguousArrayStorage();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t outlined destroy of (positiveInfinity: String, negativeInfinity: String, nan: String)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (key: String, value: Any)()
{
  if (!lazy cache variable for type metadata for (key: String, value: Any))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: String, value: Any));
    }
  }
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t outlined consume of DictionaryDecoder.NonConformingFloatDecodingStrategy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _JSONUnkeyedEncodingContainer and conformance _JSONUnkeyedEncodingContainer()
{
  result = lazy protocol witness table cache variable for type _JSONUnkeyedEncodingContainer and conformance _JSONUnkeyedEncodingContainer;
  if (!lazy protocol witness table cache variable for type _JSONUnkeyedEncodingContainer and conformance _JSONUnkeyedEncodingContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _JSONUnkeyedEncodingContainer and conformance _JSONUnkeyedEncodingContainer);
  }

  return result;
}

void type metadata accessor for (String, Any)(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t outlined copy of DictionaryEncoder.NonConformingFloatEncodingStrategy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t destroy for _JSONKeyedEncodingContainer(uint64_t a1)
{
}

void *initializeBufferWithCopyOfBuffer for _JSONKeyedEncodingContainer(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  v4 = v3;

  return a1;
}

void *assignWithCopy for _JSONKeyedEncodingContainer(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  v5 = a1[1];
  a1[1] = v4;
  v6 = v4;

  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for _JSONKeyedEncodingContainer(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

void *initializeBufferWithCopyOfBuffer for _DictionaryKeyedDecodingContainer(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for _DictionaryKeyedDecodingContainer(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for _DictionaryKeyedDecodingContainer(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t destroy for _DictionaryKeyedDecodingContainer()
{
}

void *initializeWithCopy for _JSONUnkeyedDecodingContainer(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for _JSONUnkeyedDecodingContainer(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];
  return a1;
}

uint64_t assignWithTake for _JSONUnkeyedDecodingContainer(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithCopy for _JSONKey(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  return a1;
}

uint64_t assignWithTake for _JSONKey(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void type metadata accessor for (CodingKey, DecodingError.Context)()
{
  if (!lazy cache variable for type metadata for (CodingKey, DecodingError.Context))
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for CodingKey);
    type metadata accessor for DecodingError.Context();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (CodingKey, DecodingError.Context));
    }
  }
}

uint64_t AccessibilityAdaptiveStack.body.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = type metadata accessor for AdaptiveStack();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = *(v1 + 41);
  if (v11 == 2)
  {
    v11 = specialized Environment.wrappedValue.getter(*(v1 + 48), *(v1 + 56));
  }

  MEMORY[0x1EEE9AC00](v11);
  *(&v20 - 4) = v2;
  *(&v20 - 3) = v3;
  v19 = v3;
  AdaptiveStack.init(axis:alignment:spacing:content:)(v12 & 1, v13, v14, v15, v16, partial apply for closure #1 in AccessibilityAdaptiveStack.body.getter);
  static ViewBuilder.buildExpression<A>(_:)(v7, v4, &protocol witness table for AdaptiveStack<A>);
  v17 = *(v5 + 8);
  v17(v7, v4);
  static ViewBuilder.buildExpression<A>(_:)(v10, v4, &protocol witness table for AdaptiveStack<A>);
  return (v17)(v10, v4);
}

uint64_t closure #1 in AccessibilityAdaptiveStack.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v13 = *v12;
  v14 = specialized Environment.wrappedValue.getter(*(v12 + 48), *(a1 + 56));
  v13((v14 | *(a1 + 41)) & 1);
  static ViewBuilder.buildExpression<A>(_:)(v8, a2, a3);
  v15 = *(v6 + 8);
  v15(v8, a2);
  static ViewBuilder.buildExpression<A>(_:)(v11, a2, a3);
  return (v15)(v11, a2);
}

uint64_t EnvironmentValues.isAccessibilityLayout.getter()
{
  lazy protocol witness table accessor for type AccessibilityLayoutKey and conformance AccessibilityLayoutKey();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t destroy for AccessibilityAdaptiveStack(uint64_t a1)
{

  v2 = *(a1 + 48);
  v3 = *(a1 + 56);

  return outlined consume of Environment<Bool>.Content(v2, v3);
}

uint64_t initializeWithCopy for AccessibilityAdaptiveStack(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);

  outlined copy of Environment<Bool>.Content(v4, v5);
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  return a1;
}

uint64_t assignWithCopy for AccessibilityAdaptiveStack(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 41) = *(a2 + 41);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  outlined copy of Environment<Bool>.Content(v6, v7);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  return a1;
}

uint64_t assignWithTake for AccessibilityAdaptiveStack(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 56);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;
  outlined consume of Environment<Bool>.Content(v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityAdaptiveStack(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for AccessibilityAdaptiveStack(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined destroy of WindowLayoutRootView.Proxy(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 < 2)
  {
    if (v1 != 1)
    {
      return result;
    }

LABEL_5:
    v2 = result;
    MEMORY[0x18D011290]();
    return v2;
  }

  if (*result == -1)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t destroy for WindowLayoutRoot(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    MEMORY[0x18D011290](a1);
  }
}

uint64_t initializeWithCopy for WindowLayoutRoot(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    swift_unknownObjectWeakCopyInit();
    *(a1 + 8) = *(a2 + 8);
    v4 = 1;
  }

  else
  {
    *a1 = *a2;
    v4 = *(a2 + 16);
  }

  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for WindowLayoutRoot(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of WindowLayoutRootView.Proxy(a1);
    if (*(a2 + 16) == 1)
    {
      swift_unknownObjectWeakCopyInit();
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 16) = 1;
    }

    else
    {
      v4 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a1 = v4;
    }
  }

  *(a1 + 24) = *(a2 + 3);

  return a1;
}

uint64_t initializeWithTake for WindowLayoutRoot(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    result = swift_unknownObjectWeakTakeInit();
    *(result + 8) = *(a2 + 8);
    v3 = 1;
  }

  else
  {
    *result = *a2;
    v3 = *(a2 + 16);
  }

  *(result + 16) = v3;
  *(result + 24) = *(a2 + 24);
  return result;
}

uint64_t assignWithTake for WindowLayoutRoot(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of WindowLayoutRootView.Proxy(a1);
    if (*(a2 + 16) == 1)
    {
      swift_unknownObjectWeakTakeInit();
      *(a1 + 8) = *(a2 + 8);
      v4 = 1;
    }

    else
    {
      *a1 = *a2;
      v4 = *(a2 + 16);
    }

    *(a1 + 16) = v4;
  }

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t destroy for WindowLayoutRootView.Proxy(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >= 2)
  {
    v1 = *result + 2;
  }

  if (v1 == 1)
  {
    JUMPOUT(0x18D011290);
  }

  return result;
}

uint64_t assignWithCopy for WindowLayoutRootView.Proxy(uint64_t result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = *(result + 16);
    if (v3 >= 2)
    {
      v3 = *result + 2;
    }

    if (v3 == 1)
    {
      v4 = result;
      MEMORY[0x18D011290]();
      result = v4;
    }

    v5 = *(a2 + 16);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      result = swift_unknownObjectWeakCopyInit();
      *(result + 8) = a2[1];
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = *a2;
      *(result + 8) = *(a2 + 2);
      *result = v7;
    }

    *(result + 16) = v6;
  }

  return result;
}

uint64_t initializeWithCopy for WindowLayoutRootView.Proxy(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = *(a2 + 16);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  if (v4 == 1)
  {
    result = a4();
    *(result + 8) = *(a2 + 8);
    *(result + 16) = 1;
  }

  else
  {
    *result = *a2;
    *(result + 8) = *(a2 + 8);
    *(result + 16) = 0;
  }

  return result;
}

uint64_t assignWithTake for WindowLayoutRootView.Proxy(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(result + 16);
    if (v3 >= 2)
    {
      v3 = *result + 2;
    }

    if (v3 == 1)
    {
      v4 = result;
      MEMORY[0x18D011290]();
      result = v4;
    }

    v5 = *(a2 + 16);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      result = swift_unknownObjectWeakTakeInit();
      *(result + 8) = *(a2 + 8);
      v6 = 1;
    }

    else
    {
      v6 = 0;
      *result = *a2;
      *(result + 8) = *(a2 + 8);
    }

    *(result + 16) = v6;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WindowLayoutRootView.Proxy(uint64_t a1, unsigned int a2)
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
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WindowLayoutRootView.Proxy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
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

uint64_t getEnumTag for WindowLayoutRootView.Proxy(uint64_t a1)
{
  result = *(a1 + 16);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for WindowLayoutRootView.Proxy(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t View.accessibilityScrollAction(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = lazy protocol witness table accessor for type AccessibilityScrollAction and conformance AccessibilityScrollAction();

  View.accessibilityAction<A>(_:label:image:_:)(v12, 0, 0, 0, 0, 0, partial apply for thunk for @escaping @callee_guaranteed (@unowned Edge) -> (), v10, a5, a3, &type metadata for AccessibilityScrollAction, a4, v11);
}

unint64_t lazy protocol witness table accessor for type AccessibilityScrollAction and conformance AccessibilityScrollAction()
{
  result = lazy protocol witness table cache variable for type AccessibilityScrollAction and conformance AccessibilityScrollAction;
  if (!lazy protocol witness table cache variable for type AccessibilityScrollAction and conformance AccessibilityScrollAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityScrollAction and conformance AccessibilityScrollAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityScrollAction and conformance AccessibilityScrollAction;
  if (!lazy protocol witness table cache variable for type AccessibilityScrollAction and conformance AccessibilityScrollAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityScrollAction and conformance AccessibilityScrollAction);
  }

  return result;
}

uint64_t ModifiedContent<>.accessibilityScrollAction(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = lazy protocol witness table accessor for type AccessibilityScrollAction and conformance AccessibilityScrollAction();

  ModifiedContent<>.accessibilityAction<A>(_:label:image:_:)(v10, 0, 0, 0, 0, 0, thunk for @escaping @callee_guaranteed (@unowned Edge) -> ()partial apply, v8, a4, a3, &type metadata for AccessibilityScrollAction, v9);
}

unint64_t instantiation function for generic protocol witness table for AccessibilityScrollAction(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityScrollAction and conformance AccessibilityScrollAction();
  *(a1 + 8) = result;
  return result;
}

uint64_t View.fileDialogDefaultDirectory(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.fileDialogDefaultDirectory.setter(uint64_t a1)
{
  type metadata accessor for URL?();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  outlined init with copy of URL?(a1, &v10 - v7);
  outlined init with copy of URL?(v8, v5);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogDefaultDirectoryKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogDefaultDirectoryKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogDefaultDirectoryKey>);

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of Predicate<Pack{URL}>?(a1, type metadata accessor for URL?);
  return outlined destroy of Predicate<Pack{URL}>?(v8, type metadata accessor for URL?);
}

uint64_t View.fileDialogCustomizationID(_:)()
{
  swift_getKeyPath();

  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.fileDialogCustomizationID.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

double key path getter for EnvironmentValues.fileDialogCustomizationID : EnvironmentValues@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey>);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.fileDialogCustomizationID : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t View.fileDialogMessage(_:)()
{
  return View.fileDialogMessage(_:)();
}

{
  return View.fileDialogMessage(_:)();
}

{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

{
  swift_getKeyPath();

  v0 = Text.init(_:tableName:bundle:comment:)();
  v2 = v1;
  v4 = v3 & 1;
  View.environment<A>(_:_:)();

  outlined consume of Text.Storage(v0, v2, v4);
}

uint64_t View.fileDialogMessage<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return View.fileDialogMessage<A>(_:)(a1, a2, a3);
}

{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v5 + 16))(v7, a1, a3);
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v14[0] = v8;
  v14[1] = v9;
  LOBYTE(v7) = v11 & 1;
  v14[2] = v11 & 1;
  v14[3] = v12;
  View.environment<A>(_:_:)();

  outlined consume of Text.Storage(v8, v10, v7);
}

uint64_t View.fileDialogConfirmationLabel(_:)()
{
  return View.fileDialogMessage(_:)();
}

{
  return View.fileDialogMessage(_:)();
}

uint64_t View.fileExporterFilenameLabel(_:)()
{
  return View.fileDialogMessage(_:)();
}

{
  return View.fileDialogMessage(_:)();
}

uint64_t EnvironmentValues.fileDialogMessage.getter(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (*(v4 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a1);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a4, a1);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a1);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a4, a1);
    PropertyList.subscript.getter();
  }

  return v8;
}

double key path getter for EnvironmentValues.fileDialogMessage : EnvironmentValues@<D0>(uint64_t a1@<X0>, unint64_t *a2@<X3>, unint64_t *a3@<X6>, _OWORD *a4@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a2);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a3, a2);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a2);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a3, a2);
    PropertyList.subscript.getter();
  }

  result = *&v8;
  *a4 = v8;
  a4[1] = v9;
  return result;
}

uint64_t key path setter for EnvironmentValues.fileDialogMessage : EnvironmentValues(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, unint64_t *a8)
{
  v10 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a5);

  outlined copy of Text?(v10, v11, v13, v12);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a8, a5);
  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t View.fileDialogURLEnabled(_:)(uint64_t a1)
{
  type metadata accessor for Predicate<Pack{URL}>?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  type metadata accessor for Predicate<Pack{URL}>();
  v6 = v5;
  v7 = *(v5 - 8);
  (*(v7 + 16))(v4, a1, v5);
  (*(v7 + 56))(v4, 0, 1, v6);
  View.environment<A>(_:_:)();

  return outlined destroy of Predicate<Pack{URL}>?(v4, type metadata accessor for Predicate<Pack{URL}>?);
}

uint64_t key path getter for EnvironmentValues.fileDialogDefaultDirectory : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6, unint64_t *a7)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a4);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a7, a4);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a4);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a7, a4);

    return PropertyList.subscript.getter();
  }
}

uint64_t key path setter for EnvironmentValues.fileDialogDefaultDirectory : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, char *, double), uint64_t (*a7)(char *))
{
  v10 = a5(0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v15 - v12;
  a6(a1, &v15 - v12, v11);
  return a7(v13);
}

uint64_t EnvironmentValues.fileDialogURLEnabled.setter(uint64_t a1)
{
  type metadata accessor for Predicate<Pack{URL}>?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  outlined init with copy of Predicate<Pack{URL}>?(a1, &v10 - v7);
  outlined init with copy of Predicate<Pack{URL}>?(v8, v5);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogURLEnabledKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogURLEnabledKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogURLEnabledKey>);

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of Predicate<Pack{URL}>?(a1, type metadata accessor for Predicate<Pack{URL}>?);
  return outlined destroy of Predicate<Pack{URL}>?(v8, type metadata accessor for Predicate<Pack{URL}>?);
}

uint64_t View.fileDialogImportsUnresolvedAliases(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.fileDialogImportsUnresolvedAliases.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t key path getter for EnvironmentValues.fileDialogImportsUnresolvedAliases : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.fileDialogImportsUnresolvedAliases : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t View.fileDialogBrowserOptions(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.fileDialogBrowserOptions.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey>);

    return PropertyList.subscript.getter();
  }
}

uint64_t key path getter for EnvironmentValues.fileDialogBrowserOptions : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.fileDialogBrowserOptions : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

unint64_t lazy protocol witness table accessor for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions()
{
  result = lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions;
  if (!lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions;
  if (!lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions;
  if (!lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions;
  if (!lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy10Foundation3URLVSgGGAaBHPxAaBHD1__AkA0cI0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(255);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<URL?> and conformance _EnvironmentKeyWritingModifier<A>(a3, a4);
  return swift_getWitnessTable();
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<URL?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for FileDialogConfiguration()
{
  type metadata accessor for Predicate<Pack{URL}>?(319, &lazy cache variable for type metadata for Environment<URL?>.Content, type metadata accessor for URL?, MEMORY[0x1E697DCB8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Predicate<Pack{URL}>?(319, &lazy cache variable for type metadata for Environment<Predicate<Pack{URL}>?>.Content, type metadata accessor for Predicate<Pack{URL}>?, MEMORY[0x1E697DCB8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Optional();
      if (v2 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

void *initializeBufferWithCopyOfBuffer for FileDialogConfiguration(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84))
  {
    v8 = *(v7 + 64);
  }

  else
  {
    v8 = *(v7 + 64) + 1;
  }

  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  type metadata accessor for Predicate<Pack{URL}>();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = v12 & 0xF8;
  if (*(v11 + 84))
  {
    v14 = *(v11 + 64);
  }

  else
  {
    v14 = *(v11 + 64) + 1;
  }

  v85 = *(a3 + 24);
  v15 = *(v85 - 8);
  if (v14 <= 8)
  {
    v16 = 8;
  }

  else
  {
    v16 = v14;
  }

  v17 = *(v15 + 80);
  v18 = *(v15 + 84);
  v84 = *(v85 - 8);
  v19 = *(v15 + 64);
  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + 1;
  }

  v21 = v17 | *(v7 + 80) & 0xF8 | v13;
  if (((v17 | v12 | *(v7 + 80)) & 0x100000) != 0 || (((-9 - ((((((((v9 & 0xFFFFFFFFFFFFFFF8) + (v13 | 7) + 145) & ~(v13 | 7)) + v16 + 1 + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + v17)) | v17) - v20 >= 0xFFFFFFFFFFFFFFE7 ? (v22 = v21 > 7) : (v22 = 1), v22))
  {
    v27 = *a2;
    *a1 = *a2;
    v28 = v27 + (((v21 | 7) + 16) & ~(v21 | 7));

    return v28;
  }

  v23 = *(a2 + v9);
  v24 = v23 - 2;
  if (v23 >= 2)
  {
    if (v9 <= 3)
    {
      v25 = v9;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *a2;
        if (v9 >= 4)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v25 == 3)
        {
          v26 = *a2 | (*(a2 + 2) << 16);
          if (v9 < 4)
          {
            goto LABEL_37;
          }

LABEL_35:
          v23 = v26 + 2;
          goto LABEL_38;
        }

        v26 = *a2;
        if (v9 >= 4)
        {
          goto LABEL_35;
        }
      }

LABEL_37:
      v23 = (v26 | (v24 << (8 * v9))) + 2;
      goto LABEL_38;
    }

    if (!v25)
    {
      goto LABEL_38;
    }

    v26 = *a2;
    if (v9 < 4)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

LABEL_38:
  __n = v14;
  v80 = v20;
  v81 = v16 + 1;
  v82 = v10;
  if (v23 == 1)
  {
    if ((*(v7 + 48))(a2, 1, v6))
    {
      memcpy(a1, a2, v8);
    }

    else
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
    }

    *(a1 + v9) = 1;
  }

  else
  {
    *a1 = *a2;
    *(a1 + v9) = 0;
  }

  v83 = a1;
  v29 = a1 + v9 + 1;
  v30 = a2 + v9 + 1;
  v31 = (v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = *(v32 + 16);
  outlined copy of Environment<String?>.Content(*v32, v34, v35);
  *v31 = v33;
  *(v31 + 8) = v34;
  *(v31 + 16) = v35;
  v36 = (v29 + 31) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v30 + 31) & 0xFFFFFFFFFFFFFFF8;
  v38 = *v37;
  v39 = *(v37 + 8);
  v40 = *(v37 + 16);
  v41 = *(v37 + 24);
  v42 = *(v37 + 32);
  outlined copy of Environment<Text?>.Content(*v37, v39, v40, v41, v42);
  *v36 = v38;
  *(v36 + 8) = v39;
  *(v36 + 16) = v40;
  *(v36 + 24) = v41;
  *(v36 + 32) = v42;
  v43 = (v29 + 71) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v30 + 71) & 0xFFFFFFFFFFFFFFF8;
  v45 = *v44;
  v46 = *(v44 + 8);
  v47 = *(v44 + 16);
  v48 = *(v44 + 24);
  v49 = *(v44 + 32);
  outlined copy of Environment<Text?>.Content(*v44, v46, v47, v48, v49);
  *v43 = v45;
  *(v43 + 8) = v46;
  *(v43 + 16) = v47;
  *(v43 + 24) = v48;
  *(v43 + 32) = v49;
  v50 = (v29 + 111) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v30 + 111) & 0xFFFFFFFFFFFFFFF8;
  v52 = *v51;
  v53 = *(v51 + 8);
  v54 = *(v51 + 16);
  v55 = *(v51 + 24);
  v56 = *(v51 + 32);
  outlined copy of Environment<Text?>.Content(*v51, v53, v54, v55, v56);
  *v50 = v52;
  *(v50 + 8) = v53;
  *(v50 + 16) = v54;
  *(v50 + 24) = v55;
  *(v50 + 32) = v56;
  v57 = ((v29 + 151) & 0xFFFFFFFFFFFFFFF8);
  v58 = ((v30 + 151) & 0xFFFFFFFFFFFFFFF8);
  v59 = v58[v16];
  v60 = v59 - 2;
  if (v59 >= 2)
  {
    if (v16 <= 3)
    {
      v61 = v16;
    }

    else
    {
      v61 = 4;
    }

    v62 = v82;
    if (v61 <= 1)
    {
      if (!v61)
      {
        goto LABEL_60;
      }

      v63 = *v58;
      if (v16 < 4)
      {
LABEL_71:
        if ((v63 | (v60 << (8 * v16))) != 0xFFFFFFFF)
        {
          goto LABEL_54;
        }

LABEL_61:
        if ((*(v11 + 48))(v58, 1, v62))
        {
          memcpy(((v29 + 151) & 0xFFFFFFFFFFFFFFF8), v58, __n);
        }

        else
        {
          (*(v11 + 16))((v29 + 151) & 0xFFFFFFFFFFFFFFF8, v58, v62);
          (*(v11 + 56))((v29 + 151) & 0xFFFFFFFFFFFFFFF8, 0, 1, v62);
        }

        *(v57 + v16) = 1;
        goto LABEL_65;
      }
    }

    else if (v61 == 2)
    {
      v63 = *v58;
      if (v16 < 4)
      {
        goto LABEL_71;
      }
    }

    else if (v61 == 3)
    {
      v63 = *v58 | (v58[2] << 16);
      if (v16 < 4)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v63 = *v58;
      if (v16 < 4)
      {
        goto LABEL_71;
      }
    }

    v59 = v63 + 2;
LABEL_60:
    if (v59 == 1)
    {
      goto LABEL_61;
    }

    goto LABEL_54;
  }

  v62 = v82;
  if (v59 == 1)
  {
    goto LABEL_61;
  }

LABEL_54:
  *v57 = *v58;
  *(v57 + v16) = 0;

LABEL_65:
  v64 = (v57 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = &v58[v81 + 7] & 0xFFFFFFFFFFFFFFF8;
  v66 = *v65;
  v67 = *(v65 + 8);
  outlined copy of Environment<Bool>.Content(*v65, v67);
  *v64 = v66;
  *(v64 + 8) = v67;
  v68 = (v57 + v81 + 23) & 0xFFFFFFFFFFFFFFF8;
  v69 = &v58[v81 + 23] & 0xFFFFFFFFFFFFFFF8;
  v70 = *v69;
  v71 = *(v69 + 9);
  v72 = *(v69 + 8);
  outlined copy of Environment<FileDialogBrowserOptions?>.Content(*v69, v72, v71);
  *v68 = v70;
  *(v68 + 8) = v72;
  *(v68 + 9) = v71;
  v73 = ((v69 + 17) & 0xFFFFFFFFFFFFFFF8);
  v75 = *v73;
  v74 = v73 + 1;
  v76 = ((v68 + 17) & 0xFFFFFFFFFFFFFFF8);
  *v76 = v75;
  v77 = v76 + 1;
  if ((*(v84 + 48))(v74, 1, v85))
  {
    memcpy(v77, v74, v80);
  }

  else
  {
    (*(v84 + 16))(v77, v74, v85);
    (*(v84 + 56))(v77, 0, 1, v85);
  }

  return v83;
}

uint64_t outlined copy of Environment<Text?>.Content(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return outlined copy of Text?(result, a2, a3, a4);
  }

  else
  {
  }
}

uint64_t destroy for FileDialogConfiguration(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = a1[v7];
  v9 = v8 - 2;
  if (v8 >= 2)
  {
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
        goto LABEL_21;
      }

      v11 = *a1;
      if (v7 < 4)
      {
LABEL_25:
        if ((v11 | (v9 << (8 * v7))) != 0xFFFFFFFF)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      }
    }

    else if (v10 == 2)
    {
      v11 = *a1;
      if (v7 < 4)
      {
        goto LABEL_25;
      }
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (a1[2] << 16);
      if (v7 < 4)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v11 = *a1;
      if (v7 < 4)
      {
        goto LABEL_25;
      }
    }

    v8 = v11 + 2;
  }

LABEL_21:
  if (v8 != 1)
  {
LABEL_26:

    goto LABEL_27;
  }

LABEL_22:
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

LABEL_27:
  v12 = &a1[v7];
  outlined consume of Environment<String?>.Content(*((v12 + 8) & 0xFFFFFFFFFFFFFFF8), *(((v12 + 8) & 0xFFFFFFFFFFFFFFF8) + 8), *(((v12 + 8) & 0xFFFFFFFFFFFFFFF8) + 16));
  outlined consume of Environment<Text?>.Content(*((v12 + 32) & 0xFFFFFFFFFFFFFFF8), *(((v12 + 32) & 0xFFFFFFFFFFFFFFF8) + 8), *(((v12 + 32) & 0xFFFFFFFFFFFFFFF8) + 16), *(((v12 + 32) & 0xFFFFFFFFFFFFFFF8) + 24), *(((v12 + 32) & 0xFFFFFFFFFFFFFFF8) + 32));
  outlined consume of Environment<Text?>.Content(*((v12 + 72) & 0xFFFFFFFFFFFFFFF8), *(((v12 + 72) & 0xFFFFFFFFFFFFFFF8) + 8), *(((v12 + 72) & 0xFFFFFFFFFFFFFFF8) + 16), *(((v12 + 72) & 0xFFFFFFFFFFFFFFF8) + 24), *(((v12 + 72) & 0xFFFFFFFFFFFFFFF8) + 32));
  v13 = (v12 + 112) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<Text?>.Content(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24), *(v13 + 32));
  type metadata accessor for Predicate<Pack{URL}>();
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 80) & 0xF8 | 7;
  v18 = ((v13 + v17 + 33) & ~v17);
  v19 = *(v16 + 64);
  if (!*(v16 + 84))
  {
    ++v19;
  }

  if (v19 <= 8)
  {
    v20 = 8;
  }

  else
  {
    v20 = v19;
  }

  v21 = v18[v20];
  v22 = v21 - 2;
  if (v21 >= 2)
  {
    if (v20 <= 3)
    {
      v23 = v20;
    }

    else
    {
      v23 = 4;
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        goto LABEL_46;
      }

      v24 = *v18;
    }

    else if (v23 == 2)
    {
      v24 = *v18;
    }

    else if (v23 == 3)
    {
      v24 = *v18 | (v18[2] << 16);
    }

    else
    {
      v24 = *v18;
    }

    v25 = (v24 | (v22 << (8 * v20))) + 2;
    v21 = v24 + 2;
    if (v20 < 4)
    {
      v21 = v25;
    }
  }

LABEL_46:
  if (v21 == 1)
  {
    if (!(*(v16 + 48))(v18, 1, v14))
    {
      (*(v16 + 8))(v18, v15);
    }
  }

  else
  {
  }

  outlined consume of Environment<Bool>.Content(*(&v18[v20 + 8] & 0xFFFFFFFFFFFFFFF8), *((&v18[v20 + 8] & 0xFFFFFFFFFFFFFFF8) + 8));
  v26 = &v18[v20 + 24] & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<FileDialogBrowserOptions?>.Content(*v26, *(v26 + 8), *(v26 + 9));
  v27 = (v26 + 17) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(a2 + 24);
  v29 = *(v28 - 8);
  v30 = *(v29 + 80);
  v31 = v27 + v30 + 8;
  v34 = v29;
  result = (*(v29 + 48))(v31 & ~v30, 1, v28);
  if (!result)
  {
    v33 = *(v34 + 8);

    return v33(v31 & ~v30, v28);
  }

  return result;
}

uint64_t outlined consume of Environment<Text?>.Content(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return outlined consume of Text?(result, a2, a3, a4);
  }

  else
  {
  }
}

void *initializeWithCopy for FileDialogConfiguration(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84))
  {
    v8 = *(v7 + 64);
  }

  else
  {
    v8 = *(v7 + 64) + 1;
  }

  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = a2[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_21;
      }

      v13 = *a2;
      if (v9 < 4)
      {
LABEL_27:
        if ((v13 | (v11 << (8 * v9))) != 0xFFFFFFFF)
        {
          goto LABEL_28;
        }

        goto LABEL_22;
      }
    }

    else if (v12 == 2)
    {
      v13 = *a2;
      if (v9 < 4)
      {
        goto LABEL_27;
      }
    }

    else if (v12 == 3)
    {
      v13 = *a2 | (a2[2] << 16);
      if (v9 < 4)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v13 = *a2;
      if (v9 < 4)
      {
        goto LABEL_27;
      }
    }

    v10 = v13 + 2;
  }

LABEL_21:
  if (v10 != 1)
  {
LABEL_28:
    *a1 = *a2;
    *(a1 + v9) = 0;

    goto LABEL_29;
  }

LABEL_22:
  if ((*(v7 + 48))(a2, 1, v6))
  {
    memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *(a1 + v9) = 1;
LABEL_29:
  v14 = a1 + v9 + 1;
  v15 = &a2[v9 + 1];
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v17;
  v19 = *(v17 + 8);
  v20 = *(v17 + 16);
  outlined copy of Environment<String?>.Content(*v17, v19, v20);
  *v16 = v18;
  *(v16 + 8) = v19;
  *(v16 + 16) = v20;
  v21 = (v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  v24 = *(v22 + 8);
  v25 = *(v22 + 16);
  v26 = *(v22 + 24);
  v27 = *(v22 + 32);
  outlined copy of Environment<Text?>.Content(*v22, v24, v25, v26, v27);
  *v21 = v23;
  *(v21 + 8) = v24;
  *(v21 + 16) = v25;
  *(v21 + 24) = v26;
  *(v21 + 32) = v27;
  v28 = (v14 + 71) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v15 + 71) & 0xFFFFFFFFFFFFFFF8;
  v30 = *v29;
  v31 = *(v29 + 8);
  v32 = *(v29 + 16);
  v33 = *(v29 + 24);
  v34 = *(v29 + 32);
  outlined copy of Environment<Text?>.Content(*v29, v31, v32, v33, v34);
  *v28 = v30;
  *(v28 + 8) = v31;
  *(v28 + 16) = v32;
  *(v28 + 24) = v33;
  *(v28 + 32) = v34;
  v35 = (v14 + 111) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v15 + 111) & 0xFFFFFFFFFFFFFFF8;
  v37 = *v36;
  v38 = *(v36 + 8);
  v39 = *(v36 + 16);
  v40 = *(v36 + 24);
  v41 = *(v36 + 32);
  outlined copy of Environment<Text?>.Content(*v36, v38, v39, v40, v41);
  *v35 = v37;
  *(v35 + 8) = v38;
  *(v35 + 16) = v39;
  *(v35 + 24) = v40;
  *(v35 + 32) = v41;
  type metadata accessor for Predicate<Pack{URL}>();
  v43 = v42;
  v44 = *(v42 - 8);
  v45 = *(v44 + 80) & 0xF8;
  v46 = ~v45 & 0xFFFFFFFFFFFFFFF8;
  v45 += 40;
  v47 = ((v45 + v35) & v46);
  v48 = ((v45 + v36) & v46);
  if (*(v44 + 84))
  {
    v49 = *(*(v42 - 8) + 64);
  }

  else
  {
    v49 = *(*(v42 - 8) + 64) + 1;
  }

  if (v49 <= 8)
  {
    v50 = 8;
  }

  else
  {
    v50 = v49;
  }

  v51 = v48[v50];
  v52 = v51 - 2;
  if (v51 < 2)
  {
    goto LABEL_49;
  }

  if (v50 <= 3)
  {
    v53 = v50;
  }

  else
  {
    v53 = 4;
  }

  if (v53 <= 1)
  {
    if (!v53)
    {
      goto LABEL_49;
    }

    v54 = *v48;
  }

  else if (v53 == 2)
  {
    v54 = *v48;
  }

  else if (v53 == 3)
  {
    v54 = *v48 | (v48[2] << 16);
  }

  else
  {
    v54 = *v48;
  }

  v55 = (v54 | (v52 << (8 * v50))) + 2;
  v51 = v54 + 2;
  if (v50 < 4)
  {
    v51 = v55;
  }

LABEL_49:
  if (v51 == 1)
  {
    if ((*(v44 + 48))(v48, 1, v42))
    {
      memcpy(v47, v48, v49);
    }

    else
    {
      (*(v44 + 16))(v47, v48, v43);
      (*(v44 + 56))(v47, 0, 1, v43);
    }

    *(v47 + v50) = 1;
  }

  else
  {
    *v47 = *v48;
    *(v47 + v50) = 0;
  }

  v56 = v47 + v50 + 1;
  v57 = &v48[v50 + 1];
  v58 = (v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = *v59;
  v61 = *(v59 + 8);
  outlined copy of Environment<Bool>.Content(*v59, v61);
  *v58 = v60;
  *(v58 + 8) = v61;
  v62 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v57 + 23) & 0xFFFFFFFFFFFFFFF8;
  v64 = *v63;
  v65 = *(v63 + 9);
  LOBYTE(v56) = *(v63 + 8);
  outlined copy of Environment<FileDialogBrowserOptions?>.Content(*v63, v56, v65);
  *v62 = v64;
  *(v62 + 8) = v56;
  *(v62 + 9) = v65;
  v66 = ((v62 + 17) & 0xFFFFFFFFFFFFFFF8);
  v67 = ((v63 + 17) & 0xFFFFFFFFFFFFFFF8);
  *v66 = *v67;
  v68 = *(a3 + 24);
  v69 = *(v68 - 8);
  v70 = *(v69 + 80);
  v71 = v66 + v70 + 8;
  v72 = v67 + v70 + 8;
  if ((*(v69 + 48))(v72 & ~v70, 1, v68))
  {
    if (*(v69 + 84))
    {
      v73 = *(v69 + 64);
    }

    else
    {
      v73 = *(v69 + 64) + 1;
    }

    memcpy((v71 & ~v70), (v72 & ~v70), v73);
  }

  else
  {
    (*(v69 + 16))(v71 & ~v70, v72 & ~v70, v68);
    (*(v69 + 56))(v71 & ~v70, 0, 1, v68);
  }

  return a1;
}

unsigned __int8 *assignWithCopy for FileDialogConfiguration(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    goto LABEL_50;
  }

  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84))
  {
    v8 = *(v7 + 64);
  }

  else
  {
    v8 = *(v7 + 64) + 1;
  }

  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = a1[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = *a1;
      if (v9 < 4)
      {
LABEL_26:
        if ((v13 | (v11 << (8 * v9))) != 0xFFFFFFFF)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    else if (v12 == 2)
    {
      v13 = *a1;
      if (v9 < 4)
      {
        goto LABEL_26;
      }
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
      if (v9 < 4)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v13 = *a1;
      if (v9 < 4)
      {
        goto LABEL_26;
      }
    }

    v10 = v13 + 2;
  }

LABEL_22:
  if (v10 != 1)
  {
LABEL_27:

    goto LABEL_28;
  }

LABEL_23:
  if (!(*(v7 + 48))(a1, 1, v6))
  {
    (*(v7 + 8))(a1, v6);
  }

LABEL_28:
  v14 = a2[v9];
  v15 = v14 - 2;
  if (v14 < 2)
  {
    goto LABEL_42;
  }

  if (v9 <= 3)
  {
    v16 = v9;
  }

  else
  {
    v16 = 4;
  }

  if (v16 <= 1)
  {
    if (!v16)
    {
      goto LABEL_42;
    }

    v17 = *a2;
    if (v9 < 4)
    {
LABEL_48:
      if ((v17 | (v15 << (8 * v9))) != 0xFFFFFFFF)
      {
        goto LABEL_49;
      }

      goto LABEL_43;
    }
  }

  else if (v16 == 2)
  {
    v17 = *a2;
    if (v9 < 4)
    {
      goto LABEL_48;
    }
  }

  else if (v16 == 3)
  {
    v17 = *a2 | (a2[2] << 16);
    if (v9 < 4)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v17 = *a2;
    if (v9 < 4)
    {
      goto LABEL_48;
    }
  }

  v14 = v17 + 2;
LABEL_42:
  if (v14 != 1)
  {
LABEL_49:
    *a1 = *a2;
    a1[v9] = 0;

    goto LABEL_50;
  }

LABEL_43:
  if ((*(v7 + 48))(a2, 1, v6))
  {
    memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  a1[v9] = 1;
LABEL_50:
  v18 = *(type metadata accessor for URL() - 8);
  if (*(v18 + 84))
  {
    v19 = *(v18 + 64);
  }

  else
  {
    v19 = *(v18 + 64) + 1;
  }

  if (v19 <= 8)
  {
    v19 = 8;
  }

  v20 = v19 + 1;
  v21 = &a1[v20];
  v22 = &a2[v20];
  v23 = &a1[v20 + 7] & 0xFFFFFFFFFFFFFFF8;
  v24 = &a2[v20 + 7] & 0xFFFFFFFFFFFFFFF8;
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  outlined copy of Environment<String?>.Content(*v24, v26, v27);
  v28 = *v23;
  v29 = *(v23 + 8);
  v30 = *(v23 + 16);
  *v23 = v25;
  *(v23 + 8) = v26;
  *(v23 + 16) = v27;
  outlined consume of Environment<String?>.Content(v28, v29, v30);
  v31 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = *(v32 + 16);
  v36 = *(v32 + 24);
  v37 = *(v32 + 32);
  outlined copy of Environment<Text?>.Content(*v32, v34, v35, v36, v37);
  v38 = *v31;
  v39 = *(v31 + 8);
  v40 = *(v31 + 16);
  v41 = *(v31 + 24);
  v42 = *(v31 + 32);
  *v31 = v33;
  *(v31 + 8) = v34;
  *(v31 + 16) = v35;
  *(v31 + 24) = v36;
  *(v31 + 32) = v37;
  outlined consume of Environment<Text?>.Content(v38, v39, v40, v41, v42);
  v43 = (v21 + 71) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v22 + 71) & 0xFFFFFFFFFFFFFFF8;
  v45 = *v44;
  v46 = *(v44 + 8);
  v47 = *(v44 + 16);
  v48 = *(v44 + 24);
  v49 = *(v44 + 32);
  outlined copy of Environment<Text?>.Content(*v44, v46, v47, v48, v49);
  v50 = *v43;
  v51 = *(v43 + 8);
  v52 = *(v43 + 16);
  v53 = *(v43 + 24);
  v54 = *(v43 + 32);
  *v43 = v45;
  *(v43 + 8) = v46;
  *(v43 + 16) = v47;
  *(v43 + 24) = v48;
  *(v43 + 32) = v49;
  outlined consume of Environment<Text?>.Content(v50, v51, v52, v53, v54);
  v55 = (v21 + 111) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v22 + 111) & 0xFFFFFFFFFFFFFFF8;
  v57 = *v56;
  v58 = *(v56 + 8);
  v59 = *(v56 + 16);
  v60 = *(v56 + 24);
  v61 = *(v56 + 32);
  outlined copy of Environment<Text?>.Content(*v56, v58, v59, v60, v61);
  v62 = *v55;
  v63 = *(v55 + 8);
  v64 = *(v55 + 16);
  v65 = *(v55 + 24);
  v66 = *(v55 + 32);
  *v55 = v57;
  *(v55 + 8) = v58;
  *(v55 + 16) = v59;
  *(v55 + 24) = v60;
  *(v55 + 32) = v61;
  outlined consume of Environment<Text?>.Content(v62, v63, v64, v65, v66);
  type metadata accessor for Predicate<Pack{URL}>();
  v68 = *(v67 - 8);
  v69 = v68;
  v70 = *(v68 + 84);
  v71 = *(v68 + 80) & 0xF8;
  v72 = ~v71 & 0xFFFFFFFFFFFFFFF8;
  v71 += 40;
  v73 = ((v71 + v55) & v72);
  v74 = ((v71 + v56) & v72);
  v75 = *(v68 + 64);
  if (v73 != v74)
  {
    v76 = v67;
    if (v70)
    {
      v77 = *(v68 + 64);
    }

    else
    {
      v77 = v75 + 1;
    }

    if (v77 <= 8)
    {
      v78 = 8;
    }

    else
    {
      v78 = v77;
    }

    v79 = v73[v78];
    v80 = v79 - 2;
    if (v79 >= 2)
    {
      if (v78 <= 3)
      {
        v81 = v78;
      }

      else
      {
        v81 = 4;
      }

      if (v81 <= 1)
      {
        if (!v81)
        {
          goto LABEL_76;
        }

        v82 = *v73;
        if (v78 < 4)
        {
LABEL_80:
          if ((v82 | (v80 << (8 * v78))) != 0xFFFFFFFF)
          {
            goto LABEL_81;
          }

          goto LABEL_77;
        }
      }

      else if (v81 == 2)
      {
        v82 = *v73;
        if (v78 < 4)
        {
          goto LABEL_80;
        }
      }

      else if (v81 == 3)
      {
        v82 = *v73 | (v73[2] << 16);
        if (v78 < 4)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v82 = *v73;
        if (v78 < 4)
        {
          goto LABEL_80;
        }
      }

      v79 = v82 + 2;
    }

LABEL_76:
    if (v79 != 1)
    {
LABEL_81:

      goto LABEL_82;
    }

LABEL_77:
    if (!(*(v69 + 48))(v73, 1, v67))
    {
      (*(v69 + 8))(v73, v76);
    }

LABEL_82:
    v83 = v74[v78];
    v84 = v83 - 2;
    if (v83 < 2)
    {
      goto LABEL_96;
    }

    if (v78 <= 3)
    {
      v85 = v78;
    }

    else
    {
      v85 = 4;
    }

    if (v85 <= 1)
    {
      if (!v85)
      {
        goto LABEL_96;
      }

      v86 = *v74;
      if (v78 < 4)
      {
LABEL_102:
        if ((v86 | (v84 << (8 * v78))) != 0xFFFFFFFF)
        {
          goto LABEL_103;
        }

LABEL_97:
        if ((*(v69 + 48))(v74, 1, v76))
        {
          memcpy(v73, v74, v77);
        }

        else
        {
          (*(v69 + 16))(v73, v74, v76);
          (*(v69 + 56))(v73, 0, 1, v76);
        }

        v73[v78] = 1;
        goto LABEL_104;
      }
    }

    else if (v85 == 2)
    {
      v86 = *v74;
      if (v78 < 4)
      {
        goto LABEL_102;
      }
    }

    else if (v85 == 3)
    {
      v86 = *v74 | (v74[2] << 16);
      if (v78 < 4)
      {
        goto LABEL_102;
      }
    }

    else
    {
      v86 = *v74;
      if (v78 < 4)
      {
        goto LABEL_102;
      }
    }

    v83 = v86 + 2;
LABEL_96:
    if (v83 != 1)
    {
LABEL_103:
      *v73 = *v74;
      v73[v78] = 0;

      goto LABEL_104;
    }

    goto LABEL_97;
  }

LABEL_104:
  if (v70)
  {
    v87 = v75;
  }

  else
  {
    v87 = v75 + 1;
  }

  if (v87 <= 8)
  {
    v87 = 8;
  }

  v88 = v87 + 1;
  v89 = &v73[v88];
  v90 = &v74[v88];
  v91 = &v73[v88 + 7] & 0xFFFFFFFFFFFFFFF8;
  v92 = &v74[v88 + 7] & 0xFFFFFFFFFFFFFFF8;
  v93 = *v92;
  v94 = *(v92 + 8);
  outlined copy of Environment<Bool>.Content(*v92, v94);
  v95 = *v91;
  v96 = *(v91 + 8);
  *v91 = v93;
  *(v91 + 8) = v94;
  outlined consume of Environment<Bool>.Content(v95, v96);
  v97 = (v89 + 23) & 0xFFFFFFFFFFFFFFF8;
  v98 = (v90 + 23) & 0xFFFFFFFFFFFFFFF8;
  v99 = *v98;
  v100 = *(v98 + 9);
  LOBYTE(v89) = *(v98 + 8);
  outlined copy of Environment<FileDialogBrowserOptions?>.Content(*v98, v89, v100);
  v101 = *v97;
  v102 = *(v97 + 9);
  *v97 = v99;
  v103 = *(v97 + 8);
  *(v97 + 8) = v89;
  *(v97 + 9) = v100;
  outlined consume of Environment<FileDialogBrowserOptions?>.Content(v101, v103, v102);
  v104 = ((v97 + 17) & 0xFFFFFFFFFFFFFFF8);
  v105 = ((v98 + 17) & 0xFFFFFFFFFFFFFFF8);
  *v104 = *v105;
  v106 = *(a3 + 24);
  v107 = *(v106 - 8);
  v108 = *(v107 + 80);
  v109 = v104 + v108 + 8;
  v110 = v105 + v108 + 8;
  v111 = *(v107 + 48);
  LODWORD(v99) = v111(v109 & ~v108, 1, v106);
  v112 = v111(v110 & ~v108, 1, v106);
  if (v99)
  {
    if (!v112)
    {
      (*(v107 + 16))(v109 & ~v108, v110 & ~v108, v106);
      (*(v107 + 56))(v109 & ~v108, 0, 1, v106);
      return a1;
    }

    v113 = *(v107 + 84);
    v114 = *(v107 + 64);
  }

  else
  {
    if (!v112)
    {
      (*(v107 + 24))(v109 & ~v108, v110 & ~v108, v106);
      return a1;
    }

    v116 = *(v107 + 8);
    v115 = v107 + 8;
    v116(v109 & ~v108, v106);
    v113 = *(v115 + 76);
    v114 = *(v115 + 56);
  }

  if (v113)
  {
    v117 = v114;
  }

  else
  {
    v117 = v114 + 1;
  }

  memcpy((v109 & ~v108), (v110 & ~v108), v117);
  return a1;
}

void *initializeWithTake for FileDialogConfiguration(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84))
  {
    v8 = *(v7 + 64);
  }

  else
  {
    v8 = *(v7 + 64) + 1;
  }

  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = a2[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_21;
      }

      v13 = *a2;
      if (v9 < 4)
      {
LABEL_26:
        if ((v13 | (v11 << (8 * v9))) != 0xFFFFFFFF)
        {
          goto LABEL_27;
        }

LABEL_22:
        if ((*(v7 + 48))(a2, 1, v6))
        {
          memcpy(a1, a2, v8);
          v14 = 1;
        }

        else
        {
          (*(v7 + 32))(a1, a2, v6);
          v14 = 1;
          (*(v7 + 56))(a1, 0, 1, v6);
        }

        goto LABEL_28;
      }
    }

    else if (v12 == 2)
    {
      v13 = *a2;
      if (v9 < 4)
      {
        goto LABEL_26;
      }
    }

    else if (v12 == 3)
    {
      v13 = *a2 | (a2[2] << 16);
      if (v9 < 4)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v13 = *a2;
      if (v9 < 4)
      {
        goto LABEL_26;
      }
    }

    v10 = v13 + 2;
  }

LABEL_21:
  if (v10 == 1)
  {
    goto LABEL_22;
  }

LABEL_27:
  v14 = 0;
  *a1 = *a2;
LABEL_28:
  *(a1 + v9) = v14;
  v15 = a1 + v9 + 1;
  v16 = &a2[v9 + 1];
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  *(v17 + 16) = *(v18 + 16);
  *v17 = v19;
  v20 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v16 + 31) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  v23 = *(v21 + 16);
  *(v20 + 32) = *(v21 + 32);
  *v20 = v22;
  *(v20 + 16) = v23;
  v24 = (v15 + 71) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v16 + 71) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  v27 = *(v25 + 16);
  *(v24 + 32) = *(v25 + 32);
  *v24 = v26;
  *(v24 + 16) = v27;
  v28 = (v15 + 111) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v16 + 111) & 0xFFFFFFFFFFFFFFF8;
  v30 = *v29;
  v31 = *(v29 + 16);
  *(v28 + 32) = *(v29 + 32);
  *v28 = v30;
  *(v28 + 16) = v31;
  type metadata accessor for Predicate<Pack{URL}>();
  v33 = v32;
  v34 = *(v32 - 8);
  v35 = *(v34 + 80) & 0xF8;
  v36 = ~v35 & 0xFFFFFFFFFFFFFFF8;
  v35 += 40;
  v37 = ((v35 + v28) & v36);
  v38 = ((v35 + v29) & v36);
  if (*(v34 + 84))
  {
    v39 = *(*(v32 - 8) + 64);
  }

  else
  {
    v39 = *(*(v32 - 8) + 64) + 1;
  }

  if (v39 <= 8)
  {
    v40 = 8;
  }

  else
  {
    v40 = v39;
  }

  v41 = v38[v40];
  v42 = v41 - 2;
  if (v41 >= 2)
  {
    if (v40 <= 3)
    {
      v43 = v40;
    }

    else
    {
      v43 = 4;
    }

    if (v43 <= 1)
    {
      if (!v43)
      {
        goto LABEL_48;
      }

      v44 = *v38;
    }

    else if (v43 == 2)
    {
      v44 = *v38;
    }

    else if (v43 == 3)
    {
      v44 = *v38 | (v38[2] << 16);
    }

    else
    {
      v44 = *v38;
    }

    v45 = (v44 | (v42 << (8 * v40))) + 2;
    v41 = v44 + 2;
    if (v40 < 4)
    {
      v41 = v45;
    }
  }

LABEL_48:
  if (v41 == 1)
  {
    if ((*(v34 + 48))(v38, 1, v32))
    {
      memcpy(v37, v38, v39);
      v46 = 1;
    }

    else
    {
      (*(v34 + 32))(v37, v38, v33);
      v46 = 1;
      (*(v34 + 56))(v37, 0, 1, v33);
    }
  }

  else
  {
    v46 = 0;
    *v37 = *v38;
  }

  *(v37 + v40) = v46;
  v47 = v37 + v40 + 1;
  v48 = &v38[v40 + 1];
  v49 = (v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = *v50;
  *(v49 + 8) = *(v50 + 8);
  *v49 = v51;
  v52 = (v47 + 23) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
  v54 = *v53;
  *(v52 + 8) = *(v53 + 8);
  *v52 = v54;
  v55 = ((v52 + 17) & 0xFFFFFFFFFFFFFFF8);
  v56 = ((v53 + 17) & 0xFFFFFFFFFFFFFFF8);
  *v55 = *v56;
  v57 = *(a3 + 24);
  v58 = *(v57 - 8);
  v59 = *(v58 + 80);
  v60 = v55 + v59 + 8;
  v61 = v56 + v59 + 8;
  if ((*(v58 + 48))(v61 & ~v59, 1, v57))
  {
    if (*(v58 + 84))
    {
      v62 = *(v58 + 64);
    }

    else
    {
      v62 = *(v58 + 64) + 1;
    }

    memcpy((v60 & ~v59), (v61 & ~v59), v62);
  }

  else
  {
    (*(v58 + 32))(v60 & ~v59, v61 & ~v59, v57);
    (*(v58 + 56))(v60 & ~v59, 0, 1, v57);
  }

  return a1;
}

unsigned __int8 *assignWithTake for FileDialogConfiguration(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    goto LABEL_50;
  }

  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84))
  {
    v8 = *(v7 + 64);
  }

  else
  {
    v8 = *(v7 + 64) + 1;
  }

  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = a1[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = *a1;
      if (v9 < 4)
      {
LABEL_26:
        if ((v13 | (v11 << (8 * v9))) != 0xFFFFFFFF)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    else if (v12 == 2)
    {
      v13 = *a1;
      if (v9 < 4)
      {
        goto LABEL_26;
      }
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
      if (v9 < 4)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v13 = *a1;
      if (v9 < 4)
      {
        goto LABEL_26;
      }
    }

    v10 = v13 + 2;
  }

LABEL_22:
  if (v10 != 1)
  {
LABEL_27:

    goto LABEL_28;
  }

LABEL_23:
  if (!(*(v7 + 48))(a1, 1, v6))
  {
    (*(v7 + 8))(a1, v6);
  }

LABEL_28:
  v14 = a2[v9];
  v15 = v14 - 2;
  if (v14 < 2)
  {
    goto LABEL_42;
  }

  if (v9 <= 3)
  {
    v16 = v9;
  }

  else
  {
    v16 = 4;
  }

  if (v16 <= 1)
  {
    if (!v16)
    {
      goto LABEL_42;
    }

    v17 = *a2;
    if (v9 < 4)
    {
LABEL_47:
      if ((v17 | (v15 << (8 * v9))) != 0xFFFFFFFF)
      {
        goto LABEL_48;
      }

LABEL_43:
      if ((*(v7 + 48))(a2, 1, v6))
      {
        memcpy(a1, a2, v8);
        v18 = 1;
      }

      else
      {
        (*(v7 + 32))(a1, a2, v6);
        v18 = 1;
        (*(v7 + 56))(a1, 0, 1, v6);
      }

      goto LABEL_49;
    }
  }

  else if (v16 == 2)
  {
    v17 = *a2;
    if (v9 < 4)
    {
      goto LABEL_47;
    }
  }

  else if (v16 == 3)
  {
    v17 = *a2 | (a2[2] << 16);
    if (v9 < 4)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v17 = *a2;
    if (v9 < 4)
    {
      goto LABEL_47;
    }
  }

  v14 = v17 + 2;
LABEL_42:
  if (v14 == 1)
  {
    goto LABEL_43;
  }

LABEL_48:
  v18 = 0;
  *a1 = *a2;
LABEL_49:
  a1[v9] = v18;
LABEL_50:
  v19 = *(type metadata accessor for URL() - 8);
  if (*(v19 + 84))
  {
    v20 = *(v19 + 64);
  }

  else
  {
    v20 = *(v19 + 64) + 1;
  }

  if (v20 <= 8)
  {
    v20 = 8;
  }

  v21 = v20 + 1;
  v22 = &a1[v21];
  v23 = &a2[v21];
  v24 = &a1[v21 + 7] & 0xFFFFFFFFFFFFFFF8;
  v25 = (v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 16);
  v27 = *v24;
  v28 = *(v24 + 8);
  v29 = *(v24 + 16);
  *v24 = *v25;
  *(v24 + 16) = v26;
  outlined consume of Environment<String?>.Content(v27, v28, v29);
  v30 = (v23 + 31) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(v30 + 32);
  v32 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = *(v32 + 16);
  v36 = *(v32 + 24);
  v37 = *(v32 + 32);
  v38 = *(v30 + 16);
  *v32 = *v30;
  *(v32 + 16) = v38;
  *(v32 + 32) = v31;
  outlined consume of Environment<Text?>.Content(v33, v34, v35, v36, v37);
  v39 = (v23 + 71) & 0xFFFFFFFFFFFFFFF8;
  v40 = *(v39 + 32);
  v41 = (v22 + 71) & 0xFFFFFFFFFFFFFFF8;
  v42 = *v41;
  v43 = *(v41 + 8);
  v44 = *(v41 + 16);
  v45 = *(v41 + 24);
  v46 = *(v41 + 32);
  v47 = *(v39 + 16);
  *v41 = *v39;
  *(v41 + 16) = v47;
  *(v41 + 32) = v40;
  outlined consume of Environment<Text?>.Content(v42, v43, v44, v45, v46);
  v48 = (v23 + 111) & 0xFFFFFFFFFFFFFFF8;
  v49 = *(v48 + 32);
  v50 = (v22 + 111) & 0xFFFFFFFFFFFFFFF8;
  v51 = *v50;
  v52 = *(v50 + 8);
  v53 = *(v50 + 16);
  v54 = *(v50 + 24);
  v55 = *(v50 + 32);
  v56 = *(v48 + 16);
  *v50 = *v48;
  *(v50 + 16) = v56;
  *(v50 + 32) = v49;
  outlined consume of Environment<Text?>.Content(v51, v52, v53, v54, v55);
  type metadata accessor for Predicate<Pack{URL}>();
  v58 = *(v57 - 8);
  v59 = v58;
  v60 = *(v58 + 84);
  v61 = *(v58 + 80) & 0xF8;
  v62 = ~v61 & 0xFFFFFFFFFFFFFFF8;
  v61 += 40;
  v63 = ((v61 + v50) & v62);
  v64 = ((v61 + v48) & v62);
  v65 = *(v58 + 64);
  if (v63 != v64)
  {
    v66 = v57;
    if (v60)
    {
      v67 = *(v58 + 64);
    }

    else
    {
      v67 = v65 + 1;
    }

    if (v67 <= 8)
    {
      v68 = 8;
    }

    else
    {
      v68 = v67;
    }

    v69 = v63[v68];
    v70 = v69 - 2;
    if (v69 >= 2)
    {
      if (v68 <= 3)
      {
        v71 = v68;
      }

      else
      {
        v71 = 4;
      }

      if (v71 <= 1)
      {
        if (!v71)
        {
          goto LABEL_76;
        }

        v72 = *v63;
        if (v68 < 4)
        {
LABEL_80:
          if ((v72 | (v70 << (8 * v68))) != 0xFFFFFFFF)
          {
            goto LABEL_81;
          }

          goto LABEL_77;
        }
      }

      else if (v71 == 2)
      {
        v72 = *v63;
        if (v68 < 4)
        {
          goto LABEL_80;
        }
      }

      else if (v71 == 3)
      {
        v72 = *v63 | (v63[2] << 16);
        if (v68 < 4)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v72 = *v63;
        if (v68 < 4)
        {
          goto LABEL_80;
        }
      }

      v69 = v72 + 2;
    }

LABEL_76:
    if (v69 != 1)
    {
LABEL_81:

      goto LABEL_82;
    }

LABEL_77:
    if (!(*(v59 + 48))(v63, 1, v57))
    {
      (*(v59 + 8))(v63, v66);
    }

LABEL_82:
    v73 = v64[v68];
    v74 = v73 - 2;
    if (v73 < 2)
    {
      goto LABEL_96;
    }

    if (v68 <= 3)
    {
      v75 = v68;
    }

    else
    {
      v75 = 4;
    }

    if (v75 <= 1)
    {
      if (!v75)
      {
        goto LABEL_96;
      }

      v76 = *v64;
      if (v68 < 4)
      {
LABEL_101:
        if ((v76 | (v74 << (8 * v68))) != 0xFFFFFFFF)
        {
          goto LABEL_102;
        }

        goto LABEL_97;
      }
    }

    else if (v75 == 2)
    {
      v76 = *v64;
      if (v68 < 4)
      {
        goto LABEL_101;
      }
    }

    else if (v75 == 3)
    {
      v76 = *v64 | (v64[2] << 16);
      if (v68 < 4)
      {
        goto LABEL_101;
      }
    }

    else
    {
      v76 = *v64;
      if (v68 < 4)
      {
        goto LABEL_101;
      }
    }

    v73 = v76 + 2;
LABEL_96:
    if (v73 != 1)
    {
LABEL_102:
      v77 = 0;
      *v63 = *v64;
LABEL_103:
      v63[v68] = v77;
      goto LABEL_104;
    }

LABEL_97:
    if ((*(v59 + 48))(v64, 1, v66))
    {
      memcpy(v63, v64, v67);
      v77 = 1;
    }

    else
    {
      (*(v59 + 32))(v63, v64, v66);
      v77 = 1;
      (*(v59 + 56))(v63, 0, 1, v66);
    }

    goto LABEL_103;
  }

LABEL_104:
  if (v60)
  {
    v78 = v65;
  }

  else
  {
    v78 = v65 + 1;
  }

  if (v78 <= 8)
  {
    v78 = 8;
  }

  v79 = v78 + 1;
  v80 = &v63[v79];
  v81 = &v64[v79];
  v82 = (v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = (v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v84 = *v83;
  LOBYTE(v83) = *(v83 + 8);
  v85 = *v82;
  v86 = *(v82 + 8);
  *v82 = v84;
  *(v82 + 8) = v83;
  outlined consume of Environment<Bool>.Content(v85, v86);
  v87 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
  v88 = (v81 + 23) & 0xFFFFFFFFFFFFFFF8;
  v89 = *(v88 + 8);
  v90 = *(v88 + 9);
  v91 = *v87;
  v92 = *(v87 + 9);
  *v87 = *v88;
  v93 = *(v87 + 8);
  *(v87 + 8) = v89;
  *(v87 + 9) = v90;
  outlined consume of Environment<FileDialogBrowserOptions?>.Content(v91, v93, v92);
  v94 = ((v87 + 17) & 0xFFFFFFFFFFFFFFF8);
  v95 = ((v88 + 17) & 0xFFFFFFFFFFFFFFF8);
  *v94 = *v95;
  v96 = *(a3 + 24);
  v97 = *(v96 - 8);
  v98 = *(v97 + 80);
  v99 = v94 + v98 + 8;
  v100 = v95 + v98 + 8;
  v101 = *(v97 + 48);
  LODWORD(v87) = v101(v99 & ~v98, 1, v96);
  v102 = v101(v100 & ~v98, 1, v96);
  if (v87)
  {
    if (!v102)
    {
      (*(v97 + 32))(v99 & ~v98, v100 & ~v98, v96);
      (*(v97 + 56))(v99 & ~v98, 0, 1, v96);
      return a1;
    }

    v103 = *(v97 + 84);
    v104 = *(v97 + 64);
  }

  else
  {
    if (!v102)
    {
      (*(v97 + 40))(v99 & ~v98, v100 & ~v98, v96);
      return a1;
    }

    v106 = *(v97 + 8);
    v105 = v97 + 8;
    v106(v99 & ~v98, v96);
    v103 = *(v105 + 76);
    v104 = *(v105 + 56);
  }

  if (v103)
  {
    v107 = v104;
  }

  else
  {
    v107 = v104 + 1;
  }

  memcpy((v99 & ~v98), (v100 & ~v98), v107);
  return a1;
}

uint64_t getEnumTagSinglePayload for FileDialogConfiguration(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for URL() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  type metadata accessor for Predicate<Pack{URL}>();
  v10 = *(v9 - 8);
  v11 = *(*(a3 + 24) - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v18 = v10 + 80;
  v17 = *(v10 + 80);
  v16 = *(v18 + 4);
  v19 = *(*(v9 - 8) + 64);
  if (v7)
  {
    v20 = v8;
  }

  else
  {
    v20 = v8 + 1;
  }

  if (v20 <= 8)
  {
    v20 = 8;
  }

  if (!v16)
  {
    ++v19;
  }

  if (v19 <= 8)
  {
    v21 = 8;
  }

  else
  {
    v21 = v19;
  }

  v22 = *(v11 + 80);
  v23 = *(v11 + 64);
  if (v13)
  {
    v24 = v23;
  }

  else
  {
    v24 = v23 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v25 = v17 & 0xF8 | 7;
  v26 = v21 + 24;
  v27 = v22 + 8;
  if (a2 <= v15)
  {
    goto LABEL_44;
  }

  v28 = v24 + ((v27 + ((((v26 + (((v20 & 0xFFFFFFFFFFFFFFF8) + v25 + 145) & ~v25)) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8)) & ~v22);
  v29 = 8 * v28;
  if (v28 <= 3)
  {
    v32 = ((a2 - v15 + ~(-1 << v29)) >> v29) + 1;
    if (HIWORD(v32))
    {
      v30 = *(a1 + v28);
      if (!v30)
      {
        goto LABEL_44;
      }

      goto LABEL_31;
    }

    if (v32 > 0xFF)
    {
      v30 = *(a1 + v28);
      if (!*(a1 + v28))
      {
        goto LABEL_44;
      }

      goto LABEL_31;
    }

    if (v32 < 2)
    {
LABEL_44:
      v36 = ((((v26 + ((((a1 + v20 + 112) & 0xFFFFFFFFFFFFFFF8) + v25 + 33) & ~v25)) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8);
      if ((v14 & 0x80000000) != 0)
      {
        v38 = (*(v12 + 48))((v36 + v27) & ~v22);
        if (v38 >= 2)
        {
          return v38 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v37 = *v36;
        if (*v36 >= 0xFFFFFFFF)
        {
          LODWORD(v37) = -1;
        }

        return (v37 + 1);
      }
    }
  }

  v30 = *(a1 + v28);
  if (!*(a1 + v28))
  {
    goto LABEL_44;
  }

LABEL_31:
  v33 = (v30 - 1) << v29;
  if (v28 > 3)
  {
    v33 = 0;
  }

  if (v28)
  {
    if (v28 <= 3)
    {
      v34 = v28;
    }

    else
    {
      v34 = 4;
    }

    if (v34 > 2)
    {
      if (v34 == 3)
      {
        v35 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v35 = *a1;
      }
    }

    else if (v34 == 1)
    {
      v35 = *a1;
    }

    else
    {
      v35 = *a1;
    }
  }

  else
  {
    v35 = 0;
  }

  return v15 + (v35 | v33) + 1;
}

void storeEnumTagSinglePayload for FileDialogConfiguration(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for URL() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  type metadata accessor for Predicate<Pack{URL}>();
  v12 = 0;
  v13 = *(v11 - 8);
  v14 = *(*(a4 + 24) - 8);
  v15 = *(v14 + 84);
  v16 = v15 - 1;
  v18 = *(v13 + 80);
  v17 = *(v13 + 84);
  v19 = *(v14 + 80);
  if (!v15)
  {
    v16 = 0;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v16;
  }

  if (v9)
  {
    v21 = v10;
  }

  else
  {
    v21 = v10 + 1;
  }

  v22 = 8;
  if (v21 <= 8)
  {
    v21 = 8;
  }

  if (v17)
  {
    v23 = *(*(v11 - 8) + 64);
  }

  else
  {
    v23 = *(*(v11 - 8) + 64) + 1;
  }

  if (v23 > 8)
  {
    v22 = v23;
  }

  v24 = v18 & 0xF8 | 7;
  if (v15)
  {
    v25 = *(v14 + 64);
  }

  else
  {
    v25 = *(v14 + 64) + 1;
  }

  v26 = ((v19 + 8 + ((((v22 + 24 + (((v21 & 0xFFFFFFFFFFFFFFF8) + v24 + 145) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8)) & ~v19) + v25;
  if (a3 <= v20)
  {
    goto LABEL_30;
  }

  if (v26 <= 3)
  {
    v27 = ((a3 - v20 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
    if (HIWORD(v27))
    {
      v12 = 4;
      if (v20 >= a2)
      {
        goto LABEL_40;
      }

      goto LABEL_31;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2;
    }

    if (v27 >= 2)
    {
      v12 = v28;
    }

    else
    {
      v12 = 0;
    }

LABEL_30:
    if (v20 >= a2)
    {
      goto LABEL_40;
    }

    goto LABEL_31;
  }

  v12 = 1;
  if (v20 >= a2)
  {
LABEL_40:
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *&a1[v26] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_47;
      }

      *&a1[v26] = 0;
    }

    else if (v12)
    {
      a1[v26] = 0;
      if (!a2)
      {
        return;
      }

LABEL_47:
      v32 = ((((v22 + 24 + (((&a1[v21 + 112] & 0xFFFFFFFFFFFFFFF8) + v24 + 33) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8);
      if ((v16 & 0x80000000) != 0)
      {
        v34 = ((v32 + v19 + 8) & ~v19);
        if (v16 >= a2)
        {
          v38 = *(v14 + 56);

          v38((v32 + v19 + 8) & ~v19, a2 + 1);
        }

        else
        {
          if (v25 <= 3)
          {
            v35 = ~(-1 << (8 * v25));
          }

          else
          {
            v35 = -1;
          }

          if (v25)
          {
            v36 = v35 & (~v16 + a2);
            if (v25 <= 3)
            {
              v37 = v25;
            }

            else
            {
              v37 = 4;
            }

            bzero(v34, v25);
            if (v37 > 2)
            {
              if (v37 == 3)
              {
                *v34 = v36;
                v34[2] = BYTE2(v36);
              }

              else
              {
                *v34 = v36;
              }
            }

            else if (v37 == 1)
            {
              *v34 = v36;
            }

            else
            {
              *v34 = v36;
            }
          }
        }
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v33 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v33 = a2 - 1;
        }

        *v32 = v33;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_47;
  }

LABEL_31:
  v29 = ~v20 + a2;
  if (v26 >= 4)
  {
    bzero(a1, ((v19 + 8 + ((((v22 + 24 + (((v21 & 0xFFFFFFFFFFFFFFF8) + v24 + 145) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8)) & ~v19) + v25);
    *a1 = v29;
    v30 = 1;
    if (v12 > 1)
    {
      goto LABEL_73;
    }

    goto LABEL_70;
  }

  v30 = (v29 >> (8 * (((v19 + 8 + ((((v22 + 24 + (((v21 & 0xF8) + v24 - 111) & ~v24)) & 0xF8) + 17) & 0xF8)) & ~v19) + v25))) + 1;
  if (!v26)
  {
LABEL_69:
    if (v12 > 1)
    {
      goto LABEL_73;
    }

    goto LABEL_70;
  }

  v31 = v29 & ~(-1 << (8 * (((v19 + 8 + ((((v22 + 24 + (((v21 & 0xF8) + v24 - 111) & ~v24)) & 0xF8) + 17) & 0xF8)) & ~v19) + v25)));
  bzero(a1, v26);
  if (v26 == 3)
  {
    *a1 = v31;
    a1[2] = BYTE2(v31);
    goto LABEL_69;
  }

  if (v26 == 2)
  {
    *a1 = v31;
    if (v12 > 1)
    {
LABEL_73:
      if (v12 == 2)
      {
        *&a1[v26] = v30;
      }

      else
      {
        *&a1[v26] = v30;
      }

      return;
    }
  }

  else
  {
    *a1 = v29;
    if (v12 > 1)
    {
      goto LABEL_73;
    }
  }

LABEL_70:
  if (v12)
  {
    a1[v26] = v30;
  }
}

void type metadata accessor for Predicate<Pack{URL}>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.FileDialogDefaultDirectoryKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  type metadata accessor for URL?();
  v3 = __swift_project_value_buffer(v2, static EnvironmentValues.FileDialogDefaultDirectoryKey.defaultValue);

  return outlined init with copy of URL?(v3, a1);
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance EnvironmentValues.FileDialogMessageKey(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return static Text.== infix(_:_:)();
  }
}

uint64_t one-time initialization function for defaultValue(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = __swift_project_value_buffer(v6, a3);
  v8 = a4(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(v7, 1, 1, v8);
}

{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = __swift_project_value_buffer(v6, a3);
  v8 = a4(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(v7, 1, 1, v8);
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.FileDialogURLEnabledKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  type metadata accessor for Predicate<Pack{URL}>?(0);
  v3 = __swift_project_value_buffer(v2, static EnvironmentValues.FileDialogURLEnabledKey.defaultValue);

  return outlined init with copy of Predicate<Pack{URL}>?(v3, a1);
}

uint64_t FileDialogConfiguration.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  type metadata accessor for Predicate<Pack{URL}>?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URL?();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 24);
  v12 = type metadata accessor for Optional();
  v13 = swift_allocBox();
  v15 = v14;
  (*(*(v12 - 8) + 16))(v14, v3 + *(a1 + 84), v12);
  v16 = *(*(v11 - 8) + 48);
  if (!v16(v15, 1, v11))
  {
    specialized Environment.wrappedValue.getter(v10);
    (*(*(a1 + 40) + 40))(v10, v11);
  }

  if (!v16(v15, 1, v11))
  {
    v17 = specialized Environment.wrappedValue.getter(*(v3 + *(a1 + 52)), *(v3 + *(a1 + 52) + 8), *(v3 + *(a1 + 52) + 16));
    (*(*(a1 + 40) + 16))(v17);
  }

  if (!v16(v15, 1, v11))
  {
    v18 = (v3 + *(a1 + 56));
    v19 = v18[1];
    v43 = *v18;
    v44 = v19;
    v45 = *(v18 + 32);
    v20 = specialized Environment.wrappedValue.getter();
    (*(*(a1 + 40) + 64))(v20);
  }

  if (!v16(v15, 1, v11))
  {
    v21 = (v3 + *(a1 + 60));
    v22 = v21[1];
    v40 = *v21;
    v41 = v22;
    v42 = *(v21 + 32);
    v23 = specialized Environment.wrappedValue.getter();
    (*(*(a1 + 40) + 88))(v23);
  }

  if (!v16(v15, 1, v11))
  {
    v24 = (v3 + *(a1 + 64));
    v25 = v24[1];
    v37 = *v24;
    v38 = v25;
    v39 = *(v24 + 32);
    v26 = specialized Environment.wrappedValue.getter();
    (*(*(a1 + 40) + 112))(v26);
  }

  if (!v16(v15, 1, v11))
  {
    specialized Environment.wrappedValue.getter(v7);
    (*(*(a1 + 40) + 136))(v7, v11);
  }

  if (!v16(v15, 1, v11))
  {
    v27 = specialized Environment.wrappedValue.getter(*(v3 + *(a1 + 72)), *(v3 + *(a1 + 72) + 8));
    (*(*(a1 + 40) + 160))(v27, v11);
  }

  if (!v16(v15, 1, v11))
  {
    specialized Environment.wrappedValue.getter(*(v3 + *(a1 + 76)), *(v3 + *(a1 + 76) + 8) | (*(v3 + *(a1 + 76) + 9) << 8), &v35);
    v33 = v35;
    v34 = v36;
    (*(*(a1 + 40) + 184))(&v33, v11);
  }

  v28 = *(a1 + 16);
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v11;
  v31 = *(a1 + 32);
  *(v29 + 32) = v31;
  *(v29 + 48) = v13;

  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  swift_getWitnessTable();
  View.transformPreference<A>(_:_:)();
}

uint64_t closure #1 in FileDialogConfiguration.body(content:)(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  (*(v3 + 8))(a1, v2);
  v4 = swift_projectBox();
  swift_beginAccess();
  return (*(v3 + 16))(a1, v4, v2);
}

uint64_t outlined destroy of Predicate<Pack{URL}>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *SceneStorageValues.Entry.__allocating_init<A>(_:_:location:transformBox:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  result = swift_allocObject();
  v13 = *a5;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = *(v13 + *MEMORY[0x1E697F430]);
  result[7] = a5;
  result[8] = a6;
  return result;
}

uint64_t SceneStorageValues.Entry.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t SceneStorageValues.removeObserver<A>(_:domain:key:signal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {

    MEMORY[0x18D00C9B0](47, 0xE100000000000000);

    MEMORY[0x18D00C9B0](a4, a5);

    a4 = a2;
    a5 = a3;
  }

  else
  {
  }

  swift_beginAccess();
  v11 = *(v7 + 24);
  if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();

    if (*(v14 + 48) == a7)
    {
      v16 = *(v14 + 56);
      swift_unknownObjectRetain();

      if (v16)
      {
        ObservableLocation.removeObserver(signal:)();
      }
    }

    else
    {
    }
  }

  else
  {
    swift_endAccess();
  }

  return result;
}

uint64_t SceneStorageValues.__deallocating_deinit()
{

  outlined destroy of weak FallbackResponderProvider?(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t specialized implicit closure #1 in _GraphInputs.sceneStorageValues.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageValuesKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageValuesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageValuesKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageValuesKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageValuesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageValuesKey>);
    PropertyList.subscript.getter();
  }

  v3 = type metadata accessor for WeakBox<SceneStorageValues>?;
  if (v6[8])
  {
    Strong = 0;
  }

  else
  {
    Strong = swift_weakLoadStrong();
    v3 = type metadata accessor for WeakBox<SceneStorageValues>;
  }

  result = outlined destroy of WeakBox<SceneStorageValues>?(v6, v3);
  *a2 = Strong;
  return result;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance SceneStorageValuesKey@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of WeakBox<SceneStorageValues>?(&static SceneStorageValuesKey.defaultValue, v2);
}

uint64_t View.sceneStorageDomain(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.sceneStorageDomain.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageDomainKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageDomainKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

double key path getter for EnvironmentValues.sceneStorageDomain : EnvironmentValues@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageDomainKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageDomainKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.sceneStorageDomain : EnvironmentValues(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return EnvironmentValues.sceneStorageDomain.setter(v1, v2);
}

uint64_t EnvironmentValues.sceneStorageDomain.setter(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_8;
  }

  v5 = *(v2 + 8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageDomainKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>);

  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  if (v7)
  {
    MEMORY[0x18D00C9B0](47, 0xE100000000000000);
    MEMORY[0x18D00C9B0](a1, a2);

    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageDomainKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>);

    PropertyList.subscript.setter();
    if (v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_8:
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageDomainKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>);

    PropertyList.subscript.setter();
    if (*(v2 + 8))
    {
LABEL_9:
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }
}

void (*EnvironmentValues.sceneStorageDomain.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageDomainKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageDomainKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>);
    PropertyList.subscript.getter();
  }

  *v4 = v4[1];
  return EnvironmentValues.sceneStorageDomain.modify;
}

void EnvironmentValues.sceneStorageDomain.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if (a2)
  {

    EnvironmentValues.sceneStorageDomain.setter(v3, v4);
  }

  else
  {
    EnvironmentValues.sceneStorageDomain.setter(**a1, v4);
  }

  free(v2);
}

double specialized implicit closure #1 in _GraphInputs.sceneStorageDomain.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageDomainKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageDomainKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageDomainKey>);

    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t SceneStorage._key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SceneStorage._key.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SceneStorage._domain.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SceneStorage._domain.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SceneStorage._location.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
  return result;
}

uint64_t SceneStorage._transformBox.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);

  *(v2 + v4) = a1;
  return result;
}

uint64_t SceneStorage.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  specialized SceneStorage.wrappedValue.setter(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t SceneStorage.getValue(forReading:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(v3 + *(a2 + 36)))
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

LABEL_7:
    v8 = *(*(*(a2 + 16) - 8) + 16);
    v9 = v3 + *(a2 + 32);

    return v8(a3, v9);
  }

  type metadata accessor for GraphHost();

  if (static GraphHost.isUpdating.getter())
  {
    if (a1)
    {
      dispatch thunk of AnyLocation.wasRead.setter();
    }

    goto LABEL_7;
  }

  dispatch thunk of AnyLocation.get()();
}

void (*SceneStorage.wrappedValue.modify(void *a1, uint64_t a2))(void **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SceneStorage.getValue(forReading:)(1, a2, v11);
  return SceneStorage.wrappedValue.modify;
}

void SceneStorage.wrappedValue.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *v2;
    v3 = v2[1];
    (*(v2[3] + 16))(v2[4], v2[5], v2[2]);
    if (*(v3 + *(v4 + 36)))
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }

    v6 = v2[4];
    v5 = v2[5];
    v7 = v2[2];
    v8 = *(v2[3] + 8);
    v8(v6, v7);
    v8(v5, v7);
  }

  else
  {
    if (*(v2[1] + *(*v2 + 36)))
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }

    v6 = v2[4];
    v5 = v2[5];
    (*(v2[3] + 8))(v5, v2[2]);
  }

  free(v5);
  free(v6);

  free(v2);
}

uint64_t SceneStorage.projectedValue.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  SceneStorage.getValue(forReading:)(0, a1, &v12 - v8);
  if (*(v1 + *(a1 + 36)))
  {
    (*(v4 + 16))(v6, v9, v3);

    Binding.init(value:location:transaction:)();
  }

  else
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    static Binding.constant(_:)();
  }

  return (*(v4 + 8))(v9, v3);
}

void *SceneStorage.Box.reset()(uint64_t a1)
{

  v1[7] = 0;
  v5 = v1[5];
  if (v5)
  {
    v7 = v1[3];
    v6 = v1[4];
    v8 = v1[2];
    v9 = v1[6];
    type metadata accessor for SceneStorage<URL>(0, &lazy cache variable for type metadata for SceneStorageValues?, v4, type metadata accessor for SceneStorageValues, MEMORY[0x1E69E6720]);
    result = AGGraphGetValue();
    if (*result)
    {
      v10 = *(a1 + 16);

      SceneStorageValues.removeObserver<A>(_:domain:key:signal:)(v10, v8, v7, v6, v5, v9, v10);
    }
  }

  return result;
}

uint64_t SceneStorage.init<A>(wrappedValue:_:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for TransformBox<PropertyListTransform<Bool>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<Bool>>, &lazy cache variable for type metadata for PropertyListTransform<Bool>, MEMORY[0x1E69E6370]);
  result = swift_allocObject();
  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = a1;
  *(a4 + 40) = 0;
  *(a4 + 48) = result;
  return result;
}

uint64_t SceneStorage.init<A>(wrappedValue:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for TransformBox<PropertyListTransform<Bool>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<Int>>, &lazy cache variable for type metadata for PropertyListTransform<Int>, MEMORY[0x1E69E6530]);
  result = swift_allocObject();
  *a4 = a2;
  a4[1] = a3;
  a4[2] = 0;
  a4[3] = 0;
  a4[4] = a1;
  a4[5] = 0;
  a4[6] = result;
  return result;
}

uint64_t SceneStorage.init<A>(wrappedValue:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  type metadata accessor for TransformBox<PropertyListTransform<Bool>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<Double>>, &lazy cache variable for type metadata for PropertyListTransform<Double>, MEMORY[0x1E69E63B0]);
  result = swift_allocObject();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = a4;
  *(a3 + 40) = 0;
  *(a3 + 48) = result;
  return result;
}

uint64_t SceneStorage.init<A>(wrappedValue:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for TransformBox<PropertyListTransform<Bool>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<String>>, &lazy cache variable for type metadata for PropertyListTransform<String>, MEMORY[0x1E69E6158]);
  result = swift_allocObject();
  *a5 = a3;
  a5[1] = a4;
  a5[2] = 0;
  a5[3] = 0;
  a5[4] = a1;
  a5[5] = a2;
  a5[6] = 0;
  a5[7] = result;
  return result;
}

{
  type metadata accessor for TransformBox<PropertyListTransform<Bool>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<Data>>, &lazy cache variable for type metadata for PropertyListTransform<Data>, MEMORY[0x1E6969080]);
  result = swift_allocObject();
  *a5 = a3;
  a5[1] = a4;
  a5[2] = 0;
  a5[3] = 0;
  a5[4] = a1;
  a5[5] = a2;
  a5[6] = 0;
  a5[7] = result;
  return result;
}

uint64_t SceneStorage.init<A>(wrappedValue:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  type metadata accessor for SceneStorage<URL>(0, &lazy cache variable for type metadata for SceneStorage<URL>, 255, MEMORY[0x1E6968FB0], type metadata accessor for SceneStorage);
  v9 = v8;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  *&a4[*(v8 + 36)] = 0;
  *a4 = a2;
  *(a4 + 1) = a3;
  v10 = *(v8 + 32);
  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 32))(&a4[v10], a1, v11);
  type metadata accessor for TransformBox<PropertyListTransform<URL>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<URL>>, type metadata accessor for PropertyListTransform<URL>);
  result = swift_allocObject();
  *&a4[*(v9 + 40)] = result;
  return result;
}

{
  type metadata accessor for SceneStorage<URL>(0, &lazy cache variable for type metadata for SceneStorage<Date>, 255, MEMORY[0x1E6969530], type metadata accessor for SceneStorage);
  v9 = v8;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  *&a4[*(v8 + 36)] = 0;
  *a4 = a2;
  *(a4 + 1) = a3;
  v10 = *(v8 + 32);
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 32))(&a4[v10], a1, v11);
  type metadata accessor for TransformBox<PropertyListTransform<URL>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<Date>>, type metadata accessor for PropertyListTransform<Date>);
  result = swift_allocObject();
  *&a4[*(v9 + 40)] = result;
  return result;
}

uint64_t SceneStorage.init<A>(wrappedValue:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = *(a4 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v14, v11);
  v15 = type metadata accessor for RawRepresentableTransform();
  SceneStorage.init<A>(key:transform:defaultValue:)(a2, a3, v16, v13, a4, v15, a5);
  return (*(v10 + 8))(a1, a4);
}

uint64_t SceneStorage<A>.init<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for TransformBox<PropertyListTransform<Data?>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<Bool?>>, &lazy cache variable for type metadata for PropertyListTransform<Bool?>, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370]);
  result = swift_allocObject();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 2;
  *(a3 + 40) = 0;
  *(a3 + 48) = result;
  return result;
}

{
  return SceneStorage<A>.init<>(_:)(a1, a2, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<Int?>>, &lazy cache variable for type metadata for PropertyListTransform<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], a3);
}

{
  return SceneStorage<A>.init<>(_:)(a1, a2, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<Double?>>, &lazy cache variable for type metadata for PropertyListTransform<Double?>, &lazy cache variable for type metadata for Double?, MEMORY[0x1E69E63B0], a3);
}

uint64_t SceneStorage<A>.init<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, unint64_t *a4@<X3>, unint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for TransformBox<PropertyListTransform<Data?>>(0, a3, a4, a5, a6);
  result = swift_allocObject();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 24) = 0;
  *(a7 + 32) = 0;
  *(a7 + 16) = 0;
  *(a7 + 40) = 1;
  *(a7 + 48) = 0;
  *(a7 + 56) = result;
  return result;
}

double SceneStorage<A>.init<>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for TransformBox<PropertyListTransform<Data?>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<String?>>, &lazy cache variable for type metadata for PropertyListTransform<String?>, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);
  v6 = swift_allocObject();
  *a3 = a1;
  *(a3 + 8) = a2;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0;
  *(a3 + 56) = v6;
  return result;
}

{
  type metadata accessor for TransformBox<PropertyListTransform<Data?>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<Data?>>, &lazy cache variable for type metadata for PropertyListTransform<Data?>, &lazy cache variable for type metadata for Data?, MEMORY[0x1E6969080]);
  v6 = swift_allocObject();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  result = -3.10503618e231;
  *(a3 + 40) = xmmword_18CD94A10;
  *(a3 + 56) = v6;
  return result;
}

uint64_t SceneStorage<A>.init<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  type metadata accessor for SceneStorage<URL>(0, &lazy cache variable for type metadata for SceneStorage<URL?>, 255, type metadata accessor for URL?, type metadata accessor for SceneStorage);
  v7 = v6;
  v8 = *(v6 + 32);
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *&a3[*(v7 + 36)] = 0;
  *a3 = a1;
  *(a3 + 1) = a2;
  type metadata accessor for TransformBox<PropertyListTransform<URL>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<URL?>>, type metadata accessor for PropertyListTransform<URL?>);
  result = swift_allocObject();
  *&a3[*(v7 + 40)] = result;
  return result;
}

{
  type metadata accessor for SceneStorage<URL>(0, &lazy cache variable for type metadata for SceneStorage<Date?>, 255, type metadata accessor for Date?, type metadata accessor for SceneStorage);
  v7 = v6;
  v8 = *(v6 + 32);
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *&a3[*(v7 + 36)] = 0;
  *a3 = a1;
  *(a3 + 1) = a2;
  type metadata accessor for TransformBox<PropertyListTransform<URL>>(0, &lazy cache variable for type metadata for TransformBox<PropertyListTransform<Date?>>, type metadata accessor for PropertyListTransform<Date?>);
  result = swift_allocObject();
  *&a3[*(v7 + 40)] = result;
  return result;
}

uint64_t SceneStorage.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  (*(*(a3 - 8) + 56))(&v15 - v10, 1, 1, a3, v9);
  v12 = type metadata accessor for RawRepresentableTransform();
  return SceneStorage.init<A>(key:transform:defaultValue:)(a1, a2, v13, v11, v8, v12, a4);
}

uint64_t SceneStorage<A>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of ExpressibleByNilLiteral.init(nilLiteral:)();
  v10 = type metadata accessor for JSONCodableTransform();
  return SceneStorage.init<A>(key:transform:defaultValue:)(a1, a2, v11, v9, a3, v10, a4);
}

double PropertyListTransform.readValue(from:key:read:)@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X3>, _OWORD *a3@<X8>)
{
  *a2 = 1;

  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v5, a3);
    outlined destroy of AnyHashable(v8);
  }

  else
  {
    outlined destroy of AnyHashable(v8);
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t RawRepresentableTransform.readValue(from:key:read:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27[0] = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v27 - v16;
  *a4 = 1;
  *&v28[0] = a2;
  *(&v28[0] + 1) = a3;

  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v29), (v19 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v18, v28);
    outlined destroy of AnyHashable(v29);
  }

  else
  {
    outlined destroy of AnyHashable(v29);
    memset(v28, 0, sizeof(v28));
  }

  v20 = MEMORY[0x1E69E7CA0];
  type metadata accessor for PropertyListTransform<Bool>(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v21 = swift_dynamicCast();
  v22 = (*(*(AssociatedTypeWitness - 8) + 56))(v17, v21 ^ 1u, 1, AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v22);
  v27[-2] = a5;
  v27[-1] = a6;
  MEMORY[0x1EEE9AC00](v23);
  v27[-4] = a5;
  v27[-3] = a6;
  v27[-2] = partial apply for closure #1 in RawRepresentableTransform.readValue(from:key:read:);
  v27[-1] = v24;
  _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for thunk for @callee_guaranteed (@in_guaranteed A.RawRepresentable.RawValue) -> (@out A?), &v27[-6], MEMORY[0x1E69E73E0], v20 + 8, v25, v27[0]);
  return (*(v15 + 8))(v17, v14);
}

uint64_t closure #1 in RawRepresentableTransform.readValue(from:key:read:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v5 + 16))(&v7 - v4, a1, v3);
  return dispatch thunk of RawRepresentable.init(rawValue:)();
}

_OWORD *thunk for @callee_guaranteed (@in_guaranteed A.RawRepresentable.RawValue) -> (@out A?)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, double)@<X1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v15 - v10;
  a2(a1, v9);
  v12 = *(a3 - 8);
  result = (*(v12 + 48))(v11, 1, a3);
  if (result == 1)
  {
    *a4 = 0u;
    a4[1] = 0u;
  }

  else
  {
    v16 = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    (*(v12 + 32))(boxed_opaque_existential_1, v11, a3);
    return outlined init with take of Any(v15, a4);
  }

  return result;
}

{
  v8 = type metadata accessor for Optional();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v15 - v10;
  a2(a1, v9);
  v12 = *(a3 - 8);
  result = (*(v12 + 48))(v11, 1, a3);
  if (result == 1)
  {
    *a4 = 0u;
    a4[1] = 0u;
  }

  else
  {
    v16 = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    (*(v12 + 32))(boxed_opaque_existential_1, v11, a3);
    return outlined init with take of Any(v15, a4);
  }

  return result;
}

uint64_t specialized PropertyListTransform.writeValue(_:to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;

  AnyHashable.init<A>(_:)();
  outlined init with copy of Any(a1, v6);
  return specialized Dictionary.subscript.setter(v6, v7);
}

uint64_t specialized RawRepresentableTransform.writeValue(_:to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a2;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21[-1] - v11;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, v22);
  v17 = swift_dynamicCast();
  v18 = *(v13 + 56);
  if (v17)
  {
    v18(v12, 0, 1, a5);
    (*(v13 + 32))(v16, v12, a5);
    v21[0] = a3;
    v21[1] = a4;

    AnyHashable.init<A>(_:)();
    v21[3] = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_1(v21);
    dispatch thunk of RawRepresentable.rawValue.getter();
    specialized Dictionary.subscript.setter(v21, v22);
    return (*(v13 + 8))(v16, a5);
  }

  else
  {
    v18(v12, 1, 1, a5);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t type metadata accessor for PropertyListTransform()
{
  return __swift_instantiateGenericMetadata();
}

{
  return __swift_instantiateGenericMetadata();
}

void type metadata accessor for TransformBox<PropertyListTransform<Bool>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for PropertyListTransform<Bool>(255, a3, a4, type metadata accessor for PropertyListTransform);
    v5 = type metadata accessor for TransformBox();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<String?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for PropertyListTransform<Bool>(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for TransformBox<PropertyListTransform<Data?>>(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<String?>(255, a3, a4, a5, type metadata accessor for PropertyListTransform);
    v6 = type metadata accessor for TransformBox();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for TransformBox<PropertyListTransform<URL>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for TransformBox();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for SceneStorage(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || ((((v7 + ((v6 + 32) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    v3 = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v11 = a2[1];
    *v3 = *a2;
    v3[1] = v11;
    v12 = ((v3 + 23) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v12[1] = v13[1];
    v14 = *(v5 + 16);

    v14(v12 + 2, v13 + 2, v4);
    v15 = ((v12 + v7 + 23) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((v13 + v7 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v16;
    *((v15 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

_OWORD *initializeWithTake for SceneStorage(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (v4 + v8 + 16) & ~v8;
  v10 = (v5 + v8 + 16) & ~v8;
  (*(v6 + 32))(v9, v10);
  v11 = *(v7 + 32) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for SceneStorage(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];

  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 40;
  v11 = *(v9 + 80);
  v12 = (v7 + v11 + 16) & ~v11;
  v13 = (v8 + v11 + 16) & ~v11;
  (*(v9 + 40))(v12, v13);
  v14 = *(v10 + 24) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;

  *((v15 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for SceneStorage(uint64_t a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 32) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *storeEnumTagSinglePayload for SceneStorage(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
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
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (((result + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
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
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<String?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<String?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<String?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<String?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<String?>, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<String?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

_OWORD *partial apply for thunk for @callee_guaranteed (@in_guaranteed A.RawRepresentable.RawValue) -> (@out A?)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  return thunk for @callee_guaranteed (@in_guaranteed A.RawRepresentable.RawValue) -> (@out A?)(a1, *(v2 + 32), *(v2 + 16), a2);
}

{
  return thunk for @callee_guaranteed (@in_guaranteed A.RawRepresentable.RawValue) -> (@out A?)(a1, *(v2 + 48), *(v2 + 16), a2);
}

uint64_t assignWithCopy for SceneStorage.Box(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithTake for SceneStorage.Box(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t UIKitButtonAdaptorConstants.resolvedConfiguration(hasGlassEffect:)()
{
  v1 = v0;
  v21 = type metadata accessor for UIButton.Configuration.Indicator();
  v2 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 16);
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  if (v9 == &type metadata for PlainButtonStyle)
  {
    static UIButton.Configuration.plain()();
  }

  else
  {
    lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle();
    if (v9 == &type metadata for BorderlessButtonStyle)
    {
LABEL_7:
      static UIButton.Configuration.borderless()();
      goto LABEL_13;
    }

    lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle();
    if (v9 == &type metadata for BorderedButtonStyle)
    {
      static UIButton.Configuration.bordered()();
    }

    else
    {
      lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle();
      if (v9 == &type metadata for BorderedProminentButtonStyle)
      {
        static UIButton.Configuration.borderedProminent()();
      }

      else
      {
        lazy protocol witness table accessor for type GlassButtonStyle and conformance GlassButtonStyle();
        if (v9 == &type metadata for GlassButtonStyle)
        {
          static UIButton.Configuration.glass()();
        }

        else
        {
          v10 = lazy protocol witness table accessor for type GlassProminentButtonStyle and conformance GlassProminentButtonStyle();
          if (v9 != &type metadata for GlassProminentButtonStyle)
          {
            goto LABEL_7;
          }

          MEMORY[0x18D00E1C0](v10);
        }
      }
    }
  }

LABEL_13:
  v11 = UIKitButtonAdaptorConstants.resolvedOptions.getter();
  if ((v11 & 0x10) != 0)
  {
    static UIButton.Configuration.borderless()();
    v12 = static UIButton.Configuration.== infix(_:_:)();
    v13 = *(v6 + 8);
    v13(v8, v5);
    if (v12 & 1) != 0 || (static UIButton.Configuration.plain()(), v14 = static UIButton.Configuration.== infix(_:_:)(), v13(v8, v5), (v14))
    {
      if ((*(v1 + 8) & 1) == 0)
      {
        v15 = UIButton.Configuration.contentInsets.modify();
        *(v16 + 24) = 0;
        v15(v22, 0);
      }
    }
  }

  UIButton.Configuration.titleLineBreakMode.setter();
  if (*(v1 + 9))
  {
    if (*(v1 + 9) == 1)
    {
      v17 = MEMORY[0x1E69DC588];
    }

    else
    {
      v17 = MEMORY[0x1E69DC580];
    }

    (*(v2 + 104))(v4, *v17, v21);
  }

  else
  {
    if ((v11 & 0x40) != 0)
    {
      v18 = MEMORY[0x1E69DC588];
    }

    else
    {
      v18 = MEMORY[0x1E69DC590];
    }

    (*(v2 + 104))(v4, *v18, v21);
  }

  return MEMORY[0x18D00E260](v4);
}

unint64_t lazy protocol witness table accessor for type GlassButtonStyle and conformance GlassButtonStyle()
{
  result = lazy protocol witness table cache variable for type GlassButtonStyle and conformance GlassButtonStyle;
  if (!lazy protocol witness table cache variable for type GlassButtonStyle and conformance GlassButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassButtonStyle and conformance GlassButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassProminentButtonStyle and conformance GlassProminentButtonStyle()
{
  result = lazy protocol witness table cache variable for type GlassProminentButtonStyle and conformance GlassProminentButtonStyle;
  if (!lazy protocol witness table cache variable for type GlassProminentButtonStyle and conformance GlassProminentButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassProminentButtonStyle and conformance GlassProminentButtonStyle);
  }

  return result;
}

uint64_t Menu<>.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  *a2 = *a1;
  a2[1] = v4;
  outlined copy of AppIntentExecutor?(v3);
  outlined copy of AppIntentExecutor?(v5);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v3);
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5);
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t key path getter for EnvironmentValues.menuIndicatorVisibility : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for StyleContextWriter<MenuStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>, &type metadata for MenuIndicatorVisibilityKey, &protocol witness table for MenuIndicatorVisibilityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for StyleContextWriter<MenuStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>, &type metadata for MenuIndicatorVisibilityKey, &protocol witness table for MenuIndicatorVisibilityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.menuIndicatorVisibility : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StyleContextWriter<MenuStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuIndicatorVisibilityKey>, &type metadata for MenuIndicatorVisibilityKey, &protocol witness table for MenuIndicatorVisibilityKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuIndicatorVisibilityKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t Menu.init<>(_:content:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Menu();
  v11 = (a5 + *(v10 + 56));
  *v11 = 0;
  v11[1] = 0;
  v12 = (a5 + *(v10 + 60));
  *v12 = 0;
  v12[1] = 0;
  closure #1 in TextField<>.init<A>(_:value:format:prompt:)(a5);
  closure #1 in Menu.init<>(_:content:)(a1, a2, a3, a4);
}

uint64_t Menu.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for Menu();
  v15 = (a7 + *(v14 + 56));
  *v15 = 0;
  v15[1] = 0;
  v16 = (a7 + *(v14 + 60));
  *v16 = 0;
  v16[1] = 0;
  closure #2 in Menu.init<A>(_:content:)(a1, a7);
  closure #1 in Menu.init<A>(_:content:)(a2, a3, a4, a5, a6);
  return (*(*(a5 - 8) + 8))(a1, a5);
}

uint64_t Menu.init(content:label:primaryAction:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Menu();
  v11 = (a5 + *(v10 + 56));
  v12 = (a5 + *(v10 + 60));
  *v12 = 0;
  v12[1] = 0;
  *v11 = a3;
  v11[1] = a4;

  v14 = a2(v13);
  a1(v14);
}

uint64_t Menu.init<>(_:content:primaryAction:)@<X0>(uint64_t a1@<X6>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  Menu.init(content:label:primaryAction:)(partial apply for closure #1 in Menu.init<>(_:content:primaryAction:), partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), thunk for @escaping @callee_guaranteed () -> ()partial apply, v6, a3);
}

uint64_t Menu.init<A>(_:content:primaryAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  Menu.init(content:label:primaryAction:)(partial apply for closure #1 in Menu.init<A>(_:content:primaryAction:), partial apply for closure #2 in Menu.init<A>(_:content:primaryAction:), thunk for @escaping @callee_guaranteed () -> ()partial apply, v10, a5);

  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t closure #2 in Menu.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t Menu<>.init(_:image:content:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  type metadata accessor for Label<Text, Image>();
  lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, type metadata accessor for Label<Text, Image>);
  v14 = type metadata accessor for Menu();
  v15 = (a7 + *(v14 + 56));
  *v15 = 0;
  v15[1] = 0;
  v16 = (a7 + *(v14 + 60));
  *v16 = 0;
  v16[1] = 0;
  closure #2 in Menu<>.init(_:image:content:)(a1, a2, a3, a7);
  closure #1 in Menu.init<>(_:content:)(a4, a5, a6, a8);

  v17 = type metadata accessor for ImageResource();
  return (*(*(v17 - 8) + 8))(a3, v17);
}

uint64_t Menu<>.init<A>(_:image:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  type metadata accessor for Label<Text, Image>();
  lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, type metadata accessor for Label<Text, Image>);
  v16 = type metadata accessor for Menu();
  v17 = (a8 + *(v16 + 56));
  *v17 = 0;
  v17[1] = 0;
  v18 = (a8 + *(v16 + 60));
  *v18 = 0;
  v18[1] = 0;
  closure #2 in Menu<>.init<A>(_:image:content:)(a1, a2, a6, a8);
  closure #1 in Menu.init<A>(_:content:)(a3, a4, a5, a6, a7);
  v19 = type metadata accessor for ImageResource();
  (*(*(v19 - 8) + 8))(a2, v19);
  return (*(*(a6 - 8) + 8))(a1, a6);
}

uint64_t closure #1 in Menu.init<A>(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  v14(v11);
  static ViewBuilder.buildExpression<A>(_:)(v9, a3, a5);
  v15 = *(v7 + 8);
  v15(v9, a3);
  static ViewBuilder.buildExpression<A>(_:)(v13, a3, a5);
  return (v15)(v13, a3);
}

double closure #2 in Menu<>.init<A>(_:image:content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ImageResource();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a1, a3, v13);
  (*(v9 + 16))(v11, a2, v8);
  Label<>.init<A>(_:image:)(v15, v11, a3, &v20);
  v17 = v21;
  result = *&v20;
  v19 = v22;
  *a4 = v20;
  *(a4 + 16) = v17;
  *(a4 + 24) = v19;
  return result;
}

uint64_t Menu<>.init(_:image:content:primaryAction:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X7>, uint64_t a3@<X8>, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a4;
  type metadata accessor for Label<Text, Image>();
  lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, type metadata accessor for Label<Text, Image>);

  Menu.init(content:label:primaryAction:)(partial apply for closure #1 in Menu<>.init(_:image:content:primaryAction:), partial apply for closure #2 in Menu<>.init(_:image:content:primaryAction:), partial apply for closure #1 in UIKitSearchScopeCoordinating<>.onChange(selectedScope:), v7, a3);

  v8 = type metadata accessor for ImageResource();
  return (*(*(v8 - 8) + 8))(a1, v8);
}

uint64_t closure #1 in Menu.init<>(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13(v10);
  static ViewBuilder.buildExpression<A>(_:)(v8, a3, a4);
  v14 = *(v6 + 8);
  v14(v8, a3);
  static ViewBuilder.buildExpression<A>(_:)(v12, a3, a4);
  return (v14)(v12, a3);
}

uint64_t closure #2 in Menu<>.init(_:image:content:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v25 = a2;
  v24[1] = a1;
  v6 = type metadata accessor for ImageResource();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - v12;
  v14 = *(v7 + 16);
  v14(v24 - v12, a3, v6, v11);

  v15 = Text.init(_:tableName:bundle:comment:)();
  v17 = v16;
  v19 = v18;
  v26 = v20 & 1;
  (v14)(v9, v13, v6);
  v21 = Image.init(_:)();
  result = (*(v7 + 8))(v13, v6);
  v23 = v26;
  *a4 = v15;
  *(a4 + 8) = v17;
  *(a4 + 16) = v23;
  *(a4 + 24) = v19;
  *(a4 + 32) = v21;
  return result;
}

uint64_t Menu.init(onPresentationChanged:content:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Menu();
  v11 = (a5 + *(v10 + 56));
  *v11 = 0;
  v11[1] = 0;
  v12 = (a5 + *(v10 + 60));
  v16 = a4(v10, v13, v14, v15);
  result = a3(v16);
  *v12 = a1;
  v12[1] = a2;
  return result;
}

uint64_t Menu.init(onPresentationChanged:content:label:primaryAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v12 = type metadata accessor for Menu();
  v13 = (a7 + *(v12 + 56));
  v14 = (a7 + *(v12 + 60));
  v15 = a4();
  result = a3(v15);
  *v13 = a5;
  v13[1] = a6;
  *v14 = a1;
  v14[1] = a2;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Menu(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64) + 7;
  v11 = ((((v10 + ((v5 + v8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v12 = v8 | *(v4 + 80) & 0xF8;
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (a2 + v9) & v16;
    (*(v7 + 16))((v3 + v9) & v16, v18, v6);
    v19 = (v10 + ((v3 + v9) & v16)) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v10 + v18) & 0xFFFFFFFFFFFFFFF8;
    if (*v20 < 0xFFFFFFFFuLL)
    {
      *v19 = *v20;
    }

    else
    {
      v21 = *(v20 + 8);
      *v19 = *v20;
      *(v19 + 8) = v21;
    }

    v22 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
    if (*v23 < 0xFFFFFFFFuLL)
    {
      *v22 = *v23;
      return v3;
    }

    v24 = *(v23 + 8);
    *v22 = *v23;
    *(v22 + 8) = v24;
  }

  return v3;
}

uint64_t initializeWithTake for Menu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  v14 = *(v9 + 32) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  if (*v16 < 0xFFFFFFFFuLL)
  {
    *v15 = *v16;
  }

  else
  {
    v17 = *(v16 + 8);
    *v15 = *v16;
    *(v15 + 8) = v17;
  }

  v18 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
  v20 = *v19;
  if (*v19 < 0xFFFFFFFF)
  {
    *v18 = *v19;
  }

  else
  {
    v21 = v19[1];
    *v18 = v20;
    *(v18 + 8) = v21;
  }

  return a1;
}

uint64_t assignWithTake for Menu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  v14 = *(v9 + 24) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = *v16;
  if (*v15 < 0xFFFFFFFFuLL)
  {
    if (v17 >= 0xFFFFFFFF)
    {
      v19 = v16[1];
      *v15 = v17;
      v15[1] = v19;
      goto LABEL_8;
    }
  }

  else
  {
    if (v17 >= 0xFFFFFFFF)
    {
      v18 = v16[1];
      *v15 = v17;
      v15[1] = v18;

      goto LABEL_8;
    }
  }

  *v15 = *v16;
LABEL_8:
  v20 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
  v22 = *v21;
  if (*v20 < 0xFFFFFFFFuLL)
  {
    if (v22 >= 0xFFFFFFFF)
    {
      v24 = v21[1];
      *v20 = v22;
      v20[1] = v24;
      return a1;
    }

LABEL_14:
    *v20 = *v21;
    return a1;
  }

  if (v22 < 0xFFFFFFFF)
  {

    goto LABEL_14;
  }

  v23 = v21[1];
  *v20 = v22;
  v20[1] = v23;

  return a1;
}

uint64_t TabContent.dropDestination<A>(for:action:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a1;
  v14[7] = a2;

  TabContent._dropDestination<A>(for:isTargeted:action:)(0, 0, 0, partial apply for closure #1 in TabContent.dropDestination<A>(for:action:), v14, a3, a4, a7, a5, a6);
}

uint64_t TabContent._dropDestination<A>(for:isTargeted:action:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a9;
  v17[5] = a10;
  v17[6] = a4;
  v17[7] = a5;

  v20[0] = static Transferable.readableContentTypes.getter();
  v20[1] = a1;
  v20[2] = a2;
  v21 = a3;
  v22 = partial apply for closure #1 in TabContent._dropDestination<A>(for:isTargeted:action:);
  v23 = v17;
  TabContent.modifier<A>(_:)(v20, a6, &type metadata for TabDropDestinationModifier, a8);
}

uint64_t TabContent.dropDestination<A>(for:isTargeted:action:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a9;
  v17[5] = a10;
  v17[6] = a4;
  v17[7] = a5;

  TabContent._dropDestination<A>(for:isTargeted:action:)(a1, a2, a3 & 1, partial apply for closure #1 in TabContent.dropDestination<A>(for:isTargeted:action:), v17, a6, a7, a8, a9, a10);
}

uint64_t TabContent.draggable<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a1;
  v14[7] = a2;
  v16[0] = partial apply for closure #1 in TabContent.draggable<A>(_:);
  v16[1] = v14;
  TabContent.modifier<A>(_:)(v16, a3, &unk_1EFFB8EF0, a7);
}

uint64_t closure #1 in TabContent.draggable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSItemProvider);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  return NSItemProvider.init<A>(transferable:)();
}

unint64_t lazy protocol witness table accessor for type SpringLoadingModifier and conformance SpringLoadingModifier()
{
  result = lazy protocol witness table cache variable for type SpringLoadingModifier and conformance SpringLoadingModifier;
  if (!lazy protocol witness table cache variable for type SpringLoadingModifier and conformance SpringLoadingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpringLoadingModifier and conformance SpringLoadingModifier);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI10TabContentRz16CoreTransferable0F0Rd__r__lAA08ModifiedcD0VyxAA0C23DropDestinationModifierVGAaBHPxAaBHD1__AhA04ViewJ0HPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  type metadata accessor for ModifiedTabContent();
  a3();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type DraggableTabModifier and conformance DraggableTabModifier()
{
  result = lazy protocol witness table cache variable for type DraggableTabModifier and conformance DraggableTabModifier;
  if (!lazy protocol witness table cache variable for type DraggableTabModifier and conformance DraggableTabModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DraggableTabModifier and conformance DraggableTabModifier);
  }

  return result;
}

uint64_t closure #1 in TabContent._dropDestination<A>(for:isTargeted:action:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v58 = a8;
  v56 = a6;
  v48 = a2;
  v49 = a5;
  v46 = a1;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = dispatch_group_create();
  v60 = static Array._allocateUninitialized(_:)();
  type metadata accessor for Array();
  result = AtomicBox.init(wrappedValue:)();
  v22 = a3;
  v23 = aBlock[0];
  v57 = v22;
  v54 = v13;
  v55 = v12;
  v52 = v15;
  v53 = v16;
  v50 = v19;
  v51 = v17;
  v47 = a4;
  if (v22 >> 62)
  {
    result = __CocoaSet.count.getter();
    v22 = v57;
    v24 = result;
  }

  else
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v56;
  if (!v24)
  {
    goto LABEL_11;
  }

  if (v24 >= 1)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v26 = 0;
      v25 = v56;
      do
      {
        MEMORY[0x18D00E9C0](v26++, v57);
        dispatch_group_enter(v20);
        v27 = swift_allocObject();
        v27[2] = v25;
        v27[3] = a7;
        v27[4] = v58;
        v27[5] = a9;
        v27[6] = v20;
        v27[7] = v23;
        v28 = v20;

        v29 = NSItemProvider.loadTransferable<A>(type:completionHandler:)();
        swift_unknownObjectRelease();
      }

      while (v24 != v26);
    }

    else
    {
      v30 = (v22 + 32);
      v25 = v56;
      do
      {
        v31 = *v30++;
        v32 = v31;
        dispatch_group_enter(v20);
        v33 = swift_allocObject();
        v33[2] = v25;
        v33[3] = a7;
        v33[4] = v58;
        v33[5] = a9;
        v33[6] = v20;
        v33[7] = v23;
        v34 = v20;

        v35 = NSItemProvider.loadTransferable<A>(type:completionHandler:)();

        --v24;
      }

      while (v24);
    }

LABEL_11:
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v36 = static OS_dispatch_queue.main.getter();
    v37 = swift_allocObject();
    v37[2] = v25;
    v37[3] = a7;
    v37[4] = v58;
    v37[5] = a9;
    v38 = v46;
    v40 = v48;
    v39 = v49;
    v37[6] = v47;
    v37[7] = v39;
    v37[8] = v38;
    v37[9] = v40;
    v37[10] = v23;
    aBlock[4] = partial apply for closure #2 in closure #1 in TabContent._dropDestination<A>(for:isTargeted:action:);
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_25;
    v41 = _Block_copy(aBlock);

    v42 = v50;
    static DispatchQoS.unspecified.getter();
    v60 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    type metadata accessor for [DispatchWorkItemFlags]();
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], type metadata accessor for [DispatchWorkItemFlags]);
    v43 = v52;
    v44 = v55;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v41);

    (*(v54 + 8))(v43, v44);
    (*(v51 + 8))(v42, v53);
  }

  __break(1u);
  return result;
}

void closure #1 in closure #1 in TabContent._dropDestination<A>(for:isTargeted:action:)(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v33[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33[-1] - v13;
  type metadata accessor for Error();
  v15 = type metadata accessor for Result();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v33[-1] - v17);
  (*(v19 + 16))(&v33[-1] - v17, a1, v15, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v18;
    v21 = static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v22, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33[0] = v24;
      *v23 = 136315394;
      v25 = _typeName(_:qualified:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v33);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v33);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_18BD4A000, v22, v21, "Error loading %s: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v24, -1, -1);
      MEMORY[0x18D0110E0](v23, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v9 + 32))(v14, v18, a5);
    (*(v9 + 16))(v11, v14, a5);
    v33[4] = a3;
    type metadata accessor for Array();
    type metadata accessor for AtomicBox();
    v31 = AtomicBox.wrappedValue.modify();
    Array.append(_:)();
    v31(v33, 0);
    (*(v9 + 8))(v14, a5);
  }

  dispatch_group_leave(a2);
}

uint64_t closure #2 in closure #1 in TabContent._dropDestination<A>(for:isTargeted:action:)(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Array();
  type metadata accessor for AtomicBox();
  AtomicBox.wrappedValue.getter();
  a1(a3, a4);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance DraggableTabModifier@<X0>(uint64_t (**a1)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  if (*v1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sSo14NSItemProviderCSgIego_ACIegr_TRTA_0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a1 = v6;
  a1[1] = v5;

  return outlined copy of AppIntentExecutor?(v3);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance TabDropDestinationModifier@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v7;
  a1[4] = v5;
  a1[5] = v6;

  outlined copy of Binding<Int>?(v3, v4);
}

uint64_t SpringLoadingModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithCopy for TabDropDestinationModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4)
    {
      *(a1 + 8) = *(a2 + 8);

      *(a1 + 16) = *(a2 + 16);

      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      outlined destroy of Binding<Bool>(a1 + 8);
      v5 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v6 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v6;
  }

  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;

  return a1;
}

uint64_t assignWithTake for TabDropDestinationModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  if (!*(a1 + 16))
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    outlined destroy of Binding<Bool>(a1 + 8);
LABEL_5:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    goto LABEL_6;
  }

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
LABEL_6:
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<TabDropDestinationModifier>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<TabDropDestinationModifier>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>)
  {
    type metadata accessor for _ViewModifier_Content<TabDropDestinationModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<TabDropDestinationModifier>, lazy protocol witness table accessor for type TabDropDestinationModifier and conformance TabDropDestinationModifier, &type metadata for TabDropDestinationModifier, MEMORY[0x1E697FDE8]);
    type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<TabDropDestinationModifier>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<TabDropDestinationModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<TabDropDestinationModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<TabDropDestinationModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<TabDropDestinationModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<TabDropDestinationModifier>, lazy protocol witness table accessor for type TabDropDestinationModifier and conformance TabDropDestinationModifier, &type metadata for TabDropDestinationModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<TabDropDestinationModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SpringLoadingModifier>, _TraitWritingModifier<SpringLoadingTraitKey>>, _EnvironmentKeyWritingModifier<SpringLoadingBehavior>>, ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SpringLoadingModifier>, _TraitWritingModifier<SpringLoadingTraitKey>>, _EnvironmentKeyWritingModifier<SpringLoadingBehavior>>, ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<SpringLoadingModifier>, _TraitWritingModifier<SpringLoadingTraitKey>>, _EnvironmentKeyWritingModifier<SpringLoadingBehavior>>();
    type metadata accessor for _ViewModifier_Content<TabDropDestinationModifier>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior>, lazy protocol witness table accessor for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior, &type metadata for SpringLoadingBehavior.HasCustomSpringLoadedBehavior, MEMORY[0x1E697FD28]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SpringLoadingModifier>, _TraitWritingModifier<SpringLoadingTraitKey>>, _EnvironmentKeyWritingModifier<SpringLoadingBehavior>>, ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<SpringLoadingModifier>, _TraitWritingModifier<SpringLoadingTraitKey>>, _EnvironmentKeyWritingModifier<SpringLoadingBehavior>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<SpringLoadingModifier>, _TraitWritingModifier<SpringLoadingTraitKey>>, _EnvironmentKeyWritingModifier<SpringLoadingBehavior>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<SpringLoadingModifier>, _TraitWritingModifier<SpringLoadingTraitKey>>();
    _s7SwiftUI7BindingVySbGMaTm_5(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SpringLoadingBehavior>, &type metadata for SpringLoadingBehavior, MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<SpringLoadingModifier>, _TraitWritingModifier<SpringLoadingTraitKey>>, _EnvironmentKeyWritingModifier<SpringLoadingBehavior>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<SpringLoadingModifier>, _TraitWritingModifier<SpringLoadingTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SpringLoadingModifier>, _TraitWritingModifier<SpringLoadingTraitKey>>)
  {
    type metadata accessor for _ViewModifier_Content<TabDropDestinationModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<SpringLoadingModifier>, lazy protocol witness table accessor for type SpringLoadingModifier and conformance SpringLoadingModifier, &unk_1EFFB8F70, MEMORY[0x1E697FDE8]);
    type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<SpringLoadingTraitKey>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SpringLoadingModifier>, _TraitWritingModifier<SpringLoadingTraitKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<SpringLoadingModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<SpringLoadingModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<SpringLoadingModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<TabDropDestinationModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<SpringLoadingModifier>, lazy protocol witness table accessor for type SpringLoadingModifier and conformance SpringLoadingModifier, &unk_1EFFB8F70, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<SpringLoadingModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<SpringLoadingTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<SpringLoadingTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<SpringLoadingTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<SpringLoadingTraitKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<SpringLoadingTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for _ViewModifier_Content<TabDropDestinationModifier>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior>, lazy protocol witness table accessor for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior, &type metadata for SpringLoadingBehavior.HasCustomSpringLoadedBehavior, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<TabDropDestinationModifier>, _TraitWritingModifier<TabIdentifiedDropOntoTraitKey>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<DraggableTabModifier>, _TraitWritingModifier<ItemProviderTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<DraggableTabModifier>, _TraitWritingModifier<ItemProviderTraitKey>>)
  {
    type metadata accessor for _ViewModifier_Content<TabDropDestinationModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<DraggableTabModifier>, lazy protocol witness table accessor for type DraggableTabModifier and conformance DraggableTabModifier, &unk_1EFFB8EF0, MEMORY[0x1E697FDE8]);
    type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ItemProviderTraitKey>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<DraggableTabModifier>, _TraitWritingModifier<ItemProviderTraitKey>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<TabDropDestinationModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<DraggableTabModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<DraggableTabModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<DraggableTabModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<TabDropDestinationModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<DraggableTabModifier>, lazy protocol witness table accessor for type DraggableTabModifier and conformance DraggableTabModifier, &unk_1EFFB8EF0, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<DraggableTabModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<ItemProviderTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<ItemProviderTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<ItemProviderTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ItemProviderTraitKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<ItemProviderTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t static InlinePickerStyle._makeView<A>(value:inputs:)()
{
  type metadata accessor for ResolvedPicker();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleWriter<SectionPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<WheelPickerStyle>, &type metadata for WheelPickerStyle, &protocol witness table for WheelPickerStyle, type metadata accessor for PickerStyleWriter);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _PickerValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  _GraphInputs.interfaceIdiom.getter();
  type metadata accessor for InlinePickerStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance InlinePickerStyle.Body<A>@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ResolvedPicker();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<ShouldUseListSectionInlinePickerStyle, PickerStyleWriter<SectionPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleWriter<SectionPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<WheelPickerStyle>, &type metadata for WheelPickerStyle, &protocol witness table for WheelPickerStyle, type metadata accessor for PickerStyleWriter);
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2_3> and conformance _SemanticFeature<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PickerStyleWriter<SectionPickerStyle>(255, a2, a3, a4, MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void TableRowContent.onHover(perform:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  TableRowContent.onHover(perform:)();
}

unint64_t lazy protocol witness table accessor for type _HoverTableRowModifier and conformance _HoverTableRowModifier()
{
  result = lazy protocol witness table cache variable for type _HoverTableRowModifier and conformance _HoverTableRowModifier;
  if (!lazy protocol witness table cache variable for type _HoverTableRowModifier and conformance _HoverTableRowModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _HoverTableRowModifier and conformance _HoverTableRowModifier);
  }

  return result;
}

double EnvironmentValues.dialogSuppression.getter@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<DialogSuppressionConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<DialogSuppressionConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t View.dialogSuppressionToggle(_:isSuppressed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13;
  View.dialogSuppressionToggle(_:isSuppressed:)(v10, v11, v13 & 1, v15, a5, a6, a7);
  outlined consume of Text.Storage(v10, v12, v14 & 1);
}

uint64_t View.dialogSuppressionToggle(_:isSuppressed:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  MEMORY[0x18D009CE0](v15);
  Text.assertUnstyled(_:options:)();
  swift_getKeyPath();
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a3 & 1;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v16 = a7;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  View.environment<A>(_:_:)();

  outlined consume of Text.Storage(a1, a2, a3 & 1);
}

uint64_t View.dialogSuppression<A>(_:isSuppressed:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  View.dialogSuppressionToggle(_:isSuppressed:)(v10, v11, v13 & 1, v15, a2, a3, a4);
  outlined consume of Text.Storage(v10, v12, v14 & 1);
}

double key path getter for EnvironmentValues.dialogSuppression : EnvironmentValues@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<DialogSuppressionConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<DialogSuppressionConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t key path setter for EnvironmentValues.dialogSuppression : EnvironmentValues(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  type metadata accessor for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>();

  outlined copy of DialogSuppressionConfiguration?(v3, v4, v5, v6, v7, v8);
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<DialogSuppressionConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogSuppressionConfiguration.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>);
  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t View.dialogSuppressionToggle(isSuppressed:)()
{
  swift_getKeyPath();

  View.environment<A>(_:_:)();
}

void Scene.dialogSuppressionToggle(_:isSuppressed:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void type metadata accessor for _EnvironmentKeyWritingModifier<DialogSuppressionConfiguration?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<DialogSuppressionConfiguration?>)
  {
    type metadata accessor for DialogSuppressionConfiguration?();
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<DialogSuppressionConfiguration?>);
    }
  }
}

void type metadata accessor for DialogSuppressionConfiguration?()
{
  if (!lazy cache variable for type metadata for DialogSuppressionConfiguration?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DialogSuppressionConfiguration?);
    }
  }
}

uint64_t destroy for DialogSuppressionConfiguration(uint64_t a1)
{
  if (*(a1 + 24))
  {
    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }
}

uint64_t initializeWithCopy for DialogSuppressionConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v6, v7);
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v4;
  }

  else
  {
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
  }

  v9 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v9;
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithCopy for DialogSuppressionConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      v5 = *a2;
      v6 = *(a2 + 8);
      v7 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v6, v7);
      v8 = *a1;
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      outlined destroy of Text(a1);
      v14 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v14;
    }
  }

  else if (v4)
  {
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v12, v13);
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
  }

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for DialogSuppressionConfiguration(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24))
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    outlined destroy of Text(a1);
LABEL_5:
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    goto LABEL_6;
  }

  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  outlined consume of Text.Storage(v6, v7, v8);
  *(a1 + 24) = v4;

LABEL_6:
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t storeEnumTagSinglePayload for DialogSuppressionConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogSuppressionConfiguration.Key>);
    }
  }
}

uint64_t outlined copy of DialogSuppressionConfiguration?(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    outlined copy of Text?(result, a2, a3, a4);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<DialogSuppressionConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void View.digitalCrownRotation<A>(detent:from:through:by:sensitivity:isContinuous:isHapticFeedbackEnabled:onChange:onIdle:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  View.digitalCrownRotation<A>(detent:from:through:by:sensitivity:isContinuous:isHapticFeedbackEnabled:onChange:onIdle:)();
}

unint64_t lazy protocol witness table accessor for type DigitalCrownRotationalSensitivity and conformance DigitalCrownRotationalSensitivity()
{
  result = lazy protocol witness table cache variable for type DigitalCrownRotationalSensitivity and conformance DigitalCrownRotationalSensitivity;
  if (!lazy protocol witness table cache variable for type DigitalCrownRotationalSensitivity and conformance DigitalCrownRotationalSensitivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DigitalCrownRotationalSensitivity and conformance DigitalCrownRotationalSensitivity);
  }

  return result;
}

uint64_t View.fileImporter(isPresented:allowedContentTypes:onCompletion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;

  View._fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:onCancellation:)(a1, a2, a3, a4, 0, partial apply for closure #1 in View.fileImporter(isPresented:allowedContentTypes:onCompletion:), v16, destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation, a8, 0, a7);
}

void closure #1 in View.fileImporter(isPresented:allowedContentTypes:onCompletion:)(void *a1, char a2, void (*a3)(void *))
{
  type metadata accessor for Result<URL, Error>();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    *v8 = a1;
    swift_storeEnumTagMultiPayload();
    v9 = a1;
LABEL_5:
    a3(v8);
    outlined destroy of FileDialogConfiguration<FileImportOperation.Key, FileImportOperation>(v8, type metadata accessor for Result<URL, Error>);
    return;
  }

  if (a1[2])
  {
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 16))(v8, a1 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)), v10);
    swift_storeEnumTagMultiPayload();
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t View._fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:onCancellation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v50 = a6;
  v51 = a8;
  v53 = a7;
  v52 = a5;
  v56 = a9;
  v55 = a11;
  type metadata accessor for FileImportOperation?();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  type metadata accessor for FileDialogConfiguration<FileImportOperation.Key, FileImportOperation>();
  v54 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v49 - v25);
  v59 = a1;
  v60 = a2;
  v61 = a3;
  type metadata accessor for Binding<Bool>();
  v28 = v27;
  MEMORY[0x18D00ACC0](&v58);
  if (v58 == 1)
  {
    v29 = a3 & 1;
    if (!*(a4 + 16))
    {
      static os_log_type_t.fault.getter();
      v30 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();
    }

    v59 = a1;
    v60 = a2;
    v61 = v29;
    MEMORY[0x18D00ACC0](&v58, v28);
    v31 = v58;
    v32 = type metadata accessor for FileImportOperation(0);
    v33 = v32;
    if (v31 == 1)
    {
      v34 = *(v32 + 20);
      v35 = type metadata accessor for URL();
      (*(*(v35 - 8) + 56))(&v20[v34], 1, 1, v35);
      v36 = v33[11];
      type metadata accessor for Predicate<Pack{URL}>();
      (*(*(v37 - 8) + 56))(&v20[v36], 1, 1, v37);
      v38 = swift_allocObject();
      *(v38 + 16) = a1;
      *(v38 + 24) = a2;
      *(v38 + 32) = v29;
      v39 = v53;
      *(v38 + 40) = v50;
      *(v38 + 48) = v39;
      v40 = swift_allocObject();
      *(v40 + 16) = a1;
      *(v40 + 24) = a2;
      *(v40 + 32) = v29;
      *(v40 + 40) = v51;
      *(v40 + 48) = a10;
      *v20 = 0;
      *(v20 + 1) = 0;
      v41 = &v20[v33[6]];
      *v41 = 0u;
      *(v41 + 1) = 0u;
      v42 = &v20[v33[7]];
      *v42 = 0u;
      *(v42 + 1) = 0u;
      v43 = &v20[v33[8]];
      *v43 = 0u;
      *(v43 + 1) = 0u;
      *&v20[v33[9]] = a4;
      v20[v33[10]] = v52 & 1;
      v20[v33[12]] = 2;
      v44 = &v20[v33[13]];
      *v44 = 0;
      v44[8] = 1;
      v45 = &v20[v33[14]];
      *v45 = partial apply for closure #1 in View._fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:onCancellation:);
      v45[1] = v38;
      v46 = &v20[v33[15]];
      *v46 = partial apply for closure #2 in View._fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:onCancellation:);
      v46[1] = v40;
      (*(*(v33 - 1) + 56))(v20, 0, 1, v33);
      swift_retain_n();
      swift_retain_n();
    }

    else
    {
      (*(*(v32 - 8) + 56))(v20, 1, 1, v32);
    }

    _s7SwiftUI23FileDialogConfigurationV13preferenceKey9operationACyxq_Gxm_q_SgtcfCAA0C15ImportOperationV0G0V_AITt0t2g5(v20, v26);
  }

  else
  {
    v47 = type metadata accessor for FileImportOperation(0);
    (*(*(v47 - 8) + 56))(v17, 1, 1, v47);
    _s7SwiftUI23FileDialogConfigurationV13preferenceKey9operationACyxq_Gxm_q_SgtcfCAA0C15ImportOperationV0G0V_AITt0t2g5(v17, v23);
    v26 = v23;
  }

  MEMORY[0x18D00A570](v26, v55, v54, v57);
  return outlined destroy of FileDialogConfiguration<FileImportOperation.Key, FileImportOperation>(v26, type metadata accessor for FileDialogConfiguration<FileImportOperation.Key, FileImportOperation>);
}

void type metadata accessor for FileDialogConfiguration<FileImportOperation.Key, FileImportOperation>()
{
  if (!lazy cache variable for type metadata for FileDialogConfiguration<FileImportOperation.Key, FileImportOperation>)
  {
    type metadata accessor for FileImportOperation(255);
    v0 = type metadata accessor for FileDialogConfiguration();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FileDialogConfiguration<FileImportOperation.Key, FileImportOperation>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type FileDialogConfiguration<FileImportOperation.Key, FileImportOperation> and conformance FileDialogConfiguration<A, B>()
{
  result = lazy protocol witness table cache variable for type FileDialogConfiguration<FileImportOperation.Key, FileImportOperation> and conformance FileDialogConfiguration<A, B>;
  if (!lazy protocol witness table cache variable for type FileDialogConfiguration<FileImportOperation.Key, FileImportOperation> and conformance FileDialogConfiguration<A, B>)
  {
    type metadata accessor for FileDialogConfiguration<FileImportOperation.Key, FileImportOperation>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDialogConfiguration<FileImportOperation.Key, FileImportOperation> and conformance FileDialogConfiguration<A, B>);
  }

  return result;
}

void closure #1 in View._fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:onCancellation:)(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, void))
{
  v9 = ~a2;
  dispatch thunk of AnyLocation.set(_:transaction:)();
  if (v9)
  {
    outlined copy of Result<[URL], Error>(a1, a2 & 1);
    a6(a1, a2 & 1);
    outlined consume of Result<[URL], Error>?(a1, a2);
  }
}

uint64_t partial apply for closure #2 in View._fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:onCancellation:)()
{
  v1 = *(v0 + 40);
  v2 = dispatch thunk of AnyLocation.set(_:transaction:)();
  return v1(v2);
}

id outlined copy of Result<[URL], Error>(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void outlined consume of Result<[URL], Error>?(void *a1, char a2)
{
  if (a2 != -1)
  {
    outlined consume of Result<[URL], Error>(a1, a2 & 1);
  }
}

void outlined consume of Result<[URL], Error>(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void type metadata accessor for Result<URL, Error>()
{
  if (!lazy cache variable for type metadata for Result<URL, Error>)
  {
    type metadata accessor for URL();
    type metadata accessor for Error();
    v0 = type metadata accessor for Result();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Result<URL, Error>);
    }
  }
}

uint64_t outlined destroy of FileDialogConfiguration<FileImportOperation.Key, FileImportOperation>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DisplayList.HostedViewState.splicedDisplayList()@<X0>(uint64_t a1@<X8>)
{
  _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  Value = AGGraphGetValue();
  v6 = *(Value + 8);
  v7 = *(Value + 12);
  v12 = *Value;
  v13 = v6;
  v14 = v7;
  if ((v6 & 2) != 0)
  {

    DisplayList.Index.init()();
    v9 = type metadata accessor for DisplayList.ArchiveIDs();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    DisplayList.HostedViewState.spliceViews(into:index:archive:substitutions:)(&v12, &v11, v4, MEMORY[0x1E69E7CC8], &v10);
    outlined destroy of DisplayList.HostedViewState.ViewInfo?(v4, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50], MEMORY[0x1E69E6720], _s10Foundation4UUIDVSgMaTm_0);
    result = v12;
    v6 = v13;
    v7 = v14;
  }

  else
  {
  }

  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 12) = v7;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance DisplayList.HostedViews.SplicedDisplayList@<X0>(uint64_t a1@<X8>)
{
  v2 = *AGGraphGetValue();
  swift_beginAccess();
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[4];
  v24[2] = v2[3];
  v24[3] = v5;
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  *(v25 + 12) = *(v2 + 124);
  v9 = *(v25 + 12);
  v24[5] = v7;
  v25[0] = v8;
  v24[4] = v6;
  v24[0] = v3;
  v24[1] = v4;
  v19 = v2[3];
  v20 = v2[4];
  v17 = v2[1];
  v18 = v2[2];
  *&v23[12] = v9;
  v22 = v2[6];
  *v23 = v2[7];
  v21 = v2[5];

  outlined init with copy of DisplayList.HostedViewState(v24, v26);
  DisplayList.HostedViewState.splicedDisplayList()(a1);
  v10 = v2[5];
  v11 = v2[6];
  v12 = v2[7];
  *(v27 + 12) = *(v2 + 124);
  v27[0] = v12;
  v13 = v2[1];
  v14 = v2[2];
  v15 = v2[4];
  v26[2] = v2[3];
  v26[3] = v15;
  v26[4] = v10;
  v26[5] = v11;
  v26[0] = v13;
  v26[1] = v14;
  v2[1] = v17;
  v2[2] = v18;
  v2[3] = v19;
  v2[4] = v20;
  v2[5] = v21;
  v2[6] = v22;
  *(v2 + 124) = *&v23[12];
  v2[7] = *v23;
  outlined destroy of DisplayList.HostedViewState(v26);
}

Swift::Void __swiftcall DisplayList.HostedViews.ResponderFilter.updateValue()()
{
  v60 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for DisplayList.HostedViewState.Key(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 16);

  v6 = *AGGraphGetValue();

  Value = AGGraphGetValue();
  v8 = *Value;
  v40 = Value[1];
  v41 = v8;
  type metadata accessor for CGPoint(0);
  v9 = AGGraphGetValue();
  v39 = v10;
  v11 = *v9;
  v12 = v9[1];
  v13 = AGGraphGetValue();
  v38 = v14;
  v15 = *v13;
  v16 = *(v13 + 8);
  v17 = *(v13 + 16);
  v36 = *(v13 + 32);
  v37 = v17;
  v44 = v5;
  *(v5 + 216) = v6;

  v43 = v15;

  v42 = v16;

  swift_beginAccess();
  v18 = *(v6 + 128);
  v45 = MEMORY[0x1E69E7CC0];
  v19 = *(v18 + 16);

  if (!v19)
  {
    goto LABEL_17;
  }

  v20 = 0;
  v35 = v19 - 1;
  do
  {
    v21 = v20;
    while (1)
    {
      if (v21 >= *(v18 + 16))
      {
        __break(1u);
      }

      outlined init with copy of DisplayList.HostedViewState.Key(v18 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v21, v4, type metadata accessor for DisplayList.HostedViewState.Key);
      v22 = *(v6 + 120);
      if (!*(v22 + 16))
      {
        goto LABEL_4;
      }

      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
      if (v24)
      {
        break;
      }

LABEL_4:
      ++v21;
      _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v4, type metadata accessor for DisplayList.HostedViewState.Key);
      if (v19 == v21)
      {
        goto LABEL_17;
      }
    }

    outlined init with copy of DisplayList.HostedViewState.ViewInfo(*(v22 + 56) + 184 * v23, v46);

    v56 = v46[8];
    v57 = v46[9];
    v58 = v46[10];
    v59 = v47;
    v52 = v46[4];
    v53 = v46[5];
    v54 = v46[6];
    v55 = v46[7];
    v48 = v46[0];
    v49 = v46[1];
    v50 = v46[2];
    v51 = v46[3];
    if (!v47)
    {
      __break(1u);
      return;
    }

    if (v58)
    {
      *&v46[0] = v58;
      DWORD2(v46[0]) = DWORD2(v58);
      swift_retain_n();
      if ((PreferencesOutputs.subscript.getter() & 0x100000000) == 0)
      {
        _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
        AGGraphGetValue();
      }
    }

    else
    {
      swift_retain_n();
    }

    dispatch thunk of MultiViewResponder.children.setter();

    outlined destroy of DisplayList.HostedViewState.ViewInfo(&v48);
    v25 = _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v4, type metadata accessor for DisplayList.HostedViewState.Key);
    MEMORY[0x18D00CC30](v25);
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v20 = v21 + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v35 != v21);
LABEL_17:
  v26 = v39 | v38;

  v27 = v44;
  v28 = MultiViewResponder.children.setter();
  v48 = v41;
  v49 = v40;
  *(v27 + 224) = MEMORY[0x18D00B390](v28);
  *(v27 + 232) = v29;
  v31 = v42;
  v30 = v43;
  if (v26)
  {
    swift_beginAccess();
    *(v27 + 240) = v30;
    *(v27 + 248) = v31;
    v32 = v36;
    *(v27 + 256) = v37;
    *(v27 + 272) = v32;

    ViewTransform.appendPosition(_:)(__PAIR128__(v12, v11));
    swift_endAccess();
  }

  _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for DisplayList.HostedViewState.ViewInfo?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_18CD69590;
    *(v33 + 32) = v27;
    *&v48 = v33;

    AGGraphSetOutputValue();
  }
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance DisplayList.HostedViews.Preference<A>@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

void DisplayList.HostedViewState.Key.hash(into:)()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69695A8];
  _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v0[1]);
  v9 = type metadata accessor for DisplayList.HostedViewState.Key(0);
  _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(v0 + *(v9 + 24), v8, &lazy cache variable for type metadata for UUID?, v5);
  if ((*(v2 + 48))(v8, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v8, v1);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type AGAttributeTypeFlags and conformance AGAttributeTypeFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }
}

Swift::Int DisplayList.HostedViewState.Key.hashValue.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69695A8];
  _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v0[1]);
  v9 = type metadata accessor for DisplayList.HostedViewState.Key(0);
  _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(v0 + *(v9 + 24), v8, &lazy cache variable for type metadata for UUID?, v5);
  if ((*(v2 + 48))(v8, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v8, v1);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type AGAttributeTypeFlags and conformance AGAttributeTypeFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DisplayList.HostedViewState.Key(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69695A8];
  _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v13 - v10;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v2);
  Hasher._combine(_:)(v2[1]);
  _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(v2 + *(a2 + 24), v11, &lazy cache variable for type metadata for UUID?, v8);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type AGAttributeTypeFlags and conformance AGAttributeTypeFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }

  return Hasher._finalize()();
}

uint64_t DisplayList.HostedViewState.FetchView.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *AGGraphGetValue();
  swift_beginAccess();
  v4 = *(v3 + 120);
  if (*(v4 + 16))
  {
    v5 = *(type metadata accessor for DisplayList.HostedViewState.FetchView(0) + 20);

    v6 = specialized __RawDictionaryStorage.find<A>(_:)((v1 + v5));
    if (v7)
    {
      outlined init with copy of DisplayList.HostedViewState.ViewInfo(*(v4 + 56) + 184 * v6, &v15);

      v9 = v24;
      *(a1 + 128) = v23;
      *(a1 + 144) = v9;
      *(a1 + 160) = v25;
      *(a1 + 176) = v26;
      v10 = v20;
      *(a1 + 64) = v19;
      *(a1 + 80) = v10;
      v11 = v22;
      *(a1 + 96) = v21;
      *(a1 + 112) = v11;
      v12 = v16;
      *a1 = v15;
      *(a1 + 16) = v12;
      v13 = v18;
      *(a1 + 32) = v17;
      *(a1 + 48) = v13;
      return result;
    }
  }

  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  *a1 = 0;
  *(a1 + 8) = 0;
  v14 = MEMORY[0x1E697E998];
  *(a1 + 40) = MEMORY[0x1E697E9A0];
  *(a1 + 48) = v14;
  static ViewSize.zero.getter();
  ViewTransform.init()();
  result = EnvironmentValues.init()();
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  if (*(&v17 + 1))
  {
    return outlined destroy of DisplayList.HostedViewState.ViewInfo?(&v15, &lazy cache variable for type metadata for DisplayList.HostedViewState.ViewInfo?, &type metadata for DisplayList.HostedViewState.ViewInfo, MEMORY[0x1E69E6720], type metadata accessor for DisplayList.HostedViewState.ViewInfo?);
  }

  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance DisplayList.HostedViewState.FetchView@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance DisplayList.HostedViewState.Child@<X0>(uint64_t *a1@<X8>)
{
  Value = AGGraphGetValue();
  outlined init with copy of _Benchmark(Value + 16, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = (*(v4 + 16))(v3, v4);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  *a1 = v5;
  return result;
}

uint64_t DisplayList.HostedViewResponder.__allocating_init(inputs:)()
{
  v0 = swift_allocObject();
  v0[28] = 0;
  v0[29] = 0;
  v0[27] = 0;
  ViewTransform.init()();
  return DefaultLayoutViewResponder.init(inputs:)();
}

uint64_t DisplayList.HostedViewResponder.__allocating_init(inputs:viewSubgraph:)()
{
  v0 = swift_allocObject();
  v0[28] = 0;
  v0[29] = 0;
  v0[27] = 0;
  ViewTransform.init()();
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)();
}

uint64_t DisplayList.HostedViewResponder.__ivar_destroyer()
{
}

uint64_t DisplayList.HostedViewResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  return swift_deallocClassInstance();
}

uint64_t assignWithCopy for DisplayList.HostedViewState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  v6 = v4;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  return a1;
}

__n128 __swift_memcpy124_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for DisplayList.HostedViewState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.HostedViewState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 124))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayList.HostedViewState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 124) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 124) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI11DisplayListVAHE15HostedViewStateV3KeyVAL0N4InfoVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i4UI11kl6VAIE15mno2V3p7V_AM0M4Q4VTG5AQxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAnPIsgnndzo_Tf1nc_n03_s7iykl6VAAE15mno54V7reclaim33_A20DF47D739D7FD0278716FD8B020A7BLLyyFSbAE3p11V3key_AE0F4Q15V5valuet_tXEfU_ALTf1nnc_n(void *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

BOOL specialized static DisplayList.HostedViewState.Key.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  type metadata accessor for (UUID?, UUID?)();
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v15 = v12;
  v16 = *(type metadata accessor for DisplayList.HostedViewState.Key(0) + 24);
  v17 = *(v15 + 48);
  v18 = MEMORY[0x1E69695A8];
  _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(a1 + v16, v14, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(a2 + v16, &v14[v17], &lazy cache variable for type metadata for UUID?, v18);
  v19 = *(v5 + 48);
  if (v19(v14, 1, v4) == 1)
  {
    if (v19(&v14[v17], 1, v4) == 1)
    {
      outlined destroy of DisplayList.HostedViewState.ViewInfo?(v14, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], _s10Foundation4UUIDVSgMaTm_0);
      return 1;
    }

    goto LABEL_8;
  }

  _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(v14, v10, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  if (v19(&v14[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_8:
    _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v14, type metadata accessor for (UUID?, UUID?));
    return 0;
  }

  (*(v5 + 32))(v7, &v14[v17], v4);
  lazy protocol witness table accessor for type AGAttributeTypeFlags and conformance AGAttributeTypeFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v5 + 8);
  v22(v7, v4);
  v22(v10, v4);
  outlined destroy of DisplayList.HostedViewState.ViewInfo?(v14, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], _s10Foundation4UUIDVSgMaTm_0);
  return (v21 & 1) != 0;
}

uint64_t *initializeBufferWithCopyOfBuffer for DisplayList.HostedViewState.FetchView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 20);
    v6 = a1 + v5;
    v7 = a2 + v5;
    *(a1 + v5) = *(a2 + v5);
    v8 = *(type metadata accessor for DisplayList.HostedViewState.Key(0) + 24);
    v9 = type metadata accessor for UUID();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(&v7[v8], 1, v9))
    {
      _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
      memcpy(&v6[v8], &v7[v8], *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v6[v8], &v7[v8], v9);
      (*(v10 + 56))(&v6[v8], 0, 1, v9);
    }
  }

  return v3;
}

uint64_t destroy for DisplayList.HostedViewState.FetchView(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 20);
  v3 = *(type metadata accessor for DisplayList.HostedViewState.Key(0) + 24);
  v4 = type metadata accessor for UUID();
  v7 = *(v4 - 8);
  result = (*(v7 + 48))(v2 + v3, 1, v4);
  if (!result)
  {
    v6 = *(v7 + 8);

    return v6(v2 + v3, v4);
  }

  return result;
}

_DWORD *initializeWithCopy for DisplayList.HostedViewState.FetchView(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *(a1 + v4) = *(a2 + v4);
  v7 = *(type metadata accessor for DisplayList.HostedViewState.Key(0) + 24);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(&v6[v7], 1, v8))
  {
    _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy(&v5[v7], &v6[v7], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(&v5[v7], &v6[v7], v8);
    (*(v9 + 56))(&v5[v7], 0, 1, v8);
  }

  return a1;
}

_DWORD *assignWithCopy for DisplayList.HostedViewState.FetchView(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *v5 = *(a2 + v4);
  *(v5 + 1) = *(a2 + v4 + 4);
  v7 = *(type metadata accessor for DisplayList.HostedViewState.Key(0) + 24);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(&v5[v7], 1, v8);
  v12 = v10(&v6[v7], 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 24))(&v5[v7], &v6[v7], v8);
      return a1;
    }

    (*(v9 + 8))(&v5[v7], v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy(&v5[v7], &v6[v7], *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v9 + 16))(&v5[v7], &v6[v7], v8);
  (*(v9 + 56))(&v5[v7], 0, 1, v8);
  return a1;
}

_DWORD *initializeWithTake for DisplayList.HostedViewState.FetchView(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *(a1 + v4) = *(a2 + v4);
  v7 = *(type metadata accessor for DisplayList.HostedViewState.Key(0) + 24);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(&v6[v7], 1, v8))
  {
    _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy(&v5[v7], &v6[v7], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(&v5[v7], &v6[v7], v8);
    (*(v9 + 56))(&v5[v7], 0, 1, v8);
  }

  return a1;
}

_DWORD *assignWithTake for DisplayList.HostedViewState.FetchView(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *(a1 + v4) = *(a2 + v4);
  v7 = *(type metadata accessor for DisplayList.HostedViewState.Key(0) + 24);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(&v5[v7], 1, v8);
  v12 = v10(&v6[v7], 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(&v5[v7], &v6[v7], v8);
      return a1;
    }

    (*(v9 + 8))(&v5[v7], v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy(&v5[v7], &v6[v7], *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v9 + 32))(&v5[v7], &v6[v7], v8);
  (*(v9 + 56))(&v5[v7], 0, 1, v8);
  return a1;
}

void *assignWithCopy for DisplayList.HostedViewState.InheritedState(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];

  a1[7] = a2[7];

  return a1;
}

_OWORD *assignWithTake for DisplayList.HostedViewState.InheritedState(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  a1[3] = a2[3];

  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.HostedViewState.InheritedState(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayList.HostedViewState.InheritedState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t assignWithTake for DisplayList.HostedViewState.ViewInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  __swift_destroy_boxed_opaque_existential_1(a1 + 16);
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);

  v5 = *(a1 + 152);
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);

  return a1;
}

uint64_t storeEnumTagSinglePayload for DisplayList.HostedViewState.ViewInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for DisplayList.HostedViewState.Key(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *v4 = *a2;
    v4 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v6 = *(a3 + 24);
    v7 = type metadata accessor for UUID();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(&a2[v6], 1, v7))
    {
      _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
      memcpy(&v4[v6], &a2[v6], *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(&v4[v6], &a2[v6], v7);
      (*(v8 + 56))(&v4[v6], 0, 1, v7);
    }
  }

  return v4;
}

uint64_t destroy for DisplayList.HostedViewState.Key(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = type metadata accessor for UUID();
  v7 = *(v4 - 8);
  result = (*(v7 + 48))(a1 + v3, 1, v4);
  if (!result)
  {
    v6 = *(v7 + 8);

    return v6(a1 + v3, v4);
  }

  return result;
}

char *initializeWithCopy for DisplayList.HostedViewState.Key(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 1, v6))
  {
    _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

char *assignWithCopy for DisplayList.HostedViewState.Key(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(&a1[v5], 1, v6);
  v10 = v8(&a2[v5], 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(&a1[v5], &a2[v5], v6);
      return a1;
    }

    (*(v7 + 8))(&a1[v5], v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v11 - 8) + 64));
    return a1;
  }

  (*(v7 + 16))(&a1[v5], &a2[v5], v6);
  (*(v7 + 56))(&a1[v5], 0, 1, v6);
  return a1;
}

char *initializeWithTake for DisplayList.HostedViewState.Key(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 1, v6))
  {
    _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

char *assignWithTake for DisplayList.HostedViewState.Key(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(&a1[v5], 1, v6);
  v10 = v8(&a2[v5], 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(&a1[v5], &a2[v5], v6);
      return a1;
    }

    (*(v7 + 8))(&a1[v5], v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v11 - 8) + 64));
    return a1;
  }

  (*(v7 + 32))(&a1[v5], &a2[v5], v6);
  (*(v7 + 56))(&a1[v5], 0, 1, v6);
  return a1;
}

void VibrantColorForegroundStyle.init(_:alwaysAppearsActive:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t assignWithCopy for VibrantColorForegroundStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for VibrantColorForegroundStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t closure #1 in GradientBackground.body.getter@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  type metadata accessor for _ContiguousArrayStorage<Color>();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18CD63410;
  v7 = specialized Environment.wrappedValue.getter(a1, a2 & 1);
  if (!v7)
  {
    v7 = static Color.accentColor.getter();
  }

  *(v6 + 32) = v7;
  *(v6 + 40) = static Color.clear.getter();
  GeometryProxy.safeAreaInsets.getter();
  v27 = v8;
  GeometryProxy.size.getter();
  v10 = v9;
  GeometryProxy.safeAreaInsets.getter();
  v12 = v11;
  GeometryProxy.safeAreaInsets.getter();
  v14 = v13;
  if (one-time initialization token for minimumComponentHeight != -1)
  {
    swift_once();
  }

  v15 = *&static ClarityUIMetrics.minimumComponentHeight;
  if (one-time initialization token for backButtonPadding != -1)
  {
    swift_once();
  }

  v16 = *&static ClarityUIMetrics.backButtonPadding;
  GeometryProxy.size.getter();
  v18 = v17;
  GeometryProxy.safeAreaInsets.getter();
  v20 = v19;
  GeometryProxy.safeAreaInsets.getter();
  v22 = v21;
  v23 = MEMORY[0x18D00B0A0](v6);
  if (one-time initialization token for clarityUIContentBackground != -1)
  {
    swift_once();
  }

  v24 = static Color.clarityUIContentBackground;
  v25 = static Edge.Set.all.getter();

  result = static Edge.Set.all.getter();
  *a3 = v23;
  *(a3 + 8) = 0x3FE0000000000000;
  *(a3 + 16) = v27 / (v10 + v12 + v14);
  *(a3 + 24) = 0x3FE0000000000000;
  *(a3 + 32) = 1.0 - (v15 + v16 + v16) / (v18 + v20 + v22);
  *(a3 + 40) = 0x3FC3333333333333;
  *(a3 + 48) = v24;
  *(a3 + 56) = v25;
  *(a3 + 57) = result;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance GradientBackground@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a1 = partial apply for closure #1 in GradientBackground.body.getter;
  a1[1] = v5;

  return outlined copy of Environment<Color?>.Content(v3, v4);
}

void type metadata accessor for _ContiguousArrayStorage<Color>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Color>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Color>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>> and conformance GeometryReader<A>()
{
  result = lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>> and conformance GeometryReader<A>;
  if (!lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>> and conformance GeometryReader<A>)
  {
    type metadata accessor for GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>> and conformance GeometryReader<A>);
  }

  return result;
}

void type metadata accessor for GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>>()
{
  if (!lazy cache variable for type metadata for GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for GeometryReader();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>)
  {
    type metadata accessor for ModifiedContent<LinearGradient, _OpacityEffect>(255, &lazy cache variable for type metadata for ModifiedContent<LinearGradient, _OpacityEffect>, MEMORY[0x1E697E3F0], MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    type metadata accessor for ModifiedContent<LinearGradient, _OpacityEffect>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>);
    }
  }
}

void type metadata accessor for ModifiedContent<LinearGradient, _OpacityEffect>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>>();
    lazy protocol witness table accessor for type ModifiedContent<LinearGradient, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LinearGradient, _OpacityEffect>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LinearGradient, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LinearGradient, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LinearGradient, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<LinearGradient, _OpacityEffect>(255, &lazy cache variable for type metadata for ModifiedContent<LinearGradient, _OpacityEffect>, MEMORY[0x1E697E3F0], MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type LinearGradient and conformance LinearGradient();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LinearGradient, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LinearGradient and conformance LinearGradient()
{
  result = lazy protocol witness table cache variable for type LinearGradient and conformance LinearGradient;
  if (!lazy protocol witness table cache variable for type LinearGradient and conformance LinearGradient)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinearGradient and conformance LinearGradient);
  }

  return result;
}

uint64_t Scene.transformEnvironment<A>(_:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v9[0] = _EnvironmentKeyTransformModifier.init(keyPath:transform:)();
  v9[1] = v5;
  v9[2] = v6;
  v7 = type metadata accessor for _EnvironmentKeyTransformModifier();
  Scene.modifier<A>(_:)(v9, a4, v7);
}

uint64_t key path setter for EnvironmentValues.subscript<A>(_:) : <A><A1>EnvironmentValuesA1()
{
  v0 = swift_unknownObjectRetain();
  specialized EnvironmentValues.subscript.setter(v0);

  return swift_unknownObjectRelease();
}

uint64_t Scene.environmentObject<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = static ObservableObject.environmentStore.getter();
  v9 = a1;
  swift_unknownObjectRetain();
  Scene.environment<A>(_:_:)(v7, &v9, a2, a4);
  swift_unknownObjectRelease();
}

Swift::Int specialized EnvironmentObjectKey.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1);
  return Hasher._finalize()();
}

uint64_t SectionConfiguration.actions.getter@<X0>(void *a1@<X8>)
{
  SectionConfiguration.containerValues.getter();
  ViewTraitCollection.value<A>(for:defaultValue:)();

  *a1 = v3;
  return result;
}

uint64_t _UIHostingView.legacyShouldUpdateKeyboardSafeArea.getter()
{
  if ((_UIHostingView.safeAreaRegions.getter() & 2) != 0)
  {
    result = _UIHostingView.viewController.getter();
    if (!result)
    {
      return result;
    }

    v2 = specialized UIView.firstAncestorWhere(_:)(v0);
    if (!v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _UIHostingView.legacyShouldAddKeyboardToSafeArea.getter()
{
  if (_UIHostingView.legacyShouldUpdateKeyboardSafeArea.getter())
  {
    v1 = [v0 window];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 screen];
    }

    else
    {
      v3 = 0;
    }

    v5 = [objc_opt_self() mainScreen];
    v6 = v5;
    if (v3)
    {
      if (v5)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScreen);
        v4 = static NSObject.== infix(_:_:)();
      }

      else
      {
        v4 = 0;
      }

      v6 = v3;
    }

    else
    {
      if (!v5)
      {
        v4 = 1;
        return v4 & 1;
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

Swift::Void __swiftcall _UIHostingView.legacySetupKeyboardAvoidanceNotifications()()
{
  type metadata accessor for _SemanticFeature<Semantics_v2>();
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    static Semantics.v7.getter();
    if ((isLinkedOnOrAfter(_:)() & 1) == 0)
    {
      v1 = [objc_opt_self() defaultCenter];
      [v1 addObserver:v0 selector:sel_legacyKeyboardWillShowWithNotification_ name:*MEMORY[0x1E69DE080] object:0];
      [v1 addObserver:v0 selector:sel_legacyKeyboardWillHideWithNotification_ name:*MEMORY[0x1E69DE078] object:0];
      [v1 addObserver:v0 selector:sel_legacyKeyboardFrameWillChangeWithNotification_ name:*MEMORY[0x1E69DE068] object:0];
    }
  }
}

Swift::Bool __swiftcall _UIHostingView.legacySetKeyboardFrame(_:screen:seed:)(__C::CGRect_optional *_, UIScreen_optional screen, Swift::UInt32 seed)
{
  v4 = *&screen.is_nil;
  isa = screen.value.super.isa;
  v7 = MEMORY[0x1E69E7D40];
  x = _->value.origin.x;
  y = _->value.origin.y;
  width = _->value.size.width;
  height = _->value.size.height;
  static Semantics.v7.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 || *(v3 + *((*v7 & *v3) + 0xB8)) != v4)
  {
    return 0;
  }

  v12 = (v3 + *((*v7 & *v3) + 0xB0));
  is_nil = _->is_nil;
  if (is_nil)
  {
    if (LOBYTE(v12[2].width))
    {
      return 0;
    }
  }

  else if ((LOBYTE(v12[2].width) & 1) == 0)
  {
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    if (CGRectEqualToRect(v30, *&v12->width))
    {
      return 0;
    }
  }

  _UIHostingView._legacyHostKeyboardHeight.getter();
  v15 = v14;
  v16 = v12->height;
  v17 = v12[1].height;
  width_low = LOBYTE(v12[2].width);
  LOBYTE(v12[2].width) = _->is_nil;
  size = _->value.size;
  *v12 = _->value.origin;
  v12[1] = size;
  v20 = *((*v7 & *v3) + 0xC0);
  v21 = *(v3 + v20);
  *(v3 + v20) = isa;
  v22 = isa;

  static Semantics.v7.getter();
  v23 = isLinkedOnOrAfter(_:)();
  v24 = 0.0;
  if (!width_low)
  {
    v24 = v17;
  }

  if (is_nil)
  {
    if (v24 == 0.0 || !((v16 != 0.0) & ~width_low | v23 & 1))
    {
      return 0;
    }
  }

  else
  {
    if (v24 == height)
    {
      return 0;
    }

    v25 = 0.0;
    if (!width_low)
    {
      v25 = v16;
    }

    if (!((v25 != y) | v23 & 1))
    {
      return 0;
    }
  }

  v26 = v23;
  _UIHostingView._legacyHostKeyboardHeight.getter();
  if (((v15 == v27) & v26) != 0)
  {
    return 0;
  }

  v29 = _UIHostingView.base.getter();
  UIHostingViewBase.allowUIKitAnimationsForNextUpdate.setter();

  type metadata accessor for _UIHostingView();
  swift_getWitnessTable();
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  return 1;
}