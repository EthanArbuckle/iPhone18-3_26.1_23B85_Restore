uint64_t _s10Foundation28DecodableAttributedStringKeyPAASe5ValueRpzrlE6decode4fromAEs7Decoder_p_tKFZAA15AttributeScopesO0A10AttributesV09Localizedd8ArgumentL0V0m4DatenJ0O_Tt1g5@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  outlined init with copy of Hashable & Sendable(a1, v8);
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t _s10Foundation28DecodableAttributedStringKeyPAASe5ValueRpzrlE6decode4fromAEs7Decoder_p_tKFZAA15AttributeScopesO0A10AttributesV022MarkdownSourcePositionJ0O_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation16AttributedStringV22MarkdownSourcePositionV10CodingKeys33_4C994178458EBF836D449F281EBCAF09LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  outlined init with copy of Hashable & Sendable(a1, v25);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  lazy protocol witness table accessor for type AttributedString.MarkdownSourcePosition.CodingKeys and conformance AttributedString.MarkdownSourcePosition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v21) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v21) = 1;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v21) = 2;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v21) = 3;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v27 = 4;
    lazy protocol witness table accessor for type AttributedString.MarkdownSourcePosition.Offsets and conformance AttributedString.MarkdownSourcePosition.Offsets();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v17 = v21;
    v18 = v22;
    v26 = v23;
    v27 = 5;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v12 = v23;
    v24 = v23;
    v13 = v26;
    *a2 = v9;
    *(a2 + 8) = v10;
    v14 = v19;
    *(a2 + 16) = v20;
    *(a2 + 24) = v14;
    v15 = v18;
    *(a2 + 32) = v17;
    *(a2 + 48) = v15;
    *(a2 + 64) = v13;
    v16 = v22;
    *(a2 + 72) = v21;
    *(a2 + 88) = v16;
    *(a2 + 104) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

void _s10Foundation28DecodableAttributedStringKeyPAASe5ValueRpzrlE6decode4fromAEs7Decoder_p_tKFZAA15AttributeScopesO0A10AttributesV021InflectionAlternativeJ0O_Tt1g5(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v4 = outlined init with copy of Hashable & Sendable(a1, v73);
  if (one-time initialization token for _loadedScopeCache != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v5 = _loadedScopeCache;
    MEMORY[0x1EEE9AC00](v4);
    os_unfair_lock_lock(v5 + 10);
    closure #1 in _loadDefaultAttributes()partial apply(v72);
    v6 = v5 + 10;
    if (v3)
    {
      goto LABEL_60;
    }

    os_unfair_lock_unlock(v6);
    v7 = v72[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14AttributeScope_pXpGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 32) = &type metadata for AttributeScopes.FoundationAttributes;
    *(inited + 40) = &protocol witness table for AttributeScopes.FoundationAttributes;
    v72[0] = v7;
    specialized Array.append<A>(contentsOf:)(inited);
    v3 = v72[0];
    v9 = *(v72[0] + 16);
    if (v9)
    {
      v72[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
      v10 = v72[0];
      v11 = v3 + 40;
      do
      {
        v12 = static AttributeScope.scopeDescription.getter(*(v11 - 8));

        v72[0] = v10;
        v14 = *(v10 + 16);
        v13 = *(v10 + 24);
        if (v14 >= v13 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
          v10 = v72[0];
        }

        *(v10 + 16) = v14 + 1;
        *(v10 + 8 * v14 + 32) = v12;
        v11 += 16;
        --v9;
      }

      while (v9);
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
    }

    v65 = *(v10 + 16);
    if (!v65)
    {
      v16 = MEMORY[0x1E69E7CC8];
LABEL_52:

      outlined init with copy of Hashable & Sendable(v73, v72);
      v71 = v16;
      AttributedString.init(from:configuration:)(v72, &v71, &v74);
      __swift_destroy_boxed_opaque_existential_1(v73);
      *a2 = v74;
      return;
    }

    v15 = 0;
    v64 = v10 + 32;
    v16 = MEMORY[0x1E69E7CC8];
    v63 = v10;
LABEL_13:
    if (v15 < *(v10 + 16))
    {
      break;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    v4 = swift_once();
  }

  v3 = *(v64 + 8 * v15);
  v66 = v15 + 1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72[0] = v16;
  v18 = v3 + 64;
  v19 = 1 << *(v3 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v3 + 64);
  v22 = (v19 + 63) >> 6;
  v68 = v3;

  v23 = 0;
  for (i = v22; ; v22 = i)
  {
    if (!v21)
    {
      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
          goto LABEL_54;
        }

        if (v24 >= v22)
        {
          break;
        }

        v21 = *(v18 + 8 * v24);
        ++v23;
        if (v21)
        {
          goto LABEL_25;
        }
      }

      v3 = v68;

      v15 = v66;
      v10 = v63;
      if (v66 == v65)
      {
        goto LABEL_52;
      }

      goto LABEL_13;
    }

    v24 = v23;
LABEL_25:
    v25 = (v24 << 10) | (16 * __clz(__rbit64(v21)));
    v26 = (*(v68 + 48) + v25);
    v27 = *v26;
    v28 = v26[1];
    v69 = *(*(v68 + 56) + v25);

    v70 = v27;
    v29 = v16;
    v31 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28);
    v32 = *(v16 + 16);
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v3 = v30;
    if (*(v16 + 24) >= v34)
    {
      break;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, isUniquelyReferenced_nonNull_native & 1);
    v29 = v72[0];
    v35 = v27;
    v36 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28);
    if ((v3 & 1) != (v37 & 1))
    {
      goto LABEL_59;
    }

    v31 = v36;
LABEL_31:
    v21 &= v21 - 1;
    if (v3)
    {

      *(*(v29 + 56) + 16 * v31) = v69;
    }

    else
    {
      *(v29 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v38 = (*(v29 + 48) + 16 * v31);
      *v38 = v35;
      v38[1] = v28;
      *(*(v29 + 56) + 16 * v31) = v69;
      v39 = *(v29 + 16);
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_55;
      }

      *(v29 + 16) = v41;
    }

    isUniquelyReferenced_nonNull_native = 1;
    v23 = v24;
    v16 = v29;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_30:
    v35 = v70;
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation19AttributedStringKey_pXpGMd);
  v42 = static _DictionaryStorage.copy(original:)();
  v29 = v42;
  if (!*(v16 + 16))
  {
LABEL_50:

    v72[0] = v29;
    goto LABEL_30;
  }

  v43 = (v42 + 64);
  v44 = v16 + 64;
  v45 = ((1 << *(v29 + 32)) + 63) >> 6;
  if (v29 != v16 || v43 >= v44 + 8 * v45)
  {
    memmove(v43, (v16 + 64), 8 * v45);
  }

  v46 = 0;
  *(v29 + 16) = *(v16 + 16);
  v47 = 1 << *(v16 + 32);
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  else
  {
    v48 = -1;
  }

  v49 = v48 & *(v16 + 64);
  v50 = (v47 + 63) >> 6;
  v60 = v50;
  if (v49)
  {
    do
    {
      v51 = __clz(__rbit64(v49));
      v61 = (v49 - 1) & v49;
LABEL_48:
      v54 = 16 * (v51 | (v46 << 6));
      v55 = (*(v16 + 48) + v54);
      v57 = *v55;
      v56 = v55[1];
      v58 = *(*(v16 + 56) + v54);
      v59 = (*(v29 + 48) + v54);
      *v59 = v57;
      v59[1] = v56;
      *(*(v29 + 56) + v54) = v58;

      v50 = v60;
      v49 = v61;
    }

    while (v61);
  }

  v52 = v46;
  while (1)
  {
    v46 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if (v46 >= v50)
    {
      goto LABEL_50;
    }

    v53 = *(v44 + 8 * v46);
    ++v52;
    if (v53)
    {
      v51 = __clz(__rbit64(v53));
      v61 = (v53 - 1) & v53;
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_59:
  v6 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_60:
  os_unfair_lock_unlock(v6);
  __break(1u);
}

uint64_t _s10Foundation28DecodableAttributedStringKeyPAASe5ValueRpzrlE6decode4fromAEs7Decoder_p_tKFZAA15AttributeScopesO0A10AttributesV018PresentationIntentJ0O_Tt1g5@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation18PresentationIntentV10CodingKeys33_8153C1B385F9477C3B86198B81B6062BLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-1] - v7;
  outlined init with copy of Hashable & Sendable(a1, v11);
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  lazy protocol witness table accessor for type PresentationIntent.CodingKeys and conformance PresentationIntent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation18PresentationIntentV0C4TypeVGMd);
    lazy protocol witness table accessor for type [PresentationIntent.IntentType] and conformance <A> [A](&lazy protocol witness table cache variable for type [PresentationIntent.IntentType] and conformance <A> [A], lazy protocol witness table accessor for type PresentationIntent.IntentType and conformance PresentationIntent.IntentType);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t _s10Foundation28DecodableAttributedStringKeyPAASe5ValueRpzrlE6decode4fromAEs7Decoder_p_tKFZAA15AttributeScopesO0A10AttributesV016WritingDirectionJ0O_Tt1g5(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation15EmptyCodingKeysOGMd);
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation16AttributedStringV16WritingDirectionO10CodingKeys33_163072BBDC91CE21DC09F272FDEEA67DLLOGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  outlined init with copy of Hashable & Sendable(a1, v31);
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  lazy protocol witness table accessor for type AttributedString.WritingDirection.CodingKeys and conformance AttributedString.WritingDirection.CodingKeys();
  v12 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v26 = v2;
  v13 = v9;
  v14 = v11;
  v15 = KeyedDecodingContainer.allKeys.getter();
  v16 = (2 * *(v15 + 16)) | 1;
  v27 = v15;
  v28 = v15 + 32;
  v29 = 0;
  v30 = v16;
  v17 = specialized Collection<>.popFirst()();
  v18 = v8;
  if (v17 == 2 || v29 != v30 >> 1)
  {
    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v22 = &type metadata for AttributedString.WritingDirection;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    (*(v13 + 8))(v14, v18);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v19 = v17;
  if (v17)
  {
    v32 = 1;
    lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v25 + 8))(v4, v26);
  }

  else
  {
    v32 = 0;
    lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v25 + 8))(v7, v26);
  }

  (*(v9 + 8))(v14, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v19 & 1;
}

uint64_t static DecodableAttributedStringKey<>.decode(from:)(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  outlined init with copy of Hashable & Sendable(a1, v3);
  return dispatch thunk of Decodable.init(from:)();
}

uint64_t static EncodableAttributedStringKey<>.encode(_:to:)(uint64_t a1, void *a2)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v12];
  if (v3)
  {
    v4 = v3;
    v5 = v12[0];
    v6 = v4;
    v7 = specialized Data.init(referencing:)(v6);
    v9 = v8;

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v12, v12[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    outlined consume of Data._Representation(v7, v9);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    if (v12[0])
    {
      v12[0];
    }

    else
    {
      if (one-time initialization token for _nilObjCError != -1)
      {
        swift_once();
      }

      v11 = _nilObjCError;
    }

    return swift_willThrow();
  }
}

void AttributedString.encode(to:)(uint64_t a1)
{
  v3 = v2;
  v61 = *v1;
  v62 = a1;
  if (one-time initialization token for _loadedScopeCache != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v4 = _loadedScopeCache;
    MEMORY[0x1EEE9AC00](a1);
    os_unfair_lock_lock(v4 + 10);
    partial apply for closure #1 in _loadDefaultAttributes()(&v72);
    v5 = v4 + 10;
    if (v3)
    {
      goto LABEL_60;
    }

    os_unfair_lock_unlock(v5);
    v6 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14AttributeScope_pXpGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 32) = &type metadata for AttributeScopes.FoundationAttributes;
    *(inited + 40) = &protocol witness table for AttributeScopes.FoundationAttributes;
    v72 = v6;
    specialized Array.append<A>(contentsOf:)(inited);
    v3 = v72;
    v8 = *(v72 + 16);
    if (v8)
    {
      v72 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
      v9 = v72;
      v10 = v3 + 40;
      do
      {
        v11 = static AttributeScope.scopeDescription.getter(*(v10 - 8));

        v72 = v9;
        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
          v9 = v72;
        }

        *(v9 + 16) = v13 + 1;
        *(v9 + 8 * v13 + 32) = v11;
        v10 += 16;
        --v8;
      }

      while (v8);
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }

    v65 = *(v9 + 16);
    if (!v65)
    {
      v15 = MEMORY[0x1E69E7CC8];
LABEL_52:

      v72 = v61;
      v71 = v15;
      AttributedString.encode(to:configuration:)(v62, &v71);

      return;
    }

    v14 = 0;
    v64 = v9 + 32;
    v15 = MEMORY[0x1E69E7CC8];
    v63 = v9;
LABEL_13:
    if (v14 < *(v9 + 16))
    {
      break;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    a1 = swift_once();
  }

  v3 = *(v64 + 8 * v14);
  v66 = v14 + 1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = v15;
  v17 = v3 + 64;
  v18 = 1 << *(v3 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(v3 + 64);
  v21 = (v18 + 63) >> 6;
  v68 = v3;

  v22 = 0;
  for (i = v21; ; v21 = i)
  {
    if (!v20)
    {
      while (1)
      {
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
          goto LABEL_54;
        }

        if (v23 >= v21)
        {
          break;
        }

        v20 = *(v17 + 8 * v23);
        ++v22;
        if (v20)
        {
          goto LABEL_25;
        }
      }

      v3 = v68;

      v14 = v66;
      v9 = v63;
      if (v66 == v65)
      {
        goto LABEL_52;
      }

      goto LABEL_13;
    }

    v23 = v22;
LABEL_25:
    v24 = (v23 << 10) | (16 * __clz(__rbit64(v20)));
    v25 = (*(v68 + 48) + v24);
    v26 = *v25;
    v27 = v25[1];
    v69 = *(*(v68 + 56) + v24);

    v70 = v26;
    v28 = v15;
    v30 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
    v31 = *(v15 + 16);
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v3 = v29;
    if (*(v15 + 24) >= v33)
    {
      break;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native & 1);
    v28 = v72;
    v34 = v26;
    v35 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
    if ((v3 & 1) != (v36 & 1))
    {
      goto LABEL_59;
    }

    v30 = v35;
LABEL_31:
    v20 &= v20 - 1;
    if (v3)
    {

      *(*(v28 + 56) + 16 * v30) = v69;
    }

    else
    {
      *(v28 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v37 = (*(v28 + 48) + 16 * v30);
      *v37 = v34;
      v37[1] = v27;
      *(*(v28 + 56) + 16 * v30) = v69;
      v38 = *(v28 + 16);
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_55;
      }

      *(v28 + 16) = v40;
    }

    isUniquelyReferenced_nonNull_native = 1;
    v22 = v23;
    v15 = v28;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_30:
    v34 = v70;
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation19AttributedStringKey_pXpGMd);
  v41 = static _DictionaryStorage.copy(original:)();
  v28 = v41;
  if (!*(v15 + 16))
  {
LABEL_50:

    v72 = v28;
    goto LABEL_30;
  }

  v42 = (v41 + 64);
  v43 = v15 + 64;
  v44 = ((1 << *(v28 + 32)) + 63) >> 6;
  if (v28 != v15 || v42 >= v43 + 8 * v44)
  {
    memmove(v42, (v15 + 64), 8 * v44);
  }

  v45 = 0;
  *(v28 + 16) = *(v15 + 16);
  v46 = 1 << *(v15 + 32);
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  else
  {
    v47 = -1;
  }

  v48 = v47 & *(v15 + 64);
  v49 = (v46 + 63) >> 6;
  v59 = v49;
  if (v48)
  {
    do
    {
      v50 = __clz(__rbit64(v48));
      v60 = (v48 - 1) & v48;
LABEL_48:
      v53 = 16 * (v50 | (v45 << 6));
      v54 = (*(v15 + 48) + v53);
      v56 = *v54;
      v55 = v54[1];
      v57 = *(*(v15 + 56) + v53);
      v58 = (*(v28 + 48) + v53);
      *v58 = v56;
      v58[1] = v55;
      *(*(v28 + 56) + v53) = v57;

      v49 = v59;
      v48 = v60;
    }

    while (v60);
  }

  v51 = v45;
  while (1)
  {
    v45 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v45 >= v49)
    {
      goto LABEL_50;
    }

    v52 = *(v43 + 8 * v45);
    ++v51;
    if (v52)
    {
      v50 = __clz(__rbit64(v52));
      v60 = (v52 - 1) & v52;
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_59:
  v5 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_60:
  os_unfair_lock_unlock(v5);
  __break(1u);
}

void AttributedString.init(from:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v62 = a1;
  if (one-time initialization token for _loadedScopeCache != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v4 = _loadedScopeCache;
    MEMORY[0x1EEE9AC00](a1);
    os_unfair_lock_lock(v4 + 10);
    closure #1 in _loadDefaultAttributes()partial apply(v72);
    v5 = v4 + 10;
    if (v3)
    {
      goto LABEL_60;
    }

    os_unfair_lock_unlock(v5);
    v6 = v72[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14AttributeScope_pXpGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 32) = &type metadata for AttributeScopes.FoundationAttributes;
    *(inited + 40) = &protocol witness table for AttributeScopes.FoundationAttributes;
    v72[0] = v6;
    specialized Array.append<A>(contentsOf:)(inited);
    v3 = v72[0];
    v8 = *(v72[0] + 16);
    if (v8)
    {
      v72[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
      v9 = v72[0];
      v10 = v3 + 40;
      do
      {
        v11 = static AttributeScope.scopeDescription.getter(*(v10 - 8));

        v72[0] = v9;
        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
          v9 = v72[0];
        }

        *(v9 + 16) = v13 + 1;
        *(v9 + 8 * v13 + 32) = v11;
        v10 += 16;
        --v8;
      }

      while (v8);
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }

    v65 = *(v9 + 16);
    if (!v65)
    {
      v15 = MEMORY[0x1E69E7CC8];
LABEL_52:

      outlined init with copy of Hashable & Sendable(v62, v72);
      v71 = v15;
      AttributedString.init(from:configuration:)(v72, &v71, &v73);
      __swift_destroy_boxed_opaque_existential_1(v62);
      *a2 = v73;
      return;
    }

    v14 = 0;
    v64 = v9 + 32;
    v15 = MEMORY[0x1E69E7CC8];
    v63 = v9;
LABEL_13:
    if (v14 < *(v9 + 16))
    {
      break;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    a1 = swift_once();
  }

  v3 = *(v64 + 8 * v14);
  v66 = v14 + 1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72[0] = v15;
  v17 = v3 + 64;
  v18 = 1 << *(v3 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(v3 + 64);
  v21 = (v18 + 63) >> 6;
  v68 = v3;

  v22 = 0;
  for (i = v21; ; v21 = i)
  {
    if (!v20)
    {
      while (1)
      {
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
          goto LABEL_54;
        }

        if (v23 >= v21)
        {
          break;
        }

        v20 = *(v17 + 8 * v23);
        ++v22;
        if (v20)
        {
          goto LABEL_25;
        }
      }

      v3 = v68;

      v14 = v66;
      v9 = v63;
      if (v66 == v65)
      {
        goto LABEL_52;
      }

      goto LABEL_13;
    }

    v23 = v22;
LABEL_25:
    v24 = (v23 << 10) | (16 * __clz(__rbit64(v20)));
    v25 = (*(v68 + 48) + v24);
    v26 = *v25;
    v27 = v25[1];
    v69 = *(*(v68 + 56) + v24);

    v70 = v26;
    v28 = v15;
    v3 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
    v30 = *(v15 + 16);
    v31 = (v29 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v33 = v29;
    if (*(v15 + 24) >= v32)
    {
      break;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, isUniquelyReferenced_nonNull_native & 1);
    v28 = v72[0];
    v34 = v26;
    v35 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
    if ((v33 & 1) != (v36 & 1))
    {
      goto LABEL_59;
    }

    v3 = v35;
LABEL_31:
    v20 &= v20 - 1;
    if (v33)
    {

      *(*(v28 + 56) + 16 * v3) = v69;
    }

    else
    {
      *(v28 + 8 * (v3 >> 6) + 64) |= 1 << v3;
      v37 = (*(v28 + 48) + 16 * v3);
      *v37 = v34;
      v37[1] = v27;
      *(*(v28 + 56) + 16 * v3) = v69;
      v38 = *(v28 + 16);
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_55;
      }

      *(v28 + 16) = v40;
    }

    isUniquelyReferenced_nonNull_native = 1;
    v22 = v23;
    v15 = v28;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_30:
    v34 = v70;
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation19AttributedStringKey_pXpGMd);
  v41 = static _DictionaryStorage.copy(original:)();
  v28 = v41;
  if (!*(v15 + 16))
  {
LABEL_50:

    v72[0] = v28;
    goto LABEL_30;
  }

  v42 = (v41 + 64);
  v43 = v15 + 64;
  v44 = ((1 << *(v28 + 32)) + 63) >> 6;
  if (v28 != v15 || v42 >= v43 + 8 * v44)
  {
    memmove(v42, (v15 + 64), 8 * v44);
  }

  v45 = 0;
  *(v28 + 16) = *(v15 + 16);
  v46 = 1 << *(v15 + 32);
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  else
  {
    v47 = -1;
  }

  v48 = v47 & *(v15 + 64);
  v49 = (v46 + 63) >> 6;
  v59 = v49;
  if (v48)
  {
    do
    {
      v50 = __clz(__rbit64(v48));
      v60 = (v48 - 1) & v48;
LABEL_48:
      v53 = 16 * (v50 | (v45 << 6));
      v54 = (*(v15 + 48) + v53);
      v56 = *v54;
      v55 = v54[1];
      v57 = *(*(v15 + 56) + v53);
      v58 = (*(v28 + 48) + v53);
      *v58 = v56;
      v58[1] = v55;
      *(*(v28 + 56) + v53) = v57;

      v49 = v59;
      v48 = v60;
    }

    while (v60);
  }

  v51 = v45;
  while (1)
  {
    v45 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v45 >= v49)
    {
      goto LABEL_50;
    }

    v52 = *(v43 + 8 * v45);
    ++v51;
    if (v52)
    {
      v50 = __clz(__rbit64(v52));
      v60 = (v52 - 1) & v52;
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_59:
  v5 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_60:
  os_unfair_lock_unlock(v5);
  __break(1u);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance AttributedString(void *a1)
{
  v3 = *v1;
  v5[0] = _loadDefaultAttributes()(a1);
  v5[1] = v3;
  AttributedString.encode(to:configuration:)(a1, v5);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AttributedString.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7475626972747461;
  }

  else
  {
    v3 = 1936618866;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEE00656C62615465;
  }

  if (*a2)
  {
    v5 = 0x7475626972747461;
  }

  else
  {
    v5 = 1936618866;
  }

  if (*a2)
  {
    v6 = 0xEE00656C62615465;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AttributedString.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttributedString.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributedString.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AttributedString.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AttributedString.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AttributedString.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 1936618866;
  if (*v1)
  {
    v2 = 0x7475626972747461;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEE00656C62615465;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AttributedString.CodingKeys()
{
  if (*v0)
  {
    return 0x7475626972747461;
  }

  else
  {
    return 1936618866;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AttributedString.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AttributedString.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AttributedString.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributedString.CodingKeys and conformance AttributedString.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttributedString.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributedString.CodingKeys and conformance AttributedString.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AttributedString.AttributeKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = dispatch thunk of CustomStringConvertible.description.getter();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AttributedString.AttributeKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributedString.AttributeKey and conformance AttributedString.AttributeKey();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttributedString.AttributeKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributedString.AttributeKey and conformance AttributedString.AttributeKey();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AttributeContainer.encode(to:configuration:)(void *a1, char **a2)
{
  v4 = v3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation16AttributedStringV12AttributeKey33_628C17579E40660980A9932CDA4C6A74LLVGMd);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v8 = &v40 - v7;
  v9 = *a2;
  v10 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AttributedString.AttributeKey and conformance AttributedString.AttributeKey();
  v50 = v8;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v9;
  v12 = v10 + 64;
  v13 = 1 << v10[32];
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 8);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  v56 = v10;
  while (v15)
  {
    v18 = v15;
LABEL_11:
    v15 = (v18 - 1) & v18;
    if (*(v11 + 2))
    {
      v20 = *(v10 + 6) + ((v17 << 10) | (16 * __clz(__rbit64(v18))));
      a1 = *v20;
      v21 = *(v20 + 8);

      v22 = specialized __RawDictionaryStorage.find<A>(_:)(a1, v21);
      if (v23)
      {
        v10 = *(*(v11 + 7) + 16 * v22);
        v24 = swift_conformsToProtocol2();
        if (v24)
        {
          v25 = v10 == 0;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {

          v10 = v56;
        }

        else
        {
          v41 = v11;
          v46 = v4;
          v53[0] = a1;
          v53[1] = v21;
          v53[2] = 0;
          v54 = 1;
          v4 = v24;
          KeyedEncodingContainer.superEncoder(forKey:)();

          v44 = v4;
          v26 = *(v4 + 8);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v45 = &v40;
          v47 = AssociatedTypeWitness;
          v48 = *(AssociatedTypeWitness - 8);
          v28 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
          v43 = &v40 - v29;
          v30 = (*(v26 + 24))(v10, v26, v28);
          a1 = v31;
          v11 = v56;
          if (!*(v56 + 2))
          {
            goto LABEL_27;
          }

          v42 = v10;
          v32 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
          v4 = v33;

          if ((v4 & 1) == 0)
          {
            goto LABEL_28;
          }

          outlined init with copy of AttributedString._AttributeValue(*(v11 + 7) + 72 * v32, v53);
          outlined init with copy of Hashable & Sendable(v53, v52);
          v10 = v47;
          a1 = type metadata accessor for Optional();
          v4 = *(a1 - 1);
          MEMORY[0x1EEE9AC00](a1);
          v11 = &v40 - v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
          if (!swift_dynamicCast())
          {
            goto LABEL_29;
          }

          outlined destroy of AttributedString._AttributeValue(v53);
          v35 = v48;
          (*(v48 + 56))(v11, 0, 1, v10);
          v36 = v43;
          (*(v35 + 32))(v43, v11, v10);
          v37 = v46;
          (*(v44 + 16))(v36, v55);
          if (v37)
          {

            __swift_destroy_boxed_opaque_existential_1(v55);
            (*(v49 + 8))(v50, v51);
            return (*(v35 + 8))(v36, v10);
          }

          __swift_destroy_boxed_opaque_existential_1(v55);
          v38 = *(v35 + 8);
          a1 = (v35 + 8);
          v38(v36, v10);
          v10 = v56;
          v11 = v41;
          v4 = 0;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      (*(v49 + 8))(v50, v51);
    }

    v18 = *&v12[8 * v19];
    ++v17;
    if (v18)
    {
      v17 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_27:

LABEL_28:
  __break(1u);
LABEL_29:
  (*(v48 + 56))(v11, 1, 1, v10);
  result = (*(v4 + 8))(v11, a1);
  __break(1u);
  return result;
}

uint64_t AttributeContainer.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v264 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation16AttributedStringV12AttributeKey33_628C17579E40660980A9932CDA4C6A74LLVGMd);
  v257 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v240 - v7;
  v9 = *a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AttributedString.AttributeKey and conformance AttributedString.AttributeKey();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v260 = v3;
  if (v3)
  {
LABEL_2:
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v284 = MEMORY[0x1E69E7CC8];
  v285 = MEMORY[0x1E69E7CD0];
  v248 = v8;
  v11 = KeyedDecodingContainer.allKeys.getter();
  v12 = v11;
  v13 = a1;
  v14 = v9;
  v265 = *(v11 + 16);
  if (!v265)
  {

    v238 = MEMORY[0x1E69E7CC8];
    v239 = MEMORY[0x1E69E7CD0];
    v16 = v264;
LABEL_127:
    (*(v257 + 8))(v248, v6);
    __swift_destroy_boxed_opaque_existential_1(v13);

    *v16 = v238;
    v16[1] = v239;
    return result;
  }

  v15 = 0;
  v262 = v11 + 32;
  v263 = v6;
  v16 = v264;
  v245 = v13;
  v255 = v9;
  v261 = v11;
  while (1)
  {
    if (v15 >= *(v12 + 16))
    {
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    if (!*(v14 + 16))
    {
      goto LABEL_8;
    }

    v266 = v15;
    v17 = v262 + 32 * v15;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v17 + 24);
    swift_bridgeObjectRetain_n();
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
    v24 = v23;

    if (v24)
    {
      break;
    }

LABEL_6:
    v6 = v263;
LABEL_7:
    v16 = v264;
    v12 = v261;
    v15 = v266;
LABEL_8:
    if (++v15 == v265)
    {

      v238 = v284;
      v239 = v285;
      goto LABEL_127;
    }
  }

  v25 = *(*(v14 + 56) + 16 * v22);
  v26 = swift_conformsToProtocol2();
  if (v26)
  {
    v27 = v25 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {

    v14 = v255;
    goto LABEL_6;
  }

  v28 = v26;
  v253 = *(v26 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = type metadata accessor for Optional();
  v254 = &v240;
  v258 = v29;
  v256 = *(v29 - 8);
  v30 = *(v256 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v240 - v31;
  *&v277 = v18;
  *(&v277 + 1) = v19;
  *&v278 = v20;
  BYTE8(v278) = v21;
  v33 = v248;
  v34 = v260;
  KeyedDecodingContainer.superDecoder(forKey:)();
  if (v34)
  {
    v260 = v34;

    (*(v257 + 8))(v33, v263);

    a1 = v245;
    goto LABEL_2;
  }

  v35 = *(v28 + 16);
  v252 = v25;
  v35(v282, v25, v28);
  v260 = 0;
  __swift_destroy_boxed_opaque_existential_1(v282);
  v36 = AssociatedTypeWitness;
  v37 = *(AssociatedTypeWitness - 8);
  v38 = (*(v37 + 56))(v32, 0, 1, AssociatedTypeWitness);
  v249 = &v240;
  MEMORY[0x1EEE9AC00](v38);
  v246 = ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = v39;
  v40 = &v240 - v246;
  v251 = &v240;
  v42 = MEMORY[0x1EEE9AC00](v41);
  v43 = &v240 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v256;
  v45 = *(v256 + 16);
  v250 = v46;
  v47 = v258;
  v45(v43, v42);
  v48 = v37;
  v49 = *(v37 + 48);
  v50 = v36;
  if (v49(v43, 1, v36) != 1)
  {
    v66 = v48;
    (*(v48 + 32))(v40, v43, v50);
    v67 = v252;
    v68 = v253;
    v69 = v253[3](v252, v253);
    v251 = v70;
    v243 = &v240;
    v244 = v69;
    v71 = MEMORY[0x1EEE9AC00](v69);
    v72 = v246;
    v240 = v40;
    v241 = &v240 - v246;
    v73 = *(v66 + 16);
    v74 = AssociatedTypeWitness;
    v75 = v73(v71);
    v242 = &v240;
    v76 = MEMORY[0x1EEE9AC00](v75);
    v77 = (&v240 - v72);
    v78 = v241;
    (v73)(v77, v241, v74, v76);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
    swift_dynamicCast();
    (v68[4])(&v277, v67, v68);
    *(&v282[2] + 8) = v277;
    BYTE8(v282[3]) = v68[5](v67, v68) & 1;
    v79 = v68[6](v67, v68);
    v81 = *(v66 + 8);
    v80 = (v66 + 8);
    v253 = v81;
    (v81)(v78, v74);
    v283 = v79;
    outlined init with copy of FloatingPointRoundingRule?(v282, &v277, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    if (!*(&v278 + 1))
    {
      outlined destroy of TermOfAddress?(&v277, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v84 = v244;
      v85 = v251;
      v105 = specialized __RawDictionaryStorage.find<A>(_:)(v244, v251);
      v91 = v250;
      if (v106)
      {
        v107 = v105;
        v108 = v284;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = v255;
        if (isUniquelyReferenced_nonNull_native)
        {
          v110 = v108;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v214 = static _DictionaryStorage.copy(original:)();
          v110 = v214;
          if (*(v108 + 16))
          {
            v215 = (v214 + 64);
            v216 = 1 << *(v110 + 32);
            v243 = (v108 + 64);
            v217 = (v216 + 63) >> 6;
            if (v110 != v108 || v215 >= &v243[v217])
            {
              memmove(v215, v243, 8 * v217);
            }

            v218 = 0;
            *(v110 + 16) = *(v108 + 16);
            v219 = 1 << *(v108 + 32);
            if (v219 < 64)
            {
              v220 = ~(-1 << v219);
            }

            else
            {
              v220 = -1;
            }

            v252 = v220 & *(v108 + 64);
            v221 = (v219 + 63) >> 6;
            for (i = v252; v252; i = v252)
            {
              v223 = __clz(__rbit64(i));
              v252 = (i - 1) & i;
LABEL_121:
              v226 = v223 | (v218 << 6);
              v227 = 16 * v226;
              v228 = *(v108 + 56);
              v229 = (*(v108 + 48) + 16 * v226);
              v230 = *v229;
              v246 = v229[1];
              v247 = v230;
              v231 = 72 * v226;
              outlined init with copy of AttributedString._AttributeValue(v228 + 72 * v226, &v277);
              v232 = (*(v110 + 48) + v227);
              v233 = v246;
              *v232 = v247;
              v232[1] = v233;
              v234 = *(v110 + 56) + v231;
              *v234 = v277;
              v235 = v278;
              v236 = v279;
              v237 = v280;
              *(v234 + 64) = v281;
              *(v234 + 32) = v236;
              *(v234 + 48) = v237;
              *(v234 + 16) = v235;
            }

            v224 = v218;
            while (1)
            {
              v218 = v224 + 1;
              if (__OFADD__(v224, 1))
              {
                goto LABEL_136;
              }

              if (v218 >= v221)
              {
                break;
              }

              v225 = v243[v218];
              ++v224;
              if (v225)
              {
                v223 = __clz(__rbit64(v225));
                v252 = (v225 - 1) & v225;
                goto LABEL_121;
              }
            }
          }

          v14 = v255;
          v91 = v250;
          v85 = v251;
          v84 = v244;
        }

        v111 = *(v110 + 56) + 72 * v107;
        v277 = *v111;
        v113 = *(v111 + 32);
        v112 = *(v111 + 48);
        v114 = *(v111 + 64);
        v278 = *(v111 + 16);
        v279 = v113;
        v281 = v114;
        v280 = v112;
        specialized _NativeDictionary._delete(at:)(v107, v110);
        v284 = v110;
      }

      else
      {
        v281 = 0;
        v279 = 0u;
        v280 = 0u;
        v277 = 0u;
        v278 = 0u;
        v14 = v255;
      }

      v6 = v263;
      v12 = v261;
      goto LABEL_90;
    }

    v274 = v279;
    v275 = v280;
    v276 = v281;
    v272 = v277;
    v273 = v278;
    outlined init with copy of AttributedString._AttributeValue(&v272, &v267);
    v82 = v284;
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v286 = v82;
    v84 = v244;
    v85 = v251;
    v86 = specialized __RawDictionaryStorage.find<A>(_:)(v244, v251);
    v88 = *(v82 + 16);
    v89 = (v87 & 1) == 0;
    v61 = __OFADD__(v88, v89);
    v90 = v88 + v89;
    v91 = v250;
    if (v61)
    {
      goto LABEL_130;
    }

    v92 = v87;
    if (*(v82 + 24) < v90)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v90, v83);
      v93 = v286;
      v86 = specialized __RawDictionaryStorage.find<A>(_:)(v84, v85);
      if ((v92 & 1) != (v94 & 1))
      {
        goto LABEL_138;
      }

LABEL_44:
      v14 = v255;
      v6 = v263;
      if (v92)
      {
LABEL_45:
        v123 = *(v93 + 56) + 72 * v86;
        v125 = *(v123 + 16);
        v124 = *(v123 + 32);
        v126 = *(v123 + 48);
        v281 = *(v123 + 64);
        v280 = v126;
        v277 = *v123;
        v278 = v125;
        v279 = v124;
        v127 = *(v93 + 56) + 72 * v86;
        v128 = v268;
        v129 = v269;
        v130 = v270;
        *(v127 + 64) = v271;
        *(v127 + 32) = v129;
        *(v127 + 48) = v130;
        *(v127 + 16) = v128;
        *v127 = v267;
        outlined destroy of AttributedString._AttributeValue(&v272);
        goto LABEL_89;
      }

LABEL_87:
      *(v93 + 8 * (v86 >> 6) + 64) |= 1 << v86;
      v184 = (*(v93 + 48) + 16 * v86);
      *v184 = v84;
      v184[1] = v85;
      v185 = *(v93 + 56) + 72 * v86;
      *v185 = v267;
      v186 = v268;
      v187 = v269;
      v188 = v270;
      *(v185 + 64) = v271;
      *(v185 + 32) = v187;
      *(v185 + 48) = v188;
      *(v185 + 16) = v186;
      v189 = *(v93 + 16);
      v61 = __OFADD__(v189, 1);
      v190 = v189 + 1;
      if (v61)
      {
        goto LABEL_132;
      }

      *(v93 + 16) = v190;

      outlined destroy of AttributedString._AttributeValue(&v272);
      v277 = 0u;
      v278 = 0u;
      v279 = 0u;
      v280 = 0u;
      v281 = 0;
LABEL_89:
      v12 = v261;
      v284 = v93;
LABEL_90:
      AttributedString._AttributeStorage._attributeModified(_:old:new:)(v84, v85, &v277, v282);
      outlined destroy of TermOfAddress?(v282, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of TermOfAddress?(&v277, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

      (v253)(v240, AssociatedTypeWitness);
      (*(v256 + 8))(v91, v258);
      v16 = v264;
      v15 = v266;
      v13 = v245;
      goto LABEL_8;
    }

    if (v83)
    {
      v93 = v82;
      goto LABEL_44;
    }

    v243 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
    v154 = static _DictionaryStorage.copy(original:)();
    v93 = v154;
    if (!*(v82 + 16))
    {
LABEL_86:

      v86 = v243;
      v14 = v255;
      v6 = v263;
      v91 = v250;
      if (v92)
      {
        goto LABEL_45;
      }

      goto LABEL_87;
    }

    v242 = v80;
    v155 = (v154 + 64);
    v156 = 1 << *(v93 + 32);
    v246 = (v82 + 64);
    v157 = (v156 + 63) >> 6;
    if (v93 != v82 || v155 >= &v246[8 * v157])
    {
      memmove(v155, v246, 8 * v157);
    }

    v158 = 0;
    *(v93 + 16) = *(v82 + 16);
    v159 = 1 << *(v82 + 32);
    if (v159 < 64)
    {
      v160 = ~(-1 << v159);
    }

    else
    {
      v160 = -1;
    }

    v252 = v160 & *(v82 + 64);
    v161 = (v159 + 63) >> 6;
    for (j = v252; v252; j = v252)
    {
      v163 = __clz(__rbit64(j));
      v252 = (j - 1) & j;
LABEL_79:
      v166 = v163 | (v158 << 6);
      v167 = 16 * v166;
      v168 = *(v82 + 56);
      v169 = (*(v82 + 48) + 16 * v166);
      v170 = v169[1];
      v247 = *v169;
      v171 = 72 * v166;
      outlined init with copy of AttributedString._AttributeValue(v168 + 72 * v166, &v277);
      v172 = (*(v93 + 48) + v167);
      *v172 = v247;
      v172[1] = v170;
      v173 = *(v93 + 56) + v171;
      *v173 = v277;
      v174 = v278;
      v175 = v279;
      v176 = v280;
      *(v173 + 64) = v281;
      *(v173 + 32) = v175;
      *(v173 + 48) = v176;
      *(v173 + 16) = v174;
    }

    v164 = v158;
    v85 = v251;
    v84 = v244;
    while (1)
    {
      v158 = v164 + 1;
      if (__OFADD__(v164, 1))
      {
        break;
      }

      if (v158 >= v161)
      {
        goto LABEL_86;
      }

      v165 = *&v246[8 * v158];
      ++v164;
      if (v165)
      {
        v163 = __clz(__rbit64(v165));
        v252 = (v165 - 1) & v165;
        goto LABEL_79;
      }
    }

LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v51 = *(v44 + 8);
  v51(v43, v47);
  v52 = (v253[3])();
  v54 = v53;
  v283 = 0;
  memset(v282, 0, sizeof(v282));
  outlined init with copy of FloatingPointRoundingRule?(v282, &v277, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  if (*(&v278 + 1))
  {
    v274 = v279;
    v275 = v280;
    v276 = v281;
    v272 = v277;
    v273 = v278;
    outlined init with copy of AttributedString._AttributeValue(&v272, &v267);
    v55 = v284;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v286 = v55;
    v57 = specialized __RawDictionaryStorage.find<A>(_:)(v52, v54);
    v59 = *(v55 + 16);
    v60 = (v58 & 1) == 0;
    v61 = __OFADD__(v59, v60);
    v62 = v59 + v60;
    if (v61)
    {
      goto LABEL_131;
    }

    v63 = v58;
    if (*(v55 + 24) < v62)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v62, v56);
      v64 = v286;
      v57 = specialized __RawDictionaryStorage.find<A>(_:)(v52, v54);
      if ((v63 & 1) != (v65 & 1))
      {
        goto LABEL_138;
      }

LABEL_40:
      v13 = v245;
      v14 = v255;
      if (v63)
      {
LABEL_41:
        v115 = *(v64 + 56) + 72 * v57;
        v117 = *(v115 + 16);
        v116 = *(v115 + 32);
        v118 = *(v115 + 48);
        v281 = *(v115 + 64);
        v280 = v118;
        v277 = *v115;
        v278 = v117;
        v279 = v116;
        v119 = *(v64 + 56) + 72 * v57;
        v120 = v268;
        v121 = v269;
        v122 = v270;
        *(v119 + 64) = v271;
        *(v119 + 32) = v121;
        *(v119 + 48) = v122;
        *(v119 + 16) = v120;
        *v119 = v267;
        outlined destroy of AttributedString._AttributeValue(&v272);
        goto LABEL_84;
      }

LABEL_82:
      *(v64 + 8 * (v57 >> 6) + 64) |= 1 << v57;
      v177 = (*(v64 + 48) + 16 * v57);
      *v177 = v52;
      v177[1] = v54;
      v178 = *(v64 + 56) + 72 * v57;
      *v178 = v267;
      v179 = v268;
      v180 = v269;
      v181 = v270;
      *(v178 + 64) = v271;
      *(v178 + 32) = v180;
      *(v178 + 48) = v181;
      *(v178 + 16) = v179;
      v182 = *(v64 + 16);
      v61 = __OFADD__(v182, 1);
      v183 = v182 + 1;
      if (v61)
      {
        goto LABEL_133;
      }

      *(v64 + 16) = v183;

      outlined destroy of AttributedString._AttributeValue(&v272);
      v277 = 0u;
      v278 = 0u;
      v279 = 0u;
      v280 = 0u;
      v281 = 0;
LABEL_84:
      v6 = v263;
      v284 = v64;
LABEL_85:
      AttributedString._AttributeStorage._attributeModified(_:old:new:)(v52, v54, &v277, v282);
      outlined destroy of TermOfAddress?(v282, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of TermOfAddress?(&v277, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

      v51(v250, v258);
      goto LABEL_7;
    }

    if (v56)
    {
      v64 = v55;
      goto LABEL_40;
    }

    v251 = v52;
    v247 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
    v131 = static _DictionaryStorage.copy(original:)();
    v64 = v131;
    if (!*(v55 + 16))
    {
LABEL_81:

      v57 = v247;
      v13 = v245;
      v14 = v255;
      v52 = v251;
      if (v63)
      {
        goto LABEL_41;
      }

      goto LABEL_82;
    }

    v132 = (v131 + 64);
    v133 = 1 << *(v64 + 32);
    v249 = (v55 + 64);
    v134 = (v133 + 63) >> 6;
    if (v64 != v55 || v132 >= &v249[v134])
    {
      memmove(v132, v249, 8 * v134);
    }

    v135 = 0;
    *(v64 + 16) = *(v55 + 16);
    v136 = 1 << *(v55 + 32);
    if (v136 < 64)
    {
      v137 = ~(-1 << v136);
    }

    else
    {
      v137 = -1;
    }

    AssociatedTypeWitness = v137 & *(v55 + 64);
    v246 = ((v136 + 63) >> 6);
    for (k = AssociatedTypeWitness; AssociatedTypeWitness; k = AssociatedTypeWitness)
    {
      v139 = __clz(__rbit64(k));
      AssociatedTypeWitness = (k - 1) & k;
LABEL_63:
      v142 = v139 | (v135 << 6);
      v252 = 16 * v142;
      v143 = *(v55 + 56);
      v144 = (*(v55 + 48) + 16 * v142);
      v146 = *v144;
      v145 = v144[1];
      v256 = v146;
      v253 = v145;
      v147 = 72 * v142;
      outlined init with copy of AttributedString._AttributeValue(v143 + 72 * v142, &v277);
      v148 = v253;
      v149 = (*(v64 + 48) + v252);
      *v149 = v256;
      v149[1] = v148;
      v150 = *(v64 + 56) + v147;
      *v150 = v277;
      v151 = v278;
      v152 = v279;
      v153 = v280;
      *(v150 + 64) = v281;
      *(v150 + 32) = v152;
      *(v150 + 48) = v153;
      *(v150 + 16) = v151;
    }

    v140 = v135;
    while (1)
    {
      v135 = v140 + 1;
      if (__OFADD__(v140, 1))
      {
        break;
      }

      if (v135 >= v246)
      {
        goto LABEL_81;
      }

      v141 = v249[v135];
      ++v140;
      if (v141)
      {
        v139 = __clz(__rbit64(v141));
        AssociatedTypeWitness = (v141 - 1) & v141;
        goto LABEL_63;
      }
    }

LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  outlined destroy of TermOfAddress?(&v277, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  v95 = specialized __RawDictionaryStorage.find<A>(_:)(v52, v54);
  if ((v96 & 1) == 0)
  {
    v281 = 0;
    v279 = 0u;
    v280 = 0u;
    v277 = 0u;
    v278 = 0u;
    v13 = v245;
    v14 = v255;
    v6 = v263;
    goto LABEL_85;
  }

  v97 = v95;
  v98 = v284;
  v99 = swift_isUniquelyReferenced_nonNull_native();
  v14 = v255;
  if (v99)
  {
    v100 = v98;
LABEL_33:

    v101 = *(v100 + 56) + 72 * v97;
    v277 = *v101;
    v103 = *(v101 + 32);
    v102 = *(v101 + 48);
    v104 = *(v101 + 64);
    v278 = *(v101 + 16);
    v279 = v103;
    v281 = v104;
    v280 = v102;
    specialized _NativeDictionary._delete(at:)(v97, v100);
    v284 = v100;
    v13 = v245;
    v6 = v263;
    goto LABEL_85;
  }

  v251 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
  v191 = static _DictionaryStorage.copy(original:)();
  v100 = v191;
  if (!*(v98 + 16))
  {
LABEL_123:

    v14 = v255;
    v52 = v251;
    goto LABEL_33;
  }

  v192 = (v191 + 64);
  v193 = 1 << *(v100 + 32);
  v249 = (v98 + 64);
  v194 = (v193 + 63) >> 6;
  if (v100 != v98 || v192 >= &v249[v194])
  {
    memmove(v192, v249, 8 * v194);
  }

  v195 = 0;
  *(v100 + 16) = *(v98 + 16);
  v196 = 1 << *(v98 + 32);
  if (v196 < 64)
  {
    v197 = ~(-1 << v196);
  }

  else
  {
    v197 = -1;
  }

  AssociatedTypeWitness = v197 & *(v98 + 64);
  v247 = (v196 + 63) >> 6;
  for (m = AssociatedTypeWitness; AssociatedTypeWitness; m = AssociatedTypeWitness)
  {
    v199 = __clz(__rbit64(m));
    AssociatedTypeWitness = (m - 1) & m;
LABEL_105:
    v202 = v199 | (v195 << 6);
    v252 = 16 * v202;
    v203 = *(v98 + 56);
    v204 = (*(v98 + 48) + 16 * v202);
    v206 = *v204;
    v205 = v204[1];
    v256 = v206;
    v253 = v205;
    v207 = 72 * v202;
    outlined init with copy of AttributedString._AttributeValue(v203 + 72 * v202, &v277);
    v208 = v253;
    v209 = (*(v100 + 48) + v252);
    *v209 = v256;
    v209[1] = v208;
    v210 = *(v100 + 56) + v207;
    *v210 = v277;
    v211 = v278;
    v212 = v279;
    v213 = v280;
    *(v210 + 64) = v281;
    *(v210 + 32) = v212;
    *(v210 + 48) = v213;
    *(v210 + 16) = v211;
  }

  v200 = v195;
  while (1)
  {
    v195 = v200 + 1;
    if (__OFADD__(v200, 1))
    {
      break;
    }

    if (v195 >= v247)
    {
      goto LABEL_123;
    }

    v201 = v249[v195];
    ++v200;
    if (v201)
    {
      v199 = __clz(__rbit64(v201));
      AssociatedTypeWitness = (v201 - 1) & v201;
      goto LABEL_105;
    }
  }

LABEL_137:
  __break(1u);
LABEL_138:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t CodableConfiguration<>.init(wrappedValue:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{

  v6 = *(*(a2 - 8) + 32);

  return v6(a3, a1, a2);
}

uint64_t protocol witness for static DecodableAttributedStringKey.decode(from:) in conformance AttributeScopes.FoundationAttributes.ReferentConceptAttribute@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of Hashable & Sendable(a1, v5);
  result = Int.init(from:)();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for static DecodableAttributedStringKey.decode(from:) in conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = outlined init with copy of Hashable & Sendable(a1, v7);
  a4(v5);
  return dispatch thunk of Decodable.init(from:)();
}

uint64_t protocol witness for static EncodableAttributedStringKey.encode(_:to:) in conformance AttributeScopes.FoundationAttributes.DateFieldAttribute(char *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  AttributeScopes.FoundationAttributes.DateFieldAttribute.Field.rawValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t protocol witness for static EncodableAttributedStringKey.encode(_:to:) in conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute()
{
  type metadata accessor for NSInlinePresentationIntent(0);
  lazy protocol witness table accessor for type NSDecimal and conformance NSDecimal(&lazy protocol witness table cache variable for type NSInlinePresentationIntent and conformance NSInlinePresentationIntent, type metadata accessor for NSInlinePresentationIntent);
  return dispatch thunk of Encodable.encode(to:)();
}

uint64_t protocol witness for static DecodableAttributedStringKey.decode(from:) in conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for NSInlinePresentationIntent(0);
  outlined init with copy of Hashable & Sendable(a1, v6);
  lazy protocol witness table accessor for type NSDecimal and conformance NSDecimal(&lazy protocol witness table cache variable for type NSInlinePresentationIntent and conformance NSInlinePresentationIntent, type metadata accessor for NSInlinePresentationIntent);
  result = dispatch thunk of Decodable.init(from:)();
  if (!v2)
  {
    *a2 = v6[5];
  }

  return result;
}

uint64_t protocol witness for static EncodableAttributedStringKey.encode(_:to:) in conformance AttributeScopes.FoundationAttributes.MarkdownSourcePositionAttribute(_OWORD *a1, void *a2)
{
  v2 = a1[5];
  v6[4] = a1[4];
  v7[0] = v2;
  *(v7 + 9) = *(a1 + 89);
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v4 = a1[3];
  v6[2] = a1[2];
  v6[3] = v4;
  return _s10Foundation28EncodableAttributedStringKeyPAASE5ValueRpzrlE6encode_2toyAE_s7Encoder_ptKFZAA15AttributeScopesO0A10AttributesV022MarkdownSourcePositionJ0O_Tt1B5(v6, a2);
}

uint64_t protocol witness for static DecodableAttributedStringKey.decode(from:) in conformance AttributeScopes.FoundationAttributes.LanguageIdentifierAttribute@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of Hashable & Sendable(a1, v6);
  result = String.init(from:)();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t protocol witness for static DecodableAttributedStringKey.decode(from:) in conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = outlined init with copy of Hashable & Sendable(a1, v7);
  a4(v5);
  return dispatch thunk of Decodable.init(from:)();
}

uint64_t protocol witness for static DecodableAttributedStringKey.decode(from:) in conformance AttributeScopes.FoundationAttributes.WritingDirectionAttribute@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10Foundation28DecodableAttributedStringKeyPAASe5ValueRpzrlE6decode4fromAEs7Decoder_p_tKFZAA15AttributeScopesO0A10AttributesV016WritingDirectionJ0O_Tt1g5(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t protocol witness for static EncodableAttributedStringKey.encode(_:to:) in conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedDateArgumentAttribute(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t protocol witness for static EncodableAttributedStringKey.encode(_:to:) in conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedDateIntervalArgumentAttribute()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation4DateVGMd);
  lazy protocol witness table accessor for type Date and conformance Date();
  return Range<>.encode(to:)();
}

uint64_t protocol witness for static DecodableAttributedStringKey.decode(from:) in conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedDateIntervalArgumentAttribute(uint64_t a1)
{
  outlined init with copy of Hashable & Sendable(a1, v2);
  lazy protocol witness table accessor for type Date and conformance Date();
  lazy protocol witness table accessor for type Date and conformance Date();
  return Range<>.init(from:)();
}

uint64_t *specialized closure #2 in Rope._Node.append(_:)(_WORD *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a2 + 24 * v4;
  v7 = *(v5 - 48);
  result = (v5 - 48);
  v8 = *(result[3] + 16) + *(v7 + 16);
  if (v8 <= 0xF)
  {
    v9 = v4 - 1;
    _s19CollectionsInternal4RopeV5_NodeV20redistributeChildren__2toyAEyx_Gz_AHzSitFZ10Foundation16AttributedStringV01_B3RunV_Tt2g5(result, result + 3, v8);
    specialized Rope._UnsafeHandle._removeChild(at:)(v9, a1, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

_WORD *specialized closure #1 in static Rope._Node.createInner(children:_:)(_WORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *result;
  v9 = (a2 + 24 * *result);
  *v9 = a3;
  v9[1] = a4;
  v9[2] = a5;
  if (v8 == 0xFFFF)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = (a2 + 24 * (v8 + 1));
  *v10 = a6;
  v10[1] = a7;
  v10[2] = a8;
  if (v8 == 65534)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *result = v8 + 2;
  swift_unknownObjectRetain();

  return swift_unknownObjectRetain();
}

char *specialized BidirectionalCollection._distance(from:to:)(void *a1, void **a2, uint64_t a3)
{
  v4 = a1;
  v5 = a1[3];
  result = *a1;
  v7 = *a2;
  if (result >= *a2)
  {
LABEL_20:
    if (v7 >= result)
    {
      return 0;
    }

    v11 = 0;
    v15 = v4[1];
    while (1)
    {
      v12 = __OFSUB__(v11--, 1);
      if (v12)
      {
        break;
      }

      if (result == v15)
      {
        if (v5)
        {
          v12 = __OFSUB__(v5--, 1);
          if (v12)
          {
            goto LABEL_48;
          }

          v16 = *(a3 + 24);
          result = [*(a3 + 16) rangeAtIndex_];
          v15 = result;
          v18 = &result[v17];
          v19 = __OFADD__(result, v17);
          if (v16)
          {
            if (v19)
            {
              goto LABEL_53;
            }

            if (v18 < result)
            {
              goto LABEL_55;
            }
          }

          else
          {
            if (v19)
            {
              goto LABEL_52;
            }

            if (v18 < result)
            {
              goto LABEL_54;
            }
          }

          result = v18 - 1;
          if (__OFSUB__(v18, 1))
          {
            __break(1u);
            return 0;
          }
        }

        else
        {
          result = v15;
        }
      }

      else
      {
        v12 = __OFSUB__(result--, 1);
        if (v12)
        {
          goto LABEL_47;
        }
      }

      if (result == v7)
      {
        return v11;
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = v4[2];
    v10 = v4[4];
    while (1)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = __OFADD__(result++, 1);
      if (v12)
      {
        goto LABEL_44;
      }

      if (result == v9)
      {
        v13 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_46;
        }

        result = v9;
        if (v13 != v10)
        {
          v5 = *(a3 + 24);
          result = [*(a3 + 16) rangeAtIndex_];
          v9 = &result[v14];
          v4 = __OFADD__(result, v14);
          if (v5)
          {
            if (v4)
            {
              goto LABEL_49;
            }

            if (v9 < result)
            {
              goto LABEL_51;
            }
          }

          else
          {
            if (v4)
            {
              goto LABEL_50;
            }

            if (v9 < result)
            {
              __break(1u);
              goto LABEL_20;
            }
          }

          v5 = v13;
        }
      }

      ++v8;
      if (result == v7)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

void specialized BidirectionalCollection._distance(from:to:)(__int128 *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v219 - v8;
  v10 = *(a1 + 1);
  v11 = *(a1 + 2);
  v12 = *(a1 + 3);
  v13 = a1[1];
  v296 = *a1;
  v297 = v13;
  v298 = *(a1 + 4);
  v14 = v296 >> 10;
  v15 = *a2 >> 10;
  if (v296 >> 10 >= v15)
  {
LABEL_174:
    if (v15 >= v14)
    {
      return;
    }

    v218 = 0;
    while (1)
    {
      v31 = __OFSUB__(v218--, 1);
      if (v31)
      {
        break;
      }

      specialized BidirectionalCollection.formIndex(before:)(&v296);
      if (v15 == v296 >> 10)
      {
        return;
      }
    }

    goto LABEL_185;
  }

  v16 = v296;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v223 = *(type metadata accessor for AttributedString.Runs.NSAttributesSlice(0) + 20);
  v20 = type metadata accessor for AttributedString.Runs();
  v21 = v19;
  v22 = v18;
  v23 = v17;
  v24 = 0;
  v25 = *(v20 + 24);
  v26 = v16;
  v27 = (v7 + 8);
  v228 = (v7 + 8);
  v229 = v3;
  v221 = v15;
  v222 = v6;
  v220 = v9;
  v243 = v25;
  while (1)
  {
    v31 = __OFADD__(v24, 1);
    v32 = v24 + 1;
    if (v31)
    {
      goto LABEL_186;
    }

    v259 = *(v3 + v223);
    v258 = *(v259 + 16);
    if (!v258)
    {
      goto LABEL_187;
    }

    v238 = v32;
    v33 = *v3;
    v252 = v26;
    v249 = v23;
    v245 = v21;
    v246 = v22;
    v255 = v33;
    AttributedString.Guts.findRun(at:)(v26, v21, &v277);
    v253 = v278;
    v254 = *(&v277 + 1);
    v265 = *(&v278 + 1);
    v250 = v277;
    v251 = v279;
    v241 = v281;
    v242 = v280;
    v239 = v283;
    v240 = v282;
    v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
    RangeSet.ranges.getter();
    v34 = RangeSet.Ranges.count.getter();
    v266 = *v27;
    v266(v9, v6);
    if (v34 < 1)
    {
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
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
      goto LABEL_202;
    }

    v35 = 0;
    v268 = v252 >> 10;
    while (1)
    {
      if (__OFADD__(v35, v34))
      {
        goto LABEL_181;
      }

      v36 = (v35 + v34) / 2;
      RangeSet.ranges.getter();
      RangeSet.Ranges.subscript.getter();
      v266(v9, v6);
      if (v268 >= v277 >> 10)
      {
        break;
      }

LABEL_10:
      v34 = v36;
      if (v35 >= v36)
      {
        goto LABEL_180;
      }
    }

    if (v268 >= v279 >> 10)
    {
      v35 = v36 + 1;
      v36 = v34;
      goto LABEL_10;
    }

    v236 = v279;
    v234 = v281;
    v235 = v280;
    v233 = v282;
    v37 = v3[15];
    v38 = v255;
    v224 = v36;
    v247 = v279 >> 10;
    if (v265 != v37)
    {
      goto LABEL_21;
    }

    v39 = v3[22];
    if (v3[26] != 2)
    {
      if (v39 == 2 || (v3[19] ^ v3[23]) >= 1024)
      {
        goto LABEL_79;
      }

LABEL_21:
      if (v265 >= v37)
      {
        goto LABEL_193;
      }

      v232 = v37;
      v41 = v255[9];
      v40 = v255[10];
      v42 = v255[12];
      v263 = v255[11];
      v264 = v40;
      swift_unknownObjectRetain();
      v43 = v250;
      v45 = v253;
      v44 = v254;
      specialized Rope.subscript.getter(v250, v254, v253, v41, v264, v263, v42);
      v257 = v46;
      v230 = v47;
      swift_unknownObjectRelease();
      v48 = v44;
      v49 = v38[9];
      v50 = v38[12];
      *&v277 = v43;
      *(&v277 + 1) = v44;
      v51 = v265 + 1;
      v231 = (v259 + 40);
      *&v278 = v45;
      while (2)
      {
        if (v43 != v50)
        {
          goto LABEL_189;
        }

        v253 = v45;
        v254 = v48;
        v248 = v50;
        v244 = v51;
        if (v45)
        {
          v52 = *(v45 + 24 * ((v48 >> ((4 * *(v45 + 18) + 8) & 0x3C)) & 0xF) + 24);
          v31 = __OFADD__(v251, v52);
          v53 = v251 + v52;
          if (v31)
          {
            goto LABEL_194;
          }

          v227 = v53;
          v38 = v255;
          if (!v49)
          {
            goto LABEL_188;
          }

          swift_unknownObjectRetain();
          v54 = v254;
        }

        else
        {
          v55 = v48;
          swift_unknownObjectRetain();
          v56 = specialized Rope._Node.subscript.getter(v55, v49);

          if (__OFADD__(v251, v56))
          {
            goto LABEL_196;
          }

          v227 = v251 + v56;
          v54 = v254;
          v38 = v255;
          if (!v49)
          {
            goto LABEL_188;
          }
        }

        if (v54 >= (((-15 << ((4 * *(v49 + 18) + 8) & 0x3C)) - 1) & *(v49 + 18) | (*(v49 + 16) << ((4 * *(v49 + 18) + 8) & 0x3C))))
        {
          goto LABEL_188;
        }

        if (v253)
        {
          v57 = (4 * *(v253 + 18) + 8) & 0x3C;
          v58 = ((v54 >> v57) & 0xF) + 1;
          if (v58 < *(v253 + 16))
          {
            v59 = (v58 << v57) | ((-15 << v57) - 1) & v54;
            *(&v277 + 1) = v59;
            swift_unknownObjectRelease();
            goto LABEL_37;
          }
        }

        v60 = (4 * *(v49 + 18) + 8) & 0x3C;
        v61 = (v54 >> v60) & 0xF;
        if (*(v49 + 18))
        {
          v62 = *(v49 + 24 + 24 * ((v54 >> v60) & 0xF));
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v63 = specialized Rope._Node.formSuccessor(of:)(&v277, v62);
          swift_unknownObjectRelease();
          if (v63)
          {
            swift_unknownObjectRelease_n();
            v59 = *(&v277 + 1);
            v38 = v255;
LABEL_37:
            v49 = v278;
LABEL_45:
            if (v232 < v244)
            {
              goto LABEL_159;
            }

            if (v244 == v232)
            {
              v71 = v3[22];
              if (v3[26] == 2)
              {
                if (v71 == 2)
                {
                  goto LABEL_159;
                }
              }

              else if (v71 != 2 && (v3[19] ^ v3[23]) < 1024)
              {
LABEL_159:

                goto LABEL_84;
              }
            }

            if (v277 != v38[12])
            {
              goto LABEL_190;
            }

            v250 = v277;
            v225 = v49;
            v226 = v59;
            if (v49)
            {
              v72 = v49 + 24 * ((v59 >> ((4 * *(v49 + 18) + 8) & 0x3C)) & 0xF);
              v74 = *(v72 + 32);
              v73 = *(v72 + 40);

              v237 = v73;
            }

            else
            {
              v75 = v38[9];
              swift_unknownObjectRetain();
              specialized Rope._Node.subscript.getter(v59, v75);
              v74 = v76;
              v237 = v77;
              swift_unknownObjectRelease();
            }

            v78 = v257;
            v79 = 0;
            v80 = v231;
            v256 = v74;
LABEL_58:
            if (v79 >= *(v259 + 16))
            {
              goto LABEL_182;
            }

            v82 = *(v80 - 1);
            v81 = *v80;
            v265 = v80;
            if (*(v78 + 16))
            {

              v83 = specialized __RawDictionaryStorage.find<A>(_:)(v82, v81);
              if (v84)
              {
                outlined init with copy of AttributedString._AttributeValue(*(v78 + 56) + 72 * v83, &v291);
                if (!*(v74 + 16))
                {
LABEL_67:

LABEL_68:
                  v290 = 0;
                  memset(v289, 0, sizeof(v289));
                  goto LABEL_69;
                }
              }

              else
              {
                v295 = 0;
                v293 = 0u;
                v294 = 0u;
                v291 = 0u;
                v292 = 0u;
                if (!*(v74 + 16))
                {
                  goto LABEL_67;
                }
              }
            }

            else
            {
              v295 = 0;
              v293 = 0u;
              v294 = 0u;
              v291 = 0u;
              v292 = 0u;

              if (!*(v74 + 16))
              {
                goto LABEL_67;
              }
            }

            v85 = specialized __RawDictionaryStorage.find<A>(_:)(v82, v81);
            v87 = v86;

            if ((v87 & 1) == 0)
            {
              goto LABEL_68;
            }

            outlined init with copy of AttributedString._AttributeValue(*(v74 + 56) + 72 * v85, v289);
LABEL_69:
            outlined init with copy of FloatingPointRoundingRule?(&v291, &v277, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            outlined init with copy of FloatingPointRoundingRule?(v289, &v284, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            if (*(&v278 + 1))
            {
              outlined init with copy of FloatingPointRoundingRule?(&v277, v274, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              if (!*(&v285 + 1))
              {
                outlined destroy of TermOfAddress?(v289, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of TermOfAddress?(&v291, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of AttributedString._AttributeValue(v274);
LABEL_81:
                outlined destroy of TermOfAddress?(&v277, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_83:

                v3 = v229;
                v38 = v255;
                goto LABEL_84;
              }

              v271 = v286;
              v272 = v287;
              v273 = v288;
              v269 = v284;
              v270 = v285;
              v88 = v275;
              v261 = v276;
              v262 = v79;
              v260 = __swift_project_boxed_opaque_existential_1(v274, v275);
              v89 = __swift_project_boxed_opaque_existential_1(&v269, *(&v270 + 1));
              v264 = &v219;
              v90 = *(v88 - 8);
              MEMORY[0x1EEE9AC00](v89);
              v92 = &v219 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
              v263 = &v219;
              v94 = MEMORY[0x1EEE9AC00](v93);
              (*(v96 + 16))(&v219 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0), v94);
              v97 = type metadata accessor for Optional();
              v98 = *(v97 - 8);
              MEMORY[0x1EEE9AC00](v97);
              v100 = &v219 - v99;
              if ((swift_dynamicCast() & 1) == 0)
              {
                outlined destroy of TermOfAddress?(v289, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of TermOfAddress?(&v291, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                (*(v90 + 56))(v100, 1, 1, v88);
                (*(v98 + 8))(v100, v97);
                outlined destroy of AttributedString._AttributeValue(&v269);
                outlined destroy of AttributedString._AttributeValue(v274);
                outlined destroy of TermOfAddress?(&v277, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                goto LABEL_83;
              }

              (*(v90 + 56))(v100, 0, 1, v88);
              (*(v90 + 32))(v92, v100, v88);
              v101 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*(v90 + 8))(v92, v88);
              outlined destroy of TermOfAddress?(v289, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of TermOfAddress?(&v291, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of AttributedString._AttributeValue(&v269);
              outlined destroy of AttributedString._AttributeValue(v274);
              outlined destroy of TermOfAddress?(&v277, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              v74 = v256;
              v78 = v257;
              v79 = v262;
              if ((v101 & 1) == 0)
              {
                goto LABEL_83;
              }
            }

            else
            {
              outlined destroy of TermOfAddress?(v289, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of TermOfAddress?(&v291, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              if (*(&v285 + 1))
              {
                goto LABEL_81;
              }

              outlined destroy of TermOfAddress?(&v277, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            }

            ++v79;
            v80 = v265 + 2;
            if (v258 == v79)
            {

              v49 = v255[9];
              v50 = v255[12];
              v48 = v226;
              v251 = v227;
              v43 = v250;
              *&v277 = v250;
              *(&v277 + 1) = v226;
              v45 = v225;
              *&v278 = v225;
              v51 = v244 + 1;
              v3 = v229;
              if (__OFADD__(v244, 1))
              {
                goto LABEL_197;
              }

              continue;
            }

            goto LABEL_58;
          }

          v64 = v61 + 1;
          if (v61 + 1 < *(v49 + 16))
          {
            v65 = v49 + 24 + 24 * v64;
            v66 = *v65;
            v67 = *(*v65 + 18) + 1;
            if ((v67 >> 8))
            {
              goto LABEL_200;
            }

            v59 = (*(&v277 + 1) & ((-15 << v60) - 1) | (v64 << v60)) & ((-256 << (4 * (v67 & 0xF))) | 0xFF);
            swift_unknownObjectRetain();
            v68 = specialized Rope._Node.unmanagedLeaf(at:)(v59, v66);
            swift_unknownObjectRelease_n();
            swift_unknownObjectRelease();
            v49 = v68;
            v38 = v255;
            goto LABEL_45;
          }

          swift_unknownObjectRelease();
          v38 = v255;
        }

        else if (v61 + 1 < *(v49 + 16))
        {
          swift_unknownObjectRelease();
          v59 = ((v61 + 1) << v60) | v254 & 0xFFFFFFFFFFFFF0FFLL;
          goto LABEL_45;
        }

        break;
      }

      v69 = *(v49 + 18);
      v70 = *(v49 + 16);
      swift_unknownObjectRelease();
      v49 = 0;
      v59 = ((-15 << ((4 * v69 + 8) & 0x3C)) - 1) & v69 | (v70 << ((4 * v69 + 8) & 0x3C));
      *&v277 = v248;
      goto LABEL_45;
    }

    if (v39 == 2)
    {
      goto LABEL_21;
    }

LABEL_79:
    v248 = v250;
LABEL_84:
    v102 = v38[9];
    v103 = v38[10];
    v104 = v38[11];
    v105 = v38[12];
    swift_unknownObjectRetain();
    v106 = specialized Rope.subscript.getter(v248, v254, v253, v102, v103, v104, v105);
    swift_unknownObjectRelease();

    if (__OFADD__(v251, v106))
    {
      goto LABEL_191;
    }

    v107 = *(v38 + 5);
    v321 = *(v38 + 3);
    v322 = v107;
    v323 = *(v38 + 7);
    if (__OFSUB__(v251 + v106, v242 >> 11))
    {
      goto LABEL_192;
    }

    swift_unknownObjectRetain();
    v108 = BigString.UTF8View.index(_:offsetBy:)();
    v110 = v109;
    v112 = v111;
    v114 = v113;
    swift_unknownObjectRelease();
    v115 = v108 >> 10;
    v116 = v38[3];
    v118 = v38[5];
    v117 = v38[6];
    v261 = v38[4];
    v262 = v118;
    v263 = v117;
    v119 = v38[8];
    v264 = v38[7];
    if (v108 >> 10 < v247)
    {
      break;
    }

    v258 = v119;
    v126 = v249;
    v320[8] = v252;
    v320[9] = v249;
    v128 = v245;
    v127 = v246;
    v320[10] = v246;
    v320[11] = v245;
    v129 = v235;
    v108 = v236;
    v320[12] = v236;
    v320[13] = v235;
    v130 = v234;
    v265 = v116;
    v131 = v233;
    v320[14] = v234;
    v320[15] = v233;
    swift_unknownObjectRetain();
    v132 = specialized Set.contains(_:)(0, 0, MEMORY[0x1E69E7CD0]);
    v133 = v129;
    v134 = v252;
    v135 = v131;
    v136 = v265;
    if (v132)
    {
      v320[16] = v265;
      v320[17] = v261;
      v320[18] = v262;
      v320[19] = v263;
      v320[20] = v264;
      v320[21] = v258;
      BigString.UTF8View.subscript.getter();
      v320[0] = v134;
      v320[1] = v126;
      v320[2] = v127;
      v320[3] = v128;
      v320[4] = v134;
      v320[5] = v126;
      v320[6] = v127;
      v320[7] = v128;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, v320, &v277);
      outlined destroy of BigSubstring.UTF8View(&v302);
      v133 = v235;
      v108 = v236;
      v135 = v233;
      v130 = v234;
      if (v282 != 2)
      {
        v108 = v279;
        if (v268 > v279 >> 10)
        {
          goto LABEL_199;
        }

        v133 = v280;
        v130 = v281;
        v135 = v282;
        v134 = v252;
        v126 = v249;
        v128 = v245;
        v127 = v246;
      }
    }

    v319[22] = v134;
    v319[23] = v126;
    v319[24] = v127;
    v319[25] = v128;
    v319[26] = v108;
    v259 = v130;
    v260 = v133;
    v319[27] = v133;
    v319[28] = v130;
    v257 = v135;
    v319[29] = v135;
    v137 = specialized Collection<>._containsScalarConstraint.getter(MEMORY[0x1E69E7CD0]);
    v38 = v255;
    if (v137)
    {
      v256 = v108;
      v138 = 0;
      v139 = MEMORY[0x1E69E7CD0];
      v140 = 1 << *(MEMORY[0x1E69E7CD0] + 32);
      if (v140 < 64)
      {
        v141 = ~(-1 << v140);
      }

      else
      {
        v141 = -1;
      }

      v142 = v141 & *(MEMORY[0x1E69E7CD0] + 56);
      v143 = (v140 + 63) >> 6;
      v144 = MEMORY[0x1E69E7CC0];
      v145 = v258;
      while (v142)
      {
LABEL_107:
        v147 = __clz(__rbit64(v142));
        v142 &= v142 - 1;
        v148 = (*(v139 + 48) + ((v138 << 10) | (16 * v147)));
        v149 = v148[1];
        if (v149 >= 2)
        {
          v150 = specialized Collection.first.getter(*v148, v149);
          v139 = MEMORY[0x1E69E7CD0];
          if ((v150 & 0x100000000) == 0)
          {
            v254 = v150;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v144 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v144 + 2) + 1, 1, v144);
            }

            v152 = *(v144 + 2);
            v151 = *(v144 + 3);
            v153 = v254;
            v139 = MEMORY[0x1E69E7CD0];
            if (v152 >= v151 >> 1)
            {
              v154 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v151 > 1), v152 + 1, 1, v144);
              v139 = MEMORY[0x1E69E7CD0];
              v144 = v154;
              v153 = v254;
            }

            *(v144 + 2) = v152 + 1;
            *&v144[4 * v152 + 32] = v153;
          }
        }
      }

      while (1)
      {
        v146 = v138 + 1;
        if (__OFADD__(v138, 1))
        {
          goto LABEL_183;
        }

        if (v146 >= v143)
        {

          v319[30] = v136;
          v319[31] = v261;
          v319[32] = v262;
          v319[33] = v263;
          v319[34] = v264;
          v319[35] = v145;
          BigString.UnicodeScalarView.subscript.getter();
          v155 = v304 >> 10;
          if (v304 >> 10 <= v303[6] >> 10)
          {

            v38 = v255;
LABEL_151:
            outlined destroy of BigSubstring.UnicodeScalarView(v303);
            v3 = v229;
            v108 = v256;
            break;
          }

          v156 = BigSubstring.UnicodeScalarView.subscript.getter();
          v157 = *(v144 + 2);
          v158 = 32;
          v38 = v255;
          do
          {
            if (!v157)
            {
              v195 = BigSubstring.UnicodeScalarView.index(after:)();
              if (v155 > v195 >> 10)
              {
                v160 = v195;
                v162 = v196;
                do
                {
                  v263 = v198;
                  v264 = v197;
                  v199 = BigSubstring.UnicodeScalarView.subscript.getter();
                  v200 = *(v144 + 2);
                  v201 = 32;
                  while (v200)
                  {
                    v202 = *&v144[v201];
                    v201 += 4;
                    --v200;
                    if (v202 == v199)
                    {

                      v166 = v263;
                      v164 = v264;
                      goto LABEL_170;
                    }
                  }

                  v160 = BigSubstring.UnicodeScalarView.index(after:)();
                  v162 = v203;
                }

                while (v155 > v160 >> 10);
              }

              goto LABEL_151;
            }

            v159 = *&v144[v158];
            v158 += 4;
            --v157;
          }

          while (v159 != v156);

          v160 = BigSubstring.UnicodeScalarView.index(after:)();
          v162 = v161;
          v164 = v163;
          v166 = v165;
LABEL_170:
          outlined destroy of BigSubstring.UnicodeScalarView(v303);
          swift_unknownObjectRelease();
          v108 = v160;
          v23 = v162;
          v22 = v164;
          v28 = v166;
          v3 = v229;
          v24 = v238;
          if (v268 <= v160 >> 10)
          {
            goto LABEL_153;
          }

          goto LABEL_201;
        }

        v142 = *(v139 + 8 * v146 + 56);
        ++v138;
        if (v142)
        {
          v138 = v146;
          goto LABEL_107;
        }
      }
    }

    swift_unknownObjectRelease();
    v24 = v238;
    v22 = v259;
    v23 = v260;
    v28 = v257;
LABEL_153:
    if (v247 != v108 >> 10)
    {
      goto LABEL_4;
    }

    v9 = v220;
    RangeSet.ranges.getter();
    v6 = v222;
    v204 = RangeSet.Ranges.count.getter();
    v266(v9, v6);
    v30 = v221;
    if (__OFSUB__(v204, 1))
    {
      goto LABEL_198;
    }

    if (v224 == v204 - 1)
    {
      v205 = v255[2];
      *&v296 = v236;
      *(&v296 + 1) = v235;
      *&v297 = v234;
      *(&v297 + 1) = v233;
      v298 = v205;
      v108 = v236;
      v23 = v235;
      v22 = v234;
      v28 = v233;
    }

    else
    {
      RangeSet.ranges.getter();
      RangeSet.Ranges.subscript.getter();
      v266(v9, v6);
      v23 = *(&v277 + 1);
      v108 = v277;
      v28 = *(&v278 + 1);
      v22 = v278;
      v206 = v255[2];
      v296 = v277;
      v297 = v278;
      v298 = v206;
    }

LABEL_5:
    v26 = v108;
    v21 = v28;
    v27 = v228;
    if (v30 == v108 >> 10)
    {
      return;
    }
  }

  if (v115 < v268)
  {
    goto LABEL_195;
  }

  v319[8] = v252;
  v319[9] = v249;
  v319[10] = v246;
  v319[11] = v245;
  v319[12] = v108;
  v319[13] = v110;
  v319[14] = v112;
  v319[15] = v114;
  if (v268 == v115)
  {
    v23 = v110;
    v22 = v112;
    v28 = v114;
    v24 = v238;
LABEL_4:
    v29 = v38[2];
    *&v296 = v108;
    *(&v296 + 1) = v23;
    *&v297 = v22;
    *(&v297 + 1) = v28;
    v298 = v29;
    v30 = v221;
    v6 = v222;
    v9 = v220;
    goto LABEL_5;
  }

  swift_unknownObjectRetain();
  if ((specialized Set.contains(_:)(0, 0, MEMORY[0x1E69E7CD0]) & 1) == 0)
  {
    v125 = MEMORY[0x1E69E7CD0];
    v124 = v249;
    v122 = v245;
    v123 = v246;
LABEL_120:
    v305 = v252;
    v306 = v124;
    v307 = v123;
    v308 = v122;
    v309 = v108;
    v259 = v112;
    v260 = v110;
    v310 = v110;
    v311 = v112;
    v167 = v114;
    v312 = v114;
    if (specialized Collection<>._containsScalarConstraint.getter(v125))
    {
      v256 = v108;
      v168 = 0;
      v169 = MEMORY[0x1E69E7CD0];
      v170 = 1 << *(MEMORY[0x1E69E7CD0] + 32);
      if (v170 < 64)
      {
        v171 = ~(-1 << v170);
      }

      else
      {
        v171 = -1;
      }

      v172 = v171 & *(MEMORY[0x1E69E7CD0] + 56);
      v173 = (v170 + 63) >> 6;
      v174 = MEMORY[0x1E69E7CC0];
      while (v172)
      {
LABEL_130:
        v176 = __clz(__rbit64(v172));
        v172 &= v172 - 1;
        v177 = (*(v169 + 48) + ((v168 << 10) | (16 * v176)));
        v178 = v177[1];
        if (v178 >= 2)
        {
          v179 = specialized Collection.first.getter(*v177, v178);
          v169 = MEMORY[0x1E69E7CD0];
          if ((v179 & 0x100000000) == 0)
          {
            v267 = v179;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v174 + 2) + 1, 1, v174);
            }

            v181 = *(v174 + 2);
            v180 = *(v174 + 3);
            v182 = v267;
            v169 = MEMORY[0x1E69E7CD0];
            if (v181 >= v180 >> 1)
            {
              v183 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v180 > 1), v181 + 1, 1, v174);
              v169 = MEMORY[0x1E69E7CD0];
              v174 = v183;
              v182 = v267;
            }

            *(v174 + 2) = v181 + 1;
            *&v174[4 * v181 + 32] = v182;
          }
        }
      }

      while (1)
      {
        v175 = v168 + 1;
        if (__OFADD__(v168, 1))
        {
          goto LABEL_184;
        }

        if (v175 >= v173)
        {

          v313 = v116;
          v314 = v261;
          v315 = v262;
          v316 = v263;
          v317 = v264;
          v318 = v119;
          BigString.UnicodeScalarView.subscript.getter();
          v184 = v301 >> 10;
          if (v301 >> 10 <= v300[6] >> 10)
          {

            v3 = v229;
            v38 = v255;
LABEL_168:
            outlined destroy of BigSubstring.UnicodeScalarView(v300);
            v108 = v256;
            break;
          }

          v265 = v116;
          v185 = BigSubstring.UnicodeScalarView.subscript.getter();
          v186 = *(v174 + 2);
          v187 = 32;
          v38 = v255;
          do
          {
            if (!v186)
            {
              v207 = BigSubstring.UnicodeScalarView.index(after:)();
              if (v184 > v207 >> 10)
              {
                v189 = v207;
                v15 = v208;
                v192 = v209;
                v194 = v210;
                do
                {
                  v211 = BigSubstring.UnicodeScalarView.subscript.getter();
                  v212 = *(v174 + 2);
                  v213 = 32;
                  while (v212)
                  {
                    v214 = *&v174[v213];
                    v213 += 4;
                    --v212;
                    if (v214 == v211)
                    {

                      goto LABEL_172;
                    }
                  }

                  v189 = BigSubstring.UnicodeScalarView.index(after:)();
                  v15 = v215;
                  v192 = v216;
                  v194 = v217;
                }

                while (v184 > v189 >> 10);
              }

              v3 = v229;
              goto LABEL_168;
            }

            v188 = *&v174[v187];
            v187 += 4;
            --v186;
          }

          while (v188 != v185);

          v189 = BigSubstring.UnicodeScalarView.index(after:)();
          v15 = v190;
          v192 = v191;
          v194 = v193;
LABEL_172:
          outlined destroy of BigSubstring.UnicodeScalarView(v300);
          swift_unknownObjectRelease();
          v108 = v189;
          v23 = v15;
          v22 = v192;
          v28 = v194;
          v14 = v268;
          v3 = v229;
          v24 = v238;
          if (v268 > v189 >> 10)
          {
            __break(1u);
            goto LABEL_174;
          }

          goto LABEL_4;
        }

        v172 = *(v169 + 8 * v175 + 56);
        ++v168;
        if (v172)
        {
          v168 = v175;
          goto LABEL_130;
        }
      }
    }

    swift_unknownObjectRelease();
    v24 = v238;
    v22 = v259;
    v23 = v260;
    v28 = v167;
    goto LABEL_4;
  }

  v319[16] = v116;
  v319[17] = v261;
  v319[18] = v262;
  v319[19] = v263;
  v319[20] = v264;
  v319[21] = v119;
  v256 = v108;
  BigString.UTF8View.subscript.getter();
  v319[0] = v252;
  v319[1] = v249;
  v258 = v119;
  v120 = v246;
  v319[2] = v246;
  v265 = v116;
  v121 = v245;
  v319[3] = v245;
  v319[4] = v252;
  v319[5] = v249;
  v319[6] = v246;
  v319[7] = v245;
  specialized BidirectionalCollection<>._getBlock(for:in:)(2, v319, &v277);
  v108 = v256;
  outlined destroy of BigSubstring.UTF8View(&v299);
  v122 = v121;
  v116 = v265;
  v123 = v120;
  v119 = v258;
  v124 = v249;
  v125 = MEMORY[0x1E69E7CD0];
  if (v282 == 2)
  {
    goto LABEL_120;
  }

  v108 = v279;
  if (v268 <= v279 >> 10)
  {
    v110 = v280;
    v112 = v281;
    v114 = v282;
    goto LABEL_120;
  }

LABEL_202:
  __break(1u);
}

uint64_t *specialized BidirectionalCollection._distance(from:to:)(uint64_t *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 32);
  v8 = *result;
  v7 = result[1];
  v10 = result[2];
  v9 = result[3];
  v11 = result[4];
  v106 = a3;
  if (v11 < v6)
  {
    v103 = *(a2 + 32);
    v12 = 0;
    while (1)
    {
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_159;
      }

      v15 = a3[9];
      v16 = a3[12];
      v112 = v8;
      v113 = v7;
      v114 = v10;
      v13 = __OFADD__(v9, 1);
      v17 = v9 + 1;
      if (v13)
      {
        goto LABEL_161;
      }

      if (v8 != v16)
      {
        goto LABEL_162;
      }

      v107 = v17;
      if (v10)
      {
        v18 = v10[3 * ((v7 >> ((4 * *(v10 + 18) + 8) & 0x3C)) & 0xF) + 3];
        v13 = __OFADD__(v11, v18);
        v19 = v11 + v18;
        if (v13)
        {
          goto LABEL_166;
        }

        if (!v15)
        {
          goto LABEL_160;
        }

        v20 = v19;
        v21 = v14;
        v22 = v8;
        v23 = v7;
        swift_unknownObjectRetain();
      }

      else
      {
        v21 = v14;
        v22 = v8;
        v24 = v7;
        swift_unknownObjectRetain();
        v25 = v11;
        v23 = v24;
        v5 = specialized Rope._Node.subscript.getter(v24, v15);

        v13 = __OFADD__(v25, v5);
        v20 = v25 + v5;
        if (v13)
        {
          goto LABEL_167;
        }

        if (!v15)
        {
          goto LABEL_160;
        }
      }

      if (v23 >= (((-15 << ((4 * *(v15 + 18) + 8) & 0x3C)) - 1) & *(v15 + 18) | (*(v15 + 16) << ((4 * *(v15 + 18) + 8) & 0x3C))))
      {
        goto LABEL_160;
      }

      if (v10 && (v26 = (4 * *(v10 + 18) + 8) & 0x3C, v27 = ((v23 >> v26) & 0xF) + 1, v27 < *(v10 + 8)))
      {
        swift_unknownObjectRelease();
        v28 = ((-15 << v26) - 1) & v23;
        v29 = v27 << v26;
      }

      else
      {
        if (specialized Rope._Node.formSuccessor(of:)(&v112, v15))
        {
          swift_unknownObjectRelease();
          v8 = v112;
          v7 = v113;
          v10 = v114;
          v5 = a5;
          goto LABEL_22;
        }

        v30 = *(v15 + 18);
        v31 = *(v15 + 16);
        swift_unknownObjectRelease();
        v10 = 0;
        v32 = (4 * v30 + 8) & 0x3C;
        v29 = ((-15 << v32) - 1) & v30;
        v28 = v31 << v32;
      }

      v7 = v29 | v28;
      v5 = a5;
      v8 = v22;
LABEL_22:
      v11 = v20;
      a3 = v106;
      v12 = v21;
      if (v20 < v5)
      {
        v9 = v107;
      }

      else
      {
        v33 = v106[9];
        if (a4 == v5)
        {
          if (v33)
          {
            v34 = v106[11];
          }

          else
          {
            v34 = 0;
          }

          if (a4 < 0 || v34 < v5)
          {
            goto LABEL_169;
          }

          v108 = v106[12];
          if (v33)
          {
            v36 = (v33 + 16);
            v35 = *(v33 + 16);
            v37 = *(v33 + 18);
            if (*(v33 + 16) && v106[11] > v5)
            {
              v98 = v106[10];
              result = swift_unknownObjectRetain_n();
              v38 = v5;
              if (!v37)
              {
                v5 = 0;
                v10 = v33;
LABEL_54:
                v53 = 0;
                v54 = 3;
                v45 = v38;
                while (1)
                {
                  v55 = v10[v54];
                  v38 = v45 - v55;
                  if (__OFSUB__(v45, v55))
                  {
                    goto LABEL_163;
                  }

                  if (__OFADD__(v38, 1))
                  {
                    goto LABEL_164;
                  }

                  if (v38 + 1 < 1)
                  {
                    goto LABEL_62;
                  }

                  ++v53;
                  v54 += 3;
                  v45 -= v55;
                  if (v35 == v53)
                  {
                    v53 = v35;
                    goto LABEL_60;
                  }
                }
              }

              v5 = v37;
              v39 = v33;
              do
              {
                v40 = *v36;
                if (*v36)
                {
                  v41 = 0;
                  v42 = (v39 + 40);
                  while (1)
                  {
                    v43 = *v42;
                    v42 += 3;
                    v44 = v38 - v43;
                    if (__OFSUB__(v38, v43))
                    {
                      goto LABEL_156;
                    }

                    if (__OFADD__(v44, 1))
                    {
                      goto LABEL_157;
                    }

                    if (v44 + 1 < 1)
                    {
                      v40 = v41;
                      goto LABEL_35;
                    }

                    ++v41;
                    v38 = v44;
                    if (v40 == v41)
                    {
                      goto LABEL_44;
                    }
                  }
                }

                v44 = v38;
LABEL_44:
                if (v44)
                {
                  goto LABEL_165;
                }

                v38 = 0;
LABEL_35:
                v5 = (v40 << ((4 * v37 + 8) & 0x3C)) | ((-15 << ((4 * v37 + 8) & 0x3C)) - 1) & v5;
                v10 = *(v39 + 24 + 24 * v40);
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v36 = v10 + 2;
                LOBYTE(v37) = *(v10 + 18);
                v39 = v10;
              }

              while (v37);
              LODWORD(v35) = *v36;
              if (*v36)
              {
                goto LABEL_54;
              }

              v53 = 0;
LABEL_60:
              if (!v38)
              {
                v45 = 0;
LABEL_62:
                swift_unknownObjectRelease();
                v51 = v5 & 0xFFFFFFFFFFFFF0FFLL | (v53 << 8);
                v5 = a5;
                v52 = v98;
                goto LABEL_63;
              }

              goto LABEL_181;
            }

            v47 = (4 * v37 + 8) & 0x3C;
            v48 = ((-15 << v47) - 1) & v37;
            v49 = v106[10];
            v50 = v48 | (v35 << v47);
            swift_unknownObjectRetain();
            v51 = v50;
            v52 = v49;
            v45 = 0;
            v10 = 0;
LABEL_63:
            v46 = v51;
            v9 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v108, v51, v10, v33, v52);
            swift_unknownObjectRelease();
            a3 = v106;
          }

          else
          {
            v45 = 0;
            v10 = 0;
            v46 = 0;
            v9 = 0;
          }

          v11 = v5 - v45;
          if (__OFSUB__(v5, v45))
          {
            goto LABEL_170;
          }

          v8 = v108;
          v7 = v46;
        }

        else
        {
          v8 = v106[12];
          if (v33)
          {
            v10 = 0;
            v9 = v106[10];
            v11 = v106[11];
            v7 = ((-15 << ((4 * *(v33 + 18) + 8) & 0x3C)) - 1) & *(v33 + 18) | (*(v33 + 16) << ((4 * *(v33 + 18) + 8) & 0x3C));
          }

          else
          {
            v7 = 0;
            v10 = 0;
            v9 = 0;
            v11 = 0;
          }
        }
      }

      if (v11 == v103)
      {
        return v12;
      }
    }
  }

  if (v6 < v11)
  {
    v5 = a5;
    v104 = *(a2 + 32);
    v12 = 0;
    while (1)
    {
      v13 = __OFSUB__(v12--, 1);
      if (v13)
      {
        goto LABEL_168;
      }

      v58 = a3[9];
      if (v58)
      {
        if (v11 != a3[11])
        {
          goto LABEL_92;
        }
      }

      else if (v11)
      {
LABEL_92:
        v70 = a3[12];
        v112 = v8;
        v113 = v7;
        v114 = v10;
        v13 = __OFSUB__(v9--, 1);
        if (v13)
        {
          goto LABEL_171;
        }

        if (v8 != v70)
        {
          goto LABEL_172;
        }

        if (v58)
        {
          v5 = *(v58 + 18);
          v71 = v11;
          v72 = v7;
          result = swift_unknownObjectRetain();
          v7 = v72;
          v11 = v71;
          if (v5 >= v7)
          {
            goto LABEL_173;
          }
        }

        else
        {
          v5 = 0;
          if (!v7)
          {
            goto LABEL_173;
          }
        }

        if (v10)
        {
          v73 = (4 * *(v10 + 18) + 8) & 0x3C;
          if (((v7 >> v73) & 0xF) != 0)
          {
            v56 = ((((v7 >> v73) & 0xF) - 1) << v73) | ((-15 << v73) - 1) & v7;
LABEL_69:
            v57 = v56;
            v5 = v10[3 * ((v56 >> ((4 * *(v10 + 18) + 8) & 0x3C)) & 0xF) + 3];

            result = swift_unknownObjectRelease();
            v13 = __OFSUB__(v11, v5);
            v11 -= v5;
            if (v13)
            {
              goto LABEL_176;
            }

            v5 = a5;
            a3 = v106;
            goto LABEL_71;
          }
        }

        v110 = v8;
        v5 = (4 * *(v58 + 18) + 8) & 0x3C;
        v74 = (v7 >> v5) & 0xF;
        if (!*(v58 + 18))
        {
          if (!v74)
          {
            goto LABEL_179;
          }

          v56 = ((v74 - 1) << v5) | v7 & 0xFFFFFFFFFFFFF0FFLL;
          v10 = v58;
          v8 = v110;
          if (v58)
          {
            goto LABEL_69;
          }

          goto LABEL_134;
        }

        if (v74 < *(v58 + 16))
        {
          v75 = *(v58 + 24 * ((v7 >> v5) & 0xF) + 24);
          v76 = *(v75 + 18);
          v77 = (4 * v76 + 8) & 0x3C;
          v78 = (v7 >> v77) & 0xF;
          if (v76)
          {
            v99 = (4 * v76 + 8) & 0x3C;
            if (v78 < *(v75 + 16))
            {
              v79 = *(v75 + 24 * ((v7 >> v77) & 0xF) + 24);
              v80 = (4 * *(v79 + 18) + 8) & 0x3C;
              v81 = (v7 >> v80) & 0xF;
              if (*(v79 + 18))
              {
                v97 = *(v75 + 24 * v78 + 24);
                if (v81 >= *(v79 + 16))
                {
                  v94 = (4 * *(v79 + 18) + 8) & 0x3C;
                  v95 = (v7 >> v80) & 0xF;
                  v101 = v78;
                  swift_unknownObjectRetain();
                  v96 = v75;
                  swift_unknownObjectRetain();
                }

                else
                {
                  v10 = *(v79 + 24 * ((v7 >> v80) & 0xF) + 24);
                  v82 = *(v10 + 18);
                  v83 = (4 * v82 + 8) & 0x3C;
                  v84 = (v7 >> v83) & 0xF;
                  v111 = v84;
                  if (v82)
                  {
                    v94 = v80;
                    v95 = (v7 >> v80) & 0xF;
                    v101 = v78;
                    v93 = v82;
                    swift_unknownObjectRetain();
                    v96 = v75;
                    swift_unknownObjectRetain();
                    swift_unknownObjectRetain();
                    swift_unknownObjectRetain();
                    v85 = specialized closure #1 in Rope._Node.formPredecessor(of:)(v10 + 8, (v10 + 3), &v111, &v112, v93);
                    swift_unknownObjectRelease();
                    if (v85)
                    {
                      v10 = v114;
                      goto LABEL_149;
                    }

LABEL_142:
                    if (v95)
                    {
                      v113 = v113 & ((-15 << v94) - 1) | ((v95 - 1) << v94);
                      v5 = *(v97 + 24 * v95);
                      swift_unknownObjectRetain();
                      v10 = specialized Rope._Node.descendToLastItem(under:)(&v113, v5);
                      swift_unknownObjectRelease();
                      v114 = v10;
                      swift_unknownObjectRelease();
                      v8 = v110;
                      goto LABEL_151;
                    }

                    swift_unknownObjectRelease();
                    v75 = v96;
                    v92 = v101;
                    if (!v101)
                    {
LABEL_145:
                      swift_unknownObjectRelease();
                      if (!v74)
                      {
                        goto LABEL_178;
                      }

LABEL_129:
                      v113 = v113 & ((-15 << v5) - 1) | ((v74 - 1) << v5);
                      v5 = *(v58 + 24 * v74);
                      swift_unknownObjectRetain();
                      v10 = specialized Rope._Node.descendToLastItem(under:)(&v113, v5);
LABEL_130:
                      swift_unknownObjectRelease();
LABEL_131:
                      v8 = v110;
LABEL_132:
                      swift_unknownObjectRelease();
                      if (v112 != v8)
                      {
                        goto LABEL_174;
                      }

                      v56 = v113;
                      if (v10)
                      {
                        goto LABEL_69;
                      }

LABEL_134:
                      v57 = v56;
                      v5 = specialized Rope._Node.subscript.getter(v56, v58);
                      swift_unknownObjectRelease();

                      v13 = __OFSUB__(v11, v5);
                      v11 -= v5;
                      if (v13)
                      {
                        goto LABEL_180;
                      }

                      v10 = 0;
                      v5 = a5;
                      a3 = v106;
                      v8 = v110;
                      goto LABEL_71;
                    }

LABEL_139:
                    v113 = v113 & ((-15 << v99) - 1) | ((v92 - 1) << v99);
                    v5 = *(v75 + 24 * v92);
                    swift_unknownObjectRetain();
                    v10 = specialized Rope._Node.descendToLastItem(under:)(&v113, v5);
                    swift_unknownObjectRelease();
                    goto LABEL_130;
                  }

                  if (v84)
                  {
                    v113 = ((v84 - 1) << v83) | v7 & 0xFFFFFFFFFFFFF0FFLL;
                    v114 = v10;
                    swift_unknownObjectRetain();
                    swift_unknownObjectRetain();
                    swift_unknownObjectRetain();
LABEL_149:
                    swift_unknownObjectRelease();
LABEL_150:
                    v8 = v110;
LABEL_151:
                    swift_unknownObjectRelease();
                    goto LABEL_132;
                  }

                  v94 = v80;
                  v95 = (v7 >> v80) & 0xF;
                  v101 = v78;
                  swift_unknownObjectRetain();
                  v96 = v75;
                  swift_unknownObjectRetain();
                }

                swift_unknownObjectRetain();
                goto LABEL_142;
              }

              if (v81)
              {
                v113 = ((v81 - 1) << v80) | v7 & 0xFFFFFFFFFFFFF0FFLL;
                v114 = v79;
                v10 = v79;
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                goto LABEL_150;
              }
            }

            v102 = v78;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v92 = v102;
            if (!v102)
            {
              goto LABEL_145;
            }

            goto LABEL_139;
          }

          if (v78)
          {
            v113 = ((v78 - 1) << v77) | v7 & 0xFFFFFFFFFFFFF0FFLL;
            swift_unknownObjectRetain();
            v10 = v75;
            goto LABEL_131;
          }
        }

        swift_unknownObjectRetain();
        if (!v74)
        {
          goto LABEL_178;
        }

        goto LABEL_129;
      }

      if (v58)
      {
        v59 = a3[11];
      }

      else
      {
        v59 = 0;
      }

      if (v5 < 0 || v59 < v5)
      {
        goto LABEL_175;
      }

      v8 = a3[12];
      if (v58)
      {
        v60 = a3[12];
        v61 = a3[10];
        v63 = (v58 + 16);
        v62 = *(v58 + 16);
        v64 = *(v58 + 18);
        if (*(v58 + 16))
        {
          v109 = a3[10];
          result = swift_unknownObjectRetain_n();
          if (v64)
          {
            v65 = v64;
            v66 = v58;
            while (2)
            {
              if (*v63)
              {
                v67 = 0;
                v68 = (v66 + 40);
                while (1)
                {
                  v69 = v5 - *v68;
                  if (__OFSUB__(v5, *v68))
                  {
                    __break(1u);
LABEL_156:
                    __break(1u);
LABEL_157:
                    __break(1u);
                    goto LABEL_158;
                  }

                  if (v69 < 1)
                  {
                    break;
                  }

                  ++v67;
                  v68 += 3;
                  v5 = v69;
                  if (*v63 == v67)
                  {
                    goto LABEL_184;
                  }
                }

                v65 = (v67 << ((4 * v64 + 8) & 0x3C)) | ((-15 << ((4 * v64 + 8) & 0x3C)) - 1) & v65;
                v10 = *(v68 - 2);
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v63 = v10 + 2;
                LOBYTE(v64) = *(v10 + 18);
                v66 = v10;
                if (v64)
                {
                  continue;
                }

                v62 = *v63;
                if (!*v63)
                {
LABEL_185:
                  if (!v5)
                  {
                    __break(1u);
                  }

LABEL_187:
                  __break(1u);
                  return result;
                }

LABEL_117:
                v87 = 0;
                v88 = v62;
                v89 = 3;
                while (1)
                {
                  v90 = v10[v89];
                  v13 = __OFSUB__(v5, v90);
                  v91 = v5 - v90;
                  if (v13)
                  {
                    break;
                  }

                  if (v91 < 1)
                  {
                    swift_unknownObjectRelease();
                    v86 = v87 | v65 & 0xFFFFFFFFFFFFF0FFLL;
                    v61 = v109;
                    goto LABEL_123;
                  }

                  v87 += 256;
                  v89 += 3;
                  v5 = v91;
                  if (!--v88)
                  {
                    goto LABEL_187;
                  }
                }

LABEL_158:
                __break(1u);
LABEL_159:
                __break(1u);
LABEL_160:
                __break(1u);
LABEL_161:
                __break(1u);
LABEL_162:
                __break(1u);
LABEL_163:
                __break(1u);
LABEL_164:
                __break(1u);
LABEL_165:
                __break(1u);
LABEL_166:
                __break(1u);
LABEL_167:
                __break(1u);
LABEL_168:
                __break(1u);
LABEL_169:
                __break(1u);
LABEL_170:
                __break(1u);
LABEL_171:
                __break(1u);
LABEL_172:
                __break(1u);
LABEL_173:
                __break(1u);
LABEL_174:
                __break(1u);
LABEL_175:
                __break(1u);
LABEL_176:
                __break(1u);
LABEL_177:
                __break(1u);
LABEL_178:
                result = swift_unknownObjectRelease();
                __break(1u);
LABEL_179:
                __break(1u);
LABEL_180:
                __break(1u);
LABEL_181:
                __break(1u);
              }

              break;
            }

            if (!v5)
            {
              __break(1u);
            }

LABEL_184:
            __break(1u);
            goto LABEL_185;
          }

          v65 = 0;
          v10 = v58;
          goto LABEL_117;
        }

        swift_unknownObjectRetain();
        v86 = ((-15 << ((4 * v64 + 8) & 0x3C)) - 1) & v64;
        v5 = 0;
        v10 = 0;
LABEL_123:
        v8 = v60;
        v57 = v86;
        v9 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v60, v86, v10, v58, v61);
        result = swift_unknownObjectRelease();
        a3 = v106;
      }

      else
      {
        v5 = 0;
        v10 = 0;
        v57 = 0;
        v9 = 0;
      }

      v11 = a5 - v5;
      if (__OFSUB__(a5, v5))
      {
        goto LABEL_177;
      }

      v5 = a5;
LABEL_71:
      v7 = v57;
      if (v11 == v104)
      {
        return v12;
      }
    }
  }

  return 0;
}

uint64_t specialized BidirectionalCollection._distance(from:to:)(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = a5;
  v12 = a2;
  v13 = a10;
  v68 = result;
  v69 = a2;
  v70 = a3;
  if (a2 < a5)
  {
    v14 = 0;
    v15 = a7 + 24;
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      if (v68 != v13)
      {
        goto LABEL_82;
      }

      if (!a7 || v12 >= (((-15 << ((4 * *(a7 + 18) + 8) & 0x3C)) - 1) & *(a7 + 18) | (*(a7 + 16) << ((4 * *(a7 + 18) + 8) & 0x3C))))
      {
        goto LABEL_83;
      }

      if (v70 && (v17 = (4 * *(v70 + 18) + 8) & 0x3C, v18 = ((v12 >> v17) & 0xF) + 1, v18 < *(v70 + 16)))
      {
        v12 = (v18 << v17) | ((-15 << v17) - 1) & v12;
        v69 = v12;
      }

      else
      {
        v19 = (4 * *(a7 + 18) + 8) & 0x3C;
        v20 = (v12 >> v19) & 0xF;
        if (*(a7 + 18))
        {
          v21 = *(v15 + 24 * ((v12 >> v19) & 0xF));
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v22 = specialized Rope._Node.formSuccessor(of:)(&v68, v21);
          result = swift_unknownObjectRelease();
          if (v22)
          {
            swift_unknownObjectRelease();
            v12 = v69;
          }

          else
          {
            v23 = v20 + 1;
            if (v20 + 1 >= *(a7 + 16))
            {
              swift_unknownObjectRelease();
              v11 = a5;
              v13 = a10;
LABEL_23:
              v12 = ((-15 << ((4 * *(a7 + 18) + 8) & 0x3C)) - 1) & *(a7 + 18) | (*(a7 + 16) << ((4 * *(a7 + 18) + 8) & 0x3C));
              v68 = v13;
              v69 = v12;
              v70 = 0;
              goto LABEL_4;
            }

            v24 = (v15 + 24 * v23);
            v25 = *v24;
            v26 = *(*v24 + 18) + 1;
            if ((v26 >> 8))
            {
              goto LABEL_89;
            }

            v69 = (v69 & ((-15 << v19) - 1) | (v23 << v19)) & ((-256 << (4 * (v26 & 0xF))) | 0xFF);
            v12 = v69;
            swift_unknownObjectRetain();
            v27 = specialized Rope._Node.unmanagedLeaf(at:)(v12, v25);
            swift_unknownObjectRelease();
            v70 = v27;
            swift_unknownObjectRelease();
          }

          v11 = a5;
          v13 = a10;
        }

        else
        {
          if (v20 + 1 >= *(a7 + 16))
          {
            goto LABEL_23;
          }

          v12 = ((v20 + 1) << v19) | v12 & 0xFFFFFFFFFFFFF0FFLL;
          v69 = v12;
          v70 = a7;
        }
      }

LABEL_4:
      ++v14;
      if (v12 == v11)
      {
        return v16;
      }
    }
  }

  if (a5 >= a2)
  {
    return 0;
  }

  v16 = 0;
  v65 = a7 + 24;
  while (1)
  {
    if (__OFSUB__(v16--, 1))
    {
      goto LABEL_84;
    }

    if (v68 != v13)
    {
      break;
    }

    if (a7)
    {
      if (*(a7 + 18) >= v12)
      {
        goto LABEL_86;
      }
    }

    else if (!v12)
    {
      goto LABEL_86;
    }

    if (v70 && (v29 = (4 * *(v70 + 18) + 8) & 0x3C, ((v12 >> v29) & 0xF) != 0))
    {
      v12 = ((((v12 >> v29) & 0xF) - 1) << v29) | ((-15 << v29) - 1) & v12;
      v69 = v12;
    }

    else
    {
      v30 = (4 * *(a7 + 18) + 8) & 0x3C;
      v31 = (v12 >> v30) & 0xF;
      if (*(a7 + 18))
      {
        if (v31 >= *(a7 + 16))
        {
          swift_unknownObjectRetain();
          if (!v31)
          {
            goto LABEL_87;
          }

          goto LABEL_59;
        }

        v32 = *(v65 + 24 * ((v12 >> v30) & 0xF));
        v33 = (4 * *(v32 + 18) + 8) & 0x3C;
        v34 = (v12 >> v33) & 0xF;
        if (!*(v32 + 18))
        {
          if (v34)
          {
            v69 = ((v34 - 1) << v33) | v12 & 0xFFFFFFFFFFFFF0FFLL;
            v70 = v32;
            swift_unknownObjectRetain();
            goto LABEL_76;
          }

          swift_unknownObjectRetain();
          goto LABEL_58;
        }

        if (v34 < *(v32 + 16))
        {
          v35 = *(v32 + 24 * ((v12 >> v33) & 0xF) + 24);
          v36 = (4 * *(v35 + 18) + 8) & 0x3C;
          v37 = (v12 >> v36) & 0xF;
          if (*(v35 + 18))
          {
            v64 = *(v32 + 24 * ((v12 >> v33) & 0xF) + 24);
            if (v37 < *(v35 + 16))
            {
              v38 = *(v35 + 24 * ((v12 >> v36) & 0xF) + 24);
              v39 = (4 * *(v38 + 18) + 8) & 0x3C;
              v40 = (v12 >> v39) & 0xF;
              if (*(v38 + 18))
              {
                if (v40 < *(v38 + 16))
                {
                  v41 = *(v38 + 24 * ((v12 >> v39) & 0xF) + 24);
                  v42 = *(v41 + 18);
                  v43 = (4 * v42 + 8) & 0x3C;
                  v44 = (v12 >> v43) & 0xF;
                  v67 = v44;
                  if (v42)
                  {
                    v60 = v39;
                    v61 = (v12 >> v39) & 0xF;
                    v62 = v36;
                    v57 = v38;
                    v45 = v41;
                    v58 = v42;
                    swift_unknownObjectRetain();
                    swift_unknownObjectRetain();
                    swift_unknownObjectRetain();
                    v46 = v57;
                    swift_unknownObjectRetain();
                    swift_unknownObjectRetain();
                    v59 = specialized closure #1 in Rope._Node.formPredecessor(of:)((v45 + 16), v45 + 24, &v67, &v68, v58);
                    swift_unknownObjectRelease();
                    if ((v59 & 1) == 0)
                    {
LABEL_72:
                      if (v61)
                      {
                        v69 = v69 & ((-15 << v60) - 1) | ((v61 - 1) << v60);
                        v55 = *(v46 + 24 * v61);
                        swift_unknownObjectRetain();
                        v56 = specialized Rope._Node.descendToLastItem(under:)(&v69, v55);
                        swift_unknownObjectRelease();
                        v70 = v56;
                        swift_unknownObjectRelease();
LABEL_74:
                        swift_unknownObjectRelease();
                        v11 = a5;
LABEL_75:
                        swift_unknownObjectRelease();
LABEL_76:
                        result = swift_unknownObjectRelease();
                        v12 = v69;
                        v13 = a10;
                        goto LABEL_27;
                      }

                      swift_unknownObjectRelease();
                      v51 = v62;
                      if (!v37)
                      {
LABEL_78:
                        swift_unknownObjectRelease();
LABEL_54:
                        if (v34)
                        {
                          v69 = v69 & ((-15 << v33) - 1) | ((v34 - 1) << v33);
                          v47 = *(v32 + 24 * v34);
                          swift_unknownObjectRetain();
                          v48 = specialized Rope._Node.descendToLastItem(under:)(&v69, v47);
                          swift_unknownObjectRelease();
                          v70 = v48;
                          v11 = a5;
                          goto LABEL_75;
                        }

                        swift_unknownObjectRelease();
LABEL_58:
                        if (!v31)
                        {
                          goto LABEL_87;
                        }

LABEL_59:
                        v69 = v69 & ((-15 << v30) - 1) | ((v31 - 1) << v30);
                        v49 = *(a7 + 24 * v31);
                        swift_unknownObjectRetain();
                        v11 = a5;
                        v50 = specialized Rope._Node.descendToLastItem(under:)(&v69, v49);
                        swift_unknownObjectRelease();
                        v70 = v50;
                        goto LABEL_76;
                      }

LABEL_63:
                      v69 = v69 & ((-15 << v51) - 1) | ((v37 - 1) << v51);
                      v52 = *(v64 + 24 * v37);
                      swift_unknownObjectRetain();
                      v53 = specialized Rope._Node.descendToLastItem(under:)(&v69, v52);
                      swift_unknownObjectRelease();
                      v70 = v53;
                      swift_unknownObjectRelease();
                      v11 = a5;
                      goto LABEL_75;
                    }

LABEL_70:
                    swift_unknownObjectRelease();
                    goto LABEL_74;
                  }

                  if (v44)
                  {
                    v69 = ((v44 - 1) << v43) | v12 & 0xFFFFFFFFFFFFF0FFLL;
                    v70 = v41;
                    swift_unknownObjectRetain();
                    swift_unknownObjectRetain();
                    swift_unknownObjectRetain();
                    swift_unknownObjectRetain();
                    goto LABEL_70;
                  }
                }

                v60 = v39;
                v61 = (v12 >> v39) & 0xF;
                v62 = v36;
                v54 = v38;
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                v46 = v54;
                swift_unknownObjectRetain();
                goto LABEL_72;
              }

              if (v40)
              {
                v69 = ((v40 - 1) << v39) | v12 & 0xFFFFFFFFFFFFF0FFLL;
                v70 = v38;
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                goto LABEL_74;
              }
            }

            v63 = (4 * *(v35 + 18) + 8) & 0x3C;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v51 = v63;
            if (!v37)
            {
              goto LABEL_78;
            }

            goto LABEL_63;
          }

          if (v37)
          {
            v69 = ((v37 - 1) << v36) | v12 & 0xFFFFFFFFFFFFF0FFLL;
            v70 = v35;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v11 = a5;
            goto LABEL_75;
          }
        }

        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        goto LABEL_54;
      }

      if (!v31)
      {
        goto LABEL_88;
      }

      v12 = ((v31 - 1) << v30) | v12 & 0xFFFFFFFFFFFFF0FFLL;
      v69 = v12;
      v70 = a7;
    }

LABEL_27:
    if (v12 == v11)
    {
      return v16;
    }
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  result = swift_unknownObjectRelease();
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.WritingDirection.CodingKeys and conformance AttributedString.WritingDirection.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AttributedString.WritingDirection.CodingKeys and conformance AttributedString.WritingDirection.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.WritingDirection.CodingKeys and conformance AttributedString.WritingDirection.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.WritingDirection.CodingKeys and conformance AttributedString.WritingDirection.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.WritingDirection.CodingKeys and conformance AttributedString.WritingDirection.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.WritingDirection.CodingKeys and conformance AttributedString.WritingDirection.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.WritingDirection.CodingKeys and conformance AttributedString.WritingDirection.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.WritingDirection.CodingKeys and conformance AttributedString.WritingDirection.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.WritingDirection.CodingKeys and conformance AttributedString.WritingDirection.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.WritingDirection.CodingKeys and conformance AttributedString.WritingDirection.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.WritingDirection.CodingKeys and conformance AttributedString.WritingDirection.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.WritingDirection.CodingKeys and conformance AttributedString.WritingDirection.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.WritingDirection.CodingKeys and conformance AttributedString.WritingDirection.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.MarkdownSourcePosition.CodingKeys and conformance AttributedString.MarkdownSourcePosition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.CodingKeys and conformance AttributedString.MarkdownSourcePosition.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.CodingKeys and conformance AttributedString.MarkdownSourcePosition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.CodingKeys and conformance AttributedString.MarkdownSourcePosition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.CodingKeys and conformance AttributedString.MarkdownSourcePosition.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.CodingKeys and conformance AttributedString.MarkdownSourcePosition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.CodingKeys and conformance AttributedString.MarkdownSourcePosition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.CodingKeys and conformance AttributedString.MarkdownSourcePosition.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.CodingKeys and conformance AttributedString.MarkdownSourcePosition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.CodingKeys and conformance AttributedString.MarkdownSourcePosition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.CodingKeys and conformance AttributedString.MarkdownSourcePosition.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.CodingKeys and conformance AttributedString.MarkdownSourcePosition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.CodingKeys and conformance AttributedString.MarkdownSourcePosition.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.MarkdownSourcePosition.Offsets and conformance AttributedString.MarkdownSourcePosition.Offsets()
{
  result = lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.Offsets and conformance AttributedString.MarkdownSourcePosition.Offsets;
  if (!lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.Offsets and conformance AttributedString.MarkdownSourcePosition.Offsets)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.Offsets and conformance AttributedString.MarkdownSourcePosition.Offsets);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.Offsets and conformance AttributedString.MarkdownSourcePosition.Offsets;
  if (!lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.Offsets and conformance AttributedString.MarkdownSourcePosition.Offsets)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.Offsets and conformance AttributedString.MarkdownSourcePosition.Offsets);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.Offsets and conformance AttributedString.MarkdownSourcePosition.Offsets;
  if (!lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.Offsets and conformance AttributedString.MarkdownSourcePosition.Offsets)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.Offsets and conformance AttributedString.MarkdownSourcePosition.Offsets);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationIntent.CodingKeys and conformance PresentationIntent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PresentationIntent.CodingKeys and conformance PresentationIntent.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresentationIntent.CodingKeys and conformance PresentationIntent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.CodingKeys and conformance PresentationIntent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationIntent.CodingKeys and conformance PresentationIntent.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresentationIntent.CodingKeys and conformance PresentationIntent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.CodingKeys and conformance PresentationIntent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationIntent.CodingKeys and conformance PresentationIntent.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresentationIntent.CodingKeys and conformance PresentationIntent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.CodingKeys and conformance PresentationIntent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationIntent.CodingKeys and conformance PresentationIntent.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresentationIntent.CodingKeys and conformance PresentationIntent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.CodingKeys and conformance PresentationIntent.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationIntent.IntentType and conformance PresentationIntent.IntentType()
{
  result = lazy protocol witness table cache variable for type PresentationIntent.IntentType and conformance PresentationIntent.IntentType;
  if (!lazy protocol witness table cache variable for type PresentationIntent.IntentType and conformance PresentationIntent.IntentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.IntentType and conformance PresentationIntent.IntentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationIntent.IntentType and conformance PresentationIntent.IntentType;
  if (!lazy protocol witness table cache variable for type PresentationIntent.IntentType and conformance PresentationIntent.IntentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.IntentType and conformance PresentationIntent.IntentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationIntent.IntentType and conformance PresentationIntent.IntentType;
  if (!lazy protocol witness table cache variable for type PresentationIntent.IntentType and conformance PresentationIntent.IntentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.IntentType and conformance PresentationIntent.IntentType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [PresentationIntent.IntentType] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation18PresentationIntentV0C4TypeVGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NSDecimal and conformance NSDecimal(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component and conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component and conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component and conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component and conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component and conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component and conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component and conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component and conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component and conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component and conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component and conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component and conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component and conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component and conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component and conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component and conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute.Component);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Morphology.CodingKeys and conformance Morphology.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Morphology.CodingKeys and conformance Morphology.CodingKeys;
  if (!lazy protocol witness table cache variable for type Morphology.CodingKeys and conformance Morphology.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.CodingKeys and conformance Morphology.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.CodingKeys and conformance Morphology.CodingKeys;
  if (!lazy protocol witness table cache variable for type Morphology.CodingKeys and conformance Morphology.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.CodingKeys and conformance Morphology.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.CodingKeys and conformance Morphology.CodingKeys;
  if (!lazy protocol witness table cache variable for type Morphology.CodingKeys and conformance Morphology.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.CodingKeys and conformance Morphology.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.CodingKeys and conformance Morphology.CodingKeys;
  if (!lazy protocol witness table cache variable for type Morphology.CodingKeys and conformance Morphology.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.CodingKeys and conformance Morphology.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Morphology.GrammaticalCase and conformance Morphology.GrammaticalCase()
{
  result = lazy protocol witness table cache variable for type Morphology.GrammaticalCase and conformance Morphology.GrammaticalCase;
  if (!lazy protocol witness table cache variable for type Morphology.GrammaticalCase and conformance Morphology.GrammaticalCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.GrammaticalCase and conformance Morphology.GrammaticalCase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.GrammaticalCase and conformance Morphology.GrammaticalCase;
  if (!lazy protocol witness table cache variable for type Morphology.GrammaticalCase and conformance Morphology.GrammaticalCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.GrammaticalCase and conformance Morphology.GrammaticalCase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.GrammaticalCase and conformance Morphology.GrammaticalCase;
  if (!lazy protocol witness table cache variable for type Morphology.GrammaticalCase and conformance Morphology.GrammaticalCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.GrammaticalCase and conformance Morphology.GrammaticalCase);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Morphology.PartOfSpeech and conformance Morphology.PartOfSpeech()
{
  result = lazy protocol witness table cache variable for type Morphology.PartOfSpeech and conformance Morphology.PartOfSpeech;
  if (!lazy protocol witness table cache variable for type Morphology.PartOfSpeech and conformance Morphology.PartOfSpeech)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.PartOfSpeech and conformance Morphology.PartOfSpeech);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.PartOfSpeech and conformance Morphology.PartOfSpeech;
  if (!lazy protocol witness table cache variable for type Morphology.PartOfSpeech and conformance Morphology.PartOfSpeech)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.PartOfSpeech and conformance Morphology.PartOfSpeech);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.PartOfSpeech and conformance Morphology.PartOfSpeech;
  if (!lazy protocol witness table cache variable for type Morphology.PartOfSpeech and conformance Morphology.PartOfSpeech)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.PartOfSpeech and conformance Morphology.PartOfSpeech);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Morphology.GrammaticalNumber and conformance Morphology.GrammaticalNumber()
{
  result = lazy protocol witness table cache variable for type Morphology.GrammaticalNumber and conformance Morphology.GrammaticalNumber;
  if (!lazy protocol witness table cache variable for type Morphology.GrammaticalNumber and conformance Morphology.GrammaticalNumber)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.GrammaticalNumber and conformance Morphology.GrammaticalNumber);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.GrammaticalNumber and conformance Morphology.GrammaticalNumber;
  if (!lazy protocol witness table cache variable for type Morphology.GrammaticalNumber and conformance Morphology.GrammaticalNumber)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.GrammaticalNumber and conformance Morphology.GrammaticalNumber);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.GrammaticalNumber and conformance Morphology.GrammaticalNumber;
  if (!lazy protocol witness table cache variable for type Morphology.GrammaticalNumber and conformance Morphology.GrammaticalNumber)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.GrammaticalNumber and conformance Morphology.GrammaticalNumber);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Morphology._CustomPronoun and conformance Morphology._CustomPronoun()
{
  result = lazy protocol witness table cache variable for type Morphology._CustomPronoun and conformance Morphology._CustomPronoun;
  if (!lazy protocol witness table cache variable for type Morphology._CustomPronoun and conformance Morphology._CustomPronoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology._CustomPronoun and conformance Morphology._CustomPronoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology._CustomPronoun and conformance Morphology._CustomPronoun;
  if (!lazy protocol witness table cache variable for type Morphology._CustomPronoun and conformance Morphology._CustomPronoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology._CustomPronoun and conformance Morphology._CustomPronoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology._CustomPronoun and conformance Morphology._CustomPronoun;
  if (!lazy protocol witness table cache variable for type Morphology._CustomPronoun and conformance Morphology._CustomPronoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology._CustomPronoun and conformance Morphology._CustomPronoun);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Morphology.GrammaticalPerson and conformance Morphology.GrammaticalPerson()
{
  result = lazy protocol witness table cache variable for type Morphology.GrammaticalPerson and conformance Morphology.GrammaticalPerson;
  if (!lazy protocol witness table cache variable for type Morphology.GrammaticalPerson and conformance Morphology.GrammaticalPerson)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.GrammaticalPerson and conformance Morphology.GrammaticalPerson);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.GrammaticalPerson and conformance Morphology.GrammaticalPerson;
  if (!lazy protocol witness table cache variable for type Morphology.GrammaticalPerson and conformance Morphology.GrammaticalPerson)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.GrammaticalPerson and conformance Morphology.GrammaticalPerson);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.GrammaticalPerson and conformance Morphology.GrammaticalPerson;
  if (!lazy protocol witness table cache variable for type Morphology.GrammaticalPerson and conformance Morphology.GrammaticalPerson)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.GrammaticalPerson and conformance Morphology.GrammaticalPerson);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Morphology.PronounType and conformance Morphology.PronounType()
{
  result = lazy protocol witness table cache variable for type Morphology.PronounType and conformance Morphology.PronounType;
  if (!lazy protocol witness table cache variable for type Morphology.PronounType and conformance Morphology.PronounType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.PronounType and conformance Morphology.PronounType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.PronounType and conformance Morphology.PronounType;
  if (!lazy protocol witness table cache variable for type Morphology.PronounType and conformance Morphology.PronounType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.PronounType and conformance Morphology.PronounType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.PronounType and conformance Morphology.PronounType;
  if (!lazy protocol witness table cache variable for type Morphology.PronounType and conformance Morphology.PronounType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.PronounType and conformance Morphology.PronounType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Morphology.Determination and conformance Morphology.Determination()
{
  result = lazy protocol witness table cache variable for type Morphology.Determination and conformance Morphology.Determination;
  if (!lazy protocol witness table cache variable for type Morphology.Determination and conformance Morphology.Determination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.Determination and conformance Morphology.Determination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.Determination and conformance Morphology.Determination;
  if (!lazy protocol witness table cache variable for type Morphology.Determination and conformance Morphology.Determination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.Determination and conformance Morphology.Determination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.Determination and conformance Morphology.Determination;
  if (!lazy protocol witness table cache variable for type Morphology.Determination and conformance Morphology.Determination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.Determination and conformance Morphology.Determination);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Morphology.Definiteness and conformance Morphology.Definiteness()
{
  result = lazy protocol witness table cache variable for type Morphology.Definiteness and conformance Morphology.Definiteness;
  if (!lazy protocol witness table cache variable for type Morphology.Definiteness and conformance Morphology.Definiteness)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.Definiteness and conformance Morphology.Definiteness);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.Definiteness and conformance Morphology.Definiteness;
  if (!lazy protocol witness table cache variable for type Morphology.Definiteness and conformance Morphology.Definiteness)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.Definiteness and conformance Morphology.Definiteness);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.Definiteness and conformance Morphology.Definiteness;
  if (!lazy protocol witness table cache variable for type Morphology.Definiteness and conformance Morphology.Definiteness)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.Definiteness and conformance Morphology.Definiteness);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Morphology and conformance Morphology()
{
  result = lazy protocol witness table cache variable for type Morphology and conformance Morphology;
  if (!lazy protocol witness table cache variable for type Morphology and conformance Morphology)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology and conformance Morphology);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology and conformance Morphology;
  if (!lazy protocol witness table cache variable for type Morphology and conformance Morphology)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology and conformance Morphology);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology and conformance Morphology;
  if (!lazy protocol witness table cache variable for type Morphology and conformance Morphology)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology and conformance Morphology);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology and conformance Morphology;
  if (!lazy protocol witness table cache variable for type Morphology and conformance Morphology)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology and conformance Morphology);
  }

  return result;
}

uint64_t AttributedStringProtocol.hash(into:)(uint64_t a1, ValueMetadata *a2, uint64_t a3)
{
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  MEMORY[0x1EEE9AC00](v277);
  v278 = &v257 - v7;
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v8 = *(v294 - 8);
  MEMORY[0x1EEE9AC00](v294 - 8);
  v275 = &v257 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v280 = &v257 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v257 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v15);
  v293 = &v257 - v16;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v285 = *(v289 - 8);
  MEMORY[0x1EEE9AC00](v289);
  v274 = &v257 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v290 = &v257 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v257 - v21;
  v23 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v23);
  v276 = &v257 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v287 = &v257 - v26;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v284 = &v257 - v29;
  v279 = a1;
  v286 = v30;
  if (a2 == &type metadata for AttributedString || a2 == &type metadata for AttributedSubstring)
  {
    v31 = *v3;
  }

  else
  {
    (*(a3 + 56))(&v321, a2, a3, v28);
    v31 = v321;
  }

  (*(a3 + 32))(&v321, a2, a3);
  (*(a3 + 40))(&v315, a2, a3);
  v325 = v315;
  v326 = v316;
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
  RangeSet.init(_:)();
  *v287 = v31;
  v295 = v31;

  RangeSet.init()();
  v281 = v22;
  RangeSet.ranges.getter();
  v32 = v293;
  v33 = v294;
  (*(v8 + 16))(v293, v14, v294);
  v34 = *(v15 + 36);
  v35 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of Collection.startIndex.getter();
  v282 = *(v8 + 8);
  v283 = v14;
  v288 = v8 + 8;
  v282(v14, v33);
  dispatch thunk of Collection.endIndex.getter();
  v36 = *(v32 + v34);
  v292 = v35;
  if (v36 != v321)
  {
    v291 = v34;
    do
    {
      v50 = dispatch thunk of Collection.subscript.read();
      v52 = v51[5];
      v53 = v51[7];
      v297 = v51[6];
      v298 = v52;
      v296 = v53;
      v50(&v321, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v54 = v295;
      v55 = *(v295 + 40);
      v360 = *(v295 + 24);
      v361 = v55;
      v362 = *(v295 + 56);
      swift_unknownObjectRetain();
      v56 = BigString.UnicodeScalarView.index(roundingDown:)();
      v58 = v57;
      v60 = v59;
      v62 = v61;
      swift_unknownObjectRelease();
      v63 = *(v54 + 40);
      v357 = *(v54 + 24);
      v358 = v63;
      v359 = *(v54 + 56);
      swift_unknownObjectRetain();
      v64 = BigString.UnicodeScalarView.index(roundingDown:)();
      v66 = v65;
      v68 = v67;
      v70 = v69;
      swift_unknownObjectRelease();
      v321 = v56;
      v322 = v58;
      v323 = v60;
      v324 = v62;
      *&v325 = v64;
      *(&v325 + 1) = v66;
      v33 = v294;
      *&v326 = v68;
      *(&v326 + 1) = v70;
      if ((v64 ^ v56) >= 0x400)
      {
        v71 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v71(&v315, 0);
      }

      v32 = v293;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v32 + v291) != v321);
  }

  outlined destroy of TermOfAddress?(v32, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v37 = v286;
  v38 = *(v286 + 24);
  v39 = v287;
  v40 = v289;
  v272 = *(v285 + 16);
  v273 = v285 + 16;
  v272(&v38[v287], v290, v289);
  v41 = v283;
  RangeSet.ranges.getter();
  v42 = RangeSet.Ranges.count.getter();
  v43 = v282;
  v282(v41, v33);
  v44 = v33;
  v45 = v39;
  v46 = *(v37 + 28);
  LODWORD(v291) = v42 > 1;
  *(v39 + v46) = v291;
  v47 = v280;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v315 == v321)
  {
    v43(v47, v44);
    v48 = v295;
    v49 = *(v295 + 72);
    if (v49)
    {
LABEL_8:
      v298 = *(v49 + 18);
LABEL_16:
      v297 = *(v48 + 96);
      v78 = *(v48 + 40);
      v354 = *(v48 + 24);
      v355 = v78;
      v356 = *(v48 + 56);
      v79 = BigString.startIndex.getter();
      v81 = v80;
      v83 = v82;
      v296 = v84;
      v85 = *(v48 + 72);
      v293 = *(v48 + 96);
      if (v85)
      {
        v292 = *(v85 + 18);
        v86 = *(v285 + 8);
        swift_unknownObjectRetain();
        v86(v281, v40);
        v280 = v86;
        v86(v290, v40);
        swift_unknownObjectRelease();
      }

      else
      {
        v87 = *(v285 + 8);
        v87(v281, v40);
        v280 = v87;
        v87(v290, v40);
        v292 = 0;
      }

      v88 = *(v48 + 40);
      v353[3] = *(v48 + 24);
      v353[4] = v88;
      v353[5] = *(v48 + 56);
      v89 = BigString.startIndex.getter();
      v91 = v90;
      v93 = v92;
      v95 = v94;
      v96 = 0;
      v97 = 0;
      v98 = 0;
      v99 = 0;
      v100 = 0;
      v101 = -1;
      v102 = v79;
      v103 = v81;
      v104 = v83;
      v105 = v296;
      v106 = v296;
      v107 = v89;
      v108 = v90;
      v109 = v93;
      v110 = v95;
      v111 = -1;
      goto LABEL_20;
    }

LABEL_15:
    v298 = 0;
    goto LABEL_16;
  }

  v72 = dispatch thunk of Collection.subscript.read();
  v74 = *v73;
  v270 = v73[1];
  v271 = v74;
  v75 = v73[2];
  v268 = v73[3];
  v269 = v75;
  v72(&v321, 0);
  v43(v47, v44);
  v280 = v38;
  v76 = v275;
  RangeSet.ranges.getter();
  v77 = dispatch thunk of Collection.isEmpty.getter();
  v48 = v295;
  if (v77)
  {
    v43(v76, v44);
    v49 = *(v48 + 72);
    if (v49)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v124 = dispatch thunk of Collection.subscript.read();
  v127 = v125[4];
  v126 = v125[5];
  v128 = v125[7];
  v267 = v125[6];
  v265 = v126;
  v266 = v128;
  v124(&v321, 0);
  v43(v76, v44);
  AttributedString.Guts.findRun(at:)(v271, v268, &v321);
  v297 = v321;
  v298 = v322;
  v261 = v324;
  v262 = v323;
  v275 = *(&v325 + 1);
  v263 = *(&v326 + 1);
  v264 = v326;
  v296 = v327;
  v129 = *(v48 + 40);
  v354 = *(v48 + 24);
  v355 = v129;
  v356 = *(v48 + 56);
  if ((BigString.endIndex.getter() ^ v127) > 0x3FF)
  {
    v259 = v127;
    AttributedString.Guts.findRun(at:)(v127, v266, &v321);
    v292 = v322;
    v293 = v321;
    v100 = v323;
    v260 = v324;
    v258 = *(&v325 + 1);
    v93 = *(&v326 + 1);
    v91 = v326;
    v95 = v327;
    v158 = v283;
    RangeSet.ranges.getter();
    v111 = RangeSet.Ranges.count.getter();
    v159 = *(v285 + 8);
    v159(v281, v289);
    v160 = v158;
    v45 = v287;
    v282(v160, v44);
    v280 = v159;
    v159(v290, v289);
    v89 = v258;
    v107 = v259;
    v99 = v260;
    v96 = v261;
    v101 = 0;
    v98 = v291;
    v103 = v270;
    v102 = v271;
    v106 = v268;
    v104 = v269;
    v79 = v275;
    v83 = v263;
    v81 = v264;
    v105 = v296;
    v108 = v265;
    v110 = v266;
    v109 = v267;
    v97 = v262;
  }

  else
  {
    v130 = v43;
    v131 = v265;
    v132 = v127;
    v133 = *(v48 + 72);
    if (v133)
    {
      v134 = *(v48 + 80);
    }

    else
    {
      v134 = 0;
    }

    v260 = v134;
    v135 = *(v48 + 96);
    v136 = swift_unknownObjectRetain();
    v293 = v135;
    v292 = specialized Rope._endPath.getter(v136);
    if (v133)
    {
      swift_unknownObjectRelease();
    }

    v137 = v283;
    v138 = v289;
    RangeSet.ranges.getter();
    v139 = v294;
    v111 = RangeSet.Ranges.count.getter();
    v140 = *(v285 + 8);
    v280 = v140;
    (v140)(v281, v138);
    v130(v137, v139);
    v141 = v138;
    v45 = v287;
    (v140)(v290, v141);
    v101 = 0;
    v100 = 0;
    v107 = v132;
    v89 = v132;
    v108 = v131;
    v91 = v131;
    v110 = v266;
    v109 = v267;
    v93 = v267;
    v95 = v266;
    v98 = v291;
    v103 = v270;
    v102 = v271;
    v106 = v268;
    v104 = v269;
    v79 = v275;
    v83 = v263;
    v81 = v264;
    v105 = v296;
    v96 = v261;
    v97 = v262;
    v99 = v260;
  }

LABEL_20:
  *(v45 + 8) = v96;
  *(v45 + 16) = v297;
  *(v45 + 24) = v298;
  *(v45 + 32) = v97;
  *(v45 + 40) = v79;
  *(v45 + 48) = v81;
  *(v45 + 56) = v83;
  *(v45 + 64) = v105;
  *(v45 + 72) = v102;
  *(v45 + 80) = v103;
  *(v45 + 88) = v104;
  *(v45 + 96) = v106;
  *(v45 + 104) = v101;
  *(v45 + 112) = 0;
  *(v45 + 113) = v98;
  v112 = v292;
  v113 = v293;
  *(v45 + 120) = v99;
  *(v45 + 128) = v113;
  *(v45 + 136) = v112;
  *(v45 + 144) = v100;
  *(v45 + 152) = v89;
  *(v45 + 160) = v91;
  *(v45 + 168) = v93;
  *(v45 + 176) = v95;
  *(v45 + 184) = v107;
  *(v45 + 192) = v108;
  *(v45 + 200) = v109;
  *(v45 + 208) = v110;
  *(v45 + 216) = v111;
  *(v45 + 224) = 0;
  *(v45 + 225) = v98;
  v114 = v284;
  outlined init with take of AttributedString.Runs(v45, v284);
  v115 = *(v114 + 8);
  v116 = *(v114 + 120);
  v117 = *(v114 + 184);
  v118 = *(v114 + 208);
  if (*(v114 + *(v286 + 28)))
  {
    result = 0;
    v161 = *(v114 + 112);
    v162 = *(v114 + 96);
    v269 = *(v114 + 104);
    v163 = *(v114 + 64);
    v164 = *(v114 + 72);
    v165 = *(v114 + 48);
    v275 = *(v114 + 56);
    v281 = v165;
    v167 = *(v114 + 32);
    v166 = *(v114 + 40);
    v261 = v164 >> 10;
    v262 = v116;
    v257 = v117 >> 10;
    v258 = v285 + 8;
    v168 = v115;
    v263 = v162;
    v259 = v118;
    v265 = v118;
    v169 = v116;
    v170 = *(v114 + 16);
    v296 = *(v114 + 24);
    while (1)
    {
      LOBYTE(v315) = v161;
      if (v168 >= v116 && (v116 < v168 || v259 == 2 || v162 != 2 && v164 >> 10 >= v257))
      {
        goto LABEL_157;
      }

      if (v168 < v115)
      {
        goto LABEL_162;
      }

      v179 = v115 < v168 || v263 == 2;
      v180 = v179;
      if (!v179)
      {
        if (v162 == 2)
        {
          goto LABEL_185;
        }

        if (v261 > v164 >> 10)
        {
          goto LABEL_172;
        }
      }

      if (v168 >= v169)
      {
        if (v169 < v168)
        {
          goto LABEL_173;
        }

        if (v265 == 2)
        {
          goto LABEL_186;
        }

        if (v162 == 2)
        {
          if (!v180)
          {
            goto LABEL_184;
          }

          goto LABEL_68;
        }

        if (v164 >> 10 >= v117 >> 10)
        {
          goto LABEL_178;
        }
      }

      if ((v180 & 1) == 0)
      {
        if (v162 == 2)
        {
          goto LABEL_184;
        }

        if (v261 > v164 >> 10)
        {
          goto LABEL_176;
        }
      }

LABEL_68:
      if (v169 < v168)
      {
        goto LABEL_163;
      }

      if (v168 >= v169 && v162 != 2)
      {
        if (v265 == 2)
        {
          goto LABEL_187;
        }

        if (v117 >> 10 < v164 >> 10)
        {
          goto LABEL_174;
        }
      }

      v290 = v164;
      if (v167 == 1)
      {
        goto LABEL_183;
      }

      v181 = *v114;
      if (v170 != *(*v114 + 96))
      {
        goto LABEL_183;
      }

      v268 = v162;
      v293 = v181;
      v287 = result;
      v270 = v169;
      v271 = v117;
      v264 = v166;
      v297 = v168;
      v298 = v170;
      v266 = v163;
      v285 = v166 >> 11;
      if (v163 == 2)
      {
        v182 = *(v181 + 9);
        if (v182)
        {
          v183 = *(v181 + 10);
          v184 = *(v181 + 11);
          swift_unknownObjectRetain();
          v185 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v298, v296, v167, v182, v183, v184);
          swift_unknownObjectRelease();
          v181 = v293;
        }

        else
        {
          v185 = 0;
        }

        v187 = *(v181 + 24);
        v188 = *(v181 + 40);
        v348 = *(v181 + 56);
        v347 = v188;
        v346 = v187;
        v189 = *(v181 + 40);
        v343 = *(v181 + 24);
        v344 = v189;
        v345 = *(v181 + 56);
        BigString.startIndex.getter();
        v291 = v191;
        v292 = v190;
        v365[0] = v346;
        v365[1] = v347;
        v366 = v348;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v365, &v321);
        v292 = v185;
        v267 = BigString.UTF8View.index(_:offsetBy:)();
        result = outlined destroy of BigString(&v346);
      }

      else
      {
        v186 = *(v181 + 40);
        v340 = *(v181 + 24);
        v341 = v186;
        v342 = *(v181 + 56);
        swift_unknownObjectRetain();
        v267 = BigString.UTF8View.index(roundingDown:)();
        result = swift_unknownObjectRelease();
        v292 = v285;
      }

      v192 = *(v181 + 9);
      v193 = *(v181 + 12);
      v291 = *(v181 + 11);
      v194 = v298;
      v321 = v298;
      v322 = v296;
      v323 = v167;
      if (__OFADD__(v297, 1))
      {
        goto LABEL_165;
      }

      if (v298 != v193)
      {
        goto LABEL_166;
      }

      ++v297;
      if (v167)
      {
        v195 = *(v167 + 24 * ((v296 >> ((4 * *(v167 + 18) + 8) & 0x3C)) & 0xF) + 24);
        v178 = __OFADD__(v292, v195);
        v292 += v195;
        if (v178)
        {
          goto LABEL_171;
        }

        if (!v192)
        {
          goto LABEL_164;
        }

        v196 = v290;
        result = swift_unknownObjectRetain();
        v197 = v296;
      }

      else
      {
        v196 = v290;
        v198 = v296;
        swift_unknownObjectRetain();
        v199 = specialized Rope._Node.subscript.getter(v198, v192);
        v260 = v200;

        v178 = __OFADD__(v292, v199);
        v292 += v199;
        if (v178)
        {
          goto LABEL_177;
        }

        v197 = v296;
        if (!v192)
        {
          goto LABEL_164;
        }
      }

      if (v197 >= (((-15 << ((4 * *(v192 + 18) + 8) & 0x3C)) - 1) & *(v192 + 18) | (*(v192 + 16) << ((4 * *(v192 + 18) + 8) & 0x3C))))
      {
        goto LABEL_164;
      }

      if (v167 && (v201 = v167, v202 = (4 * *(v167 + 18) + 8) & 0x3C, v203 = ((v197 >> v202) & 0xF) + 1, v203 < *(v201 + 16)))
      {
        v204 = v197;
        swift_unknownObjectRelease();
        v205 = (v203 << v202) | ((-15 << v202) - 1) & v204;
      }

      else if (specialized Rope._Node.formSuccessor(of:)(&v321, v192))
      {
        swift_unknownObjectRelease();
        v205 = v322;
      }

      else
      {
        v206 = *(v192 + 18);
        v207 = *(v192 + 16);
        swift_unknownObjectRelease();
        v205 = ((-15 << ((4 * v206 + 8) & 0x3C)) - 1) & v206 | (v207 << ((4 * v206 + 8) & 0x3C));
        v321 = v194;
        v322 = v205;
        v323 = 0;
      }

      v296 = v205;
      v298 = v321;
      v291 = v323;
      v208 = v294;
      if (v315)
      {
        v272(v274, (v114 + *(v286 + 24)), v289);
        if (v268 == 2)
        {
          v209 = v267;
        }

        else
        {
          v209 = v196;
        }

        v210 = v283;
        RangeSet.ranges.getter();
        v211 = RangeSet.Ranges.count.getter();
        result = (v282)(v210, v208);
        if (v211 < 1)
        {
LABEL_158:
          __break(1u);
        }

        else
        {
          v212 = 0;
          v213 = v209 >> 10;
          while (!__OFADD__(v212, v211))
          {
            v214 = (v212 + v211) / 2;
            v215 = v283;
            RangeSet.ranges.getter();
            v216 = v294;
            RangeSet.Ranges.subscript.getter();
            result = (v282)(v215, v216);
            if (v213 < v321 >> 10)
            {
              v211 = (v212 + v211) / 2;
              if (v212 >= v214)
              {
                goto LABEL_158;
              }
            }

            else
            {
              v217 = (v212 + v211) / 2;
              v218 = v325;
              if (v213 < v325 >> 10)
              {
                result = (v280)(v274, v289);
                v208 = v294;
                v116 = v262;
                goto LABEL_110;
              }

              v212 = v214 + 1;
              if (v214 + 1 >= v211)
              {
                goto LABEL_158;
              }
            }
          }
        }

        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

      v219 = v283;
      RangeSet.ranges.getter();
      v217 = v269;
      RangeSet.Ranges.subscript.getter();
      result = (v282)(v219, v208);
      v218 = v325;
LABEL_110:
      if (v292 >= (v218 >> 11))
      {
        v178 = __OFADD__(v217, 1);
        v225 = v217 + 1;
        if (v178)
        {
          goto LABEL_175;
        }

        v226 = v283;
        RangeSet.ranges.getter();
        v227 = RangeSet.Ranges.count.getter();
        v228 = v282;
        v282(v226, v208);
        if (v225 == v227)
        {
          v168 = *(v114 + 120);
          v170 = *(v114 + 128);
          v167 = *(v114 + 144);
          v296 = *(v114 + 136);
          v166 = *(v114 + 152);
          v281 = *(v114 + 160);
          v163 = *(v114 + 176);
          v275 = *(v114 + 168);
          v164 = *(v114 + 184);
          v162 = *(v114 + 208);
          v269 = *(v114 + 216);
          v117 = v164;
          v265 = v162;
          v169 = v168;
          v161 = *(v114 + 224);
          v177 = v287;
          v116 = v262;
        }

        else
        {
          RangeSet.ranges.getter();
          v269 = v225;
          RangeSet.Ranges.subscript.getter();
          result = v228(v226, v208);
          v164 = v321;
          v229 = v293;
          v230 = *(v293 + 11);
          v231 = v321 >> 11;
          v292 = *(v293 + 9);
          if (v292)
          {
            v232 = v230;
          }

          else
          {
            v232 = 0;
          }

          if (v232 < v231)
          {
            goto LABEL_180;
          }

          v162 = v324;
          v298 = *(v293 + 12);
          v290 = v323;
          v291 = v322;
          if (v292)
          {
            v233 = *(v293 + 10);
            v235 = (v292 + 16);
            v234 = *(v292 + 16);
            v236 = *(v292 + 18);
            v285 = v230;
            v281 = v233;
            if (v231 < v230 && v234)
            {
              v237 = v234;
              result = swift_unknownObjectRetain_n();
              if (!v236)
              {
                v297 = 0;
                v248 = v292;
                v116 = v262;
                v249 = v237;
LABEL_143:
                v250 = 0;
                v251 = 24;
                v245 = v231;
                while (1)
                {
                  v252 = *(v248 + v251);
                  v231 = v245 - v252;
                  if (__OFSUB__(v245, v252))
                  {
                    goto LABEL_168;
                  }

                  if (__OFADD__(v231, 1))
                  {
                    goto LABEL_169;
                  }

                  if (v231 + 1 < 1)
                  {
                    goto LABEL_151;
                  }

                  ++v250;
                  v251 += 24;
                  v245 -= v252;
                  if (v249 == v250)
                  {
                    v250 = v249;
                    goto LABEL_149;
                  }
                }
              }

              v297 = v236;
              v238 = v292;
              do
              {
                v239 = *v235;
                if (*v235)
                {
                  v241 = 0;
                  v242 = (v238 + 40);
                  while (1)
                  {
                    v243 = *v242;
                    v242 += 3;
                    v244 = v231 - v243;
                    if (__OFSUB__(v231, v243))
                    {
                      goto LABEL_160;
                    }

                    if (__OFADD__(v244, 1))
                    {
                      goto LABEL_161;
                    }

                    if (v244 + 1 < 1)
                    {
                      v239 = v241;
                      goto LABEL_127;
                    }

                    ++v241;
                    v231 = v244;
                    if (v239 == v241)
                    {
                      goto LABEL_136;
                    }
                  }
                }

                v244 = v231;
LABEL_136:
                if (v244)
                {
                  goto LABEL_170;
                }

                v231 = 0;
LABEL_127:
                v297 = (v239 << ((4 * v236 + 8) & 0x3C)) | ((-15 << ((4 * v236 + 8) & 0x3C)) - 1) & v297;
                v240 = *(v238 + 24 + 24 * v239);
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v235 = (v240 + 16);
                LOBYTE(v236) = *(v240 + 18);
                v238 = v240;
              }

              while (v236);
              v248 = v240;
              v249 = *v235;
              v116 = v262;
              if (*v235)
              {
                goto LABEL_143;
              }

              v250 = 0;
LABEL_149:
              if (!v231)
              {
                v245 = 0;
LABEL_151:
                v167 = v248;
                swift_unknownObjectRelease();
                v247 = v297 & 0xFFFFFFFFFFFFF0FFLL | (v250 << 8);
                goto LABEL_152;
              }

LABEL_182:
              __break(1u);
LABEL_183:
              __break(1u);
LABEL_184:
              __break(1u);
LABEL_185:
              __break(1u);
LABEL_186:
              __break(1u);
LABEL_187:
              __break(1u);
              return result;
            }

            v246 = ((-15 << ((4 * v236 + 8) & 0x3C)) - 1) & v236 | (v234 << ((4 * v236 + 8) & 0x3C));
            swift_unknownObjectRetain();
            v247 = v246;
            v245 = 0;
            v167 = 0;
            v116 = v262;
LABEL_152:
            v296 = v247;
            v297 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v298, v247, v167, v292, v281);
            result = swift_unknownObjectRelease();
            v229 = v293;
          }

          else
          {
            v245 = 0;
            v167 = 0;
            v296 = 0;
            v297 = 0;
            v116 = v262;
          }

          v253 = *(v229 + 40);
          v337 = *(v229 + 24);
          v338 = v253;
          v339 = *(v229 + 56);
          if (__OFSUB__(0, v245))
          {
            goto LABEL_181;
          }

          swift_unknownObjectRetain();
          v166 = BigString.UTF8View.index(_:offsetBy:)();
          v281 = v254;
          v275 = v255;
          v163 = v256;
          swift_unknownObjectRelease();
          v161 = 0;
          v177 = v287;
          v169 = v270;
          v117 = v271;
          v168 = v297;
          v170 = v298;
        }
      }

      else
      {
        v269 = v217;
        if (v266 == 2)
        {
          v171 = *(v293 + 24);
          v172 = *(v293 + 56);
          v335 = *(v293 + 40);
          v336 = v172;
          v173 = *(v293 + 40);
          v331 = *(v293 + 24);
          v332 = v173;
          v333 = *(v293 + 56);
          v334 = v171;
          BigString.startIndex.getter();
          v367[0] = v334;
          v367[1] = v335;
          v368 = v336;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v367, &v321);
          v166 = BigString.UTF8View.index(_:offsetBy:)();
          v281 = v174;
          v275 = v175;
          v163 = v176;
          outlined destroy of BigString(&v334);
          v170 = v298;
          v167 = v291;
        }

        else
        {
          v220 = *(v293 + 40);
          v328 = *(v293 + 24);
          v329 = v220;
          v330 = *(v293 + 56);
          v221 = v291;
          if (__OFSUB__(v292, v285))
          {
            goto LABEL_179;
          }

          swift_unknownObjectRetain();
          v166 = BigString.UTF8View.index(_:offsetBy:)();
          v281 = v222;
          v275 = v223;
          v163 = v224;
          swift_unknownObjectRelease();
          v167 = v221;
          v170 = v298;
        }

        v161 = 0;
        v164 = v166;
        v162 = v163;
        v177 = v287;
        v169 = v270;
        v117 = v271;
        v168 = v297;
      }

      v178 = __OFADD__(v177, 1);
      result = v177 + 1;
      if (v178)
      {
        goto LABEL_167;
      }
    }
  }

  v119 = v116 - v115;
  if (__OFSUB__(v116, v115))
  {
    __break(1u);
  }

  else
  {
    v120 = *(v114 + 176);
    if (v118 == 2)
    {
      v121 = v120 != 2;
      v123 = v278;
      v122 = v279;
    }

    else
    {
      v123 = v278;
      v122 = v279;
      v121 = v120 == 2 || (v117 ^ *(v114 + 152)) > 0x3FF;
    }

    v142 = v295;
    if (!__OFADD__(v119, v121))
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_157:
  v123 = v278;
  v122 = v279;
  v142 = v295;
LABEL_35:
  MEMORY[0x1865CD060]();
  v143 = v276;
  outlined init with copy of AttributedString.Runs(v114, v276);
  outlined init with copy of AttributedString.Runs(v143, v123);
  v144 = (v123 + *(v277 + 36));
  v145 = *(v143 + 56);
  v146 = *(v143 + 88);
  v319 = *(v143 + 72);
  v320[0] = v146;
  *(v320 + 10) = *(v143 + 98);
  v147 = *(v143 + 24);
  v315 = *(v143 + 8);
  v316 = v147;
  v317 = *(v143 + 40);
  v318 = v145;
  outlined destroy of AttributedString.Runs(v143);
  v148 = v320[0];
  v144[4] = v319;
  v144[5] = v148;
  *(v144 + 90) = *(v320 + 10);
  v149 = v316;
  *v144 = v315;
  v144[1] = v149;
  v150 = v318;
  v144[2] = v317;
  v144[3] = v150;
  specialized IndexingIterator.next()(&v299);
  v305 = v299;
  v306 = v300;
  v308 = v302;
  v309 = v303;
  v307 = v301;
  v151 = v299;
  v310 = v304;
  v152 = *(&v299 + 1);
  v313 = v302;
  v314 = v303;
  v311 = v300;
  for (i = v301; v299; i = v301)
  {

    specialized Dictionary<>.hash(into:)(v122, v151);
    specialized Set.hash(into:)(v122, v152);

    v153 = *(v142 + 24);
    v154 = *(v142 + 40);
    v353[2] = *(v142 + 56);
    v353[1] = v154;
    v353[0] = v153;
    v349 = v311;
    v350 = i;
    v351 = v313;
    v352 = v314;
    v155 = *(v142 + 24);
    v156 = *(v142 + 40);
    v364 = *(v142 + 56);
    v363[0] = v155;
    v363[1] = v156;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v363, &v299);
    BigString.subscript.getter();
    outlined destroy of BigString(v353);
    BigSubstring.hash(into:)();
    outlined destroy of TermOfAddress?(&v305, &_s10Foundation16AttributedStringV4RunsV3RunVSgMd);
    outlined destroy of BigSubstring(&v321);
    specialized IndexingIterator.next()(&v299);
    v307 = v301;
    v308 = v302;
    v309 = v303;
    v310 = v304;
    v305 = v299;
    v306 = v300;
    v152 = *(&v299 + 1);
    v151 = v299;
    v313 = v302;
    v314 = v303;
    v311 = v300;
  }

  outlined destroy of TermOfAddress?(v123, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  return outlined destroy of AttributedString.Runs(v284);
}

__n128 AttributedStringProtocol.description.getter(ValueMetadata *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  MEMORY[0x1EEE9AC00](v5);
  v401 = &v379 - v6;
  v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v7 = *(v426 - 8);
  MEMORY[0x1EEE9AC00](v426);
  v407 = &v379 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v379 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v424 = &v379 - v13;
  v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v427);
  v419 = &v379 - v14;
  v414 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v414 - 8);
  v411 = &v379 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v415 = &v379 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v382 = &v379 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v422 = &v379 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v416 = &v379 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v413 = &v379 - v26;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v379 - v29;
  v412 = v5;
  v410 = v11;
  if (a1 == &type metadata for AttributedString || a1 == &type metadata for AttributedSubstring)
  {
    v31 = *v2;
  }

  else
  {
    (*(a2 + 56))(&v485, a1, a2, v28);
    v31 = v485;
  }

  (*(a2 + 32))(&v485, a1, a2);
  (*(a2 + 40))(v454, a1, a2);
  v487 = v454[0];
  v488 = v454[1];
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
  RangeSet.init(_:)();
  v452 = 0;
  v453 = 0xE000000000000000;
  v409 = v21;
  v32 = *(v21 + 16);
  v380 = v30;
  v384 = v32;
  v385 = v21 + 16;
  v32(v413, v30, v20);
  *v415 = v31;
  v408 = v31;

  RangeSet.init()();
  v33 = v424;
  v428 = v20;
  RangeSet.ranges.getter();
  v34 = v419;
  v35 = v426;
  (*(v7 + 16))(v419, v33, v426);
  v36 = *(v427 + 36);
  v37 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of Collection.startIndex.getter();
  v38 = *(v7 + 8);
  v425 = v7 + 8;
  v427 = v38;
  v38(v33, v35);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v34 + v36) != v485)
  {
    v417 = v36;
    v418 = v37;
    do
    {
      v48 = dispatch thunk of Collection.subscript.read();
      v50 = v49[5];
      v423 = v49[4];
      v420 = v49[7];
      v421 = v50;
      v48(&v485, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v51 = v408;
      v52 = *(v408 + 40);
      v504 = *(v408 + 24);
      v505 = v52;
      v506 = *(v408 + 56);
      swift_unknownObjectRetain();
      v53 = BigString.UnicodeScalarView.index(roundingDown:)();
      v55 = v54;
      v57 = v56;
      v59 = v58;
      swift_unknownObjectRelease();
      v60 = *(v51 + 40);
      v501 = *(v51 + 24);
      v502 = v60;
      v503 = *(v51 + 56);
      swift_unknownObjectRetain();
      v61 = BigString.UnicodeScalarView.index(roundingDown:)();
      v63 = v62;
      v65 = v64;
      v67 = v66;
      swift_unknownObjectRelease();
      *&v485 = v53;
      *(&v485 + 1) = v55;
      *&v486 = v57;
      v35 = v426;
      *(&v486 + 1) = v59;
      *&v487 = v61;
      *(&v487 + 1) = v63;
      *&v488 = v65;
      *(&v488 + 1) = v67;
      if ((v61 ^ v53) >= 0x400)
      {
        v68 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v68(v454, 0);
      }

      v34 = v419;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v34 + v417) != v485);
  }

  outlined destroy of TermOfAddress?(v34, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v40 = v414;
  v39 = v415;
  v41 = *(v414 + 24);
  v384(v415 + v41, v416, v428);
  v42 = v424;
  RangeSet.ranges.getter();
  v43 = RangeSet.Ranges.count.getter();
  v44 = v427;
  (v427)(v42, v35);
  v45 = *(v40 + 28);
  LODWORD(v417) = v43 > 1;
  *(v39 + v45) = v417;
  v46 = v410;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v454[0] == v485)
  {
    v44(v46, v35);
    v47 = v408;
  }

  else
  {
    v69 = dispatch thunk of Collection.subscript.read();
    v71 = *v70;
    v405 = v70[1];
    v406 = v71;
    v72 = v70[2];
    v403 = v70[3];
    v404 = v72;
    v69(&v485, 0);
    v44(v46, v35);
    v73 = v407;
    RangeSet.ranges.getter();
    v74 = dispatch thunk of Collection.isEmpty.getter();
    v75 = v44;
    v47 = v408;
    if ((v74 & 1) == 0)
    {
      v397 = v41;
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
      dispatch thunk of BidirectionalCollection.index(before:)();
      v334 = dispatch thunk of Collection.subscript.read();
      v335 = v35;
      v113 = v336[4];
      v337 = v336[5];
      v339 = v336[6];
      v338 = v336[7];
      v334(&v485, 0);
      v75(v73, v335);
      AttributedString.Guts.findRun(at:)(v406, v403, &v485);
      v78 = *(&v485 + 1);
      v423 = v485;
      v398 = *(&v486 + 1);
      v399 = v486;
      v410 = *(&v487 + 1);
      v420 = *(&v488 + 1);
      v421 = v488;
      v419 = v489;
      v340 = *(v47 + 40);
      v498 = *(v47 + 24);
      v499 = v340;
      v500 = *(v47 + 56);
      v341 = BigString.endIndex.getter();
      v402 = v339;
      v400 = v338;
      if ((v341 ^ v113) >= 0x400)
      {
        AttributedString.Guts.findRun(at:)(v113, v338, &v485);
        v407 = *(&v485 + 1);
        v418 = v485;
        v103 = v486;
        *&v396 = v78;
        *(&v396 + 1) = *(&v486 + 1);
        v394 = *(&v487 + 1);
        v395 = v337;
        v392 = *(&v488 + 1);
        v393 = v488;
        v391 = v489;
        v349 = v415;
        v350 = v424;
        v351 = v428;
        RangeSet.ranges.getter();
        v352 = v426;
        v117 = RangeSet.Ranges.count.getter();
        v75(v350, v352);
        v353 = *(v409 + 8);
        v353(v416, v351);
        v353(v413, v351);
        v90 = v407;
        v106 = v406;
        v77 = v350;
        v93 = v349;
        v102 = *(&v396 + 1);
        v78 = v396;
        v98 = v391;
        v97 = v392;
        v96 = v393;
        v95 = v394;
        v104 = 0;
        v101 = v417;
        v110 = v404;
        v109 = v405;
        v115 = v402;
        v112 = v403;
        v118 = v423;
        v105 = v410;
        v108 = v420;
        v107 = v421;
        v111 = v419;
        v114 = v395;
        v100 = v399;
        v116 = v400;
        v99 = v398;
      }

      else
      {
        v342 = *(v47 + 72);
        if (v342)
        {
          v343 = *(v47 + 80);
        }

        else
        {
          v343 = 0;
        }

        *(&v396 + 1) = v343;
        v344 = *(v47 + 96);
        v345 = swift_unknownObjectRetain();
        v418 = v344;
        v407 = specialized Rope._endPath.getter(v345);
        if (v342)
        {
          swift_unknownObjectRelease();
        }

        v93 = v415;
        v77 = v424;
        v346 = v428;
        RangeSet.ranges.getter();
        v347 = v426;
        v117 = RangeSet.Ranges.count.getter();
        (v427)(v77, v347);
        v348 = *(v409 + 8);
        v348(v416, v346);
        v348(v413, v346);
        v104 = 0;
        v103 = 0;
        v95 = v113;
        v114 = v337;
        v96 = v337;
        v115 = v402;
        v112 = v403;
        v97 = v402;
        v100 = v399;
        v116 = v400;
        v98 = v400;
        v101 = v417;
        v109 = v405;
        v106 = v406;
        v110 = v404;
        v118 = v423;
        v105 = v410;
        v108 = v420;
        v107 = v421;
        v111 = v419;
        v90 = v407;
        v99 = v398;
        v102 = *(&v396 + 1);
      }

      goto LABEL_21;
    }

    v75(v73, v35);
  }

  v76 = *(v47 + 72);
  v77 = v424;
  if (v76)
  {
    v78 = *(v76 + 18);
  }

  else
  {
    v78 = 0;
  }

  v423 = *(v47 + 96);
  v79 = *(v47 + 40);
  v498 = *(v47 + 24);
  v499 = v79;
  v500 = *(v47 + 56);
  v80 = BigString.startIndex.getter();
  v420 = v82;
  v421 = v81;
  v83 = *(v47 + 72);
  v418 = *(v47 + 96);
  v419 = v84;
  if (v83)
  {
    v85 = *(v83 + 18);
    v86 = *(v409 + 8);
    swift_unknownObjectRetain();
    v87 = v78;
    v88 = v428;
    v86(v416, v428);
    v89 = v88;
    v78 = v87;
    v86(v413, v89);
    v90 = v85;
    swift_unknownObjectRelease();
  }

  else
  {
    v91 = *(v409 + 8);
    v92 = v428;
    v91(v416, v428);
    v91(v413, v92);
    v90 = 0;
  }

  v93 = v415;
  v94 = *(v47 + 40);
  v497[2] = *(v47 + 24);
  v497[3] = v94;
  v497[4] = *(v47 + 56);
  v95 = BigString.startIndex.getter();
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v104 = -1;
  v105 = v80;
  v106 = v80;
  v108 = v420;
  v107 = v421;
  v109 = v421;
  v110 = v420;
  v111 = v419;
  v112 = v419;
  v113 = v95;
  v114 = v96;
  v115 = v97;
  v116 = v98;
  v117 = -1;
  v118 = v423;
LABEL_21:
  *(v93 + 8) = v99;
  *(v93 + 16) = v118;
  *(v93 + 24) = v78;
  *(v93 + 32) = v100;
  *(v93 + 40) = v105;
  *(v93 + 48) = v107;
  *(v93 + 56) = v108;
  *(v93 + 64) = v111;
  *(v93 + 72) = v106;
  *(v93 + 80) = v109;
  *(v93 + 88) = v110;
  *(v93 + 96) = v112;
  *(v93 + 104) = v104;
  *(v93 + 112) = 0;
  *(v93 + 113) = v101;
  v119 = v418;
  *(v93 + 120) = v102;
  *(v93 + 128) = v119;
  *(v93 + 136) = v90;
  *(v93 + 144) = v103;
  *(v93 + 152) = v95;
  *(v93 + 160) = v96;
  *(v93 + 168) = v97;
  *(v93 + 176) = v98;
  *(v93 + 184) = v113;
  *(v93 + 192) = v114;
  *(v93 + 200) = v115;
  *(v93 + 208) = v116;
  *(v93 + 216) = v117;
  *(v93 + 224) = 0;
  *(v93 + 225) = v101;
  v120 = v382;
  outlined init with take of AttributedString.Runs(v93, v382);
  v121 = v411;
  outlined init with copy of AttributedString.Runs(v120, v411);
  v122 = v401;
  outlined init with copy of AttributedString.Runs(v121, v401);
  v123 = v122 + *(v412 + 36);
  v124 = *(v121 + 8);
  v125 = *(v121 + 16);
  v126 = *(v121 + 48);
  v449 = *(v121 + 32);
  v450 = v126;
  v127 = *(v121 + 72);
  v451 = *(v121 + 64);
  v447 = *(v121 + 80);
  v448 = v125;
  v446 = *(v121 + 112);
  v128 = *(v121 + 96);
  v445 = *(v121 + 104);
  outlined destroy of AttributedString.Runs(v121);
  v129 = v447;
  *(v123 + 8) = v448;
  v130 = v450;
  *(v123 + 24) = v449;
  *(v123 + 40) = v130;
  v412 = v124;
  *v123 = v124;
  *(v123 + 56) = v451;
  *(v123 + 64) = v127;
  *(v123 + 72) = v129;
  v131 = v445;
  v420 = v128;
  *(v123 + 88) = v128;
  *(v123 + 96) = v131;
  *(v123 + 104) = v446;
  v132 = *(v123 + 8);
  v417 = *(v123 + 16);
  v418 = v127;
  v133 = *(v123 + 24);
  v415 = *(v123 + 32);
  v416 = v132;
  v134 = *(v123 + 40);
  v410 = *(v123 + 48);
  v411 = v134;
  v413 = *(v123 + 56);
  v135 = *(v123 + 72);
  v404 = *(v123 + 80);
  v405 = v135;
  v383 = (v409 + 8);
  LODWORD(v409) = *(v123 + 104);
  v381 = v123;
  v136 = *(v123 + 105);
  v137 = v426;
  while (1)
  {
    *&v479 = v412;
    *(&v479 + 1) = v416;
    *&v480 = v417;
    v421 = v133;
    *(&v480 + 1) = v133;
    *&v481 = v415;
    *(&v481 + 1) = v411;
    v482.n128_u64[0] = v410;
    v482.n128_u64[1] = v413;
    *&v483 = v418;
    *(&v483 + 1) = v405;
    *&v484[0] = v404;
    *(&v484[0] + 1) = v420;
    *&v484[1] = v131;
    BYTE8(v484[1]) = v409;
    BYTE9(v484[1]) = v136;
    v139 = v412;
    if (v412 == *(v122 + 120))
    {
      v140 = *(v122 + 208);
      if (v420 == 2)
      {
        if (v140 == 2)
        {
          goto LABEL_260;
        }
      }

      else if (v140 != 2 && (*(v122 + 184) ^ v418) < 0x400)
      {
        goto LABEL_260;
      }
    }

    v423 = v131;
    v141 = *(v122 + 184);
    v495 = *(v122 + 168);
    v496 = v141;
    v497[0] = *(v122 + 200);
    *(v497 + 10) = *(v122 + 210);
    v142 = *(v122 + 120);
    v491 = *(v122 + 104);
    v492 = v142;
    v143 = *(v122 + 152);
    v493 = *(v122 + 136);
    v494 = v143;
    v144 = *(v122 + 56);
    v487 = *(v122 + 40);
    v488 = v144;
    v145 = *(v122 + 88);
    v489 = *(v122 + 72);
    v490 = v145;
    v146 = *(v122 + 24);
    v485 = *(v122 + 8);
    v486 = v146;
    v147 = v485;
    v148 = v489;
    v149 = *(&v490 + 1);
    v150 = specialized Range.contains(_:)(&v479);
    if (v139 < v147 || (v150 & 1) == 0)
    {
      goto LABEL_267;
    }

    v151 = v147 < v139 || v149 == 2;
    v152 = v151;
    if (!v151)
    {
      if (v420 == 2)
      {
        goto LABEL_289;
      }

      if (v418 >> 10 < v148 >> 10)
      {
        goto LABEL_279;
      }
    }

    if (v492 < v139)
    {
      goto LABEL_268;
    }

    LODWORD(v400) = v152;
    v402 = v496;
    v153 = v139 < v492 || v420 == 2;
    v154 = v153;
    LODWORD(v398) = v154;
    if (!v153)
    {
      if (*(&v497[0] + 1) == 2)
      {
        goto LABEL_290;
      }

      if (v402 >> 10 < v418 >> 10)
      {
        goto LABEL_280;
      }
    }

    v407 = (v415 >> 11);
    v386 = v148;
    v397 = v492;
    v399 = *(&v497[0] + 1);
    if (v421 == 1 || (v419 = *v122, v416 != *(v419 + 12)))
    {
      if (*(v122 + *(v414 + 28)))
      {
        goto LABEL_275;
      }

      v163 = *(*v122 + 72);
      v162 = *(*v122 + 80);
      v419 = *v122;
      if (v163)
      {
        v164 = v162;
      }

      else
      {
        v164 = 0;
      }

      if (v139 < 0 || v164 < v139)
      {
        goto LABEL_276;
      }

      v165 = *(v419 + 12);
      v406 = *(v419 + 11);
      v403 = v165;
      if (v163)
      {
        v167 = (v163 + 16);
        v166 = *(v163 + 16);
        if (*(v163 + 16))
        {
          if (v139 < v162)
          {
            v168 = *(v163 + 18);
            swift_unknownObjectRetain_n();
            if (v168)
            {
              *(&v396 + 1) = v162;
              v169 = v168;
              v170 = v163;
              do
              {
                v171 = *v167;
                if (*v167)
                {
                  v173 = 0;
                  v174 = (v170 + 32);
                  while (1)
                  {
                    v175 = *v174;
                    v174 += 3;
                    v176 = v139 - v175;
                    if (__OFSUB__(v139, v175))
                    {
                      goto LABEL_255;
                    }

                    if (__OFADD__(v176, 1))
                    {
                      goto LABEL_256;
                    }

                    if (v176 + 1 < 1)
                    {
                      v171 = v173;
                      goto LABEL_67;
                    }

                    ++v173;
                    v139 = v176;
                    if (v171 == v173)
                    {
                      goto LABEL_76;
                    }
                  }
                }

                v176 = v139;
LABEL_76:
                if (v176)
                {
                  goto LABEL_264;
                }

                v139 = 0;
LABEL_67:
                v169 = (v171 << ((4 * v168 + 8) & 0x3C)) | ((-15 << ((4 * v168 + 8) & 0x3C)) - 1) & v169;
                v172 = *(v170 + 24 + 24 * v171);
                swift_unknownObjectRetain();
                swift_unknownObjectRelease();
                v167 = (v172 + 16);
                LOBYTE(v168) = *(v172 + 18);
                v170 = v172;
              }

              while (v168);
              v182 = v172;
              v166 = *v167;
              if (*v167)
              {
                v77 = v424;
                v162 = *(&v396 + 1);
                goto LABEL_84;
              }

              v77 = v424;
              v162 = *(&v396 + 1);
              v185 = 0;
              if (!v139)
              {
LABEL_93:
                v180 = v182;
                swift_unknownObjectRelease();
                v179 = v169 & 0xFFFFFFFFFFFFF0FFLL | (v185 << 8);
                v178 = v406;
                *&v396 = v179;
                goto LABEL_79;
              }

LABEL_287:
              __break(1u);
              goto LABEL_288;
            }

            v169 = 0;
            v182 = v163;
            v77 = v424;
LABEL_84:
            v183 = 0;
            v184 = v166;
            v185 = v139 & ~(v139 >> 63);
            while ((v139 ^ v183) != 0x8000000000000000)
            {
              if (v185 == v183)
              {
                goto LABEL_93;
              }

              if (v184 == ++v183)
              {
                v185 = v184;
                if (v139 == v183)
                {
                  goto LABEL_93;
                }

                goto LABEL_287;
              }
            }

            goto LABEL_263;
          }
        }
      }

      v177 = swift_unknownObjectRetain();
      v178 = v406;
      v179 = specialized Rope._endPath.getter(v177);
      v180 = 0;
      *&v396 = v179;
      if (v163)
      {
LABEL_79:
        v181 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v403, v179, v180, v163, v162, v178);
        swift_unknownObjectRelease();
      }

      else
      {
        v181 = 0;
      }

      v155 = v413;
    }

    else
    {
      v155 = v413;
      if (v413 == 2)
      {
        v156 = *(v419 + 9);
        if (v156)
        {
          v158 = *(v419 + 10);
          v157 = *(v419 + 11);
          swift_unknownObjectRetain();
          v159 = v416;
          v160 = v417;
          v161 = v421;
          v395 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v416, v417, v421, v156, v158, v157);
          swift_unknownObjectRelease();
        }

        else
        {
          v395 = 0;
          v159 = v416;
          v160 = v417;
          v161 = v421;
        }

        v387 = 0;
        LODWORD(v406) = 1;
        *&v396 = v160;
        *(&v396 + 1) = v161;
        v403 = v159;
        goto LABEL_102;
      }

      v403 = v416;
      *&v396 = v417;
      v180 = v421;
      v181 = v407;
    }

    LODWORD(v406) = v155 == 2;
    v387 = v155 != 2;
    *(&v396 + 1) = v180;
    if (v155 != 2 && v407 == v181)
    {
      v186 = *(v419 + 40);
      v470 = *(v419 + 24);
      v471 = v186;
      v472 = *(v419 + 56);
      swift_unknownObjectRetain();
      v187 = BigString.UTF8View.index(roundingDown:)();
      v189 = v188;
      v394 = v191;
      v395 = v190;
      swift_unknownObjectRelease();
      LODWORD(v406) = 0;
      if (v409)
      {
        goto LABEL_103;
      }

      goto LABEL_99;
    }

    v395 = v181;
LABEL_102:
    v199 = *(v419 + 24);
    v200 = *(v419 + 56);
    v477 = *(v419 + 40);
    v478 = v200;
    v201 = *(v419 + 40);
    v473 = *(v419 + 24);
    v474 = v201;
    v475 = *(v419 + 56);
    v476 = v199;
    BigString.startIndex.getter();
    v507[0] = v476;
    v507[1] = v477;
    v508 = v478;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v507, &v438);
    v187 = BigString.UTF8View.index(_:offsetBy:)();
    v189 = v202;
    v394 = v204;
    v395 = v203;
    outlined destroy of BigString(&v476);
    v77 = v424;
    if (v409)
    {
LABEL_103:
      v393 = v189;
      v205 = v187;
      if (v420 != 2)
      {
        v187 = v418;
      }

      RangeSet.ranges.getter();
      v206 = RangeSet.Ranges.count.getter();
      (v427)(v77, v137);
      if (v206 < 1)
      {
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
        goto LABEL_257;
      }

      v207 = 0;
      v208 = v187 >> 10;
      while (!__OFADD__(v207, v206))
      {
        v209 = (v207 + v206) / 2;
        RangeSet.ranges.getter();
        v210 = v77;
        v211 = v426;
        RangeSet.Ranges.subscript.getter();
        (v427)(v210, v211);
        v192 = v438;
        if (v208 >= v438 >> 10)
        {
          v196 = v441;
          if (v208 < v441 >> 10)
          {
            v193 = v439;
            v195 = *(&v440 + 1);
            v194 = v440;
            v198 = v415;
            v197 = v411;
            v187 = v205;
            v189 = v393;
            goto LABEL_115;
          }

          v207 = v209 + 1;
          v209 = v206;
        }

        v206 = v209;
        v77 = v424;
        if (v207 >= v209)
        {
          goto LABEL_254;
        }
      }

      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
      goto LABEL_265;
    }

LABEL_99:
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    (v427)(v77, v137);
    v192 = v438;
    v193 = v439;
    v195 = *(&v440 + 1);
    v194 = v440;
    v196 = v441;
    v197 = v411;
    if (v420 == 2)
    {
      v198 = v415;
    }

    else
    {
      v198 = v415;
      if (v418 >> 10 < v438 >> 10 || v418 >> 10 >= v441 >> 10)
      {
        goto LABEL_285;
      }
    }

LABEL_115:
    v391 = v195;
    v392 = v194;
    v393 = v193;
    v212 = v198;
    v213 = v197;
    v214 = v410;
    v215 = v413;
    if (v406)
    {
      v212 = v187;
      v213 = v189;
      v214 = v395;
      v215 = v394;
    }

    v388 = v214;
    v389 = v215;
    v390 = v213;
    v216 = v419;
    if (v420 == 2)
    {
      v217 = v187;
    }

    else
    {
      v217 = v418;
    }

    v218 = v405;
    if (v420 == 2)
    {
      v218 = v189;
    }

    v405 = v218;
    v219 = v404;
    if (v420 == 2)
    {
      v219 = v395;
    }

    v404 = v219;
    if (v420 == 2)
    {
      v220 = v394;
    }

    else
    {
      v220 = v420;
    }

    v395 = v220;
    v221 = *(v419 + 9);
    v222 = *(v419 + 10);
    v223 = *(v419 + 11);
    v224 = *(v419 + 12);
    swift_unknownObjectRetain();
    v225 = specialized Rope.subscript.getter(v403, v396, *(&v396 + 1), v221, v222, v223, v224);
    v227 = v226;
    v403 = v228;
    swift_unknownObjectRelease();
    if (v192 >> 10 >= v212 >> 10)
    {
      v229 = v192;
    }

    else
    {
      v229 = v212;
    }

    if (v192 >> 10 >= v212 >> 10)
    {
      v230 = v393;
    }

    else
    {
      v230 = v390;
    }

    if (v192 >> 10 >= v212 >> 10)
    {
      v231 = v392;
    }

    else
    {
      v231 = v388;
    }

    if (v192 >> 10 >= v212 >> 10)
    {
      v232 = v391;
    }

    else
    {
      v232 = v389;
    }

    v233 = v225 + (v212 >> 11);
    if (__OFADD__(v225, v212 >> 11))
    {
      goto LABEL_269;
    }

    if ((v196 >> 11) < v233)
    {
      v233 = v196 >> 11;
    }

    v234 = *(v216 + 24);
    v235 = *(v216 + 40);
    v236 = *(v216 + 56);
    v394 = v216 + 24;
    v467 = v234;
    v468 = v235;
    v469 = v236;
    if (__OFSUB__(v233, v217 >> 11))
    {
      goto LABEL_270;
    }

    v419 = v216;
    v237 = v229;
    *&v396 = v231;
    *(&v396 + 1) = v232;
    swift_unknownObjectRetain();
    v238 = BigString.UTF8View.index(_:offsetBy:)();
    v240 = v239;
    v242 = v241;
    v244 = v243;
    swift_unknownObjectRelease();
    v438 = v227;
    v439 = v403;
    *&v440 = v237;
    v245 = v419;
    *(&v440 + 1) = v230;
    v441 = v396;
    *&v442 = v238;
    *(&v442 + 1) = v240;
    *&v443 = v242;
    *(&v443 + 1) = v244;
    v444 = v419;
    if (v400)
    {
      v246 = v412;
      v247 = v401;
      v137 = v426;
      v248 = v414;
      v249 = v416;
      v250 = v421;
      v251 = v399;
      if (v412 >= v397)
      {
        if (v399 == 2)
        {
          goto LABEL_291;
        }

        if (v420 != 2)
        {
          v252 = v418 >> 10;
          goto LABEL_152;
        }
      }
    }

    else
    {
      v250 = v421;
      v247 = v401;
      v248 = v414;
      v246 = v412;
      v249 = v416;
      v251 = v399;
      if (v420 == 2)
      {
        goto LABEL_292;
      }

      v252 = v418 >> 10;
      v137 = v426;
      if (v418 >> 10 < v386 >> 10)
      {
        goto LABEL_281;
      }

      if (v412 >= v397)
      {
        if (v399 == 2)
        {
          goto LABEL_291;
        }

LABEL_152:
        if (v252 >= v402 >> 10)
        {
          goto LABEL_284;
        }
      }
    }

    if (!v398)
    {
      if (v251 == 2)
      {
        goto LABEL_293;
      }

      if (v402 >> 10 < v418 >> 10)
      {
        goto LABEL_282;
      }
    }

    if (v250 != 1 && v249 == *(v419 + 12))
    {
      if ((v406 & 1) == 0)
      {

        v276 = v407;
        goto LABEL_202;
      }

      v253 = *(v419 + 9);
      if (v253)
      {
        v255 = *(v419 + 10);
        v254 = *(v419 + 11);

        swift_unknownObjectRetain();
        v256 = v249;
        v257 = v417;
        v258 = v250;
        v259 = v253;
        v260 = v255;
LABEL_200:
        v276 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v256, v257, v258, v259, v260, v254);
        swift_unknownObjectRelease();
        goto LABEL_202;
      }

      goto LABEL_201;
    }

    if (*(v247 + *(v248 + 28)))
    {
      goto LABEL_277;
    }

    v261 = *(v419 + 9);
    v262 = *(v419 + 10);
    if (v261)
    {
      v263 = *(v419 + 10);
    }

    else
    {
      v263 = 0;
    }

    if (v246 < 0 || v263 < v246)
    {
      goto LABEL_278;
    }

    v254 = *(v419 + 11);
    v416 = *(v419 + 12);
    if (v261)
    {
      v264 = (v261 + 16);
      v265 = *(v261 + 16);
      if (*(v261 + 16))
      {
        if (v246 < v262)
        {
          break;
        }
      }
    }

    v275 = swift_unknownObjectRetain();
    v249 = v416;
    v417 = specialized Rope._endPath.getter(v275);
    v421 = 0;
    if (v261)
    {
LABEL_199:
      v256 = v249;
      v257 = v417;
      v258 = v421;
      v259 = v261;
      v260 = v262;
      goto LABEL_200;
    }

LABEL_201:
    v276 = 0;
LABEL_202:
    v279 = v387;
    if (v407 != v276)
    {
      v279 = 0;
    }

    v416 = v276;
    if (v279)
    {
      v280 = *(v245 + 40);
      v458 = *(v245 + 24);
      v459 = v280;
      v460 = *(v245 + 56);
      swift_unknownObjectRetain();
      v404 = BigString.UTF8View.index(roundingDown:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v281 = *v394;
      v282 = *(v394 + 2);
      v465 = *(v394 + 1);
      v466 = v282;
      v283 = *(v245 + 40);
      v461 = *(v245 + 24);
      v462 = v283;
      v463 = *(v245 + 56);
      v464 = v281;
      BigString.startIndex.getter();
      v509[0] = v464;
      v509[1] = v465;
      v510 = v466;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v509, &v429);
      v246 = v412;
      v245 = v419;
      v404 = BigString.UTF8View.index(_:offsetBy:)();
      outlined destroy of BigString(&v464);
    }

    v284 = v421;
    v285 = v245;
    v286 = *(v245 + 9);
    v287 = *(v245 + 10);
    v288 = *(v285 + 11);
    v289 = *(v285 + 12);
    v429 = v249;
    v290 = v249;
    v291 = v417;
    v430 = v417;
    v431 = v421;
    v292 = __OFADD__(v246, 1);
    v293 = v246 + 1;
    if (v292)
    {
      goto LABEL_271;
    }

    v412 = v293;
    swift_unknownObjectRetain();
    v294 = specialized Rope.subscript.getter(v290, v291, v284, v286, v287, v288, v289);

    if (__OFADD__(v416, v294))
    {
      goto LABEL_272;
    }

    v405 = v416 + v294;
    if (v290 != v289)
    {
      goto LABEL_273;
    }

    v295 = specialized Rope._endPath.getter(v286);
    v296 = v417;
    if (v417 >= v295)
    {
      goto LABEL_274;
    }

    if (v421 && (v297 = (4 * *(v421 + 18) + 8) & 0x3C, v298 = ((v417 >> v297) & 0xF) + 1, v298 < *(v421 + 16)))
    {
      swift_unknownObjectRelease();
      v417 = (v298 << v297) | ((-15 << v297) - 1) & v296;
      v77 = v424;
    }

    else
    {
      v299 = specialized Rope._Node.formSuccessor(of:)(&v429, v286);
      v77 = v424;
      if (v299)
      {
        swift_unknownObjectRelease();
        v417 = v430;
      }

      else
      {
        v300 = specialized Rope._endPath.getter(v286);
        swift_unknownObjectRelease();
        v429 = v290;
        v430 = v300;
        v417 = v300;
        v431 = 0;
      }
    }

    v416 = v429;
    v301 = *(v414 + 24);
    v122 = v401;
    v421 = v431;
    if (v409)
    {
      v384(v422, v401 + v301, v428);
      if (v420 == 2)
      {
        v302 = v404;
      }

      else
      {
        v302 = v418;
      }

      RangeSet.ranges.getter();
      v303 = RangeSet.Ranges.count.getter();
      (v427)(v77, v137);
      if (v303 >= 1)
      {
        v304 = 0;
        v305 = v302 >> 10;
        while (!__OFADD__(v304, v303))
        {
          v306 = (v304 + v303) / 2;
          RangeSet.ranges.getter();
          RangeSet.Ranges.subscript.getter();
          (v427)(v77, v137);
          if (v305 < v429 >> 10)
          {
            v303 = (v304 + v303) / 2;
            if (v304 >= v306)
            {
              goto LABEL_257;
            }
          }

          else
          {
            v423 = (v304 + v303) / 2;
            v307 = v433;
            if (v305 < v433 >> 10)
            {
              (*v383)(v422, v428);
              goto LABEL_231;
            }

            v304 = v423 + 1;
            if (v423 + 1 >= v303)
            {
              goto LABEL_257;
            }
          }
        }

        goto LABEL_262;
      }

LABEL_257:
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:

      v354 = v484[0];
      v356 = v381;
      v355 = v382;
      v381[4] = v483;
      v356[5] = v354;
      *(v356 + 90) = *(v484 + 10);
      v357 = v480;
      *v356 = v479;
      v356[1] = v357;
      v358 = v482;
      v356[2] = v481;
      v356[3] = v358;
      outlined destroy of AttributedString.Runs(v355);
      (*v383)(v380, v428);
      outlined destroy of TermOfAddress?(v122, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
      return result;
    }

    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    (v427)(v77, v137);
    v307 = v433;
LABEL_231:
    if (v405 >= (v307 >> 11))
    {
      if (__OFADD__(v423, 1))
      {
        goto LABEL_283;
      }

      v318 = v414;
      ++v423;
      RangeSet.ranges.getter();
      v319 = RangeSet.Ranges.count.getter();
      v320 = v427;
      (v427)(v77, v137);
      if (v423 == v319)
      {
        v321 = *(v122 + 120);
        v322 = *(v122 + 136);
        v133 = *(v122 + 144);
        v416 = *(v122 + 128);
        v417 = v322;
        v323 = *(v122 + 160);
        v415 = *(v122 + 152);
        v411 = v323;
        v412 = v321;
        v324 = *(v122 + 176);
        v410 = *(v122 + 168);
        v413 = v324;
        v325 = *(v122 + 192);
        v418 = *(v122 + 184);
        v326 = *(v122 + 208);
        v404 = *(v122 + 200);
        v405 = v325;
        v420 = v326;
        v423 = *(v122 + 216);
        LODWORD(v409) = *(v122 + 224);
        v327 = *(v122 + 225);
      }

      else
      {
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        v320(v77, v137);
        v418 = v429;
        v404 = v431;
        v405 = v430;
        v420 = v432;
        AttributedString.Guts.findRun(at:)(v429, v432, &v429);
        LODWORD(v409) = 0;
        v416 = v429;
        v417 = v430;
        v133 = v431;
        v415 = v434;
        v411 = v435;
        v412 = v432;
        v410 = v436;
        v413 = v437;
        v327 = *(v122 + *(v318 + 28));
      }

      LODWORD(v419) = v327;
    }

    else
    {
      if (v406)
      {
        v308 = *v394;
        v309 = *(v394 + 2);
        v456 = *(v394 + 1);
        v457 = v309;
        v310 = *(v419 + 40);
        v454[17] = *(v419 + 24);
        v454[18] = v310;
        v454[19] = *(v419 + 56);
        v455 = v308;
        BigString.startIndex.getter();
        v511[0] = v455;
        v511[1] = v456;
        v512 = v457;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v511, &v429);
        v77 = v424;
        v311 = BigString.UTF8View.index(_:offsetBy:)();
        v313 = v312;
        v315 = v314;
        v317 = v316;
        outlined destroy of BigString(&v455);
      }

      else
      {
        v328 = *(v419 + 40);
        v454[14] = *(v419 + 24);
        v454[15] = v328;
        v454[16] = *(v419 + 56);
        if (__OFSUB__(v405, v407))
        {
          goto LABEL_286;
        }

        swift_unknownObjectRetain();
        v311 = BigString.UTF8View.index(_:offsetBy:)();
        v313 = v329;
        v315 = v330;
        v317 = v331;
        swift_unknownObjectRelease();
      }

      LODWORD(v409) = 0;
      LODWORD(v419) = *(v122 + *(v414 + 28));
      v415 = v311;
      v418 = v311;
      v410 = v315;
      v411 = v313;
      v404 = v315;
      v405 = v313;
      v413 = v317;
      v420 = v317;
      v133 = v421;
    }

    v332 = *(v408 + 40);
    v454[11] = *(v408 + 24);
    v454[12] = v332;
    v454[13] = *(v408 + 56);
    v454[7] = v440;
    v454[8] = v441;
    v454[9] = v442;
    v454[10] = v443;
    swift_unknownObjectRetain();
    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    MEMORY[0x1865CAF60](v454);
    v333 = v452 & 0xFFFFFFFFFFFFLL;
    if ((v453 & 0x2000000000000000) != 0)
    {
      v333 = HIBYTE(v453) & 0xF;
    }

    if (v333)
    {
      MEMORY[0x1865CB0E0](10, 0xE100000000000000);
    }

    v429 = 0;
    v430 = 0xE000000000000000;
    MEMORY[0x1865CB0E0]();

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);
    v138 = v438;

    specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v138);

    MEMORY[0x1865CB0E0](v429, v430);

    outlined destroy of AttributedString.Runs.Run(&v438);
    v131 = v423;
    v136 = v419;
  }

  v405 = v254;
  v266 = *(v261 + 18);
  swift_unknownObjectRetain_n();

  if (!v266)
  {
    v268 = 0;
    v267 = v412;
    v421 = v261;
    v249 = v416;
LABEL_190:
    v277 = 0;
    v278 = v267 & ~(v267 >> 63);
    while ((v267 ^ v277) != 0x8000000000000000)
    {
      if (v278 == v277)
      {
        goto LABEL_198;
      }

      if (v265 == ++v277)
      {
        v278 = v265;
        if (v267 == v277)
        {
          goto LABEL_198;
        }

        goto LABEL_288;
      }
    }

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
LABEL_284:
    __break(1u);
LABEL_285:
    __break(1u);
LABEL_286:
    __break(1u);
    goto LABEL_287;
  }

  v267 = v412;
  v268 = v266;
  v122 = v261;
  do
  {
    v269 = *v264;
    if (*v264)
    {
      v271 = 0;
      v272 = (v122 + 32);
      while (1)
      {
        v273 = *v272;
        v272 += 3;
        v274 = v267 - v273;
        if (__OFSUB__(v267, v273))
        {
          goto LABEL_258;
        }

        if (__OFADD__(v274, 1))
        {
          goto LABEL_259;
        }

        if (v274 + 1 < 1)
        {
          v269 = v271;
          goto LABEL_173;
        }

        ++v271;
        v267 = v274;
        if (v269 == v271)
        {
          goto LABEL_182;
        }
      }
    }

    v274 = v267;
LABEL_182:
    if (v274)
    {
      goto LABEL_266;
    }

    v267 = 0;
LABEL_173:
    v268 = (v269 << ((4 * v266 + 8) & 0x3C)) | ((-15 << ((4 * v266 + 8) & 0x3C)) - 1) & v268;
    v270 = *(v122 + 24 + 24 * v269);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v264 = (v270 + 16);
    LOBYTE(v266) = *(v270 + 18);
    v122 = v270;
  }

  while (v266);
  v421 = v270;
  v265 = *v264;
  if (*v264)
  {
    v249 = v416;
    v245 = v419;
    goto LABEL_190;
  }

  v249 = v416;
  v245 = v419;
  v278 = 0;
  if (!v267)
  {
LABEL_198:
    swift_unknownObjectRelease();
    v417 = v268 & 0xFFFFFFFFFFFFF0FFLL | (v278 << 8);
    v246 = v412;
    v254 = v405;
    goto LABEL_199;
  }

LABEL_288:
  __break(1u);
LABEL_289:
  v360 = v484[0];
  v361 = v381;
  v381[4] = v483;
  v361[5] = v360;
  *(v361 + 90) = *(v484 + 10);
  v362 = v480;
  *v361 = v479;
  v361[1] = v362;
  v363 = v482;
  v361[2] = v481;
  v361[3] = v363;
  __break(1u);
LABEL_290:
  v364 = v484[0];
  v365 = v381;
  v381[4] = v483;
  v365[5] = v364;
  *(v365 + 90) = *(v484 + 10);
  v366 = v480;
  *v365 = v479;
  v365[1] = v366;
  v367 = v482;
  v365[2] = v481;
  v365[3] = v367;
  __break(1u);
LABEL_291:
  v368 = v484[0];
  v369 = v381;
  v381[4] = v483;
  v369[5] = v368;
  *(v369 + 90) = *(v484 + 10);
  v370 = v480;
  *v369 = v479;
  v369[1] = v370;
  v371 = v482;
  v369[2] = v481;
  v369[3] = v371;
  __break(1u);
LABEL_292:
  v372 = v484[0];
  v373 = v381;
  v381[4] = v483;
  v373[5] = v372;
  *(v373 + 90) = *(v484 + 10);
  v374 = v480;
  *v373 = v479;
  v373[1] = v374;
  v375 = v482;
  v373[2] = v481;
  v373[3] = v375;
  __break(1u);
LABEL_293:
  result = v482;
  v376 = v484[0];
  v377 = v381;
  v381[4] = v483;
  v377[5] = v376;
  *(v377 + 90) = *(v484 + 10);
  v378 = v480;
  *v377 = v479;
  v377[1] = v378;
  v377[2] = v481;
  v377[3] = result;
  __break(1u);
  return result;
}

uint64_t specialized Collection.count.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v156 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v124 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v155 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v124 - v5;
  v7 = v0[1];
  v8 = v0[15];
  v9 = v0[19];
  v10 = v0[22];
  v11 = v0[26];
  v157 = v0[23];
  v158 = v11;
  result = type metadata accessor for AttributedString.Runs();
  if (*(v0 + *(result + 28)) == 1)
  {
    v132 = v1;
    v137 = result;
    result = 0;
    v15 = *(v0 + 112);
    v16 = v0[12];
    v17 = v0[13];
    v19 = v0[8];
    v18 = v0[9];
    v139 = v0[7];
    v140 = v0[6];
    v125 = v157 >> 10;
    v21 = v0[4];
    v20 = v0[5];
    v145 = v17;
    v146 = v20;
    v128 = v18 >> 10;
    v154 = v4;
    ++v155;
    v127 = (v156 + 16);
    v126 = (v156 + 8);
    v22 = v7;
    v130 = v7;
    v131 = v16;
    v23 = v16;
    v134 = v158;
    v24 = v8;
    v25 = v0[2];
    v151 = v0[3];
    v149 = v0;
    v153 = v3;
    v26 = v19;
    v156 = v6;
    v129 = v8;
    while (1)
    {
      v164 = v15;
      if (v22 >= v8 && (v8 < v22 || v158 == 2 || v23 != 2 && v18 >> 10 >= v125))
      {
        return result;
      }

      if (v22 < v7)
      {
        goto LABEL_134;
      }

      v36 = v7 < v22;
      v37 = v132;
      v38 = v36 || v131 == 2;
      v39 = v38;
      if (!v38)
      {
        if (v23 == 2)
        {
          goto LABEL_157;
        }

        if (v128 > v18 >> 10)
        {
          goto LABEL_144;
        }
      }

      if (v22 >= v24)
      {
        if (v24 < v22)
        {
          goto LABEL_145;
        }

        if (v134 == 2)
        {
          goto LABEL_158;
        }

        if (v23 == 2)
        {
          if (!v39)
          {
            goto LABEL_156;
          }

          goto LABEL_40;
        }

        if (v18 >> 10 >= v157 >> 10)
        {
          goto LABEL_150;
        }
      }

      if ((v39 & 1) == 0)
      {
        if (v23 == 2)
        {
          goto LABEL_156;
        }

        if (v128 > v18 >> 10)
        {
          goto LABEL_148;
        }
      }

LABEL_40:
      if (v24 < v22)
      {
        goto LABEL_135;
      }

      if (v22 >= v24 && v23 != 2)
      {
        if (v134 == 2)
        {
          goto LABEL_159;
        }

        if (v157 >> 10 < v18 >> 10)
        {
          goto LABEL_146;
        }
      }

      if (v21 == 1)
      {
        goto LABEL_155;
      }

      v40 = *v0;
      if (v25 != *(*v0 + 96))
      {
        goto LABEL_155;
      }

      v148 = *v0;
      v141 = result;
      v138 = v24;
      v152 = v25;
      v143 = v23;
      v144 = v18;
      v135 = v26;
      if (v26 == 2)
      {
        v150 = v22;
        v41 = *(v40 + 72);
        if (v41)
        {
          v43 = *(v40 + 80);
          v42 = *(v40 + 88);
          swift_unknownObjectRetain();
          v44 = v21;
          v45 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v152, v151, v21, v41, v43, v42);
          swift_unknownObjectRelease();
          v40 = v148;
        }

        else
        {
          v44 = v21;
          v45 = 0;
        }

        v133 = v146 >> 11;
        v49 = *(v40 + 24);
        v50 = *(v40 + 56);
        v184 = *(v40 + 40);
        v185 = v50;
        v51 = *(v40 + 40);
        v180 = *(v40 + 24);
        v181 = v51;
        v182 = *(v40 + 56);
        v183 = v49;
        v47 = v40;
        BigString.startIndex.getter();
        v147 = v52;
        v186[0] = v183;
        v186[1] = v184;
        v187 = v185;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v186, &v159);
        v136 = BigString.UTF8View.index(_:offsetBy:)();
        result = outlined destroy of BigString(&v183);
        v48 = v44;
        v22 = v150;
      }

      else
      {
        v142 = v21;
        v45 = v146 >> 11;
        v46 = *(v40 + 40);
        v177 = *(v40 + 24);
        v178 = v46;
        v179 = *(v40 + 56);
        v47 = v40;
        swift_unknownObjectRetain();
        v48 = v142;
        v136 = BigString.UTF8View.index(roundingDown:)();
        result = swift_unknownObjectRelease();
        v133 = v45;
      }

      v53 = *(v47 + 72);
      v54 = *(v47 + 96);
      v159 = v152;
      v160 = v151;
      v161 = v48;
      v35 = __OFADD__(v22, 1);
      v55 = v22 + 1;
      if (v35)
      {
        goto LABEL_137;
      }

      v56 = v149;
      if (v152 != v54)
      {
        goto LABEL_138;
      }

      v150 = v55;
      if (v48)
      {
        v57 = *(v48 + 24 * ((v151 >> ((4 * *(v48 + 18) + 8) & 0x3C)) & 0xF) + 24);
        v147 = v45 + v57;
        if (__OFADD__(v45, v57))
        {
          goto LABEL_143;
        }

        if (!v53)
        {
          goto LABEL_136;
        }

        v58 = v149;
        result = swift_unknownObjectRetain();
        v59 = v151;
      }

      else
      {
        v60 = v151;
        swift_unknownObjectRetain();
        v61 = specialized Rope._Node.subscript.getter(v60, v53);

        v147 = v45 + v61;
        if (__OFADD__(v45, v61))
        {
          goto LABEL_149;
        }

        v58 = v56;
        v59 = v151;
        if (!v53)
        {
          goto LABEL_136;
        }
      }

      if (v59 >= (((-15 << ((4 * *(v53 + 18) + 8) & 0x3C)) - 1) & *(v53 + 18) | (*(v53 + 16) << ((4 * *(v53 + 18) + 8) & 0x3C))))
      {
        goto LABEL_136;
      }

      if (v48 && (v62 = v48, v63 = (4 * *(v48 + 18) + 8) & 0x3C, v64 = ((v59 >> v63) & 0xF) + 1, v64 < *(v62 + 16)))
      {
        v65 = v59;
        swift_unknownObjectRelease();
        v66 = (v64 << v63) | ((-15 << v63) - 1) & v65;
      }

      else if (specialized Rope._Node.formSuccessor(of:)(&v159, v53))
      {
        swift_unknownObjectRelease();
        v66 = v160;
      }

      else
      {
        v67 = *(v53 + 18);
        v68 = *(v53 + 16);
        swift_unknownObjectRelease();
        v66 = ((-15 << ((4 * v67 + 8) & 0x3C)) - 1) & v67 | (v68 << ((4 * v67 + 8) & 0x3C));
        v159 = v152;
        v160 = v66;
        v161 = 0;
      }

      v151 = v66;
      v152 = v159;
      v21 = v161;
      v69 = *(v137 + 24);
      if (v164)
      {
        v142 = v161;
        (*v127)(v153, v58 + v69, v37);
        if (v143 == 2)
        {
          v70 = v136;
        }

        else
        {
          v70 = v144;
        }

        v71 = v156;
        RangeSet.ranges.getter();
        v72 = v154;
        v73 = RangeSet.Ranges.count.getter();
        v74 = v72;
        v75 = *v155;
        result = (*v155)(v71, v74);
        if (v73 < 1)
        {
          goto LABEL_130;
        }

        v76 = 0;
        v77 = v70 >> 10;
        while (!__OFADD__(v76, v73))
        {
          v78 = (v76 + v73) / 2;
          v79 = v156;
          v80 = v37;
          RangeSet.ranges.getter();
          v81 = v154;
          RangeSet.Ranges.subscript.getter();
          result = v75(v79, v81);
          if (v77 < v159 >> 10)
          {
            v73 = (v76 + v73) / 2;
          }

          else
          {
            v82 = (v76 + v73) / 2;
            v83 = v163;
            if (v77 < v163 >> 10)
            {
              result = (*v126)(v153, v80);
              v85 = v154;
              v145 = v82;
              v21 = v142;
              goto LABEL_82;
            }

            v76 = v78 + 1;
          }

          v37 = v80;
          if (v76 >= v73)
          {
            goto LABEL_130;
          }
        }

        goto LABEL_131;
      }

      v84 = v156;
      RangeSet.ranges.getter();
      v85 = v154;
      RangeSet.Ranges.subscript.getter();
      v75 = *v155;
      result = (*v155)(v84, v85);
      v83 = v163;
LABEL_82:
      v25 = v152;
      v22 = v150;
      if (v147 >= (v83 >> 11))
      {
        v90 = v145 + 1;
        if (__OFADD__(v145, 1))
        {
          goto LABEL_147;
        }

        v91 = v156;
        RangeSet.ranges.getter();
        v92 = RangeSet.Ranges.count.getter();
        v75(v91, v85);
        if (v90 == v92)
        {
          v0 = v149;
          v22 = v149[15];
          v25 = v149[16];
          v21 = v149[18];
          v151 = v149[17];
          v93 = v149[19];
          v94 = v149[20];
          v26 = v149[22];
          v139 = v149[21];
          v140 = v94;
          v18 = v149[23];
          v23 = v149[26];
          v145 = v149[27];
          v146 = v93;
          v157 = v18;
          v134 = v23;
          v24 = v22;
          v15 = *(v149 + 224);
          v34 = v141;
          v8 = v129;
          v7 = v130;
        }

        else
        {
          RangeSet.ranges.getter();
          RangeSet.Ranges.subscript.getter();
          result = v75(v91, v85);
          v95 = v148;
          v96 = *(v148 + 72);
          v97 = *(v148 + 88);
          v98 = v159 >> 11;
          if (v96)
          {
            v99 = *(v148 + 88);
          }

          else
          {
            v99 = 0;
          }

          if (v99 < v98)
          {
            goto LABEL_152;
          }

          v100 = *(v148 + 96);
          v143 = v162;
          v144 = v159;
          v152 = v100;
          v146 = v161;
          v147 = v160;
          if (v96)
          {
            v101 = *(v148 + 80);
            v103 = (v96 + 16);
            v102 = *(v96 + 16);
            v104 = *(v96 + 18);
            if (v98 < v97 && *(v96 + 16))
            {
              result = swift_unknownObjectRetain_n();
              v150 = v97;
              if (!v104)
              {
                v151 = 0;
                v21 = v96;
LABEL_115:
                v115 = 0;
                v116 = 24;
                v112 = v98;
                while (1)
                {
                  v117 = *(v21 + v116);
                  v98 = v112 - v117;
                  if (__OFSUB__(v112, v117))
                  {
                    goto LABEL_140;
                  }

                  if (__OFADD__(v98, 1))
                  {
                    goto LABEL_141;
                  }

                  if (v98 + 1 < 1)
                  {
                    goto LABEL_124;
                  }

                  ++v115;
                  v116 += 24;
                  v112 -= v117;
                  if (v102 == v115)
                  {
                    v115 = v102;
                    goto LABEL_122;
                  }
                }
              }

              v145 = v101;
              v151 = v104;
              v105 = v96;
              do
              {
                v106 = *v103;
                if (*v103)
                {
                  v108 = 0;
                  v109 = (v96 + 40);
                  while (1)
                  {
                    v110 = *v109;
                    v109 += 3;
                    v111 = v98 - v110;
                    if (__OFSUB__(v98, v110))
                    {
                      goto LABEL_132;
                    }

                    if (__OFADD__(v111, 1))
                    {
                      goto LABEL_133;
                    }

                    if (v111 + 1 < 1)
                    {
                      v106 = v108;
                      goto LABEL_99;
                    }

                    ++v108;
                    v98 = v111;
                    if (v106 == v108)
                    {
                      goto LABEL_108;
                    }
                  }
                }

                v111 = v98;
LABEL_108:
                if (v111)
                {
                  goto LABEL_142;
                }

                v98 = 0;
LABEL_99:
                v151 = (v106 << ((4 * v104 + 8) & 0x3C)) | ((-15 << ((4 * v104 + 8) & 0x3C)) - 1) & v151;
                v107 = *(v96 + 24 + 24 * v106);
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v103 = (v107 + 16);
                LOBYTE(v104) = *(v107 + 18);
                v96 = v107;
              }

              while (v104);
              v114 = v107;
              LODWORD(v102) = *v103;
              if (*v103)
              {
                v21 = v107;
                v96 = v105;
                v101 = v145;
                goto LABEL_115;
              }

              v115 = 0;
              v21 = v114;
              v96 = v105;
              v101 = v145;
LABEL_122:
              if (!v98)
              {
                v112 = 0;
LABEL_124:
                swift_unknownObjectRelease();
                v113 = v151 & 0xFFFFFFFFFFFFF0FFLL | (v115 << 8);
                goto LABEL_125;
              }

              goto LABEL_154;
            }

            swift_unknownObjectRetain();
            v113 = ((-15 << ((4 * v104 + 8) & 0x3C)) - 1) & v104 | (v102 << ((4 * v104 + 8) & 0x3C));
            v112 = 0;
            v21 = 0;
LABEL_125:
            v151 = v113;
            v150 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v152, v113, v21, v96, v101);
            result = swift_unknownObjectRelease();
            v95 = v148;
          }

          else
          {
            v112 = 0;
            v21 = 0;
            v150 = 0;
            v151 = 0;
          }

          v145 = v90;
          v118 = *(v95 + 40);
          v174 = *(v95 + 24);
          v175 = v118;
          v176 = *(v95 + 56);
          if (__OFSUB__(0, v112))
          {
            goto LABEL_153;
          }

          swift_unknownObjectRetain();
          v120 = v143;
          v119 = v144;
          v146 = BigString.UTF8View.index(_:offsetBy:)();
          v139 = v122;
          v140 = v121;
          v26 = v123;
          swift_unknownObjectRelease();
          v23 = v120;
          v18 = v119;
          v15 = 0;
          v0 = v149;
          v22 = v150;
          v34 = v141;
          v8 = v129;
          v7 = v130;
          v24 = v138;
          v25 = v152;
        }
      }

      else
      {
        if (v135 == 2)
        {
          v27 = *(v148 + 24);
          v28 = *(v148 + 56);
          v172 = *(v148 + 40);
          v173 = v28;
          v29 = *(v148 + 40);
          v168 = *(v148 + 24);
          v169 = v29;
          v170 = *(v148 + 56);
          v171 = v27;
          BigString.startIndex.getter();
          v188[0] = v171;
          v188[1] = v172;
          v189 = v173;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v188, &v159);
          v30 = BigString.UTF8View.index(_:offsetBy:)();
          v139 = v32;
          v140 = v31;
          v26 = v33;
          outlined destroy of BigString(&v171);
        }

        else
        {
          v86 = *(v148 + 40);
          v165 = *(v148 + 24);
          v166 = v86;
          v167 = *(v148 + 56);
          if (__OFSUB__(v147, v133))
          {
            goto LABEL_151;
          }

          swift_unknownObjectRetain();
          v30 = BigString.UTF8View.index(_:offsetBy:)();
          v139 = v88;
          v140 = v87;
          v26 = v89;
          swift_unknownObjectRelease();
        }

        v15 = 0;
        v146 = v30;
        v18 = v30;
        v23 = v26;
        v0 = v149;
        v34 = v141;
        v8 = v129;
        v7 = v130;
        v24 = v138;
      }

      v35 = __OFADD__(v34, 1);
      result = v34 + 1;
      if (v35)
      {
        goto LABEL_139;
      }
    }
  }

  v13 = v8 - v7;
  if (!__OFSUB__(v8, v7))
  {
    if (v158 == 2)
    {
      if (v10 != 2)
      {
        v14 = 1;
        goto LABEL_9;
      }
    }

    else
    {
      v14 = 1;
      if (v10 == 2 || (v157 ^ v9) >= 0x400)
      {
LABEL_9:
        result = v13 + v14;
        if (!__OFADD__(v13, v14))
        {
          return result;
        }

        goto LABEL_129;
      }
    }

    v14 = 0;
    goto LABEL_9;
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
  return result;
}