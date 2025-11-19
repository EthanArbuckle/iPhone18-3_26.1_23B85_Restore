char *initializeWithTake for ArchivableScrapedItem(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a3 + 20);
  v8 = type metadata accessor for ArchivableScrapedItem.Content(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(&a1[v7], &a2[v7], *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = type metadata accessor for AttributedString();
    (*(*(v9 - 8) + 32))(&a1[v7], &a2[v7], v9);
    swift_storeEnumTagMultiPayload();
  }

  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

char *assignWithTake for ArchivableScrapedItem(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  if (a1 != a2)
  {
    v7 = *(a3 + 20);
    outlined destroy of ArchivableScrapedItem.Content(&a1[v7], type metadata accessor for ArchivableScrapedItem.Content);
    v8 = type metadata accessor for ArchivableScrapedItem.Content(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(&a1[v7], &a2[v7], *(*(v8 - 8) + 64));
    }

    else
    {
      v9 = type metadata accessor for AttributedString();
      (*(*(v9 - 8) + 32))(&a1[v7], &a2[v7], v9);
      swift_storeEnumTagMultiPayload();
    }
  }

  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

uint64_t type metadata completion function for ArchivableScrapedItem()
{
  result = type metadata accessor for ArchivableScrapedItem.Content(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ArchivableScrapedItem.Content(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;

    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for AttributedString();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(v6 + 64);

  return memcpy(a1, a2, v12);
}

uint64_t destroy for ArchivableScrapedItem.Content(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 2 || result == 1)
  {
  }

  else if (!result)
  {
    v3 = type metadata accessor for AttributedString();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  return result;
}

void *initializeWithCopy for ArchivableScrapedItem.Content(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v8 = a2[1];
    *a1 = *a2;
    a1[1] = v8;

    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *assignWithCopy for ArchivableScrapedItem.Content(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of ArchivableScrapedItem.Content(a1, type metadata accessor for ArchivableScrapedItem.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    a1[1] = a2[1];

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *initializeWithTake for ArchivableScrapedItem.Content(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for AttributedString();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithTake for ArchivableScrapedItem.Content(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of ArchivableScrapedItem.Content(a1, type metadata accessor for ArchivableScrapedItem.Content);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for AttributedString();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t type metadata completion function for ArchivableScrapedItem.Content()
{
  result = type metadata accessor for AttributedString();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrapedButtonProperties and conformance ScrapedButtonProperties()
{
  result = lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties;
  if (!lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties;
  if (!lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties;
  if (!lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties;
  if (!lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties;
  if (!lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedButtonProperties and conformance ScrapedButtonProperties);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties()
{
  result = lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties;
  if (!lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties;
  if (!lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties;
  if (!lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties;
  if (!lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties;
  if (!lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedAccessibilityProperties and conformance ScrapedAccessibilityProperties);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrapedImageProperties and conformance ScrapedImageProperties()
{
  result = lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties;
  if (!lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties;
  if (!lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties;
  if (!lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties;
  if (!lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties;
  if (!lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedImageProperties and conformance ScrapedImageProperties);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ScrapedTextProperties and conformance ScrapedTextProperties(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined assign with take of ArchivableScrapedItem.Content(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArchivableScrapedItem.Content(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t specialized static ArchivableScrapedItem.Content.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for ScrapedTextProperties(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArchivableScrapedItem.Content(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v33 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v33 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  type metadata accessor for (ArchivableScrapedItem.Content, ArchivableScrapedItem.Content)();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &v20[*(v21 + 56)];
  outlined init with copy of ArchivableScrapedItem.Content(a1, v20, type metadata accessor for ArchivableScrapedItem.Content);
  outlined init with copy of ArchivableScrapedItem.Content(v34, v22, type metadata accessor for ArchivableScrapedItem.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      outlined init with copy of ArchivableScrapedItem.Content(v20, v17, type metadata accessor for ArchivableScrapedItem.Content);
      if (!swift_getEnumCaseMultiPayload())
      {
        outlined init with take of ScrapedTextProperties(v22, v5, type metadata accessor for ScrapedTextProperties);
        v24 = static AttributedString.== infix(_:_:)();
        outlined destroy of ArchivableScrapedItem.Content(v5, type metadata accessor for ScrapedTextProperties);
        outlined destroy of ArchivableScrapedItem.Content(v17, type metadata accessor for ScrapedTextProperties);
        v25 = type metadata accessor for ArchivableScrapedItem.Content;
        goto LABEL_30;
      }

      outlined destroy of ArchivableScrapedItem.Content(v17, type metadata accessor for ScrapedTextProperties);
      goto LABEL_26;
    }

    outlined init with copy of ArchivableScrapedItem.Content(v20, v14, type metadata accessor for ArchivableScrapedItem.Content);
    v27 = *v14;
    v26 = v14[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = *(v22 + 1);
      if (v26)
      {
LABEL_11:
        if (v28)
        {
          if (v27 == *v22 && v26 == v28)
          {

            v24 = 1;
            v25 = type metadata accessor for ArchivableScrapedItem.Content;
            goto LABEL_30;
          }

          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v25 = type metadata accessor for ArchivableScrapedItem.Content;
          if (v30)
          {
            goto LABEL_27;
          }

LABEL_24:
          v24 = 0;
          v25 = type metadata accessor for ArchivableScrapedItem.Content;
          goto LABEL_30;
        }

LABEL_23:

        goto LABEL_24;
      }

LABEL_22:
      v25 = type metadata accessor for ArchivableScrapedItem.Content;
      if (!v28)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }

LABEL_25:

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 2)
  {
    outlined init with copy of ArchivableScrapedItem.Content(v20, v11, type metadata accessor for ArchivableScrapedItem.Content);
    v27 = *v11;
    v26 = v11[1];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v28 = *(v22 + 1);
      if (v26)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v31 = swift_getEnumCaseMultiPayload();
    v25 = type metadata accessor for ArchivableScrapedItem.Content;
    if (v31 != 4)
    {
      goto LABEL_26;
    }

LABEL_27:
    v24 = 1;
    goto LABEL_30;
  }

  outlined init with copy of ArchivableScrapedItem.Content(v20, v8, type metadata accessor for ArchivableScrapedItem.Content);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_26:
    v24 = 0;
    v25 = type metadata accessor for (ArchivableScrapedItem.Content, ArchivableScrapedItem.Content);
    goto LABEL_30;
  }

  v24 = *v8 == *v22;
  v25 = type metadata accessor for ArchivableScrapedItem.Content;
LABEL_30:
  outlined destroy of ArchivableScrapedItem.Content(v20, v25);
  return v24 & 1;
}

void type metadata accessor for (ArchivableScrapedItem.Content, ArchivableScrapedItem.Content)()
{
  if (!lazy cache variable for type metadata for (ArchivableScrapedItem.Content, ArchivableScrapedItem.Content))
  {
    type metadata accessor for ArchivableScrapedItem.Content(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ArchivableScrapedItem.Content, ArchivableScrapedItem.Content));
    }
  }
}

unint64_t lazy protocol witness table accessor for type ScrapedImageProperties.Tag and conformance ScrapedImageProperties.Tag()
{
  result = lazy protocol witness table cache variable for type ScrapedImageProperties.Tag and conformance ScrapedImageProperties.Tag;
  if (!lazy protocol witness table cache variable for type ScrapedImageProperties.Tag and conformance ScrapedImageProperties.Tag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedImageProperties.Tag and conformance ScrapedImageProperties.Tag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedImageProperties.Tag and conformance ScrapedImageProperties.Tag;
  if (!lazy protocol witness table cache variable for type ScrapedImageProperties.Tag and conformance ScrapedImageProperties.Tag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedImageProperties.Tag and conformance ScrapedImageProperties.Tag);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrapedAccessibilityProperties.Tag and conformance ScrapedAccessibilityProperties.Tag()
{
  result = lazy protocol witness table cache variable for type ScrapedAccessibilityProperties.Tag and conformance ScrapedAccessibilityProperties.Tag;
  if (!lazy protocol witness table cache variable for type ScrapedAccessibilityProperties.Tag and conformance ScrapedAccessibilityProperties.Tag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedAccessibilityProperties.Tag and conformance ScrapedAccessibilityProperties.Tag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapedAccessibilityProperties.Tag and conformance ScrapedAccessibilityProperties.Tag;
  if (!lazy protocol witness table cache variable for type ScrapedAccessibilityProperties.Tag and conformance ScrapedAccessibilityProperties.Tag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapedAccessibilityProperties.Tag and conformance ScrapedAccessibilityProperties.Tag);
  }

  return result;
}

unint64_t specialized ScrapedImageProperties.init(from:)(void *a1)
{
  v3 = a1[1];
  if (v3 < a1[2])
  {
    v4 = 0;
    while (1)
    {
      v5 = a1[3];
      if (v5)
      {
        v6 = a1[4];
        if (v3 < v6)
        {
          goto LABEL_9;
        }

        if (v6 < v3)
        {
          goto LABEL_18;
        }

        a1[3] = 0;
      }

      v5 = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_17;
      }

      if (v5 < 8)
      {
LABEL_18:

        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        return v4;
      }

LABEL_9:
      if ((v5 & 0xFFFFFFFFFFFFFFF8) == 8)
      {
        v4 = v5;

        v7 = ProtobufDecoder.stringField(_:)();
        if (v1)
        {
          return v4;
        }

        v4 = v7;
      }

      else
      {
        ProtobufDecoder.skipField(_:)();
        if (v1)
        {
LABEL_17:

          return v4;
        }
      }

      v3 = a1[1];
      if (v3 >= a1[2])
      {
        goto LABEL_16;
      }
    }
  }

  v4 = 0;
LABEL_16:
  a1[3] = 0;
  return v4;
}

uint64_t outlined init with take of ScrapedTextProperties(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ArchivableScrapedItem.Content(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _ContiguousArrayStorage<IntelligenceElement>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of ArchivableScrapedItem.Content(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t EnvironmentValues.selectionPopsSubsequentColumn.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_4(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_4(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t key path getter for EnvironmentValues.selectionPopsSubsequentColumn : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_4(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_4(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.selectionPopsSubsequentColumn : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_4(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t specialized implicit closure #1 in _GraphInputs.selectionPopsSubsequentColumn.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_4(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_4(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_selectionPopsSubsequentColumn>);

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

id CollectionViewListScrollable.coordinator.getter()
{
  type metadata accessor for UICollectionViewListCoordinator();
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    return 0;
  }

  v1 = *WeakValue;
  v2 = *WeakValue;
  return v1;
}

uint64_t CollectionViewListScrollable.base.getter@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  AGGraphClearUpdate();
  closure #1 in CollectionViewListScrollable.base.getter(v2, a1[2], a1[3], a1[4], a1[5], a2);

  return AGGraphSetUpdate();
}

uint64_t closure #1 in CollectionViewListScrollable.base.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v12 = type metadata accessor for ListScrollable.DataSourceProvider();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - v13;
  v26[0] = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  type metadata accessor for CollectionViewListScrollable();
  v15 = CollectionViewListScrollable.coordinator.getter();
  if (v15)
  {
    v16 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x88);
    v17 = v15;
    swift_beginAccess();
    v18 = swift_checkMetadataState();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v14, &v17[v16], v18);

    (*(v19 + 56))(v14, 0, 1, v18);
  }

  else
  {
    v20 = swift_checkMetadataState();
    (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  }

  v21 = a1[1];
  swift_storeEnumTagMultiPayload();
  v22 = a1[2];
  v23 = a1[3];
  v24 = a1[4];
  swift_checkMetadataState();
  ListScrollable.init(state:dataSourceProvider:scrollView:children:lastUpdateSeed:)(v21, v14, v22, v23, v24, a6);
}

uint64_t CollectionViewListScrollable.scroll<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v10);
  v12 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v13 = swift_allocObject();
  v14 = *(a2 + 32);
  *(v13 + 16) = *(a2 + 16);
  *(v13 + 32) = a3;
  *(v13 + 40) = v14;
  *(v13 + 56) = a4;
  (*(v8 + 32))(v13 + v12, v11, a3);
  LOBYTE(a4) = CollectionViewListScrollable.apply<A>(id:_:)(a1, partial apply for closure #1 in CollectionViewListScrollable.scroll<A>(to:), v13, a2, a3, a4);

  return a4 & 1;
}

BOOL closure #1 in CollectionViewListScrollable.scroll<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v11 = type metadata accessor for ListScrollable();
  return ListScrollable.scroll<A>(to:)(a2, v11, a5, a8);
}

uint64_t CollectionViewListScrollable.apply<A>(id:_:)(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v27 = a6;
  v28 = a2;
  v29 = a3;
  v30 = a5;
  v26 = a1;
  v8 = a4[2];
  v9 = a4[4];
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v10 = type metadata accessor for ListScrollable();
  v24 = *(v10 - 8);
  v25 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  AGGraphClearUpdate();
  v13 = a4[3];
  *&v14 = v8;
  *(&v14 + 1) = v13;
  v15 = a4[5];
  *&v16 = v9;
  *(&v16 + 1) = v15;
  v31[0] = v14;
  v31[1] = v16;
  type metadata accessor for CollectionViewListScrollable();
  v17 = CollectionViewListScrollable.coordinator.getter();
  AGGraphSetUpdate();
  if (v17)
  {
    v18 = v27;
    if (UICollectionViewListCoordinatorBase.hasPendingID<A>(_:)(v26, v30, v27))
    {
      v32 = 17;
      v19 = swift_allocObject();
      *(v19 + 16) = v8;
      *(v19 + 24) = v13;
      *(v19 + 32) = v30;
      *(v19 + 40) = v9;
      *(v19 + 48) = v15;
      *(v19 + 56) = v18;
      *(v19 + 64) = v28;
      *(v19 + 72) = v29;
      v20 = *(v6 + 16);
      *(v19 + 80) = *v6;
      *(v19 + 96) = v20;
      *(v19 + 112) = *(v6 + 32);

      (*(*(a4 - 1) + 16))(v31, v6, a4);
      static Update.enqueueAction(reason:_:)();

      v21 = 1;
    }

    else
    {
      CollectionViewListScrollable.base.getter(a4, v12);
      v21 = v28(v12);

      (*(v24 + 8))(v12, v25);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t closure #2 in CollectionViewListScrollable.apply<A>(id:_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v13 = type metadata accessor for ListScrollable();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v19 - v15;
  v19[0] = a4;
  v19[1] = a5;
  v19[2] = a7;
  v19[3] = a8;
  v17 = type metadata accessor for CollectionViewListScrollable();
  CollectionViewListScrollable.base.getter(v17, v16);
  a1(v16);
  return (*(v14 + 8))(v16, v13);
}

uint64_t CollectionViewListScrollable.runScrollTest(_:scrollMode:)(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v6 = type metadata accessor for ListScrollable();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - v8;
  v11 = *a2;
  v10 = a2[1];
  CollectionViewListScrollable.base.getter(a3, v13 - v8);
  v13[0] = v11;
  v13[1] = v10;
  LOBYTE(a1) = ListScrollable.runScrollTest(_:scrollMode:)(a1, v13);
  (*(v7 + 8))(v9, v6);
  return a1 & 1;
}

uint64_t CollectionViewListScrollable.runScrollTest(_:scrollMode:onComplete:)(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v10 = type metadata accessor for ListScrollable();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v17 - v12;
  v15 = *a2;
  v14 = a2[1];
  CollectionViewListScrollable.base.getter(a5, v17 - v12);
  v17[0] = v15;
  v17[1] = v14;
  LOBYTE(a4) = ListScrollable.runScrollTest(_:scrollMode:onComplete:)(a1, v17, a3, a4);
  (*(v11 + 8))(v13, v10);
  return a4 & 1;
}

uint64_t CollectionViewListScrollable.runScrollSubTest(_:subTestName:scrollMode:onComplete:)(uint64_t a1, uint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v19 = a4;
  v20 = a5;
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v10 = type metadata accessor for ListScrollable();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = *a3;
  v17 = a3[1];
  CollectionViewListScrollable.base.getter(a6, &v19 - v12);
  v22[0] = v14;
  v22[1] = v15;
  v21[0] = v16;
  v21[1] = v17;
  LOBYTE(v14) = ListScrollable.runScrollSubTest(_:subTestName:scrollMode:onComplete:)(a1, v22, v21, v19, v20);
  (*(v11 + 8))(v13, v10);
  return v14 & 1;
}

uint64_t CollectionViewListScrollable.mapFirstChild<A, B>(ofType:body:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v17 = a5;
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v11 = type metadata accessor for ListScrollable();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - v13;
  CollectionViewListScrollable.base.getter(a3, &v16 - v13);
  ListScrollable.mapFirstChild<A, B>(ofType:body:)(a1, a2, v11, a4, v17, a6);
  return (*(v12 + 8))(v14, v11);
}

uint64_t CollectionViewListScrollable.allowsContentOffsetAdjustments.getter(uint64_t *a1)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v2 = type metadata accessor for ListScrollable();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  CollectionViewListScrollable.base.getter(a1, &v7 - v4);
  (*(v3 + 8))(v5, v2);
  return 1;
}

char *CollectionViewListScrollable.visibleCollectionViewIDs.getter(uint64_t *a1)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v2 = type metadata accessor for ListScrollable();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  CollectionViewListScrollable.base.getter(a1, &v8 - v4);
  v6 = ListScrollable.visibleCollectionViewIDs.getter();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t CollectionViewListScrollable.subviewClosestTo(rect:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v4 = type metadata accessor for ListScrollable();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  CollectionViewListScrollable.base.getter(a1, &v10 - v6);
  v8 = ListScrollable.subviewClosestTo(rect:)(a2);
  return (*(v5 + 8))(v7, v4, v8);
}

uint64_t CollectionViewListScrollable.nextVisibleCollectionViewID(towards:from:border:ignoring:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v8 = type metadata accessor for ListScrollable();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - v10;
  v12 = a1[1];
  LODWORD(a2) = *a2;
  CollectionViewListScrollable.base.getter(a3, v15 - v10);
  v16 = *a1;
  v17 = v12;
  v15[3] = a2;
  v13 = protocol witness for static Rule.initialValue.getter in conformance ToString<A>(a4);
  return (*(v9 + 8))(v11, v8, v13);
}

uint64_t static CollectionViewListScrollable.hasMultipleViewsInAxis(_:)(char a1)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();

  return AccessibilitySidebarListModifier.init(isInExpandedSplitView:)(a1 & 1);
}

uint64_t CollectionViewListScrollable.firstCollectionViewIndex(of:)(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v4 = type metadata accessor for ListScrollable();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = a1[1];
  CollectionViewListScrollable.base.getter(a2, v11 - v6);
  v11[0] = *a1;
  v11[1] = v8;
  v9 = ListScrollable.firstCollectionViewIndex(of:)(v11, v4);
  (*(v5 + 8))(v7, v4);
  return v9;
}

uint64_t CollectionViewListScrollable.applyCollectionViewIDs(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v8 = type metadata accessor for ListScrollable();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  CollectionViewListScrollable.base.getter(a4, &v13 - v10);
  LOBYTE(a3) = ListScrollable.applyCollectionViewIDs(from:to:)(a1, a2, a3, v8);
  (*(v9 + 8))(v11, v8);
  return a3 & 1;
}

uint64_t CollectionViewListScrollable.collectionViewID(for:)@<X0>(uint64_t *a1@<X1>, _OWORD *a2@<X8>)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v4 = type metadata accessor for ListScrollable();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  CollectionViewListScrollable.base.getter(a1, &v10 - v6);
  v8 = protocol witness for static Rule.initialValue.getter in conformance ToString<A>(a2);
  return (*(v5 + 8))(v7, v4, v8);
}

uint64_t CollectionViewListScrollable.scroll(toCollectionViewID:anchor:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v10 = type metadata accessor for ListScrollable();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  v14 = a1[1];
  CollectionViewListScrollable.base.getter(a5, v16 - v12);
  v16[0] = *a1;
  v16[1] = v14;
  LOBYTE(a3) = ListScrollable.scroll(toCollectionViewID:anchor:)(v16, a2, a3, a4 & 1, v10);
  (*(v11 + 8))(v13, v10);
  return a3 & 1;
}

void static CollectionViewListScrollable.accessibilityRole.getter(_BYTE *a1@<X8>)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();

  protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.PrefersFullSizeDragPreviewsKey(a1);
}

uint64_t ScrollViewPreferenceProvider.value.getter()
{
  type metadata accessor for UIScrollView?();
  v0 = *AGGraphGetValue();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for [ScrollGeometryState](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ContentScrollViewBox>, &type metadata for ContentScrollViewBox, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18CD63400;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v1 + 76) = 0;
  swift_unknownObjectWeakAssign();
  *(v1 + 48) = 2;
  v2 = v0;
  *(v1 + 52) = AGCreateWeakAttribute();
  *(v1 + 60) = AGCreateWeakAttribute();
  *(v1 + 68) = AGCreateWeakAttribute();

  return v1;
}

uint64_t protocol witness for Rule.value.getter in conformance ScrollViewPreferenceProvider@<X0>(uint64_t *a1@<X8>)
{
  result = ScrollViewPreferenceProvider.value.getter();
  *a1 = result;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance ScrollGeometryProvider@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1;
  return result;
}

__n128 protocol witness for Rule.value.getter in conformance ScrollGeometryProvider@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BridgedListState(0);
  v3 = AGGraphGetValue() + *(v2 + 24);
  if (*(v3 + 112))
  {

    static ScrollGeometry.zero.getter();
  }

  else
  {
    v5 = *(v3 + 80);
    *(a1 + 64) = *(v3 + 64);
    *(a1 + 80) = v5;
    *(a1 + 96) = *(v3 + 96);
    v6 = *(v3 + 16);
    *a1 = *v3;
    *(a1 + 16) = v6;
    result = *(v3 + 48);
    *(a1 + 32) = *(v3 + 32);
    *(a1 + 48) = result;
  }

  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance MakeRepresentable<A, B>@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 28) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void static ListRepresentable.dismantleViewProvider(_:coordinator:)(void *a1)
{
  v2 = [a1 refreshControl];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for UIKitRefreshControl();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      if (*&v4[OBJC_IVAR____TtC7SwiftUI19UIKitRefreshControl_currentTask])
      {
        v5 = v4;

        MEMORY[0x18D00D010](v6, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);

        v4 = v5;
      }

      [v4 endRefreshing];
    }
  }

  [a1 setRefreshControl_];
  v7 = [a1 contextMenuInteraction];
  [v7 dismissMenu];
}

void ListRepresentable._identifiedViewTree(in:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  [a1 layoutIfNeeded];
  v4 = [a1 visibleCells];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_19:

    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  v28 = a2;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7D40];
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x18D00E9C0](v7, v5);
    }

    else
    {
      v10 = *(v5 + 8 * v7 + 32);
    }

    v11 = v10;
    type metadata accessor for AnyListCollectionViewCell();
    v12 = swift_dynamicCastClassUnconditional();
    (*((*v9 & *v12) + 0x88))(v30);
    outlined init with copy of _IdentifiedViewTree(v30, v29);
    if (v29[168] == 2 && (v13 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(*&v29[40], *&v29[104]), vorrq_s8(*&v29[72], *&v29[136])), vorrq_s8(vorrq_s8(*&v29[56], *&v29[120]), vorrq_s8(*&v29[88], *&v29[152]))), vorrq_s8(*&v29[8], *&v29[24])), !(*&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)) | *v29)))
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
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      }

      v15 = *(v8 + 2);
      v14 = *(v8 + 3);
      if (v15 >= v14 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v8);
      }

      outlined destroy of _IdentifiedViewTree(v30);
      *(v8 + 2) = v15 + 1;
      v16 = &v8[176 * v15];
      v17 = *&v29[32];
      v18 = *&v29[16];
      *(v16 + 2) = *v29;
      *(v16 + 3) = v18;
      *(v16 + 4) = v17;
      v19 = *&v29[96];
      v20 = *&v29[64];
      v21 = *&v29[48];
      *(v16 + 7) = *&v29[80];
      *(v16 + 8) = v19;
      *(v16 + 5) = v21;
      *(v16 + 6) = v20;
      v22 = *&v29[144];
      v23 = *&v29[128];
      v24 = *&v29[112];
      *(v16 + 185) = *&v29[153];
      *(v16 + 10) = v23;
      *(v16 + 11) = v22;
      *(v16 + 9) = v24;
    }

    ++v7;
  }

  while (v6 != v7);

  a2 = v28;
LABEL_20:
  a2[3] = &type metadata for _IdentifiedViewTree;
  v25 = swift_allocObject();
  *a2 = v25;
  if (*(v8 + 2))
  {
    v26 = 1;
  }

  else
  {
    v27 = v25;

    v25 = v27;
    v8 = 0;
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

  *(v25 + 16) = v8;
  *(v25 + 184) = v26;
}

uint64_t specialized CollectionViewListScrollable.forEachVisibleSubview(_:)(uint64_t *a1)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v2 = type metadata accessor for ListScrollable();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  CollectionViewListScrollable.base.getter(a1, &v7 - v4);
  return (*(v3 + 8))(v5, v2);
}

uint64_t specialized CollectionViewListScrollable.setContentTarget(_:)(uint64_t *a1)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v2 = type metadata accessor for ListScrollable();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  CollectionViewListScrollable.base.getter(a1, &v7 - v4);
  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t specialized CollectionViewListScrollable.adjustContentOffset(by:reason:)(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v3 = type metadata accessor for ListScrollable();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  CollectionViewListScrollable.base.getter(a2, &v8 - v5);
  (*(v4 + 8))(v6, v3);
  return 0;
}

uint64_t getEnumTagSinglePayload for MakeRepresentable(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 20))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MakeRepresentable(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithTake for ListRepresentable(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 28) = *(a2 + 28);
  return a1;
}

uint64_t getEnumTagSinglePayload for ListRepresentable(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
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

uint64_t storeEnumTagSinglePayload for ListRepresentable(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for CollectionViewListScrollable(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for CollectionViewListScrollable(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for CollectionViewListScrollable(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<UserInteractionActivityKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<UserInteractionActivityKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<UserInteractionActivityKey> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<UserInteractionActivityKey>, &type metadata for UserInteractionActivityKey, &protocol witness table for UserInteractionActivityKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<UserInteractionActivityKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CollectionViewListUtilities.CoordinatorKind and conformance CollectionViewListUtilities.CoordinatorKind()
{
  result = lazy protocol witness table cache variable for type CollectionViewListUtilities.CoordinatorKind and conformance CollectionViewListUtilities.CoordinatorKind;
  if (!lazy protocol witness table cache variable for type CollectionViewListUtilities.CoordinatorKind and conformance CollectionViewListUtilities.CoordinatorKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollectionViewListUtilities.CoordinatorKind and conformance CollectionViewListUtilities.CoordinatorKind);
  }

  return result;
}

uint64_t static AnimatedValuePlaybackConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v5;
  v8 = v3;
  v9 = v4;
  v10 = v6;
  outlined copy of AnimatedValuePlaybackConfiguration.Mode(v11, v2, v5);
  outlined copy of AnimatedValuePlaybackConfiguration.Mode(v3, v4, v6);
  LOBYTE(v3) = specialized static AnimatedValuePlaybackConfiguration.Mode.== infix(_:_:)(&v11, &v8);
  outlined consume of AnimatedValuePlaybackConfiguration.Mode(v8, v9, v10);
  outlined consume of AnimatedValuePlaybackConfiguration.Mode(v11, v12, v13);
  return v3 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnimatedValuePlaybackConfiguration(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v5;
  v8 = v3;
  v9 = v4;
  v10 = v6;
  outlined copy of AnimatedValuePlaybackConfiguration.Mode(v11, v2, v5);
  outlined copy of AnimatedValuePlaybackConfiguration.Mode(v3, v4, v6);
  LOBYTE(v3) = specialized static AnimatedValuePlaybackConfiguration.Mode.== infix(_:_:)(&v11, &v8);
  outlined consume of AnimatedValuePlaybackConfiguration.Mode(v8, v9, v10);
  outlined consume of AnimatedValuePlaybackConfiguration.Mode(v11, v12, v13);
  return v3 & 1;
}

void static AnimatedValuePlaybackConfiguration.scrubbing(time:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void static AnimatedValuePlaybackConfiguration.scrubbing(progress:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 64;
}

uint64_t static AnimatedValuePlaybackConfiguration.onChange<A>(of:interruptionBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v6 = *v5;
  v7 = *(v5 + 8);
  (*(v8 + 16))(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v3);
  result = AnyEquatable.init<A>(_:)();
  *a2 = v11[1];
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 | 0x80;
  return result;
}

uint64_t static AnimatedValuePlaybackConfiguration.repeating(autoreverses:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = -64;
  return result;
}

void static AnimatedValuePlaybackConfiguration.repeating.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -64;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnimatedValuePlaybackConfiguration.InterruptionBehavior.Behavior(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    return *a1 == *a2;
  }

  return result;
}

uint64_t static AnimatedValuePlaybackConfiguration.InterruptionBehavior.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnimatedValuePlaybackConfiguration.InterruptionBehavior(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t specialized static AnimatedValuePlaybackConfiguration.Mode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = v4 >> 6;
  if (v4 >> 6 > 1)
  {
    if (v8 != 2)
    {
      if (v7 > 0xBF)
      {
        outlined consume of AnimatedValuePlaybackConfiguration.Mode(*a1, v2, v4);
        outlined consume of AnimatedValuePlaybackConfiguration.Mode(v6, v5, v7);
        v10 = v6 ^ v3 ^ 1;
        return v10 & 1;
      }

      goto LABEL_16;
    }

    if ((v7 & 0xC0) != 0x80)
    {

      goto LABEL_16;
    }

    outlined copy of AnimatedValuePlaybackConfiguration.Mode(v6, v5, v7);
    outlined copy of AnimatedValuePlaybackConfiguration.Mode(v3, v2, v4);
    outlined copy of AnimatedValuePlaybackConfiguration.Mode(v6, v5, v7);
    outlined copy of AnimatedValuePlaybackConfiguration.Mode(v3, v2, v4);
    v9 = static AnyEquatable.== infix(_:_:)();
    outlined consume of AnimatedValuePlaybackConfiguration.Mode(v3, v2, v4);
    outlined consume of AnimatedValuePlaybackConfiguration.Mode(v6, v5, v7);
    outlined consume of AnimatedValuePlaybackConfiguration.Mode(v6, v5, v7);
    outlined consume of AnimatedValuePlaybackConfiguration.Mode(v3, v2, v4);
    if (v9)
    {
      if ((v4 & 1) == 0)
      {
        if ((v7 & 1) != 0 || *&v2 != *&v5)
        {
          goto LABEL_17;
        }

LABEL_21:
        v10 = 1;
        return v10 & 1;
      }

      if (v7)
      {
        goto LABEL_21;
      }
    }

LABEL_17:
    v10 = 0;
    return v10 & 1;
  }

  if (!v8)
  {
    if (v7 >= 0x40)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if ((v7 & 0xC0) != 0x40)
  {
LABEL_16:
    outlined copy of AnimatedValuePlaybackConfiguration.Mode(v6, v5, v7);
    outlined consume of AnimatedValuePlaybackConfiguration.Mode(v3, v2, v4);
    outlined consume of AnimatedValuePlaybackConfiguration.Mode(v6, v5, v7);
    goto LABEL_17;
  }

LABEL_12:
  outlined consume of AnimatedValuePlaybackConfiguration.Mode(*a1, v2, v4);
  outlined consume of AnimatedValuePlaybackConfiguration.Mode(v6, v5, v7);
  v10 = *&v3 == *&v6;
  return v10 & 1;
}

uint64_t initializeBufferWithCopyOfBuffer for AnimatedValuePlaybackConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of AnimatedValuePlaybackConfiguration.Mode(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for AnimatedValuePlaybackConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of AnimatedValuePlaybackConfiguration.Mode(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of AnimatedValuePlaybackConfiguration.Mode(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for AnimatedValuePlaybackConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of AnimatedValuePlaybackConfiguration.Mode(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnimatedValuePlaybackConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for AnimatedValuePlaybackConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.pageIndexDisplayMode : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<PageIndexDisplayMode.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PageIndexDisplayMode.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<PageIndexDisplayMode.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PageIndexDisplayMode.Key> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.pageIndexDisplayMode : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<PageIndexDisplayMode.Key>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<PageIndexDisplayMode.Key> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t PageIndexViewStyle._makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];

  v8 = _VariadicView_Children.endIndex.getter();
  result = _VariadicView_Children.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    result = _VariadicView_Children.endIndex.getter();
    if (v8 < 0 || result < v8)
    {
      goto LABEL_16;
    }

    v10 = MEMORY[0x1E69E7CC0];
    if (!v8)
    {
LABEL_13:
      v15 = qword_18CDF8AB8[v4];
      result = swift_getKeyPath();
      *a2 = v5;
      *(a2 + 8) = v6;
      *(a2 + 16) = v7;
      *(a2 + 24) = v10;
      *(a2 + 32) = v15;
      *(a2 + 40) = result;
      *(a2 + 48) = 0;
      return result;
    }

    v16 = v4;
    v17 = v5;
    v20 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v11 = 0;
    v10 = v20;
    while (1)
    {
      _VariadicView_Children.subscript.getter();
      v12 = one-time initialization token for defaultValue;

      if (v12 != -1)
      {
        swift_once();
      }

      ViewTraitCollection.value<A>(for:defaultValue:)();
      outlined destroy of _VariadicView_Children.Element(v18);

      v20 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v10 = v20;
      }

      *(v10 + 16) = v14 + 1;
      memcpy((v10 + 632 * v14 + 32), __src, 0x271uLL);
      result = _VariadicView_Children.endIndex.getter();
      if (v11 >= result)
      {
        break;
      }

      if (v8 == ++v11)
      {
        v5 = v17;
        v4 = v16;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t UIKitPageIndexView.index.getter()
{
  v1 = *(v0 + 2);
  v4 = *v0;
  v5 = v1;
  type metadata accessor for NavigationState.StackContent.Key?(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v3);
  return v3;
}

id UIKitPageIndexView.makeCoordinator()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = type metadata accessor for Coordinator();

  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC7SwiftUIP33_59ABB005D29F0E32A3A965407533FE0D11Coordinator_lastIndicators;
  *&v5[v6] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_7SwiftUI5ImageVACE8ResolvedVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v7 = &v5[OBJC_IVAR____TtC7SwiftUIP33_59ABB005D29F0E32A3A965407533FE0D11Coordinator_index];
  *v7 = v1;
  *(v7 + 1) = v2;
  *(v7 + 2) = v3;
  v9.receiver = v5;
  v9.super_class = v4;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t UIKitPageIndexView.updateUIView(_:context:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = *(a3 + 16);
  v9 = *(*(*(a3 + 24) + 8) + 8);
  v10 = *(v9 + 8);
  v142 = type metadata accessor for EnumeratedSequence();
  MEMORY[0x1EEE9AC00](v142);
  v143 = v10;
  v150 = type metadata accessor for EnumeratedSequence.Iterator();
  v140 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v149 = &v138 - v11;
  v12 = *(a2 + 40);
  v13 = *v4;
  v14 = v4[1];
  v15 = v4[2];
  v151 = v12;
  v16 = (v12 + OBJC_IVAR____TtC7SwiftUIP33_59ABB005D29F0E32A3A965407533FE0D11Coordinator_index);
  *v16 = v13;
  v16[1] = v14;
  v16[2] = v15;

  v147 = v5[9];
  v141 = v9;
  v17 = dispatch thunk of Collection.count.getter();
  v18 = [a1 numberOfPages] == v17;
  v19 = a1;
  v148 = a1;
  v145 = v8;
  v146 = v4;
  v144 = v5;
  if (v18)
  {
LABEL_17:
    if ([v19 backgroundStyle] != *(v4 + v5[10]))
    {
      [v148 setBackgroundStyle_];
    }

    v49 = [v148 allowsContinuousInteraction];
    v50 = v151;
    if ((v49 & 1) == 0)
    {
      [v148 setAllowsContinuousInteraction_];
    }

    v51 = specialized Environment.wrappedValue.getter(*(v4 + v5[11]), *(v4 + v5[11] + 8));
    if ((v51 != 1) != [v148 hidesForSinglePage])
    {
      [v148 setHidesForSinglePage_];
    }

    MEMORY[0x18D00CB20](v8, v143);
    EnumeratedSequence.makeIterator()();
    v52 = OBJC_IVAR____TtC7SwiftUIP33_59ABB005D29F0E32A3A965407533FE0D11Coordinator_lastIndicators;
    swift_beginAccess();
    EnumeratedSequence.Iterator.next()();
    v53 = *(&v217[0] + 1);
    v54 = *&v217[0];
    memcpy(v218, &v217[1], 0x269uLL);
    if (!*(&v217[0] + 1))
    {
LABEL_66:
      (*(v140 + 8))(v149, v150);
      v134 = [v148 currentPage];
      if (v134 != UIKitPageIndexView.index.getter())
      {
        [v148 setCurrentPage_];
      }

      result = dispatch thunk of Collection.isEmpty.getter();
      if ((result & 1) == 0)
      {
        *&v190[0] = UIKitPageIndexView.index.getter();
        v136 = dispatch thunk of Collection.subscript.read();
        outlined init with copy of PlatformItem(v137, v217);
        v136(v218, 0);
        specialized PlatformItem.applyAccessibilityProperties(to:)(v148, v217);
        return outlined destroy of PlatformItem(v217);
      }

      return result;
    }

    v55 = MEMORY[0x1E6981730];
    while (1)
    {
      *&v217[0] = v53;
      memcpy(v217 + 8, v218, 0x269uLL);
      v216[11] = *&v218[27];
      v216[12] = *&v218[29];
      v216[13] = *&v218[31];
      v216[7] = *&v218[19];
      v216[8] = *&v218[21];
      v216[10] = *&v218[25];
      v216[9] = *&v218[23];
      v216[3] = *&v218[11];
      v216[4] = *&v218[13];
      v216[6] = *&v218[17];
      v216[5] = *&v218[15];
      v215 = *&v218[3];
      v216[0] = *&v218[5];
      v216[2] = *&v218[9];
      v216[1] = *&v218[7];
      if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v215) == 1)
      {
        _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v204);
      }

      else
      {
        _s7SwiftUI5ImageVAAE8ResolvedVSgWOcTm_0(v216 + 8, v190, &lazy cache variable for type metadata for Image.Resolved?, v55);
        v212 = *(&v216[8] + 8);
        v213 = *(&v216[9] + 8);
        v214[0] = *(&v216[10] + 8);
        *(v214 + 11) = *(&v216[11] + 3);
        v208 = *(&v216[4] + 8);
        v209 = *(&v216[5] + 8);
        v210 = *(&v216[6] + 8);
        v211 = *(&v216[7] + 8);
        v204 = *(v216 + 8);
        v205 = *(&v216[1] + 8);
        v206 = *(&v216[2] + 8);
        v207 = *(&v216[3] + 8);
      }

      v76 = *(v50 + v52);
      if (*(v76 + 16))
      {
        v77 = specialized __RawDictionaryStorage.find<A>(_:)(v54);
        if (v78)
        {
          v79 = (*(v76 + 56) + 192 * v77);
          v81 = v79[2];
          v80 = v79[3];
          v82 = v79[1];
          v189[0] = *v79;
          v189[1] = v82;
          v189[2] = v81;
          v189[3] = v80;
          v83 = v79[4];
          v84 = v79[5];
          v85 = v79[6];
          v189[7] = v79[7];
          v189[6] = v85;
          v189[5] = v84;
          v189[4] = v83;
          v86 = v79[8];
          v87 = v79[9];
          v88 = v79[10];
          *(&v189[10] + 11) = *(v79 + 171);
          v189[10] = v88;
          v189[9] = v87;
          v189[8] = v86;
          memmove(v190, v79, 0xBBuLL);
          destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v190, v89, v90, v91);
          outlined init with copy of Image.Resolved(v189, &v193);
        }

        else
        {
          _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v190);
        }

        v201 = v190[8];
        v202 = v190[9];
        v203[0] = v190[10];
        *(v203 + 11) = *(&v190[10] + 11);
        v197 = v190[4];
        v198 = v190[5];
        v199 = v190[6];
        v200 = v190[7];
        v193 = v190[0];
        v194 = v190[1];
        v195 = v190[2];
        v196 = v190[3];
      }

      else
      {
        _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v193);
      }

      v190[8] = v212;
      v190[9] = v213;
      v190[10] = v214[0];
      *(&v190[10] + 11) = *(v214 + 11);
      v190[4] = v208;
      v190[5] = v209;
      v190[6] = v210;
      v190[7] = v211;
      v190[0] = v204;
      v190[1] = v205;
      v190[2] = v206;
      v190[3] = v207;
      v190[20] = v201;
      v190[21] = v202;
      v190[22] = v203[0];
      *(&v190[22] + 11) = *(v203 + 11);
      v190[16] = v197;
      v190[17] = v198;
      v190[18] = v199;
      v190[19] = v200;
      v190[12] = v193;
      v190[13] = v194;
      v190[14] = v195;
      v190[15] = v196;
      v191[8] = v212;
      v191[9] = v213;
      v192[0] = v214[0];
      *(v192 + 11) = *(v214 + 11);
      v191[4] = v208;
      v191[5] = v209;
      v191[6] = v210;
      v191[7] = v211;
      v191[0] = v204;
      v191[1] = v205;
      v191[2] = v206;
      v191[3] = v207;
      if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(v191) == 1)
      {
        break;
      }

      v186 = v212;
      v187 = v213;
      v188[0] = v214[0];
      *(v188 + 11) = *(v214 + 11);
      v182 = v208;
      v183 = v209;
      v184 = v210;
      v185 = v211;
      v178 = v204;
      v179 = v205;
      v180 = v206;
      v181 = v207;
      v175 = v212;
      v176 = v213;
      v177[0] = v214[0];
      *(v177 + 11) = *(v214 + 11);
      v171 = v208;
      v172 = v209;
      v173 = v210;
      v174 = v211;
      v167 = v204;
      v168 = v205;
      v169 = v206;
      v170 = v207;
      v189[8] = v190[20];
      v189[9] = v190[21];
      v189[10] = v190[22];
      *(&v189[10] + 11) = *(&v190[22] + 11);
      v189[4] = v190[16];
      v189[5] = v190[17];
      v189[6] = v190[18];
      v189[7] = v190[19];
      v189[0] = v190[12];
      v189[1] = v190[13];
      v189[2] = v190[14];
      v189[3] = v190[15];
      if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(v189) == 1)
      {
        v164 = v212;
        v165 = v213;
        v166[0] = v214[0];
        *(v166 + 11) = *(v214 + 11);
        v160 = v208;
        v161 = v209;
        v162 = v210;
        v163 = v211;
        v156 = v204;
        v157 = v205;
        v158 = v206;
        v159 = v207;
        _s7SwiftUI5ImageVAAE8ResolvedVSgWOcTm_0(&v178, v154, &lazy cache variable for type metadata for Image.Resolved?, v55);
        outlined destroy of Image.Resolved(&v156);
        v50 = v151;
LABEL_42:
        memcpy(v189, v190, 0x17BuLL);
        outlined destroy of (Image.Resolved?, Image.Resolved?)(v189);
        goto LABEL_43;
      }

      v164 = v190[20];
      v165 = v190[21];
      v166[0] = v190[22];
      *(v166 + 11) = *(&v190[22] + 11);
      v160 = v190[16];
      v161 = v190[17];
      v162 = v190[18];
      v163 = v190[19];
      v156 = v190[12];
      v157 = v190[13];
      v158 = v190[14];
      v159 = v190[15];
      _s7SwiftUI5ImageVAAE8ResolvedVSgWOcTm_0(&v178, v154, &lazy cache variable for type metadata for Image.Resolved?, v55);
      v119 = specialized static Image.Resolved.== infix(_:_:)(&v167, &v156);
      v152[8] = v164;
      v152[9] = v165;
      v153[0] = v166[0];
      *(v153 + 11) = *(v166 + 11);
      v152[4] = v160;
      v152[5] = v161;
      v152[6] = v162;
      v152[7] = v163;
      v152[0] = v156;
      v152[1] = v157;
      v152[2] = v158;
      v152[3] = v159;
      outlined destroy of Image.Resolved(v152);
      v154[8] = v175;
      v154[9] = v176;
      v155[0] = v177[0];
      *(v155 + 11) = *(v177 + 11);
      v154[4] = v171;
      v154[5] = v172;
      v154[6] = v173;
      v154[7] = v174;
      v154[0] = v167;
      v154[1] = v168;
      v154[2] = v169;
      v154[3] = v170;
      outlined destroy of Image.Resolved(v154);
      v164 = v212;
      v165 = v213;
      v166[0] = v214[0];
      *(v166 + 11) = *(v214 + 11);
      v160 = v208;
      v161 = v209;
      v162 = v210;
      v163 = v211;
      v156 = v204;
      v157 = v205;
      v158 = v206;
      v159 = v207;
      _s7SwiftUI12PlatformItemV20AccessibilityContentVSgWOhTm_0(&v156, &lazy cache variable for type metadata for Image.Resolved?, v55);
      v50 = v151;
      if (v119)
      {
        goto LABEL_27;
      }

LABEL_43:
      Platform = PlatformItem.coreMakePlatformImage()();
      if (Platform)
      {
        objc_opt_self();
        Platform = swift_dynamicCastObjCClassUnconditional();
      }

      [v148 setIndicatorImage:Platform forPage:v54];

      v190[12] = v217[14];
      v190[13] = v217[15];
      v190[14] = v217[16];
      v190[8] = v217[10];
      v190[9] = v217[11];
      v190[11] = v217[13];
      v190[10] = v217[12];
      v190[4] = v217[6];
      v190[5] = v217[7];
      v190[7] = v217[9];
      v190[6] = v217[8];
      v190[0] = v217[2];
      v190[1] = v217[3];
      v190[3] = v217[5];
      v190[2] = v217[4];
      if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(v190) == 1)
      {
        _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v189);
      }

      else
      {
        _s7SwiftUI5ImageVAAE8ResolvedVSgWOcTm_0(&v190[1] + 8, v189, &lazy cache variable for type metadata for Image.Resolved?, v55);
        v189[8] = *(&v190[9] + 8);
        v189[9] = *(&v190[10] + 8);
        v189[10] = *(&v190[11] + 8);
        *(&v189[10] + 11) = *(&v190[12] + 3);
        v189[4] = *(&v190[5] + 8);
        v189[5] = *(&v190[6] + 8);
        v189[6] = *(&v190[7] + 8);
        v189[7] = *(&v190[8] + 8);
        v189[0] = *(&v190[1] + 8);
        v189[1] = *(&v190[2] + 8);
        v189[2] = *(&v190[3] + 8);
        v189[3] = *(&v190[4] + 8);
      }

      swift_beginAccess();
      v186 = v189[8];
      v187 = v189[9];
      v188[0] = v189[10];
      *(v188 + 11) = *(&v189[10] + 11);
      v182 = v189[4];
      v183 = v189[5];
      v184 = v189[6];
      v185 = v189[7];
      v178 = v189[0];
      v179 = v189[1];
      v180 = v189[2];
      v181 = v189[3];
      if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v178) == 1)
      {
        v93 = specialized __RawDictionaryStorage.find<A>(_:)(v54);
        if (v94)
        {
          v95 = v93;
          v96 = v151;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v98 = *(v96 + v52);
          *&v154[0] = v98;
          *(v96 + v52) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            specialized _NativeDictionary.copy()();
            v98 = *&v154[0];
          }

          v99 = (*(v98 + 56) + 192 * v95);
          v101 = v99[2];
          v100 = v99[3];
          v102 = v99[1];
          v167 = *v99;
          v168 = v102;
          v169 = v101;
          v170 = v100;
          v103 = v99[4];
          v104 = v99[5];
          v105 = v99[7];
          v173 = v99[6];
          v174 = v105;
          v171 = v103;
          v172 = v104;
          v106 = v99[8];
          v107 = v99[9];
          v108 = v99[10];
          *(v177 + 11) = *(v99 + 171);
          v176 = v107;
          v177[0] = v108;
          v175 = v106;
          outlined destroy of Image.Resolved(&v167);
          specialized _NativeDictionary._delete(at:)(v95, v98);
          *(v96 + v52) = v98;
        }
      }

      else
      {
        v109 = swift_isUniquelyReferenced_nonNull_native();
        *&v154[0] = *(v50 + v52);
        v110 = *&v154[0];
        *(v50 + v52) = 0x8000000000000000;
        v111 = specialized __RawDictionaryStorage.find<A>(_:)(v54);
        v113 = *(v110 + 16);
        v114 = (v112 & 1) == 0;
        v115 = __OFADD__(v113, v114);
        v116 = v113 + v114;
        if (v115)
        {
          goto LABEL_72;
        }

        v117 = v112;
        if (*(v110 + 24) >= v116)
        {
          if (v109)
          {
            if ((v112 & 1) == 0)
            {
              goto LABEL_62;
            }
          }

          else
          {
            v133 = v111;
            specialized _NativeDictionary.copy()();
            v111 = v133;
            if ((v117 & 1) == 0)
            {
              goto LABEL_62;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v116, v109);
          v111 = specialized __RawDictionaryStorage.find<A>(_:)(v54);
          if ((v117 & 1) != (v118 & 1))
          {
            goto LABEL_74;
          }

          if ((v117 & 1) == 0)
          {
LABEL_62:
            v120 = *&v154[0];
            *(*&v154[0] + 8 * (v111 >> 6) + 64) |= 1 << v111;
            *(v120[6] + 8 * v111) = v54;
            v121 = (v120[7] + 192 * v111);
            v122 = v189[3];
            v123 = v189[1];
            v124 = v189[0];
            v121[2] = v189[2];
            v121[3] = v122;
            *v121 = v124;
            v121[1] = v123;
            v125 = v189[7];
            v126 = v189[5];
            v127 = v189[4];
            v121[6] = v189[6];
            v121[7] = v125;
            v121[4] = v127;
            v121[5] = v126;
            v128 = v189[8];
            v129 = v189[9];
            v130 = v189[10];
            *(v121 + 171) = *(&v189[10] + 11);
            v121[9] = v129;
            v121[10] = v130;
            v121[8] = v128;
            v131 = v120[2];
            v115 = __OFADD__(v131, 1);
            v132 = v131 + 1;
            if (v115)
            {
              goto LABEL_73;
            }

            v120[2] = v132;
            *(v151 + v52) = v120;
            goto LABEL_26;
          }
        }

        v56 = *&v154[0];
        v57 = (*(*&v154[0] + 56) + 192 * v111);
        v58 = v57[3];
        v60 = *v57;
        v59 = v57[1];
        v169 = v57[2];
        v170 = v58;
        v167 = v60;
        v168 = v59;
        v61 = v57[7];
        v63 = v57[4];
        v62 = v57[5];
        v173 = v57[6];
        v174 = v61;
        v171 = v63;
        v172 = v62;
        v65 = v57[9];
        v64 = v57[10];
        v66 = v57[8];
        *(v177 + 11) = *(v57 + 171);
        v176 = v65;
        v177[0] = v64;
        v175 = v66;
        v67 = v189[0];
        v68 = v189[1];
        v69 = v189[3];
        v57[2] = v189[2];
        v57[3] = v69;
        *v57 = v67;
        v57[1] = v68;
        v70 = v189[4];
        v71 = v189[5];
        v72 = v189[7];
        v57[6] = v189[6];
        v57[7] = v72;
        v57[4] = v70;
        v57[5] = v71;
        v73 = v189[8];
        v74 = v189[9];
        v75 = v189[10];
        *(v57 + 171) = *(&v189[10] + 11);
        v57[9] = v74;
        v57[10] = v75;
        v57[8] = v73;
        outlined destroy of Image.Resolved(&v167);
        *(v151 + v52) = v56;
      }

LABEL_26:
      swift_endAccess();
      v50 = v151;
LABEL_27:
      outlined destroy of PlatformItem(v217);
      EnumeratedSequence.Iterator.next()();
      v53 = *(&v217[0] + 1);
      v54 = *&v217[0];
      memcpy(v218, &v217[1], 0x269uLL);
      if (!*(&v217[0] + 1))
      {
        goto LABEL_66;
      }
    }

    v189[8] = v190[20];
    v189[9] = v190[21];
    v189[10] = v190[22];
    *(&v189[10] + 11) = *(&v190[22] + 11);
    v189[4] = v190[16];
    v189[5] = v190[17];
    v189[6] = v190[18];
    v189[7] = v190[19];
    v189[0] = v190[12];
    v189[1] = v190[13];
    v189[2] = v190[14];
    v189[3] = v190[15];
    if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(v189) == 1)
    {
      v186 = v212;
      v187 = v213;
      v188[0] = v214[0];
      *(v188 + 11) = *(v214 + 11);
      v182 = v208;
      v183 = v209;
      v184 = v210;
      v185 = v211;
      v178 = v204;
      v179 = v205;
      v180 = v206;
      v181 = v207;
      _s7SwiftUI12PlatformItemV20AccessibilityContentVSgWOhTm_0(&v178, &lazy cache variable for type metadata for Image.Resolved?, v55);
      goto LABEL_27;
    }

    goto LABEL_42;
  }

  [a1 setNumberOfPages_];
  v20 = OBJC_IVAR____TtC7SwiftUIP33_59ABB005D29F0E32A3A965407533FE0D11Coordinator_lastIndicators;
  v21 = v151;
  swift_beginAccess();
  v139 = v20;
  v22 = *(v21 + v20);
  v23 = 1 << *(v22 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v22 + 64);
  v26 = (v23 + 63) >> 6;

  v27 = 0;
  while (v25)
  {
LABEL_5:
    v28 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v29 = *(*(v22 + 48) + ((v27 << 9) | (8 * v28)));
    if (v29 >= v17)
    {
      swift_beginAccess();
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
      if (v32)
      {
        v138 = v31;
        v33 = v151;
        v34 = v139;
        v35 = swift_isUniquelyReferenced_nonNull_native();
        v36 = *(v33 + v34);
        *&v190[0] = v36;
        *(v33 + v34) = 0x8000000000000000;
        if (!v35)
        {
          specialized _NativeDictionary.copy()();
          v36 = *&v190[0];
        }

        v37 = v138;
        v38 = (*(v36 + 56) + 192 * v138);
        v40 = v38[2];
        v39 = v38[3];
        v41 = v38[1];
        v217[0] = *v38;
        v217[1] = v41;
        v217[2] = v40;
        v217[3] = v39;
        v42 = v38[4];
        v43 = v38[5];
        v44 = v38[6];
        v217[7] = v38[7];
        v217[6] = v44;
        v217[5] = v43;
        v217[4] = v42;
        v45 = v38[8];
        v46 = v38[9];
        v47 = v38[10];
        *(&v217[10] + 11) = *(v38 + 171);
        v217[10] = v47;
        v217[9] = v46;
        v217[8] = v45;
        v48 = v36;
        outlined destroy of Image.Resolved(v217);
        specialized _NativeDictionary._delete(at:)(v37, v48);
        *(v151 + v139) = v48;
      }

      swift_endAccess();
    }
  }

  while (1)
  {
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v30 >= v26)
    {

      v19 = v148;
      v8 = v145;
      v4 = v146;
      v5 = v144;
      goto LABEL_17;
    }

    v25 = *(v22 + 64 + 8 * v30);
    ++v27;
    if (v25)
    {
      v27 = v30;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id protocol witness for UIViewRepresentable.makeCoordinator() in conformance UIKitPageIndexView<A>@<X0>(void *a1@<X8>)
{
  result = UIKitPageIndexView.makeCoordinator()();
  *a1 = result;
  return result;
}

uint64_t closure #1 in Coordinator.pageDidChange(_:)(char a1)
{
  v2 = 0;
  if (a1)
  {
    v2 = static Animation.default.getter();
  }

  MEMORY[0x1EEE9AC00](v2);
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #1 in Coordinator.pageDidChange(_:)(uint64_t a1, void *a2)
{

  [a2 currentPage];
  dispatch thunk of AnyLocation.set(_:transaction:)();
}

uint64_t type metadata completion function for UIKitPageIndexView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for UIKitPageIndexView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + 7;
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((((v7 + ((v6 + 24) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = a2[2];
    a1[1] = a2[1];
    a1[2] = v12;
    v13 = (a1 + v6 + 24) & ~v6;
    v14 = (a2 + v6 + 24) & ~v6;
    v15 = *(v5 + 16);

    v15(v13, v14, v4);
    v16 = ((v7 + v13) & 0xFFFFFFFFFFFFFFF8);
    v17 = (v7 + v14) & 0xFFFFFFFFFFFFFFF8;
    v18 = *v17;
    v17 += 15;
    *v16 = v18;
    v19 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    v20 = *(v17 & 0xFFFFFFFFFFFFFFF8);
    v21 = *((v17 & 0xFFFFFFFFFFFFFFF8) + 8);
    outlined copy of Environment<Selector?>.Content(v20, v21);
    *v19 = v20;
    *(v19 + 8) = v21;
  }

  return a1;
}

uint64_t destroy for UIKitPageIndexView(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (a1 + *(v4 + 80) + 24) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = (((*(v5 + 56) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *v7;
  v9 = *(v7 + 8);

  return outlined consume of Environment<Selector?>.Content(v8, v9);
}

void *initializeWithCopy for UIKitPageIndexView(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = a2[2];
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(v5 - 8) + 16;
  v8 = *(*(v5 - 8) + 80);
  v9 = (a1 + v8 + 24) & ~v8;
  v10 = (a2 + v8 + 24) & ~v8;

  v6(v9, v10, v5);
  v11 = *(v7 + 48) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  LOBYTE(v5) = *(v15 + 8);
  outlined copy of Environment<Selector?>.Content(*v15, v5);
  *v14 = v16;
  *(v14 + 8) = v5;
  return a1;
}

void *assignWithCopy for UIKitPageIndexView(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 24) & ~v8;
  v10 = (a2 + v8 + 24) & ~v8;
  (*(v6 + 24))(v9, v10);
  v11 = *(v7 + 40) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  LOBYTE(v10) = *(v15 + 8);
  outlined copy of Environment<Selector?>.Content(*v15, v10);
  v17 = *v14;
  v18 = *(v14 + 8);
  *v14 = v16;
  *(v14 + 8) = v10;
  outlined consume of Environment<Selector?>.Content(v17, v18);
  return a1;
}

uint64_t initializeWithTake for UIKitPageIndexView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (v6 + 24 + a1) & ~v6;
  v8 = (v6 + 24 + a2) & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32) + 7;
  v10 = ((v9 + v7) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + v8) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v13 + 8);
  *v12 = *v13;
  *(v12 + 8) = v14;
  return a1;
}

void *assignWithTake for UIKitPageIndexView(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 40;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 24) & ~v8;
  v10 = (a2 + v8 + 24) & ~v8;
  (*(v6 + 40))(v9, v10);
  v11 = *(v7 + 24) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  LOBYTE(v15) = *(v15 + 8);
  v17 = *v14;
  v18 = *(v14 + 8);
  *v14 = v16;
  *(v14 + 8) = v15;
  outlined consume of Environment<Selector?>.Content(v17, v18);
  return a1;
}

uint64_t getEnumTagSinglePayload for UIKitPageIndexView(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
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
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))(&a1[v6 + 24] & ~v6);
    }

    v17 = *(a1 + 1);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void storeEnumTagSinglePayload for UIKitPageIndexView(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 24) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
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
      if ((v7 & 0x80000000) != 0)
      {
        v17 = *(v6 + 56);
        v18 = &a1[v9 + 24] & ~v9;

        v17(v18);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *(a1 + 1) = 0;
        *(a1 + 2) = 0;
        *a1 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(a1 + 1) = a2 - 1;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
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

unint64_t lazy protocol witness table accessor for type PageViewBackgroundDisplayMode and conformance PageViewBackgroundDisplayMode()
{
  result = lazy protocol witness table cache variable for type PageViewBackgroundDisplayMode and conformance PageViewBackgroundDisplayMode;
  if (!lazy protocol witness table cache variable for type PageViewBackgroundDisplayMode and conformance PageViewBackgroundDisplayMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PageViewBackgroundDisplayMode and conformance PageViewBackgroundDisplayMode);
  }

  return result;
}

id specialized PlatformItem.applyAccessibilityProperties(to:)(void *a1, uint64_t a2)
{
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOcTm_0(a2 + 328, v28, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, MEMORY[0x1E697DEC8]);
  if (!v29)
  {
    return _s7SwiftUI12PlatformItemV20AccessibilityContentVSgWOhTm_0(v28, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, MEMORY[0x1E697DEC8]);
  }

  PlatformItem.AccessibilityContent.environment.getter();
  outlined destroy of PlatformItem.AccessibilityContent(v28);
  v26 = v21;
  v27 = v22;
  v4 = EnvironmentValues.accessibilityEnabled.getter();

  if ((v4 & 1) == 0)
  {
    return result;
  }

  v6 = PlatformItem.accessibilityEffectiveText.getter();
  if (v6)
  {
    v7 = v6;
    [a1 setAccessibilityAttributedValue_];
  }

  _s7SwiftUI5ImageVAAE8ResolvedVSgWOcTm_0(a2 + 328, v28, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, MEMORY[0x1E697DEC8]);
  if (v29)
  {
    outlined init with copy of AccessibilityProperties(v28, &v21);
    outlined destroy of PlatformItem.AccessibilityContent(v28);
    v9 = v21;
    v8 = v22;
    v10 = v23;

    outlined destroy of AccessibilityProperties(&v21);
    if (v8)
    {
      if (v10 >= 2)
      {
      }

      else
      {
        v11 = MEMORY[0x18D00C850](v9, v8);

        [a1 setAccessibilityIdentifier_];
      }
    }
  }

  else
  {
    _s7SwiftUI12PlatformItemV20AccessibilityContentVSgWOhTm_0(v28, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, MEMORY[0x1E697DEC8]);
  }

  _s7SwiftUI5ImageVAAE8ResolvedVSgWOcTm_0(a2 + 328, v28, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, MEMORY[0x1E697DEC8]);
  if (!v29)
  {
    return _s7SwiftUI12PlatformItemV20AccessibilityContentVSgWOhTm_0(v28, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, MEMORY[0x1E697DEC8]);
  }

  outlined init with copy of AccessibilityProperties(v28, &v21);
  outlined destroy of PlatformItem.AccessibilityContent(v28);
  v12 = v24;
  v13 = v25;
  result = outlined destroy of AccessibilityProperties(&v21);
  if ((v13 & 1) == 0)
  {
    v14 = [a1 accessibilityTraits];
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = outlined read-only object #0 of static AccessibilityTrait.allCases.getter[v15 + 32];
      v18 = v17 > 0xD || ((1 << v17) & 0x2844) == 0;
      if (!v18 && ((v12 >> v17) & 1) != 0)
      {
        v28[0] = outlined read-only object #0 of static AccessibilityTrait.allCases.getter[v15 + 32];
        v19 = AccessibilityTrait.uiTrait.getter();
        if ((v20 & 1) == 0)
        {
          v16 |= v19;
        }
      }

      ++v15;
    }

    while (v15 != 32);
    return [a1 setAccessibilityTraits_];
  }

  return result;
}

id specialized UIKitPageIndexView.makeUIView(context:)(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCD10]) init];
  [v2 addTarget:v1 action:sel_pageDidChange_ forControlEvents:4096];
  return v2;
}

uint64_t outlined destroy of (Image.Resolved?, Image.Resolved?)(uint64_t a1)
{
  type metadata accessor for (Image.Resolved?, Image.Resolved?)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s7SwiftUI12PlatformItemV20AccessibilityContentVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for NavigationState.StackContent.Key?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI5ImageVAAE8ResolvedVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for NavigationState.StackContent.Key?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t AccessibilityFocusState.Binding.propertyID.getter()
{
  type metadata accessor for AccessibilityFocusStoreLocation();
  if (swift_dynamicCastClass())
  {
    return FocusStoreLocation.id.getter();
  }

  return type metadata accessor for AccessibilityFocusState.Binding.PrivateType();
}

void AccessibilityFocusState.Binding.wrappedValue.getter()
{
  type metadata accessor for Binding();

  JUMPOUT(0x18D00ACC0);
}

void (*AccessibilityFocusState.Binding.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *(a2 + 16);
  v6[1] = v8;
  v9 = *(v8 - 8);
  v6[2] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[4] = v11;
  v12 = type metadata accessor for Binding();
  MEMORY[0x18D00ACC0](v12);
  return FocusState.Binding.wrappedValue.modify;
}

uint64_t AccessibilityFocusState.Binding.wrappedValue.setter(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v5 = *(*(*(a2 + 16) - 8) + 8);

  return v5(a1);
}

void (*AccessibilityFocusState.wrappedValue.modify(void *a1, uint64_t a2))(void **a1, char a2)
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
  AccessibilityFocusState.getValue(forReading:)(1, a2, v11);
  return AccessibilityFocusState.wrappedValue.modify;
}

void AccessibilityFocusState.wrappedValue.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *v2;
    v3 = v2[1];
    (*(v2[3] + 16))(v2[4], v2[5], v2[2]);
    if (*(v3 + *(v4 + 40)))
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
    if (*(v2[1] + *(*v2 + 40)))
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

void AccessibilityFocusState.init<>()(uint64_t a1@<X8>)
{
  *a1 = 0x10000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t AccessibilityFocusState.init<>(for:)@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0x10000;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *a1;
  result = AccessibilityTechnologySet.assertAllSupportFocus()(*a1);
  *a2 = v3;
  *(a2 + 2) = 0;
  return result;
}

uint64_t AccessibilityFocusState.init<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 2) = 1;
  type metadata accessor for Optional();
  swift_getWitnessTable();
  v4 = type metadata accessor for AccessibilityFocusState();
  *(a2 + v4[10]) = 0;
  v5 = *(*(a1 - 8) + 56);
  v5(a2 + v4[9], 1, 1, a1);
  return (v5)(a2 + v4[11], 1, 1, a1);
}

uint64_t AccessibilityFocusState.init<A>(for:)@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 2) = 1;
  v5 = *a1;
  type metadata accessor for Optional();
  swift_getWitnessTable();
  v6 = type metadata accessor for AccessibilityFocusState();
  *(a3 + v6[10]) = 0;
  v7 = *(*(a2 - 8) + 56);
  v7(a3 + v6[9], 1, 1, a2);
  v7(a3 + v6[11], 1, 1, a2);
  result = AccessibilityTechnologySet.assertAllSupportFocus()(v5);
  *a3 = v5;
  *(a3 + 2) = 0;
  return result;
}

uint64_t AccessibilityFocusBindingModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v4 = *(a2 + 16);
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v36 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[1] = *(v6 + 24);
  v34 = type metadata accessor for AccessibilityFocusState.Binding();
  v7 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v9 = v32 - v8;
  v32[0] = type metadata accessor for AccessibilityFocusStoreListModifier();
  v35 = *(v32[0] - 8);
  MEMORY[0x1EEE9AC00](v32[0]);
  v11 = v32 - v10;
  swift_getWitnessTable();
  v12 = type metadata accessor for _ViewModifier_Content();
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v32 - v19;
  v21 = *(v7 + 16);
  v22 = v9;
  v23 = v9;
  v24 = v33;
  v21(v23, v33, v34, v18);
  v25 = v24 + *(a2 + 36);
  v26 = v36;
  (*(v37 + 16))(v36, v25, v4);
  AccessibilityFocusStoreListModifier.init(binding:prototype:)(v22, v26, v4, v11);
  WitnessTable = swift_getWitnessTable();
  v28 = v32[0];
  MEMORY[0x18D00A570](v11, v12, v32[0], WitnessTable);
  (*(v35 + 8))(v11, v28);
  v39 = WitnessTable;
  v40 = &protocol witness table for AccessibilityFocusStoreListModifier<A>;
  v29 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v16, v13, v29);
  v30 = *(v14 + 8);
  v30(v16, v13);
  static ViewBuilder.buildExpression<A>(_:)(v20, v13, v29);
  return (v30)(v20, v13);
}

uint64_t specialized AccessibilityFocusState.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + *(a2 + 40)))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AccessibilityFocusState(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v7 + 7;
  v9 = ((((((-4 - v6) | v6) - (v7 + 7)) | 7) - v6 - 8) | v6) - v7;
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && v9 >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    v13 = (a1 + v6 + 3) & ~v6;
    v14 = (a2 + v6 + 3) & ~v6;
    v15 = *(v5 + 16);
    v15(v13, v14, v4);
    v16 = ((v8 + v13) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((v8 + v14) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;

    v15((v16 + 1), (v17 + 1), v4);
  }

  else
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return v3;
}

uint64_t initializeWithTake for AccessibilityFocusState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 32);
  v7 = v5 + 32;
  v8 = *(v5 + 80);
  v9 = (v8 + 3 + a1) & ~v8;
  v10 = (v8 + 3 + a2) & ~v8;
  v6(v9, v10, v4);
  v11 = *(v7 + 32) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v6((v12 + v8 + 8) & ~v8, (v13 + v8 + 8) & ~v8, v4);
  return a1;
}

uint64_t assignWithTake for AccessibilityFocusState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 40);
  v7 = v5 + 40;
  v8 = *(v5 + 80);
  v9 = (v8 + 3 + a1) & ~v8;
  v10 = (v8 + 3 + a2) & ~v8;
  v6(v9, v10, v4);
  v11 = *(v7 + 24) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;

  v6((v12 + v8 + 8) & ~v8, (v13 + v8 + 8) & ~v8, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityFocusState(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 + 7;
  v10 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v11 = ((v6 + ((v9 + ((v6 + 3) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6) + v7;
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 < 2)
    {
LABEL_26:
      v17 = (a1 + v6 + 3) & ~v6;
      if (v5 >= 0x7FFFFFFE)
      {
        return (*(v4 + 48))(v17);
      }

      v18 = *((v9 + v17) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      if ((v18 + 1) >= 2)
      {
        return v18;
      }

      else
      {
        return 0;
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_26;
  }

LABEL_15:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v8 + (v11 | v16) + 1;
}

void storeEnumTagSinglePayload for AccessibilityFocusState(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64);
  v11 = v10 + 7;
  v12 = ((v9 + ((v10 + 7 + ((v9 + 3) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9) + v10;
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v12 <= 3)
    {
      v18 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v8 < a2)
  {
    v16 = ~v8 + a2;
    if (v12 < 4)
    {
      v17 = (v16 >> (8 * v12)) + 1;
      if (v12)
      {
        v20 = v16 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_46:
              if (v15 == 2)
              {
                *&a1[v12] = v17;
              }

              else
              {
                *&a1[v12] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v15)
    {
      a1[v12] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v12] = 0;
  }

  else if (v15)
  {
    a1[v12] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v21 = &a1[v9 + 3] & ~v9;
  if (v7 < 0x7FFFFFFE)
  {
    v23 = ((v11 + v21) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v23 = 0;
      *v23 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v23 = a2;
    }
  }

  else
  {
    v22 = *(v6 + 56);

    v22(v21);
  }
}

uint64_t assignWithCopy for AccessibilityFocusState.Box(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithTake for AccessibilityFocusState.Box(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t _ConditionalContent<>.ToolbarProvider.detachOutputs()()
{

  PreferencesOutputs.detachIndirectOutputs()();
}

uint64_t _ConditionalContent<>.ToolbarProvider.makeFalseOutputs(child:inputs:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *&v23[12] = *(a2 + 60);
  v5 = a2[3];
  v22[2] = a2[2];
  *v23 = v5;
  v6 = a2[1];
  v22[0] = *a2;
  v22[1] = v6;
  v7 = *&v23[24];
  v8 = *&v23[16] + 1;
  v9 = *(a3 + 24);
  outlined init with copy of _ToolbarInputs(v22, v29);
  _GraphValue.init(_:)();
  v10 = a2[3];
  v25 = a2[2];
  *v26 = v10;
  v11 = a2[1];
  v24[0] = *a2;
  v24[1] = v11;
  *&v26[16] = v8;
  *&v26[24] = v7;
  v19 = v25;
  *v20 = v10;
  *&v20[12] = *&v26[12];
  v17 = v24[0];
  v18 = v11;
  v12 = *(a3 + 40);
  v13 = *(v12 + 32);
  outlined init with copy of _ToolbarInputs(v24, v29);
  v13(v21, &v17, v9, v12);
  v27[2] = v19;
  v28[0] = *v20;
  *(v28 + 12) = *&v20[12];
  v27[0] = v17;
  v27[1] = v18;
  outlined destroy of _ToolbarInputs(v27);
  v14 = a2[1];
  v29[0] = *a2;
  v29[1] = v14;
  v15 = a2[3];
  v29[2] = a2[2];
  v29[3] = v15;
  v30 = v8;
  v31 = v7;
  return outlined destroy of _ToolbarInputs(v29);
}

uint64_t protocol witness for ConditionalContentProvider.inputs.getter in conformance _ConditionalContent<A, B><>.ToolbarProvider@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10[0] = v2;
  *(v10 + 12) = *(v1 + 60);
  v3 = *(v10 + 12);
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  *(a1 + 60) = v3;
  *a1 = v5;
  a1[1] = v4;
  return outlined init with copy of _ToolbarInputs(v8, &v7);
}

uint64_t protocol witness for ConditionalContentProvider.outputs.getter in conformance _ConditionalContent<A, B><>.ToolbarProvider@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t ArchivedIntelligenceContent.init(from:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = MEMORY[0x1E69E7CC0];
  v8 = 1;
  if (v5 < v6)
  {
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = v3[3];
      if (!v10)
      {
        goto LABEL_7;
      }

      v11 = v3[4];
      if (v5 >= v11)
      {
        break;
      }

LABEL_9:
      if (v10 >> 3 == 2)
      {
        type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>(0, &lazy cache variable for type metadata for ScrapedContentTree<ArchivableScrapedItem>, type metadata accessor for ArchivableScrapedItem, type metadata accessor for ScrapedContentTree);
        lazy protocol witness table accessor for type ScrapedContentTree<ArchivableScrapedItem> and conformance <A> ScrapedContentTree<A>(&lazy protocol witness table cache variable for type ScrapedContentTree<ArchivableScrapedItem> and conformance <A> ScrapedContentTree<A>);
        ProtobufDecoder.messageField<A>(_:)();
        if (v2)
        {
          goto LABEL_29;
        }

        v7 = v13;
        v9 = v14;
        v5 = v3[1];
        v6 = v3[2];
        if (v5 >= v6)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v10 >> 3 == 1)
        {
          if ((v10 & 7) != 0)
          {
            if ((v10 & 7) != 2)
            {
              goto LABEL_28;
            }

            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_29;
            }

            if (result < 0)
            {
              __break(1u);
              return result;
            }

            v12 = v3[1] + result;
            if (v6 < v12)
            {
              goto LABEL_28;
            }

            v3[3] = 8;
            v3[4] = v12;
          }

          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_29;
          }

          v8 = -(result & 1) ^ (result >> 1);
        }

        else
        {
          v13 = v10;
          result = ProtobufDecoder.skipField(_:)();
          if (v2)
          {
            goto LABEL_29;
          }
        }

        v5 = v3[1];
        v6 = v3[2];
        if (v5 >= v6)
        {
          goto LABEL_26;
        }
      }
    }

    if (v11 < v5)
    {
      goto LABEL_28;
    }

    v3[3] = 0;
LABEL_7:
    v10 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_29;
    }

    if (v10 <= 7)
    {
LABEL_28:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
LABEL_29:
    }

    goto LABEL_9;
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v3[3] = 0;
  *a2 = v8;
  a2[1] = v7;
  a2[2] = v9;
  return result;
}

uint64_t lazy protocol witness table accessor for type ArchivableScrapedItem and conformance ArchivableScrapedItem(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArchivableScrapedItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _ArchivedViewHost.intelligenceContent()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = type metadata accessor for OSSignpostError();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v52 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v49 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v49 - v13;
  v15 = type metadata accessor for OSSignposter();
  v16 = *(v15 - 8);
  v58 = v15;
  v59 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v57 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v49 - v20;
  _ArchivedViewHost.signposter.getter(v19);
  static OSSignpostID.exclusive.getter();
  v22 = OSSignposter.logHandle.getter();
  v23 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v24 = swift_slowAlloc();
    v55 = v6;
    v25 = v24;
    *v24 = 0;
    v26 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_18BD4A000, v22, v23, v26, "intelligenceContent", "", v25, 2u);
    v27 = v25;
    v2 = v1;
    v6 = v55;
    MEMORY[0x18D0110E0](v27, -1, -1);
  }

  (*(v6 + 16))(v11, v14, v5);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v28 = OSSignpostIntervalState.init(id:isOpen:)();
  v29 = *(v6 + 8);
  v29(v14, v5);
  v30 = *(v59 + 8);
  v59 += 8;
  v30(v21, v58);
  type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>(0, &lazy cache variable for type metadata for ScrapedContentTree<ArchivableScrapedItem>, type metadata accessor for ArchivableScrapedItem, type metadata accessor for ScrapedContentTree);
  static Update.ensure<A>(_:)();
  v31 = v62;
  v55 = v63;
  _ArchivedViewHost.signposter.getter(v32);
  v33 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v51 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v49[0] = v31;

    v34 = v52;
    checkForErrorAndConsumeState(state:)();
    v49[1] = v28;

    v36 = v53;
    v35 = v54;
    v37 = (*(v53 + 88))(v34, v54);
    v38 = *MEMORY[0x1E69E93E8];
    v50 = v2;
    if (v37 == v38)
    {
      v39 = "[Error] Interval already ended";
    }

    else
    {
      (*(v36 + 8))(v34, v35);
      v39 = "";
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_18BD4A000, v33, v51, v41, "intelligenceContent", v39, v40, 2u);
    MEMORY[0x18D0110E0](v40, -1, -1);
    v2 = v50;
    v31 = v49[0];
  }

  v29(v8, v5);
  v30(v57, v58);
  swift_beginAccess();
  v42 = readEnvironment(_:_:)();
  swift_endAccess();
  v43 = v55;
  if (v42)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>();
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_18CD63400;
    v62 = 0;
    v63 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v60 = v62;
    v61 = v63;
    MEMORY[0x18D00C9B0](0x6E69766968637241, 0xEA00000000002067);
    v62 = v2;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18D00C9B0](2618, 0xE200000000000000);
    v62 = 1;
    v63 = v31;
    v64 = v43;
    _print_unlocked<A, B>(_:_:)();
    v45 = v60;
    v46 = v61;
    *(v44 + 56) = MEMORY[0x1E69E6158];
    *(v44 + 32) = v45;
    *(v44 + 40) = v46;
    print(_:separator:terminator:)();
  }

  v48 = v56;
  *v56 = 1;
  v48[1] = v31;
  v48[2] = v43;
  return result;
}

uint64_t protocol witness for ProtobufEncodableMessage.encode(to:) in conformance ArchivedIntelligenceContent()
{
  v1 = *v0;
  if (*v0)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)((2 * v1) ^ (v1 >> 63));
  }

  type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>(0, &lazy cache variable for type metadata for ScrapedContentTree<ArchivableScrapedItem>, type metadata accessor for ArchivableScrapedItem, type metadata accessor for ScrapedContentTree);
  lazy protocol witness table accessor for type ScrapedContentTree<ArchivableScrapedItem> and conformance <A> ScrapedContentTree<A>(&lazy protocol witness table cache variable for type ScrapedContentTree<ArchivableScrapedItem> and conformance <A> ScrapedContentTree<A>);
  return ProtobufEncoder.messageField<A>(_:_:)();
}

uint64_t ArchivedIntelligenceContent.encode(to:)()
{
  v1 = *v0;
  if (*v0)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)((2 * v1) ^ (v1 >> 63));
  }

  type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>(0, &lazy cache variable for type metadata for ScrapedContentTree<ArchivableScrapedItem>, type metadata accessor for ArchivableScrapedItem, type metadata accessor for ScrapedContentTree);
  lazy protocol witness table accessor for type ScrapedContentTree<ArchivableScrapedItem> and conformance <A> ScrapedContentTree<A>(&lazy protocol witness table cache variable for type ScrapedContentTree<ArchivableScrapedItem> and conformance <A> ScrapedContentTree<A>);
  return ProtobufEncoder.messageField<A>(_:_:)();
}

void *closure #1 in _ArchivedViewHost.intelligenceContent()@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[2];
  swift_beginAccess();
  v6 = *(v5 + 32);
  AGSubgraphRef.scrapeContent()();

  v10[0] = v10[3];

  WitnessTable = swift_getWitnessTable();
  result = ScrapedContentTree<A>.init<A>(archiving:host:)(v10, a1, v4, WitnessTable);
  *a2 = result;
  a2[1] = v9;
  return result;
}

void UIHostingController.collectArchivedIntelligence(from:in:collector:)(uint64_t *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = *a1;
  v13 = specialized UIHostingController.host.getter();
  v15 = v12;
  v16 = *(a1 + 1);
  v14 = v13;
  _UIHostingView.collectArchivedIntelligence(from:in:collector:)(&v15, a2, a3, a4, a5, a6);
}

uint64_t _UIHostingView.collectArchivedIntelligence(from:in:collector:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>(0, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v32 - v15;
  v17 = type metadata accessor for IntelligenceElement();
  v33 = *(v17 - 8);
  v34 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v32[0] = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 8);
  v20 = *(a1 + 16);
  v21 = type metadata accessor for _UIHostingView();
  WitnessTable = swift_getWitnessTable();
  IntelligenceContext.init(visibleRect:host:fragmentCollector:)(v6, a2, v35, a3, a4, a5, a6);
  v23 = v36;
  v24 = type metadata accessor for ArchivableScrapedItem(0);

  v25 = v7;
  v32[1] = a2;

  v26 = v23;
  v27 = v33;
  v28 = v34;
  v29 = v26;

  IntelligenceElement.init<A, B>(content:context:)(v19, v20, v35, v24, v21, &protocol witness table for ArchivableScrapedItem, WitnessTable, v16);
  if ((*(v27 + 48))(v16, 1, v28) == 1)
  {

    return outlined destroy of IntelligenceElement?(v16);
  }

  else
  {
    v31 = v32[0];
    (*(v27 + 32))(v32[0], v16, v28);
    IntelligenceFragmentCollector.collect(_:)();

    return (*(v27 + 8))(v31, v28);
  }
}

uint64_t lazy protocol witness table accessor for type ScrapedContentTree<ArchivableScrapedItem> and conformance <A> ScrapedContentTree<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>(255, &lazy cache variable for type metadata for ScrapedContentTree<ArchivableScrapedItem>, type metadata accessor for ArchivableScrapedItem, type metadata accessor for ScrapedContentTree);
    lazy protocol witness table accessor for type ArchivableScrapedItem and conformance ArchivableScrapedItem(&lazy protocol witness table cache variable for type ArchivableScrapedItem and conformance ArchivableScrapedItem);
    lazy protocol witness table accessor for type ArchivableScrapedItem and conformance ArchivableScrapedItem(&lazy protocol witness table cache variable for type ArchivableScrapedItem and conformance ArchivableScrapedItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of IntelligenceElement?(uint64_t a1)
{
  type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>(0, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ListCoreDataSource.performDrop(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v5 = type metadata accessor for DropCoordinator.Operation();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23[-v7];
  v9 = swift_checkMetadataState();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v23[-v15];
  (*(v6 + 16))(v8, a1, v5, v14);
  LOBYTE(v6) = swift_getEnumCaseMultiPayload() == 1;
  (*(v10 + 32))(v12, v8, v9);
  v17 = *&v12[*(v9 + 48)];
  v18 = swift_checkMetadataState();
  (*(*(v18 - 8) + 32))(v16, v12, v18);
  *&v16[*(v9 + 48)] = v17;
  (*(v10 + 16))(v12, v16, v9);
  v19 = *&v12[*(v9 + 48)];
  v24 = a2;
  v25 = v22;
  v26 = v6;
  v27 = a1;
  ListCoreDataSource.visitRowAt<A>(_:visitor:)(v12, v19, partial apply for closure #1 in ListCoreDataSource.performDrop(to:), v23, a2, MEMORY[0x1E69E7CA8] + 8, v22, partial apply for closure #1 in ListCoreDataSource.visitRowAt<A>(_:visitor:), &v28, _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF);
  (*(v10 + 8))(v16, v9);
  v20 = swift_checkMetadataState();
  return (*(*(v20 - 8) + 8))(v12, v20);
}

uint64_t ListCoreDataSource.canMoveCell(forRowAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21[-v15];
  v17 = *(AssociatedTypeWitness - 8);
  (*(v17 + 16))(&v21[-v15], a1, AssociatedTypeWitness, v14);
  *&v16[*(TupleTypeMetadata2 + 48)] = a2;
  (*(v10 + 16))(v12, v16, TupleTypeMetadata2);
  v18 = *&v12[*(TupleTypeMetadata2 + 48)];
  v22 = a3;
  v23 = a4;
  ListCoreDataSource.visitRowAt<A>(_:visitor:)(v12, v18, partial apply for closure #1 in ListCoreDataSource.canMoveCell(forRowAt:), v21, a3, MEMORY[0x1E69E6370], a4, partial apply for closure #1 in ListCoreDataSource.visitRowAt<A>(_:visitor:), &v24, _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF);
  (*(v10 + 8))(v16, TupleTypeMetadata2);
  (*(v17 + 8))(v12, AssociatedTypeWitness);
  return v24 & 1;
}

uint64_t specialized ListCoreDataSource.canMoveCell(from:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 40);
  if (*(v5 + 16) <= a3)
  {
    goto LABEL_7;
  }

  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 + 96 * a3;
    v8 = *(v6 + 112);
    v7 = *(v6 + 120);
    v9 = __OFADD__(v8, v7);
    v10 = v8 + v7;
    if (!v9)
    {
      if (v10 > a4)
      {
        v11 = result;
        type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, Int)>, type metadata accessor for (Int, Int), MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18CD63410;
        *(inited + 32) = v11;
        *(inited + 40) = a2;
        *(inited + 48) = a3;
        *(inited + 56) = a4;
        MEMORY[0x1EEE9AC00](inited);
        v18[2] = v4;
        v16 = specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in ListCoreDataSource.visitRowsAt<A>(_:visitor:), v18, inited);
        swift_setDeallocating();
        if (v16[2])
        {
          v17 = specialized closure #1 in ListCoreDataSource.canMoveCell(from:to:)(v16);
        }

        else
        {
          v17 = 0;
        }

        return v17 & 1;
      }

LABEL_7:
      v17 = 0;
      return v17 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t ListCoreDataSource.canMoveCell(from:to:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a3;
  v52 = a4;
  v48 = a2;
  v50 = a1;
  v41 = a6;
  v6 = *(a6 + 8);
  v53 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  v44 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v42 = &v41 - v8;
  swift_getAssociatedTypeWitness();
  v47 = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = swift_getAssociatedTypeWitness();
  v45 = *(v9 - 8);
  v10 = v45;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - v11;
  v13 = swift_checkMetadataState();
  v46 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v41 - v21;
  v23 = *(v10 + 16);
  v23(&v41 - v21, v50, v9, v20);
  v24 = *(TupleTypeMetadata2 + 48);
  v50 = v22;
  v25 = v49;
  *&v22[v24] = v48;
  (v23)(v18, v25, v9);
  v26 = v53;
  *&v18[*(TupleTypeMetadata2 + 48)] = v52;
  (*(v6 + 56))(v26, v6);
  dispatch thunk of Collection.endIndex.getter();
  (*(v46 + 8))(v15, v13);
  swift_getAssociatedConformanceWitness();
  LOBYTE(v23) = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v45 + 8))(v12, v9);
  if ((v23 & 1) != 0 && (v27 = v42, (*(v6 + 80))(v18, v53, v6), v28 = v44, swift_getAssociatedConformanceWitness(), dispatch thunk of Collection.endIndex.getter(), (*(v43 + 8))(v27, v28), v55 > v52))
  {
    type metadata accessor for _ContiguousArrayStorage();
    v29 = v51;
    v30 = *(v51 + 72);
    swift_allocObject();
    v31 = static Array._adoptStorage(_:count:)();
    v33 = v32;
    v34 = *(v29 + 16);
    v35 = v50;
    v34(v32, v50, TupleTypeMetadata2);
    v34(v33 + v30, v18, TupleTypeMetadata2);
    _finalizeUninitializedArray<A>(_:)();
    MEMORY[0x1EEE9AC00](v31);
    v36 = v41;
    *(&v41 - 2) = v53;
    *(&v41 - 1) = v36;
    ListCoreDataSource.visitRowsAt<A>(_:visitor:)(partial apply for closure #1 in ListCoreDataSource.canMoveCell(from:to:), MEMORY[0x1E69E6370], &v54);

    v37 = *(v29 + 8);
    v37(v18, TupleTypeMetadata2);
    v37(v35, TupleTypeMetadata2);
    v38 = v54;
  }

  else
  {
    v39 = *(v51 + 8);
    v39(v18, TupleTypeMetadata2);
    v39(v50, TupleTypeMetadata2);
    v38 = 0;
  }

  return v38 & 1;
}

uint64_t specialized ListCoreDataSource.moveCell(fromRowAt:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, Int)>, type metadata accessor for (Int, Int), MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63410;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  *(inited + 56) = a4;
  v13 = v4;
  v10 = specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in ListCoreDataSource.visitRowsAt<A>(_:visitor:), &v12, inited);

  if (v10[2])
  {
    specialized closure #1 in ListCoreDataSource.moveCell(fromRowAt:to:)(v10, a1, a2, a3, a4);
  }
}

uint64_t ListCoreDataSource.moveCell(fromRowAt:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a6;
  v26 = a3;
  v27 = a4;
  v24 = a1;
  v25 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  v16 = *(*(AssociatedTypeWitness - 8) + 16);
  v16(&v24 - v14, v24, AssociatedTypeWitness, v13);
  v17 = v26;
  *&v15[*(TupleTypeMetadata2 + 48)] = v25;
  (v16)(v11, v17, AssociatedTypeWitness);
  *&v11[*(TupleTypeMetadata2 + 48)] = v27;
  type metadata accessor for _ContiguousArrayStorage();
  v18 = v9[9];
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  v20 = v19;
  v21 = v9[2];
  v21(v19, v15, TupleTypeMetadata2);
  v21(v20 + v18, v11, TupleTypeMetadata2);
  _finalizeUninitializedArray<A>(_:)();
  v29 = a5;
  v30 = v28;
  v31 = v15;
  v32 = v11;
  ListCoreDataSource.visitRowsAt<A>(_:visitor:)(partial apply for closure #1 in ListCoreDataSource.moveCell(fromRowAt:to:), MEMORY[0x1E69E7CA8] + 8, &v33);

  v22 = v9[1];
  v22(v11, TupleTypeMetadata2);
  return (v22)(v15, TupleTypeMetadata2);
}

uint64_t ListCoreDataSource.deleteCell(forRow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21[-v15];
  v17 = *(AssociatedTypeWitness - 8);
  (*(v17 + 16))(&v21[-v15], a1, AssociatedTypeWitness, v14);
  *&v16[*(TupleTypeMetadata2 + 48)] = a2;
  (*(v10 + 16))(v12, v16, TupleTypeMetadata2);
  v18 = *&v12[*(TupleTypeMetadata2 + 48)];
  v22 = a3;
  v23 = a4;
  v24 = v16;
  ListCoreDataSource.visitRowAt<A>(_:visitor:)(v12, v18, partial apply for closure #1 in ListCoreDataSource.deleteCell(forRow:), v21, a3, MEMORY[0x1E69E7CA8] + 8, a4, partial apply for closure #1 in ListCoreDataSource.visitRowAt<A>(_:visitor:), &v25, _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF);
  (*(v17 + 8))(v12, AssociatedTypeWitness);
  return (*(v10 + 8))(v16, TupleTypeMetadata2);
}

uint64_t specialized ListCoreDataSource.selectionValue(forRowAt:respectSelectionDisabled:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int8x16_t *a4@<X8>)
{
  TableDataSourceAdaptor.contextForItem(index:)(a1, a2, v32);
  outlined init with copy of _RowVisitationContext<TableDataSourceAdaptor>?(v32, &v20);
  if (!v29)
  {
    result = outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v32, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>?, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
LABEL_11:
    v8 = 0;
    v6 = 0;
    v7 = 0;
    v12 = 0uLL;
    goto LABEL_12;
  }

  v18[10] = v30;
  v19[0] = v31[0];
  *(v19 + 11) = *(v31 + 11);
  v18[6] = v26;
  v18[7] = v27;
  v18[8] = v28;
  v18[9] = v29;
  v18[2] = v22;
  v18[3] = v23;
  v18[4] = v24;
  v18[5] = v25;
  v18[0] = v20;
  v18[1] = v21;
  specialized _RowVisitationContext.selectionValue(respectSelectionDisabled:)(&v14, a3 & 1, *&v21);
  v13 = v14;
  v6 = v16;
  if (v16)
  {
    v7 = v17;
  }

  else
  {
    v7 = 0;
  }

  if (v16)
  {
    v8 = v15;
  }

  else
  {
    v8 = 0;
  }

  _s7SwiftUI15MoveInteractionVWOhTm_0(v18, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
  result = outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v32, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>?, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
  if (!v6)
  {
    goto LABEL_11;
  }

  v10.i64[0] = 0;
  v11.i64[0] = v6;
  v12 = vandq_s8(v13, vdupq_lane_s64(vmvnq_s8(vceqq_s64(v11, v10)).i64[0], 0));
LABEL_12:
  *a4 = v12;
  a4[1].i64[0] = v8;
  a4[1].i64[1] = v6;
  a4[2].i64[0] = v7;
  return result;
}

uint64_t ListCoreDataSource.canMoveCell(fromRowAt:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v7 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  type metadata accessor for IndexPath();
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v24 == v23)
  {
    v14 = 0;
  }

  else
  {
    v15 = ListDiffable.rowIndex(at:)(v13, v21, a3, v7);
    v16 = ListDiffable.rowIndex(at:)(v10, a2, a3, v7);
    v14 = (*(a4 + 192))(v13, v15, v10, v16, a3, a4);
    v17 = *(v8 + 8);
    v18 = AssociatedTypeWitness;
    v17(v10, AssociatedTypeWitness);
    v17(v13, v18);
  }

  return v14 & 1;
}

uint64_t ListCoreDataSource.moveCell(fromRowAt:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v20 = a4;
  v6 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  type metadata accessor for IndexPath();
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v22 == v21)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v14 = ListDiffable.rowIndex(at:)(v13, v19, a3, v6);
    v15 = ListDiffable.rowIndex(at:)(v10, a2, a3, v6);
    (*(v20 + 200))(v13, v14, v10, v15, a3);
    v16 = *(v8 + 8);
    v16(v10, AssociatedTypeWitness);
    return (v16)(v13, AssociatedTypeWitness);
  }

  return result;
}

uint64_t ListCoreDataSource.configureHeader(_:transaction:forSectionAtOffset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v16 - v13;
  ListDiffable.sectionIndex(atOffset:)(a3, a4, v10);
  (*(a5 + 88))(a1, a2, v14, a4, a5);
  return (*(v12 + 8))(v14, AssociatedTypeWitness);
}

uint64_t ListCoreDataSource.configureFooter(_:transaction:forSectionAtOffset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v16 - v13;
  ListDiffable.sectionIndex(atOffset:)(a3, a4, v10);
  (*(a5 + 96))(a1, a2, v14, a4, a5);
  return (*(v12 + 8))(v14, AssociatedTypeWitness);
}

uint64_t ListCoreDataSource.deleteCell(forRowAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13 - v9;
  v11 = ListDiffable.rowIndex(at:)(&v13 - v9, a1, a2, v6);
  (*(a3 + 208))(v10, v11, a2, a3);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t ListCoreDataSource.canMoveCell(forRowAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13 - v9;
  v11 = ListDiffable.rowIndex(at:)(&v13 - v9, a1, a2, v6);
  LOBYTE(v3) = (*(v3 + 184))(v10, v11, a2, v3);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return v3 & 1;
}

uint64_t ListCoreDataSource.cornerRadius(forSectionAtOffset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13 - v9;
  ListDiffable.sectionIndex(atOffset:)(a1, a2, v6);
  v11 = (*(a3 + 120))(v10, a2, a3);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return v11;
}

uint64_t specialized ListCoreDataSource.visitRowAt<A>(_:visitor:)(unint64_t a1, uint64_t a2)
{
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(0, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v10 - v5);
  TableDataSourceAdaptor.contextForItem(index:)(a1, a2, v17);
  outlined init with copy of _RowVisitationContext<TableDataSourceAdaptor>?(v17, v13);
  if (v14)
  {
    v11[10] = v15;
    v12[0] = v16[0];
    *(v12 + 11) = *(v16 + 11);
    v11[6] = v13[6];
    v11[7] = v13[7];
    v11[8] = v13[8];
    v11[9] = v14;
    v11[2] = v13[2];
    v11[3] = v13[3];
    v11[4] = v13[4];
    v11[5] = v13[5];
    v11[0] = v13[0];
    v11[1] = v13[1];
    v10[1] = *(&v14 + 1);
    ViewTraitCollection.moveInteraction.getter(v6);
    v7 = type metadata accessor for MoveInteraction();
    if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
    {
      outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v6, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction);
      v8 = 0;
    }

    else
    {
      v8 = *v6 != 0;
      _s7SwiftUI15MoveInteractionVWOhTm_0(v6, type metadata accessor for MoveInteraction);
    }

    _s7SwiftUI15MoveInteractionVWOhTm_0(v11, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
    outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v17, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>?, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
  }

  else
  {
    outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v17, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>?, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
    return 2;
  }

  return v8;
}

uint64_t specialized ListCoreDataSource.visitRowAt<A>(_:visitor:)(unint64_t a1, uint64_t a2, void (*a3)(unsigned __int8 *__return_ptr, _OWORD *))
{
  TableDataSourceAdaptor.contextForItem(index:)(a1, a2, v13);
  outlined init with copy of _RowVisitationContext<TableDataSourceAdaptor>?(v13, v9);
  if (v10)
  {
    v7[10] = v11;
    v8[0] = v12[0];
    *(v8 + 11) = *(v12 + 11);
    v7[6] = v9[6];
    v7[7] = v9[7];
    v7[8] = v9[8];
    v7[9] = v10;
    v7[2] = v9[2];
    v7[3] = v9[3];
    v7[4] = v9[4];
    v7[5] = v9[5];
    v7[0] = v9[0];
    v7[1] = v9[1];
    a3(&v6, v7);
    v4 = v6;
    _s7SwiftUI15MoveInteractionVWOhTm_0(v7, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
    outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v13, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>?, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
  }

  else
  {
    outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v13, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>?, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
    return 1;
  }

  return v4;
}

uint64_t ListCoreDataSource.visitRowsAt<A>(_:visitor:)@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  type metadata accessor for Array();
  type metadata accessor for _RowVisitationContext();
  swift_getWitnessTable();
  v6 = Sequence.compactMap<A>(_:)();
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  }

  else
  {
    a1(v6);

    return (*(*(a2 - 8) + 56))(a3, 0, 1, a2);
  }
}

uint64_t closure #1 in ListCoreDataSource.visitRowsAt<A>(_:visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v15 - v11;
  (*(v13 + 16))(v15 - v11, a1, TupleTypeMetadata2, v10);
  (*(a5 + 224))(v12, *&v12[*(TupleTypeMetadata2 + 48)], a3, a5);
  return (*(*(AssociatedTypeWitness - 8) + 8))(v12, AssociatedTypeWitness);
}

uint64_t closure #1 in ListCoreDataSource.performDrop(to:)@<X0>(char a1@<W1>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  type metadata accessor for _RowVisitationContext();

  v6 = ViewTraitCollection.insertInteraction(for:)(a1 & 1);

  if (v6 != 1)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getTupleTypeMetadata2();
    v8 = type metadata accessor for DropCoordinator();
    OnInsertInteraction.insert(_:)(*(a2 + *(v8 + 28)));
    result = outlined consume of OnInsertInteraction?(v6);
  }

  *a3 = v6 == 1;
  return result;
}

uint64_t specialized closure #1 in ListCoreDataSource.canMoveCell(from:to:)(uint64_t a1)
{
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(0, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for MoveInteraction();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  if (*(a1 + 16) == 2)
  {
    outlined init with copy of _RowVisitationContext<TableDataSourceAdaptor>(a1 + 32, v23);
    v22 = v24;
    ViewTraitCollection.moveInteraction.getter(v7);
    _s7SwiftUI15MoveInteractionVWOhTm_0(v23, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
    v15 = *(v9 + 48);
    if (v15(v7, 1, v8) == 1)
    {
      outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v7, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction);
    }

    else
    {
      outlined init with take of DeleteInteraction(v7, v14, type metadata accessor for MoveInteraction);
      outlined init with copy of _RowVisitationContext<TableDataSourceAdaptor>(a1 + 240, v23);
      v22 = v24;
      ViewTraitCollection.moveInteraction.getter(v4);
      _s7SwiftUI15MoveInteractionVWOhTm_0(v23, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
      if (v15(v4, 1, v8) == 1)
      {
        _s7SwiftUI15MoveInteractionVWOhTm_0(v14, type metadata accessor for MoveInteraction);
        outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v4, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction);
      }

      else
      {
        outlined init with take of DeleteInteraction(v4, v11, type metadata accessor for MoveInteraction);
        v16 = *(v8 + 28);
        v17 = *(v11 + v16);
        v18 = *&v14[v16];
        _s7SwiftUI15MoveInteractionVWOhTm_0(v14, type metadata accessor for MoveInteraction);
        if (v17 == v18)
        {
          v19 = *v11;
          outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*v11, v11[1]);
          _s7SwiftUI15MoveInteractionVWOhTm_0(v11, type metadata accessor for MoveInteraction);
          if (v19)
          {
            outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v19);
            return 1;
          }
        }

        else
        {
          _s7SwiftUI15MoveInteractionVWOhTm_0(v11, type metadata accessor for MoveInteraction);
        }
      }
    }
  }

  return 0;
}

uint64_t closure #1 in ListCoreDataSource.canMoveCell(from:to:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(0, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  v8 = type metadata accessor for _RowVisitationContext();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for MoveInteraction();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v33 = (&v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v32 - v20;
  result = MEMORY[0x18D00CD40](a1, v8, v19);
  if (result == 2)
  {
    Array.subscript.getter();
    _RowVisitationContext.moveInteraction.getter(v8);
    v32 = *(v9 + 8);
    v32(v14, v8);
    v23 = *(v16 + 48);
    if (v23(v7, 1, v15) != 1)
    {
      outlined init with take of DeleteInteraction(v7, v21, type metadata accessor for MoveInteraction);
      Array.subscript.getter();
      v7 = v34;
      _RowVisitationContext.moveInteraction.getter(v8);
      v32(v11, v8);
      if (v23(v7, 1, v15) != 1)
      {
        v26 = v33;
        outlined init with take of DeleteInteraction(v7, v33, type metadata accessor for MoveInteraction);
        v27 = *(v15 + 28);
        v28 = *(v26 + v27);
        v29 = *&v21[v27];
        _s7SwiftUI15MoveInteractionVWOhTm_0(v21, type metadata accessor for MoveInteraction);
        v30 = v28 == v29;
        v25 = v35;
        if (v30)
        {
          v31 = *v26;
          outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*v26, v26[1]);
          result = _s7SwiftUI15MoveInteractionVWOhTm_0(v26, type metadata accessor for MoveInteraction);
          if (v31)
          {
            result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v31);
            v24 = 1;
            goto LABEL_7;
          }
        }

        else
        {
          result = _s7SwiftUI15MoveInteractionVWOhTm_0(v26, type metadata accessor for MoveInteraction);
        }

        v24 = 0;
        goto LABEL_7;
      }

      _s7SwiftUI15MoveInteractionVWOhTm_0(v21, type metadata accessor for MoveInteraction);
    }

    result = outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v7, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction);
  }

  v24 = 0;
  v25 = v35;
LABEL_7:
  *v25 = v24;
  return result;
}

void specialized closure #1 in ListCoreDataSource.moveCell(fromRowAt:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(0, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for MoveInteraction();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = a2;
  v30[1] = a3;
  v29[0] = a4;
  v29[1] = a5;
  v17 = *(a1 + 16);
  if (!v17)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  outlined init with copy of _RowVisitationContext<TableDataSourceAdaptor>(a1 + 32, v27);
  v25 = v28;
  ViewTraitCollection.moveInteraction.getter(v12);
  _s7SwiftUI15MoveInteractionVWOhTm_0(v27, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v18 = outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v12, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction);
    MEMORY[0x1EEE9AC00](v18);
    *(&v22 - 2) = v30;
    static Log.internalError(_:)();
    return;
  }

  outlined init with take of DeleteInteraction(v12, v16, type metadata accessor for MoveInteraction);
  if (v17 == 1)
  {
    goto LABEL_11;
  }

  outlined init with copy of _RowVisitationContext<TableDataSourceAdaptor>(a1 + 240, v27);
  v24 = v28;
  v22 = 0;
  v23 = 1;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v19 = v25;
  v20 = v26;
  v21 = _s7SwiftUI15MoveInteractionVWOhTm_0(v27, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>);
  if (v20)
  {
    MEMORY[0x1EEE9AC00](v21);
    *(&v22 - 2) = v29;
    static Log.internalError(_:)();
  }

  else
  {
    MoveInteraction.move(to:)(v19);
  }

  _s7SwiftUI15MoveInteractionVWOhTm_0(v16, type metadata accessor for MoveInteraction);
}

uint64_t closure #1 in ListCoreDataSource.moveCell(fromRowAt:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a3;
  v35 = a2;
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(0, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v36 = a4;
  v37 = a5;
  v11 = type metadata accessor for _RowVisitationContext();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v18 = type metadata accessor for MoveInteraction();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  Array.subscript.getter();
  _RowVisitationContext.moveInteraction.getter(v11);
  v22 = *(v12 + 8);
  v22(v17, v11);
  if ((*(v19 + 48))(v10, 1, v18) == 1)
  {
    v23 = outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v10, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction);
    MEMORY[0x1EEE9AC00](v23);
    v24 = v37;
    *(&v32 - 4) = v36;
    *(&v32 - 3) = v24;
    *(&v32 - 2) = v35;
    return static Log.internalError(_:)();
  }

  else
  {
    v26 = v36;
    v27 = v37;
    outlined init with take of DeleteInteraction(v10, v21, type metadata accessor for MoveInteraction);
    Array.subscript.getter();
    v28 = _RowVisitationContext.dynamicContentOffset.getter();
    v30 = v29;
    v31 = (v22)(v14, v11);
    if (v30)
    {
      MEMORY[0x1EEE9AC00](v31);
      *(&v32 - 4) = v26;
      *(&v32 - 3) = v27;
      *(&v32 - 2) = v33;
      static Log.internalError(_:)();
    }

    else
    {
      MoveInteraction.move(to:)(v28);
    }

    return _s7SwiftUI15MoveInteractionVWOhTm_0(v21, type metadata accessor for MoveInteraction);
  }
}

uint64_t implicit closure #1 in closure #1 in ListCoreDataSource.moveCell(fromRowAt:to:)(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v6 = v10 - v5;
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(72);
  MEMORY[0x18D00C9B0](0xD00000000000001DLL, 0x800000018CD5A530);
  v7 = *(TupleTypeMetadata2 + 48);
  v8 = *(a1 + v7);
  (*(*(AssociatedTypeWitness - 8) + 16))(v6, a1, AssociatedTypeWitness);
  *&v6[v7] = v8;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v4 + 8))(v6, TupleTypeMetadata2);
  MEMORY[0x18D00C9B0](0xD000000000000029, 0x800000018CD5A550);
  return v10[0];
}

uint64_t implicit closure #2 in closure #1 in ListCoreDataSource.moveCell(fromRowAt:to:)(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v6 = v10 - v5;
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(42);
  MEMORY[0x18D00C9B0](0xD000000000000028, 0x800000018CD5A500);
  v7 = *(TupleTypeMetadata2 + 48);
  v8 = *(a1 + v7);
  (*(*(AssociatedTypeWitness - 8) + 16))(v6, a1, AssociatedTypeWitness);
  *&v6[v7] = v8;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v4 + 8))(v6, TupleTypeMetadata2);
  return v10[0];
}

uint64_t specialized closure #1 in ListCoreDataSource.deleteCell(forRow:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(0, &lazy cache variable for type metadata for DeleteInteraction?, type metadata accessor for DeleteInteraction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (v15 - v7);
  v9 = type metadata accessor for DeleteInteraction();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = a2;
  v16[1] = a3;
  v15[1] = *(a1 + 152);
  ViewTraitCollection.deleteInteraction.getter(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v13 = outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v8, &lazy cache variable for type metadata for DeleteInteraction?, type metadata accessor for DeleteInteraction);
    MEMORY[0x1EEE9AC00](v13);
    v15[-2] = v16;
    static Log.internalError(_:)();
  }

  else
  {
    outlined init with take of DeleteInteraction(v8, v12, type metadata accessor for DeleteInteraction);
    DeleteInteraction.delete()();
    _s7SwiftUI15MoveInteractionVWOhTm_0(v12, type metadata accessor for DeleteInteraction);
  }

  return 0;
}

uint64_t closure #1 in ListCoreDataSource.deleteCell(forRow:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(0, &lazy cache variable for type metadata for DeleteInteraction?, type metadata accessor for DeleteInteraction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for DeleteInteraction();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for _RowVisitationContext();
  _RowVisitationContext.deleteInteraction.getter(v15);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v16 = outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(v10, &lazy cache variable for type metadata for DeleteInteraction?, type metadata accessor for DeleteInteraction);
    MEMORY[0x1EEE9AC00](v16);
    *(&v18 - 4) = a2;
    *(&v18 - 3) = a3;
    *(&v18 - 2) = a1;
    result = static Log.internalError(_:)();
  }

  else
  {
    outlined init with take of DeleteInteraction(v10, v14, type metadata accessor for DeleteInteraction);
    DeleteInteraction.delete()();
    result = _s7SwiftUI15MoveInteractionVWOhTm_0(v14, type metadata accessor for DeleteInteraction);
  }

  *a4 = 0;
  return result;
}

uint64_t implicit closure #1 in closure #1 in ListCoreDataSource.deleteCell(forRow:)()
{
  _StringGuts.grow(_:)(76);
  MEMORY[0x18D00C9B0](0xD00000000000001FLL, 0x800000018CD5A4B0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](0xD00000000000002BLL, 0x800000018CD5A4D0);
  return 0;
}

uint64_t outlined init with copy of _RowVisitationContext<TableDataSourceAdaptor>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(0, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>?, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized closure #1 in ListCoreDataSource.performDrop(to:)@<X0>(char a1@<W1>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  v5._rawValue = *(a2 + 24);

  v6 = ViewTraitCollection.insertInteraction(for:)(a1 & 1);

  if (v6 != 1)
  {
    OnInsertInteraction.insert(_:)(v5);
    result = outlined consume of OnInsertInteraction?(v6);
  }

  *a3 = v6 == 1;
  return result;
}

uint64_t specialized implicit closure #1 in closure #1 in ListCoreDataSource.moveCell(fromRowAt:to:)()
{
  _StringGuts.grow(_:)(72);
  MEMORY[0x18D00C9B0](0xD00000000000001DLL, 0x800000018CD5A530);
  type metadata accessor for (Int, Int)();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](0xD000000000000029, 0x800000018CD5A550);
  return 0;
}

uint64_t specialized implicit closure #2 in closure #1 in ListCoreDataSource.moveCell(fromRowAt:to:)()
{
  _StringGuts.grow(_:)(42);
  MEMORY[0x18D00C9B0](0xD000000000000028, 0x800000018CD5A500);
  type metadata accessor for (Int, Int)();
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t partial apply for specialized closure #1 in ListCoreDataSource.deleteCell(forRow:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized closure #1 in ListCoreDataSource.deleteCell(forRow:)(a1, **(v2 + 16), *(*(v2 + 16) + 8));
  *a2 = result & 1;
  return result;
}

uint64_t outlined destroy of _RowVisitationContext<TableDataSourceAdaptor>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t specialized implicit closure #1 in closure #1 in ListCoreDataSource.deleteCell(forRow:)()
{
  _StringGuts.grow(_:)(76);
  MEMORY[0x18D00C9B0](0xD00000000000001FLL, 0x800000018CD5A4B0);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](0xD00000000000002BLL, 0x800000018CD5A4D0);
  return 0;
}

void type metadata accessor for (Int, Int)()
{
  if (!lazy cache variable for type metadata for (Int, Int))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Int, Int));
    }
  }
}

void type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with copy of _RowVisitationContext<TableDataSourceAdaptor>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DeleteInteraction(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t partial apply for specialized closure #1 in ListCoreDataSource.visitRowsAt<A>(_:visitor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return TableDataSourceAdaptor.contextForItem(index:)(*a1, *(a1 + 8), a2);
}

{
  return partial apply for specialized closure #1 in ListCoreDataSource.visitRowsAt<A>(_:visitor:)(a1, a2);
}

BOOL partial apply for closure #1 in ListCoreDataSource.canMoveCell(forRowAt:)@<W0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for _RowVisitationContext();
  result = _RowVisitationContext.canMove.getter(v2);
  *a1 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ToolbarLabelStyle.Role()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1 + 5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ToolbarLabelStyle.Role()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1 + 5);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ToolbarLabelStyle.Role@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ToolbarLabelStyle.Role.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t EnvironmentValues.toolbarLabelStyle.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.toolbarLabelStyle : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.toolbarLabelStyle : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarLabelStyleKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

unint64_t lazy protocol witness table accessor for type ToolbarLabelStyle.Role and conformance ToolbarLabelStyle.Role()
{
  result = lazy protocol witness table cache variable for type ToolbarLabelStyle.Role and conformance ToolbarLabelStyle.Role;
  if (!lazy protocol witness table cache variable for type ToolbarLabelStyle.Role and conformance ToolbarLabelStyle.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarLabelStyle.Role and conformance ToolbarLabelStyle.Role);
  }

  return result;
}

BOOL specialized static ToolbarLabelStyle.Data.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((v4 & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      outlined consume of ToolbarLabelStyle.Data(*a1, v3, v4);
      outlined consume of ToolbarLabelStyle.Data(v5, v6, v7);
      return (v5 ^ v2) == 0;
    }

LABEL_6:
    outlined copy of ToolbarLabelStyle.Data(v5, v6, v7);
    outlined consume of ToolbarLabelStyle.Data(v2, v3, v4);
    outlined consume of ToolbarLabelStyle.Data(v5, v6, v7);
    return 0;
  }

  if ((v7 & 0x80000000) == 0)
  {

    goto LABEL_6;
  }

  v18 = *a1;
  v19 = v3;
  v20 = v4 & 0x7F;
  outlined copy of ToolbarLabelStyle.Data(v5, v6, v7);
  outlined copy of ToolbarLabelStyle.Data(v2, v3, v4);
  type metadata accessor for Binding<ToolbarLabelStyle>();
  v11 = v10;
  MEMORY[0x18D00ACC0](&v17);
  v12 = v17;
  v14 = v5;
  v15 = v6;
  v16 = v7 & 0x7F;
  MEMORY[0x18D00ACC0](&v13, v11);
  outlined consume of ToolbarLabelStyle.Data(v2, v3, v4);
  outlined consume of ToolbarLabelStyle.Data(v5, v6, v7);
  return v12 == v13;
}

uint64_t specialized ToolbarLabelStyle.Role.init(rawValue:)(uint64_t a1)
{
  if ((a1 - 5) >= 4)
  {
    return 4;
  }

  else
  {
    return a1 - 5;
  }
}

void type metadata accessor for Binding<ToolbarLabelStyle>()
{
  if (!lazy cache variable for type metadata for Binding<ToolbarLabelStyle>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<ToolbarLabelStyle>);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for ToolbarLabelStyle.Data(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of ToolbarLabelStyle.Data(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for ToolbarLabelStyle.Data(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of ToolbarLabelStyle.Data(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of ToolbarLabelStyle.Data(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for ToolbarLabelStyle.Data(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of ToolbarLabelStyle.Data(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarLabelStyle.Data(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1FFF && *(a1 + 17))
  {
    return (*a1 + 0x1FFF);
  }

  v3 = ((*(a1 + 16) >> 7) | (2 * ((*(a1 + 8) >> 57) & 0x78 | *(a1 + 8) & 7 | (((*(a1 + 16) >> 2) & 0x1F) << 7)))) ^ 0x1FFF;
  if (v3 >> 1 >= 0xFFF)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ToolbarLabelStyle.Data(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x1FFF;
    *(result + 8) = 0;
    if (a3 >= 0x1FFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0xFFF | ((-a2 & 0x1FFF) << 12);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = (v3 >> 5) & 0xFC;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ToolbarLabelStyle.Data(uint64_t result, char a2)
{
  v2 = *(result + 16) & 3 | (a2 << 7);
  *(result + 8) &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 16) = v2;
  return result;
}

uint64_t initializeWithCopy for HeaderFooterConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for HeaderFooterConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for HeaderFooterConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t EnvironmentValues.headerFooterConfiguration.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<HeaderFooterConfigurationKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HeaderFooterConfigurationKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HeaderFooterConfigurationKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HeaderFooterConfigurationKey> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

uint64_t HeaderFooterConfiguration.defaultEdgeInsets(for:)()
{
  if (v0[1] - 1 >= 2)
  {
    v1 = *(v0 + 1);
    v2 = v0[16];
    v3 = v0[17];
    v4 = *v0 ^ 1;
    if (((v1 == 0) & v4 & v2 & v3) == 0 && ((v4 & v2 & 1) == 0 || v1 != 2 && (v3 & 1) == 0))
    {
      if (v1)
      {
        static Edge.Set.horizontal.getter();
        return EdgeInsets.init(_:edges:)();
      }
    }
  }

  return result;
}

uint64_t HeaderFooterConfiguration.font.getter()
{
  if (*v0)
  {
    return 0;
  }

  if (*(v0 + 16) != 1 || !((*(v0 + 8) == 2) | *(v0 + 17) & 1))
  {
  }

  static Font.Weight.semibold.getter();
  return static Font.system(_:design:weight:)();
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance HeaderFooterConfigurationKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EAA3A080;
  v8[2] = xmmword_1EAA3A070;
  v8[3] = unk_1EAA3A080;
  v2 = qword_1EAA3A090;
  v9 = qword_1EAA3A090;
  v4 = static HeaderFooterConfigurationKey.defaultValue;
  v3 = *&word_1EAA3A060;
  v8[0] = static HeaderFooterConfigurationKey.defaultValue;
  v8[1] = *&word_1EAA3A060;
  *(a1 + 32) = xmmword_1EAA3A070;
  *(a1 + 48) = v1;
  *(a1 + 64) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  return outlined init with copy of HeaderFooterConfiguration(v8, v7);
}

uint64_t specialized HeaderFooterConfiguration.Values.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Color.primary.getter();
  static Font.body.getter();
  UIListContentConfiguration.textProperties.getter();
  v8 = UIListContentConfiguration.TextProperties.color.getter();
  v9 = *(v5 + 8);
  v9(v7, v4);
  type metadata accessor for UIKitPlatformColorDefinition();
  v10 = v8;
  v11 = Color.init(_platformColor:definition:)();

  UIListContentConfiguration.textProperties.getter();
  UIListContentConfiguration.TextProperties.font.getter();
  v9(v7, v4);
  v12 = Font.init(_:)();

  UIListContentConfiguration.directionalLayoutMargins.getter();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = type metadata accessor for UIListContentConfiguration();
  result = (*(*(v21 - 8) + 8))(a1, v21);
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v14;
  a2[3] = v16;
  a2[4] = v18;
  a2[5] = v20;
  return result;
}

uint64_t initializeWithCopy for HeaderFooterConfiguration.Values(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;

  return a1;
}

void *assignWithCopy for HeaderFooterConfiguration.Values(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  return a1;
}

_OWORD *assignWithTake for HeaderFooterConfiguration.Values(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;
  return a1;
}

unint64_t lazy protocol witness table accessor for type HeaderFooterConfiguration.Position and conformance HeaderFooterConfiguration.Position()
{
  result = lazy protocol witness table cache variable for type HeaderFooterConfiguration.Position and conformance HeaderFooterConfiguration.Position;
  if (!lazy protocol witness table cache variable for type HeaderFooterConfiguration.Position and conformance HeaderFooterConfiguration.Position)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeaderFooterConfiguration.Position and conformance HeaderFooterConfiguration.Position);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<HeaderFooterConfigurationKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderFooterConfigurationKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderFooterConfigurationKey>);
    }
  }
}

double BorderedProminentButtonStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = *v7;
  v8 = *(v5 + 32);
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_6(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(&v7[v8], &a2[*(v9 + 36)], type metadata accessor for ButtonAction);
  outlined destroy of PrimitiveButtonStyleConfiguration(v7);
  type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>();
  a2[*(v10 + 36)] = 1;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>(0);
  v12 = &a2[*(v11 + 36)];
  *v12 = 0;
  v12[8] = 1;
  KeyPath = swift_getKeyPath();
  v21 = 0;
  v14 = swift_getKeyPath();
  v20[0] = 0;
  outlined consume of Glass?(0, 0, 0, 1);
  v15 = v21;
  v16 = v20[0];
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>();
  v18 = &a2[*(v17 + 36)];
  *v18 = 0;
  v18[8] = 1;
  *(v18 + 3) = 0;
  *(v18 + 4) = 0;
  *(v18 + 2) = 0;
  *&result = 1;
  *(v18 + 40) = xmmword_18CD6A6D0;
  v18[56] = 0;
  *(v18 + 8) = KeyPath;
  v18[72] = v15;
  *(v18 + 10) = v14;
  v18[88] = v16;
  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_6(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<WidgetInterfaceIdiom>, MEMORY[0x1E697FAD8], MEMORY[0x1E697FAD0], MEMORY[0x1E69801E0]);
    _s7SwiftUI28ButtonStyleContainerModifierVyAA07PlattercD0VGMaTm_0(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, lazy protocol witness table accessor for type WidgetBorderedProminentButtonStyle and conformance WidgetBorderedProminentButtonStyle, &type metadata for WidgetBorderedProminentButtonStyle, type metadata accessor for ButtonStyleContainerModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, type metadata accessor for StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>);
    _s7SwiftUI28ButtonStyleContainerModifierVyAA07PlattercD0VGMaTm_0(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<BorderedButtonStyle_Phone>, lazy protocol witness table accessor for type BorderedButtonStyle_Phone and conformance BorderedButtonStyle_Phone, &type metadata for BorderedButtonStyle_Phone, type metadata accessor for ButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>);
    }
  }
}

void type metadata accessor for StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>)
  {
    _s7SwiftUI28ButtonStyleContainerModifierVyAA07PlattercD0VGMaTm_0(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, lazy protocol witness table accessor for type BorderedProminentButtonStyle_PhoneToolbar and conformance BorderedProminentButtonStyle_PhoneToolbar, &type metadata for BorderedProminentButtonStyle_PhoneToolbar, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type BorderedProminentButtonStyle_PhoneToolbar and conformance BorderedProminentButtonStyle_PhoneToolbar()
{
  result = lazy protocol witness table cache variable for type BorderedProminentButtonStyle_PhoneToolbar and conformance BorderedProminentButtonStyle_PhoneToolbar;
  if (!lazy protocol witness table cache variable for type BorderedProminentButtonStyle_PhoneToolbar and conformance BorderedProminentButtonStyle_PhoneToolbar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BorderedProminentButtonStyle_PhoneToolbar and conformance BorderedProminentButtonStyle_PhoneToolbar);
  }

  return result;
}

double BorderedProminentButtonStyle.buttonStyleRepresentation.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = swift_getKeyPath();
  *(a1 + 72) = 0;
  *(a1 + 80) = swift_getKeyPath();
  *(a1 + 88) = 0;
  *a1 = 0;
  *(a1 + 8) = 1;
  outlined consume of Glass?(0, 0, 0, 1);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *&result = 1;
  *(a1 + 40) = xmmword_18CD6A6D0;
  *(a1 + 56) = 0;
  return result;
}

double protocol witness for ButtonStyleConvertible.buttonStyleRepresentation.getter in conformance BorderedProminentButtonStyle@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = swift_getKeyPath();
  *(a1 + 72) = 0;
  *(a1 + 80) = swift_getKeyPath();
  *(a1 + 88) = 0;
  *a1 = 0;
  *(a1 + 8) = 1;
  outlined consume of Glass?(0, 0, 0, 1);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *&result = 1;
  *(a1 + 40) = xmmword_18CD6A6D0;
  *(a1 + 56) = 0;
  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>();
    _s7SwiftUI28ButtonStyleContainerModifierVyAA07PlattercD0VGMaTm_0(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ButtonContainerIsBorderedInput>, lazy protocol witness table accessor for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput, &type metadata for ButtonContainerIsBorderedInput, MEMORY[0x1E697FD28]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, type metadata accessor for StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI8StaticIfVyAA23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceF0VGAA28ButtonStyleContainerModifierVyAA07PlatterjK0VGAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0p5InputG0RzAaRR_AaRR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>, lazy protocol witness table accessor for type BorderedProminentButtonsHaveToolbarStylingInToolbar and conformance BorderedProminentButtonsHaveToolbarStylingInToolbar, lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar> and conformance PrimitiveButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<BorderedProminentButtonsHaveToolbarStylingInToolbar, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI8StaticIfVyAA23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceF0VGAA28ButtonStyleContainerModifierVyAA07PlatterjK0VGAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0p5InputG0RzAaRR_AaRR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<CarPlayInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>, lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst> and conformance PrimitiveButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>>(255);
    lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI8StaticIfVyAA23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceF0VGAA28ButtonStyleContainerModifierVyAA07PlatterjK0VGAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0p5InputG0RzAaRR_AaRR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>, lazy protocol witness table accessor for type ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle> and conformance ButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle> and conformance ButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle> and conformance ButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle> and conformance ButtonStyleContainerModifier<A>)
  {
    _s7SwiftUI28ButtonStyleContainerModifierVyAA07PlattercD0VGMaTm_0(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle>, lazy protocol witness table accessor for type WidgetBorderedProminentButtonStyle and conformance WidgetBorderedProminentButtonStyle, &type metadata for WidgetBorderedProminentButtonStyle, type metadata accessor for ButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStyleContainerModifier<WidgetBorderedProminentButtonStyle> and conformance ButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BorderedProminentButtonsHaveToolbarStylingInToolbar and conformance BorderedProminentButtonsHaveToolbarStylingInToolbar()
{
  result = lazy protocol witness table cache variable for type BorderedProminentButtonsHaveToolbarStylingInToolbar and conformance BorderedProminentButtonsHaveToolbarStylingInToolbar;
  if (!lazy protocol witness table cache variable for type BorderedProminentButtonsHaveToolbarStylingInToolbar and conformance BorderedProminentButtonsHaveToolbarStylingInToolbar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BorderedProminentButtonsHaveToolbarStylingInToolbar and conformance BorderedProminentButtonsHaveToolbarStylingInToolbar);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    _s7SwiftUI28ButtonStyleContainerModifierVyAA07PlattercD0VGMaTm_0(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar>, lazy protocol witness table accessor for type BorderedProminentButtonStyle_PhoneToolbar and conformance BorderedProminentButtonStyle_PhoneToolbar, &type metadata for BorderedProminentButtonStyle_PhoneToolbar, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle_PhoneToolbar> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

void static PointerStyle.image(_:hotSpot:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t outlined copy of PointerStyle.Value(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 a5)
{
  v5 = a5 >> 13;
  if (v5 == 4)
  {
    return outlined copy of Path.Storage(result, a2, a3, a4, a5);
  }

  if (v5 == 3)
  {
  }

  return result;
}

uint64_t outlined consume of PointerStyle.Value(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 a5)
{
  v5 = a5 >> 13;
  if (v5 == 4)
  {
    return outlined consume of Path.Storage(result, a2, a3, a4, a5);
  }

  if (v5 == 3)
  {
  }

  return result;
}

uint64_t initializeWithCopy for PointerStyle(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of PointerStyle.Value(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for PointerStyle(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of PointerStyle.Value(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  outlined consume of PointerStyle.Value(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t assignWithTake for PointerStyle(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = v3;
  outlined consume of PointerStyle.Value(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t getEnumTagSinglePayload for PointerStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFFB && *(a1 + 34))
  {
    return (*a1 + 4091);
  }

  v3 = (*(a1 + 32) & 0xF8 | (*(a1 + 32) >> 13) | (*(a1 + 32) >> 1) & 0xF00) ^ 0xFFF;
  if (v3 >= 0xFFA)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for PointerStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 4091;
    *(result + 8) = 0;
    if (a3 >= 0xFFB)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFB)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 3) & 0x1FF) - (a2 << 9);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (16 * v3) & 0xFE00 | (8 * (v3 & 0x1F));
    }
  }

  return result;
}

uint64_t getEnumTag for PointerStyle.Value(uint64_t a1)
{
  v1 = *(a1 + 32) >> 13;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t destructiveInjectEnumTag for PointerStyle.Value(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 32) = *(result + 32) & 0x107 | (a2 << 13);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = -24576;
  }

  return result;
}

uint64_t View.groupBoxStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GroupBoxStyleModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

unint64_t instantiation function for generic protocol witness table for GroupBoxStyleConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GroupBoxStyleConfiguration.Label and conformance GroupBoxStyleConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GroupBoxStyleConfiguration.Content(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GroupBoxStyleConfiguration.Content and conformance GroupBoxStyleConfiguration.Content();
  *(a1 + 8) = result;
  return result;
}

uint64_t ResolvedGroupBoxStyle.body.getter@<X0>(uint64_t a1@<X8>)
{
  LOBYTE(__src[0]) = 0;
  __src[1] = 0;
  type metadata accessor for GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>();
  lazy protocol witness table accessor for type GroupBoxStyleModifier<DefaultGroupBoxStyle> and conformance GroupBoxStyleModifier<A>(&lazy protocol witness table cache variable for type GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content> and conformance GroupBox<A, B>, type metadata accessor for GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>);
  View._addingBackgroundGroup()();
  v2 = v10[288];
  v3 = v11;
  v8 = v12;
  v4 = v13;
  if (one-time initialization token for contain != -1)
  {
    swift_once();
  }

  v5 = static AccessibilityChildBehavior.contain;
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v10);
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_4(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v6 = swift_allocObject();
  memcpy((v6 + 16), __src, 0x128uLL);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v8;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
  *(a1 + 48) = v5;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedGroupBoxStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedGroupBoxStyle and conformance ResolvedGroupBoxStyle();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedGroupBoxStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedGroupBoxStyle and conformance ResolvedGroupBoxStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t GroupBoxStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v2 + 24))(v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v6, AssociatedTypeWitness, AssociatedConformanceWitness);
  v12 = *(v4 + 8);
  v12(v6, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v12)(v10, AssociatedTypeWitness);
}

void type metadata accessor for GroupBoxStyleModifier<DefaultGroupBoxStyle>()
{
  if (!lazy cache variable for type metadata for GroupBoxStyleModifier<DefaultGroupBoxStyle>)
  {
    lazy protocol witness table accessor for type DefaultGroupBoxStyle and conformance DefaultGroupBoxStyle();
    v0 = type metadata accessor for GroupBoxStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GroupBoxStyleModifier<DefaultGroupBoxStyle>);
    }
  }
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance GroupBoxStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GroupBoxStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

void type metadata accessor for GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>()
{
  if (!lazy cache variable for type metadata for GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>)
  {
    v0 = type metadata accessor for GroupBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type GroupBoxStyleModifier<DefaultGroupBoxStyle> and conformance GroupBoxStyleModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for _UnaryViewAdaptor<ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier>>()
{
  if (!lazy cache variable for type metadata for _UnaryViewAdaptor<ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for _UnaryViewAdaptor();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UnaryViewAdaptor<ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier>)
  {
    type metadata accessor for ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>)
  {
    type metadata accessor for GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>();
    _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_4(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6980B20]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier>();
    lazy protocol witness table accessor for type ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>>();
    lazy protocol witness table accessor for type GroupBoxStyleModifier<DefaultGroupBoxStyle> and conformance GroupBoxStyleModifier<A>(&lazy protocol witness table cache variable for type GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content> and conformance GroupBox<A, B>, type metadata accessor for GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>);
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Int> and conformance _EnvironmentKeyTransformModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GroupBox<GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content>, _EnvironmentKeyTransformModifier<Int>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Int> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Int> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Int> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_4(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Int> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.defaultForegroundStyle : EnvironmentValues@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.defaultForegroundStyle.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for EnvironmentValues.tint : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = MEMORY[0x18D0065B0](a1, a2);
  *a3 = result;
  return result;
}

uint64_t DefaultListButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>, Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>();
  v9 = (a2 + *(v8 + 44));
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_8(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *v9 = *v7;
  v10 = *(v5 + 32);
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_4(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_8(&v7[v10], &v9[*(v11 + 36)], type metadata accessor for ButtonAction);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_3(v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  type metadata accessor for StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>();
  v13 = &v9[*(v12 + 44)];
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_8(a1, v13, type metadata accessor for PrimitiveButtonStyleConfiguration);
  v14 = type metadata accessor for DefaultListButtonStyle.ListButton();
  v15 = v13 + v14[5];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = v13 + v14[6];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = v13 + v14[7];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  return _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_8(v9, a2, type metadata accessor for Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>);
}

uint64_t DefaultListButtonStyle.ListButton.body.getter()
{
  v1 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v24 = &type metadata for FocusableOptions;
  v25 = &protocol witness table for FocusableOptions;
  v23 = 8;
  v22[0] = 1;
  v26 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v27 = 0;
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_8(v0, &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PrimitiveButtonStyleConfiguration);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of PrimitiveButtonStyleConfiguration(&v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4);
  KeyPath = swift_getKeyPath();
  v15[0] = 0;
  v7 = swift_getKeyPath();
  v21 = 0;
  v8 = swift_getKeyPath();
  v20 = 0;
  v28 = partial apply for implicit closure #2 in implicit closure #1 in FlexibleBorderedButtonStyle.makeBody(configuration:);
  v29 = v5;
  v30 = 1;
  v31 = KeyPath;
  v32 = v15[0];
  v34 = 0;
  v35 = 0;
  v33 = v7;
  v36 = 0;
  v37 = v21;
  v38 = v8;
  v39 = 0;
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_8(v22, v15, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>);
  v16 = v9;
  v17 = 0;
  v18 = v10;
  v19 = 0;
  v14 = v0;
  v13 = v0;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>(0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type ListButtonStyleDisabledOpacityModifier and conformance ListButtonStyleDisabledOpacityModifier);
  lazy protocol witness table accessor for type ButtonPrimaryTintListStyleContextPredicate and conformance ButtonPrimaryTintListStyleContextPredicate();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>> and conformance <> ModifiedContent<A, B>();
  View.staticIf<A, B, C>(_:then:else:)();
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_3(v15, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>);
  return _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_3(v22, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>);
}

uint64_t closure #1 in DefaultListButtonStyle.ListButton.body.getter@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = type metadata accessor for DefaultListButtonStyle.ListButton();
  v8 = specialized Environment.wrappedValue.getter(*&a2[*(v7 + 20)], a2[*(v7 + 20) + 8]);
  v9 = specialized Environment.wrappedValue.getter(*&a2[*(v7 + 24)], a2[*(v7 + 24) + 8]);
  if (!v9)
  {
    v9 = static HierarchicalShapeStyle.sharedPrimary.getter();
  }

  v10 = 256;
  if ((v8 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = v10 | v6;
  result = _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_8(a1, a3, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>);
  *(a3 + 184) = v11;
  *(a3 + 192) = v9;
  return result;
}

uint64_t closure #2 in DefaultListButtonStyle.ListButton.body.getter@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = *a2;
  v7 = type metadata accessor for DefaultListButtonStyle.ListButton();
  LOBYTE(v3) = specialized Environment.wrappedValue.getter(*&v3[*(v7 + 20)], v3[*(v7 + 20) + 8]);
  v8 = AnyShapeStyle.init<A>(_:)();
  v9 = 256;
  if ((v3 & 1) == 0)
  {
    v9 = 0;
  }

  v10 = v9 | v6;
  result = _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_8(a1, a3, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>);
  *(a3 + 184) = v10;
  *(a3 + 192) = v8;
  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ListButtonStyleDisabledOpacityModifier@<X0>(double *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  result = specialized Environment.wrappedValue.getter(*(v1 + 16), *(v1 + 24));
  v6 = 1.0;
  if ((result & 1) == 0)
  {
    result = specialized Environment.wrappedValue.getter(v3, v4);
    if (result)
    {

      v6 = 0.5;
    }
  }

  *a1 = v6;
  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ButtonPrimaryTintListStyleContextPredicate()
{
  if (static StyleContextAcceptsPredicate.evaluate(inputs:)())
  {
    v0 = 1;
  }

  else
  {
    v0 = static StyleContextAcceptsPredicate.evaluate(inputs:)();
  }

  return v0 & 1;
}

uint64_t View.automaticListButtonStyle<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a4;
  v17 = a5;
  v18 = a1;
  v19 = a6;
  v20 = a2;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WrappedButtonStyle();
  swift_getWitnessTable();
  v10 = type metadata accessor for ButtonStyleModifier();
  MEMORY[0x1EEE9AC00](v10);
  swift_getWitnessTable();
  v11 = type metadata accessor for AutomaticStyleOverrideModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v7 + 16))(v9, v18, a3, v13);
  ButtonStyleModifier.init<A>(style:)(v9, a3);
  AutomaticStyleOverrideModifier.init(_:modifier:)();
  MEMORY[0x18D00A570](v15, v20, v11, v21);
  return (*(v12 + 8))(v15, v11);
}

{
  v21 = a4;
  v17 = a5;
  v18 = a1;
  v19 = a6;
  v20 = a2;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ButtonStyleModifier();
  MEMORY[0x1EEE9AC00](v10);
  swift_getWitnessTable();
  v11 = type metadata accessor for AutomaticStyleOverrideModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v7 + 16))(v9, v18, a3, v13);
  FormatInputToString.init(format:)(v9, a3, v17);
  AutomaticStyleOverrideModifier.init(_:modifier:)();
  MEMORY[0x18D00A570](v15, v20, v11, v21);
  return (*(v12 + 8))(v15, v11);
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>, Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>, Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_4(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, MEMORY[0x1E697DF50], MEMORY[0x1E697DF48], MEMORY[0x1E697EC20]);
    type metadata accessor for _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>(255, &lazy cache variable for type metadata for _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>, type metadata accessor for Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>, lazy protocol witness table accessor for type Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>> and conformance <A> Group<A>);
    type metadata accessor for Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>, Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>);
    }
  }
}

void type metadata accessor for Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>()
{
  if (!lazy cache variable for type metadata for Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>)
  {
    type metadata accessor for StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>();
    v0 = type metadata accessor for Group();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>);
    }
  }
}

void type metadata accessor for StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>()
{
  if (!lazy cache variable for type metadata for StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_4(255, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
    type metadata accessor for DefaultListButtonStyle.ListButton();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>);
    }
  }
}

uint64_t type metadata accessor for DefaultListButtonStyle.ListButton()
{
  result = type metadata singleton initialization cache for DefaultListButtonStyle.ListButton;
  if (!type metadata singleton initialization cache for DefaultListButtonStyle.ListButton)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>> and conformance <A> Group<A>)
  {
    type metadata accessor for Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>();
    lazy protocol witness table accessor for type StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>();
    lazy protocol witness table accessor for type IsToggleButton and conformance IsToggleButton();
    lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>();
    lazy protocol witness table accessor for type _ViewModifier_Content<ListButtonStyleDisabledOpacityModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type DefaultListButtonStyle.ListButton and conformance DefaultListButtonStyle.ListButton, type metadata accessor for DefaultListButtonStyle.ListButton);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ListButtonStyleDisabledOpacityModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void *initializeBufferWithCopyOfBuffer for DefaultListButtonStyle.ListButton(_BYTE *a1, _BYTE *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    *a1 = *a2;
    v7 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
    v8 = v4 + v7;
    v9 = &a2[v7];
    type metadata accessor for ButtonAction();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v26 = *v9;
      v27 = *(v9 + 1);
      v28 = v9[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v9, v27, v28);
      *v8 = v26;
      *(v8 + 1) = v27;
      v8[16] = v28;
      v29 = *(v9 + 5);
      v30 = *(v9 + 24);
      *(v8 + 24) = v30;
      *(v8 + 5) = v29;
      v31 = v30;
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v11 = *v9;
        v12 = *(v9 + 1);
        v14 = *(v9 + 2);
        v13 = *(v9 + 3);
        v49 = v9[34];
        v15 = *(v9 + 16);
        outlined copy of Environment<OpenURLAction>.Content(*v9, v12, v14, v13, v15, v49);
        *v8 = v11;
        *(v8 + 1) = v12;
        *(v8 + 2) = v14;
        *(v8 + 3) = v13;
        *(v8 + 16) = v15;
        v8[34] = v49;
        v16 = *(v9 + 5);
        v17 = *(v9 + 6);
        v18 = *(v9 + 7);
        v19 = *(v9 + 8);
        v50 = v9[74];
        LOWORD(v14) = *(v9 + 36);
        outlined copy of Environment<OpenURLAction>.Content(v16, v17, v18, v19, v14, v50);
        *(v8 + 5) = v16;
        *(v8 + 6) = v17;
        *(v8 + 7) = v18;
        *(v8 + 8) = v19;
        *(v8 + 36) = v14;
        v8[74] = v50;
        v20 = *(type metadata accessor for LinkDestination() + 24);
        v21 = &v8[v20];
        v22 = &v9[v20];
        v23 = type metadata accessor for URL();
        (*(*(v23 - 8) + 16))(v21, v22, v23);
        v24 = type metadata accessor for LinkDestination.Configuration();
        v21[*(v24 + 20)] = v22[*(v24 + 20)];
LABEL_9:
        swift_storeEnumTagMultiPayload();
        v33 = a3[5];
        v34 = v4 + v33;
        v35 = &a2[v33];
        v36 = *v35;
        v37 = v35[8];
        outlined copy of Environment<Bool>.Content(*v35, v37);
        *v34 = v36;
        v34[8] = v37;
        v38 = a3[6];
        v39 = v4 + v38;
        v40 = &a2[v38];
        v41 = *v40;
        v42 = v40[8];
        outlined copy of Environment<Color?>.Content(*v40, v42);
        *v39 = v41;
        v39[8] = v42;
        v43 = a3[7];
        v44 = v4 + v43;
        v45 = &a2[v43];
        v46 = *v45;
        v47 = v45[8];
        outlined copy of Environment<Color?>.Content(*v45, v47);
        *v44 = v46;
        v44[8] = v47;
        return v4;
      }

      v32 = *(v9 + 1);
      *v8 = *v9;
      *(v8 + 1) = v32;
    }

    goto LABEL_9;
  }

  v25 = *a2;
  *v4 = *a2;
  v4 = (v25 + ((v5 + 16) & ~v5));

  return v4;
}

uint64_t destroy for DefaultListButtonStyle.ListButton(uint64_t a1, int *a2)
{
  v4 = a1 + *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  type metadata accessor for ButtonAction();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v4, *(v4 + 8), *(v4 + 16));
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined consume of Environment<OpenURLAction>.Content(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 34));
      outlined consume of Environment<OpenURLAction>.Content(*(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 74));
      v6 = *(type metadata accessor for LinkDestination() + 24);
      v7 = type metadata accessor for URL();
      (*(*(v7 - 8) + 8))(v4 + v6, v7);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  outlined consume of Environment<Bool>.Content(*(a1 + a2[5]), *(a1 + a2[5] + 8));
  outlined consume of Environment<AnyShapeStyle?>.Content(*(a1 + a2[6]), *(a1 + a2[6] + 8));
  v8 = (a1 + a2[7]);
  v9 = *v8;
  v10 = *(v8 + 8);

  return outlined consume of Environment<AnyShapeStyle?>.Content(v9, v10);
}

_BYTE *initializeWithCopy for DefaultListButtonStyle.ListButton(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  v7 = &a1[v6];
  v8 = &a2[v6];
  type metadata accessor for ButtonAction();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v25 = *v8;
    v26 = *(v8 + 1);
    v27 = v8[16];
    outlined copy of Environment<AppIntentExecutor?>.Content(*v8, v26, v27);
    *v7 = v25;
    *(v7 + 1) = v26;
    v7[16] = v27;
    v28 = *(v8 + 5);
    v29 = *(v8 + 24);
    *(v7 + 24) = v29;
    *(v7 + 5) = v28;
    v30 = v29;
LABEL_6:

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v31 = *(v8 + 1);
    *v7 = *v8;
    *(v7 + 1) = v31;
    goto LABEL_6;
  }

  v47 = a3;
  v10 = *v8;
  v11 = *(v8 + 1);
  v13 = *(v8 + 2);
  v12 = *(v8 + 3);
  v14 = v8[34];
  v15 = *(v8 + 16);
  outlined copy of Environment<OpenURLAction>.Content(*v8, v11, v13, v12, v15, v14);
  *v7 = v10;
  *(v7 + 1) = v11;
  *(v7 + 2) = v13;
  *(v7 + 3) = v12;
  *(v7 + 16) = v15;
  v7[34] = v14;
  v16 = *(v8 + 5);
  v17 = *(v8 + 6);
  v18 = *(v8 + 7);
  v19 = *(v8 + 8);
  LOBYTE(v11) = v8[74];
  LOWORD(v13) = *(v8 + 36);
  outlined copy of Environment<OpenURLAction>.Content(v16, v17, v18, v19, v13, v11);
  *(v7 + 5) = v16;
  *(v7 + 6) = v17;
  *(v7 + 7) = v18;
  *(v7 + 8) = v19;
  *(v7 + 36) = v13;
  v7[74] = v11;
  a3 = v47;
  v20 = *(type metadata accessor for LinkDestination() + 24);
  v21 = &v7[v20];
  v22 = &v8[v20];
  v23 = type metadata accessor for URL();
  (*(*(v23 - 8) + 16))(v21, v22, v23);
  v24 = type metadata accessor for LinkDestination.Configuration();
  v21[*(v24 + 20)] = v22[*(v24 + 20)];
LABEL_7:
  swift_storeEnumTagMultiPayload();
  v32 = a3[5];
  v33 = &a1[v32];
  v34 = &a2[v32];
  v35 = *v34;
  v36 = v34[8];
  outlined copy of Environment<Bool>.Content(*v34, v36);
  *v33 = v35;
  v33[8] = v36;
  v37 = a3[6];
  v38 = &a1[v37];
  v39 = &a2[v37];
  v40 = *v39;
  v41 = v39[8];
  outlined copy of Environment<Color?>.Content(*v39, v41);
  *v38 = v40;
  v38[8] = v41;
  v42 = a3[7];
  v43 = &a1[v42];
  v44 = &a2[v42];
  v45 = *v44;
  LOBYTE(v40) = v44[8];
  outlined copy of Environment<Color?>.Content(*v44, v40);
  *v43 = v45;
  v43[8] = v40;
  return a1;
}

_BYTE *assignWithCopy for DefaultListButtonStyle.ListButton(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  if (a1 != a2)
  {
    v7 = *(v6 + 24);
    v8 = &a1[v7];
    v9 = &a2[v7];
    _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_3(&a1[v7], type metadata accessor for ButtonAction);
    type metadata accessor for ButtonAction();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v25 = *v9;
      v26 = *(v9 + 1);
      v27 = v9[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v9, v26, v27);
      *v8 = v25;
      *(v8 + 1) = v26;
      v8[16] = v27;
      v28 = *(v9 + 3);
      *(v8 + 3) = v28;
      v29 = *(v9 + 5);
      *(v8 + 4) = *(v9 + 4);
      *(v8 + 5) = v29;
      v30 = v28;
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v11 = *v9;
        v12 = *(v9 + 1);
        v14 = *(v9 + 2);
        v13 = *(v9 + 3);
        v54 = v9[34];
        v15 = *(v9 + 16);
        outlined copy of Environment<OpenURLAction>.Content(*v9, v12, v14, v13, v15, v54);
        *v8 = v11;
        *(v8 + 1) = v12;
        *(v8 + 2) = v14;
        *(v8 + 3) = v13;
        *(v8 + 16) = v15;
        v8[34] = v54;
        v16 = *(v9 + 5);
        v17 = *(v9 + 6);
        v18 = *(v9 + 7);
        v19 = *(v9 + 8);
        v55 = v9[74];
        LOWORD(v14) = *(v9 + 36);
        outlined copy of Environment<OpenURLAction>.Content(v16, v17, v18, v19, v14, v55);
        *(v8 + 5) = v16;
        *(v8 + 6) = v17;
        *(v8 + 7) = v18;
        *(v8 + 8) = v19;
        *(v8 + 36) = v14;
        v8[74] = v55;
        v20 = *(type metadata accessor for LinkDestination() + 24);
        v21 = &v8[v20];
        v22 = &v9[v20];
        v23 = type metadata accessor for URL();
        (*(*(v23 - 8) + 16))(v21, v22, v23);
        v24 = type metadata accessor for LinkDestination.Configuration();
        v21[*(v24 + 20)] = v22[*(v24 + 20)];
LABEL_8:
        swift_storeEnumTagMultiPayload();
        goto LABEL_9;
      }

      v31 = *(v9 + 1);
      *v8 = *v9;
      *(v8 + 1) = v31;
    }

    goto LABEL_8;
  }

LABEL_9:
  v32 = a3[5];
  v33 = &a1[v32];
  v34 = &a2[v32];
  v35 = *v34;
  v36 = v34[8];
  outlined copy of Environment<Bool>.Content(*v34, v36);
  v37 = *v33;
  v38 = v33[8];
  *v33 = v35;
  v33[8] = v36;
  outlined consume of Environment<Bool>.Content(v37, v38);
  v39 = a3[6];
  v40 = &a1[v39];
  v41 = &a2[v39];
  v42 = *v41;
  v43 = v41[8];
  outlined copy of Environment<Color?>.Content(*v41, v43);
  v44 = *v40;
  v45 = v40[8];
  *v40 = v42;
  v40[8] = v43;
  outlined consume of Environment<AnyShapeStyle?>.Content(v44, v45);
  v46 = a3[7];
  v47 = &a1[v46];
  v48 = &a2[v46];
  v49 = *v48;
  v50 = v48[8];
  outlined copy of Environment<Color?>.Content(*v48, v50);
  v51 = *v47;
  v52 = v47[8];
  *v47 = v49;
  v47[8] = v50;
  outlined consume of Environment<AnyShapeStyle?>.Content(v51, v52);
  return a1;
}

_BYTE *initializeWithTake for DefaultListButtonStyle.ListButton(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = type metadata accessor for ButtonAction();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(v8 + 1);
    *v7 = *v8;
    *(v7 + 1) = v10;
    *(v7 + 31) = *(v8 + 31);
    *(v7 + 40) = *(v8 + 40);
    *(v7 + 56) = *(v8 + 56);
    *(v7 + 71) = *(v8 + 71);
    v11 = *(type metadata accessor for LinkDestination() + 24);
    v12 = &v7[v11];
    v13 = &v8[v11];
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 32))(v12, v13, v14);
    v15 = type metadata accessor for LinkDestination.Configuration();
    v12[*(v15 + 20)] = v13[*(v15 + 20)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v7, v8, *(*(v9 - 8) + 64));
  }

  v16 = a3[5];
  v17 = a3[6];
  v18 = &a1[v16];
  v19 = &a2[v16];
  *v18 = *v19;
  v18[8] = v19[8];
  v20 = &a1[v17];
  v21 = &a2[v17];
  *v20 = *v21;
  v20[8] = v21[8];
  v22 = a3[7];
  v23 = &a1[v22];
  v24 = &a2[v22];
  *v23 = *v24;
  v23[8] = v24[8];
  return a1;
}

_BYTE *assignWithTake for DefaultListButtonStyle.ListButton(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  if (a1 != a2)
  {
    v7 = *(v6 + 24);
    v8 = &a1[v7];
    v9 = &a2[v7];
    _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_3(&a1[v7], type metadata accessor for ButtonAction);
    v10 = type metadata accessor for ButtonAction();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = *(v9 + 1);
      *v8 = *v9;
      *(v8 + 1) = v11;
      *(v8 + 31) = *(v9 + 31);
      *(v8 + 40) = *(v9 + 40);
      *(v8 + 56) = *(v9 + 56);
      *(v8 + 71) = *(v9 + 71);
      v12 = *(type metadata accessor for LinkDestination() + 24);
      v13 = &v8[v12];
      v14 = &v9[v12];
      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 32))(v13, v14, v15);
      v16 = type metadata accessor for LinkDestination.Configuration();
      v13[*(v16 + 20)] = v14[*(v16 + 20)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v8, v9, *(*(v10 - 8) + 64));
    }
  }

  v17 = a3[5];
  v18 = &a1[v17];
  v19 = &a2[v17];
  v20 = *v19;
  LOBYTE(v19) = v19[8];
  v21 = *v18;
  v22 = v18[8];
  *v18 = v20;
  v18[8] = v19;
  outlined consume of Environment<Bool>.Content(v21, v22);
  v23 = a3[6];
  v24 = &a1[v23];
  v25 = &a2[v23];
  v26 = *v25;
  LOBYTE(v25) = v25[8];
  v27 = *v24;
  v28 = v24[8];
  *v24 = v26;
  v24[8] = v25;
  outlined consume of Environment<AnyShapeStyle?>.Content(v27, v28);
  v29 = a3[7];
  v30 = &a1[v29];
  v31 = &a2[v29];
  v32 = *v31;
  LOBYTE(v31) = v31[8];
  v33 = *v30;
  v34 = v30[8];
  *v30 = v32;
  v30[8] = v31;
  outlined consume of Environment<AnyShapeStyle?>.Content(v33, v34);
  return a1;
}

uint64_t type metadata completion function for DefaultListButtonStyle.ListButton()
{
  result = type metadata accessor for PrimitiveButtonStyleConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>, Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>, Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>, Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>, Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>();
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
    lazy protocol witness table accessor for type _UnaryViewAdaptor<StaticIf<ButtonPrimaryTintListStyleContextPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>>> and conformance _UnaryViewAdaptor<A>(&lazy protocol witness table cache variable for type _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>> and conformance _UnaryViewAdaptor<A>, &lazy cache variable for type metadata for _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>, type metadata accessor for Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>, lazy protocol witness table accessor for type Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>> and conformance <A> Group<A>);
    lazy protocol witness table accessor for type Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>> and conformance <A> Group<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>, Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _UnaryViewAdaptor<StaticIf<ButtonPrimaryTintListStyleContextPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>>> and conformance _UnaryViewAdaptor<A>(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.foregroundStyle : EnvironmentValues@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundStyle.getter();
  *a1 = result;
  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_4(255, &lazy cache variable for type metadata for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &type metadata for _FocusableModifier, MEMORY[0x1E697E830]);
    type metadata accessor for StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>(255);
    type metadata accessor for _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>);
    }
  }
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier> and conformance <> ModifiedContent<A, B>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_4(255, &lazy cache variable for type metadata for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &type metadata for _FocusableModifier, MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonPrimaryTintListStyleContextPredicate and conformance ButtonPrimaryTintListStyleContextPredicate()
{
  result = lazy protocol witness table cache variable for type ButtonPrimaryTintListStyleContextPredicate and conformance ButtonPrimaryTintListStyleContextPredicate;
  if (!lazy protocol witness table cache variable for type ButtonPrimaryTintListStyleContextPredicate and conformance ButtonPrimaryTintListStyleContextPredicate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonPrimaryTintListStyleContextPredicate and conformance ButtonPrimaryTintListStyleContextPredicate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type ListButtonStyleDisabledOpacityModifier and conformance ListButtonStyleDisabledOpacityModifier);
    lazy protocol witness table accessor for type _ViewModifier_Content<ListButtonStyleDisabledOpacityModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>> and conformance _DefaultForegroundStyleModifier<A>, type metadata accessor for _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t destroy for ListButtonStyleDisabledOpacityModifier(uint64_t a1)
{
  outlined consume of Environment<AnyShapeStyle?>.Content(*a1, *(a1 + 8));
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);

  return outlined consume of Environment<Bool>.Content(v2, v3);
}

uint64_t initializeWithCopy for ListButtonStyleDisabledOpacityModifier(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = a2[2];
  v7 = *(a2 + 24);
  outlined copy of Environment<Bool>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  return a1;
}

uint64_t *assignWithCopy for ListButtonStyleDisabledOpacityModifier(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<AnyShapeStyle?>.Content(v6, v7);
  v8 = a2[2];
  v9 = *(a2 + 24);
  outlined copy of Environment<Bool>.Content(v8, v9);
  v10 = a1[2];
  v11 = *(a1 + 24);
  a1[2] = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Bool>.Content(v10, v11);
  return a1;
}

uint64_t *assignWithTake for ListButtonStyleDisabledOpacityModifier(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<AnyShapeStyle?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = a1[2];
  v10 = *(a1 + 24);
  a1[2] = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<Bool>.Content(v9, v10);
  return a1;
}

void type metadata accessor for _UnaryViewAdaptor<Group<StaticIf<IsToggleButton, Button<PrimitiveButtonStyleConfiguration.Label>, DefaultListButtonStyle.ListButton>>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = type metadata accessor for _UnaryViewAdaptor();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for StaticIf<ButtonPrimaryTintListStyleContextPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>>()
{
  if (!lazy cache variable for type metadata for StaticIf<ButtonPrimaryTintListStyleContextPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<ButtonPrimaryTintListStyleContextPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<ButtonPrimaryTintListStyleContextPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<ButtonPrimaryTintListStyleContextPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<ButtonPrimaryTintListStyleContextPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<ButtonPrimaryTintListStyleContextPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>>();
    lazy protocol witness table accessor for type ButtonPrimaryTintListStyleContextPredicate and conformance ButtonPrimaryTintListStyleContextPredicate();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<ButtonPrimaryTintListStyleContextPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>, ListButtonStyleDisabledOpacityModifier>, _DefaultForegroundStyleModifier<BorderlessButtonLabelShapeStyle<AnyShapeStyle>>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ListButtonStyleDisabledOpacityModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ListButtonStyleDisabledOpacityModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ListButtonStyleDisabledOpacityModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ListButtonStyleDisabledOpacityModifier>, _OpacityEffect>, type metadata accessor for _ViewModifier_Content<ListButtonStyleDisabledOpacityModifier>);
    lazy protocol witness table accessor for type _ViewModifier_Content<ListButtonStyleDisabledOpacityModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ListButtonStyleDisabledOpacityModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<ListButtonStyleDisabledOpacityModifier>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ListButtonStyleDisabledOpacityModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FocusableModifier>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, OnPlatformContainerSelectionModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for _ViewModifier_Content<ListButtonStyleDisabledOpacityModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<ListButtonStyleDisabledOpacityModifier>)
  {
    lazy protocol witness table accessor for type ListButtonStyleDisabledOpacityModifier and conformance ListButtonStyleDisabledOpacityModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<ListButtonStyleDisabledOpacityModifier>);
    }
  }
}

uint64_t specialized static SwiftUIResolvedTextProvider.updateWidgetTextAttachment(_:namedImage:)(void *a1, __int128 *a2)
{
  v27[0] = a1;
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a2[1];
  v32 = *a2;
  v33 = v13;
  v34 = a2[2];
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v35);
  v31[0] = v32;
  v31[1] = v33;
  v31[2] = v34;
  v29[9] = v35[9];
  v30[0] = v36[0];
  *(v30 + 11) = *(v36 + 11);
  v29[5] = v35[5];
  v29[6] = v35[6];
  v29[7] = v35[7];
  v29[8] = v35[8];
  v29[0] = v35[0];
  v29[1] = v35[1];
  v29[2] = v35[2];
  v29[3] = v35[3];
  v29[4] = v35[4];
  outlined init with copy of Image.NamedResolved(&v32, &v28);
  WidgetAuxiliaryViewMetadata.Graphic.Named.init(_:_:)(v31, v29, v12);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of WidgetAuxiliaryViewMetadata.Graphic(v12, v5);
  v14 = *(v10 + 56);
  v14(v5, 0, 1, v9);
  *v8 = 0;
  *(v8 + 1) = 0;
  v15 = v6[6];
  v14(&v8[v15], 1, 1, v9);
  *&v8[v6[7]] = 0;
  v16 = v6[8];
  v17 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
  (*(*(v17 - 8) + 56))(&v8[v16], 1, 1, v17);
  v18 = &v8[v6[9]];
  *(v18 + 41) = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 2) = 0u;
  *v18 = 0u;
  v19 = v6[10];
  v20 = type metadata accessor for URL();
  (*(*(v20 - 8) + 56))(&v8[v19], 1, 1, v20);
  v21 = &v8[v6[11]];
  *v21 = xmmword_18CD633F0;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *(v21 + 3) = 0u;
  outlined assign with take of WidgetAuxiliaryViewMetadata.Graphic?(v5, &v8[v15]);

  *v8 = 0;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  lazy protocol witness table accessor for type WidgetAuxiliaryViewMetadata and conformance WidgetAuxiliaryViewMetadata();
  v22 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v24 = v23;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v22, v24);
  [v27[0] setContents_];

  outlined destroy of WidgetAuxiliaryViewMetadata.Graphic(v12, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
  return outlined destroy of WidgetAuxiliaryViewMetadata.Graphic(v8, type metadata accessor for WidgetAuxiliaryViewMetadata);
}

uint64_t outlined init with copy of WidgetAuxiliaryViewMetadata.Graphic(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WidgetAuxiliaryViewMetadata.Graphic(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized OptionSet<>.insert(_:)(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = *v2;
  if (v3 < 0x10)
  {
    v4 = v3 & a2;
    if (v4 == a2)
    {
LABEL_5:
      *a1 = a2;
      return v4 != a2;
    }

    v5 = v3 | a2;
    if (v5 < 0x10)
    {
      *v2 = v5;
      goto LABEL_5;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static Material._GlassVariant.appIcons(tint:)@<X0>(uint64_t a1@<X0>, void (*a2)(double)@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GlassMaterialProvider.Configuration();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  a2(v11);
  if (!a1)
  {
    return (*(v7 + 32))(a3, v13, v6);
  }

  GlassMaterialProvider.Configuration.tint(_:color:)();

  (*(v7 + 8))(v13, v6);
  v14 = *(v7 + 32);
  v14(v13, v9, v6);
  return (v14)(a3, v13, v6);
}

uint64_t Material._GlassVariant.interactionState(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for InteractionState();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  v13 = *a1;
  outlined init with copy of Material._GlassVariant(v3, a2);
  (*(v7 + 104))(v9, **(&unk_1E7238A90 + v13), v6);
  (*(v7 + 32))(v12, v9, v6);
  return GlassMaterialProvider.Configuration.interactionState.setter();
}

uint64_t Material._GlassVariant.tint(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GlassMaterialProvider.Configuration();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Material._GlassVariant(v1, a1);
  GlassMaterialProvider.Configuration.tint(_:color:)();
  return (*(v4 + 40))(a1, v6, v3);
}

double static Material._GlassVariant.highlightAngle(dynamic:)()
{
  v0 = MEMORY[0x1E6999C40];
  type metadata accessor for GlassMaterialProvider.Subvariant?(0, &lazy cache variable for type metadata for DesignIdiom?, MEMORY[0x1E6999C40]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for DesignIdiom();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  static GlassMaterialProvider.highlightAngle(dynamic:idiom:offset:)();
  v6 = v5;
  outlined destroy of GlassMaterialProvider.Subvariant?(v3, &lazy cache variable for type metadata for DesignIdiom?, v0);
  return v6;
}

uint64_t outlined destroy of GlassMaterialProvider.Subvariant?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for GlassMaterialProvider.Subvariant?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t Material._GlassVariant.focusOffset(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GlassMaterialProvider.Configuration();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Material._GlassVariant(v1, a1);
  GlassMaterialProvider.Configuration.focusOffset(_:)();
  return (*(v4 + 40))(a1, v6, v3);
}

uint64_t Material._GlassVariant.adaptive(colorScheme:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for GlassMaterialProvider.Configuration();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  outlined init with copy of Material._GlassVariant(v2, a2);
  v11 = a1;
  MEMORY[0x18D000940](&v11);
  return (*(v6 + 40))(a2, v8, v5);
}

uint64_t Material._GlassVariant.identity()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GlassMaterialProvider.Configuration();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Material._GlassVariant(v1, a1);
  GlassMaterialProvider.Configuration.identity()();
  return (*(v4 + 40))(a1, v6, v3);
}

uint64_t Material._GlassVariant.fixedBackgroundColor(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GlassMaterialProvider.Configuration();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Material._GlassVariant(v1, a1);
  GlassMaterialProvider.Configuration.fixedBackgroundColor(_:)();
  return (*(v4 + 40))(a1, v6, v3);
}

uint64_t Material._GlassVariant.adaptive(_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for GlassMaterialProvider.Configuration();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Material._GlassVariant(v3, a3);
  a2(a1);
  return (*(v8 + 40))(a3, v10, v7);
}

uint64_t Material._GlassVariant.hash(into:)()
{
  type metadata accessor for GlassMaterialProvider.Configuration();
  lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(&lazy protocol witness table cache variable for type GlassMaterialProvider.Configuration and conformance GlassMaterialProvider.Configuration, MEMORY[0x1E6999D18]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int Material._GlassVariant.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for GlassMaterialProvider.Configuration();
  lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(&lazy protocol witness table cache variable for type GlassMaterialProvider.Configuration and conformance GlassMaterialProvider.Configuration, MEMORY[0x1E6999D18]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Material._GlassVariant()
{
  Hasher.init(_seed:)();
  type metadata accessor for GlassMaterialProvider.Configuration();
  lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(&lazy protocol witness table cache variable for type GlassMaterialProvider.Configuration and conformance GlassMaterialProvider.Configuration, MEMORY[0x1E6999D18]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Material._GlassVariant()
{
  type metadata accessor for GlassMaterialProvider.Configuration();
  lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(&lazy protocol witness table cache variable for type GlassMaterialProvider.Configuration and conformance GlassMaterialProvider.Configuration, MEMORY[0x1E6999D18]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Material._GlassVariant()
{
  Hasher.init(_seed:)();
  type metadata accessor for GlassMaterialProvider.Configuration();
  lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(&lazy protocol witness table cache variable for type GlassMaterialProvider.Configuration and conformance GlassMaterialProvider.Configuration, MEMORY[0x1E6999D18]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type Material._GlassVariant.InteractionState and conformance Material._GlassVariant.InteractionState()
{
  result = lazy protocol witness table cache variable for type Material._GlassVariant.InteractionState and conformance Material._GlassVariant.InteractionState;
  if (!lazy protocol witness table cache variable for type Material._GlassVariant.InteractionState and conformance Material._GlassVariant.InteractionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Material._GlassVariant.InteractionState and conformance Material._GlassVariant.InteractionState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Material._GlassVariant.Size and conformance Material._GlassVariant.Size()
{
  result = lazy protocol witness table cache variable for type Material._GlassVariant.Size and conformance Material._GlassVariant.Size;
  if (!lazy protocol witness table cache variable for type Material._GlassVariant.Size and conformance Material._GlassVariant.Size)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Material._GlassVariant.Size and conformance Material._GlassVariant.Size);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Material._GlassVariant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t assignWithCopy for Material._GlassVariant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for Material._GlassVariant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for Material._GlassVariant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type GlassMaterialProvider.Options and conformance GlassMaterialProvider.Options(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _PlainButtonMenuStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v9 = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = v8;
  *(a2 + 56) = 0;
  *(a2 + 64) = v9;
  *(a2 + 72) = 0;
  outlined copy of AppIntentExecutor?(v3);

  return outlined copy of AppIntentExecutor?(v5);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>>();
    lazy protocol witness table accessor for type ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase> and conformance ButtonStyleAdaptorMenuStyle<A>(&lazy protocol witness table cache variable for type Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content> and conformance Menu<A, B>, type metadata accessor for Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>>)
  {
    type metadata accessor for Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>();
    type metadata accessor for MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>>);
    }
  }
}

void type metadata accessor for MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>()
{
  if (!lazy cache variable for type metadata for MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>)
  {
    type metadata accessor for ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>();
    lazy protocol witness table accessor for type ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase> and conformance ButtonStyleAdaptorMenuStyle<A>(&lazy protocol witness table cache variable for type ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase> and conformance ButtonStyleAdaptorMenuStyle<A>, type metadata accessor for ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>);
    v0 = type metadata accessor for MenuStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MenuStyleModifier<ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>>);
    }
  }
}

void type metadata accessor for ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>()
{
  if (!lazy cache variable for type metadata for ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>)
  {
    lazy protocol witness table accessor for type PlainButtonStyleBase and conformance PlainButtonStyleBase();
    v0 = type metadata accessor for ButtonStyleAdaptorMenuStyle();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ButtonStyleAdaptorMenuStyle<PlainButtonStyleBase> and conformance ButtonStyleAdaptorMenuStyle<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TabContent.defaultVisibility(_:for:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5[0] = a1;
  v6 = a2;
  return TabContent.modifier<A>(_:)(v5, a3, &type metadata for DefaultTabVisibilityModifier, a4);
}

Swift::Int TabPlacement.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TabPlacement and conformance TabPlacement()
{
  result = lazy protocol witness table cache variable for type TabPlacement and conformance TabPlacement;
  if (!lazy protocol witness table cache variable for type TabPlacement and conformance TabPlacement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabPlacement and conformance TabPlacement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultTabVisibilityModifier and conformance DefaultTabVisibilityModifier()
{
  result = lazy protocol witness table cache variable for type DefaultTabVisibilityModifier and conformance DefaultTabVisibilityModifier;
  if (!lazy protocol witness table cache variable for type DefaultTabVisibilityModifier and conformance DefaultTabVisibilityModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultTabVisibilityModifier and conformance DefaultTabVisibilityModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabHiddenModifier and conformance TabHiddenModifier()
{
  result = lazy protocol witness table cache variable for type TabHiddenModifier and conformance TabHiddenModifier;
  if (!lazy protocol witness table cache variable for type TabHiddenModifier and conformance TabHiddenModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabHiddenModifier and conformance TabHiddenModifier);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI10TabContentRzlAA08ModifiedcD0VyxAA07DefaultC18VisibilityModifierVGAaBHPxAaBHD1__AfA04ViewH0HPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  type metadata accessor for ModifiedTabContent();
  a3();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type TabDisabledModifier and conformance TabDisabledModifier()
{
  result = lazy protocol witness table cache variable for type TabDisabledModifier and conformance TabDisabledModifier;
  if (!lazy protocol witness table cache variable for type TabDisabledModifier and conformance TabDisabledModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabDisabledModifier and conformance TabDisabledModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabPlacement.Placement and conformance TabPlacement.Placement()
{
  result = lazy protocol witness table cache variable for type TabPlacement.Placement and conformance TabPlacement.Placement;
  if (!lazy protocol witness table cache variable for type TabPlacement.Placement and conformance TabPlacement.Placement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabPlacement.Placement and conformance TabPlacement.Placement);
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance TabDisabledModifier()
{
  v1 = *v0;
  *(swift_allocObject() + 16) = v1;
  type metadata accessor for _ViewModifier_Content<DefaultTabVisibilityModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<TabDisabledModifier>, lazy protocol witness table accessor for type TabDisabledModifier and conformance TabDisabledModifier);
  lazy protocol witness table accessor for type _ViewModifier_Content<DefaultTabVisibilityModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<TabDisabledModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<TabDisabledModifier>, lazy protocol witness table accessor for type TabDisabledModifier and conformance TabDisabledModifier);
  View.transformTrait<A>(_:transform:)();
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance TabHiddenModifier()
{
  v1 = *v0;
  *(swift_allocObject() + 16) = v1;
  type metadata accessor for _ViewModifier_Content<DefaultTabVisibilityModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<TabHiddenModifier>, lazy protocol witness table accessor for type TabHiddenModifier and conformance TabHiddenModifier);
  lazy protocol witness table accessor for type _ViewModifier_Content<DefaultTabVisibilityModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<TabHiddenModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<TabHiddenModifier>, lazy protocol witness table accessor for type TabHiddenModifier and conformance TabHiddenModifier);
  View.transformTrait<A>(_:transform:)();
}

unint64_t closure #1 in DefaultTabVisibilityModifier.body(content:)(unint64_t result, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return result;
  }

  v5 = result;
  v6 = (a3 + 32);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v5 + 32);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
    v12 = v10[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      break;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v18 = v10;
      if (v16)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v21 = result;
    specialized _NativeDictionary.copy()();
    result = v21;
    v18 = v10;
    if (v16)
    {
LABEL_3:
      *(v18[7] + result) = a2;
      goto LABEL_4;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + result) = v7;
    *(v18[7] + result) = a2;
    v19 = v18[2];
    v14 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v14)
    {
      goto LABEL_17;
    }

    v18[2] = v20;
LABEL_4:
    *(v5 + 32) = v18;
    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance DefaultTabVisibilityModifier()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  type metadata accessor for _ViewModifier_Content<DefaultTabVisibilityModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<DefaultTabVisibilityModifier>, lazy protocol witness table accessor for type DefaultTabVisibilityModifier and conformance DefaultTabVisibilityModifier);
  lazy protocol witness table accessor for type _ViewModifier_Content<DefaultTabVisibilityModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<DefaultTabVisibilityModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<DefaultTabVisibilityModifier>, lazy protocol witness table accessor for type DefaultTabVisibilityModifier and conformance DefaultTabVisibilityModifier);

  View.transformTrait<A>(_:transform:)();
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<DefaultTabVisibilityModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ViewModifier_Content<DefaultTabVisibilityModifier>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<DefaultTabVisibilityModifier>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for _ViewModifier_Content();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE14transformTrait_0D0Qrqd__m_y5ValueQyd__zctAA01_cE3KeyRd__lFQOyAA01_C16Modifier_ContentVyAA020DefaultTabVisibilityH0VG_AA0K7OptionsV0eG0VQo_HOTm(uint64_t a1, unint64_t *a2, void (*a3)(void), uint64_t a4, unint64_t *a5)
{
  type metadata accessor for _ViewModifier_Content<DefaultTabVisibilityModifier>(255, a2, a3);
  lazy protocol witness table accessor for type _ViewModifier_Content<DefaultTabVisibilityModifier> and conformance _ViewModifier_Content<A>(a5, a2, a3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t View.sectionActions<A>(content:)@<X0>(void (*a1)(double)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v26 = a4;
  v25 = a1;
  v28 = a6;
  v37 = &type metadata for SectionStyleConfiguration.Actions;
  v38 = a3;
  v39 = lazy protocol witness table accessor for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions();
  v40 = a5;
  type metadata accessor for StaticSourceWriter();
  v9 = type metadata accessor for ModifiedContent();
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v24 - v18;
  v25(v17);
  v30 = a2;
  v31 = a3;
  v32 = v26;
  v33 = a5;
  v34 = v19;
  v20 = a2;
  v21 = v26;
  View.viewAlias<A, B>(_:_:)(&type metadata for SectionStyleConfiguration.Actions, partial apply for closure #1 in View.sectionActions<A>(content:), v29, v20, &type metadata for SectionStyleConfiguration.Actions, a3, v26);
  (*(v12 + 16))(v15, v19, a3);
  v22 = AnyView.init<A>(_:)();
  v35 = v21;
  v36 = &protocol witness table for StaticSourceWriter<A, B>;
  v37 = v22;
  swift_getWitnessTable();
  View._trait<A>(_:_:)();

  (*(v27 + 8))(v11, v9);
  return (*(v12 + 8))(v19, a3);
}

uint64_t closure #1 in View.sectionActions<A>(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v10, v11, v12);
  static ViewBuilder.buildExpression<A>(_:)(v9, a3, a5);
  return (*(v7 + 8))(v9, a3);
}

uint64_t protocol witness for static StyleContext.acceptsAny<A>(_:) in conformance SidebarSectionActionStyleContext(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v3)
  {
    memcpy(&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v1);
  }

  return static StyleContext.acceptsAny<A>(_:)() & 1;
}

void SidebarSectionActionButtonStyle.makeBody(configuration:)(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = *v7;
  v8 = *(v5 + 32);
  type metadata accessor for _TraitWritingModifier<SectionActionsTraitKey>(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(&v7[v8], &a2[*(v9 + 36)], type metadata accessor for ButtonAction);
  outlined destroy of PrimitiveButtonStyleConfiguration(v7);
  KeyPath = swift_getKeyPath();
  v22 = 0;
  v11 = swift_getKeyPath();
  v21 = 0;
  v12 = swift_getKeyPath();
  v20 = 0;
  v13 = swift_getKeyPath();
  v19[0] = 0;
  v14 = v22;
  v15 = v21;
  v16 = v20;
  type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>();
  v18 = &a2[*(v17 + 36)];
  *v18 = KeyPath;
  v18[8] = v14;
  *(v18 + 2) = v11;
  v18[24] = v15;
  *(v18 + 4) = v12;
  v18[40] = v16;
  *(v18 + 6) = v13;
  v18[56] = 0;
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>)
  {
    type metadata accessor for _TraitWritingModifier<SectionActionsTraitKey>(255, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_1(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, lazy protocol witness table accessor for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle, &type metadata for PlatformItemListButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>>();
    lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>();
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t View.listSectionMargins(_:_:)(char a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3 & 1;
  View.transformTrait<A>(_:transform:)();
}

uint64_t closure #1 in View.listSectionMargins(_:_:)(uint64_t a1, char a2)
{
  if (a2)
  {
    result = OptionalEdgeInsets.subscript.setter();
    if ((a2 & 2) == 0)
    {
LABEL_3:
      if ((a2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a2 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = OptionalEdgeInsets.subscript.setter();
  if ((a2 & 4) == 0)
  {
LABEL_4:
    if ((a2 & 8) == 0)
    {
      return result;
    }

    return OptionalEdgeInsets.subscript.setter();
  }

LABEL_9:
  result = OptionalEdgeInsets.subscript.setter();
  if ((a2 & 8) == 0)
  {
    return result;
  }

  return OptionalEdgeInsets.subscript.setter();
}

void _UIHostingView.transparentBackgroundReasons.setter(int a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  _UIHostingView.transparentBackgroundReasons.didset(v3);
}

__n128 _UIHostingView.explicitSafeAreaInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v3 = v2[32];
  result = *v2;
  v5 = *(v2 + 1);
  *a1 = *v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

id _UIHostingView.explicitSafeAreaInsets.setter(uint64_t a1)
{
  v2 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v3 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = v3;
  v2[32] = *(a1 + 32);
  return [v1 safeAreaInsetsDidChange];
}

void (*_UIHostingView.safeAreaRegions.modify(uint64_t *a1))()
{
  a1[1] = v1;
  v3 = _UIHostingView.base.getter();
  v4 = UIHostingViewBase.safeAreaRegions.getter();

  *a1 = v4;
  return _UIHostingView.safeAreaRegions.modify;
}

void _UIHostingView.safeAreaRegions.modify()
{
  v0 = _UIHostingView.base.getter();
  UIHostingViewBase.safeAreaRegions.setter();
}

uint64_t _UIHostingView.accessibilityEnabled.setter(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = UIHostingViewBase.accessibilityEnabled.getter() & 1;
  result = UIHostingViewBase.accessibilityEnabled.setter();
  if (v4 != v3)
  {
    v6 = type metadata accessor for _UIHostingView();
    WitnessTable = swift_getWitnessTable();

    return specialized static AccessibilityFocus.changed(from:to:within:)(0, 0, v2, v6, WitnessTable);
  }

  return result;
}

uint64_t (*_UIHostingView.accessibilityEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = UIHostingViewBase.accessibilityEnabled.getter() & 1;
  return _UIHostingView.accessibilityEnabled.modify;
}

void _UIHostingView.updateWindowGeometryScene()()
{
  v1 = [v0 window];
  v9 = [v1 windowScene];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
    if (!Strong)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!Strong || (v3 = Strong, Strong, v9 != v3))
  {
LABEL_7:
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = MEMORY[0x18D00C850](0xD000000000000011, 0x800000018CD5A5A0);
      [v5 removeObserver:v0 forKeyPath:v6];
    }

    if (v9)
    {
      v7 = v9;
      v8 = MEMORY[0x18D00C850](0xD000000000000011, 0x800000018CD5A5A0);
      [v7 addObserver:v0 forKeyPath:v8 options:1 context:&effectiveGeometryObservationContext];
    }

    swift_unknownObjectWeakAssign();
  }
}

uint64_t _UIHostingView.setRootView(_:transaction:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12[-v6];
  (*(v8 + 16))(&v12[-v6], v5);
  CoreCoordinator.dataSource.setter(v7);
  _UIHostingView.viewGraph.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = *((v3 & v2) + 0x58);
  v10[4] = v9;

  default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
  GraphHost.asyncTransaction(_:id:_:)();
}

void (*_UIHostingView.rootView.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  CoreCoordinator.dataSource.getter(v9);
  return _UIHostingView.rootView.modify;
}

void _UIHostingView.rootView.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    specialized _UIHostingView.rootView.setter(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    specialized _UIHostingView.rootView.setter(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t _UIHostingView.invalidatesIntrinsicContentSizeOnIdealSizeChange.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1E0);
  swift_beginAccess();
  return *(v0 + v1);
}

void (*_UIHostingView.invalidatesIntrinsicContentSizeOnIdealSizeChange.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1E0);
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return _UIHostingView.invalidatesIntrinsicContentSizeOnIdealSizeChange.modify;
}

void _UIHostingView.invalidatesIntrinsicContentSizeOnIdealSizeChange.modify(uint64_t a1)
{
  v1 = *a1;
  _UIHostingView.invalidatesIntrinsicContentSizeOnIdealSizeChange.setter(*(*a1 + 32));

  free(v1);
}

void _UIHostingView.accessibilityFocusedElementDidChange(_:)(void *a1)
{
  v2 = v1;
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 userInfo];
  v13 = MEMORY[0x1E69E7CA0];
  if (!v12)
  {
    goto LABEL_9;
  }

  v14 = v12;
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v41 + 1) = v16;
  AnyHashable.init<A>(_:)();
  if (!*(v15 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), (v18 & 1) == 0))
  {

    outlined destroy of AnyHashable(aBlock);
LABEL_9:
    v41 = 0u;
    v42 = 0u;
    goto LABEL_10;
  }

  outlined init with copy of Any(*(v15 + 56) + 32 * v17, &v41);
  outlined destroy of AnyHashable(aBlock);

  if (!*(&v42 + 1))
  {
LABEL_10:
    _sypSgWOhTm_8(&v41, &lazy cache variable for type metadata for Any?, v13 + 8, type metadata accessor for AnyAccessibilityValue?);
    v19 = 0;
    goto LABEL_11;
  }

  type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();
  if (swift_dynamicCast())
  {
    v19 = aBlock[0];
  }

  else
  {
    v19 = 0;
  }

LABEL_11:
  v20 = [a1 userInfo];
  if (!v20)
  {
LABEL_19:
    v41 = 0u;
    v42 = 0u;
    goto LABEL_20;
  }

  v21 = v20;
  v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v41 + 1) = v23;
  AnyHashable.init<A>(_:)();
  if (!*(v22 + 16) || (v24 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), (v25 & 1) == 0))
  {

    outlined destroy of AnyHashable(aBlock);
    goto LABEL_19;
  }

  outlined init with copy of Any(*(v22 + 56) + 32 * v24, &v41);
  outlined destroy of AnyHashable(aBlock);

  if (*(&v42 + 1))
  {
    type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();
    if (swift_dynamicCast())
    {
      v26 = aBlock[0];
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_21;
  }

LABEL_20:
  _sypSgWOhTm_8(&v41, &lazy cache variable for type metadata for Any?, v13 + 8, type metadata accessor for AnyAccessibilityValue?);
  v26 = 0;
LABEL_21:
  v28 = *(v4 + 80);
  v27 = *(v4 + 88);
  v29 = type metadata accessor for _UIHostingView();
  WitnessTable = swift_getWitnessTable();
  if (specialized static AccessibilityFocus.changed(from:to:within:)(v19, v26, v2, v29, WitnessTable))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v31 = static OS_dispatch_queue.main.getter();
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    v33[2] = v28;
    v33[3] = v27;
    v33[4] = v32;
    aBlock[4] = partial apply for closure #1 in _UIHostingView.accessibilityFocusedElementDidChange(_:);
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_85_1;
    v34 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    _s7SwiftUI15SheetPreferenceV12presentation_AA29PresentationHostingControllerCyAA7AnyViewVGSg11presentedVCSb8animatedtSgMaTm_0(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v35 = v39;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x18D00DA20](0, v11, v7, v34);
    _Block_release(v34);

    (*(v38 + 8))(v7, v35);
    (*(v36 + 8))(v11, v37);
  }

  else
  {
  }
}

unint64_t _UIHostingView.accessibilityDidChange(nodes:)(uint64_t (*a1)(void))
{
  result = UIHostingViewBase.accessibilityEnabled.getter();
  if ((result & 1) == 0)
  {
    return result;
  }

  result = a1();
  v3 = result;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    v4 = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_4:
      if (v4 < 1)
      {
        __break(1u);
        return result;
      }

      for (i = 0; i != v4; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x18D00E9C0](i, v3);
        }

        else
        {
          v6 = *(v3 + 8 * i + 32);
        }

        v7 = v6;
        AccessibilityNode.updatePlatformProperties()();
      }
    }
  }
}

uint64_t _UIHostingView.uiKitAccessibilityElements(options:)(int a1)
{
  if ((UIHostingViewBase.accessibilityEnabled.getter() & 1) == 0)
  {
    if (_AXSAccessibilityEnabled() || (v2 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL), v3 = NSClassFromString(v2), v2, v3))
    {
      _UIHostingView.accessibilityEnabled.setter(1);
    }
  }

  type metadata accessor for _UIHostingView();
  swift_getWitnessTable();
  v4 = ViewRendererHost.accessibilityNodes.getter();
  if ((a1 & 2) != 0)
  {
    v19[0] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI22AccessibilitySortCache33_53F8EA6FDE2098E3B48F956069C295B7LLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (v4 >> 62)
    {
      v5 = __CocoaSet.count.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    _sSDySSypGMaTm_0(0, &lazy cache variable for type metadata for [ObjectIdentifier : AccessibilitySortCache]);
    Dictionary.reserveCapacity(_:)(v5);

    v18 = specialized Array._copyToContiguousArray()(v6);
    specialized MutableCollection<>.sort(by:)(&v18, 2u, 0, 4, v19);

    v4 = v18;
  }

  v7 = specialized static AccessibilityCore.queryFilter(elements:options:)(v4, a1);

  v8 = Array<A>.representedElements(options:)(a1, v7);

  v9 = _UIHostingView.foreignSubviews.getter();
  v10 = [v9 allObjects];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();

    v17 = _bridgeCocoaArray<A>(_:)();
    swift_bridgeObjectRelease_n();
    v11 = v17;
  }

  else
  {
    v12 = v11 & 0xFFFFFFFFFFFFFF8;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();
    if (swift_dynamicCastMetatype() || (v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_11:
    }

    else
    {
      v16 = v12 + 32;
      while (1)
      {
        v19[1] = &unk_1F00D1888;
        if (!swift_dynamicCastObjCProtocolConditional())
        {
          break;
        }

        v16 += 8;
        if (!--v15)
        {
          goto LABEL_11;
        }
      }

      v11 = v12 | 1;
    }
  }

  v13 = Array<A>.merge(with:options:)(v11, a1, v8);

  return v13;
}

unint64_t _UIHostingView._accessibilitySwiftUIDebugData.getter()
{
  if ((UIHostingViewBase.accessibilityEnabled.getter() & 1) == 0)
  {
    if (_AXSAccessibilityEnabled() || (v0 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL), v1 = NSClassFromString(v0), v0, v1))
    {
      _UIHostingView.accessibilityEnabled.setter(1);
    }
  }

  _UIHostingView.viewGraph.getter();
  v2 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11AGAttributea_7SwiftUI16ArrayWith2InlineVyAE17AccessibilityNodeCGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  TreeRoot = AGSubgraphGetTreeRoot();
  if (TreeRoot)
  {
    v4 = TreeRoot;
    _s7SwiftUI15SheetPreferenceV12presentation_AA29PresentationHostingControllerCyAA7AnyViewVGSg11presentedVCSb8animatedtSgMaTm_0(0, &lazy cache variable for type metadata for [AccessibilityNode], type metadata accessor for AccessibilityNode, MEMORY[0x1E69E62F8]);
    static Update.ensure<A>(_:)();
    static AccessibilityDebugger.appendNodes(nodes:to:)(v17, &v23);

    static AccessibilityDebugger.appendDebugData(from:to:nodes:)(v4, &v18, v23);

    v5 = v18;
    v6 = *(v18 + 2);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
    v6 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  v23 = v2;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v2 = v23;
  v7 = v5 + 64;
  do
  {
    v8 = *(v7 - 6);
    v9 = *(v7 - 2);
    v10 = *(v7 - 2);
    v11 = *v7;
    v18 = *(v7 - 4);
    v19 = v8;
    v20 = v9;
    v21 = v10;
    v22 = v11;
    v12 = AccessibilityDebugger.Entry.dictionaryRepresentation.getter();
    v23 = v2;
    v14 = *(v2 + 16);
    v13 = *(v2 + 24);
    if (v14 >= v13 >> 1)
    {
      v15 = v12;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v12 = v15;
      v2 = v23;
    }

    *(v2 + 16) = v14 + 1;
    *(v2 + 8 * v14 + 32) = v12;
    v7 += 5;
    --v6;
  }

  while (v6);
LABEL_13:

  return v2;
}

void _UIHostingView.setLayerDebugName()()
{
  swift_getObjectType();
  v1 = specialized static UIHostingViewDebugOptions.current.getter();
  if (v1)
  {
    v2 = v1;
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    *(v6 + 56) = type metadata accessor for _UIHostingView();
    *(v6 + 64) = swift_getWitnessTable();
    *(v6 + 32) = v0;
    v7 = v0;
    v8 = String.init(format:_:)();
    v10 = v9;
    MEMORY[0x18D00C9B0](10272, 0xE200000000000000);
    MEMORY[0x18D00C9B0](v8, v10);

    MEMORY[0x18D00C9B0](41, 0xE100000000000000);
    v11 = v3;
    v12 = [v7 layer];
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    v13 = UIHostingViewDebugOptions.debugRepresentation<A>(for:)(v7, v2);
    MEMORY[0x18D00C9B0](v13);

    v14 = MEMORY[0x18D00C850](v11, v5);

    [v12 setName_];
  }
}

uint64_t _UIHostingView.makeViewDebugData()()
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for Data?);
  static Update.ensure<A>(_:)();
  return v1;
}

Swift::Void __swiftcall _UIHostingView.beginInsertingManagedSubviews()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x200);
  v2 = *(v0 + v1);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + v1) = v4;
  }
}

Swift::Void __swiftcall _UIHostingView.endInsertingManagedSubviews()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x200);
  v2 = *(v0 + v1);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + v1) = v4 & ~(v4 >> 63);
  }
}

void _UIHostingView.printHitTestIfNeeded(at:with:)(void *a1, double a2, double a3)
{
  _eventDebugTriggers.getter();
  if ((v15 & 0x40) == 0 || !a1)
  {
    return;
  }

  v14 = a1;
  if (![v14 type])
  {
    v7 = swift_allocObject();
    *(v7 + 16) = specialized implicit closure #1 in UIView.ancestors.getter;
    *(v7 + 24) = 0;
    v15 = v3;
    v16 = 1;
    v17 = partial apply for specialized closure #1 in sequence<A>(first:next:);
    v18 = v7;
    v19 = 0;
    v20 = 1;
    type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for HostingViewProtocol);
    type metadata accessor for DropFirstSequence<UnfoldSequence<UIView, (UIView?, Bool)>>();
    lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey(&lazy protocol witness table cache variable for type DropFirstSequence<UnfoldSequence<UIView, (UIView?, Bool)>> and conformance DropFirstSequence<A>, type metadata accessor for DropFirstSequence<UnfoldSequence<UIView, (UIView?, Bool)>>);
    Sequence.first<A>(ofType:)();

    if (v21)
    {

      swift_unknownObjectRelease();
      return;
    }

    v9 = MEMORY[0x18D008800](v8);
    v10 = _UICurrentHitTestContext();
    v11 = v10;
    if (v9)
    {
      if (v10)
      {
        [v10 radius];
        v13 = v12;
        default argument 2 of UIView.printHitTest(_:radius:options:)(&v15);
        UIView.printHitTest(_:radius:options:)(&v15, a2, a3, v13);
LABEL_13:

        return;
      }
    }

    else
    {
      if (v10)
      {
        goto LABEL_13;
      }

      default argument 2 of UIView.printHitTest(_:radius:options:)(&v15);
      UIView.printHitTest(_:radius:options:)(&v15, a2, a3, 1.0);
    }

    return;
  }
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v10;
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for String?);
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v13;
    type metadata accessor for (String?, String)();
    type metadata accessor for (key: String?, value: String)();
    v4 = a1 + 56;
    do
    {

      swift_dynamicCast();
      v5 = v10;
      v7 = *(v13 + 16);
      v6 = *(v13 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        v5 = v10;
      }

      *(v13 + 16) = v7 + 1;
      v8 = v13 + 32 * v7;
      *(v8 + 32) = v5;
      *(v8 + 48) = v11;
      *(v8 + 56) = v12;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for UIKitProxyFocusItem);
    type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIFocusItem);
    do
    {
      v4 += 16;
      swift_unknownObjectRetain();
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      CGFloat._bridgeToObjectiveC()();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v13;
    type metadata accessor for (String, String)();
    type metadata accessor for (name: String, value: String)();
    v4 = a1 + 56;
    do
    {

      swift_dynamicCast();
      v6 = *(v13 + 16);
      v5 = *(v13 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
      }

      *(v13 + 16) = v6 + 1;
      v7 = (v13 + 32 * v6);
      v7[4] = v9;
      v7[5] = v10;
      v7[6] = v11;
      v7[7] = v12;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}