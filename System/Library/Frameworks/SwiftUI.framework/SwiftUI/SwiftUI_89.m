unint64_t __DictionaryEncoder.box(_:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v41 = i;
    swift_beginAccess();
    v5 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    MEMORY[0x18D00CC30]();
    if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v6 = 1 << *(a1 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(a1 + 64);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    v43 = v5;
    if (v8)
    {
      break;
    }

LABEL_9:
    if (v9 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    else
    {
      v12 = v9;
    }

    v13 = v12 - 1;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        v8 = 0;
        v51 = 0;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        goto LABEL_17;
      }

      v8 = *(a1 + 64 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

  while (1)
  {
    v11 = v10;
LABEL_16:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    outlined init with copy of _Benchmark(*(a1 + 56) + 40 * v15, &v45);
    *&v48 = v17;
    *(&v48 + 1) = v18;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v45, &v49);

    v13 = v11;
LABEL_17:
    v52 = v48;
    v53[0] = v49;
    v53[1] = v50;
    v54 = v51;
    v19 = *(&v48 + 1);
    if (!*(&v48 + 1))
    {
      goto LABEL_33;
    }

    v44 = v13;
    v20 = v52;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v53, &v48);
    swift_beginAccess();
    v21 = *(v2 + 136);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 136) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
      *(v2 + 136) = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21);
    }

    v46 = &unk_1EFFB8510;
    v47 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v25 = swift_allocObject();
    *&v45 = v25;
    *(v25 + 16) = v20;
    *(v25 + 24) = v19;
    *(v25 + 32) = 0;
    *(v25 + 40) = 1;
    v21[2] = v24 + 1;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v45, &v21[5 * v24 + 4]);
    *(v2 + 136) = v21;
    swift_endAccess();
    v26 = v2;
    v27 = v55;
    v28 = __DictionaryEncoder.box_(_:)(&v48);
    v55 = v27;
    if (v27)
    {

      $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v2);

      __swift_destroy_boxed_opaque_existential_1(&v48);
      v38 = *(v2 + 16);
      if (v38 >> 62)
      {
        v39 = __CocoaSet.count.getter();
      }

      else
      {
        v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v5 = v43;
      if (v41 < v39)
      {
        swift_beginAccess();
        v40 = *(v2 + 16);
        if (v40 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
            goto LABEL_58;
          }
        }

        else if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        result = specialized RangeReplaceableCollection<>.popLast()();
        if (!result)
        {
          goto LABEL_60;
        }

        v26 = result;
        swift_endAccess();
      }

      swift_willThrow();
      goto LABEL_49;
    }

    v29 = v28;
    if (!v28)
    {
      v29 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
    }

    *&v45 = v20;
    *(&v45 + 1) = v19;
    v5 = v43;
    [v43 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    swift_beginAccess();
    v30 = *(v2 + 136);
    if (!v30[2])
    {
      goto LABEL_51;
    }

    v31 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 136) = v30;
    if ((v31 & 1) == 0)
    {
      break;
    }

    v32 = v30[2];
    if (!v32)
    {
      goto LABEL_32;
    }

LABEL_28:
    v33 = v32 - 1;
    __swift_destroy_boxed_opaque_existential_1(&v30[5 * v32 - 1]);
    v30[2] = v33;
    *(v2 + 136) = v30;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&v48);
    v10 = v44;
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
  *(v2 + 136) = v30;
  v32 = v30[2];
  if (v32)
  {
    goto LABEL_28;
  }

LABEL_32:
  __break(1u);
LABEL_33:

  v34 = *(v2 + 16);
  if (v34 >> 62)
  {
    v35 = __CocoaSet.count.getter();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v41 >= v35)
  {
    v26 = 0;
    goto LABEL_49;
  }

  swift_beginAccess();
  v36 = *(v2 + 16);
  if (!(v36 >> 62))
  {
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

LABEL_58:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_59;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_58;
  }

LABEL_38:
  result = specialized RangeReplaceableCollection<>.popLast()();
  if (result)
  {
    v26 = result;
    swift_endAccess();
LABEL_49:

    return v26;
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t __DictionaryReferencingEncoder.init(referencing:at:wrapping:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *(v4 + 144) = a1;
  *(v4 + 152) = a3;
  *(v4 + 160) = a2;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  v8 = *(a1 + 72);
  v9 = *(a1 + 104);
  v32 = *(a1 + 88);
  v33 = v9;
  v34 = *(a1 + 120);
  v10 = *(a1 + 40);
  v28 = *(a1 + 24);
  v29 = v10;
  v30 = *(a1 + 56);
  v31 = v8;
  swift_beginAccess();
  v11 = *(a1 + 136);
  v12 = v30;
  *(v4 + 72) = v31;
  v13 = v33;
  *(v4 + 88) = v32;
  *(v4 + 104) = v13;
  *(v4 + 120) = v34;
  v14 = v29;
  *(v4 + 24) = v28;
  *(v4 + 40) = v14;
  *(v4 + 56) = v12;
  v15 = MEMORY[0x1E69E7CC0];
  *(v4 + 136) = v11;
  *(v4 + 16) = v15;
  v27 = a2;
  swift_retain_n();

  v16 = a3;
  outlined init with copy of DictionaryEncoder._Options(&v28, &v24);

  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v17);

  swift_beginAccess();
  v18 = *(v4 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 136) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
    *(v4 + 136) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
  }

  v25 = &unk_1EFFB8510;
  v26 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v22 = swift_allocObject();
  *&v24 = v22;
  *(v22 + 16) = 0x207865646E49;
  *(v22 + 24) = 0xE600000000000000;
  *(v22 + 32) = a2;
  *(v22 + 40) = 0;
  v18[2] = v21 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v24, &v18[5 * v21 + 4]);
  *(v4 + 136) = v18;
  swift_endAccess();

  return v4;
}

BOOL __DictionaryReferencingEncoder.canEncodeNewValue.getter()
{
  swift_beginAccess();
  v1 = v0[2];
  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  v3 = v0[17];
  v4 = v0[18];
  v5 = *(v3 + 16);
  swift_beginAccess();
  return v2 == v5 + ~*(*(v4 + 136) + 16);
}

void __DictionaryReferencingEncoder.__ivar_destroyer()
{

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);

  outlined consume of __DictionaryReferencingEncoder.Reference(v1, v2, v3, v4);
}

uint64_t __DictionaryReferencingEncoder.deinit()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3 == 1)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (!v3)
    {
      v6 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
      v7 = &lazy cache variable for type metadata for NSDictionary;
      goto LABEL_10;
    }

LABEL_17:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v3 = __CocoaSet.count.getter();
  if (v3 != 1)
  {
    goto LABEL_8;
  }

LABEL_3:
  swift_beginAccess();
  v4 = *(v0 + 16);
  if (v4 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_17;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

  v5 = specialized RangeReplaceableCollection<>.popLast()();
  if (!v5)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  swift_endAccess();
  v7 = &lazy cache variable for type metadata for NSObject;
LABEL_10:
  v8 = type metadata accessor for NSObject(0, v7);
  v22 = v8;
  v21[0] = v6;
  v10 = *(v1 + 152);
  v9 = *(v1 + 160);
  v11 = *(v1 + 168);
  if (*(v1 + 176))
  {
    v12 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    v13 = v10;

    v14 = MEMORY[0x18D00C850](v9, v11);

    v15 = [v12 initWithString_];

    __swift_project_boxed_opaque_existential_1(v21, v22);
    [v13 setObject:_bridgeAnythingToObjectiveC<A>(_:)() forKeyedSubscript:v15];

    swift_unknownObjectRelease();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v21, v8);
    [v10 insertObject:_bridgeAnythingToObjectiveC<A>(_:)() atIndex:v9];
    swift_unknownObjectRelease();
    outlined consume of __DictionaryReferencingEncoder.Reference(v10, v9, v11, 0);
  }

  __swift_destroy_boxed_opaque_existential_1(v21);

  v16 = *(v1 + 48);
  v17 = *(v1 + 64);
  v18 = *(v1 + 72);
  v19 = *(v1 + 112);
  _s7SwiftUI17DictionaryEncoderC20DateEncodingStrategyOWOe_0(*(v1 + 24), *(v1 + 32), *(v1 + 40));
  _s7SwiftUI17DictionaryDecoderC20DataDecodingStrategyOWOe_0(v16);
  outlined consume of DictionaryDecoder.NonConformingFloatDecodingStrategy(v17, v18);
  _s7SwiftUI17DictionaryDecoderC20DataDecodingStrategyOWOe_0(v19);

  outlined consume of __DictionaryReferencingEncoder.Reference(*(v1 + 152), *(v1 + 160), *(v1 + 168), *(v1 + 176));
  return v1;
}

uint64_t __DictionaryReferencingEncoder.__deallocating_deinit()
{
  __DictionaryReferencingEncoder.deinit();

  return swift_deallocClassInstance();
}

uint64_t DictionaryDecoder.decode<A>(_:from:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a4;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  strcpy(v54, "__DICTIONARY__");
  v54[15] = -18;
  v14 = [a2 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v14)
  {
    v40 = v11;
    v41 = v10;
    v42 = a5;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v54, v55);
    outlined init with copy of Any(v55, v53);
    v16 = *(v5 + 16);
    v15 = *(v5 + 24);
    v49 = v13;
    v17 = *(v5 + 40);
    v18 = *(v5 + 48);
    v51 = a1;
    v50 = a3;
    v20 = *(v5 + 56);
    v19 = *(v5 + 64);
    v21 = *(v5 + 72);
    v22 = *(v5 + 80);
    v23 = *(v5 + 96);
    v45 = *(v5 + 88);
    v44 = v23;
    v24 = *(v5 + 112);
    v47 = *(v5 + 104);
    v46 = v24;
    v48 = *(v5 + 120);
    *&v56 = v16;
    *(&v56 + 1) = v15;
    v25 = *(v5 + 32);
    v57 = v25;
    v58 = v17;
    v59 = v18;
    v60 = v20;
    v61 = v19;
    v62 = v21;
    v63 = v22;
    v64 = v45;
    v65 = v23;
    v66 = v47;
    v67 = v24;
    v68 = v48;
    type metadata accessor for __DictionaryDecoder();
    v43 = swift_allocObject();
    _s7SwiftUI17DictionaryEncoderC20DateEncodingStrategyOWOy_0(v16, v15, v25);
    v26 = v17;
    v27 = v49;
    sub_18C0C046C(v26);
    v28 = v20;
    v29 = v50;
    v30 = v51;
    outlined copy of DictionaryEncoder.NonConformingFloatEncodingStrategy(v28, v19);
    sub_18C0C046C(v47);

    __DictionaryDecoder.init(referencing:at:options:)(v53, MEMORY[0x1E69E7CC0], &v56);
    v31 = v69;
    __DictionaryDecoder.unbox<A>(_:as:)(v55, v30, v29, v52, v27);
    if (v31)
    {
      __swift_destroy_boxed_opaque_existential_1(v55);
    }

    else
    {
      v36 = *(v29 - 8);
      if ((*(v36 + 48))(v27, 1, v29) == 1)
      {
        (*(v40 + 8))(v27, v41);
        v37 = type metadata accessor for DecodingError();
        swift_allocError();
        v39 = v38;
        type metadata accessor for (@thick Any.Type, DecodingError.Context)();
        *v39 = v30;
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6B08], v37);
        swift_willThrow();

        return __swift_destroy_boxed_opaque_existential_1(v55);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v55);

        return (*(v36 + 32))(v42, v27, v29);
      }
    }
  }

  else
  {
    v33 = type metadata accessor for DecodingError();
    swift_allocError();
    v35 = v34;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6B00], v33);
    return swift_willThrow();
  }
}

void __DictionaryDecoder.unbox<A>(_:as:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __DictionaryDecoder.unbox_(_:as:)(a1, a2, a4, &v9);
  if (!v5)
  {
    _sypSgMaTm_0(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    v8 = swift_dynamicCast();
    (*(*(a3 - 8) + 56))(a5, v8 ^ 1u, 1, a3);
  }
}

uint64_t DictionaryDecoder.__deallocating_deinit()
{
  _s7SwiftUI17DictionaryEncoderC20DateEncodingStrategyOWOe_0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  _s7SwiftUI17DictionaryDecoderC20DataDecodingStrategyOWOe_0(*(v0 + 40));
  outlined consume of DictionaryDecoder.NonConformingFloatDecodingStrategy(*(v0 + 56), *(v0 + 64));
  _s7SwiftUI17DictionaryDecoderC20DataDecodingStrategyOWOe_0(*(v0 + 104));

  return swift_deallocClassInstance();
}

uint64_t __DictionaryDecoder.init(referencing:at:options:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  outlined init with copy of Any(a1, v16);
  swift_beginAccess();
  outlined init with copy of Any(v16, v15);
  *(v3 + 16) = v7;
  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v7);
  *(v3 + 16) = v8;
  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
    *(v3 + 16) = v8;
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  *(v8 + 2) = v10 + 1;
  outlined init with take of Any(v15, &v8[32 * v10 + 32]);
  *(v3 + 16) = v8;
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(a1);
  v11 = a3[2];
  *(v3 + 72) = a3[3];
  v12 = a3[5];
  *(v3 + 88) = a3[4];
  *(v3 + 104) = v12;
  *(v3 + 120) = a3[6];
  v13 = a3[1];
  *(v3 + 24) = *a3;
  *(v3 + 40) = v13;
  *(v3 + 136) = a2;
  *(v3 + 56) = v11;
  return v3;
}

uint64_t __DictionaryDecoder.container<A>(keyedBy:)()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    outlined init with copy of Any(v1 + 32 * v2, v19);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull);
    if (swift_dynamicCast())
    {

      v3 = type metadata accessor for DecodingError();
      swift_allocError();
      v5 = v4;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v5 = type metadata accessor for KeyedDecodingContainer();
      swift_beginAccess();

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B08], v3);
      return swift_willThrow();
    }

    v6 = *(v0 + 16);
    v7 = *(v6 + 16);
    if (v7)
    {
      outlined init with copy of Any(v6 + 32 * v7, v19);
      type metadata accessor for [String : Any](0, &lazy cache variable for type metadata for [String : Any], MEMORY[0x1E69E5E28]);
      if (swift_dynamicCast())
      {

        v9 = specialized _DictionaryKeyedDecodingContainer.init(referencing:wrapping:)(v8, v18);
        v11 = v10;
        v13 = v12;

        v19[0] = v9;
        v19[1] = v11;
        v19[2] = v13;
        type metadata accessor for _DictionaryKeyedDecodingContainer();
        swift_getWitnessTable();
        return KeyedDecodingContainer.init<A>(_:)();
      }

      v15 = type metadata accessor for DecodingError();
      swift_allocError();
      v17 = v16;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v17 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
      swift_beginAccess();

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6AF8], v15);
      return swift_willThrow();
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t __DictionaryDecoder.unkeyedContainer()@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    outlined init with copy of Any(v3 + 32 * v4, v17);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull);
    v5 = MEMORY[0x1E69E7CA0];
    if (swift_dynamicCast())
    {

      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v7;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v8 = type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for UnkeyedDecodingContainer);
      swift_beginAccess();

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v9 = MEMORY[0x1E69E6B08];
LABEL_8:
      (*(*(v6 - 8) + 104))(v8, *v9, v6);
      return swift_willThrow();
    }

    v10 = *(v1 + 16);
    v11 = *(v10 + 16);
    if (v11)
    {
      outlined init with copy of Any(v10 + 32 * v11, v17);
      _sypSgMaTm_0(0, &lazy cache variable for type metadata for [Any], v5 + 8, MEMORY[0x1E69E62F8]);
      if (swift_dynamicCast())
      {
        swift_beginAccess();
        v12 = *(v1 + 136);
        a1[3] = &unk_1EFFB8488;
        a1[4] = lazy protocol witness table accessor for type _JSONUnkeyedDecodingContainer and conformance _JSONUnkeyedDecodingContainer();
        v13 = swift_allocObject();
        *a1 = v13;
        v13[2] = v1;
        v13[3] = v16;
        v13[4] = v12;
        v13[5] = 0;
      }

      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v15;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v8 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
      swift_beginAccess();

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v9 = MEMORY[0x1E69E6AF8];
      goto LABEL_8;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t __DictionaryEncoder.__deallocating_deinit(void (*a1)(void, void, void), void (*a2)(uint64_t, uint64_t), void (*a3)(uint64_t, uint64_t))
{

  v5 = *(v3 + 48);
  v6 = *(v3 + 56);
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  v10 = *(v3 + 120);
  v11 = *(v3 + 112);
  a1(*(v3 + 24), *(v3 + 32), *(v3 + 40));
  a2(v5, v6);
  outlined consume of DictionaryDecoder.NonConformingFloatDecodingStrategy(v7, v8);
  a3(v11, v10);

  return swift_deallocClassInstance();
}

void type metadata accessor for (positiveInfinity: String, negativeInfinity: String, nan: String)()
{
  if (!lazy cache variable for type metadata for (positiveInfinity: String, negativeInfinity: String, nan: String))
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (positiveInfinity: String, negativeInfinity: String, nan: String));
    }
  }
}

id outlined copy of __DictionaryReferencingEncoder.Reference(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
  }

  else
  {

    return a1;
  }
}

void outlined consume of __DictionaryReferencingEncoder.Reference(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

uint64_t initializeWithCopy for __DictionaryReferencingEncoder.Reference(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  outlined copy of __DictionaryReferencingEncoder.Reference(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for __DictionaryReferencingEncoder.Reference(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  outlined copy of __DictionaryReferencingEncoder.Reference(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  outlined consume of __DictionaryReferencingEncoder.Reference(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for __DictionaryReferencingEncoder.Reference(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  outlined consume of __DictionaryReferencingEncoder.Reference(v5, v7, v6, v8);
  return a1;
}

uint64_t destroy for DictionaryDecoder._Options(uint64_t a1, uint64_t a2, void (*a3)(void, void, void))
{
  a3(*a1, *(a1 + 8), *(a1 + 16));
  if (*(a1 + 24) >= 2uLL)
  {
  }

  if (*(a1 + 48))
  {
  }

  if (*(a1 + 88) >= 2uLL)
  {
  }
}

uint64_t initializeWithCopy for DictionaryDecoder._Options(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t))
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  a4(*a2, v7, v8);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  v9 = a2[3];
  if (v9 >= 2)
  {
    v13 = a2[4];
    *(a1 + 24) = v9;
    *(a1 + 32) = v13;

    v10 = a2[6];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a1 + 24) = *(a2 + 3);
    v10 = a2[6];
    if (v10)
    {
LABEL_3:
      *(a1 + 40) = a2[5];
      *(a1 + 48) = v10;
      v11 = a2[8];
      *(a1 + 56) = a2[7];
      *(a1 + 64) = v11;
      v12 = a2[10];
      *(a1 + 72) = a2[9];
      *(a1 + 80) = v12;

      goto LABEL_6;
    }
  }

  *(a1 + 40) = *(a2 + 5);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 72) = *(a2 + 9);
LABEL_6:
  v14 = a2[11];
  if (v14 >= 2)
  {
    v15 = a2[12];
    *(a1 + 88) = v14;
    *(a1 + 96) = v15;
  }

  else
  {
    *(a1 + 88) = *(a2 + 11);
  }

  *(a1 + 104) = a2[13];

  return a1;
}

uint64_t *assignWithCopy for DictionaryDecoder._Options(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 16);
  a4(*a2, v9, v10);
  v11 = *a1;
  v12 = a1[1];
  *a1 = v8;
  a1[1] = v9;
  v13 = *(a1 + 16);
  *(a1 + 16) = v10;
  a5(v11, v12, v13);
  v14 = a2[3];
  if (a1[3] < 2)
  {
    if (v14 >= 2)
    {
      v15 = a2[4];
      a1[3] = v14;
      a1[4] = v15;

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v14 < 2)
  {

LABEL_6:
    *(a1 + 3) = *(a2 + 3);
    goto LABEL_8;
  }

  v16 = a2[4];
  a1[3] = v14;
  a1[4] = v16;

LABEL_8:
  v17 = a2[6];
  if (a1[6])
  {
    if (v17)
    {
      a1[5] = a2[5];
      a1[6] = a2[6];

      a1[7] = a2[7];
      a1[8] = a2[8];

      a1[9] = a2[9];
      a1[10] = a2[10];
    }

    else
    {
      outlined destroy of (positiveInfinity: String, negativeInfinity: String, nan: String)((a1 + 5), type metadata accessor for (positiveInfinity: String, negativeInfinity: String, nan: String));
      v18 = *(a2 + 9);
      v19 = *(a2 + 7);
      *(a1 + 5) = *(a2 + 5);
      *(a1 + 7) = v19;
      *(a1 + 9) = v18;
    }
  }

  else if (v17)
  {
    a1[5] = a2[5];
    a1[6] = a2[6];
    a1[7] = a2[7];
    a1[8] = a2[8];
    a1[9] = a2[9];
    a1[10] = a2[10];
  }

  else
  {
    v20 = *(a2 + 5);
    v21 = *(a2 + 7);
    *(a1 + 9) = *(a2 + 9);
    *(a1 + 7) = v21;
    *(a1 + 5) = v20;
  }

  v22 = a2[11];
  if (a1[11] >= 2)
  {
    if (v22 >= 2)
    {
      v24 = a2[12];
      a1[11] = v22;
      a1[12] = v24;

      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (v22 < 2)
  {
LABEL_20:
    *(a1 + 11) = *(a2 + 11);
    goto LABEL_22;
  }

  v23 = a2[12];
  a1[11] = v22;
  a1[12] = v23;

LABEL_22:
  a1[13] = a2[13];

  return a1;
}

uint64_t *assignWithTake for DictionaryDecoder._Options(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(a2 + 16);
  v7 = *a1;
  v8 = a1[1];
  *a1 = *a2;
  v9 = *(a1 + 16);
  *(a1 + 16) = v6;
  a4(v7, v8, v9);
  v10 = *(a2 + 24);
  if (a1[3] >= 2)
  {
    if (v10 >= 2)
    {
      v12 = *(a2 + 32);
      a1[3] = v10;
      a1[4] = v12;

      if (!a1[6])
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else if (v10 >= 2)
  {
    v11 = *(a2 + 32);
    a1[3] = v10;
    a1[4] = v11;
    if (!a1[6])
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  *(a1 + 3) = *(a2 + 24);
  if (!a1[6])
  {
    goto LABEL_13;
  }

LABEL_10:
  v13 = *(a2 + 48);
  if (v13)
  {
    a1[5] = *(a2 + 40);
    a1[6] = v13;

    v14 = *(a2 + 64);
    a1[7] = *(a2 + 56);
    a1[8] = v14;

    v15 = *(a2 + 80);
    a1[9] = *(a2 + 72);
    a1[10] = v15;

    goto LABEL_14;
  }

  outlined destroy of (positiveInfinity: String, negativeInfinity: String, nan: String)((a1 + 5), type metadata accessor for (positiveInfinity: String, negativeInfinity: String, nan: String));
LABEL_13:
  *(a1 + 5) = *(a2 + 40);
  *(a1 + 7) = *(a2 + 56);
  *(a1 + 9) = *(a2 + 72);
LABEL_14:
  v16 = *(a2 + 88);
  if (a1[11] >= 2)
  {
    if (v16 >= 2)
    {
      v18 = *(a2 + 96);
      a1[11] = v16;
      a1[12] = v18;

      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (v16 < 2)
  {
LABEL_19:
    *(a1 + 11) = *(a2 + 88);
    goto LABEL_21;
  }

  v17 = *(a2 + 96);
  a1[11] = v16;
  a1[12] = v17;
LABEL_21:
  a1[13] = *(a2 + 104);

  return a1;
}

uint64_t getEnumTagSinglePayload for DictionaryDecoder._Options(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DictionaryDecoder._Options(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t destroy for DictionaryDecoder.NonConformingFloatDecodingStrategy(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

__n128 initializeWithCopy for DictionaryDecoder.NonConformingFloatDecodingStrategy(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 < 0xFFFFFFFF)
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    result = *(a2 + 32);
    *(a1 + 32) = result;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = v2;
    v3 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v3;
    v4 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v4;
  }

  return result;
}

void *assignWithCopy for DictionaryDecoder.NonConformingFloatDecodingStrategy(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1] < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];
      a1[3] = a2[3];
      a1[4] = a2[4];
      a1[5] = a2[5];

      return a1;
    }

LABEL_7:
    v5 = *a2;
    v6 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v6;
    *a1 = v5;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];
  a1[5] = a2[5];

  return a1;
}

uint64_t assignWithTake for DictionaryDecoder.NonConformingFloatDecodingStrategy(uint64_t result, uint64_t a2)
{
  if (*(result + 8) < 0xFFFFFFFFuLL)
  {
    v7 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v7;
    *(result + 32) = *(a2 + 32);
  }

  else
  {
    v3 = *(a2 + 8);
    if (v3 < 0xFFFFFFFF)
    {
      v4 = result;

      v8 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v8;
      *(v4 + 32) = *(a2 + 32);
    }

    else
    {
      *result = *a2;
      *(result + 8) = v3;
      v4 = result;

      v5 = *(a2 + 24);
      *(v4 + 16) = *(a2 + 16);
      *(v4 + 24) = v5;

      v6 = *(a2 + 40);
      *(v4 + 32) = *(a2 + 32);
      *(v4 + 40) = v6;
    }

    return v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DictionaryDecoder.NonConformingFloatDecodingStrategy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DictionaryDecoder.NonConformingFloatDecodingStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for DictionaryDecoder.KeyDecodingStrategy(__n128 *a1, __n128 *a2)
{
  if (a2->n128_u64[0] < 0xFFFFFFFF)
  {
    result = *a2;
    *a1 = *a2;
  }

  else
  {
    v2 = a2->n128_u64[1];
    a1->n128_u64[0] = a2->n128_u64[0];
    a1->n128_u64[1] = v2;
  }

  return result;
}

__n128 assignWithCopy for DictionaryDecoder.KeyDecodingStrategy(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    if (v2 < 0xFFFFFFFF)
    {
      result = *a2;
      *a1 = *a2;
    }

    else
    {
      v5 = a2[1];
      *a1 = v2;
      *(a1 + 8) = v5;
    }
  }

  else if (v2 < 0xFFFFFFFF)
  {

    result = *a2;
    *a1 = *a2;
  }

  else
  {
    v3 = a2[1];
    *a1 = v2;
    *(a1 + 8) = v3;
  }

  return result;
}

__n128 assignWithTake for DictionaryDecoder.KeyDecodingStrategy(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    if (v2 < 0xFFFFFFFF)
    {
      result = *a2;
      *a1 = *a2;
    }

    else
    {
      v5 = a2[1];
      *a1 = v2;
      *(a1 + 8) = v5;
    }
  }

  else if (v2 < 0xFFFFFFFF)
  {

    result = *a2;
    *a1 = *a2;
  }

  else
  {
    v3 = a2[1];
    *a1 = v2;
    *(a1 + 8) = v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DictionaryDecoder.KeyDecodingStrategy(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DictionaryDecoder.KeyDecodingStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for DictionaryDecoder.DateDecodingStrategy(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  a4(*a2, v6, v7);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  return a1;
}

uint64_t *assignWithCopy for DictionaryDecoder.DateDecodingStrategy(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  a4(*a2, v8, v9);
  v10 = *a1;
  v11 = a1[1];
  *a1 = v7;
  a1[1] = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v9;
  a5(v10, v11, v12);
  return a1;
}

uint64_t *assignWithTake for DictionaryDecoder.DateDecodingStrategy(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = a1[1];
  *a1 = *a2;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  a4(v6, v7, v8);
  return a1;
}

unint64_t lazy protocol witness table accessor for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting()
{
  result = lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting;
  if (!lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting;
  if (!lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting;
  if (!lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting;
  if (!lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DictionaryEncoder.OutputFormatting and conformance DictionaryEncoder.OutputFormatting);
  }

  return result;
}

uint64_t protocol witness for Decoder.singleValueContainer() in conformance __DictionaryDecoder@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for __DictionaryDecoder();
  a1[4] = lazy protocol witness table accessor for type __DictionaryEncoder and conformance __DictionaryEncoder(&lazy protocol witness table cache variable for type __DictionaryDecoder and conformance __DictionaryDecoder, type metadata accessor for __DictionaryDecoder);
  *a1 = v3;
}

uint64_t _DictionaryDecodingStorage.popContainer()()
{
  v1 = *v0;
  if (*(*v0 + 2))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v2 = *(v1 + 2);
      if (v2)
      {
LABEL_4:
        v3 = v2 - 1;
        result = __swift_destroy_boxed_opaque_existential_1(&v1[32 * v2]);
        *(v1 + 2) = v3;
        *v0 = v1;
        return result;
      }
    }

    else
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      v2 = *(v1 + 2);
      if (v2)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _DictionaryKeyedDecodingContainer.allKeys.getter()
{
  type metadata accessor for [String : Any](0, &lazy cache variable for type metadata for [String : Any].Keys, MEMORY[0x1E69E5D88]);
  lazy protocol witness table accessor for type [String : Any].Keys and conformance [A : B].Keys();

  v0 = Sequence.compactMap<A>(_:)();

  return v0;
}

uint64_t _DictionaryKeyedDecodingContainer.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_5;
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_5:
    v9 = 0;
    memset(v11, 0, sizeof(v11));
    goto LABEL_6;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v6, v11);
  v9 = 1;
LABEL_6:
  outlined destroy of Any?(v11);
  return v9;
}

uint64_t _DictionaryKeyedDecodingContainer._errorDescription(of:)(void *a1, uint64_t a2)
{
  if (*(a2 + 112) != 1)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x18D00C9B0](2238496, 0xE300000000000000);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = dispatch thunk of CodingKey.stringValue.getter();
    MEMORY[0x18D00C9B0](v14);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = dispatch thunk of CodingKey.stringValue.getter();
  v5 = v4;
  v6 = specialized static DictionaryEncoder.KeyEncodingStrategy._convertToSnakeCase(_:)(v3, v4);
  v8 = v7;
  v9 = specialized static DictionaryDecoder.KeyDecodingStrategy._convertFromSnakeCase(_:)(v6, v7);
  v11 = v10;
  v12 = v6 == v3 && v8 == v5;
  if (v12 || (v13 = v9, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x18D00C9B0](2238496, 0xE300000000000000);
    MEMORY[0x18D00C9B0](v3, v5);
LABEL_9:

    MEMORY[0x18D00C9B0](10530, 0xE200000000000000);
    return 0;
  }

  v16 = v13 == v3 && v11 == v5;
  if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    _StringGuts.grow(_:)(26);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x18D00C9B0](2238496, 0xE300000000000000);
    MEMORY[0x18D00C9B0](v3, v5);

    v17 = 0x800000018CD471E0;
    v18 = 0xD000000000000011;
  }

  else
  {
    _StringGuts.grow(_:)(60);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x18D00C9B0](2238496, 0xE300000000000000);
    MEMORY[0x18D00C9B0](v3, v5);

    MEMORY[0x18D00C9B0](0xD000000000000022, 0x800000018CD471B0);
    MEMORY[0x18D00C9B0](v13, v11);

    v18 = 0x7265766E6F63202CLL;
    v17 = 0xEF206F7420646574;
  }

  MEMORY[0x18D00C9B0](v18, v17);
  MEMORY[0x18D00C9B0](v6, v8);

  return 0;
}

uint64_t _DictionaryKeyedDecodingContainer.decodeNil(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a4;
  v11 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_6;
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_6:
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    type metadata accessor for (CodingKey, DecodingError.Context)();
    v19[3] = a5;
    v19[4] = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    v21 = *(a5 - 8);
    v22 = *(v21 + 16);
    v17 = v21 + 16;
    v22(boxed_opaque_existential_1, a1, a5);
    swift_beginAccess();
    *&v29 = 0;
    *(&v29 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v32 = 0xD00000000000001DLL;
    v33 = 0x800000018CD47220;
    v30 = a5;
    v31 = a6;
    v23 = __swift_allocate_boxed_opaque_existential_1(&v29);
    v22(v23, a1, a5);
    v24 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v29, a2);
    v26 = v25;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    MEMORY[0x18D00C9B0](v24, v26);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 8) + 104))(v19, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v17 & 1;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v13, v34);
  outlined init with take of Any(v34, &v29);
  outlined init with take of Any(&v29, v34);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull);
  v16 = swift_dynamicCast();
  v17 = v16;
  if (v16)
  {
  }

  return v17 & 1;
}

uint64_t _DictionaryKeyedDecodingContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a4;
  v48 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v45 - v13;
  v49 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v50 = a3;
  if (!v18)
  {

    goto LABEL_10;
  }

  v47 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:
    v47 = type metadata accessor for DecodingError();
    v45[1] = swift_allocError();
    v32 = v31;
    type metadata accessor for (CodingKey, DecodingError.Context)();
    v46 = *(v33 + 48);
    v34 = v49;
    v32[3] = a5;
    v32[4] = v34;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
    v36 = *(v9 + 16);
    v36(boxed_opaque_existential_1, a1, a5);
    v37 = v48;
    swift_beginAccess();
    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v54[0] = 0xD00000000000001DLL;
    v54[1] = 0x800000018CD47220;
    v52 = a5;
    v53 = v34;
    v38 = __swift_allocate_boxed_opaque_existential_1(&v51);
    v36(v38, a1, a5);
    v39 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v51, v37);
    v41 = v40;
    __swift_destroy_boxed_opaque_existential_1(&v51);
    v23 = v54;
    MEMORY[0x18D00C9B0](v39, v41);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v47 - 8) + 104))(v32, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v23 & 1;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v55);
  outlined init with take of Any(v55, &v51);
  v46 = *(v9 + 16);
  v46(v14, a1, a5);
  v22 = v48;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v49;
  v27 = *(v23 + 16);
  v26 = *(v23 + 24);
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v46(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  LOBYTE(v23) = v22;
  v28 = v47;
  v29 = specialized __DictionaryDecoder.unbox(_:as:)(&v51);
  if (v28)
  {
    v30 = v22;
  }

  else
  {
    LOBYTE(v23) = v29;
    if (v29 != 2)
    {
      $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
      __swift_destroy_boxed_opaque_existential_1(&v51);
      return v23 & 1;
    }

    v23 = type metadata accessor for DecodingError();
    swift_allocError();
    v43 = v42;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v43 = MEMORY[0x1E69E6370];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v23 - 8) + 104))(v43, *MEMORY[0x1E69E6B08], v23);
    swift_willThrow();
    v30 = v22;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v30);
  __swift_destroy_boxed_opaque_existential_1(&v51);
  return v23 & 1;
}

void *_DictionaryKeyedDecodingContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a4;
  v50 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v47 - v13;
  v51 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v52 = a3;
  if (!v18)
  {

    goto LABEL_10;
  }

  v49 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:
    v49 = type metadata accessor for DecodingError();
    v47[1] = swift_allocError();
    v34 = v33;
    type metadata accessor for (CodingKey, DecodingError.Context)();
    v48 = *(v35 + 48);
    v36 = v51;
    v34[3] = a5;
    v34[4] = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    v38 = *(v9 + 16);
    v38(boxed_opaque_existential_1, a1, a5);
    v39 = v50;
    swift_beginAccess();
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v56[0] = 0xD00000000000001DLL;
    v56[1] = 0x800000018CD47220;
    v54 = a5;
    v55 = v36;
    v40 = __swift_allocate_boxed_opaque_existential_1(&v53);
    v38(v40, a1, a5);
    v41 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v53, v39);
    v43 = v42;
    __swift_destroy_boxed_opaque_existential_1(&v53);
    v28 = v56;
    MEMORY[0x18D00C9B0](v41, v43);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v49 - 8) + 104))(v34, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v28;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v57);
  outlined init with take of Any(v57, &v53);
  v48 = *(v9 + 16);
  v48(v14, a1, a5);
  v22 = v50;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v51;
  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v48(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  v28 = v22;
  v29 = v49;
  specialized __DictionaryDecoder.unbox(_:as:)(&v53, &selRef_integerValue, &selRef_initWithInteger_, 7630409, 0xE300000000000000);
  if (v29)
  {
    v32 = v22;
  }

  else
  {
    if ((v31 & 1) == 0)
    {
      v28 = v30;
      $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
      __swift_destroy_boxed_opaque_existential_1(&v53);
      return v28;
    }

    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v45 = v44;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v45 = MEMORY[0x1E69E6530];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 1) + 104))(v45, *MEMORY[0x1E69E6B08], v28);
    swift_willThrow();
    v32 = v22;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v32);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  return v28;
}

{
  v57 = a4;
  v49 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v46 - v13;
  v50 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v51 = a3;
  if (!v18)
  {

    goto LABEL_10;
  }

  v48 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:
    v48 = type metadata accessor for DecodingError();
    v46[1] = swift_allocError();
    v33 = v32;
    type metadata accessor for (CodingKey, DecodingError.Context)();
    v47 = *(v34 + 48);
    v35 = v50;
    v33[3] = a5;
    v33[4] = v35;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    v37 = *(v9 + 16);
    v37(boxed_opaque_existential_1, a1, a5);
    v38 = v49;
    swift_beginAccess();
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v55[0] = 0xD00000000000001DLL;
    v55[1] = 0x800000018CD47220;
    v53 = a5;
    v54 = v35;
    v39 = __swift_allocate_boxed_opaque_existential_1(&v52);
    v37(v39, a1, a5);
    v40 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v52, v38);
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v28 = v55;
    MEMORY[0x18D00C9B0](v40, v42);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v48 - 8) + 104))(v33, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v28;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v56);
  outlined init with take of Any(v56, &v52);
  v47 = *(v9 + 16);
  v47(v14, a1, a5);
  v22 = v49;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v50;
  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v47(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  v28 = v22;
  v29 = v48;
  specialized __DictionaryDecoder.unbox(_:as:)(&v52);
  if (v29)
  {
    v31 = v22;
LABEL_14:
    $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v31);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    return v28;
  }

  v28 = v30;
  if ((v30 & 0x100) != 0)
  {
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v44 = v43;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v44 = MEMORY[0x1E69E7230];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 1) + 104))(v44, *MEMORY[0x1E69E6B08], v28);
    swift_willThrow();
    v31 = v22;
    goto LABEL_14;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  return v28;
}

{
  v57 = a4;
  v49 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v46 - v13;
  v50 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v51 = a3;
  if (!v18)
  {

    goto LABEL_10;
  }

  v48 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:
    v48 = type metadata accessor for DecodingError();
    v46[1] = swift_allocError();
    v33 = v32;
    type metadata accessor for (CodingKey, DecodingError.Context)();
    v47 = *(v34 + 48);
    v35 = v50;
    v33[3] = a5;
    v33[4] = v35;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    v37 = *(v9 + 16);
    v37(boxed_opaque_existential_1, a1, a5);
    v38 = v49;
    swift_beginAccess();
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v55[0] = 0xD00000000000001DLL;
    v55[1] = 0x800000018CD47220;
    v53 = a5;
    v54 = v35;
    v39 = __swift_allocate_boxed_opaque_existential_1(&v52);
    v37(v39, a1, a5);
    v40 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v52, v38);
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v28 = v55;
    MEMORY[0x18D00C9B0](v40, v42);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v48 - 8) + 104))(v33, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v28;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v56);
  outlined init with take of Any(v56, &v52);
  v47 = *(v9 + 16);
  v47(v14, a1, a5);
  v22 = v49;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v50;
  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v47(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  v28 = v22;
  v29 = v48;
  specialized __DictionaryDecoder.unbox(_:as:)(&v52);
  if (v29)
  {
    v31 = v22;
LABEL_14:
    $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v31);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    return v28;
  }

  v28 = v30;
  if ((v30 & 0x10000) != 0)
  {
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v44 = v43;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v44 = MEMORY[0x1E69E7290];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 1) + 104))(v44, *MEMORY[0x1E69E6B08], v28);
    swift_willThrow();
    v31 = v22;
    goto LABEL_14;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  return v28;
}

{
  v57 = a4;
  v49 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v46 - v13;
  v50 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v51 = a3;
  if (!v18)
  {

    goto LABEL_10;
  }

  v48 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:
    v48 = type metadata accessor for DecodingError();
    v46[1] = swift_allocError();
    v33 = v32;
    type metadata accessor for (CodingKey, DecodingError.Context)();
    v47 = *(v34 + 48);
    v35 = v50;
    v33[3] = a5;
    v33[4] = v35;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    v37 = *(v9 + 16);
    v37(boxed_opaque_existential_1, a1, a5);
    v38 = v49;
    swift_beginAccess();
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v55[0] = 0xD00000000000001DLL;
    v55[1] = 0x800000018CD47220;
    v53 = a5;
    v54 = v35;
    v39 = __swift_allocate_boxed_opaque_existential_1(&v52);
    v37(v39, a1, a5);
    v40 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v52, v38);
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v28 = v55;
    MEMORY[0x18D00C9B0](v40, v42);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v48 - 8) + 104))(v33, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v28;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v56);
  outlined init with take of Any(v56, &v52);
  v47 = *(v9 + 16);
  v47(v14, a1, a5);
  v22 = v49;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v50;
  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v47(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  v28 = v22;
  v29 = v48;
  specialized __DictionaryDecoder.unbox(_:as:)(&v52, &selRef_intValue, &selRef_initWithInt_, 0x3233746E49, 0xE500000000000000);
  if (v29)
  {
    v31 = v22;
LABEL_14:
    $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v31);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    return v28;
  }

  v28 = v30;
  if ((v30 & 0x100000000) != 0)
  {
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v44 = v43;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v44 = MEMORY[0x1E69E72F0];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 1) + 104))(v44, *MEMORY[0x1E69E6B08], v28);
    swift_willThrow();
    v31 = v22;
    goto LABEL_14;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  return v28;
}

{
  v58 = a4;
  v50 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v47 - v13;
  v51 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v52 = a3;
  if (!v18)
  {

    goto LABEL_10;
  }

  v49 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:
    v49 = type metadata accessor for DecodingError();
    v47[1] = swift_allocError();
    v34 = v33;
    type metadata accessor for (CodingKey, DecodingError.Context)();
    v48 = *(v35 + 48);
    v36 = v51;
    v34[3] = a5;
    v34[4] = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    v38 = *(v9 + 16);
    v38(boxed_opaque_existential_1, a1, a5);
    v39 = v50;
    swift_beginAccess();
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v56[0] = 0xD00000000000001DLL;
    v56[1] = 0x800000018CD47220;
    v54 = a5;
    v55 = v36;
    v40 = __swift_allocate_boxed_opaque_existential_1(&v53);
    v38(v40, a1, a5);
    v41 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v53, v39);
    v43 = v42;
    __swift_destroy_boxed_opaque_existential_1(&v53);
    v28 = v56;
    MEMORY[0x18D00C9B0](v41, v43);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v49 - 8) + 104))(v34, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v28;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v57);
  outlined init with take of Any(v57, &v53);
  v48 = *(v9 + 16);
  v48(v14, a1, a5);
  v22 = v50;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v51;
  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v48(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  v28 = v22;
  v29 = v49;
  specialized __DictionaryDecoder.unbox(_:as:)(&v53, &selRef_longLongValue, &selRef_initWithLongLong_, 0x3436746E49, 0xE500000000000000);
  if (v29)
  {
    v32 = v22;
  }

  else
  {
    if ((v31 & 1) == 0)
    {
      v28 = v30;
      $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
      __swift_destroy_boxed_opaque_existential_1(&v53);
      return v28;
    }

    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v45 = v44;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v45 = MEMORY[0x1E69E7360];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 1) + 104))(v45, *MEMORY[0x1E69E6B08], v28);
    swift_willThrow();
    v32 = v22;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v32);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  return v28;
}

{
  v58 = a4;
  v50 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v47 - v13;
  v51 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v52 = a3;
  if (!v18)
  {

    goto LABEL_10;
  }

  v49 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:
    v49 = type metadata accessor for DecodingError();
    v47[1] = swift_allocError();
    v34 = v33;
    type metadata accessor for (CodingKey, DecodingError.Context)();
    v48 = *(v35 + 48);
    v36 = v51;
    v34[3] = a5;
    v34[4] = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    v38 = *(v9 + 16);
    v38(boxed_opaque_existential_1, a1, a5);
    v39 = v50;
    swift_beginAccess();
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v56[0] = 0xD00000000000001DLL;
    v56[1] = 0x800000018CD47220;
    v54 = a5;
    v55 = v36;
    v40 = __swift_allocate_boxed_opaque_existential_1(&v53);
    v38(v40, a1, a5);
    v41 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v53, v39);
    v43 = v42;
    __swift_destroy_boxed_opaque_existential_1(&v53);
    v28 = v56;
    MEMORY[0x18D00C9B0](v41, v43);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v49 - 8) + 104))(v34, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v28;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v57);
  outlined init with take of Any(v57, &v53);
  v48 = *(v9 + 16);
  v48(v14, a1, a5);
  v22 = v50;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v51;
  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v48(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  v28 = v22;
  v29 = v49;
  specialized __DictionaryDecoder.unbox(_:as:)(&v53, &selRef_unsignedIntegerValue, &selRef_initWithUnsignedInteger_, 1953384789, 0xE400000000000000);
  if (v29)
  {
    v32 = v22;
  }

  else
  {
    if ((v31 & 1) == 0)
    {
      v28 = v30;
      $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
      __swift_destroy_boxed_opaque_existential_1(&v53);
      return v28;
    }

    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v45 = v44;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v45 = MEMORY[0x1E69E6810];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 1) + 104))(v45, *MEMORY[0x1E69E6B08], v28);
    swift_willThrow();
    v32 = v22;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v32);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  return v28;
}

{
  v57 = a4;
  v49 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v46 - v13;
  v50 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v51 = a3;
  if (!v18)
  {

    goto LABEL_10;
  }

  v48 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:
    v48 = type metadata accessor for DecodingError();
    v46[1] = swift_allocError();
    v33 = v32;
    type metadata accessor for (CodingKey, DecodingError.Context)();
    v47 = *(v34 + 48);
    v35 = v50;
    v33[3] = a5;
    v33[4] = v35;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    v37 = *(v9 + 16);
    v37(boxed_opaque_existential_1, a1, a5);
    v38 = v49;
    swift_beginAccess();
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v55[0] = 0xD00000000000001DLL;
    v55[1] = 0x800000018CD47220;
    v53 = a5;
    v54 = v35;
    v39 = __swift_allocate_boxed_opaque_existential_1(&v52);
    v37(v39, a1, a5);
    v40 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v52, v38);
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v28 = v55;
    MEMORY[0x18D00C9B0](v40, v42);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v48 - 8) + 104))(v33, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v28;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v56);
  outlined init with take of Any(v56, &v52);
  v47 = *(v9 + 16);
  v47(v14, a1, a5);
  v22 = v49;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v50;
  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v47(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  v28 = v22;
  v29 = v48;
  specialized __DictionaryDecoder.unbox(_:as:)(&v52);
  if (v29)
  {
    v31 = v22;
LABEL_14:
    $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v31);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    return v28;
  }

  v28 = v30;
  if ((v30 & 0x100) != 0)
  {
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v44 = v43;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v44 = MEMORY[0x1E69E7508];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 1) + 104))(v44, *MEMORY[0x1E69E6B08], v28);
    swift_willThrow();
    v31 = v22;
    goto LABEL_14;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  return v28;
}

{
  v57 = a4;
  v49 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v46 - v13;
  v50 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v51 = a3;
  if (!v18)
  {

    goto LABEL_10;
  }

  v48 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:
    v48 = type metadata accessor for DecodingError();
    v46[1] = swift_allocError();
    v33 = v32;
    type metadata accessor for (CodingKey, DecodingError.Context)();
    v47 = *(v34 + 48);
    v35 = v50;
    v33[3] = a5;
    v33[4] = v35;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    v37 = *(v9 + 16);
    v37(boxed_opaque_existential_1, a1, a5);
    v38 = v49;
    swift_beginAccess();
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v55[0] = 0xD00000000000001DLL;
    v55[1] = 0x800000018CD47220;
    v53 = a5;
    v54 = v35;
    v39 = __swift_allocate_boxed_opaque_existential_1(&v52);
    v37(v39, a1, a5);
    v40 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v52, v38);
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v28 = v55;
    MEMORY[0x18D00C9B0](v40, v42);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v48 - 8) + 104))(v33, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v28;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v56);
  outlined init with take of Any(v56, &v52);
  v47 = *(v9 + 16);
  v47(v14, a1, a5);
  v22 = v49;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v50;
  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v47(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  v28 = v22;
  v29 = v48;
  specialized __DictionaryDecoder.unbox(_:as:)(&v52);
  if (v29)
  {
    v31 = v22;
LABEL_14:
    $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v31);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    return v28;
  }

  v28 = v30;
  if ((v30 & 0x10000) != 0)
  {
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v44 = v43;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v44 = MEMORY[0x1E69E75F8];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 1) + 104))(v44, *MEMORY[0x1E69E6B08], v28);
    swift_willThrow();
    v31 = v22;
    goto LABEL_14;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  return v28;
}

{
  v57 = a4;
  v49 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v46 - v13;
  v50 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v51 = a3;
  if (!v18)
  {

    goto LABEL_10;
  }

  v48 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:
    v48 = type metadata accessor for DecodingError();
    v46[1] = swift_allocError();
    v33 = v32;
    type metadata accessor for (CodingKey, DecodingError.Context)();
    v47 = *(v34 + 48);
    v35 = v50;
    v33[3] = a5;
    v33[4] = v35;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    v37 = *(v9 + 16);
    v37(boxed_opaque_existential_1, a1, a5);
    v38 = v49;
    swift_beginAccess();
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v55[0] = 0xD00000000000001DLL;
    v55[1] = 0x800000018CD47220;
    v53 = a5;
    v54 = v35;
    v39 = __swift_allocate_boxed_opaque_existential_1(&v52);
    v37(v39, a1, a5);
    v40 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v52, v38);
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v28 = v55;
    MEMORY[0x18D00C9B0](v40, v42);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v48 - 8) + 104))(v33, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v28;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v56);
  outlined init with take of Any(v56, &v52);
  v47 = *(v9 + 16);
  v47(v14, a1, a5);
  v22 = v49;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v50;
  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v47(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  v28 = v22;
  v29 = v48;
  specialized __DictionaryDecoder.unbox(_:as:)(&v52, &selRef_unsignedIntValue, &selRef_initWithUnsignedInt_, 0x3233746E4955, 0xE600000000000000);
  if (v29)
  {
    v31 = v22;
LABEL_14:
    $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v31);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    return v28;
  }

  v28 = v30;
  if ((v30 & 0x100000000) != 0)
  {
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v44 = v43;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v44 = MEMORY[0x1E69E7668];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 1) + 104))(v44, *MEMORY[0x1E69E6B08], v28);
    swift_willThrow();
    v31 = v22;
    goto LABEL_14;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  return v28;
}

{
  v58 = a4;
  v50 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v47 - v13;
  v51 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v52 = a3;
  if (!v18)
  {

    goto LABEL_10;
  }

  v49 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:
    v49 = type metadata accessor for DecodingError();
    v47[1] = swift_allocError();
    v34 = v33;
    type metadata accessor for (CodingKey, DecodingError.Context)();
    v48 = *(v35 + 48);
    v36 = v51;
    v34[3] = a5;
    v34[4] = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    v38 = *(v9 + 16);
    v38(boxed_opaque_existential_1, a1, a5);
    v39 = v50;
    swift_beginAccess();
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v56[0] = 0xD00000000000001DLL;
    v56[1] = 0x800000018CD47220;
    v54 = a5;
    v55 = v36;
    v40 = __swift_allocate_boxed_opaque_existential_1(&v53);
    v38(v40, a1, a5);
    v41 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v53, v39);
    v43 = v42;
    __swift_destroy_boxed_opaque_existential_1(&v53);
    v28 = v56;
    MEMORY[0x18D00C9B0](v41, v43);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v49 - 8) + 104))(v34, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v28;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v57);
  outlined init with take of Any(v57, &v53);
  v48 = *(v9 + 16);
  v48(v14, a1, a5);
  v22 = v50;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v51;
  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v48(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  v28 = v22;
  v29 = v49;
  specialized __DictionaryDecoder.unbox(_:as:)(&v53, &selRef_unsignedLongLongValue, &selRef_initWithUnsignedLongLong_, 0x3436746E4955, 0xE600000000000000);
  if (v29)
  {
    v32 = v22;
  }

  else
  {
    if ((v31 & 1) == 0)
    {
      v28 = v30;
      $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
      __swift_destroy_boxed_opaque_existential_1(&v53);
      return v28;
    }

    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v45 = v44;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v45 = MEMORY[0x1E69E76D8];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 1) + 104))(v45, *MEMORY[0x1E69E6B08], v28);
    swift_willThrow();
    v32 = v22;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v32);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  return v28;
}

{
  v58 = a4;
  v50 = a2;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v47 - v13;
  v51 = v15;
  v16 = dispatch thunk of CodingKey.stringValue.getter();
  v18 = *(a3 + 16);
  v52 = a3;
  if (!v18)
  {

    goto LABEL_11;
  }

  v49 = v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_11:
    v49 = type metadata accessor for DecodingError();
    v47[1] = swift_allocError();
    v34 = v33;
    type metadata accessor for (CodingKey, DecodingError.Context)();
    v48 = *(v35 + 48);
    v36 = v51;
    v34[3] = a5;
    v34[4] = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    v38 = *(v9 + 16);
    v38(boxed_opaque_existential_1, a1, a5);
    v39 = v50;
    swift_beginAccess();
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v56[0] = 0xD00000000000001DLL;
    v56[1] = 0x800000018CD47220;
    v54 = a5;
    v55 = v36;
    v40 = __swift_allocate_boxed_opaque_existential_1(&v53);
    v38(v40, a1, a5);
    v41 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v53, v39);
    v43 = v42;
    __swift_destroy_boxed_opaque_existential_1(&v53);
    v28 = v56;
    MEMORY[0x18D00C9B0](v41, v43);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v49 - 8) + 104))(v34, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v28;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v19, v57);
  outlined init with take of Any(v57, &v53);
  v48 = *(v9 + 16);
  v48(v14, a1, a5);
  v22 = v50;
  swift_beginAccess();
  v23 = *(v22 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 136) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v25 = v51;
  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    *(v22 + 136) = v23;
  }

  v48(v11, v14, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v11, (v22 + 136), a5, v25);
  (*(v9 + 8))(v14, a5);
  *(v22 + 136) = v23;
  swift_endAccess();
  v28 = v22;
  v29 = v49;
  v30 = specialized __DictionaryDecoder.unbox(_:as:)(&v53);
  if (v29)
  {
    v32 = v22;
  }

  else
  {
    if (v31)
    {
      v28 = v30;
      $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v22);
      __swift_destroy_boxed_opaque_existential_1(&v53);
      return v28;
    }

    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v46 = v45;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v46 = MEMORY[0x1E69E6158];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 1) + 104))(v46, *MEMORY[0x1E69E6B08], v28);
    swift_willThrow();
    v32 = v22;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v32);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  return v28;
}

uint64_t $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 136);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    __swift_destroy_boxed_opaque_existential_1(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *(a1 + 136) = v2;
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

float _DictionaryKeyedDecodingContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a4;
  v50 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v51 = v16;
  v17 = dispatch thunk of CodingKey.stringValue.getter();
  v19 = *(a3 + 16);
  v52 = a3;
  if (!v19)
  {

    goto LABEL_10;
  }

  v49 = v5;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_10:
    v49 = type metadata accessor for DecodingError();
    v47 = swift_allocError();
    v33 = v32;
    type metadata accessor for (CodingKey, DecodingError.Context)();
    v48 = *(v34 + 48);
    v35 = v51;
    v33[3] = a5;
    v33[4] = v35;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    v37 = *(v10 + 16);
    v37(boxed_opaque_existential_1, a1, a5);
    v38 = v50;
    swift_beginAccess();
    *&v54 = 0;
    *(&v54 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v57 = 0xD00000000000001DLL;
    v58 = 0x800000018CD47220;
    v55 = a5;
    v56 = v35;
    v39 = __swift_allocate_boxed_opaque_existential_1(&v54);
    v37(v39, a1, a5);
    v40 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v54, v38);
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_1(&v54);
    MEMORY[0x18D00C9B0](v40, v42);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v49 - 8) + 104))(v33, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v6;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v20, v59);
  outlined init with take of Any(v59, &v54);
  v48 = *(v10 + 16);
  v48(v15, a1, a5);
  v23 = v50;
  swift_beginAccess();
  v24 = *(v23 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + 136) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
    *(v23 + 136) = v24;
  }

  v26 = v51;
  v28 = v24[2];
  v27 = v24[3];
  if (v28 >= v27 >> 1)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v24);
    *(v23 + 136) = v24;
  }

  v48(v12, v15, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v28, v12, (v23 + 136), a5, v26);
  (*(v10 + 8))(v15, a5);
  *(v23 + 136) = v24;
  swift_endAccess();
  v29 = v49;
  specialized __DictionaryDecoder.unbox(_:as:)(&v54);
  if (v29)
  {
    v31 = v23;
LABEL_14:
    $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v31);
    __swift_destroy_boxed_opaque_existential_1(&v54);
    return v6;
  }

  if ((v30 & 0x100000000) != 0)
  {
    v43 = type metadata accessor for DecodingError();
    swift_allocError();
    v45 = v44;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v45 = MEMORY[0x1E69E6448];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6B08], v43);
    swift_willThrow();
    v31 = v23;
    goto LABEL_14;
  }

  v6 = *&v30;
  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v23);
  __swift_destroy_boxed_opaque_existential_1(&v54);
  return v6;
}

double _DictionaryKeyedDecodingContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a4;
  v51 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  v52 = v16;
  v17 = dispatch thunk of CodingKey.stringValue.getter();
  v19 = *(a3 + 16);
  v53 = a3;
  if (!v19)
  {

    goto LABEL_10;
  }

  v50 = v5;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_10:
    v50 = type metadata accessor for DecodingError();
    v48 = swift_allocError();
    v34 = v33;
    type metadata accessor for (CodingKey, DecodingError.Context)();
    v49 = *(v35 + 48);
    v36 = v52;
    v34[3] = a5;
    v34[4] = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    v38 = *(v10 + 16);
    v38(boxed_opaque_existential_1, a1, a5);
    v39 = v51;
    swift_beginAccess();
    *&v55 = 0;
    *(&v55 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v58 = 0xD00000000000001DLL;
    v59 = 0x800000018CD47220;
    v56 = a5;
    v57 = v36;
    v40 = __swift_allocate_boxed_opaque_existential_1(&v55);
    v38(v40, a1, a5);
    v41 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v55, v39);
    v43 = v42;
    __swift_destroy_boxed_opaque_existential_1(&v55);
    MEMORY[0x18D00C9B0](v41, v43);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v50 - 8) + 104))(v34, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return v6;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v20, v60);
  outlined init with take of Any(v60, &v55);
  v49 = *(v10 + 16);
  v49(v15, a1, a5);
  v23 = v51;
  swift_beginAccess();
  v24 = *(v23 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + 136) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
    *(v23 + 136) = v24;
  }

  v26 = v52;
  v28 = v24[2];
  v27 = v24[3];
  if (v28 >= v27 >> 1)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v24);
    *(v23 + 136) = v24;
  }

  v49(v12, v15, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v28, v12, (v23 + 136), a5, v26);
  (*(v10 + 8))(v15, a5);
  *(v23 + 136) = v24;
  swift_endAccess();
  v29 = v50;
  v30 = specialized __DictionaryDecoder.unbox(_:as:)(&v55);
  if (v29)
  {
    v32 = v23;
  }

  else
  {
    if ((v31 & 1) == 0)
    {
      v6 = *&v30;
      $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v23);
      __swift_destroy_boxed_opaque_existential_1(&v55);
      return v6;
    }

    v44 = type metadata accessor for DecodingError();
    swift_allocError();
    v46 = v45;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v46 = MEMORY[0x1E69E63B0];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6B08], v44);
    swift_willThrow();
    v32 = v23;
  }

  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v32);
  __swift_destroy_boxed_opaque_existential_1(&v55);
  return v6;
}

uint64_t _DictionaryKeyedDecodingContainer.decode<A>(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v67 = a1;
  v72 = a5;
  v70 = a3;
  v65 = a9;
  v15 = type metadata accessor for Optional();
  v63 = *(v15 - 8);
  v64 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v68 = &v61 - v16;
  v17 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  v69 = a2;
  v79 = a8;
  v24 = dispatch thunk of CodingKey.stringValue.getter();
  v26 = *(a4 + 16);
  v71 = a4;
  if (!v26)
  {

    goto LABEL_11;
  }

  v27 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v25);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
LABEL_11:
    v67 = type metadata accessor for DecodingError();
    v68 = swift_allocError();
    v49 = v48;
    type metadata accessor for (CodingKey, DecodingError.Context)();
    v66 = *(v50 + 48);
    v51 = v79;
    v49[3] = a6;
    v49[4] = v51;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
    v53 = *(v17 + 16);
    v54 = v69;
    v53(boxed_opaque_existential_1, v69, a6);
    v55 = v70;
    swift_beginAccess();
    *&v73 = 0;
    *(&v73 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    v76 = 0xD00000000000001DLL;
    v77 = 0x800000018CD47220;
    v74 = a6;
    v75 = v51;
    v56 = __swift_allocate_boxed_opaque_existential_1(&v73);
    v53(v56, v54, a6);
    v57 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v73, v55);
    v59 = v58;
    __swift_destroy_boxed_opaque_existential_1(&v73);
    MEMORY[0x18D00C9B0](v57, v59);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v67 - 8) + 104))(v49, *MEMORY[0x1E69E6AF0]);
    return swift_willThrow();
  }

  v62 = a7;
  v61 = a10;
  outlined init with copy of Any(*(a4 + 56) + 32 * v27, v78);
  outlined init with take of Any(v78, &v73);
  v30 = a6;
  v31 = *(v17 + 16);
  v31(v23, v69, a6);
  v32 = v70;
  swift_beginAccess();
  v33 = *(v32 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v32 + 136) = v33;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
    *(v32 + 136) = v33;
  }

  v36 = v33[2];
  v35 = v33[3];
  if (v36 >= v35 >> 1)
  {
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v33);
    *(v32 + 136) = v33;
  }

  v31(v20, v23, v30);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v36, v20, (v32 + 136), v30, v79);
  (*(v17 + 8))(v23, v30);
  *(v32 + 136) = v33;
  swift_endAccess();
  v37 = v67;
  v38 = v68;
  v39 = v62;
  v40 = v66;
  __DictionaryDecoder.unbox<A>(_:as:)(&v73, v67, v62, v61, v68);
  if (v40)
  {
    goto LABEL_13;
  }

  v41 = *(v39 - 8);
  if ((*(v41 + 48))(v38, 1, v39) != 1)
  {
    (*(v41 + 32))(v65, v38, v39);
LABEL_13:
    v47 = v32;
    goto LABEL_14;
  }

  (*(v63 + 8))(v38, v64);
  v42 = type metadata accessor for DecodingError();
  v68 = swift_allocError();
  v43 = v37;
  v45 = v44;
  type metadata accessor for (@thick Any.Type, DecodingError.Context)();
  *v45 = v43;
  *&v78[0] = 0;
  *(&v78[0] + 1) = 0xE000000000000000;

  _StringGuts.grow(_:)(41);

  *&v78[0] = 0x6465746365707845;
  *(&v78[0] + 1) = 0xE900000000000020;
  v46 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v46);

  MEMORY[0x18D00C9B0](0xD00000000000001ELL, 0x800000018CD47240);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v42 - 8) + 104))(v45, *MEMORY[0x1E69E6B08], v42);
  swift_willThrow();
  v47 = v32;
LABEL_14:
  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v47);
  return __swift_destroy_boxed_opaque_existential_1(&v73);
}

uint64_t _DictionaryKeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v55 = a4;
  v61 = a7;
  v58 = a6;
  v54 = a8;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v52 - v17;
  v19 = *(v12 + 16);
  v59 = v20;
  v57 = v19;
  (v19)(v52 - v17, v16);
  swift_beginAccess();
  v21 = *(a2 + 136);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 136) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
    *(a2 + 136) = v21;
  }

  v60 = a9;
  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21);
    *(a2 + 136) = v21;
  }

  v57(v14, v18, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v24, v14, (a2 + 136), a5, v61);
  (*(v12 + 8))(v18, a5);
  *(a2 + 136) = v21;
  swift_endAccess();
  v25 = dispatch thunk of CodingKey.stringValue.getter();
  v27 = a3;
  if (!*(a3 + 16))
  {

    goto LABEL_10;
  }

  v28 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v26);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
LABEL_10:

    v53 = type metadata accessor for DecodingError();
    v56 = swift_allocError();
    v38 = v37;
    type metadata accessor for (CodingKey, DecodingError.Context)();
    v52[2] = *(v39 + 48);
    v40 = v61;
    v38[3] = a5;
    v38[4] = v40;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
    v42 = v59;
    v54 = a2;
    v43 = v57;
    v57(boxed_opaque_existential_1, v59, a5);
    *&v62 = 0;
    *(&v62 + 1) = 0xE000000000000000;
    v52[1] = v27;

    _StringGuts.grow(_:)(42);

    *&v65 = 0x6720746F6E6E6143;
    *(&v65 + 1) = 0xEB00000000207465;
    type metadata accessor for KeyedDecodingContainer();
    v44 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v44);

    MEMORY[0x18D00C9B0](0xD00000000000001BLL, 0x800000018CD47200);
    v63 = a5;
    v64 = v40;
    v45 = __swift_allocate_boxed_opaque_existential_1(&v62);
    v43(v45, v42, a5);
    a2 = v54;
    v46 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v62, v54);
    v48 = v47;
    __swift_destroy_boxed_opaque_existential_1(&v62);
    MEMORY[0x18D00C9B0](v46, v48);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v53 - 8) + 104))(v38, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(a2);
  }

  outlined init with copy of Any(*(v27 + 56) + 32 * v28, &v65);
  outlined init with take of Any(&v65, &v62);
  outlined init with copy of Any(&v62, &v65);
  type metadata accessor for [String : Any](0, &lazy cache variable for type metadata for [String : Any], MEMORY[0x1E69E5E28]);
  if (swift_dynamicCast())
  {
    v31 = specialized _DictionaryKeyedDecodingContainer.init(referencing:wrapping:)(a2, v67);
    v33 = v32;
    v35 = v34;

    *&v65 = v31;
    *(&v65 + 1) = v33;
    v66 = v35;
    type metadata accessor for _DictionaryKeyedDecodingContainer();
    swift_getWitnessTable();
    KeyedDecodingContainer.init<A>(_:)();
    __swift_destroy_boxed_opaque_existential_1(&v62);
    return $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(a2);
  }

  v49 = type metadata accessor for DecodingError();
  swift_allocError();
  v51 = v50;
  type metadata accessor for (@thick Any.Type, DecodingError.Context)();
  *v51 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v49 - 8) + 104))(v51, *MEMORY[0x1E69E6AF8], v49);
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(&v62);
  return $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(a2);
}

uint64_t _DictionaryKeyedDecodingContainer.nestedUnkeyedContainer(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v51 = a4;
  v55 = a6;
  v56 = a3;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v49 - v15;
  v53 = *(v10 + 16);
  v54 = v17;
  v53(v49 - v15, v14);
  swift_beginAccess();
  v18 = *(a2 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 136) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
    *(a2 + 136) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
    *(a2 + 136) = v18;
  }

  (v53)(v12, v16, a5);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v21, v12, (a2 + 136), a5, v55);
  (*(v10 + 8))(v16, a5);
  *(a2 + 136) = v18;
  swift_endAccess();
  v22 = dispatch thunk of CodingKey.stringValue.getter();
  v24 = v56;
  if (!*(v56 + 16))
  {

    goto LABEL_10;
  }

  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v23);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_10:
    v50 = type metadata accessor for DecodingError();
    v52 = swift_allocError();
    v34 = v33;
    type metadata accessor for (CodingKey, DecodingError.Context)();
    v49[1] = *(v35 + 48);
    v36 = v55;
    v34[3] = a5;
    v34[4] = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    v38 = a2;
    v40 = v53;
    v39 = v54;
    (v53)(boxed_opaque_existential_1, v54, a5);
    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(64);
    v60[0] = v57;
    MEMORY[0x18D00C9B0](0xD00000000000003ELL, 0x800000018CD47170);
    v58 = a5;
    v59 = v36;
    v41 = __swift_allocate_boxed_opaque_existential_1(&v57);
    v42 = v39;
    a2 = v38;
    v40(v41, v42, a5);
    v43 = _DictionaryKeyedDecodingContainer._errorDescription(of:)(&v57, v38);
    v45 = v44;
    __swift_destroy_boxed_opaque_existential_1(&v57);
    MEMORY[0x18D00C9B0](v43, v45);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v50 - 8) + 104))(v34, *MEMORY[0x1E69E6AF0]);
    swift_willThrow();
    return $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(a2);
  }

  v28 = a7;
  outlined init with copy of Any(*(v24 + 56) + 32 * v25, v60);
  outlined init with take of Any(v60, &v57);
  outlined init with copy of Any(&v57, v60);
  _sypSgMaTm_0(0, &lazy cache variable for type metadata for [Any], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
  if (swift_dynamicCast())
  {
    v29 = v61;
    v30 = *(a2 + 136);
    v28[3] = &unk_1EFFB8488;
    v28[4] = lazy protocol witness table accessor for type _JSONUnkeyedDecodingContainer and conformance _JSONUnkeyedDecodingContainer();
    v31 = swift_allocObject();
    *v28 = v31;
    v31[2] = a2;
    v31[3] = v29;
    v31[4] = v30;
    v31[5] = 0;

    __swift_destroy_boxed_opaque_existential_1(&v57);
    return $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(a2);
  }

  v46 = type metadata accessor for DecodingError();
  swift_allocError();
  v48 = v47;
  type metadata accessor for (@thick Any.Type, DecodingError.Context)();
  *v48 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v46 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v46);
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(&v57);
  return $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(a2);
}

uint64_t _DictionaryKeyedDecodingContainer._superDecoder(forKey:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v40 = a5;
  v41 = a6;
  v39 = a4;
  v37 = a7;
  outlined init with copy of _Benchmark(a1, &v46);
  swift_beginAccess();
  v10 = *(a2 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 136) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
    *(a2 + 136) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  v38 = a3;
  if (v13 >= v12 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    *(a2 + 136) = v10;
  }

  v14 = *(&v47 + 1);
  v15 = v48;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v13, v19, (a2 + 136), v14, v15);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  *(a2 + 136) = v10;
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = dispatch thunk of CodingKey.stringValue.getter();
  v23 = v38;
  if (*(v38 + 16))
  {
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22);
    v26 = v25;

    if (v26)
    {
      outlined init with copy of Any(*(v23 + 56) + 32 * v24, &v46);
      outlined init with take of Any(&v46, &v44);
      goto LABEL_11;
    }
  }

  else
  {
  }

  v46 = 0u;
  v47 = 0u;
  v27 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v45 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull);
  *&v44 = v27;
  if (*(&v47 + 1))
  {
    outlined destroy of Any?(&v46);
  }

LABEL_11:
  outlined init with copy of Any(&v44, v43);
  v28 = *(a2 + 136);
  v29 = *(a2 + 72);
  v30 = *(a2 + 104);
  v50 = *(a2 + 88);
  v51 = v30;
  v52 = *(a2 + 120);
  v31 = *(a2 + 40);
  v46 = *(a2 + 24);
  v47 = v31;
  v48 = *(a2 + 56);
  v49 = v29;
  v32 = type metadata accessor for __DictionaryDecoder();
  swift_allocObject();

  outlined init with copy of DictionaryDecoder._Options(&v46, &v42);
  v33 = __DictionaryDecoder.init(referencing:at:options:)(v43, v28, &v46);
  v34 = v37;
  v37[3] = v32;
  v34[4] = lazy protocol witness table accessor for type __DictionaryEncoder and conformance __DictionaryEncoder(&lazy protocol witness table cache variable for type __DictionaryDecoder and conformance __DictionaryDecoder, type metadata accessor for __DictionaryDecoder);
  *v34 = v33;
  __swift_destroy_boxed_opaque_existential_1(&v44);
  $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _DictionaryKeyedDecodingContainer.superDecoder()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v14[3] = &unk_1EFFB8510;
  v14[4] = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v12 = swift_allocObject();
  v14[0] = v12;
  *(v12 + 16) = 0x7265707573;
  *(v12 + 24) = 0xE500000000000000;
  *(v12 + 32) = 0;
  *(v12 + 40) = 1;
  return _DictionaryKeyedDecodingContainer._superDecoder(forKey:)(v14, a1, a2, a3, a4, a5, a6);
}

uint64_t _DictionaryKeyedDecodingContainer.superDecoder(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v16[3] = a5;
  v16[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  return _DictionaryKeyedDecodingContainer._superDecoder(forKey:)(v16, a2, a3, a4, a5, a6, a7);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for KeyedDecodingContainerProtocol.decodeNil(forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, _DictionaryKeyedDecodingContainer.decode(_:forKey:)) & 1;
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, _DictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, _DictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, _DictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, _DictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, _DictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, _DictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, _DictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, _DictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, _DictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, _DictionaryKeyedDecodingContainer.decode(_:forKey:));
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>()
{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)();
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void, void, void, void))
{
  return a4(a1, *v4, v4[1], v4[2], *(a2 + 16), *(a2 + 24));
}

{
  return a4(a1, *v4, v4[1], v4[2], *(a2 + 16), *(a2 + 24));
}

{
  return a4(a1, *v4, v4[1], v4[2], *(a2 + 16), *(a2 + 24));
}

{
  return a4(a1, *v4, v4[1], v4[2], *(a2 + 16), *(a2 + 24));
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>()
{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7100]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7118]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7120]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7128]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7140]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7138]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7148]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7150]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7160]);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  return a4() & 0x1FF;
}

{
  return a4() & 0x1FFFF;
}

{
  v4 = a4();
  return v4 | ((HIDWORD(v4) & 1) << 32);
}

{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

void _JSONUnkeyedDecodingContainer.decodeNil()()
{
  v1 = v0[1];
  v2 = v0[3];
  if (v2 >= *(v1 + 16))
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    _sypSgMaTm_0(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    *v5 = v6;
    v7 = *v0;
    swift_beginAccess();
    v8 = *(v7 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v14 = 0xE600000000000000;
    v15 = v2;

    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v10);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v11 = swift_allocObject();
    *(inited + 32) = v11;
    *(v11 + 16) = 0x207865646E49;
    *(v11 + 24) = 0xE600000000000000;
    *(v11 + 32) = v2;
    *(v11 + 40) = 0;
    v13 = v8;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B08], v3);
    swift_willThrow();
  }

  else if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of Any(v1 + 32 * v2 + 32, v12);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull);
    if (swift_dynamicCast())
    {

      v0[3] = v2 + 1;
    }
  }
}

uint64_t _JSONUnkeyedDecodingContainer.decode<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a3;
  v9 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v51 - v12;
  v14 = v4[1];
  v15 = v4[3];
  if (v15 >= *(v14 + 16))
  {
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v30 = v29;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v30 = a1;
    v31 = *v4;
    swift_beginAccess();
    v32 = *(v31 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v63 = 0x207865646E49;
    v64 = 0xE600000000000000;
    v65 = v15;

    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v34);

    v35 = v63;
    v36 = v64;
    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v37 = swift_allocObject();
    *(inited + 32) = v37;
    *(v37 + 16) = v35;
    *(v37 + 24) = v36;
    *(v37 + 32) = v15;
    *(v37 + 40) = 0;
    v63 = v32;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6B08], v28);
    return swift_willThrow();
  }

  v56 = v5;
  v52 = v11;
  v53 = a4;
  v58 = a1;
  v54 = v10;
  v55 = v4;
  v16 = *v4;
  *&v60 = 0x207865646E49;
  *(&v60 + 1) = 0xE600000000000000;
  v63 = v15;
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v17);

  v57 = *(&v60 + 1);
  v18 = v60;
  swift_beginAccess();
  v19 = *(v16 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v16 + 136) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
    *(v16 + 136) = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
  }

  v61 = &unk_1EFFB8510;
  v51 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v62 = v51;
  v23 = swift_allocObject();
  *&v60 = v23;
  v24 = v57;
  *(v23 + 16) = v18;
  *(v23 + 24) = v24;
  *(v23 + 32) = v15;
  *(v23 + 40) = 0;
  v19[2] = v22 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v60, &v19[5 * v22 + 4]);
  *(v16 + 136) = v19;
  result = swift_endAccess();
  if (v15 < 0)
  {
    __break(1u);
  }

  else if (v15 < *(v14 + 16))
  {
    outlined init with copy of Any(v14 + 32 * v15 + 32, &v60);
    v26 = v58;
    v27 = v56;
    __DictionaryDecoder.unbox<A>(_:as:)(&v60, v58, a2, v59, v13);
    if (v27)
    {
      __swift_destroy_boxed_opaque_existential_1(&v60);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v60);
      v38 = *(a2 - 8);
      if ((*(v38 + 48))(v13, 1, a2) != 1)
      {
        (*(v38 + 32))(v53, v13, a2);
        v50 = v55;
        v55[3] = v15 + 1;
        return $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v50);
      }

      (*(v52 + 8))(v13, v54);
      v39 = type metadata accessor for DecodingError();
      swift_allocError();
      v41 = v40;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      v59 = *(v42 + 48);
      *v41 = v26;
      v43 = *(v16 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v44 = swift_initStackObject();
      *(v44 + 16) = xmmword_18CD63400;
      *&v60 = 0x207865646E49;
      *(&v60 + 1) = 0xE600000000000000;
      v63 = v15;

      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v45);

      v46 = v60;
      v47 = v51;
      *(v44 + 56) = &unk_1EFFB8510;
      *(v44 + 64) = v47;
      v48 = swift_allocObject();
      *(v44 + 32) = v48;
      *(v48 + 16) = v46;
      *(v48 + 32) = v15;
      *(v48 + 40) = 0;
      *&v60 = v43;
      specialized Array.append<A>(contentsOf:)(v44);
      *&v60 = 0;
      *(&v60 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      *&v60 = 0x6465746365707845;
      *(&v60 + 1) = 0xE900000000000020;
      v49 = _typeName(_:qualified:)();
      MEMORY[0x18D00C9B0](v49);

      MEMORY[0x18D00C9B0](0xD000000000000018, 0x800000018CD46EB0);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6B08], v39);
      swift_willThrow();
    }

    v50 = v55;
    return $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v50);
  }

  __break(1u);
  return result;
}

uint64_t _JSONUnkeyedDecodingContainer.nestedContainer<A>(keyedBy:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[3];
  *&v29 = 0x207865646E49;
  *(&v29 + 1) = 0xE600000000000000;
  v28[0] = v3;
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v4);

  swift_beginAccess();
  v5 = *(v2 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 136) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
    *(v2 + 136) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
  }

  v30 = &unk_1EFFB8510;
  v31 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v9 = swift_allocObject();
  *&v29 = v9;
  *(v9 + 16) = 0x207865646E49;
  *(v9 + 24) = 0xE600000000000000;
  *(v9 + 32) = v3;
  *(v9 + 40) = 0;
  v5[2] = v8 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v29, &v5[5 * v8 + 4]);
  *(v2 + 136) = v5;
  result = swift_endAccess();
  v11 = v1[1];
  if (v3 >= *(v11 + 16))
  {
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v16;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v17 = type metadata accessor for KeyedDecodingContainer();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    swift_willThrow();
    return $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v1);
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    outlined init with copy of Any(v11 + 32 * v3 + 32, &v29);
    outlined init with copy of Any(&v29, v28);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull);
    if (swift_dynamicCast())
    {

      v12 = type metadata accessor for DecodingError();
      swift_allocError();
      v14 = v13;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v14 = type metadata accessor for KeyedDecodingContainer();

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E69E6B08], v12);
    }

    else
    {
      outlined init with copy of Any(&v29, v28);
      type metadata accessor for [String : Any](0, &lazy cache variable for type metadata for [String : Any], MEMORY[0x1E69E5E28]);
      if (swift_dynamicCast())
      {
        v18 = v32;
        v1[3] = v3 + 1;

        v20 = specialized _DictionaryKeyedDecodingContainer.init(referencing:wrapping:)(v19, v18);
        v22 = v21;
        v24 = v23;

        v28[0] = v20;
        v28[1] = v22;
        v28[2] = v24;
        type metadata accessor for _DictionaryKeyedDecodingContainer();
        swift_getWitnessTable();
        KeyedDecodingContainer.init<A>(_:)();
LABEL_14:
        __swift_destroy_boxed_opaque_existential_1(&v29);
        return $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v1);
      }

      v25 = type metadata accessor for DecodingError();
      swift_allocError();
      v27 = v26;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v27 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    }

    swift_willThrow();
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t _JSONUnkeyedDecodingContainer.nestedUnkeyedContainer()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v3 = *v1;
  v4 = v1[3];
  *&v27 = 0x207865646E49;
  *(&v27 + 1) = 0xE600000000000000;
  v26[0] = v4;
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v5);

  swift_beginAccess();
  v6 = *(v3 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 136) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    *(v3 + 136) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v28 = &unk_1EFFB8510;
  v29 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v10 = swift_allocObject();
  *&v27 = v10;
  *(v10 + 16) = 0x207865646E49;
  *(v10 + 24) = 0xE600000000000000;
  *(v10 + 32) = v4;
  *(v10 + 40) = 0;
  v6[2] = v9 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v27, &v6[5 * v9 + 4]);
  *(v3 + 136) = v6;
  result = swift_endAccess();
  v12 = v2[1];
  if (v4 >= *(v12 + 16))
  {
    v18 = type metadata accessor for DecodingError();
    swift_allocError();
    v20 = v19;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v20 = type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for UnkeyedDecodingContainer);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6B08], v18);
    swift_willThrow();
    return $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    outlined init with copy of Any(v12 + 32 * v4 + 32, &v27);
    outlined init with copy of Any(&v27, v26);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull);
    v13 = MEMORY[0x1E69E7CA0];
    if (swift_dynamicCast())
    {

      v14 = type metadata accessor for DecodingError();
      swift_allocError();
      v16 = v15;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v16 = type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for UnkeyedDecodingContainer);

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v17 = MEMORY[0x1E69E6B08];
    }

    else
    {
      outlined init with copy of Any(&v27, v26);
      _sypSgMaTm_0(0, &lazy cache variable for type metadata for [Any], v13 + 8, MEMORY[0x1E69E62F8]);
      if (swift_dynamicCast())
      {
        v21 = v30;
        v2[3] = v4 + 1;
        v22 = *(v3 + 136);
        a1[3] = &unk_1EFFB8488;
        a1[4] = lazy protocol witness table accessor for type _JSONUnkeyedDecodingContainer and conformance _JSONUnkeyedDecodingContainer();
        v23 = swift_allocObject();
        *a1 = v23;
        v23[2] = v3;
        v23[3] = v21;
        v23[4] = v22;
        v23[5] = 0;

LABEL_14:
        __swift_destroy_boxed_opaque_existential_1(&v27);
        return $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
      }

      v14 = type metadata accessor for DecodingError();
      swift_allocError();
      v16 = v24;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v16 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v17 = MEMORY[0x1E69E6AF8];
    }

    (*(*(v14 - 8) + 104))(v16, *v17, v14);
    swift_willThrow();
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t _JSONUnkeyedDecodingContainer.superDecoder()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[3];
  *&v24 = 0x207865646E49;
  *(&v24 + 1) = 0xE600000000000000;
  v27[0] = v5;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v4 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v4 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v25 = &unk_1EFFB8510;
  v26 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v11 = swift_allocObject();
  *&v24 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v5;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v24, &v7[5 * v10 + 4]);
  *(v4 + 136) = v7;
  result = swift_endAccess();
  v13 = v2[1];
  if (v5 >= *(v13 + 16))
  {
    v21 = type metadata accessor for DecodingError();
    swift_allocError();
    v23 = v22;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v23 = type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Decoder);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6B08], v21);
    swift_willThrow();
    return $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
  }

  else if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v2[3] = v5 + 1;
    outlined init with copy of Any(v13 + 32 * v5 + 32, v27);
    v14 = *(v4 + 24);
    v15 = *(v4 + 40);
    v16 = *(v4 + 56);
    v17 = *(v4 + 72);
    v18 = *(v4 + 104);
    v28[4] = *(v4 + 88);
    v28[5] = v18;
    v28[6] = *(v4 + 120);
    v28[2] = v16;
    v28[3] = v17;
    v28[0] = v14;
    v28[1] = v15;
    v19 = type metadata accessor for __DictionaryDecoder();
    swift_allocObject();

    outlined init with copy of DictionaryDecoder._Options(v28, &v24);
    v20 = __DictionaryDecoder.init(referencing:at:options:)(v27, v7, v28);
    a1[3] = v19;
    a1[4] = lazy protocol witness table accessor for type __DictionaryEncoder and conformance __DictionaryEncoder(&lazy protocol witness table cache variable for type __DictionaryDecoder and conformance __DictionaryDecoder, type metadata accessor for __DictionaryDecoder);
    *a1 = v20;
    return $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
  }

  return result;
}

uint64_t protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance _JSONUnkeyedDecodingContainer()
{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)() & 1;
}

{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  return UnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  return UnkeyedDecodingContainer.decode(_:)();
}

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer()
{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer(uint64_t a1, uint64_t a2)
{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FA8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FB0]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FB8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FC0]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FD0]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FC8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FD8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FE0]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FE8]);
}

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  return a3() & 0x1FF;
}

{
  return a3() & 0x1FFFF;
}

{
  v3 = a3();
  return v3 | ((HIDWORD(v3) & 1) << 32);
}

{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t __DictionaryDecoder.expectNonNull<A>(_:)(uint64_t a1)
{
  result = __DictionaryDecoder.decodeNil()();
  if (result)
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v5 = a1;
    swift_beginAccess();

    _StringGuts.grow(_:)(41);

    v6 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v6);

    MEMORY[0x18D00C9B0](0xD00000000000001ELL, 0x800000018CD467D0);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B08], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t __DictionaryDecoder.decodeNil()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    outlined init with copy of Any(v1 + 32 * v2, v6);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull);
    result = swift_dynamicCast();
    if (result)
    {
      v4 = result;

      return v4;
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t __DictionaryDecoder.decode<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18[-v11 - 8];
  result = __DictionaryDecoder.expectNonNull<A>(_:)(a1);
  if (!v5)
  {
    swift_beginAccess();
    v14 = *(v4 + 16);
    v15 = *(v14 + 16);
    if (v15)
    {
      outlined init with copy of Any(v14 + 32 * v15, v18);
      __DictionaryDecoder.unbox<A>(_:as:)(v18, a1, a2, a3, v12);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v16 = *(a2 - 8);
      if ((*(v16 + 48))(v12, 1, a2) != 1)
      {
        return (*(v16 + 32))(a4, v12, a2);
      }

      __break(1u);
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance __DictionaryDecoder()
{
  return specialized __DictionaryDecoder.decode(_:)() & 1;
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return SingleValueDecodingContainer.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return SingleValueDecodingContainer.decode(_:)();
}

uint64_t lazy protocol witness table accessor for type __DictionaryEncoder and conformance __DictionaryEncoder(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __DictionaryDecoder.unbox(_:as:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  _s10Foundation3URLVSgMaTm_0(0, a2, a3);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v23 - v12;
  outlined init with copy of Any(a1, v24);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull);
  if (swift_dynamicCast())
  {

    v14 = a4(0);
    return (*(*(v14 - 8) + 56))(a5, 1, 1, v14);
  }

  else
  {
    v23[0] = v5;
    outlined init with copy of Any(a1, v24);
    v16 = a4(0);
    v17 = swift_dynamicCast();
    v18 = *(*(v16 - 8) + 56);
    if (v17)
    {
      v19 = *(v16 - 8);
      v18(v13, 0, 1, v16);
      (*(v19 + 32))(a5, v13, v16);
      return (v18)(a5, 0, 1, v16);
    }

    else
    {
      v18(v13, 1, 1, v16);
      _s10Foundation3URLVSgWOhTm_0(v13, a2, a3);
      v20 = type metadata accessor for DecodingError();
      swift_allocError();
      v22 = v21;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v22 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
      swift_beginAccess();

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      return swift_willThrow();
    }
  }
}

uint64_t __DictionaryDecoder.unbox(_:as:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v8);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull);
  v3 = swift_dynamicCast();
  v4 = v3;
  if (v3)
  {

    result = 0;
  }

  else
  {
    outlined init with copy of Any(a1, v8);
    type metadata accessor for NSDecimal(0);
    if (swift_dynamicCast())
    {
      result = v7;
    }

    else
    {
      result = specialized __DictionaryDecoder.unbox(_:as:)(a1);
      if (v1)
      {
        return result;
      }

      if (v6)
      {
        __break(1u);
        return result;
      }

      result = MEMORY[0x18D00E3C0](*&result);
    }
  }

  v8[0] = v4;
  return result;
}

void specialized __DictionaryDecoder.unbox<A>(_:as:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = v5;
  v7 = v4;
  outlined init with copy of Any(a1, &v58);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull);
  v12 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {

    *a4 = 0u;
    a4[1] = 0u;
    return;
  }

  outlined init with copy of Any(a1, &v58);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSDictionary);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v44 = type metadata accessor for DecodingError();
    swift_allocError();
    v46 = v45;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v46 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
    swift_willThrow();
    return;
  }

  v47 = a4;
  v13 = (*(a3 + 8))(a2, a3);
  v50 = v14;
  v51 = v13;
  v48 = v54;
  v62 = NSDictionary.makeIterator()();
  NSDictionary.Iterator.next()();
  v58 = v54;
  v59 = v55;
  v60 = v56;
  v61 = v57;
  if (!*(&v55 + 1))
  {
    v15 = MEMORY[0x1E69E7CC8];
LABEL_39:

    *&v58 = v15;
    type metadata accessor for [String : Any](0, &lazy cache variable for type metadata for [String : Any], MEMORY[0x1E69E5E28]);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *v47 = 0u;
      v47[1] = 0u;
    }

    return;
  }

  v15 = MEMORY[0x1E69E7CC8];
  v49 = v7;
  while (1)
  {
    outlined init with take of Any(&v60, v53);
    outlined init with take of Any(&v58, &v54);
    swift_dynamicCast();
    v16 = v52[0];
    swift_beginAccess();
    v17 = *(v7 + 136);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 136) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
      *(v7 + 136) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
    }

    *(&v55 + 1) = &unk_1EFFB8510;
    *&v56 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v21 = swift_allocObject();
    *&v54 = v21;
    *(v21 + 16) = v16;
    *(v21 + 32) = 0;
    *(v21 + 40) = 1;
    v17[2] = v20 + 1;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v54, &v17[5 * v20 + 4]);
    *(v7 + 136) = v17;
    swift_endAccess();
    v22 = v6;
    __DictionaryDecoder.unbox_(_:as:)(&v54, v53, v51, v50);
    if (v6)
    {

      $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v7);

      __swift_destroy_boxed_opaque_existential_1(v53);
      return;
    }

    if (*(&v55 + 1))
    {
      v23 = v12;
      outlined init with take of Any(&v54, v52);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v16, *(&v16 + 1));
      v27 = v15[2];
      v28 = (v25 & 1) == 0;
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        goto LABEL_45;
      }

      v30 = v25;
      if (v15[3] < v29)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, v24);
        v31 = specialized __RawDictionaryStorage.find<A>(_:)(v16, *(&v16 + 1));
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_47;
        }

        v26 = v31;
        if ((v30 & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_23:

        v36 = (v15[7] + 32 * v26);
        __swift_destroy_boxed_opaque_existential_1(v36);
        outlined init with take of Any(v52, v36);
LABEL_29:
        v12 = v23;
        v6 = v22;
        v7 = v49;
        goto LABEL_30;
      }

      if (v24)
      {
        if (v25)
        {
          goto LABEL_23;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v30)
        {
          goto LABEL_23;
        }
      }

LABEL_27:
      v15[(v26 >> 6) + 8] |= 1 << v26;
      *(v15[6] + 16 * v26) = v16;
      outlined init with take of Any(v52, (v15[7] + 32 * v26));
      v37 = v15[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_46;
      }

      v15[2] = v39;
      goto LABEL_29;
    }

    outlined destroy of Any?(&v54);
    v33 = specialized __RawDictionaryStorage.find<A>(_:)(v16, *(&v16 + 1));
    v35 = v34;

    if (v35)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }

      outlined init with take of Any((v15[7] + 32 * v33), v52);
      specialized _NativeDictionary._delete(at:)(v33, v15);
    }

    else
    {
      memset(v52, 0, sizeof(v52));
    }

    outlined destroy of Any?(v52);
LABEL_30:
    swift_beginAccess();
    v40 = *(v7 + 136);
    if (!v40[2])
    {
      break;
    }

    v41 = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 136) = v40;
    if (v41)
    {
      v42 = v40[2];
      if (!v42)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v40 = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
      *(v7 + 136) = v40;
      v42 = v40[2];
      if (!v42)
      {
        goto LABEL_44;
      }
    }

    v43 = v42 - 1;
    __swift_destroy_boxed_opaque_existential_1(&v40[5 * v42 - 1]);
    v40[2] = v43;
    *(v7 + 136) = v40;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v53);
    NSDictionary.Iterator.next()();
    v58 = v54;
    v59 = v55;
    v60 = v56;
    v61 = v57;
    if (!*(&v55 + 1))
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void __DictionaryDecoder.unbox_(_:as:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v55 = a3;
  v56 = a4;
  _s10Foundation3URLVSgMaTm_0(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v54 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation3URLVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v54 - v15;
  v17 = type metadata accessor for Date();
  if (v17 == a2 || type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSDate) == a2)
  {
    v22 = v63;
    __DictionaryDecoder.unbox(_:as:)(a1, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E6969530], v16);
    if (!v22)
    {
      v23 = *(v17 - 8);
      if ((*(v23 + 48))(v16, 1, v17) == 1)
      {
        _s10Foundation3URLVSgWOhTm_0(v16, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
        v24 = v56;
        *v56 = 0u;
        v24[1] = 0u;
      }

      else
      {
        v29 = v56;
        *(v56 + 3) = v17;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
        (*(v23 + 32))(boxed_opaque_existential_1, v16, v17);
      }
    }
  }

  else
  {
    v18 = MEMORY[0x1E6969080];
    if (a2 == MEMORY[0x1E6969080] || type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSData) == a2)
    {
      v25 = v63;
      v26 = specialized __DictionaryDecoder.unbox(_:as:)(a1);
      if (v25)
      {
        return;
      }

      if (v27 >> 60 != 15)
      {
        v35 = v56;
        *(v56 + 3) = v18;
        *v35 = v26;
        v35[1] = v27;
        return;
      }

      goto LABEL_17;
    }

    if (v10 != a2 && type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSURL) != a2)
    {
      type metadata accessor for NSDecimal(0);
      v20 = v19;
      if (v19 != a2 && type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSDecimalNumber) != a2)
      {
        v21 = swift_conformsToProtocol2();
        if (v21 && a2)
        {
          specialized __DictionaryDecoder.unbox<A>(_:as:)(a1, a2, v21, v56);
        }

        else
        {
          outlined init with copy of Any(a1, v60);
          swift_beginAccess();
          outlined init with copy of Any(v60, &v57);
          v44 = *(v4 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v4 + 16) = v44;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 2) + 1, 1, v44);
            *(v4 + 16) = v44;
          }

          v46 = v63;
          v47 = v55;
          v49 = *(v44 + 2);
          v48 = *(v44 + 3);
          if (v49 >= v48 >> 1)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v44);
            *(v4 + 16) = v44;
          }

          __swift_destroy_boxed_opaque_existential_1(v60);
          *(v44 + 2) = v49 + 1;
          outlined init with take of Any(&v57, &v44[32 * v49 + 32]);
          *(v4 + 16) = v44;
          swift_endAccess();
          v58 = type metadata accessor for __DictionaryDecoder();
          v59 = lazy protocol witness table accessor for type __DictionaryEncoder and conformance __DictionaryEncoder(&lazy protocol witness table cache variable for type __DictionaryDecoder and conformance __DictionaryDecoder, type metadata accessor for __DictionaryDecoder);
          *&v57 = v4;
          v61 = a2;
          v62 = v47;
          __swift_allocate_boxed_opaque_existential_1(v60);

          dispatch thunk of Decodable.init(from:)();
          if (v46)
          {
            __swift_deallocate_boxed_opaque_existential_0(v60);
          }

          else
          {
            v50 = v61;
            v51 = __swift_project_boxed_opaque_existential_1(v60, v61);
            v52 = v56;
            *(v56 + 3) = v50;
            v53 = __swift_allocate_boxed_opaque_existential_1(v52);
            (*(*(v50 - 8) + 16))(v53, v51, v50);
            __swift_destroy_boxed_opaque_existential_1(v60);
          }

          swift_beginAccess();
          _DictionaryDecodingStorage.popContainer()();
          swift_endAccess();
        }

        return;
      }

      v36 = v63;
      v37 = __DictionaryDecoder.unbox(_:as:)(a1);
      if (v36)
      {
        return;
      }

      if ((v39 & 0x100000000) == 0)
      {
        v40 = v56;
        *(v56 + 3) = v20;
        *v40 = v37;
        *(v40 + 1) = v38;
        *(v40 + 4) = v39;
        return;
      }

LABEL_17:
      v28 = v56;
      *v56 = 0u;
      v28[1] = 0u;
      return;
    }

    v31 = v63;
    __DictionaryDecoder.unbox(_:as:)(a1, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0], v9);
    if (!v31)
    {
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {
        _s10Foundation3URLVSgWOhTm_0(v9, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
        v32 = type metadata accessor for DecodingError();
        swift_allocError();
        v34 = v33;
        swift_beginAccess();

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6B00], v32);
        swift_willThrow();
      }

      else
      {
        v41 = *(v11 + 32);
        v41(v13, v9, v10);
        v42 = v56;
        *(v56 + 3) = v10;
        v43 = __swift_allocate_boxed_opaque_existential_1(v42);
        v41(v43, v13, v10);
      }
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance _JSONKey@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance _JSONKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = dispatch thunk of CustomStringConvertible.description.getter();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _JSONKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _JSONKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a8@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v16 = v9;
  v12 = a6;
  v17 = a5 >> 14;
  v13 = a6 >> 14;
  if (a1 && v17 != v13)
  {
    v8 = a4;
    v15 = MEMORY[0x1E69E7CC0];
    v10 = a5;
    do
    {
      v18 = v10 >> 14;
      if (v10 >> 14 == v13)
      {
        break;
      }

      v40 = a1;
      v47 = v16;
      v42 = v15;
      v15 = a7;
      while (1)
      {
        while (1)
        {
          v46[0] = Substring.subscript.getter();
          v46[1] = v19;
          v20 = v47;
          v21 = a3(v46);
          v47 = v20;
          if (v20)
          {

            return v15;
          }

          v22 = v21;

          if (v22)
          {
            break;
          }

          v15 = a7;
          v18 = Substring.index(after:)() >> 14;
          if (v18 == v13)
          {
            v15 = v42;
            goto LABEL_28;
          }
        }

        result = v10;
        if (v10 >> 14 != v18 || (a2 & 1) == 0)
        {
          break;
        }

        v15 = a7;
        v10 = Substring.index(after:)();
        v18 = v10 >> 14;
        if (v10 >> 14 == v13)
        {
          v15 = v42;
          goto LABEL_28;
        }
      }

      if (v18 < v10 >> 14)
      {
        __break(1u);
        return result;
      }

      v43 = Substring.subscript.getter();
      v38 = v25;
      v39 = v24;
      v37 = v26;
      v15 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
      }

      v28 = *(v15 + 2);
      v27 = *(v15 + 3);
      if (v28 >= v27 >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v15);
      }

      *(v15 + 2) = v28 + 1;
      v29 = &v15[32 * v28];
      *(v29 + 4) = v43;
      *(v29 + 5) = v39;
      *(v29 + 6) = v38;
      *(v29 + 7) = v37;
      v10 = Substring.index(after:)();
      a1 = v40;
      v16 = v47;
    }

    while (*(v15 + 2) != v40);
LABEL_28:
    if (v10 >> 14 == v13 && (a2 & 1) != 0)
    {

      return v15;
    }

    if (v13 >= v10 >> 14)
    {
      v8 = Substring.subscript.getter();
      v10 = v33;
      v12 = v34;
      v13 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
LABEL_34:
      v11 = v14 + 1;
      if (v14 < a8 >> 1)
      {
LABEL_35:
        *(v15 + 2) = v11;
        v36 = &v15[32 * v14];
        *(v36 + 4) = v8;
        *(v36 + 5) = v10;
        *(v36 + 6) = v12;
        *(v36 + 7) = v13;
        return v15;
      }

LABEL_38:
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a8 > 1), v11, 1, v15);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    goto LABEL_33;
  }

  if (v17 != v13 || (a2 & 1) == 0)
  {
    if (v13 >= v17)
    {
      v8 = Substring.subscript.getter();
      v10 = v30;
      v12 = v31;
      v13 = v32;

      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey()
{
  result = lazy protocol witness table cache variable for type _JSONKey and conformance _JSONKey;
  if (!lazy protocol witness table cache variable for type _JSONKey and conformance _JSONKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _JSONKey and conformance _JSONKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _JSONKey and conformance _JSONKey;
  if (!lazy protocol witness table cache variable for type _JSONKey and conformance _JSONKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _JSONKey and conformance _JSONKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _JSONKey and conformance _JSONKey;
  if (!lazy protocol witness table cache variable for type _JSONKey and conformance _JSONKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _JSONKey and conformance _JSONKey);
  }

  return result;
}

uint64_t specialized Array._customRemoveLast()()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void type metadata accessor for (Any, EncodingError.Context)()
{
  if (!lazy cache variable for type metadata for (Any, EncodingError.Context))
  {
    type metadata accessor for EncodingError.Context();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Any, EncodingError.Context));
    }
  }
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v12, v10 + 40 * a1 + 32);
}

uint64_t _s7SwiftUI30__DictionaryReferencingEncoder33_2462DFFC835A6F4511AFEB231EB4B8C2LLC11referencing3key12convertedKey8wrappingAdA02__cE0ACLLC_s06CodingP0_psAK_phSo09NSMutableC0CtcfCTf4nennn_nAA8_JSONKeyACLLV_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7)
{
  type metadata accessor for __DictionaryReferencingEncoder();
  v14 = swift_allocObject();
  *(v14 + 144) = a1;
  __swift_project_boxed_opaque_existential_1(a6, a6[3]);

  v15 = dispatch thunk of CodingKey.stringValue.getter();
  *(v14 + 152) = a7;
  *(v14 + 160) = v15;
  *(v14 + 168) = v16;
  *(v14 + 176) = 1;
  v17 = *(a1 + 72);
  v18 = *(a1 + 104);
  v35 = *(a1 + 88);
  v36 = v18;
  v37 = *(a1 + 120);
  v19 = *(a1 + 40);
  v31 = *(a1 + 24);
  v32 = v19;
  v33 = *(a1 + 56);
  v34 = v17;
  swift_beginAccess();
  v20 = v33;
  *(v14 + 72) = v34;
  v21 = v36;
  *(v14 + 88) = v35;
  *(v14 + 104) = v21;
  *(v14 + 120) = v37;
  v22 = v32;
  *(v14 + 24) = v31;
  *(v14 + 40) = v22;
  v23 = *(a1 + 136);
  *(v14 + 56) = v20;
  outlined init with copy of DictionaryEncoder._Options(&v31, &v28);

  *(v14 + 16) = MEMORY[0x1E69E7CC0];
  *(v14 + 136) = v23;
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
  }

  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v23);
  }

  v29 = &unk_1EFFB8510;
  v30 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v26 = swift_allocObject();
  *&v28 = v26;
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  *(v26 + 32) = a4;
  *(v26 + 40) = a5 & 1;
  v23[2] = v25 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v28, &v23[5 * v25 + 4]);
  *(v14 + 136) = v23;
  swift_endAccess();
  return v14;
}

uint64_t specialized __DictionaryReferencingEncoder.__allocating_init(referencing:key:convertedKey:wrapping:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a7;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  (*(v11 + 32))(&v33 - v15, v14);
  type metadata accessor for __DictionaryReferencingEncoder();
  v17 = swift_allocObject();
  *(v17 + 144) = a1;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);

  v18 = dispatch thunk of CodingKey.stringValue.getter();
  *(v17 + 152) = a4;
  *(v17 + 160) = v18;
  *(v17 + 168) = v19;
  *(v17 + 176) = 1;
  v20 = *(a1 + 72);
  v21 = *(a1 + 104);
  v41 = *(a1 + 88);
  v42 = v21;
  v43 = *(a1 + 120);
  v22 = *(a1 + 40);
  v37 = *(a1 + 24);
  v38 = v22;
  v39 = *(a1 + 56);
  v40 = v20;
  swift_beginAccess();
  v23 = v39;
  *(v17 + 72) = v40;
  v24 = v42;
  *(v17 + 88) = v41;
  *(v17 + 104) = v24;
  *(v17 + 120) = v43;
  v25 = v38;
  *(v17 + 24) = v37;
  *(v17 + 40) = v25;
  v26 = *(a1 + 136);
  *(v17 + 56) = v23;
  outlined init with copy of DictionaryEncoder._Options(&v37, v36);

  *(v17 + 16) = MEMORY[0x1E69E7CC0];
  *(v17 + 136) = v26;
  v27 = (v17 + 136);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v17 + 136) = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
    *v27 = v26;
  }

  v30 = v26[2];
  v29 = v26[3];
  if (v30 >= v29 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v26);
    *v27 = v26;
  }

  v31 = v34;
  (*(v11 + 16))(v34, v16, a6);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v30, v31, (v17 + 136), a6, v35);
  *(v17 + 136) = v26;
  swift_endAccess();
  (*(v11 + 8))(v16, a6);
  return v17;
}

unint64_t specialized static DictionaryDecoder.KeyDecodingStrategy._convertFromSnakeCase(_:)(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
LABEL_11:

    return v3;
  }

  v5 = 0;
  v6 = 4 * v4;
  v7 = 15;
  while (1)
  {
    if (String.subscript.getter() == 95 && v9 == 0xE100000000000000)
    {

      goto LABEL_7;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      break;
    }

LABEL_7:
    v7 = String.index(after:)();
    v5 = v7 >> 14;
    if (v7 >> 14 == v6)
    {
      goto LABEL_11;
    }
  }

  v11 = 7;
  if (((a2 >> 60) & ((v3 & 0x800000000000000) == 0)) != 0)
  {
    v11 = 11;
  }

  v59 = v11 | (v4 << 16);
  result = String.index(before:)();
  for (i = result >> 14; v5 < result >> 14; i = result >> 14)
  {
    if (String.subscript.getter() == 95 && v14 == 0xE100000000000000)
    {
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        break;
      }
    }

    result = String.index(before:)();
  }

  if (i < v5)
  {
    __break(1u);
    goto LABEL_45;
  }

  result = String.index(after:)();
  v15 = result >> 14;
  v60 = v6;
  if (v6 < result >> 14)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v16 = result;
  String.index(after:)();
  v17 = String.subscript.getter();
  *&v62 = 95;
  *(&v62 + 1) = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v17);
  v54[2] = &v62;
  v21 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), v54, v18, v19, v20, v55);
  v22 = *(v21 + 2);
  if (v22 == 1)
  {

    String.index(after:)();
    v23 = String.subscript.getter();
    v24 = MEMORY[0x18D00C930](v23);
    v26 = v25;

    v27 = v60;
    if (!(v7 >> 14))
    {
      goto LABEL_26;
    }

LABEL_39:
    v47 = String.subscript.getter();
    v48 = MEMORY[0x18D00C930](v47);
    v50 = v49;

    if (v15 == v27)
    {
      *&v62 = v48;
      *(&v62 + 1) = v50;

      MEMORY[0x18D00C9B0](v24, v26);

      goto LABEL_43;
    }

    *&v62 = v48;
    *(&v62 + 1) = v50;

    MEMORY[0x18D00C9B0](v24, v26);

    v26 = *(&v62 + 1);
    v51 = v62;
    v52 = String.subscript.getter();
    v43 = MEMORY[0x18D00C930](v52);
    v45 = v53;

    *&v62 = v51;
LABEL_42:
    *(&v62 + 1) = v26;

    MEMORY[0x18D00C9B0](v43, v45);

LABEL_43:

    return v62;
  }

  _sypSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_18CD63400;
  if (!v22)
  {
    goto LABEL_46;
  }

  v28 = result;
  v57 = v15;
  v58 = v16;

  v29 = Substring.lowercased()();

  v28[2] = v29;
  v56 = v28;
  v30 = *(v21 + 2);
  v27 = v60;
  if (!v30)
  {
LABEL_47:
    __break(1u);
    return result;
  }

  v55[1] = v3;
  v31 = v30 - 1;
  if (v30 == 1)
  {

    v32 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v65 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
    v32 = v65;
    v61 = lazy protocol witness table accessor for type Substring and conformance Substring();
    v55[0] = v21;
    v33 = (v21 + 88);
    do
    {
      v34 = *(v33 - 1);
      v35 = *v33;
      v62 = *(v33 - 3);
      v63 = v34;
      v64 = v35;
      v36 = StringProtocol.capitalized.getter();
      v38 = v37;
      v65 = v32;
      v40 = *(v32 + 16);
      v39 = *(v32 + 24);
      if (v40 >= v39 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
        v32 = v65;
      }

      *(v32 + 16) = v40 + 1;
      v41 = v32 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
      v33 += 4;
      --v31;
    }

    while (v31);

    v27 = v60;
  }

  *&v62 = v56;
  specialized Array.append<A>(contentsOf:)(v32);
  _sypSgMaTm_0(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v24 = BidirectionalCollection<>.joined(separator:)();
  v26 = v46;

  v15 = v57;
  if (v7 >> 14)
  {
    goto LABEL_39;
  }

LABEL_26:
  if (v15 != v27)
  {
    v42 = String.subscript.getter();
    v43 = MEMORY[0x18D00C930](v42);
    v45 = v44;

    *&v62 = v24;
    goto LABEL_42;
  }

  return v24;
}

unint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(unint64_t result, char a2, uint64_t *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  outlined init with copy of (String, Any)(result + 32, &v40);
  v8 = v40;
  v7 = v41;
  outlined init with take of Any(v42, v39);
  v9 = *a3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
  v11 = v9[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v10;
  if (v9[3] < v14)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, v5 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    if ((v15 & 1) == (v16 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_11:
    v21 = *a3;
    *(*a3 + 8 * (result >> 6) + 64) |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = v8;
    v22[1] = v7;
    result = outlined init with take of Any(v39, (v21[7] + 32 * result));
    v23 = v21[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v13)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v21[2] = v24;
    v5 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v20 = result;
  specialized _NativeDictionary.copy()();
  result = v20;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = *a3;
  v18 = 32 * result;
  outlined init with copy of Any(*(*a3 + 56) + 32 * result, v38);
  __swift_destroy_boxed_opaque_existential_1(v39);

  v19 = v17[7];
  __swift_destroy_boxed_opaque_existential_1(v19 + v18);
  result = outlined init with take of Any(v38, (v19 + v18));
  v5 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v6 += 80;
    v3 = 1;
    while (1)
    {
      outlined init with copy of (String, Any)(v6, &v40);
      v8 = v40;
      v7 = v41;
      outlined init with take of Any(v42, v39);
      v28 = *a3;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      v30 = *(v28 + 16);
      v31 = (v29 & 1) == 0;
      v13 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v13)
      {
        goto LABEL_23;
      }

      v15 = v29;
      if (*(v28 + 24) < v32)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, 1);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
        if ((v15 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v15)
      {
        v25 = *a3;
        v26 = 32 * result;
        outlined init with copy of Any(*(*a3 + 56) + 32 * result, v38);
        __swift_destroy_boxed_opaque_existential_1(v39);

        v27 = *(v25 + 56);
        __swift_destroy_boxed_opaque_existential_1(v27 + v26);
        result = outlined init with take of Any(v38, (v27 + v26));
      }

      else
      {
        v34 = *a3;
        *(*a3 + 8 * (result >> 6) + 64) |= 1 << result;
        v35 = (v34[6] + 16 * result);
        *v35 = v8;
        v35[1] = v7;
        result = outlined init with take of Any(v39, (v34[7] + 32 * result));
        v36 = v34[2];
        v13 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v13)
        {
          goto LABEL_24;
        }

        v34[2] = v37;
      }

      v6 += 48;
      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t specialized _DictionaryKeyedDecodingContainer.init(referencing:wrapping:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a1 + 112);
  if (!v4)
  {

LABEL_44:
    swift_beginAccess();

    return v3;
  }

  if (v4 != 1)
  {
    v29 = *(a1 + 120);
    v30 = *(a2 + 16);
    if (v30)
    {

      sub_18C0C046C(v4);
      v71 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
      v31 = v71;
      v32 = v2 + 64;
      v33 = _HashTable.startBucket.getter();
      v34 = *(v2 + 36);
      swift_beginAccess();
      v56 = v2 + 64;
      v57 = v2;
      do
      {
        if (v33 < 0 || v33 >= 1 << *(v2 + 32))
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        if ((*(v32 + 8 * (v33 >> 6)) & (1 << v33)) == 0)
        {
          goto LABEL_46;
        }

        v62 = v34;
        v60 = v30;
        v35 = *(v2 + 56);
        v36 = (*(v2 + 48) + 16 * v33);
        v37 = v31;
        v38 = v29;
        v39 = v4;
        v41 = *v36;
        v40 = v36[1];
        outlined init with copy of Any(v35 + 32 * v33, v67);
        v64 = v41;
        v65 = v40;
        outlined init with take of Any(v67, v66);
        v42 = *(v3 + 136);
        type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18CD63400;
        *(inited + 56) = &unk_1EFFB8510;
        *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
        v44 = swift_allocObject();
        *(inited + 32) = v44;
        *(v44 + 16) = v41;
        *(v44 + 24) = v40;
        v4 = v39;
        v29 = v38;
        v31 = v37;
        *(v44 + 32) = 0;
        *(v44 + 40) = 1;
        v63[0] = v42;
        swift_bridgeObjectRetain_n();

        specialized Array.append<A>(contentsOf:)(inited);
        v4(v63, v63[0]);

        __swift_project_boxed_opaque_existential_1(v63, v63[3]);
        v45 = dispatch thunk of CodingKey.stringValue.getter();
        v47 = v46;
        outlined init with copy of Any(v66, &v69);
        __swift_destroy_boxed_opaque_existential_1(v63);
        *&v68 = v45;
        *(&v68 + 1) = v47;
        outlined destroy of (positiveInfinity: String, negativeInfinity: String, nan: String)(&v64, type metadata accessor for (key: String, value: Any));
        v71 = v37;
        v49 = *(v37 + 16);
        v48 = *(v37 + 24);
        if (v49 >= v48 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
          v31 = v71;
        }

        *(v31 + 16) = v49 + 1;
        v50 = (v31 + 48 * v49);
        v51 = v68;
        v52 = v70;
        v50[3] = v69;
        v50[4] = v52;
        v50[2] = v51;
        v2 = v57;
        if (v33 >= -(-1 << *(v57 + 32)))
        {
          goto LABEL_47;
        }

        v32 = v56;
        if ((*(v56 + 8 * (v33 >> 6)) & (1 << v33)) == 0)
        {
          goto LABEL_48;
        }

        if (v62 != *(v57 + 36))
        {
          goto LABEL_49;
        }

        v33 = _HashTable.occupiedBucket(after:)();
        v34 = *(v57 + 36);
        v30 = v60 - 1;
      }

      while (v60 != 1);

      if (!*(v31 + 16))
      {
        goto LABEL_42;
      }
    }

    else
    {

      sub_18C0C046C(v4);

      v31 = MEMORY[0x1E69E7CC0];
      if (!*(MEMORY[0x1E69E7CC0] + 16))
      {
LABEL_42:
        v53 = MEMORY[0x1E69E7CC8];
        goto LABEL_43;
      }
    }

    type metadata accessor for [String : Any](0, &lazy cache variable for type metadata for _DictionaryStorage<String, Any>, MEMORY[0x1E69E6EC8]);
    v53 = static _DictionaryStorage.allocate(capacity:)();
LABEL_43:
    *&v68 = v53;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v31, 1, &v68);

    _s7SwiftUI17DictionaryDecoderC20DataDecodingStrategyOWOe_0(v4);
    goto LABEL_44;
  }

  v5 = *(a2 + 16);
  if (!v5)
  {

    v6 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_37:
      type metadata accessor for [String : Any](0, &lazy cache variable for type metadata for _DictionaryStorage<String, Any>, MEMORY[0x1E69E6EC8]);
      v54 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
LABEL_39:
      v54 = MEMORY[0x1E69E7CC8];
    }

    *&v68 = v54;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v6, 1, &v68);

    goto LABEL_44;
  }

  v63[0] = MEMORY[0x1E69E7CC0];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v6 = v63[0];
  v59 = v2 + 64;
  v7 = _HashTable.startBucket.getter();
  v8 = 0;
  v61 = *(v2 + 36);
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v59 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_51;
    }

    if (v61 != *(v2 + 36))
    {
      goto LABEL_52;
    }

    v11 = (*(v2 + 48) + 16 * v7);
    v12 = *v11;
    v13 = v11[1];
    outlined init with copy of Any(*(v2 + 56) + 32 * v7, v67);
    v64 = v12;
    v65 = v13;
    outlined init with take of Any(v67, v66);

    v14 = specialized static DictionaryDecoder.KeyDecodingStrategy._convertFromSnakeCase(_:)(v12, v13);
    v16 = v15;
    outlined init with copy of Any(v66, &v69);
    *&v68 = v14;
    *(&v68 + 1) = v16;
    outlined destroy of (positiveInfinity: String, negativeInfinity: String, nan: String)(&v64, type metadata accessor for (key: String, value: Any));
    v63[0] = v6;
    v18 = *(v6 + 16);
    v17 = *(v6 + 24);
    if (v18 >= v17 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      v6 = v63[0];
    }

    *(v6 + 16) = v18 + 1;
    v19 = (v6 + 48 * v18);
    v20 = v68;
    v21 = v70;
    v19[3] = v69;
    v19[4] = v21;
    v19[2] = v20;
    v9 = 1 << *(v2 + 32);
    if (v7 >= v9)
    {
      goto LABEL_53;
    }

    v22 = *(v59 + 8 * v10);
    if ((v22 & (1 << v7)) == 0)
    {
      goto LABEL_54;
    }

    if (v61 != *(v2 + 36))
    {
      goto LABEL_55;
    }

    v23 = v22 & (-2 << (v7 & 0x3F));
    if (v23)
    {
      v9 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v10 << 6;
      v25 = v10 + 1;
      v26 = (v2 + 72 + 8 * v10);
      while (v25 < (v9 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          outlined consume of Set<UIOpenURLContext>.Index._Variant(v7, v61, 0);
          v9 = __clz(__rbit64(v27)) + v24;
          goto LABEL_6;
        }
      }

      outlined consume of Set<UIOpenURLContext>.Index._Variant(v7, v61, 0);
    }

LABEL_6:
    ++v8;
    v7 = v9;
    if (v8 == v5)
    {

      v3 = a1;
      if (!*(v6 + 16))
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }
  }

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

  __break(1u);
  return result;
}

uint64_t specialized __DictionaryDecoder.unbox(_:as:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v7);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull);
  if (swift_dynamicCast())
  {

    return 0;
  }

  else
  {
    outlined init with copy of Any(a1, v7);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      v3 = type metadata accessor for DecodingError();
      swift_allocError();
      v5 = v4;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v5 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
      swift_beginAccess();

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
      return swift_willThrow();
    }
  }
}

{
  outlined init with copy of Any(a1, v18);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull);
  if (swift_dynamicCast())
  {

    return 0;
  }

  outlined init with copy of Any(a1, v18);
  v4 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
  if (swift_dynamicCast())
  {
    if (*MEMORY[0x1E695E4D0])
    {
      v5 = v16 == *MEMORY[0x1E695E4D0];
    }

    else
    {
      v5 = 0;
    }

    if (!v5 && (!*MEMORY[0x1E695E4C0] || v16 != *MEMORY[0x1E695E4C0]))
    {
      [v16 doubleValue];
      v14 = v13;

      return v14;
    }
  }

  outlined init with copy of Any(a1, v18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v6 = v1[9];
  if (!v6)
  {

    goto LABEL_18;
  }

  v8 = v1[10];
  v7 = v1[11];
  v9 = v1[12];
  if (v16 == v1[8] && v6 == v17 || (v19 = v1[13], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    return 0x7FF0000000000000;
  }

  if (v16 == v8 && v7 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0xFFF0000000000000;
  }

  if (v16 == v9 && v19 == v17)
  {

    return 0x7FF8000000000000;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v15 & 1) == 0)
  {
LABEL_18:
    v10 = type metadata accessor for DecodingError();
    swift_allocError();
    v12 = v11;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v12 = v4;
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69E6AF8], v10);
    return swift_willThrow();
  }

  return 0x7FF8000000000000;
}

{
  outlined init with copy of Any(a1, v7);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull);
  if (swift_dynamicCast())
  {

    return 0;
  }

  else
  {
    outlined init with copy of Any(a1, v7);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      v3 = type metadata accessor for DecodingError();
      swift_allocError();
      v5 = v4;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v5 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
      swift_beginAccess();

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
      return swift_willThrow();
    }
  }
}

{
  outlined init with copy of Any(a1, v10);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull);
  if (swift_dynamicCast())
  {

    return 2;
  }

  outlined init with copy of Any(a1, v10);
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
  result = swift_dynamicCast();
  if (result)
  {
    if (*MEMORY[0x1E695E4D0])
    {
      if (v9 == *MEMORY[0x1E695E4D0])
      {

        return 1;
      }

      if (*MEMORY[0x1E695E4C0])
      {
        if (v9 == *MEMORY[0x1E695E4C0])
        {

          return 0;
        }

        v4 = [v9 integerValue];

        v5 = v4 == 0;
        return !v5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  outlined init with copy of Any(a1, v10);
  if (swift_dynamicCast())
  {
    return v9;
  }

  outlined init with copy of Any(a1, v10);
  if (!swift_dynamicCast())
  {
    v6 = type metadata accessor for DecodingError();
    swift_allocError();
    v8 = v7;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v8 = v3;
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6AF8], v6);
    return swift_willThrow();
  }

  v5 = v9 == 0;
  return !v5;
}

uint64_t specialized _JSONUnkeyedDecodingContainer.decode(_:)()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v18 = MEMORY[0x1E69E6158];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v38[1] = 0xE600000000000000;
    v38[14] = v4;

    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v22);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v4;
    *(v23 + 40) = 0;
    v38[0] = v20;
    v13 = v38;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B08], v16);
    swift_willThrow();
    return v13;
  }

  v5 = *v0;
  *&v35 = 0x207865646E49;
  *(&v35 + 1) = 0xE600000000000000;
  v38[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v36 = &unk_1EFFB8510;
  v33 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v37 = v33;
  v11 = swift_allocObject();
  *&v35 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v35, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v35);
    v13 = v5;
    v14 = specialized __DictionaryDecoder.unbox(_:as:)(&v35);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v35);
    }

    else
    {
      v13 = v14;
      v24 = v15;
      __swift_destroy_boxed_opaque_existential_1(&v35);
      if (v24)
      {
        v2[3] = v4 + 1;
        $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
        return v13;
      }

      v34 = type metadata accessor for DecodingError();
      swift_allocError();
      v26 = v25;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v26 = MEMORY[0x1E69E6158];
      v27 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_18CD63400;
      *&v35 = 0x207865646E49;
      *(&v35 + 1) = 0xE600000000000000;
      v38[0] = v4;

      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v29);

      v31 = *(&v35 + 1);
      v30 = v35;
      *(v28 + 56) = &unk_1EFFB8510;
      *(v28 + 64) = v33;
      v32 = swift_allocObject();
      *(v28 + 32) = v32;
      *(v32 + 16) = __PAIR128__(v31, v30);
      *(v32 + 32) = v4;
      *(v32 + 40) = 0;
      *&v35 = v27;
      v13 = &v35;
      specialized Array.append<A>(contentsOf:)(v28);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v34 - 8) + 104))(v26, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
    }

    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13;
  }

  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v16;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v17 = MEMORY[0x1E69E6370];
    v18 = *v0;
    swift_beginAccess();
    v19 = *(v18 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v36[1] = 0xE600000000000000;
    v36[14] = v4;

    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v21);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v22 = swift_allocObject();
    *(inited + 32) = v22;
    *(v22 + 16) = 0x207865646E49;
    *(v22 + 24) = 0xE600000000000000;
    *(v22 + 32) = v4;
    *(v22 + 40) = 0;
    v36[0] = v19;
    v13 = v36;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    swift_willThrow();
    return v13 & 1;
  }

  v5 = *v0;
  *&v33 = 0x207865646E49;
  *(&v33 + 1) = 0xE600000000000000;
  v36[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v34 = &unk_1EFFB8510;
  v31 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v35 = v31;
  v11 = swift_allocObject();
  *&v33 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v33, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v33);
    LOBYTE(v13) = v5;
    v14 = specialized __DictionaryDecoder.unbox(_:as:)(&v33);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v33);
    }

    else
    {
      LOBYTE(v13) = v14;
      __swift_destroy_boxed_opaque_existential_1(&v33);
      if (v13 != 2)
      {
        v2[3] = v4 + 1;
        $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
        return v13 & 1;
      }

      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v24 = MEMORY[0x1E69E6370];
      v25 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_18CD63400;
      *&v33 = 0x207865646E49;
      *(&v33 + 1) = 0xE600000000000000;
      v36[0] = v4;

      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v27);

      v29 = *(&v33 + 1);
      v28 = v33;
      *(v26 + 56) = &unk_1EFFB8510;
      *(v26 + 64) = v31;
      v30 = swift_allocObject();
      *(v26 + 32) = v30;
      *(v30 + 16) = __PAIR128__(v29, v28);
      *(v30 + 32) = v4;
      *(v30 + 40) = 0;
      *&v33 = v25;
      v13 = &v33;
      specialized Array.append<A>(contentsOf:)(v26);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v24, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
    }

    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13 & 1;
  }

  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v18 = MEMORY[0x1E69E6530];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v38[1] = 0xE600000000000000;
    v38[14] = v4;

    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v22);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v4;
    *(v23 + 40) = 0;
    v38[0] = v20;
    v13 = v38;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B08], v16);
    swift_willThrow();
    return v13;
  }

  v5 = *v0;
  *&v35 = 0x207865646E49;
  *(&v35 + 1) = 0xE600000000000000;
  v38[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v36 = &unk_1EFFB8510;
  v34 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v37 = v34;
  v11 = swift_allocObject();
  *&v35 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v35, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v35);
    v13 = v5;
    specialized __DictionaryDecoder.unbox(_:as:)(&v35, &selRef_integerValue, &selRef_initWithInteger_, 7630409, 0xE300000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v35);
    }

    else
    {
      v13 = v14;
      v24 = v15;
      __swift_destroy_boxed_opaque_existential_1(&v35);
      if ((v24 & 1) == 0)
      {
        v2[3] = v4 + 1;
        $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
        return v13;
      }

      v25 = type metadata accessor for DecodingError();
      swift_allocError();
      v27 = v26;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v27 = MEMORY[0x1E69E6530];
      v28 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_18CD63400;
      *&v35 = 0x207865646E49;
      *(&v35 + 1) = 0xE600000000000000;
      v38[0] = v4;

      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v30);

      v32 = *(&v35 + 1);
      v31 = v35;
      *(v29 + 56) = &unk_1EFFB8510;
      *(v29 + 64) = v34;
      v33 = swift_allocObject();
      *(v29 + 32) = v33;
      *(v33 + 16) = __PAIR128__(v32, v31);
      *(v33 + 32) = v4;
      *(v33 + 40) = 0;
      *&v35 = v28;
      v13 = &v35;
      specialized Array.append<A>(contentsOf:)(v29);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6B08], v25);
      swift_willThrow();
    }

    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13;
  }

  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v16;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v17 = MEMORY[0x1E69E7230];
    v18 = *v0;
    swift_beginAccess();
    v19 = *(v18 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v36[1] = 0xE600000000000000;
    v36[14] = v4;

    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v21);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v22 = swift_allocObject();
    *(inited + 32) = v22;
    *(v22 + 16) = 0x207865646E49;
    *(v22 + 24) = 0xE600000000000000;
    *(v22 + 32) = v4;
    *(v22 + 40) = 0;
    v36[0] = v19;
    v13 = v36;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    swift_willThrow();
    return v13;
  }

  v5 = *v0;
  *&v33 = 0x207865646E49;
  *(&v33 + 1) = 0xE600000000000000;
  v36[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v34 = &unk_1EFFB8510;
  v31 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v35 = v31;
  v11 = swift_allocObject();
  *&v33 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v33, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v33);
    v13 = v5;
    specialized __DictionaryDecoder.unbox(_:as:)(&v33);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v33);
LABEL_14:
      $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
      return v13;
    }

    v13 = v14;
    __swift_destroy_boxed_opaque_existential_1(&v33);
    if ((v13 & 0x100) != 0)
    {
      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v24 = MEMORY[0x1E69E7230];
      v25 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_18CD63400;
      *&v33 = 0x207865646E49;
      *(&v33 + 1) = 0xE600000000000000;
      v36[0] = v4;

      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v27);

      v29 = *(&v33 + 1);
      v28 = v33;
      *(v26 + 56) = &unk_1EFFB8510;
      *(v26 + 64) = v31;
      v30 = swift_allocObject();
      *(v26 + 32) = v30;
      *(v30 + 16) = __PAIR128__(v29, v28);
      *(v30 + 32) = v4;
      *(v30 + 40) = 0;
      *&v33 = v25;
      v13 = &v33;
      specialized Array.append<A>(contentsOf:)(v26);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v24, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      goto LABEL_14;
    }

    v2[3] = v4 + 1;
    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13;
  }

  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v16;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v17 = MEMORY[0x1E69E7290];
    v18 = *v0;
    swift_beginAccess();
    v19 = *(v18 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v36[1] = 0xE600000000000000;
    v36[14] = v4;

    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v21);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v22 = swift_allocObject();
    *(inited + 32) = v22;
    *(v22 + 16) = 0x207865646E49;
    *(v22 + 24) = 0xE600000000000000;
    *(v22 + 32) = v4;
    *(v22 + 40) = 0;
    v36[0] = v19;
    v13 = v36;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    swift_willThrow();
    return v13;
  }

  v5 = *v0;
  *&v33 = 0x207865646E49;
  *(&v33 + 1) = 0xE600000000000000;
  v36[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v34 = &unk_1EFFB8510;
  v31 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v35 = v31;
  v11 = swift_allocObject();
  *&v33 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v33, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v33);
    v13 = v5;
    specialized __DictionaryDecoder.unbox(_:as:)(&v33);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v33);
LABEL_14:
      $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
      return v13;
    }

    v13 = v14;
    __swift_destroy_boxed_opaque_existential_1(&v33);
    if ((v13 & 0x10000) != 0)
    {
      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v24 = MEMORY[0x1E69E7290];
      v25 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_18CD63400;
      *&v33 = 0x207865646E49;
      *(&v33 + 1) = 0xE600000000000000;
      v36[0] = v4;

      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v27);

      v29 = *(&v33 + 1);
      v28 = v33;
      *(v26 + 56) = &unk_1EFFB8510;
      *(v26 + 64) = v31;
      v30 = swift_allocObject();
      *(v26 + 32) = v30;
      *(v30 + 16) = __PAIR128__(v29, v28);
      *(v30 + 32) = v4;
      *(v30 + 40) = 0;
      *&v33 = v25;
      v13 = &v33;
      specialized Array.append<A>(contentsOf:)(v26);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v24, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      goto LABEL_14;
    }

    v2[3] = v4 + 1;
    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13;
  }

  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v16;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v17 = MEMORY[0x1E69E72F0];
    v18 = *v0;
    swift_beginAccess();
    v19 = *(v18 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v36[1] = 0xE600000000000000;
    v36[14] = v4;

    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v21);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v22 = swift_allocObject();
    *(inited + 32) = v22;
    *(v22 + 16) = 0x207865646E49;
    *(v22 + 24) = 0xE600000000000000;
    *(v22 + 32) = v4;
    *(v22 + 40) = 0;
    v36[0] = v19;
    v13 = v36;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    swift_willThrow();
    return v13;
  }

  v5 = *v0;
  *&v33 = 0x207865646E49;
  *(&v33 + 1) = 0xE600000000000000;
  v36[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v34 = &unk_1EFFB8510;
  v31 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v35 = v31;
  v11 = swift_allocObject();
  *&v33 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v33, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v33);
    v13 = v5;
    specialized __DictionaryDecoder.unbox(_:as:)(&v33, &selRef_intValue, &selRef_initWithInt_, 0x3233746E49, 0xE500000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v33);
LABEL_14:
      $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
      return v13;
    }

    v13 = v14;
    __swift_destroy_boxed_opaque_existential_1(&v33);
    if ((v13 & 0x100000000) != 0)
    {
      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v24 = MEMORY[0x1E69E72F0];
      v25 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_18CD63400;
      *&v33 = 0x207865646E49;
      *(&v33 + 1) = 0xE600000000000000;
      v36[0] = v4;

      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v27);

      v29 = *(&v33 + 1);
      v28 = v33;
      *(v26 + 56) = &unk_1EFFB8510;
      *(v26 + 64) = v31;
      v30 = swift_allocObject();
      *(v26 + 32) = v30;
      *(v30 + 16) = __PAIR128__(v29, v28);
      *(v30 + 32) = v4;
      *(v30 + 40) = 0;
      *&v33 = v25;
      v13 = &v33;
      specialized Array.append<A>(contentsOf:)(v26);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v24, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      goto LABEL_14;
    }

    v2[3] = v4 + 1;
    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13;
  }

  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v18 = MEMORY[0x1E69E7360];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v38[1] = 0xE600000000000000;
    v38[14] = v4;

    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v22);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v4;
    *(v23 + 40) = 0;
    v38[0] = v20;
    v13 = v38;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B08], v16);
    swift_willThrow();
    return v13;
  }

  v5 = *v0;
  *&v35 = 0x207865646E49;
  *(&v35 + 1) = 0xE600000000000000;
  v38[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v36 = &unk_1EFFB8510;
  v33 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v37 = v33;
  v11 = swift_allocObject();
  *&v35 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v35, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v35);
    v13 = v5;
    specialized __DictionaryDecoder.unbox(_:as:)(&v35, &selRef_longLongValue, &selRef_initWithLongLong_, 0x3436746E49, 0xE500000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v35);
    }

    else
    {
      v13 = v14;
      v24 = v15;
      __swift_destroy_boxed_opaque_existential_1(&v35);
      if ((v24 & 1) == 0)
      {
        v2[3] = v4 + 1;
        $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
        return v13;
      }

      v34 = type metadata accessor for DecodingError();
      swift_allocError();
      v26 = v25;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v26 = MEMORY[0x1E69E7360];
      v27 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_18CD63400;
      *&v35 = 0x207865646E49;
      *(&v35 + 1) = 0xE600000000000000;
      v38[0] = v4;

      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v29);

      v31 = *(&v35 + 1);
      v30 = v35;
      *(v28 + 56) = &unk_1EFFB8510;
      *(v28 + 64) = v33;
      v32 = swift_allocObject();
      *(v28 + 32) = v32;
      *(v32 + 16) = __PAIR128__(v31, v30);
      *(v32 + 32) = v4;
      *(v32 + 40) = 0;
      *&v35 = v27;
      v13 = &v35;
      specialized Array.append<A>(contentsOf:)(v28);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v34 - 8) + 104))(v26, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
    }

    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13;
  }

  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v18 = MEMORY[0x1E69E6810];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v38[1] = 0xE600000000000000;
    v38[14] = v4;

    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v22);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v4;
    *(v23 + 40) = 0;
    v38[0] = v20;
    v13 = v38;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B08], v16);
    swift_willThrow();
    return v13;
  }

  v5 = *v0;
  *&v35 = 0x207865646E49;
  *(&v35 + 1) = 0xE600000000000000;
  v38[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v36 = &unk_1EFFB8510;
  v33 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v37 = v33;
  v11 = swift_allocObject();
  *&v35 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v35, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v35);
    v13 = v5;
    specialized __DictionaryDecoder.unbox(_:as:)(&v35, &selRef_unsignedIntegerValue, &selRef_initWithUnsignedInteger_, 1953384789, 0xE400000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v35);
    }

    else
    {
      v13 = v14;
      v24 = v15;
      __swift_destroy_boxed_opaque_existential_1(&v35);
      if ((v24 & 1) == 0)
      {
        v2[3] = v4 + 1;
        $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
        return v13;
      }

      v34 = type metadata accessor for DecodingError();
      swift_allocError();
      v26 = v25;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v26 = MEMORY[0x1E69E6810];
      v27 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_18CD63400;
      *&v35 = 0x207865646E49;
      *(&v35 + 1) = 0xE600000000000000;
      v38[0] = v4;

      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v29);

      v31 = *(&v35 + 1);
      v30 = v35;
      *(v28 + 56) = &unk_1EFFB8510;
      *(v28 + 64) = v33;
      v32 = swift_allocObject();
      *(v28 + 32) = v32;
      *(v32 + 16) = __PAIR128__(v31, v30);
      *(v32 + 32) = v4;
      *(v32 + 40) = 0;
      *&v35 = v27;
      v13 = &v35;
      specialized Array.append<A>(contentsOf:)(v28);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v34 - 8) + 104))(v26, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
    }

    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13;
  }

  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v16;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v17 = MEMORY[0x1E69E7508];
    v18 = *v0;
    swift_beginAccess();
    v19 = *(v18 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v36[1] = 0xE600000000000000;
    v36[14] = v4;

    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v21);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v22 = swift_allocObject();
    *(inited + 32) = v22;
    *(v22 + 16) = 0x207865646E49;
    *(v22 + 24) = 0xE600000000000000;
    *(v22 + 32) = v4;
    *(v22 + 40) = 0;
    v36[0] = v19;
    v13 = v36;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    swift_willThrow();
    return v13;
  }

  v5 = *v0;
  *&v33 = 0x207865646E49;
  *(&v33 + 1) = 0xE600000000000000;
  v36[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v34 = &unk_1EFFB8510;
  v31 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v35 = v31;
  v11 = swift_allocObject();
  *&v33 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v33, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v33);
    v13 = v5;
    specialized __DictionaryDecoder.unbox(_:as:)(&v33);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v33);
LABEL_14:
      $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
      return v13;
    }

    v13 = v14;
    __swift_destroy_boxed_opaque_existential_1(&v33);
    if ((v13 & 0x100) != 0)
    {
      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v24 = MEMORY[0x1E69E7508];
      v25 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_18CD63400;
      *&v33 = 0x207865646E49;
      *(&v33 + 1) = 0xE600000000000000;
      v36[0] = v4;

      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v27);

      v29 = *(&v33 + 1);
      v28 = v33;
      *(v26 + 56) = &unk_1EFFB8510;
      *(v26 + 64) = v31;
      v30 = swift_allocObject();
      *(v26 + 32) = v30;
      *(v30 + 16) = __PAIR128__(v29, v28);
      *(v30 + 32) = v4;
      *(v30 + 40) = 0;
      *&v33 = v25;
      v13 = &v33;
      specialized Array.append<A>(contentsOf:)(v26);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v24, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      goto LABEL_14;
    }

    v2[3] = v4 + 1;
    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13;
  }

  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v16;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v17 = MEMORY[0x1E69E75F8];
    v18 = *v0;
    swift_beginAccess();
    v19 = *(v18 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v36[1] = 0xE600000000000000;
    v36[14] = v4;

    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v21);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v22 = swift_allocObject();
    *(inited + 32) = v22;
    *(v22 + 16) = 0x207865646E49;
    *(v22 + 24) = 0xE600000000000000;
    *(v22 + 32) = v4;
    *(v22 + 40) = 0;
    v36[0] = v19;
    v13 = v36;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    swift_willThrow();
    return v13;
  }

  v5 = *v0;
  *&v33 = 0x207865646E49;
  *(&v33 + 1) = 0xE600000000000000;
  v36[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v34 = &unk_1EFFB8510;
  v31 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v35 = v31;
  v11 = swift_allocObject();
  *&v33 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v33, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v33);
    v13 = v5;
    specialized __DictionaryDecoder.unbox(_:as:)(&v33);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v33);
LABEL_14:
      $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
      return v13;
    }

    v13 = v14;
    __swift_destroy_boxed_opaque_existential_1(&v33);
    if ((v13 & 0x10000) != 0)
    {
      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v24 = MEMORY[0x1E69E75F8];
      v25 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_18CD63400;
      *&v33 = 0x207865646E49;
      *(&v33 + 1) = 0xE600000000000000;
      v36[0] = v4;

      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v27);

      v29 = *(&v33 + 1);
      v28 = v33;
      *(v26 + 56) = &unk_1EFFB8510;
      *(v26 + 64) = v31;
      v30 = swift_allocObject();
      *(v26 + 32) = v30;
      *(v30 + 16) = __PAIR128__(v29, v28);
      *(v30 + 32) = v4;
      *(v30 + 40) = 0;
      *&v33 = v25;
      v13 = &v33;
      specialized Array.append<A>(contentsOf:)(v26);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v24, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      goto LABEL_14;
    }

    v2[3] = v4 + 1;
    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13;
  }

  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v16;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v17 = MEMORY[0x1E69E7668];
    v18 = *v0;
    swift_beginAccess();
    v19 = *(v18 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v36[1] = 0xE600000000000000;
    v36[14] = v4;

    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v21);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v22 = swift_allocObject();
    *(inited + 32) = v22;
    *(v22 + 16) = 0x207865646E49;
    *(v22 + 24) = 0xE600000000000000;
    *(v22 + 32) = v4;
    *(v22 + 40) = 0;
    v36[0] = v19;
    v13 = v36;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    swift_willThrow();
    return v13;
  }

  v5 = *v0;
  *&v33 = 0x207865646E49;
  *(&v33 + 1) = 0xE600000000000000;
  v36[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v34 = &unk_1EFFB8510;
  v31 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v35 = v31;
  v11 = swift_allocObject();
  *&v33 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v33, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v33);
    v13 = v5;
    specialized __DictionaryDecoder.unbox(_:as:)(&v33, &selRef_unsignedIntValue, &selRef_initWithUnsignedInt_, 0x3233746E4955, 0xE600000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v33);
LABEL_14:
      $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
      return v13;
    }

    v13 = v14;
    __swift_destroy_boxed_opaque_existential_1(&v33);
    if ((v13 & 0x100000000) != 0)
    {
      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v24 = MEMORY[0x1E69E7668];
      v25 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_18CD63400;
      *&v33 = 0x207865646E49;
      *(&v33 + 1) = 0xE600000000000000;
      v36[0] = v4;

      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v27);

      v29 = *(&v33 + 1);
      v28 = v33;
      *(v26 + 56) = &unk_1EFFB8510;
      *(v26 + 64) = v31;
      v30 = swift_allocObject();
      *(v26 + 32) = v30;
      *(v30 + 16) = __PAIR128__(v29, v28);
      *(v30 + 32) = v4;
      *(v30 + 40) = 0;
      *&v33 = v25;
      v13 = &v33;
      specialized Array.append<A>(contentsOf:)(v26);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v24, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      goto LABEL_14;
    }

    v2[3] = v4 + 1;
    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13;
  }

  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v18 = MEMORY[0x1E69E76D8];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v38[1] = 0xE600000000000000;
    v38[14] = v4;

    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v22);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v4;
    *(v23 + 40) = 0;
    v38[0] = v20;
    v13 = v38;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B08], v16);
    swift_willThrow();
    return v13;
  }

  v5 = *v0;
  *&v35 = 0x207865646E49;
  *(&v35 + 1) = 0xE600000000000000;
  v38[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v36 = &unk_1EFFB8510;
  v33 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v37 = v33;
  v11 = swift_allocObject();
  *&v35 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v35, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v35);
    v13 = v5;
    specialized __DictionaryDecoder.unbox(_:as:)(&v35, &selRef_unsignedLongLongValue, &selRef_initWithUnsignedLongLong_, 0x3436746E4955, 0xE600000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v35);
    }

    else
    {
      v13 = v14;
      v24 = v15;
      __swift_destroy_boxed_opaque_existential_1(&v35);
      if ((v24 & 1) == 0)
      {
        v2[3] = v4 + 1;
        $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
        return v13;
      }

      v34 = type metadata accessor for DecodingError();
      swift_allocError();
      v26 = v25;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v26 = MEMORY[0x1E69E76D8];
      v27 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_18CD63400;
      *&v35 = 0x207865646E49;
      *(&v35 + 1) = 0xE600000000000000;
      v38[0] = v4;

      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v29);

      v31 = *(&v35 + 1);
      v30 = v35;
      *(v28 + 56) = &unk_1EFFB8510;
      *(v28 + 64) = v33;
      v32 = swift_allocObject();
      *(v28 + 32) = v32;
      *(v32 + 16) = __PAIR128__(v31, v30);
      *(v32 + 32) = v4;
      *(v32 + 40) = 0;
      *&v35 = v27;
      v13 = &v35;
      specialized Array.append<A>(contentsOf:)(v28);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v34 - 8) + 104))(v26, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
    }

    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13;
  }

  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v14 = type metadata accessor for DecodingError();
    swift_allocError();
    v16 = v15;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v16 = MEMORY[0x1E69E6448];
    v17 = *v0;
    swift_beginAccess();
    v18 = *(v17 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v36 = 0xE600000000000000;
    v37 = v4;

    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v20);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v21 = swift_allocObject();
    *(inited + 32) = v21;
    *(v21 + 16) = 0x207865646E49;
    *(v21 + 24) = 0xE600000000000000;
    *(v21 + 32) = v4;
    *(v21 + 40) = 0;
    v35 = v18;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6B08], v14);
    return swift_willThrow();
  }

  v5 = *v0;
  *&v32 = 0x207865646E49;
  *(&v32 + 1) = 0xE600000000000000;
  v35 = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v33 = &unk_1EFFB8510;
  v30 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v34 = v30;
  v11 = swift_allocObject();
  *&v32 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v32, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v4 >= *(v3 + 16))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  outlined init with copy of Any(v3 + 32 * v4 + 32, &v32);
  specialized __DictionaryDecoder.unbox(_:as:)(&v32);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(&v32);
  }

  else
  {
    v22 = v13;
    __swift_destroy_boxed_opaque_existential_1(&v32);
    if ((v22 & 0x100000000) == 0)
    {
      v2[3] = v4 + 1;
      return $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    }

    v31 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v24 = MEMORY[0x1E69E6448];
    v25 = *(v5 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_18CD63400;
    *&v32 = 0x207865646E49;
    *(&v32 + 1) = 0xE600000000000000;
    v35 = v4;

    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v27);

    v28 = v32;
    *(v26 + 56) = &unk_1EFFB8510;
    *(v26 + 64) = v30;
    v29 = swift_allocObject();
    *(v26 + 32) = v29;
    *(v29 + 16) = v28;
    *(v29 + 32) = v4;
    *(v29 + 40) = 0;
    *&v32 = v25;
    specialized Array.append<A>(contentsOf:)(v26);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v31 - 8) + 104))(v24, *MEMORY[0x1E69E6B08]);
    swift_willThrow();
  }

  return $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v14 = type metadata accessor for DecodingError();
    swift_allocError();
    v16 = v15;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v16 = MEMORY[0x1E69E63B0];
    v17 = *v0;
    swift_beginAccess();
    v18 = *(v17 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v36 = 0xE600000000000000;
    v37 = v4;

    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v20);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v21 = swift_allocObject();
    *(inited + 32) = v21;
    *(v21 + 16) = 0x207865646E49;
    *(v21 + 24) = 0xE600000000000000;
    *(v21 + 32) = v4;
    *(v21 + 40) = 0;
    v35 = v18;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6B08], v14);
    return swift_willThrow();
  }

  v5 = *v0;
  *&v32 = 0x207865646E49;
  *(&v32 + 1) = 0xE600000000000000;
  v35 = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v33 = &unk_1EFFB8510;
  v30 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v34 = v30;
  v11 = swift_allocObject();
  *&v32 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v32, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v4 >= *(v3 + 16))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  outlined init with copy of Any(v3 + 32 * v4 + 32, &v32);
  specialized __DictionaryDecoder.unbox(_:as:)(&v32);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(&v32);
    return $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
  }

  v22 = v13;
  __swift_destroy_boxed_opaque_existential_1(&v32);
  if (v22)
  {
    v31 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v24 = MEMORY[0x1E69E63B0];
    v25 = *(v5 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_18CD63400;
    *&v32 = 0x207865646E49;
    *(&v32 + 1) = 0xE600000000000000;
    v35 = v4;

    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v27);

    v28 = v32;
    *(v26 + 56) = &unk_1EFFB8510;
    *(v26 + 64) = v30;
    v29 = swift_allocObject();
    *(v26 + 32) = v29;
    *(v29 + 16) = v28;
    *(v29 + 32) = v4;
    *(v29 + 40) = 0;
    *&v32 = v25;
    specialized Array.append<A>(contentsOf:)(v26);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v31 - 8) + 104))(v24, *MEMORY[0x1E69E6B08]);
    swift_willThrow();
    return $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
  }

  v2[3] = v4 + 1;
  return $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
}

void specialized __DictionaryDecoder.unbox(_:as:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v18);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull);
  if (!swift_dynamicCast())
  {
    outlined init with copy of Any(a1, v18);
    v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_10:
      v4 = type metadata accessor for DecodingError();
      swift_allocError();
      v6 = v5;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v6 = v2;
      swift_beginAccess();

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6AF8], v4);
      swift_willThrow();
      return;
    }

    if (*MEMORY[0x1E695E4D0])
    {
      v3 = v17 == *MEMORY[0x1E695E4D0];
    }

    else
    {
      v3 = 0;
    }

    if (v3 || *MEMORY[0x1E695E4C0] && v17 == *MEMORY[0x1E695E4C0])
    {

      goto LABEL_10;
    }

    v7 = [v17 charValue];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
    v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithChar_];
    v9 = static NSObject.== infix(_:_:)();

    if ((v9 & 1) == 0)
    {
      v10 = type metadata accessor for DecodingError();
      swift_allocError();
      v12 = v11;
      swift_beginAccess();

      _StringGuts.grow(_:)(43);

      v13 = [v17 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      MEMORY[0x18D00C9B0](v14, v16);

      MEMORY[0x18D00C9B0](0xD000000000000012, 0x800000018CD46840);
      MEMORY[0x18D00C9B0](947154505, 0xE400000000000000);
      MEMORY[0x18D00C9B0](46, 0xE100000000000000);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69E6B00], v10);
      swift_willThrow();
    }
  }
}

{
  outlined init with copy of Any(a1, v18);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull);
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  outlined init with copy of Any(a1, v18);
  v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  if (*MEMORY[0x1E695E4D0])
  {
    v3 = v17 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = 0;
  }

  if (v3 || *MEMORY[0x1E695E4C0] && v17 == *MEMORY[0x1E695E4C0])
  {

LABEL_11:
    v4 = type metadata accessor for DecodingError();
    swift_allocError();
    v6 = v5;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v6 = v2;
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6AF8], v4);
    swift_willThrow();
    return;
  }

  v7 = [v17 shortValue];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  v9 = static NSObject.== infix(_:_:)();

  if (v9)
  {
LABEL_2:

    return;
  }

  v10 = type metadata accessor for DecodingError();
  swift_allocError();
  v12 = v11;
  swift_beginAccess();

  _StringGuts.grow(_:)(43);

  v13 = [v17 description];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  MEMORY[0x18D00C9B0](v14, v16);

  MEMORY[0x18D00C9B0](0xD000000000000012, 0x800000018CD46840);
  MEMORY[0x18D00C9B0](0x3631746E49, 0xE500000000000000);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69E6B00], v10);
  swift_willThrow();
}

{
  outlined init with copy of Any(a1, v18);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull);
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  outlined init with copy of Any(a1, v18);
  v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  if (*MEMORY[0x1E695E4D0])
  {
    v3 = v17 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = 0;
  }

  if (v3 || *MEMORY[0x1E695E4C0] && v17 == *MEMORY[0x1E695E4C0])
  {

LABEL_11:
    v4 = type metadata accessor for DecodingError();
    swift_allocError();
    v6 = v5;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v6 = v2;
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6AF8], v4);
    swift_willThrow();
    return;
  }

  v7 = [v17 unsignedCharValue];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedChar_];
  v9 = static NSObject.== infix(_:_:)();

  if (v9)
  {
LABEL_2:

    return;
  }

  v10 = type metadata accessor for DecodingError();
  swift_allocError();
  v12 = v11;
  swift_beginAccess();

  _StringGuts.grow(_:)(43);

  v13 = [v17 description];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  MEMORY[0x18D00C9B0](v14, v16);

  MEMORY[0x18D00C9B0](0xD000000000000012, 0x800000018CD46840);
  MEMORY[0x18D00C9B0](0x38746E4955, 0xE500000000000000);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69E6B00], v10);
  swift_willThrow();
}

{
  outlined init with copy of Any(a1, v18);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull);
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  outlined init with copy of Any(a1, v18);
  v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  if (*MEMORY[0x1E695E4D0])
  {
    v3 = v17 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = 0;
  }

  if (v3 || *MEMORY[0x1E695E4C0] && v17 == *MEMORY[0x1E695E4C0])
  {

LABEL_11:
    v4 = type metadata accessor for DecodingError();
    swift_allocError();
    v6 = v5;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v6 = v2;
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6AF8], v4);
    swift_willThrow();
    return;
  }

  v7 = [v17 unsignedShortValue];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
  v9 = static NSObject.== infix(_:_:)();

  if (v9)
  {
LABEL_2:

    return;
  }

  v10 = type metadata accessor for DecodingError();
  swift_allocError();
  v12 = v11;
  swift_beginAccess();

  _StringGuts.grow(_:)(43);

  v13 = [v17 description];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  MEMORY[0x18D00C9B0](v14, v16);

  MEMORY[0x18D00C9B0](0xD000000000000012, 0x800000018CD46840);
  MEMORY[0x18D00C9B0](0x3631746E4955, 0xE600000000000000);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69E6B00], v10);
  swift_willThrow();
}

{
  outlined init with copy of Any(a1, v26);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull);
  v3 = swift_dynamicCast();
  v4 = v3;
  if (v3)
  {
    goto LABEL_2;
  }

  outlined init with copy of Any(a1, v26);
  v5 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (*MEMORY[0x1E695E4D0])
  {
    v6 = v24 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v6 = 0;
  }

  if (v6 || *MEMORY[0x1E695E4C0] && v24 == *MEMORY[0x1E695E4C0])
  {

LABEL_12:
    outlined init with copy of Any(a1, v26);
    if (swift_dynamicCast())
    {
      v7 = v1[9];
      if (v7)
      {
        v9 = v1[10];
        v8 = v1[11];
        v10 = v1[12];
        if (v24 == v1[8] && v7 == v25 || (v23 = v1[13], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || v24 == v9 && v8 == v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v24 == v10 && v23 == v25)
        {

          goto LABEL_3;
        }

        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {
          goto LABEL_3;
        }
      }

      else
      {
      }
    }

    v11 = type metadata accessor for DecodingError();
    swift_allocError();
    v13 = v12;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v13 = v5;
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
    swift_willThrow();
    return;
  }

  [v24 doubleValue];
  if (fabs(v14) <= 3.40282347e38)
  {
LABEL_2:

LABEL_3:
    v26[0] = v4;
    return;
  }

  v15 = type metadata accessor for DecodingError();
  swift_allocError();
  v17 = v16;
  swift_beginAccess();

  _StringGuts.grow(_:)(41);

  v18 = [v24 description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  MEMORY[0x18D00C9B0](v19, v21);

  MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD46A60);
  MEMORY[0x18D00C9B0](0x74616F6C46, 0xE500000000000000);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B00], v15);
  swift_willThrow();
}

uint64_t specialized __DictionaryDecoder.decode(_:)()
{
  if (__DictionaryDecoder.decodeNil()())
  {
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v4 = MEMORY[0x1E69E7230];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B08], v2);
    swift_willThrow();
    return v0;
  }

  swift_beginAccess();
  v5 = *(v0 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    outlined init with copy of Any(v5 + 32 * v6, v9);
    specialized __DictionaryDecoder.unbox(_:as:)(v9);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v0;
    }

    v0 = v7;
    __swift_destroy_boxed_opaque_existential_1(v9);
    if ((v0 & 0x100) == 0)
    {
      return v0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if (__DictionaryDecoder.decodeNil()())
  {
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v4 = MEMORY[0x1E69E6370];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B08], v2);
    swift_willThrow();
    return v0 & 1;
  }

  swift_beginAccess();
  v5 = *(v0 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    outlined init with copy of Any(v5 + 32 * v6, v8);
    LOBYTE(v0) = specialized __DictionaryDecoder.unbox(_:as:)(v8);
    __swift_destroy_boxed_opaque_existential_1(v8);
    if (v1 || v0 != 2)
    {
      return v0 & 1;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if (__DictionaryDecoder.decodeNil()())
  {
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v4 = MEMORY[0x1E69E6530];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B08], v2);
    swift_willThrow();
    return v0;
  }

  swift_beginAccess();
  v5 = *(v0 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    outlined init with copy of Any(v5 + 32 * v6, v11);
    specialized __DictionaryDecoder.unbox(_:as:)(v11, &selRef_integerValue, &selRef_initWithInteger_, 7630409, 0xE300000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v11);
      return v0;
    }

    v0 = v7;
    v10 = v8;
    __swift_destroy_boxed_opaque_existential_1(v11);
    if ((v10 & 1) == 0)
    {
      return v0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if (__DictionaryDecoder.decodeNil()())
  {
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v4 = MEMORY[0x1E69E7290];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B08], v2);
    swift_willThrow();
    return v0;
  }

  swift_beginAccess();
  v5 = *(v0 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    outlined init with copy of Any(v5 + 32 * v6, v9);
    specialized __DictionaryDecoder.unbox(_:as:)(v9);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v0;
    }

    v0 = v7;
    __swift_destroy_boxed_opaque_existential_1(v9);
    if ((v0 & 0x10000) == 0)
    {
      return v0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if (__DictionaryDecoder.decodeNil()())
  {
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v4 = MEMORY[0x1E69E72F0];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B08], v2);
    swift_willThrow();
    return v0;
  }

  swift_beginAccess();
  v5 = *(v0 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    outlined init with copy of Any(v5 + 32 * v6, v9);
    specialized __DictionaryDecoder.unbox(_:as:)(v9, &selRef_intValue, &selRef_initWithInt_, 0x3233746E49, 0xE500000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v0;
    }

    v0 = v7;
    __swift_destroy_boxed_opaque_existential_1(v9);
    if ((v0 & 0x100000000) == 0)
    {
      return v0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if (__DictionaryDecoder.decodeNil()())
  {
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v4 = MEMORY[0x1E69E7360];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B08], v2);
    swift_willThrow();
    return v0;
  }

  swift_beginAccess();
  v5 = *(v0 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    outlined init with copy of Any(v5 + 32 * v6, v11);
    specialized __DictionaryDecoder.unbox(_:as:)(v11, &selRef_longLongValue, &selRef_initWithLongLong_, 0x3436746E49, 0xE500000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v11);
      return v0;
    }

    v0 = v7;
    v10 = v8;
    __swift_destroy_boxed_opaque_existential_1(v11);
    if ((v10 & 1) == 0)
    {
      return v0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if (__DictionaryDecoder.decodeNil()())
  {
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v4 = MEMORY[0x1E69E6810];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B08], v2);
    swift_willThrow();
    return v0;
  }

  swift_beginAccess();
  v5 = *(v0 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    outlined init with copy of Any(v5 + 32 * v6, v11);
    specialized __DictionaryDecoder.unbox(_:as:)(v11, &selRef_unsignedIntegerValue, &selRef_initWithUnsignedInteger_, 1953384789, 0xE400000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v11);
      return v0;
    }

    v0 = v7;
    v10 = v8;
    __swift_destroy_boxed_opaque_existential_1(v11);
    if ((v10 & 1) == 0)
    {
      return v0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if (__DictionaryDecoder.decodeNil()())
  {
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v4 = MEMORY[0x1E69E7508];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B08], v2);
    swift_willThrow();
    return v0;
  }

  swift_beginAccess();
  v5 = *(v0 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    outlined init with copy of Any(v5 + 32 * v6, v9);
    specialized __DictionaryDecoder.unbox(_:as:)(v9);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v0;
    }

    v0 = v7;
    __swift_destroy_boxed_opaque_existential_1(v9);
    if ((v0 & 0x100) == 0)
    {
      return v0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if (__DictionaryDecoder.decodeNil()())
  {
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v4 = MEMORY[0x1E69E75F8];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B08], v2);
    swift_willThrow();
    return v0;
  }

  swift_beginAccess();
  v5 = *(v0 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    outlined init with copy of Any(v5 + 32 * v6, v9);
    specialized __DictionaryDecoder.unbox(_:as:)(v9);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v0;
    }

    v0 = v7;
    __swift_destroy_boxed_opaque_existential_1(v9);
    if ((v0 & 0x10000) == 0)
    {
      return v0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if (__DictionaryDecoder.decodeNil()())
  {
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v4 = MEMORY[0x1E69E7668];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B08], v2);
    swift_willThrow();
    return v0;
  }

  swift_beginAccess();
  v5 = *(v0 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    outlined init with copy of Any(v5 + 32 * v6, v9);
    specialized __DictionaryDecoder.unbox(_:as:)(v9, &selRef_unsignedIntValue, &selRef_initWithUnsignedInt_, 0x3233746E4955, 0xE600000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v0;
    }

    v0 = v7;
    __swift_destroy_boxed_opaque_existential_1(v9);
    if ((v0 & 0x100000000) == 0)
    {
      return v0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if (__DictionaryDecoder.decodeNil()())
  {
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v4 = MEMORY[0x1E69E76D8];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B08], v2);
    swift_willThrow();
    return v0;
  }

  swift_beginAccess();
  v5 = *(v0 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    outlined init with copy of Any(v5 + 32 * v6, v11);
    specialized __DictionaryDecoder.unbox(_:as:)(v11, &selRef_unsignedLongLongValue, &selRef_initWithUnsignedLongLong_, 0x3436746E4955, 0xE600000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v11);
      return v0;
    }

    v0 = v7;
    v10 = v8;
    __swift_destroy_boxed_opaque_existential_1(v11);
    if ((v10 & 1) == 0)
    {
      return v0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if (__DictionaryDecoder.decodeNil()())
  {
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v4 = MEMORY[0x1E69E6448];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B08], v2);
    return swift_willThrow();
  }

  swift_beginAccess();
  v6 = *(v0 + 16);
  v7 = *(v6 + 16);
  if (!v7)
  {
    goto LABEL_9;
  }

  outlined init with copy of Any(v6 + 32 * v7, v10);
  specialized __DictionaryDecoder.unbox(_:as:)(v10);
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v9 = v8;
  result = __swift_destroy_boxed_opaque_existential_1(v10);
  if ((v9 & 0x100000000) != 0)
  {
    __break(1u);
LABEL_9:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  if (__DictionaryDecoder.decodeNil()())
  {
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v4 = MEMORY[0x1E69E63B0];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B08], v2);
    return swift_willThrow();
  }

  swift_beginAccess();
  v6 = *(v0 + 16);
  v7 = *(v6 + 16);
  if (!v7)
  {
    goto LABEL_9;
  }

  outlined init with copy of Any(v6 + 32 * v7, v10);
  specialized __DictionaryDecoder.unbox(_:as:)(v10);
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v9 = v8;
  result = __swift_destroy_boxed_opaque_existential_1(v10);
  if (v9)
  {
    __break(1u);
LABEL_9:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  if (__DictionaryDecoder.decodeNil()())
  {
    v2 = type metadata accessor for DecodingError();
    swift_allocError();
    v4 = v3;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v4 = MEMORY[0x1E69E6158];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B08], v2);
    swift_willThrow();
    return v0;
  }

  swift_beginAccess();
  v5 = *(v0 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    outlined init with copy of Any(v5 + 32 * v6, v10);
    v0 = specialized __DictionaryDecoder.unbox(_:as:)(v10);
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v10);
    if (v1 || v8)
    {
      return v0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}