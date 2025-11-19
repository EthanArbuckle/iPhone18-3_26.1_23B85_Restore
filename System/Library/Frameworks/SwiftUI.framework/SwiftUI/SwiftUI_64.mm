uint64_t closure #1 in AttributedString.init<A>(converting:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v36 = a7;
  v32 = a6;
  v33 = a1;
  v40 = a2;
  v41 = a3;
  v34 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributeContainer();
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttributedString();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedSubstring?(0, &lazy cache variable for type metadata for Range<AttributedString.Index>?, type metadata accessor for Range<AttributedString.Index>);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v32 - v19;
  type metadata accessor for Range<AttributedString.Index>();
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v15 + 16);
  v39 = a5;
  v27(v17, a5, v14, v24);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  Range<>.init<A>(_:in:)();
  if ((*(v23 + 48))(v20, 1, v22) == 1)
  {
    return outlined destroy of AttributedSubstring?(v20, &lazy cache variable for type metadata for Range<AttributedString.Index>?, type metadata accessor for Range<AttributedString.Index>);
  }

  outlined init with take of Range<AttributedString.Index>(v20, v26, type metadata accessor for Range<AttributedString.Index>);
  AttributeContainer.init()();
  v29 = v34;
  v30 = v36;
  (*(v34 + 16))(v10, v32, v36);
  (*(v35 + 40))(v33, v13, 1, v30);
  (*(v29 + 8))(v10, v30);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
  v31 = AttributedString.subscript.modify();
  AttributedSubstring.setAttributes(_:)();
  v31(v42, 0);
  (*(v37 + 8))(v13, v38);
  return outlined destroy of Range<AttributedString.Index>(v26);
}

void type metadata accessor for AttributedSubstring?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t outlined destroy of AttributedSubstring?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for AttributedSubstring?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)()
{
  if (!lazy cache variable for type metadata for (lower: AttributedString.Index, upper: AttributedString.Index))
  {
    type metadata accessor for AttributedString.Index();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (lower: AttributedString.Index, upper: AttributedString.Index));
    }
  }
}

uint64_t outlined init with copy of (lower: AttributedString.Index, upper: AttributedString.Index)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Range<AttributedString.Index>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for Gradient.ProviderTag.SwiftUIPlatformTag()
{
  result = type metadata singleton initialization cache for Gradient.ProviderTag.SwiftUIPlatformTag;
  if (!type metadata singleton initialization cache for Gradient.ProviderTag.SwiftUIPlatformTag)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6369627563 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedDecodingContainer<Gradient.CubicDefinition.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys>, lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys, &unk_1EFF9C290, MEMORY[0x1E69E6F58]);
  v14 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  type metadata accessor for KeyedDecodingContainer<Gradient.CubicDefinition.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys>, lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys, &unk_1EFF9C270, v2);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v4 + 8))(v6, v14);
  return (*(v9 + 8))(v11, v8);
}

uint64_t CubicGradientProvider.codingProxy.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v20 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v7 = v20;
    v8 = (a1 + 32);
    v9 = *(v20 + 16);
    do
    {
      v10 = *v8;
      v11 = *(v20 + 24);

      if (v9 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v9 + 1, 1);
      }

      *(v20 + 16) = v9 + 1;
      *(v20 + 8 * v9 + 32) = v10;
      ++v8;
      ++v9;
      --v4;
    }

    while (v4);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (a3 && (v12 = *(a3 + 16)) != 0)
  {

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = v5;
    v14 = (a3 + 32);
    v15 = *(v5 + 16);
    do
    {
      v16 = *v14;
      v21 = v13;
      v17 = *(v13 + 24);
      if (v15 >= v17 >> 1)
      {
        v19 = *v14;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v15 + 1, 1);
        v16 = v19;
        v13 = v21;
      }

      *(v13 + 16) = v15 + 1;
      *(v13 + 16 * v15 + 32) = v16;
      ++v14;
      ++v15;
      --v12;
    }

    while (v12);
  }

  else
  {
  }

  return v7;
}

uint64_t protocol witness for CodableByProxy.codingProxy.getter in conformance CubicGradientProvider@<X0>(uint64_t *a1@<X8>)
{
  result = CubicGradientProvider.codingProxy.getter(*v1, v1[1], v1[2]);
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance CubicGradientProvider@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized static CubicGradientProvider.unwrap(codingProxy:)(*a1, a1[1], a1[2]);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t Gradient.CubicDefinition.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a3;
  type metadata accessor for KeyedDecodingContainer<Gradient.CubicDefinition.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Gradient.CubicDefinition.CodingKeys>, lazy protocol witness table accessor for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys, &unk_1EFF9C320, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a2;
  v17 = 0;
  type metadata accessor for [ProxyCodable<Color>](0, &lazy cache variable for type metadata for [ProxyCodable<Color>], type metadata accessor for ProxyCodable<Color>);
  lazy protocol witness table accessor for type [ProxyCodable<Color>] and conformance <A> [A](&lazy protocol witness table cache variable for type [ProxyCodable<Color>] and conformance <A> [A], &lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v12 = v15;
    v18 = v16;
    v17 = 1;
    type metadata accessor for [Float]();
    lazy protocol witness table accessor for type [Float] and conformance <A> [A](&lazy protocol witness table cache variable for type [Float] and conformance <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = v12;
    v17 = 2;
    type metadata accessor for [ProxyCodable<Color>](0, &lazy cache variable for type metadata for [ConformingTuple<Pack{Float, Float, Float, Float}>], type metadata accessor for ConformingTuple<Pack{Float, Float, Float, Float}>);
    lazy protocol witness table accessor for type [ConformingTuple<Pack{Float, Float, Float, Float}>] and conformance <A> [A](&lazy protocol witness table cache variable for type [ConformingTuple<Pack{Float, Float, Float, Float}>] and conformance <A> [A], &lazy protocol witness table cache variable for type ConformingTuple<Pack{Float, Float, Float, Float}> and conformance <each A> ConformingTuple<Pack{repeat A}>);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Gradient.CubicDefinition.CodingKeys()
{
  v1 = 0x6F69746C61636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x6C6F707265746E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73726F6C6F63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Gradient.CubicDefinition.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Gradient.CubicDefinition.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Gradient.CubicDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Gradient.CubicDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Gradient.CubicDefinition@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized Gradient.CubicDefinition.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t Gradient.ProviderTag.SwiftUIPlatformTag.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Gradient.ProviderTag.SwiftUIPlatformTag.init(from:)(a1);
  return v2;
}

uint64_t Gradient.ProviderTag.SwiftUIPlatformTag.init(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();

    __swift_destroy_boxed_opaque_existential_1(v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t Gradient.ProviderTag.SwiftUIPlatformTag.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

unint64_t lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag()
{
  result = lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag;
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag;
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag;
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Gradient.CubicDefinition and conformance Gradient.CubicDefinition()
{
  result = lazy protocol witness table cache variable for type Gradient.CubicDefinition and conformance Gradient.CubicDefinition;
  if (!lazy protocol witness table cache variable for type Gradient.CubicDefinition and conformance Gradient.CubicDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.CubicDefinition and conformance Gradient.CubicDefinition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.CubicDefinition and conformance Gradient.CubicDefinition;
  if (!lazy protocol witness table cache variable for type Gradient.CubicDefinition and conformance Gradient.CubicDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.CubicDefinition and conformance Gradient.CubicDefinition);
  }

  return result;
}

uint64_t specialized Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.init(from:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedDecodingContainer<Gradient.CubicDefinition.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys>, lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys, &unk_1EFF9C290, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  type metadata accessor for KeyedDecodingContainer<Gradient.CubicDefinition.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys>, lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys, &unk_1EFF9C270, v2);
  v8 = v7;
  v23 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys();
  v11 = v29;
  v12 = a1;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v11)
  {
    v14 = v23;
    v13 = v24;
    v15 = KeyedDecodingContainer.allKeys.getter();
    v16 = (2 * *(v15 + 16)) | 1;
    v25 = v15;
    v26 = v15 + 32;
    v27 = 0;
    v28 = v16;
    if (specialized Collection<>.popFirst()() || v27 != v28 >> 1)
    {
      v17 = type metadata accessor for DecodingError();
      swift_allocError();
      v19 = v18;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v19 = &type metadata for Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v20 = *(*(v17 - 8) + 104);
      v21 = v17;
      v12 = a1;
      v20(v19, *MEMORY[0x1E69E6AF8], v21);
      swift_willThrow();
    }

    else
    {
      lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v13 + 8))(v6, v4);
    }

    (*(v14 + 8))(v10, v8);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t specialized static CubicGradientProvider.unwrap(codingProxy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v17 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = a1 + 32;
    do
    {
      v7 += 8;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v4;
    }

    while (v4);
    v8 = v17;
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  v9 = *(a3 + 16);
  if (!v9)
  {
LABEL_12:

    return v8;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
  v10 = v5;
  v11 = (a3 + 32);
  v12 = *(v5 + 16);
  do
  {
    v13 = *v11;
    v18 = v10;
    v14 = *(v10 + 24);
    if (v12 >= v14 >> 1)
    {
      v16 = *v11;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v12 + 1, 1);
      v13 = v16;
      v10 = v18;
    }

    *(v10 + 16) = v12 + 1;
    *(v10 + 16 * v12 + 32) = v13;
    ++v11;
    ++v12;
    --v9;
  }

  while (v9);
  return v8;
}

uint64_t specialized Gradient.CubicDefinition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73726F6C6F63 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69746C61636F6CLL && a2 == 0xEA0000000000736ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F707265746E69 && a2 == 0xEE00736E6F697461)
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

uint64_t specialized Gradient.CubicDefinition.init(from:)(void *a1)
{
  type metadata accessor for KeyedDecodingContainer<Gradient.CubicDefinition.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Gradient.CubicDefinition.CodingKeys>, lazy protocol witness table accessor for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys, &unk_1EFF9C320, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    type metadata accessor for [ProxyCodable<Color>](0, &lazy cache variable for type metadata for [ProxyCodable<Color>], type metadata accessor for ProxyCodable<Color>);
    v11 = 0;
    lazy protocol witness table accessor for type [ProxyCodable<Color>] and conformance <A> [A](&lazy protocol witness table cache variable for type [ProxyCodable<Color>] and conformance <A> [A], &lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v12;
    type metadata accessor for [Float]();
    v11 = 1;
    lazy protocol witness table accessor for type [Float] and conformance <A> [A](&lazy protocol witness table cache variable for type [Float] and conformance <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    type metadata accessor for [ProxyCodable<Color>](0, &lazy cache variable for type metadata for [ConformingTuple<Pack{Float, Float, Float, Float}>], type metadata accessor for ConformingTuple<Pack{Float, Float, Float, Float}>);
    v11 = 2;
    lazy protocol witness table accessor for type [ConformingTuple<Pack{Float, Float, Float, Float}>] and conformance <A> [A](&lazy protocol witness table cache variable for type [ConformingTuple<Pack{Float, Float, Float, Float}>] and conformance <A> [A], &lazy protocol witness table cache variable for type ConformingTuple<Pack{Float, Float, Float, Float}> and conformance <each A> ConformingTuple<Pack{repeat A}>);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t lazy protocol witness table accessor for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys);
  }

  return result;
}

void type metadata accessor for ProxyCodable<Color>()
{
  if (!lazy cache variable for type metadata for ProxyCodable<Color>)
  {
    v0 = type metadata accessor for ProxyCodable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ProxyCodable<Color>);
    }
  }
}

void type metadata accessor for [Float]()
{
  if (!lazy cache variable for type metadata for [Float])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Float]);
    }
  }
}

void type metadata accessor for [ProxyCodable<Color>](uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ConformingTuple<Pack{Float, Float, Float, Float}>()
{
  if (!lazy cache variable for type metadata for ConformingTuple<Pack{Float, Float, Float, Float}>)
  {
    v0 = type metadata accessor for ConformingTuple();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ConformingTuple<Pack{Float, Float, Float, Float}>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type [ProxyCodable<Color>] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [ProxyCodable<Color>](255, &lazy cache variable for type metadata for [ProxyCodable<Color>], type metadata accessor for ProxyCodable<Color>);
    lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ProxyCodable<Color>();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Float] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [Float]();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ConformingTuple<Pack{Float, Float, Float, Float}> and conformance <each A> ConformingTuple<Pack{repeat A}>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ConformingTuple<Pack{Float, Float, Float, Float}>();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys()
{
  result = lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys;
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys;
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys;
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys);
  }

  return result;
}

void type metadata accessor for KeyedDecodingContainer<Gradient.CubicDefinition.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void *assignWithCopy for Gradient.CubicDefinition(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for Gradient.CubicDefinition(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

unint64_t lazy protocol witness table accessor for type [SheetBehavior.Role] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SheetBehavior.Role] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SheetBehavior.Role] and conformance [A])
  {
    type metadata accessor for [SheetBehavior.Role]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SheetBehavior.Role] and conformance [A]);
  }

  return result;
}

void type metadata accessor for [SheetBehavior.Role]()
{
  if (!lazy cache variable for type metadata for [SheetBehavior.Role])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [SheetBehavior.Role]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SheetBehavior.Role and conformance SheetBehavior.Role()
{
  result = lazy protocol witness table cache variable for type SheetBehavior.Role and conformance SheetBehavior.Role;
  if (!lazy protocol witness table cache variable for type SheetBehavior.Role and conformance SheetBehavior.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SheetBehavior.Role and conformance SheetBehavior.Role);
  }

  return result;
}

uint64_t initializeWithCopy for WheelEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t assignWithCopy for WheelEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for WheelEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for WheelEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for WheelEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t protocol witness for EventType.init(_:) in conformance WheelEvent@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for EventType();
  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5;
    v4 = v7;
    *(a1 + 8) = v6;
  }

  else
  {
    result = outlined consume of WheelEvent?(0, 0, 1);
    v4 = xmmword_18CD6A6D0;
    v3 = 0;
    *(a1 + 8) = 0;
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t outlined consume of WheelEvent?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

BOOL specialized static WheelEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (!v5)
  {
    if (!v6)
    {
      return *(a1 + 24) == *(a2 + 24);
    }

    goto LABEL_12;
  }

  if (!v6)
  {
LABEL_12:

    return 0;
  }

  if (v5 == v6)
  {
    return *(a1 + 24) == *(a2 + 24);
  }

  return 0;
}

void *initializeBufferWithCopyOfBuffer for CustomHoverEffectModifier(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (((((((v5 & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = *(a2 + v5);
    v10 = (v3 + v5) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    outlined copy of Environment<Bool>.Content(v12, v13);
    *(v10 + 8) = v12;
    *(v10 + 16) = v13;
    v14 = *(v11 + 24);
    v15 = *(v11 + 32);
    v16 = *(v11 + 40);
    v17 = *(v11 + 48);
    outlined copy of Environment<HoverEffectContext.State>.Content(v14, v15, v16, v17);
    *(v10 + 24) = v14;
    *(v10 + 32) = v15;
    *(v10 + 40) = v16;
    *(v10 + 48) = v17;
    *(v10 + 49) = *(v11 + 49);
    v18 = (v10 + 57) & 0xFFFFFFFFFFFFFFF8;
    v19 = (v11 + 57) & 0xFFFFFFFFFFFFFFF8;
    v20 = *v19;
    *(v18 + 8) = *(v19 + 8);
    *v18 = v20;
    v21 = (v10 + 73) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v11 + 73) & 0xFFFFFFFFFFFFFFF8;
    v23 = *v22;
    *(v21 + 8) = *(v22 + 8);
    *v21 = v23;
    *(v21 + 9) = *(v22 + 9);
    v24 = ((v21 + 17) & 0xFFFFFFFFFFFFFFF8);
    v25 = (v22 + 17) & 0xFFFFFFFFFFFFFFF8;
    v26 = *v25;
    v25 += 15;
    *v24 = v26;
    v27 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v28 = *(v25 & 0xFFFFFFFFFFFFFFF8);
    v29 = *((v25 & 0xFFFFFFFFFFFFFFF8) + 8);
    LOBYTE(v16) = *((v25 & 0xFFFFFFFFFFFFFFF8) + 16);
    outlined copy of Environment<String?>.Content(v28, v29, v16);
    *v27 = v28;
    *(v27 + 8) = v29;
    *(v27 + 16) = v16;
  }

  return v3;
}

uint64_t initializeWithTake for CustomHoverEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = v9;
  v10 = *(v8 + 33);
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 33) = v10;
  *(v7 + 49) = *(v8 + 49);
  v11 = (v7 + 57) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v8 + 57) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 8);
  *v11 = *v12;
  *(v11 + 8) = v13;
  v14 = (v7 + 73) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + 73) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v11) = *(v15 + 8);
  *v14 = *v15;
  *(v14 + 8) = v11;
  *(v14 + 9) = *(v15 + 9);
  v16 = ((v14 + 17) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 17) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v11) = *(v19 + 16);
  *v18 = *v19;
  *(v18 + 16) = v11;
  return a1;
}

uint64_t assignWithTake for CustomHoverEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v9 = v7 & 0xFFFFFFFFFFFFFFF8;
  v10 = v8 & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v7) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 16);
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  *(v9 + 8) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v9 + 16) = v7;
  outlined consume of Environment<Bool>.Content(v11, v12);
  v13 = *(v10 + 40);
  v14 = *(v10 + 48);
  v15 = *(v9 + 24);
  v16 = *(v9 + 32);
  v17 = *(v9 + 40);
  v18 = *(v9 + 48);
  *(v9 + 24) = *(v10 + 24);
  *(v9 + 40) = v13;
  *(v9 + 48) = v14;
  outlined consume of Environment<HoverEffectContext.State>.Content(v15, v16, v17, v18);
  *(v9 + 49) = *(v10 + 49);
  v19 = (v9 + 57) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v10 + 57) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  *(v19 + 8) = *(v20 + 8);
  *v19 = v21;
  v22 = (v9 + 73) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v10 + 73) & 0xFFFFFFFFFFFFFFF8;
  v24 = *v23;
  *(v22 + 8) = *(v23 + 8);
  *v22 = v24;
  *(v22 + 9) = *(v23 + 9);
  v25 = ((v23 + 17) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v22 + 17) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v25;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v24) = *(v28 + 16);
  v29 = *v27;
  v30 = *(v27 + 8);
  v31 = *(v27 + 16);
  *v27 = *v28;
  *(v27 + 16) = v24;
  outlined consume of Environment<String?>.Content(v29, v30, v31);
  return a1;
}

uint64_t getEnumTagSinglePayload for CustomHoverEffectModifier(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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
    goto LABEL_27;
  }

  v8 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = a1[v6];
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v14 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v15 = *a1;
  }

  else
  {
    v14 = 0;
    v15 = *a1;
  }

  return v7 + (v15 | v14) + 1;
}

void storeEnumTagSinglePayload for CustomHoverEffectModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = (((((((v9 & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        a1[v9] = a2 + 1;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, (((((((v9 & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

double protocol witness for static Rule.initialValue.getter in conformance CustomHoverEffectPrimitiveViewModifier<A>.MakeRootContext@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance CustomHoverEffectPrimitiveViewModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t key path getter for EnvironmentValues.sceneIdentifier : EnvironmentValues@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.sceneIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for CustomHoverEffectPrimitiveViewModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 88 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 8);
    v12 = *(v11 + 16);
    *(v10 + 24) = *(v11 + 24);
    *(v10 + 16) = v12;
    LOBYTE(v12) = *(v11 + 40);
    *(v10 + 32) = *(v11 + 32);
    *(v10 + 40) = v12;
    *(v10 + 41) = *(v11 + 41);
    *(v10 + 42) = *(v11 + 42);
    *(v10 + 48) = *(v11 + 48);
    *(v10 + 56) = *(v11 + 56);
    *(v10 + 64) = *(v11 + 64);
    *(v10 + 72) = *(v11 + 72);
    *(v10 + 80) = *(v11 + 80);
  }

  return v3;
}

uint64_t initializeWithTake for CustomHoverEffectPrimitiveViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  v11 = *(v8 + 48);
  v10 = *(v8 + 64);
  v12 = *(v8 + 32);
  *(v7 + 80) = *(v8 + 80);
  *(v7 + 48) = v11;
  *(v7 + 64) = v10;
  *(v7 + 32) = v12;
  return a1;
}

uint64_t assignWithTake for CustomHoverEffectPrimitiveViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  LOBYTE(v6) = *(v8 + 24);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = v6;
  LOBYTE(v6) = *(v8 + 40);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 40) = v6;
  *(v7 + 41) = *(v8 + 41);
  *(v7 + 42) = *(v8 + 42);
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 56) = *(v8 + 56);
  *(v7 + 64) = *(v8 + 64);

  *(v7 + 72) = *(v8 + 72);
  *(v7 + 80) = *(v8 + 80);

  return a1;
}

uint64_t getEnumTagSinglePayload for CustomHoverEffectPrimitiveViewModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 88;
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
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 64);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
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

double storeEnumTagSinglePayload for CustomHoverEffectPrimitiveViewModifier(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 88;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFA8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFA8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFA8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 88);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFE)
    {
      result = 0.0;
      *(v19 + 72) = 0u;
      *(v19 + 56) = 0u;
      *(v19 + 40) = 0u;
      *(v19 + 24) = 0u;
      *(v19 + 8) = 0u;
      *v19 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 64) = a2;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t destroy for HoverEffectContext.RootContextOptions()
{
}

uint64_t assignWithCopy for HoverEffectContext.RootContextOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithTake for HoverEffectContext.RootContextOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;

  v5 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for HoverEffectContext.RootContextOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for HoverEffectContext.RootContextOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t AnyNavigationLinkPresentedValue.view<A>(basedOn:applying:apparentPosition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v12;
  v17[4] = *(a1 + 64);
  v18 = *(a1 + 80);
  v13 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v13;
  v14 = v6[3];
  v15 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v14);
  return (*(v15 + 104))(v17, a2, a3, a4, a5, a6, v14, v15);
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 112), a1);
  return v2;
}

uint64_t AnyNavigationLinkPresentedValue.as<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  return (*(v5 + 48))(a2, a2, v4, v5);
}

uint64_t AnyNavigationLinkPresentedValue.setSelection<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 88))(a1, a2, a3, v7, v8);
}

uint64_t AnyNavigationLinkPresentedValue.select<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 96))(a1, a2, a3, v7, v8);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnyNavigationLinkPresentedValue()
{
  Hasher.init(_seed:)();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 24))(v4, v1, v2);
  AnyHashable.hash(into:)();
  outlined destroy of AnyHashable(v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AnyNavigationLinkPresentedValue()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 24))(v4, v1, v2);
  AnyHashable.hash(into:)();
  return outlined destroy of AnyHashable(v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnyNavigationLinkPresentedValue()
{
  Hasher.init(_seed:)();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 24))(v4, v1, v2);
  AnyHashable.hash(into:)();
  outlined destroy of AnyHashable(v4);
  return Hasher._finalize()();
}

unint64_t AnyNavigationLinkPresentedValueStorage.description.getter(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - v4;
  v8 = 0;
  v9 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v8 = 0xD000000000000021;
  v9 = 0x800000018CD409A0;
  (*(v3 + 16))(v5, v1 + *(*v1 + 96), v2);
  v6 = String.init<A>(describing:)();
  MEMORY[0x18D00C9B0](v6);

  return v8;
}

uint64_t AnyNavigationLinkPresentedValueStorage.hashableRepresentation.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8 - v6, v1 + *(v2 + 96), v3, v4);
  return AnyHashable.init<A>(_:)();
}

uint64_t AnyNavigationLinkPresentedValueStorage.presentationAction.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 96);
  v6 = *v2;
  v7 = *(*v2 + 80);
  *(a2 + 24) = v7;
  *(a2 + 32) = *(v6 + 88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  result = (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v2 + v5, v7);
  *(a2 + 56) = a1;
  return result;
}

uint64_t AnyNavigationLinkPresentedValueStorage.as<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*v3 + 80);
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v13 - v10, v3 + *(v8 + 96), v6, v7);
  v11 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v11 ^ 1u, 1, a2);
}

uint64_t AnyNavigationLinkPresentedValueStorage.append(to:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v9 - v6;
  (*(v4 + 16))(v9 - v6, v1 + *(v2 + 96), v3, v5);
  AnyNavigationPath.append<A>(_:)(v7, v3, *(v2 + 88));
  return (*(v4 + 8))(v7, v3);
}

uint64_t AnyNavigationLinkPresentedValueStorage.append(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = *(*v4 + 80);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = v15 - v12;
  (*(v10 + 16))(v15 - v12, v4 + *(v8 + 96), v9, v11);
  v15[1] = a1;
  v15[2] = a2;
  v15[3] = a3;
  type metadata accessor for Binding<AnyNavigationPath>();
  MEMORY[0x18D00ACC0](&v16);
  AnyNavigationPath.append<A>(_:)(v13, v9, *(v8 + 88));
  (*(v10 + 8))(v13, v9);
  v15[0] = v16;
  dispatch thunk of AnyLocation.set(_:transaction:)();
}

uint64_t AnyNavigationLinkPresentedValueStorage.setSelection<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25[0] = a3;
  v25[1] = a1;
  v6 = *v3;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - v9;
  v11 = *(v6 + 80);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - v13;
  v15 = *(a2 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v14, &v4[*(v6 + 96)], v11, v17);
  v21 = swift_dynamicCast();
  v22 = *(v15 + 56);
  if (v21)
  {
    v22(v10, 0, 1, a2);
    (*(v15 + 32))(v19, v10, a2);
    v23 = type metadata accessor for SelectionManagerBox();
    if ((SelectionManagerBox.isSelected(_:)(v19, v23) & 1) == 0 || SelectionManagerBox.count.getter(v23) != 1)
    {
      SelectionManagerBox.setSelection(_:)(v19, v23);
    }

    return (*(v15 + 8))(v19, a2);
  }

  else
  {
    v22(v10, 1, 1, a2);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t AnyNavigationLinkPresentedValueStorage.select<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a3;
  v24[1] = a1;
  v5 = *v3;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v10 = *(v5 + 80);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v14 = *(a2 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v13, &v3[*(v5 + 96)], v10, v16);
  v20 = swift_dynamicCast();
  v21 = *(v14 + 56);
  if (v20)
  {
    v21(v9, 0, 1, a2);
    (*(v14 + 32))(v18, v9, a2);
    v22 = type metadata accessor for SelectionManagerBox();
    if ((SelectionManagerBox.isSelected(_:)(v18, v22) & 1) == 0)
    {
      SelectionManagerBox.select(_:)(v18, v22);
    }

    return (*(v14 + 8))(v18, a2);
  }

  else
  {
    v21(v9, 1, 1, a2);
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t AnyNavigationLinkPresentedValueStorage.view<A>(basedOn:applying:apparentPosition:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*v6 + 80);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v22 - v14;
  v17 = *(v16 + 48);
  v22[2] = *(v16 + 32);
  v22[3] = v17;
  v22[4] = *(v16 + 64);
  v23 = *(v16 + 80);
  v18 = *(v16 + 16);
  v22[0] = *v16;
  v22[1] = v18;
  (*(v13 + 16))(v22 - v14, v6 + *(v19 + 96), v12);
  v20 = ResolvedNavigationDestinations.view<A, B>(presenting:at:applying:)(v15, a4, a2, a3, v12, a5, a6);
  (*(v13 + 8))(v15, v12);
  return v20;
}

uint64_t AnyNavigationLinkPresentedValueStorage.isOn(_:)(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, v1 + *(v3 + 96), v4, v6);
  LOBYTE(v2) = AnyNavigationPath.contains<A>(_:)(v8, v2, v4, *(v3 + 88));
  (*(v5 + 8))(v8, v4);
  return v2 & 1;
}

uint64_t type metadata completion function for AnyNavigationLinkCodablePresentedValueStorage()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t AnyNavigationLinkCodablePresentedValueStorage.description.getter(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - v4;
  v8 = 0;
  v9 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v8 = 0xD000000000000021;
  v9 = 0x800000018CD409A0;
  (*(v3 + 16))(v5, v1 + *(*v1 + 112), v2);
  v6 = String.init<A>(describing:)();
  MEMORY[0x18D00C9B0](v6);

  return v8;
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.hashableRepresentation.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8 - v6, v1 + *(v2 + 112), v3, v4);
  return AnyHashable.init<A>(_:)();
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.presentationAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 80);
  *(a1 + 24) = v6;
  *(a1 + 32) = *(v4 + 88);
  *(a1 + 48) = *(v3 + 104);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  result = (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v1 + v5, v6);
  *(a1 + 56) = 2;
  return result;
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.presentationInListAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  v4 = *v1;
  v5 = *(*v1 + 80);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v4 + 104);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  result = (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v1 + v3, v5);
  *(a1 + 56) = 3;
  return result;
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.as<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*v3 + 80);
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v13 - v10, v3 + *(v8 + 112), v6, v7);
  v11 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v11 ^ 1u, 1, a2);
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.append(to:)(uint64_t a1)
{
  v2 = *v1;
  v3 = (*v1)[10];
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v9 - v6;
  (*(v4 + 16))(v9 - v6, v1 + v2[14], v3, v5);
  AnyNavigationPath.append<A>(_:)(v7, v3, v2[11], v2[12], v2[13]);
  return (*(v4 + 8))(v7, v3);
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.append(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = (*v4)[10];
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = v15 - v12;
  (*(v10 + 16))(v15 - v12, v4 + v8[14], v9, v11);
  v15[1] = a1;
  v15[2] = a2;
  v15[3] = a3;
  type metadata accessor for Binding<AnyNavigationPath>();
  MEMORY[0x18D00ACC0](&v16);
  AnyNavigationPath.append<A>(_:)(v13, v9, v8[11], v8[12], v8[13]);
  (*(v10 + 8))(v13, v9);
  v15[0] = v16;
  dispatch thunk of AnyLocation.set(_:transaction:)();
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.isSelected<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[0] = a3;
  v25[1] = a1;
  v5 = *v3;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - v8;
  v10 = *(v5 + 80);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  v14 = *(a2 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v13, &v3[*(v5 + 112)], v10, v16);
  v20 = swift_dynamicCast();
  v21 = *(v14 + 56);
  if (v20)
  {
    v21(v9, 0, 1, a2);
    (*(v14 + 32))(v18, v9, a2);
    v22 = type metadata accessor for SelectionManagerBox();
    v23 = SelectionManagerBox.isSelected(_:)(v18, v22);
    (*(v14 + 8))(v18, a2);
  }

  else
  {
    v21(v9, 1, 1, a2);
    (*(v7 + 8))(v9, v6);
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.setSelection<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25[0] = a3;
  v25[1] = a1;
  v6 = *v3;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - v9;
  v11 = *(v6 + 80);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - v13;
  v15 = *(a2 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v14, &v4[*(v6 + 112)], v11, v17);
  v21 = swift_dynamicCast();
  v22 = *(v15 + 56);
  if (v21)
  {
    v22(v10, 0, 1, a2);
    (*(v15 + 32))(v19, v10, a2);
    v23 = type metadata accessor for SelectionManagerBox();
    if ((SelectionManagerBox.isSelected(_:)(v19, v23) & 1) == 0 || SelectionManagerBox.count.getter(v23) != 1)
    {
      SelectionManagerBox.setSelection(_:)(v19, v23);
    }

    return (*(v15 + 8))(v19, a2);
  }

  else
  {
    v22(v10, 1, 1, a2);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.select<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a3;
  v24[1] = a1;
  v5 = *v3;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v10 = *(v5 + 80);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v14 = *(a2 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v13, &v3[*(v5 + 112)], v10, v16);
  v20 = swift_dynamicCast();
  v21 = *(v14 + 56);
  if (v20)
  {
    v21(v9, 0, 1, a2);
    (*(v14 + 32))(v18, v9, a2);
    v22 = type metadata accessor for SelectionManagerBox();
    if ((SelectionManagerBox.isSelected(_:)(v18, v22) & 1) == 0)
    {
      SelectionManagerBox.select(_:)(v18, v22);
    }

    return (*(v14 + 8))(v18, a2);
  }

  else
  {
    v21(v9, 1, 1, a2);
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.view<A>(basedOn:applying:apparentPosition:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*v6 + 80);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v22 - v14;
  v17 = *(v16 + 48);
  v22[2] = *(v16 + 32);
  v22[3] = v17;
  v22[4] = *(v16 + 64);
  v23 = *(v16 + 80);
  v18 = *(v16 + 16);
  v22[0] = *v16;
  v22[1] = v18;
  (*(v13 + 16))(v22 - v14, v6 + *(v19 + 112), v12);
  v20 = ResolvedNavigationDestinations.view<A, B>(presenting:at:applying:)(v15, a4, a2, a3, v12, a5, a6);
  (*(v13 + 8))(v15, v12);
  return v20;
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.matches(_:)(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7 - 8];
  outlined init with copy of _Benchmark(v9, v16);
  type metadata accessor for AnyNavigationLinkPresentedValueStorageProtocol();
  if (swift_dynamicCast())
  {
    v10 = v15;
    v11 = *(v3 + 16);
    v11(v8, v1 + *(*v1 + 112), v2);
    v11(v5, v10 + *(*v10 + 112), v2);
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();

    v13 = *(v3 + 8);
    v13(v5, v2);
    v13(v8, v2);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.isOn(_:)(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, v1 + *(v3 + 112), v4, v6);
  LOBYTE(v2) = AnyNavigationPath.contains<A>(_:)(v8, v2, v4, *(v3 + 104));
  (*(v5 + 8))(v8, v4);
  return v2 & 1;
}

id AnyNavigationLinkCodablePresentedValueStorage.userActivityForOpeningScene(id:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(*v3 + 80);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - v10;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
    v9 = *v3;
  }

  (*(v8 + 16))(v11, v3 + *(v9 + 112), v7);

  v12 = specialized SceneNavigationStrategy_Phone.userActivityForOpeningWindow<A>(id:value:)(a1, a2, a3 & 1);

  (*(v8 + 8))(v11, v7);
  return v12;
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type AnyNavigationLinkPresentedValue and conformance AnyNavigationLinkPresentedValue()
{
  result = lazy protocol witness table cache variable for type AnyNavigationLinkPresentedValue and conformance AnyNavigationLinkPresentedValue;
  if (!lazy protocol witness table cache variable for type AnyNavigationLinkPresentedValue and conformance AnyNavigationLinkPresentedValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyNavigationLinkPresentedValue and conformance AnyNavigationLinkPresentedValue);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for AnyNavigationLinkCodablePresentedValueStorage<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for Binding<AnyNavigationPath>()
{
  if (!lazy cache variable for type metadata for Binding<AnyNavigationPath>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<AnyNavigationPath>);
    }
  }
}

BOOL specialized AnyNavigationLinkPresentedValue.canBeSelected<A>(in:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 16))(v3, v4) == a1;
}

uint64_t destroy for NavigationStackViewSource(uint64_t result)
{
  v2 = *(result + 64);
  if (v2 >= 2)
  {
    v2 = *result + 2;
  }

  if (v2 == 1)
  {
    if (*(result + 24))
    {
      v3 = result;
      __swift_destroy_boxed_opaque_existential_1(result);
      result = v3;
    }

    result = *(result + 48);
    if (result != 1)
    {
    }
  }

  else if (!v2)
  {

    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

uint64_t assignWithCopy for NavigationStackViewSource(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 64);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
      if (*(a1 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
      }

      if (*(a1 + 48) != 1)
      {
      }
    }

    else if (!v4)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v5 = *(a2 + 64);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v7 = *(a2 + 3);
      if (v7)
      {
        *(a1 + 24) = v7;
        *(a1 + 32) = *(a2 + 4);
        (**(v7 - 8))(a1, a2);
      }

      else
      {
        v11 = *a2;
        v12 = a2[1];
        *(a1 + 32) = *(a2 + 4);
        *a1 = v11;
        *(a1 + 16) = v12;
      }

      if (*(a2 + 6) == 1)
      {
        *(a1 + 40) = *(a2 + 40);
      }

      else
      {
        *(a1 + 40) = *(a2 + 10);
        *(a1 + 44) = *(a2 + 11);
        *(a1 + 48) = *(a2 + 6);
      }

      *(a1 + 56) = *(a2 + 7);
      *(a1 + 64) = 1;
    }

    else if (v5)
    {
      *a1 = *a2;
      v8 = a2[1];
      v9 = a2[2];
      v10 = a2[3];
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 32) = v9;
      *(a1 + 48) = v10;
      *(a1 + 16) = v8;
    }

    else
    {
      v6 = *(a2 + 3);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 4);
      (**(v6 - 8))(a1, a2);
      *(a1 + 64) = 0;
    }
  }

  return a1;
}

__n128 assignWithTake for NavigationStackViewSource(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return result;
  }

  v3 = *(a1 + 64);
  if (v3 >= 2)
  {
    v3 = *a1 + 2;
  }

  if (v3 == 1)
  {
    if (*(a1 + 24))
    {
      v5 = a1;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a1 = v5;
    }

    if (*(a1 + 48) == 1)
    {
      goto LABEL_12;
    }

    v4 = a1;

    goto LABEL_11;
  }

  if (!v3)
  {
    v4 = a1;
    __swift_destroy_boxed_opaque_existential_1(a1);
LABEL_11:
    a1 = v4;
  }

LABEL_12:
  v6 = *(a2 + 64);
  if (v6 >= 2)
  {
    v6 = *a2 + 2;
  }

  if (v6 == 1)
  {
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    result = *(a2 + 32);
    v10 = *(a2 + 48);
    *(a1 + 32) = result;
    *(a1 + 48) = v10;
    *(a1 + 64) = 1;
  }

  else if (v6)
  {
    v11 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v11;
    *(a1 + 64) = *(a2 + 64);
    result = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = result;
  }

  else
  {
    result = *a2;
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 64) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationStackViewSource(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 65))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 64);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NavigationStackViewSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for NavigationStackViewSource(uint64_t a1)
{
  result = *(a1 + 64);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for NavigationStackViewSource(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t NavigationStackViewSource.hash(into:)()
{
  outlined init with copy of NavigationStackViewSource(v0, &v14);
  if (v18)
  {
    if (v18 == 1)
    {
      v11 = v14;
      v12 = v15;
      *v13 = v16;
      *&v13[16] = v17;
      MEMORY[0x18D00F6F0](2);
      outlined init with copy of AnyNavigationLinkPresentedValue?(&v11, &v8);
      if (*(&v9 + 1))
      {
        v5 = v8;
        v6 = v9;
        v7 = v10;
        Hasher._combine(_:)(1u);
        v1 = *(&v6 + 1);
        v2 = v7;
        __swift_project_boxed_opaque_existential_1(&v5, *(&v6 + 1));
        (*(v2 + 24))(v4, v1, v2);
        AnyHashable.hash(into:)();
        outlined destroy of AnyHashable(v4);
        outlined destroy of AnyNavigationLinkPresentedValue(&v5);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      if (*&v13[16] == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v8 = *&v13[8];
        Hasher._combine(_:)(1u);

        _ViewList_ID.Canonical.hash(into:)();
      }

      MEMORY[0x18D00F6F0](*&v13[24]);
      return outlined destroy of NavigationLinkSelectionIdentifier(&v11);
    }

    else
    {
      return MEMORY[0x18D00F6F0](0);
    }
  }

  else
  {
    v11 = v14;
    v12 = v15;
    *v13 = v16;
    MEMORY[0x18D00F6F0](1);
    AnyHashable.hash(into:)();
    return outlined destroy of AnyHashable(&v11);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NavigationStackViewSource()
{
  Hasher.init(_seed:)();
  NavigationStackViewSource.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NavigationStackViewSource()
{
  Hasher.init(_seed:)();
  NavigationStackViewSource.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type NavigationStackViewSource and conformance NavigationStackViewSource()
{
  result = lazy protocol witness table cache variable for type NavigationStackViewSource and conformance NavigationStackViewSource;
  if (!lazy protocol witness table cache variable for type NavigationStackViewSource and conformance NavigationStackViewSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationStackViewSource and conformance NavigationStackViewSource);
  }

  return result;
}

uint64_t specialized static NavigationStackViewSource.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of NavigationStackViewSource(a1, v13);
  outlined init with copy of NavigationStackViewSource(a2, &v15);
  if (!v14)
  {
    outlined init with copy of NavigationStackViewSource(v13, v12);
    if (!v19)
    {
      v8 = v15;
      v9 = v16;
      v10.i64[0] = v17.i64[0];
      v3 = MEMORY[0x18D00E7E0](v12, &v8);
      outlined destroy of AnyHashable(&v8);
      outlined destroy of AnyHashable(v12);
      goto LABEL_16;
    }

    outlined destroy of AnyHashable(v12);
    goto LABEL_14;
  }

  if (v14 == 1)
  {
    outlined init with copy of NavigationStackViewSource(v13, v12);
    if (v19 == 1)
    {
      v8 = v15;
      v9 = v16;
      v10 = v17;
      v11 = v18;
      v3 = specialized static NavigationLinkSelectionIdentifier.== infix(_:_:)(v12, &v8);
      outlined destroy of NavigationLinkSelectionIdentifier(&v8);
      outlined destroy of NavigationLinkSelectionIdentifier(v12);
LABEL_16:
      outlined destroy of NavigationStackViewSource(v13);
      return v3 & 1;
    }

    outlined destroy of NavigationLinkSelectionIdentifier(v12);
    goto LABEL_14;
  }

  v4 = vorrq_s8(vorrq_s8(v15, v17), vorrq_s8(v16, v18));
  v5 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  if (v19 != 2 || *&v5 != 0)
  {
LABEL_14:
    outlined destroy of (NavigationStackViewSource, NavigationStackViewSource)(v13);
    v3 = 0;
    return v3 & 1;
  }

  outlined destroy of NavigationStackViewSource(v13);
  v3 = 1;
  return v3 & 1;
}

uint64_t outlined destroy of (NavigationStackViewSource, NavigationStackViewSource)(uint64_t a1)
{
  type metadata accessor for (NavigationStackViewSource, NavigationStackViewSource)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (NavigationStackViewSource, NavigationStackViewSource)()
{
  if (!lazy cache variable for type metadata for (NavigationStackViewSource, NavigationStackViewSource))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (NavigationStackViewSource, NavigationStackViewSource));
    }
  }
}

uint64_t static DefaultListStyle._makeView<A>(value:inputs:)()
{
  type metadata accessor for List();
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(255, &lazy cache variable for type metadata for ListStyleWriter<PlainListStyle>, &type metadata for PlainListStyle, &protocol witness table for PlainListStyle, type metadata accessor for ListStyleWriter);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ListValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for DefaultListStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<ClarityUIInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(255, &lazy cache variable for type metadata for ListStyleWriter<InsetGroupedListStyle>, &type metadata for InsetGroupedListStyle, &protocol witness table for InsetGroupedListStyle, type metadata accessor for ListStyleWriter);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>()
{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>);
  }

  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance DefaultListStyle.Body<A>@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for List();
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(255, &lazy cache variable for type metadata for ListStyleWriter<PlainListStyle>, &type metadata for PlainListStyle, &protocol witness table for PlainListStyle, type metadata accessor for ListStyleWriter);
  v2 = type metadata accessor for ModifiedContent();
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

uint64_t outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 1 != 0xFFFFFFFF)
  {
    return outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(a1, a2);
  }

  return a1;
}

uint64_t outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

double protocol witness for static Rule.initialValue.getter in conformance SubviewSizingHandlingForUniform@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x1FFFFFFFALL;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void *initializeBufferWithCopyOfBuffer for UpdateCollectionViewListCoordinator(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = *(a2 + 12);
    *(a1 + 52) = *(a2 + 52);
    *(a1 + 68) = *(a2 + 68);
    *(a1 + 84) = *(a2 + 84);
    *(a1 + 100) = *(a2 + 25);
    swift_unknownObjectWeakCopyInit();
    v8 = a3[28];
    v9 = v4 + v8;
    v10 = a2 + v8;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v11 = type metadata accessor for CollectionViewListDataSource();
    v12 = *(v11 - 1);
    if ((*(v12 + 48))(v10, 1, v11))
    {
      v13 = type metadata accessor for Optional();
      memcpy(v9, v10, *(*(v13 - 8) + 64));
LABEL_14:
      v33 = a3[30];
      *(v4 + a3[29]) = *(a2 + a3[29]);
      v34 = *(a2 + v33);
      *(v4 + v33) = v34;

      v35 = v34;
      return v4;
    }

    v40 = v12;
    v15 = *(v10 + 24);
    *(v9 + 24) = v15;
    (**(v15 - 8))(v9, v10);
    v16 = *(v10 + 48);
    *(v9 + 5) = *(v10 + 40);
    *(v9 + 6) = v16;
    v17 = *(v10 + 64);
    *(v9 + 7) = *(v10 + 56);
    *(v9 + 8) = v17;
    v38 = *(v10 + 80);
    *(v9 + 9) = *(v10 + 72);
    *(v9 + 10) = v38;
    v39 = v11[9];
    v18 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    v37 = *(*(v18 - 8) + 16);
    v19 = v16;

    v37(&v9[v39], v10 + v39, v18);
    v20 = v11[10];
    v21 = &v9[v20];
    v22 = v10 + v20;
    v23 = *(v10 + v20 + 8);
    if (v23)
    {
      if (v23 == 1)
      {
        v24 = *(v22 + 48);
        *(v21 + 2) = *(v22 + 32);
        *(v21 + 3) = v24;
        *(v21 + 63) = *(v22 + 63);
        v25 = *(v22 + 16);
        *v21 = *v22;
        *(v21 + 1) = v25;
LABEL_13:
        v28 = v11[11];
        v29 = &v9[v28];
        v30 = (v10 + v28);
        v31 = v30[1];
        *v29 = *v30;
        *(v29 + 1) = v31;
        v9[v11[12]] = *(v10 + v11[12]);
        *&v9[v11[13]] = *(v10 + v11[13]);
        *&v9[v11[14]] = *(v10 + v11[14]);
        v32 = *(v40 + 56);

        v32(v9, 0, 1, v11);
        goto LABEL_14;
      }

      *v21 = *v22;
      *(v21 + 1) = v23;
      *(v21 + 2) = *(v22 + 16);

      v26 = *(v22 + 64);
      if ((v26 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *v21 = *v22;
      *(v21 + 2) = *(v22 + 16);
      v26 = *(v22 + 64);
      if ((v26 & 1) == 0)
      {
LABEL_11:
        v27 = *(v22 + 48);
        *(v21 + 3) = v27;
        (**(v27 - 8))((v21 + 24), v22 + 24);
        goto LABEL_12;
      }
    }

    *(v21 + 3) = *(v22 + 24);

LABEL_12:
    v21[64] = v26;
    *(v21 + 65) = *(v22 + 65);
    goto LABEL_13;
  }

  v14 = *a2;
  *v4 = *a2;
  v4 = (v14 + ((v5 + 16) & ~v5));

  return v4;
}

_DWORD *assignWithCopy for UpdateCollectionViewListCoordinator(_DWORD *a1, _DWORD *a2, int *a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  a1[9] = a2[9];
  a1[10] = a2[10];
  a1[11] = a2[11];
  a1[12] = a2[12];
  a1[13] = a2[13];
  a1[14] = a2[14];
  a1[15] = a2[15];
  a1[16] = a2[16];
  a1[17] = a2[17];
  a1[18] = a2[18];
  a1[19] = a2[19];
  a1[20] = a2[20];
  a1[21] = a2[21];
  a1[22] = a2[22];
  a1[23] = a2[23];
  a1[24] = a2[24];
  a1[25] = a2[25];
  swift_unknownObjectWeakCopyAssign();
  v6 = a3[28];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for CollectionViewListDataSource();
  v10 = *(v9 - 1);
  v11 = *(v10 + 48);
  v12 = v11(v7, 1, v9);
  v13 = v11(v8, 1, v9);
  if (!v12)
  {
    if (v13)
    {
      (*(v10 + 8))(v7, v9);
      goto LABEL_8;
    }

    __swift_assign_boxed_opaque_existential_1(v7, v8);
    *(v7 + 10) = *(v8 + 10);
    *(v7 + 11) = *(v8 + 11);
    v26 = v8[6];
    v27 = v7[6];
    v7[6] = v26;
    v28 = v26;

    v7[7] = v8[7];

    v7[8] = v8[8];

    v7[9] = v8[9];

    v7[10] = v8[10];

    v29 = v9[9];
    v30 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    (*(*(v30 - 8) + 24))(v7 + v29, v8 + v29, v30);
    v31 = v9[10];
    v32 = v7 + v31;
    v33 = v8 + v31;
    v34 = *(v7 + v31 + 8);
    v35 = *(v8 + v31 + 8);
    if (v34 == 1)
    {
      if (v35)
      {
        if (v35 == 1)
        {
          *v32 = *v33;
          v36 = *(v33 + 1);
          v37 = *(v33 + 2);
          v38 = *(v33 + 3);
          *(v32 + 63) = *(v33 + 63);
          *(v32 + 32) = v37;
          *(v32 + 48) = v38;
          *(v32 + 16) = v36;
LABEL_38:
          v55 = v9[11];
          v56 = v7 + v55;
          v57 = v8 + v55;
          *(v7 + v55) = *(v8 + v55);

          *(v56 + 1) = *(v57 + 1);

          *(v7 + v9[12]) = *(v8 + v9[12]);
          *(v7 + v9[13]) = *(v8 + v9[13]);
          *(v7 + v9[14]) = *(v8 + v9[14]);
          goto LABEL_39;
        }

        *v32 = *v33;
        *(v32 + 8) = *(v33 + 1);
        *(v32 + 16) = *(v33 + 2);

        v50 = v33[64];
        if ((v50 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v49 = *v33;
        *(v32 + 16) = *(v33 + 2);
        *v32 = v49;
        v50 = v33[64];
        if ((v50 & 1) == 0)
        {
LABEL_28:
          v51 = *(v33 + 6);
          *(v32 + 48) = v51;
          *(v32 + 56) = *(v33 + 7);
          (**(v51 - 8))(v32 + 24, (v33 + 24));
          *(v32 + 64) = v50;
          goto LABEL_37;
        }
      }

      *(v32 + 24) = *(v33 + 3);

      *(v32 + 64) = v50;
    }

    else
    {
      if (v35 == 1)
      {
        outlined destroy of TableHeaderView(v32);
        *v32 = *v33;
        v47 = *(v33 + 2);
        v46 = *(v33 + 3);
        v48 = *(v33 + 1);
        *(v32 + 63) = *(v33 + 63);
        *(v32 + 32) = v47;
        *(v32 + 48) = v46;
        *(v32 + 16) = v48;
        goto LABEL_38;
      }

      if (v34)
      {
        if (v35)
        {
          *v32 = *v33;

          *(v32 + 8) = *(v33 + 1);

          *(v32 + 16) = *(v33 + 2);
        }

        else
        {
          outlined destroy of Binding<[SwiftUIAnySortComparator]>(v32);
          v52 = *(v33 + 2);
          *v32 = *v33;
          *(v32 + 16) = v52;
        }
      }

      else if (v35)
      {
        *v32 = *v33;
        *(v32 + 8) = *(v33 + 1);
        *(v32 + 16) = *(v33 + 2);
      }

      else
      {
        v53 = *v33;
        *(v32 + 16) = *(v33 + 2);
        *v32 = v53;
      }

      if (a1 != a2)
      {
        outlined destroy of TableColumnCollection.Backing(v32 + 24);
        if (v33[64])
        {
          *(v32 + 24) = *(v33 + 3);
          *(v32 + 64) = 1;
        }

        else
        {
          v54 = *(v33 + 6);
          *(v32 + 48) = v54;
          *(v32 + 56) = *(v33 + 7);
          (**(v54 - 8))(v32 + 24, (v33 + 24));
          *(v32 + 64) = 0;
        }
      }
    }

LABEL_37:
    *(v32 + 65) = v33[65];
    *(v32 + 66) = v33[66];
    goto LABEL_38;
  }

  if (!v13)
  {
    v66 = a3;
    v14 = v8[3];
    v7[3] = v14;
    v7[4] = v8[4];
    (**(v14 - 8))(v7, v8);
    v7[5] = v8[5];
    v15 = v8[6];
    v7[6] = v15;
    v7[7] = v8[7];
    v7[8] = v8[8];
    v7[9] = v8[9];
    v7[10] = v8[10];
    v64 = v9[9];
    v16 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    v63 = *(*(v16 - 8) + 16);
    v17 = v15;

    v63(v7 + v64, v8 + v64, v16);
    v65 = v9;
    v18 = v9[10];
    v19 = v7 + v18;
    v20 = v8 + v18;
    v21 = *(v8 + v18 + 8);
    if (v21)
    {
      if (v21 == 1)
      {
        *v19 = *v20;
        v22 = *(v20 + 1);
        v23 = *(v20 + 2);
        v24 = *(v20 + 3);
        *(v19 + 63) = *(v20 + 63);
        *(v19 + 2) = v23;
        *(v19 + 3) = v24;
        *(v19 + 1) = v22;
        a3 = v66;
LABEL_19:
        v42 = v65[11];
        v43 = v7 + v42;
        v44 = v8 + v42;
        *v43 = *v44;
        *(v43 + 1) = *(v44 + 1);
        *(v7 + v65[12]) = *(v8 + v65[12]);
        *(v7 + v65[13]) = *(v8 + v65[13]);
        *(v7 + v65[14]) = *(v8 + v65[14]);
        v45 = *(v10 + 56);

        v45(v7, 0, 1, v65);
        goto LABEL_39;
      }

      *v19 = *v20;
      *(v19 + 1) = *(v20 + 1);
      *(v19 + 2) = *(v20 + 2);
    }

    else
    {
      v39 = *v20;
      *(v19 + 2) = *(v20 + 2);
      *v19 = v39;
    }

    a3 = v66;
    v40 = v20[64];
    if (v40)
    {
      *(v19 + 3) = *(v20 + 3);
    }

    else
    {
      v41 = *(v20 + 6);
      *(v19 + 6) = v41;
      *(v19 + 7) = *(v20 + 7);
      (**(v41 - 8))((v19 + 24), (v20 + 24));
    }

    v19[64] = v40;
    v19[65] = v20[65];
    v19[66] = v20[66];
    goto LABEL_19;
  }

LABEL_8:
  v25 = type metadata accessor for Optional();
  memcpy(v7, v8, *(*(v25 - 8) + 64));
LABEL_39:
  *(a1 + a3[29]) = *(a2 + a3[29]);

  v58 = a3[30];
  v59 = *(a2 + v58);
  v60 = *(a1 + v58);
  *(a1 + v58) = v59;
  v61 = v59;

  return a1;
}

uint64_t initializeWithTake for UpdateCollectionViewListCoordinator(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 100) = *(a2 + 100);
  swift_unknownObjectWeakTakeInit();
  v7 = a3[28];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for CollectionViewListDataSource();
  v11 = *(v10 - 1);
  if ((*(v11 + 48))(v9, 1, v10))
  {
    v12 = type metadata accessor for Optional();
    memcpy(v8, v9, *(*(v12 - 8) + 64));
  }

  else
  {
    v13 = v9[3];
    v8[2] = v9[2];
    v8[3] = v13;
    v8[4] = v9[4];
    *(v8 + 10) = *(v9 + 10);
    v14 = v9[1];
    *v8 = *v9;
    v8[1] = v14;
    v15 = v10[9];
    v16 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    (*(*(v16 - 8) + 32))(v8 + v15, v9 + v15, v16);
    v17 = v10[10];
    v18 = v8 + v17;
    v19 = v9 + v17;
    v20 = *(v19 + 3);
    *(v18 + 2) = *(v19 + 2);
    *(v18 + 3) = v20;
    *(v18 + 63) = *(v19 + 63);
    v21 = *(v19 + 1);
    *v18 = *v19;
    *(v18 + 1) = v21;
    *(v8 + v10[11]) = *(v9 + v10[11]);
    *(v8 + v10[12]) = *(v9 + v10[12]);
    *(v8 + v10[13]) = *(v9 + v10[13]);
    *(v8 + v10[14]) = *(v9 + v10[14]);
    (*(v11 + 56))(v8, 0, 1, v10);
  }

  v22 = a3[30];
  *(a1 + a3[29]) = *(a2 + a3[29]);
  *(a1 + v22) = *(a2 + v22);
  return a1;
}

uint64_t assignWithTake for UpdateCollectionViewListCoordinator(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v7;
  v8 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v8;
  *(a1 + 96) = *(a2 + 96);
  swift_unknownObjectWeakTakeAssign();
  v9 = a3[28];
  v10 = a1 + v9;
  v11 = a2 + v9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for CollectionViewListDataSource();
  v13 = *(v12 - 1);
  v14 = *(v13 + 48);
  v15 = v14(v10, 1, v12);
  v16 = v14(v11, 1, v12);
  if (!v15)
  {
    if (v16)
    {
      (*(v13 + 8))(v10, v12);
      goto LABEL_6;
    }

    __swift_destroy_boxed_opaque_existential_1(v10);
    v30 = *(v11 + 16);
    *v10 = *v11;
    *(v10 + 16) = v30;
    *(v10 + 32) = *(v11 + 32);
    *(v10 + 40) = *(v11 + 40);
    v31 = *(v10 + 48);
    *(v10 + 48) = *(v11 + 48);

    *(v10 + 56) = *(v11 + 56);

    *(v10 + 64) = *(v11 + 64);

    *(v10 + 72) = *(v11 + 72);

    *(v10 + 80) = *(v11 + 80);

    v32 = v12[9];
    v33 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    (*(*(v33 - 8) + 40))(v10 + v32, v11 + v32, v33);
    v34 = v12[10];
    v35 = v10 + v34;
    v36 = v11 + v34;
    v37 = *(v10 + v34 + 8);
    if (v37 == 1)
    {
      goto LABEL_11;
    }

    v38 = *(v36 + 8);
    if (v38 == 1)
    {
      outlined destroy of TableHeaderView(v35);
LABEL_11:
      v39 = *(v36 + 48);
      *(v35 + 32) = *(v36 + 32);
      *(v35 + 48) = v39;
      *(v35 + 63) = *(v36 + 63);
      v40 = *(v36 + 16);
      *v35 = *v36;
      *(v35 + 16) = v40;
LABEL_20:
      v41 = v12[11];
      v42 = v10 + v41;
      v43 = v11 + v41;
      *(v10 + v41) = *(v11 + v41);

      *(v42 + 8) = *(v43 + 8);

      *(v10 + v12[12]) = *(v11 + v12[12]);
      *(v10 + v12[13]) = *(v11 + v12[13]);
      *(v10 + v12[14]) = *(v11 + v12[14]);
      goto LABEL_7;
    }

    if (v37)
    {
      if (v38)
      {
        *v35 = *v36;

        *(v35 + 8) = *(v36 + 8);

        *(v35 + 16) = *(v36 + 16);

LABEL_17:
        if (a1 != a2)
        {
          outlined destroy of TableColumnCollection.Backing(v35 + 24);
          *(v35 + 24) = *(v36 + 24);
          *(v35 + 40) = *(v36 + 40);
          *(v35 + 49) = *(v36 + 49);
        }

        *(v35 + 65) = *(v36 + 65);
        *(v35 + 66) = *(v36 + 66);
        goto LABEL_20;
      }

      outlined destroy of Binding<[SwiftUIAnySortComparator]>(v35);
    }

    *v35 = *v36;
    *(v35 + 16) = *(v36 + 16);
    goto LABEL_17;
  }

  if (v16)
  {
LABEL_6:
    v26 = type metadata accessor for Optional();
    memcpy(v10, v11, *(*(v26 - 8) + 64));
    goto LABEL_7;
  }

  v17 = *(v11 + 48);
  *(v10 + 32) = *(v11 + 32);
  *(v10 + 48) = v17;
  *(v10 + 64) = *(v11 + 64);
  *(v10 + 80) = *(v11 + 80);
  v18 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v18;
  v19 = v12[9];
  v20 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  (*(*(v20 - 8) + 32))(v10 + v19, v11 + v19, v20);
  v21 = v12[10];
  v22 = v10 + v21;
  v23 = v11 + v21;
  v24 = *(v23 + 48);
  *(v22 + 32) = *(v23 + 32);
  *(v22 + 48) = v24;
  *(v22 + 63) = *(v23 + 63);
  v25 = *(v23 + 16);
  *v22 = *v23;
  *(v22 + 16) = v25;
  *(v10 + v12[11]) = *(v11 + v12[11]);
  *(v10 + v12[12]) = *(v11 + v12[12]);
  *(v10 + v12[13]) = *(v11 + v12[13]);
  *(v10 + v12[14]) = *(v11 + v12[14]);
  (*(v13 + 56))(v10, 0, 1, v12);
LABEL_7:
  *(a1 + a3[29]) = *(a2 + a3[29]);

  v27 = a3[30];
  v28 = *(a1 + v27);
  *(a1 + v27) = *(a2 + v27);

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for CollectionViewListRoot(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = *(a3 + 24);
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  v15 = *(v13 + 80);
  v16 = v8 + v11;
  v17 = *(v10 + 64) + 7;
  v18 = v15 | *(v7 + 80) & 0xF8 | v11;
  if (v18 > 7 || ((*(v13 + 80) | *(v10 + 80) | *(v7 + 80)) & 0x100000) != 0 || ((((v15 + 16) & ~v15) + *(v13 + 64) + ((((((v17 + (v16 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + (v15 | 7) + 8) & ~(v15 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 65 > 0x18)
  {
    v21 = *a2;
    *a1 = *a2;
    a1 = (v21 + (((v18 | 7) + 16) & ~(v18 | 7)));
  }

  else
  {
    v45 = *(v12 - 8);
    __n = ((v15 + 16) & ~v15) + *(v13 + 64);
    v47 = v12;
    v22 = ~v11;
    (*(v7 + 16))(a1, a2, v6);
    v23 = (a2 + v16) & v22;
    (*(v10 + 16))((a1 + v16) & v22, v23, v9);
    v24 = ((v17 + ((a1 + v16) & v22)) & 0xFFFFFFFFFFFFFFF8);
    v25 = ((v17 + v23) & 0xFFFFFFFFFFFFFFF8);
    v26 = v25 + 15;
    v28 = *v25;
    v27 = v25 + 23;
    v29 = v24 + 15;
    *v24 = v28;
    v30 = v24 + 23;
    *(v29 & 0xFFFFFFFFFFFFFFF8) = *(v26 & 0xFFFFFFFFFFFFFFF8);
    v31 = (((v27 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v14 & 0x80000000) != 0)
    {
      v35 = v45;
      v34 = v47;
      v33 = (*(v45 + 48))(v31 + 1, v14, v47);
    }

    else
    {
      v32 = *v31;
      if (*v31 >= 0xFFFFFFFF)
      {
        LODWORD(v32) = -1;
      }

      v33 = v32 + 1;
      v34 = v47;
      v35 = v45;
    }

    v36 = (v30 & 0xFFFFFFFFFFFFFFF8);
    if (v33)
    {
      memcpy(v36, (v27 & 0xFFFFFFFFFFFFFFF8), __n);
    }

    else
    {
      *v36 = *(v27 & 0xFFFFFFFFFFFFFFF8);
      v37 = ((v36 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v37 = *v31;
      v38 = *(v35 + 16);

      v38(v37 + 1, v31 + 1, v34);
    }

    v39 = (v30 + __n) & 0xFFFFFFFFFFFFFFF8;
    v40 = (v27 + __n) & 0xFFFFFFFFFFFFFFF8;
    *v39 = *v40;
    v41 = *(v40 + 16);
    v42 = *(v40 + 32);
    v43 = *(v40 + 48);
    *(v39 + 64) = *(v40 + 64);
    *(v39 + 32) = v42;
    *(v39 + 48) = v43;
    *(v39 + 16) = v41;
  }

  return a1;
}

uint64_t initializeWithTake for CollectionViewListRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v9 = *(v8 - 8);
  v10 = v9 + 32;
  v11 = *(v9 + 80);
  v12 = v7 + v11;
  v13 = (v7 + v11 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  (*(v9 + 32))(v13, v14, v8);
  v15 = *(v10 + 32) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = *(a3 + 24);
  v21 = *(v20 - 8);
  v22 = *(v21 + 80);
  v23 = v22 + 8;
  v24 = *(v21 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v25 = ((v18 + v22 + 8) & v24);
  v26 = ((v19 + v22 + 8) & v24);
  v27 = ~v22;
  v28 = (v22 + 16) & ~v22;
  v29 = *(v21 + 64);
  v30 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v21 + 84) & 0x80000000) == 0)
  {
    v31 = *v30;
    if (*v30 >= 0xFFFFFFFF)
    {
      LODWORD(v31) = -1;
    }

    v32 = v28 + v29;
    if (v31 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v25 = *v26;
    v33 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v33 = *v30;
    (*(v21 + 32))((v33 + v23) & v27, (v30 + v23) & v27, v20);
    goto LABEL_8;
  }

  v32 = v28 + v29;
  if (!(*(v21 + 48))((v30 + v23) & v27))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v25, v26, v32);
LABEL_8:
  v34 = (v25 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v26 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v34 = *v35;
  v36 = *(v35 + 16);
  v37 = *(v35 + 32);
  v38 = *(v35 + 48);
  *(v34 + 64) = *(v35 + 64);
  *(v34 + 32) = v37;
  *(v34 + 48) = v38;
  *(v34 + 16) = v36;
  return a1;
}

uint64_t assignWithTake for CollectionViewListRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v9 = *(v8 - 8);
  v10 = v9 + 40;
  v11 = *(v9 + 80);
  v12 = (v7 + v11 + a1) & ~v11;
  v13 = (v7 + v11 + a2) & ~v11;
  (*(v9 + 40))(v12, v13, v8);
  v14 = *(v10 + 24) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v19 = *(a3 + 24);
  v20 = *(v19 - 8);
  v21 = *(v20 + 84);
  v22 = *(v20 + 80);
  v23 = v22 + 8;
  v24 = *(v20 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v25 = ((v17 + v22 + 8) & v24);
  v26 = ((v18 + v22 + 8) & v24);
  v27 = ((v22 + 16) & ~v22) + *(v20 + 64);
  v28 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
  v48 = ~v22;
  if ((v21 & 0x80000000) != 0)
  {
    v47 = ((v22 + 16) & ~v22) + *(v20 + 64);
    v33 = *(v20 + 48);
    v46 = (v17 + v22 + 8) & v24;
    v34 = (v18 + v22 + 8) & v24;
    v35 = ~v22;
    v45 = v33((v28 + v23) & ~v22, v21, v19);
    v30 = ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
    v36 = (v30 + v23) & v35;
    v26 = v34;
    v25 = v46;
    v37 = v21;
    v29 = v19;
    v32 = v33(v36, v37, v19);
    v27 = v47;
    if (!v45)
    {
LABEL_5:
      if (!v32)
      {
        *v25 = *v26;

        *v28 = *v30;

        (*(v20 + 40))((v28 + v23) & v48, (v30 + v23) & v48, v29);
        goto LABEL_12;
      }

      (*(v20 + 8))((v28 + v23) & v48, v29);
      goto LABEL_9;
    }
  }

  else
  {
    v29 = v19;
    v30 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
    v31 = *v30;
    if (*v30 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v31) = -1;
    }

    v32 = v31 + 1;
    if (*v28 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v32)
  {
    *v25 = *v26;
    *v28 = *v30;
    (*(v20 + 32))((v28 + v23) & v48, (v30 + v23) & v48, v29);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v25, v26, v27);
LABEL_12:
  v38 = (v25 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v26 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v38 = *v39;
  v40 = *(v39 + 8);
  *(v38 + 16) = *(v39 + 16);
  *(v38 + 8) = v40;
  v41 = *(v39 + 24);
  *(v38 + 32) = *(v39 + 32);
  *(v38 + 24) = v41;
  v42 = *(v39 + 40);
  *(v38 + 48) = *(v39 + 48);
  *(v38 + 40) = v42;
  v43 = *(v39 + 56);
  *(v38 + 64) = *(v39 + 64);
  *(v38 + 56) = v43;
  return a1;
}

uint64_t getEnumTagSinglePayload for CollectionViewListRoot(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(*(a3 + 24) - 8);
  v14 = *(v13 + 84);
  v15 = *(v10 + 80);
  v16 = *(v13 + 80);
  if (v14 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  v18 = v17 - 1;
  if (v18 <= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v16 | 7;
  v21 = *(v7 + 64) + v15;
  v22 = *(*(v9 - 8) + 64) + 7;
  if (v19 >= a2)
  {
    goto LABEL_34;
  }

  v23 = ((*(v13 + 64) - ((-17 - v16) | v16) - ((-9 - v20 - ((((v22 + (v21 & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v20) + 5) & 0xFFFFFFFFFFFFFFF8) + 65;
  if (v23 <= 3)
  {
    v24 = ((a2 - v19 + 255) >> 8) + 1;
  }

  else
  {
    v24 = 2;
  }

  if (v24 >= 0x10000)
  {
    v25 = 4;
  }

  else
  {
    v25 = 2;
  }

  if (v24 < 0x100)
  {
    v25 = 1;
  }

  if (v24 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v27 = *&a1[v23];
      if (!*&a1[v23])
      {
        goto LABEL_34;
      }
    }

    else
    {
      v27 = *&a1[v23];
      if (!v27)
      {
        goto LABEL_34;
      }
    }

LABEL_30:
    v29 = (v27 - 1) << (8 * v23);
    if (v23 <= 3)
    {
      v30 = *a1;
    }

    else
    {
      v29 = 0;
      v30 = *a1;
    }

    return v19 + (v30 | v29) + 1;
  }

  if (v26)
  {
    v27 = a1[v23];
    if (a1[v23])
    {
      goto LABEL_30;
    }
  }

LABEL_34:
  if (v8 == v19)
  {
    v31 = *(v7 + 48);

    return v31(a1, v8, v6);
  }

  else
  {
    v32 = &a1[v21] & ~v15;
    if (v11 == v19)
    {
      v33 = *(v10 + 48);

      return v33(v32, v11, v9);
    }

    else
    {
      v34 = ((((v16 + 8 + ((((v22 + v32) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v20) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v14 & 0x80000000) != 0)
      {
        v36 = (*(v13 + 48))((v34 + v16 + 8) & ~v16);
      }

      else
      {
        v35 = *v34;
        if (*v34 >= 0xFFFFFFFF)
        {
          LODWORD(v35) = -1;
        }

        v36 = v35 + 1;
      }

      if (v36 >= 2)
      {
        return v36 - 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void storeEnumTagSinglePayload for CollectionViewListRoot(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(*(a4 + 24) - 8);
  v16 = *(v15 + 84);
  v17 = *(v9 + 64);
  v18 = *(v12 + 80);
  v19 = *(*(v11 - 8) + 64);
  if (v16 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = *(v15 + 84);
  }

  if (v20 - 1 <= v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = v20 - 1;
  }

  v22 = *(v15 + 80);
  v23 = *(v15 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v24 = ((v22 + 16) & ~v22) + *(v15 + 64);
  v25 = v17 + v18;
  v26 = v19 + 7;
  v27 = v22 + 8;
  v28 = ((v24 + ((v22 + 8 + ((((v19 + 7 + ((v17 + v18) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v23) + 7) & 0xFFFFFFFFFFFFFFF8) + 65;
  if (v21 >= a3)
  {
    v31 = 0;
    if (v21 >= a2)
    {
      goto LABEL_23;
    }

LABEL_28:
    v32 = ~v21 + a2;
    bzero(a1, v28);
    if (v28 <= 3)
    {
      v33 = (v32 >> 8) + 1;
    }

    else
    {
      v33 = 1;
    }

    if (v28 <= 3)
    {
      *a1 = v32;
      if (v31 > 1)
      {
LABEL_33:
        if (v31 == 2)
        {
          *&a1[v28] = v33;
        }

        else
        {
          *&a1[v28] = v33;
        }

        return;
      }
    }

    else
    {
      *a1 = v32;
      if (v31 > 1)
      {
        goto LABEL_33;
      }
    }

    if (v31)
    {
      a1[v28] = v33;
    }

    return;
  }

  if (v28 <= 3)
  {
    v29 = ((a3 - v21 + 255) >> 8) + 1;
  }

  else
  {
    v29 = 2;
  }

  if (v29 >= 0x10000)
  {
    v30 = 4;
  }

  else
  {
    v30 = 2;
  }

  if (v29 < 0x100)
  {
    v30 = 1;
  }

  if (v29 >= 2)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if (v21 < a2)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (v31 <= 1)
  {
    if (v31)
    {
      a1[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (v31 == 2)
  {
    *&a1[v28] = 0;
    goto LABEL_37;
  }

  *&a1[v28] = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v10 == v21)
  {
    v34 = *(v9 + 56);
    v35 = a1;
    v36 = a2;
    v37 = v10;
    v38 = v8;
LABEL_45:

    v34(v35, v36, v37, v38);
    return;
  }

  v39 = &a1[v25] & ~v18;
  if (v13 == v21)
  {
    v34 = *(v12 + 56);
    v38 = v11;
    v35 = v39;
    v36 = a2;
    v37 = v13;
    goto LABEL_45;
  }

  v40 = ((v27 + ((((v26 + v39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v23);
  if (v20 - 1 >= a2)
  {
    if (a2 >= v20)
    {
      if (v24 <= 3)
      {
        v47 = ~(-1 << (8 * v24));
      }

      else
      {
        v47 = -1;
      }

      if (v24)
      {
        v42 = v47 & (a2 - v20);
        if (v24 <= 3)
        {
          v43 = v24;
        }

        else
        {
          v43 = 4;
        }

        bzero(v40, v24);
        if (v43 <= 2)
        {
          if (v43 == 1)
          {
            goto LABEL_61;
          }

          goto LABEL_75;
        }

LABEL_76:
        if (v43 == 3)
        {
          *v40 = v42;
          v40[2] = BYTE2(v42);
        }

        else
        {
          *v40 = v42;
        }
      }
    }

    else
    {
      v44 = (a2 + 1);
      v45 = ((v40 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v16 & 0x80000000) != 0)
      {
        v48 = *(v15 + 56);

        v48((v45 + v27) & ~v22, v44);
      }

      else
      {
        if ((v44 & 0x80000000) != 0)
        {
          v46 = (a2 - 0x7FFFFFFF);
        }

        else
        {
          v46 = a2;
        }

        *v45 = v46;
      }
    }
  }

  else
  {
    if (v24 <= 3)
    {
      v41 = ~(-1 << (8 * v24));
    }

    else
    {
      v41 = -1;
    }

    if (v24)
    {
      v42 = v41 & (a2 - v20);
      if (v24 <= 3)
      {
        v43 = v24;
      }

      else
      {
        v43 = 4;
      }

      bzero(v40, v24);
      if (v43 <= 2)
      {
        if (v43 == 1)
        {
LABEL_61:
          *v40 = v42;
          return;
        }

LABEL_75:
        *v40 = v42;
        return;
      }

      goto LABEL_76;
    }
  }
}

uint64_t closure #6 in UpdateCollectionViewListCoordinator.init<A>(viewList:view:inputs:scrollGeometry:)()
{
  type metadata accessor for CollectionViewListRoot();
  type metadata accessor for _GraphValue();
  type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  _GraphValue.subscript.getter();
  type metadata accessor for ListTemplateRowWrapperView();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ListTemplateRowWrapperView.ViewRule and conformance ListTemplateRowWrapperView.ViewRule();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type SourceInput<ListRowHeightTemplateContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type ListTemplateRowWrapperView and conformance ListTemplateRowWrapperView, type metadata accessor for ListTemplateRowWrapperView);
  return static View.makeDebuggableView(view:inputs:)();
}

Swift::Void __swiftcall UpdateCollectionViewListCoordinator.destroy()()
{
  v2 = *(v0 + 116);

  *(v1 + v2) = 0;
}

unint64_t lazy protocol witness table accessor for type ListTemplateRowWrapperView.ViewRule and conformance ListTemplateRowWrapperView.ViewRule()
{
  result = lazy protocol witness table cache variable for type ListTemplateRowWrapperView.ViewRule and conformance ListTemplateRowWrapperView.ViewRule;
  if (!lazy protocol witness table cache variable for type ListTemplateRowWrapperView.ViewRule and conformance ListTemplateRowWrapperView.ViewRule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListTemplateRowWrapperView.ViewRule and conformance ListTemplateRowWrapperView.ViewRule);
  }

  return result;
}

uint64_t outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 1 != 0xFFFFFFFF)
  {
    return outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
  }

  else
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t HoverEventDispatcher.receiveEvents(_:manager:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return MEMORY[0x1E69E7CD0];
  }

  v6 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 16))(ObjectType, v6);
  swift_unknownObjectRelease();
  result = MEMORY[0x1E69E7CD0];
  if (v8)
  {
    v117 = MEMORY[0x1E69E7CD0];
    v10 = a1 + 64;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 64);
    v14 = (v11 + 63) >> 6;

    v15 = 0;
    v93 = a1;
    v94 = v2;
    for (i = a1 + 64; ; v10 = i)
    {
      if (!v13)
      {
        if (v14 <= v15 + 1)
        {
          v17 = v15 + 1;
        }

        else
        {
          v17 = v14;
        }

        v18 = v17 - 1;
        while (1)
        {
          v16 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v13 = 0;
            memset(v102, 0, 40);
            v15 = v18;
            v101 = 0u;
            goto LABEL_22;
          }

          v13 = *(v10 + 8 * v16);
          ++v15;
          if (v13)
          {
            v15 = v16;
            goto LABEL_21;
          }
        }

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
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v16 = v15;
LABEL_21:
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v20 = v19 | (v16 << 6);
      v21 = (*(a1 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      outlined init with copy of _Benchmark(*(a1 + 56) + 40 * v20, &v98);
      *&v101 = v22;
      *(&v101 + 1) = v23;
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v98, v102);
LABEL_22:
      v114 = v101;
      v115[0] = *v102;
      v115[1] = *&v102[16];
      v116 = *&v102[32];
      v24 = v101;
      if (!v101)
      {

        printEventBindings(_:)(v3->_rawValue);

        return v117;
      }

      v25 = *(&v114 + 1);
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v115, v111);
      v26._rawValue = v3->_rawValue;
      v97 = v25;
      if (*(v3->_rawValue + 2))
      {
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v25);
        if (v28)
        {
          break;
        }
      }

      v39 = v112;
      v40 = v113;
      __swift_project_boxed_opaque_existential_1(v111, v112);
      (*(v40 + 8))(&v101, v39, v40);
      if (v101 != 2 && v101 != 3)
      {
        if (dispatch thunk of ResponderNode.bindEvent(_:)())
        {
          type metadata accessor for HoverResponder();
          ResponderNode.firstAncestor<A>(ofType:)();

          v41 = v101;
          if (v101)
          {
            outlined init with copy of _Benchmark(v111, v108);
            v42 = v109;
            v43 = v110;
            __swift_mutable_project_boxed_opaque_existential_1(v108, v109);
            *&v101 = v41;
            v44 = *(v43 + 32);
            swift_retain_n();
            v44(&v101, v42, v43);
            outlined init with copy of _Benchmark(v108, v106);
            type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for EventType);
            type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for HitTestableEventType);
            if (swift_dynamicCast())
            {
              outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v103, v107);
              outlined init with copy of _Benchmark(v107, &v101);
              HitTestableEvent.init(_:)();
              __swift_destroy_boxed_opaque_existential_1(v107);
              *&v102[25] = *&v100[9];
              *v102 = v99;
              *&v102[16] = *v100;
              v101 = v98;
              *&v100[9] = *&v102[25];
              HitTestableEvent.hitTestLocation.getter();
              v46 = v45;
              v48 = v47;
              outlined destroy of HitTestableEvent(&v101);
              specialized HoverEventDispatcher.dispatchHoverCallbacks(oldResponder:newResponder:point:)(0, v41, v46, v48);
            }

            else
            {

              v105 = 0;
              v103 = 0u;
              v104 = 0u;
              outlined destroy of HitTestableEventType?(&v103);
            }

            v3 = v94;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v101 = v94->_rawValue;
            v51 = v101;
            v52 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v97);
            v54 = *(v51 + 16);
            v55 = (v53 & 1) == 0;
            v56 = __OFADD__(v54, v55);
            v57 = v54 + v55;
            a1 = v93;
            if (v56)
            {
              goto LABEL_79;
            }

            v58 = v53;
            if (*(v51 + 24) >= v57)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v92 = v52;
                specialized _NativeDictionary.copy()();
                v52 = v92;
              }

              v59 = v97;
              v61 = v101;
              if (v58)
              {
                goto LABEL_45;
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v57, isUniquelyReferenced_nonNull_native);
              v59 = v97;
              v52 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v97);
              if ((v58 & 1) != (v60 & 1))
              {
                goto LABEL_81;
              }

              v61 = v101;
              if (v58)
              {
LABEL_45:
                *(v61[7] + 8 * v52) = v41;

                goto LABEL_51;
              }
            }

            v61[(v52 >> 6) + 8] |= 1 << v52;
            v62 = (v61[6] + 16 * v52);
            *v62 = v24;
            v62[1] = v59;
            *(v61[7] + 8 * v52) = v41;
            v63 = v61[2];
            v56 = __OFADD__(v63, 1);
            v64 = v63 + 1;
            if (v56)
            {
              goto LABEL_80;
            }

            v61[2] = v64;
LABEL_51:
            v94->_rawValue = v61;
            specialized Set._Variant.insert(_:)(&v101, v24, v59);
LABEL_9:

            __swift_destroy_boxed_opaque_existential_1(v108);
          }
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v111);
    }

    v95 = v24;
    v29 = *(*(v26._rawValue + 7) + 8 * v27);
    outlined init with copy of _Benchmark(v111, v108);
    v30 = v109;
    v31 = v110;
    __swift_project_boxed_opaque_existential_1(v108, v109);
    v32 = *(v31 + 8);
    swift_retain_n();
    v32(&v101, v30, v31);
    if (v101 == 2 || v101 == 3)
    {
      outlined init with copy of _Benchmark(v108, v106);
      type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for EventType);
      type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for HitTestableEventType);
      v33 = v29;
      if (swift_dynamicCast())
      {
        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v103, v107);
        outlined init with copy of _Benchmark(v107, &v101);
        HitTestableEvent.init(_:)();
        __swift_destroy_boxed_opaque_existential_1(v107);
        *&v102[25] = *&v100[9];
        *v102 = v99;
        *&v102[16] = *v100;
        v101 = v98;
        *&v100[9] = *&v102[25];
        HitTestableEvent.hitTestLocation.getter();
        v35 = v34;
        v37 = v36;
        outlined destroy of HitTestableEvent(&v101);

        specialized HoverEventDispatcher.dispatchHoverCallbacks(oldResponder:newResponder:point:)(v38, 0, v35, v37);

        v33 = 0;
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    if (dispatch thunk of ResponderNode.bindEvent(_:)())
    {
      type metadata accessor for HoverResponder();
      ResponderNode.firstAncestor<A>(ofType:)();

      v49 = v101;
      if (v101)
      {
        if (v29 == v101)
        {
          v33 = v29;
          goto LABEL_54;
        }
      }
    }

    else
    {
      v49 = 0;
    }

    v33 = v49;
LABEL_54:
    outlined init with copy of _Benchmark(v108, v106);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for EventType);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for HitTestableEventType);
    if (swift_dynamicCast())
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v103, v107);
      outlined init with copy of _Benchmark(v107, &v101);
      HitTestableEvent.init(_:)();
      __swift_destroy_boxed_opaque_existential_1(v107);
      *&v102[25] = *&v100[9];
      *v102 = v99;
      *&v102[16] = *v100;
      v101 = v98;
      *&v100[9] = *&v102[25];
      HitTestableEvent.hitTestLocation.getter();
      v66 = v65;
      v68 = v67;
      outlined destroy of HitTestableEvent(&v101);

      specialized HoverEventDispatcher.dispatchHoverCallbacks(oldResponder:newResponder:point:)(v29, v49, v66, v68);

      goto LABEL_58;
    }

LABEL_57:
    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    outlined destroy of HitTestableEventType?(&v103);
LABEL_58:
    v70 = v109;
    v69 = v110;
    __swift_mutable_project_boxed_opaque_existential_1(v108, v109);
    *&v101 = v33;
    v71 = *(v69 + 32);

    v71(&v101, v70, v69);
    if (v33)
    {

      v3 = v94;
      v72 = swift_isUniquelyReferenced_nonNull_native();
      *&v101 = v94->_rawValue;
      v73 = v101;
      v74 = v95;
      v75 = v97;
      v76 = specialized __RawDictionaryStorage.find<A>(_:)(v95, v97);
      v78 = *(v73 + 16);
      v79 = (v77 & 1) == 0;
      v56 = __OFADD__(v78, v79);
      v80 = v78 + v79;
      if (v56)
      {
        goto LABEL_77;
      }

      v81 = v77;
      if (*(v73 + 24) >= v80)
      {
        if ((v72 & 1) == 0)
        {
          v91 = v76;
          specialized _NativeDictionary.copy()();
          v76 = v91;
          v75 = v97;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v80, v72);
        v76 = specialized __RawDictionaryStorage.find<A>(_:)(v95, v97);
        if ((v81 & 1) != (v82 & 1))
        {
          goto LABEL_81;
        }
      }

      a1 = v93;
      rawValue = v101;
      if (v81)
      {
        *(*(v101 + 56) + 8 * v76) = v33;
      }

      else
      {
        *(v101 + 8 * (v76 >> 6) + 64) |= 1 << v76;
        v88 = (rawValue[6] + 16 * v76);
        *v88 = v95;
        v88[1] = v75;
        *(rawValue[7] + 8 * v76) = v33;
        v89 = rawValue[2];
        v56 = __OFADD__(v89, 1);
        v90 = v89 + 1;
        if (v56)
        {
          goto LABEL_78;
        }

        rawValue[2] = v90;
      }
    }

    else
    {
      v74 = v95;
      v75 = v97;
      v83 = specialized __RawDictionaryStorage.find<A>(_:)(v95, v97);
      a1 = v93;
      v3 = v94;
      if ((v84 & 1) == 0)
      {
        goto LABEL_8;
      }

      v85 = v83;
      v86 = swift_isUniquelyReferenced_nonNull_native();
      rawValue = v94->_rawValue;
      *&v101 = v94->_rawValue;
      if (!v86)
      {
        specialized _NativeDictionary.copy()();
        rawValue = v101;
      }

      specialized _NativeDictionary._delete(at:)(v85, rawValue);
    }

    v3->_rawValue = rawValue;
LABEL_8:
    specialized Set._Variant.insert(_:)(&v101, v74, v75);

    goto LABEL_9;
  }

  return result;
}

unint64_t closure #3 in HoverEventDispatcher.dispatchHoverCallbacks(oldResponder:newResponder:point:)(unint64_t result, unint64_t a2)
{
  if (!result)
  {
    return result;
  }

  if (!a2)
  {
    return 0;
  }

  v5 = result;
  v6 = result >> 62;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    v7 = result;
  }

  else
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = a2 >> 62;
  if (!(a2 >> 62))
  {
    v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v5 & 0xFFFFFFFFFFFFFF8;
    if (!v6)
    {
      goto LABEL_7;
    }

LABEL_13:
    result = __CocoaSet.count.getter();
    v11 = result;
    if (!result)
    {
      goto LABEL_25;
    }

LABEL_14:
    if ((v5 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x18D00E9C0](0, v5);
      if (v7 < v9)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_40;
      }

      v2 = *(v5 + 32);

      if (v7 < v9)
      {
LABEL_17:
        result = v9 - v7;
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_74;
        }

        if ((a2 & 0xC000000000000001) != 0)
        {
          goto LABEL_75;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v8 = a2 & 0xFFFFFFFFFFFFFF8;
          if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v12 = *(a2 + 8 * result + 32);

            if (v12 != v2)
            {
              goto LABEL_27;
            }

            return 0;
          }
        }

        __break(1u);
        goto LABEL_79;
      }
    }

    goto LABEL_25;
  }

  result = __CocoaSet.count.getter();
  v9 = result;
  v10 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_7:
  v11 = *(v10 + 16);
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_25:
  while (v8)
  {
    result = __CocoaSet.count.getter();
    v2 = result;
    if (result)
    {
      goto LABEL_30;
    }

LABEL_42:
    if (((v2 | v11) & 0x8000000000000000) == 0)
    {
      if (v11)
      {
        v13 = 0;
        v31 = a2 & 0xC000000000000001;
        v32 = v5 & 0xC000000000000001;
        v29 = a2 & 0xFFFFFFFFFFFFFF8;
        v30 = v5 & 0xFFFFFFFFFFFFFF8;
        v27 = a2;
        v28 = v5;
        v14 = v5 + 8 * v11 + 24;
        v15 = a2 + 8 * v2 + 24;
        v16 = MEMORY[0x1E69E7CC0];
        while (v11 >= v11 + v13)
        {
          if (!(v2 + v13))
          {
            goto LABEL_68;
          }

          if (v2 < v2 + v13)
          {
            goto LABEL_64;
          }

          v17 = v11 + v13 - 1;
          if (v32)
          {
            v18 = MEMORY[0x18D00E9C0](v11 + v13 - 1, v28);
          }

          else
          {
            if (v17 >= *(v30 + 16))
            {
              goto LABEL_65;
            }

            v18 = *(v14 + 8 * v13);
          }

          v19 = v2 + v13 - 1;
          if (v31)
          {
            v20 = MEMORY[0x18D00E9C0](v2 + v13 - 1, v27);
            swift_unknownObjectRelease();
          }

          else
          {
            if (v19 >= *(v29 + 16))
            {
              goto LABEL_66;
            }

            v20 = *(v15 + 8 * v13);
          }

          if (v18 == v20)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1);
            }

            v22 = *(v16 + 16);
            v21 = *(v16 + 24);
            if (v22 >= v21 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
            }

            *(v16 + 16) = v22 + 1;
            v23 = v16 + 16 * v22;
            *(v23 + 32) = v17;
            *(v23 + 40) = v19;
            --v13;
            if (v11 + v13)
            {
              continue;
            }
          }

          goto LABEL_68;
        }

        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
      }

      v16 = MEMORY[0x1E69E7CC0];
LABEL_68:
      v24 = *(v16 + 16);
      if (v24)
      {
        v25 = *(v16 + 16 + 16 * v24);
      }

      else
      {
        v25 = 0;
      }

      return v25;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    v26 = MEMORY[0x18D00E9C0](result, a2);

    result = swift_unknownObjectRelease();
    if (v26 == v2)
    {
      return 0;
    }
  }

  v8 = a2 & 0xFFFFFFFFFFFFFF8;
LABEL_27:
  v2 = *(v8 + 16);
  if (!v2)
  {
    goto LABEL_42;
  }

LABEL_30:
  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_40:
    v3 = MEMORY[0x18D00E9C0](0, a2);
    if (v9 < v7)
    {
      goto LABEL_33;
    }

    goto LABEL_41;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_73;
  }

  v3 = *(a2 + 32);

  if (v9 >= v7)
  {
LABEL_41:

    goto LABEL_42;
  }

LABEL_33:
  result = v7 - v9;
  if (__OFSUB__(v7, v9))
  {
LABEL_79:
    __break(1u);
LABEL_80:
    v8 = result;
    v7 = MEMORY[0x18D00E9C0]();

    result = swift_unknownObjectRelease();
    if (v7 == v3)
    {
      return v8;
    }

    goto LABEL_42;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_80;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    if (result >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_83;
    }

    v8 = v7 - v9;
    v7 = *(v5 + 8 * result + 32);

    if (v7 == v3)
    {
      return v8;
    }

    goto LABEL_42;
  }

  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

uint64_t closure #6 in HoverEventDispatcher.dispatchHoverCallbacks(oldResponder:newResponder:point:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HoverResponder();
  result = swift_dynamicCastClass();
  v3 = result;
  if (result)
  {
  }

  *a1 = v3;
  return result;
}

BOOL closure #7 in HoverEventDispatcher.dispatchHoverCallbacks(oldResponder:newResponder:point:)(CGSize **a1, CGFloat a2, CGFloat a3)
{
  v7 = *a1;
  if (BYTE1((*a1)[30].width) != 1)
  {
    return 0;
  }

  v15 = v6;
  v16 = v5;
  v17 = v3;
  v18 = v4;
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size = v7[18];
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v13 = 2;

  CGRect.convert(to:transform:)();
  outlined destroy of CoordinateSpace(v11);

  v19.x = a2;
  v19.y = a3;
  return CGRectContainsPoint(v14, v19);
}

void *protocol witness for ForwardedEventDispatcher.reset() in conformance HoverEventDispatcher()
{

  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *v0 = result;
  return result;
}

Swift::Int specialized _ArrayBuffer.subscript.getter(Swift::Int result, Swift::Int a2, unint64_t a3)
{
  v5 = result;
  if ((a3 & 0xC000000000000001) == 0)
  {
    goto LABEL_4;
  }

  if (a2 < result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result == a2)
  {
LABEL_4:

LABEL_8:
    if (a3 >> 62)
    {

      return _CocoaArrayWrapper.subscript.getter();
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      return a3 & 0xFFFFFFFFFFFFFF8;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (result < a2)
  {
    type metadata accessor for HoverResponder();

    result = v5;
    do
    {
      v6 = result + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(result);
      result = v6;
    }

    while (a2 != v6);
    goto LABEL_8;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined destroy of HitTestableEventType?(uint64_t a1)
{
  type metadata accessor for HitTestableEventType?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for HitTestableEventType?()
{
  if (!lazy cache variable for type metadata for HitTestableEventType?)
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for HitTestableEventType);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HitTestableEventType?);
    }
  }
}

uint64_t specialized HoverEventDispatcher.dispatchNewAncestorsHoverCallbacks(oldHighestAncestor:newAncestors:point:)(uint64_t result, unint64_t a2, double a3, double a4)
{
  if (!a2)
  {
    return result;
  }

  v7 = result;
  v8 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_40;
  }

  v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
    while ((a2 & 0xC000000000000001) == 0)
    {
      v10 = 0;
      while (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) != v10)
      {
        if (v7 && *(a2 + 32 + 8 * v10) == v7)
        {
          goto LABEL_21;
        }

        if (v9 == ++v10)
        {
          goto LABEL_10;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      v9 = __CocoaSet.count.getter();
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    v10 = 0;
    while (1)
    {
      v11 = MEMORY[0x18D00E9C0](v10, a2);
      result = swift_unknownObjectRelease();
      if (v7)
      {
        if (v11 == v7)
        {
          break;
        }
      }

      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      ++v10;
      if (v12 == v9)
      {
        goto LABEL_10;
      }
    }

    if (v10 < 0)
    {
      goto LABEL_47;
    }

LABEL_21:
    v13 = a2 & 0xFFFFFFFFFFFFFF8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_10:
    v13 = a2 & 0xFFFFFFFFFFFFFF8;
    if (!v8)
    {
      v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_22:
      v14 = *(v13 + 16);
      goto LABEL_25;
    }

    result = __CocoaSet.count.getter();
    if (result < 0)
    {
LABEL_48:
      __break(1u);
      return result;
    }

    v10 = result;
  }

  result = __CocoaSet.count.getter();
  if (result < 0)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v14 = __CocoaSet.count.getter();
LABEL_25:
  if (v14 < v10)
  {
    __break(1u);
    goto LABEL_43;
  }

  specialized _ArrayBuffer.subscript.getter(0, v10, a2);
  v18 = v17 >> 1;
  if (v17 >> 1 == v16)
  {
LABEL_43:

    return swift_unknownObjectRelease();
  }

  v19 = v15;
  v20 = v16;
  v21 = v17 >> 1;
  while (!__OFSUB__(v21--, 1))
  {
    if (v21 < v20 || v21 >= v18)
    {
      goto LABEL_35;
    }

    v23 = *(v19 + 8 * v21);
    if (*(v23 + 481) == 1)
    {
      v25 = *&a3;
      v26 = *&a4;
      swift_beginAccess();
      outlined init with copy of CoordinateSpace(v23 + 304, v24);
      type metadata accessor for CGPoint(0);

      ApplyViewTransform.convertGlobal(to:transform:)();

      outlined destroy of CoordinateSpace(v24);
      HoverResponder.updatePhase(_:)(v25, v26, 0);
    }

    if (v21 == v20)
    {
      return swift_unknownObjectRelease();
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return swift_unknownObjectRelease();
}

uint64_t specialized HoverEventDispatcher.dispatchHoverCallbacks(oldResponder:newResponder:point:)(uint64_t result, uint64_t a2, CGFloat a3, CGFloat a4)
{
  if (result)
  {
    type metadata accessor for HoverResponder();
    result = ResponderNode.firstAncestor<A>(ofType:)();
    v7 = v81;
    if (!a2)
    {
      if (!v81)
      {
        return result;
      }

      v8 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v7 = 0;
  }

  type metadata accessor for HoverResponder();
  result = ResponderNode.firstAncestor<A>(ofType:)();
  v9 = v81;
  if (!v7)
  {
    if (!v81)
    {
      return result;
    }

    v15 = 0;
    v16 = 0;
    goto LABEL_45;
  }

  if (!v81 || v7 != v81)
  {
    v8 = v81;
LABEL_15:

    ResponderNode.sequence.getter();

    v17 = *v83;
    *&v77.origin.x = MEMORY[0x1E69E7CC0];
    *&v74 = v81;
    BYTE8(v74) = v82;

    if (v83[16])
    {

      v16 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      (*v83)(&v80, &v74);
      if (*&v80.origin.x)
      {
        type metadata accessor for HoverResponder();
        v16 = MEMORY[0x1E69E7CC0];
        do
        {
          if (swift_dynamicCastClass())
          {
            MEMORY[0x18D00CC30]();
            if (*((*&v77.origin.x & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v77.origin.x & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v16 = *&v77.origin.x;
          }

          else
          {
          }

          v17(&v80, &v74);
        }

        while (*&v80.origin.x);
      }

      else
      {
        v16 = MEMORY[0x1E69E7CC0];
      }
    }

    if (!v8)
    {
      v33 = closure #3 in HoverEventDispatcher.dispatchHoverCallbacks(oldResponder:newResponder:point:)(v16, 0);
      v15 = v7;
      if (!v16)
      {
        goto LABEL_103;
      }

      v35 = v33;
      v9 = 0;
      goto LABEL_62;
    }

    v9 = v8;
    v15 = v7;
LABEL_45:

    ResponderNode.sequence.getter();

    v31 = *v83;
    v32 = v83[16];
    *&v77.origin.x = MEMORY[0x1E69E7CC0];
    *&v74 = v81;
    BYTE8(v74) = v82;

    if (v32)
    {

      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v31(&v80, &v74);
      if (*&v80.origin.x)
      {
        type metadata accessor for HoverResponder();
        v8 = MEMORY[0x1E69E7CC0];
        do
        {
          while (!swift_dynamicCastClass())
          {

            v31(&v80, &v74);
            if (!*&v80.origin.x)
            {
              goto LABEL_59;
            }
          }

          v73 = v9;
          MEMORY[0x18D00CC30]();
          if (*((*&v77.origin.x & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v77.origin.x & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v8 = *&v77.origin.x;
          v31(&v80, &v74);
          v9 = v73;
        }

        while (*&v80.origin.x);
      }

      else
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

LABEL_59:
    }

    v36 = closure #3 in HoverEventDispatcher.dispatchHoverCallbacks(oldResponder:newResponder:point:)(v16, v8);
    if (!v16)
    {
      v47 = 0;
      if (v8)
      {
        goto LABEL_109;
      }

      goto LABEL_103;
    }

    v35 = v36;
LABEL_62:
    v71 = v8;
    v72 = v15;
    v37 = v16 >> 62;
    v73 = v9;
    v70 = v16 >> 62;
    if (v34)
    {
      v38 = MEMORY[0x1E69E62F8];
      type metadata accessor for ArraySlice<HoverResponder>(0, &lazy cache variable for type metadata for [HoverResponder], MEMORY[0x1E69E62F8]);
      v40 = v39;
      *&v83[8] = v39;
      *&v83[16] = lazy protocol witness table accessor for type [HoverResponder] and conformance [A](&lazy protocol witness table cache variable for type [HoverResponder] and conformance [A], &lazy cache variable for type metadata for [HoverResponder], v38);
      v81 = v16;

      goto LABEL_83;
    }

    v41 = &lazy cache variable for type metadata for ArraySlice<HoverResponder>;
    v42 = MEMORY[0x1E69E6948];
    type metadata accessor for ArraySlice<HoverResponder>(0, &lazy cache variable for type metadata for ArraySlice<HoverResponder>, MEMORY[0x1E69E6948]);
    *&v83[8] = v43;
    *&v83[16] = lazy protocol witness table accessor for type [HoverResponder] and conformance [A](&lazy protocol witness table cache variable for type ArraySlice<HoverResponder> and conformance ArraySlice<A>, &lazy cache variable for type metadata for ArraySlice<HoverResponder>, v42);
    v44 = swift_allocObject();
    v81 = v44;
    if (v35 < 0)
    {
      __break(1u);
    }

    else
    {
      v41 = v44;
      if (!v37)
      {
        result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result >= v35)
        {
          goto LABEL_67;
        }

        goto LABEL_115;
      }
    }

    result = __CocoaSet.count.getter();
    if (result < 0)
    {
LABEL_116:
      __break(1u);
      return result;
    }

    result = __CocoaSet.count.getter();
    if (result >= v35)
    {
LABEL_67:
      if ((v16 & 0xC000000000000001) != 0)
      {
        if (v35)
        {
          type metadata accessor for HoverResponder();
          swift_bridgeObjectRetain_n();
          v45 = 0;
          do
          {
            v46 = v45 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v45);
            v45 = v46;
          }

          while (v35 != v46);
          if (v16 >> 62)
          {
            goto LABEL_81;
          }
        }

        else
        {
          swift_bridgeObjectRetain_n();
          if (v37)
          {
LABEL_81:

            v49 = _CocoaArrayWrapper.subscript.getter();
            v50 = v52;
            v48 = v53;
            v51 = v54;

            goto LABEL_82;
          }
        }
      }

      else
      {
        swift_bridgeObjectRetain_n();
      }

      v48 = 0;
      v49 = v16 & 0xFFFFFFFFFFFFFF8;
      v50 = (v16 & 0xFFFFFFFFFFFFFF8) + 32;
      v51 = (2 * v35) | 1;
LABEL_82:
      v41[2] = v49;
      v41[3] = v50;
      v41[4] = v48;
      v41[5] = v51;
      v40 = *&v83[8];
LABEL_83:
      v55 = __swift_project_boxed_opaque_existential_1(&v81, v40);
      v56 = MEMORY[0x1EEE9AC00](v55);
      (*(v58 + 16))(&v69 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0), v56);
      *(&v75 + 1) = swift_getAssociatedTypeWitness();
      *&v76 = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(&v74);
      dispatch thunk of Sequence.makeIterator()();
      __swift_mutable_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
      dispatch thunk of IteratorProtocol.next()();
      for (i = v77.origin.x; *&v77.origin.x; i = v77.origin.x)
      {
        if (*(*&i + 480))
        {
        }

        else
        {
          v60 = *(*&i + 232);
          v62 = *(*&i + 216);
          v61 = *(*&i + 224);
          *(*&i + 464) = 0;
          *(*&i + 472) = 0;
          *(*&i + 480) = 1;
          LOBYTE(v77.origin.x) = 7;
          v63 = swift_allocObject();
          *(v63 + 16) = v62;
          *(v63 + 24) = v61;
          *(v63 + 32) = v60;
          *(v63 + 40) = 0;
          *(v63 + 48) = 0;
          *(v63 + 56) = 1;
          outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
          outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
          static Update.enqueueAction(reason:_:)();

          outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
        }

        __swift_mutable_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
        dispatch thunk of IteratorProtocol.next()();
      }

      __swift_destroy_boxed_opaque_existential_1(&v74);
      __swift_destroy_boxed_opaque_existential_1(&v81);
      if (v71)
      {
        if (v70)
        {
          goto LABEL_106;
        }

        v64 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v64)
        {
          while (1)
          {
            v65 = 0;
            while ((v16 & 0xC000000000000001) != 0)
            {
              v47 = MEMORY[0x18D00E9C0](v65, v16);
              v66 = v65 + 1;
              if (__OFADD__(v65, 1))
              {
LABEL_102:
                __break(1u);
                goto LABEL_103;
              }

LABEL_97:
              if (*(v47 + 481) == 1)
              {
                v77.origin = 0uLL;
                v67 = *(v47 + 272);
                v77.size = *(v47 + 288);
                *&v76 = 0;
                v74 = 0u;
                v75 = 0u;
                BYTE8(v76) = 2;
                v68 = *(v47 + 248);
                v81 = *(v47 + 240);
                v82 = v68;
                *v83 = *(v47 + 256);
                *&v83[16] = v67;

                CGRect.convert(to:transform:)();

                outlined destroy of CoordinateSpace(&v74);
                v93.x = a3;
                v93.y = a4;
                if (CGRectContainsPoint(v77, v93))
                {

                  goto LABEL_108;
                }
              }

              ++v65;
              if (v66 == v64)
              {
                goto LABEL_107;
              }
            }

            if (v65 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              break;
            }

            __break(1u);
LABEL_106:
            v64 = __CocoaSet.count.getter();
            if (!v64)
            {
              goto LABEL_107;
            }
          }

          v47 = *(v16 + 8 * v65 + 32);

          v66 = v65 + 1;
          if (__OFADD__(v65, 1))
          {
            goto LABEL_102;
          }

          goto LABEL_97;
        }

LABEL_107:

        v47 = 0;
LABEL_108:
        v8 = v71;
LABEL_109:
        specialized HoverEventDispatcher.dispatchNewAncestorsHoverCallbacks(oldHighestAncestor:newAncestors:point:)(v47, v8, a3, a4);
      }

LABEL_103:
    }

LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  ResponderNode.sequence.getter();

  v10 = v81;
  v11 = v82;
  v12 = *v83;
  v13 = v83[16];
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  v82 = v10;
  v83[0] = v11;
  *&v83[8] = v12;
  v83[24] = v13;
  v84 = closure #6 in HoverEventDispatcher.dispatchHoverCallbacks(oldResponder:newResponder:point:);
  v85 = 0;
  v86 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
  v87 = 0;
  v88 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
  v89 = 0;
  LOBYTE(v81) = 0;
  v90 = partial apply for closure #7 in HoverEventDispatcher.dispatchHoverCallbacks(oldResponder:newResponder:point:);
  v91 = v14;

  if ((v13 & 1) != 0 || (v72 = v7, v73 = v10, (v12)(&v74, &v82), !v74))
  {
LABEL_75:

    goto LABEL_76;
  }

  while (1)
  {
    v18 = swift_dynamicCastClass();
    if (!v18)
    {
      goto LABEL_28;
    }

    v19 = v18;
    if (*(v18 + 481) != 1)
    {
      break;
    }

    v80.origin.x = 0.0;
    v80.origin.y = 0.0;
    v20 = *(v18 + 272);
    v80.size = *(v18 + 288);
    v78 = 0;
    memset(&v77, 0, sizeof(v77));
    v79 = 2;
    v22 = *(v18 + 240);
    v21 = *(v18 + 248);
    *&v74 = v22;
    *(&v74 + 1) = v21;
    v75 = *(v19 + 256);
    v76 = v20;

    CGRect.convert(to:transform:)();
    outlined destroy of CoordinateSpace(&v77);

    v92.x = a3;
    v92.y = a4;
    if (!CGRectContainsPoint(v80, v92))
    {
      break;
    }

    if (*(v19 + 481) == 1)
    {
      v80.origin.x = a3;
      v80.origin.y = a4;
      swift_beginAccess();
      outlined init with copy of CoordinateSpace(v19 + 304, &v77);
      v23 = *(v19 + 248);
      *&v74 = *(v19 + 240);
      *(&v74 + 1) = v23;
      v24 = *(v19 + 272);
      v75 = *(v19 + 256);
      v76 = v24;
      type metadata accessor for CGPoint(0);

      ApplyViewTransform.convertGlobal(to:transform:)();

      outlined destroy of CoordinateSpace(&v77);
      x = v80.origin.x;
      y = v80.origin.y;
      v28 = *(v19 + 216);
      v27 = *(v19 + 224);
      v29 = *(v19 + 232);
      if ((v29 & 1) == 0)
      {
        if ((*(v19 + 480) & 1) == 0 && v80.origin.x == *(v19 + 464) && v80.origin.y == *(v19 + 472))
        {
          goto LABEL_28;
        }

LABEL_39:
        *(v19 + 464) = v80.origin.x;
        *(v19 + 472) = y;
        *(v19 + 480) = 0;
        LOBYTE(v74) = 7;
        v30 = swift_allocObject();
        *(v30 + 16) = v28;
        *(v30 + 24) = v27;
        *(v30 + 32) = v29;
        *(v30 + 40) = x;
        *(v30 + 48) = y;
        *(v30 + 56) = 0;
        outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
        outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
        static Update.enqueueAction(reason:_:)();

        outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
        goto LABEL_28;
      }

      if (*(v19 + 480))
      {
        goto LABEL_39;
      }
    }

LABEL_28:

    (v12)(&v74, &v82);
    if (!v74)
    {
      goto LABEL_75;
    }
  }

LABEL_76:
}

void type metadata accessor for ArraySlice<HoverResponder>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for HoverResponder();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type [HoverResponder] and conformance [A](unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArraySlice<HoverResponder>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t (*Transaction.dismissBehavior.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  Transaction.subscript.getter();
  return Transaction.dismissBehavior.modify;
}

unint64_t lazy protocol witness table accessor for type DismissBehavior.Role and conformance DismissBehavior.Role()
{
  result = lazy protocol witness table cache variable for type DismissBehavior.Role and conformance DismissBehavior.Role;
  if (!lazy protocol witness table cache variable for type DismissBehavior.Role and conformance DismissBehavior.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DismissBehavior.Role and conformance DismissBehavior.Role);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SidebarStatus and conformance SidebarStatus()
{
  result = lazy protocol witness table cache variable for type SidebarStatus and conformance SidebarStatus;
  if (!lazy protocol witness table cache variable for type SidebarStatus and conformance SidebarStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarStatus and conformance SidebarStatus);
  }

  return result;
}

double static TableViewListCore.Configuration.sidebar(isInExpandedSplitView:)@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = ~a1 & 1;
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v12 = 0;
  MEMORY[0x18D007050](v9);
  *&v11[48] = *&v10[9];
  *&v11[39] = *v10;
  *&v11[23] = v9[1];
  *&v11[7] = v9[0];
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  v5 = *&v11[16];
  *(a2 + 57) = *v11;
  *(a2 + 73) = v5;
  result = *&v11[32];
  v7 = *&v11[48];
  *(a2 + 89) = *&v11[32];
  v8 = v12;
  *a2 = 2;
  *(a2 + 40) = 1;
  *(a2 + 41) = v8;
  *(a2 + 42) = v4;
  *(a2 + 48) = v3;
  *(a2 + 56) = 0;
  *(a2 + 105) = v7;
  return result;
}

double TableViewListCore.init(dataSource:selection:configuration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v16 = a3[4];
  v17 = a3[5];
  *v18 = a3[6];
  *&v18[9] = *(a3 + 105);
  v12 = *a3;
  v13 = a3[1];
  v14 = a3[2];
  v15 = a3[3];
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v7 = type metadata accessor for TableViewListCore();
  v8 = *(v7 + 52);
  type metadata accessor for Binding();
  v9 = type metadata accessor for Optional();
  (*(*(v9 - 8) + 32))(a5 + v8, a2, v9);
  v10 = (a5 + *(v7 + 56));
  v10[4] = v16;
  v10[5] = v17;
  v10[6] = *v18;
  *(v10 + 105) = *&v18[9];
  *v10 = v12;
  v10[1] = v13;
  result = *&v14;
  v10[2] = v14;
  v10[3] = v15;
  return result;
}

uint64_t TableViewListCore.Configuration.TableViewConfiguration.sectionCornerRadius.getter()
{
  if (*(v0 + 42) == 1 || *v0 != 2)
  {
    return 0;
  }

  else
  {
    return *MEMORY[0x1E69DE3D0];
  }
}

uint64_t static TableViewListCore.Configuration.TableViewConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v25 = v2;
  v26 = v3;
  v4 = *(a1 + 42);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 42);
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  if (*(a1 + 41) != 1)
  {
    if (*(a2 + 41))
    {
      goto LABEL_21;
    }

    if (*(a1 + 40))
    {
      v14 = 0;
      if ((*(a2 + 40) & 1) == 0 || v4 != v11)
      {
        return v14 & 1;
      }
    }

    else
    {
      if (*(a2 + 40))
      {
        goto LABEL_21;
      }

      v16 = a1;
      v17 = a2;
      v18 = static EdgeInsets.== infix(_:_:)();
      v14 = 0;
      if ((v18 & 1) == 0)
      {
        return v14 & 1;
      }

      a2 = v17;
      a1 = v16;
      if (v4 != v11)
      {
        return v14 & 1;
      }
    }

LABEL_25:
    v14 = 0;
    if (v5 == v12 && ((v6 ^ v13) & 1) == 0)
    {
      v19 = *(a1 + 80);
      v23[0] = *(a1 + 64);
      v23[1] = v19;
      v24[0] = *(a1 + 96);
      *(v24 + 9) = *(a1 + 105);
      v20 = *(a2 + 80);
      v21[0] = *(a2 + 64);
      v21[1] = v20;
      v22[0] = *(a2 + 96);
      *(v22 + 9) = *(a2 + 105);
      v14 = MEMORY[0x18D006FC0](v23, v21);
    }

    return v14 & 1;
  }

  if (*(a1 + 24) | *(a1 + 16) | *(a1 + 8) | *(a1 + 32) || *(a1 + 40))
  {
    if ((*(a2 + 41) & 1) == 0 || !(v10 | v8 | v7 | v9) && !*(a2 + 40))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v14 = 0;
    if (!*(a2 + 41) || v10 | v8 | v7 | v9 || *(a2 + 40))
    {
      return v14 & 1;
    }
  }

  if (v4 == v11)
  {
    goto LABEL_25;
  }

LABEL_21:
  v14 = 0;
  return v14 & 1;
}

uint64_t TableViewListCore.Configuration.TableViewConfiguration.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 41);
  v7 = *(v0 + 42);
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  MEMORY[0x18D00F6F0](*v0);
  if (v6 == 1)
  {
    if (v3 | v2 | v1 | v4)
    {
      v8 = 0;
    }

    else
    {
      v8 = v5 == 0;
    }

    if (v8)
    {
      v9 = 3;
    }

    else
    {
      v9 = 13;
    }

    MEMORY[0x18D00F6F0](v9);
  }

  else
  {
    MEMORY[0x18D00F6F0](31);
    if ((v5 & 1) == 0)
    {
      EdgeInsets.hash(into:)();
    }
  }

  MEMORY[0x18D00F6F0](v7);
  MEMORY[0x18D00F6F0](v11);
  Hasher._combine(_:)(v12);
  return OptionalEdgeInsets.hash(into:)();
}

Swift::Int TableViewListCore.Configuration.TableViewConfiguration.hashValue.getter()
{
  Hasher.init(_seed:)();
  TableViewListCore.Configuration.TableViewConfiguration.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TableViewListCore<A, B>.Configuration.TableViewConfiguration()
{
  Hasher.init(_seed:)();
  TableViewListCore.Configuration.TableViewConfiguration.hash(into:)();
  return Hasher._finalize()();
}

double TableViewListCore.Configuration.init()@<D0>(uint64_t a1@<X8>)
{
  v9 = 1;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>();
  v2 = static SemanticFeature.isEnabled.getter();
  MEMORY[0x18D007050](v6);
  *&v8[48] = *&v7[9];
  *&v8[39] = *v7;
  *&v8[23] = v6[1];
  *&v8[7] = v6[0];
  *(a1 + 25) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = *&v8[16];
  *(a1 + 57) = *v8;
  *(a1 + 73) = v3;
  result = *&v8[32];
  v5 = *&v8[48];
  *(a1 + 89) = *&v8[32];
  *(a1 + 41) = v9;
  *(a1 + 48) = 1;
  *(a1 + 56) = v2 & 1;
  *(a1 + 105) = v5;
  return result;
}

__n128 TableViewListCore.Configuration.init(insetMode:padding:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  *&v5[23] = a2[1];
  *&v5[7] = *a2;
  *&v5[39] = a2[2];
  *&v5[48] = *(a2 + 41);
  v3 = *(a1 + 16);
  *(a3 + 8) = *a1;
  *(a3 + 24) = v3;
  *(a3 + 57) = *v5;
  *(a3 + 73) = *&v5[16];
  result = *&v5[32];
  *(a3 + 89) = *&v5[32];
  *a3 = 1;
  *(a3 + 40) = *(a1 + 32);
  *(a3 + 42) = 0;
  *(a3 + 48) = 1;
  *(a3 + 56) = 0;
  *(a3 + 105) = *&v5[48];
  return result;
}

double static TableViewListCore.Configuration.inset(isInExpandedSplitView:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  v12 = (a1 & 1) == 0;
  MEMORY[0x18D007050](v9);
  *&v11[48] = *&v10[9];
  *&v11[39] = *v10;
  *&v11[23] = v9[1];
  *&v11[7] = v9[0];
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v5 = *&v11[16];
  *(a2 + 57) = *v11;
  *(a2 + 73) = v5;
  result = *&v11[32];
  v7 = *&v11[48];
  *(a2 + 89) = *&v11[32];
  v8 = v12;
  *(a2 + 32) = 0;
  *(a2 + 40) = a1;
  *(a2 + 41) = v8;
  *(a2 + 42) = v4;
  *(a2 + 48) = 1;
  *(a2 + 56) = 0;
  *(a2 + 105) = v7;
  return result;
}

double static TableViewListCore._makeView(view:inputs:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double *a7@<X8>)
{
  v73 = a7;
  v121 = *MEMORY[0x1E69E9840];
  v71 = type metadata accessor for ListScrollable.DataSourceProvider();
  MEMORY[0x1EEE9AC00](v71);
  v72 = (&v65 - v13);
  v14 = type metadata accessor for BridgedListState(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = *a1;
  v17 = *(a2 + 48);
  v114 = *(a2 + 32);
  v115 = v17;
  v116 = *(a2 + 64);
  v117 = *(a2 + 80);
  v18 = *(a2 + 16);
  v112 = *a2;
  v113 = v18;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
  v19 = static SemanticFeature.isEnabled.getter();
  v20 = 15.0;
  if (v19)
  {
    v20 = 16.0;
  }

  *v16 = v20;
  v21 = v14[5];
  v22 = type metadata accessor for BridgedListState.ScrollTarget(0);
  (*(*(v22 - 8) + 56))(v16 + v21, 1, 1, v22);
  v23 = v16 + v14[6];
  v81 = 1;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 2) = 0u;
  *(v23 + 3) = 0u;
  *(v23 + 4) = 0u;
  *(v23 + 5) = 0u;
  *(v23 + 6) = 0u;
  v23[112] = 1;
  *(v16 + v14[7]) = 0;
  LODWORD(v21) = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of BridgedListState(v16);
  v74 = v21;
  LODWORD(v106) = v21;
  swift_unknownObjectWeakInit();
  *&v90 = a3;
  *(&v90 + 1) = a4;
  *&v91 = a5;
  *(&v91 + 1) = a6;
  updated = type metadata accessor for TableViewListCore.UpdateBridgedState();
  v89[2] = updated;
  v89[3] = swift_getWitnessTable();
  type metadata accessor for Attribute<UInt32>(0, &lazy cache variable for type metadata for Attribute<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v106, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_6, v89, updated, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
  (*(*(updated - 8) + 8))(&v106, updated);
  LODWORD(v21) = v90;
  AGGraphGetFlags();
  v68 = v21;
  AGGraphSetFlags();
  swift_unknownObjectWeakInit();
  *&v90 = a3;
  *(&v90 + 1) = a4;
  *&v91 = a5;
  *(&v91 + 1) = a6;
  v27 = type metadata accessor for TableViewListCore.ScrollViewProvider();
  v88[2] = v27;
  v88[3] = swift_getWitnessTable();
  type metadata accessor for Attribute<UIScrollView?>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v106, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_6, v88, v27, MEMORY[0x1E69E73E0], v28, MEMORY[0x1E69E7410], v29);
  (*(*(v27 - 8) + 8))(&v106, v27);
  v78 = v90;
  v70 = type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Scrollable);
  v77 = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v104[0]) = v75;
  *&v79 = a3;
  *(&v79 + 1) = a4;
  *&v90 = a3;
  *(&v90 + 1) = a4;
  v76 = a5;
  *&v91 = a5;
  *(&v91 + 1) = a6;
  v80 = a6;
  type metadata accessor for TableViewListCore();
  v69 = type metadata accessor for _GraphValue();
  v30 = _GraphValue.value.getter();
  v118 = v112;
  v119 = v113;
  v120 = v114;
  outlined init with copy of _GraphInputs(&v118, &v90);
  if (one-time initialization token for listStackBehavior != -1)
  {
    swift_once();
  }

  v31 = v119;
  *&v106 = static CachedEnvironment.ID.listStackBehavior;
  swift_beginAccess();
  v32 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v118);
  outlined init with copy of _GraphInputs(&v118, &v90);
  if (one-time initialization token for appIntentsDataSourcePayloadProvider != -1)
  {
    swift_once();
  }

  *&v106 = static CachedEnvironment.ID.appIntentsDataSourcePayloadProvider;
  swift_beginAccess();
  type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?(0, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding, MEMORY[0x1E69DBD30], MEMORY[0x1E69E6720]);
  v33 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  v34 = outlined destroy of _GraphInputs(&v118);
  v67 = &v65;
  *&v106 = __PAIR64__(v68, v30);
  *(&v106 + 1) = __PAIR64__(v32, v78);
  LODWORD(v107) = v33;
  MEMORY[0x1EEE9AC00](v34);
  v35 = *(&v79 + 1);
  v36 = v79;
  v90 = v79;
  v66 = v31;
  v37 = v76;
  v38 = v80;
  *&v91 = v76;
  *(&v91 + 1) = v80;
  type metadata accessor for ListRepresentable();
  type metadata accessor for StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>();
  *(&v65 - 4) = type metadata accessor for ModifiedContent();
  v90 = __PAIR128__(v35, v36);
  *&v91 = v37;
  *(&v91 + 1) = v38;
  v39 = v37;
  Representable = type metadata accessor for TableViewListCore.MakeRepresentable();
  *(&v65 - 3) = Representable;
  *(&v65 - 2) = swift_getWitnessTable();
  v41 = type metadata accessor for Attribute();
  v43 = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v106, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, (&v65 - 6), Representable, MEMORY[0x1E69E73E0], v41, MEMORY[0x1E69E7410], v42);
  v68 = v90;
  v100 = v114;
  v101 = v115;
  v102 = v116;
  v103 = v117;
  v98 = v112;
  v99 = v113;
  LODWORD(v106) = *(v66 + 16);
  DWORD1(v106) = v74;
  MEMORY[0x1EEE9AC00](v43);
  v90 = __PAIR128__(*(&v79 + 1), v36);
  v44 = *(&v79 + 1);
  *&v91 = v39;
  *(&v91 + 1) = v38;
  v45 = type metadata accessor for TableViewListCore.EnvironmentTransform();
  *(&v65 - 2) = v45;
  *(&v65 - 1) = swift_getWitnessTable();
  outlined init with copy of _ViewInputs(&v112, &v90);
  type metadata accessor for Attribute<UInt32>(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, MEMORY[0x1E697F230], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v106, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_0, (&v65 - 4), v45, MEMORY[0x1E69E73E0], v46, MEMORY[0x1E69E7410], v47);
  _GraphInputs.environment.setter();
  _ViewInputs.scrollable.setter();
  PreferenceKeys.remove(_:)();
  _GraphValue.init(_:)();
  v104[2] = v100;
  v104[3] = v101;
  v104[4] = v102;
  v105 = v103;
  v104[0] = v98;
  v104[1] = v99;
  v92 = v100;
  v93 = v101;
  v94 = v102;
  v95 = v103;
  v90 = v98;
  v91 = v99;
  outlined init with copy of _ViewInputs(v104, &v106);
  v48 = lazy protocol witness table accessor for type StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v96 = &protocol witness table for ListRepresentable<A, B>;
  v97 = v48;
  swift_getWitnessTable();
  static View.makeDebuggableView(view:inputs:)();
  v108 = v92;
  v109 = v93;
  v110 = v94;
  v111 = v95;
  v106 = v90;
  v107 = v91;
  outlined destroy of _ViewInputs(&v106);
  v49 = AGCreateWeakAttribute();
  MEMORY[0x1EEE9AC00](v49);
  *(&v65 - 4) = v79;
  *(&v65 - 3) = v44;
  v50 = v80;
  *(&v65 - 2) = v39;
  *(&v65 - 1) = v50;
  LODWORD(v90) = v75;
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  v51 = AGCreateWeakAttribute();
  v52 = v72;
  *v72 = v51;
  swift_storeEnumTagMultiPayload();
  v53 = AGCreateWeakAttribute();
  *&v90 = v84;
  DWORD2(v90) = LODWORD(v85);
  PreferencesOutputs.subscript.getter();
  v54 = AGCreateWeakAttribute();
  type metadata accessor for Attribute<UInt32>(0, &lazy cache variable for type metadata for MutableBox<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E697DAC0]);
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(&v91 + 1) = type metadata accessor for ListScrollable();
  *&v92 = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v90);
  ListScrollable.init(state:dataSourceProvider:scrollView:children:lastUpdateSeed:)(v49, v52, v53, v54, v55, boxed_opaque_existential_1);
  AGGraphSetValue();
  __swift_destroy_boxed_opaque_existential_1(&v90);
  v86 = v115;
  v87 = DWORD2(v115);
  *&v90 = v115;
  DWORD2(v90) = DWORD2(v115);
  v57 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  *&v90 = v86;
  DWORD2(v90) = v87;
  v58 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (v58 & 1) != 0 || (v57)
  {
    LODWORD(v90) = v77;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?(0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, MEMORY[0x1E697DAE0], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type UnaryScrollablePreferenceProvider and conformance UnaryScrollablePreferenceProvider();
    v59 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v90) = 0;
    v58 = PreferencesOutputs.subscript.setter();
    if (v57)
    {
      AccessibilityProperties.init()();
      LOBYTE(v90) = 0;
      DWORD1(v90) = v59;
      v60 = Attribute.init<A>(body:value:flags:update:)();
      outlined destroy of AccessibilityScrollableModifier(&v90);
      _s7SwiftUI25AccessibilityViewModifierPAAE04makeC9Transform8modifier6inputs7outputs14AttributeGraph0K0VyAA0C8NodeListVGSgAA01_L5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10ScrollableE0V_Tt2B5(v60, &v112, v84, SLODWORD(v85));
      v58 = PreferencesOutputs.subscript.setter();
    }
  }

  v82 = v86;
  v83 = v87;
  MEMORY[0x1EEE9AC00](v58);
  v61 = *(&v79 + 1);
  *(&v65 - 6) = v79;
  *(&v65 - 5) = v61;
  v62 = v80;
  *(&v65 - 4) = v76;
  *(&v65 - 3) = v62;
  *(&v65 - 4) = v78;
  outlined init with copy of PreferencesInputs(&v86, &v90);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v92 = v100;
  v93 = v101;
  v94 = v102;
  v95 = v103;
  v90 = v98;
  v91 = v99;
  outlined destroy of _ViewInputs(&v90);
  v63 = v73;
  *v73 = v84;
  result = v85;
  v63[1] = v85;
  return result;
}

uint64_t closure #1 in static TableViewListCore._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v10[2] = type metadata accessor for TableViewListCore();
  v10[3] = a2;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v10, a2, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11;
}

uint64_t implicit closure #2 in static TableViewListCore._makeView(view:inputs:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v10 = type metadata accessor for TableViewListCore.ScrollViewPreferenceProvider();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<[ContentScrollViewBox]>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v8, closure #1 in Attribute.init<A>(_:)partial apply, v9, v10, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v12;
}

uint64_t protocol witness for Rule.value.getter in conformance TableViewListCore<A, B>.ScrollViewProvider@<X0>(uint64_t *a1@<X8>)
{
  result = TableViewListCore.ScrollViewProvider.value.getter();
  *a1 = result;
  return result;
}

uint64_t TableViewListCore.ScrollViewPreferenceProvider.value.getter()
{
  type metadata accessor for UIScrollView?();
  if (!*AGGraphGetValue())
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for Attribute<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ContentScrollViewBox>, &type metadata for ContentScrollViewBox, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18CD63400;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + 76) = 0;
  *(v0 + 68) = 0;
  swift_unknownObjectWeakAssign();
  result = v0;
  *(v0 + 48) = 2;
  *(v0 + 60) = 0;
  *(v0 + 52) = 0;
  return result;
}

uint64_t TableViewListCore.MakeRepresentable.core.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TableViewListCore();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t protocol witness for Rule.value.getter in conformance TableViewListCore<A, B>.ScrollViewPreferenceProvider@<X0>(uint64_t *a1@<X8>)
{
  result = TableViewListCore.ScrollViewPreferenceProvider.value.getter();
  *a1 = result;
  return result;
}

uint64_t TableViewListCore.MakeRepresentable.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v82 = a3;
  v85 = a2;
  v81 = a8;
  v13 = type metadata accessor for Binding();
  v76 = type metadata accessor for Optional();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v86 = &v64 - v14;
  v74 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v84 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = a4;
  v91 = a5;
  v92 = a6;
  v93 = a7;
  v89 = a7;
  v79 = type metadata accessor for ListRepresentable();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v64 - v17;
  v67 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v65 = &v64 - v19;
  v90 = a4;
  v91 = a5;
  v92 = a6;
  v93 = a7;
  v20 = type metadata accessor for TableViewListCore();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v73 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v72 = &v64 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v71 = &v64 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v64 - v28;
  v68 = type metadata accessor for Optional();
  v30 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v32 = &v64 - v31;
  v83 = a1;
  v87 = a4;
  v33 = a5;
  v80 = a6;
  v34 = v67;
  TableViewListCore.MakeRepresentable.core.getter(v29);
  v35 = *(v20 + 52);
  v36 = (*(v34 + 48))(&v29[v35], 1, v13);
  v69 = v20;
  if (v36)
  {
    v37 = *(v21 + 8);
    v88 = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v70 = v37;
    v37(v29, v20);
    v38 = 1;
  }

  else
  {
    v39 = v65;
    (*(v34 + 16))(v65, &v29[v35], v13);
    v40 = *(v21 + 8);
    v88 = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v70 = v40;
    v40(v29, v20);
    MEMORY[0x18D00ACC0](v13);
    (*(v34 + 8))(v39, v13);
    v38 = 0;
  }

  v41 = *(*(v33 - 8) + 56);
  v66 = v33;
  v41(v32, v38, 1, v33);
  (*(v30 + 8))(v32, v68);
  v42 = v71;
  v43 = v87;
  TableViewListCore.MakeRepresentable.core.getter(v71);
  (*(v74 + 16))(v84, v42, v43);
  v44 = v69;
  v45 = v70;
  v46 = v88;
  v70(v42, v69);
  v88 = v46;
  v47 = v72;
  TableViewListCore.MakeRepresentable.core.getter(v72);
  (*(v75 + 16))(v86, v47 + *(v44 + 52), v76);
  v45(v47, v44);
  v48 = v73;
  TableViewListCore.MakeRepresentable.core.getter(v73);
  v49 = (v48 + *(v44 + 56));
  v50 = v49[5];
  v94[4] = v49[4];
  v94[5] = v50;
  *v95 = v49[6];
  *&v95[9] = *(v49 + 105);
  v51 = v49[1];
  v94[0] = *v49;
  v94[1] = v51;
  v52 = v49[3];
  v94[2] = v49[2];
  v94[3] = v52;
  v45(v48, v44);
  v53 = AGCreateWeakAttribute();
  v54 = AGCreateWeakAttribute();
  Value = AGGraphGetValue();
  v56 = *Value;
  v57 = *(Value + 8);
  LOWORD(v46) = *(Value + 9);
  type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?(0, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding, MEMORY[0x1E69DBD30], MEMORY[0x1E69E6720]);
  v58 = AGGraphGetValue();
  outlined init with copy of IntelligenceAppIntentsDataSourcePayloadProviding?(v58, &v90);
  v59 = v77;
  ListRepresentable.init(dataSource:selection:configuration:updateBridgedState:scrollViewProvider:stackBehavior:appIntentsDataSourcePayloadProvider:)(v84, v86, v94, v53, v54, v56, v57 | (v46 << 8), &v90, v77, v87);
  v60 = static Edge.Set.all.getter();
  v90 = 1;
  LOBYTE(v91) = v60;
  type metadata accessor for StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>();
  v61 = v79;
  MEMORY[0x18D00A570](&v90, v79, v62, &protocol witness table for ListRepresentable<A, B>);
  return (*(v78 + 8))(v59, v61);
}

__n128 ListRepresentable.init(dataSource:selection:configuration:updateBridgedState:scrollViewProvider:stackBehavior:appIntentsDataSourcePayloadProvider:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v29 = a3[4];
  v30 = a3[5];
  *v31 = a3[6];
  *&v31[9] = *(a3 + 105);
  v25 = *a3;
  v26 = a3[1];
  v27 = a3[2];
  v28 = a3[3];
  (*(*(a10 - 8) + 32))(a9, a1, a10);
  v16 = type metadata accessor for ListRepresentable();
  v17 = v16[13];
  type metadata accessor for Binding();
  v18 = type metadata accessor for Optional();
  (*(*(v18 - 8) + 32))(a9 + v17, a2, v18);
  v19 = (a9 + v16[14]);
  v19[4] = v29;
  v19[5] = v30;
  v19[6] = *v31;
  *(v19 + 105) = *&v31[9];
  *v19 = v25;
  v19[1] = v26;
  v19[2] = v27;
  v19[3] = v28;
  *(a9 + v16[15]) = a4;
  *(a9 + v16[16]) = a5;
  v20 = a9 + v16[17];
  *v20 = a6;
  *(v20 + 8) = a7;
  *(v20 + 9) = HIBYTE(a7) & 1;
  v21 = a9 + v16[18];
  result = *a8;
  v23 = *(a8 + 16);
  *v21 = *a8;
  *(v21 + 16) = v23;
  *(v21 + 32) = *(a8 + 32);
  return result;
}

uint64_t TableViewListCore.UpdateBridgedState.bridgedState.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for BridgedListState(0);
  Value = AGGraphGetValue();

  return outlined init with copy of BridgedListState(Value, a1);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance TableViewListCore<A, B>.MakeRepresentable@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ListRepresentable();
  type metadata accessor for StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>();
  v2 = type metadata accessor for ModifiedContent();
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

_DWORD *TableViewListCore.UpdateBridgedState.updateValue()()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = type metadata accessor for BridgedListState(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - v4;
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_4;
  }

  TableViewListCore.UpdateBridgedState.bridgedState.getter(v5);
  v6 = *&v5[*(v0 + 28)];
  outlined destroy of BridgedListState(v5);
  result = AGGraphGetOutputValue();
  if (!result)
  {
    __break(1u);
    return result;
  }

  if (v6 != *result)
  {
LABEL_4:
    v8 = AGCreateWeakAttribute();
    AGGraphClearUpdate();
    closure #1 in TableViewListCore.UpdateBridgedState.updateValue()(v8, &v11);
    AGGraphSetUpdate();
    TableViewListCore.UpdateBridgedState.bridgedState.getter(v2);
    v9 = *&v2[*(v0 + 28)];
    outlined destroy of BridgedListState(v2);
    v10 = v9;
    return AGGraphSetOutputValue();
  }

  return result;
}

void closure #1 in TableViewListCore.UpdateBridgedState.updateValue()(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = Strong;
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_bridgedState) = a1;
    UpdateCoalescingTableView.updateContent()();
  }

  *a2 = v5 == 0;
}

uint64_t TableViewListCore.EnvironmentTransform.value.getter@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for BridgedListState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  ScrollBehaviorModifier.ChildEnvironment.environment.getter(a1);
  Value = AGGraphGetValue();
  outlined init with copy of BridgedListState(Value, v4);
  v6 = *v4;
  outlined destroy of BridgedListState(v4);
  v8[1] = v6;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListMarginKey>, &type metadata for ListMarginKey, &protocol witness table for ListMarginKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListMarginKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a1[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance TableViewListCore<A, B>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

id ListRepresentable.makeCoordinator()(uint64_t a1)
{
  v5 = *(a1 + 32);
  type metadata accessor for UITableViewListCoordinator();
  v4 = 0uLL;
  LOBYTE(v5) = 0;
  return specialized UITableViewListCoordinator.__allocating_init(dataSource:selection:transaction:editMode:sidebarStatus:)(v1, v1 + *(a1 + 52), 1, &v4, *(v1 + *(a1 + 56) + 42));
}

char *ListRepresentable.makeViewProvider(context:)(void **a1, uint64_t a2)
{
  v4 = *a1;
  v31 = v2 + *(a2 + 56);
  v5 = a1[1];
  v6 = [objc_allocWithZone(type metadata accessor for UpdateCoalescingTableView()) initWithFrame:*v31 style:{0.0, 0.0, 0.0, 0.0}];
  swift_getWitnessTable();
  v7 = type metadata accessor for PlatformViewRepresentableContext();
  PlatformViewRepresentableContext.coordinator.getter();
  [v6 setDataSource_];

  PlatformViewRepresentableContext.coordinator.getter();
  [v6 setDelegate_];

  v32 = *(a2 + 16);
  type metadata accessor for UITableViewListCoordinator();
  swift_getWitnessTable();
  PlatformViewRepresentableContext.coordinator.getter();
  UITableView._appIntentsDataSourcePayloadProvider.setter();
  [v6 setEstimatedRowHeight_];
  [v6 setSeparatorInsetReference_];
  PlatformViewRepresentableContext.coordinator.getter();
  v8 = *(v32 + *((*MEMORY[0x1E69E7D40] & *v32) + 0xA0));

  swift_unknownObjectWeakAssign();
  PlatformViewRepresentableContext.coordinator.getter();
  v36 = v4;
  specialized PlatformViewRepresentableContext.transaction.getter(v7);

  UITableViewListCoordinator.recordInitialTransactionIfNeeded(_:)(v9);

  PlatformViewRepresentableContext.environment.getter();
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowSpacing>, &type metadata for ListRowSpacing, &protocol witness table for ListRowSpacing, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>();
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v10 = &v6[OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_rowSpacing];
  *v10 = v33;
  v10[8] = v34;
  PlatformViewRepresentableContext.coordinator.getter();
  v11 = UITableViewListCoordinator.dragAndDropController.getter();

  [v6 setDragDelegate_];
  PlatformViewRepresentableContext.coordinator.getter();
  v12 = UITableViewListCoordinator.dragAndDropController.getter();

  [v6 setDropDelegate_];
  v13 = *(v31 + 42) - 1 < 2;
  v14 = v6[OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_isSidebarStyle];
  v6[OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_isSidebarStyle] = v13;
  if (v13 != v14)
  {
    v15 = OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_needsUpdateAlignmentInsets;
    v6[OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_needsUpdateAlignmentInsets] = 1;
    v16 = [v6 _viewControllerForAncestor];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 navigationController];

      if (v18)
      {

        v6[v15] = 0;
        [v6 _notifyAlignedContentMarginChanged];
      }
    }
  }

  type metadata accessor for ListTableViewCell();
  v19 = [swift_getObjCClassFromMetadata() classForCoder];
  v20 = static UITableViewListCoordinator.cellReuseIdentifier.getter();
  v21 = MEMORY[0x18D00C850](v20);

  [v6 registerClass:v19 forCellReuseIdentifier:v21];

  type metadata accessor for ListTableViewHeaderFooter();
  v22 = [swift_getObjCClassFromMetadata() classForCoder];
  v23 = static UITableViewListCoordinator.headerReuseIdentifier.getter();
  v24 = MEMORY[0x18D00C850](v23);

  [v6 registerClass:v22 forHeaderFooterViewReuseIdentifier:v24];

  Attribute = AGWeakAttributeGetAttribute();
  v26 = *MEMORY[0x1E698D3F8];
  if (Attribute != *MEMORY[0x1E698D3F8])
  {
    MEMORY[0x1EEE9AC00](Attribute);
    updated = type metadata accessor for TableViewListCore.UpdateBridgedState();
    MEMORY[0x1EEE9AC00](updated);
    AGGraphMutateAttribute();
  }

  v28 = AGWeakAttributeGetAttribute();
  if (v28 != v26)
  {
    MEMORY[0x1EEE9AC00](v28);
    v29 = type metadata accessor for TableViewListCore.ScrollViewProvider();
    MEMORY[0x1EEE9AC00](v29);
    AGGraphMutateAttribute();
  }

  return v6;
}

uint64_t ListRepresentable.updateViewProvider(_:context:)(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  v107 = a1;
  v5 = *(a3 + 16);
  v101 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v99 = &v95[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v7 + 32);
  v102 = type metadata accessor for ShadowListDataSource();
  v100 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v97 = &v95[-v9];
  v11 = *a2;
  v10 = *(a2 + 1);
  v12 = *(a2 + 3);
  v113 = *(a2 + 2);
  v106 = v12;
  v13 = a2[32];
  v109 = *(a2 + 5);
  *&v133 = v11;
  *(&v133 + 1) = v10;
  v14 = v11;
  v111 = v11;
  v15 = v10;
  *&v134[0] = v113;
  *(&v134[0] + 1) = v12;
  LOBYTE(v134[1]) = v13;
  v110 = v13;
  *(&v134[1] + 1) = v109;
  swift_getWitnessTable();
  v16 = type metadata accessor for PlatformViewRepresentableContext();
  PlatformViewRepresentableContext.environment.getter();
  v112 = *(&v118 + 1);
  v114 = v118;
  v17 = (v115 + *(a3 + 56));
  v18 = v17[1];
  v133 = *v17;
  v134[0] = v18;
  *(v134 + 10) = *(v17 + 26);
  v96 = *(v17 + 42);
  BYTE10(v134[1]) = v96;
  *(&v134[2] + 11) = *(v17 + 59);
  *(&v134[3] + 11) = *(v17 + 75);
  *(&v134[4] + 11) = *(v17 + 91);
  *(&v134[5] + 9) = *(v17 + 105);
  *(&v134[1] + 11) = *(v17 + 43);
  v19 = *(a3 + 24);
  v20 = *(a3 + 40);
  v103 = v5;
  v98 = v8;
  UpdateCoalescingTableView.applyValues<A, B>(from:)(&v133, v5, v19, v8, v20);
  *&v133 = v14;
  *(&v133 + 1) = v15;
  v21 = v15;
  v22 = v113;
  v23 = v106;
  *&v134[0] = v113;
  *(&v134[0] + 1) = v106;
  LOBYTE(v134[1]) = v13;
  v24 = v109;
  *(&v134[1] + 1) = v109;
  PlatformViewRepresentableContext.coordinator.getter();
  v25 = v137;
  v104 = a3;
  v26 = *(a3 + 52);
  v27 = *((*MEMORY[0x1E69E7D40] & *v137) + 0x78);
  swift_beginAccess();
  type metadata accessor for Binding();
  v28 = type metadata accessor for Optional();
  v29 = v115 + v26;
  v30 = v22;
  v31 = v112;
  (*(*(v28 - 8) + 24))(&v25[v27], v29, v28);
  swift_endAccess();

  *&v133 = v111;
  *(&v133 + 1) = v21;
  v108 = v21;
  *&v134[0] = v30;
  *(&v134[0] + 1) = v23;
  LOBYTE(v134[1]) = v110;
  *(&v134[1] + 1) = v24;
  v105 = v16;
  PlatformViewRepresentableContext.coordinator.getter();
  v32 = v137;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EditModeKey>, &type metadata for EditModeKey, &protocol witness table for EditModeKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EditModeKey> and conformance EnvironmentPropertyKey<A>();
  if (v31)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v33 = v119;
  v34 = MEMORY[0x1E69E7D40];
  v35 = v32 + *((*MEMORY[0x1E69E7D40] & *v32) + 0x80);
  v36 = *v35;
  v37 = *(v35 + 1);
  *v35 = v118;
  v35[16] = v33;
  outlined consume of Binding<NavigationSplitViewColumn>?(v36, v37);

  v38 = v111;
  v39 = v108;
  v40 = v109;
  *&v133 = v111;
  *(&v133 + 1) = v108;
  v41 = v113;
  v42 = v106;
  *&v134[0] = v113;
  *(&v134[0] + 1) = v106;
  v43 = v110;
  LOBYTE(v134[1]) = v110;
  *(&v134[1] + 1) = v109;
  PlatformViewRepresentableContext.coordinator.getter();
  v44 = v118;
  *(v118 + *((*v34 & *v118) + 0x90)) = v96;

  *&v133 = v38;
  *(&v133 + 1) = v39;
  *&v134[0] = v41;
  *(&v134[0] + 1) = v42;
  LOBYTE(v134[1]) = v43;
  *(&v134[1] + 1) = v40;
  PlatformViewRepresentableContext.coordinator.getter();
  v45 = v137;
  v46 = UITableViewListCoordinator.dragAndDropController.getter();

  v47 = v99;
  v48 = v103;
  (*(v101 + 16))(v99, v115, v103);
  v49 = v97;
  ShadowListDataSource.init(_:)(v47, v48, v97);
  v50 = *((*v34 & *v46) + 0x60);
  swift_beginAccess();
  (*(v100 + 40))(&v46[v50], v49, v102);
  swift_endAccess();

  v51 = v107;
  v52 = v112;
  if (v112)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<RefreshAction.Key>, &type metadata for RefreshAction.Key, &protocol witness table for RefreshAction.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<RefreshAction.Key>, &type metadata for RefreshAction.Key, &protocol witness table for RefreshAction.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v53 = v133;
  v54 = *&v134[0];
  LOBYTE(v118) = 17;
  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = swift_allocObject();
  *(v56 + 16) = v55;
  *(v56 + 24) = v53;
  *(v56 + 40) = v54;

  outlined copy of AppIntentExecutor?(v53);
  static Update.enqueueAction(reason:_:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v53);

  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SafeAreaTransitionStateKey>, &type metadata for SafeAreaTransitionStateKey, &protocol witness table for SafeAreaTransitionStateKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SafeAreaTransitionStateKey> and conformance EnvironmentPropertyKey<A>();
  if (v52)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v58 = *(&v133 + 1);
  outlined destroy of weak FallbackResponderProvider?(&v133);
  if (Strong)
  {
    v59 = &v51[OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_safeAreaTransitionState];
    *v59 = Strong;
    v59[1] = v58;
    swift_unknownObjectRelease();
  }

  v60 = v111;
  v61 = v109;
  *&v133 = v111;
  *(&v133 + 1) = v108;
  v62 = v108;
  v63 = v113;
  v64 = v105;
  v65 = v106;
  *&v134[0] = v113;
  *(&v134[0] + 1) = v106;
  LOBYTE(v134[1]) = v110;
  *(&v134[1] + 1) = v109;
  PlatformViewRepresentableContext.coordinator.getter();
  v66 = v118;
  v67 = v104;
  v68 = v115;
  v69 = (v115 + *(v104 + 68));
  v70 = *v69;
  v71 = *(v69 + 8);
  LOBYTE(v69) = *(v69 + 9);
  v72 = v66 + *((*MEMORY[0x1E69E7D40] & *v66) + 0x98);
  *v72 = v70;
  v72[8] = v71;
  v72[9] = v69;

  *&v133 = v60;
  *(&v133 + 1) = v62;
  *&v134[0] = v63;
  *(&v134[0] + 1) = v65;
  LOBYTE(v63) = v110;
  LOBYTE(v134[1]) = v110;
  *(&v134[1] + 1) = v61;
  PlatformViewRepresentableContext.coordinator.getter();
  v73 = v137;
  v74 = *(v67 + 72);
  v75 = *((*MEMORY[0x1E69E7D40] & *v137) + 0x108);
  swift_beginAccess();
  outlined assign with copy of IntelligenceAppIntentsDataSourcePayloadProviding?(v68 + v74, &v73[v75]);
  swift_endAccess();

  v76 = v60;
  v77 = v108;
  v137 = v60;
  v138 = v108;
  v78 = v113;
  v139 = v113;
  v140 = v65;
  v79 = v65;
  v141 = v63;
  v80 = v109;
  v142 = v109;
  PlatformViewRepresentableContext.coordinator.getter();
  v81 = v136;
  v82 = *(v81 + *((*MEMORY[0x1E69E7D40] & *v81) + 0xA0));

  *&v118 = v114;
  *(&v118 + 1) = v112;

  ScrollEnvironmentProperties.init(environment:)(&v118, &v133);
  v83 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties;
  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v82 + v83, &v118);
  swift_beginAccess();
  outlined assign with copy of ScrollEnvironmentProperties(&v133, v82 + v83);
  swift_endAccess();
  ScrollViewHelper.didChangeProperties(from:)(&v118);

  outlined destroy of ScrollEnvironmentProperties(&v118);
  outlined destroy of ScrollEnvironmentProperties(&v133);
  v137 = v76;
  v138 = v77;
  v139 = v78;
  v140 = v79;
  v84 = v79;
  v141 = v63;
  LOBYTE(v79) = v63;
  v142 = v80;
  v85 = v80;
  PlatformViewRepresentableContext.coordinator.getter();
  v86 = v136;
  v87 = *(v86 + *((*MEMORY[0x1E69E7D40] & *v86) + 0xA0));

  v116 = v114;
  v117 = v112;
  EnvironmentValues.contentMarginProxy.getter(&v133);
  v88 = &v87[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins];
  v130 = *&v87[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 192];
  v131 = *&v87[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 208];
  v132[0] = *&v87[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 224];
  *(v132 + 9) = *&v87[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 233];
  v126 = *&v87[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 128];
  v127 = *&v87[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 144];
  v128 = *&v87[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 160];
  v129 = *&v87[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 176];
  v122 = *&v87[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 64];
  v123 = *&v87[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 80];
  v124 = *&v87[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 96];
  v125 = *&v87[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 112];
  v118 = *&v87[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins];
  v119 = *&v87[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 16];
  v120 = *&v87[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 32];
  v121 = *&v87[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 48];
  *(v88 + 12) = v134[11];
  *(v88 + 13) = v134[12];
  *(v88 + 14) = v135[0];
  *(v88 + 233) = *(v135 + 9);
  *(v88 + 8) = v134[7];
  *(v88 + 9) = v134[8];
  *(v88 + 10) = v134[9];
  *(v88 + 11) = v134[10];
  *(v88 + 4) = v134[3];
  *(v88 + 5) = v134[4];
  *(v88 + 6) = v134[5];
  *(v88 + 7) = v134[6];
  *v88 = v133;
  *(v88 + 1) = v134[0];
  *(v88 + 2) = v134[1];
  *(v88 + 3) = v134[2];
  ScrollViewHelper.didChangeMargins(from:)();

  v89 = v111;
  v90 = v108;
  *&v118 = v111;
  *(&v118 + 1) = v108;
  v91 = v113;
  *&v119 = v113;
  *(&v119 + 1) = v84;
  LOBYTE(v120) = v79;
  *(&v120 + 1) = v85;
  PlatformViewRepresentableContext.coordinator.getter();
  v92 = v116;
  v137 = v89;
  v138 = v90;
  v139 = v91;
  v140 = v84;
  v141 = v79;
  v142 = v85;
  v93 = specialized PlatformViewRepresentableContext.transaction.getter(v64);

  UITableViewListCoordinator.updateUITableView(_:to:transaction:)(v107, v115, v93);
}

void *ListRepresentable.overrideSizeThatFits(_:in:platformView:)(void *result, uint64_t a2, int a3, uint64_t a4, int a5, char *a6, uint64_t a7)
{
  v8 = v7 + *(a7 + 68);
  if (*(v8 + 9) == 1 && !(*v8 ^ 1 | *(v8 + 8)) && ((a5 | a3) & 1) != 0)
  {
    v9 = &a6[OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_cachedIdealSize];
    if (a6[OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_cachedIdealSize + 16])
    {
      v16 = 0;
      v17 = 0;
      v10 = result;
      v11 = a5;
      v12 = a3;
      AGGraphClearUpdate();
      specialized closure #1 in UpdateCoalescingTableView.idealSize()(a6, &v16);
      AGGraphSetUpdate();
      swift_beginAccess();
      LOBYTE(a5) = v11;
      result = v10;
      v15 = v16;
      v14 = v17;
      *v9 = v16;
      *(v9 + 1) = v14;
      v9[16] = 0;
      if ((v12 & 1) == 0)
      {
LABEL_9:
        if (a5)
        {
          result[1] = v14;
        }

        return result;
      }
    }

    else
    {
      v15 = *v9;
      v14 = *(v9 + 1);
      if ((a3 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    *result = v15;
    goto LABEL_9;
  }

  return result;
}

uint64_t ListRepresentable._identifiedViewTree(in:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  [a1 layoutIfNeeded];
  v3 = [a1 visibleCells];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITableViewCell);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_22:
    v7 = MEMORY[0x1E69E7CC0];
LABEL_23:

    a2[3] = &type metadata for _IdentifiedViewTree;
    result = swift_allocObject();
    *a2 = result;
    if (*(v7 + 2))
    {
      v26 = 1;
    }

    else
    {
      v27 = result;

      result = v27;
      v7 = 0;
      *(v27 + 168) = 0u;
      *(v27 + 152) = 0u;
      *(v27 + 136) = 0u;
      *(v27 + 120) = 0u;
      *(v27 + 104) = 0u;
      *(v27 + 88) = 0u;
      *(v27 + 72) = 0u;
      *(v27 + 56) = 0u;
      *(v27 + 40) = 0u;
      v26 = 2;
      *(v27 + 24) = 0u;
    }

    *(result + 16) = v7;
    *(result + 184) = v26;
    return result;
  }

LABEL_21:
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_22;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x18D00E9C0](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    type metadata accessor for ListTableViewCell();
    result = swift_dynamicCastClassUnconditional();
    v12 = *(result + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host);
    if (!v12)
    {
      break;
    }

    type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>();
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>();
    v13 = v12;
    ViewGraphRootValueUpdater._preferenceValue<A>(_:)();

    outlined init with copy of _IdentifiedViewTree(v30, v29);
    if (v29[168] == 2 && (v14 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(*&v29[40], *&v29[104]), vorrq_s8(*&v29[72], *&v29[136])), vorrq_s8(vorrq_s8(*&v29[56], *&v29[120]), vorrq_s8(*&v29[88], *&v29[152]))), vorrq_s8(*&v29[8], *&v29[24])), !(*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) | *v29)))
    {
      outlined destroy of _IdentifiedViewTree(v30);

      outlined destroy of _IdentifiedViewTree(v29);
    }

    else
    {
      outlined destroy of _IdentifiedViewTree(v29);
      outlined init with copy of _IdentifiedViewTree(v30, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v16 = *(v7 + 2);
      v15 = *(v7 + 3);
      if (v16 >= v15 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v7);
      }

      outlined destroy of _IdentifiedViewTree(v30);
      *(v7 + 2) = v16 + 1;
      v17 = &v7[176 * v16];
      v18 = *&v29[32];
      v19 = *&v29[16];
      *(v17 + 2) = *v29;
      *(v17 + 3) = v19;
      *(v17 + 4) = v18;
      v20 = *&v29[96];
      v21 = *&v29[64];
      v22 = *&v29[48];
      *(v17 + 7) = *&v29[80];
      *(v17 + 8) = v20;
      *(v17 + 5) = v22;
      *(v17 + 6) = v21;
      v23 = *&v29[144];
      v24 = *&v29[128];
      v25 = *&v29[112];
      *(v17 + 185) = *&v29[153];
      *(v17 + 10) = v24;
      *(v17 + 11) = v23;
      *(v17 + 9) = v25;
    }

    ++v6;
    if (v10 == v5)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

char *protocol witness for CoreViewRepresentable.makeViewProvider(context:) in conformance ListRepresentable<A, B>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = ListRepresentable.makeViewProvider(context:)(a1, a2);
  *a3 = result;
  return result;
}

id protocol witness for CoreViewRepresentable.makeCoordinator() in conformance ListRepresentable<A, B>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = ListRepresentable.makeCoordinator()(a1);
  *a2 = result;
  return result;
}

void protocol witness for View.body.getter in conformance ListRepresentable<A, B>()
{
  swift_getWitnessTable();
  specialized PrimitiveView.body.getter();
}

{
  swift_getWitnessTable();
  specialized PrimitiveView.body.getter();
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t type metadata completion function for TableViewListCore()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Binding();
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TableViewListCore(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = ((v9 + 16) & ~v9) + *(v7 + 64);
  v11 = ((v10 + (((v9 | 7) + v5) & ~(v9 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 121;
  v12 = v9 | *(v4 + 80) & 0xF8;
  if (v12 <= 7 && ((*(v4 + 80) | *(v7 + 80)) & 0x100000) == 0 && v11 <= 0x18)
  {
    (*(v4 + 16))(a1);
    v17 = v3 + v5 + 7;
    v18 = a2 + v5 + 7;
    v19 = (((v18 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v8 & 0x80000000) != 0)
    {
      v22 = (*(v7 + 48))(v19 + 1, v8, v6);
      v21 = (v17 & 0xFFFFFFFFFFFFFFF8);
      if (v22)
      {
LABEL_14:
        memcpy(v21, (v18 & 0xFFFFFFFFFFFFFFF8), v10);
LABEL_17:
        v25 = (((v17 | 7) + v10) & 0xFFFFFFFFFFFFFFF8);
        v26 = (((v18 | 7) + v10) & 0xFFFFFFFFFFFFFFF8);
        v27 = *v26;
        v28 = v26[1];
        v29 = v26[3];
        v25[2] = v26[2];
        v25[3] = v29;
        *v25 = v27;
        v25[1] = v28;
        v30 = v26[4];
        v31 = v26[5];
        v32 = v26[6];
        *(v25 + 105) = *(v26 + 105);
        v25[5] = v31;
        v25[6] = v32;
        v25[4] = v30;
        return v3;
      }
    }

    else
    {
      v20 = *v19;
      if (*v19 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      v21 = (v17 & 0xFFFFFFFFFFFFFFF8);
      if (v20 != -1)
      {
        goto LABEL_14;
      }
    }

    *v21 = *(v18 & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v23 = *v19;
    v24 = *(v7 + 16);

    v24(v23 + 1, v19 + 1, v6);
    goto LABEL_17;
  }

  v15 = *a2;
  *v3 = *a2;
  v3 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));

  return v3;
}

uint64_t destroy for TableViewListCore(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56);
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + a1 + (v8 | 7)) & ~(v8 | 7);
  v10 = ~v8;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = v7;
  if ((*(v7 + 84) & 0x80000000) != 0)
  {
    result = (*(v7 + 48))((v11 + v8 + 8) & v10);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v12 = *v11;
  if (*v11 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  result = (v12 + 1);
  if (v12 == -1)
  {
LABEL_7:

    v14 = *(v15 + 8);

    return v14((v11 + v8 + 8) & v10, v6);
  }

  return result;
}

uint64_t initializeWithCopy for TableViewListCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + *(v6 + 48);
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = ~v9;
  v14 = (v9 + 16) & ~v9;
  v15 = *(v8 + 64);
  v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v8 + 84) & 0x80000000) == 0)
  {
    v17 = *v16;
    if (*v16 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v14 + v15;
    if (v17 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v11 = *v12;
    v19 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v16;
    v20 = v9 + 8;
    v21 = v19 + v9 + 8;
    v22 = v16 + v20;
    v23 = *(v8 + 16);

    v23(v21 & v13, v22 & v13, v7);
    goto LABEL_8;
  }

  v18 = v14 + v15;
  if (!(*(v8 + 48))((v16 + v9 + 8) & v13))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v11, v12, v18);
LABEL_8:
  v24 = ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v26 = *v25;
  v27 = v25[1];
  v28 = v25[3];
  v24[2] = v25[2];
  v24[3] = v28;
  *v24 = v26;
  v24[1] = v27;
  v29 = v25[4];
  v30 = v25[5];
  v31 = v25[6];
  *(v24 + 105) = *(v25 + 105);
  v24[5] = v30;
  v24[6] = v31;
  v24[4] = v29;
  return a1;
}

uint64_t assignWithCopy for TableViewListCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + *(v6 + 40);
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = *(v8 + 84);
  v14 = ((v9 + 16) & ~v9) + *(v8 + 64);
  v15 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v33 = ~v9;
  if ((v13 & 0x80000000) != 0)
  {
    v32 = (v10 + a1) & ~(v9 | 7);
    v31 = ((v9 + 16) & ~v9) + *(v8 + 64);
    v19 = *(v8 + 48);
    v30 = v19((v15 + v9 + 8) & ~v9, v13, v7);
    v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v11 = v32;
    v18 = v19((v16 + v9 + 8) & ~v9, v13, v7);
    v14 = v31;
    if (!v30)
    {
LABEL_5:
      if (!v18)
      {
        *v11 = *v12;

        *v15 = *v16;

        (*(v8 + 24))((v15 + v9 + 8) & v33, (v16 + v9 + 8) & v33, v7);
        goto LABEL_12;
      }

      (*(v8 + 8))((v15 + v9 + 8) & v33, v7);
      goto LABEL_9;
    }
  }

  else
  {
    v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v17 = *v16;
    if (*v16 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 + 1;
    if (*v15 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v18)
  {
    *v11 = *v12;
    *v15 = *v16;
    v20 = *(v8 + 16);

    v20((v15 + v9 + 8) & v33, (v16 + v9 + 8) & v33, v7);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v11, v12, v14);
LABEL_12:
  v21 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;
  v23 = *(v22 + 8);
  v24 = *(v22 + 24);
  *(v21 + 40) = *(v22 + 40);
  *(v21 + 24) = v24;
  *(v21 + 8) = v23;
  *(v21 + 42) = *(v22 + 42);
  *(v21 + 48) = *(v22 + 48);
  *(v21 + 56) = *(v22 + 56);
  v25 = *(v22 + 64);
  *(v21 + 72) = *(v22 + 72);
  *(v21 + 64) = v25;
  v26 = *(v22 + 80);
  *(v21 + 88) = *(v22 + 88);
  *(v21 + 80) = v26;
  v27 = *(v22 + 96);
  *(v21 + 104) = *(v22 + 104);
  *(v21 + 96) = v27;
  v28 = *(v22 + 112);
  *(v21 + 120) = *(v22 + 120);
  *(v21 + 112) = v28;
  return a1;
}

uint64_t initializeWithTake for TableViewListCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + *(v6 + 32);
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = ~v9;
  v14 = (v9 + 16) & ~v9;
  v15 = *(v8 + 64);
  v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v8 + 84) & 0x80000000) == 0)
  {
    v17 = *v16;
    if (*v16 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v14 + v15;
    if (v17 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v11 = *v12;
    v19 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v16;
    (*(v8 + 32))((v19 + v9 + 8) & v13, (v16 + v9 + 8) & v13, v7);
    goto LABEL_8;
  }

  v18 = v14 + v15;
  if (!(*(v8 + 48))((v16 + v9 + 8) & v13))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v11, v12, v18);
LABEL_8:
  v20 = ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[3];
  v20[2] = v21[2];
  v20[3] = v24;
  *v20 = v22;
  v20[1] = v23;
  v25 = v21[4];
  v26 = v21[5];
  v27 = v21[6];
  *(v20 + 105) = *(v21 + 105);
  v20[5] = v26;
  v20[6] = v27;
  v20[4] = v25;
  return a1;
}

uint64_t assignWithTake for TableViewListCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + *(v6 + 24);
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = *(v8 + 84);
  v14 = ((v9 + 16) & ~v9) + *(v8 + 64);
  v15 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v32 = ~v9;
  if ((v13 & 0x80000000) != 0)
  {
    v19 = *(v8 + 48);
    v20 = v19((v15 + v9 + 8) & ~v9, v13, v7);
    v21 = v19;
    v31 = v20;
    v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = v21((v16 + v9 + 8) & ~v9, v13, v7);
    if (!v31)
    {
LABEL_5:
      if (!v18)
      {
        *v11 = *v12;

        *v15 = *v16;

        (*(v8 + 40))((v15 + v9 + 8) & v32, (v16 + v9 + 8) & v32, v7);
        goto LABEL_12;
      }

      (*(v8 + 8))((v15 + v9 + 8) & v32, v7);
      goto LABEL_9;
    }
  }

  else
  {
    v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v17 = *v16;
    if (*v16 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 + 1;
    if (*v15 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v18)
  {
    *v11 = *v12;
    *v15 = *v16;
    (*(v8 + 32))((v15 + v9 + 8) & v32, (v16 + v9 + 8) & v32, v7);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v11, v12, v14);
LABEL_12:
  v22 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;
  v24 = *(v23 + 8);
  v25 = *(v23 + 24);
  *(v22 + 40) = *(v23 + 40);
  *(v22 + 24) = v25;
  *(v22 + 8) = v24;
  *(v22 + 42) = *(v23 + 42);
  *(v22 + 48) = *(v23 + 48);
  *(v22 + 56) = *(v23 + 56);
  v26 = *(v23 + 64);
  *(v22 + 72) = *(v23 + 72);
  *(v22 + 64) = v26;
  v27 = *(v23 + 80);
  *(v22 + 88) = *(v23 + 88);
  *(v22 + 80) = v27;
  v28 = *(v23 + 96);
  *(v22 + 104) = *(v23 + 104);
  *(v22 + 96) = v28;
  v29 = *(v23 + 112);
  *(v22 + 120) = *(v23 + 120);
  *(v22 + 112) = v29;
  return a1;
}

uint64_t getEnumTagSinglePayload for TableViewListCore(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = v11 - 1;
  v13 = *(v8 + 80);
  if (v12 <= v7)
  {
    v14 = *(v6 + 84);
  }

  else
  {
    v14 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v13 | 7;
  v16 = (v13 | 7) + *(*(v5 - 8) + 64);
  if (v14 >= a2)
  {
    goto LABEL_31;
  }

  v17 = ((*(*(*(a3 + 24) - 8) + 64) + ((v13 + 16) & ~v13) + (v16 & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 121;
  v18 = (a2 - v14 + 255) >> 8;
  if (v17 <= 3)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 2;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *&a1[v17];
      if (!*&a1[v17])
      {
        goto LABEL_31;
      }
    }

    else
    {
      v22 = *&a1[v17];
      if (!v22)
      {
        goto LABEL_31;
      }
    }

LABEL_27:
    v24 = (v22 - 1) << (8 * v17);
    if (v17 <= 3)
    {
      v25 = *a1;
    }

    else
    {
      v24 = 0;
      v25 = *a1;
    }

    return v14 + (v25 | v24) + 1;
  }

  if (v21)
  {
    v22 = a1[v17];
    if (a1[v17])
    {
      goto LABEL_27;
    }
  }

LABEL_31:
  if (v7 >= v12)
  {
    v29 = *(v6 + 48);

    return v29(a1, v7, v5);
  }

  else
  {
    v26 = (((&a1[v16] & ~v15) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v10 & 0x80000000) != 0)
    {
      v28 = (*(v9 + 48))((v26 + v13 + 8) & ~v13);
    }

    else
    {
      v27 = *v26;
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      v28 = v27 + 1;
    }

    if (v28 >= 2)
    {
      return v28 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for TableViewListCore(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a4 + 24) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = v12 - 1;
  if (v12 - 1 <= v8)
  {
    v14 = *(v7 + 84);
  }

  else
  {
    v14 = v12 - 1;
  }

  v15 = ((v11 + 16) & ~v11) + *(v9 + 64);
  v16 = (v11 | 7) + *(*(v6 - 8) + 64);
  v17 = ((v15 + (v16 & ~(v11 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 121;
  if (v14 >= a3)
  {
    v21 = 0;
    if (v14 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = (a3 - v14 + 255) >> 8;
    if (v17 <= 3)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v14 >= a2)
    {
LABEL_20:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *&a1[v17] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *&a1[v17] = 0;
      }

      else if (v21)
      {
        a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v8 >= v13)
      {
        v28 = *(v7 + 56);

        v28(a1);
      }

      else
      {
        v24 = (&a1[v16] & ~(v11 | 7));
        if (v13 >= a2)
        {
          v29 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v10 & 0x80000000) != 0)
          {
            v30 = *(v9 + 56);
            v31 = a2 + 1;

            v30((v29 + v11 + 8) & ~v11, v31);
          }

          else if (((a2 + 1) & 0x80000000) != 0)
          {
            *v29 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *v29 = a2;
          }
        }

        else
        {
          if (v15 <= 3)
          {
            v25 = ~(-1 << (8 * v15));
          }

          else
          {
            v25 = -1;
          }

          if (v15)
          {
            v26 = v25 & (a2 - v12);
            if (v15 <= 3)
            {
              v27 = v15;
            }

            else
            {
              v27 = 4;
            }

            bzero(v24, v15);
            if (v27 > 2)
            {
              if (v27 == 3)
              {
                *v24 = v26;
                v24[2] = BYTE2(v26);
              }

              else
              {
                *v24 = v26;
              }
            }

            else if (v27 == 1)
            {
              *v24 = v26;
            }

            else
            {
              *v24 = v26;
            }
          }
        }
      }

      return;
    }
  }

  v22 = ~v14 + a2;
  bzero(a1, v17);
  if (v17 <= 3)
  {
    v23 = (v22 >> 8) + 1;
  }

  else
  {
    v23 = 1;
  }

  if (v17 <= 3)
  {
    *a1 = v22;
    if (v21 > 1)
    {
LABEL_30:
      if (v21 == 2)
      {
        *&a1[v17] = v23;
      }

      else
      {
        *&a1[v17] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v21 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v21)
  {
    a1[v17] = v23;
  }
}

uint64_t getEnumTagSinglePayload for TableViewListCore.Configuration.TableViewConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 121))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TableViewListCore.Configuration.TableViewConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for Attribute<UIScrollView?>()
{
  if (!lazy cache variable for type metadata for Attribute<UIScrollView?>)
  {
    type metadata accessor for UIScrollView?();
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<UIScrollView?>);
    }
  }
}

void type metadata accessor for StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>();
    lazy protocol witness table accessor for type ListUsesLegacySafeAreaPropagation and conformance ListUsesLegacySafeAreaPropagation();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListUsesLegacySafeAreaPropagation and conformance ListUsesLegacySafeAreaPropagation()
{
  result = lazy protocol witness table cache variable for type ListUsesLegacySafeAreaPropagation and conformance ListUsesLegacySafeAreaPropagation;
  if (!lazy protocol witness table cache variable for type ListUsesLegacySafeAreaPropagation and conformance ListUsesLegacySafeAreaPropagation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListUsesLegacySafeAreaPropagation and conformance ListUsesLegacySafeAreaPropagation);
  }

  return result;
}

void type metadata accessor for Attribute<[ContentScrollViewBox]>()
{
  if (!lazy cache variable for type metadata for Attribute<[ContentScrollViewBox]>)
  {
    type metadata accessor for Attribute<UInt32>(255, &lazy cache variable for type metadata for [ContentScrollViewBox], &type metadata for ContentScrollViewBox, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<[ContentScrollViewBox]>);
    }
  }
}

uint64_t type metadata completion function for ListRepresentable()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Binding();
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ListRepresentable(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = ((v9 + 16) & ~v9) + *(v7 + 64);
  v11 = ((((((v10 + (((v9 | 7) + v5) & ~(v9 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 150) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 40;
  v12 = v9 | *(v4 + 80) & 0xF8;
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));

    return v3;
  }

  (*(v4 + 16))(a1);
  v17 = v3 + v5 + 7;
  v18 = a2 + v5 + 7;
  v19 = (((v18 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v8 & 0x80000000) != 0)
  {
    v22 = (*(v7 + 48))(v19 + 1, v8, v6);
    v21 = (v17 & 0xFFFFFFFFFFFFFFF8);
    if (v22)
    {
LABEL_14:
      memcpy(v21, (v18 & 0xFFFFFFFFFFFFFFF8), v10);
      goto LABEL_17;
    }
  }

  else
  {
    v20 = *v19;
    if (*v19 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    v21 = (v17 & 0xFFFFFFFFFFFFFFF8);
    if (v20 != -1)
    {
      goto LABEL_14;
    }
  }

  *v21 = *(v18 & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v19;
  v24 = *(v7 + 16);

  v24(v23 + 1, v19 + 1, v6);
LABEL_17:
  v25 = ((v17 | 7) + v10) & 0xFFFFFFFFFFFFFFF8;
  v26 = ((v18 | 7) + v10) & 0xFFFFFFFFFFFFFFF8;
  v27 = *v26;
  v28 = *(v26 + 16);
  v29 = *(v26 + 48);
  *(v25 + 32) = *(v26 + 32);
  *(v25 + 48) = v29;
  *v25 = v27;
  *(v25 + 16) = v28;
  v30 = *(v26 + 64);
  v31 = *(v26 + 80);
  v32 = *(v26 + 96);
  *(v25 + 105) = *(v26 + 105);
  *(v25 + 80) = v31;
  *(v25 + 96) = v32;
  *(v25 + 64) = v30;
  *(v25 + 124) = *(v26 + 124);
  v33 = ((v25 + 135) & 0xFFFFFFFFFFFFFFFCLL);
  v34 = ((v26 + 135) & 0xFFFFFFFFFFFFFFFCLL);
  *v33 = *v34;
  v35 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = *v36;
  *(v35 + 8) = *(v36 + 8);
  *v35 = v37;
  v38 = (v35 + 17) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v36 + 17) & 0xFFFFFFFFFFFFFFF8;
  v40 = *(v39 + 24);
  if (v40 < 0xFFFFFFFF)
  {
    v41 = *v39;
    v42 = *(v39 + 16);
    *(v38 + 32) = *(v39 + 32);
    *v38 = v41;
    *(v38 + 16) = v42;
  }

  else
  {
    *(v38 + 24) = v40;
    *(v38 + 32) = *(v39 + 32);
    (**(v40 - 8))();
  }

  return v3;
}

unint64_t destroy for ListRepresentable(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56);
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + a1 + (v8 | 7)) & ~(v8 | 7);
  v10 = ~v8;
  v11 = v8 + 16;
  v12 = *(v7 + 64);
  v13 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v7 + 84) & 0x80000000) != 0)
  {
    v15 = v11 & ~v8;
    if (!(*(v7 + 48))((v13 + v8 + 8) & v10))
    {
LABEL_5:

      (*(v7 + 8))((v13 + v8 + 8) & v10, v6);
    }
  }

  else
  {
    v14 = *v13;
    if (*v13 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v11 & ~v8;
    if (v14 == -1)
    {
      goto LABEL_5;
    }
  }

  result = (((((v12 + v15 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 150) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8;
  if (*(result + 24) >= 0xFFFFFFFFuLL)
  {
    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

uint64_t initializeWithCopy for ListRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + *(v6 + 48);
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = ~v9;
  v14 = (v9 + 16) & ~v9;
  v15 = *(v8 + 64);
  v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v8 + 84) & 0x80000000) != 0)
  {
    v18 = v14 + v15;
    if ((*(v8 + 48))((v16 + v9 + 8) & v13))
    {
LABEL_5:
      memcpy(v11, v12, v18);
      goto LABEL_8;
    }
  }

  else
  {
    v17 = *v16;
    if (*v16 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v14 + v15;
    if (v17 != -1)
    {
      goto LABEL_5;
    }
  }

  *v11 = *v12;
  v19 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v16;
  v20 = v9 + 8;
  v21 = v19 + v9 + 8;
  v22 = v16 + v20;
  v23 = *(v8 + 16);

  v23(v21 & v13, v22 & v13, v7);
LABEL_8:
  v24 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  v27 = *(v25 + 16);
  v28 = *(v25 + 48);
  *(v24 + 32) = *(v25 + 32);
  *(v24 + 48) = v28;
  *v24 = v26;
  *(v24 + 16) = v27;
  v29 = *(v25 + 64);
  v30 = *(v25 + 80);
  v31 = *(v25 + 96);
  *(v24 + 105) = *(v25 + 105);
  *(v24 + 80) = v30;
  *(v24 + 96) = v31;
  *(v24 + 64) = v29;
  *(v24 + 124) = *(v25 + 124);
  v32 = ((v24 + 135) & 0xFFFFFFFFFFFFFFFCLL);
  v33 = ((v25 + 135) & 0xFFFFFFFFFFFFFFFCLL);
  *v32 = *v33;
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = *v35;
  *(v34 + 8) = *(v35 + 8);
  *v34 = v36;
  v37 = (v34 + 17) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v35 + 17) & 0xFFFFFFFFFFFFFFF8;
  v39 = *(v38 + 24);
  if (v39 < 0xFFFFFFFF)
  {
    v40 = *v38;
    v41 = *(v38 + 16);
    *(v37 + 32) = *(v38 + 32);
    *v37 = v40;
    *(v37 + 16) = v41;
  }

  else
  {
    *(v37 + 24) = v39;
    *(v37 + 32) = *(v38 + 32);
    (**(v39 - 8))();
  }

  return a1;
}

uint64_t assignWithCopy for ListRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + *(v6 + 40);
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = *(v8 + 84);
  v14 = ((v9 + 16) & ~v9) + *(v8 + 64);
  v15 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v46 = ~v9;
  if ((v13 & 0x80000000) == 0)
  {
    v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v17 = *v16;
    if (*v16 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 + 1;
    if (*v15 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v18)
    {
      goto LABEL_9;
    }

    *v11 = *v12;
    *v15 = *v16;
    v20 = *(v8 + 16);

    v20((v15 + v9 + 8) & v46, (v16 + v9 + 8) & v46, v7);
    goto LABEL_12;
  }

  v45 = (v10 + a1) & ~(v9 | 7);
  v44 = ((v9 + 16) & ~v9) + *(v8 + 64);
  v19 = *(v8 + 48);
  v43 = v19((v15 + v9 + 8) & ~v9, v13, v7);
  v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = v45;
  v18 = v19((v16 + v9 + 8) & ~v9, v13, v7);
  v14 = v44;
  if (v43)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v18)
  {

    (*(v8 + 8))((v15 + v9 + 8) & v46, v7);
LABEL_9:
    memcpy(v11, v12, v14);
    goto LABEL_12;
  }

  *v11 = *v12;

  *v15 = *v16;

  (*(v8 + 24))((v15 + v9 + 8) & v46, (v16 + v9 + 8) & v46, v7);
LABEL_12:
  v21 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;
  v23 = *(v22 + 8);
  v24 = *(v22 + 24);
  *(v21 + 40) = *(v22 + 40);
  *(v21 + 24) = v24;
  *(v21 + 8) = v23;
  *(v21 + 42) = *(v22 + 42);
  *(v21 + 48) = *(v22 + 48);
  *(v21 + 56) = *(v22 + 56);
  v25 = *(v22 + 64);
  *(v21 + 72) = *(v22 + 72);
  *(v21 + 64) = v25;
  v26 = *(v22 + 80);
  *(v21 + 88) = *(v22 + 88);
  *(v21 + 80) = v26;
  v27 = *(v22 + 96);
  *(v21 + 104) = *(v22 + 104);
  *(v21 + 96) = v27;
  v28 = *(v22 + 112);
  *(v21 + 120) = *(v22 + 120);
  *(v21 + 112) = v28;
  *(v21 + 124) = *(v22 + 124);
  *(v21 + 128) = *(v22 + 128);
  v29 = ((v21 + 135) & 0xFFFFFFFFFFFFFFFCLL);
  v30 = ((v22 + 135) & 0xFFFFFFFFFFFFFFFCLL);
  *v29 = *v30;
  v29[1] = v30[1];
  v31 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  *(v31 + 8) = *(v32 + 8);
  *v31 = v33;
  v34 = (v31 + 17) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v32 + 17) & 0xFFFFFFFFFFFFFFF8;
  v36 = *(v35 + 24);
  if (*(v34 + 24) < 0xFFFFFFFFuLL)
  {
    if (v36 < 0xFFFFFFFF)
    {
      v40 = *v35;
      v41 = *(v35 + 16);
      *(v34 + 32) = *(v35 + 32);
      *v34 = v40;
      *(v34 + 16) = v41;
    }

    else
    {
      *(v34 + 24) = v36;
      *(v34 + 32) = *(v35 + 32);
      (**(v36 - 8))();
    }
  }

  else if (v36 < 0xFFFFFFFF)
  {
    v37 = (v31 + 17) & 0xFFFFFFFFFFFFFFF8;
    __swift_destroy_boxed_opaque_existential_1(v34);
    v38 = *v35;
    v39 = *(v35 + 16);
    *(v37 + 32) = *(v35 + 32);
    *v37 = v38;
    *(v37 + 16) = v39;
  }

  else
  {
    __swift_assign_boxed_opaque_existential_1(v34, v35);
  }

  return a1;
}

uint64_t initializeWithTake for ListRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + *(v6 + 32);
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = ~v9;
  v14 = (v9 + 16) & ~v9;
  v15 = *(v8 + 64);
  v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v8 + 84) & 0x80000000) == 0)
  {
    v17 = *v16;
    if (*v16 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v14 + v15;
    if (v17 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v11 = *v12;
    v19 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v16;
    (*(v8 + 32))((v19 + v9 + 8) & v13, (v16 + v9 + 8) & v13, v7);
    goto LABEL_8;
  }

  v18 = v14 + v15;
  if (!(*(v8 + 48))((v16 + v9 + 8) & v13))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v11, v12, v18);
LABEL_8:
  v20 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  v23 = *(v21 + 16);
  v24 = *(v21 + 48);
  *(v20 + 32) = *(v21 + 32);
  *(v20 + 48) = v24;
  *v20 = v22;
  *(v20 + 16) = v23;
  v25 = *(v21 + 64);
  v26 = *(v21 + 80);
  v27 = *(v21 + 96);
  *(v20 + 105) = *(v21 + 105);
  *(v20 + 80) = v26;
  *(v20 + 96) = v27;
  *(v20 + 64) = v25;
  *(v20 + 124) = *(v21 + 124);
  v28 = ((v20 + 135) & 0xFFFFFFFFFFFFFFFCLL);
  v29 = ((v21 + 135) & 0xFFFFFFFFFFFFFFFCLL);
  *v28 = *v29;
  v30 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = *v31;
  *(v30 + 8) = *(v31 + 8);
  *v30 = v32;
  v33 = (v30 + 17) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v31 + 17) & 0xFFFFFFFFFFFFFFF8;
  v35 = *v34;
  v36 = *(v34 + 16);
  *(v33 + 32) = *(v34 + 32);
  *v33 = v35;
  *(v33 + 16) = v36;
  return a1;
}

uint64_t assignWithTake for ListRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + *(v6 + 24);
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = *(v8 + 84);
  v14 = ((v9 + 16) & ~v9) + *(v8 + 64);
  v15 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v41 = ~v9;
  if ((v13 & 0x80000000) == 0)
  {
    v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v17 = *v16;
    if (*v16 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 + 1;
    if (*v15 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v18)
    {
      goto LABEL_9;
    }

    *v11 = *v12;
    *v15 = *v16;
    (*(v8 + 32))((v15 + v9 + 8) & v41, (v16 + v9 + 8) & v41, v7);
    goto LABEL_12;
  }

  v19 = *(v8 + 48);
  v20 = v19((v15 + v9 + 8) & ~v9, v13, v7);
  v21 = v19;
  v40 = v20;
  v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = v21((v16 + v9 + 8) & ~v9, v13, v7);
  if (v40)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v18)
  {

    (*(v8 + 8))((v15 + v9 + 8) & v41, v7);
LABEL_9:
    memcpy(v11, v12, v14);
    goto LABEL_12;
  }

  *v11 = *v12;

  *v15 = *v16;

  (*(v8 + 40))((v15 + v9 + 8) & v41, (v16 + v9 + 8) & v41, v7);
LABEL_12:
  v22 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;
  v24 = *(v23 + 8);
  v25 = *(v23 + 24);
  *(v22 + 40) = *(v23 + 40);
  *(v22 + 24) = v25;
  *(v22 + 8) = v24;
  *(v22 + 42) = *(v23 + 42);
  *(v22 + 48) = *(v23 + 48);
  *(v22 + 56) = *(v23 + 56);
  v26 = *(v23 + 64);
  *(v22 + 72) = *(v23 + 72);
  *(v22 + 64) = v26;
  v27 = *(v23 + 80);
  *(v22 + 88) = *(v23 + 88);
  *(v22 + 80) = v27;
  v28 = *(v23 + 96);
  *(v22 + 104) = *(v23 + 104);
  *(v22 + 96) = v28;
  v29 = *(v23 + 112);
  *(v22 + 120) = *(v23 + 120);
  *(v22 + 112) = v29;
  *(v22 + 124) = *(v23 + 124);
  *(v22 + 128) = *(v23 + 128);
  v30 = ((v22 + 135) & 0xFFFFFFFFFFFFFFFCLL);
  v31 = ((v23 + 135) & 0xFFFFFFFFFFFFFFFCLL);
  *v30 = *v31;
  v30[1] = v31[1];
  v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = *v33;
  *(v32 + 8) = *(v33 + 8);
  *v32 = v34;
  v35 = (v32 + 17) & 0xFFFFFFFFFFFFFFF8;
  if (*(v35 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v36 = (v33 + 17) & 0xFFFFFFFFFFFFFFF8;
  v37 = *v36;
  v38 = *(v36 + 16);
  *(v35 + 32) = *(v36 + 32);
  *v35 = v37;
  *(v35 + 16) = v38;
  return a1;
}