uint64_t Dictionary<>.init(_:)(__int128 *a1)
{
  v69 = *a1;
  if (one-time initialization token for _loadedScopeCache != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v1 = _loadedScopeCache;
    MEMORY[0x1EEE9AC00](a1);
    os_unfair_lock_lock(v1 + 10);
    closure #1 in _loadDefaultAttributes()partial apply(&v68);
    os_unfair_lock_unlock(v1 + 10);
    v2 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14AttributeScope_pXpGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 32) = &type metadata for AttributeScopes.FoundationAttributes;
    *(inited + 40) = &protocol witness table for AttributeScopes.FoundationAttributes;
    v68 = v2;
    specialized Array.append<A>(contentsOf:)(inited);
    v4 = v68;
    v5 = *(v68 + 16);
    if (v5)
    {
      v68 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
      v6 = v68;
      v7 = v4 + 40;
      do
      {
        v8 = static AttributeScope.scopeDescription.getter(*(v7 - 8));

        v68 = v6;
        v10 = *(v6 + 16);
        v9 = *(v6 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v6 = v68;
        }

        *(v6 + 16) = v10 + 1;
        *(v6 + 8 * v10 + 32) = v8;
        v7 += 16;
        --v5;
      }

      while (v5);

      v11 = v6;
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
    }

    v64 = *(v11 + 16);
    if (!v64)
    {
      v13 = MEMORY[0x1E69E7CC8];
LABEL_51:

      return specialized Dictionary<>.init(_:attributeTable:options:)(&v69, v13, 1);
    }

    v12 = 0;
    v63 = v11 + 32;
    v13 = MEMORY[0x1E69E7CC8];
    v62 = v11;
LABEL_12:
    if (v12 < *(v11 + 16))
    {
      break;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    a1 = swift_once();
  }

  v14 = *(v63 + 8 * v12);
  v65 = v12 + 1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = v13;
  v16 = v14 + 64;
  v17 = 1 << *(v14 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v14 + 64);
  v20 = (v17 + 63) >> 6;
  v66 = v14;

  v21 = 0;
  while (1)
  {
    if (!v19)
    {
      while (1)
      {
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
          goto LABEL_53;
        }

        if (v23 >= v20)
        {
          break;
        }

        v19 = *(v16 + 8 * v23);
        ++v21;
        if (v19)
        {
          goto LABEL_24;
        }
      }

      v12 = v65;
      v11 = v62;
      if (v65 == v64)
      {
        goto LABEL_51;
      }

      goto LABEL_12;
    }

    v23 = v21;
LABEL_24:
    v24 = (v23 << 10) | (16 * __clz(__rbit64(v19)));
    v25 = (*(v66 + 48) + v24);
    v27 = *v25;
    v26 = v25[1];
    v67 = *(*(v66 + 56) + v24);

    v28 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v26);
    v30 = *(v13 + 16);
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v34 = v29;
    if (*(v13 + 24) >= v33)
    {
      break;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native & 1);
    v35 = v68;
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v26);
    if ((v34 & 1) != (v36 & 1))
    {
      goto LABEL_58;
    }

LABEL_30:
    v19 &= v19 - 1;
    if (v34)
    {
      v22 = v28;

      *(*(v35 + 56) + 16 * v22) = v67;
    }

    else
    {
      *(v35 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v37 = (*(v35 + 48) + 16 * v28);
      *v37 = v27;
      v37[1] = v26;
      *(*(v35 + 56) + 16 * v28) = v67;
      v38 = *(v35 + 16);
      v32 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v32)
      {
        goto LABEL_54;
      }

      *(v35 + 16) = v39;
    }

    isUniquelyReferenced_nonNull_native = 1;
    v21 = v23;
    v13 = v35;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v35 = v13;
    goto LABEL_30;
  }

  v59 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation19AttributedStringKey_pXpGMd);
  v40 = static _DictionaryStorage.copy(original:)();
  v35 = v40;
  if (!*(v13 + 16))
  {
LABEL_49:

    v68 = v35;
    v28 = v59;
    goto LABEL_30;
  }

  v41 = (v40 + 64);
  v42 = (v13 + 64);
  v43 = ((1 << *(v35 + 32)) + 63) >> 6;
  if (v35 != v13 || v41 >= &v42[8 * v43])
  {
    memmove(v41, v42, 8 * v43);
  }

  v44 = 0;
  *(v35 + 16) = *(v13 + 16);
  v45 = 1 << *(v13 + 32);
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  else
  {
    v46 = -1;
  }

  v47 = v46 & *(v13 + 64);
  v48 = (v45 + 63) >> 6;
  v60 = v48;
  if (v47)
  {
    do
    {
      v49 = __clz(__rbit64(v47));
      v61 = (v47 - 1) & v47;
LABEL_47:
      v52 = 16 * (v49 | (v44 << 6));
      v53 = (*(v13 + 48) + v52);
      v55 = *v53;
      v54 = v53[1];
      v56 = *(*(v13 + 56) + v52);
      v57 = (*(v35 + 48) + v52);
      *v57 = v55;
      v57[1] = v54;
      *(*(v35 + 56) + v52) = v56;

      v48 = v60;
      v47 = v61;
    }

    while (v61);
  }

  v50 = v44;
  while (1)
  {
    v44 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v44 >= v48)
    {
      goto LABEL_49;
    }

    v51 = *(v13 + 64 + 8 * v44);
    ++v50;
    if (v51)
    {
      v49 = __clz(__rbit64(v51));
      v61 = (v51 - 1) & v51;
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_58:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id AttributedString.init(_:attributeTable:options:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = [a1 string];
  v9 = &selRef_lastEditorFormattedName;
  if (v8)
  {
    v10 = v8;
    isTaggedPointer = _objc_isTaggedPointer(v8);
    v12 = v10;
    v13 = v12;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v12);
      switch(TaggedPointerTag)
      {
        case 0:
          LOWORD(v47) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v19)
          {
            [v13 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();

            goto LABEL_22;
          }

          goto LABEL_21;
        case 0x16:
          result = [v13 UTF8String];
          if (result)
          {
            result = String.init(utf8String:)(result);
            if (v18)
            {
              goto LABEL_8;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          return result;
        case 2:
          *&v37 = a4;
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_22:
          v9 = &selRef_lastEditorFormattedName;
          goto LABEL_23;
      }
    }

    v42[0] = 0;
    v43[0] = 0;
    LOBYTE(v47) = 0;
    LOBYTE(v45[0]) = 0;
    if (__CFStringIsCF())
    {
LABEL_8:

      goto LABEL_22;
    }

    v15 = v13;
    String.init(_nativeStorage:)();
    if (v16 || (v43[0] = [v15 length]) == 0)
    {

      goto LABEL_22;
    }

    String.init(_cocoaString:)();
LABEL_21:

    goto LABEL_22;
  }

LABEL_23:
  BigString.init(_:)();
  v43[0] = 0;
  MEMORY[0x1865D26B0](v43, 8);
  *&v48 = 0;
  *(&v48 + 1) = v43[0];
  v46 = 0;
  v47 = 0uLL;
  v20 = BigString.startIndex.getter();
  v45[1] = v21;
  v45[2] = v22;
  v45[3] = v23;
  v44[0] = v20;
  v44[1] = v21;
  v44[2] = v22;
  v44[3] = v23;
  v45[0] = v20;
  v39 = 0;
  v40 = MEMORY[0x1E69E7CC8];
  v41 = MEMORY[0x1E69E7CD0];
  v38 = 0;
  v24 = [a1 v9[12]];
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  *(v25 + 32) = &v46;
  *(v25 + 40) = v44;
  *(v25 + 48) = v45;
  *(v25 + 56) = v49;
  *(v25 + 72) = v50;
  *(v25 + 88) = v51;
  *(v25 + 104) = &v39;
  *(v25 + 112) = &v47;
  *(v25 + 120) = &v38;
  v26 = swift_allocObject();
  *(v26 + 16) = closure #1 in AttributedString.init(_:attributeTable:options:)partial apply;
  *(v26 + 24) = v25;
  v43[4] = thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v43[5] = v26;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 1107296256;
  v43[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v43[3] = &block_descriptor_168;
  v27 = _Block_copy(v43);

  outlined init with copy of BigString(&v49, v42);

  [a1 enumerateAttributesInRange:0 options:v24 usingBlock:{0, v27}];
  _Block_release(v27);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v28 = v46;
  if (v46)
  {
    swift_willThrow();
    v29 = v28;
    outlined destroy of BigString(&v49);

    return swift_unknownObjectRelease();
  }

  v30 = v39;
  if (v39 > 0)
  {
    v31 = v40;
    v32 = v41;

    specialized Rope.append(_:)(v30, v31, v32);
  }

  v36 = v47;
  v37 = v48;
  type metadata accessor for AttributedString.Guts();
  v26 = swift_allocObject();
  v33 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v49, v43);
  if (v36)
  {
    v34 = v37 == 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = v34;
  swift_unknownObjectRetain();
  if (v35 != v33)
  {
    goto LABEL_40;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_41:
    swift_once();
  }

  *(v26 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  *(v26 + 24) = v49;
  *(v26 + 40) = v50;
  *(v26 + 56) = v51;
  *(v26 + 88) = v37;
  *(v26 + 72) = v36;
  *(v26 + 104) = MEMORY[0x1E69E7CC0];
  if (v38 == 1)
  {
    AttributedString.Guts.adjustConstrainedAttributesForUntrustedRuns()();
  }

  outlined destroy of BigString(&v49);

  result = swift_unknownObjectRelease();
  *a4 = v26;
  return result;
}

uint64_t String.Index.init<A>(_:within:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v8 = String.Index.init<A>(_:within:)();
  (*(v5 + 8))(a2, a3);
  return v8;
}

uint64_t AttributedString.Index.init<A>(_:within:)@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, ValueMetadata *a3@<X2>, void (**a4)(void *__return_ptr, void, void)@<X3>, unint64_t *a5@<X8>)
{
  if (a3 == &type metadata for AttributedString || a3 == &type metadata for AttributedSubstring)
  {
    v10 = *a2;
  }

  else
  {
    (a4)[7](v40, a3, a4);
    v10 = v40[0];
  }

  v11 = *(v10 + 24);
  v12 = *(v10 + 56);
  v42[1] = *(v10 + 40);
  v42[2] = v12;
  v42[0] = v11;
  v13 = *(v10 + 24);
  v14 = *(v10 + 40);
  v44 = *(v10 + 56);
  v43[0] = v13;
  v43[1] = v14;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v43, v40);

  v15 = BigString.index(from:)(a1);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  outlined destroy of BigString(v42);
  if (v21 == 2)
  {
    goto LABEL_16;
  }

  (a4)[4](v40, a3, a4);
  v22 = v15 >> 10;
  if (v15 >> 10 < v40[0] >> 10)
  {
    goto LABEL_16;
  }

  (a4)[5](v40, a3, a4);
  if (v22 > v40[0] >> 10)
  {
    goto LABEL_16;
  }

  if (a3 == &type metadata for AttributedString || a3 == &type metadata for AttributedSubstring)
  {
    v23 = *a2;
  }

  else
  {
    (a4)[7](v40, a3, a4);
    v23 = v40[0];
  }

  v24 = *(v23 + 24);
  v25 = *(v23 + 56);
  v41[1] = *(v23 + 40);
  v41[2] = v25;
  v41[0] = v24;
  v26 = *(v23 + 24);
  v27 = *(v23 + 40);
  v46 = *(v23 + 56);
  v45[0] = v26;
  v45[1] = v27;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v45, v40);

  v28 = MEMORY[0x1865CA460](v15, v17, v19, v21);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  outlined destroy of BigString(v41);
  if (v22 != v28 >> 10)
  {
LABEL_16:
    result = (*(a3[-1].Description + 1))(a2, a3);
    v38 = 0;
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    a5[3] = 2;
  }

  else
  {
    v35 = &type metadata for AttributedString;
    if (a3 == &type metadata for AttributedString || (v35 = &type metadata for AttributedSubstring, a3 == &type metadata for AttributedSubstring))
    {
      v36 = *a2;
      v39 = *(v35[-1].Description + 1);

      v39(a2, v35);
    }

    else
    {
      (a4)[7](v40, a3, a4);
      (*(a3[-1].Description + 1))(a2, a3);
      v36 = v40[0];
    }

    v38 = *(v36 + 16);

    *a5 = v28;
    a5[1] = v30;
    a5[2] = v32;
    a5[3] = v34;
  }

  a5[4] = v38;
  return result;
}

uint64_t BigString.index(from:)(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC) == 8)
  {
    if (BigString.UTF16View.count.getter() >= (a1 >> 16))
    {
      BigString.startIndex.getter();
      result = BigString.UTF16View.index(_:offsetBy:)();
      if (v1 >> 14)
      {
        return BigString.UTF8View.index(_:offsetBy:)();
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v3 = BigString.Index.init(_utf8Offset:utf16TrailingSurrogate:)();
    if (BigString.endIndex.getter() >> 10 >= v3 >> 10)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *_NSRange.init<A, B>(_:in:)(uint64_t a1, uint64_t *a2, uint64_t a3, ValueMetadata *a4, uint64_t a5, uint64_t a6)
{
  v23 = *(a6 + 56);
  v23(&v27, a4, a6);
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  v36[2] = v29;
  v36[3] = v30;
  v36[4] = v31;
  v36[0] = v27;
  v36[1] = v28;
  outlined destroy of AttributedString.CharacterView(v36);
  v11 = *&v32[0];
  v12 = *(&v33 + 1);
  v25 = *(a6 + 32);
  result = v25(v32, a4, a6);
  if (v11 >> 10 < *&v32[0] >> 10)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = (*(a6 + 40))(v32, a4, a6);
  if (*&v32[0] >> 10 < v12 >> 10)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (a4 == &type metadata for AttributedString || a4 == &type metadata for AttributedSubstring)
  {
    v14 = *a2;
  }

  else
  {
    v23(v32, a4, a6);
    v14 = *&v32[0];
  }

  v15 = *(v14 + 24);
  v16 = *(v14 + 56);
  v32[1] = *(v14 + 40);
  v33 = v16;
  v32[0] = v15;
  v18 = *(v14 + 64);
  v22 = *(v14 + 40);
  v24 = *(v14 + 24);
  v35 = *(v14 + 56);
  v17 = v35;
  v19 = *(v14 + 40);
  v34[0] = v24;
  v34[1] = v19;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v34, &v27);

  v27 = v24;
  v28 = v22;
  *&v29 = v17;
  *(&v29 + 1) = v18;
  BigString.startIndex.getter();
  outlined init with copy of Rope<BigString._Chunk>._Node?(v34, &v26);
  v25(&v26, a4, a6);
  v20 = BigString.UTF16View.distance(from:to:)();
  v21 = BigString.UTF16View.distance(from:to:)();
  BigString.UTF16View.distance(from:to:)();
  outlined destroy of BigString(v32);
  outlined destroy of BigString(v32);
  (*(a4[-1].Description + 1))(a2, a4);
  (*(*(a3 - 8) + 8))(a1);
  result = (v21 - v20);
  if (__OFSUB__(v21, v20))
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t _NSRange.init<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 88);
  v6 = *(a1 + 96);
  if ((*(a1 + 64) & 1) == 0 && (*(a1 + 104) & 1) == 0)
  {
    v11 = *(a1 + 40);
    v12 = *(a1 + 72);
    (*(*(a3 - 8) + 8))(a2, a3);
    result = v11;
    v9 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  AttributedString.MarkdownSourcePosition.calculateOffsets<A>(within:)(a2, a3, a4, v13);
  (*(*(a3 - 8) + 8))(a2, a3);
  if (v18)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  result = v14;
  v7 = v16;
  v6 = v17;
  v9 = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    goto LABEL_12;
  }

LABEL_6:
  v10 = result;
  if (v9 == v7)
  {
    v10 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_14;
    }
  }

  if (__OFSUB__(v10, result))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance AttributedString._IndexConverterFromString@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v16 = v1[6];
  v4 = v16;
  v5 = v1[1];
  v11[0] = *v1;
  v11[1] = v5;
  v6 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v6;
  *a1 = v11[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  v8 = (v15 >> 11 << 16) | 4;
  *(a1 + 112) = (v13 >> 11 << 16) | 4;
  *(a1 + 120) = v8;
  return outlined init with copy of AttributedString._IndexConverterFromString(v11, &v10);
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance AttributedString._IndexConverterFromString@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized Collection.index(_:offsetBy:)(*a1, a2);
  *a3 = result;
  return result;
}

void *specialized Collection.index(_:offsetBy:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    v5 = result;
    result = *result;
    if (a2)
    {
      v7 = *(v3 + 32);
      do
      {
        Substring.index(after:)();
        result = BigString.Index.init(_utf8Offset:)();
        --v4;
      }

      while (v4);
    }

    else
    {
      v10 = v5[3];
      v7 = v5[4];
      v8 = v5[1];
      v9 = v5[2];
    }

    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
    a3[4] = v7;
  }

  return result;
}

uint64_t specialized Collection.index(_:offsetBy:)(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    goto LABEL_14;
  }

  v2 = a2;
  v3 = result;
  if (!a2)
  {
    return v3;
  }

  while ((v3 & 0xC) != 8)
  {
    v5 = BigString.Index.init(_utf8Offset:utf16TrailingSurrogate:)();
    v4 = BigString.endIndex.getter();
    result = v5;
    if (v4 >> 10 < v5 >> 10)
    {
      goto LABEL_13;
    }

LABEL_4:
    v3 = (BigString.index(after:)() >> 11 << 16) | 4;
    if (!--v2)
    {
      return v3;
    }
  }

  result = BigString.UTF16View.count.getter();
  if (result >= (v3 >> 16))
  {
    BigString.startIndex.getter();
    BigString.UTF16View.index(_:offsetBy:)();
    if (v3 >> 14)
    {
      BigString.UTF8View.index(_:offsetBy:)();
    }

    goto LABEL_4;
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance AttributedString._IndexConverterFromString@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized Collection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t specialized Collection.index(_:offsetBy:limitedBy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    v6 = result;
    result = *result;
    if (a2)
    {
      v8 = *a3;
      while ((result ^ v8) > 0x3FF)
      {
        v9 = *(v4 + 32);
        Substring.index(after:)();
        result = BigString.Index.init(_utf8Offset:)();
        if (!--v5)
        {
          goto LABEL_8;
        }
      }

      v9 = 0;
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 2;
    }

    else
    {
      v12 = v6[3];
      v9 = v6[4];
      v10 = v6[1];
      v11 = v6[2];
LABEL_8:
      *a4 = result;
      a4[1] = v10;
      a4[2] = v11;
      a4[3] = v12;
    }

    a4[4] = v9;
  }

  return result;
}

uint64_t specialized Collection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    goto LABEL_17;
  }

  v3 = a2;
  v4 = result;
  if (!a2)
  {
    return v4;
  }

  while (1)
  {
    if ((v4 ^ a3) < 0x4000)
    {
      return 0;
    }

    if ((v4 & 0xC) != 8)
    {
      break;
    }

    result = BigString.UTF16View.count.getter();
    if (result < (v4 >> 16))
    {
      goto LABEL_16;
    }

    BigString.startIndex.getter();
    BigString.UTF16View.index(_:offsetBy:)();
    if (v4 >> 14)
    {
      BigString.UTF8View.index(_:offsetBy:)();
    }

LABEL_5:
    v4 = (BigString.index(after:)() >> 11 << 16) | 4;
    if (!--v3)
    {
      return v4;
    }
  }

  v5 = BigString.Index.init(_utf8Offset:utf16TrailingSurrogate:)();
  result = BigString.endIndex.getter();
  if (result >> 10 >= v5 >> 10)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t specialized Collection.distance(from:to:)(unint64_t *a1, void *a2)
{
  result = *a1;
  v3 = *a2 >> 10;
  if (v3 < result >> 10)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (result >> 10 != v3)
  {
    for (i = 0; ; ++i)
    {
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      Substring.index(after:)();
      result = BigString.Index.init(_utf8Offset:)();
      if (v3 == result >> 10)
      {
        return v4;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return 0;
}

unint64_t specialized Collection.distance(from:to:)(unint64_t result, unint64_t a2)
{
  v2 = a2 >> 14;
  if (a2 >> 14 < result >> 14)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (result >> 14 != v2)
  {
    v4 = result;
    for (i = 0; ; ++i)
    {
      v3 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((v4 & 0xC) == 8)
      {
        result = BigString.UTF16View.count.getter();
        if (result < (v4 >> 16))
        {
          goto LABEL_15;
        }

        BigString.startIndex.getter();
        BigString.UTF16View.index(_:offsetBy:)();
        if (v4 >> 14)
        {
          BigString.UTF8View.index(_:offsetBy:)();
        }
      }

      else
      {
        v6 = BigString.Index.init(_utf8Offset:utf16TrailingSurrogate:)();
        result = BigString.endIndex.getter();
        if (result >> 10 < v6 >> 10)
        {
          goto LABEL_16;
        }
      }

      result = BigString.index(after:)();
      v4 = (result >> 11 << 16) | 4;
      if (v2 == ((32 * result) & 0xFFFFFFFFFFFF0000) >> 14)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return 0;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance AttributedString._IndexConverterFromString(void *result, void *a2)
{
  v2 = *result >> 14;
  if (v2 < *a2 >> 14 || v2 >= a2[1] >> 14)
  {
    __break(1u);
  }

  return result;
}

{
  v2 = *result >> 14;
  if (v2 < *a2 >> 14 || a2[1] >> 14 < v2)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result >> 14 < *a2 >> 14 || a2[1] >> 14 < result[1] >> 14)
  {
    __break(1u);
  }

  return result;
}

unint64_t protocol witness for Collection.index(after:) in conformance AttributedString._IndexConverterFromString@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = BigString.index(from:)(*a1);
  if (v4 == 2)
  {
    __break(1u);
  }

  else
  {
    result = BigString.index(after:)();
    *a2 = (result >> 11 << 16) | 4;
  }

  return result;
}

unint64_t protocol witness for Collection.formIndex(after:) in conformance AttributedString._IndexConverterFromString(unint64_t *a1)
{
  result = BigString.index(from:)(*a1);
  if (v3 == 2)
  {
    __break(1u);
  }

  else
  {
    result = BigString.index(after:)();
    *a1 = (result >> 11 << 16) | 4;
  }

  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance AttributedString._IndexConverterFromString@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 56) = *(v1 + 56);
  *(a1 + 72) = *(v1 + 72);
  result = *(v1 + 88);
  *(a1 + 88) = result;
  *(a1 + 104) = *(v1 + 104);
  *(a1 + 112) = (v2 >> 11 << 16) | 4;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance AttributedString._IndexConverterFromString()
{
  v1 = v0[5];
  v6[4] = v0[4];
  v6[5] = v1;
  v6[6] = v0[6];
  v2 = v0[1];
  v6[0] = *v0;
  v6[1] = v2;
  v3 = v0[3];
  v6[2] = v0[2];
  v6[3] = v3;
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(v6);
  outlined destroy of AttributedString._IndexConverterFromString(v6);
  return v4;
}

uint64_t Range<>.init<A>(_:in:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, ValueMetadata *a4@<X3>, void (**a5)(__int128 *__return_ptr, ValueMetadata *, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  if (result == 0x7FFFFFFFFFFFFFFFLL || result < 0 || a2 < 0)
  {
    result = (*(a4[-1].Description + 1))(a3, a4);
LABEL_14:
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    *(a6 + 24) = 2;
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
    *(a6 + 64) = 0u;
    return result;
  }

  v9 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    v11 = a5[4];
    v11(&v80, a4, a5);
    v12 = a5[5];
    v12(&v71, a4, a5);
    v89 = v80;
    v90 = v81;
    v91 = v71;
    v92 = v72;
    v42 = v12;
    v43 = v11;
    v47 = v9;
    if (a4 == &type metadata for AttributedString || a4 == &type metadata for AttributedSubstring)
    {
      v13 = *a3;
    }

    else
    {
      a5[7](&v80, a4, a5);
      v13 = v80;
    }

    v14 = *(v13 + 24);
    v15 = *(v13 + 56);
    v93[1] = *(v13 + 40);
    v93[2] = v15;
    v93[0] = v14;
    v16 = *(v13 + 24);
    v17 = *(v13 + 40);
    v95 = *(v13 + 56);
    v94[0] = v16;
    v94[1] = v17;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v94, &v80);

    BigString.subscript.getter();
    outlined destroy of BigString(v93);
    v61 = v50;
    v62 = v51;
    v63 = v52;
    v18 = v53;
    v19 = v54;
    v21 = v55;
    v20 = v56;
    v59 = v57;
    v60 = v58;
    v80 = v50;
    v81 = v51;
    v82 = v52;
    v87 = v57;
    v88 = v58;
    v83 = v53;
    v84 = v54;
    v85 = v55;
    v86 = v56;
    outlined init with copy of BigSubstring(&v50, &v71);
    v22 = BigSubstring.UTF16View.count.getter();
    outlined destroy of BigSubstring.UTF16View(&v80);
    if (v22 < v47 || (v71 = v61, v72 = v62, v73 = v63, v78 = v59, v79 = v60, v74 = v18, v75 = v19, v76 = v21, v77 = v20, outlined init with copy of BigSubstring(&v50, v64), v41 = BigSubstring.UTF16View.index(_:offsetBy:)(), v24 = v23, v26 = v25, v45 = v27, outlined destroy of BigSubstring.UTF16View(&v71), v64[0] = v61, v64[1] = v62, v64[2] = v63, v69 = v59, v70 = v60, v65 = v18, v66 = v19, v67 = v21, v68 = v20, outlined init with copy of BigSubstring(&v50, v49), v40 = v24, v28 = v26, v29 = BigSubstring.UTF16View.index(_:offsetBy:)(), v31 = v30, v46 = v32, v39 = v33, outlined destroy of BigSubstring.UTF16View(v64), v43(v49, a4, a5), v41 >> 10 < *&v49[0] >> 10) || (v42(v49, a4, a5), *&v49[0] >> 10 < v29 >> 10))
    {
      (*(a4[-1].Description + 1))(a3, a4);
      result = outlined destroy of BigSubstring(&v50);
      goto LABEL_14;
    }

    v48 = v31;
    v34 = &type metadata for AttributedString;
    if (a4 == &type metadata for AttributedString || (v34 = &type metadata for AttributedSubstring, a4 == &type metadata for AttributedSubstring))
    {
      v44 = *(*a3 + 16);
      outlined destroy of BigSubstring(&v50);
      v36 = *a3;
      v37 = *(v34[-1].Description + 1);

      v37(a3, v34);
    }

    else
    {
      v35 = a5[7];
      v35(v49, a4, a5);
      v44 = *(*&v49[0] + 16);

      v35(v49, a4, a5);
      v28 = v26;
      outlined destroy of BigSubstring(&v50);
      (*(a4[-1].Description + 1))(a3, a4);
      v36 = *&v49[0];
    }

    v38 = *(v36 + 16);

    *a6 = v41;
    *(a6 + 8) = v40;
    *(a6 + 16) = v28;
    *(a6 + 24) = v45;
    *(a6 + 32) = v44;
    *(a6 + 40) = v29;
    *(a6 + 48) = v48;
    *(a6 + 56) = v46;
    *(a6 + 64) = v39;
    *(a6 + 72) = v38;
  }

  return result;
}

uint64_t Range<>.init<A>(_range:in:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, ValueMetadata *a4@<X3>, void (**a5)(void *__return_ptr, void, void)@<X4>, uint64_t a6@<X8>)
{
  v12 = &type metadata for AttributedString;
  if (a4 == &type metadata for AttributedString || a4 == &type metadata for AttributedSubstring)
  {
    v13 = *a3;
  }

  else
  {
    (a5)[7](v44, a4, a5);
    v13 = v44[0];
  }

  v14 = *(v13 + 24);
  v15 = *(v13 + 56);
  v46[1] = *(v13 + 40);
  v46[2] = v15;
  v46[0] = v14;
  v16 = *(v13 + 24);
  v17 = *(v13 + 40);
  v48 = *(v13 + 56);
  v47[0] = v16;
  v47[1] = v17;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v47, v44);

  v18 = BigString.index(from:)(a1);
  v43 = v19;
  v21 = v20;
  v23 = v22;
  outlined destroy of BigString(v46);
  if (v23 == 2)
  {
    goto LABEL_13;
  }

  if (a4 == &type metadata for AttributedString || a4 == &type metadata for AttributedSubstring)
  {
    v24 = *a3;
  }

  else
  {
    (a5)[7](v44, a4, a5);
    v24 = v44[0];
  }

  v25 = *(v24 + 24);
  v26 = *(v24 + 56);
  v45[1] = *(v24 + 40);
  v45[2] = v26;
  v45[0] = v25;
  v27 = *(v24 + 24);
  v28 = *(v24 + 40);
  v50 = *(v24 + 56);
  v49[0] = v27;
  v49[1] = v28;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v49, v44);

  v29 = BigString.index(from:)(a2);
  v41 = v30;
  v42 = v29;
  v40 = v31;
  v33 = v32;
  outlined destroy of BigString(v45);
  if (v33 == 2 || ((a5)[4](v44, a4, a5), v18 >> 10 < v44[0] >> 10) || ((a5)[5](v44, a4, a5), v44[0] >> 10 < v42 >> 10))
  {
LABEL_13:
    result = (*(a4[-1].Description + 1))(a3, a4);
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    *(a6 + 24) = 2;
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
    *(a6 + 64) = 0u;
  }

  else
  {
    if (a4 == &type metadata for AttributedString || (v12 = &type metadata for AttributedSubstring, a4 == &type metadata for AttributedSubstring))
    {
      v35 = *a3;
      v39 = *(*a3 + 16);
      v36 = *(v12[-1].Description + 1);

      v36(a3, v12);
    }

    else
    {
      v38 = a5[7];
      v38(v44, a4, a5);
      v39 = *(v44[0] + 16);

      v38(v44, a4, a5);
      (*(a4[-1].Description + 1))(a3, a4);
      v35 = v44[0];
    }

    v37 = *(v35 + 16);

    *a6 = v18;
    *(a6 + 8) = v43;
    *(a6 + 16) = v21;
    *(a6 + 24) = v23;
    *(a6 + 32) = v39;
    *(a6 + 40) = v42;
    *(a6 + 48) = v41;
    *(a6 + 56) = v40;
    *(a6 + 64) = v33;
    *(a6 + 72) = v37;
  }

  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance AttributedString._IndexConverterFromAttributedString@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  result = BigString.Index.init(_utf8Offset:)();
  *a1 = result;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v3;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance AttributedString._IndexConverterFromAttributedString@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  result = BigString.Index.init(_utf8Offset:)();
  *a1 = result;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v3;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance AttributedString._IndexConverterFromAttributedString(uint64_t *a1, uint64_t a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v6;
  *(v4 + 32) = v5;
  return protocol witness for Collection.subscript.read in conformance AttributedString.UnicodeScalarView;
}

unint64_t protocol witness for Collection.subscript.getter in conformance AttributedString._IndexConverterFromAttributedString@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a1[3];
  v13 = a1[1];
  v15 = a1[2];
  v16 = *a1;
  v14 = a1[4];
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v9 = BigString.Index.init(_utf8Offset:)();
  result = BigString.Index.init(_utf8Offset:)();
  if (result >> 10 < v9 >> 10)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 >> 10 > v16 >> 10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result >> 10 < *(&v15 + 1) >> 10)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *(a2 + 96) = v7;
  *(a2 + 104) = v6;
  *(a2 + 112) = v8;
  *a2 = v16;
  *(a2 + 16) = v13;
  *(a2 + 32) = v15;
  *&v11 = v5;
  *(&v11 + 1) = v4;
  *(a2 + 48) = v12;
  *(a2 + 64) = v14;
  *(a2 + 80) = v11;
}

uint64_t protocol witness for Collection.indices.getter in conformance AttributedString._IndexConverterFromAttributedString@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = BigString.Index.init(_utf8Offset:)();
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  *(a1 + 72) = v4;
  *(a1 + 80) = BigString.Index.init(_utf8Offset:)();
  *(a1 + 88) = v8;
  *(a1 + 96) = v9;
  *(a1 + 104) = v10;
  *(a1 + 112) = v4;
}

void *protocol witness for Collection.index(_:offsetBy:) in conformance AttributedString._IndexConverterFromAttributedString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v8 = *(a1 + 32);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  v11 = *(v3 + 4);
  return specialized Collection.index(_:offsetBy:)(v7, a2, a3);
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance AttributedString._IndexConverterFromAttributedString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v5;
  v10 = *(a1 + 32);
  v6 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v6;
  v12 = *(a3 + 32);
  v7 = v4[1];
  v13 = *v4;
  v14 = v7;
  v15 = *(v4 + 4);
  return specialized Collection.index(_:offsetBy:limitedBy:)(v9, a2, v11, a4);
}

unint64_t protocol witness for Collection.distance(from:to:) in conformance AttributedString._IndexConverterFromAttributedString(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v8 = *(a1 + 32);
  v4 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v4;
  v10 = *(a2 + 32);
  v5 = v2[1];
  v11 = *v2;
  v12 = v5;
  v13 = *(v2 + 4);
  return specialized Collection.distance(from:to:)(v7, v9);
}

uint64_t protocol witness for Collection.index(after:) in conformance AttributedString._IndexConverterFromAttributedString@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  Substring.index(after:)();
  result = BigString.Index.init(_utf8Offset:)();
  *a1 = result;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v3;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance AttributedString._IndexConverterFromAttributedString(uint64_t *a1)
{
  v3 = *(v1 + 32);
  Substring.index(after:)();
  result = BigString.Index.init(_utf8Offset:)();
  *a1 = result;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v3;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance AttributedString._IndexConverterFromAttributedString@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  result = BigString.Index.init(_utf8Offset:)();
  *(a1 + 40) = result;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  *(a1 + 72) = v5;
  return result;
}

unint64_t protocol witness for Collection.count.getter in conformance AttributedString._IndexConverterFromAttributedString()
{
  v1 = v0[1];
  v11 = *v0;
  v12 = v1;
  v13 = *(v0 + 4);
  v9[0] = BigString.Index.init(_utf8Offset:)();
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v13;
  v10[0] = BigString.Index.init(_utf8Offset:)();
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = v13;
  return specialized Collection.distance(from:to:)(v9, v10);
}

unint64_t protocol witness for Sequence._copyToContiguousArray() in conformance AttributedString._IndexConverterFromAttributedString()
{
  v1 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v1;
  v5 = *(v0 + 32);
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)();
  outlined destroy of AttributedString._IndexConverterFromAttributedString(v4);
  return v2;
}

uint64_t Range<>.init<A, B>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  (*(v14 + 16))(v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  if (swift_dynamicCast())
  {
    v42 = v47;
    v43 = v48;
    v44 = v49;
    v40 = v45;
    v41 = v46;
    (*(v10 + 16))(v12, a2, a4);
    v18 = Substring.init<A>(_:)();
    v20 = specialized Range<>.init(_range:in:)(&v40, v18, v19);
    v22 = v21;
    (*(v10 + 8))(a2, a4);
  }

  else
  {
    v34[1] = a5;
    (*(v10 + 16))(v12, a2, a4);
    v23 = Substring.init<A>(_:)();
    v25 = v24;
    v27 = v26;
    v34[0] = a2;
    v29 = v28;
    v30 = one-time initialization token for _nextVersion;

    if (v30 != -1)
    {
      swift_once();
    }

    add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    *&v35 = v23;
    *(&v35 + 1) = v25;
    *&v36 = v27;
    *(&v36 + 1) = v29;
    *&v37 = add_explicit;
    lazy protocol witness table accessor for type AttributedString._IndexConverterFromAttributedString and conformance AttributedString._IndexConverterFromAttributedString();
    dispatch thunk of RangeExpression.relative<A>(to:)();

    v37 = v42;
    v38 = v43;
    v39 = v44;
    v36 = v41;
    v35 = v40;
    v20 = specialized Range<>.init(_range:in:)(&v35, v23, v25);
    v22 = v32;
    (*(v10 + 8))(v34[0], a4);
  }

  (*(v14 + 8))(a1, a3);
  if (v22)
  {
    return 0;
  }

  return v20;
}

uint64_t Range<>.init<A>(_:in:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v20 - v10;
  v12 = *(a1 + 4);
  v13 = *(a1 + 64);
  AssociatedConformanceWitness = *(a1 + 9);
  v15 = *(a1 + 104);
  if (v13 & 1) != 0 || (*(a1 + 104))
  {
    v16 = a1[1];
    v26 = *a1;
    v27 = v16;
    v28 = v12;
    v29 = *(a1 + 40);
    v30 = *(a1 + 7);
    v31 = v13;
    *v32 = *(a1 + 65);
    *&v32[3] = *(a1 + 17);
    v33 = AssociatedConformanceWitness;
    v34 = a1[5];
    v35 = *(a1 + 12);
    v36 = v15;
    AttributedString.MarkdownSourcePosition.calculateOffsets<A>(within:)(a2, a3, a4, v37);
    if (v38)
    {
      (*(*(a3 - 8) + 8))(a2, a3);
      return 0;
    }

    v22 = v37[4];
    dispatch thunk of StringProtocol.utf8.getter();
    dispatch thunk of Collection.startIndex.getter();
    v24 = v25;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    dispatch thunk of Collection.index(_:offsetBy:)();
    v18 = *(v9 + 8);
    v9 += 8;
    v21 = v18;
    v18(v11, AssociatedTypeWitness);
    v17 = v26;
    dispatch thunk of StringProtocol.utf8.getter();
    result = dispatch thunk of Collection.startIndex.getter();
    v23 = v24;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_12;
    }

    dispatch thunk of Collection.index(_:offsetBy:)();
    (*(*(a3 - 8) + 8))(a2, a3);
    v21(v11, AssociatedTypeWitness);
    if (v25 >> 14 >= v17 >> 14)
    {
      return v17;
    }

    __break(1u);
  }

  dispatch thunk of StringProtocol.utf8.getter();
  dispatch thunk of Collection.startIndex.getter();
  v25 = v37[0];
  v21 = swift_getAssociatedConformanceWitness();
  dispatch thunk of Collection.index(_:offsetBy:)();
  v22 = *(v9 + 8);
  v22(v11, AssociatedTypeWitness);
  v17 = v26;
  dispatch thunk of StringProtocol.utf8.getter();
  result = dispatch thunk of Collection.startIndex.getter();
  v24 = v25;
  if (__OFADD__(AssociatedConformanceWitness, 1))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  dispatch thunk of Collection.index(_:offsetBy:)();
  (*(*(a3 - 8) + 8))(a2, a3);
  result = (v22)(v11, AssociatedTypeWitness);
  if (v37[0] >> 14 >= v17 >> 14)
  {
    return v17;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t protocol witness for static ObjectiveCConvertibleAttributedStringKey.objectiveCValue(for:) in conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute()
{
  v0 = String._bridgeToObjectiveCImpl()();

  return v0;
}

unint64_t lazy protocol witness table accessor for type AttributedString._IndexConverterFromString and conformance AttributedString._IndexConverterFromString()
{
  result = lazy protocol witness table cache variable for type AttributedString._IndexConverterFromString and conformance AttributedString._IndexConverterFromString;
  if (!lazy protocol witness table cache variable for type AttributedString._IndexConverterFromString and conformance AttributedString._IndexConverterFromString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString._IndexConverterFromString and conformance AttributedString._IndexConverterFromString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString._IndexConverterFromString and conformance AttributedString._IndexConverterFromString;
  if (!lazy protocol witness table cache variable for type AttributedString._IndexConverterFromString and conformance AttributedString._IndexConverterFromString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString._IndexConverterFromString and conformance AttributedString._IndexConverterFromString);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString._IndexConverterFromAttributedString and conformance AttributedString._IndexConverterFromAttributedString()
{
  result = lazy protocol witness table cache variable for type AttributedString._IndexConverterFromAttributedString and conformance AttributedString._IndexConverterFromAttributedString;
  if (!lazy protocol witness table cache variable for type AttributedString._IndexConverterFromAttributedString and conformance AttributedString._IndexConverterFromAttributedString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString._IndexConverterFromAttributedString and conformance AttributedString._IndexConverterFromAttributedString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString._IndexConverterFromAttributedString and conformance AttributedString._IndexConverterFromAttributedString;
  if (!lazy protocol witness table cache variable for type AttributedString._IndexConverterFromAttributedString and conformance AttributedString._IndexConverterFromAttributedString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString._IndexConverterFromAttributedString and conformance AttributedString._IndexConverterFromAttributedString);
  }

  return result;
}

uint64_t specialized Range<>.init(_range:in:)(uint64_t a1, unint64_t a2, unint64_t a3)
{

  v6 = (16 * *a1) & 0x4000 | (*a1 >> 11 << 16);
  if (v6 >> 14 >= a2 >> 14 && a3 >> 14 >= (((16 * *(a1 + 40)) & 0x4000) | (*(a1 + 40) >> 11 << 16)) >> 14)
  {
    return v6 | 4;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for AttributedString._IndexConverterFromString(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for AttributedString._IndexConverterFromString(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t outlined init with copy of AttributedString.Runs.NSAttributesSlice(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double specialized AttributedString.subscript.getter@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v18 = *(a1 + 24);
  v19 = v4;
  v20 = *(a1 + 56);
  BigString.startIndex.getter();
  BigString.endIndex.getter();
  *(a2 + 72) = 0;
  *a2 = a1;
  v5 = *(a1 + 40);
  v15 = *(a1 + 24);
  v16 = v5;
  v17 = *(a1 + 56);
  swift_unknownObjectRetain();
  swift_retain_n();
  BigString.UnicodeScalarView.subscript.getter();
  swift_unknownObjectRelease();

  outlined destroy of BigSubstring.UnicodeScalarView(v10);
  result = *&v11;
  v7 = v12;
  v8 = v13;
  v9 = v14;
  *(a2 + 8) = v11;
  *(a2 + 24) = v7;
  *(a2 + 40) = v8;
  *(a2 + 56) = v9;
  return result;
}

uint64_t specialized AttributedString.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 40);
  v43 = *(a2 + 24);
  v44 = v6;
  v45 = *(a2 + 56);
  v7 = BigString.startIndex.getter();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = BigString.endIndex.getter();
  v16 = v15;
  v18 = v17;
  v46[0] = a2;
  v46[1] = v7;
  v20 = v19;
  v46[2] = v9;
  v46[3] = v11;
  v46[4] = v13;
  v46[5] = v14;
  v46[6] = v19;
  v46[7] = v15;
  v46[8] = v17;
  v46[9] = 0;
  v21 = *a1;
  swift_retain_n();
  result = outlined destroy of AttributedString.CharacterView(v46);
  if (v14 >> 10 < v21 >> 10)
  {
    __break(1u);
  }

  else
  {
    v34 = *(a1 + 1);
    v23 = a1[3];
    v33 = v21;
    v35 = v23;
    v36 = v14;
    v37 = v20;
    v38 = v16;
    v39 = v18;
    *(a3 + 72) = 0;
    *a3 = a2;
    v24 = *(a2 + 40);
    v40 = *(a2 + 24);
    v41 = v24;
    v42 = *(a2 + 56);
    swift_unknownObjectRetain();

    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();

    result = outlined destroy of BigSubstring.UnicodeScalarView(v28);
    v25 = v30;
    v26 = v31;
    v27 = v32;
    *(a3 + 8) = v29;
    *(a3 + 24) = v25;
    *(a3 + 40) = v26;
    *(a3 + 56) = v27;
  }

  return result;
}

__n128 DiscontiguousAttributedSubstring.description.getter()
{
  v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  MEMORY[0x1EEE9AC00](v412);
  v384 = &v378 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v427 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v407 = &v378 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v408 = &v378 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v378 - v7;
  v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd) - 8;
  MEMORY[0x1EEE9AC00](v426);
  v419 = &v378 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v422 = &v378 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v378 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v378 - v17;
  v413 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v413);
  v410 = &v378 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v378 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v380 = &v378 - v24;
  v25 = *v0;
  v26 = *(type metadata accessor for DiscontiguousAttributedSubstring() + 20);
  v452 = 0;
  v453 = 0xE000000000000000;
  v414 = v11;
  v382 = *(v11 + 16);
  v383 = v11 + 16;
  v382(v18, v0 + v26, v10);
  v415 = v22;
  *v22 = v25;
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
  v411 = v25;
  v27 = v419;

  v416 = v15;
  RangeSet.init()();
  v428 = v10;
  v409 = v18;
  RangeSet.ranges.getter();
  v28 = v427;
  (*(v427 + 16))(v27, v8, v2);
  v29 = *(v426 + 44);
  v30 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of Collection.startIndex.getter();
  v31 = *(v28 + 8);
  v424 = v8;
  v426 = v31;
  v427 = v28 + 8;
  v31(v8, v2);
  dispatch thunk of Collection.endIndex.getter();
  v32 = *(v27 + v29);
  v425 = v2;
  if (v32 != v498)
  {
    v417 = v29;
    v418 = v30;
    do
    {
      v42 = dispatch thunk of Collection.subscript.read();
      v44 = v43[5];
      v423 = v43[4];
      v420 = v43[7];
      v421 = v44;
      v42(&v498, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v45 = v411;
      v46 = *(v411 + 40);
      v517 = *(v411 + 24);
      v518 = v46;
      v519 = *(v411 + 56);
      swift_unknownObjectRetain();
      v47 = BigString.UnicodeScalarView.index(roundingDown:)();
      v49 = v48;
      v51 = v50;
      v53 = v52;
      swift_unknownObjectRelease();
      v54 = *(v45 + 40);
      v514 = *(v45 + 24);
      v515 = v54;
      v516 = *(v45 + 56);
      swift_unknownObjectRetain();
      v55 = BigString.UnicodeScalarView.index(roundingDown:)();
      v57 = v56;
      v59 = v58;
      v61 = v60;
      swift_unknownObjectRelease();
      *&v498 = v47;
      *(&v498 + 1) = v49;
      *&v499 = v51;
      *(&v499 + 1) = v53;
      *&v500 = v55;
      *(&v500 + 1) = v57;
      v2 = v425;
      *&v501 = v59;
      *(&v501 + 1) = v61;
      if ((v55 ^ v47) >= 0x400)
      {
        v62 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v62(v454, 0);
      }

      v27 = v419;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v27 + v417) != v498);
  }

  outlined destroy of TermOfAddress?(v27, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v33 = v413;
  v34 = v415;
  v35 = v428;
  v382(v415 + *(v413 + 24), v416, v428);
  v36 = v424;
  RangeSet.ranges.getter();
  v37 = RangeSet.Ranges.count.getter();
  v38 = v426;
  (v426)(v36, v2);
  v39 = *(v33 + 28);
  LODWORD(v406) = v37 > 1;
  *(v34 + v39) = v406;
  v40 = v408;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v454[0] == v498)
  {
    v38(v40, v2);
    v41 = v411;
  }

  else
  {
    v63 = dispatch thunk of Collection.subscript.read();
    v65 = *v64;
    v404 = v64[1];
    v405 = v65;
    v66 = v64[2];
    v402 = v64[3];
    v403 = v66;
    v63(&v498, 0);
    v38(v40, v2);
    v67 = v407;
    RangeSet.ranges.getter();
    v68 = dispatch thunk of Collection.isEmpty.getter();
    v41 = v411;
    if ((v68 & 1) == 0)
    {
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
      dispatch thunk of BidirectionalCollection.index(before:)();
      v330 = dispatch thunk of Collection.subscript.read();
      v332 = v331[4];
      v333 = v331[5];
      v334 = v331[7];
      v408 = v331[6];
      v401 = v334;
      v330(&v498, 0);
      v38(v67, v2);
      AttributedString.Guts.findRun(at:)(v405, v402, &v498);
      v72 = *(&v498 + 1);
      v423 = v498;
      v399 = *(&v499 + 1);
      v400 = v499;
      v407 = *(&v500 + 1);
      v420 = *(&v501 + 1);
      v421 = v501;
      v419 = v502;
      v335 = *(v41 + 40);
      v511 = *(v41 + 24);
      v512 = v335;
      v513 = *(v41 + 56);
      v336 = BigString.endIndex.getter();
      v398 = v333;
      if ((v336 ^ v332) >= 0x400)
      {
        v346 = v332;
        AttributedString.Guts.findRun(at:)(v332, v401, &v498);
        v417 = *(&v498 + 1);
        v418 = v498;
        v95 = v499;
        v396 = v72;
        v397 = *(&v499 + 1);
        v394 = v501;
        v395 = *(&v500 + 1);
        v89 = *(&v501 + 1);
        v90 = v502;
        v347 = v415;
        v348 = v424;
        v349 = v2;
        v350 = v428;
        RangeSet.ranges.getter();
        v106 = RangeSet.Ranges.count.getter();
        (v426)(v348, v349);
        v351 = *(v414 + 8);
        v351(v416, v350);
        v352 = v350;
        v71 = v347;
        v72 = v396;
        v351(v409, v352);
        v86 = v394;
        v85 = v395;
        v94 = v397;
        v105 = v398;
        v104 = v346;
        v96 = 0;
        v107 = v412;
        v70 = v410;
        v93 = v406;
        v100 = v404;
        v97 = v405;
        v103 = v402;
        v101 = v403;
        v74 = v407;
        v87 = v408;
        v99 = v420;
        v98 = v421;
        v102 = v419;
        v92 = v400;
        v88 = v401;
        v91 = v399;
      }

      else
      {
        v337 = v332;
        v338 = *(v41 + 72);
        if (v338)
        {
          v339 = *(v41 + 80);
        }

        else
        {
          v339 = 0;
        }

        v397 = v339;
        v340 = *(v41 + 96);
        v341 = swift_unknownObjectRetain();
        v418 = v340;
        v417 = specialized Rope._endPath.getter(v341);
        v71 = v415;
        if (v338)
        {
          swift_unknownObjectRelease();
        }

        v342 = v424;
        v343 = v428;
        RangeSet.ranges.getter();
        v344 = v425;
        v106 = RangeSet.Ranges.count.getter();
        (v426)(v342, v344);
        v345 = *(v414 + 8);
        v345(v416, v343);
        v345(v409, v343);
        v96 = 0;
        v95 = 0;
        v104 = v337;
        v85 = v337;
        v105 = v398;
        v91 = v399;
        v86 = v398;
        v74 = v407;
        v87 = v408;
        v89 = v408;
        v88 = v401;
        v103 = v402;
        v90 = v401;
        v107 = v412;
        v70 = v410;
        v93 = v406;
        v100 = v404;
        v97 = v405;
        v101 = v403;
        v99 = v420;
        v98 = v421;
        v102 = v419;
        v92 = v400;
        v94 = v397;
      }

      goto LABEL_17;
    }

    v38(v67, v2);
  }

  v69 = *(v41 + 72);
  v70 = v410;
  v71 = v415;
  if (v69)
  {
    v72 = *(v69 + 18);
  }

  else
  {
    v72 = 0;
  }

  v423 = *(v41 + 96);
  v73 = *(v41 + 40);
  v511 = *(v41 + 24);
  v512 = v73;
  v513 = *(v41 + 56);
  v74 = BigString.startIndex.getter();
  v420 = v76;
  v421 = v75;
  v77 = *(v41 + 72);
  v418 = *(v41 + 96);
  v419 = v78;
  if (v77)
  {
    v417 = *(v77 + 18);
    v79 = v72;
    v80 = v35;
    v81 = *(v414 + 8);
    swift_unknownObjectRetain();
    v81(v416, v80);
    v82 = v80;
    v72 = v79;
    v81(v409, v82);
    swift_unknownObjectRelease();
  }

  else
  {
    v83 = *(v414 + 8);
    v83(v416, v35);
    v83(v409, v35);
    v417 = 0;
  }

  v84 = *(v41 + 40);
  v510[2] = *(v41 + 24);
  v510[3] = v84;
  v510[4] = *(v41 + 56);
  v85 = BigString.startIndex.getter();
  v89 = v87;
  v90 = v88;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v96 = -1;
  v97 = v74;
  v99 = v420;
  v98 = v421;
  v100 = v421;
  v101 = v420;
  v102 = v419;
  v103 = v419;
  v104 = v85;
  v105 = v86;
  v106 = -1;
  v107 = v412;
LABEL_17:
  *(v71 + 8) = v91;
  *(v71 + 16) = v423;
  *(v71 + 24) = v72;
  *(v71 + 32) = v92;
  *(v71 + 40) = v74;
  *(v71 + 48) = v98;
  *(v71 + 56) = v99;
  *(v71 + 64) = v102;
  *(v71 + 72) = v97;
  *(v71 + 80) = v100;
  *(v71 + 88) = v101;
  *(v71 + 96) = v103;
  *(v71 + 104) = v96;
  *(v71 + 112) = 0;
  *(v71 + 113) = v93;
  v108 = v417;
  v109 = v418;
  *(v71 + 120) = v94;
  *(v71 + 128) = v109;
  *(v71 + 136) = v108;
  *(v71 + 144) = v95;
  *(v71 + 152) = v85;
  *(v71 + 160) = v86;
  *(v71 + 168) = v89;
  *(v71 + 176) = v90;
  *(v71 + 184) = v104;
  *(v71 + 192) = v105;
  *(v71 + 200) = v87;
  *(v71 + 208) = v88;
  *(v71 + 216) = v106;
  *(v71 + 224) = 0;
  *(v71 + 225) = v93;
  v110 = v380;
  outlined init with take of AttributedString.Runs(v71, v380, type metadata accessor for AttributedString.Runs);
  _s10Foundation16AttributedStringV4RunsVWOcTm_0(v110, v70, type metadata accessor for AttributedString.Runs);
  v111 = v384;
  _s10Foundation16AttributedStringV4RunsVWOcTm_0(v70, v384, type metadata accessor for AttributedString.Runs);
  v112 = v111 + *(v107 + 36);
  v113 = *(v70 + 8);
  v114 = *(v70 + 16);
  v115 = *(v70 + 48);
  v449 = *(v70 + 32);
  v450 = v115;
  v116 = *(v70 + 72);
  v451 = *(v70 + 64);
  v447 = *(v70 + 80);
  v448 = v114;
  v446 = *(v70 + 112);
  v117 = *(v70 + 96);
  v445 = *(v70 + 104);
  _s10Foundation16AttributedStringV4RunsVWOhTm_1(v70, type metadata accessor for AttributedString.Runs);
  v118 = v113;
  v119 = v447;
  *(v112 + 8) = v448;
  v120 = v450;
  *(v112 + 24) = v449;
  *(v112 + 40) = v120;
  *v112 = v113;
  *(v112 + 56) = v451;
  *(v112 + 64) = v116;
  *(v112 + 72) = v119;
  v121 = v445;
  *(v112 + 88) = v117;
  *(v112 + 96) = v121;
  *(v112 + 104) = v446;
  v122 = *(v112 + 16);
  v418 = *(v112 + 8);
  v419 = v116;
  v417 = v122;
  v123 = *(v112 + 24);
  v420 = *(v112 + 32);
  v421 = v117;
  v124 = *(v112 + 40);
  v125 = *(v112 + 48);
  v415 = *(v112 + 56);
  v126 = *(v112 + 72);
  v406 = *(v112 + 80);
  v407 = v126;
  v381 = (v414 + 8);
  LODWORD(v412) = *(v112 + 104);
  v379 = v112;
  v127 = *(v112 + 105);
  v129 = v424;
  v128 = v425;
  while (1)
  {
    *&v492 = v118;
    *(&v492 + 1) = v418;
    *&v493 = v417;
    *(&v493 + 1) = v123;
    *&v494 = v420;
    *(&v494 + 1) = v124;
    v495.n128_u64[0] = v125;
    v495.n128_u64[1] = v415;
    *&v496 = v419;
    *(&v496 + 1) = v407;
    *&v497[0] = v406;
    *(&v497[0] + 1) = v421;
    *&v497[1] = v121;
    BYTE8(v497[1]) = v412;
    BYTE9(v497[1]) = v127;
    if (v118 == *(v111 + 120))
    {
      v131 = *(v111 + 208);
      if (v421 == 2)
      {
        if (v131 == 2)
        {
          goto LABEL_256;
        }
      }

      else if (v131 != 2 && (*(v111 + 184) ^ v419) < 0x400)
      {
        goto LABEL_256;
      }
    }

    v414 = v125;
    v410 = v124;
    v423 = v121;
    v132 = *(v111 + 184);
    v508 = *(v111 + 168);
    v509 = v132;
    v510[0] = *(v111 + 200);
    *(v510 + 10) = *(v111 + 210);
    v133 = *(v111 + 120);
    v504 = *(v111 + 104);
    v505 = v133;
    v134 = *(v111 + 152);
    v506 = *(v111 + 136);
    v507 = v134;
    v135 = *(v111 + 56);
    v500 = *(v111 + 40);
    v501 = v135;
    v136 = *(v111 + 88);
    v502 = *(v111 + 72);
    v503 = v136;
    v137 = *(v111 + 24);
    v498 = *(v111 + 8);
    v499 = v137;
    v138 = v498;
    v402 = v502;
    v139 = *(&v503 + 1);
    v140 = v118;
    v141 = specialized Range.contains(_:)(&v492);
    if (v140 < v138 || (v141 & 1) == 0)
    {
      goto LABEL_263;
    }

    v142 = v138 < v140 || v139 == 2;
    v143 = v142;
    v144 = v417;
    if (!v142)
    {
      if (v421 == 2)
      {
        goto LABEL_285;
      }

      if (v419 >> 10 < v402 >> 10)
      {
        goto LABEL_275;
      }
    }

    if (v505 < v140)
    {
      goto LABEL_264;
    }

    v145 = v140 < v505 || v421 == 2;
    v146 = v145;
    if (!v145)
    {
      if (*(&v510[0] + 1) == 2)
      {
        goto LABEL_286;
      }

      if (v509 >> 10 < v419 >> 10)
      {
        goto LABEL_276;
      }
    }

    LODWORD(v401) = v143;
    v399 = *(&v510[0] + 1);
    v400 = v505;
    LODWORD(v398) = v146;
    v385 = v509;
    v409 = (v420 >> 11);
    v405 = v123;
    v416 = v140;
    if (v123 == 1 || (v147 = *v111, v418 != *(*v111 + 96)))
    {
      if (*(v111 + *(v413 + 28)))
      {
        goto LABEL_271;
      }

      v147 = *v111;
      v157 = *(*v111 + 72);
      v158 = *(*v111 + 80);
      if (v157)
      {
        v159 = *(*v111 + 80);
      }

      else
      {
        v159 = 0;
      }

      if (v140 < 0 || v159 < v140)
      {
        goto LABEL_272;
      }

      v160 = *(v147 + 96);
      v408 = *(v147 + 88);
      v404 = v158;
      if (v157)
      {
        v162 = (v157 + 16);
        v161 = *(v157 + 16);
        if (*(v157 + 16))
        {
          if (v140 < v158)
          {
            v403 = v160;
            v163 = v147;
            v164 = *(v157 + 18);
            swift_unknownObjectRetain_n();
            if (v164)
            {
              v165 = v140;
              v166 = v164;
              v167 = v157;
              do
              {
                v168 = *v162;
                if (*v162)
                {
                  v170 = 0;
                  v171 = (v167 + 32);
                  while (1)
                  {
                    v172 = *v171;
                    v171 += 3;
                    v173 = v165 - v172;
                    if (__OFSUB__(v165, v172))
                    {
                      goto LABEL_251;
                    }

                    if (__OFADD__(v173, 1))
                    {
                      goto LABEL_252;
                    }

                    if (v173 + 1 < 1)
                    {
                      v168 = v170;
                      goto LABEL_63;
                    }

                    ++v170;
                    v165 = v173;
                    if (v168 == v170)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                v173 = v165;
LABEL_72:
                if (v173)
                {
                  goto LABEL_260;
                }

                v165 = 0;
LABEL_63:
                v166 = (v168 << ((4 * v164 + 8) & 0x3C)) | ((-15 << ((4 * v164 + 8) & 0x3C)) - 1) & v166;
                v164 = *(v167 + 24 + 24 * v168);
                swift_unknownObjectRetain();
                swift_unknownObjectRelease();
                v169 = v164;
                v162 = (v164 + 16);
                LODWORD(v164) = *(v164 + 18);
                v167 = v169;
              }

              while (v164);
              v161 = *v162;
              if (*v162)
              {
                goto LABEL_79;
              }

              v180 = 0;
              v129 = v424;
              v128 = v425;
LABEL_84:
              v182 = v180;
              if (!v165)
              {
LABEL_85:
                v183 = v169;
                swift_unknownObjectRelease();
                v177 = v183;
                v176 = v166 & 0xFFFFFFFFFFFFF0FFLL | (v182 << 8);
                v147 = v163;
                v160 = v403;
                v175 = v408;
                goto LABEL_86;
              }

LABEL_283:
              __break(1u);
              goto LABEL_284;
            }

            v166 = 0;
            v165 = v140;
            v169 = v157;
LABEL_79:
            v129 = v424;
            v128 = v425;
            v181 = 0;
            v180 = v161;
            v182 = v165 & ~(v165 >> 63);
            while ((v165 ^ v181) != 0x8000000000000000)
            {
              if (v182 == v181)
              {
                goto LABEL_85;
              }

              if (v180 == ++v181)
              {
                v165 -= v181;
                goto LABEL_84;
              }
            }

            goto LABEL_259;
          }
        }
      }

      v174 = swift_unknownObjectRetain();
      v175 = v408;
      v176 = specialized Rope._endPath.getter(v174);
      v177 = 0;
      v129 = v424;
LABEL_86:
      v179 = v420;
      v396 = v176;
      v397 = v177;
      if (v157)
      {
        v178 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v160, v176, v177, v157, v404, v175);
        swift_unknownObjectRelease();
      }

      else
      {
        v178 = 0;
      }
    }

    else
    {
      if (v415 == 2)
      {
        v148 = *(v147 + 72);
        if (v148)
        {
          v149 = *v111;
          v152 = v147 + 80;
          v151 = *(v147 + 80);
          v150 = *(v152 + 8);
          swift_unknownObjectRetain();
          v153 = v418;
          v154 = v405;
          v155 = v151;
          v147 = v149;
          v156 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v418, v144, v405, v148, v155, v150);
          swift_unknownObjectRelease();
        }

        else
        {
          v156 = 0;
          v153 = v418;
          v154 = v405;
        }

        v403 = v153;
        v404 = v156;
        v386 = 0;
        LODWORD(v408) = 1;
        v396 = v144;
        v397 = v154;
        v179 = v420;
        goto LABEL_95;
      }

      v396 = v417;
      v397 = v123;
      v160 = v418;
      v178 = v409;
      v179 = v420;
    }

    v184 = v415;
    LODWORD(v408) = v415 == 2;
    v386 = v415 != 2;
    v403 = v160;
    if (v415 != 2 && v409 == v178)
    {
      v185 = *(v147 + 40);
      v483 = *(v147 + 24);
      v484 = v185;
      v485 = *(v147 + 56);
      swift_unknownObjectRetain();
      v186 = BigString.UTF8View.index(roundingDown:)();
      v394 = v188;
      v395 = v187;
      v393 = v189;
      swift_unknownObjectRelease();
      LODWORD(v408) = 0;
      goto LABEL_96;
    }

    v404 = v178;
LABEL_95:
    v190 = *(v147 + 24);
    v191 = *(v147 + 56);
    v490 = *(v147 + 40);
    v491 = v191;
    v192 = *(v147 + 40);
    v486 = *(v147 + 24);
    v487 = v192;
    v488 = *(v147 + 56);
    v489 = v190;
    BigString.startIndex.getter();
    v520[0] = v489;
    v520[1] = v490;
    v521 = v491;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v520, &v438);
    v186 = BigString.UTF8View.index(_:offsetBy:)();
    v394 = v194;
    v395 = v193;
    v393 = v195;
    outlined destroy of BigString(&v489);
    v128 = v425;
    v111 = v384;
    v184 = v415;
LABEL_96:
    v420 = v179;
    v404 = v147;
    if (v412)
    {
      v392 = v186;
      if (v421 == 2)
      {
        v196 = v186;
      }

      else
      {
        v196 = v419;
      }

      RangeSet.ranges.getter();
      v197 = RangeSet.Ranges.count.getter();
      (v426)(v129, v128);
      if (v197 < 1)
      {
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
        goto LABEL_253;
      }

      v198 = 0;
      v199 = v196 >> 10;
      while (!__OFADD__(v198, v197))
      {
        v200 = (v198 + v197) / 2;
        v201 = v111;
        v202 = v424;
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        (v426)(v202, v128);
        v203 = v438;
        if (v199 >= v438 >> 10)
        {
          v204 = v441;
          if (v199 < v441 >> 10)
          {
            v205 = v439;
            v207 = *(&v440 + 1);
            v206 = v440;
            v179 = v420;
            v208 = v410;
            v209 = v414;
            v184 = v415;
            v147 = v404;
            v186 = v392;
            goto LABEL_112;
          }

          v198 = v200 + 1;
          v200 = v197;
        }

        v197 = v200;
        v128 = v425;
        v111 = v201;
        if (v198 >= v200)
        {
          goto LABEL_250;
        }
      }

      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
      goto LABEL_261;
    }

    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    (v426)(v129, v128);
    v203 = v438;
    v205 = v439;
    v207 = *(&v440 + 1);
    v206 = v440;
    v204 = v441;
    v208 = v410;
    v209 = v414;
    if (v421 != 2 && (v419 >> 10 < v438 >> 10 || v419 >> 10 >= v441 >> 10))
    {
      goto LABEL_281;
    }

LABEL_112:
    v390 = v207;
    v391 = v206;
    v392 = v205;
    v210 = v179;
    v211 = v208;
    v212 = v209;
    if (v408)
    {
      v210 = v186;
      v211 = v395;
      v212 = v394;
      v184 = v393;
    }

    v387 = v212;
    v388 = v184;
    v389 = v211;
    if (v421 == 2)
    {
      v213 = v186;
    }

    else
    {
      v213 = v419;
    }

    v214 = v407;
    if (v421 == 2)
    {
      v214 = v395;
    }

    v407 = v214;
    v215 = v406;
    if (v421 == 2)
    {
      v215 = v394;
    }

    v406 = v215;
    if (v421 == 2)
    {
      v216 = v393;
    }

    else
    {
      v216 = v421;
    }

    v395 = v216;
    v217 = *(v147 + 72);
    v218 = *(v147 + 80);
    v219 = *(v147 + 88);
    v220 = *(v147 + 96);
    swift_unknownObjectRetain();
    v221 = specialized Rope.subscript.getter(v403, v396, v397, v217, v218, v219, v220);
    v223 = v222;
    v403 = v224;
    swift_unknownObjectRelease();
    if (v203 >> 10 >= v210 >> 10)
    {
      v225 = v203;
    }

    else
    {
      v225 = v210;
    }

    if (v203 >> 10 >= v210 >> 10)
    {
      v226 = v392;
    }

    else
    {
      v226 = v389;
    }

    if (v203 >> 10 >= v210 >> 10)
    {
      v227 = v391;
    }

    else
    {
      v227 = v387;
    }

    if (v203 >> 10 >= v210 >> 10)
    {
      v228 = v390;
    }

    else
    {
      v228 = v388;
    }

    v229 = v221 + (v210 >> 11);
    if (__OFADD__(v221, v210 >> 11))
    {
      goto LABEL_265;
    }

    if ((v204 >> 11) < v229)
    {
      v229 = v204 >> 11;
    }

    v230 = *(v147 + 24);
    v231 = *(v147 + 40);
    v232 = *(v147 + 56);
    v393 = (v147 + 24);
    v480 = v230;
    v481 = v231;
    v482 = v232;
    if (__OFSUB__(v229, v213 >> 11))
    {
      goto LABEL_266;
    }

    v394 = v225;
    v396 = v226;
    v397 = v228;
    swift_unknownObjectRetain();
    v233 = BigString.UTF8View.index(_:offsetBy:)();
    v235 = v234;
    v237 = v236;
    v239 = v238;
    swift_unknownObjectRelease();
    v438 = v223;
    v439 = v403;
    *&v440 = v394;
    *(&v440 + 1) = v396;
    *&v441 = v227;
    *(&v441 + 1) = v397;
    *&v442 = v233;
    *(&v442 + 1) = v235;
    *&v443 = v237;
    *(&v443 + 1) = v239;
    v444 = v147;
    if (v401)
    {
      v240 = v416;
      v241 = v417;
      v111 = v384;
      v242 = v413;
      v243 = v418;
      v244 = v405;
      if (v416 >= v400)
      {
        if (v399 == 2)
        {
          goto LABEL_287;
        }

        if (v421 != 2)
        {
          v245 = v419 >> 10;
          goto LABEL_149;
        }
      }
    }

    else
    {
      v111 = v384;
      v240 = v416;
      v243 = v418;
      v244 = v405;
      if (v421 == 2)
      {
        goto LABEL_288;
      }

      v245 = v419 >> 10;
      v242 = v413;
      v241 = v417;
      if (v419 >> 10 < v402 >> 10)
      {
        goto LABEL_277;
      }

      if (v416 >= v400)
      {
        if (v399 == 2)
        {
          goto LABEL_287;
        }

LABEL_149:
        if (v245 >= v385 >> 10)
        {
          goto LABEL_280;
        }
      }
    }

    if (!v398)
    {
      if (v399 == 2)
      {
        goto LABEL_289;
      }

      if (v385 >> 10 < v419 >> 10)
      {
        goto LABEL_278;
      }
    }

    if (v244 != 1 && v243 == *(v147 + 96))
    {
      if ((v408 & 1) == 0)
      {

        v273 = v409;
        goto LABEL_198;
      }

      v246 = *(v147 + 72);
      if (v246)
      {
        v247 = *(v147 + 88);
        v248 = *(v404 + 80);

        swift_unknownObjectRetain();
        v249 = v243;
        v250 = v241;
        v251 = v244;
        v252 = v246;
        v253 = v248;
        v147 = v404;
        v254 = v247;
LABEL_195:
        v273 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v249, v250, v251, v252, v253, v254);
        swift_unknownObjectRelease();
        goto LABEL_198;
      }

      goto LABEL_197;
    }

    if (*(v111 + *(v242 + 28)))
    {
      goto LABEL_273;
    }

    v255 = *(v147 + 72);
    v256 = *(v147 + 80);
    if (v255)
    {
      v257 = *(v147 + 80);
    }

    else
    {
      v257 = 0;
    }

    if (v240 < 0 || v257 < v240)
    {
      goto LABEL_274;
    }

    v258 = *(v147 + 88);
    v418 = *(v147 + 96);
    if (v255)
    {
      v259 = (v255 + 16);
      v260 = *(v255 + 16);
      if (*(v255 + 16))
      {
        if (v240 < v256)
        {
          break;
        }
      }
    }

    v271 = swift_unknownObjectRetain();
    v272 = v258;
    v243 = v418;
    v241 = specialized Rope._endPath.getter(v271);
    v244 = 0;
    if (v255)
    {
LABEL_194:
      v249 = v243;
      v250 = v241;
      v251 = v244;
      v252 = v255;
      v253 = v256;
      v254 = v272;
      goto LABEL_195;
    }

LABEL_197:
    v273 = 0;
LABEL_198:
    v278 = v386;
    if (v409 != v273)
    {
      v278 = 0;
    }

    v407 = v273;
    if (v278)
    {
      v279 = *(v147 + 40);
      v471 = *(v147 + 24);
      v472 = v279;
      v473 = *(v147 + 56);
      swift_unknownObjectRetain();
      v406 = BigString.UTF8View.index(roundingDown:)();
      swift_unknownObjectRelease();
      v280 = v243;
    }

    else
    {
      v281 = *v393;
      v282 = v393[2];
      v478 = v393[1];
      v479 = v282;
      v283 = *(v147 + 40);
      v474 = *(v147 + 24);
      v475 = v283;
      v476 = *(v147 + 56);
      v477 = v281;
      v284 = BigString.startIndex.getter();
      v417 = v241;
      v418 = v284;
      v522[0] = v477;
      v522[1] = v478;
      v523 = v479;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v522, &v429);
      v147 = v404;
      v280 = v243;
      v241 = v417;
      v406 = BigString.UTF8View.index(_:offsetBy:)();
      outlined destroy of BigString(&v477);
    }

    v285 = *(v147 + 72);
    v286 = *(v147 + 80);
    v288 = *(v147 + 88);
    v287 = *(v147 + 96);
    v429 = v280;
    v430 = v241;
    v431 = v244;
    if (__OFADD__(v416, 1))
    {
      goto LABEL_267;
    }

    ++v416;
    swift_unknownObjectRetain();
    v289 = v241;
    v418 = v285;
    v290 = specialized Rope.subscript.getter(v280, v241, v244, v285, v286, v288, v287);

    if (__OFADD__(v407, v290))
    {
      goto LABEL_268;
    }

    if (v280 != v287)
    {
      goto LABEL_269;
    }

    v407 += v290;
    if (v241 >= specialized Rope._endPath.getter(v418))
    {
      goto LABEL_270;
    }

    if (v244 && (v291 = (4 * *(v244 + 18) + 8) & 0x3C, v292 = ((v241 >> v291) & 0xF) + 1, v292 < *(v244 + 16)))
    {
      swift_unknownObjectRelease();
      v417 = (v292 << v291) | ((-15 << v291) - 1) & v289;
      v128 = v425;
    }

    else
    {
      v293 = v418;
      v294 = specialized Rope._Node.formSuccessor(of:)(&v429, v418);
      v128 = v425;
      if (v294)
      {
        swift_unknownObjectRelease();
        v417 = v430;
      }

      else
      {
        v295 = specialized Rope._endPath.getter(v293);
        swift_unknownObjectRelease();
        v429 = v280;
        v430 = v295;
        v417 = v295;
        v431 = 0;
      }
    }

    v418 = v429;
    v296 = v431;
    v129 = v424;
    if (v412)
    {
      v297 = v111;
      v382(v422, (v111 + *(v413 + 24)), v428);
      if (v421 == 2)
      {
        v298 = v406;
      }

      else
      {
        v298 = v419;
      }

      RangeSet.ranges.getter();
      v111 = RangeSet.Ranges.count.getter();
      (v426)(v129, v128);
      if (v111 >= 1)
      {
        v299 = 0;
        v300 = v298 >> 10;
        while (!__OFADD__(v299, v111))
        {
          v301 = (v299 + v111) / 2;
          RangeSet.ranges.getter();
          RangeSet.Ranges.subscript.getter();
          (v426)(v129, v128);
          if (v300 < v429 >> 10)
          {
            v111 = (v299 + v111) / 2;
            if (v299 >= v301)
            {
              goto LABEL_253;
            }
          }

          else
          {
            v423 = (v299 + v111) / 2;
            v302 = v433;
            if (v300 < v433 >> 10)
            {
              (*v381)(v422, v428);
              v111 = v297;
              v303 = v426;
              goto LABEL_227;
            }

            v299 = v423 + 1;
            if (v423 + 1 >= v111)
            {
              goto LABEL_253;
            }
          }
        }

        goto LABEL_258;
      }

LABEL_253:
      __break(1u);
LABEL_254:
      __break(1u);
LABEL_255:
      __break(1u);
LABEL_256:
      v353 = v497[0];
      v355 = v379;
      v354 = v380;
      v379[4] = v496;
      v355[5] = v353;
      *(v355 + 90) = *(v497 + 10);
      v356 = v493;
      *v355 = v492;
      v355[1] = v356;
      v357 = v495;
      v355[2] = v494;
      v355[3] = v357;
      _s10Foundation16AttributedStringV4RunsVWOhTm_1(v354, type metadata accessor for AttributedString.Runs);
      outlined destroy of TermOfAddress?(v111, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
      return result;
    }

    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    v303 = v426;
    (v426)(v129, v128);
    v302 = v433;
LABEL_227:
    if (v407 >= (v302 >> 11))
    {
      if (__OFADD__(v423, 1))
      {
        goto LABEL_279;
      }

      v314 = v413;
      ++v423;
      RangeSet.ranges.getter();
      v315 = RangeSet.Ranges.count.getter();
      v303(v129, v128);
      if (v423 == v315)
      {
        v316 = *(v111 + 128);
        v317 = *(v111 + 136);
        v123 = *(v111 + 144);
        v416 = *(v111 + 120);
        v417 = v317;
        v318 = *(v111 + 152);
        v124 = *(v111 + 160);
        v319 = *(v111 + 176);
        v414 = *(v111 + 168);
        v415 = v319;
        v321 = *(v111 + 184);
        v320 = *(v111 + 192);
        v418 = v316;
        v419 = v321;
        v407 = v320;
        v322 = *(v111 + 208);
        v406 = *(v111 + 200);
        v420 = v318;
        v421 = v322;
        v423 = *(v111 + 216);
        LODWORD(v412) = *(v111 + 224);
        v323 = *(v111 + 225);
      }

      else
      {
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        v303(v129, v128);
        v419 = v429;
        v406 = v431;
        v407 = v430;
        v421 = v432;
        AttributedString.Guts.findRun(at:)(v429, v432, &v429);
        LODWORD(v412) = 0;
        v417 = v430;
        v418 = v429;
        v123 = v431;
        v124 = v435;
        v420 = v434;
        v414 = v436;
        v415 = v437;
        v416 = v432;
        v323 = *(v111 + *(v314 + 28));
      }

      LODWORD(v410) = v323;
    }

    else
    {
      v405 = v296;
      if (v408)
      {
        v304 = *v393;
        v305 = v393[2];
        v469 = v393[1];
        v470 = v305;
        v306 = *(v404 + 40);
        v465 = *(v404 + 24);
        v466 = v306;
        v467 = *(v404 + 56);
        v468 = v304;
        BigString.startIndex.getter();
        v524[0] = v468;
        v524[1] = v469;
        v525 = v470;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v524, &v429);
        v128 = v425;
        v307 = BigString.UTF8View.index(_:offsetBy:)();
        v309 = v308;
        v311 = v310;
        v313 = v312;
        outlined destroy of BigString(&v468);
      }

      else
      {
        v324 = *(v404 + 40);
        v462 = *(v404 + 24);
        v463 = v324;
        v464 = *(v404 + 56);
        if (__OFSUB__(v407, v409))
        {
          goto LABEL_282;
        }

        swift_unknownObjectRetain();
        v307 = BigString.UTF8View.index(_:offsetBy:)();
        v309 = v325;
        v311 = v326;
        v313 = v327;
        swift_unknownObjectRelease();
      }

      LODWORD(v412) = 0;
      LODWORD(v410) = *(v111 + *(v413 + 28));
      v419 = v307;
      v420 = v307;
      v124 = v309;
      v406 = v311;
      v407 = v309;
      v414 = v311;
      v415 = v313;
      v421 = v313;
      v123 = v405;
    }

    v328 = *(v411 + 40);
    v459 = *(v411 + 24);
    v460 = v328;
    v461 = *(v411 + 56);
    v455 = v440;
    v456 = v441;
    v457 = v442;
    v458 = v443;
    swift_unknownObjectRetain();
    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    MEMORY[0x1865CAF60](v454);
    v329 = v452 & 0xFFFFFFFFFFFFLL;
    if ((v453 & 0x2000000000000000) != 0)
    {
      v329 = HIBYTE(v453) & 0xF;
    }

    if (v329)
    {
      MEMORY[0x1865CB0E0](10, 0xE100000000000000);
    }

    v429 = 0;
    v430 = 0xE000000000000000;
    MEMORY[0x1865CB0E0]();

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);
    v130 = v438;

    specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v130);

    MEMORY[0x1865CB0E0](v429, v430);

    outlined destroy of AttributedString.Runs.Run(&v438);
    v121 = v423;
    v125 = v414;
    v118 = v416;
    v127 = v410;
  }

  v417 = v256;
  v261 = *(v255 + 18);
  swift_unknownObjectRetain_n();

  if (!v261)
  {
    v263 = 0;
    v262 = v416;
    v274 = v255;
LABEL_187:
    v243 = v418;
    v276 = 0;
    v275 = v260;
    v277 = v262 & ~(v262 >> 63);
    while ((v262 ^ v276) != 0x8000000000000000)
    {
      if (v277 == v276)
      {
        goto LABEL_193;
      }

      if (v260 == ++v276)
      {
        v262 -= v276;
        goto LABEL_192;
      }
    }

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
    goto LABEL_283;
  }

  v262 = v416;
  v263 = v261;
  v264 = v255;
  do
  {
    v265 = *v259;
    if (*v259)
    {
      v267 = 0;
      v268 = (v264 + 32);
      while (1)
      {
        v269 = *v268;
        v268 += 3;
        v270 = v262 - v269;
        if (__OFSUB__(v262, v269))
        {
          goto LABEL_254;
        }

        if (__OFADD__(v270, 1))
        {
          goto LABEL_255;
        }

        if (v270 + 1 < 1)
        {
          v265 = v267;
          goto LABEL_170;
        }

        ++v267;
        v262 = v270;
        if (v265 == v267)
        {
          goto LABEL_179;
        }
      }
    }

    v270 = v262;
LABEL_179:
    if (v270)
    {
      goto LABEL_262;
    }

    v262 = 0;
LABEL_170:
    v263 = (v265 << ((4 * v261 + 8) & 0x3C)) | ((-15 << ((4 * v261 + 8) & 0x3C)) - 1) & v263;
    v266 = *(v264 + 24 + 24 * v265);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v259 = (v266 + 16);
    LOBYTE(v261) = *(v266 + 18);
    v264 = v266;
  }

  while (v261);
  v274 = v266;
  v260 = *v259;
  if (*v259)
  {
    goto LABEL_187;
  }

  v275 = 0;
  v243 = v418;
LABEL_192:
  v277 = v275;
  if (!v262)
  {
LABEL_193:
    v272 = v258;
    v244 = v274;
    swift_unknownObjectRelease();
    v241 = v263 & 0xFFFFFFFFFFFFF0FFLL | (v277 << 8);
    v147 = v404;
    v256 = v417;
    goto LABEL_194;
  }

LABEL_284:
  __break(1u);
LABEL_285:
  v359 = v497[0];
  v360 = v379;
  v379[4] = v496;
  v360[5] = v359;
  *(v360 + 90) = *(v497 + 10);
  v361 = v493;
  *v360 = v492;
  v360[1] = v361;
  v362 = v495;
  v360[2] = v494;
  v360[3] = v362;
  __break(1u);
LABEL_286:
  v363 = v497[0];
  v364 = v379;
  v379[4] = v496;
  v364[5] = v363;
  *(v364 + 90) = *(v497 + 10);
  v365 = v493;
  *v364 = v492;
  v364[1] = v365;
  v366 = v495;
  v364[2] = v494;
  v364[3] = v366;
  __break(1u);
LABEL_287:
  v367 = v497[0];
  v368 = v379;
  v379[4] = v496;
  v368[5] = v367;
  *(v368 + 90) = *(v497 + 10);
  v369 = v493;
  *v368 = v492;
  v368[1] = v369;
  v370 = v495;
  v368[2] = v494;
  v368[3] = v370;
  __break(1u);
LABEL_288:
  v371 = v497[0];
  v372 = v379;
  v379[4] = v496;
  v372[5] = v371;
  *(v372 + 90) = *(v497 + 10);
  v373 = v493;
  *v372 = v492;
  v372[1] = v373;
  v374 = v495;
  v372[2] = v494;
  v372[3] = v374;
  __break(1u);
LABEL_289:
  result = v495;
  v375 = v497[0];
  v376 = v379;
  v379[4] = v496;
  v376[5] = v375;
  *(v376 + 90) = *(v497 + 10);
  v377 = v493;
  *v376 = v492;
  v376[1] = v377;
  v376[2] = v494;
  v376[3] = result;
  __break(1u);
  return result;
}

uint64_t DiscontiguousAttributedSubstring.runs.getter@<X0>(void *a1@<X8>)
{
  v145 = a1;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v146 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v137 = &v126 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v140 = &v126 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v126 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v126 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v126 - v17;
  v19 = *v1;
  v20 = *(type metadata accessor for DiscontiguousAttributedSubstring() + 20);
  v142 = v13;
  v138 = *(v13 + 16);
  v139 = v13 + 16;
  v138(v18, v1 + v20, v12);
  *v145 = v19;
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
  v152 = v19;

  v147 = v15;
  RangeSet.init()();
  v148 = v12;
  v21 = v153;
  v141 = v18;
  RangeSet.ranges.getter();
  v22 = v146;
  (*(v146 + 16))(v11, v7, v21);
  v23 = *(v9 + 44);
  v24 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of Collection.startIndex.getter();
  v143 = *(v22 + 8);
  v144 = v7;
  v25 = v11;
  v146 = v22 + 8;
  v143(v7, v21);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v11[v23] != v157)
  {
    v150 = v11;
    v151 = v24;
    v149 = v23;
    do
    {
      v36 = dispatch thunk of Collection.subscript.read();
      v38 = v37[5];
      v39 = v37[7];
      v155 = v37[6];
      v156 = v38;
      v154 = v39;
      v36(&v157, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v40 = v152;
      v41 = *(v152 + 40);
      v169 = *(v152 + 24);
      v170 = v41;
      v171 = *(v152 + 56);
      swift_unknownObjectRetain();
      v42 = BigString.UnicodeScalarView.index(roundingDown:)();
      v44 = v43;
      v46 = v45;
      v48 = v47;
      swift_unknownObjectRelease();
      v49 = *(v40 + 40);
      v166 = *(v40 + 24);
      v167 = v49;
      v168 = *(v40 + 56);
      swift_unknownObjectRetain();
      v50 = BigString.UnicodeScalarView.index(roundingDown:)();
      v52 = v51;
      v54 = v53;
      v56 = v55;
      swift_unknownObjectRelease();
      *&v157 = v42;
      *(&v157 + 1) = v44;
      *&v158 = v46;
      *(&v158 + 1) = v48;
      *&v159 = v50;
      *(&v159 + 1) = v52;
      v21 = v153;
      v160 = v54;
      v161 = v56;
      if ((v50 ^ v42) >= 0x400)
      {
        v57 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v57(&v163, 0);
      }

      v25 = v150;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v25 + v149) != v157);
  }

  outlined destroy of TermOfAddress?(v25, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v26 = type metadata accessor for AttributedString.Runs();
  v27 = *(v26 + 24);
  v28 = v21;
  v29 = v145;
  v138(v145 + v27, v147, v148);
  v30 = v144;
  RangeSet.ranges.getter();
  v31 = RangeSet.Ranges.count.getter();
  v32 = v143;
  v143(v30, v28);
  v33 = *(v26 + 28);
  LODWORD(v149) = v31 > 1;
  *(v29 + v33) = v149;
  v34 = v140;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v163 == v157)
  {
    v35 = v34;
LABEL_10:
    v32(v35, v28);
    v63 = v152;
    v64 = *(v152 + 9);
    if (v64)
    {
      v155 = *(v64 + 18);
    }

    else
    {
      v155 = 0;
    }

    v156 = *(v152 + 12);
    v65 = *(v152 + 40);
    v157 = *(v152 + 24);
    v158 = v65;
    v159 = *(v152 + 56);
    v66 = BigString.startIndex.getter();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v154 = v72;
    v73 = *(v63 + 9);
    v151 = *(v63 + 12);
    if (v73)
    {
      v150 = *(v73 + 18);
      v74 = v66;
      v75 = *(v142 + 8);
      swift_unknownObjectRetain();
      v76 = v148;
      v75(v147, v148);
      v75(v141, v76);
      v67 = v74;
      swift_unknownObjectRelease();
    }

    else
    {
      v77 = *(v142 + 8);
      v78 = v148;
      v77(v147, v148);
      v77(v141, v78);
      v150 = 0;
    }

    v163 = *(v63 + 24);
    v79 = *(v63 + 56);
    v164 = *(v63 + 40);
    v165 = v79;
    result = BigString.startIndex.getter();
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = -1;
    v90 = v67;
    v91 = v69;
    v92 = v71;
    v94 = v154;
    v93 = v155;
    v95 = v154;
    v96 = result;
    v97 = v81;
    v98 = v82;
    v99 = v83;
    v100 = -1;
    v101 = v156;
    goto LABEL_26;
  }

  v58 = dispatch thunk of Collection.subscript.read();
  v60 = *v59;
  v138 = v59[1];
  v139 = v60;
  v61 = v59[2];
  v135 = v59[3];
  v136 = v61;
  v58(&v157, 0);
  v32(v34, v28);
  v62 = v137;
  RangeSet.ranges.getter();
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v35 = v62;
    goto LABEL_10;
  }

  v129 = v27;
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v102 = dispatch thunk of Collection.subscript.read();
  v96 = v103[4];
  v104 = v103[5];
  v106 = v103[6];
  v105 = v103[7];
  v102(&v157, 0);
  v32(v62, v28);
  v107 = v152;
  AttributedString.Guts.findRun(at:)(v139, v135, &v157);
  v155 = *(&v157 + 1);
  v156 = v157;
  v130 = *(&v158 + 1);
  v131 = v158;
  v134 = *(&v159 + 1);
  v140 = v160;
  v137 = v161;
  v154 = v162;
  v163 = *(v107 + 24);
  v108 = *(v107 + 56);
  v164 = *(v107 + 40);
  v165 = v108;
  v109 = BigString.endIndex.getter();
  v132 = v105;
  v133 = v106;
  if ((v109 ^ v96) >= 0x400)
  {
    v118 = v28;
    AttributedString.Guts.findRun(at:)(v96, v105, &v157);
    v150 = *(&v157 + 1);
    v151 = v157;
    v152 = v104;
    v87 = *(&v158 + 1);
    v88 = v158;
    v119 = v160;
    v128 = v161;
    v126 = *(&v159 + 1);
    v127 = v162;
    v121 = v144;
    v120 = v145;
    v122 = v148;
    RangeSet.ranges.getter();
    v100 = RangeSet.Ranges.count.getter();
    v143(v121, v118);
    v123 = *(v142 + 8);
    v123(v147, v122);
    v123(v141, v122);
    v83 = v127;
    v82 = v128;
    v29 = v120;
    v81 = v119;
    result = v126;
    v89 = 0;
    v86 = v149;
    v93 = v155;
    v101 = v156;
    v91 = v138;
    v90 = v139;
    v95 = v135;
    v92 = v136;
    v98 = v133;
    v67 = v134;
    v69 = v140;
    v71 = v137;
    v94 = v154;
    v97 = v152;
    v99 = v132;
  }

  else
  {
    v110 = v104;
    v111 = *(v107 + 9);
    if (v111)
    {
      v87 = *(v107 + 10);
    }

    else
    {
      v87 = 0;
    }

    v112 = *(v107 + 12);
    v113 = swift_unknownObjectRetain();
    v151 = v112;
    v150 = specialized Rope._endPath.getter(v113);
    if (v111)
    {
      swift_unknownObjectRelease();
    }

    v114 = v144;
    v29 = v145;
    v115 = v148;
    RangeSet.ranges.getter();
    v116 = v153;
    v100 = RangeSet.Ranges.count.getter();
    v143(v114, v116);
    v117 = *(v142 + 8);
    v117(v147, v115);
    v117(v141, v115);
    v89 = 0;
    v88 = 0;
    result = v96;
    v97 = v110;
    v81 = v110;
    v99 = v132;
    v98 = v133;
    v82 = v133;
    v83 = v132;
    v86 = v149;
    v93 = v155;
    v101 = v156;
    v91 = v138;
    v90 = v139;
    v95 = v135;
    v92 = v136;
    v67 = v134;
    v69 = v140;
    v71 = v137;
    v94 = v154;
  }

  v84 = v130;
  v85 = v131;
LABEL_26:
  v29[1] = v84;
  v29[2] = v101;
  v29[3] = v93;
  v29[4] = v85;
  v29[5] = v67;
  v29[6] = v69;
  v29[7] = v71;
  v29[8] = v94;
  v29[9] = v90;
  v29[10] = v91;
  v29[11] = v92;
  v29[12] = v95;
  v29[13] = v89;
  *(v29 + 112) = 0;
  *(v29 + 113) = v86;
  v124 = v150;
  v125 = v151;
  v29[15] = v87;
  v29[16] = v125;
  v29[17] = v124;
  v29[18] = v88;
  v29[19] = result;
  v29[20] = v81;
  v29[21] = v82;
  v29[22] = v83;
  v29[23] = v96;
  v29[24] = v97;
  v29[25] = v98;
  v29[26] = v99;
  v29[27] = v100;
  *(v29 + 224) = 0;
  *(v29 + 225) = v86;
  return result;
}

uint64_t DiscontiguousAttributedSubstring.hash(into:)(uint64_t a1)
{
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  MEMORY[0x1EEE9AC00](v299);
  v4 = &v269 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v323 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v274 = &v269 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v314 = &v269 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v307 = &v269 - v10;
  v308 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v308);
  v298 = &v269 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v310 = &v269 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v309 = &v269 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v313 = *(v16 - 8);
  v17 = v313;
  MEMORY[0x1EEE9AC00](v16);
  v284 = &v269 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v303 = &v269 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v269 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v24);
  v318 = &v269 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v269 - v27;
  type metadata accessor for DiscontiguousAttributedSubstring();
  v304 = v1;
  RangeSet.ranges.getter();
  v300 = *(v17 + 16);
  v301 = v17 + 16;
  v300(v28, v23, v16);
  v302 = v24;
  v305 = *(v24 + 36);
  v29 = v28;
  v30 = v310;
  v31 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of Collection.startIndex.getter();
  v32 = *(v313 + 8);
  v313 += 8;
  v311 = v32;
  v32(v23, v16);
  v33 = v29;
  v34 = v305;
  dispatch thunk of Collection.endIndex.getter();
  if (*(v33 + v34) == v340)
  {
    return outlined destroy of TermOfAddress?(v33, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  }

  v296 = (v323 + 8);
  v297 = (v323 + 16);
  v317 = v31;
  v294 = v4;
  v295 = a1;
  v315 = v5;
  v320 = v16;
  v312 = v23;
  v293 = v33;
  while (1)
  {
    v36 = dispatch thunk of Collection.subscript.read();
    v38 = v37[3];
    v40 = *v37;
    v39 = v37[1];
    v348 = v37[2];
    v349 = v38;
    v346 = v40;
    v347 = v39;
    v36(&v340, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v41 = *v304;
    v340 = v346;
    v341 = v347;
    v342 = v348;
    v343 = v349;
    lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

    RangeSet.init(_:)();
    v319 = v41;
    *v30 = v41;
    RangeSet.init()();
    v42 = v320;
    RangeSet.ranges.getter();
    v43 = v318;
    v300(v318, v23, v42);
    v44 = *(v302 + 36);
    dispatch thunk of Collection.startIndex.getter();
    v311(v23, v42);
    dispatch thunk of Collection.endIndex.getter();
    if (*(v43 + v44) != v340)
    {
      v316 = v44;
      do
      {
        v61 = dispatch thunk of Collection.subscript.read();
        v63 = v62[4];
        v322 = v62[5];
        v323 = v63;
        v321 = v62[7];
        v61(&v340, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v64 = v319;
        v65 = *(v319 + 40);
        v370[15] = *(v319 + 24);
        v370[16] = v65;
        v370[17] = *(v319 + 56);
        swift_unknownObjectRetain();
        v66 = BigString.UnicodeScalarView.index(roundingDown:)();
        v68 = v67;
        v70 = v69;
        v72 = v71;
        swift_unknownObjectRelease();
        v73 = *(v64 + 40);
        v370[12] = *(v64 + 24);
        v370[13] = v73;
        v370[14] = *(v64 + 56);
        swift_unknownObjectRetain();
        v74 = BigString.UnicodeScalarView.index(roundingDown:)();
        v76 = v75;
        v78 = v77;
        v80 = v79;
        swift_unknownObjectRelease();
        *&v340 = v66;
        *(&v340 + 1) = v68;
        *&v341 = v70;
        *(&v341 + 1) = v72;
        *&v342 = v74;
        *(&v342 + 1) = v76;
        *&v343 = v78;
        *(&v343 + 1) = v80;
        if ((v74 ^ v66) >= 0x400)
        {
          v81 = RangeSet._ranges.modify();
          RangeSet.Ranges._insert(contentsOf:)();
          v81(&v330, 0);
        }

        v43 = v318;
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*(v43 + v316) != v340);
    }

    outlined destroy of TermOfAddress?(v43, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
    v45 = v308;
    v46 = v310;
    v47 = &v310[*(v308 + 24)];
    v48 = v315;
    v292 = *v297;
    v292(v47, v314, v315);
    v49 = v312;
    RangeSet.ranges.getter();
    v50 = RangeSet.Ranges.count.getter();
    v51 = v311;
    v311(v49, v320);
    v52 = *(v45 + 28);
    v53 = v320;
    LODWORD(v306) = v50 > 1;
    v46[v52] = v306;
    v54 = v303;
    RangeSet.ranges.getter();
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v330 == v340 || (v55 = dispatch thunk of Collection.subscript.read(), v57 = *v56, v289 = v56[1], v290 = v57, v58 = v56[2], *&v288 = v56[3], *(&v288 + 1) = v58, v55(&v340, 0), v51(v54, v53), v54 = v284, RangeSet.ranges.getter(), (dispatch thunk of Collection.isEmpty.getter() & 1) != 0))
    {
      v51(v54, v53);
      v59 = v319;
      v60 = *(v319 + 72);
      v323 = *(v319 + 96);
      if (v60)
      {
        v322 = *(v60 + 18);
      }

      else
      {
        v322 = 0;
      }

      v82 = *(v319 + 40);
      v370[6] = *(v319 + 24);
      v370[7] = v82;
      v370[8] = *(v319 + 56);
      v83 = BigString.startIndex.getter();
      v85 = v84;
      v87 = v86;
      v89 = v88;
      v90 = *(v59 + 72);
      v321 = *(v59 + 96);
      if (v90)
      {
        v316 = *(v90 + 18);
        v91 = *v296;
        swift_unknownObjectRetain();
        v92 = v315;
        v91(v314, v315);
        v291 = v91;
        v91(v307, v92);
        swift_unknownObjectRelease();
      }

      else
      {
        v93 = *v296;
        v94 = v315;
        (*v296)(v314, v315);
        v291 = v93;
        v93(v307, v94);
        v316 = 0;
      }

      v95 = *(v59 + 40);
      v370[3] = *(v59 + 24);
      v370[4] = v95;
      v370[5] = *(v59 + 56);
      v96 = BigString.startIndex.getter();
      v98 = v97;
      v100 = v99;
      v102 = v101;
      v103 = 0;
      v104 = 0;
      v105 = 0;
      v106 = 0;
      v107 = 0;
      v108 = -1;
      v109 = v83;
      v110 = v85;
      v111 = v87;
      v112 = v89;
      v113 = v96;
      v114 = v98;
      v115 = v100;
      v116 = v102;
      v117 = -1;
      v119 = v322;
      v118 = v323;
    }

    else
    {
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
      dispatch thunk of BidirectionalCollection.index(before:)();
      v132 = dispatch thunk of Collection.subscript.read();
      v135 = v133[4];
      v134 = v133[5];
      v136 = v133[7];
      v286 = v133[6];
      v287 = v134;
      v285 = v136;
      v132(&v340, 0);
      v51(v54, v53);
      v137 = v319;
      AttributedString.Guts.findRun(at:)(v290, v288, &v340);
      v322 = *(&v340 + 1);
      v323 = v340;
      v278 = *(&v341 + 1);
      v279 = v341;
      v282 = *(&v343 + 1);
      v283 = *(&v342 + 1);
      v280 = v343;
      v281 = v344;
      v138 = *(v137 + 40);
      v370[9] = *(v137 + 24);
      v370[10] = v138;
      v370[11] = *(v137 + 56);
      if ((BigString.endIndex.getter() ^ v135) >= 0x400)
      {
        v276 = v135;
        v162 = v53;
        AttributedString.Guts.findRun(at:)(v276, v285, &v340);
        v316 = *(&v340 + 1);
        v321 = v340;
        v277 = *(&v341 + 1);
        v107 = v341;
        v275 = *(&v342 + 1);
        v100 = *(&v343 + 1);
        v98 = v343;
        v102 = v344;
        v163 = v312;
        RangeSet.ranges.getter();
        v117 = RangeSet.Ranges.count.getter();
        v51(v163, v162);
        v164 = v48;
        v165 = *v296;
        (*v296)(v314, v164);
        v291 = v165;
        v165(v307, v164);
        v96 = v275;
        v106 = v277;
        v113 = v276;
        v103 = v278;
        v108 = 0;
        v105 = v306;
        v119 = v322;
        v118 = v323;
        v110 = v289;
        v109 = v290;
        v111 = *(&v288 + 1);
        v112 = v288;
        v87 = v282;
        v83 = v283;
        v85 = v280;
        v89 = v281;
        v115 = v286;
        v114 = v287;
        v116 = v285;
        v104 = v279;
      }

      else
      {
        v139 = *(v137 + 72);
        if (v139)
        {
          v140 = *(v137 + 80);
        }

        else
        {
          v140 = 0;
        }

        v277 = v140;
        v141 = *(v137 + 96);
        v142 = swift_unknownObjectRetain();
        v321 = v141;
        v316 = specialized Rope._endPath.getter(v142);
        if (v139)
        {
          swift_unknownObjectRelease();
        }

        v143 = v312;
        v144 = v315;
        RangeSet.ranges.getter();
        v145 = v320;
        v117 = RangeSet.Ranges.count.getter();
        v51(v143, v145);
        v146 = *v296;
        (*v296)(v314, v144);
        v291 = v146;
        v146(v307, v144);
        v108 = 0;
        v107 = 0;
        v113 = v135;
        v96 = v135;
        v115 = v286;
        v114 = v287;
        v98 = v287;
        v100 = v286;
        v116 = v285;
        v102 = v285;
        v105 = v306;
        v119 = v322;
        v118 = v323;
        v110 = v289;
        v109 = v290;
        v111 = *(&v288 + 1);
        v112 = v288;
        v87 = v282;
        v83 = v283;
        v85 = v280;
        v89 = v281;
        v103 = v278;
        v104 = v279;
        v106 = v277;
      }
    }

    v120 = v310;
    *(v310 + 1) = v103;
    *(v120 + 16) = v118;
    *(v120 + 24) = v119;
    *(v120 + 32) = v104;
    *(v120 + 40) = v83;
    *(v120 + 48) = v85;
    *(v120 + 56) = v87;
    *(v120 + 64) = v89;
    *(v120 + 72) = v109;
    *(v120 + 80) = v110;
    *(v120 + 88) = v111;
    *(v120 + 96) = v112;
    *(v120 + 104) = v108;
    *(v120 + 112) = 0;
    *(v120 + 113) = v105;
    v121 = v321;
    *(v120 + 120) = v106;
    *(v120 + 128) = v121;
    *(v120 + 136) = v316;
    *(v120 + 144) = v107;
    *(v120 + 152) = v96;
    *(v120 + 160) = v98;
    *(v120 + 168) = v100;
    *(v120 + 176) = v102;
    v30 = v120;
    *(v120 + 184) = v113;
    *(v120 + 192) = v114;
    *(v120 + 200) = v115;
    *(v120 + 208) = v116;
    *(v120 + 216) = v117;
    *(v120 + 224) = 0;
    *(v120 + 225) = v105;
    v122 = v309;
    result = outlined init with take of AttributedString.Runs(v120, v309, type metadata accessor for AttributedString.Runs);
    v123 = *(v122 + 8);
    v124 = *(v122 + 120);
    v125 = *(v122 + 184);
    v126 = *(v122 + 208);
    if (*(v122 + *(v308 + 28)))
    {
      result = 0;
      v166 = *(v122 + 112);
      v167 = *(v122 + 96);
      v289 = *(v122 + 104);
      v169 = *(v122 + 64);
      v168 = *(v122 + 72);
      v170 = *(v122 + 48);
      v283 = *(v122 + 56);
      v285 = v170;
      v171 = *(v122 + 32);
      v172 = *(v122 + 40);
      v270 = v125 >> 10;
      v271 = v126;
      v272 = v124;
      v273 = v168 >> 10;
      v173 = v123;
      v275 = v167;
      v278 = v126;
      v174 = v124;
      v175 = *(v122 + 16);
      v316 = *(v122 + 24);
      while (1)
      {
        LOBYTE(v330) = v166;
        if (v173 >= v124 && (v124 < v173 || v271 == 2 || v167 != 2 && v168 >> 10 >= v270))
        {
          v131 = v294;
          v130 = v295;
          v122 = v309;
          goto LABEL_34;
        }

        if (v173 < v123)
        {
          goto LABEL_163;
        }

        v177 = v123 < v173 || v275 == 2;
        v178 = v177;
        if (!v177)
        {
          if (v167 == 2)
          {
            goto LABEL_186;
          }

          if (v273 > v168 >> 10)
          {
            goto LABEL_173;
          }
        }

        if (v173 >= v174)
        {
          if (v174 < v173)
          {
            goto LABEL_174;
          }

          if (v278 == 2)
          {
            goto LABEL_187;
          }

          if (v167 == 2)
          {
            if (!v178)
            {
              goto LABEL_185;
            }

            goto LABEL_65;
          }

          if (v168 >> 10 >= v125 >> 10)
          {
            goto LABEL_179;
          }
        }

        if ((v178 & 1) == 0)
        {
          if (v167 == 2)
          {
            goto LABEL_185;
          }

          if (v273 > v168 >> 10)
          {
            goto LABEL_177;
          }
        }

LABEL_65:
        if (v174 < v173)
        {
          goto LABEL_164;
        }

        if (v173 >= v174 && v167 != 2)
        {
          if (v278 == 2)
          {
            goto LABEL_188;
          }

          if (v125 >> 10 < v168 >> 10)
          {
            goto LABEL_175;
          }
        }

        if (v171 == 1)
        {
          goto LABEL_184;
        }

        v179 = *v309;
        if (v175 != *(*v309 + 96))
        {
          goto LABEL_184;
        }

        v321 = v173;
        v322 = v171;
        v180 = v172 >> 11;
        v306 = v179;
        v286 = result;
        v287 = v167;
        v281 = v174;
        v282 = v125;
        *&v288 = v168;
        v276 = v172;
        v277 = v172 >> 11;
        v279 = v169;
        v323 = v175;
        if (v169 == 2)
        {
          v181 = *(v179 + 72);
          if (v181)
          {
            v182 = *(v179 + 80);
            v183 = *(v179 + 88);
            swift_unknownObjectRetain();
            v184 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v323, v316, v322, v181, v182, v183);
            swift_unknownObjectRelease();
            v179 = v306;
          }

          else
          {
            v184 = 0;
          }

          v187 = *(v179 + 24);
          v188 = *(v179 + 40);
          v365 = *(v179 + 56);
          v364 = v188;
          v363 = v187;
          v189 = *(v179 + 40);
          v360 = *(v179 + 24);
          v361 = v189;
          v362 = *(v179 + 56);
          v186 = v179;
          BigString.startIndex.getter();
          v290 = v190;
          v373[0] = v363;
          v373[1] = v364;
          v374 = v365;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v373, &v340);
          v180 = v184;
          v280 = BigString.UTF8View.index(_:offsetBy:)();
          result = outlined destroy of BigString(&v363);
        }

        else
        {
          v185 = *(v179 + 40);
          v357 = *(v179 + 24);
          v358 = v185;
          v359 = *(v179 + 56);
          v186 = v179;
          swift_unknownObjectRetain();
          v280 = BigString.UTF8View.index(roundingDown:)();
          result = swift_unknownObjectRelease();
        }

        v191 = v186[9];
        *(&v288 + 1) = v186[10];
        v192 = v186[12];
        v193 = v322;
        v194 = v323;
        *&v340 = v323;
        *(&v340 + 1) = v316;
        *&v341 = v322;
        if (__OFADD__(v321, 1))
        {
          goto LABEL_166;
        }

        if (v323 != v192)
        {
          goto LABEL_167;
        }

        ++v321;
        if (v322)
        {
          v195 = *(v322 + 24 * ((v316 >> ((4 * *(v322 + 18) + 8) & 0x3C)) & 0xF) + 24);
          v290 = v180 + v195;
          if (__OFADD__(v180, v195))
          {
            goto LABEL_172;
          }

          if (!v191)
          {
            goto LABEL_165;
          }

          result = swift_unknownObjectRetain();
          v196 = v316;
        }

        else
        {
          v197 = v316;
          swift_unknownObjectRetain();
          v198 = specialized Rope._Node.subscript.getter(v197, v191);
          v290 = v199;

          v290 = v180 + v198;
          if (__OFADD__(v180, v198))
          {
            goto LABEL_178;
          }

          v196 = v316;
          if (!v191)
          {
            goto LABEL_165;
          }
        }

        if (v196 >= (((-15 << ((4 * *(v191 + 18) + 8) & 0x3C)) - 1) & *(v191 + 18) | (*(v191 + 16) << ((4 * *(v191 + 18) + 8) & 0x3C))))
        {
          goto LABEL_165;
        }

        if (v193 && (v200 = (4 * *(v193 + 18) + 8) & 0x3C, v201 = v193, v202 = ((v196 >> v200) & 0xF) + 1, v202 < *(v201 + 16)))
        {
          v203 = v196;
          swift_unknownObjectRelease();
          v204 = (v202 << v200) | ((-15 << v200) - 1) & v203;
        }

        else if (specialized Rope._Node.formSuccessor(of:)(&v340, v191))
        {
          swift_unknownObjectRelease();
          v204 = *(&v340 + 1);
        }

        else
        {
          v205 = *(v191 + 18);
          v206 = *(v191 + 16);
          swift_unknownObjectRelease();
          v204 = ((-15 << ((4 * v205 + 8) & 0x3C)) - 1) & v205 | (v206 << ((4 * v205 + 8) & 0x3C));
          *&v340 = v194;
          *(&v340 + 1) = v204;
          *&v341 = 0;
        }

        v316 = v204;
        v322 = v341;
        v323 = v340;
        v207 = v309;
        v208 = v289;
        if (v330)
        {
          v292(v274, &v309[*(v308 + 24)], v315);
          if (v287 == 2)
          {
            v209 = v280;
          }

          else
          {
            v209 = v288;
          }

          v210 = v312;
          RangeSet.ranges.getter();
          v211 = v320;
          v212 = RangeSet.Ranges.count.getter();
          result = (v311)(v210, v211);
          if (v212 < 1)
          {
            goto LABEL_159;
          }

          v213 = 0;
          v214 = v209 >> 10;
          while (!__OFADD__(v213, v212))
          {
            v215 = (v213 + v212) / 2;
            v216 = v312;
            RangeSet.ranges.getter();
            v217 = v320;
            RangeSet.Ranges.subscript.getter();
            result = (v311)(v216, v217);
            if (v214 < v340 >> 10)
            {
              v212 = (v213 + v212) / 2;
              if (v213 >= v215)
              {
                goto LABEL_159;
              }
            }

            else
            {
              v218 = v342;
              if (v214 < v342 >> 10)
              {
                result = (v291)(v274, v315);
                v207 = v309;
                v208 = (v213 + v212) / 2;
                v124 = v272;
                goto LABEL_107;
              }

              v213 = v215 + 1;
              if (v215 + 1 >= v212)
              {
                goto LABEL_159;
              }
            }
          }

          goto LABEL_160;
        }

        v219 = v312;
        RangeSet.ranges.getter();
        v220 = v320;
        RangeSet.Ranges.subscript.getter();
        result = (v311)(v219, v220);
        v218 = v342;
LABEL_107:
        if (v290 < (v218 >> 11))
        {
          v289 = v208;
          if (v279 == 2)
          {
            v221 = *(v306 + 24);
            v222 = *(v306 + 40);
            v353 = *(v306 + 56);
            v352 = v222;
            v351 = v221;
            v223 = *(v306 + 40);
            v350[10] = *(v306 + 24);
            v350[11] = v223;
            v350[12] = *(v306 + 56);
            BigString.startIndex.getter();
            v375[0] = v351;
            v375[1] = v352;
            v376 = v353;
            outlined init with copy of Rope<BigString._Chunk>._Node?(v375, &v340);
            v172 = BigString.UTF8View.index(_:offsetBy:)();
            v285 = v224;
            v283 = v225;
            v169 = v226;
            outlined destroy of BigString(&v351);
          }

          else
          {
            v248 = *(v306 + 40);
            v350[7] = *(v306 + 24);
            v350[8] = v248;
            v350[9] = *(v306 + 56);
            if (__OFSUB__(v290, v277))
            {
              goto LABEL_180;
            }

            swift_unknownObjectRetain();
            v172 = BigString.UTF8View.index(_:offsetBy:)();
            v285 = v249;
            v283 = v250;
            v169 = v251;
            swift_unknownObjectRelease();
          }

          v166 = 0;
          v168 = v172;
          v167 = v169;
          goto LABEL_153;
        }

        v227 = __OFADD__(v208, 1);
        v228 = v208 + 1;
        if (v227)
        {
          goto LABEL_176;
        }

        v229 = v312;
        RangeSet.ranges.getter();
        v230 = v320;
        v231 = RangeSet.Ranges.count.getter();
        v311(v229, v230);
        if (v228 == v231)
        {
          v173 = *(v207 + 120);
          v175 = *(v207 + 128);
          v171 = *(v207 + 144);
          v316 = *(v207 + 136);
          v176 = *(v207 + 152);
          v285 = *(v207 + 160);
          v169 = *(v207 + 176);
          v283 = *(v207 + 168);
          v168 = *(v207 + 184);
          v167 = *(v207 + 208);
          v289 = *(v207 + 216);
          v125 = v168;
          v278 = v167;
          v174 = v173;
          v166 = *(v207 + 224);
          v172 = v176;
          v30 = v310;
          result = v286 + 1;
          if (__OFADD__(v286, 1))
          {
            goto LABEL_168;
          }
        }

        else
        {
          RangeSet.ranges.getter();
          v232 = v228;
          RangeSet.Ranges.subscript.getter();
          v311(v229, v230);
          v233 = v306;
          result = *(v306 + 72);
          v234 = *(v306 + 88);
          v235 = v340 >> 11;
          if (result)
          {
            v236 = *(v306 + 88);
          }

          else
          {
            v236 = 0;
          }

          if (v236 < v235)
          {
            goto LABEL_181;
          }

          v323 = *(v306 + 96);
          v287 = *(&v341 + 1);
          v288 = v340;
          v289 = v232;
          v290 = v341;
          if (result)
          {
            v237 = *(v306 + 80);
            v321 = v234;
            v322 = v237;
            v238 = (result + 16);
            v239 = *(result + 18);
            if (v235 < v234 && *(result + 16))
            {
              v316 = *(result + 16);
              result = swift_unknownObjectRetain_n();
              v285 = result;
              if (!v239)
              {
                v240 = 0;
                v243 = result;
                v124 = v272;
                v258 = v316;
LABEL_141:
                v259 = 0;
                v260 = 24;
                v252 = v235;
                while (1)
                {
                  v261 = *(v243 + v260);
                  v235 = v252 - v261;
                  if (__OFSUB__(v252, v261))
                  {
                    goto LABEL_169;
                  }

                  if (__OFADD__(v235, 1))
                  {
                    goto LABEL_170;
                  }

                  if (v235 + 1 < 1)
                  {
                    goto LABEL_149;
                  }

                  ++v259;
                  v260 += 24;
                  v252 -= v261;
                  if (v258 == v259)
                  {
                    v259 = v258;
                    goto LABEL_147;
                  }
                }
              }

              v240 = v239;
              v241 = result;
              v124 = v272;
              do
              {
                v242 = *v238;
                if (*v238)
                {
                  v244 = 0;
                  v245 = (v241 + 40);
                  while (1)
                  {
                    v246 = *v245;
                    v245 += 3;
                    v247 = v235 - v246;
                    if (__OFSUB__(v235, v246))
                    {
                      goto LABEL_161;
                    }

                    if (__OFADD__(v247, 1))
                    {
                      goto LABEL_162;
                    }

                    if (v247 + 1 < 1)
                    {
                      v242 = v244;
                      goto LABEL_122;
                    }

                    ++v244;
                    v235 = v247;
                    if (v242 == v244)
                    {
                      goto LABEL_131;
                    }
                  }
                }

                v247 = v235;
LABEL_131:
                if (v247)
                {
                  goto LABEL_171;
                }

                v235 = 0;
LABEL_122:
                v240 = (v242 << ((4 * v239 + 8) & 0x3C)) | ((-15 << ((4 * v239 + 8) & 0x3C)) - 1) & v240;
                v243 = *(v241 + 24 + 24 * v242);
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v238 = (v243 + 16);
                LOBYTE(v239) = *(v243 + 18);
                v241 = v243;
              }

              while (v239);
              v258 = *v238;
              if (*v238)
              {
                goto LABEL_141;
              }

              v259 = 0;
LABEL_147:
              if (!v235)
              {
                v252 = 0;
LABEL_149:
                swift_unknownObjectRelease();
                v255 = v240 & 0xFFFFFFFFFFFFF0FFLL | (v259 << 8);
                v257 = v323;
                v256 = v285;
                goto LABEL_150;
              }

              goto LABEL_183;
            }

            v253 = ((-15 << ((4 * v239 + 8) & 0x3C)) - 1) & v239 | (*(result + 16) << ((4 * v239 + 8) & 0x3C));
            v254 = swift_unknownObjectRetain();
            v255 = v253;
            v252 = 0;
            v256 = v254;
            v243 = 0;
            v124 = v272;
            v257 = v323;
LABEL_150:
            v316 = v255;
            v321 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v257, v255, v243, v256, v322);
            result = swift_unknownObjectRelease();
            v233 = v306;
          }

          else
          {
            v252 = 0;
            v243 = 0;
            v316 = 0;
            v321 = 0;
            v124 = v272;
          }

          v322 = v243;
          v262 = *(v233 + 40);
          v354 = *(v233 + 24);
          v355 = v262;
          v356 = *(v233 + 56);
          if (__OFSUB__(0, v252))
          {
            goto LABEL_182;
          }

          swift_unknownObjectRetain();
          v263 = v288;
          v167 = v287;
          v264 = BigString.UTF8View.index(_:offsetBy:)();
          v285 = v265;
          v283 = v266;
          v169 = v267;
          v268 = v264;
          swift_unknownObjectRelease();
          v168 = v263;
          v172 = v268;
          v166 = 0;
LABEL_153:
          v30 = v310;
          v174 = v281;
          v125 = v282;
          v173 = v321;
          v171 = v322;
          v175 = v323;
          result = v286 + 1;
          if (__OFADD__(v286, 1))
          {
            goto LABEL_168;
          }
        }
      }
    }

    v127 = v124 - v123;
    if (__OFSUB__(v124, v123))
    {
      break;
    }

    v128 = *(v122 + 176);
    if (v126 == 2)
    {
      v129 = v128 != 2;
      v131 = v294;
      v130 = v295;
    }

    else
    {
      v131 = v294;
      v130 = v295;
      v129 = v128 == 2 || (v125 ^ *(v122 + 152)) > 0x3FF;
    }

    result = v127 + v129;
    if (__OFADD__(v127, v129))
    {
      goto LABEL_158;
    }

LABEL_34:
    MEMORY[0x1865CD060]();
    v147 = v298;
    _s10Foundation16AttributedStringV4RunsVWOcTm_0(v122, v298, type metadata accessor for AttributedString.Runs);
    _s10Foundation16AttributedStringV4RunsVWOcTm_0(v147, v131, type metadata accessor for AttributedString.Runs);
    v148 = (v131 + *(v299 + 36));
    v149 = *(v147 + 56);
    v150 = *(v147 + 88);
    v344 = *(v147 + 72);
    v345[0] = v150;
    *(v345 + 10) = *(v147 + 98);
    v151 = *(v147 + 24);
    v340 = *(v147 + 8);
    v341 = v151;
    v342 = *(v147 + 40);
    v343 = v149;
    _s10Foundation16AttributedStringV4RunsVWOhTm_1(v147, type metadata accessor for AttributedString.Runs);
    v152 = v345[0];
    v148[4] = v344;
    v148[5] = v152;
    *(v148 + 90) = *(v345 + 10);
    v153 = v341;
    *v148 = v340;
    v148[1] = v153;
    v154 = v343;
    v148[2] = v342;
    v148[3] = v154;
    specialized IndexingIterator.next()(&v324);
    v332 = v326;
    v333 = v327;
    v334 = v328;
    v335 = v329;
    v330 = v324;
    v331 = v325;
    v156 = *(&v324 + 1);
    v155 = v324;
    v338 = v327;
    v339 = v328;
    v336 = v325;
    v337 = v326;
    for (i = v319; v324; v337 = v326)
    {

      specialized Dictionary<>.hash(into:)(v130, v155);
      specialized Set.hash(into:)(v130, v156);

      v158 = *(i + 24);
      v159 = *(i + 40);
      v370[2] = *(i + 56);
      v370[1] = v159;
      v370[0] = v158;
      v366 = v336;
      v367 = v337;
      v368 = v338;
      v369 = v339;
      v160 = *(i + 24);
      v161 = *(i + 40);
      v372 = *(i + 56);
      v371[0] = v160;
      v371[1] = v161;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v371, &v324);
      BigString.subscript.getter();
      outlined destroy of BigString(v370);
      BigSubstring.hash(into:)();
      outlined destroy of TermOfAddress?(&v330, &_s10Foundation16AttributedStringV4RunsV3RunVSgMd);
      outlined destroy of BigSubstring(v350);
      specialized IndexingIterator.next()(&v324);
      v332 = v326;
      v333 = v327;
      v334 = v328;
      v335 = v329;
      v330 = v324;
      v331 = v325;
      v156 = *(&v324 + 1);
      v155 = v324;
      v338 = v327;
      v339 = v328;
      v336 = v325;
    }

    outlined destroy of TermOfAddress?(v131, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
    _s10Foundation16AttributedStringV4RunsVWOhTm_1(v309, type metadata accessor for AttributedString.Runs);
    v33 = v293;
    dispatch thunk of Collection.endIndex.getter();
    v23 = v312;
    if (*(v33 + v305) == v340)
    {
      return outlined destroy of TermOfAddress?(v33, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
    }
  }

  __break(1u);
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
  __break(1u);
LABEL_179:
  __break(1u);
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
  return result;
}

Swift::Int DiscontiguousAttributedSubstring.hashValue.getter()
{
  Hasher.init(_seed:)();
  DiscontiguousAttributedSubstring.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DiscontiguousAttributedSubstring()
{
  Hasher.init(_seed:)();
  DiscontiguousAttributedSubstring.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DiscontiguousAttributedSubstring()
{
  Hasher.init(_seed:)();
  DiscontiguousAttributedSubstring.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t DiscontiguousAttributedSubstring.setAttributes(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v54 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v54 - v9;
  v11 = a1[1];
  v64 = *a1;
  v57 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = v4;
  v58 = v10;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_11;
  }

  v63 = v8;
  v13 = *v1;
  v14 = *(*v1 + 24);
  v15 = *(*v1 + 56);
  v75 = *(*v1 + 40);
  v76 = v15;
  v74 = v14;
  v17 = *(v13 + 9);
  v16 = *(v13 + 10);
  v19 = *(v13 + 11);
  v18 = *(v13 + 12);
  type metadata accessor for AttributedString.Guts();
  v20 = swift_allocObject();
  v21 = v16;
  v22 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v74, v65);
  v23 = swift_unknownObjectRetain();
  v62 = v18;
  specialized Rope._endPath.getter(v23);
  if (v17)
  {
    v24 = v19 == 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = v24;
  if (v25 != v22)
  {
    goto LABEL_33;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v27 = v75;
    *(v20 + 24) = v74;
    *(v20 + 16) = add_explicit;
    *(v20 + 40) = v27;
    *(v20 + 56) = v76;
    *(v20 + 72) = v17;
    *(v20 + 80) = v21;
    v28 = v62;
    *(v20 + 88) = v19;
    *(v20 + 96) = v28;
    *(v20 + 104) = MEMORY[0x1E69E7CC0];

    *v2 = v20;
    v4 = v59;
    v10 = v58;
    v8 = v63;
LABEL_11:
    type metadata accessor for DiscontiguousAttributedSubstring();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
    v56 = v2;
    RangeSet.ranges.getter();
    (*(v5 + 2))(v10, v7, v4);
    v29 = *(v8 + 36);
    v30 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
    dispatch thunk of Collection.startIndex.getter();
    (*(v5 + 1))(v7, v4);
    v31 = v10;
    dispatch thunk of Collection.endIndex.getter();
    v17 = v64;
    if (*&v10[v29] == v65[0])
    {
      return outlined destroy of TermOfAddress?(v31, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
    }

    v33 = v64 + 64;
    v55 = v29;
    v54 = v30;
LABEL_15:
    v34 = dispatch thunk of Collection.subscript.read();
    v36 = v35[5];
    v63 = v35[4];
    v62 = v36;
    v37 = v35[7];
    v61 = v35[6];
    v60 = v37;
    v34(v65, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v7 = *v56;
    v71 = *(*v56 + 24);
    v38 = *(v7 + 56);
    v72 = *(v7 + 40);
    v73 = v38;
    swift_unknownObjectRetain();
    v39 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v40 = *(v7 + 40);
    v68 = *(v7 + 24);
    v69 = v40;
    v70 = *(v7 + 56);
    swift_unknownObjectRetain();
    v41 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v19 = v41 >> 11;
    v42 = (v41 >> 11) - (v39 >> 11);
    v21 = (v7 + 72);
    v63 = v39 >> 11;
    specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v39 >> 11, v19, v42, v17, v57);
    v43 = 1 << *(v17 + 32);
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    else
    {
      v44 = -1;
    }

    v45 = v44 & *(v17 + 64);
    v2 = ((v43 + 63) >> 6);

    v20 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (v45)
    {
      v17 = v64;
LABEL_26:
      v47 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      outlined init with copy of AttributedString._AttributeValue(*(v17 + 56) + 72 * (v47 | (v20 << 6)), v65);
      v21 = v66;
      v48 = v67;
      outlined copy of AttributedString.AttributeRunBoundaries?(v66, v67);
      outlined destroy of AttributedString._AttributeValue(v65);
      if (v48 != 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
        }

        v50 = *(v5 + 2);
        v49 = *(v5 + 3);
        v51 = v50 + 1;
        if (v50 >= v49 >> 1)
        {
          v62 = v50 + 1;
          v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v5);
          v51 = v62;
          v5 = v53;
        }

        *(v5 + 2) = v51;
        v52 = &v5[16 * v50];
        *(v52 + 4) = v21;
        *(v52 + 5) = v48;
      }
    }

    v17 = v64;
    while (1)
    {
      v46 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v46 >= v2)
      {

        AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v63, v19, 0, v5);

        v31 = v58;
        dispatch thunk of Collection.endIndex.getter();
        if (*(v31 + v55) == v65[0])
        {
          return outlined destroy of TermOfAddress?(v31, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
        }

        goto LABEL_15;
      }

      v45 = *(v33 + 8 * v46);
      ++v20;
      if (v45)
      {
        v20 = v46;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }
}

uint64_t DiscontiguousAttributedSubstring.mergeAttributes(_:mergePolicy:)(uint64_t *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v61 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - v11;
  v13 = *a1;
  v66 = a1[1];
  v65 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = v6;
  v62 = v12;
  v73 = v13;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_11;
  }

  v72 = v10;
  v15 = *v3;
  v16 = *(*v3 + 24);
  v17 = *(*v3 + 56);
  v84 = *(*v3 + 40);
  v85 = v17;
  v83 = v16;
  v19 = v15[9];
  v18 = v15[10];
  v20 = v15[11];
  v21 = v15[12];
  type metadata accessor for AttributedString.Guts();
  v22 = swift_allocObject();
  v23 = v20;
  v24 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v83, v74);
  v25 = swift_unknownObjectRetain();
  v71 = v18;
  v6 = v21;
  specialized Rope._endPath.getter(v25);
  if (v19)
  {
    v26 = v23 == 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = v26;
  if (v27 != v24)
  {
    goto LABEL_34;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v29 = v84;
    *(v22 + 24) = v83;
    *(v22 + 16) = add_explicit;
    *(v22 + 40) = v29;
    *(v22 + 56) = v85;
    v30 = v71;
    *(v22 + 72) = v19;
    *(v22 + 80) = v30;
    *(v22 + 88) = v23;
    *(v22 + 96) = v6;
    *(v22 + 104) = MEMORY[0x1E69E7CC0];

    *v3 = v22;
    v6 = v63;
    v12 = v62;
    v13 = v73;
    v10 = v72;
LABEL_11:
    type metadata accessor for DiscontiguousAttributedSubstring();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
    v64 = v3;
    RangeSet.ranges.getter();
    (*(v7 + 16))(v12, v9, v6);
    v31 = *(v10 + 36);
    v32 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
    dispatch thunk of Collection.startIndex.getter();
    (*(v7 + 8))(v9, v6);
    v33 = v12;
    dispatch thunk of Collection.endIndex.getter();
    if (*&v12[v31] == v74[0])
    {
      return outlined destroy of TermOfAddress?(v33, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
    }

    v35 = v13 + 64;
    v67 = v31;
    v61 = v32;
    while (1)
    {
      v38 = dispatch thunk of Collection.subscript.read();
      v68 = v39[3];
      v40 = v39[5];
      v72 = v39[4];
      v71 = v40;
      v41 = v39[7];
      v70 = v39[6];
      v69 = v41;
      v38(v74, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v42 = *v64;
      v80 = *(*v64 + 24);
      v43 = *(v42 + 56);
      v81 = *(v42 + 40);
      v82 = v43;
      v36 = v33;
      swift_unknownObjectRetain();
      v44 = v73;
      v45 = BigString.UnicodeScalarView.index(roundingDown:)();
      swift_unknownObjectRelease();
      v46 = *(v42 + 40);
      v77 = *(v42 + 24);
      v78 = v46;
      v79 = *(v42 + 56);
      swift_unknownObjectRetain();
      v47 = BigString.UnicodeScalarView.index(roundingDown:)();
      swift_unknownObjectRelease();
      v23 = v45 >> 11;
      v7 = v47 >> 11;

      v72 = v42;
      specialized AttributedString._InternalRunsSlice.updateEach(with:)(v42, v23, v47 >> 11, v44, v65);
      v37 = v67;

      if (specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v44))
      {
        break;
      }

LABEL_15:
      v33 = v36;
      dispatch thunk of Collection.endIndex.getter();
      if (*(v36 + v37) == v74[0])
      {
        return outlined destroy of TermOfAddress?(v33, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
      }
    }

    v48 = 1 << *(v44 + 32);
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v50 = v49 & *(v44 + 64);
    v3 = (v48 + 63) >> 6;

    v22 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    v9 = 72;
    if (!v50)
    {
      goto LABEL_23;
    }

    do
    {
LABEL_21:
      while (1)
      {
        v51 = __clz(__rbit64(v50));
        v50 &= v50 - 1;
        outlined init with copy of AttributedString._AttributeValue(*(v73 + 56) + 72 * (v51 | (v22 << 6)), v74);
        v52 = v75;
        v6 = v76;
        outlined copy of AttributedString.AttributeRunBoundaries?(v75, v76);
        outlined destroy of AttributedString._AttributeValue(v74);
        if (v6 != 1)
        {
          break;
        }

        if (!v50)
        {
          goto LABEL_23;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
      }

      v55 = *(v19 + 2);
      v54 = *(v19 + 3);
      v56 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        v71 = v55 + 1;
        v58 = v19;
        v59 = v55;
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v58);
        v56 = v71;
        v55 = v59;
        v19 = v60;
      }

      *(v19 + 2) = v56;
      v57 = &v19[16 * v55];
      *(v57 + 4) = v52;
      *(v57 + 5) = v6;
    }

    while (v50);
LABEL_23:
    while (1)
    {
      v53 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v53 >= v3)
      {

        AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v23, v7, 0, v19);

        v6 = v63;
        v36 = v62;
        v37 = v67;
        goto LABEL_15;
      }

      v50 = *(v35 + 8 * v53);
      ++v22;
      if (v50)
      {
        v22 = v53;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }
}

uint64_t DiscontiguousAttributedSubstring.replaceAttributes(_:with:)(__int128 *a1, __int128 *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = *a1;
  v56 = *a2;
  v57 = v13;
  v14 = v13;
  v15 = v56;
  if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v13, v56))
  {
    result = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(*(&v57 + 1), *(&v56 + 1));
    if (result)
    {
      return result;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = MEMORY[0x1E69E7CC0];
  v55 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v48 = v7;
    v51 = v15;
    v52 = v10;
    v19 = *v3;
    v20 = *(*v3 + 24);
    v21 = *(*v3 + 56);
    v61 = *(*v3 + 40);
    v62 = v21;
    v60 = v20;
    v23 = v19[9];
    v22 = v19[10];
    v24 = v19[12];
    v53 = v19[11];
    type metadata accessor for AttributedString.Guts();
    v25 = swift_allocObject();
    v26 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v60, v59);
    v27 = swift_unknownObjectRetain();
    v50 = v22;
    v28 = v53;
    v49 = v24;
    specialized Rope._endPath.getter(v27);
    if (v23)
    {
      v29 = v28 == 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = v29;
    if (v30 == v26)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_12:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v32 = v61;
        *(v25 + 24) = v60;
        *(v25 + 16) = add_explicit;
        *(v25 + 40) = v32;
        *(v25 + 56) = v62;
        v33 = v50;
        *(v25 + 72) = v23;
        *(v25 + 80) = v33;
        v34 = v49;
        *(v25 + 88) = v28;
        *(v25 + 96) = v34;
        v18 = MEMORY[0x1E69E7CC0];
        *(v25 + 104) = MEMORY[0x1E69E7CC0];

        v3 = v55;
        *v55 = v25;
        v10 = v52;
        v15 = v51;
        v7 = v48;
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_12;
  }

LABEL_13:
  if (specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v14))
  {
    v35 = 1;
  }

  else
  {
    v35 = specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v15);
  }

  v54 = v14;
  v58 = v18;
  type metadata accessor for DiscontiguousAttributedSubstring();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  RangeSet.ranges.getter();
  (*(v7 + 16))(v12, v9, v6);
  v36 = *(v10 + 36);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of Collection.startIndex.getter();
  (*(v7 + 8))(v9, v6);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v12[v36] != v59[0])
  {
    LODWORD(v53) = v35 & 1;
    v52 = *(&v57 + 1);
    do
    {
      v37 = dispatch thunk of Collection.subscript.read();
      v39 = *v38;
      v40 = v38[4];
      v37(v59, 0);
      v41 = dispatch thunk of Collection.formIndex(after:)();
      v42 = *v3;
      MEMORY[0x1EEE9AC00](v41);
      v43 = v52;
      *(&v48 - 2) = v54;
      *(&v48 - 1) = v43;
      MEMORY[0x1EEE9AC00](v44);
      v45 = v56;
      *(&v48 - 3) = v57;
      *(&v48 - 2) = v45;
      *(&v48 - 16) = v53;
      *(&v48 - 1) = &v58;

      v3 = v55;
      AttributedString._InternalRunsSlice.updateEach(when:with:)(partial apply for closure #1 in AttributedString.replaceAttributes(_:with:), (&v48 - 4), partial apply for closure #2 in DiscontiguousAttributedSubstring.replaceAttributes(_:with:), (&v48 - 8), v42, v39 >> 11, v40 >> 11);

      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v12[v36] != v59[0]);
  }

  outlined destroy of TermOfAddress?(v12, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v46 = *(v58 + 16);
  if (v46)
  {
    v47 = (v58 + 40);
    do
    {
      AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(*(v47 - 1), *v47, 0, 0);
      v47 += 2;
      --v46;
    }

    while (v46);
  }
}

uint64_t closure #2 in DiscontiguousAttributedSubstring.replaceAttributes(_:with:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, unint64_t *a9)
{
  v9 = a4;
  v11 = a4 + 64;
  v12 = 1 << *(a4 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a4 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v17 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
  v119 = v9;
  while (v14)
  {
LABEL_13:
    v28 = (*(v9 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v14)))));
    v29 = *v28;
    v26 = v28[1];
    v135 = 0;
    memset(v134, 0, sizeof(v134));
    outlined init with copy of FloatingPointRoundingRule?(v134, &v129, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v120 = v26;
    v121 = v29;
    if (*(&v130 + 1))
    {
      v127[2] = v131;
      v127[3] = v132;
      v128 = v133;
      v127[0] = v129;
      v127[1] = v130;
      outlined init with copy of AttributedString._AttributeValue(v127, &v122);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = a1;
      v32 = *a1;
      v34 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v26);
      v35 = *(v32 + 16);
      v36 = (v33 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v38 = v33;
      if (*(v32 + 24) >= v37)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v39 = v32;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v60 = static _DictionaryStorage.copy(original:)();
          v39 = v60;
          if (*(v32 + 16))
          {
            v61 = (v60 + 64);
            v62 = (v32 + 64);
            v63 = ((1 << *(v39 + 32)) + 63) >> 6;
            if (v39 != v32 || v61 >= &v62[8 * v63])
            {
              memmove(v61, v62, 8 * v63);
            }

            v64 = 0;
            *(v39 + 16) = *(v32 + 16);
            v65 = 1 << *(v32 + 32);
            if (v65 < 64)
            {
              v66 = ~(-1 << v65);
            }

            else
            {
              v66 = -1;
            }

            v67 = v66 & *(v32 + 64);
            v68 = (v65 + 63) >> 6;
            v104 = v68;
            if (v67)
            {
              do
              {
                v69 = __clz(__rbit64(v67));
                v113 = (v67 - 1) & v67;
LABEL_42:
                v72 = v69 | (v64 << 6);
                v107 = 16 * v72;
                v73 = (*(v32 + 48) + 16 * v72);
                v109 = v73[1];
                v111 = *v73;
                v105 = 72 * v72;
                outlined init with copy of AttributedString._AttributeValue(*(v32 + 56) + 72 * v72, &v129);
                v74 = (*(v39 + 48) + v107);
                *v74 = v111;
                v74[1] = v109;
                v75 = *(v39 + 56) + v105;
                *v75 = v129;
                v76 = v130;
                v77 = v131;
                v78 = v132;
                *(v75 + 64) = v133;
                *(v75 + 32) = v77;
                *(v75 + 48) = v78;
                *(v75 + 16) = v76;

                v68 = v104;
                v67 = v113;
              }

              while (v113);
            }

            v70 = v64;
            while (1)
            {
              v64 = v70 + 1;
              if (__OFADD__(v70, 1))
              {
                break;
              }

              if (v64 >= v68)
              {
                goto LABEL_44;
              }

              v71 = *(v32 + 64 + 8 * v64);
              ++v70;
              if (v71)
              {
                v69 = __clz(__rbit64(v71));
                v113 = (v71 - 1) & v71;
                goto LABEL_42;
              }
            }

            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

LABEL_44:
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, isUniquelyReferenced_nonNull_native);
        v39 = v32;
        v40 = specialized __RawDictionaryStorage.find<A>(_:)(v121, v120);
        if ((v38 & 1) != (v41 & 1))
        {
          goto LABEL_74;
        }

        v34 = v40;
      }

      a1 = v31;
      v9 = v119;
      if (v38)
      {
        v18 = *(v39 + 56) + 72 * v34;
        v20 = *(v18 + 16);
        v19 = *(v18 + 32);
        v21 = *(v18 + 48);
        v133 = *(v18 + 64);
        v132 = v21;
        v129 = *v18;
        v130 = v20;
        v131 = v19;
        v22 = *(v39 + 56) + 72 * v34;
        v23 = v123;
        v24 = v124;
        v25 = v125;
        *(v22 + 64) = v126;
        *(v22 + 32) = v24;
        *(v22 + 48) = v25;
        *(v22 + 16) = v23;
        *v22 = v122;
        outlined destroy of AttributedString._AttributeValue(v127);
        v26 = v120;
      }

      else
      {
        *(v39 + 8 * (v34 >> 6) + 64) |= 1 << v34;
        v52 = (*(v39 + 48) + 16 * v34);
        v17 = v120;
        *v52 = v121;
        v52[1] = v120;
        v53 = *(v39 + 56) + 72 * v34;
        *v53 = v122;
        v54 = v123;
        v55 = v124;
        v56 = v125;
        *(v53 + 64) = v126;
        *(v53 + 32) = v55;
        *(v53 + 48) = v56;
        *(v53 + 16) = v54;
        v57 = *(v39 + 16);
        v58 = __OFADD__(v57, 1);
        v59 = v57 + 1;
        if (v58)
        {
          goto LABEL_70;
        }

        *(v39 + 16) = v59;

        outlined destroy of AttributedString._AttributeValue(v127);
        v129 = 0u;
        v130 = 0u;
        v131 = 0u;
        v132 = 0u;
        v133 = 0;
        v26 = v120;
      }

      *v31 = v39;
      v17 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
    }

    else
    {

      outlined destroy of TermOfAddress?(&v129, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v26);
      if (v43)
      {
        v44 = v42;
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v46 = *a1;
        if (v45)
        {
          v47 = *a1;
        }

        else
        {
          v106 = a1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v79 = static _DictionaryStorage.copy(original:)();
          v47 = v79;
          if (*(v46 + 16))
          {
            v80 = (v79 + 64);
            v81 = (v46 + 64);
            v82 = ((1 << *(v47 + 32)) + 63) >> 6;
            if (v47 != v46 || v80 >= &v81[8 * v82])
            {
              memmove(v80, v81, 8 * v82);
            }

            v83 = 0;
            *(v47 + 16) = *(v46 + 16);
            v84 = 1 << *(v46 + 32);
            if (v84 < 64)
            {
              v85 = ~(-1 << v84);
            }

            else
            {
              v85 = -1;
            }

            v86 = v85 & *(v46 + 64);
            v87 = (v84 + 63) >> 6;
            v108 = v87;
            if (v86)
            {
              do
              {
                v88 = __clz(__rbit64(v86));
                v114 = (v86 - 1) & v86;
LABEL_59:
                v91 = v88 | (v83 << 6);
                v110 = 16 * v91;
                v92 = (*(v46 + 48) + 16 * v91);
                v93 = v92[1];
                v112 = *v92;
                v94 = 72 * v91;
                outlined init with copy of AttributedString._AttributeValue(*(v46 + 56) + 72 * v91, &v129);
                v95 = (*(v47 + 48) + v110);
                *v95 = v112;
                v95[1] = v93;
                v96 = *(v47 + 56) + v94;
                *v96 = v129;
                v97 = v130;
                v98 = v131;
                v99 = v132;
                *(v96 + 64) = v133;
                *(v96 + 32) = v98;
                *(v96 + 48) = v99;
                *(v96 + 16) = v97;

                v87 = v108;
                v86 = v114;
              }

              while (v114);
            }

            v89 = v83;
            while (1)
            {
              v83 = v89 + 1;
              if (__OFADD__(v89, 1))
              {
                goto LABEL_73;
              }

              if (v83 >= v87)
              {
                break;
              }

              v90 = *(v46 + 64 + 8 * v83);
              ++v89;
              if (v90)
              {
                v88 = __clz(__rbit64(v90));
                v114 = (v90 - 1) & v90;
                goto LABEL_59;
              }
            }
          }

          a1 = v106;
          v9 = v119;
        }

        v48 = *(v47 + 56) + 72 * v44;
        v129 = *v48;
        v50 = *(v48 + 32);
        v49 = *(v48 + 48);
        v51 = *(v48 + 64);
        v130 = *(v48 + 16);
        v131 = v50;
        v133 = v51;
        v132 = v49;
        specialized _NativeDictionary._delete(at:)(v44, v47);
        *a1 = v47;
        v17 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
        v26 = v120;
      }

      else
      {
        v133 = 0;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
      }
    }

    v14 &= v14 - 1;
    AttributedString._AttributeStorage._attributeModified(_:old:new:)(v121, v26, &v129, v134);

    outlined destroy of TermOfAddress?(v134, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v129, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  }

  while (1)
  {
    v27 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_69;
    }

    if (v27 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v27);
    ++v16;
    if (v14)
    {
      v16 = v27;
      goto LABEL_13;
    }
  }

  LOBYTE(v134[0]) = 0;
  result = specialized AttributedString._AttributeStorage.mergeIn(_:mergePolicy:)(a6, v134);
  if ((a8 & 1) == 0)
  {
    return result;
  }

  v17 = a9;
  v14 = *a9;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a9 = v14;
  if ((result & 1) == 0)
  {
LABEL_71:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
    v14 = result;
    *v17 = result;
  }

  v102 = *(v14 + 16);
  v101 = *(v14 + 24);
  if (v102 >= v101 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1, v14);
    v14 = result;
    *v17 = result;
  }

  *(v14 + 16) = v102 + 1;
  v103 = v14 + 16 * v102;
  *(v103 + 32) = a2;
  *(v103 + 40) = a3;
  return result;
}

uint64_t DiscontiguousAttributedSubstring.subscript.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *&v70 = a3;
  v68 = a4;
  v69.n128_u64[0] = a2;
  v66 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v59 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v65 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  v19 = *v4;
  v20 = *(*v4 + 40);
  v95 = *(*v4 + 24);
  v96 = v20;
  v97 = *(v19 + 56);
  v21 = BigString.startIndex.getter();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = BigString.endIndex.getter();
  *&v98 = v19;
  *(&v98 + 1) = v21;
  *&v99 = v23;
  *(&v99 + 1) = v25;
  *&v100 = v27;
  *(&v100 + 1) = v28;
  *&v101 = v29;
  *(&v101 + 1) = v30;
  v102 = v31;
  v84 = v100;
  v85 = v101;
  v86 = v31;
  v82 = v98;
  v83 = v99;
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView();

  dispatch thunk of RangeExpression.relative<A>(to:)();
  v59 = *(&v89[1] + 8);
  v60 = v88;
  v69 = *(v89 + 8);
  v70 = v87;
  v66 = type metadata accessor for DiscontiguousAttributedSubstring();
  v32 = *(v66 + 20);
  RangeSet.ranges.getter();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of Collection.startIndex.getter();
  v33 = &v87;
  dispatch thunk of Collection.endIndex.getter();
  if (v82 == v87)
  {
LABEL_18:
    (*(v65 + 8))(v18, v11, v34);
    __break(1u);
    goto LABEL_19;
  }

  v35 = dispatch thunk of Collection.subscript.read();
  v64 = *v36;
  v35(&v87, 0);
  v33 = *(v65 + 8);
  v37 = v18;
  v18 = (v65 + 8);
  (v33)(v37, v11);
  RangeSet.ranges.getter();
  if ((dispatch thunk of Collection.isEmpty.getter() & 1) == 0)
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v38 = dispatch thunk of Collection.subscript.read();
    v40 = *(v39 + 32);
    v38(&v87, 0);
    (v33)(v15, v11);
    v34 = v69;
    if (v70 >> 10 >= v64 >> 10 && v40 >> 10 >= v69.n128_u64[0] >> 10)
    {
      v41 = v72;
      v42 = v73;
      (*(v72 + 16))(v62, &v71[v32], v73);
      v87 = v70;
      v88 = v60;
      v89[0] = v69;
      v89[1] = v59;
      v43 = lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

      v44 = v63;
      RangeSet.init(_:)();
      RangeSet.intersection(_:)();
      v46 = *(v41 + 8);
      v45 = v41 + 8;
      v71 = v46;
      (v46)(v44, v42);
      v47 = v68;
      *(v68 + *(v66 + 24)) = 0;
      *v47 = v19;
      RangeSet.ranges.getter();
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
      v18 = dispatch thunk of Sequence._copyToContiguousArray()();
      v48 = *(v18 + 2);
      if (!v48)
      {
LABEL_14:
        *&v78 = v18;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySny19CollectionsInternal9BigStringV5IndexVGGMd);
        lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [Range<BigString.Index>] and conformance [A], &_sSaySny19CollectionsInternal9BigStringV5IndexVGGMd);
        RangeSet.init<A>(_:)();
        outlined destroy of AttributedString.CharacterView(&v98);
        (v71)(v67, v42);
      }

      *&v70 = v43;
      v72 = v45;
      v11 = 0;
      v49 = *(v19 + 40);
      v92 = *(v19 + 24);
      v93 = v49;
      v94 = *(v19 + 56);
      v33 = (v48 - 1);
      v15 = 32;
      while (1)
      {
        v50 = *&v18[v15];
        v51 = *&v18[v15 + 16];
        v52 = *&v18[v15 + 48];
        v84 = *&v18[v15 + 32];
        v85 = v52;
        v82 = v50;
        v83 = v51;
        swift_unknownObjectRetain();
        BigString.UnicodeScalarView.subscript.getter();
        swift_unknownObjectRelease();
        v74 = v89[1];
        v75 = v89[2];
        v76 = v90;
        v77 = v91;
        v78 = v89[1];
        v79 = v89[2];
        v80 = v90;
        v81 = v91;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
        }

        outlined destroy of BigSubstring.UnicodeScalarView(&v87);
        if (v11 >= *(v18 + 2))
        {
          break;
        }

        v53 = &v18[v15];
        v54 = v78;
        v55 = v79;
        v56 = v81;
        *(v53 + 2) = v80;
        *(v53 + 3) = v56;
        *v53 = v54;
        *(v53 + 1) = v55;
        if (v33 == v11)
        {
          v42 = v73;
          goto LABEL_14;
        }

        v34 = *(v19 + 24);
        v57 = *(v19 + 40);
        v92 = v34;
        v93 = v57;
        v94 = *(v19 + 56);
        ++v11;
        v15 += 64;
        if (v11 >= *(v18 + 2))
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  result = (v33)(v15, v11);
  __break(1u);
  return result;
}

uint64_t DiscontiguousAttributedSubstring.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v102 = a1;
  v3 = type metadata accessor for DiscontiguousAttributedSubstring();
  MEMORY[0x1EEE9AC00](v3);
  v104 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v95 - v6;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v114 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v98 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v99 = &v95 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v100 = &v95 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v95 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v108 = &v95 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GMd);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v95 - v19;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v110 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v97 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v103 = &v95 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v105 = &v95 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v111 = &v95 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMd);
  RangeSet.ranges.getter();
  v28 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy10Foundation16AttributedStringV5IndexV_GMd);
  v29 = dispatch thunk of Collection.count.getter();
  v113 = v3;
  v109 = v1;
  v106 = v7;
  if (v29)
  {
    v30 = v29;
    v96 = v18;
    *&v132 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29 & ~(v29 >> 63), 0);
    v31 = v132;
    dispatch thunk of Collection.startIndex.getter();
    if (v30 < 0)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    do
    {
      v32 = dispatch thunk of Collection.subscript.read();
      v34 = *v33;
      v117 = v33[1];
      v118 = v34;
      v35 = *(v33 + 40);
      v115 = *(v33 + 56);
      v116 = v35;
      v32(v127, 0);
      *&v132 = v31;
      v37 = *(v31 + 16);
      v36 = *(v31 + 24);
      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        v31 = v132;
      }

      *(v31 + 16) = v37 + 1;
      v38 = (v31 + (v37 << 6));
      v39 = v117;
      v38[2] = v118;
      v38[3] = v39;
      v40 = v115;
      v38[4] = v116;
      v38[5] = v40;
      dispatch thunk of Collection.formIndex(after:)();
      --v30;
    }

    while (v30);
    (*(v96 + 8))(v20, v17);
  }

  else
  {
    (*(v18 + 8))(v20, v17);
    v31 = MEMORY[0x1E69E7CC0];
  }

  v127[0] = v31;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySny19CollectionsInternal9BigStringV5IndexVGGMd);
  v2 = lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
  v42 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [Range<BigString.Index>] and conformance [A], &_sSaySny19CollectionsInternal9BigStringV5IndexVGGMd);
  v28 = v111;
  *&v118 = v42;
  RangeSet.init<A>(_:)();
  v43 = v108;
  v44 = v112;
  RangeSet.ranges.getter();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v7 = v107;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v45 = v114 + 8;
  v46 = *(v114 + 8);
  v46(v43, v7);
  if (v127[0] == v132)
  {
    v47 = *v109;
    (*(v110 + 16))(v105, v28, v44);
    v48 = v106;
    *(v106 + *(v113 + 24)) = 0;
    *v48 = v47;

    RangeSet.ranges.getter();
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
    v20 = dispatch thunk of Sequence._copyToContiguousArray()();
    v49 = *(v20 + 2);
    if (v49)
    {
      *&v116 = v2;
      *&v117 = v41;
      v50 = 0;
      v51 = *(v47 + 40);
      v136 = *(v47 + 24);
      v137 = v51;
      v2 = v127;
      v138 = *(v47 + 56);
      v28 = &v119;
      v30 = v136;
      v52 = v49 - 1;
      v7 = 32;
      while (1)
      {
        v53 = *&v20[v7];
        v54 = *&v20[v7 + 16];
        v55 = *&v20[v7 + 48];
        v134 = *&v20[v7 + 32];
        v135 = v55;
        v132 = v53;
        v133 = v54;
        swift_unknownObjectRetain();
        BigString.UnicodeScalarView.subscript.getter();
        swift_unknownObjectRelease();
        v119 = v128;
        v120 = v129;
        v121 = v130;
        v122 = v131;
        v123 = v128;
        v124 = v129;
        v125 = v130;
        v126 = v131;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
        }

        outlined destroy of BigSubstring.UnicodeScalarView(v127);
        if (v50 >= *(v20 + 2))
        {
          break;
        }

        v56 = &v20[v7];
        v57 = v123;
        v58 = v124;
        v59 = v126;
        *(v56 + 2) = v125;
        *(v56 + 3) = v59;
        *v56 = v57;
        *(v56 + 1) = v58;
        if (v52 == v50)
        {
          v44 = v112;
          v28 = v111;
          goto LABEL_32;
        }

        v60 = *(v47 + 40);
        v136 = *(v47 + 24);
        v137 = v60;
        v138 = *(v47 + 56);
        v30 = v136;
        ++v50;
        v7 += 64;
        if (v50 >= *(v20 + 2))
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_32:
    *&v123 = v20;

    v90 = v106;
    RangeSet.init<A>(_:)();
    v91 = *(v110 + 8);
    v91(v105, v44);
    v91(v28, v44);

    return outlined init with take of AttributedString.Runs(v90, v102, type metadata accessor for DiscontiguousAttributedSubstring);
  }

  *&v117 = v41;
  v114 = v45;
  *&v115 = v46;
  v61 = *(v113 + 20);
  v20 = v109;
  v30 = v101;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v132 == v127[0])
  {
LABEL_42:
    (v115)(v30, v7);
    __break(1u);
    goto LABEL_43;
  }

  v62 = dispatch thunk of Collection.subscript.read();
  v105 = *v63;
  v62(v127, 0);
  v64 = v30;
  v30 = v115;
  (v115)(v64, v7);
  v106 = v61;
  v20 = v100;
  RangeSet.ranges.getter();
  if (dispatch thunk of Collection.isEmpty.getter())
  {
LABEL_43:
    (v30)(v20, v7);
    __break(1u);
    goto LABEL_44;
  }

  *&v116 = v2;
  v65 = v20;
  dispatch thunk of Collection.endIndex.getter();
  v20 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v66 = dispatch thunk of Collection.subscript.read();
  v101 = *(v67 + 32);
  v66(v127, 0);
  (v30)(v65, v7);
  v2 = v99;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v132 == v127[0])
  {
LABEL_44:
    (v30)(v2, v7);
    __break(1u);
    goto LABEL_45;
  }

  v68 = v2;
  v69 = dispatch thunk of Collection.subscript.read();
  v2 = *v70;
  v69(v127, 0);
  (v30)(v68, v7);
  v28 = v98;
  RangeSet.ranges.getter();
  if ((dispatch thunk of Collection.isEmpty.getter() & 1) == 0)
  {
    dispatch thunk of Collection.endIndex.getter();
    dispatch thunk of BidirectionalCollection.index(before:)();
    v71 = dispatch thunk of Collection.subscript.read();
    v73 = *(v72 + 32);
    v71(v127, 0);
    (v30)(v28, v7);
    if (v2 >> 10 < v105 >> 10 || v101 >> 10 < v73 >> 10)
    {
      goto LABEL_41;
    }

    v74 = *v109;
    v75 = v112;
    (*(v110 + 16))(v97, v106 + v109, v112);

    v76 = v111;
    RangeSet.intersection(_:)();
    v77 = v104;
    *&v104[*(v113 + 24)] = 0;
    *v77 = v74;
    RangeSet.ranges.getter();
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
    v20 = dispatch thunk of Sequence._copyToContiguousArray()();
    v78 = *(v20 + 2);
    if (v78)
    {
      v79 = 0;
      v80 = *(v74 + 40);
      v136 = *(v74 + 24);
      v137 = v80;
      v2 = v127;
      v138 = *(v74 + 56);
      v28 = &v119;
      v30 = v136;
      v81 = v78 - 1;
      v7 = 32;
      while (1)
      {
        v82 = *&v20[v7];
        v83 = *&v20[v7 + 16];
        v84 = *&v20[v7 + 48];
        v134 = *&v20[v7 + 32];
        v135 = v84;
        v132 = v82;
        v133 = v83;
        swift_unknownObjectRetain();
        BigString.UnicodeScalarView.subscript.getter();
        swift_unknownObjectRelease();
        v119 = v128;
        v120 = v129;
        v121 = v130;
        v122 = v131;
        v123 = v128;
        v124 = v129;
        v125 = v130;
        v126 = v131;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
        }

        outlined destroy of BigSubstring.UnicodeScalarView(v127);
        if (v79 >= *(v20 + 2))
        {
          goto LABEL_37;
        }

        v85 = &v20[v7];
        v86 = v123;
        v87 = v124;
        v88 = v126;
        *(v85 + 2) = v125;
        *(v85 + 3) = v88;
        *v85 = v86;
        *(v85 + 1) = v87;
        if (v81 == v79)
        {
          v75 = v112;
          v76 = v111;
          break;
        }

        v89 = *(v74 + 40);
        v136 = *(v74 + 24);
        v137 = v89;
        v138 = *(v74 + 56);
        v30 = v136;
        ++v79;
        v7 += 64;
        if (v79 >= *(v20 + 2))
        {
          goto LABEL_39;
        }
      }
    }

    *&v123 = v20;

    v92 = v104;
    RangeSet.init<A>(_:)();
    v93 = *(v110 + 8);
    v93(v103, v75);
    v93(v76, v75);

    v90 = v92;
    return outlined init with take of AttributedString.Runs(v90, v102, type metadata accessor for DiscontiguousAttributedSubstring);
  }

LABEL_45:
  result = (v30)(v28, v7);
  __break(1u);
  return result;
}

uint64_t DiscontiguousAttributedSubstring.characters.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v31[-v3];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v4 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v31[-v5];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GSny10Foundation010AttributedJ0VAJVGGMd);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v31[-v7];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMd);
  v35 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v31[-v9];
  v11 = *v1;
  v12 = *(*v1 + 40);
  v43 = *(*v1 + 24);
  v44 = v12;
  v45 = *(v11 + 56);
  v13 = BigString.startIndex.getter();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = BigString.endIndex.getter();
  *&v46 = v11;
  *(&v46 + 1) = v13;
  *&v47 = v15;
  *(&v47 + 1) = v17;
  *&v48 = v19;
  *(&v48 + 1) = v20;
  *&v49 = v21;
  *(&v49 + 1) = v22;
  v50 = v23;
  type metadata accessor for DiscontiguousAttributedSubstring();
  v24 = *(v11 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  RangeSet.ranges.getter();
  v25 = *(v4 + 32);
  v26 = v34;
  v27 = v33;
  v25(v34, v6, v33);
  v28 = swift_allocObject();
  *(v28 + 16) = v24;
  v25(v8, v26, v27);
  v29 = &v8[*(v32 + 44)];
  *v29 = partial apply for closure #1 in RangeSet<>._attributedStringIndices(version:);
  v29[1] = v28;
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type LazyMapSequence<RangeSet<BigString.Index>.Ranges, Range<AttributedString.Index>> and conformance LazyMapSequence<A, B>, &_ss15LazyMapSequenceVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GSny10Foundation010AttributedJ0VAJVGGMd);
  RangeSet.init<A>(_:)();
  v40 = v48;
  v41 = v49;
  v42 = v50;
  v39 = v47;
  v38 = v46;
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView();
  Collection.subscript.getter();
  (*(v35 + 8))(v10, v36);
  return outlined destroy of AttributedString.CharacterView(&v46);
}

uint64_t DiscontiguousAttributedSubstring.unicodeScalars.getter@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v36 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v38 = &v36 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GSny10Foundation010AttributedJ0VAJVGGMd);
  MEMORY[0x1EEE9AC00](v41);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMd);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v36 - v8;
  v9 = *v1;
  v10 = *(*v1 + 24);
  v11 = *(*v1 + 56);
  v73[1] = *(*v1 + 40);
  v73[2] = v11;
  v73[0] = v10;
  v12 = *(v9 + 56);
  v13 = *(v9 + 64);
  v14 = *(v9 + 24);
  v36 = *(v9 + 40);
  v37 = v14;
  v15 = BigString.startIndex.getter();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = BigString.endIndex.getter();
  v61 = v15;
  v62 = v17;
  v63 = v19;
  v64 = v21;
  v65 = v22;
  v66 = v23;
  v67 = v24;
  v68 = v25;
  v69 = v37;
  v70 = v36;
  v71 = v12;
  v72 = v13;
  swift_retain_n();
  outlined init with copy of BigString(v73, v56);
  BigString.UnicodeScalarView.subscript.getter();

  outlined destroy of BigString(v73);
  outlined destroy of BigSubstring.UnicodeScalarView(v56);
  v52 = v57;
  v53 = v58;
  v54 = v59;
  v55 = v60;
  *&v74[8] = v57;
  *&v74[24] = v58;
  *&v74[40] = v59;
  *&v74[56] = v60;
  *v74 = v9;
  *&v74[72] = 0;
  type metadata accessor for DiscontiguousAttributedSubstring();
  v26 = *(v9 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v27 = v38;
  RangeSet.ranges.getter();
  v28 = *(v40 + 32);
  v29 = v43;
  v30 = v27;
  v31 = v42;
  v28(v43, v30, v42);
  v32 = swift_allocObject();
  *(v32 + 16) = v26;
  v28(v6, v29, v31);
  v33 = &v6[*(v41 + 44)];
  *v33 = closure #1 in RangeSet<>._attributedStringIndices(version:)partial apply;
  *(v33 + 1) = v32;
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index();
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type LazyMapSequence<RangeSet<BigString.Index>.Ranges, Range<AttributedString.Index>> and conformance LazyMapSequence<A, B>, &_ss15LazyMapSequenceVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GSny10Foundation010AttributedJ0VAJVGGMd);
  v34 = v39;
  RangeSet.init<A>(_:)();
  v49 = *&v74[32];
  v50 = *&v74[48];
  v51 = *&v74[64];
  v47 = *v74;
  v48 = *&v74[16];
  lazy protocol witness table accessor for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView();
  Collection.subscript.getter();
  (*(v44 + 8))(v34, v45);
  return outlined destroy of AttributedString.UnicodeScalarView(v74);
}

uint64_t DiscontiguousAttributedSubstring.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v34 = a3;
  v37 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v35 = *(v7 - 8);
  v8 = v35;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  type metadata accessor for DiscontiguousAttributedSubstring();
  v56 = 0u;
  v57 = 0u;
  v58 = 0;
  v54 = 0u;
  v55 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v38 = v3;
  RangeSet.ranges.getter();
  (*(v8 + 16))(v14, v10, v7);
  v15 = *(v12 + 44);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of Collection.startIndex.getter();
  (*(v35 + 8))(v10, v7);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v14[v15] != v49)
  {
    while (1)
    {
      v21 = dispatch thunk of Collection.subscript.read();
      v23 = v22[3];
      v25 = *v22;
      v24 = v22[1];
      v59[2] = v22[2];
      v59[3] = v23;
      v59[0] = v25;
      v59[1] = v24;
      v21(&v49, 0);
      dispatch thunk of Collection.formIndex(after:)();
      AttributedString.Guts.getUniformValue<A>(in:key:)(v59, a1, v37, &v44);
      if (!*(&v45 + 1))
      {
        break;
      }

      v51 = v46;
      v52 = v47;
      v53 = v48;
      v49 = v44;
      v50 = v45;
      outlined init with copy of FloatingPointRoundingRule?(&v54, &v39, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (*(&v40 + 1))
      {
        v46 = v41;
        v47 = v42;
        v48 = v43;
        v44 = v39;
        v45 = v40;
        v26 = specialized static AttributedString._AttributeValue.== infix(_:_:)(&v44, &v49);
        outlined destroy of AttributedString._AttributeValue(&v44);
        if ((v26 & 1) == 0)
        {
          outlined destroy of AttributedString._AttributeValue(&v49);
          v27 = &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd;
          v28 = v14;
          goto LABEL_13;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v39, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      outlined destroy of TermOfAddress?(&v54, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v56 = v51;
      v57 = v52;
      v58 = v53;
      v54 = v49;
      v55 = v50;
      dispatch thunk of Collection.endIndex.getter();
      if (*&v14[v15] == v49)
      {
        goto LABEL_2;
      }
    }

    outlined destroy of TermOfAddress?(v14, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
    v27 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
    v28 = &v44;
LABEL_13:
    outlined destroy of TermOfAddress?(v28, v27);
    goto LABEL_14;
  }

LABEL_2:
  outlined destroy of TermOfAddress?(v14, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  if (!*(&v55 + 1))
  {
LABEL_14:
    (*(*(AssociatedTypeWitness - 8) + 56))(v34, 1, 1);
    return outlined destroy of TermOfAddress?(&v54, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  }

  outlined init with copy of AttributedString._AttributeValue(&v54, &v49);
  outlined init with copy of Hashable & Sendable(&v49, &v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
  v16 = v33;
  v17 = AssociatedTypeWitness;
  if (swift_dynamicCast())
  {
    outlined destroy of AttributedString._AttributeValue(&v49);
    v18 = *(v17 - 8);
    v19 = *(v18 + 56);
    v19(v16, 0, 1, v17);
    v20 = v34;
    (*(v18 + 32))(v34, v16, v17);
    v19(v20, 0, 1, v17);
    return outlined destroy of TermOfAddress?(&v54, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  }

  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  result = (*(v31 + 8))(v16, v32);
  __break(1u);
  return result;
}

uint64_t DiscontiguousAttributedSubstring.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v9 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v116 = &v95 - v10;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v95 - v13;
  v118 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v95 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v21);
  v108 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v111 = &v95 - v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v119 = a4;
  *&v110 = AssociatedTypeWitness;
  v97 = a1;
  v96 = v16;
  v98 = v17;
  v95 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v109 = v14;
    v26 = *v5;
    v27 = *(*v5 + 24);
    v28 = *(*v5 + 56);
    v132 = *(*v5 + 40);
    v133 = v28;
    v131 = v27;
    v30 = v26[9];
    v29 = v26[10];
    v31 = v26[11];
    v32 = v26[12];
    type metadata accessor for AttributedString.Guts();
    v33 = swift_allocObject();
    v34 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v131, &v122);
    v35 = swift_unknownObjectRetain();
    v114 = v29;
    specialized Rope._endPath.getter(v35);
    if (v30)
    {
      v36 = v31 == 0;
    }

    else
    {
      v36 = 1;
    }

    v37 = v36;
    if (v37 == v34)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_10:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v39 = v132;
        *(v33 + 24) = v131;
        *(v33 + 16) = add_explicit;
        *(v33 + 40) = v39;
        *(v33 + 56) = v133;
        v40 = v114;
        *(v33 + 72) = v30;
        *(v33 + 80) = v40;
        *(v33 + 88) = v31;
        *(v33 + 96) = v32;
        *(v33 + 104) = MEMORY[0x1E69E7CC0];

        *v5 = v33;
        a4 = v119;
        v16 = v96;
        v17 = v98;
        v14 = v109;
        AssociatedTypeWitness = v110;
        v20 = v95;
        a1 = v97;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  (*(v17 + 16))(v19, a1, v16);
  v41 = (*(v20 + 48))(v19, 1, AssociatedTypeWitness);
  v117 = v5;
  if (v41 == 1)
  {
    v42 = *(v17 + 8);
    v98 = v17 + 8;
    v109 = v42;
    (v42)(v19, v16);
    type metadata accessor for DiscontiguousAttributedSubstring();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
    v43 = v116;
    RangeSet.ranges.getter();
    v44 = v113;
    v45 = v120;
    (*(v9 + 16))(v113, v43, v120);
    v46 = *(v115 + 36);
    v47 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
    dispatch thunk of Collection.startIndex.getter();
    (*(v9 + 8))(v43, v45);
    dispatch thunk of Collection.endIndex.getter();
    if (*(v44 + v46) != *&v127[0])
    {
      v110 = xmmword_181218E20;
      v112 = v46;
      v111 = v47;
      do
      {
        v54 = dispatch thunk of Collection.subscript.read();
        v116 = v55[4];
        v56 = v55[7];
        v115 = v55[6];
        v114 = v56;
        v54(v127, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v57 = *v117;
        v58 = *(*v117 + 40);
        v122 = *(*v117 + 24);
        v123 = v58;
        *v124 = *(v57 + 56);
        swift_unknownObjectRetain();
        v59 = v119;
        v60 = BigString.UnicodeScalarView.index(roundingDown:)();
        swift_unknownObjectRelease();
        v61 = *(v57 + 40);
        v128 = *(v57 + 24);
        v129 = v61;
        v130 = *(v57 + 56);
        swift_unknownObjectRetain();
        v62 = BigString.UnicodeScalarView.index(roundingDown:)();
        v63 = swift_unknownObjectRelease();
        v64 = v60 >> 11;
        v65 = v62 >> 11;
        MEMORY[0x1EEE9AC00](v63);
        v66 = v118;
        *(&v95 - 2) = v118;
        *(&v95 - 1) = v59;
        AttributedString._InternalRunsSlice.updateEach(with:)(partial apply for closure #1 in AttributedString.Guts.removeAttributeValue<A>(forKey:in:), (&v95 - 4), v57, v60 >> 11, v65);
        v67 = *(v59 + 32);
        v67(v127, v66, v59);
        if (*(&v127[0] + 1) == 1)
        {
          v53 = v112;
        }

        else
        {
          outlined consume of AttributedString.AttributeRunBoundaries?(*&v127[0], *(&v127[0] + 1));
          v67(v127, v66, v59);
          v68 = *(&v127[0] + 1);
          if (*(&v127[0] + 1) == 1)
          {
            v69 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v70 = *&v127[0];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
            v69 = swift_allocObject();
            *(v69 + 16) = v110;
            *(v69 + 32) = v70;
            *(v69 + 40) = v68;
          }

          v53 = v112;
          AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v64, v65, 0, v69);
        }

        v44 = v113;
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*(v44 + v53) != *&v127[0]);
    }

    (v109)(v97, v96);
    return outlined destroy of TermOfAddress?(v44, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  }

  else
  {
    (*(v20 + 32))(v111, v19, AssociatedTypeWitness);
    type metadata accessor for DiscontiguousAttributedSubstring();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
    v49 = v116;
    RangeSet.ranges.getter();
    v50 = v120;
    (*(v9 + 16))(v14, v49, v120);
    v51 = &v14[*(v115 + 36)];
    v52 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
    dispatch thunk of Collection.startIndex.getter();
    (*(v9 + 8))(v49, v50);
    dispatch thunk of Collection.endIndex.getter();
    if (*v51 != v122)
    {
      v105 = (v95 + 16);
      v104 = a4 + 32;
      v103 = a4 + 40;
      v102 = a4 + 48;
      v101 = (v95 + 8);
      v100 = a4 + 24;
      v99 = xmmword_181218E20;
      v109 = v14;
      v107 = v51;
      v106 = v52;
      do
      {
        v71 = dispatch thunk of Collection.subscript.read();
        v112 = v72[2];
        v73 = v72[5];
        v116 = v72[4];
        v115 = v73;
        v74 = v72[7];
        v114 = v72[6];
        v113 = v74;
        v71(&v122, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v75 = *v117;
        v76 = *v105;
        v77 = v108;
        v78 = v110;
        (*v105)(v108, v111, v110);
        *(&v123 + 1) = v78;
        v79 = v118;
        *v124 = swift_getAssociatedConformanceWitness();
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v122);
        v76(boxed_opaque_existential_0, v77, v78);
        (*(a4 + 32))(&v121, v79, a4);
        *&v124[8] = v121;
        v125 = (*(a4 + 40))(v79, a4) & 1;
        v81 = (*(a4 + 48))(v79, a4);
        (*v101)(v77, v78);
        v126 = v81;
        v82 = (*(a4 + 24))(v79, a4);
        v84 = v83;
        v85 = *(v75 + 40);
        v128 = *(v75 + 24);
        v129 = v85;
        v130 = *(v75 + 56);
        swift_unknownObjectRetain();
        v86 = BigString.UnicodeScalarView.index(roundingDown:)();
        swift_unknownObjectRelease();
        v87 = *(v75 + 40);
        v127[0] = *(v75 + 24);
        v127[1] = v87;
        v127[2] = *(v75 + 56);
        swift_unknownObjectRetain();
        v88 = BigString.UnicodeScalarView.index(roundingDown:)();
        v89 = swift_unknownObjectRelease();
        v90 = v86 >> 11;
        v91 = v88 >> 11;
        MEMORY[0x1EEE9AC00](v89);
        *(&v95 - 4) = v82;
        *(&v95 - 3) = v84;
        *(&v95 - 2) = &v122;
        AttributedString._InternalRunsSlice.updateEach(with:)(partial apply for closure #1 in AttributedString.Guts.setAttributeValue(_:forKey:in:), (&v95 - 6), v75, v90, v91);

        v92 = *&v124[16];
        if (*&v124[16] != 1)
        {
          v93 = *&v124[8];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
          v94 = swift_allocObject();
          *(v94 + 16) = v99;
          *(v94 + 32) = v93;
          *(v94 + 40) = v92;
          outlined copy of AttributedString.AttributeRunBoundaries?(v93, v92);
          AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v90, v91, 0, v94);
        }

        outlined destroy of AttributedString._AttributeValue(&v122);
        v14 = v109;
        dispatch thunk of Collection.endIndex.getter();
        a4 = v119;
      }

      while (*v107 != v122);
    }

    (*(v98 + 8))(v97, v96);
    outlined destroy of TermOfAddress?(v14, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
    return (*(v95 + 8))(v111, v110);
  }
}

void (*DiscontiguousAttributedSubstring.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x6A0uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[184] = v54;
  v6[183] = a4;
  v6[182] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v7 + 1480) = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v49 = v9;
  *(v7 + 1488) = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    *(v7 + 1496) = swift_coroFrameAlloc();
    *(v7 + 1504) = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    *(v7 + 1496) = malloc(*(v9 + 64));
    *(v7 + 1504) = malloc(v10);
    v11 = malloc(v10);
  }

  *(v7 + 1512) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  *(v7 + 1520) = v12;
  v13 = *(v12 - 8);
  if (v5)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(*(v12 - 8) + 64));
  }

  v15 = v14;
  *(v7 + 1528) = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  *(v7 + 1536) = v16;
  v17 = *(*(v16 - 8) + 64);
  if (v5)
  {
    *(v7 + 1544) = swift_coroFrameAlloc();
    *(v7 + 1552) = swift_coroFrameAlloc();
    *(v7 + 1560) = swift_coroFrameAlloc();
    *(v7 + 1568) = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    *(v7 + 1544) = malloc(*(*(v16 - 8) + 64));
    *(v7 + 1552) = malloc(v17);
    *(v7 + 1560) = malloc(v17);
    *(v7 + 1568) = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  *(v7 + 1576) = v18;
  v20 = type metadata accessor for Optional();
  *(v7 + 1584) = v20;
  v21 = *(v20 - 8);
  v46 = v21;
  v47 = v20;
  *(v7 + 1592) = v21;
  v22 = *(v21 + 64);
  if (v5)
  {
    *(v7 + 1600) = swift_coroFrameAlloc();
    *(v7 + 1608) = swift_coroFrameAlloc();
    *(v7 + 1616) = swift_coroFrameAlloc();
    v48 = swift_coroFrameAlloc();
    *(v7 + 1624) = v48;
    v23 = swift_coroFrameAlloc();
  }

  else
  {
    *(v7 + 1600) = malloc(*(v21 + 64));
    *(v7 + 1608) = malloc(v22);
    *(v7 + 1616) = malloc(v22);
    v48 = malloc(v22);
    *(v7 + 1624) = v48;
    v23 = malloc(v22);
  }

  v50 = v23;
  *(v7 + 1632) = v23;
  v24 = type metadata accessor for DiscontiguousAttributedSubstring();
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  *(v7 + 1688) = *(v24 + 20);
  *(v7 + 1640) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  RangeSet.ranges.getter();
  v25 = *(v13 + 16);
  *(v7 + 1648) = v25;
  *(v7 + 1656) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25(v19, v15, v12);
  v26 = *(v16 + 36);
  *(v7 + 1664) = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of Collection.startIndex.getter();
  v27 = *(v13 + 8);
  *(v7 + 1672) = v27;
  *(v7 + 1680) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v15, v12);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v19 + v26) != *(v7 + 1416))
  {
    v29 = (v7 + 504);
    v51 = v26;
    while (1)
    {
      v32 = dispatch thunk of Collection.subscript.read();
      v34 = v33[3];
      v36 = *v33;
      v35 = v33[1];
      *(v7 + 608) = v33[2];
      *(v7 + 624) = v34;
      *(v7 + 576) = v36;
      *(v7 + 592) = v35;
      v32(v7 + 1256, 0);
      dispatch thunk of Collection.formIndex(after:)();
      AttributedString.Guts.getUniformValue<A>(in:key:)((v7 + 576), a3, a4, v7 + 432);
      if (!*(v7 + 456))
      {
        break;
      }

      v37 = v12;
      v38 = *(v7 + 480);
      *(v7 + 536) = *(v7 + 464);
      *(v7 + 552) = v38;
      *(v7 + 568) = *(v7 + 496);
      v39 = *(v7 + 448);
      *v29 = *(v7 + 432);
      *(v7 + 520) = v39;
      outlined init with copy of FloatingPointRoundingRule?(v7, v7 + 144, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (*(v7 + 168))
      {
        v40 = *(v7 + 192);
        *(v7 + 248) = *(v7 + 176);
        *(v7 + 264) = v40;
        *(v7 + 280) = *(v7 + 208);
        v41 = *(v7 + 160);
        *(v7 + 216) = *(v7 + 144);
        *(v7 + 232) = v41;
        v42 = specialized static AttributedString._AttributeValue.== infix(_:_:)((v7 + 216), (v7 + 504));
        outlined destroy of AttributedString._AttributeValue(v7 + 216);
        if ((v42 & 1) == 0)
        {
          outlined destroy of AttributedString._AttributeValue(v7 + 504);
          v43 = &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd;
          v44 = v19;
          goto LABEL_28;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(v7 + 144, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      outlined destroy of TermOfAddress?(v7, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v30 = *(v7 + 552);
      *(v7 + 32) = *(v7 + 536);
      *(v7 + 48) = v30;
      *(v7 + 64) = *(v7 + 568);
      v31 = *(v7 + 520);
      *v7 = *v29;
      *(v7 + 16) = v31;
      v12 = v37;
      dispatch thunk of Collection.endIndex.getter();
      if (*(v19 + v51) == *(v7 + 1416))
      {
        goto LABEL_17;
      }
    }

    outlined destroy of TermOfAddress?(v19, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
    v43 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
    v44 = v7 + 432;
LABEL_28:
    outlined destroy of TermOfAddress?(v44, v43);
    goto LABEL_29;
  }

LABEL_17:
  outlined destroy of TermOfAddress?(v19, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  if (!*(v7 + 24))
  {
LABEL_29:
    (*(v49 + 56))(v50, 1, 1, AssociatedTypeWitness);
    goto LABEL_30;
  }

  outlined init with copy of AttributedString._AttributeValue(v7, v7 + 72);
  outlined init with copy of Hashable & Sendable(v7 + 72, v7 + 1216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
  if (swift_dynamicCast())
  {
    outlined destroy of AttributedString._AttributeValue(v7 + 72);
    v28 = *(v49 + 56);
    v28(v48, 0, 1, AssociatedTypeWitness);
    (*(v49 + 32))(v50, v48, AssociatedTypeWitness);
    v28(v50, 0, 1, AssociatedTypeWitness);
LABEL_30:
    outlined destroy of TermOfAddress?(v7, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    return DiscontiguousAttributedSubstring.subscript.modify;
  }

  (*(v49 + 56))(v48, 1, 1, AssociatedTypeWitness);
  result = (*(v46 + 8))(v48, v47);
  __break(1u);
  return result;
}

void DiscontiguousAttributedSubstring.subscript.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v2 = *(*(v3 + 1592) + 16);
    v2(*(v3 + 1608), *(v3 + 1632), *(v3 + 1584));
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_12:
      v21 = *(v3 + 1600);
      v22 = *(v3 + 1488);
      v23 = *(v3 + 1480);
      v2(v21, *(v3 + 1608), *(v3 + 1584));
      v24 = (*(v22 + 48))(v21, 1, v23);
      v25 = *(v3 + 1680);
      v245 = *(v3 + 1672);
      v246 = v25;
      v26 = *(v3 + 1648);
      v27 = *(v3 + 1600);
      if (v24 == 1)
      {
        v28 = *(v3 + 1592);
        v29 = *(v3 + 1584);
        v30 = *(v3 + 1544);
        v244 = *(v3 + 1536);
        v31 = *(v3 + 1528);
        v32 = *(v3 + 1520);
        v233 = *(v28 + 8);
        v234 = ((v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        (v233)(v27, v29);
        RangeSet.ranges.getter();
        v26(v30, v31, v32);
        v33 = v244[9];
        dispatch thunk of Collection.startIndex.getter();
        v245(v31, v32);
        dispatch thunk of Collection.endIndex.getter();
        if (*&v30[v33] != *(v3 + 1424))
        {
          v237 = v3 + 1288;
          v97 = *(v3 + 1464) + 32;
          v235 = xmmword_181218E20;
          v238 = v30;
          v236 = v97;
          do
          {
            v99 = *(v3 + 1472);
            v100 = *(v3 + 1464);
            v245 = *(v3 + 1456);
            v246 = v100;
            v101 = v237;
            v102 = dispatch thunk of Collection.subscript.read();
            v104 = v103[1];
            v239 = v103[2];
            v240 = v104;
            v105 = v103[4];
            v243 = v103[5];
            v244 = v105;
            v106 = v103[6];
            v241 = v103[7];
            v242 = v106;
            v102(v101, 0);
            dispatch thunk of Collection.formIndex(after:)();
            v107 = *v99;
            v108 = *(*v99 + 40);
            v109 = *(*v99 + 56);
            *(v3 + 1120) = *(*v99 + 24);
            *(v3 + 1136) = v108;
            *(v3 + 1152) = v109;
            swift_unknownObjectRetain();
            v110 = v236;
            v111 = BigString.UnicodeScalarView.index(roundingDown:)();
            swift_unknownObjectRelease();
            v112 = *(v107 + 40);
            v113 = *(v107 + 56);
            *(v3 + 1072) = *(v107 + 24);
            *(v3 + 1088) = v112;
            *(v3 + 1104) = v113;
            swift_unknownObjectRetain();
            v114 = BigString.UnicodeScalarView.index(roundingDown:)();
            v115 = swift_unknownObjectRelease();
            v116 = v111 >> 11;
            v117 = v114 >> 11;
            MEMORY[0x1EEE9AC00](v115);
            v118 = v245;
            v119 = v246;
            v224 = v245;
            v225 = v246;
            AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.removeAttributeValue<A>(forKey:in:)partial apply, &v222, v107, v116, v117);
            v120 = *v110;
            (*v110)(v247, v118, v119);
            if (v247[1] != 1)
            {
              v121 = *(v3 + 1464);
              v122 = *(v3 + 1456);
              outlined consume of AttributedString.AttributeRunBoundaries?(v247[0], v247[1]);
              v120(v247, v122, v121);
              v123 = v247[1];
              if (v247[1] == 1)
              {
                v98 = MEMORY[0x1E69E7CC0];
              }

              else
              {
                v124 = v247[0];
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
                v98 = swift_allocObject();
                *(v98 + 16) = v235;
                *(v98 + 32) = v124;
                *(v98 + 40) = v123;
              }

              AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v116, v117, 0, v98);
            }

            dispatch thunk of Collection.endIndex.getter();
          }

          while (*&v238[v33] != *(v3 + 1424));
        }

        outlined destroy of TermOfAddress?(*(v3 + 1544), &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
        v34 = v233;
      }

      else
      {
        v60 = *(v3 + 1552);
        v244 = *(v3 + 1536);
        v61 = *(v3 + 1528);
        v62 = *(v3 + 1520);
        (*(*(v3 + 1488) + 32))(*(v3 + 1496), v27, *(v3 + 1480));
        RangeSet.ranges.getter();
        v26(v60, v61, v62);
        v63 = (v60 + v244[9]);
        dispatch thunk of Collection.startIndex.getter();
        v245(v61, v62);
        dispatch thunk of Collection.endIndex.getter();
        if (*v63 != *(v3 + 1432))
        {
          v153 = *(v3 + 1488);
          v154 = *(v3 + 1464);
          v233 = (v153 + 16);
          v234 = (v3 + 1320);
          v231 = (v154 + 40);
          v232 = (v154 + 32);
          v230 = (v154 + 48);
          v229 = (v153 + 8);
          v228 = (v154 + 24);
          v227 = xmmword_181218E20;
          *&v235 = v63;
          v246 = (v3 + 360);
          do
          {
            v155 = *(v3 + 1496);
            v236 = *(v3 + 1504);
            v237 = v155;
            v156 = *(v3 + 1480);
            v157 = *(v3 + 1472);
            v158 = *(v3 + 1464);
            v159 = *(v3 + 1456);
            v160 = dispatch thunk of Collection.subscript.read();
            v162 = *v161;
            v240 = v161[1];
            v241 = v162;
            v163 = v161[2];
            v238 = v161[3];
            v239 = v163;
            v164 = v161[4];
            v244 = v161[5];
            v245 = v164;
            v165 = v161[6];
            v242 = v161[7];
            v243 = v165;
            v160(v3 + 1320, 0);
            dispatch thunk of Collection.formIndex(after:)();
            v166 = *v157;
            v167 = *v233;
            v168 = v236;
            (*v233)(v236, v237, v156);
            *(v3 + 384) = v156;
            *(v3 + 392) = swift_getAssociatedConformanceWitness();
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v246);
            v167(boxed_opaque_existential_0, v168, v156);
            (*v232)(v247, v159, v158);
            *(v3 + 400) = *v247;
            *(v3 + 416) = (*v231)(v159, v158) & 1;
            v170 = (*v230)(v159, v158);
            (*v229)(v168, v156);
            *(v3 + 424) = v170;
            v171 = (*v228)(v159, v158);
            v173 = v172;
            v174 = *(v166 + 40);
            v175 = *(v166 + 56);
            *(v3 + 1024) = *(v166 + 24);
            *(v3 + 1040) = v174;
            *(v3 + 1056) = v175;
            swift_unknownObjectRetain();
            v176 = BigString.UnicodeScalarView.index(roundingDown:)();
            swift_unknownObjectRelease();
            v177 = *(v166 + 40);
            v178 = *(v166 + 56);
            *(v3 + 928) = *(v166 + 24);
            *(v3 + 944) = v177;
            *(v3 + 960) = v178;
            swift_unknownObjectRetain();
            v179 = BigString.UnicodeScalarView.index(roundingDown:)();
            v180 = swift_unknownObjectRelease();
            v181 = v176 >> 11;
            v182 = v179 >> 11;
            MEMORY[0x1EEE9AC00](v180);
            v222 = v171;
            v223 = v173;
            v183 = v246;
            v224 = v246;
            AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.setAttributeValue(_:forKey:in:)partial apply, v221, v166, v176 >> 11, v179 >> 11);

            v184 = *(v3 + 408);
            if (v184 != 1)
            {
              v185 = *(v3 + 400);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
              v186 = swift_allocObject();
              *(v186 + 16) = v227;
              *(v186 + 32) = v185;
              *(v186 + 40) = v184;
              outlined copy of AttributedString.AttributeRunBoundaries?(v185, v184);
              AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v181, v182, 0, v186);
            }

            outlined destroy of AttributedString._AttributeValue(v183);
            dispatch thunk of Collection.endIndex.getter();
          }

          while (*v235 != *(v3 + 1432));
        }

        v64 = *(v3 + 1592);
        v65 = *(v3 + 1496);
        v66 = *(v3 + 1488);
        v67 = *(v3 + 1480);
        outlined destroy of TermOfAddress?(*(v3 + 1552), &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
        (*(v66 + 8))(v65, v67);
        v34 = *(v64 + 8);
      }

      v68 = *(v3 + 1632);
      v69 = *(v3 + 1624);
      v245 = *(v3 + 1616);
      v246 = v69;
      v70 = *(v3 + 1600);
      v243 = *(v3 + 1608);
      v244 = v70;
      v71 = *(v3 + 1584);
      v72 = *(v3 + 1576);
      v240 = *(v3 + 1568);
      v241 = v72;
      v73 = *(v3 + 1552);
      v238 = *(v3 + 1560);
      v239 = v73;
      v74 = *(v3 + 1544);
      v75 = *(v3 + 1528);
      v76 = *(v3 + 1512);
      v77 = *(v3 + 1504);
      v242 = *(v3 + 1496);
      v34();
      v78 = v68;
      v79 = v68;
      v80 = v71;
      v81 = v74;
      v82 = v238;
      (v34)(v79, v80);
      v84 = v240;
      v83 = v241;
      v85 = v239;
      goto LABEL_35;
    }

    v4 = (v3 + 1168);
    v5 = **(v3 + 1472);
    v6 = *(v5 + 56);
    v7 = *(v5 + 40);
    *(v3 + 1168) = *(v5 + 24);
    *(v3 + 1184) = v7;
    *(v3 + 1200) = v6;
    v8 = *(v5 + 72);
    v9 = *(v5 + 80);
    v10 = *(v5 + 88);
    v246 = *(v5 + 96);
    type metadata accessor for AttributedString.Guts();
    v11 = swift_allocObject();
    v12 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(v3 + 1168, v3 + 640);
    v13 = swift_unknownObjectRetain();
    v245 = v9;
    v14 = v246;
    specialized Rope._endPath.getter(v13);
    if (v8)
    {
      v15 = v10 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = v15;
    if (v16 == v12)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_11:
        v17 = *(v3 + 1472);
        *(v11 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v18 = *v4;
        v19 = v4[1];
        *(v11 + 56) = v4[2];
        *(v11 + 40) = v19;
        *(v11 + 24) = v18;
        v20 = v245;
        *(v11 + 72) = v8;
        *(v11 + 80) = v20;
        *(v11 + 88) = v10;
        *(v11 + 96) = v14;
        *(v11 + 104) = MEMORY[0x1E69E7CC0];

        *v17 = v11;
        goto LABEL_12;
      }

LABEL_60:
      swift_once();
      goto LABEL_11;
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v35 = *(v3 + 1472);
    v36 = *v35;
    v37 = *(*v35 + 56);
    v38 = *(*v35 + 40);
    *(v3 + 880) = *(*v35 + 24);
    *(v3 + 896) = v38;
    *(v3 + 912) = v37;
    v8 = v36[9];
    v39 = v36[10];
    v10 = v36[11];
    v14 = v36[12];
    type metadata accessor for AttributedString.Guts();
    v11 = swift_allocObject();
    v4 = (BigString.isEmpty.getter() & 1);
    outlined init with copy of BigString(v3 + 880, v3 + 976);
    v40 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v40);
    if (v8)
    {
      v41 = v10 == 0;
    }

    else
    {
      v41 = 1;
    }

    v42 = v41;
    if (v42 != v4)
    {
      goto LABEL_59;
    }

    if (one-time initialization token for _nextVersion != -1)
    {
      swift_once();
    }

    v43 = *(v3 + 1472);
    *(v11 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v44 = *(v3 + 880);
    v45 = *(v3 + 896);
    *(v11 + 56) = *(v3 + 912);
    *(v11 + 40) = v45;
    *(v11 + 24) = v44;
    *(v11 + 72) = v8;
    *(v11 + 80) = v39;
    *(v11 + 88) = v10;
    *(v11 + 96) = v14;
    *(v11 + 104) = MEMORY[0x1E69E7CC0];

    *v43 = v11;
  }

  v46 = *(v3 + 1616);
  v47 = *(v3 + 1488);
  v48 = *(v3 + 1480);
  (*(*(v3 + 1592) + 16))(v46, *(v3 + 1632), *(v3 + 1584));
  v49 = (*(v47 + 48))(v46, 1, v48);
  v50 = *(v3 + 1680);
  v245 = *(v3 + 1672);
  v246 = v50;
  v51 = *(v3 + 1648);
  v52 = *(v3 + 1616);
  if (v49 == 1)
  {
    v53 = *(v3 + 1592);
    v54 = *(v3 + 1584);
    v55 = *(v3 + 1560);
    v244 = *(v3 + 1536);
    v56 = *(v3 + 1528);
    v57 = *(v3 + 1520);
    v233 = *(v53 + 8);
    v234 = ((v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    (v233)(v52, v54);
    RangeSet.ranges.getter();
    v51(v55, v56, v57);
    v58 = v244[9];
    dispatch thunk of Collection.startIndex.getter();
    v245(v56, v57);
    dispatch thunk of Collection.endIndex.getter();
    if (*&v55[v58] != *(v3 + 1440))
    {
      v237 = v3 + 1352;
      v125 = *(v3 + 1464) + 32;
      v235 = xmmword_181218E20;
      v238 = v55;
      v236 = v125;
      do
      {
        v127 = *(v3 + 1472);
        v128 = *(v3 + 1464);
        v245 = *(v3 + 1456);
        v246 = v128;
        v129 = v237;
        v130 = dispatch thunk of Collection.subscript.read();
        v132 = v131[1];
        v239 = v131[2];
        v240 = v132;
        v133 = v131[4];
        v243 = v131[5];
        v244 = v133;
        v134 = v131[6];
        v241 = v131[7];
        v242 = v134;
        v130(v129, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v135 = *v127;
        v136 = *(*v127 + 40);
        v137 = *(*v127 + 56);
        *(v3 + 832) = *(*v127 + 24);
        *(v3 + 848) = v136;
        *(v3 + 864) = v137;
        swift_unknownObjectRetain();
        v138 = v236;
        v139 = BigString.UnicodeScalarView.index(roundingDown:)();
        swift_unknownObjectRelease();
        v140 = *(v135 + 40);
        v141 = *(v135 + 56);
        *(v3 + 784) = *(v135 + 24);
        *(v3 + 800) = v140;
        *(v3 + 816) = v141;
        swift_unknownObjectRetain();
        v142 = BigString.UnicodeScalarView.index(roundingDown:)();
        v143 = swift_unknownObjectRelease();
        v144 = v139 >> 11;
        v145 = v142 >> 11;
        MEMORY[0x1EEE9AC00](v143);
        v146 = v245;
        v147 = v246;
        v224 = v245;
        v225 = v246;
        AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.removeAttributeValue<A>(forKey:in:)partial apply, &v222, v135, v144, v145);
        v148 = *v138;
        (*v138)(v247, v146, v147);
        if (v247[1] != 1)
        {
          v149 = *(v3 + 1464);
          v150 = *(v3 + 1456);
          outlined consume of AttributedString.AttributeRunBoundaries?(v247[0], v247[1]);
          v148(v247, v150, v149);
          v151 = v247[1];
          if (v247[1] == 1)
          {
            v126 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v152 = v247[0];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
            v126 = swift_allocObject();
            *(v126 + 16) = v235;
            *(v126 + 32) = v152;
            *(v126 + 40) = v151;
          }

          AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v144, v145, 0, v126);
        }

        dispatch thunk of Collection.endIndex.getter();
      }

      while (*&v238[v58] != *(v3 + 1440));
    }

    outlined destroy of TermOfAddress?(*(v3 + 1560), &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
    v59 = v233;
  }

  else
  {
    v86 = *(v3 + 1568);
    v244 = *(v3 + 1536);
    v87 = *(v3 + 1528);
    v88 = *(v3 + 1520);
    (*(*(v3 + 1488) + 32))(*(v3 + 1512), v52, *(v3 + 1480));
    RangeSet.ranges.getter();
    v51(v86, v87, v88);
    v89 = (v86 + v244[9]);
    dispatch thunk of Collection.startIndex.getter();
    v245(v87, v88);
    dispatch thunk of Collection.endIndex.getter();
    if (*v89 != *(v3 + 1448))
    {
      v187 = *(v3 + 1488);
      v188 = *(v3 + 1464);
      v232 = (v187 + 16);
      v233 = (v3 + 1384);
      v231 = (v188 + 32);
      *&v235 = v3 + 328;
      v230 = (v188 + 40);
      v229 = (v188 + 48);
      v228 = (v187 + 8);
      *&v227 = v188 + 24;
      v226 = xmmword_181218E20;
      v234 = v89;
      v246 = (v3 + 288);
      do
      {
        v189 = *(v3 + 1512);
        v236 = *(v3 + 1504);
        v237 = v189;
        v190 = *(v3 + 1480);
        v191 = *(v3 + 1472);
        v192 = *(v3 + 1464);
        v193 = *(v3 + 1456);
        v194 = dispatch thunk of Collection.subscript.read();
        v196 = *v195;
        v240 = v195[1];
        v241 = v196;
        v197 = v195[2];
        v238 = v195[3];
        v239 = v197;
        v198 = v195[4];
        v244 = v195[5];
        v245 = v198;
        v199 = v195[6];
        v242 = v195[7];
        v243 = v199;
        v194(v3 + 1384, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v200 = *v191;
        v201 = *v232;
        v202 = v236;
        (*v232)(v236, v237, v190);
        *(v3 + 312) = v190;
        *(v3 + 320) = swift_getAssociatedConformanceWitness();
        v203 = __swift_allocate_boxed_opaque_existential_0(v246);
        v201(v203, v202, v190);
        (*v231)(v247, v193, v192);
        *v235 = *v247;
        *(v3 + 344) = (*v230)(v193, v192) & 1;
        v204 = (*v229)(v193, v192);
        (*v228)(v202, v190);
        *(v3 + 352) = v204;
        v205 = (*v227)(v193, v192);
        v207 = v206;
        v208 = *(v200 + 40);
        v209 = *(v200 + 56);
        *(v3 + 736) = *(v200 + 24);
        *(v3 + 752) = v208;
        *(v3 + 768) = v209;
        swift_unknownObjectRetain();
        v210 = BigString.UnicodeScalarView.index(roundingDown:)();
        swift_unknownObjectRelease();
        v211 = *(v200 + 40);
        v212 = *(v200 + 56);
        *(v3 + 688) = *(v200 + 24);
        *(v3 + 704) = v211;
        *(v3 + 720) = v212;
        swift_unknownObjectRetain();
        v213 = BigString.UnicodeScalarView.index(roundingDown:)();
        v214 = swift_unknownObjectRelease();
        v215 = v210 >> 11;
        v216 = v213 >> 11;
        MEMORY[0x1EEE9AC00](v214);
        v222 = v205;
        v223 = v207;
        v217 = v246;
        v224 = v246;
        AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.setAttributeValue(_:forKey:in:)partial apply, v221, v200, v210 >> 11, v213 >> 11);

        v218 = *(v3 + 336);
        if (v218 != 1)
        {
          v219 = *v235;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
          v220 = swift_allocObject();
          *(v220 + 16) = v226;
          *(v220 + 32) = v219;
          *(v220 + 40) = v218;
          outlined copy of AttributedString.AttributeRunBoundaries?(v219, v218);
          AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v215, v216, 0, v220);
        }

        outlined destroy of AttributedString._AttributeValue(v217);
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*v234 != *(v3 + 1448));
    }

    v90 = *(v3 + 1592);
    v91 = *(v3 + 1512);
    v92 = *(v3 + 1488);
    v93 = *(v3 + 1480);
    outlined destroy of TermOfAddress?(*(v3 + 1568), &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
    (*(v92 + 8))(v91, v93);
    v59 = *(v90 + 8);
  }

  v94 = *(v3 + 1632);
  v95 = *(v3 + 1624);
  v245 = *(v3 + 1616);
  v246 = v95;
  v96 = *(v3 + 1600);
  v243 = *(v3 + 1608);
  v244 = v96;
  v83 = *(v3 + 1576);
  v84 = *(v3 + 1568);
  v82 = *(v3 + 1560);
  v85 = *(v3 + 1552);
  v81 = *(v3 + 1544);
  v75 = *(v3 + 1528);
  v76 = *(v3 + 1512);
  v77 = *(v3 + 1504);
  v242 = *(v3 + 1496);
  v78 = v94;
  v59();
LABEL_35:
  free(v78);
  free(v246);
  free(v245);
  free(v243);
  free(v244);
  free(v83);
  free(v84);
  free(v82);
  free(v85);
  free(v81);
  free(v75);
  free(v76);
  free(v77);
  free(v242);
  free(v3);
}

{
  v3 = *a1;
  v4 = *(*(*a1 + 1592) + 16);
  v5 = *(*a1 + 1648);
  if (a2)
  {
    v6 = *(v3 + 1616);
    v7 = *(v3 + 1608);
    v8 = *(v3 + 1584);
    v4(v6, v5, v8);
    v4(v7, v6, v8);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_12:
      v26 = *(v3 + 1600);
      v27 = *(v3 + 1488);
      v28 = *(v3 + 1480);
      v4(v26, *(v3 + 1608), *(v3 + 1584));
      v29 = (*(v27 + 48))(v26, 1, v28);
      v30 = *(v3 + 1696);
      v257 = *(v3 + 1688);
      v258 = v30;
      v31 = *(v3 + 1664);
      v32 = *(v3 + 1600);
      if (v29 == 1)
      {
        v33 = *(v3 + 1592);
        v34 = *(v3 + 1584);
        v35 = *(v3 + 1544);
        v256 = *(v3 + 1536);
        v36 = *(v3 + 1528);
        v37 = *(v3 + 1520);
        v38 = *(v33 + 8);
        v244 = (v33 + 8);
        v245 = ((v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        *&v247 = v38;
        v38(v32, v34);
        RangeSet.ranges.getter();
        v31(v35, v36, v37);
        v39 = v256[9];
        dispatch thunk of Collection.startIndex.getter();
        v257(v36, v37);
        dispatch thunk of Collection.endIndex.getter();
        if (*&v35[v39] != *(v3 + 1424))
        {
          v249 = (v3 + 1288);
          v109 = *(v3 + 1456) + 32;
          v246 = xmmword_181218E20;
          v250 = v35;
          v248 = v109;
          do
          {
            v111 = *(v3 + 1472);
            v112 = *(v3 + 1464);
            v257 = *(v3 + 1456);
            v258 = v111;
            v113 = v249;
            v114 = dispatch thunk of Collection.subscript.read();
            v116 = v115[1];
            v251 = v115[2];
            v252 = v116;
            v117 = v115[4];
            v255 = v115[5];
            v256 = v117;
            v118 = v115[6];
            v253 = v115[7];
            v254 = v118;
            v114(v113, 0);
            dispatch thunk of Collection.formIndex(after:)();
            v119 = *v112;
            v120 = *(*v112 + 40);
            v121 = *(*v112 + 56);
            *(v3 + 1120) = *(*v112 + 24);
            *(v3 + 1136) = v120;
            *(v3 + 1152) = v121;
            swift_unknownObjectRetain();
            v122 = v248;
            v123 = BigString.UnicodeScalarView.index(roundingDown:)();
            swift_unknownObjectRelease();
            v124 = *(v119 + 40);
            v125 = *(v119 + 56);
            *(v3 + 1072) = *(v119 + 24);
            *(v3 + 1088) = v124;
            *(v3 + 1104) = v125;
            swift_unknownObjectRetain();
            v126 = BigString.UnicodeScalarView.index(roundingDown:)();
            v127 = swift_unknownObjectRelease();
            v128 = v123 >> 11;
            v129 = v126 >> 11;
            MEMORY[0x1EEE9AC00](v127);
            v131 = v257;
            v130 = v258;
            v236 = v258;
            v237 = v257;
            AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.removeAttributeValue<A>(forKey:in:)partial apply, &v234, v119, v128, v129);
            v132 = *v122;
            (*v122)(v259, v130, v131);
            if (v259[1] != 1)
            {
              v133 = *(v3 + 1472);
              v134 = *(v3 + 1456);
              outlined consume of AttributedString.AttributeRunBoundaries?(v259[0], v259[1]);
              v132(v259, v133, v134);
              v135 = v259[1];
              if (v259[1] == 1)
              {
                v110 = MEMORY[0x1E69E7CC0];
              }

              else
              {
                v136 = v259[0];
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
                v110 = swift_allocObject();
                *(v110 + 16) = v246;
                *(v110 + 32) = v136;
                *(v110 + 40) = v135;
              }

              AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v128, v129, 0, v110);
            }

            dispatch thunk of Collection.endIndex.getter();
          }

          while (*&v250[v39] != *(v3 + 1424));
        }

        v40 = *(v3 + 1544);
        (v247)(*(v3 + 1608), *(v3 + 1584));
        outlined destroy of TermOfAddress?(v40, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
      }

      else
      {
        v68 = *(v3 + 1552);
        v256 = *(v3 + 1536);
        v69 = *(v3 + 1528);
        v70 = *(v3 + 1520);
        (*(*(v3 + 1488) + 32))(*(v3 + 1496), v32, *(v3 + 1480));
        RangeSet.ranges.getter();
        v31(v68, v69, v70);
        v71 = (v68 + v256[9]);
        dispatch thunk of Collection.startIndex.getter();
        v257(v69, v70);
        dispatch thunk of Collection.endIndex.getter();
        if (*v71 != *(v3 + 1432))
        {
          v165 = *(v3 + 1488);
          v166 = *(v3 + 1456);
          v245 = (v165 + 16);
          *&v246 = v3 + 1320;
          v244 = (v166 + 32);
          v243 = (v166 + 40);
          v242 = (v166 + 48);
          v241 = (v165 + 8);
          v240 = (v166 + 24);
          v239 = xmmword_181218E20;
          *&v247 = v71;
          v258 = (v3 + 360);
          do
          {
            v167 = *(v3 + 1496);
            v248 = *(v3 + 1504);
            v249 = v167;
            v168 = *(v3 + 1480);
            v169 = *(v3 + 1472);
            v170 = *(v3 + 1464);
            v171 = *(v3 + 1456);
            v172 = dispatch thunk of Collection.subscript.read();
            v174 = *v173;
            v252 = *(v173 + 8);
            v253 = v174;
            v175 = *(v173 + 16);
            v250 = *(v173 + 24);
            v251 = v175;
            v176 = *(v173 + 32);
            v256 = *(v173 + 40);
            v257 = v176;
            v177 = *(v173 + 48);
            v254 = *(v173 + 56);
            v255 = v177;
            v172(v3 + 1320, 0);
            dispatch thunk of Collection.formIndex(after:)();
            v178 = *v170;
            v179 = *v245;
            v180 = v248;
            (*v245)(v248, v249, v168);
            *(v3 + 384) = v168;
            *(v3 + 392) = swift_getAssociatedConformanceWitness();
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v258);
            v179(boxed_opaque_existential_0, v180, v168);
            (*v244)(v259, v169, v171);
            *(v3 + 400) = *v259;
            *(v3 + 416) = (*v243)(v169, v171) & 1;
            v182 = (*v242)(v169, v171);
            (*v241)(v180, v168);
            *(v3 + 424) = v182;
            v183 = (*v240)(v169, v171);
            v185 = v184;
            v186 = *(v178 + 40);
            v187 = *(v178 + 56);
            *(v3 + 1024) = *(v178 + 24);
            *(v3 + 1040) = v186;
            *(v3 + 1056) = v187;
            swift_unknownObjectRetain();
            v188 = BigString.UnicodeScalarView.index(roundingDown:)();
            swift_unknownObjectRelease();
            v189 = *(v178 + 40);
            v190 = *(v178 + 56);
            *(v3 + 928) = *(v178 + 24);
            *(v3 + 944) = v189;
            *(v3 + 960) = v190;
            swift_unknownObjectRetain();
            v191 = BigString.UnicodeScalarView.index(roundingDown:)();
            v192 = swift_unknownObjectRelease();
            v193 = v188 >> 11;
            v194 = v191 >> 11;
            MEMORY[0x1EEE9AC00](v192);
            v234 = v183;
            v235 = v185;
            v195 = v258;
            v236 = v258;
            AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.setAttributeValue(_:forKey:in:)partial apply, v233, v178, v188 >> 11, v191 >> 11);

            v196 = *(v3 + 408);
            if (v196 != 1)
            {
              v197 = *(v3 + 400);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
              v198 = swift_allocObject();
              *(v198 + 16) = v239;
              *(v198 + 32) = v197;
              *(v198 + 40) = v196;
              outlined copy of AttributedString.AttributeRunBoundaries?(v197, v196);
              AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v193, v194, 0, v198);
            }

            outlined destroy of AttributedString._AttributeValue(v195);
            dispatch thunk of Collection.endIndex.getter();
          }

          while (*v247 != *(v3 + 1432));
        }

        v72 = *(v3 + 1608);
        v73 = *(v3 + 1584);
        v74 = *(v3 + 1552);
        v75 = *(v3 + 1496);
        v76 = *(v3 + 1488);
        v77 = *(v3 + 1480);
        *&v247 = *(*(v3 + 1592) + 8);
        (v247)(v72, v73);
        outlined destroy of TermOfAddress?(v74, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
        (*(v76 + 8))(v75, v77);
      }

      v78 = *(v3 + 1648);
      v79 = *(v3 + 1640);
      v257 = *(v3 + 1632);
      v258 = v79;
      v80 = *(v3 + 1624);
      v81 = *(v3 + 1616);
      v255 = *(v3 + 1608);
      v256 = v80;
      v82 = *(v3 + 1600);
      v83 = *(v3 + 1584);
      v84 = *(v3 + 1576);
      v85 = *(v3 + 1568);
      v86 = *(v3 + 1560);
      v87 = *(v3 + 1552);
      v88 = *(v3 + 1544);
      v253 = *(v3 + 1528);
      v254 = v82;
      v89 = *(v3 + 1512);
      v251 = *(v3 + 1504);
      v252 = v89;
      v90 = *(v3 + 1496);
      v249 = v81;
      v250 = v90;
      v91 = v247;
      (v247)();
      v91(v78, v83);
      goto LABEL_35;
    }

    v9 = (v3 + 1168);
    v10 = **(v3 + 1464);
    v11 = *(v10 + 56);
    v12 = *(v10 + 40);
    *(v3 + 1168) = *(v10 + 24);
    *(v3 + 1184) = v12;
    *(v3 + 1200) = v11;
    v13 = *(v10 + 72);
    v14 = *(v10 + 80);
    v15 = *(v10 + 88);
    v258 = *(v10 + 96);
    type metadata accessor for AttributedString.Guts();
    v16 = swift_allocObject();
    v17 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(v3 + 1168, v3 + 640);
    v18 = swift_unknownObjectRetain();
    v257 = v14;
    v19 = v258;
    specialized Rope._endPath.getter(v18);
    if (v13)
    {
      v20 = v15 == 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = v20;
    if (v21 == v17)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_11:
        v22 = *(v3 + 1464);
        *(v16 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v23 = *v9;
        v24 = v9[1];
        *(v16 + 56) = v9[2];
        *(v16 + 40) = v24;
        *(v16 + 24) = v23;
        v25 = v257;
        *(v16 + 72) = v13;
        *(v16 + 80) = v25;
        *(v16 + 88) = v15;
        *(v16 + 96) = v19;
        *(v16 + 104) = MEMORY[0x1E69E7CC0];

        *v22 = v16;
        goto LABEL_12;
      }

LABEL_60:
      swift_once();
      goto LABEL_11;
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v4(*(v3 + 1632), v5, *(v3 + 1584));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v41 = *(v3 + 1464);
    v42 = *v41;
    v43 = *(*v41 + 56);
    v44 = *(*v41 + 40);
    *(v3 + 880) = *(*v41 + 24);
    *(v3 + 896) = v44;
    *(v3 + 912) = v43;
    v13 = v42[9];
    v45 = v42[10];
    v15 = v42[11];
    v19 = v42[12];
    type metadata accessor for AttributedString.Guts();
    v16 = swift_allocObject();
    v9 = (BigString.isEmpty.getter() & 1);
    outlined init with copy of BigString(v3 + 880, v3 + 976);
    v46 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v46);
    if (v13)
    {
      v47 = v15 == 0;
    }

    else
    {
      v47 = 1;
    }

    v48 = v47;
    if (v48 != v9)
    {
      goto LABEL_59;
    }

    if (one-time initialization token for _nextVersion != -1)
    {
      swift_once();
    }

    v49 = *(v3 + 1464);
    *(v16 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v50 = *(v3 + 880);
    v51 = *(v3 + 896);
    *(v16 + 56) = *(v3 + 912);
    *(v16 + 40) = v51;
    *(v16 + 24) = v50;
    *(v16 + 72) = v13;
    *(v16 + 80) = v45;
    *(v16 + 88) = v15;
    *(v16 + 96) = v19;
    *(v16 + 104) = MEMORY[0x1E69E7CC0];

    *v49 = v16;
  }

  v52 = *(v3 + 1624);
  v53 = *(v3 + 1488);
  v54 = *(v3 + 1480);
  v4(v52, *(v3 + 1632), *(v3 + 1584));
  v55 = (*(v53 + 48))(v52, 1, v54);
  v56 = *(v3 + 1696);
  v257 = *(v3 + 1688);
  v258 = v56;
  v57 = *(v3 + 1664);
  v58 = *(v3 + 1624);
  if (v55 == 1)
  {
    v59 = *(v3 + 1592);
    v60 = *(v3 + 1584);
    v61 = *(v3 + 1560);
    v256 = *(v3 + 1536);
    v62 = *(v3 + 1528);
    v63 = *(v3 + 1520);
    v64 = *(v59 + 8);
    v59 += 8;
    v245 = (v59 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    *&v246 = v64;
    v244 = v59;
    v64(v58, v60);
    RangeSet.ranges.getter();
    v57(v61, v62, v63);
    v65 = v256[9];
    dispatch thunk of Collection.startIndex.getter();
    v257(v62, v63);
    dispatch thunk of Collection.endIndex.getter();
    if (*&v61[v65] != *(v3 + 1440))
    {
      v249 = (v3 + 1352);
      v137 = *(v3 + 1456) + 32;
      v247 = xmmword_181218E20;
      v250 = v61;
      v248 = v137;
      do
      {
        v139 = *(v3 + 1472);
        v140 = *(v3 + 1464);
        v257 = *(v3 + 1456);
        v258 = v139;
        v141 = v249;
        v142 = dispatch thunk of Collection.subscript.read();
        v144 = v143[1];
        v251 = v143[2];
        v252 = v144;
        v145 = v143[4];
        v255 = v143[5];
        v256 = v145;
        v146 = v143[6];
        v253 = v143[7];
        v254 = v146;
        v142(v141, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v147 = *v140;
        v148 = *(*v140 + 40);
        v149 = *(*v140 + 56);
        *(v3 + 832) = *(*v140 + 24);
        *(v3 + 848) = v148;
        *(v3 + 864) = v149;
        swift_unknownObjectRetain();
        v150 = v248;
        v151 = BigString.UnicodeScalarView.index(roundingDown:)();
        swift_unknownObjectRelease();
        v152 = *(v147 + 40);
        v153 = *(v147 + 56);
        *(v3 + 784) = *(v147 + 24);
        *(v3 + 800) = v152;
        *(v3 + 816) = v153;
        swift_unknownObjectRetain();
        v154 = BigString.UnicodeScalarView.index(roundingDown:)();
        v155 = swift_unknownObjectRelease();
        v156 = v151 >> 11;
        v157 = v154 >> 11;
        MEMORY[0x1EEE9AC00](v155);
        v159 = v257;
        v158 = v258;
        v236 = v258;
        v237 = v257;
        AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.removeAttributeValue<A>(forKey:in:)partial apply, &v234, v147, v156, v157);
        v160 = *v150;
        (*v150)(v259, v158, v159);
        if (v259[1] != 1)
        {
          v161 = *(v3 + 1472);
          v162 = *(v3 + 1456);
          outlined consume of AttributedString.AttributeRunBoundaries?(v259[0], v259[1]);
          v160(v259, v161, v162);
          v163 = v259[1];
          if (v259[1] == 1)
          {
            v138 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v164 = v259[0];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
            v138 = swift_allocObject();
            *(v138 + 16) = v247;
            *(v138 + 32) = v164;
            *(v138 + 40) = v163;
          }

          AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v156, v157, 0, v138);
        }

        dispatch thunk of Collection.endIndex.getter();
      }

      while (*&v250[v65] != *(v3 + 1440));
    }

    v66 = *(v3 + 1560);
    v67 = v246;
    (v246)(*(v3 + 1632), *(v3 + 1584));
    outlined destroy of TermOfAddress?(v66, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  }

  else
  {
    v92 = *(v3 + 1568);
    v256 = *(v3 + 1536);
    v93 = *(v3 + 1528);
    v94 = *(v3 + 1520);
    (*(*(v3 + 1488) + 32))(*(v3 + 1512), v58, *(v3 + 1480));
    RangeSet.ranges.getter();
    v57(v92, v93, v94);
    v95 = (v92 + v256[9]);
    dispatch thunk of Collection.startIndex.getter();
    v257(v93, v94);
    dispatch thunk of Collection.endIndex.getter();
    if (*v95 != *(v3 + 1448))
    {
      v199 = *(v3 + 1488);
      v200 = *(v3 + 1456);
      v244 = (v199 + 16);
      v245 = (v3 + 1384);
      v243 = (v200 + 32);
      *&v247 = v3 + 328;
      v242 = (v200 + 40);
      v241 = (v200 + 48);
      v240 = (v199 + 8);
      *&v239 = v200 + 24;
      v238 = xmmword_181218E20;
      *&v246 = v95;
      v258 = (v3 + 288);
      do
      {
        v201 = *(v3 + 1512);
        v248 = *(v3 + 1504);
        v249 = v201;
        v202 = *(v3 + 1480);
        v203 = *(v3 + 1472);
        v204 = *(v3 + 1464);
        v205 = *(v3 + 1456);
        v206 = dispatch thunk of Collection.subscript.read();
        v208 = *v207;
        v252 = *(v207 + 8);
        v253 = v208;
        v209 = *(v207 + 16);
        v250 = *(v207 + 24);
        v251 = v209;
        v210 = *(v207 + 32);
        v256 = *(v207 + 40);
        v257 = v210;
        v211 = *(v207 + 48);
        v254 = *(v207 + 56);
        v255 = v211;
        v206(v3 + 1384, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v212 = *v204;
        v213 = *v244;
        v214 = v248;
        (*v244)(v248, v249, v202);
        *(v3 + 312) = v202;
        *(v3 + 320) = swift_getAssociatedConformanceWitness();
        v215 = __swift_allocate_boxed_opaque_existential_0(v258);
        v213(v215, v214, v202);
        (*v243)(v259, v203, v205);
        *v247 = *v259;
        *(v3 + 344) = (*v242)(v203, v205) & 1;
        v216 = (*v241)(v203, v205);
        (*v240)(v214, v202);
        *(v3 + 352) = v216;
        v217 = (*v239)(v203, v205);
        v219 = v218;
        v220 = *(v212 + 40);
        v221 = *(v212 + 56);
        *(v3 + 736) = *(v212 + 24);
        *(v3 + 752) = v220;
        *(v3 + 768) = v221;
        swift_unknownObjectRetain();
        v222 = BigString.UnicodeScalarView.index(roundingDown:)();
        swift_unknownObjectRelease();
        v223 = *(v212 + 40);
        v224 = *(v212 + 56);
        *(v3 + 688) = *(v212 + 24);
        *(v3 + 704) = v223;
        *(v3 + 720) = v224;
        swift_unknownObjectRetain();
        v225 = BigString.UnicodeScalarView.index(roundingDown:)();
        v226 = swift_unknownObjectRelease();
        v227 = v222 >> 11;
        v228 = v225 >> 11;
        MEMORY[0x1EEE9AC00](v226);
        v234 = v217;
        v235 = v219;
        v229 = v258;
        v236 = v258;
        AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.setAttributeValue(_:forKey:in:)partial apply, v233, v212, v222 >> 11, v225 >> 11);

        v230 = *(v3 + 336);
        if (v230 != 1)
        {
          v231 = *v247;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
          v232 = swift_allocObject();
          *(v232 + 16) = v238;
          *(v232 + 32) = v231;
          *(v232 + 40) = v230;
          outlined copy of AttributedString.AttributeRunBoundaries?(v231, v230);
          AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v227, v228, 0, v232);
        }

        outlined destroy of AttributedString._AttributeValue(v229);
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*v246 != *(v3 + 1448));
    }

    v96 = *(v3 + 1568);
    v97 = *(v3 + 1512);
    v98 = *(v3 + 1488);
    v99 = *(v3 + 1480);
    v100 = *(*(v3 + 1592) + 8);
    v100(*(v3 + 1632), *(v3 + 1584));
    outlined destroy of TermOfAddress?(v96, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
    v101 = v97;
    v67 = v100;
    (*(v98 + 8))(v101, v99);
  }

  v78 = *(v3 + 1648);
  v102 = *(v3 + 1640);
  v257 = *(v3 + 1632);
  v258 = v102;
  v103 = *(v3 + 1624);
  v104 = *(v3 + 1616);
  v255 = *(v3 + 1608);
  v256 = v103;
  v105 = *(v3 + 1600);
  v106 = *(v3 + 1584);
  v84 = *(v3 + 1576);
  v85 = *(v3 + 1568);
  v86 = *(v3 + 1560);
  v87 = *(v3 + 1552);
  v88 = *(v3 + 1544);
  v253 = *(v3 + 1528);
  v254 = v105;
  v107 = *(v3 + 1512);
  v251 = *(v3 + 1504);
  v252 = v107;
  v108 = *(v3 + 1496);
  v249 = v104;
  v250 = v108;
  v67(v78, v106);
LABEL_35:
  free(v78);
  free(v258);
  free(v257);
  free(v256);
  free(v249);
  free(v255);
  free(v254);
  free(v84);
  free(v85);
  free(v86);
  free(v87);
  free(v88);
  free(v253);
  free(v252);
  free(v251);
  free(v250);
  free(v3);
}

{
  v2 = *a1;
  v3 = *(*a1 + 648);
  v4 = *(*a1 + 848);
  v5 = *(*a1 + 840);
  v6 = *(*a1 + 832);
  v7 = *(*a1 + 824);
  v107 = v3;
  if ((a2 & 1) == 0)
  {
    if (v3)
    {
      v20 = *(v2 + 880);
      v104 = *(*a1 + 640);
      type metadata accessor for DiscontiguousAttributedSubstring();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
      RangeSet.ranges.getter();
      (*(v6 + 16))(v20, v5, v7);
      v21 = *(v4 + 36);
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
      dispatch thunk of Collection.startIndex.getter();
      (*(v6 + 8))(v5, v7);
      dispatch thunk of Collection.endIndex.getter();
      if (*(v20 + v21) != *(v2 + 808))
      {
        v96 = v20;
        do
        {
          v22 = *(v2 + 816);
          v23 = dispatch thunk of Collection.subscript.read();
          v23(v2 + 752, 0);
          dispatch thunk of Collection.formIndex(after:)();
          v24 = *v22;
          v25 = *(*v22 + 40);
          v26 = *(*v22 + 56);
          *(v2 + 480) = *(*v22 + 24);
          *(v2 + 496) = v25;
          *(v2 + 512) = v26;
          swift_unknownObjectRetain();
          v27 = BigString.UnicodeScalarView.index(roundingDown:)();
          swift_unknownObjectRelease();
          v28 = *(v24 + 40);
          v29 = *(v24 + 56);
          *(v2 + 528) = *(v24 + 24);
          *(v2 + 544) = v28;
          *(v2 + 560) = v29;
          swift_unknownObjectRetain();
          v30 = BigString.UnicodeScalarView.index(roundingDown:)();
          swift_unknownObjectRelease();
          AttributedString.Guts.removeAttributeValue(forKey:in:adjustConstrainedAttributes:)(v104, v107, v27 >> 11, v30 >> 11, 1);
          dispatch thunk of Collection.endIndex.getter();
        }

        while (*(v96 + v21) != *(v2 + 808));
      }

      v19 = *(v2 + 880);
      goto LABEL_12;
    }

    v34 = *(v2 + 872);
    type metadata accessor for DiscontiguousAttributedSubstring();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
    RangeSet.ranges.getter();
    (*(v6 + 16))(v34, v5, v7);
    v35 = *(v4 + 36);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
    dispatch thunk of Collection.startIndex.getter();
    (*(v6 + 8))(v5, v7);
    dispatch thunk of Collection.endIndex.getter();
    if (*(v34 + v35) == *(v2 + 800))
    {
LABEL_16:
      v33 = *(v2 + 872);
      goto LABEL_17;
    }

    v100 = v34;
    v98 = v35;
    while (1)
    {
      v68 = *(v2 + 816);
      v69 = dispatch thunk of Collection.subscript.read();
      v69(v2 + 720, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v70 = *v68;
      v71 = *(v2 + 624);
      v72 = *(v70 + 40);
      v73 = *(v70 + 56);
      *(v2 + 384) = *(v70 + 24);
      *(v2 + 400) = v72;
      *(v2 + 416) = v73;
      swift_unknownObjectRetain();

      v74 = BigString.UnicodeScalarView.index(roundingDown:)();
      swift_unknownObjectRelease();
      v75 = *(v70 + 40);
      v76 = *(v70 + 56);
      *(v2 + 432) = *(v70 + 24);
      *(v2 + 448) = v75;
      *(v2 + 464) = v76;
      swift_unknownObjectRetain();
      v77 = BigString.UnicodeScalarView.index(roundingDown:)();
      swift_unknownObjectRelease();

      specialized AttributedString._InternalRunsSlice.updateEach(with:)(v70, v74 >> 11, v77 >> 11, v71, 0);

      if (specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v71))
      {
        break;
      }

LABEL_42:

      dispatch thunk of Collection.endIndex.getter();
      if (*(v100 + v98) == *(v2 + 800))
      {
        goto LABEL_16;
      }
    }

    v106 = v74 >> 11;
    v78 = -1 << *(v71 + 32);
    if (-v78 < 64)
    {
      v79 = ~(-1 << -v78);
    }

    else
    {
      v79 = -1;
    }

    v80 = v79 & *(v71 + 64);
    v81 = (63 - v78) >> 6;

    v82 = 0;
    v83 = MEMORY[0x1E69E7CC0];
    if (!v80)
    {
      goto LABEL_50;
    }

    do
    {
LABEL_48:
      while (1)
      {
        v84 = __clz(__rbit64(v80));
        v80 &= v80 - 1;
        outlined init with copy of AttributedString._AttributeValue(*(v71 + 56) + 72 * (v84 | (v82 << 6)), v2 + 72);
        v85 = *(v2 + 112);
        v86 = *(v2 + 120);
        outlined copy of AttributedString.AttributeRunBoundaries?(v85, v86);
        outlined destroy of AttributedString._AttributeValue(v2 + 72);
        if (v86 != 1)
        {
          break;
        }

        if (!v80)
        {
          goto LABEL_50;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v83 + 2) + 1, 1, v83);
      }

      v89 = *(v83 + 2);
      v88 = *(v83 + 3);
      v90 = v89 + 1;
      if (v89 >= v88 >> 1)
      {
        v102 = v89 + 1;
        v92 = v83;
        v93 = *(v83 + 2);
        v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1, v92);
        v90 = v102;
        v89 = v93;
        v83 = v94;
      }

      *(v83 + 2) = v90;
      v91 = &v83[16 * v89];
      *(v91 + 4) = v85;
      *(v91 + 5) = v86;
    }

    while (v80);
LABEL_50:
    while (1)
    {
      v87 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        break;
      }

      if (v87 >= v81)
      {

        AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v106, v77 >> 11, 0, v83);

        goto LABEL_42;
      }

      v80 = *(v71 + 64 + 8 * v87);
      ++v82;
      if (v80)
      {
        v82 = v87;
        goto LABEL_48;
      }
    }

LABEL_62:
    __break(1u);
    return;
  }

  if (!v3)
  {
    v31 = *(v2 + 856);
    type metadata accessor for DiscontiguousAttributedSubstring();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
    RangeSet.ranges.getter();
    (*(v6 + 16))(v31, v5, v7);
    v32 = *(v4 + 36);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
    dispatch thunk of Collection.startIndex.getter();
    (*(v6 + 8))(v5, v7);
    dispatch thunk of Collection.endIndex.getter();
    if (*(v31 + v32) == *(v2 + 784))
    {
LABEL_14:
      v33 = *(v2 + 856);
LABEL_17:
      outlined destroy of TermOfAddress?(v33, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
      goto LABEL_18;
    }

    v99 = v31;
    v97 = v32;
    while (1)
    {
      v41 = *(v2 + 816);
      v42 = dispatch thunk of Collection.subscript.read();
      v42(v2 + 656, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v43 = *v41;
      v44 = *(v2 + 624);
      v45 = *(v43 + 40);
      v46 = *(v43 + 56);
      *(v2 + 192) = *(v43 + 24);
      *(v2 + 208) = v45;
      *(v2 + 224) = v46;
      swift_unknownObjectRetain();

      v47 = BigString.UnicodeScalarView.index(roundingDown:)();
      swift_unknownObjectRelease();
      v48 = *(v43 + 40);
      v49 = *(v43 + 56);
      *(v2 + 240) = *(v43 + 24);
      *(v2 + 256) = v48;
      *(v2 + 272) = v49;
      swift_unknownObjectRetain();
      v50 = BigString.UnicodeScalarView.index(roundingDown:)();
      swift_unknownObjectRelease();

      specialized AttributedString._InternalRunsSlice.updateEach(with:)(v43, v47 >> 11, v50 >> 11, v44, 0);

      if (specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v44))
      {
        break;
      }

LABEL_22:

      dispatch thunk of Collection.endIndex.getter();
      if (*(v99 + v97) == *(v2 + 784))
      {
        goto LABEL_14;
      }
    }

    v105 = v47 >> 11;
    v51 = -1 << *(v44 + 32);
    if (-v51 < 64)
    {
      v52 = ~(-1 << -v51);
    }

    else
    {
      v52 = -1;
    }

    v53 = v52 & *(v44 + 64);
    v54 = (63 - v51) >> 6;

    v55 = 0;
    v56 = MEMORY[0x1E69E7CC0];
    if (!v53)
    {
      goto LABEL_30;
    }

    do
    {
LABEL_28:
      while (1)
      {
        v57 = __clz(__rbit64(v53));
        v53 &= v53 - 1;
        outlined init with copy of AttributedString._AttributeValue(*(v44 + 56) + 72 * (v57 | (v55 << 6)), v2);
        v58 = *(v2 + 40);
        v59 = *(v2 + 48);
        outlined copy of AttributedString.AttributeRunBoundaries?(v58, v59);
        outlined destroy of AttributedString._AttributeValue(v2);
        if (v59 != 1)
        {
          break;
        }

        if (!v53)
        {
          goto LABEL_30;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v56 + 2) + 1, 1, v56);
      }

      v62 = *(v56 + 2);
      v61 = *(v56 + 3);
      v63 = v62 + 1;
      if (v62 >= v61 >> 1)
      {
        v101 = v62 + 1;
        v65 = v56;
        v66 = *(v56 + 2);
        v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v65);
        v63 = v101;
        v62 = v66;
        v56 = v67;
      }

      *(v56 + 2) = v63;
      v64 = &v56[16 * v62];
      *(v64 + 4) = v58;
      *(v64 + 5) = v59;
    }

    while (v53);
LABEL_30:
    while (1)
    {
      v60 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v60 >= v54)
      {

        AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v105, v50 >> 11, 0, v56);

        goto LABEL_22;
      }

      v53 = *(v44 + 64 + 8 * v60);
      ++v55;
      if (v53)
      {
        v55 = v60;
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_62;
  }

  v8 = *(v2 + 864);
  v103 = *(*a1 + 640);
  type metadata accessor for DiscontiguousAttributedSubstring();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  RangeSet.ranges.getter();
  (*(v6 + 16))(v8, v5, v7);
  v9 = *(v4 + 36);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  dispatch thunk of Collection.startIndex.getter();
  (*(v6 + 8))(v5, v7);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v8 + v9) != *(v2 + 792))
  {
    v95 = v8;
    do
    {
      v10 = *(v2 + 816);
      v11 = dispatch thunk of Collection.subscript.read();
      v11(v2 + 688, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v12 = *v10;
      v13 = *(*v10 + 40);
      v14 = *(*v10 + 56);
      *(v2 + 288) = *(*v10 + 24);
      *(v2 + 304) = v13;
      *(v2 + 320) = v14;
      swift_unknownObjectRetain();
      v15 = BigString.UnicodeScalarView.index(roundingDown:)();
      swift_unknownObjectRelease();
      v16 = *(v12 + 40);
      v17 = *(v12 + 56);
      *(v2 + 336) = *(v12 + 24);
      *(v2 + 352) = v16;
      *(v2 + 368) = v17;
      swift_unknownObjectRetain();
      v18 = BigString.UnicodeScalarView.index(roundingDown:)();
      swift_unknownObjectRelease();
      AttributedString.Guts.removeAttributeValue(forKey:in:adjustConstrainedAttributes:)(v103, v107, v15 >> 11, v18 >> 11, 1);
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v95 + v9) != *(v2 + 792));
  }

  v19 = *(v2 + 864);
LABEL_12:
  outlined destroy of TermOfAddress?(v19, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);

LABEL_18:
  v36 = *(v2 + 880);
  v37 = *(v2 + 872);
  v38 = *(v2 + 864);
  v39 = *(v2 + 856);
  v40 = *(v2 + 840);

  free(v36);
  free(v37);
  free(v38);
  free(v39);
  free(v40);

  free(v2);
}