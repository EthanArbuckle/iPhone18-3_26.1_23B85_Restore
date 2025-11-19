uint64_t _PlistDictionaryUnkeyedDecodingContainer.superDecoder()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[3];
  v5 = *(*v1 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 32) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
    *(v3 + 32) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
  }

  v20 = &type metadata for _CodingKey;
  v21 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v9 = swift_allocObject();
  *&v19 = v9;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 16) = v4;
  *(v9 + 40) = 2;
  v5[2] = v8 + 1;
  result = outlined init with take of Equatable(&v19, &v5[5 * v8 + 4]);
  *(v3 + 32) = v5;
  v11 = v1[1];
  if (v4 >= *(v11 + 16))
  {
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B08], v16);
    swift_willThrow();
    v15 = v1;
    return $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v15);
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v1[3] = v4 + 1;
    outlined init with copy of Any(v11 + 32 * v4 + 32, &v19);
    v12 = *(v3 + 24);
    v13 = type metadata accessor for __PlistDictionaryDecoder();
    v14 = swift_allocObject();

    __PlistDictionaryDecoder.init(referencing:at:options:)(&v19, v5, v12);
    a1[3] = v13;
    a1[4] = lazy protocol witness table accessor for type __PlistDictionaryDecoder and conformance __PlistDictionaryDecoder(&lazy protocol witness table cache variable for type __PlistDictionaryDecoder and conformance __PlistDictionaryDecoder);
    *a1 = v14;
    v15 = v1;
    return $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v15);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance _PlistDictionaryUnkeyedDecodingContainer()
{
  return specialized _PlistDictionaryUnkeyedDecodingContainer.decode(_:)() & 1;
}

{
  return specialized _PlistDictionaryUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _PlistDictionaryUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _PlistDictionaryUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _PlistDictionaryUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _PlistDictionaryUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _PlistDictionaryUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _PlistDictionaryUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _PlistDictionaryUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _PlistDictionaryUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _PlistDictionaryUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _PlistDictionaryUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _PlistDictionaryUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _PlistDictionaryUnkeyedDecodingContainer.decode(_:)();
}

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _PlistDictionaryUnkeyedDecodingContainer()
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

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _PlistDictionaryUnkeyedDecodingContainer(uint64_t a1, uint64_t a2)
{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _PlistDictionaryUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FA8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _PlistDictionaryUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FB0]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _PlistDictionaryUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FB8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _PlistDictionaryUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FC0]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _PlistDictionaryUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FC8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _PlistDictionaryUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FD8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _PlistDictionaryUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FE0]);
}

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _PlistDictionaryUnkeyedDecodingContainer(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

void _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFSu_Tt1g5(void *a1)
{
  v3 = v2;
  v81 = *MEMORY[0x1E69E9840];
  outlined init with copy of Any(a1, &v79);
  if (swift_dynamicCast())
  {
    if (v75 == 0x6C6C756E24 && *(&v75 + 1) == 0xE500000000000000)
    {

      return;
    }

    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return;
    }
  }

  outlined init with copy of Any(a1, &v79);
  v7 = MEMORY[0x1E69E6810];
  if (!swift_dynamicCast())
  {
    outlined init with copy of Any(a1, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17FixedWidthInteger_pMd);
    if (swift_dynamicCast())
    {
      v70 = v1;
      outlined init with take of Equatable(&v75, &v79);
      v8 = v80;
      v9 = __swift_project_boxed_opaque_existential_1(&v79, v80);
      v72 = v67;
      v10 = *(v8 - 8);
      v11 = *(v10 + 64);
      v12 = MEMORY[0x1EEE9AC00](v9);
      v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
      v14 = v67 - v13;
      (*(v10 + 16))(v67 - v13, v12);
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v69 = v2;
        v67[1] = v67;
        MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
        v71 = v10;
        v68 = v67 - v13;
        swift_getAssociatedConformanceWitness();
        v16 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v67[0] = v67;
        MEMORY[0x1EEE9AC00](v16);
        v14 = v68;
        v10 = v71;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v17 = dispatch thunk of static Comparable.< infix(_:_:)();
        v18 = *(v10 + 8);
        v3 = v69;
        v18(v67 - v13, v8);
        if (v17)
        {
          goto LABEL_11;
        }
      }

      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_19;
      }

      *&v75 = -1;
      v41 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v42 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v41)
      {
        v71 = v10;
        if (v42 <= 64)
        {
          v69 = v3;
          v52 = swift_getAssociatedTypeWitness();
          v70 = v67;
          MEMORY[0x1EEE9AC00](v52);
          swift_getAssociatedConformanceWitness();
          v53 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          MEMORY[0x1EEE9AC00](v53);
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v54 = dispatch thunk of static Comparable.> infix(_:_:)();
          (*(v71 + 8))(v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
          if (v54)
          {
            dispatch thunk of BinaryInteger._lowWord.getter();
          }

          v10 = v71;
          goto LABEL_19;
        }

        v69 = v67;
        MEMORY[0x1EEE9AC00](v42);
        lazy protocol witness table accessor for type UInt and conformance UInt();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v43 = dispatch thunk of static Comparable.< infix(_:_:)();
        v18 = *(v71 + 8);
        v10 = v71;
        v18(v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        if ((v43 & 1) == 0)
        {
LABEL_19:
          dispatch thunk of BinaryInteger._lowWord.getter();
          (*(v10 + 8))(v14, v8);
          __swift_destroy_boxed_opaque_existential_1(&v79);
          return;
        }
      }

      else
      {
        if (v42 <= 64)
        {
          dispatch thunk of BinaryInteger._lowWord.getter();
          goto LABEL_19;
        }

        MEMORY[0x1EEE9AC00](v42);
        v71 = v10;
        v49 = v67 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type UInt and conformance UInt();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v50 = dispatch thunk of static Comparable.< infix(_:_:)();
        v18 = *(v71 + 8);
        v51 = v49;
        v10 = v71;
        v18(v51, v8);
        if ((v50 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

LABEL_11:
      v18(v14, v8);
      v19 = type metadata accessor for DecodingError();
      swift_allocError();
      v21 = v20;
      *&v75 = 0;
      *(&v75 + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(52);
      MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
      __swift_project_boxed_opaque_existential_1(&v79, v80);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v22);

      MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
      MEMORY[0x1865CB0E0](1953384789, 0xE400000000000000);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
LABEL_17:
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6B00], v19);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(&v79);
      return;
    }

    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    outlined destroy of TermOfAddress?(&v75, &_ss17FixedWidthInteger_pSgMd);
    outlined init with copy of Any(a1, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSB_pMd);
    if (swift_dynamicCast())
    {
      outlined init with take of Equatable(&v75, &v79);
      v23 = __swift_project_boxed_opaque_existential_1(&v79, v80);
      v24 = MEMORY[0x1EEE9AC00](v23);
      (*(v26 + 16))(v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
      lazy protocol witness table accessor for type UInt and conformance UInt();
      FixedWidthInteger.init<A>(exactly:)();
      if (BYTE8(v75))
      {
        v19 = type metadata accessor for DecodingError();
        swift_allocError();
        v21 = v27;
        *&v75 = 0;
        *(&v75 + 1) = 0xE000000000000000;

        _StringGuts.grow(_:)(52);
        MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
        MEMORY[0x1865CB0E0](1953384789, 0xE400000000000000);
        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        goto LABEL_17;
      }

      __swift_destroy_boxed_opaque_existential_1(&v79);
      return;
    }

    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    outlined destroy of TermOfAddress?(&v75, &_sSB_pSgMd);
    outlined init with copy of Any(a1, &v79);
    type metadata accessor for NSNumber();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v44 = type metadata accessor for DecodingError();
      swift_allocError();
      v46 = v45;
      *&v79 = 0;
      *(&v79 + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(43);

      *&v79 = 0xD000000000000022;
      *(&v79 + 1) = 0x80000001814820A0;
      v47 = specialized static DecodingError._typeDescription(of:)(a1);
      MEMORY[0x1865CB0E0](v47);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v46 = v7;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
      swift_willThrow();
      return;
    }

    v28 = v75;
    v29 = type metadata accessor for DecodingError();
    v71 = swift_allocError();
    v31 = v30;
    v32 = 0xE000000000000000;
    *&v79 = 0;
    *(&v79 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(52);
    v75 = v79;
    MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
    v72 = v28;
    v33 = [v28 description];
    if (!v33)
    {
LABEL_64:
      MEMORY[0x1865CB0E0](v33, v32);

      MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
      MEMORY[0x1865CB0E0](1953384789, 0xE400000000000000);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6B00], v29);
      swift_willThrow();

      return;
    }

    v34 = v33;
    isTaggedPointer = _objc_isTaggedPointer(v33);
    v36 = v34;
    v37 = v36;
    if (!isTaggedPointer)
    {
LABEL_36:
      LOBYTE(v78[0]) = 0;
      *&v79 = 0;
      LOBYTE(v73) = 0;
      v74 = 0;
      if (__CFStringIsCF())
      {
        if (v79)
        {
          if (v74 == 1)
          {
            if (v78[0])
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v65 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_62;
          }

LABEL_61:
          v65 = String.init(_cocoaString:)();
LABEL_62:
          v62 = v65;
          v32 = v66;
          goto LABEL_63;
        }
      }

      else
      {
        v55 = v37;
        v56 = String.init(_nativeStorage:)();
        if (v57)
        {
          v32 = v57;
          v58 = v56;

          v33 = v58;
          goto LABEL_64;
        }

        *&v79 = [v55 length];
        if (v79)
        {
          goto LABEL_61;
        }
      }

      v33 = 0;
      v32 = 0xE000000000000000;
      goto LABEL_64;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v36);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v39 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v32 = v40;

          v33 = v39;
          goto LABEL_64;
        }

        goto LABEL_36;
      }

      v59 = [v37 UTF8String];
      if (v59)
      {
        v60 = String.init(utf8String:)(v59);
        if (v61)
        {
          v62 = v60;
          v32 = v61;
          goto LABEL_60;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    v73 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v63 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v64)
    {
      [v37 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v62 = v78[0];
      v32 = v78[1];
LABEL_63:

      v33 = v62;
      goto LABEL_64;
    }

    v32 = v64;
    v62 = v63;
LABEL_60:

    goto LABEL_63;
  }
}

void _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFSi_Tt1g5(void *a1)
{
  v75 = *MEMORY[0x1E69E9840];
  outlined init with copy of Any(a1, &v72);
  if (swift_dynamicCast())
  {
    if (v68 == 0x6C6C756E24 && *(&v68 + 1) == 0xE500000000000000)
    {

      return;
    }

    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      return;
    }
  }

  outlined init with copy of Any(a1, &v72);
  v5 = MEMORY[0x1E69E6530];
  if (!swift_dynamicCast())
  {
    outlined init with copy of Any(a1, v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17FixedWidthInteger_pMd);
    if (swift_dynamicCast())
    {
      v64 = v1;
      outlined init with take of Equatable(&v68, &v72);
      v7 = v73;
      v6 = v74;
      v8 = __swift_project_boxed_opaque_existential_1(&v72, v73);
      v65 = &v61;
      v9 = *(v7 - 8);
      v10 = *(v9 + 64);
      v11 = MEMORY[0x1EEE9AC00](v8);
      v12 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v12, v11);
      v13 = *(v6 + 8);
      if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
      {
        goto LABEL_43;
      }

      *&v68 = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        v14 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v14 < 64)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v39 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v14 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if ((v39 & 1) == 0)
        {
          if (v14 < 64)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        }

        if (v14 <= 64)
        {
          v61 = *(*(v13 + 24) + 16);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v63 = &v61;
          MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
          swift_getAssociatedConformanceWitness();
          v46 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v62 = &v61;
          MEMORY[0x1EEE9AC00](v46);
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          LODWORD(v61) = dispatch thunk of static Comparable.< infix(_:_:)();
          v40 = *(v9 + 8);
          v40(&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
          if ((v61 & 1) == 0)
          {
LABEL_42:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_43;
          }

LABEL_31:
          v40(&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
LABEL_48:
          v19 = type metadata accessor for DecodingError();
          swift_allocError();
          v21 = v51;
          *&v68 = 0;
          *(&v68 + 1) = 0xE000000000000000;

          _StringGuts.grow(_:)(52);
          MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
          __swift_project_boxed_opaque_existential_1(&v72, v73);
          v52 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1865CB0E0](v52);

          MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
          MEMORY[0x1865CB0E0](7630409, 0xE300000000000000);
          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          goto LABEL_49;
        }
      }

      v63 = &v61;
      MEMORY[0x1EEE9AC00](v14);
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      LODWORD(v62) = dispatch thunk of static Comparable.< infix(_:_:)();
      v40 = *(v9 + 8);
      v40(&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      if (v62)
      {
        goto LABEL_31;
      }

LABEL_43:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
      {
        goto LABEL_55;
      }

      *&v68 = 0x7FFFFFFFFFFFFFFFLL;
      v47 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v48 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v47)
      {
        if (v48 > 64)
        {
          goto LABEL_46;
        }
      }

      else if (v48 >= 64)
      {
LABEL_46:
        v63 = &v61;
        MEMORY[0x1EEE9AC00](v48);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v49 = dispatch thunk of static Comparable.< infix(_:_:)();
        v50 = *(v9 + 8);
        v50(&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        if (v49)
        {
          v50(v12, v7);
          goto LABEL_48;
        }

LABEL_55:
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v9 + 8))(v12, v7);
LABEL_56:
        __swift_destroy_boxed_opaque_existential_1(&v72);
        return;
      }

      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_55;
    }

    v70 = 0;
    v68 = 0u;
    v69 = 0u;
    outlined destroy of TermOfAddress?(&v68, &_ss17FixedWidthInteger_pSgMd);
    outlined init with copy of Any(a1, v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSB_pMd);
    if (swift_dynamicCast())
    {
      outlined init with take of Equatable(&v68, &v72);
      v15 = __swift_project_boxed_opaque_existential_1(&v72, v73);
      v16 = MEMORY[0x1EEE9AC00](v15);
      (*(v18 + 16))(&v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
      lazy protocol witness table accessor for type Int and conformance Int();
      FixedWidthInteger.init<A>(exactly:)();
      if ((BYTE8(v68) & 1) == 0)
      {
        goto LABEL_56;
      }

      v19 = type metadata accessor for DecodingError();
      swift_allocError();
      v21 = v20;
      *&v68 = 0;
      *(&v68 + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(52);
      MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
      MEMORY[0x1865CB0E0](7630409, 0xE300000000000000);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
LABEL_49:
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6B00], v19);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(&v72);
      return;
    }

    v70 = 0;
    v68 = 0u;
    v69 = 0u;
    outlined destroy of TermOfAddress?(&v68, &_sSB_pSgMd);
    outlined init with copy of Any(a1, &v72);
    type metadata accessor for NSNumber();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v35 = type metadata accessor for DecodingError();
      swift_allocError();
      v37 = v36;
      *&v72 = 0;
      *(&v72 + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(43);

      *&v72 = 0xD000000000000021;
      *(&v72 + 1) = 0x80000001814821C0;
      v38 = specialized static DecodingError._typeDescription(of:)(a1);
      MEMORY[0x1865CB0E0](v38);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v37 = v5;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
      swift_willThrow();
      return;
    }

    v22 = v68;
    v23 = type metadata accessor for DecodingError();
    v65 = swift_allocError();
    v25 = v24;
    v26 = 0xE000000000000000;
    *&v72 = 0;
    *(&v72 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(52);
    v68 = v72;
    MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
    v27 = [v22 description];
    if (!v27)
    {
      goto LABEL_74;
    }

    v28 = v27;
    isTaggedPointer = _objc_isTaggedPointer(v27);
    v30 = v28;
    v31 = v30;
    if (!isTaggedPointer)
    {
      goto LABEL_32;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v30);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v33 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v26 = v34;

          v27 = v33;
LABEL_74:
          MEMORY[0x1865CB0E0](v27, v26);

          MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
          MEMORY[0x1865CB0E0](7630409, 0xE300000000000000);
          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
          (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6B00], v23);
          swift_willThrow();

          return;
        }

LABEL_32:
        LOBYTE(v71[0]) = 0;
        *&v72 = 0;
        LOBYTE(v66) = 0;
        v67 = 0;
        if (__CFStringIsCF())
        {
          if (v72)
          {
            if (v67 == 1)
            {
              if (v71[0])
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v59 = String.init<A>(_immortalCocoaString:count:encoding:)();
              goto LABEL_72;
            }

LABEL_71:
            v59 = String.init(_cocoaString:)();
LABEL_72:
            v56 = v59;
            v26 = v60;
            goto LABEL_73;
          }
        }

        else
        {
          v41 = v31;
          v42 = String.init(_nativeStorage:)();
          if (v43)
          {
            v26 = v43;
            v44 = v42;

            v27 = v44;
            goto LABEL_74;
          }

          *&v72 = [v41 length];
          if (v72)
          {
            goto LABEL_71;
          }
        }

        v27 = 0;
        v26 = 0xE000000000000000;
        goto LABEL_74;
      }

      v53 = [v31 UTF8String];
      if (v53)
      {
        v54 = String.init(utf8String:)(v53);
        if (v55)
        {
          v56 = v54;
          v26 = v55;
          goto LABEL_70;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    v66 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v57 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v58)
    {
      [v31 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v56 = v71[0];
      v26 = v71[1];
LABEL_73:

      v27 = v56;
      goto LABEL_74;
    }

    v26 = v58;
    v56 = v57;
LABEL_70:

    goto LABEL_73;
  }
}

void _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs5UInt8V_Tt1g5(void *a1)
{
  v3 = v2;
  v81 = *MEMORY[0x1E69E9840];
  outlined init with copy of Any(a1, &v79);
  if (swift_dynamicCast())
  {
    if (v75 == 0x6C6C756E24 && *(&v75 + 1) == 0xE500000000000000)
    {

      return;
    }

    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return;
    }
  }

  outlined init with copy of Any(a1, &v79);
  v7 = MEMORY[0x1E69E7508];
  if (swift_dynamicCast())
  {
    return;
  }

  outlined init with copy of Any(a1, v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17FixedWidthInteger_pMd);
  if (swift_dynamicCast())
  {
    v70 = v1;
    outlined init with take of Equatable(&v75, &v79);
    v8 = v80;
    v9 = __swift_project_boxed_opaque_existential_1(&v79, v80);
    v72 = v67;
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    v12 = MEMORY[0x1EEE9AC00](v9);
    v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
    v14 = v67 - v13;
    (*(v10 + 16))(v67 - v13, v12);
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v69 = v2;
      v67[1] = v67;
      MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      v71 = v10;
      v68 = v67 - v13;
      swift_getAssociatedConformanceWitness();
      v16 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v67[0] = v67;
      MEMORY[0x1EEE9AC00](v16);
      v14 = v68;
      v10 = v71;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v17 = dispatch thunk of static Comparable.< infix(_:_:)();
      v18 = *(v10 + 8);
      v3 = v69;
      v18(v67 - v13, v8);
      if (v17)
      {
        goto LABEL_11;
      }
    }

    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 8)
    {
      goto LABEL_19;
    }

    LOBYTE(v75) = -1;
    v41 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v42 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v41)
    {
      v71 = v10;
      if (v42 <= 8)
      {
        v69 = v3;
        v52 = swift_getAssociatedTypeWitness();
        v70 = v67;
        MEMORY[0x1EEE9AC00](v52);
        swift_getAssociatedConformanceWitness();
        v53 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        MEMORY[0x1EEE9AC00](v53);
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v54 = dispatch thunk of static Comparable.> infix(_:_:)();
        (*(v71 + 8))(v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        if (v54)
        {
          dispatch thunk of BinaryInteger._lowWord.getter();
        }

        v10 = v71;
        goto LABEL_19;
      }

      v69 = v67;
      MEMORY[0x1EEE9AC00](v42);
      lazy protocol witness table accessor for type UInt8 and conformance UInt8();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v43 = dispatch thunk of static Comparable.< infix(_:_:)();
      v18 = *(v71 + 8);
      v10 = v71;
      v18(v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
      if ((v43 & 1) == 0)
      {
LABEL_19:
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v10 + 8))(v14, v8);
LABEL_31:
        __swift_destroy_boxed_opaque_existential_1(&v79);
        return;
      }
    }

    else
    {
      if (v42 <= 8)
      {
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_19;
      }

      MEMORY[0x1EEE9AC00](v42);
      v71 = v10;
      v49 = v67 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type UInt8 and conformance UInt8();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v50 = dispatch thunk of static Comparable.< infix(_:_:)();
      v18 = *(v71 + 8);
      v51 = v49;
      v10 = v71;
      v18(v51, v8);
      if ((v50 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_11:
    v18(v14, v8);
    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    *&v75 = 0;
    *(&v75 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(52);
    MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
    __swift_project_boxed_opaque_existential_1(&v79, v80);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v22);

    MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
    MEMORY[0x1865CB0E0](0x38746E4955, 0xE500000000000000);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
LABEL_17:
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6B00], v19);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(&v79);
    return;
  }

  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  outlined destroy of TermOfAddress?(&v75, &_ss17FixedWidthInteger_pSgMd);
  outlined init with copy of Any(a1, v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSB_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v75, &v79);
    v23 = __swift_project_boxed_opaque_existential_1(&v79, v80);
    v24 = MEMORY[0x1EEE9AC00](v23);
    (*(v26 + 16))(v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
    lazy protocol witness table accessor for type UInt8 and conformance UInt8();
    FixedWidthInteger.init<A>(exactly:)();
    if (BYTE1(v75))
    {
      v19 = type metadata accessor for DecodingError();
      swift_allocError();
      v21 = v27;
      *&v75 = 0;
      *(&v75 + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(52);
      MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
      MEMORY[0x1865CB0E0](0x38746E4955, 0xE500000000000000);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      goto LABEL_17;
    }

    goto LABEL_31;
  }

  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  outlined destroy of TermOfAddress?(&v75, &_sSB_pSgMd);
  outlined init with copy of Any(a1, &v79);
  type metadata accessor for NSNumber();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v44 = type metadata accessor for DecodingError();
    swift_allocError();
    v46 = v45;
    *&v79 = 0;
    *(&v79 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(43);

    *&v79 = 0xD000000000000023;
    *(&v79 + 1) = 0x8000000181482070;
    v47 = specialized static DecodingError._typeDescription(of:)(a1);
    MEMORY[0x1865CB0E0](v47);

    MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v46 = v7;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
    swift_willThrow();
    return;
  }

  v28 = v75;
  v29 = type metadata accessor for DecodingError();
  v71 = swift_allocError();
  v31 = v30;
  v32 = 0xE000000000000000;
  *&v79 = 0;
  *(&v79 + 1) = 0xE000000000000000;

  _StringGuts.grow(_:)(52);
  v75 = v79;
  MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
  v72 = v28;
  v33 = [v28 description];
  if (!v33)
  {
    goto LABEL_64;
  }

  v34 = v33;
  isTaggedPointer = _objc_isTaggedPointer(v33);
  v36 = v34;
  v37 = v36;
  if (!isTaggedPointer)
  {
    goto LABEL_36;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v36);
  if (!TaggedPointerTag)
  {
    v73 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v63 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v64)
    {
      [v37 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v62 = v78[0];
      v32 = v78[1];
LABEL_63:

      v33 = v62;
      goto LABEL_64;
    }

    v32 = v64;
    v62 = v63;
LABEL_60:

    goto LABEL_63;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v39 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v32 = v40;

      v33 = v39;
LABEL_64:
      MEMORY[0x1865CB0E0](v33, v32);

      MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
      MEMORY[0x1865CB0E0](0x38746E4955, 0xE500000000000000);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6B00], v29);
      swift_willThrow();

      return;
    }

LABEL_36:
    LOBYTE(v78[0]) = 0;
    *&v79 = 0;
    LOBYTE(v73) = 0;
    v74 = 0;
    if (__CFStringIsCF())
    {
      if (v79)
      {
        if (v74 == 1)
        {
          if (v78[0])
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v65 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_62;
        }

LABEL_61:
        v65 = String.init(_cocoaString:)();
LABEL_62:
        v62 = v65;
        v32 = v66;
        goto LABEL_63;
      }
    }

    else
    {
      v55 = v37;
      v56 = String.init(_nativeStorage:)();
      if (v57)
      {
        v32 = v57;
        v58 = v56;

        v33 = v58;
        goto LABEL_64;
      }

      *&v79 = [v55 length];
      if (v79)
      {
        goto LABEL_61;
      }
    }

    v33 = 0;
    v32 = 0xE000000000000000;
    goto LABEL_64;
  }

  v59 = [v37 UTF8String];
  if (v59)
  {
    v60 = String.init(utf8String:)(v59);
    if (v61)
    {
      v62 = v60;
      v32 = v61;
      goto LABEL_60;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs6UInt16V_Tt1g5(void *a1)
{
  v3 = v2;
  v81 = *MEMORY[0x1E69E9840];
  outlined init with copy of Any(a1, &v79);
  if (swift_dynamicCast())
  {
    if (v75 == 0x6C6C756E24 && *(&v75 + 1) == 0xE500000000000000)
    {

      return;
    }

    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return;
    }
  }

  outlined init with copy of Any(a1, &v79);
  v7 = MEMORY[0x1E69E75F8];
  if (swift_dynamicCast())
  {
    return;
  }

  outlined init with copy of Any(a1, v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17FixedWidthInteger_pMd);
  if (swift_dynamicCast())
  {
    v70 = v1;
    outlined init with take of Equatable(&v75, &v79);
    v8 = v80;
    v9 = __swift_project_boxed_opaque_existential_1(&v79, v80);
    v72 = v67;
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    v12 = MEMORY[0x1EEE9AC00](v9);
    v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
    v14 = v67 - v13;
    (*(v10 + 16))(v67 - v13, v12);
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v69 = v2;
      v67[1] = v67;
      MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      v71 = v10;
      v68 = v67 - v13;
      swift_getAssociatedConformanceWitness();
      v16 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v67[0] = v67;
      MEMORY[0x1EEE9AC00](v16);
      v14 = v68;
      v10 = v71;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v17 = dispatch thunk of static Comparable.< infix(_:_:)();
      v18 = *(v10 + 8);
      v3 = v69;
      v18(v67 - v13, v8);
      if (v17)
      {
        goto LABEL_11;
      }
    }

    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 16)
    {
      goto LABEL_19;
    }

    LOWORD(v75) = -1;
    v41 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v42 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v41)
    {
      v71 = v10;
      if (v42 <= 16)
      {
        v69 = v3;
        v52 = swift_getAssociatedTypeWitness();
        v70 = v67;
        MEMORY[0x1EEE9AC00](v52);
        swift_getAssociatedConformanceWitness();
        v53 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        MEMORY[0x1EEE9AC00](v53);
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v54 = dispatch thunk of static Comparable.> infix(_:_:)();
        (*(v71 + 8))(v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        if (v54)
        {
          dispatch thunk of BinaryInteger._lowWord.getter();
        }

        v10 = v71;
        goto LABEL_19;
      }

      v69 = v67;
      MEMORY[0x1EEE9AC00](v42);
      lazy protocol witness table accessor for type UInt16 and conformance UInt16();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v43 = dispatch thunk of static Comparable.< infix(_:_:)();
      v18 = *(v71 + 8);
      v10 = v71;
      v18(v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
      if ((v43 & 1) == 0)
      {
LABEL_19:
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v10 + 8))(v14, v8);
LABEL_31:
        __swift_destroy_boxed_opaque_existential_1(&v79);
        return;
      }
    }

    else
    {
      if (v42 <= 16)
      {
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_19;
      }

      MEMORY[0x1EEE9AC00](v42);
      v71 = v10;
      v49 = v67 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type UInt16 and conformance UInt16();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v50 = dispatch thunk of static Comparable.< infix(_:_:)();
      v18 = *(v71 + 8);
      v51 = v49;
      v10 = v71;
      v18(v51, v8);
      if ((v50 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_11:
    v18(v14, v8);
    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    *&v75 = 0;
    *(&v75 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(52);
    MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
    __swift_project_boxed_opaque_existential_1(&v79, v80);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v22);

    MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
    MEMORY[0x1865CB0E0](0x3631746E4955, 0xE600000000000000);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
LABEL_17:
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6B00], v19);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(&v79);
    return;
  }

  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  outlined destroy of TermOfAddress?(&v75, &_ss17FixedWidthInteger_pSgMd);
  outlined init with copy of Any(a1, v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSB_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v75, &v79);
    v23 = __swift_project_boxed_opaque_existential_1(&v79, v80);
    v24 = MEMORY[0x1EEE9AC00](v23);
    (*(v26 + 16))(v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
    lazy protocol witness table accessor for type UInt16 and conformance UInt16();
    FixedWidthInteger.init<A>(exactly:)();
    if (BYTE2(v75))
    {
      v19 = type metadata accessor for DecodingError();
      swift_allocError();
      v21 = v27;
      *&v75 = 0;
      *(&v75 + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(52);
      MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
      MEMORY[0x1865CB0E0](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      goto LABEL_17;
    }

    goto LABEL_31;
  }

  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  outlined destroy of TermOfAddress?(&v75, &_sSB_pSgMd);
  outlined init with copy of Any(a1, &v79);
  type metadata accessor for NSNumber();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v44 = type metadata accessor for DecodingError();
    swift_allocError();
    v46 = v45;
    *&v79 = 0;
    *(&v79 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(43);

    *&v79 = 0xD000000000000024;
    *(&v79 + 1) = 0x8000000181482040;
    v47 = specialized static DecodingError._typeDescription(of:)(a1);
    MEMORY[0x1865CB0E0](v47);

    MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v46 = v7;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
    swift_willThrow();
    return;
  }

  v28 = v75;
  v29 = type metadata accessor for DecodingError();
  v71 = swift_allocError();
  v31 = v30;
  v32 = 0xE000000000000000;
  *&v79 = 0;
  *(&v79 + 1) = 0xE000000000000000;

  _StringGuts.grow(_:)(52);
  v75 = v79;
  MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
  v72 = v28;
  v33 = [v28 description];
  if (!v33)
  {
    goto LABEL_64;
  }

  v34 = v33;
  isTaggedPointer = _objc_isTaggedPointer(v33);
  v36 = v34;
  v37 = v36;
  if (!isTaggedPointer)
  {
    goto LABEL_36;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v36);
  if (!TaggedPointerTag)
  {
    v73 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v63 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v64)
    {
      [v37 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v62 = v78[0];
      v32 = v78[1];
LABEL_63:

      v33 = v62;
      goto LABEL_64;
    }

    v32 = v64;
    v62 = v63;
LABEL_60:

    goto LABEL_63;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v39 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v32 = v40;

      v33 = v39;
LABEL_64:
      MEMORY[0x1865CB0E0](v33, v32);

      MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
      MEMORY[0x1865CB0E0](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6B00], v29);
      swift_willThrow();

      return;
    }

LABEL_36:
    LOBYTE(v78[0]) = 0;
    *&v79 = 0;
    LOBYTE(v73) = 0;
    v74 = 0;
    if (__CFStringIsCF())
    {
      if (v79)
      {
        if (v74 == 1)
        {
          if (v78[0])
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v65 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_62;
        }

LABEL_61:
        v65 = String.init(_cocoaString:)();
LABEL_62:
        v62 = v65;
        v32 = v66;
        goto LABEL_63;
      }
    }

    else
    {
      v55 = v37;
      v56 = String.init(_nativeStorage:)();
      if (v57)
      {
        v32 = v57;
        v58 = v56;

        v33 = v58;
        goto LABEL_64;
      }

      *&v79 = [v55 length];
      if (v79)
      {
        goto LABEL_61;
      }
    }

    v33 = 0;
    v32 = 0xE000000000000000;
    goto LABEL_64;
  }

  v59 = [v37 UTF8String];
  if (v59)
  {
    v60 = String.init(utf8String:)(v59);
    if (v61)
    {
      v62 = v60;
      v32 = v61;
      goto LABEL_60;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs4Int8V_Tt1g5(void *a1)
{
  v75 = *MEMORY[0x1E69E9840];
  outlined init with copy of Any(a1, &v72);
  if (swift_dynamicCast())
  {
    if (v68 == 0x6C6C756E24 && *(&v68 + 1) == 0xE500000000000000)
    {

      return;
    }

    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      return;
    }
  }

  outlined init with copy of Any(a1, &v72);
  v5 = MEMORY[0x1E69E7230];
  if (swift_dynamicCast())
  {
    return;
  }

  outlined init with copy of Any(a1, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17FixedWidthInteger_pMd);
  if (swift_dynamicCast())
  {
    v64 = v1;
    outlined init with take of Equatable(&v68, &v72);
    v7 = v73;
    v6 = v74;
    v8 = __swift_project_boxed_opaque_existential_1(&v72, v73);
    v65 = &v61;
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    v11 = MEMORY[0x1EEE9AC00](v8);
    v12 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v11);
    v13 = *(v6 + 8);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 9)
    {
      LOBYTE(v68) = 0x80;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        v14 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v14 < 8)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v39 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v14 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if ((v39 & 1) == 0)
        {
          if (v14 >= 8)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        if (v14 <= 8)
        {
          v61 = *(*(v13 + 24) + 16);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v63 = &v61;
          MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
          swift_getAssociatedConformanceWitness();
          v46 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v62 = &v61;
          MEMORY[0x1EEE9AC00](v46);
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          LODWORD(v61) = dispatch thunk of static Comparable.< infix(_:_:)();
          v40 = *(v9 + 8);
          v40(&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
          if ((v61 & 1) == 0)
          {
LABEL_42:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_43;
          }

LABEL_31:
          v40(&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
LABEL_48:
          v19 = type metadata accessor for DecodingError();
          swift_allocError();
          v21 = v51;
          *&v68 = 0;
          *(&v68 + 1) = 0xE000000000000000;

          _StringGuts.grow(_:)(52);
          MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
          __swift_project_boxed_opaque_existential_1(&v72, v73);
          v52 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1865CB0E0](v52);

          MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
          MEMORY[0x1865CB0E0](947154505, 0xE400000000000000);
          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          goto LABEL_49;
        }
      }

      v63 = &v61;
      MEMORY[0x1EEE9AC00](v14);
      lazy protocol witness table accessor for type Int8 and conformance Int8();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      LODWORD(v62) = dispatch thunk of static Comparable.< infix(_:_:)();
      v40 = *(v9 + 8);
      v40(&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      if (v62)
      {
        goto LABEL_31;
      }
    }

LABEL_43:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 8 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 8 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
    {
      goto LABEL_55;
    }

    LOBYTE(v68) = 127;
    v47 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v48 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v47)
    {
      if (v48 > 8)
      {
        goto LABEL_46;
      }
    }

    else if (v48 >= 8)
    {
LABEL_46:
      v63 = &v61;
      MEMORY[0x1EEE9AC00](v48);
      lazy protocol witness table accessor for type Int8 and conformance Int8();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v49 = dispatch thunk of static Comparable.< infix(_:_:)();
      v50 = *(v9 + 8);
      v50(&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      if (v49)
      {
        v50(v12, v7);
        goto LABEL_48;
      }

LABEL_55:
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v9 + 8))(v12, v7);
LABEL_56:
      __swift_destroy_boxed_opaque_existential_1(&v72);
      return;
    }

    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_55;
  }

  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  outlined destroy of TermOfAddress?(&v68, &_ss17FixedWidthInteger_pSgMd);
  outlined init with copy of Any(a1, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSB_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v68, &v72);
    v15 = __swift_project_boxed_opaque_existential_1(&v72, v73);
    v16 = MEMORY[0x1EEE9AC00](v15);
    (*(v18 + 16))(&v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
    lazy protocol witness table accessor for type Int8 and conformance Int8();
    FixedWidthInteger.init<A>(exactly:)();
    if ((BYTE1(v68) & 1) == 0)
    {
      goto LABEL_56;
    }

    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    *&v68 = 0;
    *(&v68 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(52);
    MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
    MEMORY[0x1865CB0E0](947154505, 0xE400000000000000);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
LABEL_49:
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6B00], v19);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(&v72);
    return;
  }

  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  outlined destroy of TermOfAddress?(&v68, &_sSB_pSgMd);
  outlined init with copy of Any(a1, &v72);
  type metadata accessor for NSNumber();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v35 = type metadata accessor for DecodingError();
    swift_allocError();
    v37 = v36;
    *&v72 = 0;
    *(&v72 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(43);

    *&v72 = 0xD000000000000022;
    *(&v72 + 1) = 0x8000000181482190;
    v38 = specialized static DecodingError._typeDescription(of:)(a1);
    MEMORY[0x1865CB0E0](v38);

    MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v37 = v5;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    return;
  }

  v22 = v68;
  v23 = type metadata accessor for DecodingError();
  v65 = swift_allocError();
  v25 = v24;
  v26 = 0xE000000000000000;
  *&v72 = 0;
  *(&v72 + 1) = 0xE000000000000000;

  _StringGuts.grow(_:)(52);
  v68 = v72;
  MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
  v27 = [v22 description];
  if (!v27)
  {
    goto LABEL_74;
  }

  v28 = v27;
  isTaggedPointer = _objc_isTaggedPointer(v27);
  v30 = v28;
  v31 = v30;
  if (!isTaggedPointer)
  {
    goto LABEL_32;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v30);
  if (!TaggedPointerTag)
  {
    v66 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v57 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v58)
    {
      [v31 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v56 = v71[0];
      v26 = v71[1];
LABEL_73:

      v27 = v56;
      goto LABEL_74;
    }

    v26 = v58;
    v56 = v57;
LABEL_70:

    goto LABEL_73;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v33 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v26 = v34;

      v27 = v33;
LABEL_74:
      MEMORY[0x1865CB0E0](v27, v26);

      MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
      MEMORY[0x1865CB0E0](947154505, 0xE400000000000000);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6B00], v23);
      swift_willThrow();

      return;
    }

LABEL_32:
    LOBYTE(v71[0]) = 0;
    *&v72 = 0;
    LOBYTE(v66) = 0;
    v67 = 0;
    if (__CFStringIsCF())
    {
      if (v72)
      {
        if (v67 == 1)
        {
          if (v71[0])
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v59 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_72;
        }

LABEL_71:
        v59 = String.init(_cocoaString:)();
LABEL_72:
        v56 = v59;
        v26 = v60;
        goto LABEL_73;
      }
    }

    else
    {
      v41 = v31;
      v42 = String.init(_nativeStorage:)();
      if (v43)
      {
        v26 = v43;
        v44 = v42;

        v27 = v44;
        goto LABEL_74;
      }

      *&v72 = [v41 length];
      if (v72)
      {
        goto LABEL_71;
      }
    }

    v27 = 0;
    v26 = 0xE000000000000000;
    goto LABEL_74;
  }

  v53 = [v31 UTF8String];
  if (v53)
  {
    v54 = String.init(utf8String:)(v53);
    if (v55)
    {
      v56 = v54;
      v26 = v55;
      goto LABEL_70;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs5Int16V_Tt1g5(void *a1)
{
  v75 = *MEMORY[0x1E69E9840];
  outlined init with copy of Any(a1, &v72);
  if (swift_dynamicCast())
  {
    if (v68 == 0x6C6C756E24 && *(&v68 + 1) == 0xE500000000000000)
    {

      return;
    }

    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      return;
    }
  }

  outlined init with copy of Any(a1, &v72);
  v5 = MEMORY[0x1E69E7290];
  if (swift_dynamicCast())
  {
    return;
  }

  outlined init with copy of Any(a1, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17FixedWidthInteger_pMd);
  if (swift_dynamicCast())
  {
    v64 = v1;
    outlined init with take of Equatable(&v68, &v72);
    v7 = v73;
    v6 = v74;
    v8 = __swift_project_boxed_opaque_existential_1(&v72, v73);
    v65 = &v61;
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    v11 = MEMORY[0x1EEE9AC00](v8);
    v12 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v11);
    v13 = *(v6 + 8);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 17)
    {
      LOWORD(v68) = 0x8000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        v14 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v14 < 16)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v39 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v14 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if ((v39 & 1) == 0)
        {
          if (v14 >= 16)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        if (v14 <= 16)
        {
          v61 = *(*(v13 + 24) + 16);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v63 = &v61;
          MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
          swift_getAssociatedConformanceWitness();
          v46 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v62 = &v61;
          MEMORY[0x1EEE9AC00](v46);
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          LODWORD(v61) = dispatch thunk of static Comparable.< infix(_:_:)();
          v40 = *(v9 + 8);
          v40(&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
          if ((v61 & 1) == 0)
          {
LABEL_42:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_43;
          }

LABEL_31:
          v40(&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
LABEL_48:
          v19 = type metadata accessor for DecodingError();
          swift_allocError();
          v21 = v51;
          *&v68 = 0;
          *(&v68 + 1) = 0xE000000000000000;

          _StringGuts.grow(_:)(52);
          MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
          __swift_project_boxed_opaque_existential_1(&v72, v73);
          v52 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1865CB0E0](v52);

          MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
          MEMORY[0x1865CB0E0](0x3631746E49, 0xE500000000000000);
          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          goto LABEL_49;
        }
      }

      v63 = &v61;
      MEMORY[0x1EEE9AC00](v14);
      lazy protocol witness table accessor for type Int16 and conformance Int16();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      LODWORD(v62) = dispatch thunk of static Comparable.< infix(_:_:)();
      v40 = *(v9 + 8);
      v40(&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      if (v62)
      {
        goto LABEL_31;
      }
    }

LABEL_43:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 16 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 16 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
    {
      goto LABEL_55;
    }

    LOWORD(v68) = 0x7FFF;
    v47 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v48 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v47)
    {
      if (v48 > 16)
      {
        goto LABEL_46;
      }
    }

    else if (v48 >= 16)
    {
LABEL_46:
      v63 = &v61;
      MEMORY[0x1EEE9AC00](v48);
      lazy protocol witness table accessor for type Int16 and conformance Int16();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v49 = dispatch thunk of static Comparable.< infix(_:_:)();
      v50 = *(v9 + 8);
      v50(&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      if (v49)
      {
        v50(v12, v7);
        goto LABEL_48;
      }

LABEL_55:
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v9 + 8))(v12, v7);
LABEL_56:
      __swift_destroy_boxed_opaque_existential_1(&v72);
      return;
    }

    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_55;
  }

  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  outlined destroy of TermOfAddress?(&v68, &_ss17FixedWidthInteger_pSgMd);
  outlined init with copy of Any(a1, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSB_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v68, &v72);
    v15 = __swift_project_boxed_opaque_existential_1(&v72, v73);
    v16 = MEMORY[0x1EEE9AC00](v15);
    (*(v18 + 16))(&v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
    lazy protocol witness table accessor for type Int16 and conformance Int16();
    FixedWidthInteger.init<A>(exactly:)();
    if ((BYTE2(v68) & 1) == 0)
    {
      goto LABEL_56;
    }

    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    *&v68 = 0;
    *(&v68 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(52);
    MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
    MEMORY[0x1865CB0E0](0x3631746E49, 0xE500000000000000);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
LABEL_49:
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6B00], v19);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(&v72);
    return;
  }

  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  outlined destroy of TermOfAddress?(&v68, &_sSB_pSgMd);
  outlined init with copy of Any(a1, &v72);
  type metadata accessor for NSNumber();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v35 = type metadata accessor for DecodingError();
    swift_allocError();
    v37 = v36;
    *&v72 = 0;
    *(&v72 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(43);

    *&v72 = 0xD000000000000023;
    *(&v72 + 1) = 0x8000000181482160;
    v38 = specialized static DecodingError._typeDescription(of:)(a1);
    MEMORY[0x1865CB0E0](v38);

    MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v37 = v5;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    return;
  }

  v22 = v68;
  v23 = type metadata accessor for DecodingError();
  v65 = swift_allocError();
  v25 = v24;
  v26 = 0xE000000000000000;
  *&v72 = 0;
  *(&v72 + 1) = 0xE000000000000000;

  _StringGuts.grow(_:)(52);
  v68 = v72;
  MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
  v27 = [v22 description];
  if (!v27)
  {
    goto LABEL_74;
  }

  v28 = v27;
  isTaggedPointer = _objc_isTaggedPointer(v27);
  v30 = v28;
  v31 = v30;
  if (!isTaggedPointer)
  {
    goto LABEL_32;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v30);
  if (!TaggedPointerTag)
  {
    v66 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v57 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v58)
    {
      [v31 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v56 = v71[0];
      v26 = v71[1];
LABEL_73:

      v27 = v56;
      goto LABEL_74;
    }

    v26 = v58;
    v56 = v57;
LABEL_70:

    goto LABEL_73;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v33 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v26 = v34;

      v27 = v33;
LABEL_74:
      MEMORY[0x1865CB0E0](v27, v26);

      MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
      MEMORY[0x1865CB0E0](0x3631746E49, 0xE500000000000000);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6B00], v23);
      swift_willThrow();

      return;
    }

LABEL_32:
    LOBYTE(v71[0]) = 0;
    *&v72 = 0;
    LOBYTE(v66) = 0;
    v67 = 0;
    if (__CFStringIsCF())
    {
      if (v72)
      {
        if (v67 == 1)
        {
          if (v71[0])
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v59 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_72;
        }

LABEL_71:
        v59 = String.init(_cocoaString:)();
LABEL_72:
        v56 = v59;
        v26 = v60;
        goto LABEL_73;
      }
    }

    else
    {
      v41 = v31;
      v42 = String.init(_nativeStorage:)();
      if (v43)
      {
        v26 = v43;
        v44 = v42;

        v27 = v44;
        goto LABEL_74;
      }

      *&v72 = [v41 length];
      if (v72)
      {
        goto LABEL_71;
      }
    }

    v27 = 0;
    v26 = 0xE000000000000000;
    goto LABEL_74;
  }

  v53 = [v31 UTF8String];
  if (v53)
  {
    v54 = String.init(utf8String:)(v53);
    if (v55)
    {
      v56 = v54;
      v26 = v55;
      goto LABEL_70;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs5Int32V_Tt1g5(void *a1)
{
  v76 = *MEMORY[0x1E69E9840];
  outlined init with copy of Any(a1, &v73);
  if (swift_dynamicCast())
  {
    if (v69 == 0x6C6C756E24 && *(&v69 + 1) == 0xE500000000000000)
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v6 = 1;
    goto LABEL_58;
  }

LABEL_7:
  outlined init with copy of Any(a1, &v73);
  v5 = MEMORY[0x1E69E72F0];
  if (swift_dynamicCast())
  {
    v6 = 0;
LABEL_58:
    LOBYTE(v73) = v6;
    return;
  }

  outlined init with copy of Any(a1, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17FixedWidthInteger_pMd);
  if (swift_dynamicCast())
  {
    v65 = v1;
    outlined init with take of Equatable(&v69, &v73);
    v8 = v74;
    v7 = v75;
    v9 = __swift_project_boxed_opaque_existential_1(&v73, v74);
    v66 = &v62;
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    v12 = MEMORY[0x1EEE9AC00](v9);
    v13 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v12);
    v14 = *(v7 + 8);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 33)
    {
      LODWORD(v69) = 0x80000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        v15 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v15 < 32)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v40 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v15 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if ((v40 & 1) == 0)
        {
          if (v15 >= 32)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }

        if (v15 <= 32)
        {
          v62 = *(*(v14 + 24) + 16);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v64 = &v62;
          MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
          swift_getAssociatedConformanceWitness();
          v47 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v63 = &v62;
          MEMORY[0x1EEE9AC00](v47);
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          LODWORD(v62) = dispatch thunk of static Comparable.< infix(_:_:)();
          v41 = *(v10 + 8);
          v41(&v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
          if ((v62 & 1) == 0)
          {
LABEL_43:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_44;
          }

LABEL_32:
          v41(&v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
LABEL_49:
          v20 = type metadata accessor for DecodingError();
          swift_allocError();
          v22 = v52;
          *&v69 = 0;
          *(&v69 + 1) = 0xE000000000000000;

          _StringGuts.grow(_:)(52);
          MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
          __swift_project_boxed_opaque_existential_1(&v73, v74);
          v53 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1865CB0E0](v53);

          MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
          MEMORY[0x1865CB0E0](0x3233746E49, 0xE500000000000000);
          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          goto LABEL_50;
        }
      }

      v64 = &v62;
      MEMORY[0x1EEE9AC00](v15);
      lazy protocol witness table accessor for type Int32 and conformance Int32();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      LODWORD(v63) = dispatch thunk of static Comparable.< infix(_:_:)();
      v41 = *(v10 + 8);
      v41(&v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
      if (v63)
      {
        goto LABEL_32;
      }
    }

LABEL_44:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 32 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 32 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
    {
      goto LABEL_56;
    }

    LODWORD(v69) = 0x7FFFFFFF;
    v48 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v49 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v48)
    {
      if (v49 > 32)
      {
        goto LABEL_47;
      }
    }

    else if (v49 >= 32)
    {
LABEL_47:
      v64 = &v62;
      MEMORY[0x1EEE9AC00](v49);
      lazy protocol witness table accessor for type Int32 and conformance Int32();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v50 = dispatch thunk of static Comparable.< infix(_:_:)();
      v51 = *(v10 + 8);
      v51(&v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
      if (v50)
      {
        v51(v13, v8);
        goto LABEL_49;
      }

LABEL_56:
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v10 + 8))(v13, v8);
LABEL_57:
      __swift_destroy_boxed_opaque_existential_1(&v73);
      v6 = 0;
      goto LABEL_58;
    }

    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_56;
  }

  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  outlined destroy of TermOfAddress?(&v69, &_ss17FixedWidthInteger_pSgMd);
  outlined init with copy of Any(a1, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSB_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v69, &v73);
    v16 = __swift_project_boxed_opaque_existential_1(&v73, v74);
    v17 = MEMORY[0x1EEE9AC00](v16);
    (*(v19 + 16))(&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
    lazy protocol witness table accessor for type Int32 and conformance Int32();
    FixedWidthInteger.init<A>(exactly:)();
    if ((BYTE4(v69) & 1) == 0)
    {
      goto LABEL_57;
    }

    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    *&v69 = 0;
    *(&v69 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(52);
    MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
    MEMORY[0x1865CB0E0](0x3233746E49, 0xE500000000000000);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
LABEL_50:
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6B00], v20);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(&v73);
    return;
  }

  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  outlined destroy of TermOfAddress?(&v69, &_sSB_pSgMd);
  outlined init with copy of Any(a1, &v73);
  type metadata accessor for NSNumber();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = type metadata accessor for DecodingError();
    swift_allocError();
    v38 = v37;
    *&v73 = 0;
    *(&v73 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(43);

    *&v73 = 0xD000000000000023;
    *(&v73 + 1) = 0x8000000181482130;
    v39 = specialized static DecodingError._typeDescription(of:)(a1);
    MEMORY[0x1865CB0E0](v39);

    MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v38 = v5;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    return;
  }

  v23 = v69;
  v24 = type metadata accessor for DecodingError();
  v66 = swift_allocError();
  v26 = v25;
  v27 = 0xE000000000000000;
  *&v73 = 0;
  *(&v73 + 1) = 0xE000000000000000;

  _StringGuts.grow(_:)(52);
  v69 = v73;
  MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
  v28 = [v23 description];
  if (!v28)
  {
    goto LABEL_76;
  }

  v29 = v28;
  isTaggedPointer = _objc_isTaggedPointer(v28);
  v31 = v29;
  v32 = v31;
  if (!isTaggedPointer)
  {
    goto LABEL_33;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v31);
  if (!TaggedPointerTag)
  {
    v67 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v58 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v59)
    {
      [v32 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v57 = v72[0];
      v27 = v72[1];
LABEL_75:

      v28 = v57;
      goto LABEL_76;
    }

    v27 = v59;
    v57 = v58;
LABEL_72:

    goto LABEL_75;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v34 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v27 = v35;

      v28 = v34;
LABEL_76:
      MEMORY[0x1865CB0E0](v28, v27);

      MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
      MEMORY[0x1865CB0E0](0x3233746E49, 0xE500000000000000);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6B00], v24);
      swift_willThrow();

      return;
    }

LABEL_33:
    LOBYTE(v72[0]) = 0;
    *&v73 = 0;
    LOBYTE(v67) = 0;
    v68 = 0;
    if (__CFStringIsCF())
    {
      if (v73)
      {
        if (v68 == 1)
        {
          if (v72[0])
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v60 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_74;
        }

LABEL_73:
        v60 = String.init(_cocoaString:)();
LABEL_74:
        v57 = v60;
        v27 = v61;
        goto LABEL_75;
      }
    }

    else
    {
      v42 = v32;
      v43 = String.init(_nativeStorage:)();
      if (v44)
      {
        v27 = v44;
        v45 = v43;

        v28 = v45;
        goto LABEL_76;
      }

      *&v73 = [v42 length];
      if (v73)
      {
        goto LABEL_73;
      }
    }

    v28 = 0;
    v27 = 0xE000000000000000;
    goto LABEL_76;
  }

  v54 = [v32 UTF8String];
  if (v54)
  {
    v55 = String.init(utf8String:)(v54);
    if (v56)
    {
      v57 = v55;
      v27 = v56;
      goto LABEL_72;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs5Int64V_Tt1g5(void *a1)
{
  v75 = *MEMORY[0x1E69E9840];
  outlined init with copy of Any(a1, &v72);
  if (swift_dynamicCast())
  {
    if (v68 == 0x6C6C756E24 && *(&v68 + 1) == 0xE500000000000000)
    {

      return;
    }

    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      return;
    }
  }

  outlined init with copy of Any(a1, &v72);
  v5 = MEMORY[0x1E69E7360];
  if (!swift_dynamicCast())
  {
    outlined init with copy of Any(a1, v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17FixedWidthInteger_pMd);
    if (swift_dynamicCast())
    {
      v64 = v1;
      outlined init with take of Equatable(&v68, &v72);
      v7 = v73;
      v6 = v74;
      v8 = __swift_project_boxed_opaque_existential_1(&v72, v73);
      v65 = &v61;
      v9 = *(v7 - 8);
      v10 = *(v9 + 64);
      v11 = MEMORY[0x1EEE9AC00](v8);
      v12 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v12, v11);
      v13 = *(v6 + 8);
      if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
      {
        goto LABEL_43;
      }

      *&v68 = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        v14 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v14 < 64)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v39 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v14 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if ((v39 & 1) == 0)
        {
          if (v14 < 64)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        }

        if (v14 <= 64)
        {
          v61 = *(*(v13 + 24) + 16);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v63 = &v61;
          MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
          swift_getAssociatedConformanceWitness();
          v46 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v62 = &v61;
          MEMORY[0x1EEE9AC00](v46);
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          LODWORD(v61) = dispatch thunk of static Comparable.< infix(_:_:)();
          v40 = *(v9 + 8);
          v40(&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
          if ((v61 & 1) == 0)
          {
LABEL_42:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_43;
          }

LABEL_31:
          v40(&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
LABEL_48:
          v19 = type metadata accessor for DecodingError();
          swift_allocError();
          v21 = v51;
          *&v68 = 0;
          *(&v68 + 1) = 0xE000000000000000;

          _StringGuts.grow(_:)(52);
          MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
          __swift_project_boxed_opaque_existential_1(&v72, v73);
          v52 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1865CB0E0](v52);

          MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
          MEMORY[0x1865CB0E0](0x3436746E49, 0xE500000000000000);
          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          goto LABEL_49;
        }
      }

      v63 = &v61;
      MEMORY[0x1EEE9AC00](v14);
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      LODWORD(v62) = dispatch thunk of static Comparable.< infix(_:_:)();
      v40 = *(v9 + 8);
      v40(&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      if (v62)
      {
        goto LABEL_31;
      }

LABEL_43:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
      {
        goto LABEL_55;
      }

      *&v68 = 0x7FFFFFFFFFFFFFFFLL;
      v47 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v48 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v47)
      {
        if (v48 > 64)
        {
          goto LABEL_46;
        }
      }

      else if (v48 >= 64)
      {
LABEL_46:
        v63 = &v61;
        MEMORY[0x1EEE9AC00](v48);
        lazy protocol witness table accessor for type Int64 and conformance Int64();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v49 = dispatch thunk of static Comparable.< infix(_:_:)();
        v50 = *(v9 + 8);
        v50(&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        if (v49)
        {
          v50(v12, v7);
          goto LABEL_48;
        }

LABEL_55:
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v9 + 8))(v12, v7);
LABEL_56:
        __swift_destroy_boxed_opaque_existential_1(&v72);
        return;
      }

      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_55;
    }

    v70 = 0;
    v68 = 0u;
    v69 = 0u;
    outlined destroy of TermOfAddress?(&v68, &_ss17FixedWidthInteger_pSgMd);
    outlined init with copy of Any(a1, v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSB_pMd);
    if (swift_dynamicCast())
    {
      outlined init with take of Equatable(&v68, &v72);
      v15 = __swift_project_boxed_opaque_existential_1(&v72, v73);
      v16 = MEMORY[0x1EEE9AC00](v15);
      (*(v18 + 16))(&v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      FixedWidthInteger.init<A>(exactly:)();
      if ((BYTE8(v68) & 1) == 0)
      {
        goto LABEL_56;
      }

      v19 = type metadata accessor for DecodingError();
      swift_allocError();
      v21 = v20;
      *&v68 = 0;
      *(&v68 + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(52);
      MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
      MEMORY[0x1865CB0E0](0x3436746E49, 0xE500000000000000);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
LABEL_49:
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6B00], v19);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(&v72);
      return;
    }

    v70 = 0;
    v68 = 0u;
    v69 = 0u;
    outlined destroy of TermOfAddress?(&v68, &_sSB_pSgMd);
    outlined init with copy of Any(a1, &v72);
    type metadata accessor for NSNumber();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v35 = type metadata accessor for DecodingError();
      swift_allocError();
      v37 = v36;
      *&v72 = 0;
      *(&v72 + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(43);

      *&v72 = 0xD000000000000023;
      *(&v72 + 1) = 0x8000000181482100;
      v38 = specialized static DecodingError._typeDescription(of:)(a1);
      MEMORY[0x1865CB0E0](v38);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v37 = v5;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
      swift_willThrow();
      return;
    }

    v22 = v68;
    v23 = type metadata accessor for DecodingError();
    v65 = swift_allocError();
    v25 = v24;
    v26 = 0xE000000000000000;
    *&v72 = 0;
    *(&v72 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(52);
    v68 = v72;
    MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
    v27 = [v22 description];
    if (!v27)
    {
      goto LABEL_74;
    }

    v28 = v27;
    isTaggedPointer = _objc_isTaggedPointer(v27);
    v30 = v28;
    v31 = v30;
    if (!isTaggedPointer)
    {
      goto LABEL_32;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v30);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v33 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v26 = v34;

          v27 = v33;
LABEL_74:
          MEMORY[0x1865CB0E0](v27, v26);

          MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
          MEMORY[0x1865CB0E0](0x3436746E49, 0xE500000000000000);
          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
          (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6B00], v23);
          swift_willThrow();

          return;
        }

LABEL_32:
        LOBYTE(v71[0]) = 0;
        *&v72 = 0;
        LOBYTE(v66) = 0;
        v67 = 0;
        if (__CFStringIsCF())
        {
          if (v72)
          {
            if (v67 == 1)
            {
              if (v71[0])
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v59 = String.init<A>(_immortalCocoaString:count:encoding:)();
              goto LABEL_72;
            }

LABEL_71:
            v59 = String.init(_cocoaString:)();
LABEL_72:
            v56 = v59;
            v26 = v60;
            goto LABEL_73;
          }
        }

        else
        {
          v41 = v31;
          v42 = String.init(_nativeStorage:)();
          if (v43)
          {
            v26 = v43;
            v44 = v42;

            v27 = v44;
            goto LABEL_74;
          }

          *&v72 = [v41 length];
          if (v72)
          {
            goto LABEL_71;
          }
        }

        v27 = 0;
        v26 = 0xE000000000000000;
        goto LABEL_74;
      }

      v53 = [v31 UTF8String];
      if (v53)
      {
        v54 = String.init(utf8String:)(v53);
        if (v55)
        {
          v56 = v54;
          v26 = v55;
          goto LABEL_70;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    v66 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v57 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v58)
    {
      [v31 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v56 = v71[0];
      v26 = v71[1];
LABEL_73:

      v27 = v56;
      goto LABEL_74;
    }

    v26 = v58;
    v56 = v57;
LABEL_70:

    goto LABEL_73;
  }
}

void _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs6UInt32V_Tt1g5(void *a1)
{
  v3 = v2;
  v82 = *MEMORY[0x1E69E9840];
  outlined init with copy of Any(a1, &v80);
  if (swift_dynamicCast())
  {
    if (v76 == 0x6C6C756E24 && *(&v76 + 1) == 0xE500000000000000)
    {
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v6 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v8 = 1;
    goto LABEL_33;
  }

LABEL_7:
  outlined init with copy of Any(a1, &v80);
  v7 = MEMORY[0x1E69E7668];
  if (swift_dynamicCast())
  {
    v8 = 0;
LABEL_33:
    LOBYTE(v80) = v8;
    return;
  }

  outlined init with copy of Any(a1, v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17FixedWidthInteger_pMd);
  if (swift_dynamicCast())
  {
    v71 = v1;
    outlined init with take of Equatable(&v76, &v80);
    v9 = v81;
    v10 = __swift_project_boxed_opaque_existential_1(&v80, v81);
    v73 = v68;
    v11 = *(v9 - 8);
    v12 = *(v11 + 64);
    v13 = MEMORY[0x1EEE9AC00](v10);
    v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
    v15 = v68 - v14;
    (*(v11 + 16))(v68 - v14, v13);
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v70 = v2;
      v68[1] = v68;
      MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      v72 = v11;
      v69 = v68 - v14;
      swift_getAssociatedConformanceWitness();
      v17 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v68[0] = v68;
      MEMORY[0x1EEE9AC00](v17);
      v15 = v69;
      v11 = v72;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v18 = dispatch thunk of static Comparable.< infix(_:_:)();
      v19 = *(v11 + 8);
      v3 = v70;
      v19(v68 - v14, v9);
      if (v18)
      {
        goto LABEL_12;
      }
    }

    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 32)
    {
      goto LABEL_20;
    }

    LODWORD(v76) = -1;
    v42 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v43 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v42)
    {
      v72 = v11;
      if (v43 <= 32)
      {
        v70 = v3;
        v53 = swift_getAssociatedTypeWitness();
        v71 = v68;
        MEMORY[0x1EEE9AC00](v53);
        swift_getAssociatedConformanceWitness();
        v54 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        MEMORY[0x1EEE9AC00](v54);
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v55 = dispatch thunk of static Comparable.> infix(_:_:)();
        (*(v72 + 8))(v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
        if (v55)
        {
          dispatch thunk of BinaryInteger._lowWord.getter();
        }

        v11 = v72;
        goto LABEL_20;
      }

      v70 = v68;
      MEMORY[0x1EEE9AC00](v43);
      lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v44 = dispatch thunk of static Comparable.< infix(_:_:)();
      v19 = *(v72 + 8);
      v11 = v72;
      v19(v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
      if ((v44 & 1) == 0)
      {
LABEL_20:
        dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v11 + 8))(v15, v9);
        goto LABEL_32;
      }
    }

    else
    {
      if (v43 <= 32)
      {
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_20;
      }

      MEMORY[0x1EEE9AC00](v43);
      v72 = v11;
      v50 = v68 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
      lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v51 = dispatch thunk of static Comparable.< infix(_:_:)();
      v19 = *(v72 + 8);
      v52 = v50;
      v11 = v72;
      v19(v52, v9);
      if ((v51 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

LABEL_12:
    v19(v15, v9);
    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    *&v76 = 0;
    *(&v76 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(52);
    MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
    __swift_project_boxed_opaque_existential_1(&v80, v81);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v23);

    MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
    MEMORY[0x1865CB0E0](0x3233746E4955, 0xE600000000000000);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
LABEL_18:
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6B00], v20);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(&v80);
    return;
  }

  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  outlined destroy of TermOfAddress?(&v76, &_ss17FixedWidthInteger_pSgMd);
  outlined init with copy of Any(a1, v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSB_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v76, &v80);
    v24 = __swift_project_boxed_opaque_existential_1(&v80, v81);
    v25 = MEMORY[0x1EEE9AC00](v24);
    (*(v27 + 16))(v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
    lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    FixedWidthInteger.init<A>(exactly:)();
    if (BYTE4(v76))
    {
      v20 = type metadata accessor for DecodingError();
      swift_allocError();
      v22 = v28;
      *&v76 = 0;
      *(&v76 + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(52);
      MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
      MEMORY[0x1865CB0E0](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      goto LABEL_18;
    }

LABEL_32:
    __swift_destroy_boxed_opaque_existential_1(&v80);
    v8 = 0;
    goto LABEL_33;
  }

  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  outlined destroy of TermOfAddress?(&v76, &_sSB_pSgMd);
  outlined init with copy of Any(a1, &v80);
  type metadata accessor for NSNumber();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v45 = type metadata accessor for DecodingError();
    swift_allocError();
    v47 = v46;
    *&v80 = 0;
    *(&v80 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(43);

    *&v80 = 0xD000000000000024;
    *(&v80 + 1) = 0x8000000181482010;
    v48 = specialized static DecodingError._typeDescription(of:)(a1);
    MEMORY[0x1865CB0E0](v48);

    MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v47 = v7;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
    swift_willThrow();
    return;
  }

  v29 = v76;
  v30 = type metadata accessor for DecodingError();
  v72 = swift_allocError();
  v32 = v31;
  v33 = 0xE000000000000000;
  *&v80 = 0;
  *(&v80 + 1) = 0xE000000000000000;

  _StringGuts.grow(_:)(52);
  v76 = v80;
  MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
  v73 = v29;
  v34 = [v29 description];
  if (!v34)
  {
    goto LABEL_66;
  }

  v35 = v34;
  isTaggedPointer = _objc_isTaggedPointer(v34);
  v37 = v35;
  v38 = v37;
  if (!isTaggedPointer)
  {
    goto LABEL_38;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v37);
  if (!TaggedPointerTag)
  {
    v74 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v64 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v65)
    {
      [v38 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v63 = v79[0];
      v33 = v79[1];
LABEL_65:

      v34 = v63;
      goto LABEL_66;
    }

    v33 = v65;
    v63 = v64;
LABEL_62:

    goto LABEL_65;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v40 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v33 = v41;

      v34 = v40;
LABEL_66:
      MEMORY[0x1865CB0E0](v34, v33);

      MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
      MEMORY[0x1865CB0E0](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6B00], v30);
      swift_willThrow();

      return;
    }

LABEL_38:
    LOBYTE(v79[0]) = 0;
    *&v80 = 0;
    LOBYTE(v74) = 0;
    v75 = 0;
    if (__CFStringIsCF())
    {
      if (v80)
      {
        if (v75 == 1)
        {
          if (v79[0])
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v66 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_64;
        }

LABEL_63:
        v66 = String.init(_cocoaString:)();
LABEL_64:
        v63 = v66;
        v33 = v67;
        goto LABEL_65;
      }
    }

    else
    {
      v56 = v38;
      v57 = String.init(_nativeStorage:)();
      if (v58)
      {
        v33 = v58;
        v59 = v57;

        v34 = v59;
        goto LABEL_66;
      }

      *&v80 = [v56 length];
      if (v80)
      {
        goto LABEL_63;
      }
    }

    v34 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_66;
  }

  v60 = [v38 UTF8String];
  if (v60)
  {
    v61 = String.init(utf8String:)(v60);
    if (v62)
    {
      v63 = v61;
      v33 = v62;
      goto LABEL_62;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs6UInt64V_Tt1g5(void *a1)
{
  v3 = v2;
  v81 = *MEMORY[0x1E69E9840];
  outlined init with copy of Any(a1, &v79);
  if (swift_dynamicCast())
  {
    if (v75 == 0x6C6C756E24 && *(&v75 + 1) == 0xE500000000000000)
    {

      return;
    }

    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return;
    }
  }

  outlined init with copy of Any(a1, &v79);
  v7 = MEMORY[0x1E69E76D8];
  if (!swift_dynamicCast())
  {
    outlined init with copy of Any(a1, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17FixedWidthInteger_pMd);
    if (swift_dynamicCast())
    {
      v70 = v1;
      outlined init with take of Equatable(&v75, &v79);
      v8 = v80;
      v9 = __swift_project_boxed_opaque_existential_1(&v79, v80);
      v72 = v67;
      v10 = *(v8 - 8);
      v11 = *(v10 + 64);
      v12 = MEMORY[0x1EEE9AC00](v9);
      v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
      v14 = v67 - v13;
      (*(v10 + 16))(v67 - v13, v12);
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v69 = v2;
        v67[1] = v67;
        MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
        v71 = v10;
        v68 = v67 - v13;
        swift_getAssociatedConformanceWitness();
        v16 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v67[0] = v67;
        MEMORY[0x1EEE9AC00](v16);
        v14 = v68;
        v10 = v71;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v17 = dispatch thunk of static Comparable.< infix(_:_:)();
        v18 = *(v10 + 8);
        v3 = v69;
        v18(v67 - v13, v8);
        if (v17)
        {
          goto LABEL_11;
        }
      }

      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_19;
      }

      *&v75 = -1;
      v41 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v42 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v41)
      {
        v71 = v10;
        if (v42 <= 64)
        {
          v69 = v3;
          v52 = swift_getAssociatedTypeWitness();
          v70 = v67;
          MEMORY[0x1EEE9AC00](v52);
          swift_getAssociatedConformanceWitness();
          v53 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          MEMORY[0x1EEE9AC00](v53);
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v54 = dispatch thunk of static Comparable.> infix(_:_:)();
          (*(v71 + 8))(v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
          if (v54)
          {
            dispatch thunk of BinaryInteger._lowWord.getter();
          }

          v10 = v71;
          goto LABEL_19;
        }

        v69 = v67;
        MEMORY[0x1EEE9AC00](v42);
        lazy protocol witness table accessor for type UInt64 and conformance UInt64();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v43 = dispatch thunk of static Comparable.< infix(_:_:)();
        v18 = *(v71 + 8);
        v10 = v71;
        v18(v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        if ((v43 & 1) == 0)
        {
LABEL_19:
          dispatch thunk of BinaryInteger._lowWord.getter();
          (*(v10 + 8))(v14, v8);
          __swift_destroy_boxed_opaque_existential_1(&v79);
          return;
        }
      }

      else
      {
        if (v42 <= 64)
        {
          dispatch thunk of BinaryInteger._lowWord.getter();
          goto LABEL_19;
        }

        MEMORY[0x1EEE9AC00](v42);
        v71 = v10;
        v49 = v67 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
        lazy protocol witness table accessor for type UInt64 and conformance UInt64();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v50 = dispatch thunk of static Comparable.< infix(_:_:)();
        v18 = *(v71 + 8);
        v51 = v49;
        v10 = v71;
        v18(v51, v8);
        if ((v50 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

LABEL_11:
      v18(v14, v8);
      v19 = type metadata accessor for DecodingError();
      swift_allocError();
      v21 = v20;
      *&v75 = 0;
      *(&v75 + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(52);
      MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
      __swift_project_boxed_opaque_existential_1(&v79, v80);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v22);

      MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
      MEMORY[0x1865CB0E0](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
LABEL_17:
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6B00], v19);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(&v79);
      return;
    }

    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    outlined destroy of TermOfAddress?(&v75, &_ss17FixedWidthInteger_pSgMd);
    outlined init with copy of Any(a1, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSB_pMd);
    if (swift_dynamicCast())
    {
      outlined init with take of Equatable(&v75, &v79);
      v23 = __swift_project_boxed_opaque_existential_1(&v79, v80);
      v24 = MEMORY[0x1EEE9AC00](v23);
      (*(v26 + 16))(v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
      lazy protocol witness table accessor for type UInt64 and conformance UInt64();
      FixedWidthInteger.init<A>(exactly:)();
      if (BYTE8(v75))
      {
        v19 = type metadata accessor for DecodingError();
        swift_allocError();
        v21 = v27;
        *&v75 = 0;
        *(&v75 + 1) = 0xE000000000000000;

        _StringGuts.grow(_:)(52);
        MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
        MEMORY[0x1865CB0E0](0x3436746E4955, 0xE600000000000000);
        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        goto LABEL_17;
      }

      __swift_destroy_boxed_opaque_existential_1(&v79);
      return;
    }

    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    outlined destroy of TermOfAddress?(&v75, &_sSB_pSgMd);
    outlined init with copy of Any(a1, &v79);
    type metadata accessor for NSNumber();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v44 = type metadata accessor for DecodingError();
      swift_allocError();
      v46 = v45;
      *&v79 = 0;
      *(&v79 + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(43);

      *&v79 = 0xD000000000000024;
      *(&v79 + 1) = 0x8000000181481FE0;
      v47 = specialized static DecodingError._typeDescription(of:)(a1);
      MEMORY[0x1865CB0E0](v47);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v46 = v7;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
      swift_willThrow();
      return;
    }

    v28 = v75;
    v29 = type metadata accessor for DecodingError();
    v71 = swift_allocError();
    v31 = v30;
    v32 = 0xE000000000000000;
    *&v79 = 0;
    *(&v79 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(52);
    v75 = v79;
    MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
    v72 = v28;
    v33 = [v28 description];
    if (!v33)
    {
LABEL_64:
      MEMORY[0x1865CB0E0](v33, v32);

      MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
      MEMORY[0x1865CB0E0](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6B00], v29);
      swift_willThrow();

      return;
    }

    v34 = v33;
    isTaggedPointer = _objc_isTaggedPointer(v33);
    v36 = v34;
    v37 = v36;
    if (!isTaggedPointer)
    {
LABEL_36:
      LOBYTE(v78[0]) = 0;
      *&v79 = 0;
      LOBYTE(v73) = 0;
      v74 = 0;
      if (__CFStringIsCF())
      {
        if (v79)
        {
          if (v74 == 1)
          {
            if (v78[0])
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v65 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_62;
          }

LABEL_61:
          v65 = String.init(_cocoaString:)();
LABEL_62:
          v62 = v65;
          v32 = v66;
          goto LABEL_63;
        }
      }

      else
      {
        v55 = v37;
        v56 = String.init(_nativeStorage:)();
        if (v57)
        {
          v32 = v57;
          v58 = v56;

          v33 = v58;
          goto LABEL_64;
        }

        *&v79 = [v55 length];
        if (v79)
        {
          goto LABEL_61;
        }
      }

      v33 = 0;
      v32 = 0xE000000000000000;
      goto LABEL_64;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v36);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v39 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v32 = v40;

          v33 = v39;
          goto LABEL_64;
        }

        goto LABEL_36;
      }

      v59 = [v37 UTF8String];
      if (v59)
      {
        v60 = String.init(utf8String:)(v59);
        if (v61)
        {
          v62 = v60;
          v32 = v61;
          goto LABEL_60;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    v73 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v63 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v64)
    {
      [v37 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v62 = v78[0];
      v32 = v78[1];
LABEL_63:

      v33 = v62;
      goto LABEL_64;
    }

    v32 = v64;
    v62 = v63;
LABEL_60:

    goto LABEL_63;
  }
}

void _s10Foundation24__PlistDictionaryDecoderC18unboxFloatingPoint33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKSBRzlFSd_Tt1g5(void *a1)
{
  v64 = *MEMORY[0x1E69E9840];
  outlined init with copy of Any(a1, &v61);
  if (swift_dynamicCast())
  {
    if (v57 == 0x6C6C756E24 && *(&v57 + 1) == 0xE500000000000000)
    {

      return;
    }

    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v3)
    {
      return;
    }
  }

  outlined init with copy of Any(a1, &v61);
  v4 = MEMORY[0x1E69E63B0];
  if (!swift_dynamicCast())
  {
    outlined init with copy of Any(a1, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSB_pMd);
    if (swift_dynamicCast())
    {
      outlined init with take of Equatable(&v57, &v61);
      v5 = v62;
      v6 = v63;
      v7 = __swift_project_boxed_opaque_existential_1(&v61, v62);
      v8 = MEMORY[0x1EEE9AC00](v7);
      v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v10, v8);
      specialized BinaryFloatingPoint.init<A>(exactly:)(v10, v5, v6);
      if (v12)
      {
        v13 = type metadata accessor for DecodingError();
        swift_allocError();
        v15 = v14;
        *&v57 = 0;
        *(&v57 + 1) = 0xE000000000000000;

        _StringGuts.grow(_:)(52);
        MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
        MEMORY[0x1865CB0E0](0x656C62756F44, 0xE600000000000000);
        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
LABEL_16:
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6B00], v13);
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1(&v61);
        return;
      }

LABEL_17:
      __swift_destroy_boxed_opaque_existential_1(&v61);
      return;
    }

    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    outlined destroy of TermOfAddress?(&v57, &_sSB_pSgMd);
    outlined init with copy of Any(a1, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17FixedWidthInteger_pMd);
    if (swift_dynamicCast())
    {
      outlined init with take of Equatable(&v57, &v61);
      v16 = v62;
      v17 = __swift_project_boxed_opaque_existential_1(&v61, v62);
      v18 = MEMORY[0x1EEE9AC00](v17);
      v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v20, v18);
      Double.init<A>(exactly:)(v20, v16);
      if (v22)
      {
        v13 = type metadata accessor for DecodingError();
        swift_allocError();
        v15 = v23;
        *&v57 = 0;
        *(&v57 + 1) = 0xE000000000000000;

        _StringGuts.grow(_:)(52);
        MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
        __swift_project_boxed_opaque_existential_1(&v61, v62);
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865CB0E0](v24);

        MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
        MEMORY[0x1865CB0E0](0x656C62756F44, 0xE600000000000000);
        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    outlined destroy of TermOfAddress?(&v57, &_ss17FixedWidthInteger_pSgMd);
    outlined init with copy of Any(a1, &v61);
    type metadata accessor for NSNumber();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v38 = type metadata accessor for DecodingError();
      swift_allocError();
      v40 = v39;
      *&v61 = 0;
      *(&v61 + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(43);

      *&v61 = 0xD000000000000024;
      *(&v61 + 1) = 0x8000000181481F00;
      v41 = specialized static DecodingError._typeDescription(of:)(a1);
      MEMORY[0x1865CB0E0](v41);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v40 = v4;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
      swift_willThrow();
      return;
    }

    v25 = v57;
    v26 = type metadata accessor for DecodingError();
    v54 = swift_allocError();
    v28 = v27;
    v29 = 0xE000000000000000;
    *&v61 = 0;
    *(&v61 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(52);
    v57 = v61;
    MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
    v30 = [v25 description];
    if (!v30)
    {
      goto LABEL_50;
    }

    v31 = v30;
    isTaggedPointer = _objc_isTaggedPointer(v30);
    v33 = v31;
    v34 = v33;
    if (!isTaggedPointer)
    {
      goto LABEL_26;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v33);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v36 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v29 = v37;

          v30 = v36;
LABEL_50:
          MEMORY[0x1865CB0E0](v30, v29);

          MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
          MEMORY[0x1865CB0E0](0x656C62756F44, 0xE600000000000000);
          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
          (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6B00], v26);
          swift_willThrow();

          return;
        }

LABEL_26:
        LOBYTE(v60[0]) = 0;
        *&v61 = 0;
        LOBYTE(v55) = 0;
        v56 = 0;
        if (__CFStringIsCF())
        {
          if (v61)
          {
            if (v56 == 1)
            {
              if (v60[0])
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v52 = String.init<A>(_immortalCocoaString:count:encoding:)();
              goto LABEL_48;
            }

LABEL_47:
            v52 = String.init(_cocoaString:)();
LABEL_48:
            v49 = v52;
            v29 = v53;
            goto LABEL_49;
          }
        }

        else
        {
          v42 = v34;
          v43 = String.init(_nativeStorage:)();
          if (v44)
          {
            v29 = v44;
            v45 = v43;

            v30 = v45;
            goto LABEL_50;
          }

          *&v61 = [v42 length];
          if (v61)
          {
            goto LABEL_47;
          }
        }

        v30 = 0;
        v29 = 0xE000000000000000;
        goto LABEL_50;
      }

      v46 = [v34 UTF8String];
      if (v46)
      {
        v47 = String.init(utf8String:)(v46);
        if (v48)
        {
          v49 = v47;
          v29 = v48;
          goto LABEL_46;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    v55 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v50 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v51)
    {
      [v34 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v49 = v60[0];
      v29 = v60[1];
LABEL_49:

      v30 = v49;
      goto LABEL_50;
    }

    v29 = v51;
    v49 = v50;
LABEL_46:

    goto LABEL_49;
  }
}

void _s10Foundation24__PlistDictionaryDecoderC18unboxFloatingPoint33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKSBRzlFSf_Tt1g5(void *a1)
{
  v63 = *MEMORY[0x1E69E9840];
  outlined init with copy of Any(a1, &v60);
  if (swift_dynamicCast())
  {
    if (v56 == 0x6C6C756E24 && *(&v56 + 1) == 0xE500000000000000)
    {
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v3 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v5 = 1;
    goto LABEL_14;
  }

LABEL_7:
  outlined init with copy of Any(a1, &v60);
  v4 = MEMORY[0x1E69E6448];
  if (swift_dynamicCast())
  {
    v5 = 0;
LABEL_14:
    LOBYTE(v60) = v5;
    return;
  }

  outlined init with copy of Any(a1, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSB_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v56, &v60);
    v6 = v61;
    v7 = v62;
    v8 = __swift_project_boxed_opaque_existential_1(&v60, v61);
    v9 = MEMORY[0x1EEE9AC00](v8);
    v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v11, v9);
    if ((specialized BinaryFloatingPoint.init<A>(exactly:)(v11, v6, v7) & 0x100000000) == 0)
    {
LABEL_11:
      __swift_destroy_boxed_opaque_existential_1(&v60);
      v5 = 0;
      goto LABEL_14;
    }

    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(52);
    MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
    MEMORY[0x1865CB0E0](0x74616F6C46, 0xE500000000000000);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    goto LABEL_27;
  }

  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  outlined destroy of TermOfAddress?(&v56, &_sSB_pSgMd);
  outlined init with copy of Any(a1, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17FixedWidthInteger_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(&v56, &v60);
    v13 = v61;
    v14 = __swift_project_boxed_opaque_existential_1(&v60, v61);
    v15 = MEMORY[0x1EEE9AC00](v14);
    v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v17, v15);
    if ((Float.init<A>(exactly:)(v17, v13) & 0x100000000) == 0)
    {
      goto LABEL_11;
    }

    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v35;
    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(52);
    MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
    __swift_project_boxed_opaque_existential_1(&v60, v61);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v36);

    MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
    MEMORY[0x1865CB0E0](0x74616F6C46, 0xE500000000000000);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
LABEL_27:
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6B00], v19);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(&v60);
    return;
  }

  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  outlined destroy of TermOfAddress?(&v56, &_ss17FixedWidthInteger_pSgMd);
  outlined init with copy of Any(a1, &v60);
  type metadata accessor for NSNumber();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v37 = type metadata accessor for DecodingError();
    swift_allocError();
    v39 = v38;
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(43);

    *&v60 = 0xD000000000000023;
    *(&v60 + 1) = 0x80000001814821F0;
    v40 = specialized static DecodingError._typeDescription(of:)(a1);
    MEMORY[0x1865CB0E0](v40);

    MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v39 = v4;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    return;
  }

  v22 = v56;
  v23 = type metadata accessor for DecodingError();
  v53 = swift_allocError();
  v25 = v24;
  v26 = 0xE000000000000000;
  *&v60 = 0;
  *(&v60 + 1) = 0xE000000000000000;

  _StringGuts.grow(_:)(52);
  v56 = v60;
  MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
  v27 = [v22 description];
  if (!v27)
  {
    goto LABEL_53;
  }

  v28 = v27;
  isTaggedPointer = _objc_isTaggedPointer(v27);
  v30 = v28;
  v31 = v30;
  if (!isTaggedPointer)
  {
    goto LABEL_29;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v30);
  if (!TaggedPointerTag)
  {
    v54 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v49 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v50)
    {
      [v31 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v48 = v59[0];
      v26 = v59[1];
LABEL_52:

      v27 = v48;
      goto LABEL_53;
    }

    v26 = v50;
    v48 = v49;
LABEL_49:

    goto LABEL_52;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v33 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v26 = v34;

      v27 = v33;
LABEL_53:
      MEMORY[0x1865CB0E0](v27, v26);

      MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
      MEMORY[0x1865CB0E0](0x74616F6C46, 0xE500000000000000);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6B00], v23);
      swift_willThrow();

      return;
    }

LABEL_29:
    LOBYTE(v59[0]) = 0;
    *&v60 = 0;
    LOBYTE(v54) = 0;
    v55 = 0;
    if (__CFStringIsCF())
    {
      if (v60)
      {
        if (v55 == 1)
        {
          if (v59[0])
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v51 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_51;
        }

LABEL_50:
        v51 = String.init(_cocoaString:)();
LABEL_51:
        v48 = v51;
        v26 = v52;
        goto LABEL_52;
      }
    }

    else
    {
      v41 = v31;
      v42 = String.init(_nativeStorage:)();
      if (v43)
      {
        v26 = v43;
        v44 = v42;

        v27 = v44;
        goto LABEL_53;
      }

      *&v60 = [v41 length];
      if (v60)
      {
        goto LABEL_50;
      }
    }

    v27 = 0;
    v26 = 0xE000000000000000;
    goto LABEL_53;
  }

  v45 = [v31 UTF8String];
  if (v45)
  {
    v46 = String.init(utf8String:)(v45);
    if (v47)
    {
      v48 = v46;
      v26 = v47;
      goto LABEL_49;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t __PlistDictionaryDecoder.unbox(_:as:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Any(a1, &v13);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v11 == 0x6C6C756E24 && v12 == 0xE500000000000000)
  {

    goto LABEL_11;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
LABEL_11:
    *a2 = 0;
    *(a2 + 8) = 1;
    return result;
  }

LABEL_7:
  outlined init with copy of Any(a1, &v13);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = v11;
    *(a2 + 8) = 0;
  }

  else
  {
    v7 = type metadata accessor for DecodingError();
    swift_allocError();
    v9 = v8;
    v13 = 0;
    v14 = 0xE000000000000000;

    _StringGuts.grow(_:)(43);

    v13 = 0xD000000000000022;
    v14 = 0x80000001814853D0;
    v10 = specialized static DecodingError._typeDescription(of:)(a1);
    MEMORY[0x1865CB0E0](v10);

    MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v9 = &type metadata for Date;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6AF8], v7);
    return swift_willThrow();
  }

  return result;
}

uint64_t Float.init<A>(exactly:)(uint64_t a1, uint64_t a2)
{
  if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    lazy protocol witness table accessor for type Float and conformance Float();
    lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    v4 = static BinaryFloatingPoint<>._convert<A>(from:)();
    (*(*(a2 - 8) + 8))(a1, a2);
    if (v4)
    {
      v5 = v12;
LABEL_14:
      v10 = 0;
      v9 = LODWORD(v5);
      return v9 | (v10 << 32);
    }

LABEL_8:
    v9 = 0;
    v10 = 1;
    return v9 | (v10 << 32);
  }

  v6 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v7 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if ((v6 & 1) == 0)
  {
    v5 = v7;
    if (v7 < 1.8447e19 && v7 == v7)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v5 = v7;
  if (v7 >= 9.2234e18)
  {
    goto LABEL_8;
  }

  if (v5 > -9.2234e18)
  {
    if (v7 == v5)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t specialized BinaryFloatingPoint.init<A>(exactly:)(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = swift_checkMetadataState();
  v57 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v55 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v55 - v12;
  if (dispatch thunk of FloatingPoint.isNaN.getter())
  {
    goto LABEL_2;
  }

  if (dispatch thunk of static BinaryFloatingPoint.exponentBitCount.getter() <= 11 && dispatch thunk of static BinaryFloatingPoint.significandBitCount.getter() < 53 || (dispatch thunk of FloatingPoint.isFinite.getter() & 1) == 0 || (dispatch thunk of FloatingPoint.isZero.getter() & 1) != 0)
  {
    return specialized BinaryFloatingPoint.init<A>(_:)(a1, a2);
  }

  v55 = a3;
  dispatch thunk of FloatingPoint.exponent.getter();
  v60 = -1022;
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v14 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v15 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v14)
    {
      if (v15 > 64)
      {
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v16 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v57 + 8))(v58, v7);
        if (v16)
        {
          goto LABEL_23;
        }

        goto LABEL_29;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v19 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v57 + 8))(v58, v7);
      if (v19)
      {
        goto LABEL_23;
      }
    }

    else if (v15 >= 64)
    {
      goto LABEL_29;
    }

    if (dispatch thunk of BinaryInteger._lowWord.getter() >= -1022)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
  {
    lazy protocol witness table accessor for type Int and conformance Int();
    v17 = v58;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v18 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v57 + 8))(v17, v7);
    if (v18)
    {
      goto LABEL_23;
    }

LABEL_29:
    v60 = 1023;
    v22 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v23 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v22)
    {
      v24 = v57;
      if (v23 > 64)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v24 = v57;
      if (v23 >= 64)
      {
LABEL_31:
        lazy protocol witness table accessor for type Int and conformance Int();
        v25 = v58;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v26 = v59;
        v27 = dispatch thunk of static Comparable.< infix(_:_:)();
        v28 = *(v24 + 8);
        v28(v25, v7);
        v28(v26, v7);
        if (v27)
        {
          goto LABEL_2;
        }

        goto LABEL_35;
      }
    }

    v29 = v59;
    v30 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v24 + 8))(v29, v7);
    if (v30 > 1023)
    {
      goto LABEL_2;
    }

LABEL_35:
    if (dispatch thunk of BinaryFloatingPoint.significandWidth.getter() < 53)
    {
      return specialized BinaryFloatingPoint.init<A>(_:)(a1, a2);
    }

LABEL_2:
    (*(*(a2 - 8) + 8))(a1, a2);
    return 0;
  }

  if (dispatch thunk of BinaryInteger._lowWord.getter() >= -1022)
  {
    goto LABEL_29;
  }

LABEL_23:
  v60 = -1074;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v20 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v21 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v20 & 1) == 0)
    {
      if (v21 >= 64)
      {
        v32 = v57;
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    if (v21 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v33 = dispatch thunk of static Comparable.< infix(_:_:)();
      v55 = *(v57 + 8);
      v55(v58, v7);
      if (v33)
      {
        (*(*(a2 - 8) + 8))(a1, a2);
        v55(v59, v7);
        return 0;
      }

LABEL_43:
      v34 = dispatch thunk of BinaryInteger._lowWord.getter();
      v32 = v57;
      if (v34 < -1074)
      {
        goto LABEL_44;
      }

      goto LABEL_45;
    }
  }

  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v31 = dispatch thunk of static Comparable.< infix(_:_:)();
  v32 = v57;
  (*(v57 + 8))(v58, v7);
  if (v31)
  {
LABEL_44:
    (*(*(a2 - 8) + 8))(a1, a2);
    (*(v32 + 8))(v59, v7);
    return 0;
  }

LABEL_45:
  v55 = dispatch thunk of BinaryFloatingPoint.significandWidth.getter();
  v35 = *(v32 + 16);
  v36 = v56;
  v35(v56, v59, v7);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    goto LABEL_60;
  }

  v60 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    v37 = v56;
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
      lazy protocol witness table accessor for type Int and conformance Int();
      v38 = v58;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v39 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v57 + 8))(v38, v7);
      v36 = v37;
      if (v39)
      {
        goto LABEL_74;
      }

LABEL_60:
      v46 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v47 = v57;
      v48 = v36;
      if (v46 <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
      {
        goto LABEL_69;
      }

      v60 = 0x7FFFFFFFFFFFFFFFLL;
      v49 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v50 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v49)
      {
        if (v50 < 65)
        {
LABEL_63:
          dispatch thunk of BinaryInteger._lowWord.getter();
          goto LABEL_69;
        }
      }

      else if (v50 < 64)
      {
        goto LABEL_63;
      }

      lazy protocol witness table accessor for type Int and conformance Int();
      v51 = v58;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v52 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v47 + 8))(v51, v7);
      if (v52)
      {
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

LABEL_69:
      v53 = dispatch thunk of BinaryInteger._lowWord.getter();
      v54 = *(v47 + 8);
      v54(v48, v7);
      result = (v54)(v59, v7);
      if (!__OFADD__(v53, 1074))
      {
        if (v53 + 1074 >= v55)
        {
          return specialized BinaryFloatingPoint.init<A>(_:)(a1, a2);
        }

        goto LABEL_2;
      }

      __break(1u);
      goto LABEL_73;
    }

    goto LABEL_58;
  }

  v40 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v41 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v40 & 1) == 0)
  {
    v37 = v56;
    if (v41 >= 64)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if (v41 > 64)
  {
    lazy protocol witness table accessor for type Int and conformance Int();
    v42 = v58;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v36 = v56;
    v43 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (*(v57 + 8))(v42, v7);
    if (v43)
    {
      goto LABEL_74;
    }

    goto LABEL_60;
  }

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v44 = v58;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v37 = v56;
  v45 = dispatch thunk of static Comparable.< infix(_:_:)();
  result = (*(v57 + 8))(v44, v7);
  if ((v45 & 1) == 0)
  {
LABEL_58:
    dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_59:
    v36 = v37;
    goto LABEL_60;
  }

LABEL_74:
  __break(1u);
  return result;
}

float specialized BinaryFloatingPoint.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v49 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v47 = &v45 - v5;
  v6 = swift_getAssociatedTypeWitness();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - v7;
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v19 = dispatch thunk of static BinaryFloatingPoint.exponentBitCount.getter();
  v20 = dispatch thunk of static BinaryFloatingPoint.significandBitCount.getter();
  if (v19 == 11)
  {
    if (v20 == 52)
    {
      (*(v9 + 16))(v18, a1, a2);
      if (swift_dynamicCast())
      {
        (*(v9 + 8))(a1, a2);
        return v50;
      }

      else
      {
        v29 = dispatch thunk of FloatingPoint.sign.getter();
        dispatch thunk of BinaryFloatingPoint.exponentBitPattern.getter();
        v30 = v46;
        swift_getAssociatedConformanceWitness();
        v31 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v45 + 8))(v8, v30);
        v32 = v47;
        dispatch thunk of BinaryFloatingPoint.significandBitPattern.getter();
        (*(v9 + 8))(a1, a2);
        v33 = v49;
        swift_getAssociatedConformanceWitness();
        v34 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v48 + 8))(v32, v33);
        return COERCE_DOUBLE((v29 << 63) | ((v31 & 0x7FF) << 52) | v34 & 0xFFFFFFFFFFFFFLL);
      }
    }

    goto LABEL_13;
  }

  if (v19 == 8)
  {
    if (v20 == 23)
    {
      (*(v9 + 16))(v15, a1, a2);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v22 = dispatch thunk of FloatingPoint.sign.getter();
        dispatch thunk of BinaryFloatingPoint.exponentBitPattern.getter();
        v23 = v46;
        swift_getAssociatedConformanceWitness();
        v24 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v45 + 8))(v8, v23);
        v25 = v47;
        dispatch thunk of BinaryFloatingPoint.significandBitPattern.getter();
        (*(v9 + 8))(a1, a2);
        v26 = v49;
        swift_getAssociatedConformanceWitness();
        v27 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v48 + 8))(v25, v26);
        LODWORD(result) = (v22 << 31) | (v24 << 23) | v27 & 0x7FFFFF;
        return result;
      }

      goto LABEL_14;
    }

LABEL_13:
    lazy protocol witness table accessor for type Float and conformance Float();
    static BinaryFloatingPoint._convert<A>(from:)();
LABEL_14:
    (*(v9 + 8))(a1, a2);
    return *&v50;
  }

  if (v19 != 5 || v20 != 10)
  {
    goto LABEL_13;
  }

  (*(v9 + 16))(v12, a1, a2);
  if (swift_dynamicCast())
  {
    (*(v9 + 8))(a1, a2);
    _H0 = LOWORD(v50);
  }

  else
  {
    v35 = dispatch thunk of FloatingPoint.sign.getter();
    dispatch thunk of BinaryFloatingPoint.exponentBitPattern.getter();
    v36 = v46;
    swift_getAssociatedConformanceWitness();
    v37 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v45 + 8))(v8, v36);
    v38 = v47;
    dispatch thunk of BinaryFloatingPoint.significandBitPattern.getter();
    (*(v9 + 8))(a1, a2);
    v39 = v49;
    swift_getAssociatedConformanceWitness();
    v40 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v48 + 8))(v38, v39);
    _H0 = (v35 << 15) | ((v37 & 0x1F) << 10) | v40 & 0x3FF;
  }

  __asm { FCVT            S0, H0 }

  return result;
}

unint64_t specialized BinaryFloatingPoint.init<A>(exactly:)(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = swift_checkMetadataState();
  v60 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v58 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v58 - v12;
  if (dispatch thunk of FloatingPoint.isNaN.getter())
  {
    goto LABEL_2;
  }

  if (dispatch thunk of static BinaryFloatingPoint.exponentBitCount.getter() <= 8 && dispatch thunk of static BinaryFloatingPoint.significandBitCount.getter() < 24 || (dispatch thunk of FloatingPoint.isFinite.getter() & 1) == 0 || (dispatch thunk of FloatingPoint.isZero.getter() & 1) != 0)
  {
LABEL_8:
    v15 = specialized BinaryFloatingPoint.init<A>(_:)(a1, a2);
    v14 = 0;
    v13 = LODWORD(v15);
    goto LABEL_9;
  }

  v58 = a3;
  dispatch thunk of FloatingPoint.exponent.getter();
  v63 = -126;
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v17 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v18 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v17)
    {
      if (v18 > 64)
      {
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v19 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v60 + 8))(v61, v7);
        if (v19)
        {
          goto LABEL_24;
        }

        goto LABEL_30;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v22 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v60 + 8))(v61, v7);
      if (v22)
      {
        goto LABEL_24;
      }
    }

    else if (v18 >= 64)
    {
      goto LABEL_30;
    }

    if (dispatch thunk of BinaryInteger._lowWord.getter() >= -126)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
  {
    lazy protocol witness table accessor for type Int and conformance Int();
    v20 = v61;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v21 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v60 + 8))(v20, v7);
    if (v21)
    {
      goto LABEL_24;
    }

LABEL_30:
    v63 = 127;
    v25 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v26 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v25)
    {
      v27 = v60;
      if (v26 > 64)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v27 = v60;
      if (v26 >= 64)
      {
LABEL_32:
        lazy protocol witness table accessor for type Int and conformance Int();
        v28 = v61;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v29 = v62;
        v30 = dispatch thunk of static Comparable.< infix(_:_:)();
        v31 = *(v27 + 8);
        v31(v28, v7);
        v31(v29, v7);
        if (v30)
        {
          goto LABEL_2;
        }

        goto LABEL_36;
      }
    }

    v32 = v62;
    v33 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v27 + 8))(v32, v7);
    if (v33 > 127)
    {
      goto LABEL_2;
    }

LABEL_36:
    if (dispatch thunk of BinaryFloatingPoint.significandWidth.getter() < 24)
    {
      goto LABEL_8;
    }

LABEL_2:
    (*(*(a2 - 8) + 8))(a1, a2);
LABEL_3:
    v13 = 0;
    v14 = 1;
LABEL_9:
    LOBYTE(v63) = v14;
    return v13 | (v14 << 32);
  }

  if (dispatch thunk of BinaryInteger._lowWord.getter() >= -126)
  {
    goto LABEL_30;
  }

LABEL_24:
  v63 = -149;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v23 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v24 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v23 & 1) == 0)
    {
      if (v24 >= 64)
      {
        v35 = v60;
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    if (v24 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v36 = dispatch thunk of static Comparable.< infix(_:_:)();
      v58 = *(v60 + 8);
      v58(v61, v7);
      if (v36)
      {
        (*(*(a2 - 8) + 8))(a1, a2);
        v58(v62, v7);
        goto LABEL_3;
      }

LABEL_44:
      v37 = dispatch thunk of BinaryInteger._lowWord.getter();
      v35 = v60;
      if (v37 < -149)
      {
        goto LABEL_45;
      }

      goto LABEL_46;
    }
  }

  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v34 = dispatch thunk of static Comparable.< infix(_:_:)();
  v35 = v60;
  (*(v60 + 8))(v61, v7);
  if (v34)
  {
LABEL_45:
    (*(*(a2 - 8) + 8))(a1, a2);
    (*(v35 + 8))(v62, v7);
    goto LABEL_3;
  }

LABEL_46:
  v58 = dispatch thunk of BinaryFloatingPoint.significandWidth.getter();
  v38 = *(v35 + 16);
  v39 = v59;
  v38(v59, v62, v7);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    goto LABEL_61;
  }

  v63 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    v40 = v59;
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
      lazy protocol witness table accessor for type Int and conformance Int();
      v41 = v61;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v42 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v60 + 8))(v41, v7);
      v39 = v40;
      if (v42)
      {
        goto LABEL_75;
      }

LABEL_61:
      v49 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v50 = v60;
      v51 = v39;
      if (v49 <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
      {
        goto LABEL_70;
      }

      v63 = 0x7FFFFFFFFFFFFFFFLL;
      v52 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v53 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v52)
      {
        if (v53 < 65)
        {
LABEL_64:
          dispatch thunk of BinaryInteger._lowWord.getter();
          goto LABEL_70;
        }
      }

      else if (v53 < 64)
      {
        goto LABEL_64;
      }

      lazy protocol witness table accessor for type Int and conformance Int();
      v54 = v61;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v55 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v50 + 8))(v54, v7);
      if (v55)
      {
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

LABEL_70:
      v56 = dispatch thunk of BinaryInteger._lowWord.getter();
      v57 = *(v50 + 8);
      v57(v51, v7);
      result = (v57)(v62, v7);
      if (!__OFADD__(v56, 149))
      {
        if (v56 + 149 >= v58)
        {
          goto LABEL_8;
        }

        goto LABEL_2;
      }

      __break(1u);
      goto LABEL_74;
    }

    goto LABEL_59;
  }

  v43 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v44 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v43 & 1) == 0)
  {
    v40 = v59;
    if (v44 >= 64)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (v44 > 64)
  {
    lazy protocol witness table accessor for type Int and conformance Int();
    v45 = v61;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v39 = v59;
    v46 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (*(v60 + 8))(v45, v7);
    if (v46)
    {
      goto LABEL_75;
    }

    goto LABEL_61;
  }

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v47 = v61;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v40 = v59;
  v48 = dispatch thunk of static Comparable.< infix(_:_:)();
  result = (*(v60 + 8))(v47, v7);
  if ((v48 & 1) == 0)
  {
LABEL_59:
    dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_60:
    v39 = v40;
    goto LABEL_61;
  }

LABEL_75:
  __break(1u);
  return result;
}

uint64_t specialized _PlistDictionaryUnkeyedDecodingContainer.decode(_:)()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v6 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v6 = MEMORY[0x1E69E6158];
    v17 = *(*v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v19 = swift_allocObject();
    *(inited + 32) = v19;
    *(v19 + 16) = v4;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 40) = 2;
    *&v26 = v17;

    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v6, *MEMORY[0x1E69E6B08], v15);
    swift_willThrow();
    return v6;
  }

  v5 = *v0;
  v6 = *(*v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    *(v5 + 32) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v27 = &type metadata for _CodingKey;
  v10 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v28 = v10;
  v11 = swift_allocObject();
  *&v26 = v11;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = v4;
  *(v11 + 40) = 2;
  v6[2] = v9 + 1;
  result = outlined init with take of Equatable(&v26, &v6[5 * v9 + 4]);
  *(v5 + 32) = v6;
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v26);
    v13 = specialized __PlistDictionaryDecoder.unbox(_:as:)(&v26);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v26);
    }

    else
    {
      v6 = v13;
      v20 = v14;
      __swift_destroy_boxed_opaque_existential_1(&v26);
      if (v20)
      {
        v2[3] = v4 + 1;
        $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
        return v6;
      }

      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v22 = MEMORY[0x1E69E6158];
      v23 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_181218E20;
      *(v24 + 56) = &type metadata for _CodingKey;
      *(v24 + 64) = v10;
      v25 = swift_allocObject();
      *(v24 + 32) = v25;
      *(v25 + 16) = v4;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0;
      *(v25 + 40) = 2;
      *&v26 = v23;

      specialized Array.append<A>(contentsOf:)(v24);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 1) + 104))(v22, *MEMORY[0x1E69E6B08], v6);
      swift_willThrow();
    }

    $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
    return v6;
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
    v6 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v6 = MEMORY[0x1E69E6530];
    v17 = *(*v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v19 = swift_allocObject();
    *(inited + 32) = v19;
    *(v19 + 16) = v4;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 40) = 2;
    *&v26 = v17;

    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v6, *MEMORY[0x1E69E6B08], v15);
    swift_willThrow();
    return v6;
  }

  v5 = *v0;
  v6 = *(*v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    *(v5 + 32) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v27 = &type metadata for _CodingKey;
  v10 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v28 = v10;
  v11 = swift_allocObject();
  *&v26 = v11;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = v4;
  *(v11 + 40) = 2;
  v6[2] = v9 + 1;
  result = outlined init with take of Equatable(&v26, &v6[5 * v9 + 4]);
  *(v5 + 32) = v6;
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v26);
    _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFSi_Tt1g5(&v26);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v26);
    }

    else
    {
      v6 = v13;
      v20 = v14;
      __swift_destroy_boxed_opaque_existential_1(&v26);
      if ((v20 & 1) == 0)
      {
        v2[3] = v4 + 1;
        $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
        return v6;
      }

      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v22 = MEMORY[0x1E69E6530];
      v23 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_181218E20;
      *(v24 + 56) = &type metadata for _CodingKey;
      *(v24 + 64) = v10;
      v25 = swift_allocObject();
      *(v24 + 32) = v25;
      *(v25 + 16) = v4;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0;
      *(v25 + 40) = 2;
      *&v26 = v23;

      specialized Array.append<A>(contentsOf:)(v24);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 1) + 104))(v22, *MEMORY[0x1E69E6B08], v6);
      swift_willThrow();
    }

    $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
    return v6;
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
    v6 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v6 = MEMORY[0x1E69E7508];
    v16 = *(*v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v18 = swift_allocObject();
    *(inited + 32) = v18;
    *(v18 + 16) = v4;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 40) = 2;
    *&v24 = v16;

    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v6, *MEMORY[0x1E69E6B08], v14);
    swift_willThrow();
    return v6;
  }

  v5 = *v0;
  v6 = *(*v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    *(v5 + 32) = v6;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v25 = &type metadata for _CodingKey;
  v10 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v26 = v10;
  v11 = swift_allocObject();
  *&v24 = v11;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = v4;
  *(v11 + 40) = 2;
  *(v6 + 16) = v9 + 1;
  result = outlined init with take of Equatable(&v24, v6 + 40 * v9 + 32);
  *(v5 + 32) = v6;
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v24);
    _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs5UInt8V_Tt1g5(&v24);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v24);
LABEL_14:
      $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
      return v6;
    }

    v6 = v13;
    __swift_destroy_boxed_opaque_existential_1(&v24);
    if ((v6 & 0x100) != 0)
    {
      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v20 = MEMORY[0x1E69E7508];
      v21 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_181218E20;
      *(v22 + 56) = &type metadata for _CodingKey;
      *(v22 + 64) = v10;
      v23 = swift_allocObject();
      *(v22 + 32) = v23;
      *(v23 + 16) = v4;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      *(v23 + 40) = 2;
      *&v24 = v21;

      specialized Array.append<A>(contentsOf:)(v22);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 8) + 104))(v20, *MEMORY[0x1E69E6B08], v6);
      swift_willThrow();
      goto LABEL_14;
    }

    v2[3] = v4 + 1;
    $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
    return v6;
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
    v6 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v6 = MEMORY[0x1E69E75F8];
    v16 = *(*v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v18 = swift_allocObject();
    *(inited + 32) = v18;
    *(v18 + 16) = v4;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 40) = 2;
    *&v24 = v16;

    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v6, *MEMORY[0x1E69E6B08], v14);
    swift_willThrow();
    return v6;
  }

  v5 = *v0;
  v6 = *(*v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    *(v5 + 32) = v6;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v25 = &type metadata for _CodingKey;
  v10 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v26 = v10;
  v11 = swift_allocObject();
  *&v24 = v11;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = v4;
  *(v11 + 40) = 2;
  *(v6 + 16) = v9 + 1;
  result = outlined init with take of Equatable(&v24, v6 + 40 * v9 + 32);
  *(v5 + 32) = v6;
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v24);
    _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs6UInt16V_Tt1g5(&v24);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v24);
LABEL_14:
      $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
      return v6;
    }

    v6 = v13;
    __swift_destroy_boxed_opaque_existential_1(&v24);
    if ((v6 & 0x10000) != 0)
    {
      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v20 = MEMORY[0x1E69E75F8];
      v21 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_181218E20;
      *(v22 + 56) = &type metadata for _CodingKey;
      *(v22 + 64) = v10;
      v23 = swift_allocObject();
      *(v22 + 32) = v23;
      *(v23 + 16) = v4;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      *(v23 + 40) = 2;
      *&v24 = v21;

      specialized Array.append<A>(contentsOf:)(v22);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 8) + 104))(v20, *MEMORY[0x1E69E6B08], v6);
      swift_willThrow();
      goto LABEL_14;
    }

    v2[3] = v4 + 1;
    $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
    return v6;
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
    v6 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v6 = MEMORY[0x1E69E6370];
    v16 = *(*v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v18 = swift_allocObject();
    *(inited + 32) = v18;
    *(v18 + 16) = v4;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 40) = 2;
    *&v24 = v16;

    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v6, *MEMORY[0x1E69E6B08], v14);
    swift_willThrow();
    return v6 & 1;
  }

  v5 = *v0;
  v6 = *(*v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    *(v5 + 32) = v6;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v25 = &type metadata for _CodingKey;
  v10 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v26 = v10;
  v11 = swift_allocObject();
  *&v24 = v11;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = v4;
  *(v11 + 40) = 2;
  *(v6 + 16) = v9 + 1;
  result = outlined init with take of Equatable(&v24, v6 + 40 * v9 + 32);
  *(v5 + 32) = v6;
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v24);
    v13 = specialized __PlistDictionaryDecoder.unbox(_:as:)(&v24);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v24);
    }

    else
    {
      LOBYTE(v6) = v13;
      __swift_destroy_boxed_opaque_existential_1(&v24);
      if (v6 != 2)
      {
        v2[3] = v4 + 1;
        $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
        return v6 & 1;
      }

      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v20 = MEMORY[0x1E69E6370];
      v21 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_181218E20;
      *(v22 + 56) = &type metadata for _CodingKey;
      *(v22 + 64) = v10;
      v23 = swift_allocObject();
      *(v22 + 32) = v23;
      *(v23 + 16) = v4;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      *(v23 + 40) = 2;
      *&v24 = v21;

      specialized Array.append<A>(contentsOf:)(v22);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 8) + 104))(v20, *MEMORY[0x1E69E6B08], v6);
      swift_willThrow();
    }

    $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
    return v6 & 1;
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
    v6 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v6 = MEMORY[0x1E69E7230];
    v16 = *(*v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v18 = swift_allocObject();
    *(inited + 32) = v18;
    *(v18 + 16) = v4;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 40) = 2;
    *&v24 = v16;

    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v6, *MEMORY[0x1E69E6B08], v14);
    swift_willThrow();
    return v6;
  }

  v5 = *v0;
  v6 = *(*v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    *(v5 + 32) = v6;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v25 = &type metadata for _CodingKey;
  v10 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v26 = v10;
  v11 = swift_allocObject();
  *&v24 = v11;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = v4;
  *(v11 + 40) = 2;
  *(v6 + 16) = v9 + 1;
  result = outlined init with take of Equatable(&v24, v6 + 40 * v9 + 32);
  *(v5 + 32) = v6;
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v24);
    _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs4Int8V_Tt1g5(&v24);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v24);
LABEL_14:
      $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
      return v6;
    }

    v6 = v13;
    __swift_destroy_boxed_opaque_existential_1(&v24);
    if ((v6 & 0x100) != 0)
    {
      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v20 = MEMORY[0x1E69E7230];
      v21 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_181218E20;
      *(v22 + 56) = &type metadata for _CodingKey;
      *(v22 + 64) = v10;
      v23 = swift_allocObject();
      *(v22 + 32) = v23;
      *(v23 + 16) = v4;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      *(v23 + 40) = 2;
      *&v24 = v21;

      specialized Array.append<A>(contentsOf:)(v22);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 8) + 104))(v20, *MEMORY[0x1E69E6B08], v6);
      swift_willThrow();
      goto LABEL_14;
    }

    v2[3] = v4 + 1;
    $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
    return v6;
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
    v6 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v6 = MEMORY[0x1E69E7290];
    v16 = *(*v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v18 = swift_allocObject();
    *(inited + 32) = v18;
    *(v18 + 16) = v4;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 40) = 2;
    *&v24 = v16;

    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v6, *MEMORY[0x1E69E6B08], v14);
    swift_willThrow();
    return v6;
  }

  v5 = *v0;
  v6 = *(*v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    *(v5 + 32) = v6;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v25 = &type metadata for _CodingKey;
  v10 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v26 = v10;
  v11 = swift_allocObject();
  *&v24 = v11;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = v4;
  *(v11 + 40) = 2;
  *(v6 + 16) = v9 + 1;
  result = outlined init with take of Equatable(&v24, v6 + 40 * v9 + 32);
  *(v5 + 32) = v6;
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v24);
    _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs5Int16V_Tt1g5(&v24);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v24);
LABEL_14:
      $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
      return v6;
    }

    v6 = v13;
    __swift_destroy_boxed_opaque_existential_1(&v24);
    if ((v6 & 0x10000) != 0)
    {
      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v20 = MEMORY[0x1E69E7290];
      v21 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_181218E20;
      *(v22 + 56) = &type metadata for _CodingKey;
      *(v22 + 64) = v10;
      v23 = swift_allocObject();
      *(v22 + 32) = v23;
      *(v23 + 16) = v4;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      *(v23 + 40) = 2;
      *&v24 = v21;

      specialized Array.append<A>(contentsOf:)(v22);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 8) + 104))(v20, *MEMORY[0x1E69E6B08], v6);
      swift_willThrow();
      goto LABEL_14;
    }

    v2[3] = v4 + 1;
    $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
    return v6;
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
    v6 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v6 = MEMORY[0x1E69E72F0];
    v16 = *(*v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v18 = swift_allocObject();
    *(inited + 32) = v18;
    *(v18 + 16) = v4;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 40) = 2;
    *&v24 = v16;

    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v6, *MEMORY[0x1E69E6B08], v14);
    swift_willThrow();
    return v6;
  }

  v5 = *v0;
  v6 = *(*v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    *(v5 + 32) = v6;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v25 = &type metadata for _CodingKey;
  v10 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v26 = v10;
  v11 = swift_allocObject();
  *&v24 = v11;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = v4;
  *(v11 + 40) = 2;
  *(v6 + 16) = v9 + 1;
  result = outlined init with take of Equatable(&v24, v6 + 40 * v9 + 32);
  *(v5 + 32) = v6;
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v24);
    _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs5Int32V_Tt1g5(&v24);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v24);
LABEL_14:
      $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
      return v6;
    }

    v6 = v13;
    __swift_destroy_boxed_opaque_existential_1(&v24);
    if ((v6 & 0x100000000) != 0)
    {
      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v20 = MEMORY[0x1E69E72F0];
      v21 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_181218E20;
      *(v22 + 56) = &type metadata for _CodingKey;
      *(v22 + 64) = v10;
      v23 = swift_allocObject();
      *(v22 + 32) = v23;
      *(v23 + 16) = v4;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      *(v23 + 40) = 2;
      *&v24 = v21;

      specialized Array.append<A>(contentsOf:)(v22);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 8) + 104))(v20, *MEMORY[0x1E69E6B08], v6);
      swift_willThrow();
      goto LABEL_14;
    }

    v2[3] = v4 + 1;
    $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
    return v6;
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
    v6 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v6 = MEMORY[0x1E69E7360];
    v17 = *(*v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v19 = swift_allocObject();
    *(inited + 32) = v19;
    *(v19 + 16) = v4;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 40) = 2;
    *&v26 = v17;

    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v6, *MEMORY[0x1E69E6B08], v15);
    swift_willThrow();
    return v6;
  }

  v5 = *v0;
  v6 = *(*v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    *(v5 + 32) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v27 = &type metadata for _CodingKey;
  v10 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v28 = v10;
  v11 = swift_allocObject();
  *&v26 = v11;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = v4;
  *(v11 + 40) = 2;
  v6[2] = v9 + 1;
  result = outlined init with take of Equatable(&v26, &v6[5 * v9 + 4]);
  *(v5 + 32) = v6;
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v26);
    _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs5Int64V_Tt1g5(&v26);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v26);
    }

    else
    {
      v6 = v13;
      v20 = v14;
      __swift_destroy_boxed_opaque_existential_1(&v26);
      if ((v20 & 1) == 0)
      {
        v2[3] = v4 + 1;
        $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
        return v6;
      }

      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v22 = MEMORY[0x1E69E7360];
      v23 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_181218E20;
      *(v24 + 56) = &type metadata for _CodingKey;
      *(v24 + 64) = v10;
      v25 = swift_allocObject();
      *(v24 + 32) = v25;
      *(v25 + 16) = v4;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0;
      *(v25 + 40) = 2;
      *&v26 = v23;

      specialized Array.append<A>(contentsOf:)(v24);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 1) + 104))(v22, *MEMORY[0x1E69E6B08], v6);
      swift_willThrow();
    }

    $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
    return v6;
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
    v6 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v6 = MEMORY[0x1E69E6810];
    v17 = *(*v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v19 = swift_allocObject();
    *(inited + 32) = v19;
    *(v19 + 16) = v4;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 40) = 2;
    *&v26 = v17;

    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v6, *MEMORY[0x1E69E6B08], v15);
    swift_willThrow();
    return v6;
  }

  v5 = *v0;
  v6 = *(*v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    *(v5 + 32) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v27 = &type metadata for _CodingKey;
  v10 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v28 = v10;
  v11 = swift_allocObject();
  *&v26 = v11;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = v4;
  *(v11 + 40) = 2;
  v6[2] = v9 + 1;
  result = outlined init with take of Equatable(&v26, &v6[5 * v9 + 4]);
  *(v5 + 32) = v6;
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v26);
    _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFSu_Tt1g5(&v26);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v26);
    }

    else
    {
      v6 = v13;
      v20 = v14;
      __swift_destroy_boxed_opaque_existential_1(&v26);
      if ((v20 & 1) == 0)
      {
        v2[3] = v4 + 1;
        $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
        return v6;
      }

      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v22 = MEMORY[0x1E69E6810];
      v23 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_181218E20;
      *(v24 + 56) = &type metadata for _CodingKey;
      *(v24 + 64) = v10;
      v25 = swift_allocObject();
      *(v24 + 32) = v25;
      *(v25 + 16) = v4;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0;
      *(v25 + 40) = 2;
      *&v26 = v23;

      specialized Array.append<A>(contentsOf:)(v24);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 1) + 104))(v22, *MEMORY[0x1E69E6B08], v6);
      swift_willThrow();
    }

    $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
    return v6;
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
    v6 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v6 = MEMORY[0x1E69E7668];
    v16 = *(*v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v18 = swift_allocObject();
    *(inited + 32) = v18;
    *(v18 + 16) = v4;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 40) = 2;
    *&v24 = v16;

    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v6, *MEMORY[0x1E69E6B08], v14);
    swift_willThrow();
    return v6;
  }

  v5 = *v0;
  v6 = *(*v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    *(v5 + 32) = v6;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v25 = &type metadata for _CodingKey;
  v10 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v26 = v10;
  v11 = swift_allocObject();
  *&v24 = v11;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = v4;
  *(v11 + 40) = 2;
  *(v6 + 16) = v9 + 1;
  result = outlined init with take of Equatable(&v24, v6 + 40 * v9 + 32);
  *(v5 + 32) = v6;
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v24);
    _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs6UInt32V_Tt1g5(&v24);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v24);
LABEL_14:
      $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
      return v6;
    }

    v6 = v13;
    __swift_destroy_boxed_opaque_existential_1(&v24);
    if ((v6 & 0x100000000) != 0)
    {
      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v20 = MEMORY[0x1E69E7668];
      v21 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_181218E20;
      *(v22 + 56) = &type metadata for _CodingKey;
      *(v22 + 64) = v10;
      v23 = swift_allocObject();
      *(v22 + 32) = v23;
      *(v23 + 16) = v4;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      *(v23 + 40) = 2;
      *&v24 = v21;

      specialized Array.append<A>(contentsOf:)(v22);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 8) + 104))(v20, *MEMORY[0x1E69E6B08], v6);
      swift_willThrow();
      goto LABEL_14;
    }

    v2[3] = v4 + 1;
    $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
    return v6;
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
    v6 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v6 = MEMORY[0x1E69E76D8];
    v17 = *(*v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v19 = swift_allocObject();
    *(inited + 32) = v19;
    *(v19 + 16) = v4;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 40) = 2;
    *&v26 = v17;

    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v6, *MEMORY[0x1E69E6B08], v15);
    swift_willThrow();
    return v6;
  }

  v5 = *v0;
  v6 = *(*v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    *(v5 + 32) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v27 = &type metadata for _CodingKey;
  v10 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v28 = v10;
  v11 = swift_allocObject();
  *&v26 = v11;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = v4;
  *(v11 + 40) = 2;
  v6[2] = v9 + 1;
  result = outlined init with take of Equatable(&v26, &v6[5 * v9 + 4]);
  *(v5 + 32) = v6;
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v26);
    _s10Foundation24__PlistDictionaryDecoderC12unboxInteger33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKs010FixedWidthF0RzlFs6UInt64V_Tt1g5(&v26);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v26);
    }

    else
    {
      v6 = v13;
      v20 = v14;
      __swift_destroy_boxed_opaque_existential_1(&v26);
      if ((v20 & 1) == 0)
      {
        v2[3] = v4 + 1;
        $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
        return v6;
      }

      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v22 = MEMORY[0x1E69E76D8];
      v23 = *(v5 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_181218E20;
      *(v24 + 56) = &type metadata for _CodingKey;
      *(v24 + 64) = v10;
      v25 = swift_allocObject();
      *(v24 + 32) = v25;
      *(v25 + 16) = v4;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0;
      *(v25 + 40) = 2;
      *&v26 = v23;

      specialized Array.append<A>(contentsOf:)(v24);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 1) + 104))(v22, *MEMORY[0x1E69E6B08], v6);
      swift_willThrow();
    }

    $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
    return v6;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v16 = MEMORY[0x1E69E6448];
    v17 = *(*v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v19 = swift_allocObject();
    *(inited + 32) = v19;
    *(v19 + 16) = v4;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 40) = 2;
    *&v27 = v17;

    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6B08], v14);
    return swift_willThrow();
  }

  v5 = *v0;
  v6 = *(*v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    *(v5 + 32) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v28 = &type metadata for _CodingKey;
  v10 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v29 = v10;
  v11 = swift_allocObject();
  *&v27 = v11;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = v4;
  *(v11 + 40) = 2;
  v6[2] = v9 + 1;
  result = outlined init with take of Equatable(&v27, &v6[5 * v9 + 4]);
  *(v5 + 32) = v6;
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

  outlined init with copy of Any(v3 + 32 * v4 + 32, &v27);
  _s10Foundation24__PlistDictionaryDecoderC18unboxFloatingPoint33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKSBRzlFSf_Tt1g5(&v27);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  else
  {
    v20 = v13;
    __swift_destroy_boxed_opaque_existential_1(&v27);
    if ((v20 & 0x100000000) == 0)
    {
      v2[3] = v4 + 1;
      return $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
    }

    v21 = type metadata accessor for DecodingError();
    swift_allocError();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v23 = MEMORY[0x1E69E6448];
    v24 = *(v5 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_181218E20;
    *(v25 + 56) = &type metadata for _CodingKey;
    *(v25 + 64) = v10;
    v26 = swift_allocObject();
    *(v25 + 32) = v26;
    *(v26 + 16) = v4;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0;
    *(v26 + 40) = 2;
    *&v27 = v24;

    specialized Array.append<A>(contentsOf:)(v25);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6B08], v21);
    swift_willThrow();
  }

  return $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v16 = MEMORY[0x1E69E63B0];
    v17 = *(*v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v19 = swift_allocObject();
    *(inited + 32) = v19;
    *(v19 + 16) = v4;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 40) = 2;
    *&v27 = v17;

    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6B08], v14);
    return swift_willThrow();
  }

  v5 = *v0;
  v6 = *(*v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    *(v5 + 32) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v28 = &type metadata for _CodingKey;
  v10 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v29 = v10;
  v11 = swift_allocObject();
  *&v27 = v11;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = v4;
  *(v11 + 40) = 2;
  v6[2] = v9 + 1;
  result = outlined init with take of Equatable(&v27, &v6[5 * v9 + 4]);
  *(v5 + 32) = v6;
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

  outlined init with copy of Any(v3 + 32 * v4 + 32, &v27);
  _s10Foundation24__PlistDictionaryDecoderC18unboxFloatingPoint33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKSBRzlFSd_Tt1g5(&v27);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(&v27);
    return $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
  }

  v20 = v13;
  __swift_destroy_boxed_opaque_existential_1(&v27);
  if (v20)
  {
    v21 = type metadata accessor for DecodingError();
    swift_allocError();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v23 = MEMORY[0x1E69E63B0];
    v24 = *(v5 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_181218E20;
    *(v25 + 56) = &type metadata for _CodingKey;
    *(v25 + 64) = v10;
    v26 = swift_allocObject();
    *(v25 + 32) = v26;
    *(v26 + 16) = v4;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0;
    *(v26 + 40) = 2;
    *&v27 = v24;

    specialized Array.append<A>(contentsOf:)(v25);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6B08], v21);
    swift_willThrow();
    return $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
  }

  v2[3] = v4 + 1;
  return $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v2);
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PlistDictionaryUnkeyedDecodingContainer and conformance _PlistDictionaryUnkeyedDecodingContainer()
{
  result = lazy protocol witness table cache variable for type _PlistDictionaryUnkeyedDecodingContainer and conformance _PlistDictionaryUnkeyedDecodingContainer;
  if (!lazy protocol witness table cache variable for type _PlistDictionaryUnkeyedDecodingContainer and conformance _PlistDictionaryUnkeyedDecodingContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PlistDictionaryUnkeyedDecodingContainer and conformance _PlistDictionaryUnkeyedDecodingContainer);
  }

  return result;
}

void __PlistDictionaryEncoder.unkeyedContainer()(uint64_t **a1@<X8>)
{
  v2 = v1;
  if ((*(*v1 + 208))())
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v5 = v4;
LABEL_6:
    v10 = v2[5];
    a1[3] = &type metadata for _PlistDictionaryUnkeyedEncodingContainer;
    a1[4] = lazy protocol witness table accessor for type _PlistDictionaryUnkeyedEncodingContainer and conformance _PlistDictionaryUnkeyedEncodingContainer();

    *a1 = v2;
    a1[1] = v5;
    a1[2] = v10;
    return;
  }

  v6 = specialized BidirectionalCollection.last.getter(v1[2]);
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v5 = v8;
      v9 = v7;
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t _PlistDictionaryKeyedEncodingContainer.encodeNil(forKey:)()
{
  v1 = *(v0 + 8);
  v2 = dispatch thunk of CodingKey.stringValue.getter();
  if (one-time initialization token for _plistNullNSString != -1)
  {
    v5 = v2;
    v6 = v3;
    swift_once();
    v3 = v6;
    v2 = v5;
  }

  [v1 __swift_setObject_forKeyedSubscript_];
  return swift_unknownObjectRelease();
}

uint64_t _PlistDictionaryKeyedEncodingContainer.encode(_:forKey:)(char a1)
{
  v3 = *(v1 + 8);
  v4 = dispatch thunk of CodingKey.stringValue.getter();
  v6 = v5;
  v7 = [objc_allocWithZone(NSNumber) initWithBool_];
  [v3 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

{
  v3 = *(v1 + 8);
  v4 = dispatch thunk of CodingKey.stringValue.getter();
  v6 = v5;
  v7 = [objc_allocWithZone(NSNumber) initWithChar_];
  [v3 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t _PlistDictionaryKeyedEncodingContainer.encode(_:forKey:)(__int16 a1)
{
  v3 = *(v1 + 8);
  v4 = dispatch thunk of CodingKey.stringValue.getter();
  v6 = v5;
  v7 = [objc_allocWithZone(NSNumber) initWithShort_];
  [v3 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t _PlistDictionaryKeyedEncodingContainer.encode(_:forKey:)(unsigned __int8 a1)
{
  v3 = *(v1 + 8);
  v4 = dispatch thunk of CodingKey.stringValue.getter();
  v6 = v5;
  v7 = [objc_allocWithZone(NSNumber) initWithUnsignedChar_];
  [v3 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t _PlistDictionaryKeyedEncodingContainer.encode(_:forKey:)(unsigned __int16 a1)
{
  v3 = *(v1 + 8);
  v4 = dispatch thunk of CodingKey.stringValue.getter();
  v6 = v5;
  v7 = [objc_allocWithZone(NSNumber) initWithUnsignedShort_];
  [v3 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t _PlistDictionaryKeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = *(v4 + 8);
  v8 = dispatch thunk of CodingKey.stringValue.getter();
  v10 = v9;
  v11 = [objc_allocWithZone(NSNumber) *a4];
  [v7 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t _PlistDictionaryKeyedEncodingContainer.encode(_:forKey:)(float a1)
{
  v3 = *(v1 + 8);
  v4 = dispatch thunk of CodingKey.stringValue.getter();
  v6 = v5;
  v7 = objc_allocWithZone(NSNumber);
  *&v8 = a1;
  v9 = [v7 initWithFloat_];
  [v3 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t _PlistDictionaryKeyedEncodingContainer.encode(_:forKey:)(double a1)
{
  v3 = *(v1 + 8);
  v4 = dispatch thunk of CodingKey.stringValue.getter();
  v6 = v5;
  v7 = [objc_allocWithZone(NSNumber) initWithDouble_];
  [v3 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

void _PlistDictionaryKeyedEncodingContainer.encode<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a3 + 16);
  v31 = type metadata accessor for Optional();
  v12 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v14 = &v27 - v13;
  v28 = v5;
  v15 = *v5;
  v30[3] = a4;
  v30[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  v17 = *(v15 + 40);
  v18 = *(v11 - 8);
  v19 = *(v18 + 16);
  v27 = a2;
  v19(v14, a2, v11);
  (*(v18 + 56))(v14, 0, 1, v11);
  v20 = *(a3 + 24);

  v21 = v29;
  v22 = __PlistDictionaryEncoder.box<A>(_:for:_:)(v30, v17, v14, v11, v20);
  if (v21)
  {
    (*(v12 + 8))(v14, v31);

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    v23 = v22;
    (*(v12 + 8))(v14, v31);

    __swift_destroy_boxed_opaque_existential_1(v30);
    v24 = v28[1];
    v30[0] = dispatch thunk of CodingKey.stringValue.getter();
    v30[1] = v25;
    v26 = v23;
    [v24 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();
  }
}

id __PlistDictionaryEncoder.box<A>(_:for:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  v13 = swift_dynamicCastMetatype();
  if (v13)
  {
    v14 = MEMORY[0x1EEE9AC00](v13);
    (*(v16 + 16))(v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v10, v14);
    v17 = &lazy cache variable for type metadata for NSDate;
LABEL_5:
    type metadata accessor for NSMorphologyPronoun(0, v17);
    swift_dynamicCast();
    return v24[3];
  }

  v18 = swift_dynamicCastMetatype();
  if (v18)
  {
    v19 = MEMORY[0x1EEE9AC00](v18);
    (*(v21 + 16))(v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v10, v19);
    v17 = &lazy cache variable for type metadata for NSData;
    goto LABEL_5;
  }

  v24[1] = v24;
  MEMORY[0x1EEE9AC00](0);
  v23[2] = v10;
  v23[3] = a4;
  v23[4] = v11;
  v23[5] = a5;
  v23[6] = v12;
  result = __PlistDictionaryEncoder._boxGeneric<A>(_:for:_:)(partial apply for closure #1 in __PlistDictionaryEncoder.boxGeneric<A, B>(_:for:_:), v23, a2, a3, a4, a5);
  if (!v5 && !result)
  {
    return [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
  }

  return result;
}

void _PlistDictionaryKeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v43 = a5;
  v44 = a6;
  v45 = a4;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Optional();
  v13 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  v19 = *(a3 + 24);
  v47 = a2;
  v41 = v19;
  v20 = dispatch thunk of CodingKey.stringValue.getter();
  v22 = v21;
  v46 = v7;
  v23 = v7[1];
  *&v50[0] = v20;
  *(&v50[0] + 1) = v21;

  v24 = [v23 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v24)
  {

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v50, &v51);
    outlined init with copy of Any(&v51, v50);
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableDictionary);
    if (!swift_dynamicCast())
    {
      goto LABEL_16;
    }

    outlined init with take of Any(&v51, v50);
    swift_dynamicCast();
    v25 = v49;
  }

  else
  {
    v26 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    *&v51 = v20;
    *(&v51 + 1) = v22;
    v25 = v26;
    [v23 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
  }

  v27 = v48;
  v28 = *v46;
  v29 = v46[2];
  (*(v11 + 16))(v18, v47, v10);
  (*(v11 + 56))(v18, 0, 1, v10);
  (*(v13 + 16))(v15, v18, v27);
  if ((*(v11 + 48))(v15, 1, v10) == 1)
  {
    v30 = *(v13 + 8);

    v30(v18, v27);
    v30(v15, v27);

LABEL_13:
    *&v51 = v28;
    *(&v51 + 1) = v25;
    v52 = v29;
    type metadata accessor for _PlistDictionaryKeyedEncodingContainer();

    swift_getWitnessTable();
    KeyedEncodingContainer.init<A>(_:)();

    return;
  }

  v47 = v25;
  v31 = *(v11 + 32);
  v32 = v42;
  v31(v42, v15, v10);
  v33 = swift_allocObject();
  v34 = v41;
  v33[5] = v10;
  v33[6] = v34;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33 + 2);
  v31(boxed_opaque_existential_0, v32, v10);
  v36 = *(v13 + 8);

  v36(v18, v48);
  v33[7] = v29;
  if (v29 >> 62)
  {
    if (v29 >> 62 != 1)
    {
      v25 = v47;
      v39 = 1;
      goto LABEL_12;
    }

    v37 = ((v29 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v37 = (v29 + 64);
  }

  v25 = v47;
  v38 = *v37;

  v39 = v38 + 1;
  if (!__OFADD__(v38, 1))
  {
LABEL_12:
    v33[8] = v39;
    v29 = v33;
    goto LABEL_13;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void _PlistDictionaryKeyedEncodingContainer.nestedUnkeyedContainer(forKey:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v43 = a3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Optional();
  v10 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v16 = *(a2 + 24);
  v45 = a1;
  v41 = v16;
  v17 = dispatch thunk of CodingKey.stringValue.getter();
  v19 = v18;
  v44 = v4;
  v20 = v4[1];
  *&v48[0] = v17;
  *(&v48[0] + 1) = v18;

  v21 = [v20 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v21)
  {

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v48, v49);
    outlined init with copy of Any(v49, v48);
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableArray);
    if (!swift_dynamicCast())
    {
      goto LABEL_16;
    }

    outlined init with take of Any(v49, v48);
    swift_dynamicCast();
    v22 = v47;
  }

  else
  {
    v23 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
    *&v49[0] = v17;
    *(&v49[0] + 1) = v19;
    v22 = v23;
    [v20 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
  }

  v24 = *v44;
  v25 = v44[2];
  (*(v8 + 16))(v15, v45, v7);
  (*(v8 + 56))(v15, 0, 1, v7);
  v26 = v46;
  (*(v10 + 16))(v12, v15, v46);
  if ((*(v8 + 48))(v12, 1, v7) == 1)
  {
    v27 = *(v10 + 8);

    v27(v15, v26);
    v27(v12, v26);

LABEL_13:
    v39 = v43;
    v43[3] = &type metadata for _PlistDictionaryUnkeyedEncodingContainer;
    v39[4] = lazy protocol witness table accessor for type _PlistDictionaryUnkeyedEncodingContainer and conformance _PlistDictionaryUnkeyedEncodingContainer();

    *v39 = v24;
    v39[1] = v22;
    v39[2] = v25;
    return;
  }

  v45 = v22;
  v28 = *(v8 + 32);
  v29 = v24;
  v30 = v42;
  v28(v42, v12, v7);
  v31 = swift_allocObject();
  v32 = v41;
  v31[5] = v7;
  v31[6] = v32;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31 + 2);
  v34 = v30;
  v24 = v29;
  v28(boxed_opaque_existential_0, v34, v7);
  v35 = *(v10 + 8);

  v35(v15, v46);
  v31[7] = v25;
  if (v25 >> 62)
  {
    if (v25 >> 62 != 1)
    {
      v22 = v45;
      v38 = 1;
      goto LABEL_12;
    }

    v36 = ((v25 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v36 = (v25 + 64);
  }

  v22 = v45;
  v37 = *v36;

  v38 = v37 + 1;
  if (!__OFADD__(v37, 1))
  {
LABEL_12:
    v31[8] = v38;
    v25 = v31;
    goto LABEL_13;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t _PlistDictionaryKeyedEncodingContainer.superEncoder()@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v4 = *(*v1 + 40);

  v5 = v3;

  v7 = _s10Foundation35__PlistDictionaryReferencingEncoderC11referencing2at14codingPathNode8wrappingAcA02__bcE0C_s9CodingKey_pAA01_liJ0OSo09NSMutableC0CtcfCTf4nennn_nAA01_lM0O_Tt3g5(v6, 0x7265707573, 0xE500000000000000, 0, 0, v4, v5);
  a1[3] = type metadata accessor for __PlistDictionaryReferencingEncoder();
  result = lazy protocol witness table accessor for type __PlistDictionaryEncoder and conformance __PlistDictionaryEncoder(&lazy protocol witness table cache variable for type __PlistDictionaryReferencingEncoder and conformance __PlistDictionaryEncoder, type metadata accessor for __PlistDictionaryReferencingEncoder);
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t _PlistDictionaryKeyedEncodingContainer.superEncoder(forKey:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v4 = *v2;
  v3 = v2[1];
  v5 = *(*v2 + 40);
  v7 = *(a1 + 24);
  *&v54 = *(a1 + 16);
  v6 = v54;
  *(&v54 + 1) = v7;
  __swift_allocate_boxed_opaque_existential_0(v53);
  (*(*(v6 - 8) + 16))();
  v47 = type metadata accessor for __PlistDictionaryReferencingEncoder();
  v8 = swift_allocObject();
  *(v8 + 56) = v4;
  v52 = v5;
  v44 = v5 & 0x3FFFFFFFFFFFFFFFLL;

  v9 = v3;
  swift_retain_n();
  v10 = dispatch thunk of CodingKey.stringValue.getter();
  *(v8 + 64) = v9;
  *(v8 + 72) = v10;
  *(v8 + 80) = v11;
  *(v8 + 88) = 1;
  v12 = *(v4 + 32);
  v46 = *(v4 + 24);
  v50 = v12;
  v51 = v4;
  v45 = v54;
  v13 = v54;
  v14 = __swift_project_boxed_opaque_existential_1(v53, v54);
  v15 = type metadata accessor for Optional();
  v49 = *(v15 - 8);
  v16 = *(v49 + 64);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v18 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v13 - 8);
  (*(v19 + 16))(v18, v14, v13, v17);
  v20 = (*(v19 + 56))(v18, 0, 1, v13);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v25 = v15;
  v26 = v49;
  (*(v49 + 16))(v18, v18, v25, v24);
  if ((*(v19 + 48))(v18, 1, v13) == 1)
  {
    v27 = v50;

    v28 = *(v26 + 8);
    v28(v18, v25);
    v28(v18, v25);
    v29 = v52;
    v30 = v52 >> 62;
    v31 = v52;
    if (v52 >> 62)
    {
LABEL_3:
      v32 = v46;
      if (v30 != 1)
      {
        v38 = 0;
LABEL_14:
        *(v8 + 16) = MEMORY[0x1E69E7CC0];
        *(v8 + 24) = v32;
        *(v8 + 32) = v27;
        *(v8 + 40) = v31;
        *(v8 + 48) = v38;
        __swift_destroy_boxed_opaque_existential_1(v53);
        v42 = v48;
        v48[3] = v47;
        result = lazy protocol witness table accessor for type __PlistDictionaryEncoder and conformance __PlistDictionaryEncoder(&lazy protocol witness table cache variable for type __PlistDictionaryReferencingEncoder and conformance __PlistDictionaryEncoder, type metadata accessor for __PlistDictionaryReferencingEncoder);
        v42[4] = result;
        *v42 = v8;
        return result;
      }

      v33 = (v44 + 32);
LABEL_13:
      v38 = *v33;
      goto LABEL_14;
    }

LABEL_12:
    v33 = (v29 + 64);
    v32 = v46;
    goto LABEL_13;
  }

  v34 = *(v19 + 32);
  v34(v22, v18, v13);
  v31 = swift_allocObject();
  *(v31 + 40) = v45;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v31 + 16));
  v34(boxed_opaque_existential_0, v22, v13);
  v27 = v50;

  result = (*(v26 + 8))(v18, v25);
  v29 = v52;
  *(v31 + 56) = v52;
  v30 = v29 >> 62;
  if (!(v29 >> 62))
  {
    v37 = (v29 + 64);
LABEL_10:
    v39 = *v37;
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (!v40)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  if (v30 == 1)
  {
    v37 = (v44 + 32);
    goto LABEL_10;
  }

  v41 = 1;
  if (!__OFSUB__(v30, 1))
  {
LABEL_11:
    *(v31 + 64) = v41;
    if (v30)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _PlistDictionaryKeyedEncodingContainer<A>(char a1)
{
  return _PlistDictionaryKeyedEncodingContainer.encode(_:forKey:)(a1);
}

{
  return _PlistDictionaryKeyedEncodingContainer.encode(_:forKey:)(a1);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _PlistDictionaryKeyedEncodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return _PlistDictionaryKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, &selRef_initWithInteger_);
}

{
  return _PlistDictionaryKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, &selRef_initWithInt_);
}

{
  return _PlistDictionaryKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, &selRef_initWithLongLong_);
}

{
  return _PlistDictionaryKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, &selRef_initWithUnsignedInteger_);
}

{
  return _PlistDictionaryKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, &selRef_initWithUnsignedInt_);
}

{
  return _PlistDictionaryKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, &selRef_initWithUnsignedLongLong_);
}

void _PlistDictionaryUnkeyedEncodingContainer.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[4] = a3;
  v7 = *v3;
  v12[3] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  v9 = *(v7 + 40);
  v10 = v3[1];

  v11 = specialized __PlistDictionaryEncoder.box<A>(_:for:_:)(v12, v9, [v10 count], 0, 0, 2);

  __swift_destroy_boxed_opaque_existential_1(v12);
  if (!v4)
  {
    [v10 addObject_];
  }
}

uint64_t _PlistDictionaryUnkeyedEncodingContainer.nestedContainer<A>(keyedBy:)()
{
  v1 = *(v0 + 8);
  v2 = [v1 count];
  [v1 addObject_];
  v3 = *(v0 + 16);
  v4 = swift_allocObject();
  v4[5] = &type metadata for _CodingKey;
  v4[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  result = swift_allocObject();
  v4[2] = result;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = v2;
  *(result + 40) = 2;
  v4[7] = v3;
  if (v3 >> 62)
  {
    v6 = 0;
    if (v3 >> 62 != 1)
    {
      goto LABEL_6;
    }

    v7 = ((v3 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v7 = (v3 + 64);
  }

  v6 = *v7;

LABEL_6:
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    v4[8] = v6 + 1;
    type metadata accessor for _PlistDictionaryKeyedEncodingContainer();

    swift_getWitnessTable();
    return KeyedEncodingContainer.init<A>(_:)();
  }

  return result;
}

uint64_t _PlistDictionaryUnkeyedEncodingContainer.nestedUnkeyedContainer()@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v4 = [v3 count];
  v5 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  [v3 addObject_];
  v6 = *v1;
  v7 = v1[2];
  v8 = swift_allocObject();
  v8[5] = &type metadata for _CodingKey;
  v8[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  result = swift_allocObject();
  v8[2] = result;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = v4;
  *(result + 40) = 2;
  v8[7] = v7;
  if (v7 >> 62)
  {
    v10 = 0;
    if (v7 >> 62 != 1)
    {
      goto LABEL_6;
    }

    v11 = ((v7 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = (v7 + 64);
  }

  v10 = *v11;

LABEL_6:
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v8[8] = v10 + 1;
    a1[3] = &type metadata for _PlistDictionaryUnkeyedEncodingContainer;
    a1[4] = lazy protocol witness table accessor for type _PlistDictionaryUnkeyedEncodingContainer and conformance _PlistDictionaryUnkeyedEncodingContainer();
    *a1 = v6;
    a1[1] = v5;
    a1[2] = v8;
  }

  return result;
}

uint64_t _PlistDictionaryUnkeyedEncodingContainer.superEncoder()@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];

  v5 = [v3 count];
  v6 = v4[5];
  v7 = type metadata accessor for __PlistDictionaryReferencingEncoder();
  v8 = swift_allocObject();
  *(v8 + 56) = v4;
  *(v8 + 64) = v3;
  *(v8 + 72) = v5;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  v10 = v4[3];
  v9 = v4[4];
  v11 = swift_allocObject();
  v11[5] = &type metadata for _CodingKey;
  v11[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  result = swift_allocObject();
  v11[2] = result;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = v5;
  *(result + 40) = 2;
  v13 = v6 >> 62;
  v11[7] = v6;
  if (v6 >> 62)
  {
    v14 = 0;
    if (v13 != 1)
    {
      goto LABEL_6;
    }

    v15 = ((v6 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v15 = (v6 + 64);
  }

  v14 = *v15;

LABEL_6:
  if (__OFADD__(v14, 1))
  {
    __break(1u);
    return result;
  }

  v11[8] = v14 + 1;
  if (v13)
  {
    if (v13 != 1)
    {
      v17 = 0;
      goto LABEL_13;
    }

    v6 &= 0x3FFFFFFFFFFFFFFFuLL;
    v16 = 32;
  }

  else
  {
    v16 = 64;
  }

  v17 = *(v6 + v16);
LABEL_13:
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  *(v8 + 24) = v10;
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 48) = v17;
  a1[3] = v7;
  a1[4] = lazy protocol witness table accessor for type __PlistDictionaryEncoder and conformance __PlistDictionaryEncoder(&lazy protocol witness table cache variable for type __PlistDictionaryReferencingEncoder and conformance __PlistDictionaryEncoder, type metadata accessor for __PlistDictionaryReferencingEncoder);
  *a1 = v8;
  v18 = v3;
}

id protocol witness for UnkeyedEncodingContainer.encodeNil() in conformance _PlistDictionaryUnkeyedEncodingContainer()
{
  v1 = *(v0 + 8);
  if (one-time initialization token for _plistNullNSString != -1)
  {
    v3 = *(v0 + 8);
    swift_once();
    v1 = v3;
  }

  return [v1 addObject_];
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistDictionaryUnkeyedEncodingContainer(char a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_allocWithZone(NSNumber) initWithBool_];
  [v2 addObject_];
}

{
  v2 = *(v1 + 8);
  v3 = [objc_allocWithZone(NSNumber) initWithChar_];
  [v2 addObject_];
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistDictionaryUnkeyedEncodingContainer()
{
  v1 = *(v0 + 8);
  v2 = [objc_allocWithZone(NSString) initWithString_];
  swift_unknownObjectRelease();
  [v1 addObject_];
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistDictionaryUnkeyedEncodingContainer(double a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_allocWithZone(NSNumber) initWithDouble_];
  [v2 addObject_];
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistDictionaryUnkeyedEncodingContainer(float a1)
{
  v3 = *(v1 + 8);
  v4 = objc_allocWithZone(NSNumber);
  *&v5 = a1;
  v6 = [v4 initWithFloat_];
  [v3 addObject_];
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistDictionaryUnkeyedEncodingContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistDictionaryUnkeyedEncodingContainer(a1, a2, a3, &selRef_initWithInteger_);
}

{
  protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistDictionaryUnkeyedEncodingContainer(a1, a2, a3, &selRef_initWithInt_);
}

{
  protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistDictionaryUnkeyedEncodingContainer(a1, a2, a3, &selRef_initWithLongLong_);
}

{
  protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistDictionaryUnkeyedEncodingContainer(a1, a2, a3, &selRef_initWithUnsignedInteger_);
}

{
  protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistDictionaryUnkeyedEncodingContainer(a1, a2, a3, &selRef_initWithUnsignedInt_);
}

{
  protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistDictionaryUnkeyedEncodingContainer(a1, a2, a3, &selRef_initWithUnsignedLongLong_);
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistDictionaryUnkeyedEncodingContainer(__int16 a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_allocWithZone(NSNumber) initWithShort_];
  [v2 addObject_];
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistDictionaryUnkeyedEncodingContainer(unsigned __int8 a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_allocWithZone(NSNumber) initWithUnsignedChar_];
  [v2 addObject_];
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistDictionaryUnkeyedEncodingContainer(unsigned __int16 a1)
{
  v2 = *(v1 + 8);
  v3 = [objc_allocWithZone(NSNumber) initWithUnsignedShort_];
  [v2 addObject_];
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistDictionaryUnkeyedEncodingContainer(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *(v4 + 8);
  v6 = [objc_allocWithZone(NSNumber) *a4];
  [v5 addObject_];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> __PlistDictionaryEncoder.encode(_:)(Swift::String a1)
{
  if ((*(*v1 + 208))())
  {
    v2 = [objc_allocWithZone(NSString) initWithString_];
    swift_unknownObjectRelease();
    v3 = v2;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {
    __break(1u);
  }
}

void protocol witness for SingleValueEncodingContainer.encodeNil() in conformance __PlistDictionaryEncoder()
{
  if (((*(**v0 + 208))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (one-time initialization token for _plistNullNSString != -1)
  {
LABEL_5:
    swift_once();
  }

  v1 = _plistNullNSString.super.isa;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
}

void protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistDictionaryEncoder(double a1)
{
  if ((*(**v1 + 208))())
  {
    v3 = [objc_allocWithZone(NSNumber) initWithDouble_];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {
    __break(1u);
  }
}

void protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistDictionaryEncoder(float a1)
{
  if ((*(**v1 + 208))())
  {
    v3 = objc_allocWithZone(NSNumber);
    *&v4 = a1;
    v5 = [v3 initWithFloat_];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {
    __break(1u);
  }
}

void protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistDictionaryEncoder(__int16 a1)
{
  if ((*(**v1 + 208))())
  {
    v3 = [objc_allocWithZone(NSNumber) initWithShort_];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {
    __break(1u);
  }
}

void protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistDictionaryEncoder(unsigned __int8 a1)
{
  if ((*(**v1 + 208))())
  {
    v3 = [objc_allocWithZone(NSNumber) initWithUnsignedChar_];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {
    __break(1u);
  }
}

void protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistDictionaryEncoder(unsigned __int16 a1)
{
  if ((*(**v1 + 208))())
  {
    v3 = [objc_allocWithZone(NSNumber) initWithUnsignedShort_];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in __PlistDictionaryEncoder.boxGeneric<A, B>(_:for:_:)(uint64_t a1)
{
  v3[3] = type metadata accessor for __PlistDictionaryEncoder();
  v3[4] = lazy protocol witness table accessor for type __PlistDictionaryEncoder and conformance __PlistDictionaryEncoder(&lazy protocol witness table cache variable for type __PlistDictionaryEncoder and conformance __PlistDictionaryEncoder, type metadata accessor for __PlistDictionaryEncoder);
  v3[0] = a1;

  dispatch thunk of Encodable.encode(to:)();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t __PlistDictionaryEncoder._boxGeneric<A>(_:for:_:)(void (*a1)(void *), uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a4;
  v7 = v6;
  v44 = a6;
  v50 = a3;
  v46 = a2;
  v47 = a1;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - v17;
  v19 = v7[2];
  v42 = v7 + 2;
  v45 = *(v19 + 16);
  v20 = *(v12 + 16);
  v20(&v42 - v17, v49, v11, v16);
  (v20)(v14, v18, v11);
  if ((*(v9 + 48))(v14, 1, a5) == 1)
  {
    v21 = *(v12 + 8);
    v21(v18, v11);
    v21(v14, v11);
    v22 = v50;

    goto LABEL_9;
  }

  v23 = *(v9 + 32);
  v24 = v43;
  v23(v43, v14, a5);
  v25 = v23;
  v22 = swift_allocObject();
  v26 = v44;
  *(v22 + 40) = a5;
  *(v22 + 48) = v26;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v22 + 16));
  v25(boxed_opaque_existential_0, v24, a5);
  (*(v12 + 8))(v18, v11);
  v28 = v50;
  *(v22 + 56) = v50;
  if (!(v28 >> 62))
  {
    v29 = v28 + 8;
LABEL_7:
    v30 = *v29;

    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      return result;
    }

    goto LABEL_8;
  }

  if (v28 >> 62 == 1)
  {
    v29 = ((v28 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    goto LABEL_7;
  }

  v32 = 1;
LABEL_8:
  *(v22 + 64) = v32;
LABEL_9:
  v34 = v7[5];
  v33 = v7[6];
  v7[5] = v22;
  if (!(v22 >> 62))
  {
    v35 = (v22 + 64);
    goto LABEL_13;
  }

  if (v22 >> 62 == 1)
  {
    v35 = ((v22 & 0x3FFFFFFFFFFFFFFFLL) + 32);
LABEL_13:
    v36 = *v35;

    goto LABEL_15;
  }

  v36 = 0;
LABEL_15:
  v37 = v47;
  v38 = v48;
  v7[6] = v36;
  v37(v7);
  if (v38)
  {

    v7[5] = v34;

    v7[6] = v33;
    if (v45 < *(v7[2] + 16))
    {
      v39 = v42;
      v40 = specialized ContiguousArray._customRemoveLast()();
      if (!v40)
      {
        v40 = specialized ContiguousArray.remove(at:)(*(*v39 + 16) - 1);
      }
    }

    return swift_willThrow();
  }

  else
  {

    v7[5] = v34;

    v7[6] = v33;
    if (v45 >= *(v7[2] + 16))
    {
      return 0;
    }

    else
    {
      v41 = v42;
      result = specialized ContiguousArray._customRemoveLast()();
      if (!result)
      {
        return specialized ContiguousArray.remove(at:)(*(*v41 + 16) - 1);
      }
    }
  }

  return result;
}

BOOL __PlistDictionaryReferencingEncoder.canEncodeNewValue.getter()
{
  v1 = *(v0[2] + 16);
  v2 = v0[5];

  v3 = _CodingPathNode.path.getter(v2);

  v4 = *(v3 + 16);

  v5 = *(v0[7] + 40);

  v6 = _CodingPathNode.path.getter(v5);

  v7 = *(v6 + 16);

  return v1 == v4 + ~v7;
}

void __PlistDictionaryReferencingEncoder.__ivar_destroyer()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);

  outlined consume of __PlistDictionaryReferencingEncoder.Reference(v1, v2, v3, v4);
}

uint64_t __PlistDictionaryReferencingEncoder.deinit()
{
  v1 = v0;
  v3 = *(v0 + 16);
  v2 = v0 + 16;
  v4 = *(v3 + 16);
  if (v4 == 1)
  {
    v5 = specialized ContiguousArray._customRemoveLast()();
    if (!v5)
    {
      v5 = specialized ContiguousArray.remove(at:)(*(*v2 + 16) - 1);
    }

    v6 = v5;
    v7 = &lazy cache variable for type metadata for NSObject;
LABEL_7:
    v8 = type metadata accessor for NSMorphologyPronoun(0, v7);
    v30[3] = v8;
    v30[0] = v6;
    v9 = *(v1 + 64);
    v10 = *(v1 + 72);
    v11 = *(v1 + 80);
    if (*(v1 + 88))
    {
      v12 = objc_allocWithZone(NSString);
      v13 = String._bridgeToObjectiveCImpl()();
      v14 = v9;
      v15 = [v12 initWithString_];
      swift_unknownObjectRelease();
      v16 = __swift_project_boxed_opaque_existential_1(v30, v8);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v24 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
        (*(v26 + 16))(v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v8, v24);
        v18 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        goto LABEL_11;
      }

      if (*(*(v8 - 8) + 64) == 8)
      {
        v18 = *v16;
        swift_unknownObjectRetain();
LABEL_11:
        [v14 setObject:v18 forKeyedSubscript:v15];

        swift_unknownObjectRelease();
LABEL_16:
        __swift_destroy_boxed_opaque_existential_1(v30);

        outlined consume of __PlistDictionaryReferencingEncoder.Reference(*(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88));
        return v1;
      }

      __break(1u);
      goto LABEL_20;
    }

    v19 = __swift_project_boxed_opaque_existential_1(v30, v8);
    v20 = v9;
    v21 = _swift_isClassOrObjCExistentialType();
    if (v21)
    {
      if (*(*(v8 - 8) + 64) != 8)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v22 = *v19;
      swift_unknownObjectRetain();
    }

    else
    {
      v27 = MEMORY[0x1EEE9AC00](v21);
      (*(v29 + 16))(v30 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v8, v27);
      v22 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    [v20 insertObject:v22 atIndex:{v10, v30[0]}];
    swift_unknownObjectRelease();
    outlined consume of __PlistDictionaryReferencingEncoder.Reference(v9, v10, v11, 0);
    goto LABEL_16;
  }

  if (!v4)
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
    v7 = &lazy cache variable for type metadata for NSDictionary;
    goto LABEL_7;
  }

LABEL_21:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t __PlistDictionaryReferencingEncoder.__deallocating_deinit()
{
  __PlistDictionaryReferencingEncoder.deinit();

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for _plistNullNSString()
{
  v0 = [objc_allocWithZone(NSString) initWithString_];
  result = swift_unknownObjectRelease();
  _plistNullNSString.super.isa = v0;
  return result;
}

void outlined consume of __PlistDictionaryReferencingEncoder.Reference(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

unint64_t lazy protocol witness table accessor for type _PlistDictionaryUnkeyedEncodingContainer and conformance _PlistDictionaryUnkeyedEncodingContainer()
{
  result = lazy protocol witness table cache variable for type _PlistDictionaryUnkeyedEncodingContainer and conformance _PlistDictionaryUnkeyedEncodingContainer;
  if (!lazy protocol witness table cache variable for type _PlistDictionaryUnkeyedEncodingContainer and conformance _PlistDictionaryUnkeyedEncodingContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PlistDictionaryUnkeyedEncodingContainer and conformance _PlistDictionaryUnkeyedEncodingContainer);
  }

  return result;
}

uint64_t type metadata instantiation function for _PlistDictionaryKeyedEncodingContainer()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _s10Foundation35__PlistDictionaryReferencingEncoderC11referencing2at14codingPathNode8wrappingAcA02__bcE0C_s9CodingKey_pAA01_liJ0OSo09NSMutableC0CtcfCTf4nennn_nAA01_lM0O_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t *a6, uint64_t a7)
{
  v52 = a6;
  v53[3] = &type metadata for _CodingKey;
  v47 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v53[4] = v47;
  v13 = swift_allocObject();
  v53[0] = v13;
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  type metadata accessor for __PlistDictionaryReferencingEncoder();
  v14 = swift_allocObject();
  *(v14 + 56) = a1;

  v15 = _CodingKey.stringValue.getter(a2, a3, a4, a5);
  *(v14 + 64) = a7;
  *(v14 + 72) = v15;
  *(v14 + 80) = v16;
  *(v14 + 88) = 1;
  v17 = *(a1 + 32);
  v48 = *(a1 + 24);
  v50 = v17;
  v51 = a1;
  v49 = __swift_project_boxed_opaque_existential_1(v53, &type metadata for _CodingKey);
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = off_1EEEEF548;
  (*(off_1EEEEF548 + 2))(&v46 - v22, v49, &type metadata for _CodingKey, v21);
  v24 = v23[7](&v46 - v22, 0, 1, &type metadata for _CodingKey);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  (*(v19 + 16))(&v46 - v22, &v46 - v22, v18, v28);
  if ((v23[6])(&v46 - v22, 1, &type metadata for _CodingKey) == 1)
  {
    v29 = v50;

    v30 = *(v19 + 8);
    v30(&v46 - v22, v18);
    v30(&v46 - v22, v18);
    v31 = v52;
    v32 = v52 >> 62;
    v33 = v52;
    if (v52 >> 62)
    {
LABEL_3:
      if (v32 != 1)
      {
        v41 = 0;
LABEL_14:
        v45 = v48;
        *(v14 + 16) = MEMORY[0x1E69E7CC0];
        *(v14 + 24) = v45;
        *(v14 + 32) = v29;
        *(v14 + 40) = v33;
        *(v14 + 48) = v41;
        __swift_destroy_boxed_opaque_existential_1(v53);
        return v14;
      }

      v31 &= 0x3FFFFFFFFFFFFFFFuLL;
      v34 = 32;
LABEL_13:
      v41 = *(v31 + v34);
      goto LABEL_14;
    }

LABEL_12:
    v34 = 64;
    goto LABEL_13;
  }

  v35 = v23[4];
  v35(v26, &v46 - v22, &type metadata for _CodingKey);
  v33 = swift_allocObject();
  v36 = v47;
  v33[5] = &type metadata for _CodingKey;
  v33[6] = v36;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33 + 2);
  v35(boxed_opaque_existential_0, v26, &type metadata for _CodingKey);
  v29 = v50;

  result = (*(v19 + 8))(&v46 - v22, v18);
  v31 = v52;
  v33[7] = v52;
  v32 = v31 >> 62;
  if (!(v31 >> 62))
  {
    v40 = 64;
    v39 = v31;
LABEL_10:
    v42 = *(v39 + v40);
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (!v43)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  if (v32 == 1)
  {
    v39 = v31 & 0x3FFFFFFFFFFFFFFFLL;
    v40 = 32;
    goto LABEL_10;
  }

  v44 = 1;
  if (!__OFSUB__(v32, 1))
  {
LABEL_11:
    v33[8] = v44;
    if (v32)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in __PlistEncoderBPlist.wrapGeneric<A, B>(_:configuration:for:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[3] = type metadata accessor for __PlistEncoderBPlist();
  v11[4] = lazy protocol witness table accessor for type __PlistEncoderXML and conformance __PlistEncoderXML(&lazy protocol witness table cache variable for type __PlistEncoderBPlist and conformance __PlistEncoderBPlist, type metadata accessor for __PlistEncoderBPlist);
  v11[0] = a1;
  v9 = *(a5 + 16);

  v9(v11, a3, a4, a5);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t (*PropertyListEncoder.outputFormat.modify(void *a1))(void *a1)
{
  a1[1] = v1;
  v3 = *(v1 + 32);

  os_unfair_lock_lock(v3 + 4);

  *a1 = *(v1 + 16);
  return PropertyListEncoder.outputFormat.modify;
}

uint64_t PropertyListEncoder.outputFormat.modify(void *a1)
{
  v1 = a1[1];
  *(v1 + 16) = *a1;
  v2 = *(v1 + 32);

  os_unfair_lock_unlock(v2 + 4);
}

uint64_t PropertyListEncoder.userInfo.getter()
{
  v1 = *(v0 + 32);

  os_unfair_lock_lock(v1 + 4);

  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  os_unfair_lock_unlock(v3 + 4);

  return v2;
}

uint64_t PropertyListEncoder.userInfo.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  os_unfair_lock_lock(v3 + 4);

  *(v1 + 24) = a1;

  v4 = *(v1 + 32);

  os_unfair_lock_unlock(v4 + 4);
}

void *PropertyListEncoder.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC8];
  v0[2] = 200;
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMd);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v0[4] = v2;
  return v0;
}

void PropertyListEncoder.encode<A>(_:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v154[6] = *MEMORY[0x1E69E9840];
  v10 = 0xD00000000000001DLL;
  v11 = (*(*v4 + 96))();
  if (v11 == 1)
  {
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v17 = @"NSDebugDescription";
    v18 = v17;
    v146 = a1;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v17);
      switch(TaggedPointerTag)
      {
        case 0:
          goto LABEL_34;
        case 0x16:
          v35 = [(__CFString *)v18 UTF8String];
          if (!v35)
          {
            __break(1u);
            goto LABEL_198;
          }

          v36 = String.init(utf8String:)(v35);
          if (v37)
          {
LABEL_35:
            v20 = v36;
            v22 = v37;

            goto LABEL_45;
          }

          __break(1u);
LABEL_31:
          v38 = [(__CFString *)v18 UTF8String];
          if (v38)
          {
            v39 = String.init(utf8String:)(v38);
            if (!v40)
            {
              __break(1u);
LABEL_34:
              _CFIndirectTaggedPointerStringGetContents();
              v36 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v37)
              {
                [(__CFString *)v18 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v20 = v147;
                v22 = v148;
                goto LABEL_45;
              }

              goto LABEL_35;
            }

LABEL_37:
            v26 = v39;
            v28 = v40;

            goto LABEL_67;
          }

LABEL_198:
          __break(1u);
          goto LABEL_199;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v20 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v22 = v21;

LABEL_45:
          v153[0] = v20;
          v153[1] = v22;
          v153[5] = MEMORY[0x1E69E6158];
          v153[2] = 0xD000000000000038;
          v153[3] = 0x8000000181485E40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
          v42 = static _DictionaryStorage.allocate(capacity:)();
          outlined init with copy of (String, Any)(v153, &v149);

          outlined destroy of (String, Any)(v153);
          v43 = v149;
          v44 = v150;
          v45 = specialized __RawDictionaryStorage.find<A>(_:)(v149, v150);
          v47 = v46;

          if (v47)
          {
            __break(1u);
LABEL_193:
            __break(1u);
            goto LABEL_194;
          }

          v42[(v45 >> 6) + 8] |= 1 << v45;
          v48 = (v42[6] + 16 * v45);
          *v48 = v43;
          v48[1] = v44;
          outlined init with take of Any(&v151, (v42[7] + 32 * v45));
          v49 = v42[2];
          v50 = __OFADD__(v49, 1);
          v51 = v49 + 1;
          if (v50)
          {
LABEL_194:
            __break(1u);
            goto LABEL_195;
          }

          v42[2] = v51;
          v52 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
          v53 = @"NSCocoaErrorDomain";
          v54 = v53;
          if (!v52)
          {
LABEL_52:
            LOBYTE(v147) = 0;
            v149 = 0;
            if (!__CFStringIsCF())
            {
              v56 = v54;
              String.init(_nativeStorage:)();
              if (v57 || (v149 = [(__CFString *)v56 length]) == 0)
              {

                goto LABEL_89;
              }

              goto LABEL_88;
            }

            if (v149)
            {
LABEL_88:
              String.init(_cocoaString:)();
LABEL_89:
              v80 = objc_allocWithZone(NSError);
              v81 = String._bridgeToObjectiveCImpl()();

              v13 = [v80 initWithDomain:v81 code:3852 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v82 = [v13 domain];
              if (!v82)
              {
                v88 = 0;
                v90 = 0xE000000000000000;
                goto LABEL_137;
              }

              v83 = v82;
              v84 = _objc_isTaggedPointer(v82);
              v85 = v83;
              v86 = v85;
              if ((v84 & 1) == 0)
              {
                goto LABEL_95;
              }

              v87 = _objc_getTaggedPointerTag(v85);
              if (v87)
              {
                if (v87 != 22)
                {
                  if (v87 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v87);
                    v88 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v90 = v89;

LABEL_136:
                    v10 = 0xD00000000000001DLL;
LABEL_137:
                    v114 = v54;
                    v73 = v114;
                    if (!v52)
                    {
                      goto LABEL_142;
                    }

                    v115 = _objc_getTaggedPointerTag(v114);
                    if (v115)
                    {
                      if (v115 != 22)
                      {
                        if (v115 == 2)
                        {
                          MEMORY[0x1EEE9AC00](v115);
                          v116 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                          v71 = v117;

                          goto LABEL_158;
                        }

LABEL_142:
                        LOBYTE(v147) = 0;
                        v149 = 0;
                        if (__CFStringIsCF())
                        {
                          if (v149)
                          {
LABEL_157:
                            v116 = String.init(_cocoaString:)();
                            v71 = v124;
LABEL_158:
                            if (v88 == v116 && v90 == v71)
                            {
                              goto LABEL_187;
                            }

                            v125 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v125)
                            {
LABEL_189:
                              swift_willThrow();
                              a1 = v146;
                              goto LABEL_190;
                            }

                            __break(1u);

                            goto LABEL_162;
                          }
                        }

                        else
                        {
                          v118 = v73;
                          v119 = String.init(_nativeStorage:)();
                          if (v120)
                          {
                            v116 = v119;
                            v71 = v120;

                            goto LABEL_158;
                          }

                          v149 = [(__CFString *)v118 length];
                          if (v149)
                          {
                            goto LABEL_157;
                          }
                        }

                        v116 = 0;
                        v71 = 0xE000000000000000;
                        goto LABEL_158;
                      }

                      v121 = [(__CFString *)v73 UTF8String];
                      if (!v121)
                      {
LABEL_201:
                        __break(1u);
LABEL_202:
                        __break(1u);
                        goto LABEL_203;
                      }

                      v122 = String.init(utf8String:)(v121);
                      if (v123)
                      {
LABEL_153:
                        v116 = v122;
                        v71 = v123;

                        goto LABEL_158;
                      }

                      __break(1u);
                    }

                    _CFIndirectTaggedPointerStringGetContents();
                    v122 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                    if (!v123)
                    {
                      [(__CFString *)v73 mutableCopy];
                      _bridgeAnyObjectToAny(_:)();

                      swift_unknownObjectRelease();
                      swift_dynamicCast();
                      v116 = v147;
                      v71 = v148;
                      goto LABEL_158;
                    }

                    goto LABEL_153;
                  }

LABEL_95:
                  LOBYTE(v147) = 0;
                  v149 = 0;
                  if (__CFStringIsCF())
                  {
                    if (v149)
                    {
LABEL_134:
                      v88 = String.init(_cocoaString:)();
                      v90 = v113;
                      goto LABEL_135;
                    }
                  }

                  else
                  {
                    v91 = v86;
                    v92 = String.init(_nativeStorage:)();
                    if (v93)
                    {
                      v88 = v92;
                      v90 = v93;

                      goto LABEL_136;
                    }

                    v149 = [v91 length];
                    if (v149)
                    {
                      goto LABEL_134;
                    }
                  }

                  v88 = 0;
                  v90 = 0xE000000000000000;
                  goto LABEL_136;
                }

                v94 = [v86 UTF8String];
                if (!v94)
                {
LABEL_203:
                  __break(1u);
                  goto LABEL_204;
                }

                v95 = String.init(utf8String:)(v94);
                if (v96)
                {
                  goto LABEL_107;
                }

                __break(1u);
              }

              _CFIndirectTaggedPointerStringGetContents();
              v95 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v96)
              {
                [v86 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v88 = v147;
                v90 = v148;
                goto LABEL_135;
              }

LABEL_107:
              v88 = v95;
              v90 = v96;

LABEL_135:
              goto LABEL_136;
            }

LABEL_62:

            goto LABEL_89;
          }

          v55 = _objc_getTaggedPointerTag(v53);
          if (!v55)
          {
LABEL_61:
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v60)
            {
              [(__CFString *)v54 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_89;
            }

            goto LABEL_62;
          }

          if (v55 != 22)
          {
            if (v55 == 2)
            {
              MEMORY[0x1EEE9AC00](v55);
              String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

              goto LABEL_89;
            }

            goto LABEL_52;
          }

          v58 = [(__CFString *)v54 UTF8String];
          if (v58)
          {
            String.init(utf8String:)(v58);
            if (v59)
            {
              goto LABEL_62;
            }

            __break(1u);
            goto LABEL_61;
          }

LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
          goto LABEL_201;
      }
    }

    LOBYTE(v147) = 0;
    v149 = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v29 = v18;
      v30 = String.init(_nativeStorage:)();
      if (v31)
      {
        v20 = v30;
        v22 = v31;

        goto LABEL_45;
      }

      v149 = [(__CFString *)v29 length];
      if (v149)
      {
        v20 = String.init(_cocoaString:)();
        v22 = v41;
        goto LABEL_45;
      }
    }

    v20 = 0;
    v22 = 0xE000000000000000;
    goto LABEL_45;
  }

  if (v11 != 100)
  {
    if (v11 == 200)
    {
      v12 = PropertyListEncoder.encodeToTopLevelContainerBPlist<A>(_:configuration:)(a1, a2, a3, a4);
      v13 = v5;
      if (!v5)
      {
        v14 = v12;
        v15 = swift_slowAlloc();
        v149 = MEMORY[0x1E69E7CC0];
        LOBYTE(v150) = 0;
        *&v151 = v15;
        *(&v151 + 1) = 0x2000;
        v152 = 0;
        _BPlistEncodingFormat.Writer.serializePlist(_:)(v14);

        outlined consume of Data._Representation(0, 0xC000000000000000);

        return;
      }

      goto LABEL_190;
    }

    v146 = a1;
    a1 = v11;
    v23 = _objc_isTaggedPointer(@"NSDebugDescription");
    v24 = @"NSDebugDescription";
    v18 = v24;
    if (!v23)
    {
LABEL_20:
      v149 = 0;
      if (__CFStringIsCF())
      {

LABEL_27:
        v26 = 0;
        v28 = 0xE000000000000000;
        goto LABEL_67;
      }

      v32 = v18;
      v33 = String.init(_nativeStorage:)();
      if (v34)
      {
        v26 = v33;
        v28 = v34;

        goto LABEL_67;
      }

      if (![(__CFString *)v32 length])
      {

        goto LABEL_27;
      }

      v26 = String.init(_cocoaString:)();
      v28 = v61;
LABEL_67:
      v154[0] = v26;
      v154[1] = v28;
      v149 = 0;
      v150 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);
      MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181485DE0);
      v147 = a1;
      type metadata accessor for NSPropertyListFormat(0);
      _print_unlocked<A, B>(_:_:)();
      v154[5] = MEMORY[0x1E69E6158];
      v154[2] = v149;
      v154[3] = v150;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
      v62 = static _DictionaryStorage.allocate(capacity:)();
      outlined init with copy of (String, Any)(v154, &v149);

      outlined destroy of (String, Any)(v154);
      v63 = v149;
      v64 = v150;
      v65 = specialized __RawDictionaryStorage.find<A>(_:)(v149, v150);
      v67 = v66;

      if ((v67 & 1) == 0)
      {
        v62[(v65 >> 6) + 8] |= 1 << v65;
        v68 = (v62[6] + 16 * v65);
        *v68 = v63;
        v68[1] = v64;
        outlined init with take of Any(&v151, (v62[7] + 32 * v65));
        v69 = v62[2];
        v50 = __OFADD__(v69, 1);
        v70 = v69 + 1;
        if (!v50)
        {
          v62[2] = v70;
          LODWORD(v71) = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
          v72 = @"NSCocoaErrorDomain";
          v73 = v72;
          if (!v71)
          {
LABEL_74:
            LOBYTE(v147) = 0;
            v149 = 0;
            if (!__CFStringIsCF())
            {
              v75 = v73;
              String.init(_nativeStorage:)();
              if (v76 || (v149 = [(__CFString *)v75 length]) == 0)
              {

                goto LABEL_112;
              }

              goto LABEL_111;
            }

            if (v149)
            {
LABEL_111:
              String.init(_cocoaString:)();
LABEL_112:
              v97 = objc_allocWithZone(NSError);
              v98 = String._bridgeToObjectiveCImpl()();

              v13 = [v97 initWithDomain:v98 code:3852 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v99 = [v13 domain];
              if (!v99)
              {
                v104 = 0;
                v106 = 0xE000000000000000;
                goto LABEL_164;
              }

              v100 = v99;
              v101 = _objc_isTaggedPointer(v99);
              v102 = v100;
              v10 = v102;
              if (!v101)
              {
LABEL_118:
                LOBYTE(v147) = 0;
                v149 = 0;
                if (__CFStringIsCF())
                {
                  if (v149)
                  {
LABEL_162:
                    v104 = String.init(_cocoaString:)();
                    v106 = v126;
                    goto LABEL_163;
                  }
                }

                else
                {
                  v107 = v10;
                  v108 = String.init(_nativeStorage:)();
                  if (v109)
                  {
                    v104 = v108;
                    v106 = v109;

                    goto LABEL_164;
                  }

                  v149 = [v107 length];
                  if (v149)
                  {
                    goto LABEL_162;
                  }
                }

                v104 = 0;
                v106 = 0xE000000000000000;
                goto LABEL_164;
              }

              v103 = _objc_getTaggedPointerTag(v102);
              if (v103)
              {
                if (v103 != 22)
                {
                  if (v103 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v103);
                    v104 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v106 = v105;

LABEL_164:
                    v127 = v73;
                    v128 = v127;
                    if (!v71)
                    {
                      goto LABEL_169;
                    }

                    v129 = _objc_getTaggedPointerTag(v127);
                    if (!v129)
                    {
                      goto LABEL_179;
                    }

                    if (v129 != 22)
                    {
                      if (v129 == 2)
                      {
                        MEMORY[0x1EEE9AC00](v129);
                        v130 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        v132 = v131;

                        goto LABEL_185;
                      }

LABEL_169:
                      v149 = 0;
                      if (__CFStringIsCF())
                      {
                        if (v149)
                        {
LABEL_184:
                          v130 = String.init(_cocoaString:)();
                          v132 = v139;
LABEL_185:
                          if (v104 == v130 && v106 == v132)
                          {
LABEL_187:

                            goto LABEL_189;
                          }

                          v140 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if (v140)
                          {
                            goto LABEL_189;
                          }

LABEL_196:
                          __break(1u);
                        }
                      }

                      else
                      {
                        v133 = v128;
                        v134 = String.init(_nativeStorage:)();
                        if (v135)
                        {
                          v130 = v134;
                          v132 = v135;

                          goto LABEL_185;
                        }

                        v149 = [(__CFString *)v133 length];
                        if (v149)
                        {
                          goto LABEL_184;
                        }
                      }

                      v130 = 0;
                      v132 = 0xE000000000000000;
                      goto LABEL_185;
                    }

                    v136 = [(__CFString *)v128 UTF8String];
                    if (v136)
                    {
                      v137 = String.init(utf8String:)(v136);
                      if (v138)
                      {
                        goto LABEL_180;
                      }

                      __break(1u);
LABEL_179:
                      _CFIndirectTaggedPointerStringGetContents();
                      v137 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                      if (!v138)
                      {
                        [(__CFString *)v128 mutableCopy];
                        _bridgeAnyObjectToAny(_:)();

                        swift_unknownObjectRelease();
                        swift_dynamicCast();
                        v130 = v147;
                        v132 = v148;
                        goto LABEL_185;
                      }

LABEL_180:
                      v130 = v137;
                      v132 = v138;

                      goto LABEL_185;
                    }

                    goto LABEL_202;
                  }

                  goto LABEL_118;
                }

                v110 = [v10 UTF8String];
                if (!v110)
                {
LABEL_204:
                  __break(1u);
                  return;
                }

                v111 = String.init(utf8String:)(v110);
                if (v112)
                {
                  goto LABEL_130;
                }

                __break(1u);
              }

              _CFIndirectTaggedPointerStringGetContents();
              v111 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v112)
              {
                [v10 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v104 = v147;
                v106 = v148;
                goto LABEL_163;
              }

LABEL_130:
              v104 = v111;
              v106 = v112;

LABEL_163:
              goto LABEL_164;
            }

LABEL_84:

            goto LABEL_112;
          }

          v74 = _objc_getTaggedPointerTag(v72);
          if (!v74)
          {
LABEL_83:
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v79)
            {
              [(__CFString *)v73 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_112;
            }

            goto LABEL_84;
          }

          if (v74 != 22)
          {
            if (v74 == 2)
            {
              MEMORY[0x1EEE9AC00](v74);
              String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

              goto LABEL_112;
            }

            goto LABEL_74;
          }

          v77 = [(__CFString *)v73 UTF8String];
          if (v77)
          {
            String.init(utf8String:)(v77);
            if (v78)
            {
              goto LABEL_84;
            }

            __break(1u);
            goto LABEL_83;
          }

          goto LABEL_200;
        }

LABEL_195:
        __break(1u);
        goto LABEL_196;
      }

      goto LABEL_193;
    }

    v25 = _objc_getTaggedPointerTag(v24);
    if (!v25)
    {
      _CFIndirectTaggedPointerStringGetContents();
      v39 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v40)
      {
        [(__CFString *)v18 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v26 = v147;
        v28 = v148;
        goto LABEL_67;
      }

      goto LABEL_37;
    }

    if (v25 != 22)
    {
      if (v25 == 2)
      {
        MEMORY[0x1EEE9AC00](v25);
        v26 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v28 = v27;

        goto LABEL_67;
      }

      goto LABEL_20;
    }

    goto LABEL_31;
  }

  PropertyListEncoder._encodeXML<A>(_:configuration:)(a1, a2, a3, a4);
  if (!v5)
  {
    return;
  }

  v13 = v5;
LABEL_190:
  v141 = type metadata accessor for EncodingError();
  swift_allocError();
  v143 = v142;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
  v143[3] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v143);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  v145 = v13;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v141 - 8) + 104))(v143, *MEMORY[0x1E69E6B30], v141);
  swift_willThrow();
}