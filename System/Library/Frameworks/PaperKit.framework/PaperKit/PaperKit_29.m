unint64_t protocol witness for CodingKey.init(stringValue:) in conformance Color.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized Color.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.CodingKeys and conformance Color.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.CodingKeys and conformance Color.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

CGColorRef Color.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit5ColorV10CodingKeysOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Color(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v11 + 28);
  v13 = type metadata accessor for UnknownValueProperties();
  v14 = *(*(v13 - 8) + 56);
  v23 = v12;
  v14(v10 + v12, 1, 1, v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.CodingKeys and conformance Color.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return outlined destroy of StocksKitCurrencyCache.Provider?(v10 + v23, &_s9Coherence22UnknownValuePropertiesVSgMd);
  }

  else
  {
    v25 = 0;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v26;
    v25 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v26;
    v25 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = v26;
    v25 = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24[0] = v15;
    v24[1] = v16;
    v24[2] = v17;
    v24[3] = v26;
    if (one-time initialization token for extendedSRGBColorSpace != -1)
    {
      swift_once();
    }

    result = CGColorCreate(static Color.extendedSRGBColorSpace, v24);
    v19 = v5;
    v20 = v22;
    if (result)
    {
      v21 = result;
      (*(v19 + 8))(v7, v4);
      *v10 = v21;
      outlined init with copy of Color(v10, v20, type metadata accessor for Color);
      __swift_destroy_boxed_opaque_existential_0(a1);
      return _s8PaperKit5ColorVWOhTm_0(v10, type metadata accessor for Color);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *Color.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit5ColorV10CodingKeysOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.CodingKeys and conformance Color.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  result = CGColorRef.components.getter();
  if (!result)
  {
    goto LABEL_18;
  }

  if (!result[2])
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = result[4];

  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  result = CGColorRef.components.getter();
  if (!result)
  {
    goto LABEL_19;
  }

  if (result[2] < 2uLL)
  {
    goto LABEL_15;
  }

  v9 = result[5];

  v14 = v9;
  v13 = 1;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  result = CGColorRef.components.getter();
  if (!result)
  {
    goto LABEL_20;
  }

  if (result[2] >= 3uLL)
  {
    v10 = result[6];

    v14 = v10;
    v13 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    result = CGColorRef.components.getter();
    if (!result)
    {
      goto LABEL_21;
    }

    if (result[2] >= 4uLL)
    {
      v11 = result[7];

      v14 = v11;
      v13 = 3;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      return (*(v4 + 8))(v6, v3);
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void Color.hash(into:)()
{
  v1 = type metadata accessor for UnknownValueProperties();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence22UnknownValuePropertiesVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - v6;
  type metadata accessor for CGColorRef(0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef);
  _CFObject.hash(into:)();
  v8 = type metadata accessor for Color(0);
  outlined init with copy of Date?(v0 + *(v8 + 20), v7, &_s9Coherence22UnknownValuePropertiesVSgMd);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type UnknownValueProperties and conformance UnknownValueProperties, MEMORY[0x1E6995350]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }
}

uint64_t Color.hashValue.getter()
{
  type metadata accessor for Color(0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type Color and conformance Color, type metadata accessor for Color);

  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

void protocol witness for Hashable.hash(into:) in conformance Color(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownValueProperties();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence22UnknownValuePropertiesVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v11 - v9;
  type metadata accessor for CGColorRef(0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef);
  _CFObject.hash(into:)();
  outlined init with copy of Date?(v2 + *(a2 + 20), v10, &_s9Coherence22UnknownValuePropertiesVSgMd);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type UnknownValueProperties and conformance UnknownValueProperties, MEMORY[0x1E6995350]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Color(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownValueProperties();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence22UnknownValuePropertiesVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  Hasher.init(_seed:)();
  type metadata accessor for CGColorRef(0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef);
  _CFObject.hash(into:)();
  outlined init with copy of Date?(v2 + *(a2 + 20), v10, &_s9Coherence22UnknownValuePropertiesVSgMd);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type UnknownValueProperties and conformance UnknownValueProperties, MEMORY[0x1E6995350]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance Color()
{
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type Color and conformance Color, type metadata accessor for Color);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type Color and conformance Color, type metadata accessor for Color);

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.init(defaultState:) in conformance Color@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v5 + 28);
  v7 = type metadata accessor for UnknownValueProperties();
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  static Color.black.getter(v4);
  outlined destroy of StocksKitCurrencyCache.Provider?(a2 + v6, &_s9Coherence22UnknownValuePropertiesVSgMd);
  return outlined init with take of Color(v4, a2);
}

uint64_t Color.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Color(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v3 + 28);
  v7 = type metadata accessor for UnknownValueProperties();
  v8 = *(*(v7 - 8) + 56);
  v8(a1 + v6, 1, 1, v7);
  v8(v5 + *(v3 + 28), 1, 1, v7);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F510A0);
  if (result)
  {
    v10 = result;
    CGColorRef.calculateMinimumHeadroom.getter();
    result = CGColorCreateWithContentHeadroom();
    if (result)
    {
      v11 = result;

      *v5 = v11;
      outlined destroy of StocksKitCurrencyCache.Provider?(a1 + v6, &_s9Coherence22UnknownValuePropertiesVSgMd);
      return outlined init with take of Color(v5, a1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL protocol witness for CRCodable.isDefaultState.getter in conformance Color(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Color.black.getter(v3);
  v4 = specialized static Color.== infix(_:_:)(v1, v3);
  _s8PaperKit5ColorVWOhTm_0(v3, type metadata accessor for Color);
  return v4;
}

uint64_t Color.isDefaultState.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Color(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v5 + 28);
  v7 = type metadata accessor for UnknownValueProperties();
  (*(*(v7 - 8) + 56))(v4 + v6, 1, 1, v7);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F510A0);
  if (result)
  {
    v9 = result;
    CGColorRef.calculateMinimumHeadroom.getter();
    result = CGColorCreateWithContentHeadroom();
    if (result)
    {
      v10 = result;

      *v4 = v10;
      v11 = specialized static Color.== infix(_:_:)(v1, v4);
      _s8PaperKit5ColorVWOhTm_0(v4, type metadata accessor for Color);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for CRType.copy(renamingReferences:) in conformance CRValueColor@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v5 = type metadata accessor for UnknownValueProperties();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Color(v2, a2, type metadata accessor for CRValueColor);
  v9 = v2[1];
  *a2 = *v2;
  *(a2 + 1) = v9;
  UnknownValueProperties.copy(renamingReferences:)();
  return (*(v6 + 40))(&a2[*(a1 + 32)], v8, v5);
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance CRValueColor()
{
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CRValueColor and conformance CRValueColor, type metadata accessor for CRValueColor);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CRValueColor and conformance CRValueColor, type metadata accessor for CRValueColor);

  return CRValue<>.observableDifference(from:with:)();
}

unint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t result)
{
  if (result)
  {
    v1 = result;
    __buf = 0;
    arc4random_buf(&__buf, 8uLL);
    result = (__buf * v1) >> 64;
    if (__buf * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > __buf * v1)
      {
        do
        {
          __buf = 0;
          arc4random_buf(&__buf, 8uLL);
        }

        while (v2 > __buf * v1);
        return (__buf * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized static CRValueColor.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  type metadata accessor for CRValueColor(0);

  return static UnknownValueProperties.== infix(_:_:)();
}

BOOL specialized static Color.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownValueProperties();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence22UnknownValuePropertiesVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence22UnknownValuePropertiesVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  type metadata accessor for CGColorRef(0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef);
  if ((static _CFObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v13 = *(type metadata accessor for Color(0) + 20);
  v14 = *(v10 + 48);
  outlined init with copy of Date?(a1 + v13, v12, &_s9Coherence22UnknownValuePropertiesVSgMd);
  outlined init with copy of Date?(a2 + v13, &v12[v14], &_s9Coherence22UnknownValuePropertiesVSgMd);
  v15 = *(v5 + 48);
  if (v15(v12, 1, v4) == 1)
  {
    if (v15(&v12[v14], 1, v4) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence22UnknownValuePropertiesVSgMd);
      return 1;
    }

    goto LABEL_7;
  }

  outlined init with copy of Date?(v12, v9, &_s9Coherence22UnknownValuePropertiesVSgMd);
  if (v15(&v12[v14], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
LABEL_7:
    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence22UnknownValuePropertiesVSg_ADtMd);
    return 0;
  }

  v17 = v21;
  (*(v5 + 32))(v21, &v12[v14], v4);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type UnknownValueProperties and conformance UnknownValueProperties, MEMORY[0x1E6995350]);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v5 + 8);
  v19(v17, v4);
  v19(v9, v4);
  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence22UnknownValuePropertiesVSgMd);
  return (v18 & 1) != 0;
}

uint64_t _s8PaperKit5ColorVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Color.CodingKeys and conformance Color.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.CodingKeys and conformance Color.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for Color()
{
  type metadata accessor for CGColorRef(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownValueProperties?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for UnknownValueProperties?()
{
  if (!lazy cache variable for type metadata for UnknownValueProperties?)
  {
    type metadata accessor for UnknownValueProperties();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UnknownValueProperties?);
    }
  }
}

uint64_t type metadata completion function for CRValueColor()
{
  result = type metadata accessor for UnknownValueProperties();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

CGColorRef specialized static Color.validColor(from:)(CGColor *a1)
{
  v2 = CGColorGetColorSpace(a1);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  v3 = CFEqual(v2, static Color.extendedSRGBColorSpace);

  if (v3)
  {
    return a1;
  }

  else
  {
    return CGColorCreateCopyByMatchingToColorSpace(static Color.extendedSRGBColorSpace, kCGRenderingIntentDefault, a1, 0);
  }
}

unint64_t specialized Color.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Color.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined init with copy of Color(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of (Int, AnyCRValue)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void specialized Sequence.compactMap<A>(_:)(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPress);
    lazy protocol witness table accessor for type UITouch and conformance NSObject(&lazy protocol witness table cache variable for type UIPress and conformance NSObject, &lazy cache variable for type metadata for UIPress);
    Set.Iterator.init(_cocoa:)();
    v1 = v24;
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v23 = MEMORY[0x1E69E7CC0];
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPress), swift_dynamicCast(), (v11 = v29) == 0))
    {
LABEL_24:
      outlined consume of Set<UIColor>.Iterator._Variant();
      return;
    }

LABEL_17:
    v12 = v11;
    v13 = [v12 key];
    if (v13)
    {
      v14 = v13;
      v15 = [v14 characters];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v16;

      v17 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
      }

      v19 = *(v17 + 2);
      v18 = *(v17 + 3);
      if (v19 >= v18 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
      }

      *(v17 + 2) = v19 + 1;
      v23 = v17;
      v20 = &v17[16 * v19];
      *(v20 + 4) = v21;
      *(v20 + 5) = v22;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t one-time initialization function for sheetPresentationStateChanged()
{
  result = MEMORY[0x1DA6CCED0](0xD000000000000020, 0x80000001D4089E70);
  static NSNotificationName.sheetPresentationStateChanged = result;
  return result;
}

void CanvasElementResizeView.selection.setter(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v89 = type metadata accessor for CRKeyPath();
  v86 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v90 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v75 - v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v13 = *&Strong[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  if (!v13)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    return;
  }

  if (*(v13 + OBJC_IVAR____TtC8PaperKit10ResizeView_isResizing) == 1)
  {

    goto LABEL_7;
  }

  v78 = a4;
  v14 = *&Strong[OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView];
  if (v14)
  {
    v15 = *(v14 + OBJC_IVAR____TtC8PaperKit10ResizeView_isResizing);

    if (v15)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v79 = a2;
  v16 = swift_unknownObjectWeakLoadStrong();
  v87 = v5;
  v83 = a3;
  v77 = a1;
  if (v16 && (v17 = v16, v18 = (*((*MEMORY[0x1E69E7D40] & *v16) + 0x468))(), v17, v18))
  {
    type metadata accessor for TiledTextView();
    if (swift_dynamicCastClass())
    {
      v19 = TiledTextView.paperAttachments.getter();
      v20 = v19;
      if (v19 >> 62)
      {
LABEL_35:
        v21 = __CocoaSet.count.getter();
        v82 = v18;
        if (v21)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v82 = v18;
        if (v21)
        {
LABEL_16:
          v22 = 0;
          v91 = 0;
          v84 = v20 & 0xFFFFFFFFFFFFFF8;
          v85 = (v20 & 0xC000000000000001);
          while (1)
          {
            if (v85)
            {
              v24 = MEMORY[0x1DA6CE0C0](v22, v20);
            }

            else
            {
              if (v22 >= *(v84 + 16))
              {
                goto LABEL_34;
              }

              v24 = *(v20 + 8 * v22 + 32);
            }

            v23 = v24;
            v25 = (v22 + 1);
            if (__OFADD__(v22, 1))
            {
              __break(1u);
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

            v18 = v21;
            v26 = swift_unknownObjectWeakLoadStrong();
            if (v26 && (v27 = v26, type metadata accessor for AnyCanvas(), v28 = v23, v29 = static NSObject.== infix(_:_:)(), v28, v27, (v29 & 1) != 0))
            {
              v23 = v28;
            }

            else
            {
              v30 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
              if (!*&v23[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView])
              {
LABEL_73:
                __break(1u);
                goto LABEL_74;
              }

              v32 = v91;
              v33 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathVs5NeverOTg503_s8g7Kit9Anyi14C08selectedD10b17IdsSay9Coherence9jk9VGvgAgE13eF19_10VyAA0ldF0VGXEfU_Tf1cn_n(v31);

              v34 = *(v33 + 16);

              v91 = v32;
              if (v34)
              {
                v35 = *&v23[v30];
                if (!v35)
                {
                  goto LABEL_75;
                }

                v36 = v35;
                CanvasElementResizeView.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
              }

              v5 = v87;
            }

            v21 = v18;

            ++v22;
            if (v25 == v18)
            {
              goto LABEL_37;
            }
          }
        }
      }

      v91 = 0;
LABEL_37:

      a1 = v77;
      v18 = v82;
      a3 = v83;
    }

    else
    {
      v91 = 0;
    }
  }

  else
  {
    v91 = 0;
  }

  v37 = (v5 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);
  v38 = *(v5 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);
  v39 = *(v5 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8);
  v40 = *(v5 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16);
  v41 = *(v5 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24);

  if (_sSh2eeoiySbShyxG_ABtFZ9Coherence13WeakTagged_10Vy8PaperKit0D13CanvasElementVG_Tt1g5(v38, a1))
  {
    v42 = _sSh2eeoiySbShyxG_ABtFZ9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGG_Tt1g5(v39, v79);

    if (v42)
    {
      if (v41)
      {
        if (v78)
        {
          goto LABEL_7;
        }

        goto LABEL_45;
      }

      if ((v78 & 1) == 0 && v40 == a3)
      {
LABEL_7:

        return;
      }
    }
  }

  else
  {
  }

LABEL_45:
  v43 = v87;
  v85 = swift_unknownObjectWeakLoadStrong();
  if (!v85)
  {
    goto LABEL_7;
  }

  v44 = *(v43 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_wantsMiniMenuVisible);
  *(v43 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_wantsMiniMenuVisible) = 1;
  if ((v44 & 1) == 0)
  {
    v45 = *(v43 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController);
    if (v45)
    {
      v46 = v45;
      specialized MiniMenuController.update()();
    }
  }

  v75 = v37;
  v47 = *v37;
  v76._rawValue = MEMORY[0x1E69E7CC0];
  v94[0] = MEMORY[0x1E69E7CC0];
  v48 = v47 + 56;
  v49 = 1 << *(v47 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & *(v47 + 56);
  v52 = (v49 + 63) >> 6;
  v81 = (v86 + 8);
  v82 = (v90 + 16);
  v80 = (v90 + 8);
  v86 = v47;
  swift_bridgeObjectRetain_n();
  v53 = 0;
  v84 = v48;
  if (v51)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v54 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      goto LABEL_73;
    }

    if (v54 >= v52)
    {
      break;
    }

    v51 = *(v48 + 8 * v54);
    ++v53;
    if (v51)
    {
      v53 = v54;
      do
      {
LABEL_56:
        v55 = __clz(__rbit64(v51));
        v51 &= v51 - 1;
        v56 = v93;
        v57 = (*(v90 + 16))(v92, *(v86 + 48) + *(v90 + 72) * (v55 | (v53 << 6)), v93);
        v58 = (*((*MEMORY[0x1E69E7D40] & *v85) + 0x440))(v57);
        v60 = v59;
        ObjectType = swift_getObjectType();
        v62 = v88;
        MEMORY[0x1DA6CB5C0](v56);
        v63 = (*(v60 + 40))(ObjectType, v60);

        v64 = v62;
        if (*(v63 + 16) && (v65 = specialized __RawDictionaryStorage.find<A>(_:)(v62), (v66 & 1) != 0))
        {
          v67 = *v81;
          v68 = *(*(v63 + 56) + 8 * v65);
          v67(v64, v89);
          (*v80)(v92, v93);

          MEMORY[0x1DA6CD190](v69);
          if (*((v94[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v76._rawValue = v94[0];
        }

        else
        {

          (*v81)(v62, v89);
          (*v80)(v92, v93);
        }

        a3 = v83;
        v48 = v84;
      }

      while (v51);
    }
  }

  v70 = v75;
  v71 = v79;
  *v75 = v77;
  v70[1] = v71;
  v70[2] = a3;
  *(v70 + 24) = v78 & 1;

  v72 = v87;
  CanvasElementResizeView.selectionChanged(oldCanvasElements:)(v76);

  v94[3] = &type metadata for PencilAndPaperFeatureFlags;
  v94[4] = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v94[0]) = 0;
  v73 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v94);
  if (v73)
  {
    CanvasElementResizeView.ensureStrokesAreSelected()();
  }

  v74 = *(v72 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController);
  if (v74)
  {
    *(v74 + direct field offset for MiniMenuController.needsStateUpdate) = 1;
  }
}

uint64_t CanvasElementResizeView.resizingCanvasElements.getter()
{
  v36 = type metadata accessor for CRKeyPath();
  v1 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - v6;
  v41 = v0;
  v8 = *(v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);
  v31 = MEMORY[0x1E69E7CC0];
  v42 = MEMORY[0x1E69E7CC0];
  v9 = v8 + 56;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 56);
  v13 = (v10 + 63) >> 6;
  v39 = v5 + 16;
  v40 = v5;
  v32 = (v1 + 8);
  v38 = (v5 + 8);
  result = swift_bridgeObjectRetain_n();
  v15 = 0;
  v34 = v8;
  v35 = v4;
  v37 = v7;
  v33 = v8 + 56;
  if (v12)
  {
    while (1)
    {
LABEL_11:
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v40 + 16))(v7, *(v8 + 48) + *(v40 + 72) * (v17 | (v15 << 6)), v4);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_6;
      }

      v19 = Strong;
      v20 = v3;
      v21 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x440))();
      v23 = v22;

      ObjectType = swift_getObjectType();
      MEMORY[0x1DA6CB5C0](v4);
      v25 = (*(v23 + 40))(ObjectType, v23);

      v3 = v20;
      if (*(v25 + 16) && (v26 = specialized __RawDictionaryStorage.find<A>(_:)(v20), (v27 & 1) != 0))
      {
        v28 = *v32;
        v29 = *(*(v25 + 56) + 8 * v26);
        v28(v20, v36);
        v4 = v35;
        (*v38)(v37, v35);

        MEMORY[0x1DA6CD190](v30);
        v9 = v33;
        if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v31 = v42;
        v8 = v34;
        v7 = v37;
        if (!v12)
        {
          break;
        }
      }

      else
      {

        (*v32)(v20, v36);
        v8 = v34;
        v4 = v35;
        v7 = v37;
        v9 = v33;
LABEL_6:
        result = (*v38)(v7, v4);
        if (!v12)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      return v31;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t CanvasElementResizeView.resizingStrokes.getter()
{
  v1 = type metadata accessor for PKDrawing();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v22 - v7;
  if (*(v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24))
  {
    return MEMORY[0x1E69E7CD0];
  }

  if (*(v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16) != 6)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v9 = v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v11 = Strong;
  v12 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x440))();
  v14 = v13;

  ObjectType = swift_getObjectType();
  v16 = (*(v14 + 16))(ObjectType, v14);

  if (!v16)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v17 = [v16 drawing];

  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v2 + 32))(v8, v5, v9);
  type metadata accessor for PKDrawingCoherence(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v18 = v22[1];

  v20 = specialized _NativeSet.filter(_:)(v19, v18);

  return v20;
}

Swift::Void __swiftcall CanvasElementResizeView.selectionChanged(oldCanvasElements:)(Swift::OpaquePointer oldCanvasElements)
{
  v2 = v1;
  v72 = type metadata accessor for CRKeyPath();
  v4 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v77 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v8 = &v59 - v7;
  CanvasElementResizeView.addControlHandles()();
  [v1 layoutSubviews];
  CanvasElementResizeView.endTransform(cancel:)(1);
  if (oldCanvasElements._rawValue >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((oldCanvasElements._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v10 = 0;
    v11 = 0;
    v64 = OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
    v65 = oldCanvasElements._rawValue & 0xC000000000000001;
    v61 = oldCanvasElements._rawValue & 0xFFFFFFFFFFFFFF8;
    v60 = oldCanvasElements._rawValue + 32;
    v70 = (v4 + 1);
    v71 = v2;
    v75 = (v77 + 8);
    v76 = v77 + 16;
    v62 = i;
    rawValue = oldCanvasElements._rawValue;
    while (v65)
    {
      v12 = MEMORY[0x1DA6CE0C0](v10, oldCanvasElements._rawValue);
      v13 = __OFADD__(v10, 1);
      v14 = v10 + 1;
      if (v13)
      {
        goto LABEL_32;
      }

LABEL_11:
      v66 = v12;
      v67 = v11;
      v68 = v14;
      v15 = *&v2[v64];
      v16 = MEMORY[0x1E69E7CC0];
      v17 = *(v15 + 56);
      v78 = (v15 + 56);
      v79 = MEMORY[0x1E69E7CC0];
      v18 = 1 << *(v15 + 32);
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v20 = v19 & v17;
      v21 = (v18 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      oldCanvasElements._rawValue = 0;
      v69 = v16;
      v22 = v74;
      v73 = v15;
LABEL_15:
      v4 = v78;
      while (v20)
      {
LABEL_23:
        v24 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        (*(v77 + 16))(v8, *(v15 + 48) + *(v77 + 72) * (v24 | (oldCanvasElements._rawValue << 6)), v22);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v26 = Strong;
          v27 = v8;
          v28 = v22;
          v29 = v6;
          v30 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x440))();
          v32 = v31;

          ObjectType = swift_getObjectType();
          v34 = v28;
          v8 = v27;
          MEMORY[0x1DA6CB5C0](v34);
          v35 = (*(v32 + 40))(ObjectType, v32);

          v6 = v29;
          if (*(v35 + 16))
          {
            v36 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
            if (v37)
            {
              v38 = *v70;
              v39 = *(*(v35 + 56) + 8 * v36);
              v38(v29, v72);
              v22 = v74;
              (*v75)(v27, v74);

              MEMORY[0x1DA6CD190](v40);
              if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v69 = v79;
              v2 = v71;
              v15 = v73;
              goto LABEL_15;
            }
          }

          (*v70)(v29, v72);
          v2 = v71;
          v15 = v73;
          v22 = v74;
          v4 = v78;
        }

        (*v75)(v8, v22);
      }

      while (1)
      {
        v23 = oldCanvasElements._rawValue + 1;
        if (__OFADD__(oldCanvasElements._rawValue, 1))
        {
          __break(1u);
          goto LABEL_32;
        }

        if (v23 >= v21)
        {
          break;
        }

        v20 = v4[v23];
        ++oldCanvasElements._rawValue;
        if (v20)
        {
          oldCanvasElements._rawValue = v23;
          goto LABEL_23;
        }
      }

      v4 = &v59;
      v42 = v66;
      v79 = v66;
      MEMORY[0x1EEE9AC00](v41);
      *(&v59 - 2) = &v79;
      v11 = v67;
      v43 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_Say8PaperKit09AnyCanvasA4ViewCG_TG5TA_0, (&v59 - 4), v69);

      if ((v43 & 1) == 0)
      {
        (*((*MEMORY[0x1E69E7D40] & *v42) + 0x208))(0);
      }

      oldCanvasElements._rawValue = rawValue;
      v10 = v68;
      if (v68 == v62)
      {
        goto LABEL_35;
      }
    }

    if (v10 >= *(v61 + 16))
    {
      goto LABEL_33;
    }

    v12 = *&v60[8 * v10];
    v13 = __OFADD__(v10, 1);
    v14 = v10 + 1;
    if (!v13)
    {
      goto LABEL_11;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_35:
  v44 = CanvasElementResizeView.resizingCanvasElements.getter();
  v45 = v44;
  if (v44 >> 62)
  {
    v46 = __CocoaSet.count.getter();
    if (!v46)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v46 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v46)
    {
      goto LABEL_44;
    }
  }

  if (v46 < 1)
  {
    __break(1u);
    return;
  }

  for (j = 0; j != v46; ++j)
  {
    if ((v45 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x1DA6CE0C0](j, v45);
    }

    else
    {
      v48 = *(v45 + 8 * j + 32);
    }

    v49 = v48;
    (*((*MEMORY[0x1E69E7D40] & *v48) + 0x208))(1);
  }

LABEL_44:

  v50 = *MEMORY[0x1E69DD8E8];
  v51 = *&v2[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController];
  if (v51 && (v52 = *(v51 + direct field offset for MiniMenuController.miniMenu)) != 0 && (v53 = [v52 view]) != 0)
  {
    v79 = v53;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
    v54 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  else
  {
    v54 = 0;
  }

  UIAccessibilityPostNotification(v50, v54);
  swift_unknownObjectRelease();
  v55 = CanvasElementResizeView.resizingCanvasElements.getter();
  if (v55 >> 62)
  {
    v56 = __CocoaSet.count.getter();
  }

  else
  {
    v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v79 = v56;
  v57 = dispatch thunk of CustomStringConvertible.description.getter();
  v79 = 0x676E697A69736552;
  v80 = 0xE900000000000020;
  MEMORY[0x1DA6CD010](v57);

  MEMORY[0x1DA6CD010](0x746E656D656C6520, 0xE900000000000073);

  v58 = MEMORY[0x1DA6CCED0](v79, v80);

  [v2 setAccessibilityLabel_];
}

void CanvasElementResizeView.init(frame:canvas:)(void *a1, double a2, double a3, double a4, double a5)
{
  *(v5 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController) = 0;
  *(v5 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_moreButton) = 0;
  *(v5 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_contextMenuInteraction) = 0;
  *(v5 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_tapGestureRecognizer) = 0;
  *(v5 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_doubleTapGestureRecognizer) = 0;
  v10 = v5 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_dragLocation;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  *(v5 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_draggedImage) = 0;
  *(v5 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_suppressMiniMenu) = 0;
  *(v5 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_wantsMiniMenuVisible) = 1;
  v11 = v5 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  v12 = MEMORY[0x1E69E7CD0];
  *v11 = MEMORY[0x1E69E7CD0];
  *(v11 + 8) = v12;
  *(v11 + 16) = 6;
  *(v11 + 24) = 0;
  *(v5 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_editingCanvasElements) = MEMORY[0x1E69E7CC0];
  *(v5 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_isSheetPresented) = 0;
  *(v5 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_hasDraggingCanvasElement) = 0;
  v13 = a1;
  ResizeView.init(frame:canvas:resizeHandles:)(v13, 0, a2, a3, a4, a5);
  v15 = v14;
  v16 = MEMORY[0x1DA6CCED0](0xD000000000000027, 0x80000001D4089E40);
  [v15 setAccessibilityIdentifier_];

  v17 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18MiniMenuControllerCyAA0cD7PaletteVGMd)) init];
  v18 = v15;
  specialized MiniMenuController.delegate.setter(v15);
  v19 = *&v18[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController];
  *&v18[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController] = v17;

  v20 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v18 action:sel_tapped_];
  v21 = OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_tapGestureRecognizer;
  v22 = *&v18[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_tapGestureRecognizer];
  *&v18[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_tapGestureRecognizer] = v20;
  v23 = v20;

  if (!v23)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v23 setDelegate_];

  if (!*&v18[v21])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v18 addGestureRecognizer_];
  v24 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v18 action:sel_doubleTapped_];
  v25 = OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_doubleTapGestureRecognizer;
  v26 = *&v18[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_doubleTapGestureRecognizer];
  *&v18[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_doubleTapGestureRecognizer] = v24;
  v27 = v24;

  if (!v27)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v27 setNumberOfTapsRequired_];

  v28 = *&v18[v25];
  if (!v28)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v28 setDelegate_];
  v29 = *&v18[v21];
  if (!v29)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!*&v18[v25])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v29 requireGestureRecognizerToFail_];
  if (!*&v18[v25])
  {
LABEL_17:
    __break(1u);
    return;
  }

  [v18 addGestureRecognizer_];
  v30 = [objc_allocWithZone(MEMORY[0x1E69DC988]) initWithDelegate_];
  [v30 _setLiftDelay_];
  [v30 _setPointerLiftDelay_];
  [v30 _setAllowsPointerDragBeforeLiftDelay_];
  [v18 addInteraction_];
  v31 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for sheetPresentationStateChanged != -1)
  {
    swift_once();
  }

  [v31 addObserver:v18 selector:? name:? object:?];
}

uint64_t CanvasElementResizeView.__ivar_destroyer()
{
}

id CanvasElementResizeView.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CanvasElementResizeView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void CanvasElementResizeView.handleSheetPresentationStateChanged(_:)()
{
  v1 = v0;
  v2 = Notification.userInfo.getter();
  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = v2;
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16))
  {
    goto LABEL_16;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
  if ((v5 & 1) == 0)
  {
    goto LABEL_16;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v4, &v19);
  outlined destroy of AnyHashable(v18);

  if (!*(&v20 + 1))
  {
LABEL_18:
    outlined destroy of StocksKitCurrencyCache.Provider?(&v19, &_sypSgMd);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v6 = LOBYTE(v18[0]);
  v7 = Notification.userInfo.getter();
  if (!v7)
  {
LABEL_17:
    v19 = 0u;
    v20 = 0u;
    goto LABEL_18;
  }

  v8 = v7;
  AnyHashable.init<A>(_:)();
  if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v18), (v10 & 1) == 0))
  {
LABEL_16:

    outlined destroy of AnyHashable(v18);
    goto LABEL_17;
  }

  outlined init with copy of Any(*(v8 + 56) + 32 * v9, &v19);
  outlined destroy of AnyHashable(v18);

  if (!*(&v20 + 1))
  {
    goto LABEL_18;
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIWindow);
  if (swift_dynamicCast())
  {
    v11 = v18[0];
    v12 = [v1 window];
    if (v12)
    {
      v13 = v12;
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {
        v15 = v1[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_isSheetPresented];
        v1[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_isSheetPresented] = v6;
        if (v6 != v15)
        {
          v16 = *&v1[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController];
          if (v16)
          {
            v17 = v16;
            specialized MiniMenuController.update()();

            return;
          }
        }
      }
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall CanvasElementResizeView.didMoveToWindow()()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for CanvasElementResizeView();
  objc_msgSendSuper2(&v8, sel_didMoveToWindow);
  v1 = [*&v0[OBJC_IVAR____TtC8PaperKit10ResizeView_borderView] layer];
  v2 = [v0 window];
  v3 = v2;
  if (!v2 || (v4 = [v2 tintColor]) == 0)
  {
    if (one-time initialization token for resizeHandleColor != -1)
    {
      swift_once();
    }

    v4 = static UIConstants.resizeHandleColor;
  }

  v5 = [v4 CGColor];
  [v1 setBorderColor_];

  v6 = &v0[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection];
  if (*(*&v0[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection] + 16) || (!*(*(v6 + 1) + 16) ? (v7 = v6[24] == 0) : (v7 = 0), !v7))
  {
    CanvasElementResizeView.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
  }
}

unint64_t CanvasElementResizeView.controlHandleCoordinateSpaceScaled.getter@<X0>(_OWORD *a1@<X8>)
{
  result = CanvasElementResizeView.resizingCanvasElements.getter();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v13 = xmmword_1D4059310;
    v12 = xmmword_1D4059320;
    v6 = 0.0;
    v7 = 0.0;
    goto LABEL_9;
  }

  v8 = result;
  v9 = __CocoaSet.count.getter();
  result = v8;
  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA6CE0C0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);
LABEL_6:
    v4 = v3;

    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x2A0))(v17, v5);
    v12 = v17[0];
    v13 = v17[1];
    v6 = v18;
    v7 = v19;

LABEL_9:
    ResizeView.modelToViewTransform.getter(&v20);
    *&t1.a = v12;
    *&t1.c = v13;
    t1.tx = v6;
    t1.ty = v7;
    t2 = v20;
    result = CGAffineTransformConcat(&v14, &t1, &t2);
    v10 = *&v14.c;
    v11 = *&v14.tx;
    *a1 = *&v14.a;
    a1[1] = v10;
    a1[2] = v11;
    return result;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall CanvasElementResizeView.addControlHandles()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8PaperKit10ResizeView_controlHandles;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    goto LABEL_3;
  }

LABEL_10:
  *&v1[v2] = MEMORY[0x1E69E7CC0];

  v8 = CanvasElementResizeView.resizingCanvasElements.getter();
  v4 = v8;
  if (!*(*&v1[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8] + 16))
  {
    if (v8 >> 62)
    {
      while (__CocoaSet.count.getter() == 1 && __CocoaSet.count.getter())
      {
LABEL_13:
        if ((v4 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1DA6CE0C0](0, v4);
        }

        else
        {
          if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v9 = *(v4 + 32);
        }

        v20 = v9;
        v3 = v9;
        v10 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x148))();
        v11 = *(v10 + 16);
        if (!v11)
        {
LABEL_25:

          break;
        }

        v12 = 0;
        while (v12 < *(v10 + 16))
        {
          v13 = *(v10 + 32 + v12);
          if ((v4 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x1DA6CE0C0](0, v4);
          }

          else
          {
            v14 = *(v4 + 32);
          }

          v15 = v14;
          v21[0] = v13;
          v16 = objc_allocWithZone(type metadata accessor for ControlHandleView());
          v17 = ControlHandleView.init(elementView:controlPoint:)(v15, v21);
          swift_beginAccess();
          v18 = v17;
          MEMORY[0x1DA6CD190]();
          if (*((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v19 = *((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          ++v12;
          v3 = &v1[v2];
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          [*&v18[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_dragGestureRecognizer] addTarget:v1 action:sel_controlHandleMoved_];
          [v1 addSubview_];

          if (v11 == v12)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_27:
        v4 = __CocoaSet.count.getter();
        if (!v4)
        {
          goto LABEL_10;
        }

LABEL_3:
        if (v4 >= 1)
        {

          for (i = 0; i != v4; ++i)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v6 = MEMORY[0x1DA6CE0C0](i, v3);
            }

            else
            {
              v6 = *(v3 + 8 * i + 32);
            }

            v7 = v6;
            [v6 removeFromSuperview];
          }

          goto LABEL_10;
        }

        __break(1u);
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_13;
    }
  }
}

unint64_t CanvasElementResizeView.showRectangularSelection.getter()
{
  v1 = v0;
  v2 = CanvasElementResizeView.resizingCanvasElements.getter();
  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 > 1)
  {
    return *(v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle) == 0;
  }

  v4 = *(CanvasElementResizeView.resizingStrokes.getter() + 16);

  if (v4)
  {
    return *(v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle) == 0;
  }

  result = CanvasElementResizeView.resizingCanvasElements.getter();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_15:

    return 0;
  }

  v10 = result;
  v11 = __CocoaSet.count.getter();
  result = v10;
  if (!v11)
  {
    goto LABEL_15;
  }

LABEL_8:
  if ((result & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1DA6CE0C0](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(result + 32);
  }

  v7 = v6;

  v9 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x110))(v8);

  if (v9)
  {
    return *(v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle) == 0;
  }

  return 0;
}

unint64_t CanvasElementResizeView.showRectangularHandles.getter()
{
  if (CanvasElementResizeView.showRectangularSelection.getter())
  {
    return (CanvasElementResizeView.modifiableProperties.getter() >> 1) & 1;
  }

  else
  {
    return 0;
  }
}

double CanvasElementResizeView.selectionCornerRadius.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit4LinkVGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v24 - v5;
  v7 = 0.0;
  if (*(*(v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection) + 16) == 1)
  {

    specialized Collection.first.getter(v8, v3);

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v3, 1, v9) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit4LinkVGMd);
      (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
LABEL_5:
      outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence7WeakRefVy8PaperKit4LinkVGSgMd);
      return v7;
    }

    WeakTagged_10.tagged5.getter();
    (*(v10 + 8))(v3, v9);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit4LinkVGMd);
    if ((*(*(v12 - 8) + 48))(v6, 1, v12) == 1)
    {
      goto LABEL_5;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence7WeakRefVy8PaperKit4LinkVGSgMd);
    v14 = *(CanvasElementResizeView.resizingStrokes.getter() + 16);

    if (!v14)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v16 = Strong;
        v17 = MEMORY[0x1E69E7D40];
        v18 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x450))();
        v19 = 1.0;
        v20 = 1.0;
        if (v18)
        {
          v21 = v18;
          [v18 zoomScale];
          v20 = v22;
        }

        (*((*v17 & *v16) + 0x858))(v24);
        v23 = v25;

        if ((v23 & 1) == 0)
        {
          v19 = sqrt(vaddvq_f64(vmulq_f64(v24[0], v24[0])));
        }

        return v20 * v19 * 16.0;
      }

      else
      {
        return 16.0;
      }
    }
  }

  return v7;
}

void CanvasElementResizeView.rectangularSelectionTransformCoordinateSpace.getter(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v25 = xmmword_1D4059310;
    v26 = xmmword_1D4059320;
    tx = 0.0;
    ty = 0.0;
    goto LABEL_37;
  }

  v4 = Strong;
  *&v82.a = CanvasElementResizeView.resizingStrokes.getter();
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x558);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v8 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Set<WeakRef<CRRegister<TaggedStroke>>> and conformance Set<A>, &_sShy9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  rect2_24 = v4;
  x = v6(&v82, v7, v8);
  y = v10;
  width = v12;
  height = v14;

  v16 = (v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_transientResizeTransform);
  if ((*(v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_transientResizeTransform + 48) & 1) == 0)
  {
    v17 = v16[1];
    *&v82.a = *v16;
    *&v82.c = v17;
    *&v82.tx = v16[2];
    v18 = x;
    *&v17 = y;
    v19 = width;
    v20 = height;
    v83 = CGRectApplyAffineTransform(*(&v17 - 8), &v82);
    x = v83.origin.x;
    y = v83.origin.y;
    width = v83.size.width;
    height = v83.size.height;
  }

  v21 = CanvasElementResizeView.resizingCanvasElements.getter();
  v22 = *(v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_rotationGestureRecognizer);
  if (v22)
  {
    [v22 rotation];
    v24 = v23;
  }

  else
  {
    v24 = 0.0;
  }

  v29 = (v21 >> 62);
  if (v21 >> 62)
  {
    goto LABEL_40;
  }

  v30 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
LABEL_10:
    if (CGRect.isFinite.getter(x, y, width, height))
    {
      goto LABEL_11;
    }

LABEL_35:
    rect2 = xmmword_1D4059310;
    v71 = xmmword_1D4059320;
    tx = 0.0;
    ty = 0.0;
    goto LABEL_36;
  }

  while (1)
  {
LABEL_11:
    if (v29)
    {
      if (__CocoaSet.count.getter() != 1)
      {
        goto LABEL_21;
      }
    }

    else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      goto LABEL_21;
    }

    v31 = CGRect.isFinite.getter(x, y, width, height);
    if (v30 && !v31)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1DA6CE0C0](0, v21);
        goto LABEL_20;
      }

      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v32 = *(v21 + 32);
LABEL_20:
        v33 = v32;

        (*((*v5 & *v33) + 0x290))(&v82, v34);
        v71 = *&v82.a;
        rect2 = *&v82.c;
        tx = v82.tx;
        ty = v82.ty;

        goto LABEL_36;
      }

      __break(1u);
      return;
    }

LABEL_21:
    r2 = height;
    v65 = width;
    v68 = y;
    v72 = x;
    v35 = *MEMORY[0x1E695F050];
    height = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    y = *(MEMORY[0x1E695F050] + 24);
    rect2a = *MEMORY[0x1E695F050];
    v36 = height;
    v37 = width;
    x = y;
    if (!v30)
    {
      break;
    }

    v38 = 0;
    x = *(MEMORY[0x1E695F050] + 24);
    v37 = *(MEMORY[0x1E695F050] + 16);
    v36 = *(MEMORY[0x1E695F050] + 8);
    v35 = *MEMORY[0x1E695F050];
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x1DA6CE0C0](v38, v21);
      }

      else
      {
        if (v38 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v46 = *(v21 + 8 * v38 + 32);
      }

      v29 = v46;
      v47 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v24 == 0.0)
      {
        v39 = v81;
        (*((*v5 & *v46) + 0x290))(v81);
      }

      else
      {
        v39 = &v82;
        (*((*v5 & *v46) + 0x298))(&v82);
      }

      v40 = v39->tx;
      v41 = v39->ty;
      v42 = *&v39->c;
      *&t1.a = *&v39->a;
      *&t1.c = v42;
      t1.tx = v40;
      t1.ty = v41;
      v43 = 0;
      v44 = 0;
      *&v42 = 1.0;
      v45 = 1.0;
      v90 = CGRectApplyAffineTransform(*(&v42 - 1), &t1);
      v84.origin.x = v35;
      v84.origin.y = v36;
      v84.size.width = v37;
      v84.size.height = x;
      v85 = CGRectUnion(v84, v90);
      v35 = v85.origin.x;
      v36 = v85.origin.y;
      v37 = v85.size.width;
      x = v85.size.height;

      ++v38;
      if (v47 == v30)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v30 = __CocoaSet.count.getter();
    if (!v30)
    {
      goto LABEL_10;
    }
  }

LABEL_32:

  v86.origin.x = v35;
  v86.origin.y = v36;
  v86.size.width = v37;
  v86.size.height = x;
  v91.origin.y = v68;
  v91.origin.x = v72;
  v91.size.width = v65;
  v91.size.height = r2;
  v87 = CGRectUnion(v86, v91);
  v48 = v87.origin.x;
  v49 = v87.origin.y;
  v50 = v87.size.width;
  v51 = v87.size.height;
  v92.origin.x = rect2a;
  v92.origin.y = height;
  v92.size.width = width;
  v92.size.height = y;
  if (CGRectEqualToRect(v87, v92))
  {
    goto LABEL_35;
  }

  rect2b = v48 - v50 * 0.0;
  v73 = v49 - v51 * 0.0;
  v88.origin.x = v48;
  v88.origin.y = v49;
  v88.size.width = v50;
  v88.size.height = v51;
  MidX = CGRectGetMidX(v88);
  v89.origin.x = v48;
  v89.origin.y = v49;
  v89.size.width = v50;
  v89.size.height = v51;
  MidY = CGRectGetMidY(v89);
  CGAffineTransformMakeRotation(&t1, v24);
  v66 = t1.ty;
  v69 = t1.tx;
  v60 = *&t1.c;
  r2a = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  a = t1.a;
  b = t1.b;
  c = t1.c;
  d = t1.d;
  v58 = t1.tx;
  v59 = t1.ty;
  *&t2.a = r2a;
  *&t2.c = v60;
  t2.tx = v69;
  t2.ty = v66;
  CGAffineTransformConcat(&v78, &t1, &t2);
  v67 = v78.ty;
  v70 = v78.tx;
  v61 = *&v78.c;
  r2b = *&v78.a;
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v58;
  t1.ty = v59;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.a = r2b;
  *&t1.c = v61;
  t1.tx = v70;
  t1.ty = v67;
  CGAffineTransformConcat(&v78, &t1, &t2);
  t1.a = v50;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = v51;
  t1.tx = rect2b;
  t1.ty = v73;
  t2 = v78;
  CGAffineTransformConcat(&v78, &t1, &t2);
  v71 = *&v78.a;
  rect2 = *&v78.c;
  tx = v78.tx;
  ty = v78.ty;
LABEL_36:

  v26 = v71;
  v25 = rect2;
LABEL_37:
  *a1 = v26;
  *(a1 + 16) = v25;
  *(a1 + 32) = tx;
  *(a1 + 40) = ty;
}

unint64_t CanvasElementResizeView.alwaysShowMiddleYHandles.getter()
{
  v0 = CanvasElementResizeView.resizingCanvasElements.getter();
  if (v0 >> 62)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v1 != 1)
  {
    return 0;
  }

  result = CanvasElementResizeView.resizingCanvasElements.getter();
  if (result >> 62)
  {
    v6 = result;
    v7 = __CocoaSet.count.getter();
    result = v6;
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    return 0;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA6CE0C0](0);
    goto LABEL_9;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);
LABEL_9:
    v4 = v3;

    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x120))(v5);

    return 1;
  }

  __break(1u);
  return result;
}

uint64_t CanvasElementResizeView.availableSelectionHandles(for:)()
{
  v45 = *MEMORY[0x1E69E9840];
  v0 = CanvasElementResizeView.resizingCanvasElements.getter();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v38 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v44 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
      }

      v3 = 0;
      v4 = v44;
      v5 = MEMORY[0x1E69E7D40];
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1DA6CE0C0](v3, v1);
        }

        else
        {
          v6 = *(v1 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = (*((*v5 & *v6) + 0x140))();

        v44 = v4;
        v10 = *(v4 + 16);
        v9 = *(v4 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v4 = v44;
        }

        ++v3;
        *(v4 + 16) = v10 + 1;
        *(v4 + 8 * v10 + 32) = v8;
      }

      while (i != v3);
    }

    else
    {

      v4 = MEMORY[0x1E69E7CC0];
    }

    v11 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8PaperKit16ResizeHandleTypeO_SayAFGTt0g5Tf4g_n(&outlined read-only object #0 of static ResizeHandleType.handles(for:));
    v12 = *(v4 + 16);
    if (!v12)
    {
      break;
    }

    v13 = 0;
    v1 = 0;
    v42 = v4 + 32;
    while (v13 < *(v4 + 16))
    {
      v14 = *(v42 + 8 * v13);
      v15 = *(v11 + 32);
      v16 = v15 & 0x3F;
      v17 = ((1 << v15) + 63) >> 6;
      v18 = 8 * v17;
      swift_bridgeObjectRetain_n();

      if (v16 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        MEMORY[0x1EEE9AC00](isStackAllocationSafe);
        bzero(&v37 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0), v18);
        v11 = specialized closure #1 in _NativeSet.intersection(_:)(&v37 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0), v17, v11, v14);
      }

      else
      {
        v20 = swift_slowAlloc();

        v21 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v20, v17, v11, v14);

        swift_bridgeObjectRelease_n();
        MEMORY[0x1DA6D0660](v20, -1, -1);
        v11 = v21;
      }

      ++v13;

      if (v12 == v13)
      {
        goto LABEL_24;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }

  v1 = 0;
LABEL_24:

  v44 = v11;
  if ((CanvasElementResizeView.modifiableProperties.getter() & 4) == 0)
  {
    specialized Set._Variant.remove(_:)(1u);
    specialized Set._Variant.remove(_:)(5u);
    specialized Set._Variant.remove(_:)(7u);
    specialized Set._Variant.remove(_:)(3u);
    v11 = v44;
  }

  v43 = MEMORY[0x1E69E7CC0];
  v22 = v11 + 56;
  v23 = 1 << *(v11 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v11 + 56);
  v26 = (v23 + 63) >> 6;

  v27 = 0;
  v39 = v26;
  v40 = v11 + 56;
  v42 = v11;
  while (v25)
  {
LABEL_36:
    v29 = *(*(v11 + 48) + (__clz(__rbit64(v25)) | (v27 << 6)));
    v30 = *(v41 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeHandles);
    if (v30 >> 62)
    {
      v31 = __CocoaSet.count.getter();
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 &= v25 - 1;

    if (v31)
    {
      v32 = 0;
      while (1)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x1DA6CE0C0](v32, v30);
          v34 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_54;
          }
        }

        else
        {
          if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v33 = *(v30 + 8 * v32 + 32);
          v34 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }
        }

        if (v33[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_type] == v29)
        {
          break;
        }

        ++v32;
        if (v34 == v31)
        {
          goto LABEL_29;
        }
      }

      MEMORY[0x1DA6CD190](v35);
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v38 = v43;
    }

    else
    {
LABEL_29:
    }

    v11 = v42;
    v26 = v39;
    v22 = v40;
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (v28 >= v26)
    {
      break;
    }

    v25 = *(v22 + 8 * v28);
    ++v27;
    if (v25)
    {
      v27 = v28;
      goto LABEL_36;
    }
  }

  return v38;
}

BOOL CanvasElementResizeView.isAnyElementInLiveEdit.getter()
{
  v0 = CanvasElementResizeView.resizingCanvasElements.getter();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_15:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7D40];
  do
  {
    v6 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1DA6CE0C0](v4, v1);
      if (__OFADD__(v6, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v7 = *(v1 + 8 * v4 + 32);
      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }
    }

    v8 = *((*v5 & *v7) + 0x1B8);
    v9 = v7;
    LOBYTE(v8) = v8();

    v4 = v6 + 1;
  }

  while ((v8 & 1) == 0);

  return v3 != v6;
}

void __swiftcall CanvasElementResizeView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  v4 = v3;
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  if ([v3 isHidden])
  {
    return;
  }

  v8.value.super.isa = isa;
  ResizeView.hitTestChrome(_:with:)(v9, __PAIR128__(*&y, *&x), v8);
  if (v10)
  {
    return;
  }

  v33 = &type metadata for PencilAndPaperFeatureFlags;
  v34 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  v32[0] = 0;
  v11 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v32);
  if ((v11 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      [*&v4[OBJC_IVAR____TtC8PaperKit10ResizeView_borderView] frame];
      v35.x = x;
      v35.y = y;
      if (CGRectContainsPoint(v37, v35) && (v14 = (*((*MEMORY[0x1E69E7D40] & *v13) + 0x468))()) != 0)
      {
        v15 = v14;
        v16 = [v14 selectionInteraction];

        LOBYTE(v15) = [v16 currentSelectionHasStrokes];
        if (v15)
        {
          return;
        }
      }

      else
      {
      }
    }
  }

  v17 = CanvasElementResizeView.resizingCanvasElements.getter();
  v18 = v17;
  if (!(v17 >> 62))
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_14;
    }

LABEL_30:

    [*&v4[OBJC_IVAR____TtC8PaperKit10ResizeView_borderView] frame];
    v36.x = x;
    v36.y = y;
    if (CGRectContainsPoint(v38, v36))
    {
      CanvasElementResizeView.ensureStrokesAreSelected()();
LABEL_32:
      v31 = v4;
    }

    return;
  }

LABEL_29:
  v19 = __CocoaSet.count.getter();
  if (!v19)
  {
    goto LABEL_30;
  }

LABEL_14:
  v20 = 0;
  while (1)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1DA6CE0C0](v20, v18);
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v21 = *(v18 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    [v21 convertPoint:v4 fromCoordinateSpace:{x, y}];
    v25 = v24;
    v27 = v26;
    v28 = [v22 hitTest:isa withEvent:?];
    if (v28)
    {
      break;
    }

    ++v20;
    if (v23 == v19)
    {
      goto LABEL_30;
    }
  }

  v29 = v28;

  CanvasElementResizeView.ensureStrokesAreSelected()();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    [v4 convertPoint:v29 toCoordinateSpace:{x, y}];
    [v29 hitTest:isa withEvent:?];

    return;
  }

  v30 = (*((*MEMORY[0x1E69E7D40] & *v22) + 0xC8))(v25, v27);

  if ((v30 & 1) == 0)
  {

    goto LABEL_32;
  }
}

void __swiftcall CanvasElementResizeView.hitTestMiniMenu(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  if ([v3 isHidden])
  {
    return;
  }

  v7 = *&v3[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController];
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = specialized MiniMenuController.hitTestMenu(_:with:sendingView:)(isa, v3, x, y);

  if (!v9)
  {
    return;
  }

  v10 = CanvasElementResizeView.resizingCanvasElements.getter();
  if (v10 >> 62)
  {
    v17 = v10;
    v18 = __CocoaSet.count.getter();
    v10 = v17;
    if (!v18)
    {
      goto LABEL_22;
    }
  }

  else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1DA6CE0C0](0);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_21;
    }

    v11 = *(v10 + 32);
  }

  v12 = v11;

  v14 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x108))(v13);

  if ((v14 & 1) == 0)
  {
    return;
  }

  v10 = CanvasElementResizeView.resizingCanvasElements.getter();
  if (v10 >> 62)
  {
LABEL_21:
    v19 = v10;
    v20 = __CocoaSet.count.getter();
    v10 = v19;
    if (v20)
    {
      goto LABEL_12;
    }

LABEL_22:

    return;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

LABEL_12:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1DA6CE0C0](0);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v15 = *(v10 + 32);
  }

  v16 = v15;

  [v16 resignFirstResponder];
}

Swift::Void __swiftcall CanvasElementResizeView.controlHandleMoved(_:)(UIPanGestureRecognizer *a1)
{
  v3 = v1;
  v5 = [(UIPanGestureRecognizer *)a1 view];
  if (v5)
  {
    v48 = v5;
    type metadata accessor for ControlHandleView();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      v8 = CanvasElementResizeView.resizingCanvasElements.getter();
      if (v8 >> 62)
      {
        v16 = v8;
        v17 = __CocoaSet.count.getter();
        v8 = v16;
        if (v17)
        {
LABEL_5:
          if ((v8 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x1DA6CE0C0](0);
          }

          else
          {
            if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_43;
            }

            v9 = *(v8 + 32);
          }

          v2 = v9;

          v10 = CanvasElementResizeView.resizingCanvasElements.getter();
          if (v10 >> 62)
          {
            v18 = v10;
            v19 = __CocoaSet.count.getter();
            v10 = v18;
            if (v19)
            {
LABEL_10:
              if ((v10 & 0xC000000000000001) == 0)
              {
                if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_45;
                }

                v11 = *(v10 + 32);
                goto LABEL_13;
              }

LABEL_43:
              v11 = MEMORY[0x1DA6CE0C0](0);
LABEL_13:
              v12 = v11;

              (*((*MEMORY[0x1E69E7D40] & *v12) + 0x2A0))(v50, v13);
              v46 = v50[0];
              v47 = v50[1];
              v14 = v51;
              v15 = v52;

              goto LABEL_22;
            }
          }

          else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_10;
          }

          v47 = xmmword_1D4059310;
          v46 = xmmword_1D4059320;
          v14 = 0.0;
          v15 = 0.0;
LABEL_22:
          ResizeView.modelToViewTransform.getter(&v53);
          *&t1.a = v46;
          *&t1.c = v47;
          t1.tx = v14;
          t1.ty = v15;
          t2 = v53;
          CGAffineTransformConcat(&v56, &t1, &t2);
          v20 = [(UIPanGestureRecognizer *)a1 state];
          if (v20 > 2)
          {
            if ((v20 - 4) >= 2)
            {
              if (v20 != 3)
              {
                goto LABEL_45;
              }

              v28 = 0;
            }

            else
            {
              v28 = 1;
            }

            CanvasElementResizeView.endTransform(cancel:)(v28);
          }

          else if (v20)
          {
            if (v20 == 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
              v21 = swift_allocObject();
              *(v21 + 16) = xmmword_1D405CEB0;
              *(v21 + 32) = v2;
              v22 = v2;
              CanvasElementResizeView.beginTransform(elements:)(v21);

              LOBYTE(t1.a) = *(v7 + OBJC_IVAR____TtC8PaperKit17ControlHandleView_controlPoint);
              v23 = (*((*MEMORY[0x1E69E7D40] & *v22) + 0x150))(&t1, &v56, 0, 1);
              v25 = v24;

              v26 = &v3[OBJC_IVAR____TtC8PaperKit10ResizeView_originalControlPointLocation];
              *v26 = v23;
              *(v26 + 1) = v25;
              v27 = *&v3[OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle];
              *&v3[OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle] = v7;
              outlined consume of ResizeView.ActiveHandle(v27);
              return;
            }

            if (v20 == 2)
            {
              [(UIPanGestureRecognizer *)a1 translationInView:v3];
              v30 = v29;
              v32 = v31;
              v33 = *(v7 + OBJC_IVAR____TtC8PaperKit17ControlHandleView_controlPoint);
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                v35 = Strong;
                v36 = MEMORY[0x1E69E7D40];
                v37 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x450))();
                v38 = 1.0;
                v39 = 1.0;
                if (v37)
                {
                  v40 = v37;
                  [v37 zoomScale];
                  v39 = v41;
                }

                (*((*v36 & *v35) + 0x858))(&t1);
                v42 = v55;

                if ((v42 & 1) == 0)
                {
                  v38 = sqrt(vaddvq_f64(vmulq_f64(*&t1.a, *&t1.a)));
                }

                v43 = v39 * v38;
              }

              else
              {
                v43 = 1.0;
              }

              v44 = v30 + *&v3[OBJC_IVAR____TtC8PaperKit10ResizeView_originalControlPointLocation];
              v45 = v32 + *&v3[OBJC_IVAR____TtC8PaperKit10ResizeView_originalControlPointLocation + 8];
              LOBYTE(t2.a) = v33;
              (*((*MEMORY[0x1E69E7D40] & *v2) + 0x158))(&t2, &v56, COERCE_DOUBLE(*&v43), 0, v44, v45);
              [v3 setNeedsLayout];
              goto LABEL_40;
            }

LABEL_45:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return;
          }

LABEL_40:

          return;
        }
      }

      else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_5;
      }
    }
  }
}

Swift::Void __swiftcall CanvasElementResizeView.ensureStrokesAreSelected()()
{
  v1 = v0;
  v63 = type metadata accessor for CRKeyPath();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v48 - v5;
  v65 = type metadata accessor for UUID();
  v7 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v64 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for PKDrawing();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v59 = v9;
    v60 = v7;
    v18 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x440);
    v62 = Strong;
    v19 = v18();
    v21 = v20;
    ObjectType = swift_getObjectType();
    v23 = (*(v21 + 16))(ObjectType, v21);

    if (v23)
    {
      v24 = [v23 drawing];

      static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
      PKDrawing._bridgeToObjectiveC()(v25);
      v27 = v26;
      v28 = [v26 uuid];

      (*(v14 + 8))(v16, v13);
      v29 = v1 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
      if (*(v1 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24) == 1)
      {

        swift_unknownObjectRelease();
      }

      else
      {
        v31 = *(v29 + 16);
        v32 = (*((*MEMORY[0x1E69E7D40] & *v62) + 0x468))();
        if (v32)
        {
          v51 = v32;
          v52 = v31;
          v53 = v28;
          v33 = *(v29 + 8);
          v34 = v33 + 56;
          v35 = 1 << *(v33 + 32);
          v36 = -1;
          if (v35 < 64)
          {
            v36 = ~(-1 << v35);
          }

          v37 = v36 & *(v33 + 56);
          v38 = (v35 + 63) >> 6;
          v57 = (v61 + 8);
          v58 = v64 + 16;
          v55 = (v60 + 48);
          v56 = v64 + 8;
          v50 = (v60 + 32);
          v61 = v33;
          swift_bridgeObjectRetain_n();
          v39 = 0;
          v54 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            v40 = v39;
            if (!v37)
            {
              break;
            }

LABEL_16:
            v41 = __clz(__rbit64(v37));
            v37 &= v37 - 1;
            v42 = v64;
            (*(v64 + 16))(v12, *(v61 + 48) + *(v64 + 72) * (v41 | (v39 << 6)), v10);
            WeakRef.id.getter();
            CRKeyPath.uuid.getter();
            (*v57)(v3, v63);
            (*(v42 + 8))(v12, v10);
            if ((*v55)(v6, 1, v65) == 1)
            {
              outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s10Foundation4UUIDVSgMd);
            }

            else
            {
              v49 = *v50;
              v49(v59, v6, v65);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54);
              }

              v44 = *(v54 + 2);
              v43 = *(v54 + 3);
              if (v44 >= v43 >> 1)
              {
                v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1, v54);
              }

              v45 = v54;
              *(v54 + 2) = v44 + 1;
              v49(&v45[((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v44], v59, v65);
            }
          }

          while (1)
          {
            v39 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              break;
            }

            if (v39 >= v38)
            {

              isa = Array._bridgeToObjectiveC()().super.isa;

              v47 = v51;
              [v51 setSelectedStrokeIds:isa selectionType:v52 forAttachment:v53];

              goto LABEL_24;
            }

            v37 = *(v34 + 8 * v39);
            ++v40;
            if (v37)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
        }

        else
        {
LABEL_24:
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      v30 = v62;
    }
  }
}

Swift::Void __swiftcall CanvasElementResizeView.beginTransform()()
{
  v1 = v0;
  v2 = CanvasElementResizeView.resizingCanvasElements.getter();
  CanvasElementResizeView.beginTransform(elements:)(v2);

  *(v0 + OBJC_IVAR____TtC8PaperKit10ResizeView_isResizing) = 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    AnyCanvas.isResizingChanged()();
  }

  CanvasElementResizeView.rectangularSelectionTransformCoordinateSpace.getter(v15);
  v5 = (v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpace);
  v6 = v15[1];
  *v5 = v15[0];
  v5[1] = v6;
  v5[2] = v15[2];
  CanvasElementResizeView.rectangularSelectionTransformCoordinateSpace.getter(v16);
  v7 = v17;
  v8 = v18;
  ResizeView.modelToViewTransform.getter(&v19);
  *&t1.a = v16[0];
  *&t1.c = v16[1];
  t1.tx = v7;
  t1.ty = v8;
  t2 = v19;
  CGAffineTransformConcat(&v12, &t1, &t2);
  v9 = *&v12.c;
  v10 = *&v12.tx;
  v11 = (v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_resizeOriginalCoordinateSpaceScaled);
  *v11 = *&v12.a;
  v11[1] = v9;
  v11[2] = v10;
}

Swift::Void __swiftcall CanvasElementResizeView.beginTransform(elements:)(Swift::OpaquePointer elements)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle;
  v5 = *(v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle);
  outlined copy of ResizeView.ActiveHandle(v5);
  CanvasElementResizeView.endTransform(cancel:)(1);
  v6 = *(v1 + v4);
  *(v2 + v4) = v5;
  outlined copy of ResizeView.ActiveHandle(v5);
  outlined consume of ResizeView.ActiveHandle(v6);
  v7 = OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_editingCanvasElements;
  *(v2 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_editingCanvasElements) = elements;

  v8 = *(v2 + v7);
  if (v8 >> 62)
  {
    v9 = __CocoaSet.count.getter();
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
    return;
  }

  v10 = 0;
  v11 = MEMORY[0x1E69E7D40];
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1DA6CE0C0](v10, v8);
    }

    else
    {
      v12 = *(v8 + 8 * v10 + 32);
    }

    v13 = v12;
    ++v10;
    (*((*v11 & *v12) + 0x1C0))();
  }

  while (v9 != v10);

LABEL_10:
  v19 = &type metadata for PencilAndPaperFeatureFlags;
  v20 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  v18[0] = 0;
  v14 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v18);
  if ((v14 & 1) != 0 && (CanvasElementResizeView.ensureStrokesAreSelected()(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v16 = Strong;
    v17 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x468))();

    [v17 transformingSelectionBegan];
    outlined consume of ResizeView.ActiveHandle(v5);
  }

  else
  {
    outlined consume of ResizeView.ActiveHandle(v5);
  }
}

Swift::Void __swiftcall CanvasElementResizeView.updateTransform(with:)(CGAffineTransform *with)
{
  v2 = v1;
  a = with->a;
  b = with->b;
  c = with->c;
  d = with->d;
  tx = with->tx;
  ty = with->ty;
  v10 = OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_editingCanvasElements;
  v11 = *&v1[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_editingCanvasElements];
  if (v11 >> 62)
  {
    goto LABEL_36;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    goto LABEL_3;
  }

LABEL_10:
  v17 = *(v10 + v2);
  if (v17 >> 62)
  {
    v11 = __CocoaSet.count.getter();
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (v11 < 1)
  {
    while (1)
    {
      __break(1u);
LABEL_42:
      v26 = __CocoaSet.count.getter();
      if (!v26)
      {
        goto LABEL_43;
      }

LABEL_25:
      v27 = 0;
      v10 = MEMORY[0x1E69E7D40];
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x1DA6CE0C0](v27, v11);
        }

        else
        {
          if (v27 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v28 = *(v11 + 8 * v27 + 32);
        }

        v29 = v28;
        v2 = (v27 + 1);
        if (__OFADD__(v27, 1))
        {
          break;
        }

        (*((*v10 & *v28) + 0x1D8))(&t2);
        if ((LOBYTE(t2.a) & 0x20) != 0)
        {
          v30 = (*((*v10 & *v29) + 0x1E8))(&t2);
          *v31 &= 0xFFFFFFFFFFFFFF9FLL;
          v30(&t2, 0);
        }

        ++v27;
        if (v2 == v26)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v12 = __CocoaSet.count.getter();
      if (!v12)
      {
        goto LABEL_10;
      }

LABEL_3:
      if (v12 >= 1)
      {

        v13 = 0;
        v14 = MEMORY[0x1E69E7D40];
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x1DA6CE0C0](v13, v11);
          }

          else
          {
            v15 = *(v11 + 8 * v13 + 32);
          }

          v16 = v15;
          ++v13;
          (*((*v14 & *v15) + 0x298))(&v43);
          t1 = v43;
          t2.a = a;
          t2.b = b;
          t2.c = c;
          t2.d = d;
          t2.tx = tx;
          t2.ty = ty;
          CGAffineTransformConcat(&v45, &t1, &t2);
          (*((*v14 & *v16) + 0x2A8))(&v45);
        }

        while (v12 != v13);

        goto LABEL_10;
      }

      __break(1u);
    }
  }

  v18 = 0;
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1DA6CE0C0](v18, v17);
    }

    else
    {
      v19 = *(v17 + 8 * v18 + 32);
    }

    v20 = v19;
    ++v18;
    [v19 layoutIfNeeded];
    [v20 setNeedsDisplay];
  }

  while (v11 != v18);

LABEL_19:
  *&t1.d = &type metadata for PencilAndPaperFeatureFlags;
  *&t1.tx = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(t1.a) = 0;
  v21 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(&t1);
  if (v21)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      v24 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x468))();

      t1.a = a;
      t1.b = b;
      t1.c = c;
      t1.d = d;
      t1.tx = tx;
      t1.ty = ty;
      [v24 transformingSelectionChanged_];
    }
  }

  t1.a = 1.0;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = 1.0;
  t1.tx = tx;
  t1.ty = ty;
  a = 0.01;
  if (!CGAffineTransform.almostEqual(_:scaleThreshold:translationThreshold:)(&t1.a, 0.01, 0.1))
  {
    v25 = CanvasElementResizeView.resizingCanvasElements.getter();
    v11 = v25;
    v40 = v10;
    v41 = v2;
    if (v25 >> 62)
    {
      goto LABEL_42;
    }

    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_25;
    }

LABEL_43:

    v10 = v40;
    v2 = v41;
  }

  if (fabs(sqrt(vaddvq_f64(vmulq_f64(*&with->a, *&with->a))) + -1.0) < a)
  {
    goto LABEL_57;
  }

  v32 = *(v10 + v2);
  if (v32 >> 62)
  {
    v33 = __CocoaSet.count.getter();
    if (!v33)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
      goto LABEL_57;
    }
  }

  if (v33 < 1)
  {
    __break(1u);
    return;
  }

  v34 = 0;
  v35 = MEMORY[0x1E69E7D40];
  do
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x1DA6CE0C0](v34, v32);
    }

    else
    {
      v36 = *(v32 + 8 * v34 + 32);
    }

    v37 = v36;
    if ((*((*v35 & *v36) + 0x120))())
    {
      v38 = (*((*v35 & *v37) + 0x318))();
      if (v38)
      {
        v39 = v38;
        (*((*v35 & *v38) + 0x148))();
      }
    }

    ++v34;
  }

  while (v33 != v34);

LABEL_57:
  if (fabs(tx) >= a || fabs(ty) >= a)
  {
    CanvasElementResizeView.updateCanvasElementFlagsAfterPositionChanged()();
  }

  [v2 setNeedsLayout];
}

Swift::Void __swiftcall CanvasElementResizeView.endTransform(cancel:)(Swift::Bool cancel)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    specialized ResizeView.endTransform(cancel:)();
    return;
  }

  v5 = Strong;
  v30 = &type metadata for PencilAndPaperFeatureFlags;
  v31 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  v29[0] = 0;
  v6 = isFeatureEnabled(_:)();
  v7 = __swift_destroy_boxed_opaque_existential_0(v29);
  if (v6)
  {
    v8 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x468))(v7);
    v9 = v8;
    v10 = &selRef_transformingSelectionCancelled;
    if (!cancel)
    {
      v10 = &selRef_transformingSelectionEnded;
    }

    [v8 *v10];
  }

  v11 = OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_editingCanvasElements;
  v12 = *(v2 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_editingCanvasElements);
  if (v12 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_8;
    }

LABEL_26:

    goto LABEL_27;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

LABEL_8:
  v13 = *(v2 + v11);
  if (!cancel)
  {

    v15 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC8PaperKit09AnyCanvasA4ViewC_SayAFGTt0g5(v14);
    v16 = MEMORY[0x1E69E7D40];
    v17 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x788))(v15, 0);

    v13 = *(v2 + v11);
    if (v17)
    {

      specialized AnyCanvas.undoableEndLiveEdits<A>(for:)(v18);

      v20 = (*((*v16 & *v5) + 0x468))(v19);
      if (v20)
      {
        v21 = v20;
        v22 = [v20 selectionInteraction];

        [v22 didResizeExternalElements];
      }

      goto LABEL_24;
    }
  }

  if (v13 >> 62)
  {
    v23 = __CocoaSet.count.getter();
    if (v23)
    {
      goto LABEL_17;
    }

LABEL_24:

    *(v2 + v11) = MEMORY[0x1E69E7CC0];

LABEL_27:
    specialized ResizeView.endTransform(cancel:)();
    return;
  }

  v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
    goto LABEL_24;
  }

LABEL_17:
  v28 = v11;
  if (v23 >= 1)
  {

    v24 = 0;
    v25 = MEMORY[0x1E69E7D40];
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1DA6CE0C0](v24, v13);
      }

      else
      {
        v26 = *(v13 + 8 * v24 + 32);
      }

      v27 = v26;
      ++v24;
      (*((*v25 & *v26) + 0x1C8))(0, 1);
      [v27 layoutIfNeeded];
      [v27 setNeedsDisplay];
    }

    while (v23 != v24);

    v11 = v28;
    goto LABEL_24;
  }

  __break(1u);
}

void CanvasElementResizeView.rotationSnapOffset.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_editingCanvasElements;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_editingCanvasElements);
  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 == 1)
  {
    v4 = *(v0 + v1);
    if (v4 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_6:
        if ((v4 & 0xC000000000000001) == 0)
        {
          if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v5 = *(v4 + 32);
          goto LABEL_9;
        }

LABEL_14:

        v5 = MEMORY[0x1DA6CE0C0](0, v4);

LABEL_9:
        (*((*MEMORY[0x1E69E7D40] & *v5) + 0x298))(v7);

        CGAffineTransform.decompose(initialRotation:)(v6, 0.0);
        return;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_14;
  }
}

unint64_t CanvasElementResizeView.modifiableProperties.getter()
{
  v1 = CanvasElementResizeView.resizingCanvasElements.getter();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
    if (v3)
    {
LABEL_3:
      if (v3 < 1)
      {
        __break(1u);
        goto LABEL_36;
      }

      v4 = 0;
      v0 = 15;
      v5 = MEMORY[0x1E69E7D40];
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1DA6CE0C0](v4, v2);
        }

        else
        {
          v6 = *(v2 + 8 * v4 + 32);
        }

        v7 = v6;
        ++v4;
        v8 = (*((*v5 & *v6) + 0x1D0))();

        v0 &= v8;
      }

      while (v3 != v4);

      if ((v0 & 4) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v0 = 15;
LABEL_13:
  v9 = CanvasElementResizeView.resizingCanvasElements.getter();
  if (v9 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (i < 2)
    {
      break;
    }

    v11 = CanvasElementResizeView.resizingCanvasElements.getter();
    v2 = v11;
    if (v11 >> 62)
    {
LABEL_36:
      v12 = __CocoaSet.count.getter();
      if (!v12)
      {
LABEL_37:

        break;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        goto LABEL_37;
      }
    }

    v13 = 0;
    v14 = MEMORY[0x1E69E7D40];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1DA6CE0C0](v13, v2);
      }

      else
      {
        if (v13 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v15 = *(v2 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      (*((*v14 & *v15) + 0x298))(v21);
      if (fabs(v21[0]) < 1.0e-12 && fabs(v21[3]) < 1.0e-12)
      {
      }

      else
      {
        v18 = fabs(v21[1]);

        if (v18 >= 1.0e-12 || fabs(v21[2]) >= 1.0e-12)
        {

          v0 &= ~4uLL;
          goto LABEL_38;
        }
      }

      ++v13;
      if (v17 == v12)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_38:
  v19 = *(CanvasElementResizeView.resizingStrokes.getter() + 16);

  if (v19)
  {
    return v0 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    return v0;
  }
}

Swift::Void __swiftcall CanvasElementResizeView.updateCanvasElementsAfterResize()()
{
  v0 = CanvasElementResizeView.resizingCanvasElements.getter();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7D40];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6CE0C0](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = (*((*v4 & *v5) + 0x318))();
      if (v8)
      {
        v9 = *(v8 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics);
        v10 = v8;

        *(v9 + 50) = 1;
        FormTextFieldAnalytics.recordEvent()();
      }

      ++v3;
      if (v7 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:
}

Swift::Void __swiftcall CanvasElementResizeView.updateCanvasElementFlagsAfterPositionChanged()()
{
  v0 = CanvasElementResizeView.resizingCanvasElements.getter();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7D40];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6CE0C0](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      (*((*v4 & *v5) + 0x1D8))(v10);
      if ((v10[0] & 0x40) != 0)
      {
        v9 = (*((*v4 & *v6) + 0x1E8))(v10);
        if ((*v8 & 0x40) != 0)
        {
          *v8 &= ~0x40uLL;
        }

        v9(v10, 0);
      }

      ++v3;
      if (v7 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:
}

Swift::Void __swiftcall CanvasElementResizeView.updateCanvasElementsAfterPositionChanged()()
{
  v0 = CanvasElementResizeView.resizingCanvasElements.getter();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7D40];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6CE0C0](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = (*((*v4 & *v5) + 0x318))();
      if (v8)
      {
        v9 = *(v8 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics);
        v10 = v8;

        *(v9 + 51) = 1;
        FormTextFieldAnalytics.recordEvent()();
      }

      ++v3;
      if (v7 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:
}

Swift::Void __swiftcall CanvasElementResizeView.nudge(by:)(CGPoint by)
{
  CGAffineTransformMakeTranslation(&t1, by.x, by.y);
  v26 = *&t1.a;
  v27 = *&t1.c;
  v32 = t1;
  tx = t1.tx;
  ty = t1.ty;
  v4 = *(v1 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_editingCanvasElements);
  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7D40];
  if (v5)
  {
    if (v5 < 1)
    {
      __break(1u);
      return;
    }

    v7 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA6CE0C0](v7, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v10 = (*((*v6 & *v8) + 0x2B0))(v30);
      v12 = v11;
      v13 = v11[1];
      v14 = v11[2];
      *&t1.a = *v11;
      *&t1.c = v13;
      *&t1.tx = v14;
      *&t2.a = v26;
      *&t2.c = v27;
      t2.tx = tx;
      t2.ty = ty;
      CGAffineTransformConcat(&v28, &t1, &t2);
      v15 = *&v28.c;
      v16 = *&v28.tx;
      *v12 = *&v28.a;
      v12[1] = v15;
      v12[2] = v16;
      v10(v30, 0);
    }

    while (v5 != v7);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = CanvasElementResizeView.resizingStrokes.getter();
    v20 = v19;
    v21 = *(v19 + 16);
    if (v21)
    {
      v22 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9Coherence7WeakRefVyAF10CRRegisterVy8PaperKit12TaggedStrokeOGG_Tt1g5(*(v19 + 16), 0);
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd) - 8);
      specialized Sequence._copySequenceContents(initializing:)(&t1, (v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80))), v21, v20);
      v25 = v24;
      outlined consume of Set<UIColor>.Iterator._Variant();
      if (v25 == v21)
      {
LABEL_16:
        (*((*v6 & *v18) + 0x590))(v22, &v32, 1);

        return;
      }

      __break(1u);
    }

    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }
}

uint64_t CanvasElementResizeView.handlePressesBegan(_:with:)(uint64_t a1, objc_class *a2)
{
  v5.value.super.super.isa = swift_unknownObjectWeakLoadStrong();
  if (v5.value.super.super.isa)
  {
    isa = v5.value.super.super.isa;
    v7 = &v2[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection];
    if (*(*&v2[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection] + 16) || (!*(*(v7 + 1) + 16) ? (v8 = v7[24] == 0) : (v8 = 0), !v8))
    {
      v5.value.super.super.isa = a2;
      if (ResizeView.updateGestureModifiersState(_:)(v5) || (v9.value.super.super.isa = a2, (ResizeView.handlePressesBegan(_:with:)(a1, v9) & 1) != 0))
      {
        v10 = 1;
LABEL_28:

        return v10 & 1;
      }

      v11 = [v2 window];
      if (v11)
      {
        v12 = v11;
        if (a2 && (v13 = [(objc_class *)a2 touchesForWindow:v11]) != 0 && ((v14 = v13, type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UITouch), lazy protocol witness table accessor for type UITouch and conformance NSObject(&lazy protocol witness table cache variable for type UITouch and conformance NSObject, &lazy cache variable for type metadata for UITouch), v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v14, (v15 & 0xC000000000000001) == 0) ? (v16 = *(v15 + 16)) : (v16 = __CocoaSet.count.getter()), , v16))
        {
          v10 = 0;
        }

        else
        {
          v17 = specialized Collection.first.getter(a1);
          if (v17 && (v18 = v17, v19 = [v17 key], v18, v19) && ((v20 = objc_msgSend(v19, sel_keyCode), v19, v20 == 76) || v20 == 42))
          {
            v21 = *v7;
            v22 = *(v7 + 1);
            v23 = *(v7 + 2);
            v24 = v7[24];

            v10 = 1;
            AnyCanvas.performSelectionAction(_:_:at:)(4u, v21, v22, v23, v24, 0, 0, 1u);
          }

          else
          {
            v25 = CanvasElementResizeView.resizingCanvasElements.getter();
            v10 = specialized CanvasElementResizeView.chainPressesBegan(_:to:with:)(a1, v25);
          }
        }

        goto LABEL_28;
      }
    }

    v10 = 0;
    goto LABEL_28;
  }

  v10 = 0;
  return v10 & 1;
}

Swift::Bool __swiftcall CanvasElementResizeView.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *&v3[direct field offset for MiniMenuController.miniMenu];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v3;
  v6 = [v4 view];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  v9 = *(v8 + 40);
  v10 = type metadata accessor for MiniMenuState(0);
  if ((v9(v10, v8) & 1) == 0)
  {

LABEL_8:
    goto LABEL_9;
  }

  [(UIGestureRecognizer *)a1 locationInView:v7];
  v12 = v11;
  v14 = v13;
  [v7 bounds];
  v18.x = v12;
  v18.y = v14;
  v15 = CGRectContainsPoint(v19, v18);

  if (v15)
  {
    return 0;
  }

LABEL_9:
  v17.receiver = v1;
  v17.super_class = type metadata accessor for CanvasElementResizeView();
  return [(UIGestureRecognizer *)&v17 gestureRecognizerShouldBegin:a1];
}

Swift::Void __swiftcall CanvasElementResizeView.tapped(_:)(UITapGestureRecognizer *a1)
{
  v2 = CanvasElementResizeView.resizingCanvasElements.getter();
  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 != 1)
  {
    return;
  }

  v4 = CanvasElementResizeView.resizingCanvasElements.getter();
  if (v4 >> 62)
  {
    v22 = v4;
    v23 = __CocoaSet.count.getter();
    v4 = v22;
    if (v23)
    {
      goto LABEL_6;
    }

LABEL_19:

    return;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_6:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1DA6CE0C0](0);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  v8 = MEMORY[0x1E69E7D40];
  v9 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x318))(v7);

  if (v9)
  {
    v24 = v9;
    [v24 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(UITapGestureRecognizer *)a1 locationInView:v24];
    v19 = v18;
    v21 = v20;

    v27.origin.x = v11;
    v27.origin.y = v13;
    v27.size.width = v15;
    v27.size.height = v17;
    v26.x = v19;
    v26.y = v21;
    if (CGRectContainsPoint(v27, v26) && ((*((*v8 & *v24) + 0x98))() & 1) == 0)
    {
      [v24 becomeFirstResponder];
    }
  }
}

Swift::Void __swiftcall CanvasElementResizeView.doubleTapped(_:)(UITapGestureRecognizer *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x440);
  v30 = Strong;
  v12 = v11();
  [(UITapGestureRecognizer *)a1 locationInView:v12];
  v14 = v13;
  v16 = v15;

  v17 = v11();
  v31 = [v17 hitTest:0 withEvent:{v14, v16}];

  if (!v31)
  {
LABEL_9:
    v21 = v30;
    goto LABEL_10;
  }

  type metadata accessor for AnyCanvasElementView();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {

      AnyCanvasElementView.weakCanvasElement.getter(v4);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {

        outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
      }

      else
      {
        (*(v6 + 32))(v8, v4, v5);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence13WeakTagged_10Vy8PaperKit0F13CanvasElementVGGMd);
        v22 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1D4058CF0;
        (*(v6 + 16))(v23 + v22, v8, v5);
        v24 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9Coherence13WeakTagged_10Vy8PaperKit0G13CanvasElementVG_Tt0g5Tf4g_n(v23);
        swift_setDeallocating();
        v25 = *(v6 + 8);
        v25(v23 + v22, v5);
        swift_deallocClassInstance();
        CanvasElementResizeView.selection.setter(v24, MEMORY[0x1E69E7CD0], 6, 0);
        if (((*((*v10 & *v19) + 0xE0))() & 1) == 0)
        {
          goto LABEL_18;
        }

        type metadata accessor for ShapeView();
        if (swift_dynamicCastClass())
        {
          v26 = v31;
          v27 = v30;
          ShapeView.addTextBox(canvas:)(v30);
        }

        v28 = (*((*v10 & *v19) + 0x318))();
        if (v28)
        {
          v29 = v28;
          [v28 becomeFirstResponder];

          v25(v8, v5);
        }

        else
        {
LABEL_18:
          v25(v8, v5);
        }
      }

      return;
    }

    goto LABEL_9;
  }

  v21 = v31;
LABEL_10:
}

UIContextMenuConfiguration_optional __swiftcall CanvasElementResizeView.contextMenuInteraction(_:configurationForMenuAtLocation:)(UIContextMenuInteraction _, CGPoint configurationForMenuAtLocation)
{
  y = configurationForMenuAtLocation.y;
  x = configurationForMenuAtLocation.x;
  v18.value.super.isa = 0;
  ResizeView.hitTestChrome(_:with:)(v2, configurationForMenuAtLocation, v18);
  if (v7)
  {
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
      v13 = *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);
      v14 = *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8);
      v15 = *(v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16);
      v16 = *(v12 + 24);

      v17 = AnyCanvas.contextMenuInteraction(_:members:configurationForMenuAtLocation:)(_.super.isa, v13, v14, v15, v16, x, y);

      v9 = v17;
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_6:
  result.value.super.isa = v9;
  result.is_nil = v8;
  return result;
}

void specialized MiniMenuController.delegate.setter(void *a1)
{
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectWeakAssign();
}

id specialized MiniMenuController.hitTestMenu(_:with:sendingView:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (*(v4 + direct field offset for MiniMenuController.miniMenu))
  {
    result = [*(v4 + direct field offset for MiniMenuController.miniMenu) view];
    if (!result)
    {
      return result;
    }

    v10 = result;
    v11 = _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
    v12 = *(v11 + 40);
    v13 = type metadata accessor for MiniMenuState(0);
    if (v12(v13, v11))
    {
      v14 = [v10 window];
      if (v14)
      {

        [v10 convertPoint:a2 fromCoordinateSpace:{a3, a4}];
        v15 = [v10 hitTest:a1 withEvent:?];

        return v15;
      }
    }
  }

  return 0;
}

uint64_t _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy9Coherence7WeakRefVyAH10CRRegisterVy8PaperKit12TaggedStrokeOGGG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab18VKXEfU_9Coherence7jk6VyAG10l3Vy8m5Kit12oP7OGG_TG5ARxSbs5Error_pRi_zRi0_zlyAQIsgndzo_Tf1nc_n03_s8m50Kit23CanvasElementResizeViewC15resizingStrokesShy9wjkx4AE10lx4AA12oP15OGGGvgSbAMXEfU_AM09PKDrawingI0CTf1nnc_n(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v53 = a4;
  v54 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = &v36 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v8 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v36 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v52 = *(v48 - 8);
  result = MEMORY[0x1EEE9AC00](v48);
  v12 = &v36 - v11;
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v39 = a1;
    v38 = a2;
    v13 = *(v54 + 56);
    v41 = v54 + 56;
    v14 = 1 << *(v54 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v13;
    v17 = OBJC_IVAR___PKDrawingCoherence_model;
    v37 = v53;
    v47 = v17;
    result = swift_beginAccess();
    v40 = 0;
    v18 = 0;
    v19 = (v14 + 63) >> 6;
    v45 = (v8 + 16);
    v46 = v52 + 16;
    v43 = v52 + 8;
    v44 = (v8 + 8);
    v20 = v49;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v55 = (v16 - 1) & v16;
LABEL_14:
      v24 = v21 | (v18 << 6);
      v25 = *(v54 + 48);
      v26 = v52;
      v27 = *(v52 + 72);
      v42 = v24;
      v28 = v48;
      (*(v52 + 16))(v12, v25 + v27 * v24, v48);
      v29 = v50;
      (*v45)(v20, &v53[v47], v50);
      type metadata accessor for PKDrawingStruct(0);
      _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_2(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
      v30 = v51;
      WeakRef.subscript.getter();
      (*v44)(v20, v29);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
      v32 = (*(*(v31 - 8) + 48))(v30, 1, v31);
      outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGSgMd);
      result = (*(v26 + 8))(v12, v28);
      v16 = v55;
      if (v32 != 1)
      {
        *(v39 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
        if (__OFADD__(v40++, 1))
        {
          __break(1u);
LABEL_18:
          v34 = specialized _NativeSet.extractSubset(using:count:)(v39, v38, v40, v54);
          v35 = v37;

          return v34;
        }
      }
    }

    v22 = v18;
    while (1)
    {
      v18 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v18 >= v19)
      {
        goto LABEL_18;
      }

      v23 = *(v41 + 8 * v18);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v55 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = specialized closure #1 in _NativeSet.intersection(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void specialized CanvasElementResizeView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_moreButton) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_contextMenuInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_tapGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_doubleTapGestureRecognizer) = 0;
  v1 = v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_dragLocation;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_draggedImage) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_suppressMiniMenu) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_wantsMiniMenuVisible) = 1;
  v2 = MEMORY[0x1E69E7CD0];
  v3 = v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  *v3 = MEMORY[0x1E69E7CD0];
  *(v3 + 8) = v2;
  *(v3 + 16) = 6;
  *(v3 + 24) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_editingCanvasElements) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_isSheetPresented) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_hasDraggingCanvasElement) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized CanvasElementResizeView.chainPressesBegan(_:to:with:)(uint64_t a1, unint64_t a2)
{
  result = specialized Collection.first.getter(a1);
  if (result)
  {
    v5 = result;
    v6 = [result key];

    if (!v6)
    {
      return 0;
    }

    if (([v6 modifierFlags] & 0x100000) == 0)
    {
      v7 = [v6 characters];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        if (a2 >> 62)
        {
          if (__CocoaSet.count.getter() == 1)
          {
            result = __CocoaSet.count.getter();
            if (result)
            {
              goto LABEL_9;
            }
          }
        }

        else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
        {
LABEL_9:
          if ((a2 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x1DA6CE0C0](0, a2);
          }

          else
          {
            if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_37:
              __break(1u);
              return result;
            }

            v12 = *(a2 + 32);
          }

          v13 = v12;
          v14 = MEMORY[0x1E69E7D40];
          v15 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x318))();

          if (v15)
          {
            if (((*((*v14 & *v15) + 0x98))() & 1) == 0 && [v15 becomeFirstResponder])
            {
              v16 = [v6 keyCode];
              if (v16 == 40)
              {
                goto LABEL_31;
              }

              if (v16 != 44)
              {
                v24 = OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView;
                v25 = *(v15 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView);
                if (!v25)
                {
                  goto LABEL_31;
                }

                [v25 setText_];
                v26 = *(v15 + v24);
                if (!v26)
                {
                  goto LABEL_31;
                }

                v27 = v26;
                specialized Sequence.compactMap<A>(_:)(a1);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
                lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
                v28 = BidirectionalCollection<>.joined(separator:)();
                v30 = v29;

                v23 = MEMORY[0x1DA6CCED0](v28, v30);

                [v27 setText_];

                goto LABEL_30;
              }

              v17 = *(v15 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView);
              if (!v17)
              {
LABEL_31:
                [v15 setNeedsLayout];

                return 1;
              }

              v18 = v17;
              result = [v18 text];
              if (result)
              {
                v19 = result;
                v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v22 = v21;

                MEMORY[0x1DA6CD010](32, 0xE100000000000000);
                if (v22)
                {
                  v23 = MEMORY[0x1DA6CCED0](v20, v22);
                }

                else
                {
                  v23 = 0;
                }

                [v18 setText_];

LABEL_30:
                goto LABEL_31;
              }

              goto LABEL_37;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UITouch and conformance NSObject(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void outlined consume of ResizeView.ActiveHandle(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

id outlined copy of ResizeView.ActiveHandle(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t View.onGeometryChange<A>(for:of:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  v15[0] = _GeometryActionModifier.init(value:action:)();
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v12;
  v13 = type metadata accessor for _GeometryActionModifier();
  MEMORY[0x1DA6CA430](v15, a6, v13, a8);
}

uint64_t type metadata instantiation function for MiniPopoverButton()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t getEnumTagSinglePayload for MiniPopoverButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MiniPopoverButton(uint64_t result, int a2, int a3)
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
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance MiniPopoverState@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MiniPopoverState();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t MiniPopoverButton.knownPopoverSize.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo6CGSizeVSgGMd);
  State.wrappedValue.getter();
  return v1;
}

uint64_t protocol witness for ButtonStyle.makeBody(configuration:) in conformance MiniPopoverButtonStyle()
{
  v0 = type metadata accessor for LiftHoverEffect();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA12_FrameLayoutVGMd);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v10 - v5;
  ButtonStyleConfiguration.label.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v7 = &v6[*(v4 + 36)];
  v8 = v10[1];
  *v7 = v10[0];
  *(v7 + 1) = v8;
  *(v7 + 2) = v10[2];
  static CustomHoverEffect<>.lift.getter();
  lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type LiftHoverEffect and conformance LiftHoverEffect, 255, MEMORY[0x1E697C168]);
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v1 + 8))(v3, v0);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA12_FrameLayoutVGMd);
}

void *MiniPopoverButton.miniMenuController.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 80);
  v5 = *(v0 + 72);
  v10 = v5;
  if (v11 == 1)
  {
    v6 = v5;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of StocksKitCurrencyCache.Provider?(&v10, &_s7SwiftUI11EnvironmentVy8PaperKit18MiniMenuControllerCyAD0fG7PaletteVGSgGMd);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t MiniPopoverButton.arrowEdge(proxy:knownPopoverSize:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v8 = type metadata accessor for GlobalCoordinateSpace();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&a3;
  if (a4)
  {
    v12 = 212.0;
  }

  if ((*(v5 + 120) & 1) == 0)
  {
    v12 = 212.0;
  }

  v72 = v12;
  static CoordinateSpaceProtocol<>.global.getter();
  GeometryProxy.frame<A>(in:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v9 + 8))(v11, v8);
  v21 = MiniPopoverButton.miniMenuController.getter();
  if (v21)
  {
    v22 = v21;
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v24 = swift_unknownObjectWeakLoadStrong();
      if (v24)
      {
        v25 = v24;
        swift_beginAccess();
        v26 = swift_unknownObjectWeakLoadStrong();

        if (v26)
        {
          v27 = [v26 viewForOverlay];

          Strong = v27;
        }
      }

      [Strong convertRect:0 fromView:{v14, v16, v18, v20}];
      v14 = v28;
      v16 = v29;
      v18 = v30;
      v20 = v31;
    }
  }

  v73 = v20;
  v32 = specialized MiniPopoverButton.popoverState.getter();
  v71.origin.x = UIEdgeInsetsInsetRect_0(*(v32 + 48));
  v71.origin.y = v33;
  v71.size.width = v34;
  v71.size.height = v35;
  v36 = specialized MiniPopoverButton.popoverState.getter();
  v37 = v36[2];
  v38 = v36[3];
  v39 = v36[4];
  v40 = v36[5];
  v74.origin.x = v14;
  v74.origin.y = v16;
  v74.size.width = v18;
  v74.size.height = v20;
  v41 = v16;
  MinY = CGRectGetMinY(v74);
  v75.origin.x = v37;
  v75.origin.y = v38;
  v75.size.width = v39;
  v75.size.height = v40;
  MaxY = CGRectGetMaxY(v75);
  v70 = v18;
  if (MaxY < MinY || (v79.origin.x = v14, v79.origin.y = v41, v79.size.width = v18, v79.size.height = v73, v88.origin.x = v37, v88.origin.y = v38, v88.size.width = v39, v88.size.height = v40, v80 = CGRectIntersection(v79, v88), v89.origin.x = v37, v89.origin.y = v38, v89.size.width = v39, v89.size.height = v40, CGRectEqualToRect(v80, v89)) && (v81.origin.x = v14, v81.origin.y = v41, v81.size.width = v18, v53 = v73, v81.size.height = v73, v69 = CGRectGetMinY(v81), v82.origin.x = v37, v82.origin.y = v38, v82.size.width = v39, v82.size.height = v40, v69 = v69 - CGRectGetMinY(v82), v83.origin.x = v37, v83.origin.y = v38, v83.size.width = v39, v83.size.height = v40, v54 = CGRectGetMaxY(v83), v84.origin.x = v14, v84.origin.y = v41, v84.size.width = v18, v84.size.height = v53, v69 < v54 - CGRectGetMaxY(v84)))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO_12CoreGraphics7CGFloatVtGMd);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1D405C990;
    *(v44 + 32) = 0;
    x = v71.origin.x;
    y = v71.origin.y;
    width = v71.size.width;
    height = v71.size.height;
    v49 = CGRectGetMaxY(v71);
    v76.origin.x = v14;
    v76.origin.y = v41;
    v76.size.width = v18;
    v50 = v73;
    v76.size.height = v73;
    *(v44 + 40) = v49 - CGRectGetMaxY(v76);
    *(v44 + 48) = 2;
    v77.origin.x = v14;
    v77.origin.y = v41;
    v77.size.width = v70;
    v77.size.height = v50;
    v51 = CGRectGetMinY(v77);
    v78.origin.x = x;
    v78.origin.y = y;
    v78.size.width = width;
    v78.size.height = height;
    v52 = CGRectGetMinY(v78);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO_12CoreGraphics7CGFloatVtGMd);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1D405C990;
    *(v44 + 32) = 2;
    v85.origin.x = v14;
    v85.origin.y = v41;
    v85.size.width = v18;
    v55 = v73;
    v85.size.height = v73;
    v56 = CGRectGetMinY(v85);
    v58 = v71.origin.x;
    v57 = v71.origin.y;
    v60 = v71.size.width;
    v59 = v71.size.height;
    *(v44 + 40) = v56 - CGRectGetMinY(v71);
    *(v44 + 48) = 0;
    v86.origin.x = v58;
    v86.origin.y = v57;
    v86.size.width = v60;
    v86.size.height = v59;
    v51 = CGRectGetMaxY(v86);
    v87.origin.x = v14;
    v87.origin.y = v41;
    v87.size.width = v70;
    v87.size.height = v55;
    v52 = CGRectGetMaxY(v87);
  }

  *(v44 + 56) = v51 - v52;
  if (v72 <= *(v44 + 40))
  {
    v66 = (v44 + 32);
LABEL_24:
    v64 = *v66;

    return v64;
  }

  if (v72 <= *(v44 + 56))
  {
    v66 = (v44 + 48);
    goto LABEL_24;
  }

  if (one-time initialization token for miniMenuLogger != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, miniMenuLogger);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = 2;
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_1D38C4000, v62, v63, "No good edges, defaulting to bottom edge of popover", v65, 2u);
    MEMORY[0x1DA6D0660](v65, -1, -1);
  }

  else
  {

    return 2;
  }

  return v64;
}

uint64_t MiniPopoverButton.effectivePopoverBinding.getter(void *a1)
{
  v2 = v1;
  type metadata accessor for MainActor();
  v4 = *(*(a1 - 1) + 16);
  v4(&v21, v1, a1);
  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  v8 = a1[2];
  v9 = a1[3];
  *(v6 + 32) = v8;
  *(v6 + 40) = v9;
  v11 = a1[4];
  v10 = a1[5];
  *(v6 + 48) = v11;
  *(v6 + 56) = v10;
  v12 = v1[5];
  *(v6 + 128) = v1[4];
  *(v6 + 144) = v12;
  *(v6 + 160) = v1[6];
  *(v6 + 169) = *(v1 + 105);
  v13 = v1[1];
  *(v6 + 64) = *v1;
  *(v6 + 80) = v13;
  v14 = v1[3];
  *(v6 + 96) = v1[2];
  *(v6 + 112) = v14;
  v4(&v21, v1, a1);
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = MEMORY[0x1E69E85E0];
  *(v16 + 32) = v8;
  *(v16 + 40) = v9;
  *(v16 + 48) = v11;
  *(v16 + 56) = v10;
  v17 = v2[5];
  *(v16 + 128) = v2[4];
  *(v16 + 144) = v17;
  *(v16 + 160) = v2[6];
  *(v16 + 169) = *(v2 + 105);
  v18 = v2[1];
  *(v16 + 64) = *v2;
  *(v16 + 80) = v18;
  v19 = v2[3];
  *(v16 + 96) = v2[2];
  *(v16 + 112) = v19;
  Binding.init(get:set:)();
  return v21;
}

void *closure #1 in MiniPopoverButton.effectivePopoverBinding.getter@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for MiniPopoverButton();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  result = MEMORY[0x1DA6CA790](&v5, v2);
  if (v5 == 1)
  {
    result = specialized MiniPopoverButton.popoverState.getter();
    v4 = *(result + 80) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4 & 1;
  return result;
}

uint64_t MiniPopoverButton.body.getter@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v4 = swift_allocObject();
  v5 = a1[2];
  v6 = a1[3];
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  v30 = v6;
  v7 = a1[4];
  v35 = a1[5];
  *(v4 + 32) = v7;
  *(v4 + 40) = v35;
  v31 = v5;
  v32 = v7;
  v8 = v2[5];
  *(v4 + 112) = v2[4];
  *(v4 + 128) = v8;
  *(v4 + 144) = v2[6];
  *(v4 + 153) = *(v2 + 105);
  v9 = v2[1];
  *(v4 + 48) = *v2;
  *(v4 + 64) = v9;
  v10 = v2[3];
  *(v4 + 80) = v2[2];
  *(v4 + 96) = v10;
  v33 = *(*(a1 - 1) + 16);
  v33(&v46, v2, a1);
  v11 = type metadata accessor for Button();
  WitnessTable = swift_getWitnessTable();
  v13 = lazy protocol witness table accessor for type MiniPopoverButtonStyle and conformance MiniPopoverButtonStyle();
  *&v46 = v11;
  *(&v46 + 1) = &type metadata for MiniPopoverButtonStyle;
  *&v47 = WitnessTable;
  *(&v47 + 1) = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI23_GeometryActionModifierVySo6CGSizeVAESQ12CoreGraphicsyHCg_GMd);
  v15 = type metadata accessor for ModifiedContent();
  *&v46 = v11;
  *(&v46 + 1) = &type metadata for MiniPopoverButtonStyle;
  *&v47 = WitnessTable;
  *(&v47 + 1) = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v35;
  v45 = lazy protocol witness table accessor for type _GeometryActionModifier<CGSize> and conformance _GeometryActionModifier<A>();
  v17 = swift_getWitnessTable();
  *&v46 = OpaqueTypeMetadata2;
  *(&v46 + 1) = v15;
  *&v47 = OpaqueTypeConformance2;
  *(&v47 + 1) = v17;
  swift_getOpaqueTypeMetadata2();
  *&v46 = OpaqueTypeMetadata2;
  *(&v46 + 1) = v15;
  *&v47 = OpaqueTypeConformance2;
  *(&v47 + 1) = v17;
  swift_getOpaqueTypeConformance2();
  *&v46 = GeometryReader.init(content:)();
  *(&v46 + 1) = v18;
  static Alignment.center.getter();
  type metadata accessor for GeometryReader();
  v19 = swift_getWitnessTable();
  View.frame(width:height:alignment:)();

  v58[0] = v59;
  v58[1] = v60;
  v58[2] = v61;
  v58[3] = v62;
  v52 = v59;
  v53 = v60;
  v54 = v61;
  v55 = v62;
  v20 = swift_allocObject();
  *(v20 + 16) = v31;
  *(v20 + 24) = v30;
  *(v20 + 32) = v32;
  *(v20 + 40) = v35;
  v21 = v2[5];
  *(v20 + 112) = v2[4];
  *(v20 + 128) = v21;
  *(v20 + 144) = v2[6];
  *(v20 + 153) = *(v2 + 105);
  v22 = v2[1];
  *(v20 + 48) = *v2;
  *(v20 + 64) = v22;
  v23 = v2[3];
  *(v20 + 80) = v2[2];
  *(v20 + 96) = v23;
  v33(&v46, v2, a1);
  v24 = type metadata accessor for ModifiedContent();
  v42 = v19;
  v43 = MEMORY[0x1E697E040];
  swift_getWitnessTable();
  View.onAppear(perform:)();

  (*(*(v24 - 8) + 8))(v58, v24);
  v38 = v48;
  v39 = v49;
  v40 = v50;
  v41 = v51;
  v36 = v46;
  v37 = v47;
  v25 = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  v26 = *(v25 - 8);
  v27 = *(v26 + 16);
  v27(&v52, &v36, v25);
  v61 = v38;
  v62 = v39;
  v63 = v40;
  v64 = v41;
  v59 = v36;
  v60 = v37;
  v28 = *(v26 + 8);
  v28(&v59, v25);
  v38 = v54;
  v39 = v55;
  v40 = v56;
  v41 = v57;
  v36 = v52;
  v37 = v53;
  v27(a2, &v36, v25);
  v48 = v38;
  v49 = v39;
  v50 = v40;
  v51 = v41;
  v46 = v36;
  v47 = v37;
  return (v28)(&v46, v25);
}

uint64_t closure #1 in MiniPopoverButton.body.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X8>)
{
  v80 = a6;
  v64 = a5;
  v81 = a3;
  v77 = a1;
  v79 = a7;
  v76 = type metadata accessor for PopoverAttachmentAnchor();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = (&v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Button();
  v66 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v59 - v11;
  WitnessTable = swift_getWitnessTable();
  v14 = lazy protocol witness table accessor for type MiniPopoverButtonStyle and conformance MiniPopoverButtonStyle();
  v88 = v10;
  v89 = &type metadata for MiniPopoverButtonStyle;
  v90 = WitnessTable;
  v91 = v14;
  v63 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v71 = OpaqueTypeMetadata2;
  v78 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v82 = &v59 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI23_GeometryActionModifierVySo6CGSizeVAESQ12CoreGraphicsyHCg_GMd);
  v17 = type metadata accessor for ModifiedContent();
  v88 = v10;
  v89 = &type metadata for MiniPopoverButtonStyle;
  v90 = WitnessTable;
  v91 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v69 = OpaqueTypeConformance2;
  v19 = lazy protocol witness table accessor for type _GeometryActionModifier<CGSize> and conformance _GeometryActionModifier<A>();
  v20 = v80;
  v92 = v80;
  v93 = v19;
  v67 = v17;
  v68 = swift_getWitnessTable();
  v88 = OpaqueTypeMetadata2;
  v89 = v17;
  v90 = OpaqueTypeConformance2;
  v91 = v68;
  v73 = swift_getOpaqueTypeMetadata2();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v65 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v70 = &v59 - v23;
  v24 = swift_allocObject();
  v25 = v81;
  *(v24 + 16) = v81;
  *(v24 + 24) = a4;
  v60 = a4;
  v26 = v64;
  *(v24 + 32) = v64;
  *(v24 + 40) = v20;
  v27 = a2[5];
  *(v24 + 112) = a2[4];
  *(v24 + 128) = v27;
  *(v24 + 144) = a2[6];
  *(v24 + 153) = *(a2 + 105);
  v28 = a2[1];
  *(v24 + 48) = *a2;
  *(v24 + 64) = v28;
  v29 = a2[3];
  *(v24 + 80) = a2[2];
  *(v24 + 96) = v29;
  v83 = v25;
  v84 = a4;
  v85 = v26;
  v86 = v20;
  v87 = a2;
  v88 = v25;
  v89 = a4;
  v90 = v26;
  v91 = v20;
  v30 = type metadata accessor for MiniPopoverButton();
  v31 = *(v30 - 1);
  v61 = *(v31 + 16);
  v62 = v31 + 16;
  v61(&v88, a2, v30);
  Button.init(action:label:)();
  View.buttonStyle<A>(_:)();
  (*(v66 + 8))(v12, v10);
  v32 = MiniPopoverButton.effectivePopoverBinding.getter(v30);
  v34 = v33;
  LODWORD(v66) = v35;
  v36 = static Anchor.Source<A>.bounds.getter();
  v37 = v74;
  *v74 = v36;
  v38 = v75;
  v39 = v76;
  (*(v75 + 104))(v37, *MEMORY[0x1E697C8C0], v76);
  MiniPopoverButton.knownPopoverSize.getter();
  v42 = MiniPopoverButton.arrowEdge(proxy:knownPopoverSize:)(v77, v41, v41, v40 & 1);
  v43 = swift_allocObject();
  v44 = v60;
  *(v43 + 16) = v81;
  *(v43 + 24) = v44;
  v45 = v80;
  *(v43 + 32) = v26;
  *(v43 + 40) = v45;
  v46 = a2[5];
  *(v43 + 112) = a2[4];
  *(v43 + 128) = v46;
  *(v43 + 144) = a2[6];
  *(v43 + 153) = *(a2 + 105);
  v47 = a2[1];
  *(v43 + 48) = *a2;
  *(v43 + 64) = v47;
  v48 = a2[3];
  *(v43 + 80) = a2[2];
  *(v43 + 96) = v48;
  v61(&v88, a2, v30);
  swift_checkMetadataState();
  v49 = v65;
  v50 = v42;
  v51 = v71;
  v52 = v82;
  View.popover<A>(isPresented:attachmentAnchor:arrowEdge:content:)(v32, v34, v66 & 1, v37, v50);

  (*(v38 + 8))(v37, v39);
  (*(v78 + 8))(v52, v51);
  v53 = v72;
  v54 = *(v72 + 16);
  v55 = v70;
  v56 = v73;
  v54(v70, v49, v73);
  v57 = *(v53 + 8);
  v57(v49, v56);
  v54(v79, v55, v56);
  return (v57)(v55, v56);
}

uint64_t closure #1 in closure #1 in MiniPopoverButton.body.getter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v11 = v2;
  v7 = v2;
  v8 = v1;
  v9 = v3;
  outlined init with copy of Transaction(&v11, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  MEMORY[0x1DA6CA790](&v10);
  v5[0] = v2;
  v5[1] = v1;
  v6 = v3;
  Binding.wrappedValue.setter();
  outlined destroy of Transaction(&v11);
}

uint64_t closure #2 in closure #1 in MiniPopoverButton.body.getter@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = (MEMORY[0x1EEE9AC00])();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v14 - v9;
  (*(v8 + 88))();
  v11 = *(v4 + 16);
  v11(v10, v7, a1);
  v12 = *(v4 + 8);
  v12(v7, a1);
  v11(a2, v10, a1);
  return (v12)(v10, a1);
}

uint64_t closure #3 in closure #1 in MiniPopoverButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v34 = a4;
  v33 = a2;
  v36 = a6;
  v35 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI23_GeometryActionModifierVySo6CGSizeVAESQ12CoreGraphicsyHCg_GMd);
  v11 = type metadata accessor for ModifiedContent();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - v17;
  (*(a1 + 104))(v16);
  type metadata accessor for CGSize(0);
  v20 = v19;
  v21 = swift_allocObject();
  v22 = v33;
  *(v21 + 16) = v33;
  *(v21 + 24) = a3;
  v23 = v34;
  *(v21 + 32) = v34;
  *(v21 + 40) = a5;
  v24 = *(a1 + 80);
  *(v21 + 112) = *(a1 + 64);
  *(v21 + 128) = v24;
  *(v21 + 144) = *(a1 + 96);
  *(v21 + 153) = *(a1 + 105);
  v25 = *(a1 + 16);
  *(v21 + 48) = *a1;
  *(v21 + 64) = v25;
  v26 = *(a1 + 48);
  *(v21 + 80) = *(a1 + 32);
  *(v21 + 96) = v26;
  v39[0] = v22;
  v39[1] = a3;
  v39[2] = v23;
  v39[3] = a5;
  v27 = type metadata accessor for MiniPopoverButton();
  (*(*(v27 - 8) + 16))(v39, a1, v27);
  lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, 255, type metadata accessor for CGSize);
  View.onGeometryChange<A>(for:of:action:)(v20, closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in SegmentedGroup.body.getter, 0, partial apply for closure #1 in closure #3 in closure #1 in MiniPopoverButton.body.getter, v21, a3, v20, a5);

  (*(v35 + 8))(v10, a3);
  v28 = lazy protocol witness table accessor for type _GeometryActionModifier<CGSize> and conformance _GeometryActionModifier<A>();
  v37 = a5;
  v38 = v28;
  swift_getWitnessTable();
  v29 = *(v12 + 16);
  v29(v18, v14, v11);
  v30 = *(v12 + 8);
  v30(v14, v11);
  v29(v36, v18, v11);
  return (v30)(v18, v11);
}

uint64_t closure #1 in closure #3 in closure #1 in MiniPopoverButton.body.getter()
{
  type metadata accessor for MiniPopoverButton();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo6CGSizeVSgGMd);
  return State.wrappedValue.setter();
}

void closure #2 in MiniPopoverButton.body.getter(void (**a1)(void), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23 = v8;
  *(&v23 + 1) = v9;
  *&v24 = v10;
  *(&v24 + 1) = v11;
  type metadata accessor for MiniPopoverButton();
  MiniPopoverButton.knownPopoverSize.getter();
  if (v12)
  {
    type metadata accessor for SecureHostingController();
    a1[13]();
    v13 = specialized SecureHostingController.__allocating_init(rootView:)(v7);
    (*(v5 + 8))(v7, a3);
    v14 = [v13 view];
    if (v14)
    {
      v15 = v14;
      [v14 intrinsicContentSize];
      v17 = v16;
      v19 = v18;

      v20 = *(a1 + 1);
      v23 = *a1;
      v24 = v20;
      v21[1] = v17;
      v21[2] = v19;
      v22 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo6CGSizeVSgGMd);
      State.wrappedValue.setter();
    }

    else
    {
      __break(1u);
    }
  }
}

void outlined consume of Environment<MiniMenuController<MiniMenuPalette>?>.Content(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type MiniPopoverButtonStyle and conformance MiniPopoverButtonStyle()
{
  result = lazy protocol witness table cache variable for type MiniPopoverButtonStyle and conformance MiniPopoverButtonStyle;
  if (!lazy protocol witness table cache variable for type MiniPopoverButtonStyle and conformance MiniPopoverButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MiniPopoverButtonStyle and conformance MiniPopoverButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _GeometryActionModifier<CGSize> and conformance _GeometryActionModifier<A>()
{
  result = lazy protocol witness table cache variable for type _GeometryActionModifier<CGSize> and conformance _GeometryActionModifier<A>;
  if (!lazy protocol witness table cache variable for type _GeometryActionModifier<CGSize> and conformance _GeometryActionModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI23_GeometryActionModifierVySo6CGSizeVAESQ12CoreGraphicsyHCg_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GeometryActionModifier<CGSize> and conformance _GeometryActionModifier<A>);
  }

  return result;
}

uint64_t specialized MiniPopoverButton.popoverState.getter()
{
  result = *(v0 + 56);
  if (!result)
  {
    type metadata accessor for MiniPopoverState();
    lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type MiniPopoverState and conformance MiniPopoverState, v2, type metadata accessor for MiniPopoverState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{

  outlined consume of Environment<MiniMenuController<MiniMenuPalette>?>.Content(*(v0 + 120), *(v0 + 128));

  return MEMORY[0x1EEE6BDD0](v0, 169, 7);
}

uint64_t objectdestroy_26Tm()
{
  swift_unknownObjectRelease();

  outlined consume of Environment<MiniMenuController<MiniMenuPalette>?>.Content(*(v0 + 136), *(v0 + 144));

  return MEMORY[0x1EEE6BDD0](v0, 185, 7);
}

uint64_t partial apply for closure #2 in MiniPopoverButton.effectivePopoverBinding.getter()
{
  type metadata accessor for MiniPopoverButton();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  return Binding.wrappedValue.setter();
}

uint64_t lazy protocol witness table accessor for type CGSize and conformance CGSize(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id PaperDocumentThumbnailView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

NSString *one-time initialization function for PaperKitPDFThumbnailViewDidSelectPageNotification()
{
  result = MEMORY[0x1DA6CCED0](0xD000000000000031, 0x80000001D408A040);
  PaperKitPDFThumbnailViewDidSelectPageNotification = result;
  return result;
}

NSNotificationName PaperKitPDFThumbnailViewDidSelectPageNotification.getter()
{
  if (one-time initialization token for PaperKitPDFThumbnailViewDidSelectPageNotification != -1)
  {
    swift_once();
  }

  v1 = PaperKitPDFThumbnailViewDidSelectPageNotification;

  return v1;
}

void key path setter for PaperDocumentThumbnailView.documentView : PaperDocumentThumbnailView()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  PaperDocumentThumbnailView.documentView.didset();
}

void PaperDocumentThumbnailView.documentView.didset()
{
  v1 = OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  v3 = *(v0 + v1);
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
    v6 = v4;
    swift_beginAccess();
    v7 = *&v6[v5];
    v8 = v3;
  }

  else
  {
    v9 = v3;
    v7 = 0;
  }

  [v3 setPDFView_];

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    swift_unknownObjectWeakAssign();
  }

  PaperDocumentThumbnailView.allowsDocumentStructureEditingChanged()();
}

void PaperDocumentThumbnailView.documentView.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  PaperDocumentThumbnailView.documentView.didset();
}

void (*PaperDocumentThumbnailView.documentView.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_documentView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return PaperDocumentThumbnailView.documentView.modify;
}

void PaperDocumentThumbnailView.documentView.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    PaperDocumentThumbnailView.documentView.didset();
  }

  free(v3);
}

Swift::Int PaperDocumentThumbnailView.ThumbnailLayout.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v1);
  return Hasher._finalize()();
}

uint64_t PaperDocumentThumbnailView.thumbnailLayout.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_thumbnailLayout;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

id PaperDocumentThumbnailView.thumbnailLayout.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_thumbnailLayout;
  swift_beginAccess();
  *(v1 + v3) = v2;
  return [*(v1 + OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView) setLayoutMode_];
}

void (*PaperDocumentThumbnailView.thumbnailLayout.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_thumbnailLayout;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return PaperDocumentThumbnailView.thumbnailLayout.modify;
}

void PaperDocumentThumbnailView.thumbnailLayout.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v3[3] + OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView) setLayoutMode_];
  }

  free(v3);
}

void (*PaperDocumentThumbnailView.contentInset.modify(uint64_t *a1))(double **a1)
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
  v5 = OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  [*(v1 + v5) contentInset];
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;
  return PaperDocumentThumbnailView.contentInset.modify;
}

void PaperDocumentThumbnailView.contentInset.modify(double **a1)
{
  v1 = *a1;
  [*(*(*a1 + 4) + *(*a1 + 5)) setContentInset_];

  free(v1);
}

id PaperDocumentThumbnailView.thumbnailSize.setter()
{
  result = [*(v0 + OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView) setThumbnailSize_];
  *(v0 + OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_dynamicThumbnailSizing) = 0;
  return result;
}

id (*PaperDocumentThumbnailView.thumbnailSize.modify(void *a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView;
  a1[2] = v1;
  a1[3] = v3;
  [*(v1 + v3) thumbnailSize];
  *a1 = v4;
  a1[1] = v5;
  return PaperDocumentThumbnailView.thumbnailSize.modify;
}

id PaperDocumentThumbnailView.thumbnailSize.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = [*(v1 + *(a1 + 24)) setThumbnailSize_];
  *(v1 + OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_dynamicThumbnailSizing) = 0;
  return result;
}

void PaperDocumentThumbnailView.updateThumbnailSize()()
{
  if (v0[OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_dynamicThumbnailSizing] == 1)
  {
    v1 = OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_thumbnailLayout;
    swift_beginAccess();
    v2 = v0[v1];
    v3 = OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView;
    v4 = *&v0[OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView];
    if (v2 == 1)
    {
      [v0 frame];
      CGRectGetWidth(v14);
      [v4 setThumbnailSize_];

      v5 = *&v0[v3];
      [v5 thumbnailSize];
      v7 = v6 > 100.0;
    }

    else
    {
      v8 = [v0 traitCollection];
      PaperDocumentThumbnailView.defaultThumbnailWidth(for:)(v8);
      v9 = PaperDocumentThumbnailView.defaultThumbnailViewCellSize(for:)();
      v11 = v10;

      [v4 setThumbnailSize_];
      v5 = *&v0[v3];
      v12 = [v0 traitCollection];
      v13 = [v12 horizontalSizeClass];

      v7 = v13 == 2;
    }

    [v5 setLargeThumbnails_];
  }
}

double PaperDocumentThumbnailView.defaultThumbnailWidth(for:)(void *a1)
{
  if ([a1 horizontalSizeClass] == 2)
  {
    if (one-time initialization token for largeThumbnailViewWidth != -1)
    {
      swift_once();
    }

    v3 = &static UIConstants.largeThumbnailViewWidth;
  }

  else
  {
    if (one-time initialization token for defaultThumbnailViewWidth != -1)
    {
      swift_once();
    }

    v3 = &static UIConstants.defaultThumbnailViewWidth;
  }

  v4 = *v3;
  v5 = [objc_opt_self() defaultMetrics];
  [v5 scaledValueForValue:a1 compatibleWithTraitCollection:v4];
  v7 = v6;

  v8 = [v1 window];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 screen];

    [v10 scale];
    v12 = v11;
  }

  else
  {
    v12 = 1.0;
  }

  v13 = (v4 + (v7 - v4) * 0.5) * v12;
  v14 = floor(v13);
  v15 = v13 - v14;
  v16 = ceil(v13);
  if (v15 < 0.49)
  {
    v16 = v14;
  }

  return v16 / v12;
}

double PaperDocumentThumbnailView.defaultThumbnailViewCellSize(for:)()
{
  _UISolariumEnabled();
  v1 = [v0 window];
  if (v1)
  {
    v3 = v1;
    v4 = [v1 screen];

    [v4 scale];
  }

  return UnknownCanvasElementView.flags.modify(v1, v2);
}

char *PaperDocumentThumbnailView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v39[1] = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v39 - v10;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_thumbnailLayout] = 1;
  v12 = [objc_allocWithZone(type metadata accessor for PaperDocumentThumbnailView.ThumbnailDelegate()) init];
  v13 = OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_thumbnailDelegate;
  *&v4[OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_thumbnailDelegate] = v12;
  v14 = [objc_allocWithZone(type metadata accessor for PPKPDFThumbnailView()) initWithFrame_];
  v15 = OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView;
  *&v4[OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView] = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v4[v15] setAllowsPageReordering_];
  [*&v4[v15] setThumbnailContextMenuDelegate_];
  [*&v4[v15] setThumbnailDataSourceDelegate_];
  v4[OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_dynamicThumbnailSizing] = 1;
  v16 = type metadata accessor for PaperDocumentThumbnailView();
  v40.receiver = v4;
  v40.super_class = v16;
  v17 = objc_msgSendSuper2(&v40, sel_initWithFrame_, a1, a2, a3, a4);
  PaperDocumentThumbnailView.updateThumbnailSize()();
  swift_unknownObjectWeakAssign();
  v18 = OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView;
  [v17 addSubview_];
  v19 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D405B630;
  v21 = [*&v17[v18] leadingAnchor];
  v22 = [v17 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v20 + 32) = v23;
  v24 = [*&v17[v18] trailingAnchor];
  v25 = [v17 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v20 + 40) = v26;
  v27 = [*&v17[v18] topAnchor];
  v28 = [v17 topAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v20 + 48) = v29;
  v30 = [*&v17[v18] bottomAnchor];
  v31 = [v17 bottomAnchor];

  v32 = [v30 constraintEqualToAnchor_];
  *(v20 + 56) = v32;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 activateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1D4058CF0;
  v35 = type metadata accessor for UITraitHorizontalSizeClass();
  v36 = MEMORY[0x1E69DC130];
  *(v34 + 32) = v35;
  *(v34 + 40) = v36;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  if (_UISolariumEnabled())
  {
    [v17 setClipsToBounds_];
    static _UICornerMaskingConfiguration.fixed(_:)();
    v37 = type metadata accessor for _UICornerMaskingConfiguration();
    (*(*(v37 - 8) + 56))(v11, 0, 1, v37);
    UIView.cornerMaskingConfiguration.setter();
  }

  return v17;
}

Swift::Void __swiftcall PaperDocumentThumbnailView.allowsDocumentStructureEditingChanged()()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v9 = v1;
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v3 = Strong;
  if (*(Strong + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__allowsDocumentStructureEditing) != 1)
  {
    v10 = v1;

    goto LABEL_6;
  }

  v4 = *(Strong + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument);
  v5 = v1;
  v6 = v4;
  v7 = [v6 allowsDocumentAssembly];

  v8 = v7;
LABEL_7:
  [v1 setAllowsPageReordering_];
}

uint64_t PaperDocumentThumbnailView.ThumbnailDelegate.insertFile(at:at:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRStableAsset();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - v18;
  (*(v9 + 16))(v11, a1, v8, v17);
  URL.pathExtension.getter();
  CRStableAsset.init(url:extension:)();
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  (*(v13 + 16))(v15, v19, v12);
  v21 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = v30;
  *(v23 + 4) = v30;
  (*(v13 + 32))(&v23[v21], v15, v12);
  v25 = v32;
  *&v23[v22] = v31;
  v26 = &v23[(v22 + 15) & 0xFFFFFFFFFFFFFFF8];
  v27 = v33;
  *v26 = v25;
  *(v26 + 1) = v27;
  v28 = v24;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in PaperDocumentThumbnailView.ThumbnailDelegate.insertFile(at:at:completionHandler:), v23);

  return (*(v13 + 8))(v19, v12);
}

uint64_t closure #1 in PaperDocumentThumbnailView.ThumbnailDelegate.insertFile(at:at:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v9 = type metadata accessor for URL();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperDocumentThumbnailView.ThumbnailDelegate.insertFile(at:at:completionHandler:), 0, 0);
}

uint64_t closure #1 in PaperDocumentThumbnailView.ThumbnailDelegate.insertFile(at:at:completionHandler:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    *(v0 + 112) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](closure #1 in PaperDocumentThumbnailView.ThumbnailDelegate.insertFile(at:at:completionHandler:), v3, v2);
  }

  else
  {
    (*(v0 + 64))();

    v4 = *(v0 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 104);

  swift_beginAccess();
  *(v0 + 120) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperDocumentThumbnailView.ThumbnailDelegate.insertFile(at:at:completionHandler:), 0, 0);
}

{
  if (*(v0 + 120))
  {
    CRStableAsset.url.getter();
    v1 = swift_task_alloc();
    *(v0 + 128) = v1;
    *v1 = v0;
    v1[1] = closure #1 in PaperDocumentThumbnailView.ThumbnailDelegate.insertFile(at:at:completionHandler:);
    v2 = *(v0 + 96);
    v3 = *(v0 + 56);

    return PaperDocumentView.insertFile(at:at:)(v2, v3);
  }

  else
  {
    (*(v0 + 64))(0);

    v5 = *(v0 + 8);

    return v5();
  }
}

{
  (*(v0 + 64))(*(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in PaperDocumentThumbnailView.ThumbnailDelegate.insertFile(at:at:completionHandler:)(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 136) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperDocumentThumbnailView.ThumbnailDelegate.insertFile(at:at:completionHandler:), 0, 0);
}

uint64_t PaperDocumentThumbnailView.ThumbnailDelegate.menuElements(for:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v7 = a2(a1);

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id PaperDocumentThumbnailView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaperDocumentThumbnailView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type PaperDocumentThumbnailView.ThumbnailLayout and conformance PaperDocumentThumbnailView.ThumbnailLayout()
{
  result = lazy protocol witness table cache variable for type PaperDocumentThumbnailView.ThumbnailLayout and conformance PaperDocumentThumbnailView.ThumbnailLayout;
  if (!lazy protocol witness table cache variable for type PaperDocumentThumbnailView.ThumbnailLayout and conformance PaperDocumentThumbnailView.ThumbnailLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PaperDocumentThumbnailView.ThumbnailLayout and conformance PaperDocumentThumbnailView.ThumbnailLayout);
  }

  return result;
}

uint64_t partial apply for closure #1 in PaperDocumentThumbnailView.ThumbnailDelegate.insertFile(at:at:completionHandler:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CRStableAsset() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v7);
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in PaperDocumentThumbnailView.ThumbnailDelegate.insertFile(at:at:completionHandler:)(a1, v9, v10, v12, v1 + v6, v11, v13, v14);
}

uint64_t FormFillingView.unorderedFormFields.getter()
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathV_8PaperKit20AnyCanvasElementViewCtMd);
  v1 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v3 = &v17 - v2;
  v4 = OBJC_IVAR____TtC8PaperKit15FormFillingView__formFields;
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (v5 >> 62)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v18 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v8 = 0;
    v7 = v18;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA6CE0C0](v8, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = *(v17 + 48);
      (*((*MEMORY[0x1E69E7D40] & *v9) + 0xE8))();
      *&v3[v11] = v10;
      v18 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1);
        v7 = v18;
      }

      ++v8;
      *(v7 + 16) = v13 + 1;
      outlined init with take of (CRKeyPath, AnyCanvasElementView)(v3, v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v13);
    }

    while (v6 != v8);
  }

  if (*(v7 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence9CRKeyPathV8PaperKit20AnyCanvasElementViewCGMd);
    v14 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  v18 = v14;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v15, 1, &v18);

  return v18;
}

uint64_t FormFillingView.formFields.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x440))();

    v1 = [v2 effectiveUserInterfaceLayoutDirection];
    LOBYTE(v1) = v1 == 0;
  }

  else
  {
  }

  v5 = specialized Array._copyToContiguousArray()(v3);
  specialized MutableCollection<>.sort(by:)(&v5, v1);

  return v5;
}

void *FormFillingView.activeWidget.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit15FormFillingView_widgets;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6CE0C0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 uiControl];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UITextView);
      if (swift_dynamicCast() || (v9 = [v6 uiControl], _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView), (swift_dynamicCast() & 1) != 0))
      {

        return v6;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_14:

  return 0;
}

void FormFillingView.init(frame:canvas:)(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  swift_unknownObjectWeakInit();
  v12 = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC8PaperKit15FormFillingView__formFields] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC8PaperKit15FormFillingView_formFieldGroups] = v12;
  *&v5[OBJC_IVAR____TtC8PaperKit15FormFillingView_widgets] = v12;
  *&v5[OBJC_IVAR____TtC8PaperKit15FormFillingView_tapGesture] = 0;
  *&v5[OBJC_IVAR____TtC8PaperKit15FormFillingView_doubleTapGesture] = 0;
  v13 = &lazy cache variable for type metadata for PKMathRecognitionToken;
  *&v5[OBJC_IVAR____TtC8PaperKit15FormFillingView_editMenuInteraction] = 0;
  *&v5[OBJC_IVAR____TtC8PaperKit15FormFillingView_vkcFormRegions] = v12;
  *&v5[OBJC_IVAR____TtC8PaperKit15FormFillingView_vkcAnalysis] = 0;
  v14 = [objc_opt_self() preferredInsertionOrder];
  type metadata accessor for AFTextContentType(0);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = *(v15 + 16);
  if (v16)
  {
    v42 = v12;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
    v17 = 32;
    v18 = v12;
    do
    {
      v19 = *(v15 + v17);
      FormContentType.init(_:)(v19);
      v20 = specialized FormContentType.uiTextContentType.getter();

      v42 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v18 = v42;
      }

      *(v18 + 16) = v22 + 1;
      *(v18 + 8 * v22 + 32) = v20;
      v17 += 8;
      --v16;
    }

    while (v16);

    v13 = &lazy cache variable for type metadata for PKMathRecognitionToken;
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  *&v6[OBJC_IVAR____TtC8PaperKit15FormFillingView_preferredTextContentTypes] = v18;
  v23 = OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics;
  type metadata accessor for FormPageAnalytics();
  swift_allocObject();
  *&v6[v23] = FormPageAnalytics.init()();
  *&v6[OBJC_IVAR____TtC8PaperKit15FormFillingView_signatureFieldsSigned] = 0;
  swift_unknownObjectWeakAssign();
  v41.receiver = v6;
  v41.super_class = type metadata accessor for FormFillingView();
  v24 = objc_msgSendSuper2(&v41, sel_initWithFrame_, a2, a3, a4, a5);
  *(*&v24[OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics] + 128) = &protocol witness table for FormFillingView;
  swift_unknownObjectWeakAssign();
  v25 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v26 = v24;
  v27 = [v25 initWithTarget:v26 action:sel_tap_];
  v28 = OBJC_IVAR____TtC8PaperKit15FormFillingView_tapGesture;
  v29 = *&v26[OBJC_IVAR____TtC8PaperKit15FormFillingView_tapGesture];
  *&v26[OBJC_IVAR____TtC8PaperKit15FormFillingView_tapGesture] = v27;
  v30 = v27;

  if (!v30)
  {
    __break(1u);
    goto LABEL_16;
  }

  v31 = v26;
  [v31 addGestureRecognizer_];

  v32 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v31 action:sel_doubleTap_];
  v33 = OBJC_IVAR____TtC8PaperKit15FormFillingView_doubleTapGesture;
  v34 = *&v31[OBJC_IVAR____TtC8PaperKit15FormFillingView_doubleTapGesture];
  *&v31[OBJC_IVAR____TtC8PaperKit15FormFillingView_doubleTapGesture] = v32;
  v35 = v32;

  if (!v35)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v35 setNumberOfTapsRequired_];

  v36 = *&v26[v28];
  if (!v36)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!*&v31[v33])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v36 requireGestureRecognizerToFail_];
  if (!*&v31[v33])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v31 addGestureRecognizer_];
  v37 = [objc_allocWithZone(MEMORY[0x1E69DC9E0]) initWithDelegate_];
  v38 = v13[402];
  v39 = *&v31[v38];
  *&v31[v38] = v37;
  v40 = v37;

  if (v40)
  {
    [v31 addInteraction_];

    (*((*MEMORY[0x1E69E7D40] & *a1) + 0x3C8))(&v42);
    [v31 setHidden_];

    return;
  }

LABEL_20:
  __break(1u);
}

Swift::Void __swiftcall FormFillingView.tap(_:)(UITapGestureRecognizer *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v65 = Strong;
  [(UITapGestureRecognizer *)a1 locationInView:v1];
  v6 = v5;
  v8 = v7;
  v9 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v65) + 0x3C8))(v66);
  v10 = LOBYTE(v66[0]);
  v11 = (*((*v9 & *v65) + 0x440))();
  v13 = v12;
  ObjectType = swift_getObjectType();
  if (v10 != 1)
  {
    (*(v13 + 240))(ObjectType, v13);

    FormFillingView.clearSelection()();
    *(*&v1[OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics] + 19) = 49;
    return;
  }

  v15 = (*(v13 + 72))(ObjectType, v13);

  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_39:

    v35 = FormFillingView.widget(at:)(v6, v8);
    if (v35)
    {
      v36 = v35;
      AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
      [v36 addControl];

LABEL_48:

      return;
    }

    v37 = *(v65 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (v37)
    {
      v38 = v37 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
      if (*(*v38 + 16) || (!*(*(v38 + 8) + 16) ? (v39 = *(v38 + 24) == 0) : (v39 = 0), !v39))
      {
        (*((*MEMORY[0x1E69E7D40] & *v65) + 0x750))(MEMORY[0x1E69E7CC0], 0, 1, v6, v8);
        goto LABEL_48;
      }

      v40 = FormFillingView.activeWidget.getter();
      if (v40)
      {
        v41 = v40;
        v42 = [v40 page];
        if (v42)
        {
          v43 = v42;
          v44 = [v42 view];

          if (v44)
          {
            [v44 removeControlForAnnotation_];
          }
        }

        (*((*MEMORY[0x1E69E7D40] & *v65) + 0x750))(MEMORY[0x1E69E7CC0], 0, 1, v6, v8);

        goto LABEL_48;
      }

      [v2 bounds];
      v49 = OBJC_IVAR____TtC8PaperKit15FormFillingView_editMenuInteraction;
      v50 = *(v2 + OBJC_IVAR____TtC8PaperKit15FormFillingView_editMenuInteraction);
      if (v50)
      {
        v51 = v45;
        v52 = v46;
        v53 = v47;
        v54 = v48;
        [v50 locationInView_];
        v71.x = v55;
        v71.y = v56;
        v74.origin.x = v51;
        v74.origin.y = v52;
        v74.size.width = v53;
        v74.size.height = v54;
        v57 = CGRectContainsPoint(v74, v71);
        v58 = AnyCanvas.formFieldElements.getter();
        if (v58 >> 62)
        {
          v64 = __CocoaSet.count.getter();

          if (!v64)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v59)
          {
            goto LABEL_48;
          }
        }

        if (v57)
        {
          goto LABEL_48;
        }

        [(UITapGestureRecognizer *)a1 locationInView:v2];
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIEditMenuConfiguration);
        v67 = 0;
        memset(v66, 0, sizeof(v66));
        v60 = UIEditMenuConfiguration.init(identifier:sourcePoint:)();
        v61 = *(v2 + v49);
        if (v61)
        {
          v62 = v60;
          v63 = v61;
          [v63 presentEditMenuWithConfiguration_];

          goto LABEL_48;
        }

LABEL_67:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_67;
  }

LABEL_38:
  v16 = __CocoaSet.count.getter();
  if (!v16)
  {
    goto LABEL_39;
  }

LABEL_5:
  v17 = 0;
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1DA6CE0C0](v17, v15);
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v18 = *(v15 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    [v18 frame];
    v69.x = v6;
    v69.y = v8;
    if (CGRectContainsPoint(v72, v69))
    {
      break;
    }

    ++v17;
    if (v20 == v16)
    {
      goto LABEL_39;
    }
  }

  v21 = FormFillingView.activeWidget.getter();
  if (v21)
  {
    v22 = v21;
    v23 = [v21 page];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 view];

      if (v25)
      {
        [v25 removeControlForAnnotation_];
      }
    }
  }

  v26 = OBJC_IVAR____TtC8PaperKit15FormFillingView__formFields;
  swift_beginAccess();
  v2 = *(v2 + v26);
  if (v2 >> 62)
  {
    v15 = __CocoaSet.count.getter();
  }

  else
  {
    v15 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1 = 0;
  while (v15 != a1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1DA6CE0C0](a1, v2);
    }

    else
    {
      if (a1 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v27 = *(v2 + 8 * a1 + 32);
    }

    v28 = v27;
    if (__OFADD__(a1, 1))
    {
      goto LABEL_36;
    }

    [v27 frame];
    v70.x = v6;
    v70.y = v8;
    v29 = CGRectContainsPoint(v73, v70);

    a1 = (a1 + 1);
    if (v29)
    {

      [v19 becomeFirstResponder];

      goto LABEL_32;
    }
  }

  v30 = v19;
  v31 = specialized CanvasMembers.init(_:)(v30);
  AnyCanvas.selection.setter(v31, v33, v34, v32 & 1);

LABEL_32:
}

Swift::Void __swiftcall FormFillingView.clearSelection()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
  }

  v2 = FormFillingView.activeWidget.getter();
  if (v2)
  {
    v6 = v2;
    v3 = [v2 page];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 view];

      if (v5)
      {
        [v5 removeControlForAnnotation_];
      }
    }
  }
}

Swift::Void __swiftcall FormFillingView.doubleTap(_:)(UITapGestureRecognizer *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v61 = Strong;
  [(UITapGestureRecognizer *)a1 locationInView:v2];
  x = v5;
  y = v7;
  v9 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v61) + 0x3C8))(&v62);
  if (LOBYTE(v62.a) != 1)
  {
    v10 = (*((*v9 & *v61) + 0x440))();
    v12 = v11;
    ObjectType = swift_getObjectType();
    (*(v12 + 240))(ObjectType, v12);

    *(*&v2[OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics] + 19) = 50;
  }

  v14 = AnyCanvas.formFieldElements.getter();
  v15 = v14;
  if (v14 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v17 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1DA6CE0C0](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      [v18 frame];
      v64.x = x;
      v64.y = y;
      if (CGRectContainsPoint(v65, v64))
      {

        [v19 becomeFirstResponder];

        goto LABEL_21;
      }

      ++v17;
      if (v20 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  v21 = FormFillingView.widget(at:)(x, y);
  if (!v21)
  {
    v23 = *&v2[OBJC_IVAR____TtC8PaperKit15FormFillingView_vkcAnalysis];
    height = 25.0;
    if (v23)
    {
      v25 = v23;
      if ([v25 respondsToSelector_])
      {
        [v2 frame];
        v27 = v26;
        v29 = v28;
        v30 = x / v26;
        v31 = y / v28;
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for VKCFormRegion);

        isa = Array._bridgeToObjectiveC()().super.isa;

        v33 = [v25 proposedFormRegionForPoint:isa existingFields:v30 formSize:{v31, v27, v29}];

        CGAffineTransformMakeScale(&v62, v27, v29);
        if (v33)
        {
          v59 = *&v62.c;
          v60 = *&v62.a;
          tx = v62.tx;
          ty = v62.ty;
          v36 = [v33 quad];
          if (!v36)
          {
            goto LABEL_37;
          }

          v37 = v36;
          [v36 boundingBox];
          v39 = v38;
          v41 = v40;
          v43 = v42;
          v45 = v44;

          *&v62.a = v60;
          *&v62.c = v59;
          v62.tx = tx;
          v62.ty = ty;
          v66.origin.x = v39;
          v66.origin.y = v41;
          v66.size.width = v43;
          v66.size.height = v45;
          v67 = CGRectApplyAffineTransform(v66, &v62);
          x = v67.origin.x;
          y = v67.origin.y;
          width = v67.size.width;
          height = v67.size.height;

          v47 = width;
LABEL_31:
          v48 = FormFillingView.addTextBox(at:analytics_documentType:)(5, x, y, v47, height);
          v49 = v61;
          if (v48)
          {
            v50 = v48;
            v51 = specialized CanvasMembers.init(_:)(v50);
            AnyCanvas.selection.setter(v51, v53, v54, v52 & 1);

            v49 = v61;
          }

          v55 = *&v2[OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics];
          v56 = *(v55 + 40);
          v57 = __OFADD__(v56, 1);
          v58 = v56 + 1;
          if (!v57)
          {
            *(v55 + 40) = v58;
            return;
          }

          __break(1u);
LABEL_37:
          __break(1u);
          return;
        }
      }
    }

    v47 = 150.0;
    goto LABEL_31;
  }

  v22 = v21;
  [v21 addControl];

LABEL_21:
}

Swift::Void __swiftcall FormFillingView.updateUI()()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x3C8))(v35);
    v4 = LOBYTE(v35[0]);
    if (([v1 isHidden] & 1) == 0 && v4 != 1)
    {
      AnyCanvas.selectedCanvasElementIds.setter(MEMORY[0x1E69E7CC0]);
    }

    [v1 setHidden_];
    [v1 bounds];
    [v1 setFrame_];
    v5 = AnyCanvas.formFieldElements.getter();
    v6 = v5;
    v32 = v4;
    v31 = v3;
    if (v5 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1DA6CE0C0](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        [v9 setNeedsLayout];

        ++v8;
        if (v11 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:

    v12 = OBJC_IVAR____TtC8PaperKit15FormFillingView_widgets;
    swift_beginAccess();
    v13 = *&v1[v12];
    if (v13 >> 62)
    {
      goto LABEL_48;
    }

    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_20:

    v15 = v32;
    if (v14)
    {
      v16 = 0;
      v17 = v13 & 0xC000000000000001;
      v18 = v13 & 0xFFFFFFFFFFFFFF8;
      v33 = v13 & 0xFFFFFFFFFFFFFF8;
      v34 = v13;
      while (1)
      {
        if (v17)
        {
          v20 = MEMORY[0x1DA6CE0C0](v16, v13);
        }

        else
        {
          if (v16 >= *(v18 + 16))
          {
            goto LABEL_47;
          }

          v20 = *(v13 + 8 * v16 + 32);
        }

        v21 = v20;
        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          v14 = __CocoaSet.count.getter();
          goto LABEL_20;
        }

        if (v15 != 1)
        {
          break;
        }

        v23 = v17;
        v24 = v14;
        if (one-time initialization token for formFieldBackgroundColor != -1)
        {
          swift_once();
        }

        v25 = static UIConstants.formFieldBackgroundColor;
        v26 = *&v21[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__interactiveBackgroundColor];
        *&v21[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__interactiveBackgroundColor] = static UIConstants.formFieldBackgroundColor;
        v27 = v25;
        if (!v25)
        {
          v17 = v23;
          v18 = v33;
          v13 = v34;
          if (v26)
          {
LABEL_38:
            v19 = 0;
LABEL_42:
            [v21 updateAnnotationEffect];

            v19 = v26;
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        v28 = v27;
        if (!v26)
        {
          v19 = v27;
LABEL_41:
          v14 = v24;
          v17 = v23;
          v18 = v33;
          v13 = v34;
          goto LABEL_42;
        }

        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor);
        v19 = v28;
        v29 = v26;
        v30 = static NSObject.== infix(_:_:)();

        if ((v30 & 1) == 0)
        {
          v15 = v32;
          goto LABEL_41;
        }

        v15 = v32;
        v14 = v24;
        v17 = v23;
        v18 = v33;
        v13 = v34;
LABEL_23:

        ++v16;
        if (v22 == v14)
        {
          goto LABEL_44;
        }
      }

      v26 = *&v20[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__interactiveBackgroundColor];
      *&v20[OBJC_IVAR____TtC8PaperKit26CanvasElementPDFAnnotation__interactiveBackgroundColor] = 0;
      if (v26)
      {
        goto LABEL_38;
      }

LABEL_22:
      v19 = v21;
      goto LABEL_23;
    }

LABEL_44:
  }
}

void __swiftcall FormFillingView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  v4 = v3;
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  v10 = MEMORY[0x1E69E7D40];
  v11 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x468))();
  if (!v11)
  {
    goto LABEL_51;
  }

  v12 = v11;
  if (isa && -[objc_class type](isa, sel_type) == 11 || ((v13 = *((*v10 & *v9) + 0x3C8), v14 = v13(v41), v15 = LOBYTE(v41[0]), (v13)(v41, v14), v16 = LOBYTE(v41[0]), !isa) ? (v17 = 0) : (v17 = -[objc_class PK_isEventFromPencil](isa, sel_PK_isEventFromPencil)), v18 = [v12 selectionInteraction], objc_msgSend(v4, sel_convertPoint_toCoordinateSpace_, v12, x, y), v19 = objc_msgSend(v18, sel_hasStrokesAtLocation_), v18, v19))
  {

    return;
  }

  v20 = FormFillingView.widget(at:)(x, y);
  if (!v20)
  {
    v22 = AnyCanvas.formFieldElements.getter();
    v23 = v22;
    v39 = v12;
    if (v22 >> 62)
    {
LABEL_46:
      v24 = __CocoaSet.count.getter();
      if (v24)
      {
LABEL_16:
        v25 = 0;
        while (1)
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x1DA6CE0C0](v25, v23);
          }

          else
          {
            if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_45;
            }

            v26 = *(v23 + 8 * v25 + 32);
          }

          v21 = v26;
          v27 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          [v26 frame];
          v42.x = x;
          v42.y = y;
          if (CGRectContainsPoint(v44, v42))
          {
            break;
          }

          ++v25;
          if (v27 == v24)
          {
            goto LABEL_47;
          }
        }

        [v21 convertPoint:v4 fromCoordinateSpace:{x, y}];
        v31 = [v21 hitTest:isa withEvent:?];
        if (v31)
        {
          v29 = v31;
          objc_opt_self();
          v32 = swift_dynamicCastObjCClass();
          if (v32)
          {
            v33 = v32;
            [v4 convertPoint:v32 toCoordinateSpace:{x, y}];
            [v33 hitTest:isa withEvent:?];

            goto LABEL_34;
          }
        }

        if (v16 == 3)
        {

          return;
        }

        if (v15 == 1)
        {

          goto LABEL_30;
        }

        v34 = *&v4[OBJC_IVAR____TtC8PaperKit15FormFillingView_vkcAnalysis];
        if (!v34)
        {

          goto LABEL_51;
        }

        v35 = v34;
        v36 = [v35 recognitionConfidence];

        if (v36 == 2)
        {
          goto LABEL_49;
        }

        return;
      }
    }

    else
    {
      v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
        goto LABEL_16;
      }
    }

LABEL_47:

    if (v15 == 1)
    {
      [v4 bounds];
      v43.x = x;
      v43.y = y;
      v37 = CGRectContainsPoint(v45, v43);

      if (v37)
      {
LABEL_49:
        v38 = v4;
      }

      return;
    }

LABEL_51:
    return;
  }

  v21 = v20;
  if (v15 != 1 && v16 != 3)
  {

LABEL_30:
    v30 = v4;
    return;
  }

  if (v17)
  {
    [v20 addControl];
  }

  v28 = [v21 uiControl];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UITextView);
  if (!swift_dynamicCast())
  {

    goto LABEL_30;
  }

  v29 = v40;
  [v4 convertPoint:v40 toCoordinateSpace:{x, y}];
  [v40 hitTest:isa withEvent:?];

LABEL_34:
}

Swift::Bool __swiftcall FormFillingView.hitTestIncludingHiddenFields(_:with:)(CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return Strong;
  }

  v6 = Strong;
  if (isa && [(objc_class *)isa type]== 11)
  {
LABEL_18:

    LOBYTE(Strong) = 0;
    return Strong;
  }

  v7 = FormFillingView.widget(at:)(x, y);
  if (!v7)
  {
    v9 = AnyCanvas.formFieldElements.getter();
    swift_beginAccess();

    specialized Array.append<A>(contentsOf:)(v10);
    if (v9 >> 62)
    {
LABEL_23:
      v11 = __CocoaSet.count.getter();
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    while (v11 != v12)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1DA6CE0C0](v12, v9);
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      [v13 frame];
      v17.x = x;
      v17.y = y;
      v15 = CGRectContainsPoint(v18, v17);

      ++v12;
      if (v15)
      {

        goto LABEL_19;
      }
    }

    goto LABEL_18;
  }

  v8 = v7;

LABEL_19:
  LOBYTE(Strong) = 1;
  return Strong;
}

void *FormFillingView.widget(at:)(CGFloat a1, CGFloat a2)
{
  v5 = OBJC_IVAR____TtC8PaperKit15FormFillingView_widgets;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    goto LABEL_25;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v7)
  {
    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    v10 = v6 & 0xFFFFFFFFFFFFFF8;
    v25 = v6 & 0xC000000000000001;
    v26 = v6;
    do
    {
      if (v9)
      {
        v13 = MEMORY[0x1DA6CE0C0](v8, v6);
      }

      else
      {
        if (v8 >= *(v10 + 16))
        {
          goto LABEL_24;
        }

        v13 = *(v6 + 8 * v8 + 32);
      }

      v14 = v13;
      v15 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v7 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v16 = [v13 page];
      if (v16)
      {
        v12 = v16;
        v17 = [v16 document];
        if (!v17)
        {
          goto LABEL_7;
        }

        v18 = v17;
        v19 = v7;
        v20 = [v12 view];
        if (!v20)
        {
          v11 = v18;
LABEL_6:

          v12 = v11;
          v7 = v19;
          v6 = v26;
LABEL_7:

          goto LABEL_8;
        }

        v11 = v20;
        v21 = [v20 pageViewForPageAtIndex_];
        if (!v21)
        {

          v12 = v18;
          v9 = v25;
          goto LABEL_6;
        }

        v22 = v21;
        [v14 bounds];
        [v11 convertRect:v12 fromPage:?];
        [v22 convertRect:v11 fromCoordinateSpace:?];
        v27.x = a1;
        v27.y = a2;
        v23 = CGRectContainsPoint(v28, v27);

        v7 = v19;
        v9 = v25;
        v6 = v26;
        if (v23)
        {

          return v14;
        }
      }

LABEL_8:

      ++v8;
    }

    while (v15 != v7);
  }

  return 0;
}

Swift::Void __swiftcall FormFillingView.add(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  if (a1._rawValue >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((a1._rawValue & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA6CE0C0](v5, a1._rawValue);
      }

      else
      {
        if (v5 >= *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1._rawValue + v5 + 4);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v2 addSubview_];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v9);
  swift_endAccess();
  FormFillingView.updateUI()();
}

void *FormFillingView.addTextBox(at:analytics_documentType:)(int a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v170 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v226 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v15 = v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v170 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v225 = v170 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v214 = *(v21 - 8);
  v215 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v213 = v170 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v211 = *(v23 - 8);
  v212 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v210 = v170 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v208 = *(v25 - 8);
  v209 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v207 = v170 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v204 = *(v27 - 8);
  v205 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v203 = v170 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v201 = *(v29 - 8);
  v202 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v199 = v170 - v30;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v198);
  v197 = v170 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v196 = v170 - v33;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v195);
  v194 = v170 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v193 = v170 - v36;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v192);
  v223 = v170 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v222 = v170 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v200 = v170 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v228 = (v170 - v43);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v221);
  v190 = (v170 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v45);
  v220 = v170 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v227 = v170 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v232 = v170 - v50;
  v231 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v231);
  v191 = v170 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v217 = v170 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v56 = v170 - v55;
  v57 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v57);
  v206 = v170 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v61 = v170 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v224 = v170 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v229 = *(v64 - 8);
  v230 = v64;
  MEMORY[0x1EEE9AC00](v64);
  v189 = v170 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v68 = v170 - v67;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v184 = result;
  v185 = v13;
  v186 = a1;
  v187 = v15;
  v188 = v5;
  v219 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D405FD70;
  v71 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont);
  v72 = v71;
  specialized static FormFillingView.fontThatFits(frame:)(a2, a3, a4, a5);
  v73 = MEMORY[0x1E69DB688];
  *(inited + 40) = v74;
  v75 = *v73;
  *(inited + 72) = *v73;
  v76 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v77 = v75;
  v78 = [v76 init];
  [v78 setAlignment_];
  v79 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSMutableParagraphStyle);
  *(inited + 80) = v78;
  v80 = *MEMORY[0x1E69DB660];
  *(inited + 104) = v79;
  *(inited + 112) = v80;
  *(inited + 144) = MEMORY[0x1E69E7DE0];
  *(inited + 120) = 0;
  v81 = v80;
  v82 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
  swift_arrayDestroy();
  v83 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v84 = MEMORY[0x1DA6CCED0](0, 0xE000000000000000);
  type metadata accessor for NSAttributedStringKey(0);
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v183 = v82;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v83 initWithString:v84 attributes:isa];

  MEMORY[0x1EEE9AC00](v86);
  v87 = lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  CRAttributedString.init(_:transformAttributes:)();
  swift_storeEnumTagMultiPayload();
  v88 = type metadata accessor for Color(0);
  v89 = *(v88 + 20);
  v90 = type metadata accessor for UnknownValueProperties();
  v91 = v232;
  (*(*(v90 - 8) + 56))(&v232[v89], 1, 1, v90);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  v216 = v56;
  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F51320);
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v92 = result;
  v182 = v87;
  CGColorRef.calculateMinimumHeadroom.getter();
  result = CGColorCreateWithContentHeadroom();
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v93 = result;

  *v91 = v93;
  v94 = *(v88 - 8);
  v95 = *(v94 + 56);
  v96 = v94 + 56;
  (v95)(v91, 0, 1, v88);
  (v95)(v227, 1, 1, v88);
  v174 = v96;
  v175 = v95;
  v97 = v95;
  v98 = v228;
  v99 = v229;
  v100 = *(v229 + 16);
  v181 = v68;
  v101 = v68;
  v102 = v230;
  v100(v228, v101, v230);
  (*(v99 + 56))(v98, 0, 1, v102);
  type metadata accessor for CGRect(0);
  v179 = v103;
  v178 = _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v233 = 0u;
  v234 = 0u;
  CRRegister.init(wrappedValue:)();
  *&v233 = 0;
  v170[1] = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v104 = v57;
  CRRegister.init(_:)();
  v180 = *(v57 + 24);
  v105 = v220;
  v97(v220, 1, 1, v88);
  v106 = v190;
  outlined init with copy of Date?(v105, v190, &_s8PaperKit5ColorVSgMd);
  v176 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v105, &_s8PaperKit5ColorVSgMd);
  v177 = v104[7];
  v175(v105, 1, 1, v88);
  outlined init with copy of Date?(v105, v106, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v105, &_s8PaperKit5ColorVSgMd);
  v175 = v104[8];
  *&v233 = 0x4014000000000000;
  CRRegister.init(wrappedValue:)();
  v174 = v104[9];
  v107 = v217;
  swift_storeEnumTagMultiPayload();
  v171 = type metadata accessor for ShapeType;
  _s8PaperKit9ShapeTypeOWOcTm_0(v107, v191, type metadata accessor for ShapeType);
  v172 = _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
  CRRegister.init(wrappedValue:)();
  outlined destroy of ShapeType(v107, type metadata accessor for ShapeType);
  *&v233 = 0x3FF0000000000000;
  CRRegister.init(wrappedValue:)();
  *&v233 = 0;
  BYTE8(v233) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
  CRRegister.init(wrappedValue:)();
  *&v233 = 0;
  BYTE8(v233) = 0;
  CRRegister.init(wrappedValue:)();
  v170[0] = v104[13];
  CRAttributedString.init(_:)();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v109 = *(v108 - 8);
  v110 = v222;
  v190 = *(v109 + 56);
  v191 = v108;
  v182 = v109 + 56;
  (v190)(v222, 1, 1);
  outlined init with copy of Date?(v110, v223, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v110, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  v111 = v104[15];
  *&v233 = 0;
  v112 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
  v192 = v111;
  v173 = v112;
  CRRegister.init(wrappedValue:)();
  *&v233 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  v113 = type metadata accessor for StrokeStyle(0);
  v114 = v193;
  (*(*(v113 - 8) + 56))(v193, 1, 1, v113);
  outlined init with copy of Date?(v114, v194, &_s8PaperKit11StrokeStyleOSgMd);
  lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v114, &_s8PaperKit11StrokeStyleOSgMd);
  v115 = type metadata accessor for Shadow();
  v116 = v196;
  (*(*(v115 - 8) + 56))(v196, 1, 1, v115);
  outlined init with copy of Date?(v116, v197, &_s8PaperKit6ShadowVSgMd);
  lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v116, &_s8PaperKit6ShadowVSgMd);
  v234 = 0u;
  v235 = 0u;
  v233 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
  lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  v198 = v104;
  UnknownProperties.init()();
  *&v233 = a2;
  *(&v233 + 1) = a3;
  *&v234 = a4;
  *(&v234 + 1) = a5;
  v117 = v199;
  CRRegister.init(_:)();
  (*(v201 + 40))(v61, v117, v202);
  _s8PaperKit9ShapeTypeOWOcTm_0(v216, v107, v171);
  v118 = v203;
  CRRegister.init(_:)();
  (*(v204 + 40))(&v61[v174], v118, v205);
  *&v233 = 0x4014000000000000;
  v119 = v207;
  CRRegister.init(_:)();
  (*(v208 + 40))(v175 + v61, v119, v209);
  v120 = v220;
  outlined init with copy of Date?(v232, v220, &_s8PaperKit5ColorVSgMd);
  v121 = v210;
  CRRegister.init(_:)();
  v122 = v212;
  v123 = *(v211 + 40);
  v123(&v61[v177], v121, v212);
  outlined init with copy of Date?(v227, v120, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(_:)();
  v123(&v61[v180], v121, v122);
  v125 = v229;
  v124 = v230;
  v126 = v200;
  outlined init with copy of Date?(v228, v200, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  if ((*(v125 + 48))(v126, 1, v124) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v126, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  }

  else
  {
    v127 = v189;
    (*(v125 + 32))(v189, v126, v124);
    (*(v125 + 40))(&v61[v170[0]], v127, v124);
  }

  *&v233 = 2;
  v128 = v213;
  CRRegister.init(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v228, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v227, &_s8PaperKit5ColorVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v232, &_s8PaperKit5ColorVSgMd);
  outlined destroy of ShapeType(v216, type metadata accessor for ShapeType);
  (*(v214 + 40))(&v61[v192], v128, v215);
  v129 = v224;
  outlined init with take of Shape(v61, v224);
  LOBYTE(v233) = 1;
  Shape.formContentType.setter(&v233);
  v130 = v222;
  CRAttributedString.Attributes<>.init(nsAttributes:darkMode:)(v183, 0, v222);
  (v190)(v130, 0, 1, v191);
  outlined init with copy of Date?(v130, v223, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd);
  CRRegister.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v130, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  _s8PaperKit9ShapeTypeOWOcTm_0(v129, v206, type metadata accessor for Shape);
  static CRKeyPath.unique.getter();
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
  v131 = v225;
  Capsule.init(_:id:)();
  v132 = v226;
  v133 = *(v226 + 16);
  v135 = v218;
  v134 = v219;
  v133(v219, v131, v218);
  v136 = v133;
  v137 = objc_allocWithZone(type metadata accessor for ShapeView());
  *(v137 + direct field offset for ShapeView.$__lazy_storage_$_shapeLayer) = 0;
  *(v137 + direct field offset for ShapeView.$__lazy_storage_$_endLineEndLayer) = 0;
  *(v137 + direct field offset for ShapeView.$__lazy_storage_$_startLineEndLayer) = 0;
  *(v137 + direct field offset for ShapeView.$__lazy_storage_$_groupLayer) = 0;
  v138 = direct field offset for ShapeView.showsSignaturePopover;
  *(v137 + direct field offset for ShapeView.showsSignaturePopover) = 0;
  v139 = direct field offset for ShapeView.analytics_inputSource;
  *(v137 + direct field offset for ShapeView.analytics_inputSource) = 68;
  v140 = direct field offset for ShapeView.analytics_documentType;
  *(v137 + direct field offset for ShapeView.analytics_documentType) = 68;
  *(v137 + direct field offset for ShapeView._textBoxView) = 0;
  *(v137 + direct field offset for ShapeView.appearanceStreamView) = 0;
  *(v137 + v138) = 0;
  *(v137 + v139) = 10;
  *(v137 + v140) = v186;
  v141 = v187;
  v231 = v136;
  v136(v187, v134, v135);
  v142 = MEMORY[0x1E69E7D40];
  (*(v132 + 56))(v137 + *((*MEMORY[0x1E69E7D40] & *v137) + 0x3F8), 1, 1, v135);
  *(v137 + *((*v142 & *v137) + 0x400)) = 0;
  *(v137 + *((*v142 & *v137) + 0x408)) = 0;
  *(v137 + *((*v142 & *v137) + 0x410)) = 0;
  *(v137 + *((*v142 & *v137) + 0x418)) = 0;
  *(v137 + *((*v142 & *v137) + 0x420)) = 0;
  v136(v137 + *((*v142 & *v137) + 0x3F0), v141, v135);
  v143 = v184;
  v232 = v184;
  v144 = AnyCanvasElementView.init(frame:canvas:parentCanvasElement:)(v143, 0, 0.0, 0.0, 0.0, 0.0);
  specialized CanvasElementView.setupAccessibility()();
  (*((*v142 & *v144) + 0x520))();
  v146 = *(v132 + 8);
  v145 = v132 + 8;
  v146(v141, v135);
  v147 = v144;
  specialized AppearanceStreamViewSupport.setupAppearanceStreamIfNeeded()();
  v148 = *v142 & *v147;
  v228 = v144;
  v149 = *(v148 + 1008);
  swift_beginAccess();
  v231(v141, &v147[v149], v135);
  LOBYTE(v149) = specialized Capsule<>.isTextBox.getter();

  v231 = v146;
  v146(v141, v135);
  v150 = v229;
  if ((v149 & 1) == 0)
  {
    v226 = v145;
    [v147 setIsAccessibilityElement_];
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v236._object = 0x80000001D40850C0;
    v151._countAndFlagsBits = 0x4025206570616853;
    v152.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v152.value._object = 0xEB00000000656C62;
    v151._object = 0xE800000000000000;
    v153._countAndFlagsBits = 0;
    v153._object = 0xE000000000000000;
    v236._countAndFlagsBits = 0xD00000000000005FLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v151, v152, paperKitBundle, v153, v236);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v154 = swift_allocObject();
    *(v154 + 16) = xmmword_1D4058CF0;
    swift_getKeyPath();
    v155 = v217;
    Capsule.subscript.getter();

    ShapeType.any.getter(&v233);
    outlined destroy of ShapeType(v155, type metadata accessor for ShapeType);
    v156 = *(&v234 + 1);
    v157 = v235;
    __swift_project_boxed_opaque_existential_1(&v233, *(&v234 + 1));
    v158 = *(v157 + 48);
    v159 = v157;
    v135 = v218;
    v160 = v158(v156, v159);
    v162 = v161;
    *(v154 + 56) = MEMORY[0x1E69E6158];
    *(v154 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v154 + 32) = v160;
    *(v154 + 40) = v162;
    __swift_destroy_boxed_opaque_existential_0(&v233);
    v163 = static String.localizedStringWithFormat(_:_:)();
    v165 = v164;

    v166 = MEMORY[0x1DA6CCED0](v163, v165);

    [v147 setAccessibilityLabel_];
  }

  v167 = v231;
  (v231)(v219, v135);
  v167(v225, v135);
  outlined destroy of ShapeType(v224, type metadata accessor for Shape);
  (*(v150 + 8))(v181, v230);
  v147[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isDetectedFormField] = 0;
  v147[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_startsNewAutofillContext] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v168 = swift_initStackObject();
  *(v168 + 16) = xmmword_1D405CEB0;
  *(v168 + 32) = v147;
  v169 = v147;
  FormFillingView.add(_:)(v168);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (*&v169[direct field offset for ShapeView._textBoxView])
  {

    FormTextFieldAnalytics.recordEvent()();
  }

  return v228;
}

double FormFillingView.frameForFormElement(element:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v26);
  type metadata accessor for CanvasElementPDFAnnotation();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = [v25 page];
  if (!v3)
  {

LABEL_8:
    outlined init with copy of Any(a1, v26);
    type metadata accessor for AnyCanvasElementView();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0.0;
    }

    [v25 frame];
    v21 = v20;

    return v21;
  }

  v4 = v3;
  v5 = [v25 page];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 view];
    [v25 bounds];
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = v11;
    if (v7)
    {
      [v7 convertRect:v6 fromPage:{v8, v9, v10, v11}];
      v12 = v16;
      v13 = v17;
      v14 = v18;
      v15 = v19;

      v6 = v7;
    }
  }

  else
  {
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
  }

  v22 = [v4 view];
  [v1 convertRect:v22 fromView:{v12, v13, v14, v15}];
  v21 = v23;

  return v21;
}

char *FormFillingView.allFormElements.getter()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = Strong;
  v4 = AnyCanvas.formFieldElements.getter();
  if (v4 >> 62)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
    v5 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
    v5 = v4;
  }

  v6 = OBJC_IVAR____TtC8PaperKit15FormFillingView_widgets;
  swift_beginAccess();
  v7 = *&v1[v6];
  if (v7 >> 62)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);

    v8 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
    v8 = v7;
  }

  v15 = v5;
  specialized Array.append<A>(contentsOf:)(v8);
  v9 = specialized _arrayForceCast<A, B>(_:)(v5);

  v11 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x440))(v10);
  v12 = [v11 effectiveUserInterfaceLayoutDirection];

  v15 = v9;
  v13 = v1;

  specialized MutableCollection<>.sort(by:)(&v15, v13, v12 == 0);

  return v15;
}

BOOL closure #1 in FormFillingView.allFormElements.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = MEMORY[0x1E69E69B8];
  v32 = MEMORY[0x1E69E69B8];
  v31[0] = swift_allocObject();
  outlined init with copy of AnyHashable(a1, v31[0] + 16);
  v8 = FormFillingView.frameForFormElement(element:)(v31);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_0(v31);
  v32 = v7;
  v31[0] = swift_allocObject();
  outlined init with copy of AnyHashable(a2, v31[0] + 16);
  v15 = FormFillingView.frameForFormElement(element:)(v31);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  __swift_destroy_boxed_opaque_existential_0(v31);
  rect = v8;
  v34.origin.x = v8;
  v22 = v10;
  v34.origin.y = v10;
  v23 = v12;
  v34.size.width = v12;
  v24 = v14;
  v34.size.height = v14;
  MinY = CGRectGetMinY(v34);
  v35.origin.x = v15;
  v35.origin.y = v17;
  v35.size.width = v19;
  v33 = v21;
  v35.size.height = v21;
  if (MinY == CGRectGetMinY(v35))
  {
    v36.origin.x = rect;
    v36.origin.y = v22;
    v36.size.width = v23;
    v36.size.height = v24;
    MinX = CGRectGetMinX(v36);
    v37.origin.x = v15;
    v37.origin.y = v17;
    v37.size.width = v19;
    v37.size.height = v33;
    v27 = CGRectGetMinX(v37);
    if (a4)
    {
      return MinX < v27;
    }

    else
    {
      return v27 < MinX;
    }
  }

  else
  {
    v38.origin.x = rect;
    v38.origin.y = v22;
    v38.size.width = v23;
    v38.size.height = v24;
    v29 = CGRectGetMinY(v38);
    v39.origin.x = v15;
    v39.origin.y = v17;
    v39.size.width = v19;
    v39.size.height = v33;
    return v29 < CGRectGetMinY(v39);
  }
}

uint64_t FormFillingView.focusNextField(from:direction:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = FormFillingView.allFormElements.getter();
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  outlined init with copy of Date?(a1, &v55, &_ss11AnyHashableVSgMd);
  v46 = v4;
  v45 = v5;
  v44 = v8;
  v43 = v7;
  v42 = v9;
  if (*(&v56 + 1))
  {
    aBlock = v55;
    v48 = v56;
    v49 = v57;
  }

  else
  {
    v49 = 0;
    v48 = 0u;
    aBlock = 0u;
  }

  outlined init with copy of Date?(&aBlock, v53, &_ss11AnyHashableVSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableVSgMd);
  lazy protocol witness table accessor for type AnyHashable? and conformance <A> A?();
  AnyHashable.init<A>(_:)();
  result = outlined destroy of StocksKitCurrencyCache.Provider?(&aBlock, &_ss11AnyHashableVSgMd);
  v15 = *(v14 + 2);
  if (!v15)
  {
    outlined destroy of AnyHashable(&v55);

    outlined destroy of StocksKitCurrencyCache.Provider?(&v58, &_ss11AnyHashableVSgMd);
    aBlock = 0u;
    v48 = 0u;
    v49 = 0;
    goto LABEL_24;
  }

  v16 = 0;
  v17 = (v14 + 32);
  do
  {
    if (v16 >= *(v14 + 2))
    {
      __break(1u);
      goto LABEL_58;
    }

    outlined init with copy of AnyHashable(v17, v53);
    v18 = MEMORY[0x1DA6CDFF0](v53, &v55);
    result = outlined destroy of AnyHashable(v53);
    if (v18)
    {
      result = outlined destroy of AnyHashable(&v55);
      if (a2)
      {
        if (v16)
        {
          v21 = v16 - 1;
          v22 = *(v14 + 2);
LABEL_18:
          if (v21 >= v22)
          {
            goto LABEL_59;
          }

          v20 = &v14[40 * v21 + 32];
LABEL_23:
          outlined init with copy of AnyHashable(v20, &aBlock);

          outlined destroy of StocksKitCurrencyCache.Provider?(&v58, &_ss11AnyHashableVSgMd);
LABEL_24:
          v58 = aBlock;
          v59 = v48;
          v60 = v49;
          outlined init with copy of Date?(a1, &aBlock, &_ss11AnyHashableVSgMd);
          outlined init with copy of Date?(&v58, &v50, &_ss11AnyHashableVSgMd);
          if (*(&v48 + 1))
          {
            outlined init with copy of Date?(&aBlock, &v55, &_ss11AnyHashableVSgMd);
            if (*(&v51 + 1))
            {
              v53[0] = v50;
              v53[1] = v51;
              v54 = v52;
              v23 = MEMORY[0x1DA6CDFF0](&v55, v53);
              outlined destroy of AnyHashable(v53);
              outlined destroy of AnyHashable(&v55);
              outlined destroy of StocksKitCurrencyCache.Provider?(&aBlock, &_ss11AnyHashableVSgMd);
              if (v23)
              {
                goto LABEL_41;
              }

LABEL_32:
              outlined init with copy of Date?(a1, &aBlock, &_ss11AnyHashableVSgMd);
              if (*(&v48 + 1))
              {
                v24.isa = AnyHashable._bridgeToObjectiveC()().isa;
                outlined destroy of AnyHashable(&aBlock);
                type metadata accessor for CanvasElementPDFAnnotation();
                v25 = swift_dynamicCastClass();
                if (v25)
                {
                  v26 = v25;
                  v27 = [v25 page];
                  if (v27)
                  {
                    v28 = v27;
                    v29 = [v27 view];

                    if (v29)
                    {
                      [v29 removeControlForAnnotation_];
                    }
                  }

LABEL_41:
                  outlined init with copy of Date?(&v58, &aBlock, &_ss11AnyHashableVSgMd);
                  if (*(&v48 + 1))
                  {
                    v30.isa = AnyHashable._bridgeToObjectiveC()().isa;
                    outlined destroy of AnyHashable(&aBlock);
                    type metadata accessor for AnyCanvasElementView();
                    v31 = swift_dynamicCastClass();
                    if (v31)
                    {
                      [v31 becomeFirstResponder];

                      goto LABEL_50;
                    }
                  }

                  else
                  {
                    outlined destroy of StocksKitCurrencyCache.Provider?(&aBlock, &_ss11AnyHashableVSgMd);
                  }

                  outlined init with copy of Date?(&v58, &aBlock, &_ss11AnyHashableVSgMd);
                  if (!*(&v48 + 1))
                  {
                    outlined destroy of StocksKitCurrencyCache.Provider?(&v58, &_ss11AnyHashableVSgMd);

                    p_aBlock = &aBlock;
                    return outlined destroy of StocksKitCurrencyCache.Provider?(p_aBlock, &_ss11AnyHashableVSgMd);
                  }

                  v32.isa = AnyHashable._bridgeToObjectiveC()().isa;
                  outlined destroy of AnyHashable(&aBlock);
                  type metadata accessor for CanvasElementPDFAnnotation();
                  v33 = swift_dynamicCastClass();
                  if (!v33)
                  {

                    goto LABEL_54;
                  }

                  v34 = v33;
                  if (![objc_opt_self() isMainThread])
                  {
                    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
                    v36 = static OS_dispatch_queue.main.getter();
                    v37 = swift_allocObject();
                    *(v37 + 16) = v34;
                    v49 = partial apply for closure #1 in FormFillingView.focusNextField(from:direction:);
                    *&v50 = v37;
                    *&aBlock = MEMORY[0x1E69E9820];
                    *(&aBlock + 1) = 1107296256;
                    *&v48 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
                    *(&v48 + 1) = &block_descriptor_36;
                    v38 = _Block_copy(&aBlock);
                    v41 = v32.isa;

                    static DispatchQoS.unspecified.getter();
                    *&aBlock = MEMORY[0x1E69E7CC0];
                    _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
                    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
                    v39 = v43;
                    v40 = v46;
                    dispatch thunk of SetAlgebra.init<A>(_:)();
                    MEMORY[0x1DA6CD890](0, v11, v39, v38);

                    _Block_release(v38);
                    (*(v45 + 8))(v39, v40);
                    (*(v42 + 8))(v11, v44);
                    goto LABEL_54;
                  }

                  [v34 addControl];

LABEL_50:
LABEL_54:
                  p_aBlock = &v58;
                  return outlined destroy of StocksKitCurrencyCache.Provider?(p_aBlock, &_ss11AnyHashableVSgMd);
                }
              }

              else
              {
                outlined destroy of StocksKitCurrencyCache.Provider?(&aBlock, &_ss11AnyHashableVSgMd);
              }

              AnyCanvas.selection.setter(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], 6, 0);
              goto LABEL_41;
            }

            outlined destroy of AnyHashable(&v55);
          }

          else if (!*(&v51 + 1))
          {
            outlined destroy of StocksKitCurrencyCache.Provider?(&aBlock, &_ss11AnyHashableVSgMd);
            goto LABEL_41;
          }

          outlined destroy of StocksKitCurrencyCache.Provider?(&aBlock, &_ss11AnyHashableVSg_ACtMd);
          goto LABEL_32;
        }
      }

      else
      {
        v21 = v16 + 1;
        v22 = *(v14 + 2);
        if (v16 + 1 < v22)
        {
          goto LABEL_18;
        }
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(&v58, &_ss11AnyHashableVSgMd);
    }

    ++v16;
    v17 += 40;
  }

  while (v15 != v16);
  result = outlined destroy of AnyHashable(&v55);
  v19 = *(v14 + 2);
  if (!a2)
  {
    if (!v19)
    {
      goto LABEL_60;
    }

    v20 = (v14 + 32);
    goto LABEL_23;
  }

  if (v15 <= v19)
  {
    v20 = &v14[40 * v15 - 8];
    goto LABEL_23;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t FormFillingView.populateTextFields(with:currentField:)(void *a1, char *a2)
{
  v173 = a2;
  v157._rawValue = a1;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v4 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v168 = &v149 - v5;
  v171 = OBJC_IVAR____TtC8PaperKit15FormFillingView_canvas;
  v172 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_17;
  }

  v162 = v4;
  v161 = Strong;
  v7 = AnyCanvas.formFieldElements.getter();
  v8._rawValue = v7;
  v9 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
    goto LABEL_205;
  }

  v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v11 = 0;
    while (1)
    {
      if (v10 == v11)
      {

LABEL_17:
        v21 = 0;
        return v21 & 1;
      }

      if ((v8._rawValue & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1DA6CE0C0](v11, v8._rawValue);
      }

      else
      {
        if (v11 >= *(v9 + 16))
        {
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
          goto LABEL_203;
        }

        v13 = *(v8._rawValue + v11 + 4);
      }

      v14 = v13;
      v15 = (*((*MEMORY[0x1E69E7D40] & *v13) + 0x318))(v13);
      if (!v15)
      {
        __break(1u);
        goto LABEL_226;
      }

      v16 = v15;
      v17 = *(v15 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView);
      v18 = v17;

      if (v17)
      {
        break;
      }

LABEL_6:
      v12 = __OFADD__(v11++, 1);
      if (v12)
      {
        goto LABEL_194;
      }
    }

    v19 = type metadata accessor for TextBoxTextView();
    v20 = v173;
    v3 = static NSObject.== infix(_:_:)();

    if ((v3 & 1) == 0)
    {
      goto LABEL_6;
    }

    v173 = v19;
    v174 = v20;

    v22 = AnyCanvas.formFieldElements.getter();
    v23 = v22;
    v3 = v22 >> 62;
    if (!(v22 >> 62))
    {
      v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24 >= v11)
      {
        goto LABEL_20;
      }

LABEL_213:
      __break(1u);
      goto LABEL_214;
    }

    if (v22 < 0)
    {
      v10 = v22;
    }

    else
    {
      v10 = v22 & 0xFFFFFFFFFFFFFF8;
    }

    v148 = __CocoaSet.count.getter();
    if (v148 < v11)
    {
      goto LABEL_229;
    }

    v24 = v148;
    if (__CocoaSet.count.getter() < v11)
    {
      goto LABEL_230;
    }

    if (__CocoaSet.count.getter() < v24)
    {
      __break(1u);
      goto LABEL_213;
    }

LABEL_20:
    if (v24 < 0)
    {
LABEL_214:
      __break(1u);
      goto LABEL_215;
    }

    if ((v23 & 0xC000000000000001) == 0 || v24 == v11)
    {

      if (!v3)
      {
        goto LABEL_27;
      }

      goto LABEL_29;
    }

    if (v11 >= v24)
    {
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
      goto LABEL_223;
    }

    type metadata accessor for AnyCanvasElementView();

    v25 = v11;
    do
    {
      v26 = v25 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v25);
      v25 = v26;
    }

    while (v24 != v26);
    if (!v3)
    {
LABEL_27:
      v27 = v23 & 0xFFFFFFFFFFFFFF8;
      v167 = (v23 & 0xFFFFFFFFFFFFFF8) + 32;
      goto LABEL_30;
    }

LABEL_29:

    v27 = _CocoaArrayWrapper.subscript.getter();
    v167 = v28;
    v11 = v29;
    v24 = v30 >> 1;
LABEL_30:
    swift_unknownObjectRetain();

    v8._rawValue = MEMORY[0x1E69E7CC0];
    v176 = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    if (v11 != v24)
    {
      v3 = 0;
      v165 = (v24 - 1);
      v166 = v27;
      v31 = v11;
      do
      {
        rawValue = v8._rawValue;
        v8._rawValue = v31;
        while (1)
        {
          if (v31 < v11 || v8._rawValue >= v24)
          {
            goto LABEL_200;
          }

          v32 = *(v167 + 8 * v8._rawValue);
          v33 = swift_unknownObjectWeakLoadStrong();
          v34 = v33;
          if (v33)
          {
            v35 = (*((*MEMORY[0x1E69E7D40] & *v33) + 0x440))(v33);
            v36 = v32;

            v34 = [v35 effectiveUserInterfaceLayoutDirection];
            LOBYTE(v34) = v34 == 0;
          }

          else
          {
            v37 = v32;
          }

          v9 = v31;

          v177 = specialized Array._copyToContiguousArray()(v38);
          specialized MutableCollection<>.sort(by:)(&v177, v34);

          v40 = v177;
          v177 = v32;
          MEMORY[0x1EEE9AC00](v39);
          *(&v149 - 2) = &v177;
          v41 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_Say8PaperKit09AnyCanvasA4ViewCG_TG5TA_0, (&v149 - 4), v40);

          if (v41)
          {
            type metadata accessor for ShapeView();
            v42 = swift_dynamicCastClass();
            if (v42)
            {
              break;
            }
          }

          ++v8._rawValue;

          if (v24 == v8._rawValue)
          {
            v8._rawValue = rawValue;
            goto LABEL_47;
          }
        }

        MEMORY[0x1DA6CD190](v42);
        if (*((v176 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v176 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v31 = v8._rawValue + 1;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v84 = v165 == v8._rawValue;
        v8._rawValue = v176;
      }

      while (!v84);
    }

LABEL_47:
    swift_unknownObjectRelease_n();
    v9 = v8._rawValue >> 62;
    v156 = 0;
    v23 = v8._rawValue & 0xFFFFFFFFFFFFFF8;
    if (v8._rawValue >> 62)
    {
LABEL_215:
      v43 = __CocoaSet.count.getter();
      goto LABEL_49;
    }

    v43 = *((v8._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_49:
    v24 = v174;
    v10 = 0;
    v3 = v8._rawValue & 0xC000000000000001;
    while (1)
    {
      if (v43 == v10)
      {

        v171 = v8._rawValue;
        v3 = v156;
LABEL_85:
        v54 = v24;
        goto LABEL_86;
      }

      if (v3)
      {
        v44 = MEMORY[0x1DA6CE0C0](v10, v8._rawValue);
      }

      else
      {
        if (v10 >= *(v23 + 16))
        {
          goto LABEL_201;
        }

        v44 = *(v8._rawValue + v10 + 4);
      }

      v45 = v44[OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_startsNewAutofillContext];

      v11 = v10 + 1;
      v46 = __OFADD__(v10, 1);
      if (v45)
      {
        break;
      }

      ++v10;
      if (v46)
      {
        goto LABEL_202;
      }
    }

    if (v46)
    {
      goto LABEL_217;
    }

    if (v11 < 0)
    {
      goto LABEL_218;
    }

    if (v9)
    {
      if (__CocoaSet.count.getter() < 0)
      {
        goto LABEL_222;
      }

      v47 = __CocoaSet.count.getter();
    }

    else
    {
      v47 = *(v23 + 16);
    }

    if (v47 < v11)
    {
      goto LABEL_219;
    }

    if (!v3 || v10 == -1)
    {

      if (!v9)
      {
        goto LABEL_74;
      }
    }

    else
    {
      type metadata accessor for ShapeView();

      v48 = 0;
      v49 = v10 + 1;
      do
      {
        v50 = v48 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v48);
        v48 = v50;
      }

      while (v49 != v50);
      if (!v9)
      {
LABEL_74:
        v10 = 0;
        v51 = v23 + 32;
        v11 = (2 * v11) | 1;
        goto LABEL_77;
      }
    }

    v23 = _CocoaArrayWrapper.subscript.getter();
    v10 = v52;
    v11 = v53;
LABEL_77:
    v3 = v156;
    v54 = v24;
    if ((v11 & 1) == 0)
    {
      goto LABEL_78;
    }

    v3 = v51;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v56 = swift_dynamicCastClass();
    if (!v56)
    {
      swift_unknownObjectRelease();
      v56 = MEMORY[0x1E69E7CC0];
    }

    v57 = *(v56 + 16);

    if (!__OFSUB__(v11 >> 1, v10))
    {
      if (v57 != (v11 >> 1) - v10)
      {
        goto LABEL_224;
      }

      v58 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v3 = v156;
      v171 = v58;
      if (!v58)
      {
        swift_unknownObjectRelease();
        v171 = MEMORY[0x1E69E7CC0];
      }

      goto LABEL_85;
    }

LABEL_223:
    __break(1u);
LABEL_224:
    swift_unknownObjectRelease();
    v51 = v3;
    v3 = v156;
    v54 = v24;
LABEL_78:
    specialized _copyCollectionToContiguousArray<A>(_:)(v23, v51, v10, v11);
    v171 = v55;
    swift_unknownObjectRelease();
LABEL_86:
    v152 = OBJC_IVAR____TtC8PaperKit15FormFillingView_formFieldGroups;
    v59 = *(v172 + OBJC_IVAR____TtC8PaperKit15FormFillingView_formFieldGroups);
    v60 = *(v59 + 16);
    rawValue = v8._rawValue;
    v164 = v60;
    if (!v60)
    {
      v153 = 0;
      v154 = 0;
      goto LABEL_113;
    }

    v166 = (v59 + 32);

    v62 = 0;
    v165 = v61;
    while (1)
    {
      if (v62 >= *(v61 + 16))
      {
        goto LABEL_204;
      }

      v167 = v62;
      v8._rawValue = v166[v62];
      v63 = v8._rawValue >> 62 ? __CocoaSet.count.getter() : *((v8._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      v156 = v3;

      if (v63)
      {
        break;
      }

LABEL_88:
      v62 = v167 + 1;

      v61 = v165;
      v54 = v174;
      v8._rawValue = rawValue;
      v3 = v156;
      if (v62 == v164)
      {
        v153 = 0;
        v154 = 0;
        goto LABEL_112;
      }
    }

    v163 = v8._rawValue >> 62;
    v64 = 0;
    v3 = v8._rawValue & 0xC000000000000001;
    while (2)
    {
      if (v3)
      {
        v65 = MEMORY[0x1DA6CE0C0](v64, v8._rawValue);
      }

      else
      {
        if (v64 >= *((v8._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_196;
        }

        v65 = *(v8._rawValue + v64 + 4);
      }

      v66 = v65;
      v67 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        goto LABEL_195;
      }

      v68 = (*((*MEMORY[0x1E69E7D40] & *v65) + 0x318))(v65);
      if (!v68 || (v69 = *(v68 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView), v9 = v68, v70 = v69, v9, !v69))
      {

        goto LABEL_95;
      }

      v9 = v174;
      v71 = static NSObject.== infix(_:_:)();

      if ((v71 & 1) == 0)
      {
LABEL_95:
        ++v64;
        if (v67 == v63)
        {
          goto LABEL_88;
        }

        continue;
      }

      break;
    }

    v72 = [v9 textContentType];
    v3 = v156;
    if (!v72)
    {
      goto LABEL_228;
    }

    v73 = v72;
    FormFillingView.populateTextFieldGroup(_:using:textContentType:)(v8, v157, v72);

    v54 = v174;
    if (v163)
    {
      v154 = __CocoaSet.count.getter();
    }

    else
    {
      v154 = *((v8._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v153 = 1;
    v8._rawValue = rawValue;
LABEL_112:

LABEL_113:
    v74 = *(v172 + OBJC_IVAR____TtC8PaperKit15FormFillingView_preferredTextContentTypes);
    v160 = *(v74 + 16);
    if (!v160)
    {
LABEL_188:

      v145 = swift_unknownObjectWeakLoadStrong();

      if (v145)
      {
        v146 = *&v145[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics];

        *(v146 + 40) = v154;
      }

      v21 = v153;
      return v21 & 1;
    }

    v75 = 0;
    v150 = OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics;
    v159 = v74 + 32;
    v76 = v171 & 0xFFFFFFFFFFFFFF8;
    v167 = v171 & 0xFFFFFFFFFFFFFF8;
    if (v171 < 0)
    {
      v76 = v171;
    }

    v149 = v76;
    v163 = v171 & 0xC000000000000001;
    v164 = (v162 + 8);
    v165 = (v162 + 16);
    v158 = v74;
    while (1)
    {
      if (v75 >= *(v74 + 16))
      {
        goto LABEL_199;
      }

      v173 = v75;
      v77 = *(v159 + 8 * v75);
      v78 = [v54 textContentType];
      if (v78)
      {
        v79 = v78;
        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v81;
        v84 = v80 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v82 == v83;
        if (v84)
        {

LABEL_143:

          goto LABEL_144;
        }

        v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v85)
        {
          goto LABEL_143;
        }
      }

      else
      {
      }

      v86 = v157._rawValue;
      if (!*(v157._rawValue + 2))
      {
        goto LABEL_143;
      }

      v87 = specialized __RawDictionaryStorage.find<A>(_:)(v77);
      if ((v88 & 1) == 0)
      {
        goto LABEL_143;
      }

      v89 = (v86[7] + 16 * v87);
      v91 = *v89;
      v90 = v89[1];
      if (v171 >> 62)
      {
        v143 = *v89;
        v144 = v89[1];
        v92 = __CocoaSet.count.getter();
        v90 = v144;
        v91 = v143;
      }

      else
      {
        v92 = *(v167 + 16);
      }

      v156 = v3;
      v155 = v90;

      if (v92)
      {
        break;
      }

LABEL_147:

      v3 = v156;
LABEL_144:
      v102 = v173;
      v54 = v174;
LABEL_145:
      v75 = (v102 + 1);
      v74 = v158;
      if (v75 == v160)
      {
        goto LABEL_188;
      }
    }

    v151 = v91;
    v93 = 0;
    v166 = v77;
    while (1)
    {
      if (v163)
      {
        v94 = MEMORY[0x1DA6CE0C0](v93, v171);
      }

      else
      {
        if (v93 >= *(v167 + 16))
        {
          goto LABEL_198;
        }

        v94 = *(v171 + 8 * v93 + 32);
      }

      v95 = v94;
      v3 = v93 + 1;
      if (__OFADD__(v93, 1))
      {
        goto LABEL_197;
      }

      v96 = *((*MEMORY[0x1E69E7D40] & *v94) + 0x3F0);
      swift_beginAccess();
      v97 = v168;
      v9 = v169;
      v162 = *v165;
      (v162)(v168, &v95[v96], v169);
      swift_getKeyPath();
      Capsule.subscript.getter();

      v8._rawValue = v164->_rawValue;
      (v164->_rawValue)(v97, v9);
      v175 = v177;
      specialized FormContentType.uiTextContentType.getter();
      v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v100 = v99;
      if (v98 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v100 == v101)
      {
        break;
      }

      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v9)
      {
        goto LABEL_149;
      }

      ++v93;
      v8._rawValue = rawValue;
      v77 = v166;
      if (v3 == v92)
      {
        goto LABEL_147;
      }
    }

LABEL_149:
    v103 = *(v172 + v152);
    v11 = *(v103 + 16);

    if (v11)
    {
      v9 = 0;
      v3 = v156;
      while (v9 < *(v103 + 16))
      {
        v24 = &v149;
        v10 = *(v103 + 8 * v9 + 32);
        v177 = v95;
        MEMORY[0x1EEE9AC00](v104);
        *(&v149 - 2) = &v177;

        if (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v149 - 4), v10))
        {
          v9 = v3;

          v125 = v168;
          v126 = v169;
          (v162)(v168, &v95[v96], v169);
          swift_getKeyPath();
          Capsule.subscript.getter();

          (v8._rawValue)(v125, v126);
          v175 = v177;
          v127 = specialized FormContentType.uiTextContentType.getter();
          FormFillingView.populateTextFieldGroup(_:using:textContentType:)(v10, v157, v127);

          v54 = v174;
          if (v10 >> 62)
          {
            v23 = __CocoaSet.count.getter();
          }

          else
          {
            v23 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v8._rawValue = rawValue;
          v3 = v166;

          v12 = __OFADD__(v154, v23);
          v154 += v23;
          if (v12)
          {
            goto LABEL_220;
          }

          v102 = v173;
          v128 = *(v172 + v150);
          v129 = *(v128 + 56);
          v12 = __OFADD__(v129, v23);
          v130 = v129 + v23;
          if (v12)
          {
            goto LABEL_221;
          }

          v3 = v9;
          *(v128 + 56) = v130;
          v153 = 1;
          goto LABEL_145;
        }

        ++v9;
        v105 = v161;
        v54 = v174;
        if (v11 == v9)
        {
          goto LABEL_156;
        }
      }

LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      v10 = __CocoaSet.count.getter();
      continue;
    }

    break;
  }

  v105 = v161;
  v3 = v156;
  v54 = v174;
LABEL_156:

  v106 = v105;
  v107 = v105;
  v108 = v106;
  ShapeView.addTextBox(canvas:)(v107);

  v109 = direct field offset for ShapeView._textBoxView;
  v110 = *&v95[direct field offset for ShapeView._textBoxView];
  if (!v110 || (v111 = v110, specialized TextBoxView.addTextViewIfNeeded(shouldBecomeFirstResponder:)(0), v111, (v112 = *&v95[v109]) == 0))
  {

    v114 = v166;
    v123 = *&v95[v109];
    if (!v123)
    {
      goto LABEL_166;
    }

    goto LABEL_165;
  }

  v113 = *&v112[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView];
  v114 = v166;
  if (!v113)
  {

    v123 = *&v95[v109];
    if (!v123)
    {
      goto LABEL_166;
    }

    goto LABEL_165;
  }

  v115 = v54;
  v116 = v113;
  v117 = v112;
  v118 = [v116 text];
  if (!v118)
  {
    goto LABEL_231;
  }

  v119 = v118;
  v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v121;

  v122 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v122 = v120 & 0xFFFFFFFFFFFFLL;
  }

  if (v122)
  {

    goto LABEL_182;
  }

  v131 = HIBYTE(v155) & 0xF;
  if ((v155 & 0x2000000000000000) == 0)
  {
    v131 = v151 & 0xFFFFFFFFFFFFLL;
  }

  if (!v131)
  {
    v54 = v115;

    v123 = *&v95[v109];
    if (!v123)
    {
      goto LABEL_166;
    }

    goto LABEL_165;
  }

  v132 = MEMORY[0x1DA6CCED0]();
  [v116 setText_];

  v12 = __OFADD__(v154++, 1);
  if (v12)
  {
LABEL_226:
    __break(1u);
    goto LABEL_227;
  }

  v156 = v3;
  v133 = *(v172 + v150);
  v134 = *(v133 + 56);
  v12 = __OFADD__(v134, 1);
  v135 = v134 + 1;
  if (v12)
  {
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  *(v133 + 56) = v135;
  v3 = OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics;
  v136 = *&v117[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics];
  *(v136 + 18) = 270;
  *(v136 + 64) = 3;

  v137 = [v116 textContentType];
  if (v137)
  {
    v138 = *(v136 + 32);
    *(v136 + 32) = v137;

    v139 = *&v117[v3];

    v140 = [v116 text];

    if (v140)
    {

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v141;

      v142 = String.count.getter();

      *(v139 + 56) = v142;

      *(*&v117[v3] + 64) = 3;
      v153 = 1;
      specialized TextBoxView.updateCanvasElement(shouldRegisterUndo:alwaysMerge:)(1, 0);

      v3 = v156;
      v114 = v166;
LABEL_182:
      v54 = v115;
      v123 = *&v95[v109];
      if (!v123)
      {
LABEL_166:

        v8._rawValue = rawValue;
        v102 = v173;
        goto LABEL_145;
      }

LABEL_165:
      v124 = v123;
      [v124 resignFirstResponder];

      goto LABEL_166;
    }

LABEL_232:
    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}