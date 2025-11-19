void type metadata accessor for KeyedEncodingContainer<ArchivedViewCore.Metadata.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys();
    v7 = a3(a1, &unk_1F004AD10, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys);
  }

  return result;
}

uint64_t ArchivedViewCore.Metadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v34 = a2;
  v3 = type metadata accessor for UUID();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<ArchivedViewCore.Metadata.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ArchivedViewCore.Metadata.CodingKeys>, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - v7;
  v9 = type metadata accessor for ArchivedViewCore.Metadata();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() mainBundle];
  v13 = [v12 preferredLocalizations];

  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v14 + 16))
  {
    v39 = *(v14 + 40);
  }

  else
  {
    v39 = 0;
  }

  v15 = *(v9 + 48);
  v11[v15] = CTParagraphStyleGetCompositionLanguageForLanguage();
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  lazy protocol witness table accessor for type ArchivedViewCore.Metadata.CodingKeys and conformance ArchivedViewCore.Metadata.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    v16 = v11;
    v33 = v9;
    LOBYTE(v42) = 0;
    v17 = v6;
    *v16 = KeyedDecodingContainer.decode(_:forKey:)();
    type metadata accessor for [Int]();
    v41 = 1;
    lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v16 + 8) = v42;
    LOBYTE(v42) = 2;
    *(v16 + 16) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v16 + 24) = v19 & 1;
    LOBYTE(v42) = 3;
    *(v16 + 32) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v16 + 40) = v20 & 1;
    v41 = 4;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v21 = MEMORY[0x1E69E7CC0];
    if (v42)
    {
      v21 = v42;
    }

    *(v16 + 48) = v21;
    LOBYTE(v42) = 5;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v22 = v35;
    v23 = v37;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v22;
    v25 = v33;
    (*(v36 + 32))(v16 + *(v33 + 36), v24, v23);
    v41 = 6;
    lazy protocol witness table accessor for type ArchivedViewInput.DeploymentVersion and conformance ArchivedViewInput.DeploymentVersion();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26 = v42;
    if (BYTE1(v42))
    {
      v26 = 1;
    }

    *(v16 + *(v25 + 40)) = v26;
    LOBYTE(v42) = 7;
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v29 = v28;

    v30 = (v16 + *(v33 + 44));
    *v30 = v27;
    v30[1] = v29;
    type metadata accessor for CodableRawRepresentable<CTCompositionLanguage>();
    v41 = 8;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CodableRawRepresentable<CTCompositionLanguage> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<CTCompositionLanguage>);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v38 + 8))(v8, v17);
    v31 = v42;
    if (BYTE1(v42))
    {
      v31 = 0;
    }

    *(v16 + v15) = v31;
    outlined init with copy of ArchivedViewCore.Metadata(v16, v34);
    __swift_destroy_boxed_opaque_existential_1(v40);
    return outlined destroy of ArchivedViewCore.Metadata(v16);
  }
}

uint64_t type metadata accessor for ArchivedViewCore.Metadata()
{
  result = type metadata singleton initialization cache for ArchivedViewCore.Metadata;
  if (!type metadata singleton initialization cache for ArchivedViewCore.Metadata)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t ArchivedViewCore.Metadata.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x726556726F6A616DLL;
    v6 = 0xD000000000000013;
    if (a1 != 2)
    {
      v6 = 0x6174744161746164;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0xD000000000000017;
    if (a1 != 7)
    {
      v2 = 0xD00000000000001CLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000001ELL;
    if (a1 != 4)
    {
      v3 = 0x4965766968637261;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t storeEnumTagSinglePayload for ArchivedViewCore.Metadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArchivedViewCore.Metadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACSEAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ArchivedViewInput.DeploymentVersion and conformance ArchivedViewInput.DeploymentVersion()
{
  result = lazy protocol witness table cache variable for type ArchivedViewInput.DeploymentVersion and conformance ArchivedViewInput.DeploymentVersion;
  if (!lazy protocol witness table cache variable for type ArchivedViewInput.DeploymentVersion and conformance ArchivedViewInput.DeploymentVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewInput.DeploymentVersion and conformance ArchivedViewInput.DeploymentVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedViewInput.DeploymentVersion and conformance ArchivedViewInput.DeploymentVersion;
  if (!lazy protocol witness table cache variable for type ArchivedViewInput.DeploymentVersion and conformance ArchivedViewInput.DeploymentVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewInput.DeploymentVersion and conformance ArchivedViewInput.DeploymentVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedViewInput.DeploymentVersion and conformance ArchivedViewInput.DeploymentVersion;
  if (!lazy protocol witness table cache variable for type ArchivedViewInput.DeploymentVersion and conformance ArchivedViewInput.DeploymentVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewInput.DeploymentVersion and conformance ArchivedViewInput.DeploymentVersion);
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ArchivedViewInput.DeploymentVersion@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void type metadata accessor for CodableRawRepresentable<CTCompositionLanguage>()
{
  if (!lazy cache variable for type metadata for CodableRawRepresentable<CTCompositionLanguage>)
  {
    type metadata accessor for CTCompositionLanguage(255);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CTCompositionLanguage and conformance CTCompositionLanguage, type metadata accessor for CTCompositionLanguage);
    v0 = type metadata accessor for CodableRawRepresentable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CodableRawRepresentable<CTCompositionLanguage>);
    }
  }
}

uint64_t RawRepresentableProxy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, void *, double)@<X5>, uint64_t a7@<X8>)
{
  v39 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v44 = &v32 - v13;
  v14 = type metadata accessor for Optional();
  v37 = *(v14 - 8);
  v38 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  v40 = *(a2 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45[0] = a2;
  v45[1] = a3;
  v41 = a3;
  v43 = a4;
  v45[2] = a4;
  v46 = a5;
  v21 = a6(0, v45, v18);
  v36 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v32 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = v47;
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v24)
  {
    v33 = v23;
    v34 = v21;
    v35 = v20;
    v47 = a1;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v25 = v16;
    dispatch thunk of RawRepresentable.init(rawValue:)();
    v26 = v40;
    if ((*(v40 + 48))(v16, 1, a2) != 1)
    {
      v29 = *(v26 + 32);
      v30 = v35;
      v29(v35, v25, a2);
      v31 = v33;
      v29(v33, v30, a2);
      __swift_destroy_boxed_opaque_existential_1(v45);
      (*(v36 + 32))(v39, v31, v34);
      v27 = v47;
      return __swift_destroy_boxed_opaque_existential_1(v27);
    }

    (*(v37 + 8))(v16, v38);
    lazy protocol witness table accessor for type Error and conformance Error();
    swift_allocError();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v45);
    a1 = v47;
  }

  v27 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t outlined init with copy of ArchivedViewCore.Metadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArchivedViewCore.Metadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for ArchivedViewCore.Metadata(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v7 = a3[9];
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 16);

  v9(a1 + v7, a2 + v7, v8);
  v10 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;
  *(a1 + a3[12]) = *(a2 + a3[12]);

  return a1;
}

uint64_t outlined destroy of ArchivedViewCore.Metadata(uint64_t a1)
{
  v2 = type metadata accessor for ArchivedViewCore.Metadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t destroy for ArchivedViewCore.Metadata(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 36);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
}

unint64_t _DisplayList_StableIdentityMap.init(from:)@<X0>(unint64_t result@<X0>, char **a2@<X8>)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v4 >= v5)
    {
      *(v3 + 3) = 0;
      *a2 = v6;
      return result;
    }

    result = *(v3 + 3);
    if (result)
    {
      v7 = *(v3 + 4);
      if (v4 < v7)
      {
        goto LABEL_9;
      }

      if (v7 < v4)
      {
        goto LABEL_44;
      }

      *(v3 + 3) = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
    }

    if (result < 8)
    {
LABEL_44:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
    }

LABEL_9:
    if ((result & 0xFFFFFFFFFFFFFFF8) == 8)
    {
      break;
    }

    v26 = result & 7;
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v8 = v3;
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_51;
        }

        v4 = *(v3 + 1) + result;
        if (v5 < v4)
        {
          goto LABEL_44;
        }

        *(v3 + 1) = v4;
      }

      else
      {
        if (v26 != 5)
        {
          goto LABEL_44;
        }

        v4 = *(v3 + 1) + 4;
        if (v5 < v4)
        {
          goto LABEL_44;
        }

        *(v3 + 1) = v4;
      }
    }

    else if ((result & 7) != 0)
    {
      if (v26 != 1)
      {
        goto LABEL_44;
      }

      v4 = *(v3 + 1) + 8;
      if (v5 < v4)
      {
        goto LABEL_44;
      }

      *(v3 + 1) = v4;
    }

    else
    {
      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
      }

LABEL_42:
      v4 = *(v3 + 1);
    }
  }

  if ((result & 7) != 2)
  {
    goto LABEL_44;
  }

  ProtobufDecoder.beginMessage()();
  if (v2)
  {
  }

  closure #1 in _DisplayList_StableIdentityMap.init(from:)(v3, &v37);
  v8 = *(v3 + 5);
  if (*(v8 + 2))
  {
    v43 = 0;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = *(v8 + 2);
      if (!v9)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v9 = *(v8 + 2);
      if (!v9)
      {
        goto LABEL_49;
      }
    }

    v10 = v9 - 1;
    v11 = *&v8[8 * v10 + 32];
    *(v8 + 2) = v10;
    *(v3 + 5) = v8;
    *(v3 + 2) = v11;
    v13 = v37;
    v12 = HIDWORD(v37);
    v15 = v38;
    v14 = v39;
    v16 = v40;
    v35 = v41;
    v36 = v11;
    v34 = v42;
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v8;
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    v20 = *(v8 + 2);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_50;
    }

    v24 = v19;
    if (*(v8 + 3) >= v23)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_29;
      }

      v28 = v18;
      specialized _NativeDictionary.copy()();
      v18 = v28;
      v6 = v37;
      if ((v24 & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_30:
      v27 = (*(v6 + 7) + 24 * v18);
      *v27 = v12;
      v27[1] = v15;
      v27[2] = v14;
      v27[3] = v16;
      v27[4] = v35;
      v27[5] = v34;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_53;
      }

LABEL_29:
      v6 = v37;
      if (v24)
      {
        goto LABEL_30;
      }

LABEL_40:
      specialized _NativeDictionary._insert(at:key:value:)(v18, v13, v12 | (v15 << 32), v14 | (v16 << 32), v35 | (v34 << 32), v6);
    }

    v2 = v43;
    v5 = v36;
    goto LABEL_42;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  __break(1u);
  v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
  v32 = *(v31 + 2);
  if (v32)
  {
    v29 = v32 - 1;
    v30 = *&v31[8 * v29 + 32];
    *(v31 + 2) = v29;
    *(v3 + 5) = v31;
    *(v3 + 2) = v30;
  }

  __break(1u);
LABEL_53:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_18D340E70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t ProtobufDecoder.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, NSData *a3@<X8>)
{
  a3[3].super.isa = 0;
  v6 = MEMORY[0x1E69E7CC8];
  a3[5].super.isa = MEMORY[0x1E69E7CC0];
  a3[6].super.isa = v6;
  v7.super.isa = Data._bridgeToObjectiveC()().super.isa;
  a3->super.isa = v7.super.isa;
  v8 = [(objc_class *)v7.super.isa bytes];
  v9 = a2;
  v10 = v8;
  a3[1].super.isa = v8;
  v11 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v11 != 2)
    {
      result = outlined consume of Data._Representation(a1, v9);
      v15 = 0;
      goto LABEL_11;
    }

    v17 = *(a1 + 16);
    v16 = *(a1 + 24);
    result = outlined consume of Data._Representation(a1, v9);
    v15 = v16 - v17;
    if (!__OFSUB__(v16, v17))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = a1;
    v13 = BYTE6(v9);
    result = outlined consume of Data._Representation(v12, v9);
    v15 = v13;
LABEL_11:
    a3[2].super.isa = (v10 + v15);
    a3[4].super.isa = v10;
    return result;
  }

  result = outlined consume of Data._Representation(a1, v9);
  LODWORD(v15) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v15 = v15;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t ProtobufDecoder.decodeVarint()()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v2 < (v1 + 1))
  {
LABEL_8:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v3 = 0;
    result = 0;
    while (1)
    {
      v5 = v1 + 1;
      v6 = (*v1 & 0x7F) << v3;
      if (v3 > 0x3F)
      {
        v6 = 0;
      }

      result |= v6;
      if ((*v1 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      v7 = v1 + 2;
      ++v1;
      if (v2 < v7)
      {
        *(v0 + 8) = v5;
        goto LABEL_8;
      }
    }

    *(v0 + 8) = v1 + 1;
  }

  return result;
}

uint64_t ProtobufDecoder.beginMessage()()
{
  v2 = v0[2];
  v3 = v0[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  *&v3[8 * v5 + 32] = v2;
  v0[5] = v3;
  result = ProtobufDecoder.decodeVarint()();
  if (!v1)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v7 = v0[1] + result;
      if (v2 >= v7)
      {
        v0[2] = v7;
      }

      else
      {
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        return swift_willThrow();
      }
    }
  }

  return result;
}

unint64_t closure #1 in _DisplayList_StableIdentityMap.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  if (v5 < v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
    v12 = 1;
    while (1)
    {
      result = a1[3];
      if (result)
      {
        v14 = a1[4];
        if (v5 < v14)
        {
          goto LABEL_11;
        }

        if (v14 < v5)
        {
          goto LABEL_51;
        }

        a1[3] = 0;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      if (result <= 7)
      {
        goto LABEL_51;
      }

LABEL_11:
      if (result >> 3 == 2)
      {
        if ((result & 7) != 2)
        {
          goto LABEL_51;
        }

        v16 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        }

        v18 = *(v16 + 2);
        v17 = *(v16 + 3);
        if (v18 >= v17 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
        }

        *(v16 + 2) = v18 + 1;
        *&v16[8 * v18 + 32] = v6;
        a1[5] = v16;
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          __break(1u);
          result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
          v27 = *(result + 16);
          if (v27)
          {
            v25 = v27 - 1;
            v26 = *(result + 8 * v25 + 32);
            *(result + 16) = v25;
            a1[5] = result;
            a1[2] = v26;
          }

          else
          {
            __break(1u);
          }

          return result;
        }

        v19 = a1[1] + result;
        if (v6 < v19)
        {
          goto LABEL_51;
        }

        a1[2] = v19;
        _DisplayList_StableIdentity.init(from:)(a1, v28);
        v20 = a1[5];
        if (!*(v20 + 16))
        {
          goto LABEL_57;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v21 = *(v20 + 16);
          if (!v21)
          {
            goto LABEL_49;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
          v20 = result;
          v21 = *(result + 16);
          if (!v21)
          {
LABEL_49:
            __break(1u);
            break;
          }
        }

        v11 = 0;
        v22 = v21 - 1;
        v6 = *(v20 + 8 * v22 + 32);
        *(v20 + 16) = v22;
        a1[5] = v20;
        a1[2] = v6;
        v7 = v28[0];
        v8 = v28[1];
        v9 = v28[2];
        goto LABEL_4;
      }

      if (result >> 3 == 1)
      {
        if ((result & 7) != 0)
        {
          if ((result & 7) != 2)
          {
            goto LABEL_51;
          }

          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_58;
          }

          v15 = a1[1] + result;
          if (v6 < v15)
          {
            goto LABEL_51;
          }

          a1[3] = 8;
          a1[4] = v15;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        v10 = result;
        v12 = 0;
        goto LABEL_4;
      }

      v23 = result & 7;
      if (v23 > 1)
      {
        if (v23 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_59;
          }

          v24 = a1[1] + result;
          if (v6 < v24)
          {
            goto LABEL_51;
          }
        }

        else
        {
          if (v23 != 5)
          {
            goto LABEL_51;
          }

          v24 = a1[1] + 4;
          if (v6 < v24)
          {
            goto LABEL_51;
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
            return result;
          }

          goto LABEL_4;
        }

        if (v23 != 1)
        {
          goto LABEL_51;
        }

        v24 = a1[1] + 8;
        if (v6 < v24)
        {
          goto LABEL_51;
        }
      }

      a1[1] = v24;
LABEL_4:
      v5 = a1[1];
      if (v5 >= v6)
      {
        a1[3] = 0;
        if ((v12 | v11))
        {
          goto LABEL_51;
        }

        *a2 = v10;
        *(a2 + 4) = v7;
        *(a2 + 12) = v8;
        *(a2 + 20) = v9;
        return result;
      }
    }
  }

  a1[3] = 0;
LABEL_51:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  return swift_willThrow();
}

unint64_t _DisplayList_StableIdentity.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
LABEL_50:
    v7 = 0;
    v8 = 0;
    v23 = 0u;
LABEL_51:
    v3[3] = 0;
    *a2 = v23;
    *(a2 + 16) = v7;
    *(a2 + 20) = v8;
    return result;
  }

  v7 = 0;
  v8 = 0;
  v23 = 0u;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v9 = v3[4];
      if (v5 < v9)
      {
        goto LABEL_11;
      }

      if (v9 < v5)
      {
        goto LABEL_52;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_52:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    if (result >> 3 == 2)
    {
      if ((result & 7) != 0)
      {
        if ((result & 7) != 2)
        {
          goto LABEL_52;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_57;
        }

        v17 = v3[1] + result;
        if (v6 < v17)
        {
          goto LABEL_52;
        }

        v3[3] = 16;
        v3[4] = v17;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      v8 = result;
      goto LABEL_4;
    }

    if (result >> 3 != 1)
    {
      v18 = result & 7;
      if (v18 > 1)
      {
        if (v18 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_58;
          }

          v19 = v3[1] + result;
          if (v6 < v19)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v18 != 5)
          {
            goto LABEL_52;
          }

          v19 = v3[1] + 4;
          if (v6 < v19)
          {
            goto LABEL_52;
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
            return result;
          }

          goto LABEL_4;
        }

        if (v18 != 1)
        {
          goto LABEL_52;
        }

        v19 = v3[1] + 8;
        if (v6 < v19)
        {
          goto LABEL_52;
        }
      }

      v3[1] = v19;
      goto LABEL_4;
    }

    if ((result & 7) != 2)
    {
      goto LABEL_52;
    }

    v10 = v3[5];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    *&v10[8 * v12 + 32] = v6;
    v3[5] = v10;
    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    v13 = v3[1] + result;
    if (v6 < v13)
    {
      goto LABEL_52;
    }

    v3[2] = v13;
    StrongHash.init(from:)(v3, &v24);
    v14 = v3[5];
    if (!*(v14 + 16))
    {
      goto LABEL_56;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v15 = *(v14 + 16);
      if (!v15)
      {
        goto LABEL_49;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
      v14 = result;
      v15 = *(result + 16);
      if (!v15)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    v16 = v15 - 1;
    v6 = *(v14 + 8 * v16 + 32);
    *(v14 + 16) = v16;
    v3[5] = v14;
    v3[2] = v6;
    v23 = v24;
    v7 = v25;
LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v22 = *(result + 16);
  if (v22)
  {
    v20 = v22 - 1;
    v21 = *(result + 8 * v20 + 32);
    *(result + 16) = v20;
    v3[5] = result;
    v3[2] = v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t StrongHash.init(from:)@<X0>(unint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_4:
    v3[3] = 0;
    *a2 = v7;
    a2[1] = v8;
    a2[2] = v9;
    a2[3] = v10;
    a2[4] = v11;
    return result;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v14 = v3[4];
      if (v5 < v14)
      {
        goto LABEL_14;
      }

      if (v14 < v5)
      {
        goto LABEL_48;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_48:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_14:
    v15 = result & 7;
    if ((result & 0xFFFFFFFFFFFFFFF8) != 8)
    {
      if ((result & 7) > 1)
      {
        if (v15 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          v5 = v3[1] + result;
          if (v6 < v5)
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v15 != 5)
          {
            goto LABEL_48;
          }

          v5 = v3[1] + 4;
          if (v6 < v5)
          {
            goto LABEL_48;
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
            return result;
          }

          v5 = v3[1];
          goto LABEL_7;
        }

        if (v15 != 1)
        {
          goto LABEL_48;
        }

        v5 = v3[1] + 8;
        if (v6 < v5)
        {
          goto LABEL_48;
        }
      }

      v3[1] = v5;
      goto LABEL_7;
    }

    if (v15 == 2)
    {
      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_51;
      }

      v16 = v3[1];
      if (v6 < v16 + result)
      {
        goto LABEL_48;
      }

      v3[3] = 13;
      v3[4] = v16 + result;
    }

    else
    {
      if (v15 != 5)
      {
        goto LABEL_48;
      }

      v16 = v3[1];
    }

    v5 = (v16 + 1);
    if (v6 < (v16 + 1))
    {
      goto LABEL_48;
    }

    v17 = *v16;
    v3[1] = v5;
    if (v12 <= 1)
    {
      if (v12)
      {
        if (v12 == 1)
        {
          v8 = v17;
        }
      }

      else
      {
        v7 = v17;
      }
    }

    else
    {
      switch(v12)
      {
        case 2:
          v9 = v17;
          break;
        case 3:
          v10 = v17;
          break;
        case 4:
          v11 = v17;
          break;
      }
    }

    if (__OFADD__(v12++, 1))
    {
      break;
    }

LABEL_7:
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 4 * result) = a2;
  v6 = (a6[7] + 24 * result);
  *v6 = a3;
  v6[1] = a4;
  v6[2] = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

Swift::Void __swiftcall GlassContainerCache.animationWasRemoved()()
{
  v1 = *(v0 + 200) - 1;
  *(v0 + 200) = v1;
  if (!v1)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      if (AGSubgraphIsValid())
      {
        updated = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(*(v0 + 16));
        v11[0] = 17;
        v5 = *(v0 + 112);
        AGGraphClearUpdate();
        v6 = AGSubgraphGetCurrent();
        AGSubgraphSetCurrent();
        v7 = AGCreateWeakAttribute();
        v8 = v7;
        v9 = HIDWORD(v7);
        AGSubgraphSetCurrent();

        AGGraphSetUpdate();
        v10 = swift_allocObject();
        *(v10 + 16) = v3;
        *(v10 + 24) = 0;
        *(v10 + 32) = v8;
        *(v10 + 36) = v9;
        *(v10 + 40) = updated & 1;

        static Update.enqueueAction(reason:_:)(v11, partial apply for closure #1 in GlassContainerCache.invalidateResolved(transaction:), v10);
      }

      else
      {
      }
    }
  }
}

uint64_t AnimatorState.__deallocating_deinit()
{
  AnimatorState.deinit();

  return swift_deallocClassInstance();
}

char *AnimatorState.deinit()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(*(v2 - 8) + 8);
  v3(&v0[*(*v0 + 112)], v2);
  v3(&v0[*(*v0 + 144)], v2);

  return v0;
}

uint64_t View.referenceDate(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceDateModifier(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TimeZone?(a1, v6, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  View.modifier<A>(_:)(v6, a2, v4);
  return outlined destroy of ClosedRange<Date>(v6, type metadata accessor for ReferenceDateModifier);
}

uint64_t outlined destroy of ClosedRange<Date>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSNy10Foundation4DateVGWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t closure #1 in ObjectLocation.set(_:transaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectLocation.checkIsolation()(v13, v14, v15);
  (*(v10 + 16))(v12, a5, a7);
  v17[1] = a1;
  swift_unknownObjectRetain();
  swift_setAtReferenceWritableKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t specialized closure #1 in withTransaction<A>(_:_:)(uint64_t a1, void (*a2)(void *))
{
  _threadTransactionData();
  v4 = one-time initialization token for v5;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (dword_1ED53C520 < v5)
  {
    goto LABEL_12;
  }

  if (_threadTransactionData())
  {
    type metadata accessor for PropertyList.Element();
    swift_unknownObjectRetain();
    swift_dynamicCastClassUnconditional();
  }

  PropertyList.merge(_:)(a1);
LABEL_12:
  v6 = _setThreadTransactionData();
  a2(v6);
  _setThreadTransactionData();
}

uint64_t sub_18D342A4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t initializeWithCopy for DisplayList.ArchiveIDs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

uint64_t sub_18D342B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t destroy for DisplayList.ArchiveIDs(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(a1, v2);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t outlined init with copy of TimeZone?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for TimeZone?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation8TimeZoneVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s10Foundation8TimeZoneVSgMaTm_2(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for TimeZone?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation8TimeZoneVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation8TimeZoneVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation8TimeZoneVSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t DisplayList.ArchiveIDs.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

__int128 *DisplayList.append(_:)(__int128 *result)
{
  v2 = v1;
  *&v20[12] = *(result + 60);
  v3 = result[2];
  *v20 = result[3];
  v4 = *result;
  v18 = result[1];
  v19 = v3;
  v17 = v4;
  if ((~*&v20[16] & 0xC0000000) != 0 || *&v20[16] != 3221225472 || *v20 | *&v20[8] | *(&v19 + 1))
  {
    v5 = *v1;
    outlined init with copy of DisplayList.Item(&v17, &v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
    }

    *(v5 + 2) = v7 + 1;
    v8 = &v5[80 * v7];
    *(v8 + 2) = v17;
    v9 = v18;
    v10 = v19;
    v11 = *v20;
    *(v8 + 92) = *&v20[12];
    *(v8 + 4) = v10;
    *(v8 + 5) = v11;
    *(v8 + 3) = v9;
    *v2 = v5;
    v15 = v19;
    v16[0] = *v20;
    *(v16 + 12) = *&v20[12];
    v13 = v17;
    v14 = v18;
    DisplayList.Item.features.getter(&v12);
    *(v2 + 4) |= v12;
    v15 = v19;
    v16[0] = *v20;
    *(v16 + 12) = *&v20[12];
    v13 = v17;
    v14 = v18;
    result = DisplayList.Item.properties.getter(&v12);
    *(v2 + 3) |= v12;
  }

  return result;
}

uint64_t DisplayList.UnaryInterpolatorGroup.features.getter@<X0>(_WORD *a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 32);
  v5 = *(v1 + 80);
  v6 = *(v5 + 16);
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = 0;
LABEL_7:
      v13 = v6 - v7;
      v14 = (v5 + 112 * v7 + 40);
      do
      {
        v15 = *v14;
        v14 += 56;
        v4 |= v15;
        --v13;
      }

      while (v13);
      goto LABEL_9;
    }

    v8 = 0;
    v7 = v6 & 0x7FFFFFFFFFFFFFFELL;
    v9 = (v5 + 152);
    v10 = v6 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v11 = *(v9 - 56);
      v12 = *v9;
      v9 += 112;
      v4 |= v11;
      v8 |= v12;
      v10 -= 2;
    }

    while (v10);
    v4 |= v8;
    if (v6 != v7)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  *a1 = v4;
  return result;
}

uint64_t InterpolatedDisplayList.updateValue()(uint64_t a1)
{
  v2 = v1;
  v141 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v114 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v111 - v9;
  v11 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v112 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v111 - v15;
  v17 = *(a1 + 100);
  v18 = *(v2 + v17);
  if (v18 != *AGGraphGetValue() >> 1)
  {
    *(v2 + v17) = *AGGraphGetValue() >> 1;
    v19 = *(a1 + 92);
    (*(v6 + 8))(v2 + v19, v5);
    v20 = (*(v11 + 56))(v2 + v19, 1, 1, v4);
    *(v2 + *(a1 + 104)) = 0;
    (*(**v2 + 88))(v20);
  }

  Value = AGGraphGetValue();
  v111 = v22;
  v23 = *(v11 + 16);
  v116 = v11 + 16;
  v115 = v23;
  v23(v16, Value, v4);
  type metadata accessor for CGSize(0);
  v24 = AGGraphGetValue();
  v25 = *v24;
  v26 = v24[1];
  InterpolatedDisplayList.environment.getter(v131);
  v27 = *&v131[0];
  v122 = v4;
  v123 = v16;
  v117 = v131[0];
  if (*(&v131[0] + 1))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v27, &v138);
  }

  else
  {
    v28 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(*&v131[0]);
    if (v28)
    {
      v29 = *(v28 + 84);
      v30 = *(v28 + 20);
      v31 = v30 | (v29 << 32);
      v32 = *(v28 + 86);
      v33 = *(v28 + 87);
      v34 = v28[11];
      v35 = *(v28 + 24);
      *&v138 = v28[9];
      BYTE12(v138) = v29;
      DWORD2(v138) = v30;
      v36 = *(v28 + 85);
      BYTE13(v138) = v36;
      BYTE14(v138) = v32;
      HIBYTE(v138) = v33;
      v139 = v34;
      v140 = v35;
      v37 = v138;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v37 = static ContentTransition.State.defaultValue;
      v31 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v138 = static ContentTransition.State.defaultValue;
      v36 = BYTE13(static ContentTransition.State.defaultValue);
      v139 = off_1ED536620;
      v140 = dword_1ED536628;
    }

    outlined copy of ContentTransition.Storage(v37, v31, v36);
  }

  v120 = ++static DisplayList.Version.lastValue;
  v38 = *(v6 + 16);
  v121 = *(a1 + 92);
  v113 = v38;
  v38(v10, v2 + v121, v5);
  v39 = v11;
  v40 = *(v11 + 48);
  v41 = v122;
  v42 = v40(v10, 1, v122);
  v124 = a1;
  v119 = v39;
  v118 = v5;
  if (v42 != 1)
  {
    v43 = v112;
    (*(v39 + 32))(v112, v10, v41);
    v44 = *(a1 + 24);
    if ((v111 & 1) == 0 || ((*(v44 + 2))(v123, v41, v44) & 1) == 0) && (((*(v44 + 3))(v41, v44) & 1) == 0 || (v45 = (v2 + *(v124 + 96)), *v45 == v25) && v45[1] == v26) || (v46 = getter of transaction #1 in InterpolatedDisplayList.updateValue()(v2), v47 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v46), , (v47))
    {
      (*(v119 + 8))(v43, v41);
      v5 = v118;
      goto LABEL_20;
    }

    v114 = v44;
    *(v2 + *(v124 + 104)) = v120;
    v99 = *(&v117 + 1);
    v55 = v41;
    v54 = v123;
    if ((!BYTE13(v138) && (v100 = v138, (v138 & 0x8000000000) != 0) && ((v101 = DWORD2(v138) | (BYTE12(v138) << 32), v138 ^ 0x8000000000 | DWORD2(v138) & 0xFFFFFFLL) || ((*(v114 + 1))(v131, v55), v102 = *&v131[0], v103 = DWORD2(v131[0]), v104 = BYTE12(v131[0]), v105 = BYTE13(v131[0]), outlined consume of ContentTransition.Storage(v100, v101, 0), *&v138 = v102, BYTE12(v138) = v104, DWORD2(v138) = v103, v54 = v123, BYTE13(v138) = v105, BYTE14(v138) = 1, !v105) && (v100 = v102, (v102 & 0x8000000000) != 0)) && !(v100 ^ 0x8000000001 | DWORD2(v138) & 0xFFFFFF) || ((*(v114 + 5))(&v138, v54, v55), !BYTE13(v138)) && (v100 = v138, (v138 & 0x8000000000) != 0)) && !(v100 ^ 0x8000000001 | DWORD2(v138) & 0xFFFFFF) || !AGGraphGetOutputValue())
    {

      v51 = 0;
      v52 = 0;
      v139 = 0;
      v53 = v119;
      goto LABEL_64;
    }

    v52 = v139;
    v53 = v119;
    if (v139)
    {
LABEL_62:
      v106 = getter of transaction #1 in InterpolatedDisplayList.updateValue()(v2);
      v51 = Transaction.combinedAnimationListener.getter(v106);

LABEL_64:
      LOBYTE(v131[0]) = HIBYTE(v138);
      if (v99)
      {

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v117, &v128);

        v107 = v128;
      }

      else
      {
        v108 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v117);
        if (v108)
        {
          v107 = *(v108 + 72);
        }

        else
        {
          v107 = 0;
        }
      }

      LOBYTE(v125) = v107;
      ContentTransition.applyEnvironmentValues(style:layoutDirection:)(v131, &v125);
      (*(v53 + 8))(v112, v55);
      v50 = *(v6 + 8);
      goto LABEL_23;
    }

    v109 = getter of transaction #1 in InterpolatedDisplayList.updateValue()(v2);
    v110 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v109);
    if (v110)
    {
      v52 = v110[9];

      if (v52)
      {
        v139 = v52;
        goto LABEL_62;
      }
    }

    else
    {
    }

    v52 = (*(v114 + 6))(v54, v55);
    v139 = v52;
    if (!v52)
    {
      v51 = 0;
      goto LABEL_64;
    }

    goto LABEL_62;
  }

  (*(v6 + 8))(v10, v5);
LABEL_20:
  v48 = v114;
  v113(v114, v2 + v121, v5);
  v49 = v40(v48, 1, v41);
  v50 = *(v6 + 8);
  v50(v48, v5);
  if (v49 == 1)
  {
    *(v2 + *(v124 + 104)) = v120;
  }

  v51 = 0;
  v52 = 0;
  v139 = 0;
  v53 = v119;
  v54 = v123;
  v55 = v122;
LABEL_23:
  v56 = v121;
  v50((v2 + v121), v118);
  v115(v2 + v56, v54, v55);
  (*(v53 + 56))(v2 + v56, 0, 1, v55);
  v57 = v124;
  v58 = (v2 + *(v124 + 96));
  *v58 = v25;
  v58[1] = v26;
  v59 = v140;
  v60 = one-time initialization token for defaultFlags;

  if (v60 != -1)
  {
    swift_once();
  }

  v61 = static RasterizationOptions.Flags.defaultFlags & 0xFFFFFF7F;
  if ((*(*(v57 + 24) + 32))(v55))
  {
    v62 = 1;
  }

  else
  {
    v62 = v59 & 1;
  }

  v63 = v62 | v61;
  v64 = *v2;
  v65 = *(v2 + *(v57 + 104));
  if (v65)
  {
    LODWORD(v65) = (2 * ((33 * (v65 >> 16)) ^ v65)) | 1;
  }

  LOWORD(v125) = v65;
  *&v131[0] = v138;
  WORD6(v131[0]) = WORD6(v138);
  DWORD2(v131[0]) = DWORD2(v138);
  BYTE14(v131[0]) = BYTE14(v138);
  outlined copy of ContentTransition.Storage(v138, DWORD2(v138) | (BYTE12(v138) << 32), SBYTE13(v138));
  v66 = 1.0 / *AGGraphGetValue();
  LODWORD(v128) = -1;
  WORD2(v128) = 768;
  v129 = v63;
  LOBYTE(v130) = 3;
  (*(*v64 + 128))(&v125, v131, v52, v51, &v128, *(v2 + 54), v66);

  outlined consume of ContentTransition.Storage(*&v131[0], DWORD2(v131[0]) | (BYTE12(v131[0]) << 32), SBYTE13(v131[0]));
  type metadata accessor for CGPoint(0);
  v67 = AGGraphGetValue();
  v68 = *v67;
  v69 = v67[1];
  v70 = AGGraphGetValue();
  v71 = v68 - *v70;
  v72 = v69 - v70[1];
  v73 = 0.0;
  v74 = 0.0;
  v75 = v71;
  v76 = v72;
  if ((*(v2 + 52) & 1) == 0)
  {
    v77 = AGGraphGetValue();
    v78 = *v77;
    v79 = v77[1];
    v80 = AGGraphGetValue();
    v81 = *v80 * 0.5;
    v82 = v78 + v81;
    v83 = *v80 * floor((v78 + v81) / *v80);
    v84 = v79 + v81;
    v85 = floor(v84 / *v80);
    v86 = floor(v82);
    v87 = floor(v84);
    if (*v80 == 1.0)
    {
      v88 = v87;
    }

    else
    {
      v88 = *v80 * v85;
    }

    if (*v80 == 1.0)
    {
      v89 = v86;
    }

    else
    {
      v89 = v83;
    }

    v90 = AGGraphGetValue();
    v75 = v89 - *v90;
    v76 = v88 - v90[1];
    v73 = v75 - v71;
    v74 = v76 - v72;
  }

  InterpolatedDisplayList.list.getter(v131);
  if (*&v131[0])
  {
    v91 = *&v131[0];
  }

  else
  {
    v91 = MEMORY[0x1E69E7CC0];
  }

  if (*&v131[0])
  {
    v92 = WORD4(v131[0]);
  }

  else
  {
    v92 = 0;
  }

  if (*&v131[0])
  {
    v93 = HIDWORD(v131[0]);
  }

  else
  {
    v93 = 0;
  }

  v128 = v91;
  LOWORD(v129) = v92;
  v130 = v93;
  if (*(v2 + 53))
  {
    v94 = swift_allocObject();
    *(v94 + 16) = v64;
    *(v94 + 24) = v75;
    *(v94 + 32) = v76;
    *(v94 + 40) = v73;
    *(v94 + 48) = v74;
    v95 = v92 | (v93 << 32) | 0x40000000;
    memset(v131, 0, sizeof(v131));
    v96 = v120;
    v132 = v120;
    v133 = v94;
    v134 = 0x1100000000;
    v135 = v91;
    v136 = v95;
    v137 = 0;

    DisplayList.init(_:)(v131, &v125);
    v128 = v125;
    LOWORD(v129) = v126;
    v130 = v127;
  }

  else
  {
    v97 = *(v2 + 32);
    v96 = v120;
    *&v131[0] = v120;
    DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(&v128, v97, v131, v75, v76, v73, v74);
  }

  *&v131[0] = v96;
  DisplayList.translate(by:version:)(__PAIR128__(*&v72, *&v71), v131);
  *&v131[0] = v128;
  WORD4(v131[0]) = v129;
  HIDWORD(v131[0]) = v130;
  AGGraphSetOutputValue();

  (*(v53 + 8))(v123, v55);

  outlined consume of ContentTransition.Storage(v138, DWORD2(v138) | (BYTE12(v138) << 32), SBYTE13(v138));
}

uint64_t sub_18D344104()
{

  return swift_deallocObject();
}

uint64_t DisplayList.UnaryInterpolatorGroup.update(contentSeed:transition:animation:listener:contentsScale:rasterizationOptions:supportsVFD:)(unsigned __int16 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, int *a5, char a6, float a7)
{
  v8 = v7;
  v12 = *a1;
  v13 = *a2;
  v14 = *(a2 + 12);
  v15 = *(a2 + 2);
  v44 = *(a2 + 14);
  v16 = *a5;
  v17 = *(a5 + 4);
  v18 = *(a5 + 5);
  v48 = a5[2];
  v49 = *(a2 + 13);
  v47 = *(a5 + 12);
  swift_beginAccess();
  if (*(v8 + 104) == v12 || !a3)
  {
    goto LABEL_21;
  }

  v42 = v12;
  v43 = v16;
  v19 = v15 | (v14 << 32);
  v21 = (v8 + 80);
  v20 = *(v8 + 80);
  v22 = *(v20 + 16);
  if (!v22)
  {
    goto LABEL_6;
  }

  if (!*(v20 + 112 * v22 + 24))
  {

    specialized Array._customRemoveLast()(&v56);
    if (v56)
    {
      v64 = v59;
      v65[0] = v60[0];
      *(v65 + 9) = *(v60 + 9);
      v61 = v56;
      v62 = v57;
      *v63 = *v58;
      *&v63[16] = *&v58[16];
    }

    else
    {
      v54 = v59;
      v55[0] = v60[0];
      *(v55 + 9) = *(v60 + 9);
      v50 = v56;
      v51 = v57;
      v52 = *v58;
      v53 = *&v58[16];
      _sypSgWOhTm_0(&v50, &lazy cache variable for type metadata for DisplayList.InterpolatorLayer.Removed?, &type metadata for DisplayList.InterpolatorLayer.Removed);
      specialized Array.remove(at:)(*(*v21 + 2) - 1, &v61);
    }

    v59 = v64;
    v60[0] = v65[0];
    *(v60 + 9) = *(v65 + 9);
    v56 = v61;
    v57 = v62;
    *v58 = *v63;
    *&v58[16] = *&v63[16];
    if (*&v65[0])
    {
      v41 = *(**&v60[0] + 96);

      v41(v23);
      outlined destroy of DisplayList.InterpolatorLayer.Removed(&v56);
    }

    else
    {
      outlined destroy of DisplayList.InterpolatorLayer.Removed(&v56);
    }

    goto LABEL_14;
  }

  if (v22 > 7)
  {

    DisplayList.InterpolatorLayer.remove(prefix:)(0);
  }

  else
  {
LABEL_6:
  }

LABEL_14:
  v24 = *(v8 + 40);
  v56 = *(v8 + 24);
  v57 = v24;
  *v58 = *(v8 + 56);
  *&v58[13] = *(v8 + 69);
  v66 = v13;
  v68 = BYTE4(v19);
  v67 = v19;
  v69 = v49;
  v70 = v44;
  outlined init with copy of DisplayList.InterpolatorLayer.Contents(&v56, &v61);
  v45 = ContentTransition.rbTransition.getter();
  v25 = [objc_allocWithZone(MEMORY[0x1E69C7098]) init];
  (*(*a3 + 96))(&v61);
  v50 = v61;
  v51 = v62;
  *&v52 = *v63;
  BYTE8(v52) = v63[8];
  Animation.Function.apply(to:)(v25, *&v61, *&v62, v26, v27, v28);
  outlined consume of Animation.Function(v50, *(&v50 + 1), v51, *(&v51 + 1), v52, BYTE8(v52));
  v61 = v56;
  v62 = v57;
  *v63 = *v58;
  *&v63[13] = *&v58[13];
  v29 = *v21;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v21 = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
    *v21 = v29;
  }

  v32 = *(v29 + 2);
  v31 = *(v29 + 3);
  if (v32 >= v31 >> 1)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v29);
  }

  *(v29 + 2) = v32 + 1;
  v33 = &v29[112 * v32];
  v34 = v61;
  v35 = *v63;
  v36 = *&v63[16];
  *(v33 + 3) = v62;
  *(v33 + 4) = v35;
  *(v33 + 2) = v34;
  *(v33 + 10) = v36;
  *(v33 + 11) = 0;
  *(v33 + 12) = v45;
  *(v33 + 13) = v25;
  *(v33 + 14) = a4;
  *(v33 + 120) = xmmword_18DDABD20;
  v33[136] = 0;
  *v21 = v29;
  if (a4)
  {
    (*(*a4 + 88))();
  }

  *(v8 + 107) = 1;
  v16 = v43;
  LOWORD(v12) = v42;
LABEL_21:
  *(v8 + 104) = v12;
  *(v8 + 106) = a6 & 1;
  if (v49)
  {
    v37 = 0;
  }

  else
  {
    v37 = (v13 & 0xC100000000) == 0x4100000000;
  }

  v38 = !v37;
  if (v37)
  {
    v39 = v13;
  }

  else
  {
    v39 = 0;
  }

  *(v8 + 72) = v39;
  *(v8 + 76) = v38;
  result = swift_endAccess();
  if (*(v8 + 108) != a7)
  {
    *(v8 + 108) = a7;
    swift_beginAccess();
    DisplayList.InterpolatorLayer.invalidateContentsScale()();
    result = swift_endAccess();
  }

  *(v8 + 112) = v16;
  *(v8 + 116) = v17;
  *(v8 + 117) = v18;
  *(v8 + 120) = v48;
  *(v8 + 124) = v47;
  return result;
}

uint64_t DisplayList.UnaryInterpolatorGroup.properties.getter@<X0>(_DWORD *a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 36);
  v5 = *(v1 + 80);
  v6 = *(v5 + 16);
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = 0;
LABEL_7:
      v13 = v6 - v7;
      v14 = (v5 + 112 * v7 + 44);
      do
      {
        v15 = *v14;
        v14 += 28;
        v4 |= v15;
        --v13;
      }

      while (v13);
      goto LABEL_9;
    }

    v8 = 0;
    v7 = v6 & 0x7FFFFFFFFFFFFFFELL;
    v9 = (v5 + 156);
    v10 = v6 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v11 = *(v9 - 28);
      v12 = *v9;
      v9 += 56;
      v4 |= v11;
      v8 |= v12;
      v10 -= 2;
    }

    while (v10);
    v4 |= v8;
    if (v6 != v7)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  *a1 = v4;
  return result;
}

uint64_t InterpolatedDisplayList.environment.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

uint64_t InterpolatedDisplayList.list.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 48) == *MEMORY[0x1E698D3F8])
  {
    result = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v5 = *(Value + 12);
    *(a1 + 8) = *(Value + 8);
    *(a1 + 12) = v5;
  }

  *a1 = result;
  return result;
}

void *EnvironmentValues.redactionReasons.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016RedactionReasonsI033_18671928047E57F039DC339288B6FAFBLLVG_Tt1g5(v3, a1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016RedactionReasonsS033_18671928047E57F039DC339288B6FAFBLLVG_Tt0g5(*v1);
    if (result)
    {
      v5 = result[9];
    }

    else
    {
      v5 = 0;
    }

    *a1 = v5;
  }

  return result;
}

uint64_t EnvironmentValues.redactionReasons.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016RedactionReasonsF033_18671928047E57F039DC339288B6FAFBLLVG_Tt2B5(v2, v3);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016RedactionReasonsK033_18671928047E57F039DC339288B6FAFBLLVG_Ttg5(v4, *v2);
  }
}

uint64_t key path getter for EnvironmentValues.isLuminanceReduced : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016ReducedLuminanceI033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt1g5(v3);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016ReducedLuminanceS033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0g5(*a1);
    if (result)
    {
      v4 = *(result + 72);
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4 & 1;
  return result;
}

uint64_t key path setter for EnvironmentValues.isLuminanceReduced : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016ReducedLuminanceF033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016ReducedLuminanceK033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Ttg5(v4, *a2);
  }
}

uint64_t DisplayList.ViewRenderer.exportedObject(rootView:)(void *a1)
{
  specialized DisplayList.ViewRenderer.updateRenderer(rootView:)(a1);
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 16);
  swift_unknownObjectRetain();
  v5 = v4(ObjectType, v2);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t RasterizationOptions.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 4);
  v4 = *(result + 8);
  v5 = *(result + 9);
  v6 = *(result + 10);
  v7 = *(result + 12);
  v8 = *(result + 16);
  if (one-time initialization token for defaultFlags != -1)
  {
    v14 = a2;
    result = swift_once();
    a2 = v14;
  }

  if (v4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v3;
  }

  v10 = static RasterizationOptions.Flags.defaultFlags | 3;
  if (!v6)
  {
    v10 = (static RasterizationOptions.Flags.defaultFlags & 0xFFFFFFF0) + 1;
  }

  v11 = v10 & 0xFFFFFFF3;
  if (v5)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  if (v7)
  {
    v13 = 8;
  }

  else
  {
    v13 = 0;
  }

  *a2 = v9;
  *(a2 + 4) = v2;
  *(a2 + 5) = 3;
  *(a2 + 8) = v13 | v12 | v11;
  *(a2 + 12) = v8;
  return result;
}

uint64_t NamedImage.Cache.init(archiveDelegate:)(uint64_t a1)
{
  v1 = specialized NamedImage.Cache.init(archiveDelegate:)(a1);

  return v1;
}

uint64_t protocol witness for ViewRendererBase.exportedObject.getter in conformance DisplayList.ViewRasterizer()
{
  v1 = *(v0 + 16);
  result = swift_beginAccess();
  if (*(v0 + 40))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFFF8) + 144);
    v4 = swift_unknownObjectRetain();
    v5 = v3(v4);
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static ArchivedViewCore.archivedViewHostKey.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t DisplayList.ViewRasterizer.render(rootView:from:time:version:maxVersion:environment:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, double *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X5>, double *a6@<X8>)
{
  v7 = v6;
  if (*a5 != *(v7 + 88))
  {
    *(v7 + 88) = *a5;
    *(v7 + 80) = 0;
  }

  v9 = *a4;
  v10 = *a2;
  v11 = *(a2 + 4);
  v12 = *(a2 + 3);
  v13 = *a3;
  result = swift_beginAccess();
  v15 = *(v7 + 40);
  if (!v15)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ([*(v7 + 40) respondsToSelector_])
  {
    [v15 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    if ([a1 respondsToSelector_])
    {
      [a1 bounds];
      v59.origin.x = v24;
      v59.origin.y = v25;
      v59.size.width = v26;
      v59.size.height = v27;
      v58.origin.x = v17;
      v58.origin.y = v19;
      v58.size.width = v21;
      v58.size.height = v23;
      result = CGRectEqualToRect(v58, v59);
      if (result)
      {
LABEL_13:
        if (v9)
        {
          if (*(v7 + 80) != ((2 * ((33 * WORD1(v9)) ^ v9)) | 1))
          {
LABEL_18:
            v57 = *(v7 + 16);
            v48 = *(v7 + 48);
            v49 = *(v7 + 64);
            RasterizationOptions.init(_:)(&v48, &v45);
            v53 = v45;
            v54 = WORD2(v45);
            v55 = DWORD2(v45);
            v56 = BYTE12(v45);
            v31 = *(v7 + 88);
            result = swift_beginAccess();
            if (*(v7 + 40))
            {
              DisplayList.ViewUpdater.Platform.updateDrawingView(_:options:contentsScale:)((v7 + 40), &v53, v31);
              v33 = v32;
              swift_endAccess();
              v34 = *(v7 + 72);
              v35 = swift_allocObject();
              swift_unknownObjectWeakLoadStrong();
              *(v35 + 24) = *(v7 + 32);
              swift_unknownObjectWeakInit();

              swift_unknownObjectRelease();
              v36 = swift_allocObject();
              *(v36 + 16) = v7;
              *(v36 + 24) = v13;
              *(v36 + 32) = v10;
              *(v36 + 40) = v11;
              *(v36 + 44) = v12;
              *(v36 + 48) = v34;
              *(v36 + 56) = v35;
              ObjectType = swift_getObjectType();
              *&v48 = partial apply for closure #1 in DisplayList.ViewRasterizer.drawingContent(list:time:);
              *(&v48 + 1) = v36;
              v50 = 0;
              v51 = 0;
              v49 = 0;
              v52 = 0;
              v38 = *(v33 + 40);

              LOBYTE(v34) = v38(&v48, 0, ObjectType, v33);
              outlined consume of PlatformDrawableContent?(v48, *(&v48 + 1), v49, v50, v51, v52);
              if (v34)
              {
                v30 = INFINITY;
              }

              else
              {
                v30 = v13;
              }

              if (swift_unknownObjectWeakLoadStrong())
              {
                v39 = *(v7 + 32);
                v40 = swift_getObjectType();
                v41 = type metadata accessor for ViewGraphRenderObserver();
                (*(*(*(v39 + 16) + 8) + 16))(&v45, v41, v41, v40);
                swift_unknownObjectRelease();
                if (*(&v46 + 1))
                {
                  outlined init with take of AnyTrackedValue(&v45, &v48);
                  v42 = v50;
                  v43 = v51;
                  __swift_project_boxed_opaque_existential_1(&v48, v50);
                  (*(v43 + 8))(v42, v43);
                  swift_unknownObjectRelease();

                  result = __swift_destroy_boxed_opaque_existential_1(&v48);
                  goto LABEL_28;
                }

                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRelease();

                v47 = 0;
                v45 = 0u;
                v46 = 0u;
              }

              result = outlined destroy of ViewGraphRenderObserver?(&v45);
              goto LABEL_28;
            }

            goto LABEL_30;
          }
        }

        else if (*(v7 + 80))
        {
          goto LABEL_18;
        }

        v30 = *(*(v7 + 72) + 80);
        if (v30 >= v13)
        {
LABEL_28:
          *a6 = v30;
          return result;
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
    result = [a1 respondsToSelector_];
    if ((result & 1) == 0)
    {
      goto LABEL_13;
    }

    [a1 bounds];
  }

  v28 = *(v7 + 16);
  result = [a1 respondsToSelector_];
  if ((result & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  result = [a1 bounds];
  v29 = *(v7 + 40);
  if (v29)
  {
    result = CoreViewSetFrame(v28 & 3, v29);
    *(v7 + 80) = 0;
    goto LABEL_13;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_18D34518C()
{
  MEMORY[0x193AC4950](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18D3451C4()
{

  return swift_deallocObject();
}

uint64_t get_witness_table_7SwiftUI4ViewRzAA15InsettableShapeRd__r__lAA15ModifiedContentVyxAA010_ContainerE8ModifierVyqd__GGAaBHPxAaBHD1__AhA0cI0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 8), *(a1 + 24));
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022OpenSensitiveURLActionV0VG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022OpenSensitiveURLActionV0VG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenSensitiveURLActionKey>, &type metadata for OpenSensitiveURLActionKey, &protocol witness table for OpenSensitiveURLActionKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t key path setter for EnvironmentValues._openSensitiveURL : EnvironmentValues(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (*(a1 + 33))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v11[0] = *a1;
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v12 = v8 | v7;
  v9 = *a2;
  outlined copy of OpenURLAction.Handler(v3, v4, v5, v6, v7);
  swift_retain_n();
  outlined copy of OpenURLAction.Handler(v3, v4, v5, v6, v7);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022OpenSensitiveURLActionF0VG_Tt2B5(a2, v11);

  outlined consume of OpenURLAction.Handler(v3, v4, v5, v6, v7);
  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022OpenSensitiveURLActionK0VG_Ttg5(v9, *a2);
  }

  return outlined consume of OpenURLAction.Handler(v3, v4, v5, v6, v7);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022OpenSensitiveURLActionF0VG_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenSensitiveURLActionKey>, &type metadata for OpenSensitiveURLActionKey, &protocol witness table for OpenSensitiveURLActionKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022OpenSensitiveURLActionV0VG_Tt0B5(v4, *&v12[0]) || (v7 = *(a2 + 16), v12[0] = *a2, v12[1] = v7, v13 = *(a2 + 32), type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for OpenURLAction?, &type metadata for OpenURLAction, MEMORY[0x1E69E6720]), result = AGCompareValues(), !result))
  {
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<OpenSensitiveURLActionKey>>();
    v10 = swift_allocObject();
    v11 = *(a2 + 16);
    *(v10 + 72) = *a2;
    *(v10 + 88) = v11;
    *(v10 + 104) = *(a2 + 32);

    outlined init with copy of HoverEffectContext?(a2, v12, &lazy cache variable for type metadata for OpenURLAction?, &type metadata for OpenURLAction, MEMORY[0x1E69E6720]);
    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<OpenSensitiveURLActionKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<OpenSensitiveURLActionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenSensitiveURLActionKey>, &type metadata for OpenSensitiveURLActionKey, &protocol witness table for OpenSensitiveURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<OpenSensitiveURLActionKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<OpenSensitiveURLActionKey>>);
    }
  }
}

uint64_t EnvironmentValues._openSensitiveURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenSensitiveURLActionKey>);
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022OpenSensitiveURLActionV0VG_Tt0B5(v3, v19);
    if (!v8 || (v5 = *(v8 + 52), v17 = *(v8 + 11), v18 = *(v8 + 9), result = outlined copy of OpenURLAction?(v8[9], *(&v18 + 1), v17, *(&v17 + 1), v5), v5 == 0xFF))
    {
      result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(v3);
      if ((result & 1) == 0)
      {
LABEL_9:
        *a1 = closure #1 in static OpenURLAction.invalidAction.getter;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = 1;
        return result;
      }

      goto LABEL_8;
    }

    v10 = v5 >> 8;
    v11 = v17;
    v12 = v18;
LABEL_13:
    *a1 = v12;
    *(a1 + 16) = v11;
    *(a1 + 32) = v5 & 1;
    *(a1 + 33) = v10 & 1;
    return result;
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022OpenSensitiveURLActionI0VG_Tt1g5(v3, v20);

  LOBYTE(v5) = v21;
  if (v21 != 0xFF)
  {
    v10 = HIBYTE(v21);
    v11 = v20[1];
    v12 = v20[0];
    goto LABEL_13;
  }

  HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5(v3);

  if ((HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  result = swift_beginAccess();
  v9 = word_1ED537C50;
  if (word_1ED537C50 == 0xFF)
  {
    goto LABEL_9;
  }

  v13 = qword_1ED537C40;
  v14 = unk_1ED537C48;
  v16 = *(&static OpenURLAction.defaultSensitiveAction + 1);
  v15 = static OpenURLAction.defaultSensitiveAction;
  *a1 = static OpenURLAction.defaultSensitiveAction;
  *(a1 + 8) = v16;
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  *(a1 + 32) = v9 & 1;
  *(a1 + 33) = HIBYTE(v9) & 1;
  return outlined copy of OpenURLAction.Handler(v15, v16, v13, v14, v9 & 1);
}

double key path getter for EnvironmentValues._openURL : EnvironmentValues@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *a1;
  EnvironmentValues._openURL.getter(v7);
  v3 = v8;
  v4 = v9;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v3;
  *(a2 + 33) = v4;
  return result;
}

double key path getter for EnvironmentValues._openSensitiveURL : EnvironmentValues@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *a1;
  EnvironmentValues._openSensitiveURL.getter(v7);
  v3 = v8;
  v4 = v9;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v3;
  *(a2 + 33) = v4;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ReferenceDateModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t View.containerShape<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v12(0, v10, v11, v7);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  (*(v6 + 16))(v9, a1, a3, v15);
  (*(v6 + 32))(v17, v9, a3);
  View.modifier<A>(_:)(v17, a2, v13);
  return (*(v14 + 8))(v17, v13);
}

{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _ContainerRoundedRectangularShapeModifier();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(v6 + 16))(v8, a1, a3, v11);
  (*(v6 + 32))(v13, v8, a3);
  View.modifier<A>(_:)(v13, a2, v9);
  return (*(v10 + 8))(v13, v9);
}

{
  return View.containerShape<A>(_:)(a1, a2, a3);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<OpenSensitiveURLActionKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<OpenSensitiveURLActionKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<OpenSensitiveURLActionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenSensitiveURLActionKey>, &type metadata for OpenSensitiveURLActionKey, &protocol witness table for OpenSensitiveURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<OpenSensitiveURLActionKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA32_EnvironmentKeyTransformModifierVyAA16RedactionReasonsVGGAaBHPxAaBHD1__AiA0cI0HPyHCHCTm(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  type metadata accessor for _EnvironmentKeyTransformModifier<RedactionReasons>(255, a2, a3);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

void type metadata accessor for _EnvironmentKeyTransformModifier<RedactionReasons>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for RedactionReasons);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void DisplayList.Effect.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v165[5] = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v7 = 0;
    v6 = 0;
    v8 = 20;
LABEL_4:
    a1[3] = 0;
    *a2 = v7;
    *(a2 + 8) = v6;
    *(a2 + 12) = v8;
    return;
  }

  v6 = 0;
  v7 = 0;
  v8 = 20;
  while (2)
  {
    v9 = a1[3];
    if (v9)
    {
      v10 = a1[4];
      if (v4 < v10)
      {
        goto LABEL_15;
      }

      if (v10 < v4)
      {
        goto LABEL_244;
      }

      a1[3] = 0;
    }

    v11 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_247;
    }

    v9 = v11;
    if (v11 < 8)
    {
      goto LABEL_244;
    }

LABEL_15:
    switch(v9 >> 3)
    {
      case 1uLL:
        v12 = v9 & 7;
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            v135 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_247;
            }

            if (v135 < 0)
            {
              goto LABEL_319;
            }

            v13 = a1[1] + v135;
          }

          else
          {
            if (v12 != 5)
            {
              goto LABEL_244;
            }

            v13 = a1[1] + 4;
          }
        }

        else
        {
          if ((v9 & 7) == 0)
          {
            ProtobufDecoder.decodeVarint()();
            v17 = v2;
            if (v2)
            {
              goto LABEL_245;
            }

            outlined consume of DisplayList.Effect(v7, v6, v8);
            v6 = 0;
            v8 = 20;
            v7 = 1;
            goto LABEL_7;
          }

          if (v12 != 1)
          {
            goto LABEL_244;
          }

          v13 = a1[1] + 8;
        }

        if (v5 < v13)
        {
          goto LABEL_244;
        }

        outlined consume of DisplayList.Effect(v7, v6, v8);
        v6 = 0;
        a1[1] = v13;
        v8 = 20;
        v7 = 1;
        goto LABEL_8;
      case 2uLL:
        v65 = v9 & 7;
        if (v65 <= 1)
        {
          if ((v9 & 7) != 0)
          {
            if (v65 != 1)
            {
              goto LABEL_244;
            }

            v66 = a1[1] + 8;
LABEL_218:
            if (v5 < v66)
            {
              goto LABEL_244;
            }

            outlined consume of DisplayList.Effect(v7, v6, v8);
            v6 = 0;
            a1[1] = v66;
            v8 = 20;
            v7 = 2;
            goto LABEL_8;
          }

          ProtobufDecoder.decodeVarint()();
          v17 = v2;
          if (v2)
          {
            goto LABEL_245;
          }

          outlined consume of DisplayList.Effect(v7, v6, v8);
          v6 = 0;
          v8 = 20;
          v7 = 2;
LABEL_7:
          v2 = v17;
          goto LABEL_8;
        }

        if (v65 != 2)
        {
          if (v65 != 5)
          {
            goto LABEL_244;
          }

          v66 = a1[1] + 4;
          goto LABEL_218;
        }

        v136 = ProtobufDecoder.decodeVarint()();
        if (!v2)
        {
          if (v136 < 0)
          {
            goto LABEL_318;
          }

          v66 = a1[1] + v136;
          goto LABEL_218;
        }

LABEL_247:
        v137 = v7;
        v138 = v6;
        v139 = v8;
        goto LABEL_246;
      case 3uLL:
        if ((v9 & 7) == 2)
        {
          v130 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_247;
          }

          if (v130 < 0)
          {
            goto LABEL_316;
          }

          v52 = a1[1];
          if (v5 < v52 + v130)
          {
            goto LABEL_244;
          }

          a1[3] = 29;
          a1[4] = v52 + v130;
        }

        else
        {
          if ((v9 & 7) != 5)
          {
            goto LABEL_244;
          }

          v52 = a1[1];
        }

        v131 = v52 + 1;
        if (v5 < (v52 + 1))
        {
          goto LABEL_244;
        }

        v132 = *v52;
        outlined consume of DisplayList.Effect(v7, v6, v8);
        v6 = 0;
        a1[1] = v131;
        v8 = 4;
        v7 = v132;
        goto LABEL_8;
      case 4uLL:
        if ((v9 & 7) != 2)
        {
          goto LABEL_244;
        }

        v95 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v95 + 2) + 1, 1, v95);
        }

        v97 = *(v95 + 2);
        v96 = *(v95 + 3);
        if (v97 >= v96 >> 1)
        {
          v95 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1, v95);
        }

        *(v95 + 2) = v97 + 1;
        *&v95[8 * v97 + 32] = v5;
        a1[5] = v95;
        v98 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_247;
        }

        if (v98 < 0)
        {
          goto LABEL_287;
        }

        v99 = a1[1] + v98;
        if (v5 < v99)
        {
          goto LABEL_244;
        }

        a1[2] = v99;
        GraphicsBlendMode.init(from:)(a1, &v157);
        v100 = a1[5];
        if (!*(v100 + 2))
        {
          goto LABEL_306;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v101 = *(v100 + 2);
          if (!v101)
          {
            goto LABEL_312;
          }
        }

        else
        {
          v100 = specialized _ArrayBuffer._consumeAndCreateNew()(v100);
          v101 = *(v100 + 2);
          if (!v101)
          {
            goto LABEL_312;
          }
        }

        v102 = v101 - 1;
        v103 = *&v100[8 * v102 + 32];
        *(v100 + 2) = v102;
        a1[5] = v100;
        outlined consume of DisplayList.Effect(v7, v6, v8);
        a1[2] = v103;
        v7 = v157;
        v8 = 5;
        v6 = BYTE8(v157);
        goto LABEL_8;
      case 5uLL:
        if ((v9 & 7) != 2)
        {
          goto LABEL_244;
        }

        v104 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v104 + 2) + 1, 1, v104);
        }

        v106 = *(v104 + 2);
        v105 = *(v104 + 3);
        if (v106 >= v105 >> 1)
        {
          v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v106 + 1, 1, v104);
        }

        *(v104 + 2) = v106 + 1;
        *&v104[8 * v106 + 32] = v5;
        a1[5] = v104;
        v107 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_247;
        }

        if (v107 < 0)
        {
          goto LABEL_283;
        }

        v108 = a1[1] + v107;
        if (v5 < v108)
        {
          goto LABEL_244;
        }

        a1[2] = v108;
        closure #1 in DisplayList.Effect.init(from:)(a1, &v157);
        v53 = a1[5];
        if (!*(v53 + 2))
        {
          goto LABEL_300;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v54 = *(v53 + 2);
          if (!v54)
          {
            goto LABEL_243;
          }
        }

        else
        {
          v53 = specialized _ArrayBuffer._consumeAndCreateNew()(v53);
          v54 = *(v53 + 2);
          if (!v54)
          {
LABEL_243:
            __break(1u);
LABEL_244:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
LABEL_245:
            v137 = v7;
            v138 = v6;
            v139 = v8;
LABEL_246:
            outlined consume of DisplayList.Effect(v137, v138, v139);
            return;
          }
        }

LABEL_157:
        v109 = v54 - 1;
        v110 = *&v53[8 * v109 + 32];
        *(v53 + 2) = v109;
        a1[5] = v53;
        outlined consume of DisplayList.Effect(v7, v6, v8);
        a1[2] = v110;
        v7 = v157;
        v6 = DWORD2(v157);
        v8 = BYTE12(v157);
        v2 = 0;
        goto LABEL_8;
      case 6uLL:
        if ((v9 & 7) != 2)
        {
          goto LABEL_244;
        }

        ProtobufDecoder.beginMessage()();
        if (v2)
        {
          goto LABEL_247;
        }

        closure #2 in DisplayList.Effect.init(from:)(a1, &v157);
        v53 = a1[5];
        if (!*(v53 + 2))
        {
          goto LABEL_294;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v54 = *(v53 + 2);
          if (!v54)
          {
            goto LABEL_298;
          }
        }

        else
        {
          v53 = specialized _ArrayBuffer._consumeAndCreateNew()(v53);
          v54 = *(v53 + 2);
          if (!v54)
          {
            goto LABEL_298;
          }
        }

        goto LABEL_157;
      case 7uLL:
        v67 = swift_allocObject();
        if ((v9 & 7) == 2)
        {
          ProtobufDecoder.beginMessage()();
          if (v2)
          {
            goto LABEL_266;
          }

          *&v158 = 0;
          v157 = 0x3FF0000000000000uLL;
          *(&v158 + 1) = 0x3FF0000000000000;
          v159 = 0uLL;
          closure #1 in CGAffineTransform.init(from:)(&v157, a1, v165);
          v68 = a1[5];
          if (!*(v68 + 2))
          {
            goto LABEL_292;
          }

          v147 = v158;
          v148 = v157;
          v69 = v159;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v70 = *(v68 + 2);
            if (!v70)
            {
              goto LABEL_297;
            }
          }

          else
          {
            v68 = specialized _ArrayBuffer._consumeAndCreateNew()(v68);
            v70 = *(v68 + 2);
            if (!v70)
            {
              goto LABEL_297;
            }
          }

          v71 = v70 - 1;
          v72 = *&v68[8 * v71 + 32];
          *(v68 + 2) = v71;
          a1[5] = v68;
          outlined consume of DisplayList.Effect(v7, v6, v8);
          v6 = 0;
          a1[2] = v72;
          *(v67 + 16) = v148;
          *(v67 + 32) = v147;
          *(v67 + 48) = v69;
          v8 = 9;
          v7 = v67;
          *(v67 + 88) = 0;
          goto LABEL_8;
        }

        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
LABEL_266:
        v140 = v7;
        v141 = v6;
        v142 = v8;
        goto LABEL_273;
      case 8uLL:
        v73 = swift_allocObject();
        if ((v9 & 7) != 2)
        {
          goto LABEL_272;
        }

        v74 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v74 + 2) + 1, 1, v74);
        }

        v76 = *(v74 + 2);
        v75 = *(v74 + 3);
        if (v76 >= v75 >> 1)
        {
          v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v74);
        }

        *(v74 + 2) = v76 + 1;
        *&v74[8 * v76 + 32] = v5;
        a1[5] = v74;
        v77 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          v140 = v7;
          v141 = v6;
          v142 = v8;
LABEL_273:
          outlined consume of DisplayList.Effect(v140, v141, v142);
          goto LABEL_274;
        }

        if (v77 < 0)
        {
          goto LABEL_288;
        }

        v78 = a1[1] + v77;
        if (v5 < v78)
        {
          goto LABEL_272;
        }

        a1[2] = v78;
        v158 = 0uLL;
        v157 = 0x3FF0000000000000uLL;
        v159 = 0x3FF0000000000000uLL;
        v160 = 0uLL;
        v161 = 0x3FF0000000000000;
        closure #1 in ProjectionTransform.init(from:)(&v157, a1, v165);
        v152 = v159;
        v153 = v160;
        v154 = v161;
        v150 = v157;
        v151 = v158;
        v79 = a1[5];
        if (!*(v79 + 2))
        {
          goto LABEL_301;
        }

        v80 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v81 = *(v79 + 2);
          if (!v81)
          {
            goto LABEL_314;
          }
        }

        else
        {
          v79 = specialized _ArrayBuffer._consumeAndCreateNew()(v79);
          v81 = *(v79 + 2);
          if (!v81)
          {
            goto LABEL_314;
          }
        }

        v82 = v81 - 1;
        v83 = *&v79[8 * v82 + 32];
        *(v79 + 2) = v82;
        a1[5] = v79;
        outlined consume of DisplayList.Effect(v7, v6, v8);
        v6 = 0;
        a1[2] = v83;
        *(v73 + 48) = v152;
        *(v73 + 64) = v153;
        *(v73 + 80) = v154;
        *(v73 + 16) = v150;
        *(v73 + 32) = v151;
        v8 = 9;
        *(v73 + 88) = 1;
LABEL_205:
        v7 = v73;
        v2 = v80;
LABEL_8:
        v4 = a1[1];
        v5 = a1[2];
        if (v4 >= v5)
        {
          goto LABEL_4;
        }

        continue;
      case 9uLL:
        v18 = swift_allocObject();
        if ((v9 & 7) != 2)
        {
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_262:
          outlined consume of DisplayList.Effect(v7, v6, v8);
          goto LABEL_274;
        }

        ProtobufDecoder.beginMessage()();
        if (v2)
        {
          goto LABEL_262;
        }

        GraphicsFilter.init(from:)(a1, (v18 + 16));
        if (!*(a1[5] + 16))
        {
          goto LABEL_293;
        }

        v115 = specialized Array._customRemoveLast()();
        if (!v115)
        {
          v115 = specialized Array.remove(at:)(*(a1[5] + 16) - 1);
        }

        v116 = v115;
        outlined consume of DisplayList.Effect(v7, v6, v8);
        v6 = 0;
        a1[2] = v116;
        v8 = 10;
        goto LABEL_172;
      case 0xAuLL:
        if ((v9 & 7) == 0)
        {
          goto LABEL_164;
        }

        if ((v9 & 7) != 2)
        {
          goto LABEL_244;
        }

        v111 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_247;
        }

        if (v111 < 0)
        {
          goto LABEL_317;
        }

        v112 = a1[1] + v111;
        if (v5 < v112)
        {
          goto LABEL_244;
        }

        a1[3] = 80;
        a1[4] = v112;
LABEL_164:
        v113 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          outlined consume of DisplayList.Effect(v7, v6, v8);
          return;
        }

        v114 = v113;
        outlined consume of DisplayList.Effect(v7, v6, v8);
        v6 = 0;
        v7 = v114;
        v8 = 2;
        goto LABEL_8;
      case 0xBuLL:
        if ((v9 & 7) != 2)
        {
          goto LABEL_244;
        }

        v32 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
        }

        v34 = *(v32 + 2);
        v33 = *(v32 + 3);
        if (v34 >= v33 >> 1)
        {
          v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
        }

        *(v32 + 2) = v34 + 1;
        *&v32[8 * v34 + 32] = v5;
        a1[5] = v32;
        v35 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_247;
        }

        if (v35 < 0)
        {
          goto LABEL_286;
        }

        v36 = a1[1] + v35;
        if (v5 < v36)
        {
          goto LABEL_244;
        }

        a1[2] = v36;
        CodableEffectAnimation.init(from:)(a1, &v157);
        v37 = a1[5];
        if (!*(v37 + 2))
        {
          goto LABEL_304;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v38 = *(v37 + 2);
          if (!v38)
          {
            goto LABEL_313;
          }
        }

        else
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew()(v37);
          v38 = *(v37 + 2);
          if (!v38)
          {
            goto LABEL_313;
          }
        }

        v39 = v38 - 1;
        v40 = *&v37[8 * v39 + 32];
        *(v37 + 2) = v39;
        a1[5] = v37;
        outlined consume of DisplayList.Effect(v7, v6, v8);
        a1[2] = v40;
        v7 = swift_allocObject();
        outlined init with take of AnyTrackedValue(&v157, v7 + 16);
        v6 = 0;
        v8 = 11;
        goto LABEL_8;
      case 0xCuLL:
        if ((v9 & 7) != 2)
        {
          goto LABEL_244;
        }

        v55 = a1[5];
        v56 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v55 + 2) + 1, 1, v55);
        }

        v58 = *(v55 + 2);
        v57 = *(v55 + 3);
        if (v58 >= v57 >> 1)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v55);
        }

        *(v55 + 2) = v58 + 1;
        *&v55[8 * v58 + 32] = v5;
        a1[5] = v55;
        v59 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_250;
        }

        if (v59 < 0)
        {
          goto LABEL_285;
        }

        v60 = a1[1] + v59;
        if (v5 < v60)
        {
          goto LABEL_270;
        }

        a1[2] = v60;
        CodableViewFactory.init(from:)(a1, &v157);
        v61 = a1[5];
        if (!*(v61 + 2))
        {
          goto LABEL_302;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v62 = *(v61 + 2);
          if (!v62)
          {
            goto LABEL_309;
          }
        }

        else
        {
          v61 = specialized _ArrayBuffer._consumeAndCreateNew()(v61);
          v62 = *(v61 + 2);
          if (!v62)
          {
            goto LABEL_309;
          }
        }

        v63 = v62 - 1;
        v64 = *&v61[8 * v63 + 32];
        *(v61 + 2) = v63;
        a1[5] = v61;
        a1[2] = v64;
        v50 = swift_allocObject();
        outlined init with copy of AnyTrackedValue(&v157, v165);
        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for AnyViewFactory);
        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for _DisplayList_ViewFactory);
        if ((swift_dynamicCast() & 1) == 0)
        {
          lazy protocol witness table accessor for type CodableViewFactory.Error and conformance CodableViewFactory.Error();
          v162 = 0u;
          v163 = 0u;
          v164 = 0;
          swift_allocError();
          *v146 = 0;
          v146[1] = 0;
          swift_willThrow();
          outlined consume of DisplayList.Effect(v7, v6, v56);
          outlined destroy of CodableViewFactory(&v157);
          if (*(&v163 + 1))
          {
            v144 = &lazy cache variable for type metadata for _DisplayList_ViewFactory?;
            v145 = &lazy cache variable for type metadata for _DisplayList_ViewFactory;
LABEL_279:
            outlined destroy of _DisplayList_AnyEffectAnimator?(&v162, v144, v145);
          }

          goto LABEL_274;
        }

        outlined destroy of CodableViewFactory(&v157);
        outlined consume of DisplayList.Effect(v7, v6, v56);
        outlined init with take of AnyTrackedValue(&v162, v50 + 16);
        v6 = 0;
        v8 = 13;
        goto LABEL_91;
      case 0xDuLL:
        if ((v9 & 7) != 2)
        {
          goto LABEL_244;
        }

        v41 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
        }

        v43 = *(v41 + 2);
        v42 = *(v41 + 3);
        if (v43 >= v42 >> 1)
        {
          v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v41);
        }

        *(v41 + 2) = v43 + 1;
        *&v41[8 * v43 + 32] = v5;
        a1[5] = v41;
        v44 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_247;
        }

        if (v44 < 0)
        {
          goto LABEL_290;
        }

        v45 = a1[1] + v44;
        if (v5 < v45)
        {
          goto LABEL_244;
        }

        a1[2] = v45;
        CodableViewFactory.init(from:)(a1, &v157);
        v46 = a1[5];
        if (!*(v46 + 2))
        {
          goto LABEL_305;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v47 = *(v46 + 2);
          if (!v47)
          {
            goto LABEL_308;
          }
        }

        else
        {
          v46 = specialized _ArrayBuffer._consumeAndCreateNew()(v46);
          v47 = *(v46 + 2);
          if (!v47)
          {
            goto LABEL_308;
          }
        }

        v48 = v47 - 1;
        v49 = *&v46[8 * v48 + 32];
        *(v46 + 2) = v48;
        a1[5] = v46;
        a1[2] = v49;
        v50 = swift_allocObject();
        outlined init with copy of AnyTrackedValue(&v157, v165);
        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for AnyViewFactory);
        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for PlatformGroupFactory);
        if (swift_dynamicCast())
        {
          outlined destroy of CodableViewFactory(&v157);
          outlined consume of DisplayList.Effect(v7, v6, v8);
          outlined init with take of AnyTrackedValue(&v162, v50 + 16);
          v6 = 0;
          v8 = 3;
LABEL_91:
          v7 = v50;
          v2 = 0;
          goto LABEL_8;
        }

        lazy protocol witness table accessor for type CodableViewFactory.Error and conformance CodableViewFactory.Error();
        v162 = 0u;
        v163 = 0u;
        v164 = 0;
        swift_allocError();
        *v143 = 0;
        v143[1] = 0;
        swift_willThrow();
        outlined consume of DisplayList.Effect(v7, v6, v8);
        outlined destroy of CodableViewFactory(&v157);
        if (*(&v163 + 1))
        {
          v144 = &lazy cache variable for type metadata for PlatformGroupFactory?;
          v145 = &lazy cache variable for type metadata for PlatformGroupFactory;
          goto LABEL_279;
        }

LABEL_274:
        swift_deallocUninitializedObject();
        return;
      case 0xEuLL:
        *&v157 = MEMORY[0x1E69E7CC0];
        if ((v9 & 7) != 2)
        {
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_265:
          outlined consume of DisplayList.Effect(v7, v6, v8);

          return;
        }

        ProtobufDecoder.beginMessage()();
        if (v2)
        {
          goto LABEL_265;
        }

        closure #3 in DisplayList.Effect.init(from:)(a1, &v157);
        v28 = a1[5];
        if (!*(v28 + 2))
        {
          goto LABEL_291;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v29 = *(v28 + 2);
          if (!v29)
          {
            goto LABEL_295;
          }
        }

        else
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
          v29 = *(v28 + 2);
          if (!v29)
          {
            goto LABEL_295;
          }
        }

        v30 = v29 - 1;
        v31 = *&v28[8 * v30 + 32];
        *(v28 + 2) = v30;
        a1[5] = v28;
        outlined consume of DisplayList.Effect(v7, v6, v8);
        a1[2] = v31;
        v7 = swift_allocObject();
        v6 = 0;
        *(v7 + 16) = v157;
        v8 = 14;
        goto LABEL_8;
      case 0xFuLL:
        v73 = swift_allocObject();
        if ((v9 & 7) == 0)
        {
          goto LABEL_203;
        }

        if ((v9 & 7) != 2)
        {
          goto LABEL_261;
        }

        v84 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_281;
        }

        if (v84 < 0)
        {
          goto LABEL_315;
        }

        v85 = a1[1] + v84;
        if (v5 < v85)
        {
LABEL_261:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_281:
          outlined consume of DisplayList.Effect(v7, v6, v8);
          swift_deallocUninitializedObject();
          return;
        }

        a1[3] = 120;
        a1[4] = v85;
LABEL_203:
        v133 = ProtobufDecoder.decodeVarint()();
        v80 = v2;
        if (v2)
        {
          goto LABEL_281;
        }

        v134 = v133;
        outlined consume of DisplayList.Effect(v7, v6, v8);
        v6 = 0;
        v8 = 0;
        *(v73 + 16) = v134 != 0;
        *(v73 + 24) = 0;
        *(v73 + 32) = 0;
        goto LABEL_205;
      case 0x10uLL:
        v18 = swift_allocObject();
        if ((v9 & 7) != 2)
        {
          goto LABEL_272;
        }

        v86 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v86 + 2) + 1, 1, v86);
        }

        v88 = *(v86 + 2);
        v87 = *(v86 + 3);
        if (v88 >= v87 >> 1)
        {
          v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1, v86);
        }

        *(v86 + 2) = v88 + 1;
        *&v86[8 * v88 + 32] = v5;
        a1[5] = v86;
        v89 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          v140 = v7;
          v141 = v6;
          v142 = v8;
          goto LABEL_273;
        }

        if (v89 < 0)
        {
          goto LABEL_284;
        }

        v90 = a1[1] + v89;
        if (v5 < v90)
        {
LABEL_272:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          v140 = v7;
          v141 = v6;
          v142 = v8;
          goto LABEL_273;
        }

        a1[2] = v90;
        ContentTransition.State.init(from:)(a1, (v18 + 16));
        v91 = a1[5];
        if (!*(v91 + 2))
        {
          goto LABEL_307;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v92 = *(v91 + 2);
          if (!v92)
          {
            goto LABEL_310;
          }
        }

        else
        {
          v91 = specialized _ArrayBuffer._consumeAndCreateNew()(v91);
          v92 = *(v91 + 2);
          if (!v92)
          {
            goto LABEL_310;
          }
        }

        v93 = v92 - 1;
        v94 = *&v91[8 * v93 + 32];
        *(v91 + 2) = v93;
        a1[5] = v91;
        outlined consume of DisplayList.Effect(v7, v6, v8);
        v6 = 0;
        a1[2] = v94;
        v8 = 12;
        goto LABEL_172;
      case 0x11uLL:
        if ((v9 & 7) != 2)
        {
          goto LABEL_244;
        }

        v118 = a1[5];
        v56 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v118 + 2) + 1, 1, v118);
        }

        v120 = *(v118 + 2);
        v119 = *(v118 + 3);
        if (v120 >= v119 >> 1)
        {
          v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), v120 + 1, 1, v118);
        }

        *(v118 + 2) = v120 + 1;
        *&v118[8 * v120 + 32] = v5;
        a1[5] = v118;
        v121 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
LABEL_250:
          v137 = v7;
          v138 = v6;
          v139 = v56;
        }

        else
        {
          if (v121 < 0)
          {
            goto LABEL_289;
          }

          v122 = v56;
          v123 = a1[1] + v121;
          if (v5 >= v123)
          {
            a1[2] = v123;
            if (!*(v118 + 2))
            {
              goto LABEL_296;
            }

            v17 = 0;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v124 = *(v118 + 2);
              if (!v124)
              {
                goto LABEL_299;
              }
            }

            else
            {
              v118 = specialized _ArrayBuffer._consumeAndCreateNew()(v118);
              v124 = *(v118 + 2);
              if (!v124)
              {
                goto LABEL_299;
              }
            }

            v125 = v124 - 1;
            v126 = *&v118[8 * v125 + 32];
            *(v118 + 2) = v125;
            a1[5] = v118;
            outlined consume of DisplayList.Effect(v7, v6, v122);
            a1[2] = v126;
            v7 = swift_allocEmptyBox();
            v6 = 0;
            v8 = 15;
            goto LABEL_7;
          }

LABEL_270:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          v137 = v7;
          v138 = v6;
          v139 = v56;
        }

        goto LABEL_246;
      case 0x13uLL:
        v14 = v8;
        v117 = swift_allocObject();
        v16 = v117;
        if ((v9 & 7) == 2)
        {
          specialized ProtobufDecoder.decodeMessage<A>()((v117 + 16));
          v17 = v2;
          if (v2)
          {
            goto LABEL_257;
          }

          outlined consume of DisplayList.Effect(v7, v6, v8);
          v6 = 0;
          v8 = 16;
          goto LABEL_6;
        }

        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        break;
      case 0x14uLL:
        v14 = v8;
        v15 = swift_allocObject();
        v16 = v15;
        if ((v9 & 7) == 2)
        {
          specialized ProtobufDecoder.decodeMessage<A>()((v15 + 16));
          v17 = v2;
          if (v2)
          {
            goto LABEL_257;
          }

          outlined consume of DisplayList.Effect(v7, v6, v8);
          v6 = 0;
          v8 = 19;
LABEL_6:
          v7 = v16;
          goto LABEL_7;
        }

        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        break;
      case 0x15uLL:
        v14 = v8;
        v16 = swift_allocObject();
        if ((v9 & 7) != 2)
        {
          goto LABEL_248;
        }

        specialized ProtobufDecoder.decodeMessage<A>()(&v157);
        v17 = v2;
        if (v2)
        {
          goto LABEL_257;
        }

        outlined consume of DisplayList.Effect(v7, v6, v8);
        v6 = 0;
        v51 = v158;
        *(v16 + 16) = v157;
        *(v16 + 32) = v51;
        *(v16 + 88) = 2;
        v8 = 9;
        goto LABEL_6;
      case 0x16uLL:
        v14 = v8;
        v127 = swift_allocObject();
        if ((v9 & 7) == 2)
        {
          specialized ProtobufDecoder.decodeMessage<A>()(v155);
          v17 = v2;
          if (v2)
          {
            goto LABEL_257;
          }

          outlined consume of DisplayList.Effect(v7, v6, v8);
          v6 = 0;
          v128 = v155[3];
          *(v127 + 48) = v155[2];
          *(v127 + 64) = v128;
          *(v127 + 80) = v156;
          v129 = v155[1];
          *(v127 + 16) = v155[0];
          *(v127 + 32) = v129;
          v8 = 9;
          v7 = v127;
          *(v127 + 88) = 3;
          goto LABEL_7;
        }

LABEL_248:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        goto LABEL_257;
      case 0x18uLL:
        v18 = swift_allocObject();
        if ((v9 & 7) != 2)
        {
          goto LABEL_272;
        }

        v19 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
        }

        v21 = *(v19 + 2);
        v20 = *(v19 + 3);
        if (v21 >= v20 >> 1)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v19);
        }

        *(v19 + 2) = v21 + 1;
        *&v19[8 * v21 + 32] = v5;
        a1[5] = v19;
        v22 = ProtobufDecoder.decodeVarint()();
        if (!v2)
        {
          if (v22 < 0)
          {
            __break(1u);
LABEL_283:
            __break(1u);
LABEL_284:
            __break(1u);
LABEL_285:
            __break(1u);
LABEL_286:
            __break(1u);
LABEL_287:
            __break(1u);
LABEL_288:
            __break(1u);
LABEL_289:
            __break(1u);
LABEL_290:
            __break(1u);
LABEL_291:
            __break(1u);
LABEL_292:
            __break(1u);
LABEL_293:
            __break(1u);
LABEL_294:
            __break(1u);
LABEL_295:
            __break(1u);
LABEL_296:
            __break(1u);
LABEL_297:
            __break(1u);
LABEL_298:
            __break(1u);
LABEL_299:
            __break(1u);
LABEL_300:
            __break(1u);
LABEL_301:
            __break(1u);
LABEL_302:
            __break(1u);
LABEL_303:
            __break(1u);
LABEL_304:
            __break(1u);
LABEL_305:
            __break(1u);
LABEL_306:
            __break(1u);
LABEL_307:
            __break(1u);
LABEL_308:
            __break(1u);
LABEL_309:
            __break(1u);
LABEL_310:
            __break(1u);
LABEL_311:
            __break(1u);
LABEL_312:
            __break(1u);
LABEL_313:
            __break(1u);
LABEL_314:
            __break(1u);
LABEL_315:
            __break(1u);
LABEL_316:
            __break(1u);
LABEL_317:
            __break(1u);
LABEL_318:
            __break(1u);
LABEL_319:
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
          }

          v23 = a1[1] + v22;
          if (v5 < v23)
          {
            goto LABEL_272;
          }

          a1[2] = v23;
          SDFShape.init(from:)(a1, (v18 + 16));
          v24 = a1[5];
          if (!*(v24 + 2))
          {
            goto LABEL_303;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v25 = *(v24 + 2);
            if (!v25)
            {
              goto LABEL_311;
            }
          }

          else
          {
            v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
            v25 = *(v24 + 2);
            if (!v25)
            {
              goto LABEL_311;
            }
          }

          v26 = v25 - 1;
          v27 = *&v24[8 * v26 + 32];
          *(v24 + 2) = v26;
          a1[5] = v24;
          outlined consume of DisplayList.Effect(v7, v6, v8);
          v6 = 0;
          a1[2] = v27;
          v8 = 8;
LABEL_172:
          v7 = v18;
          v2 = 0;
          goto LABEL_8;
        }

        v140 = v7;
        v141 = v6;
        v142 = v8;
        goto LABEL_273;
      default:
        *&v157 = v9;
        ProtobufDecoder.skipField(_:)(&v157);
        if (v2)
        {
          goto LABEL_247;
        }

        goto LABEL_8;
    }

    break;
  }

LABEL_257:
  outlined consume of DisplayList.Effect(v7, v6, v14);
  swift_deallocUninitializedObject();
  return;
}

uint64_t sub_18D347C44()
{

  return swift_deallocObject();
}

uint64_t sub_18D347C8C()
{

  return swift_deallocObject();
}

uint64_t sub_18D347CC4()
{
  outlined consume of ContentTransition.Storage(*(v0 + 16), *(v0 + 24) | (*(v0 + 28) << 32), *(v0 + 29));

  return swift_deallocObject();
}

uint64_t sub_18D347D14()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t sub_18D347D80()
{

  return swift_deallocObject();
}

uint64_t closure #1 in static ContainerShapeType.path(in:proxy:shape:context:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, uint64_t a9, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13)
{
  v72 = *&a11;
  v75 = a6;
  v76 = a8;
  v77 = a5;
  v78 = a7;
  MaxX = *&a1;
  v73 = a13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v74 = &v69 - v20;
  v21 = *(a12 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue && (v26 = *WeakValue, v27 = *(WeakValue + 8), (v28 = AGGraphGetWeakValue()) != 0))
  {
    v69 = AssociatedTypeWitness;
    v70 = v19;
    (*(v21 + 16))(v24, v28, a12);
    v79.n128_f64[0] = MaxX;
    v79.n128_u64[1] = a2;
    v80.n128_u64[0] = a3;
    v80.n128_u64[1] = a4;
    v83.origin.x = ContainerShapeContext.convert(_:to:)(*&v72, v77.n128_f64[0], v75.n128_f64[0], v78.n128_f64[0], v76.n128_f64[0]);
    x = v83.origin.x;
    y = v83.origin.y;
    width = v83.size.width;
    height = v83.size.height;
    MinX = CGRectGetMinX(v83);
    v84.origin.x = 0.0;
    v84.origin.y = 0.0;
    v84.size.width = v26;
    v84.size.height = v27;
    v72 = MinX - CGRectGetMinX(v84);
    v85.origin.x = x;
    v85.origin.y = y;
    v85.size.width = width;
    v85.size.height = height;
    MinY = CGRectGetMinY(v85);
    v86.origin.x = 0.0;
    v86.origin.y = 0.0;
    v86.size.width = v26;
    v86.size.height = v27;
    v35 = MinY - CGRectGetMinY(v86);
    v87.origin.x = 0.0;
    v87.origin.y = 0.0;
    v87.size.width = v26;
    v87.size.height = v27;
    MaxX = CGRectGetMaxX(v87);
    v88.origin.x = x;
    v88.origin.y = y;
    v88.size.width = width;
    v88.size.height = height;
    v36 = CGRectGetMaxX(v88);
    v89.origin.x = 0.0;
    v89.origin.y = 0.0;
    v89.size.width = v26;
    v89.size.height = v27;
    MaxY = CGRectGetMaxY(v89);
    v90.origin.x = x;
    v90.origin.y = y;
    v90.size.width = width;
    v90.size.height = height;
    v38 = CGRectGetMaxY(v90);
    v39 = v72;
    if (v35 < v72)
    {
      v39 = v35;
    }

    if (MaxX - v36 < v39)
    {
      v39 = MaxX - v36;
    }

    v40 = MaxY - v38;
    if (v40 >= v39)
    {
      v40 = v39;
    }

    if (v40 < 0.0)
    {
      v41 = 0.0;
    }

    else
    {
      v41 = v40;
    }

    v42 = v74;
    (*(v73 + 32))(a12, v73, v41);
    *&v91.origin.x = v77.n128_u64[0];
    *&v91.size.width = v78.n128_u64[0];
    *&v91.origin.y = v75.n128_u64[0];
    *&v91.size.height = v76.n128_u64[0];
    v92 = CGRectInset(v91, -v41, -v41);
    v43 = v92.origin.x;
    v44 = v92.origin.y;
    v45 = v92.size.width;
    v46 = v92.size.height;
    v47 = v69;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(AssociatedConformanceWitness + 8) + 24))(&v79, v47, v43, v44, v45, v46);
    v49 = v81;
    v50 = *(v70 + 8);
    v77 = v79;
    v78 = v80;
    v50(v42, v47);
    (*(v21 + 8))(v24, a12);
    v51 = *a10;
    v52 = *(a10 + 8);
    v53 = *(a10 + 16);
    v54 = *(a10 + 24);
    v55 = v78;
    *a10 = v77;
    *(a10 + 16) = v55;
    v56 = *(a10 + 32);
    *(a10 + 32) = v49;
    return outlined consume of Path?(v51, v52, v53, v54, v56);
  }

  else
  {
    *&v93.origin.x = v77.n128_u64[0];
    *&v93.size.width = v78.n128_u64[0];
    *&v93.origin.y = v75.n128_u64[0];
    *&v93.size.height = v76.n128_u64[0];
    IsNull = CGRectIsNull(v93);
    v59.i64[0] = v77.n128_u64[0];
    v60.i64[0] = v78.n128_u64[0];
    v60.i64[1] = v76.n128_u64[0];
    if (IsNull)
    {
      v61 = 6;
    }

    else
    {
      v61 = 0;
    }

    if (IsNull)
    {
      v62 = -1;
    }

    else
    {
      v62 = 0;
    }

    v63 = vdupq_n_s64(v62);
    v59.i64[1] = v75.n128_u64[0];
    v64 = *a10;
    v65 = *(a10 + 8);
    v66 = *(a10 + 16);
    v67 = *(a10 + 24);
    *a10 = vbicq_s8(v59, v63);
    *(a10 + 16) = vbicq_s8(v60, v63);
    v68 = *(a10 + 32);
    *(a10 + 32) = v61;

    return outlined consume of Path?(v64, v65, v66, v67, v68);
  }
}

uint64_t outlined consume of ContentTransition?(uint64_t result, uint64_t a2)
{
  if (BYTE6(a2) != 2)
  {
    return outlined consume of ContentTransition.Storage(result, a2, SBYTE5(a2));
  }

  return result;
}

uint64_t ProtobufDecoder.value<A>(fromBinaryPlist:type:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v12 = a3;
  v5 = type metadata accessor for Optional();
  v13 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();

  dispatch thunk of PropertyListDecoder.userInfo.setter();
  type metadata accessor for Array();
  v15 = a2;
  swift_getWitnessTable();
  v8 = v14;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v8)
  {
    v9 = v13;
    swift_getWitnessTable();
    Collection.first.getter();
    v10 = *(a1 - 8);
    if ((*(v10 + 48))(v7, 1, a1) != 1)
    {

      (*(v10 + 32))(v12, v7, a1);
    }

    (*(v9 + 8))(v7, v5);

    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
  }
}

char *closure #1 in DisplayList.Item.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 2143289344;
  *(v5 + 36) = 1;
  v6 = v5 | 0x1000000000000000;
  v7 = a1[1];
  v8 = a1[2];
  if (v7 < v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = a1[3];
      if (v10)
      {
        v11 = a1[4];
        if (v7 < v11)
        {
          goto LABEL_11;
        }

        if (v11 < v7)
        {
          goto LABEL_52;
        }

        a1[3] = 0;
      }

      v10 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of DisplayList.Content.Value(v6);
      }

      if (v10 <= 7)
      {
        goto LABEL_52;
      }

LABEL_11:
      if (v10 >> 3 == 2)
      {
        if ((v10 & 7) != 0)
        {
          if ((v10 & 7) != 2)
          {
            goto LABEL_52;
          }

          v21 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return outlined consume of DisplayList.Content.Value(v6);
          }

          if (v21 < 0)
          {
            goto LABEL_58;
          }

          v22 = a1[1] + v21;
          if (v8 < v22)
          {
LABEL_52:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
            return outlined consume of DisplayList.Content.Value(v6);
          }

          a1[3] = 16;
          a1[4] = v22;
        }

        v23 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of DisplayList.Content.Value(v6);
        }

        v9 = v23;
        goto LABEL_4;
      }

      if (v10 >> 3 == 1)
      {
        if ((v10 & 7) != 2)
        {
          goto LABEL_52;
        }

        v12 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        }

        v14 = *(v12 + 2);
        v13 = *(v12 + 3);
        if (v14 >= v13 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
        }

        *(v12 + 2) = v14 + 1;
        *&v12[8 * v14 + 32] = v8;
        a1[5] = v12;
        v15 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of DisplayList.Content.Value(v6);
        }

        if (v15 < 0)
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          __break(1u);
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
          v31 = *(result + 2);
          if (v31)
          {
            v29 = v31 - 1;
            v30 = *&result[8 * v29 + 32];
            *(result + 2) = v29;
            a1[5] = result;
            a1[2] = v30;
            return outlined consume of DisplayList.Content.Value(v6);
          }

          __break(1u);
          return result;
        }

        v16 = a1[1] + v15;
        if (v8 < v16)
        {
          goto LABEL_52;
        }

        a1[2] = v16;
        DisplayList.Content.Value.init(from:)(a1, &v32);
        v17 = a1[5];
        if (!*(v17 + 2))
        {
          goto LABEL_57;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v18 = *(v17 + 2);
          if (!v18)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
          v18 = *(v17 + 2);
          if (!v18)
          {
LABEL_49:
            __break(1u);
            break;
          }
        }

        v19 = v18 - 1;
        v8 = *&v17[8 * v19 + 32];
        *(v17 + 2) = v19;
        a1[5] = v17;
        a1[2] = v8;
        v20 = v32;
        outlined consume of DisplayList.Content.Value(v6);
        v6 = v20;
      }

      else
      {
        v24 = v10 & 7;
        if (v24 > 1)
        {
          if (v24 == 2)
          {
            v26 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return outlined consume of DisplayList.Content.Value(v6);
            }

            if (v26 < 0)
            {
              goto LABEL_59;
            }

            v25 = a1[1] + v26;
            if (v8 < v25)
            {
              goto LABEL_52;
            }
          }

          else
          {
            if (v24 != 5)
            {
              goto LABEL_52;
            }

            v25 = a1[1] + 4;
            if (v8 < v25)
            {
              goto LABEL_52;
            }
          }
        }

        else
        {
          if ((v10 & 7) == 0)
          {
            ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return outlined consume of DisplayList.Content.Value(v6);
            }

            goto LABEL_4;
          }

          if (v24 != 1)
          {
            goto LABEL_52;
          }

          v25 = a1[1] + 8;
          if (v8 < v25)
          {
            goto LABEL_52;
          }
        }

        a1[1] = v25;
      }

LABEL_4:
      v7 = a1[1];
      if (v7 >= v8)
      {
        v27 = v9;
        goto LABEL_51;
      }
    }
  }

  v27 = 0;
LABEL_51:
  a1[3] = 0;
  *a2 = v6;
  a2[1] = v27;
  a2[2] = 0;
  a2[3] = 0;
  outlined copy of DisplayList.Content.Value(v6);
  return outlined consume of DisplayList.Content.Value(v6);
}

unint64_t DisplayList.Content.Value.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 2143289344;
  *(result + 36) = 1;
  v7 = result | 0x1000000000000000;
  v8 = a1[1];
  v9 = a1[2];
  if (v8 >= v9)
  {
    goto LABEL_226;
  }

  v127 = 0;
  v10 = 1;
  v118 = a2;
  while (2)
  {
    result = a1[3];
    if (result)
    {
      v11 = a1[4];
      if (v8 < v11)
      {
        goto LABEL_10;
      }

      if (v11 < v8)
      {
        goto LABEL_227;
      }

      a1[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v3)
    {
      return outlined consume of DisplayList.Content.Value(v7);
    }

    if (result < 8)
    {
LABEL_227:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      return outlined consume of DisplayList.Content.Value(v7);
    }

LABEL_10:
    switch(result >> 3)
    {
      case 1uLL:
        v12 = result;
        v13 = swift_allocObject();
        if ((v12 & 7) != 2)
        {
          goto LABEL_231;
        }

        v14 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
        }

        v16 = *(v14 + 2);
        v15 = *(v14 + 3);
        if (v16 >= v15 >> 1)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
        }

        *(v14 + 2) = v16 + 1;
        *&v14[8 * v16 + 32] = v9;
        a1[5] = v14;
        v17 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_236;
        }

        if (v17 < 0)
        {
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          __break(1u);
LABEL_267:
          __break(1u);
LABEL_268:
          __break(1u);
LABEL_269:
          __break(1u);
LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
LABEL_274:
          __break(1u);
LABEL_275:
          __break(1u);
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          JUMPOUT(0x18D34A0CCLL);
        }

        v18 = a1[1] + v17;
        a2 = v118;
        if (v9 < v18)
        {
LABEL_231:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          goto LABEL_236;
        }

        a1[2] = v18;
        specialized Color.ResolvedHDR.init(from:)(a1, &v125);
        v19 = a1[5];
        if (!*(v19 + 2))
        {
          goto LABEL_270;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v20 = *(v19 + 2);
          if (!v20)
          {
            goto LABEL_275;
          }
        }

        else
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
          v20 = *(v19 + 2);
          if (!v20)
          {
            goto LABEL_275;
          }
        }

        v21 = v20 - 1;
        v9 = *&v19[8 * v21 + 32];
        *(v19 + 2) = v21;
        a1[5] = v19;
        result = outlined consume of DisplayList.Content.Value(v7);
        a1[2] = v9;
        v22 = v126;
        *(v13 + 16) = v125;
        *(v13 + 32) = v22;
        *(v13 + 36) = 1;
        v7 = v13 | 0x1000000000000000;
        goto LABEL_139;
      case 2uLL:
        v61 = result;
        v62 = swift_allocObject();
        if ((v61 & 7) != 2)
        {
          goto LABEL_229;
        }

        v63 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v63 + 2) + 1, 1, v63);
        }

        v65 = *(v63 + 2);
        v64 = *(v63 + 3);
        if (v65 >= v64 >> 1)
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v63);
        }

        *(v63 + 2) = v65 + 1;
        *&v63[8 * v65 + 32] = v9;
        a1[5] = v63;
        v66 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_236;
        }

        if (v66 < 0)
        {
          goto LABEL_250;
        }

        v67 = a1[1] + v66;
        a2 = v118;
        if (v9 < v67)
        {
LABEL_229:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          goto LABEL_236;
        }

        a1[2] = v67;
        GraphicsImage.init(from:)(a1, v62 + 16);
        v68 = a1[5];
        if (!*(v68 + 2))
        {
          goto LABEL_265;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v69 = *(v68 + 2);
          if (!v69)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v68 = specialized _ArrayBuffer._consumeAndCreateNew()(v68);
          v69 = *(v68 + 2);
          if (!v69)
          {
            goto LABEL_279;
          }
        }

        v70 = v69 - 1;
        v9 = *&v68[8 * v70 + 32];
        *(v68 + 2) = v70;
        a1[5] = v68;
        result = outlined consume of DisplayList.Content.Value(v7);
        a1[2] = v9;
        v7 = v62 | 0x3000000000000000;
        goto LABEL_139;
      case 3uLL:
        if ((result & 7) != 2)
        {
          goto LABEL_227;
        }

        ProtobufDecoder.beginMessage()();
        if (v3)
        {
          return outlined consume of DisplayList.Content.Value(v7);
        }

        closure #2 in DisplayList.Content.Value.init(from:)(a1, v124);
        v3 = 0;
        if (*(a1[5] + 16))
        {
          goto LABEL_87;
        }

        goto LABEL_257;
      case 4uLL:
        if ((result & 7) != 2)
        {
          goto LABEL_227;
        }

        ProtobufDecoder.beginMessage()();
        if (v3)
        {
          return outlined consume of DisplayList.Content.Value(v7);
        }

        closure #5 in DisplayList.Content.Value.init(from:)(a1, v124);
        v3 = 0;
        if (!*(a1[5] + 16))
        {
          goto LABEL_258;
        }

        v55 = specialized Array._customRemoveLast()();
        if (!v55)
        {
          v55 = specialized Array.remove(at:)(*(a1[5] + 16) - 1);
        }

        v9 = v55;
        a1[2] = v55;
        v56 = v124[0];
        v58 = v124[1];
        v57 = v124[2];
        if (ResolvedStyledText.needsDynamicRenderingInArchive.getter())
        {
          v59 = swift_allocObject();
          v60 = ++lastIdentity;
          outlined consume of DisplayList.Content.Value(v7);
          *(v59 + 40) = &type metadata for DynamicTextViewFactory;
          *(v59 + 48) = &protocol witness table for DynamicTextViewFactory;
          result = swift_allocObject();
          *(v59 + 16) = result;
          *(result + 16) = v56;
          *(result + 24) = v58;
          *(result + 32) = v57;
          v7 = v59 | 0xD000000000000000;
          *(result + 40) = v60;
          a2 = v118;
        }

        else
        {
          outlined consume of DisplayList.Content.Value(v7);
          result = swift_allocObject();
          *(result + 16) = v56;
          *(result + 24) = 0;
          *(result + 32) = 0;
          v7 = result | 0xA000000000000000;
          *(result + 40) = v58;
          *(result + 48) = v57;
        }

        goto LABEL_139;
      case 5uLL:
        if ((result & 7) != 2)
        {
          goto LABEL_227;
        }

        v37 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
        }

        v39 = *(v37 + 2);
        v38 = *(v37 + 3);
        if (v39 >= v38 >> 1)
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v37);
        }

        *(v37 + 2) = v39 + 1;
        *&v37[8 * v39 + 32] = v9;
        a1[5] = v37;
        v40 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          return outlined consume of DisplayList.Content.Value(v7);
        }

        if (v40 < 0)
        {
          goto LABEL_246;
        }

        v41 = a1[1] + v40;
        if (v9 < v41)
        {
          goto LABEL_227;
        }

        a1[2] = v41;
        closure #4 in DisplayList.Content.Value.init(from:)(a1, v124);
        v30 = a1[5];
        if (!*(v30 + 2))
        {
          goto LABEL_267;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v31 = *(v30 + 2);
          if (!v31)
          {
            goto LABEL_278;
          }
        }

        else
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
          v31 = *(v30 + 2);
          if (!v31)
          {
            goto LABEL_278;
          }
        }

LABEL_137:
        v73 = v31 - 1;
        v9 = *&v30[8 * v73 + 32];
        *(v30 + 2) = v73;
        a1[5] = v30;
LABEL_138:
        result = outlined consume of DisplayList.Content.Value(v7);
        a1[2] = v9;
        v7 = v124[0];
        goto LABEL_139;
      case 6uLL:
        if ((result & 7) != 2)
        {
          goto LABEL_227;
        }

        ProtobufDecoder.beginMessage()();
        if (v3)
        {
          return outlined consume of DisplayList.Content.Value(v7);
        }

        closure #6 in DisplayList.Content.Value.init(from:)(a1, v124);
        v3 = 0;
        v30 = a1[5];
        if (!*(v30 + 2))
        {
          goto LABEL_259;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v31 = *(v30 + 2);
          if (!v31)
          {
            goto LABEL_261;
          }
        }

        else
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
          v31 = *(v30 + 2);
          if (!v31)
          {
            goto LABEL_261;
          }
        }

        goto LABEL_137;
      case 7uLL:
        if ((result & 7) != 2)
        {
          goto LABEL_227;
        }

        v85 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v85 + 2) + 1, 1, v85);
        }

        v87 = *(v85 + 2);
        v86 = *(v85 + 3);
        if (v87 >= v86 >> 1)
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1, v85);
        }

        *(v85 + 2) = v87 + 1;
        *&v85[8 * v87 + 32] = v9;
        a1[5] = v85;
        v88 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          return outlined consume of DisplayList.Content.Value(v7);
        }

        if (v88 < 0)
        {
          goto LABEL_253;
        }

        v89 = a1[1] + v88;
        if (v9 < v89)
        {
          goto LABEL_227;
        }

        a1[2] = v89;
        CodableViewFactory.init(from:)(a1, v124);
        v90 = a1[5];
        if (!*(v90 + 2))
        {
          goto LABEL_264;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v91 = *(v90 + 2);
          if (!v91)
          {
            goto LABEL_272;
          }
        }

        else
        {
          v90 = specialized _ArrayBuffer._consumeAndCreateNew()(v90);
          v91 = *(v90 + 2);
          if (!v91)
          {
            goto LABEL_272;
          }
        }

        v92 = v91 - 1;
        v9 = *&v90[8 * v92 + 32];
        *(v90 + 2) = v92;
        a1[5] = v90;
        a1[2] = v9;
        v93 = swift_allocObject();
        outlined init with copy of AnyTrackedValue(v124, v123);
        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for AnyViewFactory);
        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for _DisplayList_ViewFactory);
        if (swift_dynamicCast())
        {
          outlined destroy of CodableViewFactory(v124);
          outlined consume of DisplayList.Content.Value(v7);
          result = outlined init with take of AnyTrackedValue(&v120, v93 + 16);
          v7 = v93 | 0xD000000000000000;
          goto LABEL_139;
        }

        lazy protocol witness table accessor for type CodableViewFactory.Error and conformance CodableViewFactory.Error();
        v120 = 0u;
        v121 = 0u;
        v122 = 0;
        swift_allocError();
        *v113 = 0;
        v113[1] = 0;
        swift_willThrow();
        outlined consume of DisplayList.Content.Value(v7);
        outlined destroy of CodableViewFactory(v124);
        if (*(&v121 + 1))
        {
          v114 = &lazy cache variable for type metadata for _DisplayList_ViewFactory?;
          v115 = &lazy cache variable for type metadata for _DisplayList_ViewFactory;
          goto LABEL_243;
        }

        return swift_deallocUninitializedObject();
      case 8uLL:
        if ((result & 7) != 2)
        {
          goto LABEL_227;
        }

        ProtobufDecoder.beginMessage()();
        if (v3)
        {
          return outlined consume of DisplayList.Content.Value(v7);
        }

        closure #8 in DisplayList.Content.Value.init(from:)(a1, v124);
        v3 = 0;
        v30 = a1[5];
        if (!*(v30 + 2))
        {
          goto LABEL_255;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v31 = *(v30 + 2);
          if (!v31)
          {
            goto LABEL_260;
          }
        }

        else
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
          v31 = *(v30 + 2);
          if (!v31)
          {
            goto LABEL_260;
          }
        }

        goto LABEL_137;
      case 9uLL:
        if ((result & 7) != 2)
        {
          goto LABEL_227;
        }

        v104 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v104 + 2) + 1, 1, v104);
        }

        v106 = *(v104 + 2);
        v105 = *(v104 + 3);
        if (v106 >= v105 >> 1)
        {
          v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v106 + 1, 1, v104);
        }

        *(v104 + 2) = v106 + 1;
        *&v104[8 * v106 + 32] = v9;
        a1[5] = v104;
        v107 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          return outlined consume of DisplayList.Content.Value(v7);
        }

        if (v107 < 0)
        {
          goto LABEL_254;
        }

        v108 = a1[1] + v107;
        if (v9 < v108)
        {
          goto LABEL_227;
        }

        a1[2] = v108;
        CodableViewFactory.init(from:)(a1, v124);
        v109 = a1[5];
        if (!*(v109 + 16))
        {
          goto LABEL_266;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v110 = *(v109 + 16);
          if (!v110)
          {
            goto LABEL_225;
          }

          goto LABEL_189;
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew()(v109);
        v109 = result;
        v110 = *(result + 16);
        if (v110)
        {
LABEL_189:
          v111 = v110 - 1;
          v9 = *(v109 + 8 * v111 + 32);
          *(v109 + 16) = v111;
          a1[5] = v109;
          a1[2] = v9;
          v112 = swift_allocObject();
          outlined init with copy of AnyTrackedValue(v124, v123);
          type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for AnyViewFactory);
          type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for PlatformViewFactory);
          if (swift_dynamicCast())
          {
            outlined destroy of CodableViewFactory(v124);
            outlined consume of DisplayList.Content.Value(v7);
            result = outlined init with take of AnyTrackedValue(&v120, v112 + 16);
            v7 = v112 | 0x8000000000000000;
            goto LABEL_139;
          }

          lazy protocol witness table accessor for type CodableViewFactory.Error and conformance CodableViewFactory.Error();
          v120 = 0u;
          v121 = 0u;
          v122 = 0;
          swift_allocError();
          *v117 = 0;
          v117[1] = 0;
          swift_willThrow();
          outlined consume of DisplayList.Content.Value(v7);
          outlined destroy of CodableViewFactory(v124);
          if (!*(&v121 + 1))
          {
            return swift_deallocUninitializedObject();
          }

          v114 = &lazy cache variable for type metadata for PlatformViewFactory?;
          v115 = &lazy cache variable for type metadata for PlatformViewFactory;
LABEL_243:
          outlined destroy of _DisplayList_AnyEffectAnimator?(&v120, v114, v115);
          return swift_deallocUninitializedObject();
        }

LABEL_225:
        __break(1u);
        break;
      case 0xAuLL:
        if ((result & 7) != 2)
        {
          goto LABEL_227;
        }

        v42 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
        }

        v44 = *(v42 + 2);
        v43 = *(v42 + 3);
        if (v44 >= v43 >> 1)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v42);
        }

        *(v42 + 2) = v44 + 1;
        *&v42[8 * v44 + 32] = v9;
        a1[5] = v42;
        v45 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          return outlined consume of DisplayList.Content.Value(v7);
        }

        if (v45 < 0)
        {
          goto LABEL_251;
        }

        v46 = a1[1] + v45;
        if (v9 < v46)
        {
          goto LABEL_227;
        }

        a1[2] = v46;
        CodableViewFactory.init(from:)(a1, v124);
        v47 = a1[5];
        if (!*(v47 + 2))
        {
          goto LABEL_263;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v48 = *(v47 + 2);
          if (!v48)
          {
            goto LABEL_276;
          }
        }

        else
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew()(v47);
          v48 = *(v47 + 2);
          if (!v48)
          {
            goto LABEL_276;
          }
        }

        v49 = v48 - 1;
        v9 = *&v47[8 * v49 + 32];
        *(v47 + 2) = v49;
        a1[5] = v47;
        a1[2] = v9;
        v50 = swift_allocObject();
        outlined init with copy of AnyTrackedValue(v124, v123);
        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for AnyViewFactory);
        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for PlatformLayerFactory);
        if ((swift_dynamicCast() & 1) == 0)
        {
          lazy protocol witness table accessor for type CodableViewFactory.Error and conformance CodableViewFactory.Error();
          v120 = 0u;
          v121 = 0u;
          v122 = 0;
          swift_allocError();
          *v116 = 0;
          v116[1] = 0;
          swift_willThrow();
          outlined consume of DisplayList.Content.Value(v7);
          outlined destroy of CodableViewFactory(v124);
          if (!*(&v121 + 1))
          {
            return swift_deallocUninitializedObject();
          }

          v114 = &lazy cache variable for type metadata for PlatformLayerFactory?;
          v115 = &lazy cache variable for type metadata for PlatformLayerFactory;
          goto LABEL_243;
        }

        outlined destroy of CodableViewFactory(v124);
        outlined consume of DisplayList.Content.Value(v7);
        result = outlined init with take of AnyTrackedValue(&v120, v50 + 16);
        v7 = v50 | 0x9000000000000000;
LABEL_139:
        if (v7 >> 60 == 1)
        {
          v74 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v119 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          outlined consume of DisplayList.Content.Value(v7);
          result = swift_allocObject();
          *(result + 16) = v119;
          *(result + 32) = v74;
          *(result + 36) = v10;
          *(result + 37) = v127;
          v7 = result | 0x1000000000000000;
        }

        v8 = a1[1];
        if (v8 >= v9)
        {
          break;
        }

        continue;
      case 0xBuLL:
        v94 = result;
        v95 = swift_allocObject();
        if ((v94 & 7) != 2)
        {
          goto LABEL_233;
        }

        v96 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v96 + 2) + 1, 1, v96);
        }

        v98 = *(v96 + 2);
        v97 = *(v96 + 3);
        if (v98 >= v97 >> 1)
        {
          v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1, v96);
        }

        *(v96 + 2) = v98 + 1;
        *&v96[8 * v98 + 32] = v9;
        a1[5] = v96;
        v99 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_236;
        }

        if (v99 < 0)
        {
          goto LABEL_249;
        }

        v100 = a1[1] + v99;
        a2 = v118;
        if (v9 < v100)
        {
LABEL_233:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_236:
          outlined consume of DisplayList.Content.Value(v7);
          return swift_deallocUninitializedObject();
        }

        a1[2] = v100;
        BackdropEffect.init(from:)(a1, v95 + 16);
        v101 = a1[5];
        if (!*(v101 + 2))
        {
          goto LABEL_268;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v102 = *(v101 + 2);
          if (!v102)
          {
            goto LABEL_273;
          }
        }

        else
        {
          v101 = specialized _ArrayBuffer._consumeAndCreateNew()(v101);
          v102 = *(v101 + 2);
          if (!v102)
          {
            goto LABEL_273;
          }
        }

        v103 = v102 - 1;
        v9 = *&v101[8 * v103 + 32];
        *(v101 + 2) = v103;
        a1[5] = v101;
        result = outlined consume of DisplayList.Content.Value(v7);
        a1[2] = v9;
        v7 = v95;
        goto LABEL_139;
      case 0xCuLL:
        if ((result & 7) != 2)
        {
          goto LABEL_227;
        }

        v32 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
        }

        v34 = *(v32 + 2);
        v33 = *(v32 + 3);
        if (v34 >= v33 >> 1)
        {
          v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
        }

        *(v32 + 2) = v34 + 1;
        *&v32[8 * v34 + 32] = v9;
        a1[5] = v32;
        v35 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          return outlined consume of DisplayList.Content.Value(v7);
        }

        if (v35 < 0)
        {
          goto LABEL_247;
        }

        v36 = a1[1] + v35;
        a2 = v118;
        if (v9 < v36)
        {
          goto LABEL_227;
        }

        a1[2] = v36;
        closure #1 in DisplayList.Content.Value.init(from:)(a1, v124);
        v30 = a1[5];
        if (!*(v30 + 2))
        {
          goto LABEL_271;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v31 = *(v30 + 2);
          if (!v31)
          {
            goto LABEL_277;
          }
        }

        else
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
          v31 = *(v30 + 2);
          if (!v31)
          {
            goto LABEL_277;
          }
        }

        goto LABEL_137;
      case 0xDuLL:
        if ((result & 7) != 2)
        {
          goto LABEL_227;
        }

        ProtobufDecoder.beginMessage()();
        if (v3)
        {
          return outlined consume of DisplayList.Content.Value(v7);
        }

        closure #7 in DisplayList.Content.Value.init(from:)(a1, v124);
        v3 = 0;
        if (!*(a1[5] + 16))
        {
          goto LABEL_256;
        }

LABEL_87:
        v51 = specialized Array._customRemoveLast()();
        if (!v51)
        {
          v51 = specialized Array.remove(at:)(*(a1[5] + 16) - 1);
        }

        v9 = v51;
        goto LABEL_138;
      case 0xEuLL:
        v75 = result;
        v76 = swift_allocObject();
        if ((v75 & 7) != 2)
        {
          goto LABEL_235;
        }

        v77 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v77 + 2) + 1, 1, v77);
        }

        v79 = *(v77 + 2);
        v78 = *(v77 + 3);
        if (v79 >= v78 >> 1)
        {
          v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v77);
        }

        *(v77 + 2) = v79 + 1;
        *&v77[8 * v79 + 32] = v9;
        a1[5] = v77;
        v80 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_236;
        }

        if (v80 < 0)
        {
          goto LABEL_252;
        }

        v81 = a1[1] + v80;
        a2 = v118;
        if (v9 < v81)
        {
LABEL_235:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          goto LABEL_236;
        }

        a1[2] = v81;
        SDFShape.init(from:)(a1, (v76 + 16));
        v82 = a1[5];
        if (!*(v82 + 2))
        {
          goto LABEL_262;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v83 = *(v82 + 2);
          if (!v83)
          {
            goto LABEL_280;
          }
        }

        else
        {
          v82 = specialized _ArrayBuffer._consumeAndCreateNew()(v82);
          v83 = *(v82 + 2);
          if (!v83)
          {
            goto LABEL_280;
          }
        }

        v84 = v83 - 1;
        v9 = *&v82[8 * v84 + 32];
        *(v82 + 2) = v84;
        a1[5] = v82;
        result = outlined consume of DisplayList.Content.Value(v7);
        a1[2] = v9;
        v7 = v76 | 0x5000000000000000;
        goto LABEL_139;
      case 0xFuLL:
        if ((result & 7) != 2)
        {
          goto LABEL_227;
        }

        v25 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
        }

        v27 = *(v25 + 2);
        v26 = *(v25 + 3);
        if (v27 >= v26 >> 1)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v25);
        }

        *(v25 + 2) = v27 + 1;
        *&v25[8 * v27 + 32] = v9;
        a1[5] = v25;
        v28 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          return outlined consume of DisplayList.Content.Value(v7);
        }

        if (v28 < 0)
        {
          goto LABEL_248;
        }

        v29 = a1[1] + v28;
        if (v9 < v29)
        {
          goto LABEL_227;
        }

        a1[2] = v29;
        closure #3 in DisplayList.Content.Value.init(from:)(a1, v124);
        v30 = a1[5];
        if (!*(v30 + 2))
        {
          goto LABEL_269;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v31 = *(v30 + 2);
          if (!v31)
          {
            goto LABEL_274;
          }
        }

        else
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
          v31 = *(v30 + 2);
          if (!v31)
          {
            goto LABEL_274;
          }
        }

        goto LABEL_137;
      case 0x10uLL:
        if ((result & 7) == 0)
        {
          goto LABEL_96;
        }

        if ((result & 7) != 2)
        {
          goto LABEL_227;
        }

        v52 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          return outlined consume of DisplayList.Content.Value(v7);
        }

        if (v52 < 0)
        {
          goto LABEL_282;
        }

        v53 = a1[1] + v52;
        if (v9 < v53)
        {
          goto LABEL_227;
        }

        a1[3] = 128;
        a1[4] = v53;
LABEL_96:
        result = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          return outlined consume of DisplayList.Content.Value(v7);
        }

        if (result == 2)
        {
          v54 = 2;
        }

        else
        {
          v54 = 0;
        }

        if (result == 1)
        {
          v54 = 1;
        }

        v127 = v54;
        goto LABEL_139;
      case 0x11uLL:
        if ((result & 7) == 0)
        {
          goto LABEL_29;
        }

        if ((result & 7) != 2)
        {
          goto LABEL_227;
        }

        v23 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          return outlined consume of DisplayList.Content.Value(v7);
        }

        if (v23 < 0)
        {
          goto LABEL_281;
        }

        v24 = a1[1] + v23;
        if (v9 < v24)
        {
          goto LABEL_227;
        }

        a1[3] = 136;
        a1[4] = v24;
LABEL_29:
        result = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          return outlined consume of DisplayList.Content.Value(v7);
        }

        v10 = result != 0;
        goto LABEL_139;
      default:
        v71 = result & 7;
        if (v71 > 1)
        {
          if (v71 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v3)
            {
              return outlined consume of DisplayList.Content.Value(v7);
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_283;
            }

            v72 = a1[1] + result;
          }

          else
          {
            if (v71 != 5)
            {
              goto LABEL_227;
            }

            v72 = a1[1] + 4;
          }
        }

        else
        {
          if ((result & 7) == 0)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v3)
            {
              return outlined consume of DisplayList.Content.Value(v7);
            }

            goto LABEL_139;
          }

          if (v71 != 1)
          {
            goto LABEL_227;
          }

          v72 = a1[1] + 8;
        }

        if (v9 < v72)
        {
          goto LABEL_227;
        }

        a1[1] = v72;
        goto LABEL_139;
    }

    break;
  }

LABEL_226:
  a1[3] = 0;
  *a2 = v7;
  return result;
}

uint64_t sub_18D34A110()
{

  return swift_deallocObject();
}

uint64_t sub_18D34A150()
{

  return swift_deallocObject();
}

uint64_t sub_18D34A188()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18D34A1C0()
{

  return swift_deallocObject();
}

uint64_t sub_18D34A20C()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    outlined consume of GraphicsImage.Contents(*(v0 + 16), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_18D34A250()
{

  return swift_deallocObject();
}

unint64_t CodableResolvedPaint.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v126 = *MEMORY[0x1E69E9840];
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
LABEL_198:
    a1[3] = 0;
    goto LABEL_199;
  }

  v7 = 0;
  while (2)
  {
    result = a1[3];
    if (!result)
    {
LABEL_7:
      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
      }

      if (result < 8)
      {
        break;
      }

      goto LABEL_9;
    }

    v9 = a1[4];
    if (v5 >= v9)
    {
      if (v9 < v5)
      {
        break;
      }

      a1[3] = 0;
      goto LABEL_7;
    }

LABEL_9:
    v10 = result >> 3;
    if (result >> 3 <= 5)
    {
      if (result >> 3 > 2)
      {
        if (v10 != 3)
        {
          if (v10 != 4)
          {
            if (v10 == 5)
            {
              goto LABEL_14;
            }

LABEL_165:
            v102 = result & 7;
            if (v102 > 1)
            {
              if (v102 == 2)
              {
                result = ProtobufDecoder.decodeVarint()();
                if (v2)
                {
                }

                if ((result & 0x8000000000000000) != 0)
                {
                  goto LABEL_234;
                }

                v103 = a1[1] + result;
                if (v6 < v103)
                {
                  break;
                }
              }

              else
              {
                if (v102 != 5)
                {
                  break;
                }

                v103 = a1[1] + 4;
                if (v6 < v103)
                {
                  break;
                }
              }
            }

            else
            {
              if ((result & 7) == 0)
              {
                result = ProtobufDecoder.decodeVarint()();
                if (!v2)
                {
                  goto LABEL_162;
                }
              }

              if (v102 != 1)
              {
                break;
              }

              v103 = a1[1] + 8;
              if (v6 < v103)
              {
                break;
              }
            }

            a1[1] = v103;
            goto LABEL_162;
          }

          goto LABEL_92;
        }

        goto LABEL_124;
      }

      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_165;
        }

        goto LABEL_44;
      }

LABEL_112:
      if ((result & 7) != 2)
      {
        break;
      }

      v63 = a1[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v63 + 2) + 1, 1, v63);
      }

      v65 = *(v63 + 2);
      v64 = *(v63 + 3);
      if (v65 >= v64 >> 1)
      {
        v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v63);
      }

      *(v63 + 2) = v65 + 1;
      *&v63[8 * v65 + 32] = v6;
      a1[5] = v63;
      v66 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
      }

      if ((v66 & 0x8000000000000000) == 0)
      {
        v67 = a1[1] + v66;
        if (v6 >= v67)
        {
          a1[2] = v67;
          specialized Color.ResolvedHDR.init(from:)(a1, &v107);
          v68 = a1[5];
          if (!*(v68 + 2))
          {
            goto LABEL_221;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v69 = *(v68 + 2);
            if (!v69)
            {
              goto LABEL_226;
            }
          }

          else
          {
            v68 = specialized _ArrayBuffer._consumeAndCreateNew()(v68);
            v69 = *(v68 + 2);
            if (!v69)
            {
              goto LABEL_226;
            }
          }

          v70 = v69 - 1;
          v6 = *&v68[8 * v70 + 32];
          *(v68 + 2) = v70;

          a1[5] = v68;
          a1[2] = v6;
          v71 = v108;
          type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for _AnyResolvedPaint);
          result = swift_allocObject();
          v7 = result;
          *(result + 16) = v107;
          *(result + 32) = v71;
          *(result + 36) = 1;
          goto LABEL_161;
        }

        break;
      }

      goto LABEL_211;
    }

    if (result >> 3 > 7)
    {
      if (v10 != 8)
      {
        if (v10 != 9)
        {
          if (v10 == 10)
          {
            goto LABEL_30;
          }

          goto LABEL_165;
        }

        goto LABEL_149;
      }

LABEL_136:
      if ((result & 7) != 2)
      {
        break;
      }

      v81 = a1[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v81 + 2) + 1, 1, v81);
      }

      v83 = *(v81 + 2);
      v82 = *(v81 + 3);
      if (v83 >= v82 >> 1)
      {
        v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v81);
      }

      *(v81 + 2) = v83 + 1;
      *&v81[8 * v83 + 32] = v6;
      a1[5] = v81;
      v84 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
      }

      if ((v84 & 0x8000000000000000) == 0)
      {
        v85 = a1[1] + v84;
        if (v6 < v85)
        {
          break;
        }

        a1[2] = v85;
        Shader.ResolvedShader.init(from:)(a1, &v123);
        v86 = a1[5];
        if (*(v86 + 2))
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v87 = *(v86 + 2);
            if (!v87)
            {
              goto LABEL_227;
            }
          }

          else
          {
            v86 = specialized _ArrayBuffer._consumeAndCreateNew()(v86);
            v87 = *(v86 + 2);
            if (!v87)
            {
              goto LABEL_227;
            }
          }

          v88 = v87 - 1;
          v6 = *&v86[8 * v88 + 32];
          *(v86 + 2) = v88;

          a1[5] = v86;
          a1[2] = v6;
          v90 = v123;
          v89 = v124;
          v91 = DWORD2(v124);
          type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<Shader.ResolvedShader>, lazy protocol witness table accessor for type Shader.ResolvedShader and conformance Shader.ResolvedShader, &type metadata for Shader.ResolvedShader, type metadata accessor for _AnyResolvedPaint);
          result = swift_allocObject();
          v7 = result;
          *(result + 16) = v90;
          *(result + 32) = v89;
          *(result + 40) = v91;
          goto LABEL_161;
        }

        goto LABEL_217;
      }

      goto LABEL_213;
    }

    if (v10 == 6)
    {
      goto LABEL_106;
    }

    if (v10 != 7)
    {
      goto LABEL_165;
    }

    if (v7)
    {
      if ((result & 7) != 2)
      {
        break;
      }

      v38 = a1[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 2) + 1, 1, v38);
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      *&v38[8 * v40 + 32] = v6;
      a1[5] = v38;
      v41 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
      }

      if (v41 < 0)
      {
        goto LABEL_231;
      }

      v42 = a1[1] + v41;
      if (v6 < v42)
      {
        break;
      }

      a1[2] = v42;
      v123 = 0u;
      v124 = 0u;
      closure #1 in EdgeInsets.init(from:)(&v123, a1, &v106);
      v43 = a1[5];
      if (!*(v43 + 2))
      {
        goto LABEL_232;
      }

      v104 = v124;
      v105 = v123;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v44 = *(v43 + 2);
        if (!v44)
        {
          goto LABEL_233;
        }
      }

      else
      {
        v43 = specialized _ArrayBuffer._consumeAndCreateNew()(v43);
        v44 = *(v43 + 2);
        if (!v44)
        {
          goto LABEL_233;
        }
      }

      v45 = v44 - 1;
      v6 = *&v43[8 * v45 + 32];
      *(v43 + 2) = v45;
      a1[5] = v43;
      a1[2] = v6;
      v123 = v105;
      v124 = v104;
      v125 = 0;
      (*(*v7 + 152))(&v123, &unk_1F0057070, &protocol witness table for Visitor #1 in AnyResolvedPaint.anchorRect(_:));

      v7 = v125;
      if (v125)
      {
        goto LABEL_161;
      }

      __break(1u);
      return result;
    }

    do
    {
      v46 = a1[1];
      if (v46 >= v6)
      {
        goto LABEL_198;
      }

      result = a1[3];
      if (result)
      {
        v47 = a1[4];
        if (v46 < v47)
        {
          goto LABEL_79;
        }

        if (v47 < v46)
        {
          goto LABEL_203;
        }

        a1[3] = 0;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
      }

      if (result < 8)
      {
        goto LABEL_203;
      }

LABEL_79:
      v48 = result >> 3;
    }

    while (result >> 3 == 7);
    if (result >> 3 <= 4)
    {
      if (result >> 3 > 2)
      {
        if (v48 == 3)
        {
LABEL_124:
          if ((result & 7) != 2)
          {
            break;
          }

          v72 = a1[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v72 + 2) + 1, 1, v72);
          }

          v74 = *(v72 + 2);
          v73 = *(v72 + 3);
          if (v74 >= v73 >> 1)
          {
            v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1, v72);
          }

          *(v72 + 2) = v74 + 1;
          *&v72[8 * v74 + 32] = v6;
          a1[5] = v72;
          v75 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
          }

          if ((v75 & 0x8000000000000000) == 0)
          {
            v76 = a1[1] + v75;
            if (v6 >= v76)
            {
              a1[2] = v76;
              RadialGradient._Paint.init(from:)(a1, v111);
              v77 = a1[5];
              if (!*(v77 + 2))
              {
                goto LABEL_222;
              }

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v78 = *(v77 + 2);
                if (!v78)
                {
                  goto LABEL_225;
                }
              }

              else
              {
                v77 = specialized _ArrayBuffer._consumeAndCreateNew()(v77);
                v78 = *(v77 + 2);
                if (!v78)
                {
                  goto LABEL_225;
                }
              }

              v79 = v78 - 1;
              v6 = *&v77[8 * v79 + 32];
              *(v77 + 2) = v79;

              a1[5] = v77;
              a1[2] = v6;
              type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<RadialGradient._Paint>, lazy protocol witness table accessor for type RadialGradient._Paint and conformance RadialGradient._Paint, &type metadata for RadialGradient._Paint, type metadata accessor for _AnyResolvedPaint);
              result = swift_allocObject();
              v7 = result;
              v80 = v111[1];
              *(result + 16) = v111[0];
              *(result + 32) = v80;
              *(result + 48) = v112[0];
              *(result + 57) = *(v112 + 9);
              goto LABEL_161;
            }

            break;
          }

LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
          goto LABEL_219;
        }

        if (v48 == 4)
        {
LABEL_92:
          if ((result & 7) != 2)
          {
            break;
          }

          v49 = a1[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
          }

          v51 = *(v49 + 2);
          v50 = *(v49 + 3);
          if (v51 >= v50 >> 1)
          {
            v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v49);
          }

          *(v49 + 2) = v51 + 1;
          *&v49[8 * v51 + 32] = v6;
          a1[5] = v49;
          v52 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
          }

          if ((v52 & 0x8000000000000000) == 0)
          {
            v53 = a1[1] + v52;
            if (v6 < v53)
            {
              break;
            }

            a1[2] = v53;
            AngularGradient._Paint.init(from:)(a1, v113);
            v54 = a1[5];
            if (*(v54 + 2))
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v55 = *(v54 + 2);
                if (!v55)
                {
                  goto LABEL_230;
                }
              }

              else
              {
                v54 = specialized _ArrayBuffer._consumeAndCreateNew()(v54);
                v55 = *(v54 + 2);
                if (!v55)
                {
                  goto LABEL_230;
                }
              }

              v56 = v55 - 1;
              v6 = *&v54[8 * v56 + 32];
              *(v54 + 2) = v56;

              a1[5] = v54;
              a1[2] = v6;
              type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<AngularGradient._Paint>, lazy protocol witness table accessor for type AngularGradient._Paint and conformance AngularGradient._Paint, &type metadata for AngularGradient._Paint, type metadata accessor for _AnyResolvedPaint);
              result = swift_allocObject();
              v7 = result;
              v57 = v113[1];
              *(result + 16) = v113[0];
              *(result + 32) = v57;
              *(result + 48) = v114[0];
              *(result + 57) = *(v114 + 9);
              goto LABEL_161;
            }

            goto LABEL_216;
          }

          goto LABEL_208;
        }
      }

      else
      {
        if (v48 == 1)
        {
          goto LABEL_112;
        }

        if (v48 == 2)
        {
LABEL_44:
          if ((result & 7) != 2)
          {
            break;
          }

          v29 = a1[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
          }

          v31 = *(v29 + 2);
          v30 = *(v29 + 3);
          if (v31 >= v30 >> 1)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v29);
          }

          *(v29 + 2) = v31 + 1;
          *&v29[8 * v31 + 32] = v6;
          a1[5] = v29;
          v32 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
          }

          if ((v32 & 0x8000000000000000) == 0)
          {
            v33 = a1[1] + v32;
            if (v6 < v33)
            {
              break;
            }

            a1[2] = v33;
            LinearGradient._Paint.init(from:)(a1, v109);
            v34 = a1[5];
            if (*(v34 + 2))
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v35 = *(v34 + 2);
                if (!v35)
                {
                  goto LABEL_224;
                }
              }

              else
              {
                v34 = specialized _ArrayBuffer._consumeAndCreateNew()(v34);
                v35 = *(v34 + 2);
                if (!v35)
                {
                  goto LABEL_224;
                }
              }

              v36 = v35 - 1;
              v6 = *&v34[8 * v36 + 32];
              *(v34 + 2) = v36;

              a1[5] = v34;
              a1[2] = v6;
              type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<LinearGradient._Paint>, lazy protocol witness table accessor for type LinearGradient._Paint and conformance LinearGradient._Paint, &type metadata for LinearGradient._Paint, type metadata accessor for _AnyResolvedPaint);
              result = swift_allocObject();
              v7 = result;
              v37 = v109[1];
              *(result + 16) = v109[0];
              *(result + 32) = v37;
              *(result + 48) = v110[0];
              *(result + 57) = *(v110 + 9);
              goto LABEL_161;
            }

            goto LABEL_215;
          }

          goto LABEL_209;
        }
      }

      goto LABEL_164;
    }

    if (result >> 3 <= 7)
    {
      if (v48 == 5)
      {
LABEL_14:
        if ((result & 7) != 2)
        {
          break;
        }

        v11 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
        }

        v13 = *(v11 + 2);
        v12 = *(v11 + 3);
        if (v13 >= v12 >> 1)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
        }

        *(v11 + 2) = v13 + 1;
        *&v11[8 * v13 + 32] = v6;
        a1[5] = v11;
        v14 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
          v15 = a1[1] + v14;
          if (v6 < v15)
          {
            break;
          }

          a1[2] = v15;
          EllipticalGradient._Paint.init(from:)(a1, v115);
          v16 = a1[5];
          if (*(v16 + 2))
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v17 = *(v16 + 2);
              if (!v17)
              {
                goto LABEL_229;
              }
            }

            else
            {
              v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
              v17 = *(v16 + 2);
              if (!v17)
              {
                goto LABEL_229;
              }
            }

            v18 = v17 - 1;
            v6 = *&v16[8 * v18 + 32];
            *(v16 + 2) = v18;

            a1[5] = v16;
            a1[2] = v6;
            type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<EllipticalGradient._Paint>, lazy protocol witness table accessor for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint, &type metadata for EllipticalGradient._Paint, type metadata accessor for _AnyResolvedPaint);
            result = swift_allocObject();
            v7 = result;
            v19 = v115[1];
            *(result + 16) = v115[0];
            *(result + 32) = v19;
            *(result + 48) = v116[0];
            *(result + 57) = *(v116 + 9);
            goto LABEL_161;
          }

          goto LABEL_218;
        }

        goto LABEL_210;
      }

      if (v48 != 6)
      {
        goto LABEL_164;
      }

LABEL_106:
      if ((result & 7) != 2)
      {
        break;
      }

      ProtobufDecoder.beginMessage()();
      if (v2)
      {
      }

      ImagePaint._Paint.init(from:)(a1, v119);
      if (*(a1[5] + 16))
      {
        v58 = specialized Array._customRemoveLast()();
        if (!v58)
        {
          v58 = specialized Array.remove(at:)(*(a1[5] + 16) - 1);
        }

        v6 = v58;

        a1[2] = v6;
        type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<ImagePaint._Paint>, lazy protocol witness table accessor for type ImagePaint._Paint and conformance ImagePaint._Paint, &type metadata for ImagePaint._Paint, type metadata accessor for _AnyResolvedPaint);
        result = swift_allocObject();
        v7 = result;
        v59 = v119[7];
        *(result + 112) = v119[6];
        *(result + 128) = v59;
        *(result + 144) = v119[8];
        *(result + 160) = v120;
        v60 = v119[3];
        *(result + 48) = v119[2];
        *(result + 64) = v60;
        v61 = v119[5];
        *(result + 80) = v119[4];
        *(result + 96) = v61;
        v62 = v119[1];
        *(result + 16) = v119[0];
        *(result + 32) = v62;
        goto LABEL_161;
      }

      goto LABEL_214;
    }

    if (v48 == 8)
    {
      goto LABEL_136;
    }

    if (v48 == 9)
    {
LABEL_149:
      if ((result & 7) != 2)
      {
        break;
      }

      v92 = a1[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v92 + 2) + 1, 1, v92);
      }

      v94 = *(v92 + 2);
      v93 = *(v92 + 3);
      if (v94 >= v93 >> 1)
      {
        v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v94 + 1, 1, v92);
      }

      *(v92 + 2) = v94 + 1;
      *&v92[8 * v94 + 32] = v6;
      a1[5] = v92;
      v95 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
      }

      if ((v95 & 0x8000000000000000) == 0)
      {
        v96 = a1[1] + v95;
        if (v6 < v96)
        {
          break;
        }

        a1[2] = v96;
        MeshGradient._Paint.init(from:)(a1, v121);
        v97 = a1[5];
        if (*(v97 + 2))
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v98 = *(v97 + 2);
            if (!v98)
            {
              goto LABEL_223;
            }
          }

          else
          {
            v97 = specialized _ArrayBuffer._consumeAndCreateNew()(v97);
            v98 = *(v97 + 2);
            if (!v98)
            {
              goto LABEL_223;
            }
          }

          v99 = v98 - 1;
          v6 = *&v97[8 * v99 + 32];
          *(v97 + 2) = v99;

          a1[5] = v97;
          a1[2] = v6;
          type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<MeshGradient._Paint>, lazy protocol witness table accessor for type MeshGradient._Paint and conformance MeshGradient._Paint, &type metadata for MeshGradient._Paint, type metadata accessor for _AnyResolvedPaint);
          result = swift_allocObject();
          v7 = result;
          v100 = v121[3];
          *(result + 48) = v121[2];
          *(result + 64) = v100;
          *(result + 80) = v122;
          v101 = v121[1];
          *(result + 16) = v121[0];
          *(result + 32) = v101;
          goto LABEL_161;
        }

LABEL_219:
        __break(1u);
        goto LABEL_220;
      }

      __break(1u);
      goto LABEL_207;
    }

    if (v48 != 10)
    {
LABEL_164:
      v7 = 0;
      goto LABEL_165;
    }

LABEL_30:
    if ((result & 7) != 2)
    {
      break;
    }

    v20 = a1[5];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
    }

    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 2) = v22 + 1;
    *&v20[8 * v22 + 32] = v6;
    a1[5] = v20;
    v23 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
    }

    if (v23 < 0)
    {
      goto LABEL_212;
    }

    v24 = a1[1] + v23;
    if (v6 >= v24)
    {
      a1[2] = v24;
      LinearGradient.AbsolutePaint.init(from:)(a1, v117);
      v25 = a1[5];
      if (*(v25 + 2))
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v26 = *(v25 + 2);
          if (v26)
          {
            goto LABEL_41;
          }

LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
          __break(1u);
          __break(1u);
        }

        v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
        v26 = *(v25 + 2);
        if (!v26)
        {
          goto LABEL_228;
        }

LABEL_41:
        v27 = v26 - 1;
        v6 = *&v25[8 * v27 + 32];
        *(v25 + 2) = v27;

        a1[5] = v25;
        a1[2] = v6;
        type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<LinearGradient.AbsolutePaint>, lazy protocol witness table accessor for type LinearGradient.AbsolutePaint and conformance LinearGradient.AbsolutePaint, &type metadata for LinearGradient.AbsolutePaint, type metadata accessor for _AnyResolvedPaint);
        result = swift_allocObject();
        v7 = result;
        v28 = v117[1];
        *(result + 16) = v117[0];
        *(result + 32) = v28;
        *(result + 48) = v118[0];
        *(result + 57) = *(v118 + 9);
LABEL_161:
        v2 = 0;
LABEL_162:
        v5 = a1[1];
        if (v5 >= v6)
        {
          a1[3] = 0;
          if (v7)
          {
            *a2 = v7;
            return result;
          }

LABEL_199:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          return swift_willThrow();
        }

        continue;
      }

LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
      goto LABEL_228;
    }

    break;
  }

LABEL_203:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
}

uint64_t CodableViewFactory.init(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = xmmword_18DDBA7E0;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v7 >= v8)
  {
LABEL_53:
    v9 = 0;
    *(a1 + 24) = 0;
    v12 = 0xC000000000000000;
LABEL_54:
    result = outlined consume of Data._Representation(v9, v12);
    *(a2 + 3) = &type metadata for EmptyViewFactory;
    *(a2 + 4) = &protocol witness table for EmptyViewFactory;
    return result;
  }

  v48 = a2;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0xC000000000000000;
  do
  {
    v13 = *(a1 + 24);
    if (v13)
    {
      v14 = *(a1 + 32);
      if (v7 < v14)
      {
        goto LABEL_11;
      }

      if (v14 < v7)
      {
        goto LABEL_55;
      }

      *(a1 + 24) = 0;
    }

    v15 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_65;
    }

    v13 = v15;
    if (v15 < 8)
    {
      goto LABEL_55;
    }

LABEL_11:
    if (v13 >> 3 == 2)
    {
      if ((v13 & 7) != 2)
      {
        goto LABEL_55;
      }

      v25 = *(a1 + 40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v25);
      }

      *(v25 + 2) = v27 + 1;
      *&v25[8 * v27 + 32] = v8;
      *(a1 + 40) = v25;
      v28 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {

        return outlined consume of Data._Representation(v50, *(&v50 + 1));
      }

      if (v28 < 0)
      {
        goto LABEL_75;
      }

      v29 = *(a1 + 8) + v28;
      if (v8 < v29)
      {

        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        goto LABEL_71;
      }

      *(a1 + 16) = v29;
      v30 = Data.init(from:)(a1);
      a2 = *(a1 + 40);
      if (!*(a2 + 2))
      {
        goto LABEL_76;
      }

      v9 = v30;
      v12 = v31;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v32 = *(a2 + 2);
        if (!v32)
        {
          goto LABEL_52;
        }
      }

      else
      {
        a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
        v32 = *(a2 + 2);
        if (!v32)
        {
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }
      }

      v33 = v32 - 1;
      v8 = *&a2[8 * v33 + 32];
      *(a2 + 2) = v33;
      *(a1 + 40) = a2;
      outlined consume of Data._Representation(v50, *(&v50 + 1));
      *(a1 + 16) = v8;
      *&v50 = v9;
      *(&v50 + 1) = v12;
    }

    else if (v13 >> 3 == 1)
    {

      if ((v13 & 7) != 2)
      {
        goto LABEL_56;
      }

      v16 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of Data._Representation(v9, v12);
      }

      v17 = v16;
      if (v16 < 0)
      {
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
        swift_once();
        goto LABEL_60;
      }

      v18 = *(a1 + 8);
      if (v8 < v18 + v16)
      {
        goto LABEL_56;
      }

      *(a1 + 8) = v18 + v16;
      if (v16)
      {
        v11 = *a1;
        v19 = v18 - [*a1 bytes];
        v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v21;
        if (__OFADD__(v19, v17))
        {
          goto LABEL_77;
        }

        if (v19 + v17 < v19)
        {
          goto LABEL_78;
        }

        v22 = v20;
        v17 = Data._Representation.subscript.getter();
        v24 = v23;
        outlined consume of Data._Representation(v22, v10);
      }

      else
      {
        v24 = 0xC000000000000000;
      }

      static String.Encoding.utf8.getter();
      v36 = String.init(data:encoding:)();
      if (!v37)
      {
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        outlined consume of Data._Representation(v17, v24);
        return outlined consume of Data._Representation(v9, v12);
      }

      v10 = v36;
      v11 = v37;
      outlined consume of Data._Representation(v17, v24);
    }

    else
    {
      v34 = v13 & 7;
      if (v34 > 1)
      {
        if (v34 == 2)
        {
          v38 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
LABEL_65:
            outlined consume of Data._Representation(v9, v12);
          }

          if (v38 < 0)
          {
            goto LABEL_79;
          }

          v35 = *(a1 + 8) + v38;
          if (v8 < v35)
          {
LABEL_55:

LABEL_56:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
            return outlined consume of Data._Representation(v9, v12);
          }
        }

        else
        {
          if (v34 != 5)
          {
            goto LABEL_55;
          }

          v35 = *(a1 + 8) + 4;
          if (v8 < v35)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_3;
      }

      if ((v13 & 7) != 0)
      {
        if (v34 != 1)
        {
          goto LABEL_55;
        }

        v35 = *(a1 + 8) + 8;
        if (v8 < v35)
        {
          goto LABEL_55;
        }

LABEL_3:
        *(a1 + 8) = v35;
        goto LABEL_4;
      }

      ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_65;
      }
    }

LABEL_4:
    v7 = *(a1 + 8);
  }

  while (v7 < v8);
  *(a1 + 24) = 0;
  if (!v11)
  {
    a2 = v48;
    goto LABEL_54;
  }

  if (one-time initialization token for shared != -1)
  {
    goto LABEL_80;
  }

LABEL_60:
  os_unfair_lock_lock(&static ViewDecoders.shared);
  v40 = off_1EAB0F5C8;
  if (!*(off_1EAB0F5C8 + 2) || (v41 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11), (v42 & 1) == 0))
  {
    os_unfair_lock_unlock(&static ViewDecoders.shared);
    goto LABEL_67;
  }

  v43 = (v40[7] + 24 * v41);
  v44 = *v43;
  v45 = v43[1];
  v46 = v43[2];
  os_unfair_lock_unlock(&static ViewDecoders.shared);
  if (!v44)
  {
LABEL_67:
    lazy protocol witness table accessor for type CodableViewFactory.Error and conformance CodableViewFactory.Error();
    swift_allocError();
    *v47 = v10;
    v47[1] = v11;
LABEL_71:
    swift_willThrow();
    return outlined consume of Data._Representation(v50, *(&v50 + 1));
  }

  specialized project #1 <A>(type:) in CodableViewFactory.init(from:)(a1, &v50, v44, v45, v46, v49);
  if (!v2)
  {
    outlined consume of Data._Representation(v50, *(&v50 + 1));
    return outlined init with take of AnyTrackedValue(v49, v48);
  }

  return outlined consume of Data._Representation(v50, *(&v50 + 1));
}

uint64_t Data.init(from:)(uint64_t a1)
{
  v3 = type metadata accessor for Data.Deallocator();
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v9 >= v10)
  {
    *(a1 + 24) = 0;
    return 0;
  }

  v65 = (v57 - v7);
  v66 = v5;
  v61 = v8;
  v11 = 0;
  v63 = *MEMORY[0x1E6969028];
  v62 = (v6 + 104);
  v59 = (v6 + 88);
  v60 = (v6 + 16);
  v58 = *MEMORY[0x1E6969010];
  v64 = (v6 + 8);
  v12 = 0xF000000000000000;
  v13 = &unk_1EAB0F000;
  do
  {
    while (1)
    {
      v14 = *(a1 + 24);
      if (v14)
      {
        v15 = *(a1 + 32);
        if (v9 < v15)
        {
          goto LABEL_14;
        }

        if (v15 < v9)
        {
          goto LABEL_65;
        }

        *(a1 + 24) = 0;
      }

      v14 = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_66;
      }

      if (v14 <= 7)
      {
        goto LABEL_65;
      }

LABEL_14:
      v16 = v14 & 7;
      if (v14 >> 3 != 2)
      {
        break;
      }

      if (v16 != 2)
      {
        goto LABEL_65;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_66;
      }

      v41 = result;
      if (result < 0)
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
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
        return result;
      }

      v42 = *(a1 + 8);
      if (v10 < v42 + result)
      {
        goto LABEL_65;
      }

      v67 = 0;
      *(a1 + 8) = v42 + result;
      if (result)
      {
        v43 = v10;
        v44 = v13;
        v45 = v42 - [*a1 bytes];
        result = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;
        if (__OFADD__(v45, v41))
        {
          goto LABEL_71;
        }

        if (v45 + v41 < v45)
        {
          goto LABEL_72;
        }

        v48 = result;
        v49 = Data._Representation.subscript.getter();
        v51 = v50;
        outlined consume of Data?(v11, v12);
        outlined consume of Data._Representation(v48, v47);
        v11 = v49;
        v12 = v51;
        v1 = v67;
        v13 = v44;
        v10 = v43;
        goto LABEL_7;
      }

      outlined consume of Data?(v11, v12);
      v11 = 0;
      v9 = *(a1 + 8);
      v12 = 0xC000000000000000;
      v1 = v67;
      if (v9 >= v10)
      {
        v11 = 0;
        *(a1 + 24) = 0;
        return v11;
      }
    }

    if (v14 >> 3 == 1)
    {
      if ((v14 & 7) != 0)
      {
        if (v16 != 2)
        {
          goto LABEL_65;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_66;
        }

        if (result < 0)
        {
          goto LABEL_73;
        }

        v18 = *(a1 + 8) + result;
        if (v10 < v18)
        {
LABEL_65:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_66:
          outlined consume of Data?(v11, v12);
          return v11;
        }

        *(a1 + 24) = 8;
        *(a1 + 32) = v18;
      }

      v19 = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_66;
      }

      v20 = v19;
      if (v19 < 0)
      {
        goto LABEL_65;
      }

      v21 = *(a1 + 48);
      if (v13[167] != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for CodingUserInfoKey();
      v23 = __swift_project_value_buffer(v22, static ArchiveReader.readerKey);
      if (!*(v21 + 16))
      {
        goto LABEL_6;
      }

      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
      if ((v25 & 1) == 0)
      {
        goto LABEL_6;
      }

      outlined init with copy of Any(*(v21 + 56) + 32 * v24, v68);
      type metadata accessor for ArchiveReader();
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }

      v26 = v69;
      if (v20 >= v69[5])
      {

LABEL_6:
        outlined consume of Data?(v11, v12);
        v11 = 0;
        v12 = 0xF000000000000000;
        goto LABEL_7;
      }

      if (!v69[2])
      {
        goto LABEL_77;
      }

      v27 = (v69[4] + 16 * v20);
      v28 = *v27;
      if (*v27 < 0)
      {
        goto LABEL_75;
      }

      v67 = v69[2];
      v29 = v27[1];

      if (v29 < 0)
      {
        goto LABEL_76;
      }

      v30 = swift_allocObject();
      v57[3] = v26;
      *(v30 + 16) = v26;
      v32 = v65;
      v31 = v66;
      *v65 = partial apply for closure #1 in ArchiveReader.subscript.getter;
      v32[1] = v30;
      (*v62)(v32, v63, v31);
      v33 = Data.Deallocator._deallocator.getter();
      v57[2] = v34;
      if (v29)
      {
        v57[1] = v33;
        type metadata accessor for __DataStorage();
        swift_allocObject();

        v67 = v29;
        v35 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
        v36 = v61;
        v37 = v66;
        (*v60)(v61, v32, v66);
        v38 = (*v59)(v36, v37);
        if (v38 == v58)
        {
          v39 = __DataStorage._capacity.modify();
          *v40 |= 0x8000000000000000;
          v39(v68, 0);
        }

        else
        {
          (*v64)(v36, v37);
        }

        v13 = &unk_1EAB0F000;
        v54 = specialized Data._Representation.init(_:count:)(v35, v67);
        v55 = v56;
        v32 = v65;
      }

      else
      {
        v53 = Data.Deallocator._deallocator.getter();
        v53(v67 + v28, 0);

        v54 = 0;
        v55 = 0xC000000000000000;
        v13 = &unk_1EAB0F000;
      }

      outlined consume of Data?(v11, v12);

      (*v64)(v32, v66);

      v11 = v54;
      v12 = v55;
      v1 = 0;
    }

    else
    {
      if ((v14 & 7) > 1)
      {
        if (v16 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            goto LABEL_66;
          }

          if (result < 0)
          {
            goto LABEL_74;
          }

          v52 = *(a1 + 8) + result;
          if (v10 < v52)
          {
            goto LABEL_65;
          }
        }

        else
        {
          if (v16 != 5)
          {
            goto LABEL_65;
          }

          v52 = *(a1 + 8) + 4;
          if (v10 < v52)
          {
            goto LABEL_65;
          }
        }

        goto LABEL_60;
      }

      if ((v14 & 7) != 0)
      {
        if (v16 != 1)
        {
          goto LABEL_65;
        }

        v52 = *(a1 + 8) + 8;
        if (v10 < v52)
        {
          goto LABEL_65;
        }

LABEL_60:
        *(a1 + 8) = v52;
        goto LABEL_7;
      }

      ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_66;
      }
    }

LABEL_7:
    v9 = *(a1 + 8);
  }

  while (v9 < v10);
  *(a1 + 24) = 0;
  if (v12 >> 60 == 15)
  {
    return 0;
  }

  return v11;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void closure #3 in DisplayList.Effect.init(from:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for AccessibilityNodeAttachment(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  while (1)
  {
    while (1)
    {
      if (v9 >= v10)
      {
        *(a1 + 24) = 0;
        return;
      }

      v11 = *(a1 + 24);
      if (v11)
      {
        v12 = *(a1 + 32);
        if (v9 < v12)
        {
          goto LABEL_9;
        }

        if (v12 < v9)
        {
          goto LABEL_44;
        }

        *(a1 + 24) = 0;
      }

      v11 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return;
      }

      if (v11 <= 7)
      {
LABEL_44:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        return;
      }

LABEL_9:
      v13 = v11 & 7;
      if ((v11 & 0xFFFFFFFFFFFFFFF8) == 8)
      {
        break;
      }

      if ((v11 & 7) > 1)
      {
        if (v13 == 2)
        {
          v26 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return;
          }

          if (v26 < 0)
          {
            goto LABEL_50;
          }

          v9 = *(a1 + 8) + v26;
          if (v10 < v9)
          {
            goto LABEL_44;
          }

          *(a1 + 8) = v9;
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_44;
          }

          v9 = *(a1 + 8) + 4;
          if (v10 < v9)
          {
            goto LABEL_44;
          }

          *(a1 + 8) = v9;
        }
      }

      else if ((v11 & 7) != 0)
      {
        if (v13 != 1)
        {
          goto LABEL_44;
        }

        v9 = *(a1 + 8) + 8;
        if (v10 < v9)
        {
          goto LABEL_44;
        }

        *(a1 + 8) = v9;
      }

      else
      {
        ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return;
        }

        v9 = *(a1 + 8);
      }
    }

    if (v13 != 2)
    {
      goto LABEL_44;
    }

    v14 = *(a1 + 40);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    *&v14[8 * v16 + 32] = v10;
    *(a1 + 40) = v14;
    v17 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return;
    }

    if (v17 < 0)
    {
      break;
    }

    v18 = *(a1 + 8) + v17;
    if (v10 < v18)
    {
      goto LABEL_44;
    }

    *(a1 + 16) = v18;
    AccessibilityNodeAttachment.init(from:)(a1, v8);
    v19 = *(a1 + 40);
    if (!*(v19 + 2))
    {
      goto LABEL_48;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = *(v19 + 2);
      if (!v20)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      v20 = *(v19 + 2);
      if (!v20)
      {
        goto LABEL_49;
      }
    }

    v21 = v20 - 1;
    v10 = *&v19[8 * v21 + 32];
    *(v19 + 2) = v21;
    *(a1 + 40) = v19;
    *(a1 + 16) = v10;
    v22 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22);
      *a2 = v22;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1, v22);
      *a2 = v22;
    }

    v22[2] = v25 + 1;
    outlined init with take of AccessibilityNodeAttachment(v8, v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v25);
    v9 = *(a1 + 8);
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  __break(1u);
  v29 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v30 = *(v29 + 2);
  if (v30)
  {
    v27 = v30 - 1;
    v28 = *&v29[8 * v27 + 32];
    *(v29 + 2) = v27;
    *(a1 + 40) = v29;
    *(a1 + 16) = v28;
  }

  else
  {
    __break(1u);
  }
}

uint64_t AccessibilityNodeAttachment.init(from:)@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v74 = a2;
  type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CodableAccessibilityAttachmentStorage(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v67 - v12;
  type metadata accessor for CodableAccessibilityAttachmentStorage?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v79 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v67 - v16;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v67 - v19;
  v77 = v9;
  v23 = *(v9 + 56);
  v21 = v9 + 56;
  v22 = v23;
  v80 = v8;
  (v23)(&v67 - v19, 1, 1, v8, v18);
  v24 = a1[1];
  v25 = a1[2];
  if (v24 < v25)
  {
    v69 = v22;
    v70 = v21;
    v78 = 0;
    v26 = 0;
    v72 = v20;
    v68 = v7;
    while (1)
    {
      v29 = a1[3];
      if (v29)
      {
        v30 = a1[4];
        if (v24 < v30)
        {
          goto LABEL_14;
        }

        if (v30 < v24)
        {
          goto LABEL_76;
        }

        a1[3] = 0;
      }

      v29 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_77;
      }

      if (v29 < 8)
      {
        goto LABEL_76;
      }

LABEL_14:
      v31 = v29 >> 3;
      if (v29 >> 3 > 2)
      {
        if (v31 == 3)
        {
          if ((v29 & 7) != 2)
          {
            goto LABEL_76;
          }

          v47 = *a1;
          v25 = a1[2];
          v20 = a1[6];
          v48 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_83;
          }

          v3 = v48;
          if (v48 < 0)
          {
            goto LABEL_85;
          }

          v49 = a1[1];
          if (v25 < &v49[v48])
          {
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
LABEL_83:
            v28 = v72;
            return outlined destroy of CodableAccessibilityAttachmentStorage(v28, type metadata accessor for CodableAccessibilityAttachmentStorage?);
          }

          a1[1] = &v49[v48];
          v50 = v47;

          v71 = v50;
          if (v3)
          {
            v51 = v49 - [v50 bytes];
            v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v54 = v53;
            if (__OFADD__(v51, v3))
            {
              goto LABEL_87;
            }

            if (&v3[v51] < v51)
            {
              goto LABEL_88;
            }

            v55 = v52;
            v56 = Data._Representation.subscript.getter();
            v3 = v57;
            outlined consume of Data._Representation(v55, v54);
          }

          else
          {
            v56 = 0;
            v3 = 0xC000000000000000;
          }

          type metadata accessor for PropertyListDecoder();
          swift_allocObject();
          PropertyListDecoder.init()();

          dispatch thunk of PropertyListDecoder.userInfo.setter();
          type metadata accessor for [AccessibilityNodeAttachment.Kind?]();
          lazy protocol witness table accessor for type [AccessibilityNodeAttachment.Kind?] and conformance <A> [A](&lazy protocol witness table cache variable for type [AccessibilityNodeAttachment.Kind?] and conformance <A> [A], type metadata accessor for [AccessibilityNodeAttachment.Kind?], lazy protocol witness table accessor for type AccessibilityNodeAttachment.Kind? and conformance <A> A?);
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
          if (!*(v81 + 16))
          {

            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();

            outlined consume of Data._Representation(v56, v3);
            goto LABEL_83;
          }

          v26 = *(v81 + 32);

          outlined consume of Data._Representation(v56, v3);

          v20 = v72;
          v7 = v68;
          goto LABEL_7;
        }

        if (v31 == 4)
        {
          if ((v29 & 7) != 0)
          {
            if ((v29 & 7) != 2)
            {
              goto LABEL_76;
            }

            v35 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_77;
            }

            if (v35 < 0)
            {
              goto LABEL_90;
            }

            v36 = a1[1] + v35;
            if (v25 < v36)
            {
LABEL_76:
              lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
              swift_allocError();
              swift_willThrow();
LABEL_77:
              v28 = v20;
              return outlined destroy of CodableAccessibilityAttachmentStorage(v28, type metadata accessor for CodableAccessibilityAttachmentStorage?);
            }

            a1[3] = 32;
            a1[4] = v36;
          }

          v37 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_77;
          }

          v26 = v37 == 1;
          goto LABEL_7;
        }
      }

      else
      {
        if (v31 == 1)
        {
          if ((v29 & 7) != 2)
          {
            goto LABEL_76;
          }

          v3 = a1[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
          }

          v41 = *(v3 + 2);
          v40 = *(v3 + 3);
          if (v41 >= v40 >> 1)
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v3);
          }

          *(v3 + 2) = v41 + 1;
          *&v3[8 * v41 + 32] = v25;
          a1[5] = v3;
          v42 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_77;
          }

          if (v42 < 0)
          {
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
            __break(1u);
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v66 = *(result + 16);
            if (v66)
            {
              v64 = v66 - 1;
              v65 = *(result + 8 * v64 + 32);
              *(result + 16) = v64;
              a1[5] = result;
              result = outlined destroy of CodableAccessibilityAttachmentStorage(v20, type metadata accessor for CodableAccessibilityAttachmentStorage?);
              a1[2] = v65;
            }

            else
            {
              __break(1u);
            }

            return result;
          }

          v43 = a1[1] + v42;
          if (v25 < v43)
          {
            goto LABEL_76;
          }

          a1[2] = v43;
          _s7SwiftUI34CodableAccessibilityVersionStorageO4fromACyxq_GAA15ProtobufDecoderVz_tKcfCAA0cd10AttachmentF0V2V2V_AI2V3VTt1g5(a1, v7);
          v27 = 0;
          v44 = v75;
          outlined init with take of CodableAccessibilityAttachmentStorage(v7, v75, type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>);
          outlined init with take of CodableAccessibilityAttachmentStorage(v44, v79, type metadata accessor for CodableAccessibilityAttachmentStorage);
          v3 = a1[5];
          if (!*(v3 + 2))
          {
            goto LABEL_86;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v45 = *(v3 + 2);
            if (!v45)
            {
              goto LABEL_74;
            }
          }

          else
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v45 = *(v3 + 2);
            if (!v45)
            {
LABEL_74:
              __break(1u);
              goto LABEL_75;
            }
          }

          v46 = v45 - 1;
          v25 = *&v3[8 * v46 + 32];
          *(v3 + 2) = v46;
          a1[5] = v3;
          outlined destroy of CodableAccessibilityAttachmentStorage(v20, type metadata accessor for CodableAccessibilityAttachmentStorage?);
          a1[2] = v25;
          v3 = v79;
          v69(v79, 0, 1, v80);
          outlined init with take of CodableAccessibilityAttachmentStorage(v3, v20, type metadata accessor for CodableAccessibilityAttachmentStorage?);
          v2 = 0;
          goto LABEL_7;
        }

        if (v31 == 2)
        {
          if ((v29 & 7) != 0)
          {
            if ((v29 & 7) != 2)
            {
              goto LABEL_76;
            }

            v32 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_77;
            }

            if (v32 < 0)
            {
              goto LABEL_89;
            }

            v33 = a1[1] + v32;
            if (v25 < v33)
            {
              goto LABEL_76;
            }

            a1[3] = 16;
            a1[4] = v33;
          }

          v34 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_77;
          }

          v78 = v34 != 0;
          goto LABEL_7;
        }
      }

      v38 = v29 & 7;
      if (v38 > 1)
      {
        if (v38 == 2)
        {
          v58 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_77;
          }

          if (v58 < 0)
          {
            goto LABEL_91;
          }

          v39 = a1[1] + v58;
          if (v25 < v39)
          {
            goto LABEL_76;
          }
        }

        else
        {
          if (v38 != 5)
          {
            goto LABEL_76;
          }

          v39 = a1[1] + 4;
          if (v25 < v39)
          {
            goto LABEL_76;
          }
        }

        goto LABEL_6;
      }

      if ((v29 & 7) != 0)
      {
        if (v38 != 1)
        {
          goto LABEL_76;
        }

        v39 = a1[1] + 8;
        if (v25 < v39)
        {
          goto LABEL_76;
        }

LABEL_6:
        a1[1] = v39;
        goto LABEL_7;
      }

      ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_77;
      }

LABEL_7:
      v24 = a1[1];
      if (v24 >= v25)
      {
        goto LABEL_4;
      }
    }
  }

  v78 = 0;
  v26 = 0;
LABEL_4:
  a1[3] = 0;
  v27 = v76;
  outlined init with copy of AccessibilityNodeAttachment.Storage(v20, v76, type metadata accessor for CodableAccessibilityAttachmentStorage?);
  if ((*(v77 + 48))(v27, 1, v80) == 1)
  {
    outlined destroy of CodableAccessibilityAttachmentStorage(v27, type metadata accessor for CodableAccessibilityAttachmentStorage?);
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    v28 = v20;
    return outlined destroy of CodableAccessibilityAttachmentStorage(v28, type metadata accessor for CodableAccessibilityAttachmentStorage?);
  }

  else
  {
LABEL_75:
    outlined destroy of CodableAccessibilityAttachmentStorage(v20, type metadata accessor for CodableAccessibilityAttachmentStorage?);
    v59 = v27;
    v60 = v73;
    outlined init with take of CodableAccessibilityAttachmentStorage(v59, v73, type metadata accessor for CodableAccessibilityAttachmentStorage);
    v61 = v60;
    v62 = v74;
    outlined init with take of CodableAccessibilityAttachmentStorage(v61, v74, type metadata accessor for CodableAccessibilityAttachmentStorage);
    type metadata accessor for AccessibilityNodeAttachment.Storage(0);
    swift_storeEnumTagMultiPayload();
    result = type metadata accessor for AccessibilityNodeAttachment(0);
    *(v62 + *(result + 20)) = v78;
    *(v62 + *(result + 24)) = v26 & 1;
  }

  return result;
}

void type metadata accessor for LinkDestination.Configuration?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_18D34D3C0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t _s7SwiftUI34CodableAccessibilityVersionStorageO4fromACyxq_GAA15ProtobufDecoderVz_tKcfCAA0cd10AttachmentF0V2V2V_AI2V3VTt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v45 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v45 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>();
  v16 = v15;
  v47 = *(v15 - 8);
  v50 = *(v47 + 56);
  v50(v14, 1, 1, v15);
  v17 = a1[1];
  v18 = a1[2];
  if (v17 >= v18)
  {
    goto LABEL_56;
  }

  v49 = v14;
  while (1)
  {
    v23 = a1[3];
    if (v23)
    {
      v24 = a1[4];
      if (v17 < v24)
      {
        goto LABEL_13;
      }

      if (v24 < v17)
      {
        goto LABEL_59;
      }

      a1[3] = 0;
    }

    v23 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_60;
    }

    if (v23 < 8)
    {
      goto LABEL_59;
    }

LABEL_13:
    v25 = v23 & 7;
    if (v23 >> 3 == 3)
    {
      break;
    }

    if (v23 >> 3 == 2)
    {
      if (v25 != 2)
      {
        goto LABEL_59;
      }

      v26 = a1[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
      }

      v14 = *(v26 + 2);
      v27 = *(v26 + 3);
      v3 = (v14 + 1);
      if (v14 >= v27 >> 1)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v14 + 1, 1, v26);
      }

      *(v26 + 2) = v3;
      *&v26[8 * v14 + 32] = v18;
      a1[5] = v26;
      v28 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_62;
      }

      if (v28 < 0)
      {
        goto LABEL_68;
      }

      v29 = a1[1] + v28;
      v14 = v49;
      if (v18 < v29)
      {
LABEL_59:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        goto LABEL_60;
      }

      a1[2] = v29;
      CodableAccessibilityAttachmentStorage.V2.init(from:)(a1, v9);
      v19 = a1[5];
      if (!*(v19 + 2))
      {
        goto LABEL_70;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v20 = *(v19 + 2);
        if (!v20)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
        v20 = *(v19 + 2);
        if (!v20)
        {
          goto LABEL_71;
        }
      }

      v21 = v20 - 1;
      v18 = *&v19[8 * v21 + 32];
      *(v19 + 2) = v21;
      a1[5] = v19;
      outlined destroy of CodableAccessibilityAttachmentStorage(v14, type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>?);
      a1[2] = v18;
      swift_storeEnumTagMultiPayload();
      v50(v9, 0, 1, v16);
      v22 = v9;
      goto LABEL_5;
    }

    if ((v23 & 7) > 1)
    {
      if (v25 == 2)
      {
        v38 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_60;
        }

        if (v38 < 0)
        {
          goto LABEL_72;
        }

        v37 = a1[1] + v38;
        if (v18 < v37)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v25 != 5)
        {
          goto LABEL_59;
        }

        v37 = a1[1] + 4;
        if (v18 < v37)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_53;
    }

    if ((v23 & 7) != 0)
    {
      if (v25 != 1)
      {
        goto LABEL_59;
      }

      v37 = a1[1] + 8;
      if (v18 < v37)
      {
        goto LABEL_59;
      }

LABEL_53:
      a1[1] = v37;
      goto LABEL_6;
    }

    ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_60;
    }

LABEL_6:
    v17 = a1[1];
    if (v17 >= v18)
    {
      goto LABEL_56;
    }
  }

  if (v25 != 2)
  {
    goto LABEL_59;
  }

  v30 = a1[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
  }

  v14 = *(v30 + 2);
  v31 = *(v30 + 3);
  v3 = (v14 + 1);
  if (v14 >= v31 >> 1)
  {
    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v14 + 1, 1, v30);
  }

  *(v30 + 2) = v3;
  *&v30[8 * v14 + 32] = v18;
  a1[5] = v30;
  v32 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
LABEL_62:
    v14 = v49;
LABEL_60:
    v40 = v14;
    return outlined destroy of CodableAccessibilityAttachmentStorage(v40, type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>?);
  }

  if (v32 < 0)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    __break(1u);
    do
    {
      __break(1u);
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v42 = *(v3 + 2);
      if (v42)
      {
        goto LABEL_66;
      }

      __break(1u);
      v3 = a1[5];
    }

    while (!*(v3 + 2));
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v42 = *(v3 + 2);
      if (v42)
      {
LABEL_66:
        v43 = v42 - 1;
        v44 = *&v3[8 * v43 + 32];
        *(v3 + 2) = v43;
        a1[5] = v3;
        result = outlined destroy of CodableAccessibilityAttachmentStorage(v14, type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>?);
        a1[2] = v44;
        return result;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v3 = result;
      v42 = *(result + 16);
      if (v42)
      {
        goto LABEL_66;
      }
    }

    __break(1u);
    return result;
  }

  v33 = a1[1] + v32;
  v14 = v49;
  if (v18 < v33)
  {
    goto LABEL_59;
  }

  a1[2] = v33;
  CodableAccessibilityAttachmentStorage.V3.init(from:)(a1, v51);
  v34 = a1[5];
  if (!*(v34 + 2))
  {
    goto LABEL_69;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v35 = *(v34 + 2);
    if (!v35)
    {
      goto LABEL_55;
    }

    goto LABEL_38;
  }

  v34 = specialized _ArrayBuffer._consumeAndCreateNew()(v34);
  v35 = *(v34 + 2);
  if (v35)
  {
LABEL_38:
    v36 = v35 - 1;
    v18 = *&v34[8 * v36 + 32];
    *(v34 + 2) = v36;
    a1[5] = v34;
    outlined destroy of CodableAccessibilityAttachmentStorage(v14, type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>?);
    a1[2] = v18;
    v3 = v51;
    swift_storeEnumTagMultiPayload();
    v50(v3, 0, 1, v16);
    v22 = v3;
LABEL_5:
    outlined init with take of CodableAccessibilityAttachmentStorage(v22, v14, type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>?);
    goto LABEL_6;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  a1[3] = 0;
  v39 = v48;
  outlined init with copy of AccessibilityNodeAttachment.Storage(v14, v48, type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>?);
  if ((*(v47 + 48))(v39, 1, v16) == 1)
  {
    outlined destroy of CodableAccessibilityAttachmentStorage(v39, type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>?);
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    v40 = v14;
    return outlined destroy of CodableAccessibilityAttachmentStorage(v40, type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>?);
  }

  outlined destroy of CodableAccessibilityAttachmentStorage(v14, type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>?);
  return outlined init with take of CodableAccessibilityAttachmentStorage(v39, v46, type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>);
}