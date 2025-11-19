uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Text.AlignmentStrategy.Storage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.CodingKeys and conformance Text.AlignmentStrategy.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Text.AlignmentStrategy.Storage.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys>, lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys, &unk_1F00B0E18, MEMORY[0x1E69E6F58]);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - v5;
  type metadata accessor for KeyedEncodingContainer<Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys>, lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys, &unk_1F00B0DF8, v3);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v20 = &v19 - v7;
  type metadata accessor for KeyedEncodingContainer<Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Text.AlignmentStrategy.Storage.CodingKeys>, lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.CodingKeys and conformance Text.AlignmentStrategy.Storage.CodingKeys, &unk_1F00B0DD8, v3);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  v13 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.CodingKeys and conformance Text.AlignmentStrategy.Storage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = (v10 + 8);
  if (v13)
  {
    v27 = 1;
    lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys();
    v15 = v23;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v24;
    v16 = v25;
  }

  else
  {
    v26 = 0;
    lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys();
    v15 = v20;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v21;
    v16 = v22;
  }

  (*(v17 + 8))(v15, v16);
  return (*v14)(v12, v9);
}

unint64_t lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys()
{
  result = lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys;
  if (!lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys;
  if (!lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys;
  if (!lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys()
{
  result = lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys;
  if (!lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys;
  if (!lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys;
  if (!lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.CodingKeys and conformance Text.AlignmentStrategy.Storage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.CodingKeys and conformance Text.AlignmentStrategy.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.CodingKeys and conformance Text.AlignmentStrategy.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.CodingKeys and conformance Text.AlignmentStrategy.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.CodingKeys and conformance Text.AlignmentStrategy.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.CodingKeys and conformance Text.AlignmentStrategy.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.CodingKeys and conformance Text.AlignmentStrategy.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.CodingKeys and conformance Text.AlignmentStrategy.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.CodingKeys and conformance Text.AlignmentStrategy.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.CodingKeys and conformance Text.AlignmentStrategy.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.CodingKeys and conformance Text.AlignmentStrategy.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.CodingKeys and conformance Text.AlignmentStrategy.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage.CodingKeys and conformance Text.AlignmentStrategy.Storage.CodingKeys);
  }

  return result;
}

Swift::Int Text.AlignmentStrategy.Storage.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t Text.AlignmentStrategy.Storage.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v33 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys>, lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys, &unk_1F00B0E18, MEMORY[0x1E69E6F48]);
  v29 = v4;
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - v5;
  type metadata accessor for KeyedEncodingContainer<Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys>, lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys, &unk_1F00B0DF8, v3);
  v7 = v6;
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  type metadata accessor for KeyedEncodingContainer<Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Text.AlignmentStrategy.Storage.CodingKeys>, lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.CodingKeys and conformance Text.AlignmentStrategy.Storage.CodingKeys, &unk_1F00B0DD8, v3);
  v11 = v10;
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.CodingKeys and conformance Text.AlignmentStrategy.Storage.CodingKeys();
  v14 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    goto LABEL_7;
  }

  v27 = v7;
  v15 = v31;
  v16 = v32;
  v34 = a1;
  v17 = v30;
  v18 = v33;
  v19 = KeyedDecodingContainer.allKeys.getter();
  v20 = (2 * *(v19 + 16)) | 1;
  v35 = v19;
  v36 = v19 + 32;
  v37 = 0;
  v38 = v20;
  v21 = specialized Collection<>.popFirst()();
  if (v21 == 2 || v37 != v38 >> 1)
  {
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v24 = &type metadata for Text.AlignmentStrategy.Storage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v17 + 8))(v13, v11);
    swift_unknownObjectRelease();
    a1 = v34;
LABEL_7:
    v25 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v39 = v21;
  if (v21)
  {
    v40 = 1;
    lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v15, v29);
  }

  else
  {
    v40 = 0;
    lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys and conformance Text.AlignmentStrategy.Storage.LayoutBasedCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v28 + 8))(v9, v27);
  }

  (*(v17 + 8))(v13, v11);
  swift_unknownObjectRelease();
  *v18 = v39 & 1;
  v25 = v34;
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

void type metadata accessor for KeyedEncodingContainer<Text.AlignmentStrategy.Storage.WritingDirectionBasedCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void Text.AlignmentStrategy.hash(into:)()
{
  v1 = *v0;
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v1 & 1);
  }
}

Swift::Int Text.AlignmentStrategy.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v1 & 1);
  }

  return Hasher._finalize()();
}

uint64_t key path getter for EnvironmentValues.textAlignment : EnvironmentValues@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI17EnvironmentValuesVAAEy5ValueQzxmcAA07BridgedC3KeyRzluigAA4TextVAAE17AlignmentStrategyV0cG0V_Tt0B5(*a1, a1[1], &v4);
  *a2 = v4;
  return result;
}

uint64_t EnvironmentValues.textAlignment.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v7 = *a1;
  v3 = *v1;
  v4 = v1[1];
  if (EnvironmentValues.bridgedEnvironmentResolver.getter())
  {
    return (*(v5 + 16))(&type metadata for Text.AlignmentStrategy.EnvironmentKey, v1, &v7, &type metadata for Text.AlignmentStrategy.EnvironmentKey, &protocol witness table for Text.AlignmentStrategy.EnvironmentKey);
  }

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA4TextVAAE17AlignmentStrategyV0gF0VG_Tt2B5(v1, v2);

  if (v4)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA4TextVAAE17AlignmentStrategyV0lK0VG_Ttg5(v3, *v1);
  }
}

uint64_t (*EnvironmentValues.textAlignment.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  _s7SwiftUI17EnvironmentValuesVAAEy5ValueQzxmcAA07BridgedC3KeyRzluigAA4TextVAAE17AlignmentStrategyV0cG0V_Tt0B5(*v1, v1[1], (a1 + 24));
  return EnvironmentValues.textAlignment.modify;
}

uint64_t EnvironmentValues.textAlignment.modify(uint64_t a1, char a2)
{
  v3 = *(a1 + 24);
  *(a1 + 25) = v3;
  v4 = a1 + 25;
  v5 = *(a1 + 16);
  v6 = *v5;
  v7 = v5[1];
  if (a2)
  {
    v8 = EnvironmentValues.bridgedEnvironmentResolver.getter();
    v10 = *(a1 + 16);
    if (!v8)
    {
      goto LABEL_6;
    }

    return (*(v9 + 16))(&type metadata for Text.AlignmentStrategy.EnvironmentKey, v10, v4, &type metadata for Text.AlignmentStrategy.EnvironmentKey, &protocol witness table for Text.AlignmentStrategy.EnvironmentKey);
  }

  v11 = EnvironmentValues.bridgedEnvironmentResolver.getter();
  v10 = *(a1 + 16);
  if (v11)
  {
    return (*(v9 + 16))(&type metadata for Text.AlignmentStrategy.EnvironmentKey, v10, v4, &type metadata for Text.AlignmentStrategy.EnvironmentKey, &protocol witness table for Text.AlignmentStrategy.EnvironmentKey);
  }

LABEL_6:
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA4TextVAAE17AlignmentStrategyV0gF0VG_Tt2B5(v10, v3);

  if (v7)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA4TextVAAE17AlignmentStrategyV0lK0VG_Ttg5(v6, **(a1 + 16));
  }
}

uint64_t View.multilineTextAlignment(strategy:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v8 = v5;
  View.environment<A>(_:_:)(KeyPath, &v8, a2, a3);
}

uint64_t AttributedString.TextAlignment.init(multilineTextAlignment:layoutDirection:)@<X0>(char a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = *MEMORY[0x1E6965578];
      v6 = type metadata accessor for AttributedString.TextAlignment();
      v7 = *(*(v6 - 8) + 104);
      v8 = v6;
      v9 = a3;
      v10 = v5;
      goto LABEL_9;
    }

    v8 = type metadata accessor for AttributedString.TextAlignment();
    v7 = *(*(v8 - 8) + 104);
    if (v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = type metadata accessor for AttributedString.TextAlignment();
    v7 = *(*(v8 - 8) + 104);
    if ((v4 & 1) == 0)
    {
LABEL_7:
      v11 = MEMORY[0x1E6965568];
      goto LABEL_8;
    }
  }

  v11 = MEMORY[0x1E6965570];
LABEL_8:
  v10 = *v11;
  v9 = a3;
LABEL_9:

  return v7(v9, v10, v8);
}

uint64_t NSParagraphStyle.textAlignment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 horizontalAlignment];
  if (v3 > 1)
  {
    if (v3 == 4)
    {
      v4 = MEMORY[0x1E6965578];
      goto LABEL_20;
    }

    if (v3 != 3)
    {
      if (v3 == 2)
      {
LABEL_5:
        v4 = MEMORY[0x1E6965568];
LABEL_20:
        v8 = *v4;
        goto LABEL_21;
      }

      goto LABEL_18;
    }

LABEL_19:
    v4 = MEMORY[0x1E6965570];
    goto LABEL_20;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_18;
    }

    v5 = [v1 baseWritingDirection];
    if (v5 == -1)
    {
      goto LABEL_18;
    }

    if (v5 == 1)
    {
      goto LABEL_5;
    }

    if (v5)
    {
LABEL_18:
      v9 = type metadata accessor for AttributedString.TextAlignment();
      v10 = *(*(v9 - 8) + 56);
      v11 = v9;
      v12 = a1;
      v13 = 1;
      goto LABEL_22;
    }

    v6 = MEMORY[0x1E6965570];
  }

  else
  {
    v7 = [v1 baseWritingDirection];
    if (v7 == -1)
    {
      goto LABEL_18;
    }

    if (v7 == 1)
    {
      goto LABEL_19;
    }

    if (v7)
    {
      goto LABEL_18;
    }

    v6 = MEMORY[0x1E6965568];
  }

  v8 = *v6;
LABEL_21:
  v14 = type metadata accessor for AttributedString.TextAlignment();
  v16 = *(v14 - 8);
  (*(v16 + 104))(a1, v8, v14);
  v10 = *(v16 + 56);
  v12 = a1;
  v13 = 0;
  v11 = v14;
LABEL_22:

  return v10(v12, v13, 1, v11);
}

unint64_t lazy protocol witness table accessor for type TextAlignment and conformance TextAlignment()
{
  result = lazy protocol witness table cache variable for type TextAlignment and conformance TextAlignment;
  if (!lazy protocol witness table cache variable for type TextAlignment and conformance TextAlignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAlignment and conformance TextAlignment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [TextAlignment] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [TextAlignment] and conformance [A];
  if (!lazy protocol witness table cache variable for type [TextAlignment] and conformance [A])
  {
    type metadata accessor for [TextAlignment](255, &lazy cache variable for type metadata for [TextAlignment], &type metadata for TextAlignment, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [TextAlignment] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage and conformance Text.AlignmentStrategy.Storage()
{
  result = lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage and conformance Text.AlignmentStrategy.Storage;
  if (!lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage and conformance Text.AlignmentStrategy.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.AlignmentStrategy.Storage and conformance Text.AlignmentStrategy.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.AlignmentStrategy and conformance Text.AlignmentStrategy()
{
  result = lazy protocol witness table cache variable for type Text.AlignmentStrategy and conformance Text.AlignmentStrategy;
  if (!lazy protocol witness table cache variable for type Text.AlignmentStrategy and conformance Text.AlignmentStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.AlignmentStrategy and conformance Text.AlignmentStrategy);
  }

  return result;
}

void type metadata accessor for [TextAlignment](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for (AttributedString.TextAlignment, LayoutDirection)()
{
  if (!lazy cache variable for type metadata for (AttributedString.TextAlignment, LayoutDirection))
  {
    type metadata accessor for AttributedString.TextAlignment();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AttributedString.TextAlignment, LayoutDirection));
    }
  }
}

uint64_t outlined destroy of AttributedString.TextAlignment?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double Angle.animatableData.setter(double a1)
{
  result = a1 * 0.0078125;
  *v1 = result;
  return result;
}

double Angle.degrees.setter(double a1)
{
  result = a1 * 0.0174532925;
  *v1 = result;
  return result;
}

double (*Angle.degrees.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = *v1 * 57.2957795;
  return Angle.degrees.modify;
}

double Angle.degrees.modify(uint64_t a1)
{
  result = *a1 * 0.0174532925;
  **(a1 + 8) = result;
  return result;
}

uint64_t Angle.hash(into:)(double a1)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  return MEMORY[0x193AC11E0](*&a1);
}

Swift::Int Angle.hashValue.getter(double a1)
{
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  MEMORY[0x193AC11E0](*&v2);
  return Hasher._finalize()();
}

uint64_t Angle.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

double Angle.init(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v2 = v4;
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v2;
}

uint64_t protocol witness for Decodable.init(from:) in conformance Angle@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(v8);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v6;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Angle(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

double (*Angle.animatableData.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = *v1 * 128.0;
  return Angle.animatableData.modify;
}

double Angle.animatableData.modify(uint64_t a1)
{
  result = *a1 * 0.0078125;
  **(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Angle and conformance Angle()
{
  result = lazy protocol witness table cache variable for type Angle and conformance Angle;
  if (!lazy protocol witness table cache variable for type Angle and conformance Angle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Angle and conformance Angle);
  }

  return result;
}

double protocol witness for Animatable.animatableData.getter in conformance Angle@<D0>(double *a1@<X8>)
{
  result = *v1 * 128.0;
  *a1 = result;
  return result;
}

double protocol witness for Animatable.animatableData.setter in conformance Angle(double *a1)
{
  result = *a1 * 0.0078125;
  *v1 = result;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance Angle(uint64_t a1))()
{
  *(a1 + 8) = v1;
  *a1 = *v1 * 128.0;
  return protocol witness for Animatable.animatableData.modify in conformance Angle;
}

void _SafeAreaIgnoringLayout.placement(of:in:)(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 6);
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = v2;
  _SafeAreaRegionsIgnoringLayout.placement(of:in:)(&v3, -1, a2);
}

uint64_t _SafeAreaIgnoringLayout.sizeThatFits(in:context:child:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a3 + 2);
  v13 = *a3;
  v14 = v7;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  return LayoutProxy.size(in:)(&v9);
}

uint64_t _SafeAreaRegionsIgnoringLayout.sizeThatFits(in:context:child:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a3 + 2);
  v13 = *a3;
  v14 = v7;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  return LayoutProxy.size(in:)(&v9);
}

_DWORD *UnsafeHeterogeneousBuffer.index(after:)@<X0>(_DWORD *result@<X0>, int *a2@<X8>)
{
  if (*v2)
  {
    v3 = *result + 1;
    if (v3 == *(v2 + 12))
    {
      *a2 = v3;
      a2[1] = 0;
    }

    else
    {
      v4 = *(*v2 + result[1] + 8) + result[1];
      *a2 = v3;
      a2[1] = v4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

int *UnsafeHeterogeneousBuffer.formIndex(after:)(int *result)
{
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 3);
    v4 = result[1];
    v5 = *result + 1;
    *result = v5;
    if (v5 == v3)
    {
      result[1] = 0;
    }

    else
    {
      result[1] = *(v2 + v4 + 8) + v4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t UnsafeHeterogeneousBuffer.subscript.getter@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*v2)
  {
    *a2 = *v2 + *(result + 4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection.subscript.read in conformance UnsafeHeterogeneousBuffer(void *result, uint64_t a2)
{
  if (*v2)
  {
    *result = *v2 + *(a2 + 4);
    return _ViewInputs.base.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_DWORD *(*_UnsafeHeterogeneousBuffer_Element.flags.modify(uint64_t a1))(_DWORD *result)
{
  v2 = *v1;
  *a1 = *v1;
  *(a1 + 8) = *(v2 + 12);
  return SecondaryLayerGeometryQuery.$primarySize.modify;
}

unint64_t lazy protocol witness table accessor for type UnsafeHeterogeneousBuffer and conformance UnsafeHeterogeneousBuffer()
{
  result = lazy protocol witness table cache variable for type UnsafeHeterogeneousBuffer and conformance UnsafeHeterogeneousBuffer;
  if (!lazy protocol witness table cache variable for type UnsafeHeterogeneousBuffer and conformance UnsafeHeterogeneousBuffer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeHeterogeneousBuffer and conformance UnsafeHeterogeneousBuffer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsafeHeterogeneousBuffer and conformance UnsafeHeterogeneousBuffer;
  if (!lazy protocol witness table cache variable for type UnsafeHeterogeneousBuffer and conformance UnsafeHeterogeneousBuffer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeHeterogeneousBuffer and conformance UnsafeHeterogeneousBuffer);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<UnsafeHeterogeneousBuffer> and conformance DefaultIndices<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DefaultIndices<UnsafeHeterogeneousBuffer>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for DefaultIndices<UnsafeHeterogeneousBuffer>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type UnsafeHeterogeneousBuffer and conformance UnsafeHeterogeneousBuffer();
    v7 = a3(a1, &type metadata for UnsafeHeterogeneousBuffer, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

__n128 closure #1 in _GlassContainerStorageView.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = *a2;
  v22 = v21;
  v6 = *(a2 + 16);
  v19 = *(a2 + 24);
  v7 = v19;
  v20 = v6;
  v8 = swift_allocObject();
  v9 = *(a2 + 16);
  *(v8 + 16) = *a2;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a2 + 32);
  *(v8 + 57) = *(a2 + 41);
  v10 = *(a1 + 16);
  *(v8 + 76) = *a1;
  *(v8 + 92) = v10;
  *(v8 + 108) = *(a1 + 32);
  *(v8 + 124) = *(a1 + 48);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  outlined init with copy of GlassContainer.DataStorage(&v21, v18);
  outlined init with copy of [GlassContainer.Entry](&v20, v18, &lazy cache variable for type metadata for [GlassContainer.Entry], &type metadata for GlassContainer.Entry);
  outlined init with copy of [GlassContainer.Entry](&v19, v18, &lazy cache variable for type metadata for [Material], &type metadata for Material);
  outlined init with copy of _GlassContainerStorageView(a2, v18);
  v14 = specialized Environment.wrappedValue.getter(v11, v12, v13);
  *a3 = v22;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  v15 = *(a1 + 16);
  *(a3 + 32) = *a1;
  *(a3 + 48) = v15;
  result = *(a1 + 32);
  *(a3 + 64) = result;
  *(a3 + 80) = *(a1 + 48);
  *(a3 + 88) = partial apply for closure #1 in _GlassContainerStorageView.resolvedContent(_:);
  *(a3 + 96) = v8;
  *(a3 + 104) = 1;
  *(a3 + 112) = v14;
  *(a3 + 120) = v17;
  return result;
}

uint64_t closure #1 in _GlassContainerStorageView.resolvedContent(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (one-time initialization token for center != -1)
  {
    v12 = a2;
    v13 = a3;
    swift_once();
    a2 = v12;
    a3 = v13;
  }

  v6 = static Alignment.center;
  closure #1 in closure #1 in _GlassContainerStorageView.resolvedContent(_:)(a1, a2, a3, &v14);
  v7 = v15;
  v8 = v17;
  v9 = v16;
  v10 = v14;
  *a4 = v6;
  *(a4 + 16) = v10;
  *(a4 + 32) = v7;
  *(a4 + 40) = v9;
  *(a4 + 56) = v8;
  *(a4 + 64) = a1;
}

uint64_t closure #1 in closure #1 in _GlassContainerStorageView.resolvedContent(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  v10 = a2[1];
  *(v9 + 16) = *a2;
  *(v9 + 32) = v10;
  *(v9 + 48) = a2[2];
  *(v9 + 57) = *(a2 + 41);
  v11 = *(a3 + 16);
  *(v9 + 88) = *a3;
  *(v9 + 80) = a1;
  *(v9 + 104) = v11;
  *(v9 + 120) = *(a3 + 32);
  *(v9 + 136) = *(a3 + 48);
  swift_bridgeObjectRetain_n();
  outlined init with copy of _GlassContainerStorageView(a2, &v14);
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v12 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v12)
    {
      goto LABEL_7;
    }

LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_9;
  }

LABEL_7:
  result = AGMakeUniqueID();
LABEL_10:
  *a4 = a1;
  a4[1] = partial apply for closure #1 in closure #1 in closure #1 in _GlassContainerStorageView.resolvedContent(_:);
  a4[2] = v9;
  a4[3] = KeyPath;
  a4[4] = 0;
  a4[5] = result;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in _GlassContainerStorageView.resolvedContent(_:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1[10];
  v9 = a1[8];
  v55 = a1[9];
  v56 = v8;
  v10 = a1[10];
  v57 = a1[11];
  v11 = a1[6];
  v12 = a1[4];
  v51 = a1[5];
  v52 = v11;
  v13 = a1[6];
  v14 = a1[8];
  v53 = a1[7];
  v54 = v14;
  v15 = a1[2];
  v16 = *a1;
  v47 = a1[1];
  v48 = v15;
  v17 = a1[2];
  v18 = a1[4];
  v49 = a1[3];
  v50 = v18;
  v19 = *a1;
  v45 = *a2;
  v46 = v19;
  v20 = a1[11];
  v42 = v10;
  v43 = v20;
  v38 = v13;
  v39 = v53;
  v40 = v9;
  v41 = v55;
  v34 = v17;
  v35 = v49;
  v36 = v12;
  v37 = v51;
  v58 = *(a1 + 24);
  v21 = *(a2 + 4);
  *v44 = *(a1 + 24);
  v32 = v16;
  v33 = v47;
  *&v44[8] = *a2;
  type metadata accessor for TransitionBox<IdentityTransition>(0, &lazy cache variable for type metadata for TransitionBox<IdentityTransition>, &type metadata for IdentityTransition, &protocol witness table for IdentityTransition, type metadata accessor for TransitionBox);
  v22 = swift_allocObject();
  v23 = v43;
  *(a5 + 160) = v42;
  *(a5 + 176) = v23;
  *(a5 + 192) = *v44;
  v24 = v39;
  *(a5 + 96) = v38;
  *(a5 + 112) = v24;
  v25 = v41;
  *(a5 + 128) = v40;
  *(a5 + 144) = v25;
  v26 = v35;
  *(a5 + 32) = v34;
  *(a5 + 48) = v26;
  v27 = v37;
  *(a5 + 64) = v36;
  *(a5 + 80) = v27;
  v28 = v33;
  *a5 = v32;
  *(a5 + 16) = v28;
  v29 = *(a4 + 16);
  *(a5 + 232) = *a4;
  *(a5 + 208) = *&v44[16];
  *(a5 + 216) = a3;
  *(a5 + 224) = v21;
  *(a5 + 248) = v29;
  *(a5 + 264) = *(a4 + 32);
  *(a5 + 280) = *(a4 + 48);
  *(a5 + 288) = v22;
  outlined init with copy of GlassContainer.Effect(&v46, v31);
  outlined init with copy of GlassContainer.DataStorage(&v45, v31);
}

uint64_t protocol witness for Rule.value.getter in conformance _GlassContainerStorageView.Init@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  Value = AGGraphGetValue();
  v5 = *Value;
  v6 = Value[1];
  v7 = Value[2];
  v8 = Value[3];
  KeyPath = swift_getKeyPath();
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v3;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
}

uint64_t protocol witness for View.body.getter in conformance _GlassContainerStorageView@<X0>(double (**a1)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = v1[1];
  v8[0] = *v1;
  v8[1] = v3;
  v9[0] = v1[2];
  *(v9 + 9) = *(v1 + 41);
  v4 = swift_allocObject();
  v5 = v1[1];
  v4[1] = *v1;
  v4[2] = v5;
  v4[3] = v1[2];
  *(v4 + 57) = *(v1 + 41);
  *a1 = partial apply for closure #1 in _GlassContainerStorageView.body.getter;
  a1[1] = v4;
  return outlined init with copy of _GlassContainerStorageView(v8, &v7);
}

uint64_t GlassEffectView.body.getter@<X0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, 0x11CuLL);
  v3 = *(v1 + 264);
  v27 = *(&__dst[13] + 1);
  *v28 = *(&__dst[13] + 1);
  v26 = *(v1 + 200);
  *(&__src[13] + 8) = *(v1 + 232);
  *(&__src[14] + 8) = *(v1 + 248);
  *(&__src[15] + 8) = v3;
  DWORD2(__src[16]) = *(v1 + 280);
  *&v28[8] = v26;
  *&v28[72] = DWORD2(__src[16]);
  *&v28[56] = v3;
  *&v28[40] = *(&__src[14] + 8);
  *&v28[24] = *(&__src[13] + 8);
  v29 = *&__dst[14];
  v35 = *&__dst[14];
  v32 = *&v28[32];
  v33 = *&v28[48];
  v34 = *&v28[64];
  v31 = *&v28[16];
  v30 = *v28;

  outlined init with copy of GlassContainer.DataStorage(&v26, &v13);
  outlined init with copy of GlassContainer.ResolvedStorage(&v27, &v13);

  outlined init with copy of GlassEffectLayout(v28, &v13);
  closure #1 in GlassEffectView.body.getter(__dst, &v13);
  v9 = v14;
  v4 = v15;
  outlined destroy of GlassEffectLayout(v28);
  v5 = v13;
  v23 = __dst[10];
  v24 = __dst[11];
  v19 = __dst[6];
  v20 = __dst[7];
  v21 = __dst[8];
  v22 = __dst[9];
  v15 = __dst[2];
  v16 = __dst[3];
  v17 = __dst[4];
  v18 = __dst[5];
  v13 = __dst[0];
  v14 = __dst[1];
  __src[10] = __dst[10];
  __src[11] = __dst[11];
  __src[6] = __dst[6];
  __src[7] = __dst[7];
  __src[8] = __dst[8];
  __src[9] = __dst[9];
  __src[2] = __dst[2];
  __src[3] = __dst[3];
  __src[4] = __dst[4];
  __src[5] = __dst[5];
  v25 = *&__dst[12];
  *&__src[12] = *&__dst[12];
  __src[0] = __dst[0];
  __src[1] = __dst[1];
  *(&__src[12] + 8) = v26;
  v6 = v33;
  *(a1 + 32) = v32;
  *(a1 + 48) = v6;
  *(a1 + 64) = v34;
  *(a1 + 80) = v35;
  v7 = v31;
  *a1 = v30;
  *(a1 + 16) = v7;
  *(a1 + 88) = v5;
  *(a1 + 104) = v9;
  *(a1 + 120) = v4;
  memcpy((a1 + 136), __src, 0x10CuLL);
  return outlined init with copy of GlassContainer.Effect(&v13, v10);
}

uint64_t closure #1 in GlassEffectView.body.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[24];
  v10 = v4;
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  memcpy((v6 + 16), a1, 0x11CuLL);
  outlined init with copy of [GlassContainer.Entry](&v10, v9, &lazy cache variable for type metadata for [GlassContainer.Entry], &type metadata for GlassContainer.Entry);
  outlined init with copy of GlassEffectView(a1, v9);
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v7 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v7)
    {
      goto LABEL_7;
    }

LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_9;
  }

LABEL_7:
  result = AGMakeUniqueID();
LABEL_10:
  *a2 = v4;
  a2[1] = partial apply for closure #1 in closure #1 in GlassEffectView.body.getter;
  a2[2] = v6;
  a2[3] = KeyPath;
  a2[4] = 0;
  a2[5] = result;
  return result;
}

uint64_t closure #1 in closure #1 in GlassEffectView.body.getter@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, 0x154uLL);
  if (one-time initialization token for center != -1)
  {
    swift_once();
  }

  v6 = static Alignment.center;
  v7 = *(a2 + 144);
  v26[8] = *(a2 + 128);
  v26[9] = v7;
  v26[10] = *(a2 + 160);
  v27 = *(a2 + 176);
  v8 = *(a2 + 80);
  v26[4] = *(a2 + 64);
  v26[5] = v8;
  v9 = *(a2 + 112);
  v26[6] = *(a2 + 96);
  v26[7] = v9;
  v10 = *(a2 + 16);
  v26[0] = *a2;
  v26[1] = v10;
  v11 = *(a2 + 48);
  v26[2] = *(a2 + 32);
  v26[3] = v11;
  v24 = *(a2 + 200);
  v12 = *(a2 + 224);
  v25 = *(a2 + 216);
  v13 = v25;
  memcpy(__srca, __src, 0x154uLL);
  v14 = *(a2 + 144);
  *&__srca[59] = *(a2 + 128);
  *&__srca[61] = v14;
  *&__srca[63] = *(a2 + 160);
  v15 = *(a2 + 80);
  *&__srca[51] = *(a2 + 64);
  *&__srca[53] = v15;
  v16 = *(a2 + 112);
  *&__srca[55] = *(a2 + 96);
  *&__srca[57] = v16;
  v17 = *(a2 + 16);
  *&__srca[43] = *a2;
  *&__srca[45] = v17;
  v18 = *(a2 + 48);
  *&__srca[47] = *(a2 + 32);
  *&__srca[49] = v18;
  LOBYTE(__srca[65]) = *(a2 + 176);
  memcpy(v29, __src, 0x154uLL);
  _ViewInputs.base.modify(v29, v19);
  type metadata accessor for TransitionBox<IdentityTransition>(0, &lazy cache variable for type metadata for TransitionBox<IdentityTransition>, &type metadata for IdentityTransition, &protocol witness table for IdentityTransition, type metadata accessor for TransitionBox);
  v20 = swift_allocObject();
  *a3 = v6;
  memcpy((a3 + 16), __srca, 0x210uLL);
  *(a3 + 544) = v13;
  *(a3 + 552) = *(a2 + 200);
  *(a3 + 568) = v12;
  memcpy((a3 + 576), v29, 0x154uLL);
  *(a3 + 920) = v20;
  outlined init with copy of GlassContainer.Entry(__dst, v22);
  outlined init with copy of GlassContainer.Entry(__dst, v22);
  outlined init with copy of GlassContainer.DisplayMaterial(v26, v22);
  outlined init with copy of GlassContainer.ResolvedStorage(&v25, v22);
  outlined init with copy of GlassContainer.DataStorage(&v24, v22);
}

uint64_t GlassEffectLayout.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, int *a5, double a6, double a7, double a8)
{
  v56 = *a5;
  v11 = *(a5 + 1);
  v54 = *(a5 + 16);
  v12 = *(a5 + 17);
  v13 = *(v8 + 16);
  v14 = *(v8 + 40);
  v73 = *(v8 + 24);
  v74 = v14;
  v75 = *(v8 + 56);
  v76 = *(v8 + 72);
  v48 = v13;
  v45 = v12;
  v65 = v12;
  v15 = *(v11 + 16);
  v55 = v11;

  if (!v15)
  {
  }

  v17 = 0;
  v18 = (v55 + 32);
  v53 = *MEMORY[0x1E698D3F8];
  v19 = (v55 + 40);
  v50 = a4;
  v49 = a3;
  while (1)
  {
    v20 = v65;
    if (v54)
    {
      if (v17 >= v15)
      {
        goto LABEL_28;
      }

      v21 = (v55 + 32 + 12 * v17);
      v22 = *v19;
    }

    else
    {
      if (v17 >= v15)
      {
        goto LABEL_29;
      }

      v21 = v18;
      v22 = v17;
    }

    if (v17 >= v15)
    {
      break;
    }

    v23 = *v21;
    v24 = v21[1];
    if (v24 == v53)
    {
      goto LABEL_4;
    }

    type metadata accessor for ViewList();
    InputValue = AGGraphGetInputValue();
    outlined init with copy of AnyTrackedValue(InputValue, v61);
    v26 = *&v61[24];
    v27 = *&v61[32];
    __swift_project_boxed_opaque_existential_1(v61, *&v61[24]);
    (*(v27 + 56))(&v57, v26, v27);
    v28 = v57;
    __swift_destroy_boxed_opaque_existential_1(v61);
    _s7SwiftUI14GlassContainerO5EntryVSgWOi0_(__src);
    memcpy(__dst, __src, 0x154uLL);

    _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA07_LayoutD0VyAA011GlassEffectK033_D12F2F25A0BD65FFBD3A7636B60067DFLLV0J0VG_Tt0B5(__dst, v28, v61);
    swift_bridgeObjectRelease_n();
    memcpy(v63, v61, sizeof(v63));
    memcpy(v64, v63, sizeof(v64));
    if (_s7SwiftUI14GlassContainerO5EntryVSgWOg(v64) == 1)
    {
      a4 = v50;
      a3 = v49;
LABEL_4:
      __src[0] = v56;
      __src[1] = v23;
      __src[2] = v24;
      __src[3] = v22;
      LOBYTE(__src[4]) = v20;
      *v61 = v56;
      *&v61[4] = v23;
      *&v61[8] = v24;
      *v63 = a1;
      v63[8] = a2 & 1;
      *&v63[16] = a3;
      v63[24] = a4 & 1;
      LayoutProxy.dimensions(in:)(v63, v64);
      *v63 = *v64;
      *&v63[8] = *&v64[8];
      *&v63[16] = *&v64[16];
      *&v63[32] = *&v64[32];
      LayoutSubview.place(at:anchor:dimensions:)(v63, 0.0, 0.0, 0.0, 0.0);
      goto LABEL_5;
    }

    memcpy(v61, v64, sizeof(v61));
    v57 = v73;
    v58 = v74;
    v59 = v75;
    v60 = v76;
    GlassContainer.Entry.shapeBounds(data:proxy:cache:options:)(v48, &v57, 3, v66);
    a4 = v50;
    a3 = v49;
    if ((v68 & 1) == 0)
    {
      v69 = v66[0];
      v70 = v66[1];
      v71 = v67;
      v29 = GlassContainer.Entry.ShapeBoundsResult.minimizedBounds.getter();
      v31 = v30;
      v33 = v32;
      origin = v71.origin;
      size = v71.size;
      Width = CGRectGetWidth(v71);
      v77.origin = origin;
      v77.size = size;
      Height = CGRectGetHeight(v77);
      v38 = a8 - v29 - v33;
      if (!v45)
      {
        v38 = v29;
      }

      v39 = v38 + a6;
      v40 = COERCE_UNSIGNED_INT64(v38 + a6) & 0x7FF0000000000000;
      if (v40 == 0x7FF0000000000000 && (COERCE_UNSIGNED_INT64(v38 + a6) & 0xFFFFFFFFFFFFFLL) != 0 || (v43 = v31 + a7, (*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) || v40 == 0x7FF0000000000000)
      {
        *&v57 = a1;
        BYTE8(v57) = a2 & 1;
        *&v58 = v49;
        BYTE8(v58) = v50 & 1;
        LayoutProxy.dimensions(in:)(&v57, v61);
        v57 = *v61;
        v58 = *&v61[16];
        v59 = *&v61[32];
        v41 = 0.0;
        v42 = 0.0;
      }

      else
      {
        *&v57 = Width;
        BYTE8(v57) = 0;
        *&v58 = Height;
        BYTE8(v58) = 0;
        LayoutProxy.dimensions(in:)(&v57, v61);
        v57 = *v61;
        v58 = *&v61[16];
        v59 = *&v61[32];
        v41 = v39;
        v42 = v43;
      }

      LayoutSubview.place(at:anchor:dimensions:)(&v57, v41, v42, 0.0, 0.0);
      outlined destroy of GlassContainer.Entry?(v63, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry);

      goto LABEL_6;
    }

    *&v57 = a1;
    BYTE8(v57) = a2 & 1;
    *&v58 = v49;
    BYTE8(v58) = v50 & 1;
    LayoutProxy.dimensions(in:)(&v57, v61);
    v57 = *v61;
    v58 = *&v61[16];
    v59 = *&v61[32];
    LayoutSubview.place(at:anchor:dimensions:)(&v57, 0.0, 0.0, 0.0, 0.0);
    outlined destroy of GlassContainer.Entry?(v63, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry);
LABEL_5:

LABEL_6:
    ++v17;
    v15 = *(v55 + 16);
    v18 += 2;
    v19 += 3;
    if (v17 == v15)
    {
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

double GlassContainer.Entry.ShapeBoundsResult.minimizedBounds.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v13 = *v0;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v15.origin.x = *v0;
  v15.origin.y = v1;
  v15.size.width = v3;
  v15.size.height = v4;
  v28.origin.x = v5;
  v28.origin.y = v6;
  v28.size.width = v7;
  v28.size.height = v0[7];
  if (!CGRectEqualToRect(v15, v28))
  {
    if (v2 < v5)
    {
      v16.origin.x = v2;
      v16.origin.y = v1;
      v16.size.width = v3;
      v16.size.height = v4;
      MaxX = CGRectGetMaxX(v16);
      v17.origin.x = v2;
      v17.origin.y = v1;
      v17.size.width = v3;
      v17.size.height = v4;
      CGRectGetMaxY(v17);
      v14 = MaxX - v7;
      v18.origin.x = v2;
      v18.origin.y = v1;
      v18.size.width = v3;
      v18.size.height = v4;
      MinX = CGRectGetMinX(v18);
      v19.origin.x = v2;
      v19.origin.y = v1;
      v19.size.width = v3;
      v19.size.height = v4;
      CGRectGetMinY(v19);
      v20.origin.x = v2;
      v20.origin.y = v1;
      v20.size.width = v3;
      v20.size.height = v4;
      v10 = CGRectGetMaxX(v20);
      v21.origin.x = v2;
      v21.origin.y = v1;
      v21.size.width = v3;
      v21.size.height = v4;
      CGRectGetMaxY(v21);
      v11 = v14;
      if (MinX > v14)
      {
        v11 = MinX;
      }

      if (v10 < v11)
      {
        v11 = v10;
      }

      v13 = v11;
    }

    if (v1 < v6)
    {
      v22.origin.x = v2;
      v22.origin.y = v1;
      v22.size.width = v3;
      v22.size.height = v4;
      CGRectGetMaxX(v22);
      v23.origin.x = v2;
      v23.origin.y = v1;
      v23.size.width = v3;
      v23.size.height = v4;
      CGRectGetMaxY(v23);
      v24.origin.x = v2;
      v24.origin.y = v1;
      v24.size.width = v3;
      v24.size.height = v4;
      CGRectGetMinX(v24);
      v25.origin.x = v2;
      v25.origin.y = v1;
      v25.size.width = v3;
      v25.size.height = v4;
      CGRectGetMinY(v25);
      v26.origin.x = v2;
      v26.origin.y = v1;
      v26.size.width = v3;
      v26.size.height = v4;
      CGRectGetMaxX(v26);
      v27.origin.x = v2;
      v27.origin.y = v1;
      v27.size.width = v3;
      v27.size.height = v4;
      CGRectGetMaxY(v27);
    }
  }

  return v13;
}

unint64_t protocol witness for Layout.spacing(subviews:cache:) in conformance GlassEffectLayout@<X0>(uint64_t a1@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  *(a1 + 8) = 2;
  return result;
}

double closure #1 in GlassEntryContainerView.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, a2, 0x154uLL);
  v6 = *(a2 + 488);
  v44 = *(a2 + 472);
  v45 = v6;
  v46 = *(a2 + 504);
  v47 = *(a2 + 520);
  v7 = *(a2 + 424);
  v40 = *(a2 + 408);
  v41 = v7;
  v8 = *(a2 + 456);
  v42 = *(a2 + 440);
  v43 = v8;
  v9 = *(a2 + 360);
  v36 = *(a2 + 344);
  v37 = v9;
  v10 = *(a2 + 392);
  v38 = *(a2 + 376);
  v39 = v10;
  v35 = *(a2 + 528);
  v28 = *(a2 + 536);
  v11 = *(a2 + 544);
  v12 = *(a2 + 552);
  memcpy(__src, a2, sizeof(__src));
  v13 = *(a1 + 16);
  v29[0] = *a1;
  v29[1] = v13;
  v29[2] = *(a1 + 32);
  v30 = *(a1 + 48);
  outlined init with copy of GlassContainer.Entry(__dst, v49);
  outlined init with copy of GlassContainer.Entry(__dst, v49);
  outlined init with copy of GlassContainer.ResolvedStorage(&v35, v49);

  outlined init with copy of GlassContainer.DisplayMaterial(&v36, v49);
  GlassContainer.Entry.shapeBounds(data:proxy:cache:options:)(v11, v29, 3, v33);
  v14 = *v33;
  v15 = *&v33[1];
  v16 = *&v33[2];
  v17 = *&v33[3];
  v18 = *&v33[4];
  v19 = *&v33[5];
  v20 = *&v33[6];
  v21 = *&v33[7];
  memcpy(v49, __src, 0x154uLL);
  outlined destroy of GlassContainer.Entry(v49);
  if (v34)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v14;
  }

  v27 = v22;
  if (v34)
  {
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    v23 = 0.0;
  }

  else
  {
    v23 = v21;
  }

  memcpy(v32, __dst, 0x154uLL);
  *&v32[59] = v44;
  *&v32[61] = v45;
  *&v32[63] = v46;
  *&v32[51] = v40;
  *&v32[53] = v41;
  *&v32[55] = v42;
  *&v32[57] = v43;
  *&v32[43] = v36;
  *&v32[45] = v37;
  *&v32[47] = v38;
  *&v32[49] = v39;
  LOBYTE(v32[65]) = v47;
  v24 = v35;
  memcpy(a3, v32, 0x210uLL);
  *(a3 + 528) = v24;
  *(a3 + 536) = v28;
  *(a3 + 544) = v11;
  *(a3 + 552) = v12;
  v25 = *(a1 + 16);
  *(a3 + 560) = *a1;
  *(a3 + 576) = v25;
  *(a3 + 592) = *(a1 + 32);
  *(a3 + 608) = *(a1 + 48);
  result = v27;
  *(a3 + 616) = v27;
  *(a3 + 624) = v15;
  *(a3 + 632) = v16;
  *(a3 + 640) = v17;
  *(a3 + 648) = v18;
  *(a3 + 656) = v19;
  *(a3 + 664) = v20;
  *(a3 + 672) = v23;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance GlassEntryContainerView@<X0>(double (**a1)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = swift_allocObject();
  memcpy((v3 + 16), v1, 0x230uLL);
  *a1 = partial apply for closure #1 in GlassEntryContainerView.body.getter;
  a1[1] = v3;
  return outlined init with copy of GlassEntryContainerView(__dst, &v5);
}

double GlassEntryView.body.getter(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  memcpy(__dst, v1, sizeof(__dst));
  v26 = __dst[66];
  v25 = *(v1 + 536);
  memcpy(v27, v1, 0x154uLL);
  v4 = *(v1 + 576);
  *&__src[364] = *(v1 + 560);
  *&__src[380] = v4;
  *&__src[396] = *(v1 + 592);
  *&__src[412] = *(v1 + 608);
  v5 = *(v1 + 632);
  *&__src[416] = *(v1 + 616);
  *&__src[432] = v5;
  v6 = *(v1 + 664);
  *&__src[448] = *(v1 + 648);
  *&__src[464] = v6;
  *&__src[8] = *(v1 + 536);
  memcpy(&__src[24], v1, 0x154uLL);
  *__src = __dst[66];
  *&__src[480] = __dst[69];
  memcpy(v37, __src, sizeof(v37));
  outlined init with copy of GlassContainer.ResolvedStorage(&v26, v31);
  outlined init with copy of GlassContainer.DataStorage(&v25, v31);
  outlined init with copy of GlassContainer.Entry(v27, v31);

  outlined init with copy of GlassEntryLayout(__src, v31);
  closure #1 in GlassEntryView.body.getter(__dst, v31);
  v16 = v31[1];
  v15 = v32;
  v7 = v33;
  outlined destroy of GlassEntryLayout(__src);
  v14 = v31[0];
  memcpy(v36, v27, sizeof(v36));
  memcpy(&v18[4], v27, 0x154uLL);
  v23[8] = *&__dst[59];
  v23[9] = *&__dst[61];
  v23[10] = *&__dst[63];
  v24 = __dst[65];
  v23[4] = *&__dst[51];
  v23[5] = *&__dst[53];
  v23[6] = *&__dst[55];
  v23[7] = *&__dst[57];
  v23[0] = *&__dst[43];
  v23[1] = *&__dst[45];
  v23[2] = *&__dst[47];
  v23[3] = *&__dst[49];
  memcpy(v17, v27, 0x154uLL);
  *&v17[59] = *&__dst[59];
  *&v17[61] = *&__dst[61];
  *&v17[63] = *&__dst[63];
  *&v17[51] = *&__dst[51];
  *&v17[53] = *&__dst[53];
  *&v17[55] = *&__dst[55];
  *&v17[57] = *&__dst[57];
  *&v17[43] = *&__dst[43];
  *&v17[45] = *&__dst[45];
  *&v17[47] = *&__dst[47];
  *&v17[49] = *&__dst[49];
  LOBYTE(v17[65]) = __dst[65];
  memcpy(&v19[4], v17, 0x209uLL);
  memcpy(&v20[7], v27, 0x154uLL);
  v8 = v27[41];
  outlined init with copy of GlassContainer.Entry(v27, v31);
  outlined init with copy of GlassContainer.Entry(v27, v31);
  outlined init with copy of GlassContainer.Entry(v27, v31);
  outlined init with copy of GlassContainer.Entry(v27, v31);
  outlined init with copy of GlassContainer.DisplayMaterial(v23, v31);
  GlassContainerCache.entryState(id:)(v8, v29);
  outlined init with copy of GlassContainer.TransitionState(v30, v31);
  outlined destroy of GlassContainer.EntryState(v29);
  memcpy(&v21[4], v30, 0x180uLL);
  GlassContainerCache.entryState(id:)(v8, v31);
  outlined destroy of GlassContainer.EntryState(v31);
  v9 = v34;
  v10 = v35;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v8;
  memcpy(v3, v37, 0x1E8uLL);
  *(v3 + 488) = v14;
  *(v3 + 504) = v16;
  *(v3 + 520) = v15;
  *(v3 + 528) = v7;
  memcpy((v3 + 536), v36, 0x154uLL);
  memcpy((v3 + 876), v18, 0x158uLL);
  memcpy((v3 + 1220), v19, 0x20DuLL);
  memcpy((v3 + 1745), v20, 0x15BuLL);
  memcpy((v3 + 2092), v21, 0x184uLL);
  *(v3 + 2480) = v9;
  *(v3 + 2488) = 0;
  *(v3 + 2496) = v10;
  *(v3 + 2504) = &async function pointer to partial apply for closure #1 in View.glassEntryScheduledAnimation(_:cache:);
  *(v3 + 2512) = v12;
  result = 0.0;
  *(v3 + 2520) = 0u;
  return result;
}

uint64_t closure #1 in GlassEntryView.body.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[16];
  v10 = v4;
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  memcpy((v6 + 16), a1, 0x2A8uLL);
  outlined init with copy of [GlassContainer.Entry](&v10, v9, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item);
  outlined init with copy of GlassEntryView(a1, v9);
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v7 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v7)
    {
      goto LABEL_7;
    }

LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_9;
  }

LABEL_7:
  result = AGMakeUniqueID();
LABEL_10:
  *a2 = v4;
  a2[1] = partial apply for closure #1 in closure #1 in GlassEntryView.body.getter;
  a2[2] = v6;
  a2[3] = KeyPath;
  a2[4] = 0;
  a2[5] = result;
  return result;
}

uint64_t closure #1 in closure #1 in GlassEntryView.body.getter@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, 0x289uLL);
  memcpy(v13, a2, 0x154uLL);
  v12 = *(a2 + 528);
  v6 = v12;
  v11 = *(a2 + 536);
  v7 = *(a2 + 552);
  memcpy(__srca, __src, 0x289uLL);
  memcpy(&__srca[656], a2, 0x154uLL);
  memcpy(a3, __srca, 0x3E8uLL);
  *(a3 + 1000) = v6;
  *(a3 + 1008) = *(a2 + 536);
  *(a3 + 1024) = v7;
  outlined init with copy of GlassContainer.Item(__dst, v9);
  outlined init with copy of GlassContainer.Entry(v13, v9);
  outlined init with copy of GlassContainer.ResolvedStorage(&v12, v9);
  outlined init with copy of GlassContainer.DataStorage(&v11, v9);
}

double specialized static GlassEffectPlatformItemModifier._makeView(modifier:inputs:body:)@<D0>(__int128 *a1@<X1>, double *a2@<X8>)
{
  v3 = a1[3];
  v23 = a1[2];
  v24 = v3;
  v25 = a1[4];
  v26 = *(a1 + 20);
  v4 = a1[1];
  v21 = *a1;
  v22 = v4;
  specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(&v21, &v19);
  v5 = v24;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5Tf4dn_n(v24) & 1) != 0 && (v6 = v21, BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey), (v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v6, *v14)) != 0) && (*(v7 + 72) & 8) != 0 || (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5Tf4dn_n(v5) & 1) != 0 && (v8 = v21, BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey), (v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v8, *v14)) != 0) && (*(v9 + 72))
  {
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    *&v14[48] = v24;
    v15 = v25;
    v16 = v26;
    *v14 = v21;
    *&v14[16] = v22;
    *&v14[32] = v23;
    v13 = 2;
    outlined init with copy of _ViewInputs(&v21, v12);
    PlatformItemRuleConfiguration.init(inputs:kind:)(v14, &v13, &v17);
    *&v12[4] = v17;
    *&v12[20] = v18[0];
    *&v12[32] = *(v18 + 12);
    *v14 = OffsetAttribute2;
    *&v14[4] = *v12;
    *&v14[20] = *&v12[16];
    *&v14[36] = *(v18 + 12);
    specialized _ViewOutputs.makePlatformItem<A>(inputs:itemRule:)(&v21, v14);
  }

  *a2 = v19;
  result = v20;
  a2[1] = v20;
  return result;
}

double static GlassEffectPlatformItemModifier._makeView(modifier:inputs:body:)@<D0>(uint64_t a1@<X1>, void (*a2)(uint64_t *__return_ptr)@<X2>, double *a3@<X8>)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  v26 = *(a1 + 32);
  v27 = v4;
  v6 = *(a1 + 48);
  v28 = *(a1 + 64);
  v7 = *(a1 + 16);
  v24 = *a1;
  v25 = v7;
  v19[2] = v26;
  v19[3] = v6;
  v20 = *(a1 + 64);
  v29 = *(a1 + 80);
  v21 = *(a1 + 80);
  v19[0] = v24;
  v19[1] = v5;
  a2(&v22);
  v8 = v27;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5Tf4dn_n(v27) & 1) != 0 && (v9 = v24, BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey), (v10 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v9, *&v19[0])) != 0) && (*(v10 + 72) & 8) != 0 || (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5Tf4dn_n(v8) & 1) != 0 && (v11 = v24, BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey), (v12 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v11, *&v19[0])) != 0) && (*(v12 + 72))
  {
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v19[2] = v26;
    v19[3] = v27;
    v20 = v28;
    v21 = v29;
    v19[0] = v24;
    v19[1] = v25;
    v16 = 2;
    outlined init with copy of _ViewInputs(&v24, v15);
    PlatformItemRuleConfiguration.init(inputs:kind:)(v19, &v16, &v17);
    *&v15[4] = v17;
    *&v15[20] = v18[0];
    *&v15[32] = *(v18 + 12);
    LODWORD(v19[0]) = OffsetAttribute2;
    *(v19 + 4) = *v15;
    *(&v19[1] + 4) = *&v15[16];
    *(&v19[2] + 4) = *(v18 + 12);
    specialized _ViewOutputs.makePlatformItem<A>(inputs:itemRule:)(&v24, v19);
  }

  *a3 = v22;
  result = v23;
  a3[1] = v23;
  return result;
}

uint64_t GlassEffectPlatformItemModifier.GlassPlatformItemRule.makeContent()(uint64_t a1)
{
  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v12);
  v6 = v12[9];
  *(a1 + 152) = v12[8];
  *(a1 + 168) = v6;
  *(a1 + 184) = v13[0];
  *(a1 + 195) = *(v13 + 11);
  v7 = v12[5];
  *(a1 + 88) = v12[4];
  *(a1 + 104) = v7;
  v8 = v12[7];
  *(a1 + 120) = v12[6];
  *(a1 + 136) = v8;
  v9 = v12[1];
  *(a1 + 24) = v12[0];
  *(a1 + 40) = v9;
  v10 = v12[3];
  *(a1 + 56) = v12[2];
  *(a1 + 72) = v10;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = v5;

  return v4 & 1;
}

uint64_t static GlassEntryInteractionModifier._makeView(modifier:inputs:body:)@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = (a1 + 1);
  v8 = *a1;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(*a1, &v27);
  Strong = swift_weakLoadStrong();
  v10 = outlined destroy of WeakBox<GlassContainerCache>(&v27);
  if (Strong)
  {
    v11 = *(Strong + 136);
    if (v11 && (v10 = (*(v11 + 88))(v10)) != 0)
    {
      v13 = v10;
      v14 = v12;
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v16 = AGGraphCreateOffsetAttribute2();
      v17 = *v7;
      v18 = v7[2];
      v19 = v7[3];
      v29 = v7[1];
      v30 = v18;
      v31[0] = v19;
      *(v31 + 12) = *(v7 + 60);
      v28 = v17;
      v27 = v8;
      static GlassEntryInteractionModifier._makeRepresentable<A>(type:entry:material:cache:inputs:body:)(OffsetAttribute2, v16, Strong, &v27, a2, a3, v13, a4, v14);
    }

    else
    {
      v27 = v8;
      v20 = *v7;
      v21 = v7[2];
      v22 = v7[3];
      v29 = v7[1];
      v30 = v21;
      v31[0] = v22;
      *(v31 + 12) = *(v7 + 60);
      v28 = v20;
      (a2)(v10, &v27);
    }
  }

  else
  {
    v27 = v8;
    v24 = *v7;
    v25 = v7[2];
    v26 = v7[3];
    v29 = v7[1];
    v30 = v25;
    v31[0] = v26;
    *(v31 + 12) = *(v7 + 60);
    v28 = v24;
    return (a2)(v10, &v27);
  }
}

uint64_t static GlassEntryInteractionModifier._makeRepresentable<A>(type:entry:material:cache:inputs:body:)@<X0>(unsigned int a1@<W1>, unsigned int a2@<W2>, uint64_t a3@<X3>, __int128 *a4@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9)
{
  v55 = *MEMORY[0x1E69E9840];
  v13 = a4[3];
  v51 = a4[2];
  v52 = v13;
  v53 = a4[4];
  v54 = *(a4 + 20);
  v14 = a4[1];
  v49 = *a4;
  v50 = v14;
  *&v37 = __PAIR64__(a2, a1);
  *(&v37 + 1) = a3;
  *&v38 = 0;
  *&v43 = a7;
  *(&v43 + 1) = MEMORY[0x1E69E6530];
  *&v44 = a9;
  *(&v44 + 1) = MEMORY[0x1E69E6540];
  v22 = type metadata accessor for CoreInteractionRepresentableModifier();
  v23 = type metadata accessor for GlassEntryInteractionModifier.ModifierInit();
  WitnessTable = swift_getWitnessTable();
  v15 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v37, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v21, v23, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);

  _GraphValue.init(_:)(v43, v20);
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v33 = v51;
  v34 = v52;
  v35 = v53;
  v36 = v54;
  v31 = v49;
  v32 = v50;
  v18 = v51;
  LODWORD(v33) = 0;
  v37 = v49;
  v38 = v50;
  v42 = v54;
  v40 = v52;
  v41 = v53;
  v39 = v33;
  v27 = v33;
  v28 = v52;
  v29 = v53;
  v30 = v54;
  v25 = v49;
  v26 = v50;
  outlined init with copy of _ViewInputs(&v49, &v43);
  outlined init with copy of _ViewInputs(&v37, &v43);
  static CoreInteractionRepresentableModifier._makeView(modifier:inputs:body:)(&v25, a5, a6, a7, MEMORY[0x1E69E6530], a9, MEMORY[0x1E69E6540], a8);
  v45 = v27;
  v46 = v28;
  v47 = v29;
  v48 = v30;
  v43 = v25;
  v44 = v26;
  outlined destroy of _ViewInputs(&v43);
  LODWORD(v33) = v18;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a8, &v31);
    AGSubgraphEndTreeElement();
  }

  v27 = v33;
  v28 = v34;
  v29 = v35;
  v30 = v36;
  v25 = v31;
  v26 = v32;
  return outlined destroy of _ViewInputs(&v25);
}

uint64_t GlassEntryInteractionModifier.ModifierInit.updateValue()(uint64_t a1)
{
  v90 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v70 = a1;
  *v89 = v3;
  *&v89[8] = MEMORY[0x1E69E6530];
  *&v89[16] = v2;
  *&v89[24] = MEMORY[0x1E69E6540];
  v4 = type metadata accessor for CoreInteractionRepresentableModifier();
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v71 = v62 - v5;
  v6 = type metadata accessor for Optional();
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v68 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v62 - v9;
  v11 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v69 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v16 = *(v1 + 1);
  v15 = *(v1 + 2);
  v63 = v1;
  v66 = v15;
  v67 = v14;
  Value = AGGraphGetValue();
  memcpy(v89, Value, sizeof(v89));
  memcpy(v79, Value, 0x154uLL);
  outlined init with copy of GlassContainer.Entry(v89, &v83);
  v18 = AGGraphGetValue();
  v19 = *(v18 + 32);
  v20 = *(v18 + 48);
  v21 = *(v18 + 16);
  *v89 = *v18;
  *&v89[48] = v20;
  *&v89[32] = v19;
  *&v89[16] = v21;
  v22 = *(v18 + 96);
  v23 = *(v18 + 112);
  v24 = *(v18 + 80);
  *&v89[64] = *(v18 + 64);
  *&v89[112] = v23;
  *&v89[96] = v22;
  *&v89[80] = v24;
  v26 = *(v18 + 144);
  v25 = *(v18 + 160);
  v27 = *(v18 + 176);
  *&v89[128] = *(v18 + 128);
  v89[176] = v27;
  *&v89[160] = v25;
  *&v89[144] = v26;
  *&v78[128] = *(v18 + 128);
  *&v78[144] = *(v18 + 144);
  *&v78[160] = *(v18 + 160);
  v78[176] = *(v18 + 176);
  *&v78[64] = *(v18 + 64);
  *&v78[80] = *(v18 + 80);
  *&v78[96] = *(v18 + 96);
  *&v78[112] = *(v18 + 112);
  *v78 = *v18;
  *&v78[16] = *(v18 + 16);
  *&v78[32] = *(v18 + 32);
  *&v78[48] = *(v18 + 48);
  outlined init with copy of GlassContainer.DisplayMaterial(v89, &v83);
  v62[1] = v16;
  GlassContainerCache.interaction<A>(for:entry:material:)(v79, v78, v3, v10);
  v80[8] = *&v78[128];
  v80[9] = *&v78[144];
  v80[10] = *&v78[160];
  v81 = v78[176];
  v80[4] = *&v78[64];
  v80[5] = *&v78[80];
  v80[6] = *&v78[96];
  v80[7] = *&v78[112];
  v80[0] = *v78;
  v80[1] = *&v78[16];
  v80[2] = *&v78[32];
  v80[3] = *&v78[48];
  outlined destroy of GlassContainer.DisplayMaterial(v80);
  memcpy(v82, v79, 0x154uLL);
  outlined destroy of GlassContainer.Entry(v82);
  if ((*(v11 + 48))(v10, 1, v3) == 1)
  {
    (*(v64 + 8))(v10, v65);
    v28 = v68;
    (*(v11 + 56))(v68, 1, 1, v3);
    *v89 = -1;
    v29 = v71;
    v30 = CoreInteractionRepresentableModifier.init(representable:id:)(v28, v89, MEMORY[0x1E69E6530], v71);
    MEMORY[0x1EEE9AC00](v30);
    v62[-2] = v70;
    v62[-1] = swift_getWitnessTable();
    v31 = v73;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v29, partial apply for closure #1 in StatefulRule.value.setter, &v62[-4], v73, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v32);
    return (*(v72 + 8))(v29, v31);
  }

  else
  {
    v64 = v11;
    v65 = v2;
    (*(v11 + 32))(v69, v10, v3);
    v34 = AGGraphGetValue();
    memcpy(v89, v34, sizeof(v89));
    memcpy(v78, v34, sizeof(v78));
    outlined init with copy of GlassContainer.Entry(v89, &v83);
    memcpy(v79, v78, 0x154uLL);
    v35 = v79[5];
    v36 = v79[6];
    v37 = v79[7];
    v38 = v79[8];
    v39 = v79[9];
    v40 = v79[10];
    outlined copy of _Glass.Variant.Role(v79[5], v79[6]);

    outlined destroy of GlassContainer.Entry(v79);
    *v89 = v35;
    *&v89[8] = v36;

    outlined copy of _Glass.Variant.Role(v35, v36);
    _Glass.Variant.ID.init(_:)(v89, &v83);
    v41 = v83;
    v42 = v84;
    outlined consume of _Glass.Variant.Role(v35, v36);

    v83 = v41;
    v84 = v42;
    v85 = v38;
    v86 = v37;
    v87 = v39;
    v88 = v40;
    Hasher.init(_seed:)();
    _Glass.ID.hash(into:)(v89);
    v43 = Hasher._finalize()();
    outlined consume of _Glass.Variant.ID(v41, v42);

    v44 = v66;
    if (v66 != v43)
    {
      v45 = AGGraphGetValue();
      memcpy(v89, v45, sizeof(v89));
      memcpy(v77, v45, sizeof(v77));
      outlined init with copy of GlassContainer.Entry(v89, &v83);
      memcpy(v78, v77, sizeof(v78));
      v46 = *&v78[40];
      v47 = *&v78[48];
      v48 = v78[56];
      v49 = *&v78[64];
      v50 = *&v78[72];
      v51 = v78[80];
      outlined copy of _Glass.Variant.Role(*&v78[40], *&v78[48]);

      outlined destroy of GlassContainer.Entry(v78);
      *v89 = v46;
      *&v89[8] = v47;

      outlined copy of _Glass.Variant.Role(v46, v47);
      _Glass.Variant.ID.init(_:)(v89, &v75);
      v52 = v75;
      v53 = v76;
      outlined consume of _Glass.Variant.Role(v46, v47);

      v83 = v52;
      v84 = v53;
      v85 = v49;
      v86 = v48;
      v87 = v50;
      v88 = v51;
      Hasher.init(_seed:)();
      _Glass.ID.hash(into:)(v89);
      v44 = Hasher._finalize()();
      outlined consume of _Glass.Variant.ID(v52, v53);

      *(v63 + 2) = v44;
      v54 = AGGraphGetValue();
      memcpy(v89, v54, sizeof(v89));
      memcpy(v74, v54, sizeof(v74));
      outlined init with copy of GlassContainer.Entry(v89, &v83);
      memcpy(v89, v74, sizeof(v89));
      outlined destroy of GlassContainer.Entry(v89);
      GlassContainerCache.resetInteractionState(id:)(*&v89[328]);
    }

    v55 = v64;
    v56 = v68;
    v57 = v69;
    (*(v64 + 16))(v68, v69, v3);
    (*(v55 + 56))(v56, 0, 1, v3);
    *v89 = v44;
    v58 = v71;
    v59 = CoreInteractionRepresentableModifier.init(representable:id:)(v56, v89, MEMORY[0x1E69E6530], v71);
    MEMORY[0x1EEE9AC00](v59);
    v62[-2] = v70;
    v62[-1] = swift_getWitnessTable();
    v60 = v73;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v58, closure #1 in StatefulRule.value.setterpartial apply, &v62[-4], v73, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v61);
    (*(v72 + 8))(v58, v60);
    return (*(v55 + 8))(v57, v3);
  }
}

uint64_t static GlassEntryFlexInteractionModifier._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a1[3];
  v27 = a1[2];
  v28 = v7;
  v29 = a1[4];
  v30 = *(a1 + 20);
  v8 = a1[1];
  v25 = *a1;
  v26 = v8;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(v25, v23);
  Strong = swift_weakLoadStrong();
  result = outlined destroy of WeakBox<GlassContainerCache>(v23);
  if (Strong)
  {
    LODWORD(v23[0]) = AGGraphCreateOffsetAttribute2();
    *(&v23[0] + 1) = Strong;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type GlassEntryFlexInteractionModifier.InitModifier and conformance GlassEntryFlexInteractionModifier.InitModifier();

    v11 = Attribute.init<A>(body:value:flags:update:)();

    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v19 = v27;
    v20 = v28;
    v21 = v29;
    v22 = v30;
    v17 = v25;
    v18 = v26;
    v13 = v27;
    LODWORD(v19) = 0;
    v24 = v30;
    v23[3] = v28;
    v23[4] = v29;
    v23[0] = v25;
    v23[1] = v26;
    v23[2] = v19;
    outlined init with copy of _ViewInputs(&v25, v15);
    outlined init with copy of _ViewInputs(v23, v15);
    _s7SwiftUI12ViewModifierPAAE04makeC08modifier6inputs4bodyAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVAiA01_J0V_ANtctFZAA015FlexInteractionD0V_Tt3B5(v11, v23, a2, a3, a4);
    outlined destroy of _ViewInputs(v23);
    LODWORD(v19) = v13;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a4, &v17);
      AGSubgraphEndTreeElement();
    }

    v15[2] = v19;
    v15[3] = v20;
    v15[4] = v21;
    v16 = v22;
    v15[0] = v17;
    v15[1] = v18;
    return outlined destroy of _ViewInputs(v15);
  }

  else
  {
    *a4 = MEMORY[0x1E69E7CC0];
    v14 = *MEMORY[0x1E698D3F8];
    *(a4 + 8) = 0;
    *(a4 + 12) = v14;
  }

  return result;
}

unint64_t GlassEntryFlexInteractionModifier.InitModifier.value.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  result = GlassContainerCache.interactionStateAttr(id:)(*(Value + 328));
  if ((result & 0x100000000) != 0)
  {
    v6 = 0;
    v4 = 0uLL;
    __asm { FMOV            V1.2D, #1.0 }
  }

  else
  {
    result = AGGraphGetValue();
    _Q1 = *result;
    v4 = *(result + 16);
    v6 = *(result + 32);
  }

  *a1 = _Q1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t closure #1 in View.glassEntryScheduledAnimation(_:cache:)(uint64_t a1, uint64_t a2)
{
  v2[488] = a2;
  v2[487] = a1;
  type metadata accessor for MainActor();
  v2[489] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in View.glassEntryScheduledAnimation(_:cache:), v4, v3);
}

uint64_t closure #1 in View.glassEntryScheduledAnimation(_:cache:)()
{
  v14 = v0;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    GlassContainerCache.entryState(id:)(*(v0 + 3904), __src);
    memset(&__src[13], 0, 24);
    memcpy((v0 + 2576), __src, 0x278uLL);
    swift_beginAccess();
    v3 = *(v2 + 176);
    memcpy((v0 + 1296), (v0 + 2576), 0x278uLL);
    *(v0 + 1928) = v3;
    _ViewInputs.base.modify(v0 + 1296);
    memcpy(v11, (v0 + 1296), sizeof(v11));
    memcpy((v0 + 656), (v0 + 1296), 0x27CuLL);
    v4 = _s7SwiftUI9SeedValueVyAA14GlassContainerO10EntryStateVGSgWOg(v0 + 656);
    v5 = *(v0 + 3904);
    if (v4 == 1)
    {
      outlined init with copy of GlassContainer.EntryState(v0 + 2576, v0 + 3208);
      specialized Dictionary._Variant.removeValue(forKey:)(v5, v13);
      memcpy((v0 + 1936), v13, 0x27CuLL);
      outlined destroy of SeedValue<GlassContainer.EntryState>?(v0 + 1936);
    }

    else
    {
      memcpy((v0 + 16), v11, 0x27CuLL);
      outlined init with copy of GlassContainer.EntryState(v0 + 2576, v0 + 1936);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13[0] = *(v2 + 168);
      *(v2 + 168) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 16), v5, isUniquelyReferenced_nonNull_native);
      *(v2 + 168) = v13[0];
    }

    swift_endAccess();
    memcpy((v0 + 1936), __src, 0x278uLL);
    outlined destroy of GlassContainer.EntryState(v0 + 1936);
    v7 = *(v2 + 200) - 1;
    *(v2 + 200) = v7;
    if (!v7)
    {
      GlassContainerCache.invalidateResolved(transaction:)(0);
    }

    *(v2 + 148) = 256;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v8 = static Animation.default;
    v13[0] = 0;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v13, v8);

    GlassContainerCache.invalidateResolved(transaction:)(v13[0]);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t GlassEntryLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = *(a5 + 8);
  v10 = *(a5 + 16);
  if (a2)
  {
    v11 = 10.0;
  }

  else
  {
    v11 = *&a1;
  }

  if (a4)
  {
    v12 = 10.0;
  }

  else
  {
    v12 = *&a3;
  }

  v13 = *(v9 + 16);

  if (v13)
  {
    v14 = 0;
    v15 = v9 + 32;
    v16 = *MEMORY[0x1E698D3F8];
    v37 = a4 & 1;
    v38 = a2 & 1;
    v39 = a1;
    v40 = a3;
    v41 = v9 + 32;
    while (1)
    {
      v17 = v14;
      for (i = (v15 + 8 * v14++); ; i += 2)
      {
        v20 = v14 - 1;
        if (v10)
        {
          if (v20 >= v13)
          {
            goto LABEL_38;
          }

          v21 = (v15 + 12 * v17);
        }

        else
        {
          v21 = i;
          if (v20 >= v13)
          {
            goto LABEL_39;
          }
        }

        if (v20 >= v13)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        if (v21[1] != v16)
        {
          break;
        }

LABEL_12:
        v13 = *(v9 + 16);
        ++v17;
        if (v14++ == v13)
        {
        }
      }

      v22 = v9;
      v23 = v10;
      v24 = *v21;
      type metadata accessor for ViewList();
      InputValue = AGGraphGetInputValue();
      outlined init with copy of AnyTrackedValue(InputValue, v42);
      v27 = v42[3];
      v26 = v42[4];
      __swift_project_boxed_opaque_existential_1(v42, v42[3]);
      (*(v26 + 56))(&v43, v27, v26);
      v28 = v43;
      __swift_destroy_boxed_opaque_existential_1(v42);
      _s7SwiftUI14GlassContainerO4ItemVSgWOi0_(__src);
      memcpy(__dst, __src, 0x289uLL);

      _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA07_LayoutD0VyAA010GlassEntryK033_D12F2F25A0BD65FFBD3A7636B60067DFLLV0J0VG_Tt0B5(__dst, v28, v42);
      swift_bridgeObjectRelease_n();
      memcpy(v45, v42, 0x289uLL);
      memcpy(v46, v45, 0x289uLL);
      if (_s7SwiftUI14GlassContainerO4ItemVSgWOg(v46) == 1)
      {
        goto LABEL_11;
      }

      if (v46[28] != 1)
      {
        break;
      }

      v10 = v23;
      if (v24 == v16)
      {
        v29 = &static LayoutComputer.defaultValue;
        v30 = v40;
        v9 = v22;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v29 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v29 = AGGraphGetInputValue();
        v30 = v40;
        v9 = v22;
      }

      v31 = *v29;
      v32 = one-time initialization token for lockAssertionsAreEnabled;

      if (v32 != -1)
      {
        swift_once();
      }

      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_40;
        }
      }

      v42[0] = v39;
      LOBYTE(v42[1]) = v38;
      v42[2] = v30;
      LOBYTE(v42[3]) = v37;
      v33 = (*(*v31 + 120))(v42);
      v35 = v34;
      outlined destroy of GlassContainer.Entry?(v45, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item);

      if (v11 <= v33)
      {
        v11 = v33;
      }

      if (v12 <= v35)
      {
        v12 = v35;
      }

      v13 = *(v9 + 16);
      v15 = v41;
      if (v13 == v14)
      {
      }
    }

    outlined destroy of GlassContainer.Entry?(v45, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item);
LABEL_11:
    v15 = v41;
    v10 = v23;
    v9 = v22;
    goto LABEL_12;
  }
}

uint64_t GlassEntryLayout.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v6 = v5;
  v134 = v7;
  v133 = v8;
  v120 = v9;
  v121 = v10;
  v119 = v2;
  v12 = *(v11 + 1);
  v138 = *(v11 + 16);
  v139 = *v11;
  v13 = *(v11 + 17);
  v14 = *(v1 + 16);
  memcpy(v162, (v1 + 24), sizeof(v162));
  v130 = *(v1 + 352);
  v129 = *(v1 + 360);
  v15 = *(v1 + 380);
  v163 = *(v1 + 364);
  v164 = v15;
  v165 = *(v1 + 396);
  v166 = *(v1 + 412);
  v118 = v13;
  v152 = v13;
  v16 = *(v12 + 16);

  if (!v16)
  {
  }

  v18 = 0;
  v137 = v12 + 32;
  v136 = *MEMORY[0x1E698D3F8];
  v19 = *MEMORY[0x1E695F050];
  v20 = *(MEMORY[0x1E695F050] + 8);
  v21 = *(MEMORY[0x1E695F050] + 16);
  v22 = *(MEMORY[0x1E695F050] + 24);
  v124 = v4;
  v128 = v6;
  v122 = v22;
  v123 = *MEMORY[0x1E695F050];
  v116 = v21;
  v117 = v20;
  v135 = v12;
LABEL_7:
  v25 = v152;
  if (v138)
  {
    if (v18 >= v16)
    {
      goto LABEL_93;
    }

    v26 = (v137 + 12 * v18);
    v24 = v26[2];
  }

  else
  {
    if (v18 >= v16)
    {
      goto LABEL_94;
    }

    v26 = (v137 + 8 * v18);
    v24 = v18;
  }

  if (v18 < *(v12 + 16))
  {
    v23 = *v26;
    v27 = v26[1];
    if (v27 == v136)
    {
      goto LABEL_4;
    }

    v131 = *v26;
    v132 = v24;
    type metadata accessor for ViewList();
    InputValue = AGGraphGetInputValue();
    outlined init with copy of AnyTrackedValue(InputValue, v148);
    v29 = v148[3];
    v30 = v148[4];
    __swift_project_boxed_opaque_existential_1(v148, v148[3]);
    (*(v30 + 56))(v147, v29, v30);
    v31 = *v147;
    __swift_destroy_boxed_opaque_existential_1(v148);
    _s7SwiftUI14GlassContainerO4ItemVSgWOi0_(__src);
    memcpy(__dst, __src, 0x289uLL);

    _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA07_LayoutD0VyAA010GlassEntryK033_D12F2F25A0BD65FFBD3A7636B60067DFLLV0J0VG_Tt0B5(__dst, v31, v148);
    swift_bridgeObjectRelease_n();
    memcpy(v150, v148, 0x289uLL);
    memcpy(v151, v150, sizeof(v151));
    if (_s7SwiftUI14GlassContainerO4ItemVSgWOg(v151) == 1)
    {
      v23 = v131;
      v24 = v132;
LABEL_4:
      __src[0] = v139;
      __src[1] = v23;
      __src[2] = v27;
      __src[3] = v24;
      LOBYTE(__src[4]) = v25;
      v148[0] = __PAIR64__(v23, v139);
      LODWORD(v148[1]) = v27;
      *&v150[0] = v133;
      BYTE8(v150[0]) = v134 & 1;
      *&v150[1] = v6;
      BYTE8(v150[1]) = v4 & 1;
      LayoutProxy.dimensions(in:)(v150, v151);
      v150[0] = *v151;
      v150[1] = *&v151[16];
      v150[2] = *&v151[32];
      LayoutSubview.place(at:anchor:dimensions:)(v150, 0.0, 0.0, 0.0, 0.0);
LABEL_5:

      goto LABEL_6;
    }

    v32 = *&v151[216];
    v33 = *&v151[224];
    v34 = *&v151[232];
    outlined copy of Text.LineStyle?(*&v151[216], *&v151[224]);
    GlassContainerCache.entryState(id:)(v130, v147);
    memcpy(v148, v147, 0x278uLL);
    v35 = v19;
    v36 = v20;
    v37 = v21;
    v38 = v22;
    if (v33 != 1)
    {
      type metadata accessor for [GlassContainer.Entry](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassContainer.Item.ID>, &type metadata for GlassContainer.Item.ID, MEMORY[0x1E69E6F90]);
      v39 = swift_allocObject();
      *(v39 + 32) = v32;
      v125 = v39 + 32;
      *(v39 + 40) = v33;
      *(v39 + 48) = v34;
      v40 = MEMORY[0x1E69E7CC0];
      v140 = MEMORY[0x1E69E7CC0];
      v41 = *(v14 + 16);

      if (v41)
      {
        v42 = specialized __RawDictionaryStorage.find<A>(_:)(v32);
        if (v43)
        {
          v44 = *(v14 + 56) + 40 * v42;
          v45 = *(v44 + 32);
          v46 = *(v44 + 16);
          *v147 = *v44;
          *&v147[16] = v46;
          *&v147[32] = v45;
          type metadata accessor for Anchor<CGRect>(0, &lazy cache variable for type metadata for Anchor<CGRect>, type metadata accessor for CGRect, type metadata accessor for Anchor);

          outlined init with copy of GlassContainer.ItemData(v147, &v143);
          if (AGGraphGetWeakValue())
          {

            outlined destroy of GlassContainer.ItemData(v147);

            MEMORY[0x193ABF170](v47);
            if (*(v140 + 16) >= *(v140 + 24) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v4 = v124;
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v40 = v140;
          }

          else
          {
            outlined destroy of GlassContainer.ItemData(v147);

            v40 = MEMORY[0x1E69E7CC0];
          }
        }
      }

      memcpy(v147, v162, 0x148uLL);
      *&v147[328] = v130;
      *&v147[336] = v129;
      v143 = v163;
      v144 = v164;
      v145 = v165;
      v146 = v166;
      GlassContainer.Entry.unionBounds(itemAnchors:proxy:)(v40, &v143);
      v35 = v48;
      v36 = v49;
      v37 = v50;
      v38 = v51;

      outlined consume of Text.LineStyle?(v32, v33);
      swift_setDeallocating();
      outlined destroy of GlassContainer.Item.ID(v125);
      swift_deallocClassInstance();
      v6 = v128;
    }

    v167.origin.x = v35;
    v167.origin.y = v36;
    v167.size.width = v37;
    v167.size.height = v38;
    v172.origin.x = v19;
    v172.origin.y = v20;
    v172.size.width = v21;
    v172.size.height = v22;
    if (CGRectEqualToRect(v167, v172))
    {
      v52 = *v151;
      v53 = *&v151[8];
      v54 = *&v151[16];
      type metadata accessor for [GlassContainer.Entry](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassContainer.Item.ID>, &type metadata for GlassContainer.Item.ID, MEMORY[0x1E69E6F90]);
      v55 = swift_allocObject();
      *(v55 + 32) = v52;
      v56 = v55 + 32;
      *(v55 + 40) = v53;
      *(v55 + 48) = v54;
      v57 = MEMORY[0x1E69E7CC0];
      v141 = MEMORY[0x1E69E7CC0];
      v58 = *(v14 + 16);

      if (v58 && (v59 = specialized __RawDictionaryStorage.find<A>(_:)(v52), (v60 & 1) != 0))
      {
        v61 = *(v14 + 56) + 40 * v59;
        v62 = *(v61 + 32);
        v63 = *(v61 + 16);
        *v147 = *v61;
        *&v147[16] = v63;
        *&v147[32] = v62;
        type metadata accessor for Anchor<CGRect>(0, &lazy cache variable for type metadata for Anchor<CGRect>, type metadata accessor for CGRect, type metadata accessor for Anchor);

        outlined init with copy of GlassContainer.ItemData(v147, &v143);
        v4 = v124;
        if (AGGraphGetWeakValue())
        {

          outlined destroy of GlassContainer.ItemData(v147);

          MEMORY[0x193ABF170](v64);
          if (*(v141 + 16) >= *(v141 + 24) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v57 = v141;
          v6 = v128;
        }

        else
        {
          outlined destroy of GlassContainer.ItemData(v147);

          v6 = v128;
        }
      }

      else
      {
        v4 = v124;
      }

      memcpy(v147, v162, 0x148uLL);
      *&v147[328] = v130;
      *&v147[336] = v129;
      v143 = v163;
      v144 = v164;
      v145 = v165;
      v146 = v166;
      GlassContainer.Entry.unionBounds(itemAnchors:proxy:)(v57, &v143);
      v35 = v65;
      v36 = v66;
      v37 = v67;
      v38 = v68;

      swift_setDeallocating();
      outlined destroy of GlassContainer.Item.ID(v56);
      swift_deallocClassInstance();
    }

    v168.origin.x = v35;
    v168.origin.y = v36;
    v168.size.width = v37;
    v168.size.height = v38;
    v173.origin.x = v19;
    v173.origin.y = v20;
    v173.size.width = v21;
    v173.size.height = v22;
    result = CGRectEqualToRect(v168, v173);
    if (result)
    {
      outlined destroy of GlassContainer.EntryState(v148);
      *&v143 = v133;
      BYTE8(v143) = v134 & 1;
      *&v144 = v6;
      BYTE8(v144) = v4 & 1;
      LayoutProxy.dimensions(in:)(&v143, v147);
      v143 = *v147;
      v144 = *&v147[16];
      v145 = *&v147[32];
      LayoutSubview.place(at:anchor:dimensions:)(&v143, 0.0, 0.0, 0.0, 0.0);
      outlined destroy of GlassContainer.Entry?(v150, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item);
      goto LABEL_5;
    }

    v69 = *(v148[2] + 16);
    if (!v69)
    {
      outlined destroy of GlassContainer.EntryState(v148);
      v93 = v35;
      v94 = v36;
      v96 = v37;
      v97 = v38;
      goto LABEL_73;
    }

    v70 = 0;
    v142 = MEMORY[0x1E69E7CC0];
    v71 = v148[2] + 40;
    v72 = MEMORY[0x1E69E7CC0];
    v114 = v148[2] + 40;
    while (1)
    {
      v126 = v72;
      v73 = v71 + 24 * v70;
      v74 = v70;
      while (1)
      {
        if (v74 >= v69)
        {
          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        v70 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          goto LABEL_91;
        }

        if (!*(v14 + 16))
        {
          goto LABEL_38;
        }

        result = specialized __RawDictionaryStorage.find<A>(_:)(*(v73 - 8));
        if ((v75 & 1) == 0)
        {
          goto LABEL_38;
        }

        v76 = *(v14 + 56) + 40 * result;
        v77 = *(v76 + 32);
        v78 = *(v76 + 16);
        *v147 = *v76;
        *&v147[16] = v78;
        *&v147[32] = v77;
        type metadata accessor for Anchor<CGRect>(0, &lazy cache variable for type metadata for Anchor<CGRect>, type metadata accessor for CGRect, type metadata accessor for Anchor);

        outlined init with copy of GlassContainer.ItemData(v147, &v143);
        if (AGGraphGetWeakValue())
        {
          break;
        }

        outlined destroy of GlassContainer.ItemData(v147);

LABEL_38:
        ++v74;
        v73 += 24;
        if (v70 == v69)
        {
          v72 = v126;
          goto LABEL_50;
        }
      }

      outlined destroy of GlassContainer.ItemData(v147);

      MEMORY[0x193ABF170](v79);
      if (*(v142 + 16) >= *(v142 + 24) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v72 = v142;
      v71 = v114;
      if (v70 == v69)
      {
LABEL_50:
        memcpy(v147, v162, 0x148uLL);
        *&v147[328] = v130;
        *&v147[336] = v129;
        v143 = v163;
        v144 = v164;
        v145 = v165;
        v146 = v166;
        GlassContainer.Entry.unionBounds(itemAnchors:proxy:)(v72, &v143);
        v113 = v37;
        v115 = v36;
        v80 = v20;
        v82 = v81;
        v83 = v21;
        v85 = v84;
        v86 = v80;
        v127 = v38;
        v88 = v87;
        v89 = v35;
        v91 = v90;
        v112 = v90;

        v169.origin.x = v82;
        v169.origin.y = v85;
        v169.size.width = v88;
        v169.size.height = v91;
        v174.origin.x = v123;
        v174.origin.y = v86;
        v174.size.width = v83;
        v174.size.height = v22;
        v92 = CGRectEqualToRect(v169, v174);
        outlined destroy of GlassContainer.EntryState(v148);
        if (v92)
        {
          v93 = v123;
        }

        else
        {
          v93 = v89;
        }

        if (v92)
        {
          v35 = v89;
        }

        else
        {
          v35 = v82;
        }

        if (v92)
        {
          v94 = v86;
        }

        else
        {
          v94 = v115;
        }

        if (v92)
        {
          v95 = v115;
        }

        else
        {
          v95 = v85;
        }

        if (v92)
        {
          v96 = v83;
        }

        else
        {
          v96 = v113;
        }

        if (v92)
        {
          v37 = v113;
        }

        else
        {
          v37 = v88;
        }

        v97 = v122;
        if (v92)
        {
          v38 = v127;
        }

        else
        {
          v97 = v127;
          v38 = v112;
        }

        v36 = v95;
        v4 = v124;
LABEL_73:
        v153 = v35;
        v154 = v36;
        v155 = v37;
        v156 = v38;
        v157 = v93;
        v158 = v94;
        v159 = v96;
        v160 = v97;
        v170.origin.x = GlassContainer.Entry.ShapeBoundsResult.minimizedBounds.getter();
        x = v170.origin.x;
        y = v170.origin.y;
        width = v170.size.width;
        height = v170.size.height;
        v102 = CGRectGetWidth(v170);
        v171.origin.x = x;
        v171.origin.y = y;
        v171.size.width = width;
        v171.size.height = height;
        v103 = CGRectGetHeight(v171);
        v104 = v121 - x - width;
        if (!v118)
        {
          v104 = x;
        }

        v105 = v104 + v119;
        v106 = (COERCE_UNSIGNED_INT64(v104 + v119) & 0x7FF0000000000000) != 0x7FF0000000000000 || (COERCE_UNSIGNED_INT64(v104 + v119) & 0xFFFFFFFFFFFFFLL) == 0;
        v107 = fabs(y + v120);
        v109 = !v106 || *&v107 > 0x7FEFFFFFFFFFFFFFLL || (COERCE_UNSIGNED_INT64(v104 + v119) & 0x7FF0000000000000) == 0x7FF0000000000000;
        v6 = v128;
        if (v109)
        {
          *&v143 = v133;
          BYTE8(v143) = v134 & 1;
          *&v144 = v128;
          BYTE8(v144) = v4 & 1;
          LayoutProxy.dimensions(in:)(&v143, v147);
          v143 = *v147;
          v144 = *&v147[16];
          v145 = *&v147[32];
          v110 = 0.0;
          v111 = 0.0;
        }

        else
        {
          *&v143 = v102;
          BYTE8(v143) = 0;
          *&v144 = v103;
          BYTE8(v144) = 0;
          LayoutProxy.dimensions(in:)(&v143, v147);
          v143 = *v147;
          v144 = *&v147[16];
          v145 = *&v147[32];
          v110 = v105;
          v111 = y + v120;
        }

        LayoutSubview.place(at:anchor:dimensions:)(&v143, v110, v111, 0.0, 0.0);
        outlined destroy of GlassContainer.Entry?(v150, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item);

        v22 = v122;
        v19 = v123;
        v21 = v116;
        v20 = v117;
LABEL_6:
        ++v18;
        v12 = v135;
        v16 = *(v135 + 16);
        if (v18 == v16)
        {
        }

        goto LABEL_7;
      }
    }
  }

LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
  return result;
}

uint64_t GlassItemView.body.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  memcpy(__dst, v1, 0x289uLL);
  memcpy(v14, v1 + 82, 0x154uLL);
  v4 = v1[125];
  v5 = v1[126];
  v6 = v1[127];
  v7 = v2[128];
  memcpy(__src, v2, 0x289uLL);
  memcpy(&__src[656], v2 + 82, 0x154uLL);
  type metadata accessor for TransitionBox<IdentityTransition>(0, &lazy cache variable for type metadata for TransitionBox<IdentityTransition>, &type metadata for IdentityTransition, &protocol witness table for IdentityTransition, type metadata accessor for TransitionBox);
  v8 = swift_allocObject();
  memcpy(v15, v2, 0x289uLL);
  _ViewInputs.base.modify(v15, v9);
  memcpy(a1, __src, 0x3E8uLL);
  a1[125] = v4;
  a1[126] = v5;
  a1[127] = v6;
  a1[128] = v7;
  memcpy(a1 + 129, v2 + 33, 0x180uLL);
  a1[177] = v8;
  memcpy(a1 + 178, v15, 0x289uLL);
  outlined init with copy of GlassContainer.Item(__dst, v11);
  outlined init with copy of GlassContainer.Item(__dst, v11);
  outlined init with copy of GlassContainer.Entry(v14, v11);

  return outlined init with copy of GlassContainer.TransitionState(&__dst[264], v11);
}

uint64_t static PrimitiveGlassItemView._makeView(view:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 36);
  v7 = MEMORY[0x1E69E7CC0];
  v8 = *MEMORY[0x1E698D3F8];
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a1 + 48)))
  {
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type PrimitiveGlassItemView.ItemDisplayList and conformance PrimitiveGlassItemView.ItemDisplayList();
    v4 = Attribute.init<A>(body:value:flags:update:)();
    PreferencesOutputs.subscript.setter(v4, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
  }

  if ((v3 & 2) != 0)
  {
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type PrimitiveGlassItemView.ItemLayoutComputer and conformance PrimitiveGlassItemView.ItemLayoutComputer();
    result = Attribute.init<A>(body:value:flags:update:)();
    v6 = 128;
  }

  else
  {
    v6 = 0;
    result = v8;
  }

  *a2 = v7;
  *(a2 + 8) = v6;
  *(a2 + 12) = result;
  return result;
}

void PrimitiveGlassItemView.ItemDisplayList.value.getter(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  memcpy(__dst, Value, sizeof(__dst));
  v3 = __dst[127];
  if (*(__dst[127] + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(LODWORD(__dst[0])), (v5 & 1) != 0))
  {
    v6 = *(v3 + 56) + 40 * v4;
    v7 = *(v6 + 32);
    v8 = *(v6 + 16);
    v20[0] = *v6;
    v20[1] = v8;
    v21 = v7;
    v9 = *&v20[0];
    outlined init with copy of GlassContainer.ItemData(v20, v22);
    outlined init with copy of PrimitiveGlassItemView(__dst, v22);
    outlined init with copy of GlassContainer.Item(__dst, v22);
    outlined init with copy of GlassContainer.ItemData(v20, v22);
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v11 = WeakValue;
      outlined destroy of GlassContainer.ItemData(v20);
      v12 = *(v11 + 8);
      v13 = *(v11 + 12);
      *a1 = *v11;
      *(a1 + 8) = v12;
      *(a1 + 12) = v13;
      type metadata accessor for CGPoint(0);

      v14 = AGGraphGetValue();
      v15 = *v14;
      v16 = v14[1];
      v17 = AGGraphGetValue();
      *&v18 = v15 - *v17;
      *&v19 = v16 - v17[1];
      v22[0] = ++static DisplayList.Version.lastValue;
      DisplayList.translate(by:version:)(__PAIR128__(v19, v18), v22);
      outlined destroy of GlassContainer.ItemData(v20);
      outlined destroy of GlassContainer.Item(__dst);
      outlined destroy of PrimitiveGlassItemView(__dst);
      return;
    }

    outlined destroy of GlassContainer.ItemData(v20);
  }

  else
  {
    outlined init with copy of PrimitiveGlassItemView(__dst, v22);
    outlined init with copy of GlassContainer.Item(__dst, v22);
    v9 = 0;
  }

  outlined destroy of GlassContainer.Item(__dst);
  outlined destroy of PrimitiveGlassItemView(__dst);

  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
}

uint64_t PrimitiveGlassItemView.ItemLayoutComputer.value.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  memcpy(__dst, Value, sizeof(__dst));
  v3 = __dst[127];
  if (*(__dst[127] + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(LODWORD(__dst[0])), (v5 & 1) != 0))
  {
    v6 = *(v3 + 56) + 40 * v4;
    v7 = *(v6 + 32);
    v8 = *(v6 + 16);
    v15[0] = *v6;
    v15[1] = v8;
    v16 = v7;
    v9 = *&v15[0];
    outlined init with copy of GlassContainer.ItemData(v15, v17);
    outlined init with copy of PrimitiveGlassItemView(__dst, v17);
    outlined init with copy of GlassContainer.Item(__dst, v17);
    outlined init with copy of GlassContainer.ItemData(v15, v17);
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v11 = *WeakValue;
      v12 = WeakValue[1];

      outlined destroy of GlassContainer.ItemData(v15);
      outlined destroy of GlassContainer.ItemData(v15);
      outlined destroy of GlassContainer.Item(__dst);
      result = outlined destroy of PrimitiveGlassItemView(__dst);
      *a1 = v11;
      a1[1] = v12;
      return result;
    }

    outlined destroy of GlassContainer.ItemData(v15);
  }

  else
  {
    outlined init with copy of PrimitiveGlassItemView(__dst, v17);
    outlined init with copy of GlassContainer.Item(__dst, v17);
    v9 = 0;
  }

  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v14 = static LayoutComputer.defaultValue;

  outlined destroy of GlassContainer.Item(__dst);
  result = outlined destroy of PrimitiveGlassItemView(__dst);
  *a1 = v14;
  return result;
}

double GlassTransitionStateModifier.body(content:)@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[3];
  v5 = v1[4];
  v40 = *(v1 + 5);
  v6 = v1[7];
  v7 = v1[12];
  v8 = v1[13];
  v9 = v1[14];
  v10 = *(v1 + 120);
  v75 = *(v1 + 29);
  v76 = *(v1 + 31);
  v77 = *(v1 + 33);
  v78 = v1[35];
  v71 = *(v1 + 21);
  v72 = *(v1 + 23);
  v73 = *(v1 + 25);
  v74 = *(v1 + 27);
  v69 = *(v1 + 17);
  v70 = *(v1 + 19);
  v57 = v7;
  LOBYTE(v58) = v10;
  *(&v58 + 1) = v8;
  *v59 = v9;
  *&v59[104] = *(v1 + 29);
  *&v59[120] = *(v1 + 31);
  *&v59[136] = *(v1 + 33);
  v11 = v1[36];
  *&v59[152] = v1[35];
  *&v59[40] = *(v1 + 21);
  *&v59[56] = *(v1 + 23);
  *&v59[72] = *(v1 + 25);
  *&v59[88] = *(v1 + 27);
  *&v59[8] = *(v1 + 17);
  *&v59[24] = *(v1 + 19);
  LOBYTE(v60) = 0;
  v61 = 0;
  *v62 = 0;
  __asm { FMOV            V2.2D, #1.0 }

  *&v62[8] = _Q2;
  v63 = 0;
  v64 = 0;
  v117 = 0;
  v110 = *&v59[96];
  v111 = *&v59[112];
  v112 = *&v59[128];
  v113 = *&v59[144];
  v106 = *&v59[32];
  v107 = *&v59[48];
  v108 = *&v59[64];
  v109 = *&v59[80];
  v102 = v7;
  v103 = v58;
  v104 = *v59;
  v105 = *&v59[16];
  v114 = v60;
  v115 = *v62;
  v116 = *(&_Q2 + 1);
  v65[0] = v7;
  v65[1] = 0;
  v66 = v10;
  v67 = v8;
  v68 = v9;
  v79 = 0;
  v81 = 0;
  v80 = 0;
  v82 = _Q2;
  v84 = 0;
  v83 = 0;
  v17 = MEMORY[0x1E69E6550];
  outlined init with copy of TranslationKickModifier<Int>(&v57, &v49, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6550], type metadata accessor for ScalePulseModifier);
  outlined destroy of TranslationKickModifier<Int>(v65, &lazy cache variable for type metadata for ScalePulseModifier<Int>, v17, type metadata accessor for ScalePulseModifier);
  v18 = *(v1 + 43);
  v45 = *(v1 + 41);
  v46 = v18;
  v47 = *(v1 + 45);
  v19 = v1[47];
  v42 = v11;
  v48 = v19;
  v20 = *(v1 + 39);
  v43 = *(v1 + 37);
  v44 = v20;
  v21 = GlassContainer.TranslationKick.kickDistance.getter();
  v22 = *(v1 + 45);
  v96 = *(v1 + 43);
  v97 = v22;
  v23 = v1[47];
  v24 = *(v1 + 39);
  v95 = *(v1 + 41);
  v94 = v24;
  v85 = v11;
  *&v86 = v21;
  *(&v86 + 1) = v25;
  v90 = v22;
  v89 = v96;
  v88 = v95;
  v87 = v24;
  v91 = v23;
  v92 = 0uLL;
  v49 = v11;
  v50 = v86;
  v53 = v96;
  v54 = v22;
  v51 = v24;
  v52 = v95;
  v55 = v23;
  v56 = 0uLL;
  v93[0] = v11;
  v93[1] = 0;
  *&v93[2] = v21;
  v93[3] = v25;
  v98 = v23;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v26 = MEMORY[0x1E69E6540];
  outlined init with copy of TranslationKickModifier<Int>(&v85, v41, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6540], type metadata accessor for TranslationKickModifier);
  outlined destroy of TranslationKickModifier<Int>(v93, &lazy cache variable for type metadata for TranslationKickModifier<Int>, v26, type metadata accessor for TranslationKickModifier);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  __asm { FMOV            V1.2D, #0.5 }

  *(a1 + 32) = _Q1;
  *(a1 + 48) = v40;
  *(a1 + 64) = v6;
  v28 = v115;
  *(a1 + 264) = v114;
  *(a1 + 280) = v28;
  *(a1 + 296) = v116;
  *(a1 + 312) = v117;
  v29 = v111;
  *(a1 + 200) = v110;
  *(a1 + 216) = v29;
  v30 = v113;
  *(a1 + 232) = v112;
  *(a1 + 248) = v30;
  v31 = v107;
  *(a1 + 136) = v106;
  *(a1 + 152) = v31;
  v32 = v109;
  *(a1 + 168) = v108;
  *(a1 + 184) = v32;
  v33 = v103;
  *(a1 + 72) = v102;
  *(a1 + 88) = v33;
  v34 = v105;
  *(a1 + 104) = v104;
  *(a1 + 120) = v34;
  v35 = v54;
  *(a1 + 384) = v53;
  *(a1 + 400) = v35;
  v36 = v56;
  *(a1 + 416) = v55;
  *(a1 + 432) = v36;
  v37 = v50;
  *(a1 + 320) = v49;
  *(a1 + 336) = v37;
  result = *&v51;
  v39 = v52;
  *(a1 + 352) = v51;
  *(a1 + 368) = v39;
  return result;
}

void GlassAppearanceScaleEffect.effectValue(size:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v5 = v3[3];
  v6 = a2 <= 0.0 || v5 <= 1.0;
  v7 = v3[3];
  if (!v6)
  {
    v7 = (v3[4] + a2) / a2;
    if (v7 < 0.0)
    {
      __break(1u);
      goto LABEL_21;
    }

    v8 = 0.0;
    if (v5 >= 0.0)
    {
      v8 = v3[3];
    }

    if (v7 >= v8)
    {
      v7 = v8;
    }
  }

  if (a3 <= 0.0 || v5 <= 1.0)
  {
LABEL_19:
    _ScaleEffect.effectValue(size:)(v14, a2, a3, *v3 * (v7 + -1.0) + 1.0, *v3 * (v5 + -1.0) + 1.0, v3[1], v3[2]);
    v12 = v14[3];
    *(a1 + 32) = v14[2];
    *(a1 + 48) = v12;
    *(a1 + 64) = v15;
    v13 = v14[1];
    *a1 = v14[0];
    *(a1 + 16) = v13;
    return;
  }

  v10 = (v3[5] + a3) / a3;
  if (v10 >= 0.0)
  {
    if (v10 >= v5)
    {
      v10 = v3[3];
    }

    v11 = v5 < 0.0;
    v5 = 0.0;
    if (!v11)
    {
      v5 = v10;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
}

double GlassAppearanceScaleEffect.$s7SwiftUI26GlassAppearanceScaleEffect33_D12F2F25A0BD65FFBD3A7636B60067DFLL10AnimatablefMm_15_animatableDatafMu_.getter()
{
  v6 = *v0;
  v1 = v6;
  v5 = vmulq_f64(*(v0 + 8), vdupq_n_s64(0x4060000000000000uLL));
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
  v3 = v2;
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_2(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
  (*(*(v3 - 8) + 8))(&v5, v3);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  (*(*(MEMORY[0x1E69E7DE0] - 8) + 8))(&v6);
  return v1;
}

__n128 protocol witness for GeometryEffect.effectValue(size:) in conformance GlassAppearanceScaleEffect@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v5 = v3[1];
  v10 = *v3;
  v11 = v5;
  v12 = v3[2];
  GlassAppearanceScaleEffect.effectValue(size:)(v8, a2, a3);
  v6 = v8[3];
  *(a1 + 32) = v8[2];
  *(a1 + 48) = v6;
  *(a1 + 64) = v9;
  result = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = result;
  return result;
}

void protocol witness for Animatable.animatableData.getter in conformance GlassAppearanceScaleEffect(uint64_t a1@<X8>)
{
  *a1 = GlassAppearanceScaleEffect.$s7SwiftUI26GlassAppearanceScaleEffect33_D12F2F25A0BD65FFBD3A7636B60067DFLL10AnimatablefMm_15_animatableDatafMu_.getter();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

float64x2_t protocol witness for Animatable.animatableData.setter in conformance GlassAppearanceScaleEffect(uint64_t a1)
{
  *v1 = *a1;
  result = vmulq_f64(*(a1 + 8), vdupq_n_s64(0x3F80000000000000uLL));
  *(v1 + 8) = result;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance GlassAppearanceScaleEffect(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *v1;
  v6 = v1[2];
  *(v3 + 16) = v1[1];
  *(v3 + 32) = v6;
  *v3 = v5;
  *(v3 + 48) = GlassAppearanceScaleEffect.$s7SwiftUI26GlassAppearanceScaleEffect33_D12F2F25A0BD65FFBD3A7636B60067DFLL10AnimatablefMm_15_animatableDatafMu_.getter();
  *(v4 + 56) = v7;
  *(v4 + 64) = v8;
  return protocol witness for Animatable.animatableData.modify in conformance GlassAppearanceScaleEffect;
}

void protocol witness for Animatable.animatableData.modify in conformance GlassAppearanceScaleEffect(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 72);
  v3 = vmulq_f64(*(v1 + 56), vdupq_n_s64(0x3F80000000000000uLL));
  *v2 = *(v1 + 48);
  *(v2 + 8) = v3;
  free(v1);
}

uint64_t outlined init with copy of [GlassContainer.Entry](uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for [GlassContainer.Entry](0, a3, a4, MEMORY[0x1E69E62F8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t destroy for GlassEffectView(uint64_t *a1)
{
  outlined consume of _Glass.Variant.Role(*a1, a1[1]);

  if (a1[13] != 1)
  {
    outlined consume of _Glass.Variant.Role(a1[10], a1[11]);
  }

  if (a1[19] != 1)
  {
    outlined consume of _Glass.Variant.Role(a1[16], a1[17]);
  }
}

uint64_t initializeWithCopy for GlassEffectView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.Role(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v7 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v7;
  v8 = *(a2 + 104);

  if (v8 == 1)
  {
    v9 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v9;
    *(a1 + 105) = *(a2 + 105);
  }

  else
  {
    v10 = *(a2 + 80);
    v11 = *(a2 + 88);
    outlined copy of _Glass.Variant.Role(v10, v11);
    *(a1 + 80) = v10;
    *(a1 + 88) = v11;
    *(a1 + 96) = *(a2 + 96);
    v12 = *(a2 + 112);
    *(a1 + 104) = v8;
    *(a1 + 112) = v12;
    *(a1 + 120) = *(a2 + 120);
  }

  v13 = *(a2 + 152);
  if (v13 == 1)
  {
    v14 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v14;
    *(a1 + 153) = *(a2 + 153);
  }

  else
  {
    v15 = *(a2 + 128);
    v16 = *(a2 + 136);
    outlined copy of _Glass.Variant.Role(v15, v16);
    *(a1 + 128) = v15;
    *(a1 + 136) = v16;
    *(a1 + 144) = *(a2 + 144);
    v17 = *(a2 + 160);
    *(a1 + 152) = v13;
    *(a1 + 160) = v17;
    *(a1 + 168) = *(a2 + 168);
  }

  *(a1 + 172) = *(a2 + 172);
  *(a1 + 176) = *(a2 + 176);
  v18 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v18;
  v19 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v19;
  v20 = *(a2 + 224);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = v20;
  v21 = *(a2 + 232);
  v22 = *(a2 + 248);
  v23 = *(a2 + 264);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 264) = v23;
  *(a1 + 248) = v22;
  *(a1 + 232) = v21;

  return a1;
}

uint64_t assignWithCopy for GlassEffectView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.Role(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of _Glass.Variant.Role(v6, v7);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v8 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v8;
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  v9 = *(a2 + 104);
  if (*(a1 + 104) == 1)
  {
    if (v9 == 1)
    {
      v10 = *(a2 + 80);
      v11 = *(a2 + 96);
      *(a1 + 105) = *(a2 + 105);
      *(a1 + 80) = v10;
      *(a1 + 96) = v11;
    }

    else
    {
      v14 = *(a2 + 80);
      v15 = *(a2 + 88);
      outlined copy of _Glass.Variant.Role(v14, v15);
      *(a1 + 80) = v14;
      *(a1 + 88) = v15;
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
    }
  }

  else if (v9 == 1)
  {
    outlined destroy of _Glass(a1 + 80);
    v12 = *(a2 + 105);
    v13 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v13;
    *(a1 + 105) = v12;
  }

  else
  {
    v16 = *(a2 + 80);
    v17 = *(a2 + 88);
    outlined copy of _Glass.Variant.Role(v16, v17);
    v18 = *(a1 + 80);
    v19 = *(a1 + 88);
    *(a1 + 80) = v16;
    *(a1 + 88) = v17;
    outlined consume of _Glass.Variant.Role(v18, v19);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);

    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
  }

  v20 = *(a2 + 152);
  if (*(a1 + 152) == 1)
  {
    if (v20 == 1)
    {
      v21 = *(a2 + 128);
      v22 = *(a2 + 144);
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 128) = v21;
      *(a1 + 144) = v22;
    }

    else
    {
      v25 = *(a2 + 128);
      v26 = *(a2 + 136);
      outlined copy of _Glass.Variant.Role(v25, v26);
      *(a1 + 128) = v25;
      *(a1 + 136) = v26;
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
    }
  }

  else if (v20 == 1)
  {
    outlined destroy of _Glass(a1 + 128);
    v23 = *(a2 + 153);
    v24 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v24;
    *(a1 + 153) = v23;
  }

  else
  {
    v27 = *(a2 + 128);
    v28 = *(a2 + 136);
    outlined copy of _Glass.Variant.Role(v27, v28);
    v29 = *(a1 + 128);
    v30 = *(a1 + 136);
    *(a1 + 128) = v27;
    *(a1 + 136) = v28;
    outlined consume of _Glass.Variant.Role(v29, v30);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);

    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
  }

  v31 = *(a2 + 172);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 172) = v31;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);

  *(a1 + 232) = *(a2 + 232);
  *(a1 + 236) = *(a2 + 236);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 244) = *(a2 + 244);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 252) = *(a2 + 252);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 260) = *(a2 + 260);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 268) = *(a2 + 268);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 276) = *(a2 + 276);
  *(a1 + 280) = *(a2 + 280);
  return a1;
}

uint64_t assignWithTake for GlassEffectView(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  outlined consume of _Glass.Variant.Role(v4, v5);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  if (*(a1 + 104) == 1)
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 104);
  if (v6 == 1)
  {
    outlined destroy of _Glass(a1 + 80);
LABEL_4:
    v7 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v7;
    *(a1 + 105) = *(a2 + 105);
    goto LABEL_6;
  }

  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  outlined consume of _Glass.Variant.Role(v8, v9);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v6;

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
LABEL_6:
  if (*(a1 + 152) != 1)
  {
    v10 = *(a2 + 152);
    if (v10 != 1)
    {
      v12 = *(a1 + 128);
      v13 = *(a1 + 136);
      *(a1 + 128) = *(a2 + 128);
      outlined consume of _Glass.Variant.Role(v12, v13);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = v10;

      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      goto LABEL_11;
    }

    outlined destroy of _Glass(a1 + 128);
  }

  v11 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v11;
  *(a1 + 153) = *(a2 + 153);
LABEL_11:
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);

  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 280) = *(a2 + 280);
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassEffectView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 284))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 192);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassEffectView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 280) = 0;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 284) = 1;
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
      *(result + 192) = (a2 - 1);
      return result;
    }

    *(result + 284) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined copy of Environment<String?>.Content(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t destroy for _GlassContainerStorageView(uint64_t a1)
{

  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);

  return outlined consume of Environment<String?>.Content(v2, v3, v4);
}

uint64_t initializeWithCopy for _GlassContainerStorageView(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);

  outlined copy of Environment<String?>.Content(v5, v6, v7);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  return a1;
}

uint64_t assignWithCopy for _GlassContainerStorageView(uint64_t a1, void *a2)
{
  v2 = a2;
  *a1 = *a2;
  *(a1 + 8) = a2[1];

  *(a1 + 16) = v2[2];

  *(a1 + 24) = v2[3];

  *(a1 + 32) = v2[4];

  v4 = v2[5];
  v5 = v2[6];
  LOBYTE(v2) = *(v2 + 56);
  outlined copy of Environment<String?>.Content(v4, v5, v2);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = v2;
  outlined consume of Environment<String?>.Content(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for _GlassContainerStorageView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  v4 = *(a2 + 56);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v4;
  outlined consume of Environment<String?>.Content(v5, v6, v7);
  return a1;
}

uint64_t getEnumTagSinglePayload for _GlassContainerStorageView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for _GlassContainerStorageView(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t instantiation function for generic protocol witness table for GlassAppearanceScaleEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect();
  *(a1 + 8) = result;
  return result;
}

uint64_t initializeWithCopy for GlassEntryContainerView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of GlassContainer.Entry.ModelID(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  outlined copy of _Glass.Variant.Role(v9, v10);
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = *(a2 + 56);
  v11 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v11;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  v12 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v12;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  v13 = *(a2 + 144);
  v14 = *(a2 + 152);

  outlined copy of _Glass.Variant.Role(v13, v14);
  *(a1 + 144) = v13;
  *(a1 + 152) = v14;
  *(a1 + 160) = *(a2 + 160);
  v15 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v15;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  v16 = *(a2 + 216);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = v16;
  v17 = *(a2 + 248);

  if (v17 == 1)
  {
    v18 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v18;
    *(a1 + 249) = *(a2 + 249);
  }

  else
  {
    v19 = *(a2 + 224);
    v20 = *(a2 + 232);
    outlined copy of _Glass.Variant.Role(v19, v20);
    *(a1 + 224) = v19;
    *(a1 + 232) = v20;
    *(a1 + 240) = *(a2 + 240);
    v21 = *(a2 + 256);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 256) = v21;
    *(a1 + 264) = *(a2 + 264);
  }

  if (*(a2 + 296) == 1)
  {
    v22 = *(a2 + 288);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 288) = v22;
    *(a1 + 297) = *(a2 + 297);
  }

  else
  {
    v23 = *(a2 + 272);
    v24 = *(a2 + 280);
    outlined copy of _Glass.Variant.Role(v23, v24);
    *(a1 + 272) = v23;
    *(a1 + 280) = v24;
    *(a1 + 288) = *(a2 + 288);
    v25 = *(a2 + 304);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 304) = v25;
    *(a1 + 312) = *(a2 + 312);
  }

  *(a1 + 316) = *(a2 + 316);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  v26 = *(a2 + 344);
  v27 = *(a2 + 352);
  outlined copy of _Glass.Variant.Role(v26, v27);
  *(a1 + 344) = v26;
  *(a1 + 352) = v27;
  *(a1 + 360) = *(a2 + 360);
  v28 = *(a2 + 376);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 376) = v28;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  v29 = *(a2 + 416);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = v29;
  v30 = *(a2 + 448);

  if (v30 == 1)
  {
    v31 = *(a2 + 440);
    *(a1 + 424) = *(a2 + 424);
    *(a1 + 440) = v31;
    *(a1 + 449) = *(a2 + 449);
  }

  else
  {
    v32 = *(a2 + 424);
    v33 = *(a2 + 432);
    outlined copy of _Glass.Variant.Role(v32, v33);
    *(a1 + 424) = v32;
    *(a1 + 432) = v33;
    *(a1 + 440) = *(a2 + 440);
    v34 = *(a2 + 456);
    *(a1 + 448) = *(a2 + 448);
    *(a1 + 456) = v34;
    *(a1 + 464) = *(a2 + 464);
  }

  if (*(a2 + 496) == 1)
  {
    v35 = *(a2 + 488);
    *(a1 + 472) = *(a2 + 472);
    *(a1 + 488) = v35;
    *(a1 + 497) = *(a2 + 497);
  }

  else
  {
    v36 = *(a2 + 472);
    v37 = *(a2 + 480);
    outlined copy of _Glass.Variant.Role(v36, v37);
    *(a1 + 472) = v36;
    *(a1 + 480) = v37;
    *(a1 + 488) = *(a2 + 488);
    v38 = *(a2 + 504);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 504) = v38;
    *(a1 + 512) = *(a2 + 512);
  }

  *(a1 + 516) = *(a2 + 516);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);

  return a1;
}

uint64_t assignWithCopy for GlassEntryContainerView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of GlassContainer.Entry.ModelID(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v13 = *(a1 + 32);
  *(a1 + 32) = v8;
  outlined consume of GlassContainer.Entry.ModelID(v9, v10, v11, v12, v13);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  outlined copy of _Glass.Variant.Role(v14, v15);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  outlined consume of _Glass.Variant.Role(v16, v17);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  v18 = *(a2 + 144);
  v19 = *(a2 + 152);
  outlined copy of _Glass.Variant.Role(v18, v19);
  v20 = *(a1 + 144);
  v21 = *(a1 + 152);
  *(a1 + 144) = v18;
  *(a1 + 152) = v19;
  outlined consume of _Glass.Variant.Role(v20, v21);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  v22 = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 192) = v22;
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);

  v23 = *(a2 + 248);
  if (*(a1 + 248) == 1)
  {
    if (v23 == 1)
    {
      v24 = *(a2 + 224);
      v25 = *(a2 + 240);
      *(a1 + 249) = *(a2 + 249);
      *(a1 + 224) = v24;
      *(a1 + 240) = v25;
    }

    else
    {
      v28 = *(a2 + 224);
      v29 = *(a2 + 232);
      outlined copy of _Glass.Variant.Role(v28, v29);
      *(a1 + 224) = v28;
      *(a1 + 232) = v29;
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 264) = *(a2 + 264);
    }
  }

  else if (v23 == 1)
  {
    outlined destroy of _Glass(a1 + 224);
    v26 = *(a2 + 249);
    v27 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v27;
    *(a1 + 249) = v26;
  }

  else
  {
    v30 = *(a2 + 224);
    v31 = *(a2 + 232);
    outlined copy of _Glass.Variant.Role(v30, v31);
    v32 = *(a1 + 224);
    v33 = *(a1 + 232);
    *(a1 + 224) = v30;
    *(a1 + 232) = v31;
    outlined consume of _Glass.Variant.Role(v32, v33);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 248) = *(a2 + 248);

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
  }

  v34 = (a1 + 272);
  v35 = (a2 + 272);
  v36 = *(a2 + 296);
  if (*(a1 + 296) == 1)
  {
    if (v36 == 1)
    {
      v37 = *v35;
      v38 = *(a2 + 288);
      *(a1 + 297) = *(a2 + 297);
      *v34 = v37;
      *(a1 + 288) = v38;
    }

    else
    {
      v41 = *(a2 + 272);
      v42 = *(a2 + 280);
      outlined copy of _Glass.Variant.Role(v41, v42);
      *(a1 + 272) = v41;
      *(a1 + 280) = v42;
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 296) = *(a2 + 296);
      *(a1 + 304) = *(a2 + 304);
      *(a1 + 312) = *(a2 + 312);
    }
  }

  else if (v36 == 1)
  {
    outlined destroy of _Glass(a1 + 272);
    v39 = *(a2 + 297);
    v40 = *(a2 + 288);
    *v34 = *v35;
    *(a1 + 288) = v40;
    *(a1 + 297) = v39;
  }

  else
  {
    v43 = *(a2 + 272);
    v44 = *(a2 + 280);
    outlined copy of _Glass.Variant.Role(v43, v44);
    v45 = *(a1 + 272);
    v46 = *(a1 + 280);
    *(a1 + 272) = v43;
    *(a1 + 280) = v44;
    outlined consume of _Glass.Variant.Role(v45, v46);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 296) = *(a2 + 296);

    *(a1 + 304) = *(a2 + 304);
    *(a1 + 312) = *(a2 + 312);
  }

  v47 = *(a2 + 316);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 316) = v47;
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  v48 = *(a2 + 344);
  v49 = *(a2 + 352);
  outlined copy of _Glass.Variant.Role(v48, v49);
  v50 = *(a1 + 344);
  v51 = *(a1 + 352);
  *(a1 + 344) = v48;
  *(a1 + 352) = v49;
  outlined consume of _Glass.Variant.Role(v50, v51);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);

  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  v52 = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 392) = v52;
  *(a1 + 408) = *(a2 + 408);

  *(a1 + 416) = *(a2 + 416);

  v53 = (a1 + 424);
  v54 = (a2 + 424);
  v55 = *(a2 + 448);
  if (*(a1 + 448) == 1)
  {
    if (v55 == 1)
    {
      v56 = *v54;
      v57 = *(a2 + 440);
      *(a1 + 449) = *(a2 + 449);
      *v53 = v56;
      *(a1 + 440) = v57;
    }

    else
    {
      v60 = *(a2 + 424);
      v61 = *(a2 + 432);
      outlined copy of _Glass.Variant.Role(v60, v61);
      *(a1 + 424) = v60;
      *(a1 + 432) = v61;
      *(a1 + 440) = *(a2 + 440);
      *(a1 + 448) = *(a2 + 448);
      *(a1 + 456) = *(a2 + 456);
      *(a1 + 464) = *(a2 + 464);
    }
  }

  else if (v55 == 1)
  {
    outlined destroy of _Glass(a1 + 424);
    v58 = *(a2 + 449);
    v59 = *(a2 + 440);
    *v53 = *v54;
    *(a1 + 440) = v59;
    *(a1 + 449) = v58;
  }

  else
  {
    v62 = *(a2 + 424);
    v63 = *(a2 + 432);
    outlined copy of _Glass.Variant.Role(v62, v63);
    v64 = *(a1 + 424);
    v65 = *(a1 + 432);
    *(a1 + 424) = v62;
    *(a1 + 432) = v63;
    outlined consume of _Glass.Variant.Role(v64, v65);
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 448) = *(a2 + 448);

    *(a1 + 456) = *(a2 + 456);
    *(a1 + 464) = *(a2 + 464);
  }

  v66 = (a1 + 472);
  v67 = (a2 + 472);
  v68 = *(a2 + 496);
  if (*(a1 + 496) == 1)
  {
    if (v68 == 1)
    {
      v69 = *v67;
      v70 = *(a2 + 488);
      *(a1 + 497) = *(a2 + 497);
      *v66 = v69;
      *(a1 + 488) = v70;
    }

    else
    {
      v73 = *(a2 + 472);
      v74 = *(a2 + 480);
      outlined copy of _Glass.Variant.Role(v73, v74);
      *(a1 + 472) = v73;
      *(a1 + 480) = v74;
      *(a1 + 488) = *(a2 + 488);
      *(a1 + 496) = *(a2 + 496);
      *(a1 + 504) = *(a2 + 504);
      *(a1 + 512) = *(a2 + 512);
    }
  }

  else if (v68 == 1)
  {
    outlined destroy of _Glass(a1 + 472);
    v71 = *(a2 + 497);
    v72 = *(a2 + 488);
    *v66 = *v67;
    *(a1 + 488) = v72;
    *(a1 + 497) = v71;
  }

  else
  {
    v75 = *(a2 + 472);
    v76 = *(a2 + 480);
    outlined copy of _Glass.Variant.Role(v75, v76);
    v77 = *(a1 + 472);
    v78 = *(a1 + 480);
    *(a1 + 472) = v75;
    *(a1 + 480) = v76;
    outlined consume of _Glass.Variant.Role(v77, v78);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 496) = *(a2 + 496);

    *(a1 + 504) = *(a2 + 504);
    *(a1 + 512) = *(a2 + 512);
  }

  v79 = *(a2 + 516);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 516) = v79;
  *(a1 + 528) = *(a2 + 528);

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);

  *(a1 + 552) = *(a2 + 552);

  return a1;
}

uint64_t assignWithTake for GlassEntryContainerView(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = (a1 + 344);
  v6 = (a2 + 344);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  v12 = *(a1 + 32);
  *(a1 + 32) = v4;
  outlined consume of GlassContainer.Entry.ModelID(v7, v8, v9, v10, v12);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  outlined consume of _Glass.Variant.Role(v13, v14);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  v15 = *(a1 + 144);
  v16 = *(a1 + 152);
  *(a1 + 144) = *(a2 + 144);
  outlined consume of _Glass.Variant.Role(v15, v16);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);

  if (*(a1 + 248) == 1)
  {
    goto LABEL_4;
  }

  if (*(a2 + 248) == 1)
  {
    outlined destroy of _Glass(a1 + 224);
LABEL_4:
    v17 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v17;
    *(a1 + 249) = *(a2 + 249);
    goto LABEL_6;
  }

  v18 = *(a1 + 224);
  v19 = *(a1 + 232);
  *(a1 + 224) = *(a2 + 224);
  outlined consume of _Glass.Variant.Role(v18, v19);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);

  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
LABEL_6:
  if (*(a1 + 296) == 1)
  {
LABEL_9:
    v20 = *(a2 + 288);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 288) = v20;
    *(a1 + 297) = *(a2 + 297);
    goto LABEL_11;
  }

  if (*(a2 + 296) == 1)
  {
    outlined destroy of _Glass(a1 + 272);
    goto LABEL_9;
  }

  v21 = *(a1 + 272);
  v22 = *(a1 + 280);
  *(a1 + 272) = *(a2 + 272);
  outlined consume of _Glass.Variant.Role(v21, v22);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = *(a2 + 296);

  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
LABEL_11:
  *(a1 + 316) = *(a2 + 316);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  v23 = *(a1 + 344);
  v24 = *(a1 + 352);
  v25 = v6 + 5;
  *v5 = *v6;
  v26 = v5 + 5;
  outlined consume of _Glass.Variant.Role(v23, v24);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);

  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = *(a2 + 408);

  *(a1 + 416) = *(a2 + 416);

  if (*(a1 + 448) == 1)
  {
LABEL_14:
    v27 = v6[6];
    *v26 = *v25;
    v5[6] = v27;
    *(v5 + 105) = *(v6 + 105);
    goto LABEL_16;
  }

  if (*(a2 + 448) == 1)
  {
    outlined destroy of _Glass((v5 + 5));
    goto LABEL_14;
  }

  v28 = *(a1 + 424);
  v29 = *(a1 + 432);
  *v26 = *v25;
  outlined consume of _Glass.Variant.Role(v28, v29);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 448) = *(a2 + 448);

  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
LABEL_16:
  if (*(a1 + 496) != 1)
  {
    if (*(a2 + 496) != 1)
    {
      v31 = *(a1 + 472);
      v32 = *(a1 + 480);
      v5[8] = v6[8];
      outlined consume of _Glass.Variant.Role(v31, v32);
      *(a1 + 488) = *(a2 + 488);
      *(a1 + 496) = *(a2 + 496);

      *(a1 + 504) = *(a2 + 504);
      *(a1 + 512) = *(a2 + 512);
      goto LABEL_21;
    }

    outlined destroy of _Glass((v5 + 8));
  }

  v30 = v6[9];
  v5[8] = v6[8];
  v5[9] = v30;
  *(v5 + 153) = *(v6 + 153);
LABEL_21:
  *(a1 + 516) = *(a2 + 516);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);

  *(a1 + 552) = *(a2 + 552);

  return a1;
}

uint64_t getEnumTagSinglePayload for GlassEntryContainerView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 560))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassEntryContainerView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 552) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 560) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 560) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for GlassEffectLayout()
{
}

uint64_t initializeWithCopy for GlassEffectLayout(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithCopy for GlassEffectLayout(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithTake for GlassEffectLayout(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect>(255, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect>, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>);
    lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>> and conformance <> _VariadicView.Tree<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>> and conformance <> _VariadicView.Tree<A, B>)
  {
    type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>();
    lazy protocol witness table accessor for type ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> ForEach<A, B, C>, type metadata accessor for ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect>(255, &lazy cache variable for type metadata for ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect>, type metadata accessor for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t instantiation function for generic protocol witness table for GlassEffectLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined init with copy of TranslationKickModifier<Int>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  type metadata accessor for TransitionBox<IdentityTransition>(0, a3, MEMORY[0x1E69E6530], a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined destroy of TranslationKickModifier<Int>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t))
{
  type metadata accessor for TransitionBox<IdentityTransition>(0, a2, MEMORY[0x1E69E6530], a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t partial apply for closure #1 in View.glassEntryScheduledAnimation(_:cache:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:);

  return closure #1 in View.glassEntryScheduledAnimation(_:cache:)(v2, v3);
}

uint64_t outlined destroy of SeedValue<GlassContainer.EntryState>?(uint64_t a1)
{
  type metadata accessor for SeedValue<GlassContainer.EntryState>?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for SeedValue<GlassContainer.EntryState>?()
{
  if (!lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>?)
  {
    type metadata accessor for [GlassContainer.Entry](255, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>?);
    }
  }
}

uint64_t objectdestroy_27Tm()
{
  outlined consume of GlassContainer.Entry.ModelID(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  outlined consume of _Glass.Variant.Role(*(v0 + 56), *(v0 + 64));

  outlined consume of _Glass.Variant.Role(*(v0 + 160), *(v0 + 168));

  if (*(v0 + 264) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(v0 + 240), *(v0 + 248));
  }

  if (*(v0 + 312) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(v0 + 288), *(v0 + 296));
  }

  outlined consume of _Glass.Variant.Role(*(v0 + 360), *(v0 + 368));

  if (*(v0 + 464) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(v0 + 440), *(v0 + 448));
  }

  if (*(v0 + 512) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(v0 + 488), *(v0 + 496));
  }

  return swift_deallocObject();
}

uint64_t destroy for GlassEntryInteractionModifier(uint64_t a1)
{
  outlined consume of GlassContainer.Entry.ModelID(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  outlined consume of _Glass.Variant.Role(*(a1 + 40), *(a1 + 48));

  outlined consume of _Glass.Variant.Role(*(a1 + 144), *(a1 + 152));

  if (*(a1 + 248) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 224), *(a1 + 232));
  }

  if (*(a1 + 296) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 272), *(a1 + 280));
  }

  outlined consume of _Glass.Variant.Role(*(a1 + 344), *(a1 + 352));

  if (*(a1 + 448) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 424), *(a1 + 432));
  }

  if (*(a1 + 496) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 472), *(a1 + 480));
  }

  return result;
}

uint64_t initializeWithCopy for GlassEntryInteractionModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of GlassContainer.Entry.ModelID(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  outlined copy of _Glass.Variant.Role(v9, v10);
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = *(a2 + 56);
  v11 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v11;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  v12 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v12;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  v13 = *(a2 + 144);
  v14 = *(a2 + 152);

  outlined copy of _Glass.Variant.Role(v13, v14);
  *(a1 + 144) = v13;
  *(a1 + 152) = v14;
  *(a1 + 160) = *(a2 + 160);
  v15 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v15;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  v16 = *(a2 + 216);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = v16;
  v17 = *(a2 + 248);

  if (v17 == 1)
  {
    v18 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v18;
    *(a1 + 249) = *(a2 + 249);
  }

  else
  {
    v19 = *(a2 + 224);
    v20 = *(a2 + 232);
    outlined copy of _Glass.Variant.Role(v19, v20);
    *(a1 + 224) = v19;
    *(a1 + 232) = v20;
    *(a1 + 240) = *(a2 + 240);
    v21 = *(a2 + 256);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 256) = v21;
    *(a1 + 264) = *(a2 + 264);
  }

  if (*(a2 + 296) == 1)
  {
    v22 = *(a2 + 288);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 288) = v22;
    *(a1 + 297) = *(a2 + 297);
  }

  else
  {
    v23 = *(a2 + 272);
    v24 = *(a2 + 280);
    outlined copy of _Glass.Variant.Role(v23, v24);
    *(a1 + 272) = v23;
    *(a1 + 280) = v24;
    *(a1 + 288) = *(a2 + 288);
    v25 = *(a2 + 304);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 304) = v25;
    *(a1 + 312) = *(a2 + 312);
  }

  *(a1 + 316) = *(a2 + 316);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  v26 = *(a2 + 344);
  v27 = *(a2 + 352);
  outlined copy of _Glass.Variant.Role(v26, v27);
  *(a1 + 344) = v26;
  *(a1 + 352) = v27;
  *(a1 + 360) = *(a2 + 360);
  v28 = *(a2 + 376);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 376) = v28;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  v29 = *(a2 + 416);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = v29;
  v30 = *(a2 + 448);

  if (v30 == 1)
  {
    v31 = *(a2 + 440);
    *(a1 + 424) = *(a2 + 424);
    *(a1 + 440) = v31;
    *(a1 + 449) = *(a2 + 449);
  }

  else
  {
    v32 = *(a2 + 424);
    v33 = *(a2 + 432);
    outlined copy of _Glass.Variant.Role(v32, v33);
    *(a1 + 424) = v32;
    *(a1 + 432) = v33;
    *(a1 + 440) = *(a2 + 440);
    v34 = *(a2 + 456);
    *(a1 + 448) = *(a2 + 448);
    *(a1 + 456) = v34;
    *(a1 + 464) = *(a2 + 464);
  }

  if (*(a2 + 496) == 1)
  {
    v35 = *(a2 + 488);
    *(a1 + 472) = *(a2 + 472);
    *(a1 + 488) = v35;
    *(a1 + 497) = *(a2 + 497);
  }

  else
  {
    v36 = *(a2 + 472);
    v37 = *(a2 + 480);
    outlined copy of _Glass.Variant.Role(v36, v37);
    *(a1 + 472) = v36;
    *(a1 + 480) = v37;
    *(a1 + 488) = *(a2 + 488);
    v38 = *(a2 + 504);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 504) = v38;
    *(a1 + 512) = *(a2 + 512);
  }

  *(a1 + 516) = *(a2 + 516);
  *(a1 + 520) = *(a2 + 520);
  return a1;
}

uint64_t assignWithCopy for GlassEntryInteractionModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of GlassContainer.Entry.ModelID(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v13 = *(a1 + 32);
  *(a1 + 32) = v8;
  outlined consume of GlassContainer.Entry.ModelID(v9, v10, v11, v12, v13);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  outlined copy of _Glass.Variant.Role(v14, v15);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  outlined consume of _Glass.Variant.Role(v16, v17);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  v18 = *(a2 + 144);
  v19 = *(a2 + 152);
  outlined copy of _Glass.Variant.Role(v18, v19);
  v20 = *(a1 + 144);
  v21 = *(a1 + 152);
  *(a1 + 144) = v18;
  *(a1 + 152) = v19;
  outlined consume of _Glass.Variant.Role(v20, v21);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  v22 = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 192) = v22;
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);

  v23 = *(a2 + 248);
  if (*(a1 + 248) == 1)
  {
    if (v23 == 1)
    {
      v24 = *(a2 + 224);
      v25 = *(a2 + 240);
      *(a1 + 249) = *(a2 + 249);
      *(a1 + 224) = v24;
      *(a1 + 240) = v25;
    }

    else
    {
      v28 = *(a2 + 224);
      v29 = *(a2 + 232);
      outlined copy of _Glass.Variant.Role(v28, v29);
      *(a1 + 224) = v28;
      *(a1 + 232) = v29;
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 264) = *(a2 + 264);
    }
  }

  else if (v23 == 1)
  {
    outlined destroy of _Glass(a1 + 224);
    v26 = *(a2 + 249);
    v27 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v27;
    *(a1 + 249) = v26;
  }

  else
  {
    v30 = *(a2 + 224);
    v31 = *(a2 + 232);
    outlined copy of _Glass.Variant.Role(v30, v31);
    v32 = *(a1 + 224);
    v33 = *(a1 + 232);
    *(a1 + 224) = v30;
    *(a1 + 232) = v31;
    outlined consume of _Glass.Variant.Role(v32, v33);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 248) = *(a2 + 248);

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
  }

  v34 = (a1 + 272);
  v35 = (a2 + 272);
  v36 = *(a2 + 296);
  if (*(a1 + 296) == 1)
  {
    if (v36 == 1)
    {
      v37 = *v35;
      v38 = *(a2 + 288);
      *(a1 + 297) = *(a2 + 297);
      *v34 = v37;
      *(a1 + 288) = v38;
    }

    else
    {
      v41 = *(a2 + 272);
      v42 = *(a2 + 280);
      outlined copy of _Glass.Variant.Role(v41, v42);
      *(a1 + 272) = v41;
      *(a1 + 280) = v42;
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 296) = *(a2 + 296);
      *(a1 + 304) = *(a2 + 304);
      *(a1 + 312) = *(a2 + 312);
    }
  }

  else if (v36 == 1)
  {
    outlined destroy of _Glass(a1 + 272);
    v39 = *(a2 + 297);
    v40 = *(a2 + 288);
    *v34 = *v35;
    *(a1 + 288) = v40;
    *(a1 + 297) = v39;
  }

  else
  {
    v43 = *(a2 + 272);
    v44 = *(a2 + 280);
    outlined copy of _Glass.Variant.Role(v43, v44);
    v45 = *(a1 + 272);
    v46 = *(a1 + 280);
    *(a1 + 272) = v43;
    *(a1 + 280) = v44;
    outlined consume of _Glass.Variant.Role(v45, v46);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 296) = *(a2 + 296);

    *(a1 + 304) = *(a2 + 304);
    *(a1 + 312) = *(a2 + 312);
  }

  v47 = *(a2 + 316);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 316) = v47;
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  v48 = *(a2 + 344);
  v49 = *(a2 + 352);
  outlined copy of _Glass.Variant.Role(v48, v49);
  v50 = *(a1 + 344);
  v51 = *(a1 + 352);
  *(a1 + 344) = v48;
  *(a1 + 352) = v49;
  outlined consume of _Glass.Variant.Role(v50, v51);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);

  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  v52 = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 392) = v52;
  *(a1 + 408) = *(a2 + 408);

  *(a1 + 416) = *(a2 + 416);

  v53 = (a1 + 424);
  v54 = (a2 + 424);
  v55 = *(a2 + 448);
  if (*(a1 + 448) == 1)
  {
    if (v55 == 1)
    {
      v56 = *v54;
      v57 = *(a2 + 440);
      *(a1 + 449) = *(a2 + 449);
      *v53 = v56;
      *(a1 + 440) = v57;
    }

    else
    {
      v60 = *(a2 + 424);
      v61 = *(a2 + 432);
      outlined copy of _Glass.Variant.Role(v60, v61);
      *(a1 + 424) = v60;
      *(a1 + 432) = v61;
      *(a1 + 440) = *(a2 + 440);
      *(a1 + 448) = *(a2 + 448);
      *(a1 + 456) = *(a2 + 456);
      *(a1 + 464) = *(a2 + 464);
    }
  }

  else if (v55 == 1)
  {
    outlined destroy of _Glass(a1 + 424);
    v58 = *(a2 + 449);
    v59 = *(a2 + 440);
    *v53 = *v54;
    *(a1 + 440) = v59;
    *(a1 + 449) = v58;
  }

  else
  {
    v62 = *(a2 + 424);
    v63 = *(a2 + 432);
    outlined copy of _Glass.Variant.Role(v62, v63);
    v64 = *(a1 + 424);
    v65 = *(a1 + 432);
    *(a1 + 424) = v62;
    *(a1 + 432) = v63;
    outlined consume of _Glass.Variant.Role(v64, v65);
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 448) = *(a2 + 448);

    *(a1 + 456) = *(a2 + 456);
    *(a1 + 464) = *(a2 + 464);
  }

  v66 = (a1 + 472);
  v67 = (a2 + 472);
  v68 = *(a2 + 496);
  if (*(a1 + 496) == 1)
  {
    if (v68 == 1)
    {
      v69 = *v67;
      v70 = *(a2 + 488);
      *(a1 + 497) = *(a2 + 497);
      *v66 = v69;
      *(a1 + 488) = v70;
    }

    else
    {
      v73 = *(a2 + 472);
      v74 = *(a2 + 480);
      outlined copy of _Glass.Variant.Role(v73, v74);
      *(a1 + 472) = v73;
      *(a1 + 480) = v74;
      *(a1 + 488) = *(a2 + 488);
      *(a1 + 496) = *(a2 + 496);
      *(a1 + 504) = *(a2 + 504);
      *(a1 + 512) = *(a2 + 512);
    }
  }

  else if (v68 == 1)
  {
    outlined destroy of _Glass(a1 + 472);
    v71 = *(a2 + 497);
    v72 = *(a2 + 488);
    *v66 = *v67;
    *(a1 + 488) = v72;
    *(a1 + 497) = v71;
  }

  else
  {
    v75 = *(a2 + 472);
    v76 = *(a2 + 480);
    outlined copy of _Glass.Variant.Role(v75, v76);
    v77 = *(a1 + 472);
    v78 = *(a1 + 480);
    *(a1 + 472) = v75;
    *(a1 + 480) = v76;
    outlined consume of _Glass.Variant.Role(v77, v78);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 496) = *(a2 + 496);

    *(a1 + 504) = *(a2 + 504);
    *(a1 + 512) = *(a2 + 512);
  }

  v79 = *(a2 + 516);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 516) = v79;
  return a1;
}

uint64_t assignWithTake for GlassEntryInteractionModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = (a1 + 344);
  v6 = (a2 + 344);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  v12 = *(a1 + 32);
  *(a1 + 32) = v4;
  outlined consume of GlassContainer.Entry.ModelID(v7, v8, v9, v10, v12);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  outlined consume of _Glass.Variant.Role(v13, v14);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  v15 = *(a1 + 144);
  v16 = *(a1 + 152);
  *(a1 + 144) = *(a2 + 144);
  outlined consume of _Glass.Variant.Role(v15, v16);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);

  if (*(a1 + 248) == 1)
  {
    goto LABEL_4;
  }

  if (*(a2 + 248) == 1)
  {
    outlined destroy of _Glass(a1 + 224);
LABEL_4:
    v17 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v17;
    *(a1 + 249) = *(a2 + 249);
    goto LABEL_6;
  }

  v18 = *(a1 + 224);
  v19 = *(a1 + 232);
  *(a1 + 224) = *(a2 + 224);
  outlined consume of _Glass.Variant.Role(v18, v19);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);

  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
LABEL_6:
  if (*(a1 + 296) == 1)
  {
LABEL_9:
    v20 = *(a2 + 288);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 288) = v20;
    *(a1 + 297) = *(a2 + 297);
    goto LABEL_11;
  }

  if (*(a2 + 296) == 1)
  {
    outlined destroy of _Glass(a1 + 272);
    goto LABEL_9;
  }

  v21 = *(a1 + 272);
  v22 = *(a1 + 280);
  *(a1 + 272) = *(a2 + 272);
  outlined consume of _Glass.Variant.Role(v21, v22);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = *(a2 + 296);

  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
LABEL_11:
  *(a1 + 316) = *(a2 + 316);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  v23 = *(a1 + 344);
  v24 = *(a1 + 352);
  v25 = v6 + 5;
  *v5 = *v6;
  v26 = v5 + 5;
  outlined consume of _Glass.Variant.Role(v23, v24);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);

  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = *(a2 + 408);

  *(a1 + 416) = *(a2 + 416);

  if (*(a1 + 448) == 1)
  {
LABEL_14:
    v27 = v6[6];
    *v26 = *v25;
    v5[6] = v27;
    *(v5 + 105) = *(v6 + 105);
    goto LABEL_16;
  }

  if (*(a2 + 448) == 1)
  {
    outlined destroy of _Glass((v5 + 5));
    goto LABEL_14;
  }

  v28 = *(a1 + 424);
  v29 = *(a1 + 432);
  *v26 = *v25;
  outlined consume of _Glass.Variant.Role(v28, v29);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 448) = *(a2 + 448);

  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
LABEL_16:
  if (*(a1 + 496) != 1)
  {
    if (*(a2 + 496) != 1)
    {
      v31 = *(a1 + 472);
      v32 = *(a1 + 480);
      v5[8] = v6[8];
      outlined consume of _Glass.Variant.Role(v31, v32);
      *(a1 + 488) = *(a2 + 488);
      *(a1 + 496) = *(a2 + 496);

      *(a1 + 504) = *(a2 + 504);
      *(a1 + 512) = *(a2 + 512);
      goto LABEL_21;
    }

    outlined destroy of _Glass((v5 + 8));
  }

  v30 = v6[9];
  v5[8] = v6[8];
  v5[9] = v30;
  *(v5 + 153) = *(v6 + 153);
LABEL_21:
  *(a1 + 516) = *(a2 + 516);
  *(a1 + 520) = *(a2 + 520);
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassEntryInteractionModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 521))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassEntryInteractionModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 520) = 0;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 521) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 521) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for GlassEntryLayout(uint64_t a1)
{

  outlined consume of GlassContainer.Entry.ModelID(*(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  outlined consume of _Glass.Variant.Role(*(a1 + 64), *(a1 + 72));

  outlined consume of _Glass.Variant.Role(*(a1 + 168), *(a1 + 176));

  if (*(a1 + 272) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 248), *(a1 + 256));
  }

  if (*(a1 + 320) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 296), *(a1 + 304));
  }
}

uint64_t initializeWithCopy for GlassEntryLayout(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);

  outlined copy of GlassContainer.Entry.ModelID(v5, v6, v7, v8, v9);
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  outlined copy of _Glass.Variant.Role(v10, v11);
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  *(a1 + 80) = *(a2 + 80);
  v12 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v12;
  *(a1 + 104) = *(a2 + 104);
  v13 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v13;
  v14 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v14;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 161) = *(a2 + 161);
  v15 = *(a2 + 168);
  v16 = *(a2 + 176);

  outlined copy of _Glass.Variant.Role(v15, v16);
  *(a1 + 168) = v15;
  *(a1 + 176) = v16;
  *(a1 + 184) = *(a2 + 184);
  v17 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = v17;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  v18 = *(a2 + 240);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = v18;
  v19 = *(a2 + 272);

  if (v19 == 1)
  {
    v20 = *(a2 + 264);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = v20;
    *(a1 + 273) = *(a2 + 273);
  }

  else
  {
    v21 = *(a2 + 248);
    v22 = *(a2 + 256);
    outlined copy of _Glass.Variant.Role(v21, v22);
    *(a1 + 248) = v21;
    *(a1 + 256) = v22;
    *(a1 + 264) = *(a2 + 264);
    v23 = *(a2 + 280);
    *(a1 + 272) = v19;
    *(a1 + 280) = v23;
    *(a1 + 288) = *(a2 + 288);
  }

  v24 = *(a2 + 320);
  if (v24 == 1)
  {
    v25 = *(a2 + 312);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 312) = v25;
    *(a1 + 321) = *(a2 + 321);
  }

  else
  {
    v26 = *(a2 + 296);
    v27 = *(a2 + 304);
    outlined copy of _Glass.Variant.Role(v26, v27);
    *(a1 + 296) = v26;
    *(a1 + 304) = v27;
    *(a1 + 312) = *(a2 + 312);
    v28 = *(a2 + 328);
    *(a1 + 320) = v24;
    *(a1 + 328) = v28;
    *(a1 + 336) = *(a2 + 336);
  }

  *(a1 + 340) = *(a2 + 340);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 412) = *(a2 + 412);
  v29 = *(a2 + 380);
  *(a1 + 364) = *(a2 + 364);
  *(a1 + 380) = v29;
  *(a1 + 396) = *(a2 + 396);
  v30 = *(a2 + 416);
  v31 = *(a2 + 432);
  v32 = *(a2 + 464);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 464) = v32;
  *(a1 + 416) = v30;
  *(a1 + 432) = v31;
  *(a1 + 480) = *(a2 + 480);

  return a1;
}

uint64_t assignWithCopy for GlassEntryLayout(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  outlined copy of GlassContainer.Entry.ModelID(v4, v5, v6, v7, v8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  v13 = *(a1 + 56);
  *(a1 + 56) = v8;
  outlined consume of GlassContainer.Entry.ModelID(v9, v10, v11, v12, v13);
  v14 = *(a2 + 64);
  v15 = *(a2 + 72);
  outlined copy of _Glass.Variant.Role(v14, v15);
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  *(a1 + 64) = v14;
  *(a1 + 72) = v15;
  outlined consume of _Glass.Variant.Role(v16, v17);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 161) = *(a2 + 161);
  v18 = *(a2 + 168);
  v19 = *(a2 + 176);
  outlined copy of _Glass.Variant.Role(v18, v19);
  v20 = *(a1 + 168);
  v21 = *(a1 + 176);
  *(a1 + 168) = v18;
  *(a1 + 176) = v19;
  outlined consume of _Glass.Variant.Role(v20, v21);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  v22 = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 216) = v22;
  *(a1 + 232) = *(a2 + 232);

  *(a1 + 240) = *(a2 + 240);

  v23 = (a1 + 248);
  v24 = (a2 + 248);
  v25 = *(a2 + 272);
  if (*(a1 + 272) == 1)
  {
    if (v25 == 1)
    {
      v26 = *v24;
      v27 = *(a2 + 264);
      *(a1 + 273) = *(a2 + 273);
      *v23 = v26;
      *(a1 + 264) = v27;
    }

    else
    {
      v30 = *(a2 + 248);
      v31 = *(a2 + 256);
      outlined copy of _Glass.Variant.Role(v30, v31);
      *(a1 + 248) = v30;
      *(a1 + 256) = v31;
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 280) = *(a2 + 280);
      *(a1 + 288) = *(a2 + 288);
    }
  }

  else if (v25 == 1)
  {
    outlined destroy of _Glass(a1 + 248);
    v28 = *(a2 + 273);
    v29 = *(a2 + 264);
    *v23 = *v24;
    *(a1 + 264) = v29;
    *(a1 + 273) = v28;
  }

  else
  {
    v32 = *(a2 + 248);
    v33 = *(a2 + 256);
    outlined copy of _Glass.Variant.Role(v32, v33);
    v34 = *(a1 + 248);
    v35 = *(a1 + 256);
    *(a1 + 248) = v32;
    *(a1 + 256) = v33;
    outlined consume of _Glass.Variant.Role(v34, v35);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);

    *(a1 + 280) = *(a2 + 280);
    *(a1 + 288) = *(a2 + 288);
  }

  v36 = (a1 + 296);
  v37 = (a2 + 296);
  v38 = *(a2 + 320);
  if (*(a1 + 320) == 1)
  {
    if (v38 == 1)
    {
      v39 = *v37;
      v40 = *(a2 + 312);
      *(a1 + 321) = *(a2 + 321);
      *v36 = v39;
      *(a1 + 312) = v40;
    }

    else
    {
      v43 = *(a2 + 296);
      v44 = *(a2 + 304);
      outlined copy of _Glass.Variant.Role(v43, v44);
      *(a1 + 296) = v43;
      *(a1 + 304) = v44;
      *(a1 + 312) = *(a2 + 312);
      *(a1 + 320) = *(a2 + 320);
      *(a1 + 328) = *(a2 + 328);
      *(a1 + 336) = *(a2 + 336);
    }
  }

  else if (v38 == 1)
  {
    outlined destroy of _Glass(a1 + 296);
    v41 = *(a2 + 321);
    v42 = *(a2 + 312);
    *v36 = *v37;
    *(a1 + 312) = v42;
    *(a1 + 321) = v41;
  }

  else
  {
    v45 = *(a2 + 296);
    v46 = *(a2 + 304);
    outlined copy of _Glass.Variant.Role(v45, v46);
    v47 = *(a1 + 296);
    v48 = *(a1 + 304);
    *(a1 + 296) = v45;
    *(a1 + 304) = v46;
    outlined consume of _Glass.Variant.Role(v47, v48);
    *(a1 + 312) = *(a2 + 312);
    *(a1 + 320) = *(a2 + 320);

    *(a1 + 328) = *(a2 + 328);
    *(a1 + 336) = *(a2 + 336);
  }

  v49 = *(a2 + 340);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 340) = v49;
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 364) = *(a2 + 364);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 372) = *(a2 + 372);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 380) = *(a2 + 380);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 388) = *(a2 + 388);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 396) = *(a2 + 396);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 404) = *(a2 + 404);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 412) = *(a2 + 412);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 480) = *(a2 + 480);

  return a1;
}

uint64_t assignWithTake for GlassEntryLayout(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 56);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v9 = *(a1 + 56);
  *(a1 + 56) = v4;
  outlined consume of GlassContainer.Entry.ModelID(v5, v6, v7, v8, v9);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  outlined consume of _Glass.Variant.Role(v10, v11);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v12 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v12;
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 161) = *(a2 + 161);
  v13 = *(a1 + 168);
  v14 = *(a1 + 176);
  *(a1 + 168) = *(a2 + 168);
  outlined consume of _Glass.Variant.Role(v13, v14);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);

  *(a1 + 240) = *(a2 + 240);

  if (*(a1 + 272) == 1)
  {
    goto LABEL_4;
  }

  if (*(a2 + 272) == 1)
  {
    outlined destroy of _Glass(a1 + 248);
LABEL_4:
    v15 = *(a2 + 264);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = v15;
    *(a1 + 273) = *(a2 + 273);
    goto LABEL_6;
  }

  v16 = *(a1 + 248);
  v17 = *(a1 + 256);
  *(a1 + 248) = *(a2 + 248);
  outlined consume of _Glass.Variant.Role(v16, v17);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);
LABEL_6:
  v18 = (a1 + 296);
  v19 = (a2 + 296);
  if (*(a1 + 320) != 1)
  {
    if (*(a2 + 320) != 1)
    {
      v21 = *(a1 + 296);
      v22 = *(a1 + 304);
      *v18 = *v19;
      outlined consume of _Glass.Variant.Role(v21, v22);
      *(a1 + 312) = *(a2 + 312);
      *(a1 + 320) = *(a2 + 320);

      *(a1 + 328) = *(a2 + 328);
      *(a1 + 336) = *(a2 + 336);
      goto LABEL_11;
    }

    outlined destroy of _Glass(a1 + 296);
  }

  v20 = *(a2 + 312);
  *v18 = *v19;
  *(a1 + 312) = v20;
  *(a1 + 321) = *(a2 + 321);
LABEL_11:
  *(a1 + 340) = *(a2 + 340);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  v23 = *(a2 + 376);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 376) = v23;
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 408) = *(a2 + 408);
  v24 = *(a2 + 432);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = v24;
  v25 = *(a2 + 464);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 464) = v25;
  *(a1 + 480) = *(a2 + 480);

  return a1;
}

uint64_t getEnumTagSinglePayload for GlassEntryLayout(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 488))
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

uint64_t storeEnumTagSinglePayload for GlassEntryLayout(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 456) = 0u;
    *(result + 472) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 488) = 1;
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

    *(result + 488) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for GlassEntryContainerView(uint64_t a1)
{
  outlined consume of GlassContainer.Entry.ModelID(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  outlined consume of _Glass.Variant.Role(*(a1 + 40), *(a1 + 48));

  outlined consume of _Glass.Variant.Role(*(a1 + 144), *(a1 + 152));

  if (*(a1 + 248) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 224), *(a1 + 232));
  }

  if (*(a1 + 296) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 272), *(a1 + 280));
  }

  outlined consume of _Glass.Variant.Role(*(a1 + 344), *(a1 + 352));

  if (*(a1 + 448) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 424), *(a1 + 432));
  }

  if (*(a1 + 496) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 472), *(a1 + 480));
  }
}

uint64_t initializeWithCopy for GlassEntryView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of GlassContainer.Entry.ModelID(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  outlined copy of _Glass.Variant.Role(v9, v10);
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = *(a2 + 56);
  v11 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v11;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  v12 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v12;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  v13 = *(a2 + 144);
  v14 = *(a2 + 152);

  outlined copy of _Glass.Variant.Role(v13, v14);
  *(a1 + 144) = v13;
  *(a1 + 152) = v14;
  *(a1 + 160) = *(a2 + 160);
  v15 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v15;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  v16 = *(a2 + 216);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = v16;
  v17 = *(a2 + 248);

  if (v17 == 1)
  {
    v18 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v18;
    *(a1 + 249) = *(a2 + 249);
  }

  else
  {
    v19 = *(a2 + 224);
    v20 = *(a2 + 232);
    outlined copy of _Glass.Variant.Role(v19, v20);
    *(a1 + 224) = v19;
    *(a1 + 232) = v20;
    *(a1 + 240) = *(a2 + 240);
    v21 = *(a2 + 256);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 256) = v21;
    *(a1 + 264) = *(a2 + 264);
  }

  if (*(a2 + 296) == 1)
  {
    v22 = *(a2 + 288);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 288) = v22;
    *(a1 + 297) = *(a2 + 297);
  }

  else
  {
    v23 = *(a2 + 272);
    v24 = *(a2 + 280);
    outlined copy of _Glass.Variant.Role(v23, v24);
    *(a1 + 272) = v23;
    *(a1 + 280) = v24;
    *(a1 + 288) = *(a2 + 288);
    v25 = *(a2 + 304);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 304) = v25;
    *(a1 + 312) = *(a2 + 312);
  }

  *(a1 + 316) = *(a2 + 316);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  v26 = *(a2 + 344);
  v27 = *(a2 + 352);
  outlined copy of _Glass.Variant.Role(v26, v27);
  *(a1 + 344) = v26;
  *(a1 + 352) = v27;
  *(a1 + 360) = *(a2 + 360);
  v28 = *(a2 + 376);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 376) = v28;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  v29 = *(a2 + 416);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = v29;
  v30 = *(a2 + 448);

  if (v30 == 1)
  {
    v31 = *(a2 + 440);
    *(a1 + 424) = *(a2 + 424);
    *(a1 + 440) = v31;
    *(a1 + 449) = *(a2 + 449);
  }

  else
  {
    v32 = *(a2 + 424);
    v33 = *(a2 + 432);
    outlined copy of _Glass.Variant.Role(v32, v33);
    *(a1 + 424) = v32;
    *(a1 + 432) = v33;
    *(a1 + 440) = *(a2 + 440);
    v34 = *(a2 + 456);
    *(a1 + 448) = *(a2 + 448);
    *(a1 + 456) = v34;
    *(a1 + 464) = *(a2 + 464);
  }

  if (*(a2 + 496) == 1)
  {
    v35 = *(a2 + 488);
    *(a1 + 472) = *(a2 + 472);
    *(a1 + 488) = v35;
    *(a1 + 497) = *(a2 + 497);
  }

  else
  {
    v36 = *(a2 + 472);
    v37 = *(a2 + 480);
    outlined copy of _Glass.Variant.Role(v36, v37);
    *(a1 + 472) = v36;
    *(a1 + 480) = v37;
    *(a1 + 488) = *(a2 + 488);
    v38 = *(a2 + 504);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 504) = v38;
    *(a1 + 512) = *(a2 + 512);
  }

  *(a1 + 516) = *(a2 + 516);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 608) = *(a2 + 608);
  v39 = *(a2 + 592);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = v39;
  *(a1 + 560) = *(a2 + 560);
  v40 = *(a2 + 664);
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 664) = v40;
  v41 = *(a2 + 632);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 632) = v41;

  return a1;
}

uint64_t assignWithCopy for GlassEntryView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of GlassContainer.Entry.ModelID(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v13 = *(a1 + 32);
  *(a1 + 32) = v8;
  outlined consume of GlassContainer.Entry.ModelID(v9, v10, v11, v12, v13);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  outlined copy of _Glass.Variant.Role(v14, v15);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  outlined consume of _Glass.Variant.Role(v16, v17);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  v18 = *(a2 + 144);
  v19 = *(a2 + 152);
  outlined copy of _Glass.Variant.Role(v18, v19);
  v20 = *(a1 + 144);
  v21 = *(a1 + 152);
  *(a1 + 144) = v18;
  *(a1 + 152) = v19;
  outlined consume of _Glass.Variant.Role(v20, v21);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  v22 = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 192) = v22;
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);

  v23 = *(a2 + 248);
  if (*(a1 + 248) == 1)
  {
    if (v23 == 1)
    {
      v24 = *(a2 + 224);
      v25 = *(a2 + 240);
      *(a1 + 249) = *(a2 + 249);
      *(a1 + 224) = v24;
      *(a1 + 240) = v25;
    }

    else
    {
      v28 = *(a2 + 224);
      v29 = *(a2 + 232);
      outlined copy of _Glass.Variant.Role(v28, v29);
      *(a1 + 224) = v28;
      *(a1 + 232) = v29;
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 264) = *(a2 + 264);
    }
  }

  else if (v23 == 1)
  {
    outlined destroy of _Glass(a1 + 224);
    v26 = *(a2 + 249);
    v27 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v27;
    *(a1 + 249) = v26;
  }

  else
  {
    v30 = *(a2 + 224);
    v31 = *(a2 + 232);
    outlined copy of _Glass.Variant.Role(v30, v31);
    v32 = *(a1 + 224);
    v33 = *(a1 + 232);
    *(a1 + 224) = v30;
    *(a1 + 232) = v31;
    outlined consume of _Glass.Variant.Role(v32, v33);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 248) = *(a2 + 248);

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
  }

  v34 = (a1 + 272);
  v35 = (a2 + 272);
  v36 = *(a2 + 296);
  if (*(a1 + 296) == 1)
  {
    if (v36 == 1)
    {
      v37 = *v35;
      v38 = *(a2 + 288);
      *(a1 + 297) = *(a2 + 297);
      *v34 = v37;
      *(a1 + 288) = v38;
    }

    else
    {
      v41 = *(a2 + 272);
      v42 = *(a2 + 280);
      outlined copy of _Glass.Variant.Role(v41, v42);
      *(a1 + 272) = v41;
      *(a1 + 280) = v42;
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 296) = *(a2 + 296);
      *(a1 + 304) = *(a2 + 304);
      *(a1 + 312) = *(a2 + 312);
    }
  }

  else if (v36 == 1)
  {
    outlined destroy of _Glass(a1 + 272);
    v39 = *(a2 + 297);
    v40 = *(a2 + 288);
    *v34 = *v35;
    *(a1 + 288) = v40;
    *(a1 + 297) = v39;
  }

  else
  {
    v43 = *(a2 + 272);
    v44 = *(a2 + 280);
    outlined copy of _Glass.Variant.Role(v43, v44);
    v45 = *(a1 + 272);
    v46 = *(a1 + 280);
    *(a1 + 272) = v43;
    *(a1 + 280) = v44;
    outlined consume of _Glass.Variant.Role(v45, v46);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 296) = *(a2 + 296);

    *(a1 + 304) = *(a2 + 304);
    *(a1 + 312) = *(a2 + 312);
  }

  v47 = *(a2 + 316);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 316) = v47;
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  v48 = *(a2 + 344);
  v49 = *(a2 + 352);
  outlined copy of _Glass.Variant.Role(v48, v49);
  v50 = *(a1 + 344);
  v51 = *(a1 + 352);
  *(a1 + 344) = v48;
  *(a1 + 352) = v49;
  outlined consume of _Glass.Variant.Role(v50, v51);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);

  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  v52 = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 392) = v52;
  *(a1 + 408) = *(a2 + 408);

  *(a1 + 416) = *(a2 + 416);

  v53 = (a1 + 424);
  v54 = (a2 + 424);
  v55 = *(a2 + 448);
  if (*(a1 + 448) == 1)
  {
    if (v55 == 1)
    {
      v56 = *v54;
      v57 = *(a2 + 440);
      *(a1 + 449) = *(a2 + 449);
      *v53 = v56;
      *(a1 + 440) = v57;
    }

    else
    {
      v60 = *(a2 + 424);
      v61 = *(a2 + 432);
      outlined copy of _Glass.Variant.Role(v60, v61);
      *(a1 + 424) = v60;
      *(a1 + 432) = v61;
      *(a1 + 440) = *(a2 + 440);
      *(a1 + 448) = *(a2 + 448);
      *(a1 + 456) = *(a2 + 456);
      *(a1 + 464) = *(a2 + 464);
    }
  }

  else if (v55 == 1)
  {
    outlined destroy of _Glass(a1 + 424);
    v58 = *(a2 + 449);
    v59 = *(a2 + 440);
    *v53 = *v54;
    *(a1 + 440) = v59;
    *(a1 + 449) = v58;
  }

  else
  {
    v62 = *(a2 + 424);
    v63 = *(a2 + 432);
    outlined copy of _Glass.Variant.Role(v62, v63);
    v64 = *(a1 + 424);
    v65 = *(a1 + 432);
    *(a1 + 424) = v62;
    *(a1 + 432) = v63;
    outlined consume of _Glass.Variant.Role(v64, v65);
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 448) = *(a2 + 448);

    *(a1 + 456) = *(a2 + 456);
    *(a1 + 464) = *(a2 + 464);
  }

  v66 = (a1 + 472);
  v67 = (a2 + 472);
  v68 = *(a2 + 496);
  if (*(a1 + 496) == 1)
  {
    if (v68 == 1)
    {
      v69 = *v67;
      v70 = *(a2 + 488);
      *(a1 + 497) = *(a2 + 497);
      *v66 = v69;
      *(a1 + 488) = v70;
    }

    else
    {
      v73 = *(a2 + 472);
      v74 = *(a2 + 480);
      outlined copy of _Glass.Variant.Role(v73, v74);
      *(a1 + 472) = v73;
      *(a1 + 480) = v74;
      *(a1 + 488) = *(a2 + 488);
      *(a1 + 496) = *(a2 + 496);
      *(a1 + 504) = *(a2 + 504);
      *(a1 + 512) = *(a2 + 512);
    }
  }

  else if (v68 == 1)
  {
    outlined destroy of _Glass(a1 + 472);
    v71 = *(a2 + 497);
    v72 = *(a2 + 488);
    *v66 = *v67;
    *(a1 + 488) = v72;
    *(a1 + 497) = v71;
  }

  else
  {
    v75 = *(a2 + 472);
    v76 = *(a2 + 480);
    outlined copy of _Glass.Variant.Role(v75, v76);
    v77 = *(a1 + 472);
    v78 = *(a1 + 480);
    *(a1 + 472) = v75;
    *(a1 + 480) = v76;
    outlined consume of _Glass.Variant.Role(v77, v78);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 496) = *(a2 + 496);

    *(a1 + 504) = *(a2 + 504);
    *(a1 + 512) = *(a2 + 512);
  }

  v79 = *(a2 + 516);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 516) = v79;
  *(a1 + 528) = *(a2 + 528);

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);

  *(a1 + 552) = *(a2 + 552);

  *(a1 + 560) = *(a2 + 560);
  *(a1 + 564) = *(a2 + 564);
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 572) = *(a2 + 572);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 580) = *(a2 + 580);
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 588) = *(a2 + 588);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 596) = *(a2 + 596);
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 604) = *(a2 + 604);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 640) = *(a2 + 640);
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 664) = *(a2 + 664);
  *(a1 + 672) = *(a2 + 672);
  return a1;
}

uint64_t assignWithTake for GlassEntryView(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = (a1 + 344);
  v6 = (a2 + 344);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  v12 = *(a1 + 32);
  *(a1 + 32) = v4;
  outlined consume of GlassContainer.Entry.ModelID(v7, v8, v9, v10, v12);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  outlined consume of _Glass.Variant.Role(v13, v14);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  v15 = *(a1 + 144);
  v16 = *(a1 + 152);
  *(a1 + 144) = *(a2 + 144);
  outlined consume of _Glass.Variant.Role(v15, v16);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);

  if (*(a1 + 248) == 1)
  {
    goto LABEL_4;
  }

  if (*(a2 + 248) == 1)
  {
    outlined destroy of _Glass(a1 + 224);
LABEL_4:
    v17 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v17;
    *(a1 + 249) = *(a2 + 249);
    goto LABEL_6;
  }

  v18 = *(a1 + 224);
  v19 = *(a1 + 232);
  *(a1 + 224) = *(a2 + 224);
  outlined consume of _Glass.Variant.Role(v18, v19);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);

  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
LABEL_6:
  if (*(a1 + 296) == 1)
  {
LABEL_9:
    v20 = *(a2 + 288);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 288) = v20;
    *(a1 + 297) = *(a2 + 297);
    goto LABEL_11;
  }

  if (*(a2 + 296) == 1)
  {
    outlined destroy of _Glass(a1 + 272);
    goto LABEL_9;
  }

  v21 = *(a1 + 272);
  v22 = *(a1 + 280);
  *(a1 + 272) = *(a2 + 272);
  outlined consume of _Glass.Variant.Role(v21, v22);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = *(a2 + 296);

  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
LABEL_11:
  *(a1 + 316) = *(a2 + 316);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  v23 = *(a1 + 344);
  v24 = *(a1 + 352);
  v25 = v6 + 5;
  *v5 = *v6;
  v26 = v5 + 5;
  outlined consume of _Glass.Variant.Role(v23, v24);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);

  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = *(a2 + 408);

  *(a1 + 416) = *(a2 + 416);

  if (*(a1 + 448) == 1)
  {
LABEL_14:
    v27 = v6[6];
    *v26 = *v25;
    v5[6] = v27;
    *(v5 + 105) = *(v6 + 105);
    goto LABEL_16;
  }

  if (*(a2 + 448) == 1)
  {
    outlined destroy of _Glass((v5 + 5));
    goto LABEL_14;
  }

  v28 = *(a1 + 424);
  v29 = *(a1 + 432);
  *v26 = *v25;
  outlined consume of _Glass.Variant.Role(v28, v29);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 448) = *(a2 + 448);

  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
LABEL_16:
  if (*(a1 + 496) != 1)
  {
    if (*(a2 + 496) != 1)
    {
      v31 = *(a1 + 472);
      v32 = *(a1 + 480);
      v5[8] = v6[8];
      outlined consume of _Glass.Variant.Role(v31, v32);
      *(a1 + 488) = *(a2 + 488);
      *(a1 + 496) = *(a2 + 496);

      *(a1 + 504) = *(a2 + 504);
      *(a1 + 512) = *(a2 + 512);
      goto LABEL_21;
    }

    outlined destroy of _Glass((v5 + 8));
  }

  v30 = v6[9];
  v5[8] = v6[8];
  v5[9] = v30;
  *(v5 + 153) = *(v6 + 153);
LABEL_21:
  *(a1 + 516) = *(a2 + 516);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);

  *(a1 + 552) = *(a2 + 552);

  v33 = *(a2 + 576);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 576) = v33;
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 616) = *(a2 + 616);
  v34 = *(a2 + 640);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 640) = v34;
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 672) = *(a2 + 672);
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassEntryView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 680))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassEntryView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 648) = 0u;
    *(result + 664) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 680) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 680) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GlassEntryLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for Anchor<CGRect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of GlassContainer.Entry?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for [GlassContainer.Entry](0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for [GlassContainer.Entry](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PrimitiveGlassItemView.ItemLayoutComputer and conformance PrimitiveGlassItemView.ItemLayoutComputer()
{
  result = lazy protocol witness table cache variable for type PrimitiveGlassItemView.ItemLayoutComputer and conformance PrimitiveGlassItemView.ItemLayoutComputer;
  if (!lazy protocol witness table cache variable for type PrimitiveGlassItemView.ItemLayoutComputer and conformance PrimitiveGlassItemView.ItemLayoutComputer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveGlassItemView.ItemLayoutComputer and conformance PrimitiveGlassItemView.ItemLayoutComputer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveGlassItemView.ItemDisplayList and conformance PrimitiveGlassItemView.ItemDisplayList()
{
  result = lazy protocol witness table cache variable for type PrimitiveGlassItemView.ItemDisplayList and conformance PrimitiveGlassItemView.ItemDisplayList;
  if (!lazy protocol witness table cache variable for type PrimitiveGlassItemView.ItemDisplayList and conformance PrimitiveGlassItemView.ItemDisplayList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveGlassItemView.ItemDisplayList and conformance PrimitiveGlassItemView.ItemDisplayList);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for GlassEntryInteractionModifier.ModifierInit(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[2];
  a1[1] = a2[1];
  a1[2] = v3;

  return a1;
}

uint64_t assignWithCopy for GlassEntryInteractionModifier.ModifierInit(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

void *assignWithTake for GlassEntryInteractionModifier.ModifierInit(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  return a1;
}

uint64_t destroy for GlassItemView(uint64_t a1)
{

  outlined consume of _Glass.Variant.Role(*(a1 + 32), *(a1 + 40));

  if (*(a1 + 224) != 1)
  {
  }

  if (*(a1 + 248) != 1)
  {
  }

  outlined consume of GlassContainer.Entry.ModelID(*(a1 + 656), *(a1 + 664), *(a1 + 672), *(a1 + 680), *(a1 + 688));
  outlined consume of _Glass.Variant.Role(*(a1 + 696), *(a1 + 704));

  outlined consume of _Glass.Variant.Role(*(a1 + 800), *(a1 + 808));

  if (*(a1 + 904) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 880), *(a1 + 888));
  }

  if (*(a1 + 952) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 928), *(a1 + 936));
  }
}

uint64_t initializeWithCopy for GlassItemView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);

  outlined copy of _Glass.Variant.Role(v5, v6);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = *(a2 + 48);
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  *(a1 + 72) = *(a2 + 72);
  v8 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v8;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v9 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v9;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 177) = *(a2 + 177);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  v10 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v10;
  v11 = *(a2 + 224);

  if (v11 == 1)
  {
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
  }

  else
  {
    *(a1 + 216) = *(a2 + 216);
    v12 = *(a2 + 232);
    *(a1 + 224) = v11;
    *(a1 + 232) = v12;
  }

  v13 = *(a2 + 248);
  if (v13 == 1)
  {
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 256) = *(a2 + 256);
  }

  else
  {
    *(a1 + 240) = *(a2 + 240);
    v14 = *(a2 + 256);
    *(a1 + 248) = v13;
    *(a1 + 256) = v14;
  }

  *(a1 + 328) = *(a2 + 328);
  v15 = *(a2 + 312);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = v15;
  v16 = *(a2 + 280);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 280) = v16;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  v17 = *(a2 + 360);
  v18 = *(a2 + 376);
  v19 = *(a2 + 408);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 408) = v19;
  *(a1 + 360) = v17;
  *(a1 + 376) = v18;
  v20 = *(a2 + 424);
  v21 = *(a2 + 440);
  v22 = *(a2 + 472);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 472) = v22;
  *(a1 + 424) = v20;
  *(a1 + 440) = v21;
  v23 = *(a2 + 488);
  v24 = *(a2 + 504);
  v25 = *(a2 + 536);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 536) = v25;
  *(a1 + 488) = v23;
  *(a1 + 504) = v24;
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 568) = *(a2 + 568);
  v26 = *(a2 + 624);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 624) = v26;
  *(a1 + 640) = *(a2 + 640);
  v27 = *(a2 + 592);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = v27;
  *(a1 + 648) = *(a2 + 648);
  v28 = *(a2 + 656);
  v29 = *(a2 + 664);
  v30 = *(a2 + 672);
  v31 = *(a2 + 680);
  v32 = *(a2 + 688);

  outlined copy of GlassContainer.Entry.ModelID(v28, v29, v30, v31, v32);
  *(a1 + 656) = v28;
  *(a1 + 664) = v29;
  *(a1 + 672) = v30;
  *(a1 + 680) = v31;
  *(a1 + 688) = v32;
  v33 = *(a2 + 696);
  v34 = *(a2 + 704);
  outlined copy of _Glass.Variant.Role(v33, v34);
  *(a1 + 696) = v33;
  *(a1 + 704) = v34;
  *(a1 + 712) = *(a2 + 712);
  *(a1 + 720) = *(a2 + 720);
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 736) = *(a2 + 736);
  v35 = *(a2 + 760);
  *(a1 + 744) = *(a2 + 744);
  *(a1 + 760) = v35;
  *(a1 + 776) = *(a2 + 776);
  *(a1 + 784) = *(a2 + 784);
  *(a1 + 792) = *(a2 + 792);
  *(a1 + 793) = *(a2 + 793);
  v36 = *(a2 + 800);
  v37 = *(a2 + 808);

  outlined copy of _Glass.Variant.Role(v36, v37);
  *(a1 + 800) = v36;
  *(a1 + 808) = v37;
  *(a1 + 816) = *(a2 + 816);
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);
  *(a1 + 840) = *(a2 + 840);
  *(a1 + 848) = *(a2 + 848);
  *(a1 + 856) = *(a2 + 856);
  *(a1 + 864) = *(a2 + 864);
  *(a1 + 872) = *(a2 + 872);
  v38 = *(a2 + 904);

  if (v38 == 1)
  {
    v39 = *(a2 + 896);
    *(a1 + 880) = *(a2 + 880);
    *(a1 + 896) = v39;
    *(a1 + 905) = *(a2 + 905);
  }

  else
  {
    v40 = *(a2 + 880);
    v41 = *(a2 + 888);
    outlined copy of _Glass.Variant.Role(v40, v41);
    *(a1 + 880) = v40;
    *(a1 + 888) = v41;
    *(a1 + 896) = *(a2 + 896);
    *(a1 + 904) = *(a2 + 904);
    *(a1 + 912) = *(a2 + 912);
    *(a1 + 920) = *(a2 + 920);
  }

  if (*(a2 + 952) == 1)
  {
    v42 = *(a2 + 944);
    *(a1 + 928) = *(a2 + 928);
    *(a1 + 944) = v42;
    *(a1 + 953) = *(a2 + 953);
  }

  else
  {
    v43 = *(a2 + 928);
    v44 = *(a2 + 936);
    outlined copy of _Glass.Variant.Role(v43, v44);
    *(a1 + 928) = v43;
    *(a1 + 936) = v44;
    *(a1 + 944) = *(a2 + 944);
    *(a1 + 952) = *(a2 + 952);
    *(a1 + 960) = *(a2 + 960);
    *(a1 + 968) = *(a2 + 968);
  }

  *(a1 + 972) = *(a2 + 972);
  *(a1 + 976) = *(a2 + 976);
  *(a1 + 984) = *(a2 + 984);
  *(a1 + 992) = *(a2 + 992);
  *(a1 + 1000) = *(a2 + 1000);
  *(a1 + 1008) = *(a2 + 1008);
  *(a1 + 1016) = *(a2 + 1016);
  *(a1 + 1024) = *(a2 + 1024);

  return a1;
}

uint64_t assignWithCopy for GlassItemView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  outlined copy of _Glass.Variant.Role(v4, v5);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  outlined consume of _Glass.Variant.Role(v6, v7);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  v8 = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = v8;
  v9 = *(a2 + 152);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 152) = v9;
  *(a1 + 177) = *(a2 + 177);
  v10 = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 184) = v10;
  *(a1 + 200) = *(a2 + 200);

  *(a1 + 208) = *(a2 + 208);

  v11 = *(a2 + 224);
  if (*(a1 + 224) == 1)
  {
    if (v11 == 1)
    {
      v12 = *(a2 + 216);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 216) = v12;
    }

    else
    {
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
    }
  }

  else if (v11 == 1)
  {
    outlined destroy of GlassContainer.Item.ID(a1 + 216);
    v13 = *(a2 + 232);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = v13;
  }

  else
  {
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);

    *(a1 + 232) = *(a2 + 232);
  }

  v14 = *(a2 + 248);
  if (*(a1 + 248) == 1)
  {
    if (v14 == 1)
    {
      v15 = *(a2 + 240);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 240) = v15;
    }

    else
    {
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);
    }
  }

  else
  {
    if (v14 == 1)
    {
      outlined destroy of GlassContainer.Item.ID(a1 + 240);
      v16 = *(a2 + 256);
      *(a1 + 240) = *(a2 + 240);
    }

    else
    {
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = *(a2 + 248);

      v16 = *(a2 + 256);
    }

    *(a1 + 256) = v16;
  }

  *(a1 + 264) = *(a2 + 264);
  v17 = *(a2 + 272);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 272) = v17;
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);

  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 640) = *(a2 + 640);
  *(a1 + 648) = *(a2 + 648);
  v18 = *(a2 + 656);
  v19 = *(a2 + 664);
  v20 = *(a2 + 672);
  v21 = *(a2 + 680);
  v22 = *(a2 + 688);
  outlined copy of GlassContainer.Entry.ModelID(v18, v19, v20, v21, v22);
  v23 = *(a1 + 656);
  v24 = *(a1 + 664);
  v25 = *(a1 + 672);
  v26 = *(a1 + 680);
  *(a1 + 656) = v18;
  *(a1 + 664) = v19;
  *(a1 + 672) = v20;
  *(a1 + 680) = v21;
  v27 = *(a1 + 688);
  *(a1 + 688) = v22;
  outlined consume of GlassContainer.Entry.ModelID(v23, v24, v25, v26, v27);
  v28 = *(a2 + 696);
  v29 = *(a2 + 704);
  outlined copy of _Glass.Variant.Role(v28, v29);
  v30 = *(a1 + 696);
  v31 = *(a1 + 704);
  *(a1 + 696) = v28;
  *(a1 + 704) = v29;
  outlined consume of _Glass.Variant.Role(v30, v31);
  *(a1 + 712) = *(a2 + 712);
  *(a1 + 720) = *(a2 + 720);

  *(a1 + 728) = *(a2 + 728);
  *(a1 + 736) = *(a2 + 736);
  *(a1 + 744) = *(a2 + 744);
  *(a1 + 752) = *(a2 + 752);
  *(a1 + 760) = *(a2 + 760);
  *(a1 + 768) = *(a2 + 768);
  *(a1 + 776) = *(a2 + 776);

  *(a1 + 784) = *(a2 + 784);

  *(a1 + 792) = *(a2 + 792);
  *(a1 + 793) = *(a2 + 793);
  v32 = *(a2 + 800);
  v33 = *(a2 + 808);
  outlined copy of _Glass.Variant.Role(v32, v33);
  v34 = *(a1 + 800);
  v35 = *(a1 + 808);
  *(a1 + 800) = v32;
  *(a1 + 808) = v33;
  outlined consume of _Glass.Variant.Role(v34, v35);
  *(a1 + 816) = *(a2 + 816);
  *(a1 + 824) = *(a2 + 824);

  *(a1 + 832) = *(a2 + 832);
  *(a1 + 840) = *(a2 + 840);
  v36 = *(a2 + 848);
  *(a1 + 856) = *(a2 + 856);
  *(a1 + 848) = v36;
  *(a1 + 864) = *(a2 + 864);

  *(a1 + 872) = *(a2 + 872);

  v37 = (a1 + 880);
  v38 = (a2 + 880);
  v39 = *(a2 + 904);
  if (*(a1 + 904) == 1)
  {
    if (v39 == 1)
    {
      v40 = *v38;
      v41 = *(a2 + 896);
      *(a1 + 905) = *(a2 + 905);
      *v37 = v40;
      *(a1 + 896) = v41;
    }

    else
    {
      v44 = *(a2 + 880);
      v45 = *(a2 + 888);
      outlined copy of _Glass.Variant.Role(v44, v45);
      *(a1 + 880) = v44;
      *(a1 + 888) = v45;
      *(a1 + 896) = *(a2 + 896);
      *(a1 + 904) = *(a2 + 904);
      *(a1 + 912) = *(a2 + 912);
      *(a1 + 920) = *(a2 + 920);
    }
  }

  else if (v39 == 1)
  {
    outlined destroy of _Glass(a1 + 880);
    v42 = *(a2 + 905);
    v43 = *(a2 + 896);
    *v37 = *v38;
    *(a1 + 896) = v43;
    *(a1 + 905) = v42;
  }

  else
  {
    v46 = *(a2 + 880);
    v47 = *(a2 + 888);
    outlined copy of _Glass.Variant.Role(v46, v47);
    v48 = *(a1 + 880);
    v49 = *(a1 + 888);
    *(a1 + 880) = v46;
    *(a1 + 888) = v47;
    outlined consume of _Glass.Variant.Role(v48, v49);
    *(a1 + 896) = *(a2 + 896);
    *(a1 + 904) = *(a2 + 904);

    *(a1 + 912) = *(a2 + 912);
    *(a1 + 920) = *(a2 + 920);
  }

  v50 = (a1 + 928);
  v51 = (a2 + 928);
  v52 = *(a2 + 952);
  if (*(a1 + 952) == 1)
  {
    if (v52 == 1)
    {
      v53 = *v51;
      v54 = *(a2 + 944);
      *(a1 + 953) = *(a2 + 953);
      *v50 = v53;
      *(a1 + 944) = v54;
    }

    else
    {
      v57 = *(a2 + 928);
      v58 = *(a2 + 936);
      outlined copy of _Glass.Variant.Role(v57, v58);
      *(a1 + 928) = v57;
      *(a1 + 936) = v58;
      *(a1 + 944) = *(a2 + 944);
      *(a1 + 952) = *(a2 + 952);
      *(a1 + 960) = *(a2 + 960);
      *(a1 + 968) = *(a2 + 968);
    }
  }

  else if (v52 == 1)
  {
    outlined destroy of _Glass(a1 + 928);
    v55 = *(a2 + 953);
    v56 = *(a2 + 944);
    *v50 = *v51;
    *(a1 + 944) = v56;
    *(a1 + 953) = v55;
  }

  else
  {
    v59 = *(a2 + 928);
    v60 = *(a2 + 936);
    outlined copy of _Glass.Variant.Role(v59, v60);
    v61 = *(a1 + 928);
    v62 = *(a1 + 936);
    *(a1 + 928) = v59;
    *(a1 + 936) = v60;
    outlined consume of _Glass.Variant.Role(v61, v62);
    *(a1 + 944) = *(a2 + 944);
    *(a1 + 952) = *(a2 + 952);

    *(a1 + 960) = *(a2 + 960);
    *(a1 + 968) = *(a2 + 968);
  }

  v63 = *(a2 + 972);
  *(a1 + 976) = *(a2 + 976);
  *(a1 + 972) = v63;
  *(a1 + 984) = *(a2 + 984);
  *(a1 + 992) = *(a2 + 992);
  *(a1 + 1000) = *(a2 + 1000);

  *(a1 + 1008) = *(a2 + 1008);
  *(a1 + 1016) = *(a2 + 1016);

  *(a1 + 1024) = *(a2 + 1024);

  return a1;
}

uint64_t assignWithTake for GlassItemView(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 384;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  outlined consume of _Glass.Variant.Role(v5, v6);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v7;
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 177) = *(a2 + 177);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);

  *(a1 + 208) = *(a2 + 208);

  if (*(a1 + 224) == 1)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 224);
  if (v8 == 1)
  {
    outlined destroy of GlassContainer.Item.ID(a1 + 216);
LABEL_4:
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    goto LABEL_6;
  }

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = v8;

  *(a1 + 232) = *(a2 + 232);
LABEL_6:
  if (*(a1 + 248) == 1)
  {
LABEL_9:
    *(a1 + 240) = *(a2 + 240);
    goto LABEL_11;
  }

  v9 = *(a2 + 248);
  if (v9 == 1)
  {
    outlined destroy of GlassContainer.Item.ID(a1 + 240);
    goto LABEL_9;
  }

  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v9;

LABEL_11:
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = *(a2 + 280);
  v10 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v10;
  v11 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v11;
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = *v4;
  *(a1 + 392) = *(a2 + 392);
  v12 = *(a2 + 416);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = v12;
  v13 = *(a2 + 448);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = v13;
  v14 = *(a2 + 480);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = v14;
  v15 = *(a2 + 512);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = v15;
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);

  *(a1 + 568) = *(a2 + 568);
  v16 = *(a2 + 592);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = v16;
  v17 = *(a2 + 624);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 624) = v17;
  *(a1 + 640) = *(a2 + 640);
  *(a1 + 648) = *(a2 + 648);
  v18 = *(a2 + 688);
  v19 = *(a1 + 656);
  v20 = *(a1 + 664);
  v21 = *(a1 + 672);
  v22 = *(a1 + 680);
  v23 = *(a1 + 688);
  v24 = *(a2 + 672);
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 672) = v24;
  *(a1 + 688) = v18;
  outlined consume of GlassContainer.Entry.ModelID(v19, v20, v21, v22, v23);
  v25 = *(a1 + 696);
  v26 = *(a1 + 704);
  *(a1 + 696) = *(v4 + 312);
  outlined consume of _Glass.Variant.Role(v25, v26);
  *(a1 + 712) = *(a2 + 712);
  *(a1 + 720) = *(a2 + 720);

  *(a1 + 728) = *(a2 + 728);
  *(a1 + 736) = *(a2 + 736);
  *(a1 + 744) = *(a2 + 744);
  *(a1 + 752) = *(a2 + 752);
  *(a1 + 768) = *(a2 + 768);
  *(a1 + 776) = *(a2 + 776);

  *(a1 + 784) = *(a2 + 784);

  *(a1 + 792) = *(v4 + 408);
  *(a1 + 793) = *(v4 + 409);
  v27 = *(a1 + 800);
  v28 = *(a1 + 808);
  *(a1 + 800) = *(a2 + 800);
  outlined consume of _Glass.Variant.Role(v27, v28);
  *(a1 + 816) = *(a2 + 816);
  *(a1 + 824) = *(a2 + 824);

  *(a1 + 832) = *(a2 + 832);
  *(a1 + 840) = *(a2 + 840);
  *(a1 + 848) = *(a2 + 848);
  *(a1 + 856) = *(a2 + 856);
  *(a1 + 864) = *(a2 + 864);

  *(a1 + 872) = *(a2 + 872);

  if (*(a1 + 904) == 1)
  {
LABEL_14:
    v29 = *(a2 + 896);
    *(a1 + 880) = *(a2 + 880);
    *(a1 + 896) = v29;
    *(a1 + 905) = *(a2 + 905);
    goto LABEL_16;
  }

  if (*(a2 + 904) == 1)
  {
    outlined destroy of _Glass(a1 + 880);
    goto LABEL_14;
  }

  v30 = *(a1 + 880);
  v31 = *(a1 + 888);
  *(a1 + 880) = *(a2 + 880);
  outlined consume of _Glass.Variant.Role(v30, v31);
  *(a1 + 896) = *(a2 + 896);
  *(a1 + 904) = *(a2 + 904);

  *(a1 + 912) = *(a2 + 912);
  *(a1 + 920) = *(a2 + 920);
LABEL_16:
  if (*(a1 + 952) != 1)
  {
    if (*(a2 + 952) != 1)
    {
      v33 = *(a1 + 928);
      v34 = *(a1 + 936);
      *(a1 + 928) = *(a2 + 928);
      outlined consume of _Glass.Variant.Role(v33, v34);
      *(a1 + 944) = *(a2 + 944);
      *(a1 + 952) = *(a2 + 952);

      *(a1 + 960) = *(a2 + 960);
      *(a1 + 968) = *(a2 + 968);
      goto LABEL_21;
    }

    outlined destroy of _Glass(a1 + 928);
  }

  v32 = *(a2 + 944);
  *(a1 + 928) = *(a2 + 928);
  *(a1 + 944) = v32;
  *(a1 + 953) = *(a2 + 953);
LABEL_21:
  *(a1 + 972) = *(a2 + 972);
  *(a1 + 976) = *(a2 + 976);
  *(a1 + 984) = *(a2 + 984);
  *(a1 + 992) = *(a2 + 992);
  *(a1 + 1000) = *(a2 + 1000);

  *(a1 + 1008) = *(a2 + 1008);
  *(a1 + 1016) = *(a2 + 1016);

  *(a1 + 1024) = *(a2 + 1024);

  return a1;
}

uint64_t getEnumTagSinglePayload for GlassItemView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1032))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassItemView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 1016) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1032) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 1032) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type GlassTransitionStateModifier and conformance GlassTransitionStateModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, ScheduledAnimationModifier<Int>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>> and conformance <> _VariadicView.Tree<A, B>)
  {
    type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>();
    lazy protocol witness table accessor for type ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView> and conformance <> ForEach<A, B, C>, type metadata accessor for ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>, lazy protocol witness table accessor for type GlassItemView and conformance GlassItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> ForEach<A, B, C>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>(255);
    lazy protocol witness table accessor for type ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for TransitionBox<IdentityTransition>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, &type metadata for TransitionTraitKey, &protocol witness table for TransitionTraitKey, type metadata accessor for _TraitWritingModifier);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for TransitionBox<IdentityTransition>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, type metadata accessor for ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, lazy protocol witness table accessor for type ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for TransitionBox<IdentityTransition>(255, &lazy cache variable for type metadata for ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, &type metadata for PrimitiveGlassItemView, &type metadata for GlassTransitionStateModifier, type metadata accessor for ModifiedContent);
    lazy protocol witness table accessor for type GlassTransitionStateModifier and conformance GlassTransitionStateModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GlassEntryFlexInteractionModifier.InitModifier(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlassEntryFlexInteractionModifier.InitModifier and conformance GlassEntryFlexInteractionModifier.InitModifier();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GlassEffectPlatformItemModifier.GlassPlatformItemRule(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlassEffectPlatformItemModifier.GlassPlatformItemRule and conformance GlassEffectPlatformItemModifier.GlassPlatformItemRule();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type GlassEffectPlatformItemModifier.GlassPlatformItemRule and conformance GlassEffectPlatformItemModifier.GlassPlatformItemRule();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for PrimitiveGlassItemView.ItemLayoutComputer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PrimitiveGlassItemView.ItemLayoutComputer and conformance PrimitiveGlassItemView.ItemLayoutComputer();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for PrimitiveGlassItemView.ItemDisplayList(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PrimitiveGlassItemView.ItemDisplayList and conformance PrimitiveGlassItemView.ItemDisplayList();
  *(a1 + 8) = result;
  return result;
}

uint64_t _ConditionalContent.init(__storage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t _ConditionalContent.storage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for _ConditionalContent.Storage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _ConditionalContent<>.makeChildView(metadata:view:inputs:)(__int128 *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  v11 = *(a3 + 48);
  v22[2] = *(a3 + 32);
  v22[3] = v11;
  v22[4] = *(a3 + 64);
  v23 = *(a3 + 80);
  v12 = *(a3 + 16);
  v22[0] = *a3;
  v22[1] = v12;
  v14[1] = *(a4 + 16);
  v15 = a5;
  v16 = a6;
  v17 = *a1;
  v18 = v9;
  v19 = v10;
  v20 = a2;
  v21 = v22;
  return _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v8, partial apply for closure #1 in _ConditionalContent<>.makeChildView(metadata:view:inputs:), v14, a4, MEMORY[0x1E69E73E0], &type metadata for _ViewOutputs, MEMORY[0x1E69E7410], a8);
}

uint64_t partial apply for closure #1 in _ConditionalContent<>.makeChildView(metadata:view:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  v7 = *(v2 + 80);
  v8 = *(v2 + 88);
  v15 = *(v2 + 48);
  v16 = v5;
  v17 = v6;
  v9 = *(v8 + 48);
  v13[2] = *(v8 + 32);
  v13[3] = v9;
  v13[4] = *(v8 + 64);
  v14 = *(v8 + 80);
  v10 = *(v8 + 16);
  v13[0] = *v8;
  v13[1] = v10;
  v11 = type metadata accessor for _ConditionalContent();
  return ConditionalMetadata<>.makeView<A>(ptr:view:inputs:)(a1, v7, v13, v11, a2);
}

uint64_t _ConditionalContent.Container.eraseInfo(_:)(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 40) + 56))(*(a2 + 32));
  type metadata accessor for _ConditionalContent.Info();
  AGSubgraphRef.willInvalidate(isInserted:)(1);

  return AGSubgraphInvalidate();
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance _ConditionalContent<A, B>.Container<A1>@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ConditionalContent.Info();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

Swift::Void __swiftcall _ConditionalContent.FalseChild.updateValue()()
{
  v2 = v0;
  v30 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 24);
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = *(v4 - 8);
  v27 = v4;
  v28 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  v8 = type metadata accessor for _ConditionalContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for _ConditionalContent.Info();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v24 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *v1;
  v26 = v2;
  _ConditionalContent.TrueChild.info.getter(v15);
  v18 = v27;
  (*(v9 + 16))(v11, v15, v8);
  v19 = v28;
  (*(v13 + 8))(v15, v12);
  (*(v19 + 32))(v7, v11, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v24;
    v20 = v25;
    v22 = (*(v25 + 32))(v24, v7, v3);
    MEMORY[0x1EEE9AC00](v22);
    *(&v24 - 2) = v26;
    *(&v24 - 1) = swift_getWitnessTable();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v21, closure #1 in StatefulRule.value.setterpartial apply, (&v24 - 4), v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v23);
    (*(v20 + 8))(v21, v3);
  }

  else
  {
    (*(v19 + 8))(v7, v18);
  }
}

uint64_t instantiation function for generic protocol witness table for <> _ConditionalContent<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for _ConditionalContent(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(*(a3 + 24) - 8);
  if (*(v5 + 64) <= *(v4 + 64))
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = *(v5 + 64);
  }

  v7 = (*(v5 + 80) | *(v4 + 80));
  if (v7 > 7 || (v6 + 1) > 0x18 || ((*(v5 + 80) | *(v4 + 80)) & 0x100000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v7 + 16) & ~v7));

    return v3;
  }

  v11 = *(a2 + v6);
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    if (v6 <= 3)
    {
      v13 = v6;
    }

    else
    {
      v13 = 4;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = *a2;
      }

      else if (v13 == 3)
      {
        v14 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v14 = *a2;
      }

LABEL_24:
      v15 = (v14 | (v12 << (8 * v6))) + 2;
      v11 = v14 + 2;
      if (v6 < 4)
      {
        v11 = v15;
      }

      goto LABEL_26;
    }

    if (v13)
    {
      v14 = *a2;
      goto LABEL_24;
    }
  }

LABEL_26:
  if (v11 == 1)
  {
    (*(v5 + 16))(a1);
    *(v3 + v6) = 1;
  }

  else
  {
    (*(v4 + 16))(a1);
    *(v3 + v6) = 0;
  }

  return v3;
}

void *initializeBufferWithCopyOfBuffer for _ConditionalContent.Info(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  if (*(*(v4 - 8) + 64) <= *(v5 + 64))
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = *(*(v4 - 8) + 64);
  }

  v7 = *(*(v4 - 8) + 80) | *(v5 + 80);
  if ((v6 & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18 || (v7 & 0x1000F8) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + (((v7 & 0xF8 | 7u) + 16) & ~(v7 & 0xF8 | 7u)));

    return v3;
  }

  v10 = v6 + 1;
  v11 = *(a2 + v6);
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    if (v6 <= 3)
    {
      v13 = v6;
    }

    else
    {
      v13 = 4;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = *a2;
      }

      else if (v13 == 3)
      {
        v14 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v14 = *a2;
      }

LABEL_21:
      v15 = (v14 | (v12 << (8 * v6))) + 2;
      v11 = v14 + 2;
      if (v6 < 4)
      {
        v11 = v15;
      }

      goto LABEL_23;
    }

    if (v13)
    {
      v14 = *a2;
      goto LABEL_21;
    }
  }

LABEL_23:
  v16 = v11 == 1;
  if (v11 == 1)
  {
    v5 = *(v4 - 8);
  }

  (*(v5 + 16))(a1);
  *(v3 + v6) = v16;
  v18 = *((a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  *((v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) = v18;
  v19 = v18;
  return v3;
}

uint64_t initializeWithTake for _ConditionalContent.Info(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
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

  (*(v6 + 32))(a1, a2, v14);
  *(a1 + v7) = v13;
  *((v7 + 8 + a1) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v7 + 8] & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

unsigned __int8 *assignWithTake for _ConditionalContent.Info(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  if (a1 != a2)
  {
    v8 = *(a3 + 24);
    v9 = *(v8 - 8);
    if (*(v9 + 64) <= *(v7 + 64))
    {
      v10 = *(v7 + 64);
    }

    else
    {
      v10 = *(v9 + 64);
    }

    v11 = a1[v10];
    v12 = v11 - 2;
    if (v11 >= 2)
    {
      if (v10 <= 3)
      {
        v13 = v10;
      }

      else
      {
        v13 = 4;
      }

      if (v13 <= 1)
      {
        if (!v13)
        {
          goto LABEL_19;
        }

        v14 = *a1;
      }

      else if (v13 == 2)
      {
        v14 = *a1;
      }

      else if (v13 == 3)
      {
        v14 = *a1 | (a1[2] << 16);
      }

      else
      {
        v14 = *a1;
      }

      v15 = (v14 | (v12 << (8 * v10))) + 2;
      v11 = v14 + 2;
      if (v10 < 4)
      {
        v11 = v15;
      }
    }

LABEL_19:
    if (v11 == 1)
    {
      v16 = *(*(a3 + 24) - 8);
    }

    else
    {
      v16 = *(*(a3 + 16) - 8);
    }

    if (v11 == 1)
    {
      v17 = *(a3 + 24);
    }

    else
    {
      v17 = *(a3 + 16);
    }

    (*(v16 + 8))(a1, v17);
    v18 = *(a2 + v10);
    v19 = v18 - 2;
    if (v18 < 2)
    {
      v22 = v7;
    }

    else
    {
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      if (v20 > 1)
      {
        if (v20 == 2)
        {
          v21 = *a2;
        }

        else if (v20 == 3)
        {
          v21 = *a2 | (*(a2 + 2) << 16);
        }

        else
        {
          v21 = *a2;
        }

        v22 = v7;
LABEL_39:
        v23 = (v21 | (v19 << (8 * v10))) + 2;
        v18 = v21 + 2;
        if (v10 < 4)
        {
          v18 = v23;
        }

        goto LABEL_41;
      }

      v22 = v7;
      if (v20)
      {
        v21 = *a2;
        goto LABEL_39;
      }
    }

LABEL_41:
    v24 = v18 == 1;
    if (v18 == 1)
    {
      v25 = v9;
    }

    else
    {
      v25 = v22;
    }

    if (v18 == 1)
    {
      v26 = v8;
    }

    else
    {
      v26 = v6;
    }

    (*(v25 + 32))(a1, a2, v26);
    a1[v10] = v24;
  }

  v27 = *(v7 + 64);
  v28 = *(*(a3 + 24) - 8);
  if (*(v28 + 64) > v27)
  {
    v27 = *(v28 + 64);
  }

  v29 = v27 + 8;
  v30 = (&a1[v29] & 0xFFFFFFFFFFFFFFF8);
  v31 = *v30;
  *v30 = *((a2 + v29) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for _ConditionalContent.Container(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + 7;
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((v6 + ((v5 + 4) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v10 = (a1 + v5 + 4) & ~v5;
    v11 = (a2 + v5 + 4) & ~v5;
    (*(v4 + 16))(v10, v11);
    v12 = *((v6 + v11) & 0xFFFFFFFFFFFFFFF8);
    *((v6 + v10) & 0xFFFFFFFFFFFFFFF8) = v12;
    v13 = v12;
  }

  return v3;
}

_DWORD *assignWithCopy for _ConditionalContent.Container(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 32) - 8);
  v5 = v4 + 24;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 4) & ~v6;
  v8 = (a2 + v6 + 4) & ~v6;
  (*(v4 + 24))(v7, v8);
  v9 = *(v5 + 40) + 7;
  v10 = ((v9 + v7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *((v9 + v8) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v10;
  *v10 = v11;
  v13 = v11;

  return a1;
}

_DWORD *initializeWithTake for _ConditionalContent.Container(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 32) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 4) & ~v6;
  v8 = (a2 + v6 + 4) & ~v6;
  (*(v4 + 32))(v7, v8);
  *((*(v5 + 32) + 7 + v7) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + v8) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *assignWithTake for _ConditionalContent.Container(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 32) - 8);
  v5 = v4 + 40;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 4) & ~v6;
  v8 = (a2 + v6 + 4) & ~v6;
  (*(v4 + 40))(v7, v8);
  v9 = *(v5 + 24) + 7;
  v10 = ((v9 + v7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  *v10 = *((v9 + v8) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for _ConditionalContent.Container(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
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

  v8 = *(*(*(a3 + 32) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 4) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 4) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *storeEnumTagSinglePayload for _ConditionalContent.Container(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 32) - 8);
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
  v9 = *(*(*(a4 + 32) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 4) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 4) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
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

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
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
      result = (&result[v8 + 4] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = a2 - 1;
        }

        *v20 = v21;
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 4) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 4) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 4) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

id AllowsHitTestingResponder.__allocating_init(inputs:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 216) = 1;
  v3 = *(a1 + 48);
  *(v2 + 120) = *(a1 + 32);
  *(v2 + 136) = v3;
  *(v2 + 152) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v2 + 88) = *a1;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 168) = *(a1 + 80);
  *(v2 + 104) = v4;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v6 = MEMORY[0x1E69E7CC0];
    *(v2 + 176) = result;
    *(v2 + 40) = v6;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = v6;
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v7 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v8 = *(v7 + 208);

    swift_beginAccess();
    *(v2 + 24) = v8;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}