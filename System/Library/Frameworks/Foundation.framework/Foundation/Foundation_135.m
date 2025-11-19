uint64_t PersonNameComponents.FormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v16 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v15 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v4)
  {
    v11 = v15;
    v10 = v16;
    v18 = 0;
    lazy protocol witness table accessor for type PersonNameComponents.FormatStyle.Style and conformance PersonNameComponents.FormatStyle.Style();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v17;
    v18 = 1;
    lazy protocol witness table accessor for type Locale and conformance Locale();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v11 + 8))(v9, v7);
    v13 = v17;
    *v10 = v12;
    *(v10 + 8) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PersonNameComponents.FormatStyle()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1 + 1);
  ObjectType = swift_getObjectType();
  if ((*(v2 + 48))(ObjectType, v2))
  {
    v4 = 1;
LABEL_5:
    Hasher._combine(_:)(v4);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  (*(v2 + 64))(ObjectType, v2);
  String.hash(into:)();

  (*(v2 + 464))(&v37, ObjectType, v2);
  v45[6] = v43;
  v46[0] = *v44;
  *(v46 + 12) = *&v44[12];
  v45[2] = v39;
  v45[3] = v40;
  v45[4] = v41;
  v45[5] = v42;
  v45[0] = v37;
  v45[1] = v38;
  if (_s10Foundation17LocalePreferencesVSgWOg(v45) == 1)
  {
    v4 = 0;
    goto LABEL_5;
  }

  v5 = v37;
  v6 = *(&v37 + 1);
  v7 = *(&v38 + 1);
  v8 = *(&v39 + 1);
  v9 = v40;
  v31 = v41;
  v32 = v42;
  v10 = v43;
  v11 = *v44;
  v33 = v44[24];
  v34 = *&v44[16];
  v12 = v44[25];
  v35 = v44[26];
  v36 = v44[27];
  Hasher._combine(_:)(1u);
  if (v5 == 2)
  {
    Hasher._combine(_:)(0);
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5 & 1);
    if (v6)
    {
LABEL_8:
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v6 + 16));
      v13 = *(v6 + 16);
      if (v13)
      {
        v14 = v6 + 40;
        do
        {

          String.hash(into:)();

          v14 += 16;
          --v13;
        }

        while (v13);
      }

      if (v7)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }
  }

  Hasher._combine(_:)(0);
  if (v7)
  {
LABEL_12:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_16;
  }

LABEL_15:
  Hasher._combine(_:)(0);
LABEL_16:
  if (v8)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v9)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v47, v9, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(&v9 + 1))
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v47, *(&v9 + 1), v21, v22, v23, v24, v25, v26);
    if (v31)
    {
      goto LABEL_24;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v31)
    {
LABEL_24:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*(&v31 + 1))
      {
        goto LABEL_25;
      }

LABEL_29:
      v27 = v33;
      Hasher._combine(_:)(0);
      if (v32)
      {
        goto LABEL_26;
      }

      goto LABEL_30;
    }
  }

  Hasher._combine(_:)(0);
  if (!*(&v31 + 1))
  {
    goto LABEL_29;
  }

LABEL_25:
  v27 = v33;
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
  _CFObject.hash(into:)();
  if (v32)
  {
LABEL_26:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_31;
  }

LABEL_30:
  Hasher._combine(_:)(0);
LABEL_31:
  if (*(&v32 + 1))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v10)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(&v10 + 1))
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v47, *(&v10 + 1));
    if (v11)
    {
      goto LABEL_39;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v11)
    {
LABEL_39:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v47, v11);
      if (v34)
      {
        goto LABEL_40;
      }

      goto LABEL_46;
    }
  }

  Hasher._combine(_:)(0);
  if (v34)
  {
LABEL_40:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v27 == 2)
    {
      goto LABEL_41;
    }

    goto LABEL_47;
  }

LABEL_46:
  Hasher._combine(_:)(0);
  if (v27 == 2)
  {
LABEL_41:
    Hasher._combine(_:)(0);
    if (v12 != 2)
    {
      goto LABEL_42;
    }

LABEL_48:
    Hasher._combine(_:)(0);
    if (v35 != 2)
    {
      goto LABEL_43;
    }

LABEL_49:
    v28 = 0;
    goto LABEL_50;
  }

LABEL_47:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v27 & 1);
  if (v12 == 2)
  {
    goto LABEL_48;
  }

LABEL_42:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v12 & 1);
  if (v35 == 2)
  {
    goto LABEL_49;
  }

LABEL_43:
  Hasher._combine(_:)(1u);
  v28 = v35 & 1;
LABEL_50:
  Hasher._combine(_:)(v28);
  if (v36 == 2)
  {
    v29 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v29 = v36 & 1;
  }

  Hasher._combine(_:)(v29);
  outlined destroy of LocalePreferences?(&v37);
  return Hasher._finalize()();
}

void PersonNameComponents.ParseStrategy.parse(_:)(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
  v3 = [v2 personNameComponentsFromString_];
  swift_unknownObjectRelease();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo22NSPersonNameComponentsCGMd);
    v4 = swift_allocObject();
    [v3 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSPersonNameComponents();
    swift_dynamicCast();
    *(v4 + 16) = v5;

    *a1 = v4;
  }

  else
  {
    lazy protocol witness table accessor for type PersonNameComponents.ParseStrategy.ParseError and conformance PersonNameComponents.ParseStrategy.ParseError();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonNameComponents.ParseStrategy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonNameComponents.ParseStrategy.CodingKeys and conformance PersonNameComponents.ParseStrategy.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonNameComponents.ParseStrategy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonNameComponents.ParseStrategy.CodingKeys and conformance PersonNameComponents.ParseStrategy.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonNameComponents.ParseStrategy.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation20PersonNameComponentsV13ParseStrategyV10CodingKeys33_B9CD14CB2F013B0D23DE87D4C1A693FALLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PersonNameComponents.ParseStrategy.CodingKeys and conformance PersonNameComponents.ParseStrategy.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PersonNameComponents.ParseStrategy(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation20PersonNameComponentsV13ParseStrategyV10CodingKeys33_B9CD14CB2F013B0D23DE87D4C1A693FALLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PersonNameComponents.ParseStrategy.CodingKeys and conformance PersonNameComponents.ParseStrategy.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::String __swiftcall PersonNameComponents.formatted()()
{
  v1 = *v0;
  type metadata accessor for _LocaleAutoupdating();
  swift_initStaticObject();
  v2 = _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  v3 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
  [v3 setStyle_];
  ObjectType = swift_getObjectType();
  v5 = (*(v2 + 488))(ObjectType, v2);
  [v3 setLocale_];

  [*(v1 + 16) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSPersonNameComponents();
  swift_dynamicCast();
  v6 = [v3 stringFromPersonNameComponents_];

  if (!v6)
  {
    swift_unknownObjectRelease();

    goto LABEL_10;
  }

  isTaggedPointer = _objc_isTaggedPointer(v6);
  v8 = v6;
  v9 = v8;
  if ((isTaggedPointer & 1) == 0)
  {
    goto LABEL_30;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v8);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v23 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v24)
    {
      v25 = v23;
      v27 = v24;
      swift_unknownObjectRelease();

      v14 = v27;
LABEL_23:
      v15 = v25;
      goto LABEL_26;
    }

    [v9 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v25 = v30;
    v26 = v31;
LABEL_22:
    swift_unknownObjectRelease();

    v14 = v26;
    goto LABEL_23;
  }

  if (TaggedPointerTag == 22)
  {
    v15 = [v9 UTF8String];
    if (v15)
    {
      v15 = String.init(utf8String:)(v15);
      if (v14)
      {
        v21 = v15;
        v22 = v14;
        swift_unknownObjectRelease();

        v15 = v21;
        v14 = v22;
        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (TaggedPointerTag != 2)
  {
LABEL_30:
    if (__CFStringIsCF())
    {
      swift_unknownObjectRelease();

LABEL_10:
      v15 = 0;
      v14 = 0xE000000000000000;
      goto LABEL_26;
    }

    v16 = v9;
    v17 = String.init(_nativeStorage:)();
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      swift_unknownObjectRelease();

      v14 = v20;
      v15 = v19;
      goto LABEL_26;
    }

    if (![v16 length])
    {
      swift_unknownObjectRelease();

      goto LABEL_10;
    }

    v25 = String.init(_cocoaString:)();
    v26 = v28;
    goto LABEL_22;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v11 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v13 = v12;
  swift_unknownObjectRelease();

  v14 = v13;
  v15 = v11;
LABEL_26:
  result._object = v14;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t PersonNameComponents.init<A>(_:strategy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  (*(a4 + 48))(&v12, a1, a3, a4);
  (*(*(a3 - 8) + 8))(a2, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  if (!v5)
  {
    *a5 = v12;
  }

  return result;
}

void PersonNameComponents.init(_:)(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
  v3 = [v2 personNameComponentsFromString_];
  swift_unknownObjectRelease();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo22NSPersonNameComponentsCGMd);
    v4 = swift_allocObject();
    [v3 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSPersonNameComponents();
    swift_dynamicCast();
    *(v4 + 16) = v5;

    *a1 = v4;
  }

  else
  {
    lazy protocol witness table accessor for type PersonNameComponents.ParseStrategy.ParseError and conformance PersonNameComponents.ParseStrategy.ParseError();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t static FormatStyle<>.name(style:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  result = _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  *a2 = v3;
  *(a2 + 8) = inited;
  *(a2 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PersonNameComponents.FormatStyle.CodingKeys and conformance PersonNameComponents.FormatStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.CodingKeys and conformance PersonNameComponents.FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.CodingKeys and conformance PersonNameComponents.FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.CodingKeys and conformance PersonNameComponents.FormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.CodingKeys and conformance PersonNameComponents.FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.CodingKeys and conformance PersonNameComponents.FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.CodingKeys and conformance PersonNameComponents.FormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.CodingKeys and conformance PersonNameComponents.FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.CodingKeys and conformance PersonNameComponents.FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.CodingKeys and conformance PersonNameComponents.FormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.CodingKeys and conformance PersonNameComponents.FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.CodingKeys and conformance PersonNameComponents.FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.CodingKeys and conformance PersonNameComponents.FormatStyle.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonNameComponents.FormatStyle.Style and conformance PersonNameComponents.FormatStyle.Style()
{
  result = lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.Style and conformance PersonNameComponents.FormatStyle.Style;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.Style and conformance PersonNameComponents.FormatStyle.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.Style and conformance PersonNameComponents.FormatStyle.Style);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.Style and conformance PersonNameComponents.FormatStyle.Style;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.Style and conformance PersonNameComponents.FormatStyle.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.Style and conformance PersonNameComponents.FormatStyle.Style);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.Style and conformance PersonNameComponents.FormatStyle.Style;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.Style and conformance PersonNameComponents.FormatStyle.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.Style and conformance PersonNameComponents.FormatStyle.Style);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.Style and conformance PersonNameComponents.FormatStyle.Style;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.Style and conformance PersonNameComponents.FormatStyle.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle.Style and conformance PersonNameComponents.FormatStyle.Style);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonNameComponents.FormatStyle and conformance PersonNameComponents.FormatStyle()
{
  result = lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle and conformance PersonNameComponents.FormatStyle;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle and conformance PersonNameComponents.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle and conformance PersonNameComponents.FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle and conformance PersonNameComponents.FormatStyle;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle and conformance PersonNameComponents.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle and conformance PersonNameComponents.FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle and conformance PersonNameComponents.FormatStyle;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle and conformance PersonNameComponents.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle and conformance PersonNameComponents.FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle and conformance PersonNameComponents.FormatStyle;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle and conformance PersonNameComponents.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle and conformance PersonNameComponents.FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle and conformance PersonNameComponents.FormatStyle;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle and conformance PersonNameComponents.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.FormatStyle and conformance PersonNameComponents.FormatStyle);
  }

  return result;
}

uint64_t specialized static PersonNameComponents.FormatStyle.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a1 + 8);
    v5 = *(a2 + 8);
    v6 = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v3 = specialized static Locale.== infix(_:_:)(&v6, &v5);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

unint64_t lazy protocol witness table accessor for type PersonNameComponents.AttributedStyle.CodingKeys and conformance PersonNameComponents.AttributedStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle.CodingKeys and conformance PersonNameComponents.AttributedStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle.CodingKeys and conformance PersonNameComponents.AttributedStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle.CodingKeys and conformance PersonNameComponents.AttributedStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle.CodingKeys and conformance PersonNameComponents.AttributedStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle.CodingKeys and conformance PersonNameComponents.AttributedStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle.CodingKeys and conformance PersonNameComponents.AttributedStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle.CodingKeys and conformance PersonNameComponents.AttributedStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle.CodingKeys and conformance PersonNameComponents.AttributedStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle.CodingKeys and conformance PersonNameComponents.AttributedStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle.CodingKeys and conformance PersonNameComponents.AttributedStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle.CodingKeys and conformance PersonNameComponents.AttributedStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle.CodingKeys and conformance PersonNameComponents.AttributedStyle.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonNameComponents.AttributedStyle and conformance PersonNameComponents.AttributedStyle()
{
  result = lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle and conformance PersonNameComponents.AttributedStyle;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle and conformance PersonNameComponents.AttributedStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle and conformance PersonNameComponents.AttributedStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle and conformance PersonNameComponents.AttributedStyle;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle and conformance PersonNameComponents.AttributedStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle and conformance PersonNameComponents.AttributedStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle and conformance PersonNameComponents.AttributedStyle;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle and conformance PersonNameComponents.AttributedStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle and conformance PersonNameComponents.AttributedStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle and conformance PersonNameComponents.AttributedStyle;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle and conformance PersonNameComponents.AttributedStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.AttributedStyle and conformance PersonNameComponents.AttributedStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonNameComponents.ParseStrategy.ParseError and conformance PersonNameComponents.ParseStrategy.ParseError()
{
  result = lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy.ParseError and conformance PersonNameComponents.ParseStrategy.ParseError;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy.ParseError and conformance PersonNameComponents.ParseStrategy.ParseError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy.ParseError and conformance PersonNameComponents.ParseStrategy.ParseError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonNameComponents.ParseStrategy.CodingKeys and conformance PersonNameComponents.ParseStrategy.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy.CodingKeys and conformance PersonNameComponents.ParseStrategy.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy.CodingKeys and conformance PersonNameComponents.ParseStrategy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy.CodingKeys and conformance PersonNameComponents.ParseStrategy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy.CodingKeys and conformance PersonNameComponents.ParseStrategy.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy.CodingKeys and conformance PersonNameComponents.ParseStrategy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy.CodingKeys and conformance PersonNameComponents.ParseStrategy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy.CodingKeys and conformance PersonNameComponents.ParseStrategy.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy.CodingKeys and conformance PersonNameComponents.ParseStrategy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy.CodingKeys and conformance PersonNameComponents.ParseStrategy.CodingKeys);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PersonNameComponents.FormatStyle(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PersonNameComponents.ParseStrategy and conformance PersonNameComponents.ParseStrategy()
{
  result = lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy and conformance PersonNameComponents.ParseStrategy;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy and conformance PersonNameComponents.ParseStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy and conformance PersonNameComponents.ParseStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy and conformance PersonNameComponents.ParseStrategy;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy and conformance PersonNameComponents.ParseStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy and conformance PersonNameComponents.ParseStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy and conformance PersonNameComponents.ParseStrategy;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy and conformance PersonNameComponents.ParseStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy and conformance PersonNameComponents.ParseStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy and conformance PersonNameComponents.ParseStrategy;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy and conformance PersonNameComponents.ParseStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy and conformance PersonNameComponents.ParseStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy and conformance PersonNameComponents.ParseStrategy;
  if (!lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy and conformance PersonNameComponents.ParseStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonNameComponents.ParseStrategy and conformance PersonNameComponents.ParseStrategy);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PersonNameComponents.FormatStyle(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PersonNameComponents.FormatStyle and conformance PersonNameComponents.FormatStyle();
  *(a1 + 8) = result;
  return result;
}

uint64_t _KeyValueCodingAndObservingSequence<>.changes<A>(for:options:)()
{
  type metadata accessor for KeyPath();

  swift_dynamicCast();
  type metadata accessor for NSObject.KeyValueObservedChanges();
  v1 = swift_allocObject();
  NSObject.KeyValueObservedChanges.init(object:keyPath:options:)(v0);
  return v1;
}

uint64_t NSObject.KeyValueObservedChanges.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](NSObject.KeyValueObservedChanges.Iterator.next(), 0, 0);
}

uint64_t NSObject.KeyValueObservedChanges.Iterator.next()()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = *(v1 + 16);
  v3[2] = v4;
  v5 = *(v1 + 24);
  v3[3] = v5;
  v3[4] = v2;
  v6 = swift_task_alloc();
  v0[6] = v6;
  v6[2] = v4;
  v6[3] = v5;
  v6[4] = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  type metadata accessor for NSKeyValueObservedChange();
  type metadata accessor for Optional();
  *v7 = v0;
  v7[1] = NSObject.KeyValueObservedChanges.Iterator.next();
  v8 = v0[2];

  return MEMORY[0x1EEE6DE18](v8, &async function pointer to partial apply for closure #1 in NSObject.KeyValueObservedChanges.Iterator.next());
}

void NSObject.KeyValueObservedChanges.Iterator.next()()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 8);

    v3();
  }
}

uint64_t closure #1 in NSObject.KeyValueObservedChanges.Iterator.next()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in NSObject.KeyValueObservedChanges.Iterator.next(), 0, 0);
}

uint64_t closure #1 in NSObject.KeyValueObservedChanges.Iterator.next()()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  *(v0 + 16) = v0;
  *(v0 + 56) = v1;
  *(v0 + 24) = closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.next();
  v7 = *(v0 + 96);
  v3 = swift_continuation_init();
  v4 = *(v2 + 16);
  v5 = swift_task_alloc();
  *(v5 + 16) = v7;
  *(v5 + 32) = v3;
  os_unfair_lock_lock((v4 + 40));
  partial apply for closure #1 in closure #1 in NSObject.KeyValueObservedChanges.next()((v4 + 16));
  os_unfair_lock_unlock((v4 + 40));

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t closure #2 in NSObject.KeyValueObservedChanges.Iterator.next()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a1;

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #2 in NSObject.KeyValueObservedChanges.Iterator.next(), v10);

  return outlined destroy of TaskPriority?(v8);
}

uint64_t closure #1 in closure #2 in NSObject.KeyValueObservedChanges.Iterator.next()()
{
  NSObject.KeyValueObservedChanges.teardown()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance NSObject.KeyValueObservedChanges<A, B>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance NSNotificationCenter.AsyncMessageSequenceIterator<A>;

  return NSObject.KeyValueObservedChanges.Iterator.next()(a1, a2);
}

uint64_t NSObject.KeyValueObservedChanges.init(object:keyPath:options:)(void *a1)
{
  type metadata accessor for NSObject.KeyValueObservedChanges.State();
  type metadata accessor for os_unfair_lock_s(255);
  type metadata accessor for ManagedBuffer();
  v3 = swift_allocObject();
  *(v3 + 40) = 0;
  v4 = (v3 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v6 = v3 + 16;
  *(v3 + 24) = 0;
  *(v3 + 32) = v5;
  *(v1 + 16) = v3;

  os_unfair_lock_lock(v4);
  partial apply for closure #1 in NSObject.KeyValueObservedChanges.init(object:keyPath:options:)(v6);
  os_unfair_lock_unlock(v4);

  return v1;
}

uint64_t partial apply for closure #1 in NSObject.KeyValueObservedChanges.Iterator.next()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.next();

  return closure #1 in NSObject.KeyValueObservedChanges.Iterator.next()(a1, v6, v4, v5);
}

void closure #1 in NSObject.KeyValueObservedChanges.init(object:keyPath:options:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v8 = *a5;
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = *(v8 + 80);
  v10[3] = *(v8 + 88);
  v10[4] = v9;
  v11 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)(a3, a4, partial apply for closure #1 in closure #1 in NSObject.KeyValueObservedChanges.init(object:keyPath:options:), v10, &protocol witness table for NSObject);

  *(a1 + 8) = v11;
}

uint64_t closure #1 in closure #1 in NSObject.KeyValueObservedChanges.init(object:keyPath:options:)(uint64_t a1, uint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    NSObject.KeyValueObservedChanges.send(_:)(a2);
  }

  return result;
}

uint64_t NSObject.KeyValueObservedChanges.send(_:)(uint64_t a1)
{
  v36 = a1;
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = type metadata accessor for NSKeyValueObservedChange();
  v5 = type metadata accessor for Optional();
  v34 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v31 - v6;
  v35 = v7;
  type metadata accessor for UnsafeContinuation();
  v33 = v4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v31 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v31 - v12);
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  v21 = v2;
  v22 = v1[2];
  v37 = *(v21 + 80);
  v38 = v3;
  v39 = v36;
  os_unfair_lock_lock((v22 + 40));
  partial apply for closure #1 in NSObject.KeyValueObservedChanges.send(_:)((v22 + 16), v20);
  os_unfair_lock_unlock((v22 + 40));
  (*(v15 + 16))(v17, v20, v14);
  if ((*(v9 + 48))(v17, 1, TupleTypeMetadata2) == 1)
  {
    v23 = *(v15 + 8);
    v23(v20, v14);
    return (v23)(v17, v14);
  }

  else
  {
    (*(v9 + 32))(v13, v17, TupleTypeMetadata2);
    v25 = *v13;
    v26 = v31;
    (*(v9 + 16))(v31, v13, TupleTypeMetadata2);
    v27 = v33;
    v28 = *(v33 - 8);
    v29 = &v26[*(TupleTypeMetadata2 + 48)];
    v30 = v32;
    (*(v28 + 32))(v32, v29, v33);
    (*(v28 + 56))(v30, 0, 1, v27);
    (*(v34 + 32))(*(*(v25 + 64) + 40), v30, v35);
    swift_continuation_resume();
    (*(v9 + 8))(v13, TupleTypeMetadata2);
    return (*(v15 + 8))(v20, v14);
  }
}

uint64_t NSObject.KeyValueObservedChanges.deinit()
{
  NSObject.KeyValueObservedChanges.teardown()();

  return v0;
}

Swift::Void __swiftcall NSObject.KeyValueObservedChanges.teardown()()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = type metadata accessor for NSKeyValueObservedChange();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  v8 = v0[2];
  v23 = *(v1 + 80);
  v24 = v2;
  os_unfair_lock_lock(v8 + 10);
  partial apply for closure #1 in NSObject.KeyValueObservedChanges.teardown()(&v8[4], v25);
  os_unfair_lock_unlock(v8 + 10);
  v10 = v25[0];
  v9 = v25[1];
  if (v25[0])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = v10;
    if (Strong)
    {
      NSKeyValueObservation.Helper.invalidate()();
    }

    swift_unknownObjectWeakAssign();
  }

  v13 = type metadata accessor for UnsafeContinuation();

  v15 = MEMORY[0x1865CB560](v14, v13);
  if (!v15)
  {

LABEL_11:

    return;
  }

  v16 = v15;
  if (v15 >= 1)
  {
    v22 = v10;
    v17 = *(*(v3 - 8) + 56);
    v18 = (v5 + 32);
    v19 = 32;
    do
    {
      v20 = *(v9 + v19);
      v17(v7, 1, 1, v3);
      (*v18)(*(*(v20 + 64) + 40), v7, v4);
      swift_continuation_resume();
      v19 += 8;
      --v16;
    }

    while (v16);

    v10 = v22;
    goto LABEL_11;
  }

  __break(1u);
  os_unfair_lock_unlock(v15);
  __break(1u);
}

uint64_t NSObject.KeyValueObservedChanges.__deallocating_deinit()
{
  NSObject.KeyValueObservedChanges.teardown()();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in NSObject.KeyValueObservedChanges.send(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v38 = a2;
  v6 = type metadata accessor for NSKeyValueObservedChange();
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - v15;
  if (!a1[1])
  {
    type metadata accessor for UnsafeContinuation();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a3, 1, 1, TupleTypeMetadata2);
  }

  v37 = a3;
  v17 = *a1;
  if (MEMORY[0x1865CB550](*a1, v6, v14) < 1)
  {
    v27 = a1[2];
    v28 = type metadata accessor for UnsafeContinuation();
    if (!MEMORY[0x1865CB550](v27, v28))
    {
      (*(v39 + 16))(v8, v38, v6);
      type metadata accessor for Array();
      Array._makeUniqueAndReserveCapacityIfNotUnique()();
      Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*(*a1 + 16));
      Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v35 = swift_getTupleTypeMetadata2();
      return (*(*(v35 - 8) + 56))(v37, 1, 1, v35);
    }

    result = MEMORY[0x1865CB560](v27, v28);
    if (result)
    {
      type metadata accessor for Array();
      swift_getWitnessTable();
      result = Collection.first.getter();
      v29 = v40;
      if (v40)
      {
        swift_getWitnessTable();
        RangeReplaceableCollection.removeFirst(_:)(1);
        v30 = swift_getTupleTypeMetadata2();
        v31 = *(v30 + 48);
        v33 = v37;
        v32 = v38;
        *v37 = v29;
        (*(v39 + 16))(&v33[v31], v32, v6);
        return (*(*(v30 - 8) + 56))(v33, 0, 1, v30);
      }

      goto LABEL_29;
    }

    goto LABEL_25;
  }

  result = MEMORY[0x1865CB550](v17, v6);
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v36 = v3;
  if (result + 1 < 8)
  {
LABEL_8:
    (*(v39 + 16))(v8, v38, v6);
    type metadata accessor for Array();
    Array._makeUniqueAndReserveCapacityIfNotUnique()();
    Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*(*a1 + 16));
    Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v19 = *a1;
    v20 = a1[2];
    v21 = type metadata accessor for UnsafeContinuation();
    if (MEMORY[0x1865CB550](v20, v21) < 1)
    {
      v34 = swift_getTupleTypeMetadata2();
      return (*(*(v34 - 8) + 56))(v37, 1, 1, v34);
    }

    result = MEMORY[0x1865CB560](v20, v21);
    if (result)
    {
      type metadata accessor for Array();
      swift_getWitnessTable();
      result = Collection.first.getter();
      v22 = v40;
      if (!v40)
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      swift_getWitnessTable();
      RangeReplaceableCollection.removeFirst(_:)(1);
      *v37 = v22;
      result = MEMORY[0x1865CB560](v19, v6);
      if (result)
      {
        swift_getWitnessTable();
        Collection.first.getter();
        v23 = v39;
        result = (*(v39 + 48))(v12, 1, v6);
        if (result != 1)
        {
          v24 = swift_getTupleTypeMetadata2();
          v25 = v37;
          (*(v23 + 32))(&v37[*(v24 + 48)], v12, v6);
          swift_getWitnessTable();
          RangeReplaceableCollection.removeFirst(_:)(1);
          return (*(*(v24 - 8) + 56))(v25, 0, 1, v24);
        }

        goto LABEL_27;
      }

      goto LABEL_23;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = MEMORY[0x1865CB560](v17, v6);
  if (!result)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();
  result = (*(v39 + 48))(v16, 1, v6);
  if (result != 1)
  {
    (*(v10 + 8))(v16, v9);
    swift_getWitnessTable();
    RangeReplaceableCollection.removeFirst(_:)(1);
    goto LABEL_8;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in NSObject.KeyValueObservedChanges.next()(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for NSKeyValueObservedChange();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v17 - v12;
  v14 = *a1;
  if (MEMORY[0x1865CB550](*a1, v5, v11) < 1)
  {
    v17[3] = a2;
    type metadata accessor for UnsafeContinuation();
    type metadata accessor for Array();
    Array._makeUniqueAndReserveCapacityIfNotUnique()();
    Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*(a1[2] + 16));
    return Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    result = MEMORY[0x1865CB560](v14, v5);
    if (result)
    {
      v17[0] = a2;
      v17[1] = v2;
      type metadata accessor for Array();
      swift_getWitnessTable();
      Collection.first.getter();
      v16 = *(v5 - 8);
      result = (*(v16 + 48))(v9, 1, v5);
      if (result != 1)
      {
        (*(v16 + 32))(v13, v9, v5);
        swift_getWitnessTable();
        RangeReplaceableCollection.removeFirst(_:)(1);
        (*(v16 + 56))(v13, 0, 1, v5);
        (*(v7 + 32))(*(*(v17[0] + 64) + 40), v13, v6);
        return swift_continuation_resume();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance NSObject.KeyValueObservedChanges<A, B>@<X0>(void *a1@<X8>)
{
  NSObject.KeyValueObservedChanges.makeAsyncIterator()(a1);
}

uint64_t type metadata instantiation function for NSObject.KeyValueObservedChanges.Iterator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for NSObject.KeyValueObservedChanges.State()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t partial apply for closure #1 in NSObject.KeyValueObservedChanges.teardown()@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = *(result + 8);
  v4 = *(result + 16);
  *(result + 8) = 0;
  *(result + 16) = v2;
  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t partial apply for closure #1 in closure #2 in NSObject.KeyValueObservedChanges.Iterator.next()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.next();

  return closure #1 in closure #2 in NSObject.KeyValueObservedChanges.Iterator.next()(a1, v4, v5, v6);
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySSGSay10Foundation10MorphologyVGG_AK7PronounVs5NeverOTg5018_sSS10Foundation10g4VAC7h17VIggnr_SS_ACtAEs5I134OIegnrzr_TR090_s10Foundation13TermOfAddressV21extrapolatingPronouns8languageAcA6LocaleV8LanguageV_tFAA10b2V7C13VSS_AKtXEfU2_Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v45 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v7 = v45;
  v36 = a1;
  v37 = v5;
  v34 = v4;
  v35 = a2;
  if (v6)
  {
    v40 = v45;
    v33 = v6;

    if (v4)
    {
      v9 = a2 + 32;
      v10 = (a1 + 40);
      v38 = v34;
      v39 = v6 - 1;
      v11 = v5;
      do
      {
        if (!v11)
        {
          break;
        }

        v12 = *(v10 - 1);
        v13 = *v10;
        *v42 = *v9;
        *&v42[13] = *(v9 + 13);
        v14 = *v42;
        v15 = v42[20];
        v16 = *&v42[16];

        result = outlined init with copy of Morphology(v42, v43);
        if (!v13)
        {
          break;
        }

        v17 = v16 | (v15 << 32);
        *v43 = v14;
        *&v43[16] = v17;
        v43[20] = BYTE4(v17);
        *v44 = v14;
        *&v44[13] = *&v43[13];
        outlined init with copy of Morphology(v43, v42);

        *v42 = v12;
        *&v42[8] = v13;
        *&v42[16] = v14;
        v42[36] = BYTE4(v17);
        *&v42[32] = v17;
        result = outlined destroy of TermOfAddress?(v42, &_sSS_10Foundation10MorphologyVtMd);
        v7 = v40;
        v45 = v40;
        v19 = *(v40 + 16);
        v18 = *(v40 + 24);
        if (v19 >= v18 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
          v7 = v45;
        }

        *&v41[13] = *&v44[13];
        *v41 = *v44;
        *(v7 + 16) = v19 + 1;
        v20 = v7 + (v19 << 6);
        *(v20 + 32) = v12;
        *(v20 + 40) = v13;
        v21 = *v41;
        *(v20 + 61) = *&v41[13];
        *(v20 + 48) = v21;
        *(v20 + 72) = 0;
        *(v20 + 80) = 0;
        *(v20 + 85) = 0;
        if (!v39)
        {
          v5 = v37;
          v6 = v33;
          goto LABEL_16;
        }

        v10 += 2;
        --v11;
        v9 += 24;
        --v39;
        v40 = v7;
        --v38;
      }

      while (v38);
    }
  }

  else
  {

LABEL_16:
    v22 = v34;
    if (v34 <= v5)
    {
LABEL_26:

      return v7;
    }

    v23 = (v36 + 16 * v6 + 40);
    v24 = v35 + 24 * v6 + 32;
    while (v6 < v22)
    {
      v25 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_28;
      }

      if (v5 == v6)
      {
        goto LABEL_26;
      }

      if (v6 >= v5)
      {
        goto LABEL_29;
      }

      v26 = *(v23 - 1);
      v27 = *v23;
      *v44 = *v24;
      *&v44[13] = *(v24 + 13);
      if (__OFADD__(v6, 1))
      {
        goto LABEL_30;
      }

      v28 = v6;
      *v42 = v26;
      *&v42[8] = v27;
      *&v42[16] = *v24;
      *&v42[29] = *(v24 + 13);
      *v43 = *v24;
      *&v43[13] = *(v24 + 13);

      outlined init with copy of Morphology(v44, v41);
      outlined init with copy of Morphology(v44, v41);

      result = outlined destroy of TermOfAddress?(v42, &_sSS_10Foundation10MorphologyVtMd);
      v45 = v7;
      v29 = *(v7 + 16);
      v30 = *(v7 + 24);
      if (v29 >= v30 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v29 + 1, 1);
        v22 = v34;
        v7 = v45;
      }

      *&v41[13] = *&v43[13];
      *v41 = *v43;
      *(v7 + 16) = v29 + 1;
      v31 = v7 + (v29 << 6);
      *(v31 + 32) = v26;
      *(v31 + 40) = v27;
      v32 = *v41;
      *(v31 + 61) = *&v41[13];
      *(v31 + 48) = v32;
      *(v31 + 72) = 0;
      *(v31 + 80) = 0;
      *(v31 + 85) = 0;
      v6 = v28 + 1;
      v23 += 2;
      v24 += 24;
      v5 = v37;
      if (v25 == v22)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for termOfAddressToPronounMappings()
{
  v0 = v85;
  v53 = 28261;
  v54 = 0xE200000000000000;
  v55 = String.lowercased()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation10MorphologyVGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1812354D0;
  if (one-time initialization token for nominative != -1)
  {
LABEL_19:
    swift_once();
  }

  v2 = static Morphology.nominative;
  *v0 = static Morphology.nominative;
  v3 = *(&static Morphology.nominative + 13);
  *(v0 + 13) = *(&static Morphology.nominative + 13);
  *(v1 + 32) = v2;
  *(v1 + 45) = v3;
  outlined init with copy of Morphology(v85, v98);
  if (one-time initialization token for accusative != -1)
  {
    swift_once();
  }

  v4 = static Morphology.accusative;
  *(v0 + 2) = static Morphology.accusative;
  v5 = *(&static Morphology.accusative + 13);
  *(v0 + 45) = *(&static Morphology.accusative + 13);
  *(v1 + 56) = v4;
  *(v1 + 69) = v5;
  outlined init with copy of Morphology(v86, v98);
  if (one-time initialization token for genitiveDependent != -1)
  {
    swift_once();
  }

  v6 = static Morphology.genitiveDependent;
  *(v0 + 4) = static Morphology.genitiveDependent;
  v7 = *(&static Morphology.genitiveDependent + 13);
  *(v0 + 77) = *(&static Morphology.genitiveDependent + 13);
  *(v1 + 80) = v6;
  *(v1 + 93) = v7;
  outlined init with copy of Morphology(v87, v98);
  if (one-time initialization token for genitiveIndependent != -1)
  {
    swift_once();
  }

  v8 = static Morphology.genitiveIndependent;
  *(v0 + 6) = static Morphology.genitiveIndependent;
  v9 = *(&static Morphology.genitiveIndependent + 13);
  *(v0 + 109) = *(&static Morphology.genitiveIndependent + 13);
  *(v1 + 104) = v8;
  *(v1 + 117) = v9;
  outlined init with copy of Morphology(v88, v98);
  if (one-time initialization token for reflexive != -1)
  {
    swift_once();
  }

  v10 = static Morphology.reflexive;
  *(v0 + 8) = static Morphology.reflexive;
  v11 = *(&static Morphology.reflexive + 13);
  *(v0 + 141) = *(&static Morphology.reflexive + 13);
  *(v1 + 128) = v10;
  *(v1 + 141) = v11;
  v56[0] = v1;
  v56[1] = &outlined read-only object #36 of one-time initialization function for termOfAddressToPronounMappings;
  v12 = String.lowercased()();
  v56[2] = 29541;
  v56[3] = 0xE200000000000000;
  v57 = v12;
  v13 = swift_allocObject();
  v14 = static Morphology.nominative;
  *(v0 + 10) = static Morphology.nominative;
  v15 = *(&static Morphology.nominative + 13);
  *(v0 + 173) = *(&static Morphology.nominative + 13);
  *(v13 + 16) = xmmword_181218E20;
  *(v13 + 32) = v14;
  *(v13 + 45) = v15;
  v58 = v13;
  v59 = &outlined read-only object #37 of one-time initialization function for termOfAddressToPronounMappings;
  v16 = String.lowercased()();
  v60 = 29286;
  v61 = 0xE200000000000000;
  v62 = v16;
  v17 = swift_allocObject();
  v18 = static Morphology.nominative;
  *(v0 + 12) = static Morphology.nominative;
  v19 = *(&static Morphology.nominative + 13);
  *(v0 + 205) = *(&static Morphology.nominative + 13);
  *(v17 + 16) = xmmword_181218E20;
  *(v17 + 32) = v18;
  *(v17 + 45) = v19;
  v63 = v17;
  v64 = &outlined read-only object #38 of one-time initialization function for termOfAddressToPronounMappings;
  v20 = String.lowercased()();
  v65 = 29801;
  v66 = 0xE200000000000000;
  v67 = v20;
  v21 = swift_allocObject();
  v22 = static Morphology.nominative;
  *(v0 + 14) = static Morphology.nominative;
  v23 = *(&static Morphology.nominative + 13);
  *(v0 + 237) = *(&static Morphology.nominative + 13);
  *(v21 + 16) = xmmword_181218E20;
  *(v21 + 32) = v22;
  *(v21 + 45) = v23;
  v68 = v21;
  v69 = &outlined read-only object #39 of one-time initialization function for termOfAddressToPronounMappings;
  v24 = String.lowercased()();
  v70 = 29808;
  v71 = 0xE200000000000000;
  v72 = v24;
  v25 = swift_allocObject();
  v26 = static Morphology.nominative;
  *(v0 + 16) = static Morphology.nominative;
  v27 = *(&static Morphology.nominative + 13);
  v94 = *(&static Morphology.nominative + 13);
  *(v25 + 16) = xmmword_181218E20;
  *(v25 + 32) = v26;
  *(v25 + 45) = v27;
  v73 = v25;
  v74 = &outlined read-only object #40 of one-time initialization function for termOfAddressToPronounMappings;
  v28 = String.lowercased()();
  v75 = 29281;
  v76 = 0xE200000000000000;
  v77 = v28;
  v29 = swift_allocObject();
  v30 = static Morphology.nominative;
  v95[0] = static Morphology.nominative;
  v31 = *(&static Morphology.nominative + 13);
  *(v95 + 13) = *(&static Morphology.nominative + 13);
  *(v29 + 16) = xmmword_181218E20;
  *(v29 + 32) = v30;
  *(v29 + 45) = v31;
  v78 = v29;
  v79 = &outlined read-only object #41 of one-time initialization function for termOfAddressToPronounMappings;
  v32 = String.lowercased()();
  v80 = 27758;
  v81 = 0xE200000000000000;
  v82 = v32;
  v33 = swift_allocObject();
  v34 = static Morphology.nominative;
  v96[0] = static Morphology.nominative;
  v35 = *(&static Morphology.nominative + 13);
  *(v96 + 13) = *(&static Morphology.nominative + 13);
  *(v33 + 16) = xmmword_18121D6B0;
  *(v33 + 32) = v34;
  *(v33 + 45) = v35;
  outlined init with copy of Morphology(v89, v98);
  outlined init with copy of Morphology(v90, v98);
  outlined init with copy of Morphology(v91, v98);
  outlined init with copy of Morphology(v92, v98);
  outlined init with copy of Morphology(v93, v98);
  outlined init with copy of Morphology(v95, v98);
  outlined init with copy of Morphology(v96, v98);
  if (one-time initialization token for dative != -1)
  {
    swift_once();
  }

  v0 = v52;
  v97[0] = static Morphology.dative;
  v36 = *(&static Morphology.dative + 13);
  *(v97 + 13) = *(&static Morphology.dative + 13);
  *(v33 + 56) = static Morphology.dative;
  *(v33 + 69) = v36;
  v98[0] = static Morphology.genitiveDependent;
  v37 = *(&static Morphology.genitiveDependent + 13);
  *(v98 + 13) = *(&static Morphology.genitiveDependent + 13);
  *(v33 + 80) = static Morphology.genitiveDependent;
  *(v33 + 93) = v37;
  v83 = v33;
  v84 = &outlined read-only object #42 of one-time initialization function for termOfAddressToPronounMappings;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation6LocaleV12LanguageCodeVAC27TermOfAddressPronounMappingVGMd);
  v1 = static _DictionaryStorage.allocate(capacity:)();
  outlined init with copy of Morphology(v97, v51);
  outlined init with copy of Morphology(v98, v51);

  for (i = 0; i != 336; i += 48)
  {
    v39 = *&v52[i + 32];
    v40 = *(&v54 + i);
    v41 = *(&v55._countAndFlagsBits + i);
    v42 = *(&v55._object + i);
    v50 = *&v56[i / 8];

    v43 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v40, v41, v42);
    if (v44)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    *(v1 + 64 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
    v45 = (*(v1 + 48) + 32 * v43);
    *v45 = v39;
    v45[1] = v40;
    v45[2] = v41;
    v45[3] = v42;
    *(*(v1 + 56) + 16 * v43) = v50;
    v46 = *(v1 + 16);
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      goto LABEL_18;
    }

    *(v1 + 16) = v48;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeV_AA27TermOfAddressPronounMappingVtMd);
  result = swift_arrayDestroy();
  termOfAddressToPronounMappings._rawValue = v1;
  return result;
}

double TermOfAddress.extrapolatingPronouns(language:)@<D0>(__int128 *a1@<X0>, __int128 *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[1];
  v103 = a1[2];
  v104 = v4;
  v6 = a1[3];
  v7 = a1[5];
  v105 = a1[4];
  v106 = v7;
  v8 = a1[1];
  v101 = *a1;
  v102 = v8;
  v9 = v2[5];
  v111 = v2[4];
  v112 = v9;
  v10 = v2[1];
  v107 = *v2;
  v108 = v10;
  v11 = v2[3];
  v109 = v2[2];
  v110 = v11;
  v93 = v103;
  v94 = v6;
  v12 = a1[5];
  v95 = v105;
  v96 = v12;
  v113 = *(v2 + 12);
  v91 = v101;
  v92 = v5;
  Locale.Language.languageCode.getter(&v85);
  v13 = *(&v85 + 1);
  if (!*(&v85 + 1))
  {
LABEL_36:
    v56 = v112;
    a2[4] = v111;
    a2[5] = v56;
    *(a2 + 12) = v113;
    v57 = v108;
    *a2 = v107;
    a2[1] = v57;
    v58 = v110;
    a2[2] = v109;
    a2[3] = v58;
LABEL_37:
    outlined init with copy of TermOfAddress(&v107, &v91);
    return result;
  }

  v14 = v85;
  v16 = *(&v86 + 1);
  v15 = v86;
  if (one-time initialization token for termOfAddressToPronounMappings != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    rawValue = termOfAddressToPronounMappings._rawValue;
    if (!*(termOfAddressToPronounMappings._rawValue + 2))
    {
      outlined consume of Locale.LanguageCode?(v14, v13);
      goto LABEL_36;
    }

    v18 = v14;
    v19 = v13;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v13, v15, v16);
    v22 = v21;
    outlined consume of Locale.LanguageCode?(v18, v19);
    if ((v22 & 1) == 0)
    {
      goto LABEL_36;
    }

    v23 = (rawValue[7] + 16 * v20);
    v24 = *v23;
    v25 = *(*v23 + 16);
    v75 = *v23;
    v72 = v23[1];
    if (!v25)
    {

      v27 = MEMORY[0x1E69E7CC0];
LABEL_26:
      v43 = *(v27 + 16) + 1;
      v44 = 40;
      do
      {
        if (!--v43)
        {

          goto LABEL_36;
        }

        v45 = *(v27 + v44);
        v44 += 16;
      }

      while (!v45);
      v22 = a2;
      v46 = v72;
      a2 = *(v72 + 16);
      if (!a2)
      {
LABEL_34:

        v53 = v112;
        *(v22 + 64) = v111;
        *(v22 + 80) = v53;
        *(v22 + 96) = v113;
        v54 = v108;
        *v22 = v107;
        *(v22 + 16) = v54;
        v55 = v110;
        *(v22 + 32) = v109;
        *(v22 + 48) = v55;
        goto LABEL_37;
      }

      v47 = 0;
      v16 = 32;
      v15 = &_sSaySSG8pronouns_10Foundation13TermOfAddressVSg04termdE0tMR;
      while (v47 < *(v46 + 16))
      {
        v48 = *(v46 + v16);
        v49 = *(v46 + v16 + 32);
        v92 = *(v46 + v16 + 16);
        v93 = v49;
        v91 = v48;
        v50 = *(v46 + v16 + 48);
        v51 = *(v46 + v16 + 64);
        v52 = *(v46 + v16 + 96);
        v96 = *(v46 + v16 + 80);
        v97 = v52;
        v94 = v50;
        v95 = v51;
        v87[1] = *(v46 + v16 + 48);
        v88 = *(v46 + v16 + 64);
        v89 = *(v46 + v16 + 80);
        v90 = *(v46 + v16 + 96);
        v85 = *(v46 + v16);
        v86 = *(v46 + v16 + 16);
        v87[0] = *(v46 + v16 + 32);
        if (closure #3 in TermOfAddress.extrapolatingPronouns(language:)(v91, &v85 + 8, v27))
        {
          outlined init with copy of (pronouns: [String], termOfAddress: TermOfAddress?)(&v91, v83);

          *&v84[64] = v88;
          *&v84[80] = v89;
          *&v84[96] = v90;
          *v84 = v85;
          *&v84[16] = v86;
          *&v84[32] = v87[0];
          *&v84[48] = v87[1];
          v60 = v85;
          outlined init with copy of (pronouns: [String], termOfAddress: TermOfAddress?)(v84, v83);

          v79 = *&v84[40];
          v80 = *&v84[56];
          v81 = *&v84[72];
          v82 = *&v84[88];
          *v78 = *&v84[8];
          *&v78[16] = *&v84[24];
          a2 = *&v84[104];
          if (*&v84[104] != 4)
          {
            goto LABEL_41;
          }

          outlined destroy of TermOfAddress?(v84, &_sSaySSG8pronouns_10Foundation13TermOfAddressVSg04termdE0tMd);
          v61 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySSGSay10Foundation10MorphologyVGG_AK7PronounVs5NeverOTg5018_sSS10Foundation10g4VAC7h17VIggnr_SS_ACtAEs5I134OIegnrzr_TR090_s10Foundation13TermOfAddressV21extrapolatingPronouns8languageAcA6LocaleV8LanguageV_tFAA10b2V7C13VSS_AKtXEfU2_Tf3nnnpf_nTf1cn_n(v60, v75);

          v62 = v104;
          *(v22 + 32) = v103;
          *(v22 + 48) = v62;
          v63 = v106;
          *(v22 + 64) = v105;
          *(v22 + 80) = v63;
          v64 = v102;
          *v22 = v101;
          *(v22 + 16) = v64;
          *(v22 + 96) = v61;
          outlined init with copy of Locale.Language(&v101, v83);
          return result;
        }

        v47 = (v47 + 1);
        *&v84[64] = v88;
        *&v84[80] = v89;
        *&v84[96] = v90;
        *v84 = v85;
        *&v84[16] = v86;
        *&v84[32] = v87[0];
        *&v84[48] = v87[1];
        outlined init with copy of (pronouns: [String], termOfAddress: TermOfAddress?)(&v91, v83);
        v14 = outlined destroy of TermOfAddress?(v84, &_sSaySSG8pronouns_10Foundation13TermOfAddressVSg04termdE0tMd);
        v16 += 112;
        v46 = v72;
        if (a2 == v47)
        {
          goto LABEL_34;
        }
      }

      goto LABEL_43;
    }

    v71 = a2;
    v100 = MEMORY[0x1E69E7CC0];

    v14 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
    if (*(v24 + 16))
    {
      break;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v68 = a2;
    v69 = v14;
    v70 = v13;
    swift_once();
    v14 = v69;
    a2 = v68;
    v13 = v70;
  }

  v26 = 0;
  v27 = v100;
  v73 = v25;
  v74 = v24 + 32;
  a2 = &v85;
  v28 = 1;
  while (1)
  {
    v29 = (v74 + 24 * v26);
    v76 = v28;
    v77 = v27;
    v30 = *v29;
    *&v83[13] = *(v29 + 13);
    *v83 = v30;
    v95 = v111;
    v96 = v112;
    *&v97 = v113;
    v91 = v107;
    v92 = v108;
    v93 = v109;
    v94 = v110;
    if (v113 >= 4)
    {
      break;
    }

    outlined init with copy of Morphology(v83, &v85);
    v31 = MEMORY[0x1E69E7CC0];
    v32 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v32)
    {
      goto LABEL_12;
    }

LABEL_16:

    v14 = outlined destroy of Morphology(v83);
    v38 = 0;
    v16 = 0;
LABEL_18:
    v27 = v77;
    v100 = v77;
    v41 = *(v77 + 16);
    v40 = *(v77 + 24);
    v15 = (v41 + 1);
    if (v41 >= v40 >> 1)
    {
      v14 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
      v27 = v100;
    }

    *(v27 + 16) = v15;
    v42 = v27 + 16 * v41;
    *(v42 + 32) = v38;
    *(v42 + 40) = v16;
    v26 = v76;
    if (v76 == v73)
    {
      a2 = v71;
      goto LABEL_26;
    }

    v28 = v76 + 1;
    if (v76 >= *(v75 + 16))
    {
      goto LABEL_42;
    }
  }

  outlined init with copy of Morphology(v83, &v85);
  outlined init with copy of TermOfAddress(&v107, &v85);
  outlined destroy of Locale.Language(&v91);
  v31 = v97;
  v32 = *(v97 + 16);
  if (!v32)
  {
    goto LABEL_16;
  }

LABEL_12:
  v33 = 0;
  v34 = (v31 + 48);
  while (v33 < *(v31 + 16))
  {
    v36 = *v34;
    v35 = v34[1];
    v37 = *(v34 - 1);
    *(v87 + 13) = *(v34 + 29);
    v86 = v36;
    v87[0] = v35;
    v85 = v37;
    v16 = *(&v37 + 1);
    v38 = v37;
    v39 = *v34;
    *&v99[13] = *(v34 + 13);
    *v99 = v39;
    *v98 = *v83;
    *&v98[13] = *&v83[13];
    outlined init with copy of Morphology.Pronoun(&v85, v84);
    outlined init with copy of Morphology(&v86, v84);
    v22 = specialized static Morphology.== infix(_:_:)(v99, v98);
    *v78 = *v99;
    *&v78[13] = *&v99[13];
    outlined destroy of Morphology(v78);
    if (v22)
    {

      outlined destroy of Morphology(v83);

      v14 = outlined destroy of Morphology.Pronoun(&v85);
      goto LABEL_18;
    }

    ++v33;
    outlined destroy of Morphology.Pronoun(&v85);
    v34 += 4;
    if (v32 == v33)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_41:
  outlined destroy of TermOfAddress?(v84, &_sSaySSG8pronouns_10Foundation13TermOfAddressVSg04termdE0tMd);

  v65 = v80;
  *(v22 + 32) = v79;
  *(v22 + 48) = v65;
  v66 = v82;
  *(v22 + 64) = v81;
  *(v22 + 80) = v66;
  result = *v78;
  v67 = *&v78[16];
  *v22 = *v78;
  *(v22 + 16) = v67;
  *(v22 + 96) = a2;
  return result;
}

uint64_t closure #3 in TermOfAddress.extrapolatingPronouns(language:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = result;
    v5 = 0;
    v6 = (a3 + 40);
    v7 = (result + 40);
    do
    {
      v8 = *(v4 + 16);
      if (v5 == v8)
      {
        break;
      }

      if (v5 >= v8)
      {
        __break(1u);
        return result;
      }

      if (*v6)
      {
        result = *(v6 - 1);
        if (result != *(v7 - 1) || *v6 != *v7)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }
      }

      ++v5;
      v6 += 2;
      v7 += 2;
    }

    while (v3 != v5);
  }

  return 1;
}

Swift::Bool __swiftcall NSTermOfAddress.containsPronoun(_:grammemes:)(Swift::String _, Swift::OpaquePointer grammemes)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v115 = *MEMORY[0x1E69E9840];
  v6 = [v2 pronouns];
  if (!v6)
  {
    return v6;
  }

  v7 = v6;
  type metadata accessor for __SwiftDeferredNSArray();
  if (swift_dynamicCastClass())
  {
  }

  else
  {
    v8 = v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo19NSMorphologyPronounCGMd);
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    isTaggedPointer = v9;
  }

  else
  {
    swift_unknownObjectRelease();
    [v7 copy];
    type metadata accessor for NSMorphologyPronoun();
    isTaggedPointer = _bridgeCocoaArray<A>(_:)();

    swift_unknownObjectRelease();
    if (isTaggedPointer >> 62)
    {
      goto LABEL_105;
    }
  }

  v11 = *((isTaggedPointer & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_106;
  }

LABEL_9:
  v12 = 0;
  v13 = isTaggedPointer & 0xC000000000000001;
  v105 = isTaggedPointer & 0xFFFFFFFFFFFFFF8;
  v109 = isTaggedPointer;
  v104 = isTaggedPointer + 32;
  v14 = grammemes._rawValue + 64;
  v15 = &selRef_processInfo;
  v106 = isTaggedPointer & 0xC000000000000001;
  v107 = MEMORY[0x1E69E7CA0] + 8;
  rawValue = grammemes._rawValue;
  v103 = v11;
  while (1)
  {
    if (v13)
    {
      v16 = MEMORY[0x1865CC0E0](v12, v109);
      v17 = __OFADD__(v12, 1);
      v18 = v12 + 1;
      if (v17)
      {
        goto LABEL_103;
      }
    }

    else
    {
      if (v12 >= *(v105 + 16))
      {
        goto LABEL_104;
      }

      v16 = *(v104 + 8 * v12);
      v17 = __OFADD__(v12, 1);
      v18 = v12 + 1;
      if (v17)
      {
        goto LABEL_103;
      }
    }

    v110 = v16;
    v19 = [v16 v15[10]];
    v108 = v18;
    if (!v19)
    {
      goto LABEL_35;
    }

    v20 = v19;
    isTaggedPointer = _objc_isTaggedPointer(v19);
    v21 = v20;
    v22 = v21;
    if (!isTaggedPointer)
    {
      goto LABEL_22;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v21);
    if (!TaggedPointerTag)
    {
      _CFIndirectTaggedPointerStringGetContents();
      v6 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v29)
      {
        isTaggedPointer = [v22 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v24 = v112;
        v26 = v113;
        goto LABEL_38;
      }

      goto LABEL_32;
    }

    if (TaggedPointerTag == 22)
    {
      break;
    }

    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v24 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v26 = v25;
      v11 = v103;

      grammemes._rawValue = rawValue;
      goto LABEL_39;
    }

LABEL_22:
    LOBYTE(v112) = 0;
    *&v114[0] = 0;
    if (__CFStringIsCF())
    {
      v24 = *&v114[0];
      if (!*&v114[0])
      {

        v26 = 0xE000000000000000;
        goto LABEL_39;
      }
    }

    else
    {
      isTaggedPointer = v22;
      v27 = String.init(_nativeStorage:)();
      if (v28)
      {
        v24 = v27;
        v26 = v28;

        goto LABEL_39;
      }

      *&v114[0] = [isTaggedPointer length];
      if (!*&v114[0])
      {

LABEL_35:
        v24 = 0;
        v26 = 0xE000000000000000;
        goto LABEL_39;
      }
    }

    v24 = String.init(_cocoaString:)();
    v26 = v30;
LABEL_38:

LABEL_39:
    if (v24 == countAndFlagsBits && v26 == object)
    {
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v31 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v32 = [v110 _morphunConstraints];
    swift_unknownObjectRetain();
    v102 = countAndFlagsBits;
    if (MEMORY[0x1E69E6158] != v107)
    {
      v40 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
      if (v40)
      {
LABEL_54:
        v34 = v40;
        v41 = object;
        goto LABEL_82;
      }

      v61 = [v32 count];
      if (!v61)
      {
LABEL_81:
        v41 = object;
        v34 = MEMORY[0x1E69E7CC8];
        goto LABEL_82;
      }

      isTaggedPointer = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
      v34 = static _DictionaryStorage.allocate(capacity:)();
      v62 = v34[6];
      v63 = v34[7];

      v64 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_SSTt3g5Tf4xxnn_n(v62, v63, v32, isTaggedPointer);
      if ((v64 & 0x8000000000000000) == 0 && isTaggedPointer >= v64)
      {
        v34[2] = v64;
        if (!v64)
        {
          goto LABEL_80;
        }

        v65 = v64 - 1;
        v66 = v34 + 8;
        while (1)
        {
          while (1)
          {
            if ((*(v66 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v65))
            {
              goto LABEL_71;
            }

            v68 = (v34[6] + 16 * v65);
            v69 = *v68;
            v70 = v68[1];

            isTaggedPointer = specialized __RawDictionaryStorage.find<A>(_:)(v69, v70);
            v72 = v71;

            if ((v72 & 1) == 0)
            {
              break;
            }

            isTaggedPointer = v34[6];

            outlined destroy of String(isTaggedPointer + 16 * v65);
            outlined destroy of String(v34[7] + 16 * v65);
            v73 = v34[2];
            v17 = __OFSUB__(v73, 1);
            v74 = v73 - 1;
            if (v17)
            {
              goto LABEL_109;
            }

            v34[2] = v74;

LABEL_71:
            if (--v65 < 0)
            {
              goto LABEL_79;
            }
          }

          *(v66 + ((isTaggedPointer >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << isTaggedPointer;
          if (v65 < isTaggedPointer)
          {
            v67 = 16 * isTaggedPointer;
            *(v34[6] + v67) = *(v34[6] + 16 * v65);
            *(v34[7] + v67) = *(v34[7] + 16 * v65);
            goto LABEL_71;
          }

          if (isTaggedPointer == v65)
          {
            goto LABEL_71;
          }

          v75 = v34[6];
          v76 = (v75 + 16 * isTaggedPointer);
          v77 = (v75 + 16 * v65);
          v78 = *v76;
          v79 = v76[1];
          v80 = v77[1];
          *v76 = *v77;
          v76[1] = v80;
          *v77 = v78;
          v77[1] = v79;
          v81 = v34[7];
          v82 = (v81 + 16 * isTaggedPointer);
          v83 = (v81 + 16 * v65);
          v84 = *v82;
          v85 = v82[1];
          v86 = v83[1];
          *v82 = *v83;
          v82[1] = v86;
          *v83 = v84;
          v83[1] = v85;
          if (v65 < 0)
          {
            goto LABEL_79;
          }
        }
      }

LABEL_111:
      __break(1u);
    }

    v40 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
    if (v40)
    {
      goto LABEL_54;
    }

    v33 = [v32 count];
    if (!v33)
    {
      goto LABEL_81;
    }

    isTaggedPointer = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v34 = static _DictionaryStorage.allocate(capacity:)();
    v35 = v34[6];
    v36 = v34[7];

    v37 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v35, v36, v32, isTaggedPointer);
    if (v37 < 0 || isTaggedPointer < v37)
    {
      goto LABEL_110;
    }

    v34[2] = v37;
    if (!v37)
    {
      goto LABEL_80;
    }

    v38 = v37 - 1;
    v39 = v34 + 8;
    do
    {
      while (1)
      {
        if ((*(v39 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v38))
        {
          goto LABEL_56;
        }

        v46 = (v34[6] + 16 * v38);
        v47 = *v46;
        v48 = v46[1];

        v49 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v48);
        isTaggedPointer = v50;

        if ((isTaggedPointer & 1) == 0)
        {
          break;
        }

        isTaggedPointer = v34[6] + 16 * v38;

        outlined destroy of String(isTaggedPointer);
        __swift_destroy_boxed_opaque_existential_1(v34[7] + 32 * v38);
        v51 = v34[2];
        v17 = __OFSUB__(v51, 1);
        v52 = v51 - 1;
        if (v17)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

        v34[2] = v52;

LABEL_56:
        if (--v38 < 0)
        {
          goto LABEL_79;
        }
      }

      *(v39 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      if (v38 < v49)
      {
        *(v34[6] + 16 * v49) = *(v34[6] + 16 * v38);
        v42 = v34[7];
        v43 = (v42 + 32 * v38);
        v44 = v43[1];
        v45 = (v42 + 32 * v49);
        *v45 = *v43;
        v45[1] = v44;
        goto LABEL_56;
      }

      if (v49 == v38)
      {
        goto LABEL_56;
      }

      v53 = v34[6];
      v54 = (v53 + 16 * v49);
      v55 = (v53 + 16 * v38);
      v56 = *v54;
      v57 = v54[1];
      v58 = v55[1];
      *v54 = *v55;
      v54[1] = v58;
      *v55 = v56;
      v55[1] = v57;
      v59 = v34[7];
      isTaggedPointer = v59 + 32 * v49;
      v60 = (v59 + 32 * v38);
      outlined init with take of Any(isTaggedPointer, v114);
      outlined init with take of Any(v60, isTaggedPointer);
      outlined init with take of Any(v114, v60);
    }

    while ((v38 & 0x8000000000000000) == 0);
LABEL_79:
    grammemes._rawValue = rawValue;
LABEL_80:
    v41 = object;

LABEL_82:

    v87 = 1 << *(grammemes._rawValue + 32);
    if (v87 < 64)
    {
      v88 = ~(-1 << v87);
    }

    else
    {
      v88 = -1;
    }

    object = v88 & *(grammemes._rawValue + 8);
    countAndFlagsBits = (v87 + 63) >> 6;

    grammemes._rawValue = 0;
    while (2)
    {
      while (2)
      {
        while (2)
        {
          if (object)
          {
            v89 = object;
            goto LABEL_93;
          }

          while (2)
          {
            v90 = grammemes._rawValue + 1;
            if (__OFADD__(grammemes._rawValue, 1))
            {
              __break(1u);
LABEL_103:
              __break(1u);
LABEL_104:
              __break(1u);
LABEL_105:
              v11 = __CocoaSet.count.getter();
              if (!v11)
              {
                goto LABEL_106;
              }

              goto LABEL_9;
            }

            if (v90 >= countAndFlagsBits)
            {

              LOBYTE(v6) = 1;
              return v6;
            }

            v89 = *&v14[8 * v90];
            ++grammemes._rawValue;
            if (!v89)
            {
              continue;
            }

            break;
          }

          grammemes._rawValue = v90;
LABEL_93:
          object = (v89 - 1) & v89;
          if (!v34[2])
          {
            continue;
          }

          break;
        }

        v91 = (grammemes._rawValue << 10) | (16 * __clz(__rbit64(v89)));
        v92 = (rawValue[6] + v91);
        v93 = (rawValue[7] + v91);
        isTaggedPointer = *v93;
        v94 = v93[1];
        v96 = *v92;
        v95 = v92[1];

        v97 = specialized __RawDictionaryStorage.find<A>(_:)(v96, v95);
        if ((v98 & 1) == 0 || ((v99 = (v34[7] + 16 * v97), *v99 == isTaggedPointer) ? (v100 = v99[1] == v94) : (v100 = 0), v100))
        {

          continue;
        }

        break;
      }

      isTaggedPointer = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (isTaggedPointer)
      {
        continue;
      }

      break;
    }

    grammemes._rawValue = rawValue;

    object = v41;
    countAndFlagsBits = v102;
    v11 = v103;
LABEL_42:

    v12 = v108;
    v13 = v106;
    v15 = &selRef_processInfo;
    if (v108 == v11)
    {
LABEL_106:

      LOBYTE(v6) = 0;
      return v6;
    }
  }

  v6 = [v22 UTF8String];
  if (!v6)
  {
    goto LABEL_112;
  }

  v6 = String.init(utf8String:)(v6);
  if (v29)
  {
LABEL_32:
    v24 = v6;
    v26 = v29;

    goto LABEL_38;
  }

  __break(1u);
LABEL_112:
  __break(1u);
  return v6;
}

__n128 NSTermOfAddress.withExtrapolatedPronouns()@<Q0>(uint64_t a1@<X8>)
{
  TermOfAddress.init(_:)(v1, &v15);
  if (v21 >= 4)
  {
    v6[10] = v19;
    v6[11] = v20;
    v7 = v21;
    v6[6] = v15;
    v6[7] = v16;
    v6[8] = v17;
    v6[9] = v18;
    v6[2] = v17;
    v6[3] = v18;
    v6[4] = v19;
    v6[5] = v20;
    v6[0] = v15;
    v6[1] = v16;
    TermOfAddress.extrapolatingPronouns(language:)(v6, &v8);
    outlined destroy of TermOfAddress(&v15);
  }

  else
  {
    v12 = v19;
    v13 = v20;
    v14 = v21;
    v8 = v15;
    v9 = v16;
    v10 = v17;
    v11 = v18;
  }

  v3 = v13;
  *(a1 + 64) = v12;
  *(a1 + 80) = v3;
  *(a1 + 96) = v14;
  v4 = v9;
  *a1 = v8;
  *(a1 + 16) = v4;
  result = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = result;
  return result;
}

double one-time initialization function for nominative()
{
  LOWORD(static Morphology.nominative) = 3587;
  BYTE2(static Morphology.nominative) = 6;
  *(&static Morphology.nominative + 1) = MEMORY[0x1E69E7CC8];
  byte_1EA82224C = 2;
  *&result = 33751808;
  dword_1EA822248 = 33751808;
  return result;
}

double one-time initialization function for accusative()
{
  LOWORD(static Morphology.accusative) = 3587;
  BYTE2(static Morphology.accusative) = 6;
  *(&static Morphology.accusative + 1) = MEMORY[0x1E69E7CC8];
  byte_1EA822264 = 2;
  *&result = 33751809;
  dword_1EA822260 = 33751809;
  return result;
}

double one-time initialization function for dative()
{
  LOWORD(static Morphology.dative) = 3587;
  BYTE2(static Morphology.dative) = 6;
  *(&static Morphology.dative + 1) = MEMORY[0x1E69E7CC8];
  byte_1EA82227C = 2;
  *&result = 33751810;
  dword_1EA822278 = 33751810;
  return result;
}

double one-time initialization function for genitiveDependent()
{
  LOWORD(static Morphology.genitiveDependent) = 3587;
  BYTE2(static Morphology.genitiveDependent) = 6;
  *(&static Morphology.genitiveDependent + 1) = MEMORY[0x1E69E7CC8];
  byte_1EA822294 = 2;
  *&result = 16974595;
  dword_1EA822290 = 16974595;
  return result;
}

double one-time initialization function for genitiveIndependent()
{
  LOWORD(static Morphology.genitiveIndependent) = 3587;
  BYTE2(static Morphology.genitiveIndependent) = 6;
  *(&static Morphology.genitiveIndependent + 1) = MEMORY[0x1E69E7CC8];
  byte_1EA8222AC = 2;
  *&result = 197379;
  dword_1EA8222A8 = 197379;
  return result;
}

double one-time initialization function for reflexive()
{
  LOWORD(static Morphology.reflexive) = 3587;
  BYTE2(static Morphology.reflexive) = 6;
  *(&static Morphology.reflexive + 1) = MEMORY[0x1E69E7CC8];
  byte_1EA8222C4 = 2;
  *&result = 33620750;
  dword_1EA8222C0 = 33620750;
  return result;
}

uint64_t outlined init with copy of (pronouns: [String], termOfAddress: TermOfAddress?)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSG8pronouns_10Foundation13TermOfAddressVSg04termdE0tMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for NSMorphologyPronoun()
{
  result = lazy cache variable for type metadata for NSMorphologyPronoun;
  if (!lazy cache variable for type metadata for NSMorphologyPronoun)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSMorphologyPronoun);
  }

  return result;
}

uint64_t Int8.init(exactly:)(void *a1)
{
  v1 = [a1 charValue];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v2 = [objc_allocWithZone(NSNumber) initWithChar_];
  v3 = static NSObject.== infix(_:_:)();

  if (v3)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 0xFFFFFEFF | (((v3 & 1) == 0) << 8);
}

NSNumber __swiftcall Int8._bridgeToObjectiveC()()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithChar_];
}

uint64_t static Int8._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, _BYTE *a2)
{
  v3 = [a1 charValue];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v4 = [objc_allocWithZone(NSNumber) initWithChar_];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    *a2 = v3;
    a2[1] = 0;
  }

  return v5 & 1;
}

void *static Int8._unconditionallyBridgeFromObjectiveC(_:)(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = [v1 charValue];
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
    v3 = [objc_allocWithZone(NSNumber) initWithChar_];
    v4 = static NSObject.== infix(_:_:)();

    if (v4)
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance Int8()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithChar_];
}

void protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance Int8(void *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 charValue];
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
    v5 = [objc_allocWithZone(NSNumber) initWithChar_];
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
}

uint64_t UInt8.init(exactly:)(void *a1)
{
  v1 = [a1 unsignedCharValue];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v2 = [objc_allocWithZone(NSNumber) initWithUnsignedChar_];
  v3 = static NSObject.== infix(_:_:)();

  if (v3)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 0xFFFFFEFF | (((v3 & 1) == 0) << 8);
}

NSNumber __swiftcall UInt8._bridgeToObjectiveC()()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithUnsignedChar_];
}

uint64_t static UInt8._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, _BYTE *a2)
{
  v3 = [a1 unsignedCharValue];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedChar_];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    *a2 = v3;
    a2[1] = 0;
  }

  return v5 & 1;
}

void *static UInt8._unconditionallyBridgeFromObjectiveC(_:)(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = [v1 unsignedCharValue];
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
    v3 = [objc_allocWithZone(NSNumber) initWithUnsignedChar_];
    v4 = static NSObject.== infix(_:_:)();

    if (v4)
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance UInt8()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithUnsignedChar_];
}

void protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance UInt8(void *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 unsignedCharValue];
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
    v5 = [objc_allocWithZone(NSNumber) initWithUnsignedChar_];
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
}

uint64_t Int16.init(exactly:)(void *a1)
{
  v1 = [a1 shortValue];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v2 = [objc_allocWithZone(NSNumber) initWithShort_];
  v3 = static NSObject.== infix(_:_:)();

  if (v3)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 0xFFFEFFFF | (((v3 & 1) == 0) << 16);
}

NSNumber __swiftcall Int16._bridgeToObjectiveC()()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithShort_];
}

uint64_t static Int16._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v3 = [a1 shortValue];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v4 = [objc_allocWithZone(NSNumber) initWithShort_];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    *a2 = v3;
    *(a2 + 2) = 0;
  }

  return v5 & 1;
}

void *static Int16._unconditionallyBridgeFromObjectiveC(_:)(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = [v1 shortValue];
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
    v3 = [objc_allocWithZone(NSNumber) initWithShort_];
    v4 = static NSObject.== infix(_:_:)();

    if (v4)
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance Int16(void *a1@<X0>, _WORD *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 shortValue];
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
    v5 = [objc_allocWithZone(NSNumber) initWithShort_];
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
}

uint64_t UInt16.init(exactly:)(void *a1)
{
  v1 = [a1 unsignedShortValue];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v2 = [objc_allocWithZone(NSNumber) initWithUnsignedShort_];
  v3 = static NSObject.== infix(_:_:)();

  if (v3)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 0xFFFEFFFF | (((v3 & 1) == 0) << 16);
}

NSNumber __swiftcall UInt16._bridgeToObjectiveC()()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithUnsignedShort_];
}

uint64_t static UInt16._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v3 = [a1 unsignedShortValue];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedShort_];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    *a2 = v3;
    *(a2 + 2) = 0;
  }

  return v5 & 1;
}

void *static UInt16._unconditionallyBridgeFromObjectiveC(_:)(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = [v1 unsignedShortValue];
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
    v3 = [objc_allocWithZone(NSNumber) initWithUnsignedShort_];
    v4 = static NSObject.== infix(_:_:)();

    if (v4)
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance UInt16()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithUnsignedShort_];
}

void protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance UInt16(void *a1@<X0>, _WORD *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 unsignedShortValue];
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
    v5 = [objc_allocWithZone(NSNumber) initWithUnsignedShort_];
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
}

unint64_t Int32.init(exactly:)(void *a1, SEL *a2, SEL *a3)
{
  v4 = [a1 *a2];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v5 = [objc_allocWithZone(NSNumber) *a3];
  v6 = static NSObject.== infix(_:_:)();

  v7 = v4;
  if ((v6 & 1) == 0)
  {
    v7 = 0;
  }

  return v7 | (((v6 & 1) == 0) << 32);
}

void *static Int32._unconditionallyBridgeFromObjectiveC(_:)(void *result, SEL *a2, SEL *a3)
{
  if (result)
  {
    v5 = result;
    v6 = [v5 *a2];
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
    v7 = [objc_allocWithZone(NSNumber) *a3];
    LOBYTE(a2) = static NSObject.== infix(_:_:)();

    if (a2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance Int32(void *a1@<X0>, SEL *a2@<X3>, SEL *a3@<X4>, _DWORD *a4@<X8>)
{
  if (a1)
  {
    v7 = a1;
    v8 = [v7 *a2];
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
    v9 = [objc_allocWithZone(NSNumber) *a3];
    LOBYTE(a3) = static NSObject.== infix(_:_:)();

    if (a3)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
}

NSNumber __swiftcall Int64._bridgeToObjectiveC()()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithLongLong_];
}

id Int64.init(exactly:)(void *a1, SEL *a2, SEL *a3)
{
  v4 = [a1 *a2];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v5 = [objc_allocWithZone(NSNumber) *a3];
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

id static Int64._unconditionallyBridgeFromObjectiveC(_:)(id result, SEL *a2, SEL *a3)
{
  if (result)
  {
    v5 = result;
    v6 = [v5 *a2];
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
    v7 = [objc_allocWithZone(NSNumber) *a3];
    LOBYTE(a2) = static NSObject.== infix(_:_:)();

    if (a2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance Int64(void *a1@<X0>, SEL *a2@<X3>, SEL *a3@<X4>, void *a4@<X8>)
{
  if (a1)
  {
    v7 = a1;
    v8 = [v7 *a2];
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
    v9 = [objc_allocWithZone(NSNumber) *a3];
    LOBYTE(a3) = static NSObject.== infix(_:_:)();

    if (a3)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
}

NSNumber __swiftcall Float._bridgeToObjectiveC()()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSNumber);
  LODWORD(v3) = v1;

  return [v2 initWithFloat_];
}

void Bool.init(exactly:)(uint64_t a1)
{
  if (!*MEMORY[0x1E695E4D0])
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*MEMORY[0x1E695E4D0] != a1)
  {
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
    v2 = [objc_allocWithZone(NSNumber) initWithInteger_];
    v3 = static NSObject.== infix(_:_:)();

    if ((v3 & 1) == 0)
    {
      if (*MEMORY[0x1E695E4C0])
      {
        if (*MEMORY[0x1E695E4C0] != a1)
        {
          v4 = [objc_allocWithZone(NSNumber) initWithInteger_];
          static NSObject.== infix(_:_:)();
        }

        return;
      }

LABEL_11:
      __break(1u);
    }
  }
}

double CGFloat.init(exactly:)(void *a1)
{
  [a1 doubleValue];
  if ((~v2 & 0x7FF0000000000000) != 0 || (v2 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    return specialized Double.init(exactly:)(a1);
  }

  [a1 doubleValue];
  return result;
}

NSNumber __swiftcall NSNumber.init(floatLiteral:)(Swift::Double floatLiteral)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithDouble_];
}

id protocol witness for ExpressibleByFloatLiteral.init(floatLiteral:) in conformance NSNumber@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDouble_];
  *a2 = result;
  return result;
}

id protocol witness for ExpressibleByIntegerLiteral.init(integerLiteral:) in conformance NSNumber@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInteger_];
  *a2 = result;
  return result;
}

id protocol witness for ExpressibleByBooleanLiteral.init(BOOLeanLiteral:) in conformance NSNumber@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBool_];
  *a2 = result;
  return result;
}

void specialized static Int8._forceBridgeFromObjectiveC(_:result:)(void *a1, _BYTE *a2)
{
  v3 = [a1 charValue];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v4 = [objc_allocWithZone(NSNumber) initWithChar_];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    *a2 = v3;
    a2[1] = 0;
  }

  else
  {
    _StringGuts.grow(_:)(25);

    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
    v6 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v6);

    MEMORY[0x1865CB0E0](544175136, 0xE400000000000000);
    MEMORY[0x1865CB0E0](947154505, 0xE400000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void specialized static UInt8._forceBridgeFromObjectiveC(_:result:)(void *a1, _BYTE *a2)
{
  v3 = [a1 unsignedCharValue];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedChar_];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    *a2 = v3;
    a2[1] = 0;
  }

  else
  {
    _StringGuts.grow(_:)(25);

    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
    v6 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v6);

    MEMORY[0x1865CB0E0](544175136, 0xE400000000000000);
    MEMORY[0x1865CB0E0](0x38746E4955, 0xE500000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void specialized static Int16._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v3 = [a1 shortValue];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v4 = [objc_allocWithZone(NSNumber) initWithShort_];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    *a2 = v3;
    *(a2 + 2) = 0;
  }

  else
  {
    _StringGuts.grow(_:)(25);

    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
    v6 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v6);

    MEMORY[0x1865CB0E0](544175136, 0xE400000000000000);
    MEMORY[0x1865CB0E0](0x3631746E49, 0xE500000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void specialized static UInt16._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v3 = [a1 unsignedShortValue];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedShort_];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    *a2 = v3;
    *(a2 + 2) = 0;
  }

  else
  {
    _StringGuts.grow(_:)(25);

    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
    v6 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v6);

    MEMORY[0x1865CB0E0](544175136, 0xE400000000000000);
    MEMORY[0x1865CB0E0](0x3631746E4955, 0xE600000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void specialized static UInt32._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v3 = [a1 unsignedIntValue];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedInt_];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    *a2 = v3;
    *(a2 + 4) = 0;
  }

  else
  {
    _StringGuts.grow(_:)(25);

    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
    v6 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v6);

    MEMORY[0x1865CB0E0](544175136, 0xE400000000000000);
    MEMORY[0x1865CB0E0](0x3233746E4955, 0xE600000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void specialized static Int64._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v3 = [a1 longLongValue];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v4 = [objc_allocWithZone(NSNumber) initWithLongLong_];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    *a2 = v3;
    *(a2 + 8) = 0;
  }

  else
  {
    _StringGuts.grow(_:)(25);

    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
    v6 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v6);

    MEMORY[0x1865CB0E0](544175136, 0xE400000000000000);
    MEMORY[0x1865CB0E0](0x3436746E49, 0xE500000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void specialized static UInt64._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v3 = [a1 unsignedLongLongValue];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong_];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    *a2 = v3;
    *(a2 + 8) = 0;
  }

  else
  {
    _StringGuts.grow(_:)(25);

    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
    v6 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v6);

    MEMORY[0x1865CB0E0](544175136, 0xE400000000000000);
    MEMORY[0x1865CB0E0](0x3436746E4955, 0xE600000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

unint64_t specialized static Float._forceBridgeFromObjectiveC(_:result:)(unint64_t *a1, uint64_t a2)
{
  v3 = a1;
  [a1 floatValue];
  if ((~v4 & 0x7F800000) != 0 || (v4 & 0x7FFFFF) == 0)
  {
    result = specialized Float.init(exactly:)(v3);
    *a2 = result;
    *(a2 + 4) = BYTE4(result) & 1;
    if ((result & 0x100000000) == 0)
    {
      return result;
    }

    _StringGuts.grow(_:)(25);

    v12 = 0xD000000000000011;
    v13 = 0x80000001814811D0;
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
    v7 = _typeName(_:qualified:)();
    a2 = v8;
    MEMORY[0x1865CB0E0](v7);

    MEMORY[0x1865CB0E0](544175136, 0xE400000000000000);
    v3 = &v12;
    MEMORY[0x1865CB0E0](0x74616F6C46, 0xE500000000000000);
    LODWORD(v11) = 0;
    v10 = 478;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = [v3 floatValue];
  *a2 = v9;
  *(a2 + 4) = 0;
  return result;
}

void specialized static Float._unconditionallyBridgeFromObjectiveC(_:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    [v1 floatValue];
    if ((~v2 & 0x7F800000) != 0 || (v2 & 0x7FFFFF) == 0)
    {
      specialized Float.init(exactly:)(v1);
    }

    else
    {
      [v1 floatValue];
    }
  }
}

void specialized static Bool._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, char *a2)
{
  if (!*MEMORY[0x1E695E4D0])
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*MEMORY[0x1E695E4D0] == a1)
  {
    v4 = 1;
    goto LABEL_9;
  }

  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v4 = 1;
  v5 = [objc_allocWithZone(NSNumber) initWithInteger_];
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
LABEL_9:
    *a2 = v4;
    return;
  }

  if (!*MEMORY[0x1E695E4C0])
  {
    goto LABEL_11;
  }

  if (*MEMORY[0x1E695E4C0] == a1 || (v7 = [objc_allocWithZone(NSNumber) initWithInteger_], v8 = static NSObject.== infix(_:_:)(), v7, (v8 & 1) != 0))
  {
    v4 = 0;
    goto LABEL_9;
  }

LABEL_12:
  _StringGuts.grow(_:)(25);

  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
  v9 = _typeName(_:qualified:)();
  MEMORY[0x1865CB0E0](v9);

  MEMORY[0x1865CB0E0](544175136, 0xE400000000000000);
  MEMORY[0x1865CB0E0](1819242306, 0xE400000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized static Bool._unconditionallyBridgeFromObjectiveC(_:)(void *a1)
{
  if (a1)
  {
    if (*MEMORY[0x1E695E4D0])
    {
      if (*MEMORY[0x1E695E4D0] == a1)
      {
        return;
      }

      type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
      v2 = objc_allocWithZone(NSNumber);
      v3 = a1;
      v4 = [v2 initWithInteger_];
      LOBYTE(v2) = static NSObject.== infix(_:_:)();

      if (v2)
      {
LABEL_10:

        return;
      }

      if (*MEMORY[0x1E695E4C0])
      {
        if (*MEMORY[0x1E695E4C0] != a1)
        {
          v5 = [objc_allocWithZone(NSNumber) initWithInteger_];
          static NSObject.== infix(_:_:)();
        }

        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t specialized static CGFloat._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  result = specialized static CGFloat._conditionallyBridgeFromObjectiveC(_:result:)(a1, a2);
  if ((result & 1) == 0)
  {
    _StringGuts.grow(_:)(25);

    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
    v3 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v3);

    MEMORY[0x1865CB0E0](544175136, 0xE400000000000000);
    MEMORY[0x1865CB0E0](0x74616F6C464743, 0xE700000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSDecimal and conformance NSDecimal()
{
  result = lazy protocol witness table cache variable for type NSDecimal and conformance NSDecimal;
  if (!lazy protocol witness table cache variable for type NSDecimal and conformance NSDecimal)
  {
    type metadata accessor for NSDecimal(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal and conformance NSDecimal);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4DateV21ComponentsFormatStyleV5FieldVG_AF8CalendarV9ComponentOs5NeverOTg5015_s10Foundation4e3V21fgh21V6formatySSSnyACGFAA8j2V9k4OAE5I7VXEfU0_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + v14 + 32) = 0x60504030A0201uLL >> (8 * v11);
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          outlined consume of Set<Date.ComponentsFormatStyle.Field>.Index._Variant(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      outlined consume of Set<Date.ComponentsFormatStyle.Field>.Index._Variant(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4DateV21ComponentsFormatStyleV5FieldVG_So14NSCalendarUnitVs5NeverOTg5015_s10Foundation4e3V21fgh50V6formatySSSnyACGFSo06NSDateC9FormatterCyXEfU_So14jk4VAE5I6VXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = qword_1812EC008[*(*(a1 + 48) + result)];
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          outlined consume of Set<Date.ComponentsFormatStyle.Field>.Index._Variant(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      outlined consume of Set<Date.ComponentsFormatStyle.Field>.Index._Variant(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = (a1 + 32);
  v4 = a2 + 32;
  v5 = a2 + 40;
  v36 = a2 + 96;
  v37 = a2 + 104;
  v34 = a2 + 160;
  v35 = a2 + 168;
  v32 = a2 + 272;
  v33 = a2 + 280;
  v30 = a2 + 256;
  v31 = a2 + 264;
  v6 = a2 + 248;
  v7 = a2 + 240;
  v8 = a2 + 216;
  v9 = a2 + 208;
  v10 = a2 + 200;
  v11 = a2 + 192;
  v12 = a2 + 184;
  v13 = a2 + 176;
  v14 = a2 + 152;
  v15 = a2 + 144;
  v16 = a2 + 136;
  v17 = a2 + 128;
  v18 = a2 + 120;
  v19 = a2 + 112;
  v20 = a2 + 88;
  v21 = a2 + 80;
  v22 = a2 + 72;
  v23 = a2 + 64;
  v24 = a2 + 56;
  v25 = a2 + 48;
  while (2)
  {
    v26 = *v3++;
    v27 = v4;
    v28 = v5;
    switch(v26)
    {
      case 1:
        v27 = v25;
        if ((*v24 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_3;
      case 2:
        v27 = v23;
        if (*v22)
        {
          goto LABEL_3;
        }

        goto LABEL_31;
      case 3:
        v27 = v21;
        if (*v20)
        {
          goto LABEL_3;
        }

        goto LABEL_31;
      case 4:
        v27 = v19;
        if (*v18)
        {
          goto LABEL_3;
        }

        goto LABEL_31;
      case 5:
        v27 = v17;
        if (*v16)
        {
          goto LABEL_3;
        }

        goto LABEL_31;
      case 6:
        v27 = v15;
        if (*v14)
        {
          goto LABEL_3;
        }

        goto LABEL_31;
      case 7:
        v27 = v13;
        if (*v12)
        {
          goto LABEL_3;
        }

        goto LABEL_31;
      case 8:
        v27 = v11;
        if (*v10)
        {
          goto LABEL_3;
        }

        goto LABEL_31;
      case 9:
        v27 = v9;
        if (*v8)
        {
          goto LABEL_3;
        }

        goto LABEL_31;
      case 10:
        v27 = v7;
        v28 = v6;
        goto LABEL_30;
      case 11:
        v27 = v30;
        if (*v31)
        {
          goto LABEL_3;
        }

        goto LABEL_31;
      case 12:
        v27 = v32;
        if (*v33)
        {
          goto LABEL_3;
        }

        goto LABEL_31;
      case 13:
        v27 = v34;
        if (*v35)
        {
          goto LABEL_3;
        }

        goto LABEL_31;
      case 14:
      case 15:
      case 16:
      case 17:
        goto LABEL_3;
      case 18:
        v27 = v36;
        if (*v37)
        {
          goto LABEL_3;
        }

        goto LABEL_31;
      default:
LABEL_30:
        if (*v28)
        {
          goto LABEL_3;
        }

LABEL_31:
        if (*v27)
        {
          return 1;
        }

LABEL_3:
        if (--v2)
        {
          continue;
        }

        result = 0;
        break;
    }

    return result;
  }
}

uint64_t specialized closure #1 in FormatterCache.formatter(for:creator:)(uint64_t a1, uint64_t *a2)
{
  if (!*(*a1 + 16))
  {
    return 1;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if (v2)
  {
  }

  else
  {
    return 1;
  }
}

uint64_t specialized closure #1 in FormatterCache.formatter(for:creator:)(uint64_t a1, unsigned __int8 *a2)
{
  if (!*(*a1 + 16))
  {
    return 1;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if (v2)
  {
  }

  else
  {
    return 1;
  }
}

uint64_t specialized closure #1 in FormatterCache.formatter(for:creator:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  if (!*(*a1 + 16))
  {
    return 1;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 | ((HIDWORD(a4) & 1) << 32), a5);
  if (v5)
  {
  }

  else
  {
    return 1;
  }
}

void *specialized closure #1 in FormatterCache.formatter(for:creator:)(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  if (!*(*a1 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Date.ComponentsFormatStyle.Field.Option@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Date.ComponentsFormatStyle.Field.Option.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Date.ComponentsFormatStyle.Field.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field.CodingKeys and conformance Date.ComponentsFormatStyle.Field.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Date.ComponentsFormatStyle.Field.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field.CodingKeys and conformance Date.ComponentsFormatStyle.Field.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Date.ComponentsFormatStyle.Field.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation4DateV21ComponentsFormatStyleV5FieldV10CodingKeys33_A95AAD4BE9B9AA48B183E68E3F6B3AACLLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field.CodingKeys and conformance Date.ComponentsFormatStyle.Field.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field.Option and conformance Date.ComponentsFormatStyle.Field.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field.CodingKeys and conformance Date.ComponentsFormatStyle.Field.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.CodingKeys and conformance Date.ComponentsFormatStyle.Field.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.CodingKeys and conformance Date.ComponentsFormatStyle.Field.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.CodingKeys and conformance Date.ComponentsFormatStyle.Field.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.CodingKeys and conformance Date.ComponentsFormatStyle.Field.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.CodingKeys and conformance Date.ComponentsFormatStyle.Field.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.CodingKeys and conformance Date.ComponentsFormatStyle.Field.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.CodingKeys and conformance Date.ComponentsFormatStyle.Field.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.CodingKeys and conformance Date.ComponentsFormatStyle.Field.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.CodingKeys and conformance Date.ComponentsFormatStyle.Field.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.CodingKeys and conformance Date.ComponentsFormatStyle.Field.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.CodingKeys and conformance Date.ComponentsFormatStyle.Field.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.CodingKeys and conformance Date.ComponentsFormatStyle.Field.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field.Option and conformance Date.ComponentsFormatStyle.Field.Option()
{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.Option and conformance Date.ComponentsFormatStyle.Field.Option;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.Option and conformance Date.ComponentsFormatStyle.Field.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.Option and conformance Date.ComponentsFormatStyle.Field.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.Option and conformance Date.ComponentsFormatStyle.Field.Option;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.Option and conformance Date.ComponentsFormatStyle.Field.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.Option and conformance Date.ComponentsFormatStyle.Field.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.Option and conformance Date.ComponentsFormatStyle.Field.Option;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.Option and conformance Date.ComponentsFormatStyle.Field.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.Option and conformance Date.ComponentsFormatStyle.Field.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.Option and conformance Date.ComponentsFormatStyle.Field.Option;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.Option and conformance Date.ComponentsFormatStyle.Field.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field.Option and conformance Date.ComponentsFormatStyle.Field.Option);
  }

  return result;
}

uint64_t Date.ComponentsFormatStyle.Field.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation4DateV21ComponentsFormatStyleV5FieldV10CodingKeys33_A95AAD4BE9B9AA48B183E68E3F6B3AACLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field.CodingKeys and conformance Date.ComponentsFormatStyle.Field.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field.Option and conformance Date.ComponentsFormatStyle.Field.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Date.ComponentsFormatStyle.Style.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Style.CodingKeys and conformance Date.ComponentsFormatStyle.Style.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Date.ComponentsFormatStyle.Style.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Style.CodingKeys and conformance Date.ComponentsFormatStyle.Style.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Date.ComponentsFormatStyle.Style.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation4DateV21ComponentsFormatStyleV0H0V10CodingKeys33_A95AAD4BE9B9AA48B183E68E3F6B3AACLLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Style.CodingKeys and conformance Date.ComponentsFormatStyle.Style.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Style.Option and conformance Date.ComponentsFormatStyle.Style.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Style.CodingKeys and conformance Date.ComponentsFormatStyle.Style.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.CodingKeys and conformance Date.ComponentsFormatStyle.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.CodingKeys and conformance Date.ComponentsFormatStyle.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.CodingKeys and conformance Date.ComponentsFormatStyle.Style.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.CodingKeys and conformance Date.ComponentsFormatStyle.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.CodingKeys and conformance Date.ComponentsFormatStyle.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.CodingKeys and conformance Date.ComponentsFormatStyle.Style.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.CodingKeys and conformance Date.ComponentsFormatStyle.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.CodingKeys and conformance Date.ComponentsFormatStyle.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.CodingKeys and conformance Date.ComponentsFormatStyle.Style.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.CodingKeys and conformance Date.ComponentsFormatStyle.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.CodingKeys and conformance Date.ComponentsFormatStyle.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.CodingKeys and conformance Date.ComponentsFormatStyle.Style.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Style.Option and conformance Date.ComponentsFormatStyle.Style.Option()
{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.Option and conformance Date.ComponentsFormatStyle.Style.Option;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.Option and conformance Date.ComponentsFormatStyle.Style.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.Option and conformance Date.ComponentsFormatStyle.Style.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.Option and conformance Date.ComponentsFormatStyle.Style.Option;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.Option and conformance Date.ComponentsFormatStyle.Style.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.Option and conformance Date.ComponentsFormatStyle.Style.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.Option and conformance Date.ComponentsFormatStyle.Style.Option;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.Option and conformance Date.ComponentsFormatStyle.Style.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.Option and conformance Date.ComponentsFormatStyle.Style.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.Option and conformance Date.ComponentsFormatStyle.Style.Option;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.Option and conformance Date.ComponentsFormatStyle.Style.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style.Option and conformance Date.ComponentsFormatStyle.Style.Option);
  }

  return result;
}

uint64_t Date.ComponentsFormatStyle.Style.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation4DateV21ComponentsFormatStyleV0H0V10CodingKeys33_A95AAD4BE9B9AA48B183E68E3F6B3AACLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Style.CodingKeys and conformance Date.ComponentsFormatStyle.Style.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Style.Option and conformance Date.ComponentsFormatStyle.Style.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Date.ComponentsFormatStyle.fields.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

__n128 Date.ComponentsFormatStyle.calendar.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  v1[1] = *a1;
  return result;
}

__n128 Date.ComponentsFormatStyle.locale.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  v1[2] = *a1;
  return result;
}

__n128 Date.ComponentsFormatStyle.init(style:locale:calendar:fields:)@<Q0>(char *a1@<X0>, __int128 *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a1;
  *(a5 + 48) = 1;
  *(a5 + 8) = a4;
  *a5 = v5;
  result = *a3;
  v7 = *a2;
  *(a5 + 16) = *a3;
  *(a5 + 32) = v7;
  return result;
}

uint64_t Date.ComponentsFormatStyle.format(_:)(double *a1)
{
  v172 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[1];
  v157 = *v1;
  LODWORD(v4) = *v1;
  v6 = *(v1 + 1);
  v5 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = *(v1 + 4);
  v9 = *(v1 + 5);
  LODWORD(v1) = v1[48];
  if (one-time initialization token for cache != -1)
  {
    goto LABEL_155;
  }

LABEL_2:
  v163 = v6;
  v10 = qword_1EA8220B8;
  v158 = static Date.ComponentsFormatStyle.cache;
  LOBYTE(v168[0]) = v4;
  *(&v168[0] + 1) = v6;
  *&v168[1] = v5;
  *(&v168[1] + 1) = v7;
  *&v168[2] = v8;
  *(&v168[2] + 1) = v9;
  v162 = v1;
  LOBYTE(v168[3]) = v1;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v10 + 24));
  v11 = v9;
  v12 = v4;
  v13 = v7;
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)((v10 + 16), v169);
  os_unfair_lock_unlock((v10 + 24));
  v14 = v5;
  v5 = *&v169[0];
  v160 = v13;
  v161 = v14;
  if (*&v169[0])
  {
    goto LABEL_60;
  }

  v156 = v10;
  v5 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v167[0] = v14;
  v167[1] = v13;
  *&v169[0] = v8;
  *(&v169[0] + 1) = v11;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  Calendar.locale.setter(v169);
  v15 = v13;
  ObjectType = swift_getObjectType();
  v17 = (*(v15 + 216))(ObjectType, v15);
  [v5 setCalendar_];

  [v5 setUnitsStyle_];
  if (v163)
  {
    v18 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4DateV21ComponentsFormatStyleV5FieldVG_So14NSCalendarUnitVs5NeverOTg5015_s10Foundation4e3V21fgh50V6formatySSSnyACGFSo06NSDateC9FormatterCyXEfU_So14jk4VAE5I6VXEfU_Tf1cn_n(v163);
    v19 = *(v18 + 16);
    v4 = v10;
    v20 = v158;
    v6 = 0;
    if (v19)
    {
      v21 = (v18 + 32);
      do
      {
        v23 = *v21++;
        v22 = v23;
        if ((v23 & ~v6) == 0)
        {
          v22 = 0;
        }

        v6 |= v22;
        --v19;
      }

      while (v19);
    }

    goto LABEL_47;
  }

  v4 = v10;
  v20 = v158;
  if (v12 != 5)
  {
    goto LABEL_48;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd);
  v24 = static _SetStorage.allocate(capacity:)();
  v8 = v24 + 56;
  v25 = byte_1EEECEDF0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v25);
  v26 = Hasher._finalize()();
  v27 = -1 << *(v24 + 32);
  v28 = v26 & ~v27;
  v29 = v28 >> 6;
  v30 = *(v24 + 56 + 8 * (v28 >> 6));
  v31 = 1 << v28;
  v32 = *(v24 + 48);
  if (((1 << v28) & v30) != 0)
  {
    v33 = ~v27;
    while (*(v32 + v28) != v25)
    {
      v28 = (v28 + 1) & v33;
      v29 = v28 >> 6;
      v30 = *(v8 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    *(v8 + 8 * v29) = v31 | v30;
    *(v32 + v28) = v25;
    v34 = *(v24 + 16);
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_176;
    }

    *(v24 + 16) = v36;
  }

  v37 = byte_1EEECEDF1;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v37);
  v38 = Hasher._finalize()();
  v39 = -1 << *(v24 + 32);
  v40 = v38 & ~v39;
  v41 = v40 >> 6;
  v42 = *(v8 + 8 * (v40 >> 6));
  v43 = 1 << v40;
  v44 = *(v24 + 48);
  if (((1 << v40) & v42) != 0)
  {
    v45 = ~v39;
    while (*(v44 + v40) != v37)
    {
      v40 = (v40 + 1) & v45;
      v41 = v40 >> 6;
      v42 = *(v8 + 8 * (v40 >> 6));
      v43 = 1 << v40;
      if (((1 << v40) & v42) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:
    *(v8 + 8 * v41) = v43 | v42;
    *(v44 + v40) = v37;
    v46 = *(v24 + 16);
    v35 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v35)
    {
      goto LABEL_176;
    }

    *(v24 + 16) = v47;
  }

  v48 = byte_1EEECEDF2;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v48);
  v49 = Hasher._finalize()();
  v50 = -1 << *(v24 + 32);
  v51 = v49 & ~v50;
  v52 = v51 >> 6;
  v53 = *(v8 + 8 * (v51 >> 6));
  v54 = 1 << v51;
  v55 = *(v24 + 48);
  if (((1 << v51) & v53) != 0)
  {
    v56 = ~v50;
    while (*(v55 + v51) != v48)
    {
      v51 = (v51 + 1) & v56;
      v52 = v51 >> 6;
      v53 = *(v8 + 8 * (v51 >> 6));
      v54 = 1 << v51;
      if (((1 << v51) & v53) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
LABEL_27:
    *(v8 + 8 * v52) = v54 | v53;
    *(v55 + v51) = v48;
    v57 = *(v24 + 16);
    v35 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (v35)
    {
LABEL_176:
      __break(1u);
    }

    *(v24 + 16) = v58;
  }

  v157 = v24;
  v154 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV9ComponentOSo14NSCalendarUnitVGMd);
  v59 = 16;
  v1 = static _DictionaryStorage.allocate(capacity:)();
  v7 = (v1 + 64);
  v60 = &qword_1EEECECD8;
  v9 = 1;
  do
  {
    v6 = *(v60 - 8);
    v5 = *v60;
    v61 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
    if (v62)
    {
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      a1 = swift_once();
      goto LABEL_2;
    }

    *(v7 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
    *(*(v1 + 6) + v61) = v6;
    *(*(v1 + 7) + 8 * v61) = v5;
    v63 = *(v1 + 2);
    v35 = __OFADD__(v63, 1);
    v64 = v63 + 1;
    if (v35)
    {
      goto LABEL_153;
    }

    v60 += 2;
    *(v1 + 2) = v64;
    --v59;
  }

  while (v59);
  v65 = 0;
  v6 = 0;
  v66 = 1 << *(v157 + 32);
  v67 = *(v157 + 56);
  v68 = -1;
  if (v66 < 64)
  {
    v68 = ~(-1 << v66);
  }

  v15 = v68 & v67;
  v69 = (v66 + 63) >> 6;
  v5 = v154;
  if ((v68 & v67) == 0)
  {
    while (1)
    {
LABEL_37:
      v7 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        goto LABEL_154;
      }

      if (v7 >= v69)
      {
        break;
      }

      v15 = *(v8 + 8 * v7);
      ++v65;
      if (v15)
      {
        goto LABEL_40;
      }
    }

    v20 = v158;
LABEL_47:
    [v5 setAllowedUnits_];
LABEL_48:
    swift_unknownObjectRelease();
    os_unfair_lock_lock((v4 + 24));
    v72 = *(v4 + 16);
    v171 = v168[3];
    v170[1] = v168[1];
    v170[2] = v168[2];
    v170[0] = v168[0];
    if (v20 >= *(v72 + 16))
    {
    }

    else
    {
      *(v4 + 16) = MEMORY[0x1E69E7CC8];
    }

    outlined init with copy of Date.ComponentsFormatStyle(v170, v169);
    v5 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v169[0] = *(v4 + 16);
    v6 = *&v169[0];
    *(v4 + 16) = 0x8000000000000000;
    v61 = specialized __RawDictionaryStorage.find<A>(_:)(v170);
    v75 = *(v6 + 16);
    v76 = (v74 & 1) == 0;
    v35 = __OFADD__(v75, v76);
    v77 = v75 + v76;
    if (v35)
    {
      __break(1u);
      goto LABEL_157;
    }

    LOBYTE(v15) = v74;
    if (*(v6 + 24) < v77)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v77, isUniquelyReferenced_nonNull_native);
      v78 = *&v169[0];
      v61 = specialized __RawDictionaryStorage.find<A>(_:)(v170);
      if ((v15 & 1) != (v79 & 1))
      {
        goto LABEL_182;
      }

      if (v15)
      {
        goto LABEL_55;
      }

LABEL_58:
      specialized _NativeDictionary._insert(at:key:value:)(v61, v170, v5, v78);
      goto LABEL_59;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_159;
    }

    v78 = v6;
    if ((v74 & 1) == 0)
    {
      goto LABEL_58;
    }

LABEL_55:
    v80 = *(v78 + 56);
    v81 = *(v80 + 8 * v61);
    *(v80 + 8 * v61) = v5;

    outlined destroy of Date.ComponentsFormatStyle(v170);
LABEL_59:
    *(v4 + 16) = v78;

    os_unfair_lock_unlock((v4 + 24));

LABEL_60:
    if (v162)
    {
      v82 = v2;
    }

    else
    {
      v82 = v3;
    }

    if (v162)
    {
      v2 = v3;
    }

    if (v163)
    {
      v83 = v5;
      v84 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4DateV21ComponentsFormatStyleV5FieldVG_AF8CalendarV9ComponentOs5NeverOTg5015_s10Foundation4e3V21fgh21V6formatySSSnyACGFAA8j2V9k4OAE5I7VXEfU0_Tf1cn_n(v163);
      v85 = *(v84 + 16);
      v86 = lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component();
      v87 = MEMORY[0x1865CB700](v85, &type metadata for Calendar.Component, v86);
      *&v169[0] = v87;
      v88 = *(v84 + 16);
      if (v88)
      {
        v89 = 32;
        do
        {
          specialized Set._Variant.insert(_:)(v168, *(v84 + v89++));
          --v88;
        }

        while (v88);

        v90 = *&v169[0];
      }

      else
      {
        v90 = v87;
      }

      Calendar.ComponentSet.init(_:)(v99, v168);
      if (one-time initialization token for validCalendarRange != -1)
      {
        swift_once();
      }

      v100 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v82)
      {
        v101 = v82;
      }

      else
      {
        v101 = *(&static Date.validCalendarRange + 1);
      }

      if (*&static Date.validCalendarRange >= v101)
      {
        v101 = *&static Date.validCalendarRange;
      }

      *v167 = v101;
      if (*(&static Date.validCalendarRange + 1) >= v2)
      {
        v100 = v2;
      }

      if (*&static Date.validCalendarRange >= v100)
      {
        v102 = *&static Date.validCalendarRange;
      }

      else
      {
        v102 = v100;
      }

      v103 = swift_getObjectType();
      v164 = *&v102;
      (*(v160 + 208))(v169, v168, v167, &v164, v103, v160);
      v104 = specialized Set.contains(_:)(0xEu, v90);

      if (v104)
      {
        *&v169[0] = v161;
        *(&v169[0] + 1) = v160;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        if (*&v169[1])
        {
          if (v161)
          {
            v168[0] = v169[1];
            swift_unknownObjectRetain();
            Calendar.timeZone.setter(v168);
          }
        }
      }

      memcpy(v168, v169, 0x11BuLL);
      memcpy(v167, v169, 0x11BuLL);
      isa = DateComponents._bridgeToObjectiveC()().super.isa;
      v106 = [v83 stringFromDateComponents_];

      if (!v106)
      {
        goto LABEL_178;
      }

      isTaggedPointer = _objc_isTaggedPointer(v106);
      v108 = v106;
      v109 = v108;
      if (isTaggedPointer)
      {
        TaggedPointerTag = _objc_getTaggedPointerTag(v108);
        if (TaggedPointerTag)
        {
          if (TaggedPointerTag != 22)
          {
            if (TaggedPointerTag == 2)
            {
              MEMORY[0x1EEE9AC00](TaggedPointerTag);
              v98 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

              outlined destroy of DateComponents(v168);
              return v98;
            }

            goto LABEL_99;
          }

          v117 = [v109 UTF8String];
          if (!v117)
          {
            goto LABEL_180;
          }

          v118 = String.init(utf8String:)(v117);
          if (v119)
          {
            goto LABEL_140;
          }

          __break(1u);
        }

        v165 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v118 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v120)
        {
          [v109 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v98 = v164;
LABEL_145:

          goto LABEL_146;
        }

LABEL_140:
        v98 = v118;

        goto LABEL_145;
      }

LABEL_99:
      LOBYTE(v164) = 0;
      v167[0] = 0;
      LOBYTE(v165) = 0;
      v166 = 0;
      IsCF = __CFStringIsCF();
      if (IsCF)
      {
        v98 = v167[0];
        if (!v167[0])
        {

          outlined destroy of DateComponents(v168);
          return v98;
        }

        if (v166 == 1)
        {
          if (v164)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v125 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_144;
        }

        if (v165)
        {
          if (v164 != 1)
          {
            IsCF = [v109 lengthOfBytesUsingEncoding_];
          }

          MEMORY[0x1EEE9AC00](IsCF);
          v118 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v128 = HIBYTE(v127) & 0xF;
          if ((v127 & 0x2000000000000000) == 0)
          {
            v128 = v118 & 0xFFFFFFFFFFFFLL;
          }

          if (v128)
          {
            goto LABEL_140;
          }
        }

LABEL_143:
        v125 = String.init(_cocoaString:)();
LABEL_144:
        v98 = v125;
        goto LABEL_145;
      }

      v112 = v109;
      v113 = String.init(_nativeStorage:)();
      if (v114)
      {
        v98 = v113;

LABEL_146:
        outlined destroy of DateComponents(v168);

        return v98;
      }

      v167[0] = [v112 length];
      if (v167[0])
      {
        goto LABEL_143;
      }

      outlined destroy of DateComponents(v168);
LABEL_134:

      return 0;
    }

    v91 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
    v92 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
    v93 = [v5 stringFromDate:v91 toDate:v92];

    if (!v93)
    {
      goto LABEL_179;
    }

    v94 = _objc_isTaggedPointer(v93);
    v95 = v93;
    v96 = v95;
    if (!v94)
    {
LABEL_104:
      LOBYTE(v168[0]) = 0;
      *&v169[0] = 0;
      LOBYTE(v167[0]) = 0;
      LOBYTE(v164) = 0;
      if (__CFStringIsCF())
      {
        v98 = *&v169[0];
        if (!*&v169[0])
        {

          return v98;
        }

        if (v164 == 1)
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          v126 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_148:
          v98 = v126;
          goto LABEL_149;
        }
      }

      else
      {
        v83 = v96;
        v115 = String.init(_nativeStorage:)();
        if (v116)
        {
          v98 = v115;

          return v98;
        }

        *&v169[0] = [v83 length];
        if (!*&v169[0])
        {

          goto LABEL_134;
        }
      }

      v126 = String.init(_cocoaString:)();
      goto LABEL_148;
    }

    v97 = _objc_getTaggedPointerTag(v95);
    if (v97)
    {
      if (v97 != 22)
      {
        if (v97 == 2)
        {
          MEMORY[0x1EEE9AC00](v97);
          v98 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          return v98;
        }

        goto LABEL_104;
      }

      v121 = [v96 UTF8String];
      if (!v121)
      {
        goto LABEL_181;
      }

      v122 = String.init(utf8String:)(v121);
      if (v123)
      {
LABEL_128:
        v98 = v122;

LABEL_150:
        return v98;
      }

      __break(1u);
    }

    LOWORD(v167[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v122 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v124)
    {
      [v96 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v98 = *&v168[0];
LABEL_149:

      goto LABEL_150;
    }

    goto LABEL_128;
  }

  while (1)
  {
    v7 = v65;
LABEL_40:
    if (!*(v1 + 2))
    {
      break;
    }

    v61 = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v157 + 48) + (__clz(__rbit64(v15)) | (v7 << 6))));
    if ((v70 & 1) == 0)
    {
      goto LABEL_158;
    }

    v15 &= v15 - 1;
    v71 = *(*(v1 + 7) + 8 * v61);
    if ((v71 & ~v6) == 0)
    {
      v71 = 0;
    }

    v6 |= v71;
    v65 = v7;
    if (!v15)
    {
      goto LABEL_37;
    }
  }

LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  v153 = v5;
  v155 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DateV21ComponentsFormatStyleVSo06NSDateE9FormatterCGMd);
  v130 = static _DictionaryStorage.copy(original:)();
  v78 = v130;
  if (!*(v6 + 16))
  {
LABEL_174:

    v5 = v153;
    v61 = v155;
    v4 = v156;
    if ((v15 & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v131 = (v130 + 64);
  v132 = v6 + 64;
  v133 = ((1 << *(v78 + 32)) + 63) >> 6;
  if (v78 != v6 || v131 >= v132 + 8 * v133)
  {
    memmove(v131, (v6 + 64), 8 * v133);
  }

  v134 = 0;
  *(v78 + 16) = *(v6 + 16);
  v135 = 1 << *(v6 + 32);
  v136 = *(v6 + 64);
  v137 = -1;
  if (v135 < 64)
  {
    v137 = ~(-1 << v135);
  }

  v138 = v137 & v136;
  v139 = (v135 + 63) >> 6;
  if ((v137 & v136) != 0)
  {
    do
    {
      v140 = __clz(__rbit64(v138));
      v138 &= v138 - 1;
LABEL_172:
      v143 = v140 | (v134 << 6);
      v144 = v143 << 6;
      v143 *= 8;
      v145 = v144 - v143;
      v146 = *(v6 + 48) + v145;
      v147 = *(v146 + 8);
      v148 = *(v146 + 48);
      v149 = *(*(v6 + 56) + v143);
      v150 = *(v78 + 48) + v145;
      v151 = *(v146 + 16);
      v159 = *(v146 + 32);
      *v150 = *v146;
      *(v150 + 8) = v147;
      *(v150 + 16) = v151;
      *(v150 + 32) = v159;
      *(v150 + 48) = v148;
      *(*(v78 + 56) + v143) = v149;

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v152 = v149;
    }

    while (v138);
  }

  v141 = v134;
  while (1)
  {
    v134 = v141 + 1;
    if (__OFADD__(v141, 1))
    {
      break;
    }

    if (v134 >= v139)
    {
      goto LABEL_174;
    }

    v142 = *(v132 + 8 * v134);
    ++v141;
    if (v142)
    {
      v140 = __clz(__rbit64(v142));
      v138 = (v142 - 1) & v142;
      goto LABEL_172;
    }
  }

  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t Date.ComponentsFormatStyle.calendar(_:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 48);
  *a2 = *v2;
  *(a2 + 8) = v5;
  *(a2 + 32) = *(v2 + 32);
  *(a2 + 48) = v6;

  *(a2 + 16) = *a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRetain();
}

uint64_t Date.ComponentsFormatStyle.locale(_:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 48);
  *a2 = *v2;
  *(a2 + 8) = v5;
  *(a2 + 16) = *(v2 + 16);
  *(a2 + 48) = v6;

  swift_unknownObjectRetain();
  *(a2 + 32) = *a1;

  return swift_unknownObjectRetain();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Date.ComponentsFormatStyle.CodingKeys()
{
  v1 = *v0;
  v2 = 0x656C797473;
  v3 = 0x7261646E656C6163;
  v4 = 0x656C61636F6CLL;
  if (v1 != 3)
  {
    v4 = 0x697469736F507369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73646C656966;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Date.ComponentsFormatStyle.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Date.ComponentsFormatStyle.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Date.ComponentsFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.ComponentsFormatStyle.CodingKeys and conformance Date.ComponentsFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Date.ComponentsFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.ComponentsFormatStyle.CodingKeys and conformance Date.ComponentsFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Date.ComponentsFormatStyle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation4DateV21ComponentsFormatStyleV10CodingKeys33_A95AAD4BE9B9AA48B183E68E3F6B3AACLLOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v13 = *(v1 + 1);
  v9 = *(v1 + 1);
  v11 = *(v1 + 2);
  v12 = v9;
  v15 = v1[48];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.ComponentsFormatStyle.CodingKeys and conformance Date.ComponentsFormatStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = v8;
  v16 = 0;
  lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Style and conformance Date.ComponentsFormatStyle.Style();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v14 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy10Foundation4DateV21ComponentsFormatStyleV5FieldVGMd);
    lazy protocol witness table accessor for type Set<Date.ComponentsFormatStyle.Field> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<Date.ComponentsFormatStyle.Field> and conformance <> Set<A>, lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = v12;
    v16 = 2;
    lazy protocol witness table accessor for type Calendar and conformance Calendar();
    swift_unknownObjectRetain();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_unknownObjectRelease();
    v14 = v11;
    v16 = 3;
    lazy protocol witness table accessor for type Locale and conformance Locale();
    swift_unknownObjectRetain();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_unknownObjectRelease();
    LOBYTE(v14) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void Date.ComponentsFormatStyle.hash(into:)(Swift::Int a1)
{
  v3 = *(v1 + 1);
  v4 = *(v1 + 3);
  v5 = *(v1 + 5);
  v6 = v1[48];
  MEMORY[0x1865CD060](*v1);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    specialized Set.hash(into:)(a1, v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  ObjectType = swift_getObjectType();
  (*(v4 + 120))(a1, ObjectType, v4);
  v8 = swift_getObjectType();
  if ((*(v5 + 48))(v8, v5))
  {
    v9 = 1;
LABEL_8:
    Hasher._combine(_:)(v9);
    goto LABEL_56;
  }

  Hasher._combine(_:)(0);
  (*(v5 + 64))(v8, v5);
  String.hash(into:)();

  (*(v5 + 464))(&v46, v8, v5);
  v54[6] = v52;
  v55[0] = *v53;
  *(v55 + 12) = *&v53[12];
  v54[2] = v48;
  v54[3] = v49;
  v54[4] = v50;
  v54[5] = v51;
  v54[0] = v46;
  v54[1] = v47;
  if (_s10Foundation17LocalePreferencesVSgWOg(v54) == 1)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v45 = v6;
  v10 = v46;
  v11 = *(&v46 + 1);
  v12 = *(&v47 + 1);
  v13 = *(&v48 + 1);
  v14 = *(&v49 + 1);
  v38 = v50;
  v40 = v51;
  v42 = v52;
  v15 = *v53;
  v37 = v49;
  v43 = *&v53[16];
  v44 = v53[24];
  v39 = v53[25];
  v16 = v53[26];
  v17 = v53[27];
  Hasher._combine(_:)(1u);
  if (v10 == 2)
  {
    v18 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v18 = v10 & 1;
  }

  Hasher._combine(_:)(v18);
  if (v11)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v11 + 16));
    v19 = *(v11 + 16);
    if (v19)
    {
      v20 = v11 + 40;
      do
      {

        String.hash(into:)();

        v20 += 16;
        --v19;
      }

      while (v19);
    }

    v41 = v17;
    if (v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v41 = v17;
    if (v12)
    {
LABEL_17:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_20;
    }
  }

  Hasher._combine(_:)(0);
LABEL_20:
  v6 = v45;
  if (v13)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v37)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v37, v21, v22, v23, v24, v25, v26);
    if (v14)
    {
      goto LABEL_25;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v14)
    {
LABEL_25:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v14, v27, v28, v29, v30, v31, v32);
      if (v38)
      {
        goto LABEL_26;
      }

      goto LABEL_37;
    }
  }

  Hasher._combine(_:)(0);
  if (v38)
  {
LABEL_26:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v38 + 1))
    {
      goto LABEL_27;
    }

    goto LABEL_38;
  }

LABEL_37:
  Hasher._combine(_:)(0);
  if (*(&v38 + 1))
  {
LABEL_27:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v40)
    {
      goto LABEL_28;
    }

    goto LABEL_39;
  }

LABEL_38:
  Hasher._combine(_:)(0);
  if (v40)
  {
LABEL_28:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v40 + 1))
    {
      goto LABEL_29;
    }

    goto LABEL_40;
  }

LABEL_39:
  Hasher._combine(_:)(0);
  if (*(&v40 + 1))
  {
LABEL_29:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v42)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

LABEL_40:
  Hasher._combine(_:)(0);
  if (v42)
  {
LABEL_30:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    v33 = v44;
    if (*(&v42 + 1))
    {
      goto LABEL_31;
    }

    goto LABEL_42;
  }

LABEL_41:
  Hasher._combine(_:)(0);
  v33 = v44;
  if (*(&v42 + 1))
  {
LABEL_31:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, *(&v42 + 1));
    v34 = v16;
    if (v15)
    {
      goto LABEL_32;
    }

    goto LABEL_43;
  }

LABEL_42:
  Hasher._combine(_:)(0);
  v34 = v16;
  if (v15)
  {
LABEL_32:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v15);
    if (v43)
    {
      goto LABEL_33;
    }

LABEL_44:
    Hasher._combine(_:)(0);
    if (v33 == 2)
    {
      goto LABEL_34;
    }

LABEL_45:
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v33 & 1);
    goto LABEL_46;
  }

LABEL_43:
  Hasher._combine(_:)(0);
  if (!v43)
  {
    goto LABEL_44;
  }

LABEL_33:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (v33 != 2)
  {
    goto LABEL_45;
  }

LABEL_34:
  Hasher._combine(_:)(0);
LABEL_46:
  if (v39 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v39 & 1);
  }

  if (v34 == 2)
  {
    v35 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v35 = v34 & 1;
  }

  Hasher._combine(_:)(v35);
  if (v41 == 2)
  {
    v36 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v36 = v41 & 1;
  }

  Hasher._combine(_:)(v36);
  outlined destroy of LocalePreferences?(&v46);
LABEL_56:
  Hasher._combine(_:)(v6);
}

uint64_t Date.ComponentsFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation4DateV21ComponentsFormatStyleV10CodingKeys33_A95AAD4BE9B9AA48B183E68E3F6B3AACLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.ComponentsFormatStyle.CodingKeys and conformance Date.ComponentsFormatStyle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v19 = 0;
    lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Style and conformance Date.ComponentsFormatStyle.Style();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy10Foundation4DateV21ComponentsFormatStyleV5FieldVGMd);
    v19 = 1;
    lazy protocol witness table accessor for type Set<Date.ComponentsFormatStyle.Field> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<Date.ComponentsFormatStyle.Field> and conformance <> Set<A>, lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10 = v17;
    v19 = 2;
    lazy protocol witness table accessor for type Calendar and conformance Calendar();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v17;
    v19 = 3;
    lazy protocol witness table accessor for type Locale and conformance Locale();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v17;
    LOBYTE(v17) = 4;
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v12 = v15;
    v11 = v16;
    v13 = v18 & 1;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 32) = v12;
    *(a2 + 48) = v13;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance Date.ComponentsFormatStyle@<X0>(double *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Date.ComponentsFormatStyle.format(_:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t protocol witness for FormatStyle.locale(_:) in conformance Date.ComponentsFormatStyle@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 48);
  *a2 = *v2;
  *(a2 + 8) = v5;
  *(a2 + 16) = *(v2 + 16);
  *(a2 + 48) = v6;

  swift_unknownObjectRetain();
  *(a2 + 32) = *a1;

  return swift_unknownObjectRetain();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.ComponentsFormatStyle()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 3);
  v4 = *(v0 + 5);
  v5 = v0[48];
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    specialized Set.hash(into:)(v54, v2);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  ObjectType = swift_getObjectType();
  (*(v3 + 120))(v54, ObjectType, v3);
  v7 = swift_getObjectType();
  if ((*(v4 + 48))(v7, v4))
  {
    v8 = 1;
LABEL_8:
    Hasher._combine(_:)(v8);
    goto LABEL_59;
  }

  Hasher._combine(_:)(0);
  (*(v4 + 64))(v7, v4);
  String.hash(into:)();

  (*(v4 + 464))(&v44, v7, v4);
  v52[6] = v50;
  v53[0] = *v51;
  *(v53 + 12) = *&v51[12];
  v52[2] = v46;
  v52[3] = v47;
  v52[4] = v48;
  v52[5] = v49;
  v52[0] = v44;
  v52[1] = v45;
  if (_s10Foundation17LocalePreferencesVSgWOg(v52) == 1)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v9 = v44;
  v10 = *(&v44 + 1);
  v11 = *(&v45 + 1);
  v12 = *(&v46 + 1);
  v13 = v47;
  v39 = v48;
  v14 = v49;
  v40 = v50;
  v15 = *v51;
  v16 = v51[24];
  v41 = *&v51[16];
  v42 = v51[25];
  v43 = v51[26];
  v17 = v51[27];
  Hasher._combine(_:)(1u);
  if (v9 == 2)
  {
    v18 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v18 = v9 & 1;
  }

  v19 = v5;
  Hasher._combine(_:)(v18);
  if (v10)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v10 + 16));
    v20 = *(v10 + 16);
    if (v20)
    {
      v21 = v10 + 40;
      do
      {

        String.hash(into:)();

        v21 += 16;
        --v20;
      }

      while (v20);
    }

    if (v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v11)
    {
LABEL_17:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_20;
    }
  }

  Hasher._combine(_:)(0);
LABEL_20:
  if (v12)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v5 = v19;
  if (v13)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v54, v13, v22, v23, v24, v25, v26, v27);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(&v13 + 1))
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v54, *(&v13 + 1), v28, v29, v30, v31, v32, v33);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v39)
  {
    v34 = v16;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v39 + 1))
    {
LABEL_31:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      goto LABEL_34;
    }
  }

  else
  {
    v34 = v16;
    Hasher._combine(_:)(0);
    if (*(&v39 + 1))
    {
      goto LABEL_31;
    }
  }

  Hasher._combine(_:)(0);
LABEL_34:
  if (v14)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(&v14 + 1))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v40)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v40 + 1))
    {
      goto LABEL_42;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(&v40 + 1))
    {
LABEL_42:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v54, *(&v40 + 1));
      if (v15)
      {
        goto LABEL_43;
      }

      goto LABEL_50;
    }
  }

  Hasher._combine(_:)(0);
  if (v15)
  {
LABEL_43:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v54, v15);
    v35 = v17;
    if (v41)
    {
      goto LABEL_44;
    }

    goto LABEL_51;
  }

LABEL_50:
  Hasher._combine(_:)(0);
  v35 = v17;
  if (v41)
  {
LABEL_44:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v34 == 2)
    {
      goto LABEL_45;
    }

    goto LABEL_52;
  }

LABEL_51:
  Hasher._combine(_:)(0);
  if (v34 == 2)
  {
LABEL_45:
    Hasher._combine(_:)(0);
    if (v42 != 2)
    {
      goto LABEL_46;
    }

LABEL_53:
    Hasher._combine(_:)(0);
    if (v43 != 2)
    {
      goto LABEL_47;
    }

LABEL_54:
    v36 = 0;
    goto LABEL_55;
  }

LABEL_52:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v34 & 1);
  if (v42 == 2)
  {
    goto LABEL_53;
  }

LABEL_46:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v42 & 1);
  if (v43 == 2)
  {
    goto LABEL_54;
  }

LABEL_47:
  Hasher._combine(_:)(1u);
  v36 = v43 & 1;
LABEL_55:
  Hasher._combine(_:)(v36);
  if (v35 == 2)
  {
    v37 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v37 = v35 & 1;
  }

  Hasher._combine(_:)(v37);
  outlined destroy of LocalePreferences?(&v44);
LABEL_59:
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t static FormatStyle<>.components(style:fields:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v7 = _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  type metadata accessor for _CalendarAutoupdating();
  v8 = swift_initStaticObject();
  v9 = _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type _CalendarAutoupdating and conformance _CalendarAutoupdating, type metadata accessor for _CalendarAutoupdating);
  *(a3 + 48) = 1;
  *a3 = v5;
  *(a3 + 8) = a2;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = inited;
  *(a3 + 40) = v7;
}

uint64_t static FormatStyle<>.timeDuration.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v3 = _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  type metadata accessor for _CalendarAutoupdating();
  v4 = swift_initStaticObject();
  result = _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type _CalendarAutoupdating and conformance _CalendarAutoupdating, type metadata accessor for _CalendarAutoupdating);
  *(a1 + 48) = 1;
  *a1 = 5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  *(a1 + 24) = result;
  *(a1 + 32) = inited;
  *(a1 + 40) = v3;
  return result;
}

void Date.ComponentsFormatStyle.discreteInput(before:)(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(v2 + 8);
  v7 = *(v2 + 48);
  if (*(v2 + 48))
  {
    v8 = *a1;
  }

  else
  {
    v8 = a1[1];
  }

  if (*(v2 + 48))
  {
    v9 = a1[1];
  }

  else
  {
    v9 = *a1;
  }

  LOBYTE(v14) = *v2;
  v15 = v6;
  v10 = *(v2 + 32);
  v16 = *(v2 + 16);
  v17 = v10;
  v18 = v7;
  v12 = v8;
  v13 = v9;
  Date.ComponentsFormatStyle.bound(for:relativeTo:movingDown:countingTowardZero:)(&v13, &v12, 1, v7, &v19);
  if (v20 == 2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    return;
  }

  v11 = v19;
  if (v20)
  {
    v14 = v19;
    Date.nextUdateDown.getter(&v19);
    v11 = v19;
  }

  if (v7)
  {
    if (v11 < v4)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 1;
      return;
    }

    *a2 = v4;
    *(a2 + 8) = v11;
    goto LABEL_17;
  }

  if (v5 >= v11)
  {
    *a2 = v11;
    *(a2 + 8) = v5;
LABEL_17:
    *(a2 + 16) = 0;
    return;
  }

  __break(1u);
}

uint64_t Date.ComponentsFormatStyle.bound(for:relativeTo:movingDown:countingTowardZero:)@<X0>(double *a1@<X0>, double *a2@<X1>, char a3@<W2>, char a4@<W3>, double *a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  v12 = *(v5 + 40);
  v13 = *(v5 + 48);
  LOBYTE(__dst[0]) = *v5;
  __dst[1] = v10;
  __dst[2] = v11;
  v80 = v11;
  v77 = *(v5 + 24);
  *&__dst[3] = v77;
  __dst[5] = v12;
  LOBYTE(__dst[6]) = v13;
  v14 = Date.ComponentsFormatStyle.usedFields()();
  v15 = *(v14 + 16);
  if (!v15)
  {

LABEL_67:
    *a5 = 0.0;
    v64 = 2;
    goto LABEL_68;
  }

  v75 = a3;
  v76 = a5;
  v16 = 0;
  v78 = v14;
  v17 = (v14 + 32);
  v18 = *(v14 + 32 + v15 - 1);
  v19 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  do
  {
    v23 = *(&outlined read-only object #0 of static Date.ComponentsFormatStyle.Field.Option.allCases.getter + v16 + 32);
    if (v18 < v23)
    {
      __dst[0] = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1);
        v20 = __dst[0];
      }

      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v20 = __dst[0];
      }

      *(v20 + 16) = v22 + 1;
      *(v20 + v22 + 32) = v23;
    }

    ++v16;
  }

  while (v16 != 7);
  v24 = *(v20 + 16);
  if (v24)
  {
    __dst[0] = v19;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
    v25 = 32;
    v26 = v19;
    do
    {
      v27 = *(v20 + v25);
      __dst[0] = v26;
      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      if (v29 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
        v26 = __dst[0];
      }

      *(v26 + 16) = v29 + 1;
      *(v26 + v29 + 32) = 0x60504030A0201uLL >> (8 * v27);
      ++v25;
      --v24;
    }

    while (v24);
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  __dst[0] = v26;
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of Date.ComponentsFormatStyle.bound(for:relativeTo:movingDown:countingTowardZero:));
  v31 = v26;
  v32 = v78;
  v33 = *(v78 + 16);
  if (v33)
  {
    __dst[0] = v19;
    swift_unknownObjectRetain();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33, 0);
    do
    {
      v35 = *v17++;
      v34 = v35;
      __dst[0] = v19;
      v37 = *(v19 + 16);
      v36 = *(v19 + 24);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        v19 = __dst[0];
      }

      *(v19 + 16) = v38;
      *(v19 + v37 + 32) = 0x60504030A0201uLL >> (8 * v34);
      --v33;
    }

    while (v33);
    v32 = v78;
  }

  else
  {
    swift_unknownObjectRetain();
    v38 = *(v19 + 16);
  }

  v39 = lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component();
  v40 = MEMORY[0x1865CB700](v38, &type metadata for Calendar.Component, v39);
  __dst[0] = v40;
  v41 = *(v19 + 16);
  if (v41)
  {
    v42 = 32;
    do
    {
      specialized Set._Variant.insert(_:)(&v82, *(v19 + v42++));
      --v41;
    }

    while (v41);

    v43 = __dst[0];
  }

  else
  {
    v43 = v40;
  }

  v45 = specialized Set.union<A>(_:)(v44, v43);

  Calendar.ComponentSet.init(_:)(v46, __dst);
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v47 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v9)
  {
    v48 = v9;
  }

  else
  {
    v48 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v48)
  {
    v48 = *&static Date.validCalendarRange;
  }

  v82 = v48;
  if (*(&static Date.validCalendarRange + 1) >= v8)
  {
    v47 = v8;
  }

  if (*&static Date.validCalendarRange >= v47)
  {
    v49 = *&static Date.validCalendarRange;
  }

  else
  {
    v49 = v47;
  }

  ObjectType = swift_getObjectType();
  v84 = v49;
  (*(v77 + 208))(__src, __dst, &v82, &v84, ObjectType, v77);
  v51 = specialized Set.contains(_:)(0xEu, v45);

  if (v51)
  {
    __src[0] = v80;
    __src[1] = v77;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (__src[2])
    {
      if (v80)
      {
        __dst[0] = __src[2];
        __dst[1] = __src[3];
        swift_unknownObjectRetain();
        Calendar.timeZone.setter(__dst);
      }
    }
  }

  v52 = swift_allocObject();
  memcpy((v52 + 16), __src, 0x11BuLL);
  if ((a4 & 1) != 0 && (specialized Sequence.contains(where:)(v31, (v52 + 16)) & 1) == 0)
  {

    result = swift_unknownObjectRelease();
    a5 = v76;
    *v76 = v8;
    v64 = 1;
    goto LABEL_68;
  }

  v53 = *(v31 + 16);
  if (v53)
  {
    v54 = (v31 + 32);
    do
    {
      v55 = *v54++;
      LOBYTE(__dst[0]) = v55;
      v86.value = 0;
      v86.is_nil = 0;
      DateComponents.setValue(_:for:)(v86, __dst);
      --v53;
    }

    while (v53);
  }

  v56 = swift_allocObject();
  v57 = v56;
  *(v56 + 16) = 2;
  if (a4 & 1) == 0 || (getter of countingPastZero #1 in Date.ComponentsFormatStyle.bound(for:relativeTo:movingDown:countingTowardZero:)(v56, v32, v52))
  {
    v58 = (v52 + 256);
    v59 = (v52 + 264);
    v60 = (v52 + 152);
    v61 = (v52 + 144);
    if (v18 != 5)
    {
      v61 = (v52 + 160);
      v60 = (v52 + 168);
    }

    v62 = v52 + 104;
    v63 = v52 + 96;
    if (v18 != 3)
    {
      v63 = v52 + 128;
      v62 = v52 + 136;
    }

    if (v18 <= 4)
    {
      v61 = v63;
      v60 = v62;
    }

    if (v18 == 1)
    {
      v58 = (v52 + 80);
      v59 = (v52 + 88);
    }

    if (!v18)
    {
      v58 = (v52 + 64);
      v59 = (v52 + 72);
    }

    if (v18 > 2)
    {
      v58 = v61;
      v59 = v60;
    }

    if (*v59)
    {
      goto LABEL_66;
    }

    v65 = *v58;
    if (v75)
    {
      v66.value = v65 - 1;
      if (!__OFSUB__(v65, 1))
      {
        goto LABEL_74;
      }
    }

    else
    {
      v66.value = v65 + 1;
      if (!__OFADD__(v65, 1))
      {
LABEL_74:
        LOBYTE(__dst[0]) = 0x60504030A0201uLL >> (8 * v18);
        v66.is_nil = 0;
        DateComponents.setValue(_:for:)(v66, __dst);
        goto LABEL_75;
      }
    }

LABEL_66:

    swift_unknownObjectRelease();

    a5 = v76;
    goto LABEL_67;
  }

LABEL_75:
  memcpy(__dst, (v52 + 16), 0x11BuLL);
  v67 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v9)
  {
    v67 = v9;
  }

  if (*&static Date.validCalendarRange >= v67)
  {
    v67 = *&static Date.validCalendarRange;
  }

  v84 = v67;
  (*(v77 + 200))(&v82, __dst, &v84, 0, ObjectType, v77);
  swift_unknownObjectRelease();
  if ((v83 & 1) == 0)
  {
    v69 = v82;
    v70 = v82;
    if (a4)
    {
      v71 = getter of countingPastZero #1 in Date.ComponentsFormatStyle.bound(for:relativeTo:movingDown:countingTowardZero:)(v57, v32, v52);

      v72 = v71 ^ 1;
      if ((v71 & 1) == 0)
      {
        a5 = v76;
        v73 = v75;
        if (v8 == v70)
        {
          goto LABEL_92;
        }

        goto LABEL_89;
      }
    }

    else
    {

      v72 = 0;
    }

    a5 = v76;
    v73 = v75;
LABEL_89:
    v74 = v8 < v70;
    if (v73)
    {
      v74 = v8 > v70;
    }

    if (!v74)
    {
      goto LABEL_67;
    }

LABEL_92:
    v64 = v72 & 1;
    *a5 = v69;
    goto LABEL_68;
  }

  v68 = 0x422D63C37F000000;
  if (v75)
  {
    v68 = 0xC22D63C8C5000000;
  }

  a5 = v76;
  *v76 = v68;
  v64 = 1;
LABEL_68:
  *(a5 + 8) = v64;
  return result;
}

void Date.nextUdateDown.getter(double *a1@<X8>)
{
  v2 = (*v1 + 978307200.0) * -1000.0;
  v3 = v2 + 0.0;
  if (v2 != INFINITY)
  {
    *&v3 += (*&v3 >> 63) | 1;
  }

  v4 = -v3;
  v5 = v3 / -1000.0;
  if (v5 * 1000.0 > v4)
  {
    v6 = 0.0 - v5;
    if (v6 != INFINITY)
    {
      *&v6 += (*&v6 >> 63) | 1;
    }

    v5 = -v6;
  }

  v7 = v5 + -978307200.0;
  if (v5 < v5 + -978307200.0 + 978307200.0)
  {
    v8 = 0.0 - v7;
    if (0.0 - v7 != INFINITY)
    {
      *&v8 += (*&v8 >> 63) | 1;
    }

    v7 = -v8;
  }

  *a1 = v7;
}

void Date.ComponentsFormatStyle.discreteInput(after:)(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(v2 + 8);
  v7 = *(v2 + 48);
  if (*(v2 + 48))
  {
    v8 = *a1;
  }

  else
  {
    v8 = a1[1];
  }

  if (*(v2 + 48))
  {
    v9 = a1[1];
  }

  else
  {
    v9 = *a1;
  }

  LOBYTE(v14) = *v2;
  v15 = v6;
  v10 = *(v2 + 32);
  v16 = *(v2 + 16);
  v17 = v10;
  v18 = v7;
  v12 = v8;
  v13 = v9;
  Date.ComponentsFormatStyle.bound(for:relativeTo:movingDown:countingTowardZero:)(&v13, &v12, 0, v7 ^ 1, &v19);
  if (v20 == 2)
  {
    goto LABEL_8;
  }

  v11 = v19;
  if (v20)
  {
    v14 = v19;
    Date.nextUdateUp.getter(&v19);
    v11 = v19;
  }

  if (!v7)
  {
    if (v5 < v11)
    {
LABEL_8:
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 1;
      return;
    }

    *a2 = v11;
    *(a2 + 8) = v5;
    goto LABEL_16;
  }

  if (v11 >= v4)
  {
    *a2 = v4;
    *(a2 + 8) = v11;
LABEL_16:
    *(a2 + 16) = 0;
    return;
  }

  __break(1u);
}

void Date.nextUdateUp.getter(double *a1@<X8>)
{
  v2 = (*v1 + 978307200.0) * 1000.0;
  v3 = v2 + 0.0;
  if (v2 != INFINITY)
  {
    *&v3 += (*&v3 >> 63) | 1;
  }

  v4 = v3 / 1000.0;
  if (v3 / 1000.0 * 1000.0 >= v3)
  {
    v5 = v3 / 1000.0;
  }

  else
  {
    v5 = v4 + 0.0;
    if (v4 != INFINITY)
    {
      *&v5 += (*&v5 >> 63) | 1;
    }
  }

  v6 = v5 + -978307200.0;
  if (v5 + -978307200.0 != INFINITY && v6 + 978307200.0 < v5)
  {
    *&v6 += (*&v6 >> 63) | 1;
  }

  *a1 = v6;
}

double *Date.ComponentsFormatStyle.input(before:)@<X0>(double *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = 0.0 - *result;
  if (v4 != INFINITY)
  {
    *&v4 += (*&v4 >> 63) | 1;
  }

  v5 = result[1];
  v6 = (v3 + 978307200.0) * -1000.0;
  v7 = v6 + 0.0;
  if (v6 != INFINITY)
  {
    *&v7 += (*&v7 >> 63) | 1;
  }

  v8 = 0.0 - v5;
  if (0.0 - v5 != INFINITY)
  {
    *&v8 += (*&v8 >> 63) | 1;
  }

  v9 = fabs(v3 + v4);
  v10 = vabdd_f64(v3, v7 / -1000.0 + -978307200.0);
  v11 = fabs(v5 + v8);
  v12 = (v5 + 978307200.0) * -1000.0;
  v13 = v12 + 0.0;
  if (v12 != INFINITY)
  {
    *&v13 += (*&v13 >> 63) | 1;
  }

  v14 = (v9 + v10 + v11 + vabdd_f64(v5, v13 / -1000.0 + -978307200.0)) * 4.0;
  if (*(v2 + 48))
  {
    v5 = v5 - v14;
    if (v5 < v3)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 1;
      return result;
    }

    goto LABEL_13;
  }

  v3 = v3 - v14;
  if (v5 >= v3)
  {
LABEL_13:
    *a2 = v3;
    *(a2 + 8) = v5;
    *(a2 + 16) = 0;
    return result;
  }

  __break(1u);
  return result;
}

double *Date.ComponentsFormatStyle.input(after:)@<X0>(double *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = 0.0 - *result;
  if (v4 != INFINITY)
  {
    *&v4 += (*&v4 >> 63) | 1;
  }

  v5 = result[1];
  v6 = (v3 + 978307200.0) * -1000.0;
  v7 = v6 + 0.0;
  if (v6 != INFINITY)
  {
    *&v7 += (*&v7 >> 63) | 1;
  }

  v8 = 0.0 - v5;
  if (0.0 - v5 != INFINITY)
  {
    *&v8 += (*&v8 >> 63) | 1;
  }

  v9 = fabs(v3 + v4);
  v10 = vabdd_f64(v3, v7 / -1000.0 + -978307200.0);
  v11 = fabs(v5 + v8);
  v12 = (v5 + 978307200.0) * -1000.0;
  v13 = v12 + 0.0;
  if (v12 != INFINITY)
  {
    *&v13 += (*&v13 >> 63) | 1;
  }

  v14 = (v9 + v10 + v11 + vabdd_f64(v5, v13 / -1000.0 + -978307200.0)) * 4.0;
  if (*(v2 + 48))
  {
    v5 = v5 + v14;
    if (v5 >= v3)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v3 = v3 + v14;
  if (v5 < v3)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    return result;
  }

LABEL_14:
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  return result;
}

uint64_t Date.ComponentsFormatStyle.usedFields()()
{
  v1 = 0;
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = v3 + 56;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = *(&outlined read-only object #0 of static Date.ComponentsFormatStyle.Field.Option.allCases.getter + v1 + 32);
    if (v3)
    {
      if (!*(v3 + 16))
      {
        goto LABEL_5;
      }

      Hasher.init(_seed:)();
      MEMORY[0x1865CD060](v8);
      v9 = Hasher._finalize()();
      v10 = -1 << *(v3 + 32);
      v11 = v9 & ~v10;
      if (((*(v4 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }

      v12 = ~v10;
      while (*(*(v3 + 48) + v11) != v8)
      {
        v11 = (v11 + 1) & v12;
        if (((*(v4 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_5;
        }
      }
    }

    else if (v2 == 5 && (v8 - 4) > 2)
    {
      goto LABEL_5;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
    }

    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    if (v7 >= v6 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
    }

    *(v5 + 16) = v7 + 1;
    *(v5 + v7 + 32) = v8;
LABEL_5:
    ++v1;
  }

  while (v1 != 7);
  return v5;
}

uint64_t getter of countingPastZero #1 in Date.ComponentsFormatStyle.bound(for:relativeTo:movingDown:countingTowardZero:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 == 2)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = (a2 + 32);
      v6 = *(a3 + 64);
      v7 = *(a3 + 72);
      v8 = *(a3 + 80);
      v9 = *(a3 + 88);
      v10 = *(a3 + 96);
      v11 = *(a3 + 104);
      v12 = *(a3 + 128);
      v13 = *(a3 + 136);
      v14 = *(a3 + 144);
      v15 = *(a3 + 152);
      v16 = *(a3 + 160);
      v17 = *(a3 + 168);
      v18 = *(a3 + 256);
      v19 = v4 - 1;
      v20 = *(a3 + 264);
      do
      {
        v22 = *v5++;
        v21 = v22;
        v23 = v22 == 5;
        if (v22 == 5)
        {
          v24 = v14;
        }

        else
        {
          v24 = v16;
        }

        if (v23)
        {
          v25 = v15;
        }

        else
        {
          v25 = v17;
        }

        if (v21 == 3)
        {
          v26 = v10;
        }

        else
        {
          v26 = v12;
        }

        if (v21 == 3)
        {
          v27 = v11;
        }

        else
        {
          v27 = v13;
        }

        if (v21 <= 4)
        {
          v24 = v26;
          v25 = v27;
        }

        if (v21 == 1)
        {
          v28 = v8;
        }

        else
        {
          v28 = v18;
        }

        if (v21 == 1)
        {
          v29 = v9;
        }

        else
        {
          v29 = v20;
        }

        if (!v21)
        {
          v28 = v6;
          v29 = v7;
        }

        v30 = v21 <= 2;
        if (v21 <= 2)
        {
          v31 = v28;
        }

        else
        {
          v31 = v24;
        }

        if (v30)
        {
          v32 = v29;
        }

        else
        {
          v32 = v25;
        }

        if (v31)
        {
          v3 = v32;
        }

        else
        {
          v3 = 1;
        }

        v34 = v19-- != 0;
      }

      while (v3 == 1 && v34);
    }

    else
    {
      LOBYTE(v3) = 1;
    }

    *(a1 + 16) = v3;
  }

  return v3 & 1;
}

void *partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v5 + 16);
  v8[0] = *v5;
  v8[1] = v6;
  v8[2] = *(v5 + 32);
  v9 = *(v5 + 48);
  result = specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, v8);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t specialized static Date.ComponentsFormatStyle.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v22 = v2;
  v23 = v3;
  v5 = *(a1 + 1);
  v7 = *(a1 + 1);
  v6 = *(a1 + 2);
  v8 = a1[48];
  v9 = *(a2 + 1);
  v10 = *(a2 + 1);
  v11 = a2[48];
  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    v17 = v6;
    v18 = *(a2 + 2);
    v19 = *(a2 + 1);
    v16 = v7;
    v12 = _sSh2eeoiySbShyxG_ABtFZs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_Tt1g5(v5, v9);
    v7 = v16;
    v10 = v19;
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v17 = v6;
    v18 = *(a2 + 2);
    if (v9)
    {
      return 0;
    }
  }

  v20 = v10;
  v21 = v7;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14 = specialized static Calendar.== infix(_:_:)(&v21, &v20);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v21 = v17;
  v20 = v18;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v15 = specialized static Locale.== infix(_:_:)(&v21, &v20);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v15)
  {
    return v8 ^ v11 ^ 1u;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type Date.ComponentsFormatStyle.CodingKeys and conformance Date.ComponentsFormatStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.CodingKeys and conformance Date.ComponentsFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.CodingKeys and conformance Date.ComponentsFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.CodingKeys and conformance Date.ComponentsFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.CodingKeys and conformance Date.ComponentsFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.CodingKeys and conformance Date.ComponentsFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.CodingKeys and conformance Date.ComponentsFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.CodingKeys and conformance Date.ComponentsFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.CodingKeys and conformance Date.ComponentsFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.CodingKeys and conformance Date.ComponentsFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.CodingKeys and conformance Date.ComponentsFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.CodingKeys and conformance Date.ComponentsFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.CodingKeys and conformance Date.ComponentsFormatStyle.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Style and conformance Date.ComponentsFormatStyle.Style()
{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style and conformance Date.ComponentsFormatStyle.Style;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style and conformance Date.ComponentsFormatStyle.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style and conformance Date.ComponentsFormatStyle.Style);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style and conformance Date.ComponentsFormatStyle.Style;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style and conformance Date.ComponentsFormatStyle.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style and conformance Date.ComponentsFormatStyle.Style);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style and conformance Date.ComponentsFormatStyle.Style;
  if (!lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style and conformance Date.ComponentsFormatStyle.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style and conformance Date.ComponentsFormatStyle.Style);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Date.ComponentsFormatStyle(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle();
  a1[2] = lazy protocol witness table accessor for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle();
  result = lazy protocol witness table accessor for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle();
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Date.ComponentsFormatStyle(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Date.ComponentsFormatStyle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Date.ComponentsFormatStyle(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type [Date.ComponentsFormatStyle.Field.Option] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Date.ComponentsFormatStyle.Field.Option] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Date.ComponentsFormatStyle.Field.Option] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4DateV21ComponentsFormatStyleV5FieldV6OptionOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Date.ComponentsFormatStyle.Field.Option] and conformance [A]);
  }

  return result;
}

uint64_t specialized Set.union<A>(_:)(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      specialized Set._Variant.insert(_:)(&v6, v4);
      --v2;
    }

    while (v2);
    return v7;
  }

  return a2;
}

unint64_t specialized Date.ComponentsFormatStyle.Field.Option.init(rawValue:)(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

uint64_t specialized Date.ComponentsFormatStyle.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73646C656966 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x697469736F507369 && a2 == 0xEA00000000006576)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t amfi_launch_constraint_set_spawnattr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && (a3 - 1) <= 0x3FFE)
  {
    return MEMORY[0x1EEE72EF0]();
  }

  else
  {
    return 22;
  }
}

void sub_181025988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose((v3 - 128), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_181026030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_181027D7C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    [v1 invalidate];
  }

  _Unwind_Resume(exception_object);
}

BOOL equalCString(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return *a2 == 0;
  }

  v3 = a1 + 1;
  while (v2 == *a2)
  {
    ++a2;
    v4 = *v3++;
    v2 = v4;
    if (!v4)
    {
      return *a2 == 0;
    }
  }

  return 0;
}

uint64_t hashCString_old(const char *a1)
{
  v2 = strlen(a1);

  return MEMORY[0x1EEDB7AB0](a1, v2);
}

uint64_t _encodeCString(void *a1, char *__s)
{
  v7 = *MEMORY[0x1E69E9840];
  if (__s)
  {
    v4 = strlen(__s);
    _encodeInt(a1, v4);

    return [a1 appendBytes:__s length:v4];
  }

  else
  {
    v6 = -123;
    return [a1 appendBytes:&v6 length:1];
  }
}

uint64_t _encodeInt(void *a1, int a2)
{
  v2 = a1;
  v9 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if ((a2 + 110) > 0xED)
  {
    if ((a2 + 0x7FFF) > 0xFFFE)
    {
      LOBYTE(v6) = -126;
      [a1 appendBytes:&v6 length:1];
      v3 = &v7;
      a1 = v2;
      v4 = 4;
    }

    else
    {
      v6 = a2;
      v8 = -127;
      [a1 appendBytes:&v8 length:1];
      v3 = &v6;
      a1 = v2;
      v4 = 2;
    }
  }

  else
  {
    LOBYTE(v6) = a2;
    v3 = &v6;
    v4 = 1;
  }

  return [a1 appendBytes:v3 length:v4];
}

void _encodeOrReuseCString(void *a1, char *a2, CFDictionaryRef theDict)
{
  v8 = *MEMORY[0x1E69E9840];
  value = 0;
  if (a2)
  {
    if (CFDictionaryGetValueIfPresent(theDict, a2, &value))
    {
      _encodeInt(a1, value);
    }

    else
    {
      value = (CFDictionaryGetCount(theDict) - 110);
      v7 = -124;
      [a1 appendBytes:&v7 length:1];
      _encodeCString(a1, a2);
      CFDictionarySetValue(theDict, a2, value);
    }
  }

  else
  {
    v7 = -123;
    [a1 appendBytes:&v7 length:1];
  }
}

const char *_encodeValueOfObjCType(uint64_t a1, unsigned __int8 *a2, objc_class **a3)
{
  sizep[1] = *MEMORY[0x1E69E9840];
  v7 = (a2 + 1);
  v6 = *a2;
  if (v6 > 0x50)
  {
    if (*a2 <= 0x65u)
    {
      if (*a2 > 0x5Au)
      {
        if (v6 == 91)
        {
          sizep[0] = 0;
          v27 = *v7;
          if ((v27 - 48) > 9)
          {
            v32 = NSGetSizeAndAlignment(v7, sizep, 0);
          }

          else
          {
            v28 = 0;
            do
            {
              v29 = v28;
              v30 = v27 - 48;
              v31 = *++v7;
              LOBYTE(v27) = v31;
              v28 = 10 * v28 + v30;
            }

            while ((v31 - 48) < 0xA);
            v32 = NSGetSizeAndAlignment(v7, sizep, 0);
            if (v28)
            {
              v33 = 0;
              v34 = 10 * v29 + v30;
              do
              {
                _encodeValueOfObjCType(a1, v7, a3 + sizep[0] * v33++);
              }

              while (v34 != v33);
            }
          }

          v40 = *v32;
          if (v40 != 93)
          {
            v42 = "missing ']' in type descriptor";
            goto LABEL_113;
          }

          return v32 + 1;
        }

        if (v6 == 99)
        {
          goto LABEL_50;
        }

        if (v6 != 100)
        {
LABEL_112:
          v40 = v6;
          v42 = "unknown type descriptor";
LABEL_113:
          typeDescriptorError(v40, a2, v42);
        }

        v13 = *(a1 + 8);
        if (!v13)
        {
          return v7;
        }

        v14 = *a3;
        if (*a3 >= -2147483650.0 && v14 < 2147483650.0)
        {
          v16 = v14;
        }

        else
        {
          v16 = 0;
        }

        if (v14 == v16)
        {
LABEL_88:
          v18 = v13;
          goto LABEL_89;
        }

        sizep[0] = *a3;
        v17 = -125;
        goto LABEL_107;
      }

      if (v6 != 81)
      {
        if (v6 != 83)
        {
          goto LABEL_112;
        }

LABEL_57:
        v13 = *(a1 + 8);
        if (!v13)
        {
          return v7;
        }

        v24 = *a3;
        LOWORD(sizep[0]) = v24;
        if ((v24 + 110) <= 0xEDu)
        {
          LOBYTE(v43) = v24;
LABEL_63:
          v23 = &v43;
          v22 = v13;
          goto LABEL_64;
        }

        LOBYTE(v43) = -127;
        [v13 appendBytes:&v43 length:1];
        v23 = sizep;
LABEL_94:
        v22 = v13;
        v26 = 2;
        goto LABEL_108;
      }
    }

    else
    {
      if (*a2 <= 0x70u)
      {
        if (v6 != 102)
        {
          if (v6 != 105 && v6 != 108)
          {
            goto LABEL_112;
          }

LABEL_37:
          v18 = *(a1 + 8);
          if (!v18)
          {
            return v7;
          }

          v16 = *a3;
LABEL_89:
          _encodeInt(v18, v16);
          return v7;
        }

        v13 = *(a1 + 8);
        if (!v13)
        {
          return v7;
        }

        v37 = *a3;
        v38 = *a3;
        if (v38 >= -2147483650.0 && v38 < 2147483650.0)
        {
          v16 = v37;
        }

        else
        {
          v16 = 0;
        }

        if (v37 == v16)
        {
          goto LABEL_88;
        }

        LODWORD(sizep[0]) = *a3;
        LOBYTE(v43) = -125;
        [v13 appendBytes:&v43 length:1];
        v23 = sizep;
LABEL_105:
        v22 = v13;
        v26 = 4;
        goto LABEL_108;
      }

      if (v6 != 113)
      {
        if (v6 != 115)
        {
          if (v6 == 123)
          {
            v19 = skipAggregateName(a2 + 1);
            if (*v19 != 125)
            {
              v20 = 0;
              do
              {
                sizep[0] = 0;
                v43 = 0;
                NSGetSizeAndAlignment(v19, sizep, &v43);
                if ((v43 ^ 0x7FFFFFFFFFFFFFFFLL) < v20)
                {
                  extremeSize(v43 + v20);
                }

                if (v43)
                {
                  v21 = (v43 + v20 - 1) / v43 * v43;
                }

                else
                {
                  v21 = 0;
                }

                v19 = _encodeValueOfObjCType(a1, v19, a3 + v21);
                v20 = sizep[0] + v21;
              }

              while (*v19 != 125);
            }

            return (v19 + 1);
          }

          goto LABEL_112;
        }

        goto LABEL_57;
      }
    }

    v13 = *(a1 + 8);
    if (!v13)
    {
      return v7;
    }

    v25 = *a3;
    *sizep = v25;
    if ((*&v25 + 110) <= 0xED)
    {
      LOBYTE(v43) = LOBYTE(v25);
      goto LABEL_63;
    }

    if ((*&v25 + 0x7FFFLL) <= 0xFFFE)
    {
      LOWORD(v43) = LOWORD(v25);
      v44 = -127;
      [v13 appendBytes:&v44 length:{1, v43}];
      v23 = &v43;
      goto LABEL_94;
    }

    if ((*&v25 + 0x7FFFFFFFLL) <= 0xFFFFFFFE)
    {
      v44 = -126;
      [v13 appendBytes:&v44 length:{1, *&v25}];
      v23 = &v43;
      goto LABEL_105;
    }

    v17 = -121;
LABEL_107:
    LOBYTE(v43) = v17;
    [v13 appendBytes:&v43 length:1];
    v23 = sizep;
    v22 = v13;
    v26 = 8;
    goto LABEL_108;
  }

  if (*a2 <= 0x39u)
  {
    if (*a2 <= 0x24u)
    {
      if (v6 == 33)
      {
        return v7;
      }

      if (v6 == 35)
      {
        _encodeClass_old(a1, *a3);
        return v7;
      }
    }

    else
    {
      switch(v6)
      {
        case '%':
          v10 = *(a1 + 8);
          if (!v10)
          {
            return v7;
          }

          Name = *a3;
LABEL_100:
          v11 = *(a1 + 24);
          goto LABEL_101;
        case '(':
          sizep[0] = 0;
          v35 = skipAggregateName(a2 + 1);
          v7 = NSGetSizeAndAlignment(v35 - 1, sizep, 0);
          if (sizep[0])
          {
            v36 = 0;
            do
            {
              _encodeValueOfObjCType(a1, "C", a3 + v36++);
            }

            while (v36 < sizep[0]);
          }

          return v7;
        case '*':
          v8 = *(a1 + 8);
          if (!v8)
          {
            return v7;
          }

          v9 = *a3;
          if (!_encodePointerIfNew(v8, *a3, *(a1 + 16)))
          {
            return v7;
          }

          v10 = *(a1 + 8);
          v11 = *(a1 + 24);
          Name = v9;
LABEL_101:
          _encodeOrReuseCString(v10, Name, v11);
          return v7;
      }
    }

    goto LABEL_112;
  }

  if (*a2 <= 0x42u)
  {
    if (v6 != 58)
    {
      if (v6 == 64)
      {
        _encodeObject_old(a1, *a3);
        return v7;
      }

      if (v6 != 66)
      {
        goto LABEL_112;
      }

      goto LABEL_50;
    }

    if (*a3)
    {
      Name = sel_getName(*a3);
    }

    else
    {
      Name = 0;
    }

    v10 = *(a1 + 8);
    if (!v10)
    {
      return v7;
    }

    goto LABEL_100;
  }

  if (v6 != 67)
  {
    if (v6 != 73 && v6 != 76)
    {
      goto LABEL_112;
    }

    goto LABEL_37;
  }

LABEL_50:
  v22 = *(a1 + 8);
  if (v22)
  {
    LOBYTE(sizep[0]) = *a3;
    v23 = sizep;
LABEL_64:
    v26 = 1;
LABEL_108:
    [v22 appendBytes:v23 length:{v26, v43}];
  }

  return v7;
}

uint64_t _encodeObject_old(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 8);
  if (v5)
  {
    result = _encodePointerIfNew(v5, a2, *(a1 + 16));
    if (result)
    {
      v7 = _replacementObjectForObject(a1, a2);
      _encodeClass_old(a1, [v7 classForArchiver]);
      [v7 encodeWithCoder:a1];
      v8 = *(a1 + 8);
      v10 = -122;
      return [v8 appendBytes:&v10 length:1];
    }
  }

  else
  {
    result = _replacementObjectForObject(a1, a2);
    if (result)
    {
      v9 = result;
      result = CFSetContainsValue(*(a1 + 32), result);
      if (!result)
      {
        CFSetAddValue(*(a1 + 32), v9);

        return [v9 encodeWithCoder:a1];
      }
    }
  }

  return result;
}

const void *_replacementObjectForObject(uint64_t a1, void *key)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v4 = *(a1 + 48);
  if (!v4)
  {
    goto LABEL_4;
  }

  if (!CFDictionaryGetValueIfPresent(v4, key, &v6))
  {
    if (*(a1 + 48))
    {
LABEL_5:
      v6 = [key replacementObjectForArchiver:{a1, v6, v7}];
      CFDictionarySetValue(*(a1 + 48), key, v6);
      return v6;
    }

LABEL_4:
    *(a1 + 48) = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, 0, 0);
    goto LABEL_5;
  }

  return v6;
}

uint64_t _encodePointerIfNew(void *a1, const void *a2, CFDictionaryRef theDict)
{
  v10 = *MEMORY[0x1E69E9840];
  value = 0;
  if (a2)
  {
    if (!CFDictionaryGetValueIfPresent(theDict, a2, &value))
    {
      value = (CFDictionaryGetCount(theDict) - 110);
      v9 = -124;
      v6 = 1;
      [a1 appendBytes:&v9 length:1];
      CFDictionarySetValue(theDict, a2, value);
      return v6;
    }

    _encodeInt(a1, value);
  }

  else
  {
    v9 = -123;
    [a1 appendBytes:&v9 length:1];
  }

  return 0;
}

uint64_t _encodeClass_old(uint64_t a1, objc_class *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  result = *(a1 + 8);
  if (result)
  {
    v4 = a2;
    result = _encodePointerIfNew(result, a2, *(a1 + 16));
    if (result)
    {
      do
      {
        v5 = NSStringFromClass(v4);
        if ([(NSString *)v5 hasPrefix:@"%"])
        {
          v5 = [(NSString *)v5 substringFromIndex:1];
        }

        v6 = *(a1 + 40);
        if (!v6 || (Value = CFDictionaryGetValue(v6, v5)) == 0)
        {
          Value = encodingMap;
          if (encodingMap)
          {
            Value = CFDictionaryGetValue(encodingMap, v5);
          }
        }

        if (Value)
        {
          v8 = Value;
        }

        else
        {
          v8 = v5;
        }

        if (v8 != v5)
        {
          v9 = NSClassFromString(v8);
          if (v9)
          {
            _NSCoderCheckPotentiallyMangledClassNameAndWarn(v9, 1);
          }
        }

        CStringPtr = CFStringGetCStringPtr(v8, 0x600u);
        if (!CStringPtr)
        {
          CStringPtr = buffer;
          CFStringGetCString(v8, buffer, 512, 0x600u);
        }

        v11 = *(a1 + 8);
        v12 = sel_registerName(CStringPtr);
        Name = sel_getName(v12);
        _encodeOrReuseCString(v11, Name, *(a1 + 24));
        v14 = *(a1 + 8);
        Version = class_getVersion(v4);
        _encodeInt(v14, Version);
        do
        {
          Superclass = class_getSuperclass(v4);
          v4 = Superclass;
        }

        while (Superclass && *class_getName(Superclass) == 37);
        result = _encodePointerIfNew(*(a1 + 8), v4, *(a1 + 16));
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

unsigned __int8 *skipAggregateName(unsigned __int8 *result)
{
  v1 = result;
  do
  {
    while (1)
    {
      v3 = *result++;
      v2 = v3;
      if (v3 > 60)
      {
        break;
      }

      if ((v2 - 40) < 2 || v2 == 0)
      {
        return v1;
      }
    }

    if (v2 == 61)
    {
      return result;
    }
  }

  while (v2 != 125 && v2 != 123);
  return v1;
}

void sub_18102BA60(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v3 = objc_begin_catch(exception_object);
      objc_exception_throw(v3);
    }

    objc_begin_catch(exception_object);
    free(v2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_18102D4F8(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_18102D514(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x18102D520);
}

void sub_18102D6FC()
{
  if (v0)
  {
    objc_end_catch();
  }

  _Unwind_Resume(v1);
}

void sub_18102D714(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

uint64_t _NSGrammaticalGenderGetFromExternalRepresentation(void *a1, uint64_t *a2)
{
  if (a1)
  {
    if ([a1 isEqual:@"feminine"])
    {
      v4 = 1;
    }

    else if ([a1 isEqual:@"masculine"])
    {
      v4 = 2;
    }

    else
    {
      result = [a1 isEqual:@"neuter"];
      if (!result)
      {
        return result;
      }

      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return 1;
}

uint64_t _NSGrammaticalNumberGetFromExternalRepresentation(void *a1, uint64_t *a2)
{
  if (a1)
  {
    if ([a1 isEqual:@"one"])
    {
      v4 = 1;
    }

    else if ([a1 isEqual:@"zero"])
    {
      v4 = 2;
    }

    else if ([a1 isEqual:@"other"])
    {
      v4 = 3;
    }

    else if ([a1 isEqual:@"two"])
    {
      v4 = 4;
    }

    else if ([a1 isEqual:@"few"])
    {
      v4 = 5;
    }

    else
    {
      result = [a1 isEqual:@"many"];
      if (!result)
      {
        return result;
      }

      v4 = 6;
    }
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return 1;
}

uint64_t _NSGrammaticalPartOfSpeechGetFromExternalRepresentation(void *a1, uint64_t *a2)
{
  if (a1)
  {
    if ([a1 isEqual:@"determiner"])
    {
      v4 = 1;
    }

    else if ([a1 isEqual:@"pronoun"])
    {
      v4 = 2;
    }

    else if ([a1 isEqual:@"letter"])
    {
      v4 = 3;
    }

    else if ([a1 isEqual:@"adverb"])
    {
      v4 = 4;
    }

    else if ([a1 isEqual:@"particle"])
    {
      v4 = 5;
    }

    else if ([a1 isEqual:@"adjective"])
    {
      v4 = 6;
    }

    else if ([a1 isEqual:@"adposition"])
    {
      v4 = 7;
    }

    else if ([a1 isEqual:@"verb"])
    {
      v4 = 8;
    }

    else if ([a1 isEqual:@"noun"])
    {
      v4 = 9;
    }

    else if ([a1 isEqual:@"conjunction"])
    {
      v4 = 10;
    }

    else if ([a1 isEqual:@"numeral"])
    {
      v4 = 11;
    }

    else if ([a1 isEqual:@"interjection"])
    {
      v4 = 12;
    }

    else if ([a1 isEqual:@"preposition"])
    {
      v4 = 13;
    }

    else
    {
      result = [a1 isEqual:@"abbreviation"];
      if (!result)
      {
        return result;
      }

      v4 = 14;
    }
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return 1;
}

uint64_t _NSGrammaticalCaseGetFromExternalRepresentation(void *a1, uint64_t *a2)
{
  if (a1)
  {
    if ([a1 isEqual:@"nominative"])
    {
      v4 = 1;
    }

    else if ([a1 isEqual:@"accusative"])
    {
      v4 = 2;
    }

    else if ([a1 isEqual:@"dative"])
    {
      v4 = 3;
    }

    else if ([a1 isEqual:@"genitive"])
    {
      v4 = 4;
    }

    else if ([a1 isEqual:@"prepositional"])
    {
      v4 = 5;
    }

    else if ([a1 isEqual:@"ablative"])
    {
      v4 = 6;
    }

    else if ([a1 isEqual:@"adessive"])
    {
      v4 = 7;
    }

    else if ([a1 isEqual:@"allative"])
    {
      v4 = 8;
    }

    else if ([a1 isEqual:@"elative"])
    {
      v4 = 9;
    }

    else if ([a1 isEqual:@"illative"])
    {
      v4 = 10;
    }

    else if ([a1 isEqual:@"essive"])
    {
      v4 = 11;
    }

    else if ([a1 isEqual:@"inessive"])
    {
      v4 = 12;
    }

    else if ([a1 isEqual:@"locative"])
    {
      v4 = 13;
    }

    else
    {
      result = [a1 isEqual:@"translative"];
      if (!result)
      {
        return result;
      }

      v4 = 14;
    }
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return 1;
}

uint64_t _NSGrammaticalPronounTypeGetFromExternalRepresentation(void *a1, uint64_t *a2)
{
  if (a1)
  {
    if ([a1 isEqual:@"personal"])
    {
      v4 = 1;
    }

    else if ([a1 isEqual:@"reflexive"])
    {
      v4 = 2;
    }

    else
    {
      result = [a1 isEqual:@"possessive"];
      if (!result)
      {
        return result;
      }

      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return 1;
}

uint64_t _NSAutoreleasePoolSetRubyToken(uint64_t result)
{
  if (result)
  {
    return _CFSetTSD();
  }

  return result;
}

void sub_181037CD4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v6 = objc_begin_catch(exception_object);
    if (v3)
    {
      CFGetAllocator(v4);
      *v3 = _CFBundleCreateError();
    }

    v7 = _NSOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v2 bundleURL];
      *(v5 - 176) = 138412546;
      v9 = v5 - 176;
      *(v9 + 4) = v8;
      *(v5 - 164) = 2112;
      *(v9 + 14) = v6;
      _os_log_error_impl(&dword_18075C000, v7, OS_LOG_TYPE_ERROR, "NSBundle %@ loading failed because an exception was raised during loading %@", (v5 - 176), 0x16u);
    }

    objc_end_catch();
    JUMPOUT(0x181037A64);
  }

  _Unwind_Resume(exception_object);
}

void mutateError2(SEL sel, uint64_t a2, objc_class *a3)
{
  if (a2 == 3)
  {
    v5 = [NSString stringWithFormat:@"%@: Range or index out of bounds", _NSMethodExceptionProem(a3, sel)];
    v6 = MEMORY[0x1E695DF30];
    v7 = MEMORY[0x1E695DA20];
  }

  else
  {
    if (a2 == 2)
    {
      v4 = [NSString stringWithFormat:@"%@: nil argument", _NSMethodExceptionProem(a3, sel), v9];
    }

    else if (a2 == 1)
    {
      v4 = [NSString stringWithFormat:@"Attempt to mutate immutable object with %s", sel_getName(sel), v9];
    }

    else
    {
      Name = sel_getName(sel);
      v4 = [NSString stringWithFormat:@"Can't call %s in %@", Name, object_getClass(a3)];
    }

    v5 = v4;
    v6 = MEMORY[0x1E695DF30];
    v7 = MEMORY[0x1E695D940];
  }

  objc_exception_throw([v6 exceptionWithName:*v7 reason:v5 userInfo:0]);
}

__CFDictionary *buildTokenMapWithDictionary(void *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, MEMORY[0x1E695E9D8], 0);
  v3 = [a1 objectForKey:@"NSPriorDayDesignations"];
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"yesterday", 0}];
  }

  v4 = [v3 count];
  if (v4)
  {
    v5 = v4 - 1;
    do
    {
      CFDictionarySetValue(Mutable, [objc_msgSend(v3 objectAtIndex:{v5--), "lowercaseString"}], 0x4F);
    }

    while (v5 != -1);
  }

  v6 = [a1 objectForKey:@"NSNextDayDesignations"];
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"tomorrow", 0}];
  }

  v7 = [v6 count];
  if (v7)
  {
    v8 = v7 - 1;
    do
    {
      CFDictionarySetValue(Mutable, [objc_msgSend(v6 objectAtIndex:{v8--), "lowercaseString"}], 0x50);
    }

    while (v8 != -1);
  }

  v9 = [a1 objectForKey:@"NSNextNextDayDesignations"];
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"nextday", 0}];
  }

  v10 = [v9 count];
  if (v10)
  {
    v11 = v10 - 1;
    do
    {
      CFDictionarySetValue(Mutable, [objc_msgSend(v9 objectAtIndex:{v11--), "lowercaseString"}], 0x51);
    }

    while (v11 != -1);
  }

  v12 = [a1 objectForKey:@"NSThisDayDesignations"];
  if (!v12)
  {
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"today", @"now", 0}];
  }

  v13 = [v12 count];
  if (v13)
  {
    v14 = v13 - 1;
    do
    {
      CFDictionarySetValue(Mutable, [objc_msgSend(v12 objectAtIndex:{v14--), "lowercaseString"}], 0x4E);
    }

    while (v14 != -1);
  }

  v15 = [a1 objectForKey:@"NSEarlierTimeDesignations"];
  if (!v15)
  {
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"prior", @"last", @"past", @"ago", 0}];
  }

  v16 = [v15 count];
  if (v16)
  {
    v17 = v16 - 1;
    do
    {
      CFDictionarySetValue(Mutable, [objc_msgSend(v15 objectAtIndex:{v17--), "lowercaseString"}], 0x5A);
    }

    while (v17 != -1);
  }

  v18 = [a1 objectForKey:@"NSLaterTimeDesignations"];
  if (!v18)
  {
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"next", 0}];
  }

  v19 = [v18 count];
  if (v19)
  {
    v20 = v19 - 1;
    do
    {
      CFDictionarySetValue(Mutable, [objc_msgSend(v18 objectAtIndex:{v20--), "lowercaseString"}], 0x59);
    }

    while (v20 != -1);
  }

  v21 = [a1 objectForKey:@"NSYearMonthWeekDesignations"];
  if (!v21)
  {
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"year", @"month", @"week", 0}];
  }

  v22 = [v21 count];
  if (v22)
  {
    v23 = v22 - 1;
    do
    {
      CFDictionarySetValue(Mutable, [objc_msgSend(v21 objectAtIndex:{v23), "lowercaseString"}], (v23 + 91));
      --v23;
    }

    while (v23 != -1);
  }

  v24 = [a1 objectForKey:@"NSHourNameDesignations"];
  if (!v24)
  {
    v24 = [CFSTR(""((0 midnight)];
  }

  v25 = [v24 count];
  if (v25)
  {
    v26 = v25;
    do
    {
      v27 = [v24 objectAtIndex:--v26];
      v28 = [objc_msgSend(v27 objectAtIndex:{0), "intValue"}];
      v29 = [v27 count];
      if (v29 >= 1)
      {
        v30 = v29 + 1;
        do
        {
          CFDictionarySetValue(Mutable, [objc_msgSend(v27 objectAtIndex:{v30 - 2), "lowercaseString"}], (v28 + 94));
          --v30;
        }

        while (v30 > 1);
      }
    }

    while (v26);
  }

  v31 = [a1 objectForKey:@"NSMonthNameArray"];
  if (!v31)
  {
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"January", @"February", @"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December", 0}];
  }

  v32 = [v31 count];
  if (v32)
  {
    v33 = v32 - 1;
    do
    {
      CFDictionarySetValue(Mutable, [objc_msgSend(v31 objectAtIndex:{v33), "lowercaseString"}], (v33 + 66));
      --v33;
    }

    while (v33 != -1);
  }

  v34 = [a1 objectForKey:@"NSShortMonthNameArray"];
  if (!v34)
  {
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"Jan", @"Feb", @"Mar", @"Apr", @"May", @"Jun", @"Jul", @"Aug", @"Sep", @"Oct", @"Nov", @"Dec", 0}];
  }

  v35 = [v34 count];
  if (v35)
  {
    v36 = v35 - 1;
    do
    {
      CFDictionarySetValue(Mutable, [objc_msgSend(v34 objectAtIndex:{v36), "lowercaseString"}], (v36 + 66));
      --v36;
    }

    while (v36 != -1);
  }

  v37 = [a1 objectForKey:@"NSWeekDayNameArray"];
  if (!v37)
  {
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"Sunday", @"Monday", @"Tuesday", @"Wednesday", @"Thursday", @"Friday", @"Saturday", 0}];
  }

  v38 = [v37 count];
  if (v38)
  {
    v39 = v38 - 1;
    do
    {
      CFDictionarySetValue(Mutable, [objc_msgSend(v37 objectAtIndex:{v39), "lowercaseString"}], (v39 + 82));
      --v39;
    }

    while (v39 != -1);
  }

  v40 = [a1 objectForKey:@"NSShortWeekDayNameArray"];
  if (!v40)
  {
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"Sun", @"Mon", @"Tue", @"Wed", @"Thu", @"Fri", @"Sat", 0}];
  }

  v41 = [v40 count];
  if (v41)
  {
    v42 = v41 - 1;
    do
    {
      CFDictionarySetValue(Mutable, [objc_msgSend(v40 objectAtIndex:{v42), "lowercaseString"}], (v42 + 82));
      --v42;
    }

    while (v42 != -1);
  }

  v43 = [a1 objectForKey:@"NSAMPMDesignation"];
  if (!v43)
  {
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"AM", @"PM", 0}];
  }

  v44 = [v43 count];
  if (v44)
  {
    v45 = v44 - 1;
    do
    {
      CFDictionarySetValue(Mutable, [objc_msgSend(v43 objectAtIndex:{v45), "lowercaseString"}], (v45 + 118));
      --v45;
    }

    while (v45 != -1);
  }

  return Mutable;
}

uint64_t appendNumber(void *a1, uint64_t a2, const char *a3, const char *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = [a1 length];
  if (*a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = a4;
  }

  v10 = fmtcheck(v9, "%ld");
  snprintf(__str, 0x410uLL, v10, a2);
  return [a1 replaceCharactersInRange:v8 withCString:0 length:{__str, strlen(__str)}];
}

uint64_t skipWhitespace(void *a1)
{
  v2 = [a1 string];
  v3 = [a1 scanLocation];
  v4 = [v2 length];
  v5 = [a1 charactersToBeSkipped];
  if (v4 <= v3)
  {
    v4 = v3;
  }

  while (v4 != v3)
  {
    v6 = [v5 characterIsMember:{objc_msgSend(v2, "characterAtIndex:", v3++)}];
    if ((v6 & 1) == 0)
    {
      v4 = v3 - 1;
      break;
    }
  }

  return [a1 setScanLocation:v4];
}

uint64_t absolute_from_gregorian(int a1)
{
  v1 = a1 >> 16;
  if (a1 < 2uLL)
  {
    v3 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = (SHIWORD(a1) % 400);
    do
    {
      if ((*&a1 & 0x30000) != 0 || v2 != 1 || v4 == 100 || v4 == 300 || v4 == 200)
      {
        v5 = days_per_month[v2];
      }

      else
      {
        v5 = 29;
      }

      v3 += v5;
      ++v2;
    }

    while (a1 - 1 != v2);
  }

  v6 = v1 - 1;
  v7 = 365 * (v1 - 1);
  v8 = v1 + 2;
  if (v1 >= 1)
  {
    v8 = v1 - 1;
  }

  v9 = ((v6 * 0x5C28F5C28F5C28F5) >> 64) - v1 + 1;
  return v7 + BYTE1(a1) + (v8 >> 2) + v6 / 400 + (v9 >> 6) + (v9 >> 63) + v3;
}

void sub_18104363C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v13 = objc_begin_catch(exception_object);
    if (!v12)
    {
      a11 = 0;
      if ([NSCoder __categorizeException:v13 intoError:&a11])
      {
        if (v11)
        {
          *v11 = a11;
        }

        objc_end_catch();
        JUMPOUT(0x181043534);
      }

      objc_exception_rethrow();
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1810443EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __NSCoderInvalidState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = &a9;
    v9 = [[NSString alloc] initWithFormat:a1 arguments:&a9];
  }

  else
  {
    v9 = &stru_1EEEFDF90;
  }

  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v9 userInfo:{0, v10, v11}]);
}

uint64_t __NSCoderDecodeObject(void *a1, const char *a2)
{
  if (a2)
  {
    return [a1 decodeTopLevelObjectAndReturnError:a2];
  }

  else
  {
    return [a1 decodeObject];
  }
}

uint64_t __NSCoderDecodeObjectForKey(void *a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    return [a1 decodeTopLevelObjectForKey:a2 error:a3];
  }

  else
  {
    return [a1 decodeObjectForKey:a2];
  }
}

void sub_181047300(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    [v1 invalidate];
  }

  _Unwind_Resume(exception_object);
}

void sub_18104795C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v3 = objc_begin_catch(exception_object);
      objc_exception_throw(v3);
    }

    objc_begin_catch(exception_object);
    free(v2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_181048E58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    [v1 invalidate];
  }

  _Unwind_Resume(exception_object);
}

void NSDataDeallocatorVM_block_invoke_2(int a1, void *ptr, NSUInteger bytes)
{
  if (ptr)
  {
    NSDeallocateMemoryPages(ptr, bytes);
  }
}

uint64_t NSDataDeallocatorUnmap_block_invoke_3(int a1, void *a2, size_t a3)
{
  if (a2)
  {
    return munmap(a2, a3);
  }

  return result;
}

void sub_18104BAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18104E190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Block_object_dispose((v26 - 104), 8);
  _Unwind_Resume(a1);
}

void _NSDataReinitializationBreak()
{
  if (_NSDataReinitializationBreak_onceToken != -1)
  {
    dispatch_once(&_NSDataReinitializationBreak_onceToken, &__block_literal_global_247);
  }
}

void sub_1810525D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_181052820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFStringRef _NSNewStringFromCString(const char *a1)
{
  v2 = strlen(a1);

  return CFStringCreateWithBytes(0, a1, v2, 0x8000100u, 0);
}

uint64_t NSIsFreedObject(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (!NSIsFreedObject_freedClass)
    {
      NSIsFreedObject_freedClass = _objc_getFreedObjectClass();
    }

    Class = object_getClass(v1);
    if (Class == NSIsFreedObject_freedClass)
    {
      return 1;
    }

    v3 = Class;
    result = object_getClass(Class);
    if (!result)
    {
      return result;
    }

    Name = class_getName(v3);
    return Name && !strncmp(Name, "_NSZombie_", 0xAuLL);
  }

  return result;
}