unint64_t _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs7UInt128V_Tt1g5(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v28[0] = a1;
  v6 = HIDWORD(a1);
  v7 = HIWORD(a1);
  v28[1] = a2;
  v8 = HIWORD(a2);
  v9 = HIWORD(a3);
  v29 = a3;
  if (_So9NSDecimala__isNegative_getter(v28))
  {
    return 0;
  }

  v11 = a2;
  LODWORD(v28[0]) = a1;
  v12 = WORD1(a2);
  WORD2(v28[0]) = v6;
  v13 = WORD2(a2);
  HIWORD(v28[0]) = v7;
  LOWORD(v28[1]) = v11;
  WORD1(v28[1]) = v12;
  WORD2(v28[1]) = v13;
  HIWORD(v28[1]) = v8;
  LOWORD(v29) = v3;
  HIWORD(v29) = v9;
  v14 = _So9NSDecimala__length_getter(v28);
  if (v14)
  {
    v15 = v14 - 1;
    if (v14 == 1)
    {
      v19 = 0;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      do
      {
        if (v15 + 1 <= 4)
        {
          v18 = v7;
          if (v15 != 1)
          {
            v18 = v11;
            if (v15 != 2)
            {
              v18 = v12;
              if (v15 != 3)
              {
                goto LABEL_42;
              }
            }
          }
        }

        else if (v15 + 1 > 6)
        {
          v18 = v3;
          if (v15 != 6)
          {
            v18 = v9;
            if (v15 != 7)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          v18 = v13;
          if (v15 != 4)
          {
            v18 = v8;
            if (v15 != 5)
            {
              goto LABEL_42;
            }
          }
        }

        if (v16)
        {
          return 0;
        }

        v19 = (v17 | v18) << 16;
        v16 = HIWORD(v17) != 0;
        v17 = v19;
        --v15;
      }

      while (v15);
      if (v16)
      {
        return 0;
      }
    }

    v20 = v19 | WORD2(a1);
  }

  else
  {
    v20 = 0;
  }

  LODWORD(v28[0]) = a1;
  WORD2(v28[0]) = v6;
  HIWORD(v28[0]) = v7;
  LOWORD(v28[1]) = v11;
  WORD1(v28[1]) = v12;
  WORD2(v28[1]) = v13;
  HIWORD(v28[1]) = v8;
  LOWORD(v29) = v3;
  HIWORD(v29) = v9;
  if ((_So9NSDecimala__exponent_getter(v28) & 0x80000000) != 0)
  {
    LODWORD(v28[0]) = a1;
    WORD2(v28[0]) = v6;
    HIWORD(v28[0]) = v7;
    LOWORD(v28[1]) = v11;
    WORD1(v28[1]) = v12;
    WORD2(v28[1]) = v13;
    HIWORD(v28[1]) = v8;
    LOWORD(v29) = v3;
    HIWORD(v29) = v9;
    v24 = _So9NSDecimala__exponent_getter(v28);
    if (v24 <= 0)
    {
      v25 = v24;
      result = v20;
      if (!v25)
      {
        return result;
      }

      if (__CFADD__(v25, -v25 & ~(-v25 >> 31)))
      {
        do
        {
          result /= 0xAuLL;
        }

        while (!__CFADD__(v25++, 1));
        return result;
      }

      goto LABEL_41;
    }
  }

  else
  {
    LODWORD(v28[0]) = a1;
    WORD2(v28[0]) = v6;
    HIWORD(v28[0]) = v7;
    LOWORD(v28[1]) = v11;
    WORD1(v28[1]) = v12;
    WORD2(v28[1]) = v13;
    HIWORD(v28[1]) = v8;
    LOWORD(v29) = v3;
    HIWORD(v29) = v9;
    v21 = _So9NSDecimala__exponent_getter(v28);
    if ((v21 & 0x80000000) == 0)
    {
      v22 = v21 + 1;
      result = v20;
      while (--v22)
      {
        v23 = (result * 0xAuLL) >> 64;
        result *= 10;
        if (v23)
        {
          return 0;
        }
      }

      return result;
    }

    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  strcpy(v28, "Invalid index ");
  HIBYTE(v28[1]) = -18;
  v27 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v27);

  MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for Decoder.codingPath.getter in conformance JSONDecoderImpl()
{
  v1 = *(*v0 + 160);

  v2 = _CodingPathNode.path.getter(v1);

  return v2;
}

uint64_t JSONDecoderImpl.KeyedContainer.decodeNil(forKey:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a4 + 16))
  {

    goto LABEL_10;
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_10:
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd);
    v24[3] = a5;
    v24[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
    _CodingPathNode.path.getter(a3);
    _StringGuts.grow(_:)(39);

    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v26);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v27 = dispatch thunk of CodingKey.stringValue.getter();
    MEMORY[0x1865CB0E0](v27);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF0], v22);
    swift_willThrow();
    return v21 & 1;
  }

  v16 = *(a4 + 56) + 24 * v13;
  v17 = *v16;
  v18 = *(v16 + 8);
  v19 = *(v16 + 16);
  if (v18 | v17)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19 == 160;
  }

  v21 = v20;
  return v21 & 1;
}

float JSONDecoderImpl.KeyedContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a3;
  v34[1] = a2;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v34 - v13;
  v15 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a4 + 16))
  {

    goto LABEL_7;
  }

  v34[0] = v12;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_7:
    v27 = type metadata accessor for DecodingError();
    swift_allocError();
    v29 = v28;
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v29[3] = a5;
    v29[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
    _CodingPathNode.path.getter(v36);
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v37 = 0xD00000000000001DLL;
    v38 = 0x8000000181482300;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v31);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v32 = dispatch thunk of CodingKey.stringValue.getter();
    MEMORY[0x1865CB0E0](v32);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF0], v27);
    swift_willThrow();
    return v6;
  }

  v20 = *(a4 + 56) + 24 * v17;
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(a5 - 8);
  v24 = *(v20 + 16);
  (*(v23 + 16))(v14, a1, a5);
  (*(v23 + 56))(v14, 0, 1, a5);
  v25 = v35;
  specialized JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(v21, v22, v24, v36, v14, a5, a6);
  if (!v25)
  {
    v6 = v26;
  }

  (*(v34[0] + 8))(v14, v11);
  return v6;
}

unint64_t JSONDecoderImpl.KeyedContainer.decodeIfPresent(_:forKey:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a3;
  v36 = a2;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  v15 = dispatch thunk of CodingKey.stringValue.getter();
  if (*(a4 + 16))
  {
    v34 = v12;
    v37 = v6;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v19 = v18;

    if ((v19 & 1) == 0 || ((v20 = *(a4 + 56) + 24 * v17, v21 = *v20, v22 = *(v20 + 8), v23 = *(v20 + 16), v24 = v22 | *v20, (v23 & 0xE0) == 0xA0) ? (v25 = v24 == 0) : (v25 = 0), v25 && v23 == 160))
    {
      v30 = 0;
      v31 = 1;
    }

    else
    {
      v26 = *(a5 - 8);
      (*(v26 + 16))(v14, a1, a5);
      (*(v26 + 56))(v14, 0, 1, a5);
      v27 = v37;
      specialized JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(v21, v22, v23, v35, v14, a5, a6);
      if (v27)
      {
        return (*(v34 + 8))(v14, v11);
      }

      v32 = v28;
      (*(v34 + 8))(v14, v11);
      v31 = 0;
      v30 = v32;
    }
  }

  else
  {

    v30 = 0;
    v31 = 1;
  }

  v38 = v31;
  return v30 | (v31 << 32);
}

uint64_t JSONDecoderImpl.KeyedContainer.superDecoder()@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = specialized JSONDecoderImpl.KeyedContainer.decoderForKeyNoThrow<A>(_:)(0x7265707573, 0xE500000000000000, 0, 0, a1, a2, a3);
  a4[3] = type metadata accessor for JSONDecoderImpl();
  result = lazy protocol witness table accessor for type JSONDecoderImpl and conformance JSONDecoderImpl(&lazy protocol witness table cache variable for type JSONDecoderImpl and conformance JSONDecoderImpl, type metadata accessor for JSONDecoderImpl);
  a4[4] = result;
  *a4 = v5;
  return result;
}

uint64_t specialized JSONDecoderImpl.KeyedContainer.decoderForKeyNoThrow<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v10 = a4;
  v47 = a1;
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v14 = _CodingKey.stringValue.getter(a1, a2, a3, a4);
  if (*(a7 + 16))
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
    v18 = v17;

    if (v18)
    {
      v19 = *(a7 + 56) + 24 * v16;
      v20 = *v19;
      v42 = *(v19 + 8);
      v21 = *(v19 + 16);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v22 = type metadata accessor for DecodingError();
  v43 = swift_allocError();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd);
  v24[3] = &type metadata for _CodingKey;
  v24[4] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v25 = swift_allocObject();
  *v24 = v25;
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  *(v25 + 32) = a3;
  *(v25 + 40) = v10;
  outlined copy of _CodingKey(a1, a2, a3, v10);
  _CodingPathNode.path.getter(a6);
  _StringGuts.grow(_:)(39);

  *&v45[0] = 0xD00000000000001DLL;
  *(&v45[0] + 1) = 0x8000000181482300;
  lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v26 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v26);

  MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
  v27 = _CodingKey.stringValue.getter(a1, a2, a3, v10);
  MEMORY[0x1865CB0E0](v27);

  MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF0], v22);
  swift_willThrow();

  v20 = 0;
  v42 = 0;
  v21 = -96;
LABEL_6:
  v41 = v21;
  v29 = *(a5 + 24);
  v28 = *(a5 + 32);
  v30 = swift_allocObject();
  v30[5] = &type metadata for _CodingKey;
  v30[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v31 = swift_allocObject();
  v30[2] = v31;
  *(v31 + 16) = a1;
  *(v31 + 24) = a2;
  *(v31 + 32) = a3;
  *(v31 + 40) = v10;
  v30[7] = a6;
  if (a6 >> 62)
  {
    if (a6 >> 62 != 1)
    {
      v35 = 1;
      goto LABEL_11;
    }

    v32 = ((a6 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v32 = (a6 + 64);
  }

  v33 = *v32;

  v35 = v33 + 1;
  if (__OFADD__(v33, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_11:
  v30[8] = v35;
  v36 = *(a5 + 104);
  v37 = *(a5 + 136);
  v45[5] = *(a5 + 120);
  v45[6] = v37;
  v46 = *(a5 + 152);
  v45[0] = *(a5 + 40);
  v38 = *(a5 + 72);
  v45[1] = *(a5 + 56);
  v45[2] = v38;
  v45[3] = *(a5 + 88);
  v45[4] = v36;
  type metadata accessor for JSONDecoderImpl();
  v33 = swift_allocObject();
  *(v33 + 160) = v30;
  *(v33 + 24) = v29;
  *(v33 + 32) = v28;
  *(v33 + 104) = *(a5 + 104);
  *(v33 + 120) = *(a5 + 120);
  *(v33 + 136) = *(a5 + 136);
  *(v33 + 152) = *(a5 + 152);
  *(v33 + 40) = *(a5 + 40);
  *(v33 + 56) = *(a5 + 56);
  *(v33 + 72) = *(a5 + 72);
  *(v33 + 88) = *(a5 + 88);
  outlined copy of _CodingKey(a1, a2, a3, v10);

  outlined init with copy of JSONDecoder._Options(v45, v44);
  v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v28 = *(v34 + 2);
  v35 = *(v34 + 3);
  v10 = v28 + 1;
  if (v28 >= v35 >> 1)
  {
LABEL_15:
    v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v10, 1, v34);
  }

  *(v34 + 2) = v10;
  v39 = &v34[24 * v28];
  *(v39 + 4) = v20;
  *(v39 + 5) = v42;
  v39[48] = v41;
  *(v33 + 16) = v34;
  return v33;
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

void JSONDecoderImpl.UnkeyedContainer.decodeNil()()
{
  v1 = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  if (v3 < 0xFE)
  {
    v17 = *(v0 + 32);
  }

  else
  {
    v4 = *(v0 + 8);
    v5 = JSONMap.loadValue(at:)(v4);
    if (v7 > 0xFDu)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd);
      v8 = MEMORY[0x1E69E73E0];
      v9 = _CodingPathNode.path.getter(*(v0 + 72));
      v10 = *(v1 + 64);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
      }

      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
      }

      v22 = &type metadata for _CodingKey;
      v23 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v13 = swift_allocObject();
      *&v21 = v13;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
      *(v13 + 16) = v10;
      *(v13 + 40) = 2;
      v9[2] = v12 + 1;
      outlined init with take of Equatable(&v21, &v9[5 * v12 + 4]);
      v14 = type metadata accessor for DecodingError();
      swift_allocError();
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v16 = v8;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6B08], v14);
      swift_willThrow();
      return;
    }

    v2 = v5;
    v17 = v6;
    LOBYTE(v3) = v7;
    *(v0 + 8) = JSONMap.offset(after:)(v4);
    *(v0 + 24) = v2;
    *(v0 + 32) = v17;
    *(v0 + 40) = v3;
  }

  if ((v3 & 0xE0) == 0xA0 && !(v17 | v2) && v3 == 160)
  {
    v18 = *(v0 + 64);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 64) = v20;
      *(v0 + 24) = 0;
      *(v0 + 32) = 0;
      *(v0 + 40) = -2;
    }
  }
}

void JSONDecoderImpl.UnkeyedContainer.decodeIfPresent<A>(_:)(ValueMetadata *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[1] = a3;
  v22 = a1;
  v25 = a4;
  v6 = type metadata accessor for Optional();
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - v7;
  v9 = *(v4 + 24);
  v10 = *(v4 + 40);
  if (v10 < 0xFE)
  {
    v15 = *(v4 + 32);
  }

  else
  {
    v11 = *(v4 + 8);
    v12 = JSONMap.loadValue(at:)(v11);
    if (v14 > 0xFDu)
    {
LABEL_12:
      (*(*(a2 - 8) + 56))(v8, 1, 1, a2);
      goto LABEL_13;
    }

    v9 = v12;
    v15 = v13;
    v10 = v14;
    *(v4 + 8) = JSONMap.offset(after:)(v11);
    *(v4 + 24) = v9;
    *(v4 + 32) = v15;
    *(v4 + 40) = v10;
  }

  v16 = (v10 & 0xE0) == 0xA0 && (v15 | v9) == 0;
  if (v16 && v10 == 160)
  {
    goto LABEL_12;
  }

  v17 = v26;
  specialized JSONDecoderImpl.unwrap<A, B>(_:as:for:_:)(v9, v15, v10, v22, *(v4 + 72), *(v4 + 64), 0, 0, v8, 2u, a2);
  if (v17)
  {
    return;
  }

  (*(*(a2 - 8) + 56))(v8, 0, 1, a2);
LABEL_13:
  (*(v23 + 32))(v25, v8, v24);
  v18 = *(v4 + 64);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 64) = v20;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 40) = -2;
  }
}

uint64_t JSONDecoderImpl.UnkeyedContainer.nestedUnkeyedContainer()@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd);
  v7 = v1 + 3;
  v8 = *(v1 + 40);
  if (v8 < 0xFE)
  {
    v45 = v1[3];
    v41 = v1[4];
  }

  else
  {
    v9 = v6;
    v10 = v1[1];
    v11 = JSONMap.loadValue(at:)(v10);
    if (v13 > 0xFDu)
    {
      if (v9 == __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd))
      {
      }

      v14 = _CodingPathNode.path.getter(v1[9]);
      v15 = v1[8];
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_6;
      }

      goto LABEL_39;
    }

    v23 = v11;
    LOBYTE(v8) = v13;
    v24 = v12;
    v1[1] = JSONMap.offset(after:)(v10);
    v45 = v23;
    v1[3] = v23;
    v1[4] = v24;
    v41 = v24;
    *(v1 + 40) = v8;
  }

  v25 = *v1;
  v27 = *(v4 + 8);
  v26 = *(v4 + 9);
  v9 = swift_allocObject();
  *(v9 + 16) = v27;
  *(v9 + 24) = v26;
  if (v26 >> 62)
  {
    if (v26 >> 62 != 1)
    {
      v30 = 1;
LABEL_16:
      v40 = a1;
      *(v9 + 32) = v30;
      v38 = v27;
      v39 = *(v25 + 160);
      *(v25 + 160) = v9 | 0x4000000000000000;
      v27 = *(v25 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 16) = v27;
      a1 = v3;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }

    v28 = ((v26 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v28 = (v26 + 64);
  }

  v29 = *v28;

  v30 = v29 + 1;
  if (!__OFADD__(v29, 1))
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_31:
  v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
  *(v25 + 16) = v27;
LABEL_17:
  v33 = *(v27 + 2);
  v32 = *(v27 + 3);
  if (v33 >= v32 >> 1)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v27);
  }

  *(v27 + 2) = v33 + 1;
  v34 = &v27[24 * v33];
  *(v34 + 4) = v45;
  *(v34 + 5) = v41;
  v34[48] = v8;
  *(v25 + 16) = v27;
  JSONDecoderImpl.unkeyedContainer()(v40);
  v15 = a1;
  if (a1)
  {
    v35 = v39;
    *(v25 + 160) = v39;

    v4 = *(v25 + 16);
    if (*(v4 + 2))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v36 = *(v4 + 2);
        if (v36)
        {
LABEL_23:
          *(v4 + 2) = v36 - 1;
          *(v25 + 16) = v4;
        }

        goto LABEL_34;
      }
    }

    else
    {
      __break(1u);
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v36 = *(v4 + 2);
    if (v36)
    {
      goto LABEL_23;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *(v25 + 160) = v39;

  v35 = *(v25 + 16);
  if (!*(v35 + 2))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_36:
    v35 = specialized _ArrayBuffer._consumeAndCreateNew()(v35);
  }

  v14 = v38;
  v37 = *(v35 + 2);
  if (v37)
  {
    *(v35 + 2) = v37 - 1;
    *(v25 + 16) = v35;

    if (!__OFADD__(v38, 1))
    {
      *(v4 + 8) = v38 + 1;
      *v7 = 0;
      v7[1] = 0;
      v4[40] = -2;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_39:
  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
LABEL_6:
  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
  }

  v43 = &type metadata for _CodingKey;
  v44 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v18 = swift_allocObject();
  *&v42 = v18;
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  *(v18 + 16) = v15;
  *(v18 + 40) = 2;
  v14[2] = v17 + 1;
  outlined init with take of Equatable(&v42, &v14[5 * v17 + 4]);
  v19 = type metadata accessor for DecodingError();
  swift_allocError();
  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *v21 = v9;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6B08], v19);
  return swift_willThrow();
}

uint64_t protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance JSONDecoderImpl.UnkeyedContainer()
{
  return specialized JSONDecoderImpl.UnkeyedContainer.decode(_:)() & 1;
}

{
  return specialized JSONDecoderImpl.UnkeyedContainer.decode(_:)();
}

{
  return specialized JSONDecoderImpl.UnkeyedContainer.decode(_:)();
}

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance JSONDecoderImpl.UnkeyedContainer()
{
  result = specialized JSONDecoderImpl.UnkeyedContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  v0 = specialized JSONDecoderImpl.UnkeyedContainer.decodeIfPresent(_:)();
  return v0 | ((HIDWORD(v0) & 1) << 32);
}

{
  result = specialized JSONDecoderImpl.UnkeyedContainer.decodeIfPresent(_:)(specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = specialized JSONDecoderImpl.UnkeyedContainer.decodeIfPresent(_:)(specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = specialized JSONDecoderImpl.UnkeyedContainer.decodeIfPresent(_:)(specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = specialized JSONDecoderImpl.UnkeyedContainer.decodeIfPresent(_:)(specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance JSONDecoderImpl.UnkeyedContainer(uint64_t a1, uint64_t a2)
{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance JSONDecoderImpl.UnkeyedContainer(a1, a2, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance JSONDecoderImpl.UnkeyedContainer(a1, a2, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance JSONDecoderImpl.UnkeyedContainer(a1, a2, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance JSONDecoderImpl.UnkeyedContainer(a1, a2, MEMORY[0x1E69E6FD0]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance JSONDecoderImpl.UnkeyedContainer(a1, a2, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance JSONDecoderImpl.UnkeyedContainer(a1, a2, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance JSONDecoderImpl.UnkeyedContainer(a1, a2, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance JSONDecoderImpl.UnkeyedContainer(a1, a2, MEMORY[0x1E69E6FE8]);
}

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance JSONDecoderImpl.UnkeyedContainer(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = specialized JSONDecoderImpl.UnkeyedContainer.decodeIfPresent(_:)(a3);
  return v3 | ((HIDWORD(v3) & 1) << 32);
}

{
  return specialized JSONDecoderImpl.UnkeyedContainer.decodeIfPresent(_:)(a3) & 0x1FF;
}

{
  return specialized JSONDecoderImpl.UnkeyedContainer.decodeIfPresent(_:)(a3) & 0x1FFFF;
}

{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

unint64_t _sSf7exactlySfSgx_tcSzRzlufCs6UInt64V_Tt0g5(unint64_t result)
{
  v1 = result;
  if (result >= 1.8447e19)
  {
    v2 = 0;
    v3 = 1;
    return v2 | (v3 << 32);
  }

  v2 = LODWORD(v1);
  if ((~LODWORD(v1) & 0x7F800000) != 0)
  {
    v3 = v1 != result;
    if (v1 != result)
    {
      v2 = 0;
    }

    return v2 | (v3 << 32);
  }

  __break(1u);
  return result;
}

uint64_t _sSf7exactlySfSgx_tcSzRzlufCs5Int64V_Tt0g5(uint64_t result)
{
  v1 = result;
  if (result >= 9.2234e18)
  {
    v2 = 0;
    v3 = 1;
    return v2 | (v3 << 32);
  }

  v2 = LODWORD(v1);
  if ((~LODWORD(v1) & 0x7F800000) != 0)
  {
    if (v1 > -9.2234e18)
    {
      v3 = v1 != result;
      if (v1 != result)
      {
        v2 = 0;
      }

      return v2 | (v3 << 32);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs6UInt64V_SdTt1g5Tm(uint64_t a1, double a2)
{
  v3 = (*&a2 >> 52) & 0x7FFLL;
  v4 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v5 = v3 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (v5)
  {
    result = 0;
    v5 = 0;
    v7 = 1;
    if (v3 != 2047 && a2 > -1.0)
    {
      v8 = Double.exponent.getter();
      if (v8 <= 63)
      {
        v9 = v8;
        v10 = Double.significandWidth.getter();
        v11 = v10 + __clz(__rbit64(v4));
        v12 = v9 - v11;
        if (__OFSUB__(v9, v11))
        {
          __break(1u);
        }

        else
        {
          if (v11 > 63)
          {
            if (v12 < -64 || v12 > 64)
            {
              goto LABEL_12;
            }
          }

          else if (v12 < -64 || v12 > 64)
          {
            goto LABEL_12;
          }

          if ((v12 & 0x8000000000000000) == 0)
          {
            if (v12 != 64)
            {
              v13 = v4 << v12;
              if (v9 < 0)
              {
LABEL_17:
                v14 = 0;
                goto LABEL_24;
              }

LABEL_23:
              v14 = 1 << v9;
              goto LABEL_24;
            }

            goto LABEL_12;
          }
        }

        if (v12 != -64)
        {
          v13 = v4 >> (v11 - v9);
          if (v9 < 0)
          {
            goto LABEL_17;
          }

          goto LABEL_23;
        }

LABEL_12:
        v13 = 0;
        v14 = 0;
        if (v9 < 0)
        {
LABEL_24:
          v7 = 0;
          result = v9 >= v10;
          v5 = v13 | v14;
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      v5 = 0;
      result = 0;
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
    result = 1;
  }

LABEL_25:
  *a1 = v5;
  *(a1 + 8) = v7;
  return result;
}

BOOL _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5UInt8V_SdTt1g5(_BYTE *a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_25;
  }

  LOBYTE(v6) = 0;
  v7 = 1;
  if (v4 == 2047)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = Double.exponent.getter();
      if (v9 > 7)
      {
        LOBYTE(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_25;
      }

      v10 = v9;
      v11 = Double.significandWidth.getter();
      v12 = v11 + __clz(__rbit64(v5));
      v6 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 7)
        {
          if (v6 < -8 || v6 > 8)
          {
LABEL_9:
            LOBYTE(v6) = 0;
            LOBYTE(v13) = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if (v6 < 0)
          {
            if (v6 == -8)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 >> (v12 - v10);
          }

          else
          {
            if (v6 == 8)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 << v6;
          }

LABEL_21:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_23:
            v13 = 1 << v10;
            goto LABEL_24;
          }

          LOBYTE(v13) = 0;
LABEL_24:
          v7 = 0;
          LOBYTE(v6) = v6 | v13;
          result = v10 >= v11;
          goto LABEL_25;
        }

        if ((v6 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LOBYTE(v6) = 0;
          goto LABEL_21;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          if (v6 >= 0x40)
          {
            LOBYTE(v6) = 0;
          }

          else
          {
            v6 = v5 << v6;
          }

          goto LABEL_21;
        }
      }

      if (v6 <= 0xFFFFFFFFFFFFFFC0)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_21;
    }
  }

LABEL_25:
  *a1 = v6;
  a1[1] = v7;
  return result;
}

BOOL _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs6UInt16V_SdTt1g5(uint64_t a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_25;
  }

  LOWORD(v6) = 0;
  v7 = 1;
  if (v4 == 2047)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = Double.exponent.getter();
      if (v9 > 15)
      {
        LOWORD(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_25;
      }

      v10 = v9;
      v11 = Double.significandWidth.getter();
      v12 = v11 + __clz(__rbit64(v5));
      v6 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 15)
        {
          if (v6 < -16 || v6 > 16)
          {
LABEL_9:
            LOWORD(v6) = 0;
            LOWORD(v13) = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if (v6 < 0)
          {
            if (v6 == -16)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 >> (v12 - v10);
          }

          else
          {
            if (v6 == 16)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 << v6;
          }

LABEL_21:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_23:
            v13 = 1 << v10;
            goto LABEL_24;
          }

          LOWORD(v13) = 0;
LABEL_24:
          v7 = 0;
          LOWORD(v6) = v6 | v13;
          result = v10 >= v11;
          goto LABEL_25;
        }

        if ((v6 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LOWORD(v6) = 0;
          goto LABEL_21;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          if (v6 >= 0x40)
          {
            LOWORD(v6) = 0;
          }

          else
          {
            v6 = v5 << v6;
          }

          goto LABEL_21;
        }
      }

      if (v6 <= 0xFFFFFFFFFFFFFFC0)
      {
        LOWORD(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_21;
    }
  }

LABEL_25:
  *a1 = v6;
  *(a1 + 2) = v7;
  return result;
}

BOOL _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs4Int8V_SdTt1g5(_BYTE *a1, double a2)
{
  v4 = LODWORD(a2);
  v5 = (*&a2 >> 52) & 0x7FFLL;
  v6 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    LOBYTE(v15) = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047 || (v8 = Double.exponent.getter(), v8 > 7))
  {
LABEL_38:
    LOBYTE(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_29;
  }

  v9 = v8;
  v10 = Double.significandWidth.getter();
  result = v9 >= v10;
  v12 = v10 + __clz(__rbit64(v6));
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v12 > 7)
  {
    if ((v13 - 65) > 0xFFFFFFFFFFFFFF7ELL)
    {
      if (v13 < 0)
      {
        v12 = v6 >> (v12 - v9);
        if (v13 <= 0xFFFFFFFFFFFFFFC0)
        {
          LODWORD(v12) = 0;
        }
      }

      else
      {
        v12 = v6 << v13;
        if (v13 >= 0x40)
        {
          LODWORD(v12) = 0;
        }
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

LABEL_20:
    if (v9 != 7)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_31:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  if (v13 >= -8 && v13 <= 8)
  {
    if (v13 < 0)
    {
      if (v13 == -8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 >> (v12 - v9);
    }

    else
    {
      if (v13 == 8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 << v13;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v9 == 7)
  {
    goto LABEL_37;
  }

  v14 = 0;
  LODWORD(v12) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v14 = 1 << v9;
  }

LABEL_24:
  v15 = v12 | v14;
  if (a2 >= 0.0)
  {
    if ((v12 & 0x80) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v12 & 0x80) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (a2 >= 0.0)
    {
      goto LABEL_38;
    }

LABEL_33:
    LOBYTE(v7) = 0;
    LOBYTE(v15) = 0x80;
    goto LABEL_29;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_29:
  *a1 = v15;
  a1[1] = v7;
  return result;
}

BOOL _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5Int16V_SdTt1g5(uint64_t a1, double a2)
{
  v4 = LODWORD(a2);
  v5 = (*&a2 >> 52) & 0x7FFLL;
  v6 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    LOWORD(v15) = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047 || (v8 = Double.exponent.getter(), v8 > 15))
  {
LABEL_38:
    LOWORD(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_29;
  }

  v9 = v8;
  v10 = Double.significandWidth.getter();
  result = v9 >= v10;
  v12 = v10 + __clz(__rbit64(v6));
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v12 > 15)
  {
    if ((v13 - 65) > 0xFFFFFFFFFFFFFF7ELL)
    {
      if (v13 < 0)
      {
        v12 = v6 >> (v12 - v9);
        if (v13 <= 0xFFFFFFFFFFFFFFC0)
        {
          LODWORD(v12) = 0;
        }
      }

      else
      {
        v12 = v6 << v13;
        if (v13 >= 0x40)
        {
          LODWORD(v12) = 0;
        }
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

LABEL_20:
    if (v9 != 15)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_31:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  if (v13 >= -16 && v13 <= 16)
  {
    if (v13 < 0)
    {
      if (v13 == -16)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 >> (v12 - v9);
    }

    else
    {
      if (v13 == 16)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 << v13;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v9 == 15)
  {
    goto LABEL_37;
  }

  v14 = 0;
  LODWORD(v12) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v14 = 1 << v9;
  }

LABEL_24:
  v15 = v12 | v14;
  if (a2 >= 0.0)
  {
    if ((v12 & 0x8000) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v12 & 0x8000) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (a2 >= 0.0)
    {
      goto LABEL_38;
    }

LABEL_33:
    LOBYTE(v7) = 0;
    LOWORD(v15) = 0x8000;
    goto LABEL_29;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_29:
  *a1 = v15;
  *(a1 + 2) = v7;
  return result;
}

BOOL _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5Int32V_SdTt1g5(uint64_t a1, double a2)
{
  v4 = LODWORD(a2);
  v5 = (*&a2 >> 52) & 0x7FFLL;
  v6 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    v14 = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047)
  {
    goto LABEL_39;
  }

  v8 = Double.exponent.getter();
  if (v8 > 31)
  {
    goto LABEL_39;
  }

  v9 = v8;
  v10 = Double.significandWidth.getter();
  result = v9 >= v10;
  v7 = v10 + __clz(__rbit64(v6));
  v12 = v9 - v7;
  if (__OFSUB__(v9, v7))
  {
    __break(1u);
LABEL_31:
    if (a2 < 0.0 && !v7)
    {
      v14 = 0x80000000;
      goto LABEL_29;
    }

LABEL_39:
    v14 = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_29;
  }

  if (v7 > 31)
  {
    if ((v12 - 65) > 0xFFFFFFFFFFFFFF7ELL)
    {
      if (v12 < 0)
      {
        v7 = v6 >> (v7 - v9);
        if (v12 <= 0xFFFFFFFFFFFFFFC0)
        {
          LODWORD(v7) = 0;
        }
      }

      else
      {
        v7 = v6 << v12;
        if (v12 >= 0x40)
        {
          LODWORD(v7) = 0;
        }
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }

LABEL_20:
    if (v9 != 31)
    {
      if (v9 < 0)
      {
        v13 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    goto LABEL_31;
  }

  if (v12 >= -32 && v12 <= 32)
  {
    if (v12 < 0)
    {
      if (v12 == -32)
      {
        goto LABEL_8;
      }

      LODWORD(v7) = v4 >> (v7 - v9);
    }

    else
    {
      if (v12 == 32)
      {
        goto LABEL_8;
      }

      LODWORD(v7) = v4 << v12;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v9 == 31)
  {
    goto LABEL_37;
  }

  v13 = 0;
  LODWORD(v7) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v13 = 1 << v9;
  }

LABEL_24:
  v14 = v7 | v13;
  if (a2 >= 0.0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v7 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (a2 < 0.0)
    {
      LOBYTE(v7) = 0;
      v14 = 0x80000000;
      goto LABEL_29;
    }

    goto LABEL_39;
  }

  LOBYTE(v7) = 0;
  v14 = -v14;
LABEL_29:
  *a1 = v14;
  *(a1 + 4) = v7;
  return result;
}

BOOL _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs6UInt32V_SdTt1g5(uint64_t a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_25;
  }

  LODWORD(v6) = 0;
  v7 = 1;
  if (v4 == 2047)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = Double.exponent.getter();
      if (v9 > 31)
      {
        LODWORD(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_25;
      }

      v10 = v9;
      v11 = Double.significandWidth.getter();
      v12 = v11 + __clz(__rbit64(v5));
      v6 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 31)
        {
          if (v6 < -32 || v6 > 32)
          {
LABEL_9:
            LODWORD(v6) = 0;
            v13 = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if (v6 < 0)
          {
            if (v6 == -32)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 >> (v12 - v10);
          }

          else
          {
            if (v6 == 32)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 << v6;
          }

LABEL_21:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_23:
            v13 = 1 << v10;
            goto LABEL_24;
          }

          v13 = 0;
LABEL_24:
          v7 = 0;
          LODWORD(v6) = v6 | v13;
          result = v10 >= v11;
          goto LABEL_25;
        }

        if ((v6 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LODWORD(v6) = 0;
          goto LABEL_21;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          if (v6 >= 0x40)
          {
            LODWORD(v6) = 0;
          }

          else
          {
            v6 = v5 << v6;
          }

          goto LABEL_21;
        }
      }

      if (v6 <= 0xFFFFFFFFFFFFFFC0)
      {
        LODWORD(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_21;
    }
  }

LABEL_25:
  *a1 = v6;
  *(a1 + 4) = v7;
  return result;
}

uint64_t _ss7UInt128V7exactlyABSgx_tcSBRzlufCSd_Tt0g5(double a1)
{
  v2 = trunc(a1 * 5.42101086e-20);
  if (!_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs6UInt64V_SdTt1g5Tm(&v5, v2) || v6 == 1)
  {
    return 0;
  }

  v3 = a1 + v2 * -1.84467441e19;
  if (!v5)
  {
    v3 = a1;
  }

  if (_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs6UInt64V_SdTt1g5Tm(&v5, v3) && v6 != 1)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void *specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)@<X0>(void *result@<X0>, void *(*a2)(uint64_t *__return_ptr, uint64_t, uint64_t, void, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = result[1];
  v8 = v7 < a4 + a3 || v7 < a4;
  if (v8 || (a4 | a3) < 0 || v7 <= a3)
  {
    __break(1u);
  }

  else
  {
    result = a2(&v10, *result + a3, a4, *result, v7);
    if (!v5)
    {
      v9 = v11;
      *a5 = v10;
      *(a5 + 8) = v9;
    }
  }

  return result;
}

{
  v7 = result[1];
  v8 = v7 < a4 + a3 || v7 < a4;
  if (v8 || (a4 | a3) < 0 || v7 <= a3)
  {
    __break(1u);
  }

  else
  {
    result = a2(&v10, *result + a3, a4, *result, v7);
    if (!v5)
    {
      v9 = BYTE4(v10);
      *a5 = v10;
      *(a5 + 4) = v9;
    }
  }

  return result;
}

uint64_t _ss6Int128V7exactlyABSgx_tcSBRzlufCSd_Tt0g5(double a1)
{
  v2 = fabs(a1);
  if (v2 >= 1.84467441e19)
  {
    v4 = floor(a1 * 5.42101086e-20);
    if (_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5Int64V_SdTt1g5Tm(&v5, v4) && v6 != 1 && _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs6UInt64V_SdTt1g5Tm(&v5, a1 + v4 * -1.84467441e19) && v6 != 1)
    {
      return v5;
    }

    return 0;
  }

  if (!_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs6UInt64V_SdTt1g5Tm(&v5, v2) || v6 == 1)
  {
    return 0;
  }

  if (a1 < 0.0)
  {
    return -v5;
  }

  else
  {
    return v5;
  }
}

unint64_t *specialized JSONDecoderImpl.UnkeyedContainer.decodeIfPresent(_:)()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  if (v3 < 0xFE)
  {
    v9 = *(v0 + 32);
  }

  else
  {
    v4 = *(v0 + 8);
    v5 = JSONMap.loadValue(at:)(v4);
    if (v7 > 0xFDu)
    {
      result = 0;
      goto LABEL_14;
    }

    v10 = v5;
    v11 = v4;
    v12 = v7;
    v13 = v6;
    v14 = JSONMap.offset(after:)(v11);
    v9 = v13;
    LOBYTE(v3) = v12;
    v15 = v14;
    v2 = v10;
    *(v0 + 8) = v15;
    *(v0 + 24) = v10;
    *(v0 + 32) = v13;
    *(v0 + 40) = v12;
  }

  v16 = (v3 & 0xE0) == 0xA0 && (v9 | v2) == 0;
  if (v16 && v3 == 160)
  {
    result = 0;
  }

  else
  {
    result = specialized JSONDecoderImpl.unwrapString<A>(from:for:_:)(v2, v9, v3, *(v0 + 72), *(v0 + 64), 0, 0, 2);
    if (v1)
    {
      return result;
    }
  }

LABEL_14:
  v17 = *(v0 + 64);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 64) = v19;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 40) = -2;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  v14 = MEMORY[0x1E69E6370];
  LOBYTE(v13) = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6];
  v8 = type metadata accessor for CodingUserInfoKey();
  (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a2, v8);
  result = outlined init with take of Any(&v13, (a4[7] + 32 * a1));
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONDecoder.NonConformingFloatDecodingStrategy(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for JSONDecoder.NonConformingFloatDecodingStrategy(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for JSONDecoder.DataDecodingStrategy(uint64_t *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for JSONDecoder.DataDecodingStrategy(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for JSONDecoder._Options(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t storeEnumTagSinglePayload for JSONDecoder._Options(uint64_t result, int a2, int a3)
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
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for specialized closure #2 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)@<X0>(void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  return partial apply for specialized closure #2 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(a1, a2, a3);
}

{
  result = specialized closure #2 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(a1, a2, v3[2], v3[3], v3[4], v3[5], v3[6], v3[7]);
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v7 & 1;
  }

  return result;
}

{
  result = specialized closure #2 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(a1, a2, v3[4], v3[5], v3[6], v3[7], v3[8], v3[9]);
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v7 & 1;
  }

  return result;
}

{
  result = specialized closure #2 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(a1, a2, v3[2], v3[3], v3[4], v3[5], v3[6], v3[7]);
  if (!v4)
  {
    *a3 = result;
    *(a3 + 4) = BYTE4(result) & 1;
  }

  return result;
}

{
  return partial apply for specialized closure #2 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(a1, a2, a3);
}

void *partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  return specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, *(v2 + 16), *(v2 + 32), *(v2 + 40), a2);
}

{
  return specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, *(v2 + 16), *(v2 + 32), *(v2 + 40), a2);
}

BOOL specialized static JSONDecoderImpl.isTrueZero(_:)(unsigned __int8 *a1, uint64_t a2)
{
  if (a2 >= 4)
  {
    do
    {
      v5 = *a1;
      if ((v5 - 58) > 0xFFFFFFF6)
      {
        return 0;
      }

      if ((v5 | 0x20) == 0x65)
      {
        return 1;
      }

      v6 = a1[1];
      if ((v6 - 58) > 0xFFFFFFF6)
      {
        return 0;
      }

      if ((v6 | 0x20) == 0x65)
      {
        return 1;
      }

      v7 = a1[2];
      if ((v7 - 58) > 0xFFFFFFF6)
      {
        return 0;
      }

      if ((v7 | 0x20) == 0x65)
      {
        return 1;
      }

      v8 = a1[3];
      if ((v8 - 58) > 0xFFFFFFF6)
      {
        return 0;
      }

      if ((v8 | 0x20) == 0x65)
      {
        return 1;
      }

      a1 += 4;
      a2 -= 4;
    }

    while (a2 > 3);
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      goto LABEL_7;
    }

    if (a2 == 3)
    {
      v2 = a1[2];
      if ((v2 - 58) > 0xFFFFFFF6)
      {
        return 0;
      }

      if ((v2 | 0x20) != 0x65)
      {
LABEL_7:
        v3 = a1[1];
        if ((v3 - 58) <= 0xFFFFFFF6)
        {
          if ((v3 | 0x20) == 0x65)
          {
            return 1;
          }

          return *a1 - 58 < 0xFFFFFFF7;
        }

        return 0;
      }
    }

    return 1;
  }

  return *a1 - 58 < 0xFFFFFFF7;
}

float specialized closure #1 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(char *__s1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, char a6)
{
  v42 = *MEMORY[0x1E69E9840];
  if ((a5 & 1) == 0)
  {
    v17 = specialized static JSONScanner.prevalidateJSONNumber(from:hasExponent:fullSource:)(__s1, a2, a6 & 1, a3, a4);
    if (v6)
    {
      return v7;
    }

    v18 = v17;
    v37 = 0;
    v19 = _stringshims_strtof_clocale(__s1, &v37);
    v20 = &__s1[a2];
    if (v37 && v20 == v37)
    {
      v7 = v19;
      if ((LODWORD(v19) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    if ((((v18 - __s1) | (v20 - v18)) & 0x8000000000000000) == 0)
    {
      specialized static JSONScanner.validateNumber(from:fullSource:)(v18, v20 - v18, a3, a4, v40);
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      v23 = v40[1];
      v22 = v40[2];
      v24 = v41;
      v25 = v40[0];
LABEL_30:
      *(v21 + 48) = v24;
      *(v21 + 16) = v23;
      *(v21 + 32) = v22;
      *v21 = v25;
      swift_willThrow();
      return v7;
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  v12 = specialized static JSON5Scanner.prevalidateJSONNumber(from:fullSource:)(__s1, a2, a3, a4);
  if (v6)
  {
    return v7;
  }

  if (v13)
  {
    if (a2 && *__s1 == 45)
    {
      v14 = specialized _parseJSON5Integer<A>(_:isHex:)(__s1, a2, 1, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:));
      if ((v15 & 1) == 0)
      {
        v16 = _sSf7exactlySfSgx_tcSzRzlufCs5Int64V_Tt0g5(v14);
        if ((v16 & 0x100000000) == 0)
        {
          return *&v16;
        }
      }
    }

    else
    {
      v30 = specialized _parseJSON5Integer<A>(_:isHex:)(__s1, a2, 1, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:));
      if ((v31 & 1) == 0)
      {
        v16 = _sSf7exactlySfSgx_tcSzRzlufCs6UInt64V_Tt0g5(v30);
        if ((v16 & 0x100000000) == 0)
        {
          return *&v16;
        }
      }
    }

LABEL_27:
    v32 = static String._fromUTF8Repairing(_:)();
    v34 = v33;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v35 = v32;
    *(v35 + 8) = v34;
    *(v35 + 16) = 0u;
    *(v35 + 32) = 0u;
    *(v35 + 48) = 11;
    swift_willThrow();
    return v7;
  }

  v26 = v13;
  v27 = v12;
  v37 = 0;
  v28 = _stringshims_strtof_clocale(__s1, &v37);
  v29 = &__s1[a2];
  if (!v37 || v29 != v37)
  {
    if ((((v27 - __s1) | (v29 - v27)) & 0x8000000000000000) == 0)
    {
      specialized static JSON5Scanner.validateNumber(from:fullSource:)(v27, v29 - v27, a3, a4, v38);
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      v22 = v38[2];
      v24 = v39;
      v23 = v38[1];
      v25 = v38[0];
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  v7 = v28;
  if ((LODWORD(v28) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    if ((v26 & 0x100) != 0)
    {
      return v7;
    }

    goto LABEL_27;
  }

LABEL_21:
  if (v7 == 0.0 && !specialized static JSONDecoderImpl.isTrueZero(_:)(__s1, a2))
  {
    goto LABEL_27;
  }

  return v7;
}

uint64_t specialized closure #2 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(void *a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14[0] = a3;
  v14[1] = a4;
  v13[0] = a5;
  v13[1] = a6;
  v12[0] = a7;
  v12[1] = a8;

  v10 = specialized closure #1 in closure #2 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(a1, a2, v14, v13, v12);

  return v10;
}

{
  v14[0] = a3;
  v14[1] = a4;
  v13[0] = a5;
  v13[1] = a6;
  v12[0] = a7;
  v12[1] = a8;

  v10 = specialized closure #1 in closure #2 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(a1, a2, v14, v13, v12);

  return v10 | ((HIDWORD(v10) & 1) << 32);
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1865D2690);
  }

  return result;
}

unint64_t specialized closure #2 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(const void *a1, size_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{

  if ((a4 & 0x1000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((a4 & 0x2000000000000000) == 0)
  {
    do
    {
      if ((a3 & 0x1000000000000000) != 0)
      {
        v16 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((a3 & 0xFFFFFFFFFFFFLL) != a2)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v27 = _StringObject.sharedUTF8.getter();
        v29 = v28;
        v16 = v27;
        if (v29 != a2)
        {
          goto LABEL_11;
        }
      }

      if (v16)
      {
        goto LABEL_10;
      }

      __break(1u);
LABEL_7:
      a3 = static String._copying(_:)();
      v39 = v17;

      a4 = v39;
    }

    while ((v39 & 0x2000000000000000) == 0);
  }

  v37 = a3;
  v38 = a4 & 0xFFFFFFFFFFFFFFLL;
  if ((HIBYTE(a4) & 0xF) == a2)
  {
    v16 = &v37;
LABEL_10:
    if (!memcmp(a1, v16, a2))
    {
      goto LABEL_17;
    }
  }

LABEL_11:
  if ((a6 & 0x1000000000000000) != 0)
  {
    a5 = static String._copying(_:)();
    v22 = v21;

    a6 = v22;
    if ((v22 & 0x2000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    v37 = a5;
    v38 = a6 & 0xFFFFFFFFFFFFFFLL;
    if ((HIBYTE(a6) & 0xF) != a2)
    {
      goto LABEL_22;
    }

    v18 = &v37;
    goto LABEL_21;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  if ((a5 & 0x1000000000000000) != 0)
  {
    v18 = ((a6 & 0xFFFFFFFFFFFFFFFLL) + 32);
    if ((a5 & 0xFFFFFFFFFFFFLL) != a2)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v30 = _StringObject.sharedUTF8.getter();
    v32 = v31;
    v18 = v30;
    if (v32 != a2)
    {
      goto LABEL_22;
    }
  }

  if (!v18)
  {
    __break(1u);
LABEL_17:

    v19 = 0;
    v20 = 2139095040;
    return v20 | (v19 << 32);
  }

LABEL_21:
  if (!memcmp(a1, v18, a2))
  {
LABEL_28:

    v19 = 0;
    v20 = 4286578688;
    return v20 | (v19 << 32);
  }

LABEL_22:
  if ((a8 & 0x1000000000000000) == 0)
  {
    if ((a8 & 0x2000000000000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_30:
    v37 = a7;
    v38 = a8 & 0xFFFFFFFFFFFFFFLL;
    if ((HIBYTE(a8) & 0xF) == a2)
    {
      v23 = &v37;
LABEL_32:
      v26 = memcmp(a1, v23, a2) == 0;
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  a7 = static String._copying(_:)();
  v25 = v24;

  a8 = v25;
  if ((v25 & 0x2000000000000000) != 0)
  {
    goto LABEL_30;
  }

LABEL_24:
  if ((a7 & 0x1000000000000000) != 0)
  {
    v23 = ((a8 & 0xFFFFFFFFFFFFFFFLL) + 32);
    if ((a7 & 0xFFFFFFFFFFFFLL) == a2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v33 = _StringObject.sharedUTF8.getter();
    v35 = v34;
    v23 = v33;
    if (v35 == a2)
    {
LABEL_26:
      if (!v23)
      {
        __break(1u);
        goto LABEL_28;
      }

      goto LABEL_32;
    }
  }

LABEL_38:
  v26 = 0;
LABEL_39:

  v19 = !v26;
  v20 = 2143289344;
  if (!v26)
  {
    v20 = 0;
  }

  return v20 | (v19 << 32);
}

uint64_t specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:)(__int16 a1, const char *a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  LOWORD(v9) = v6;
  LOWORD(v15) = a1;
  v133 = *MEMORY[0x1E69E9840];
  v127[0] = 0;
  v16 = _stringshims_strtod_clocale(a2, v127);
  if (v127[0])
  {
    v17 = &a2[a3] == v127[0];
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v19 = v16;
    if (!_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5UInt8V_SdTt1g5(v127, v16) || (BYTE1(v127[0]) & 1) != 0)
    {
      goto LABEL_57;
    }

    if (fabs(v19) < 9.00719925e15)
    {
      return LOBYTE(v127[0]);
    }
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd) != MEMORY[0x1E69E6108])
  {
    specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a2, a3, 46, 0xE100000000000000, 1, v131);
    if ((v132 & 1) == 0)
    {
      a3 = v131[1];
      v8 = v131[2];
      v18 = v131[0];
      goto LABEL_56;
    }

LABEL_12:
    v20 = specialized BufferView.suffix(from:)(a6, a2, a3);
    v22 = &v20[v21];
    if (v15)
    {
      if (v21 < 1)
      {
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
        goto LABEL_312;
      }

      v23 = *v20;
      if (v23 == 45 || (v9 = v20, v23 == 43))
      {
        v9 = v20 + 1;
      }

      if (v22 < v9)
      {
        goto LABEL_311;
      }

      a6 = v9 - v20;
      if (v9 - v20 < 0)
      {
LABEL_312:
        __break(1u);
        goto LABEL_313;
      }

      a3 = v22 - v9;
      if (v22 - v9 < 0)
      {
LABEL_313:
        __break(1u);
LABEL_314:
        v80 = a4;
        v36 = 0;
        v47 = v126;
        v48 = v8;
LABEL_169:
        LODWORD(v127[0]) = a6;
        WORD2(v127[0]) = v9;
        v81 = v80;
        HIWORD(v127[0]) = v80;
        LOWORD(v127[1]) = a3;
        WORD1(v127[1]) = a5;
        WORD2(v127[1]) = v7;
        HIWORD(v127[1]) = v47;
        LOWORD(v128) = v48;
        v82 = v15;
        HIWORD(v128) = v15;
        v83 = v48;
        if ((_So9NSDecimala__exponent_getter(v127) & 0x80000000) != 0)
        {
          LODWORD(v127[0]) = a6;
          WORD2(v127[0]) = v9;
          HIWORD(v127[0]) = v81;
          LOWORD(v127[1]) = a3;
          WORD1(v127[1]) = a5;
          WORD2(v127[1]) = v7;
          HIWORD(v127[1]) = v126;
          LOWORD(v128) = v83;
          HIWORD(v128) = v82;
          v123 = _So9NSDecimala__exponent_getter(v127);
          if (v123 > 0)
          {
            goto LABEL_328;
          }

          if (v123)
          {
            if (!__CFADD__(v123, -v123 & ~(-v123 >> 31)))
            {
              goto LABEL_336;
            }

            do
            {
              v36 /= 0xAuLL;
            }

            while (!__CFADD__(v123++, 1));
          }

          goto LABEL_286;
        }

        LODWORD(v127[0]) = a6;
        WORD2(v127[0]) = v9;
        HIWORD(v127[0]) = v81;
        LOWORD(v127[1]) = a3;
        WORD1(v127[1]) = a5;
        WORD2(v127[1]) = v7;
        HIWORD(v127[1]) = v126;
        LOWORD(v128) = v83;
        HIWORD(v128) = v82;
        v84 = _So9NSDecimala__exponent_getter(v127);
        if ((v84 & 0x80000000) == 0)
        {
          v85 = v84 + 1;
          while (--v85)
          {
            v86 = (v36 * 0xAuLL) >> 64;
            v36 *= 10;
            if (v86)
            {
              goto LABEL_57;
            }
          }

LABEL_286:
          if (v36 <= 0xFF)
          {
            return v36;
          }

LABEL_57:
          v36 = static String._fromUTF8Repairing(_:)();
          v39 = v38;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v40 = v36;
          *(v40 + 8) = v39;
          *(v40 + 16) = 0u;
          *(v40 + 32) = 0u;
          v41 = 11;
          goto LABEL_58;
        }

        goto LABEL_318;
      }

      v15 = v21;
      v7 = v20;
      if (a3 >= 2)
      {
        v24 = 2;
      }

      else
      {
        v24 = v22 - v9;
      }

      if (_stringshims_strncasecmp_clocale(v9, "0x", v24))
      {
        if (v9 < v22)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = v22 - v9;
          do
          {
            if (a6 + v26 < 0)
            {
              goto LABEL_294;
            }

            v31 = v29-- < 1;
            if (v31)
            {
              goto LABEL_294;
            }

            LODWORD(v15) = v9[v26];
            if ((v15 - 58) > 0xF5u)
            {
              v30 = __OFADD__(v28++, 1);
              if (v30)
              {
                goto LABEL_296;
              }
            }

            else if (v9[v26] <= 0x2Du)
            {
              if (v15 != 43 && v15 != 45 || v28 || v27 != 2)
              {
LABEL_77:
                a5 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(&v9[v26], a4, a5);
                v52 = v51;
                a3 = v53;
                goto LABEL_78;
              }

              v28 = 0;
              v27 = 3;
            }

            else if (v15 == 101 || v15 == 69)
            {
              if (v27 != 1 && (v27 || v28 <= 0))
              {
                goto LABEL_77;
              }

              v28 = 0;
              v27 = 2;
            }

            else
            {
              if (v15 != 46)
              {
                goto LABEL_77;
              }

              if (v27)
              {
                v114 = &v9[v26];
                if (&v9[v26] >= a4)
                {
                  v115 = a4 + a5;
                  if (a4 + a5 >= v114)
                  {
                    if (v115 >= &v9[v26 + 1])
                    {
                      v115 = &v9[v26 + 1];
                    }

                    if (v115 <= a4)
                    {
                      v52 = 0;
                      a5 = 1;
                    }

                    else
                    {
                      v116 = a5 + a4;
                      a5 = 1;
                      v117 = a4;
                      do
                      {
                        v118 = 0;
                        v119 = 0;
                        v120 = v116 - v117;
                        while (1)
                        {
                          if ((v117 - a4 + v119) < 0 || (v120 + v118) < 1)
                          {
                            goto LABEL_308;
                          }

                          v121 = *(v117 + v119);
                          if (v121 == 10)
                          {
                            break;
                          }

                          if (v121 == 13)
                          {
                            v122 = v117 + v119;
                            if (v114 < v117 + v119 + 1)
                            {
                              goto LABEL_274;
                            }

                            if (((v117 - a4 + v119 + 1) & 0x8000000000000000) == 0 && (~v119 + v120) >= 1)
                            {
                              if (*(v122 + 1) == 10)
                              {
                                v122 = v117 + v119 + 1;
                              }

LABEL_274:
                              v30 = __OFADD__(a5++, 1);
                              if (!v30)
                              {
                                v117 = v122 + 1;
                                goto LABEL_278;
                              }

LABEL_338:
                              __break(1u);
LABEL_339:
                              __break(1u);
LABEL_340:
                              __break(1u);
                            }

                            __break(1u);
                          }

                          v52 = v119 + 1;
                          if (__OFADD__(v119, 1))
                          {
                            goto LABEL_309;
                          }

                          ++v119;
                          --v118;
                          if (v117 + v119 >= v115)
                          {
                            goto LABEL_290;
                          }
                        }

                        v30 = __OFADD__(a5++, 1);
                        if (v30)
                        {
                          goto LABEL_337;
                        }

                        v117 += v119 + 1;
LABEL_278:
                        ;
                      }

                      while (v117 < v115);
                      v52 = 0;
                    }

LABEL_290:
                    a3 = &v9[v26 - a4];
                    LOBYTE(v15) = 46;
LABEL_78:
                    a6 = 0xE900000000000072;
                    v7 = 0x65626D756E206E69;
LABEL_79:
                    v36 = v15;
                    lazy protocol witness table accessor for type JSONError and conformance JSONError();
                    swift_allocError();
                    *v40 = v7;
                    *(v40 + 8) = a6;
                    *(v40 + 16) = v15;
                    *(v40 + 24) = a5;
                    *(v40 + 32) = v52;
                    *(v40 + 40) = a3;
                    v41 = 1;
LABEL_58:
                    *(v40 + 48) = v41;
                    swift_willThrow();
                    return v36;
                  }
                }

LABEL_327:
                __break(1u);
LABEL_328:
                __break(1u);
LABEL_329:
                __break(1u);
LABEL_330:
                __break(1u);
LABEL_331:
                __break(1u);
LABEL_332:
                __break(1u);
LABEL_333:
                __break(1u);
LABEL_334:
                __break(1u);
LABEL_335:
                __break(1u);
LABEL_336:
                __break(1u);
LABEL_337:
                __break(1u);
                goto LABEL_338;
              }

              v28 = 0;
              v27 = 1;
            }

            ++v26;
          }

          while (a3 != v26);
        }

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
        goto LABEL_310;
      }

      v35 = v9 + 2;
      v54 = v22 - (v9 + 2);
      if (v54 >= 1 && v35 < v22)
      {
        v54 = &v35[-v7];
        if ((&v35[-v7] & 0x8000000000000000) == 0)
        {
          a3 = &v9[-a4 + 2];
          v54 = v15 + v7 - v9 - 3;
          v59 = a6 + 3;
          v25 = 1;
          while (1)
          {
            v60 = v59;
            LOWORD(v15) = *v35;
            if ((v15 - 58) <= 0xF5u && (*v35 - 65 > 0x25 || ((1 << (v15 - 65)) & 0x3F0000003FLL) == 0))
            {
              break;
            }

            v31 = v54-- < 1;
            if (!v31 && ++v35 < v22)
            {
              ++a3;
              ++v59;
              if ((v60 & 0x8000000000000000) == 0)
              {
                continue;
              }
            }

            goto LABEL_115;
          }

          if (v35 >= a4)
          {
            v87 = a4 + a5;
            if (a4 + a5 >= v35)
            {
              if (v87 >= (v35 + 1))
              {
                v87 = (v35 + 1);
              }

              if (v87 <= a4)
              {
                v52 = 0;
                a6 = 0xED00007265626D75;
                v7 = 0x6E20786568206E69;
                a5 = 1;
                goto LABEL_79;
              }

              v88 = a5 + a4;
              v89 = -a4;
              a5 = 1;
              a6 = 0xED00007265626D75;
              v7 = 0x6E20786568206E69;
              while (1)
              {
                v90 = 0;
                v91 = 0;
                v92 = v88 - a4;
                while (1)
                {
                  if ((v89 + a4 + v91) < 0 || (v92 + v90) < 1)
                  {
                    goto LABEL_302;
                  }

                  v93 = *(a4 + v91);
                  if (v93 == 10)
                  {
                    v30 = __OFADD__(a5++, 1);
                    if (!v30)
                    {
                      a4 += v91 + 1;
                      goto LABEL_198;
                    }

                    goto LABEL_325;
                  }

                  if (v93 == 13)
                  {
                    break;
                  }

                  v52 = v91 + 1;
                  if (__OFADD__(v91, 1))
                  {
                    goto LABEL_303;
                  }

                  ++v91;
                  --v90;
                  if (a4 + v91 >= v87)
                  {
                    goto LABEL_79;
                  }
                }

                v94 = a4 + v91;
                if (v35 >= a4 + v91 + 1)
                {
                  if (((v89 + a4 + v91 + 1) & 0x8000000000000000) != 0 || (~v91 + v92) < 1)
                  {
                    goto LABEL_335;
                  }

                  if (*(v94 + 1) == 10)
                  {
                    v94 = a4 + v91 + 1;
                  }
                }

                v30 = __OFADD__(a5++, 1);
                if (v30)
                {
                  goto LABEL_326;
                }

                a4 = v94 + 1;
LABEL_198:
                if (a4 >= v87)
                {
                  v52 = 0;
                  goto LABEL_79;
                }
              }
            }
          }

          goto LABEL_317;
        }
      }

LABEL_115:
      __break(1u);
LABEL_116:
      v62 = &v35[v54];
      if (&v35[v54] >= a4)
      {
        v63 = a4 + a5;
        if (a4 + a5 >= v62)
        {
          if (v63 >= &v35[v54 + 1])
          {
            v63 = &v35[v54 + 1];
          }

          if (v63 > a4)
          {
            v64 = a5 + a4;
            a5 = 1;
            v65 = a4;
            while (1)
            {
              while (1)
              {
                v66 = 0;
                v67 = 0;
                v68 = v64 - v65;
LABEL_123:
                if ((v65 - a4 + v67) < 0 || (v68 + v66) < 1)
                {
                  goto LABEL_298;
                }

                v69 = *(v65 + v67);
                if (v69 != 10)
                {
                  break;
                }

                v30 = __OFADD__(a5++, 1);
                if (v30)
                {
                  goto LABEL_321;
                }

                v65 += v67 + 1;
                if (v65 >= v63)
                {
                  goto LABEL_224;
                }
              }

              if (v69 != 13)
              {
                a3 = v67 + 1;
                if (__OFADD__(v67, 1))
                {
                  goto LABEL_300;
                }

                ++v67;
                --v66;
                if (v65 + v67 >= v63)
                {
                  goto LABEL_227;
                }

                goto LABEL_123;
              }

              v70 = v65 + v67;
              if (v62 >= v65 + v67 + 1)
              {
                if (((v65 - a4 + v67 + 1) & 0x8000000000000000) != 0 || (~v67 + v68) < 1)
                {
                  goto LABEL_332;
                }

                if (*(v70 + 1) == 10)
                {
                  v70 = v65 + v67 + 1;
                }
              }

              v30 = __OFADD__(a5++, 1);
              if (v30)
              {
                goto LABEL_323;
              }

              v65 = v70 + 1;
              if (v70 + 1 >= v63)
              {
                goto LABEL_224;
              }
            }
          }

LABEL_225:
          a3 = 0;
LABEL_226:
          a5 = 1;
          goto LABEL_227;
        }
      }

      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
      goto LABEL_320;
    }

    if (v21 >= 1)
    {
      v32 = 0;
      v33 = v21;
      v34 = v20;
      v35 = v20;
      while ((v32 & 0x8000000000000000) == 0)
      {
        v31 = v33-- < 1;
        if (v31)
        {
          break;
        }

        if (*v35 - 58 >= 0xFFFFFFF6)
        {
          ++v35;
          ++v34;
          ++v32;
          if (v35 < v22)
          {
            continue;
          }
        }

        goto LABEL_81;
      }

      goto LABEL_297;
    }

    v34 = v20;
    v35 = v20;
LABEL_81:
    if (v35 >= v22)
    {
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
      goto LABEL_293;
    }

    v54 = 0;
    v55 = 0;
    v56 = v34 - v20;
    v57 = (&v20[v21] - v34);
    v58 = &v20[v21] - v35;
    while (1)
    {
      if (v35 - v20 + v54 < 0)
      {
        goto LABEL_292;
      }

      v31 = v58-- < 1;
      if (v31)
      {
        goto LABEL_292;
      }

      v25 = v35[v54];
      if (v25 - 58 >= 0xFFFFFFF6)
      {
        v30 = __OFADD__(v56++, 1);
        if (v30)
        {
          goto LABEL_295;
        }
      }

      else if (v35[v54] <= 0x2Du)
      {
        if (v25 != 43 && v25 != 45)
        {
LABEL_200:
          v95 = &v35[v54];
          if (&v35[v54] < a4)
          {
            goto LABEL_319;
          }

          v96 = a4 + a5;
          if (a4 + a5 < v95)
          {
            goto LABEL_319;
          }

          if (v96 >= &v35[v54 + 1])
          {
            v96 = &v35[v54 + 1];
          }

          if (v96 <= a4)
          {
            goto LABEL_225;
          }

          v97 = a5 + a4;
          a5 = 1;
          v98 = a4;
          while (1)
          {
LABEL_206:
            v99 = 0;
            v100 = 0;
            v101 = v97 - v98;
            while (1)
            {
              if ((v98 - a4 + v100) < 0 || (v101 + v99) < 1)
              {
                goto LABEL_304;
              }

              v102 = *(v98 + v100);
              if (v102 == 10)
              {
                v30 = __OFADD__(a5++, 1);
                if (v30)
                {
                  goto LABEL_329;
                }

                v98 += v100 + 1;
                if (v98 >= v96)
                {
                  goto LABEL_224;
                }

                goto LABEL_206;
              }

              if (v102 == 13)
              {
                break;
              }

              a3 = v100 + 1;
              if (__OFADD__(v100, 1))
              {
                goto LABEL_306;
              }

              ++v100;
              --v99;
              if (v98 + v100 >= v96)
              {
                goto LABEL_227;
              }
            }

            v103 = v98 + v100;
            if (v95 >= v98 + v100 + 1)
            {
              if (((v98 - a4 + v100 + 1) & 0x8000000000000000) != 0 || (~v100 + v101) < 1)
              {
                goto LABEL_339;
              }

              if (*(v103 + 1) == 10)
              {
                v103 = v98 + v100 + 1;
              }
            }

            v30 = __OFADD__(a5++, 1);
            if (v30)
            {
              goto LABEL_330;
            }

            v98 = v103 + 1;
            if (v103 + 1 >= v96)
            {
LABEL_224:
              a3 = 0;
LABEL_227:
              v36 = &v35[v54 - a4];
              v104 = v25;
              lazy protocol witness table accessor for type JSONError and conformance JSONError();
              swift_allocError();
              *v40 = xmmword_181237560;
              *(v40 + 16) = v104;
              *(v40 + 24) = a5;
              *(v40 + 32) = a3;
              *(v40 + 40) = v36;
              v41 = 1;
              goto LABEL_58;
            }
          }
        }

        if (v56 || v55 != 2)
        {
          v71 = &v35[v54];
          if (&v35[v54] >= a4)
          {
            v72 = a4 + a5;
            if (a4 + a5 >= v71)
            {
              if (v72 >= &v35[v54 + 1])
              {
                v72 = &v35[v54 + 1];
              }

              if (v72 <= a4)
              {
                goto LABEL_225;
              }

              v73 = a5 + a4;
              a5 = 1;
              v74 = a4;
              while (1)
              {
LABEL_147:
                v75 = 0;
                v76 = 0;
                v77 = v73 - v74;
                while (1)
                {
                  if ((v74 - a4 + v76) < 0 || (v77 + v75) < 1)
                  {
                    goto LABEL_299;
                  }

                  v78 = *(v74 + v76);
                  if (v78 == 10)
                  {
                    v30 = __OFADD__(a5++, 1);
                    if (v30)
                    {
                      goto LABEL_322;
                    }

                    v74 += v76 + 1;
                    if (v74 >= v72)
                    {
                      goto LABEL_224;
                    }

                    goto LABEL_147;
                  }

                  if (v78 == 13)
                  {
                    break;
                  }

                  a3 = v76 + 1;
                  if (__OFADD__(v76, 1))
                  {
                    goto LABEL_301;
                  }

                  ++v76;
                  --v75;
                  if (v74 + v76 >= v72)
                  {
                    goto LABEL_227;
                  }
                }

                v79 = v74 + v76;
                if (v71 >= v74 + v76 + 1)
                {
                  if (((v74 - a4 + v76 + 1) & 0x8000000000000000) != 0 || (~v76 + v77) < 1)
                  {
                    goto LABEL_333;
                  }

                  if (*(v79 + 1) == 10)
                  {
                    v79 = v74 + v76 + 1;
                  }
                }

                v30 = __OFADD__(a5++, 1);
                if (v30)
                {
                  goto LABEL_324;
                }

                v74 = v79 + 1;
                if (v79 + 1 >= v72)
                {
                  goto LABEL_224;
                }
              }
            }
          }

          goto LABEL_316;
        }

        v56 = 0;
        v55 = 3;
      }

      else if (v25 == 101 || v25 == 69)
      {
        if (v56 < 1 || v55 >= 2)
        {
          goto LABEL_116;
        }

        v56 = 0;
        v55 = 2;
      }

      else
      {
        if (v25 != 46)
        {
          goto LABEL_200;
        }

        if (v56 < 1 || v55)
        {
          v105 = &v35[v54];
          if (&v35[v54] >= a4 && a4 + a5 >= v105)
          {
            if (a4 + a5 >= &v35[v54 + 1])
            {
              v106 = &v35[v54 + 1];
            }

            else
            {
              v106 = a4 + a5;
            }

            if (v106 > a4)
            {
              v107 = a5 + a4;
              a5 = 1;
              v108 = a4;
              while (1)
              {
                v109 = 0;
                v110 = 0;
                v111 = v107 - v108;
                while (1)
                {
                  if ((v108 - a4 + v110) < 0 || (v111 + v109) < 1)
                  {
                    goto LABEL_305;
                  }

                  v112 = *(v108 + v110);
                  if (v112 == 10)
                  {
                    break;
                  }

                  if (v112 == 13)
                  {
                    v113 = v108 + v110;
                    if (v105 >= v108 + v110 + 1)
                    {
                      if (((v108 - a4 + v110 + 1) & 0x8000000000000000) != 0 || (~v110 + v111) < 1)
                      {
                        goto LABEL_340;
                      }

                      if (*(v113 + 1) == 10)
                      {
                        v113 = v108 + v110 + 1;
                      }
                    }

                    v30 = __OFADD__(a5++, 1);
                    if (v30)
                    {
                      goto LABEL_334;
                    }

                    a3 = 0;
                    v108 = v113 + 1;
                    goto LABEL_252;
                  }

                  a3 = v110 + 1;
                  if (__OFADD__(v110, 1))
                  {
                    goto LABEL_307;
                  }

                  ++v110;
                  --v109;
                  if (v108 + v110 >= v106)
                  {
                    v25 = 46;
                    goto LABEL_227;
                  }
                }

                v30 = __OFADD__(a5++, 1);
                if (v30)
                {
                  goto LABEL_331;
                }

                a3 = 0;
                v108 += v110 + 1;
LABEL_252:
                v25 = 46;
                if (v108 >= v106)
                {
                  goto LABEL_227;
                }
              }
            }

            a3 = 0;
            v25 = 46;
            goto LABEL_226;
          }

LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
LABEL_325:
          __break(1u);
LABEL_326:
          __break(1u);
          goto LABEL_327;
        }

        v56 = 0;
        v55 = 1;
      }

      if (v57 == ++v54)
      {
        goto LABEL_291;
      }
    }
  }

  specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a2, a3, 0x2EuLL, 0xE100000000000000, 1, v129);
  if (v130 == 1)
  {
    goto LABEL_12;
  }

  a3 = v129[1];
  v8 = v129[2];
  v18 = v129[0];
LABEL_56:
  v127[0] = v18;
  v37 = HIDWORD(v18);
  v127[1] = a3;
  v15 = v8 >> 16;
  v128 = v8;
  if (_So9NSDecimala__isNegative_getter(v127))
  {
    goto LABEL_57;
  }

  v7 = HIDWORD(a3);
  a5 = a3 >> 16;
  a4 = HIWORD(v18);
  a6 = v18;
  v9 = HIDWORD(v18);
  LODWORD(v127[0]) = a6;
  WORD2(v127[0]) = v37;
  HIWORD(v127[0]) = a4;
  v127[1] = a3;
  v126 = HIWORD(a3);
  v128 = v8;
  v43 = _So9NSDecimala__length_getter(v127);
  if (!v43)
  {
    goto LABEL_314;
  }

  v44 = v43 - 1;
  if (v43 == 1)
  {
    v50 = 0;
    v45 = 0;
    v47 = HIWORD(a3);
    v48 = v8;
LABEL_167:
    if (v45)
    {
      goto LABEL_57;
    }

    v80 = a4;
    v36 = v50 | WORD2(a6);
    goto LABEL_169;
  }

  v45 = 0;
  v46 = 0;
  v47 = HIWORD(a3);
  v48 = v8;
  while (1)
  {
    if (v44 + 1 > 4)
    {
      if (v44 + 1 > 6)
      {
        LOWORD(v49) = v8;
        if (v44 != 6)
        {
          v49 = v8 >> 16;
          if (v44 != 7)
          {
            break;
          }
        }
      }

      else
      {
        v49 = HIDWORD(a3);
        if (v44 != 4)
        {
          LOWORD(v49) = HIWORD(a3);
          if (v44 != 5)
          {
            break;
          }
        }
      }

      goto LABEL_74;
    }

    LOWORD(v49) = a4;
    if (v44 != 1)
    {
      LOWORD(v49) = a3;
      if (v44 != 2)
      {
        v49 = a3 >> 16;
        if (v44 != 3)
        {
          break;
        }
      }
    }

LABEL_74:
    if (v45)
    {
      goto LABEL_57;
    }

    v50 = (v49 | v46) << 16;
    v45 = HIWORD(v46) != 0;
    v46 = v50;
    if (!--v44)
    {
      goto LABEL_167;
    }
  }

  strcpy(v127, "Invalid index ");
  HIBYTE(v127[1]) = -18;
  v125 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v125);

  MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  LOWORD(v9) = v6;
  LOWORD(v15) = a1;
  v133 = *MEMORY[0x1E69E9840];
  v127[0] = 0;
  v16 = _stringshims_strtod_clocale(a2, v127);
  if (v127[0])
  {
    v17 = &a2[a3] == v127[0];
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v19 = v16;
    if (!_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs6UInt16V_SdTt1g5(v127, v16) || (BYTE2(v127[0]) & 1) != 0)
    {
      goto LABEL_57;
    }

    if (fabs(v19) < 9.00719925e15)
    {
      return LOWORD(v127[0]);
    }
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd) != MEMORY[0x1E69E6108])
  {
    specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a2, a3, 46, 0xE100000000000000, 1, v131);
    if ((v132 & 1) == 0)
    {
      a3 = v131[1];
      v8 = v131[2];
      v18 = v131[0];
      goto LABEL_56;
    }

LABEL_12:
    v20 = specialized BufferView.suffix(from:)(a6, a2, a3);
    v22 = &v20[v21];
    if (v15)
    {
      if (v21 < 1)
      {
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
        goto LABEL_312;
      }

      v23 = *v20;
      if (v23 == 45 || (v9 = v20, v23 == 43))
      {
        v9 = v20 + 1;
      }

      if (v22 < v9)
      {
        goto LABEL_311;
      }

      a6 = v9 - v20;
      if (v9 - v20 < 0)
      {
LABEL_312:
        __break(1u);
        goto LABEL_313;
      }

      a3 = v22 - v9;
      if (v22 - v9 < 0)
      {
LABEL_313:
        __break(1u);
LABEL_314:
        v80 = a4;
        v36 = 0;
        v47 = v126;
        v48 = v8;
LABEL_169:
        LODWORD(v127[0]) = a6;
        WORD2(v127[0]) = v9;
        v81 = v80;
        HIWORD(v127[0]) = v80;
        LOWORD(v127[1]) = a3;
        WORD1(v127[1]) = a5;
        WORD2(v127[1]) = v7;
        HIWORD(v127[1]) = v47;
        LOWORD(v128) = v48;
        v82 = v15;
        HIWORD(v128) = v15;
        v83 = v48;
        if ((_So9NSDecimala__exponent_getter(v127) & 0x80000000) != 0)
        {
          LODWORD(v127[0]) = a6;
          WORD2(v127[0]) = v9;
          HIWORD(v127[0]) = v81;
          LOWORD(v127[1]) = a3;
          WORD1(v127[1]) = a5;
          WORD2(v127[1]) = v7;
          HIWORD(v127[1]) = v126;
          LOWORD(v128) = v83;
          HIWORD(v128) = v82;
          v123 = _So9NSDecimala__exponent_getter(v127);
          if (v123 > 0)
          {
            goto LABEL_328;
          }

          if (v123)
          {
            if (!__CFADD__(v123, -v123 & ~(-v123 >> 31)))
            {
              goto LABEL_336;
            }

            do
            {
              v36 /= 0xAuLL;
            }

            while (!__CFADD__(v123++, 1));
          }

          goto LABEL_286;
        }

        LODWORD(v127[0]) = a6;
        WORD2(v127[0]) = v9;
        HIWORD(v127[0]) = v81;
        LOWORD(v127[1]) = a3;
        WORD1(v127[1]) = a5;
        WORD2(v127[1]) = v7;
        HIWORD(v127[1]) = v126;
        LOWORD(v128) = v83;
        HIWORD(v128) = v82;
        v84 = _So9NSDecimala__exponent_getter(v127);
        if ((v84 & 0x80000000) == 0)
        {
          v85 = v84 + 1;
          while (--v85)
          {
            v86 = (v36 * 0xAuLL) >> 64;
            v36 *= 10;
            if (v86)
            {
              goto LABEL_57;
            }
          }

LABEL_286:
          if (!(v36 >> 16))
          {
            return v36;
          }

LABEL_57:
          v36 = static String._fromUTF8Repairing(_:)();
          v39 = v38;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v40 = v36;
          *(v40 + 8) = v39;
          *(v40 + 16) = 0u;
          *(v40 + 32) = 0u;
          v41 = 11;
          goto LABEL_58;
        }

        goto LABEL_318;
      }

      v15 = v21;
      v7 = v20;
      if (a3 >= 2)
      {
        v24 = 2;
      }

      else
      {
        v24 = v22 - v9;
      }

      if (_stringshims_strncasecmp_clocale(v9, "0x", v24))
      {
        if (v9 < v22)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = v22 - v9;
          do
          {
            if (a6 + v26 < 0)
            {
              goto LABEL_294;
            }

            v31 = v29-- < 1;
            if (v31)
            {
              goto LABEL_294;
            }

            LODWORD(v15) = v9[v26];
            if ((v15 - 58) > 0xF5u)
            {
              v30 = __OFADD__(v28++, 1);
              if (v30)
              {
                goto LABEL_296;
              }
            }

            else if (v9[v26] <= 0x2Du)
            {
              if (v15 != 43 && v15 != 45 || v28 || v27 != 2)
              {
LABEL_77:
                a5 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(&v9[v26], a4, a5);
                v52 = v51;
                a3 = v53;
                goto LABEL_78;
              }

              v28 = 0;
              v27 = 3;
            }

            else if (v15 == 101 || v15 == 69)
            {
              if (v27 != 1 && (v27 || v28 <= 0))
              {
                goto LABEL_77;
              }

              v28 = 0;
              v27 = 2;
            }

            else
            {
              if (v15 != 46)
              {
                goto LABEL_77;
              }

              if (v27)
              {
                v114 = &v9[v26];
                if (&v9[v26] >= a4)
                {
                  v115 = a4 + a5;
                  if (a4 + a5 >= v114)
                  {
                    if (v115 >= &v9[v26 + 1])
                    {
                      v115 = &v9[v26 + 1];
                    }

                    if (v115 <= a4)
                    {
                      v52 = 0;
                      a5 = 1;
                    }

                    else
                    {
                      v116 = a5 + a4;
                      a5 = 1;
                      v117 = a4;
                      do
                      {
                        v118 = 0;
                        v119 = 0;
                        v120 = v116 - v117;
                        while (1)
                        {
                          if ((v117 - a4 + v119) < 0 || (v120 + v118) < 1)
                          {
                            goto LABEL_308;
                          }

                          v121 = *(v117 + v119);
                          if (v121 == 10)
                          {
                            break;
                          }

                          if (v121 == 13)
                          {
                            v122 = v117 + v119;
                            if (v114 < v117 + v119 + 1)
                            {
                              goto LABEL_274;
                            }

                            if (((v117 - a4 + v119 + 1) & 0x8000000000000000) == 0 && (~v119 + v120) >= 1)
                            {
                              if (*(v122 + 1) == 10)
                              {
                                v122 = v117 + v119 + 1;
                              }

LABEL_274:
                              v30 = __OFADD__(a5++, 1);
                              if (!v30)
                              {
                                v117 = v122 + 1;
                                goto LABEL_278;
                              }

LABEL_338:
                              __break(1u);
LABEL_339:
                              __break(1u);
LABEL_340:
                              __break(1u);
                            }

                            __break(1u);
                          }

                          v52 = v119 + 1;
                          if (__OFADD__(v119, 1))
                          {
                            goto LABEL_309;
                          }

                          ++v119;
                          --v118;
                          if (v117 + v119 >= v115)
                          {
                            goto LABEL_290;
                          }
                        }

                        v30 = __OFADD__(a5++, 1);
                        if (v30)
                        {
                          goto LABEL_337;
                        }

                        v117 += v119 + 1;
LABEL_278:
                        ;
                      }

                      while (v117 < v115);
                      v52 = 0;
                    }

LABEL_290:
                    a3 = &v9[v26 - a4];
                    LOBYTE(v15) = 46;
LABEL_78:
                    a6 = 0xE900000000000072;
                    v7 = 0x65626D756E206E69;
LABEL_79:
                    v36 = v15;
                    lazy protocol witness table accessor for type JSONError and conformance JSONError();
                    swift_allocError();
                    *v40 = v7;
                    *(v40 + 8) = a6;
                    *(v40 + 16) = v15;
                    *(v40 + 24) = a5;
                    *(v40 + 32) = v52;
                    *(v40 + 40) = a3;
                    v41 = 1;
LABEL_58:
                    *(v40 + 48) = v41;
                    swift_willThrow();
                    return v36;
                  }
                }

LABEL_327:
                __break(1u);
LABEL_328:
                __break(1u);
LABEL_329:
                __break(1u);
LABEL_330:
                __break(1u);
LABEL_331:
                __break(1u);
LABEL_332:
                __break(1u);
LABEL_333:
                __break(1u);
LABEL_334:
                __break(1u);
LABEL_335:
                __break(1u);
LABEL_336:
                __break(1u);
LABEL_337:
                __break(1u);
                goto LABEL_338;
              }

              v28 = 0;
              v27 = 1;
            }

            ++v26;
          }

          while (a3 != v26);
        }

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
        goto LABEL_310;
      }

      v35 = v9 + 2;
      v54 = v22 - (v9 + 2);
      if (v54 >= 1 && v35 < v22)
      {
        v54 = &v35[-v7];
        if ((&v35[-v7] & 0x8000000000000000) == 0)
        {
          a3 = &v9[-a4 + 2];
          v54 = v15 + v7 - v9 - 3;
          v59 = a6 + 3;
          v25 = 1;
          while (1)
          {
            v60 = v59;
            LOWORD(v15) = *v35;
            if ((v15 - 58) <= 0xF5u && (*v35 - 65 > 0x25 || ((1 << (v15 - 65)) & 0x3F0000003FLL) == 0))
            {
              break;
            }

            v31 = v54-- < 1;
            if (!v31 && ++v35 < v22)
            {
              ++a3;
              ++v59;
              if ((v60 & 0x8000000000000000) == 0)
              {
                continue;
              }
            }

            goto LABEL_115;
          }

          if (v35 >= a4)
          {
            v87 = a4 + a5;
            if (a4 + a5 >= v35)
            {
              if (v87 >= (v35 + 1))
              {
                v87 = (v35 + 1);
              }

              if (v87 <= a4)
              {
                v52 = 0;
                a6 = 0xED00007265626D75;
                v7 = 0x6E20786568206E69;
                a5 = 1;
                goto LABEL_79;
              }

              v88 = a5 + a4;
              v89 = -a4;
              a5 = 1;
              a6 = 0xED00007265626D75;
              v7 = 0x6E20786568206E69;
              while (1)
              {
                v90 = 0;
                v91 = 0;
                v92 = v88 - a4;
                while (1)
                {
                  if ((v89 + a4 + v91) < 0 || (v92 + v90) < 1)
                  {
                    goto LABEL_302;
                  }

                  v93 = *(a4 + v91);
                  if (v93 == 10)
                  {
                    v30 = __OFADD__(a5++, 1);
                    if (!v30)
                    {
                      a4 += v91 + 1;
                      goto LABEL_198;
                    }

                    goto LABEL_325;
                  }

                  if (v93 == 13)
                  {
                    break;
                  }

                  v52 = v91 + 1;
                  if (__OFADD__(v91, 1))
                  {
                    goto LABEL_303;
                  }

                  ++v91;
                  --v90;
                  if (a4 + v91 >= v87)
                  {
                    goto LABEL_79;
                  }
                }

                v94 = a4 + v91;
                if (v35 >= a4 + v91 + 1)
                {
                  if (((v89 + a4 + v91 + 1) & 0x8000000000000000) != 0 || (~v91 + v92) < 1)
                  {
                    goto LABEL_335;
                  }

                  if (*(v94 + 1) == 10)
                  {
                    v94 = a4 + v91 + 1;
                  }
                }

                v30 = __OFADD__(a5++, 1);
                if (v30)
                {
                  goto LABEL_326;
                }

                a4 = v94 + 1;
LABEL_198:
                if (a4 >= v87)
                {
                  v52 = 0;
                  goto LABEL_79;
                }
              }
            }
          }

          goto LABEL_317;
        }
      }

LABEL_115:
      __break(1u);
LABEL_116:
      v62 = &v35[v54];
      if (&v35[v54] >= a4)
      {
        v63 = a4 + a5;
        if (a4 + a5 >= v62)
        {
          if (v63 >= &v35[v54 + 1])
          {
            v63 = &v35[v54 + 1];
          }

          if (v63 > a4)
          {
            v64 = a5 + a4;
            a5 = 1;
            v65 = a4;
            while (1)
            {
              while (1)
              {
                v66 = 0;
                v67 = 0;
                v68 = v64 - v65;
LABEL_123:
                if ((v65 - a4 + v67) < 0 || (v68 + v66) < 1)
                {
                  goto LABEL_298;
                }

                v69 = *(v65 + v67);
                if (v69 != 10)
                {
                  break;
                }

                v30 = __OFADD__(a5++, 1);
                if (v30)
                {
                  goto LABEL_321;
                }

                v65 += v67 + 1;
                if (v65 >= v63)
                {
                  goto LABEL_224;
                }
              }

              if (v69 != 13)
              {
                a3 = v67 + 1;
                if (__OFADD__(v67, 1))
                {
                  goto LABEL_300;
                }

                ++v67;
                --v66;
                if (v65 + v67 >= v63)
                {
                  goto LABEL_227;
                }

                goto LABEL_123;
              }

              v70 = v65 + v67;
              if (v62 >= v65 + v67 + 1)
              {
                if (((v65 - a4 + v67 + 1) & 0x8000000000000000) != 0 || (~v67 + v68) < 1)
                {
                  goto LABEL_332;
                }

                if (*(v70 + 1) == 10)
                {
                  v70 = v65 + v67 + 1;
                }
              }

              v30 = __OFADD__(a5++, 1);
              if (v30)
              {
                goto LABEL_323;
              }

              v65 = v70 + 1;
              if (v70 + 1 >= v63)
              {
                goto LABEL_224;
              }
            }
          }

LABEL_225:
          a3 = 0;
LABEL_226:
          a5 = 1;
          goto LABEL_227;
        }
      }

      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
      goto LABEL_320;
    }

    if (v21 >= 1)
    {
      v32 = 0;
      v33 = v21;
      v34 = v20;
      v35 = v20;
      while ((v32 & 0x8000000000000000) == 0)
      {
        v31 = v33-- < 1;
        if (v31)
        {
          break;
        }

        if (*v35 - 58 >= 0xFFFFFFF6)
        {
          ++v35;
          ++v34;
          ++v32;
          if (v35 < v22)
          {
            continue;
          }
        }

        goto LABEL_81;
      }

      goto LABEL_297;
    }

    v34 = v20;
    v35 = v20;
LABEL_81:
    if (v35 >= v22)
    {
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
      goto LABEL_293;
    }

    v54 = 0;
    v55 = 0;
    v56 = v34 - v20;
    v57 = (&v20[v21] - v34);
    v58 = &v20[v21] - v35;
    while (1)
    {
      if (v35 - v20 + v54 < 0)
      {
        goto LABEL_292;
      }

      v31 = v58-- < 1;
      if (v31)
      {
        goto LABEL_292;
      }

      v25 = v35[v54];
      if (v25 - 58 >= 0xFFFFFFF6)
      {
        v30 = __OFADD__(v56++, 1);
        if (v30)
        {
          goto LABEL_295;
        }
      }

      else if (v35[v54] <= 0x2Du)
      {
        if (v25 != 43 && v25 != 45)
        {
LABEL_200:
          v95 = &v35[v54];
          if (&v35[v54] < a4)
          {
            goto LABEL_319;
          }

          v96 = a4 + a5;
          if (a4 + a5 < v95)
          {
            goto LABEL_319;
          }

          if (v96 >= &v35[v54 + 1])
          {
            v96 = &v35[v54 + 1];
          }

          if (v96 <= a4)
          {
            goto LABEL_225;
          }

          v97 = a5 + a4;
          a5 = 1;
          v98 = a4;
          while (1)
          {
LABEL_206:
            v99 = 0;
            v100 = 0;
            v101 = v97 - v98;
            while (1)
            {
              if ((v98 - a4 + v100) < 0 || (v101 + v99) < 1)
              {
                goto LABEL_304;
              }

              v102 = *(v98 + v100);
              if (v102 == 10)
              {
                v30 = __OFADD__(a5++, 1);
                if (v30)
                {
                  goto LABEL_329;
                }

                v98 += v100 + 1;
                if (v98 >= v96)
                {
                  goto LABEL_224;
                }

                goto LABEL_206;
              }

              if (v102 == 13)
              {
                break;
              }

              a3 = v100 + 1;
              if (__OFADD__(v100, 1))
              {
                goto LABEL_306;
              }

              ++v100;
              --v99;
              if (v98 + v100 >= v96)
              {
                goto LABEL_227;
              }
            }

            v103 = v98 + v100;
            if (v95 >= v98 + v100 + 1)
            {
              if (((v98 - a4 + v100 + 1) & 0x8000000000000000) != 0 || (~v100 + v101) < 1)
              {
                goto LABEL_339;
              }

              if (*(v103 + 1) == 10)
              {
                v103 = v98 + v100 + 1;
              }
            }

            v30 = __OFADD__(a5++, 1);
            if (v30)
            {
              goto LABEL_330;
            }

            v98 = v103 + 1;
            if (v103 + 1 >= v96)
            {
LABEL_224:
              a3 = 0;
LABEL_227:
              v36 = &v35[v54 - a4];
              v104 = v25;
              lazy protocol witness table accessor for type JSONError and conformance JSONError();
              swift_allocError();
              *v40 = xmmword_181237560;
              *(v40 + 16) = v104;
              *(v40 + 24) = a5;
              *(v40 + 32) = a3;
              *(v40 + 40) = v36;
              v41 = 1;
              goto LABEL_58;
            }
          }
        }

        if (v56 || v55 != 2)
        {
          v71 = &v35[v54];
          if (&v35[v54] >= a4)
          {
            v72 = a4 + a5;
            if (a4 + a5 >= v71)
            {
              if (v72 >= &v35[v54 + 1])
              {
                v72 = &v35[v54 + 1];
              }

              if (v72 <= a4)
              {
                goto LABEL_225;
              }

              v73 = a5 + a4;
              a5 = 1;
              v74 = a4;
              while (1)
              {
LABEL_147:
                v75 = 0;
                v76 = 0;
                v77 = v73 - v74;
                while (1)
                {
                  if ((v74 - a4 + v76) < 0 || (v77 + v75) < 1)
                  {
                    goto LABEL_299;
                  }

                  v78 = *(v74 + v76);
                  if (v78 == 10)
                  {
                    v30 = __OFADD__(a5++, 1);
                    if (v30)
                    {
                      goto LABEL_322;
                    }

                    v74 += v76 + 1;
                    if (v74 >= v72)
                    {
                      goto LABEL_224;
                    }

                    goto LABEL_147;
                  }

                  if (v78 == 13)
                  {
                    break;
                  }

                  a3 = v76 + 1;
                  if (__OFADD__(v76, 1))
                  {
                    goto LABEL_301;
                  }

                  ++v76;
                  --v75;
                  if (v74 + v76 >= v72)
                  {
                    goto LABEL_227;
                  }
                }

                v79 = v74 + v76;
                if (v71 >= v74 + v76 + 1)
                {
                  if (((v74 - a4 + v76 + 1) & 0x8000000000000000) != 0 || (~v76 + v77) < 1)
                  {
                    goto LABEL_333;
                  }

                  if (*(v79 + 1) == 10)
                  {
                    v79 = v74 + v76 + 1;
                  }
                }

                v30 = __OFADD__(a5++, 1);
                if (v30)
                {
                  goto LABEL_324;
                }

                v74 = v79 + 1;
                if (v79 + 1 >= v72)
                {
                  goto LABEL_224;
                }
              }
            }
          }

          goto LABEL_316;
        }

        v56 = 0;
        v55 = 3;
      }

      else if (v25 == 101 || v25 == 69)
      {
        if (v56 < 1 || v55 >= 2)
        {
          goto LABEL_116;
        }

        v56 = 0;
        v55 = 2;
      }

      else
      {
        if (v25 != 46)
        {
          goto LABEL_200;
        }

        if (v56 < 1 || v55)
        {
          v105 = &v35[v54];
          if (&v35[v54] >= a4 && a4 + a5 >= v105)
          {
            if (a4 + a5 >= &v35[v54 + 1])
            {
              v106 = &v35[v54 + 1];
            }

            else
            {
              v106 = a4 + a5;
            }

            if (v106 > a4)
            {
              v107 = a5 + a4;
              a5 = 1;
              v108 = a4;
              while (1)
              {
                v109 = 0;
                v110 = 0;
                v111 = v107 - v108;
                while (1)
                {
                  if ((v108 - a4 + v110) < 0 || (v111 + v109) < 1)
                  {
                    goto LABEL_305;
                  }

                  v112 = *(v108 + v110);
                  if (v112 == 10)
                  {
                    break;
                  }

                  if (v112 == 13)
                  {
                    v113 = v108 + v110;
                    if (v105 >= v108 + v110 + 1)
                    {
                      if (((v108 - a4 + v110 + 1) & 0x8000000000000000) != 0 || (~v110 + v111) < 1)
                      {
                        goto LABEL_340;
                      }

                      if (*(v113 + 1) == 10)
                      {
                        v113 = v108 + v110 + 1;
                      }
                    }

                    v30 = __OFADD__(a5++, 1);
                    if (v30)
                    {
                      goto LABEL_334;
                    }

                    a3 = 0;
                    v108 = v113 + 1;
                    goto LABEL_252;
                  }

                  a3 = v110 + 1;
                  if (__OFADD__(v110, 1))
                  {
                    goto LABEL_307;
                  }

                  ++v110;
                  --v109;
                  if (v108 + v110 >= v106)
                  {
                    v25 = 46;
                    goto LABEL_227;
                  }
                }

                v30 = __OFADD__(a5++, 1);
                if (v30)
                {
                  goto LABEL_331;
                }

                a3 = 0;
                v108 += v110 + 1;
LABEL_252:
                v25 = 46;
                if (v108 >= v106)
                {
                  goto LABEL_227;
                }
              }
            }

            a3 = 0;
            v25 = 46;
            goto LABEL_226;
          }

LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
LABEL_325:
          __break(1u);
LABEL_326:
          __break(1u);
          goto LABEL_327;
        }

        v56 = 0;
        v55 = 1;
      }

      if (v57 == ++v54)
      {
        goto LABEL_291;
      }
    }
  }

  specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a2, a3, 0x2EuLL, 0xE100000000000000, 1, v129);
  if (v130 == 1)
  {
    goto LABEL_12;
  }

  a3 = v129[1];
  v8 = v129[2];
  v18 = v129[0];
LABEL_56:
  v127[0] = v18;
  v37 = HIDWORD(v18);
  v127[1] = a3;
  v15 = v8 >> 16;
  v128 = v8;
  if (_So9NSDecimala__isNegative_getter(v127))
  {
    goto LABEL_57;
  }

  v7 = HIDWORD(a3);
  a5 = a3 >> 16;
  a4 = HIWORD(v18);
  a6 = v18;
  v9 = HIDWORD(v18);
  LODWORD(v127[0]) = a6;
  WORD2(v127[0]) = v37;
  HIWORD(v127[0]) = a4;
  v127[1] = a3;
  v126 = HIWORD(a3);
  v128 = v8;
  v43 = _So9NSDecimala__length_getter(v127);
  if (!v43)
  {
    goto LABEL_314;
  }

  v44 = v43 - 1;
  if (v43 == 1)
  {
    v50 = 0;
    v45 = 0;
    v47 = HIWORD(a3);
    v48 = v8;
LABEL_167:
    if (v45)
    {
      goto LABEL_57;
    }

    v80 = a4;
    v36 = v50 | WORD2(a6);
    goto LABEL_169;
  }

  v45 = 0;
  v46 = 0;
  v47 = HIWORD(a3);
  v48 = v8;
  while (1)
  {
    if (v44 + 1 > 4)
    {
      if (v44 + 1 > 6)
      {
        LOWORD(v49) = v8;
        if (v44 != 6)
        {
          v49 = v8 >> 16;
          if (v44 != 7)
          {
            break;
          }
        }
      }

      else
      {
        v49 = HIDWORD(a3);
        if (v44 != 4)
        {
          LOWORD(v49) = HIWORD(a3);
          if (v44 != 5)
          {
            break;
          }
        }
      }

      goto LABEL_74;
    }

    LOWORD(v49) = a4;
    if (v44 != 1)
    {
      LOWORD(v49) = a3;
      if (v44 != 2)
      {
        v49 = a3 >> 16;
        if (v44 != 3)
        {
          break;
        }
      }
    }

LABEL_74:
    if (v45)
    {
      goto LABEL_57;
    }

    v50 = (v49 | v46) << 16;
    v45 = HIWORD(v46) != 0;
    v46 = v50;
    if (!--v44)
    {
      goto LABEL_167;
    }
  }

  strcpy(v127, "Invalid index ");
  HIBYTE(v127[1]) = -18;
  v125 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v125);

  MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  LOWORD(v8) = v6;
  LOWORD(v14) = a1;
  v139 = *MEMORY[0x1E69E9840];
  v133[0] = 0;
  v15 = _stringshims_strtod_clocale(a2, v133);
  if (v133[0])
  {
    v16 = &a2[a3] == v133[0];
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v19 = v15;
    result = _ss6Int128V7exactlyABSgx_tcSBRzlufCSd_Tt0g5(v15);
    if (v21)
    {
      goto LABEL_107;
    }

    if (fabs(v19) < 9.00719925e15)
    {
      return result;
    }
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd) == MEMORY[0x1E69E6108])
  {
    specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a2, a3, 0x2EuLL, 0xE100000000000000, 1, v135);
    if (v136 != 1)
    {
      v14 = v135[1];
      v17 = v135[2];
      v18 = v135[0];
      goto LABEL_54;
    }

LABEL_12:
    v22 = specialized BufferView.suffix(from:)(a6, a2, a3);
    v24 = &v22[v23];
    if ((v14 & 1) == 0)
    {
      if (v23 >= 1)
      {
        v36 = 0;
        v37 = v23;
        v38 = v22;
        v39 = v22;
        while ((v36 & 0x8000000000000000) == 0)
        {
          v35 = v37-- < 1;
          if (v35)
          {
            break;
          }

          if (*v39 - 58 >= 0xFFFFFFF6)
          {
            ++v39;
            ++v38;
            ++v36;
            if (v39 < v24)
            {
              continue;
            }
          }

          goto LABEL_78;
        }

        goto LABEL_296;
      }

      v38 = v22;
      v39 = v22;
LABEL_78:
      if (v39 >= v24)
      {
LABEL_290:
        __break(1u);
LABEL_291:
        __break(1u);
        goto LABEL_292;
      }

      v52 = 0;
      v53 = 0;
      v54 = v38 - v22;
      v55 = (&v22[v23] - v38);
      v56 = &v22[v23] - v39;
      while (1)
      {
        if (v39 - v22 + v52 < 0)
        {
          goto LABEL_291;
        }

        v35 = v56-- < 1;
        if (v35)
        {
          goto LABEL_291;
        }

        v29 = v39[v52];
        if (v29 - 58 >= 0xFFFFFFF6)
        {
          v34 = __OFADD__(v54++, 1);
          if (v34)
          {
            goto LABEL_294;
          }
        }

        else if (v39[v52] <= 0x2Du)
        {
          if (v29 != 43 && v29 != 45)
          {
LABEL_196:
            v98 = &v39[v52];
            if (&v39[v52] < a4)
            {
              goto LABEL_318;
            }

            v99 = a4 + a5;
            if (a4 + a5 < v98)
            {
              goto LABEL_318;
            }

            if (v99 >= &v39[v52 + 1])
            {
              v99 = &v39[v52 + 1];
            }

            if (v99 <= a4)
            {
              goto LABEL_221;
            }

            v100 = a5 + a4;
            a5 = 1;
            v101 = a4;
            while (1)
            {
LABEL_202:
              v102 = 0;
              v103 = 0;
              v104 = v100 - v101;
              while (1)
              {
                if ((v101 - a4 + v103) < 0 || (v104 + v102) < 1)
                {
                  goto LABEL_303;
                }

                v105 = *(v101 + v103);
                if (v105 == 10)
                {
                  v34 = __OFADD__(a5++, 1);
                  if (v34)
                  {
                    goto LABEL_329;
                  }

                  v101 += v103 + 1;
                  if (v101 >= v99)
                  {
                    goto LABEL_220;
                  }

                  goto LABEL_202;
                }

                if (v105 == 13)
                {
                  break;
                }

                a3 = v103 + 1;
                if (__OFADD__(v103, 1))
                {
                  goto LABEL_305;
                }

                ++v103;
                --v102;
                if (v101 + v103 >= v99)
                {
                  goto LABEL_223;
                }
              }

              v106 = v101 + v103;
              if (v98 >= v101 + v103 + 1)
              {
                if (((v101 - a4 + v103 + 1) & 0x8000000000000000) != 0 || (~v103 + v104) < 1)
                {
                  goto LABEL_338;
                }

                if (*(v106 + 1) == 10)
                {
                  v106 = v101 + v103 + 1;
                }
              }

              v34 = __OFADD__(a5++, 1);
              if (v34)
              {
                goto LABEL_330;
              }

              v101 = v106 + 1;
              if (v106 + 1 >= v99)
              {
LABEL_220:
                a3 = 0;
LABEL_223:
                v107 = &v39[v52 - a4];
                v108 = v29;
                lazy protocol witness table accessor for type JSONError and conformance JSONError();
                swift_allocError();
                *v51 = xmmword_181237560;
                *(v51 + 16) = v108;
                *(v51 + 24) = a5;
                *(v51 + 32) = a3;
                *(v51 + 40) = v107;
                goto LABEL_224;
              }
            }
          }

          if (v54 || v53 != 2)
          {
            v81 = &v39[v52];
            if (&v39[v52] >= a4)
            {
              v82 = a4 + a5;
              if (a4 + a5 >= v81)
              {
                if (v82 >= &v39[v52 + 1])
                {
                  v82 = &v39[v52 + 1];
                }

                if (v82 <= a4)
                {
                  goto LABEL_221;
                }

                v83 = a5 + a4;
                a5 = 1;
                v84 = a4;
                while (1)
                {
LABEL_152:
                  v85 = 0;
                  v86 = 0;
                  v87 = v83 - v84;
                  while (1)
                  {
                    if ((v84 - a4 + v86) < 0 || (v87 + v85) < 1)
                    {
                      goto LABEL_298;
                    }

                    v88 = *(v84 + v86);
                    if (v88 == 10)
                    {
                      v34 = __OFADD__(a5++, 1);
                      if (v34)
                      {
                        goto LABEL_321;
                      }

                      v84 += v86 + 1;
                      if (v84 >= v82)
                      {
                        goto LABEL_220;
                      }

                      goto LABEL_152;
                    }

                    if (v88 == 13)
                    {
                      break;
                    }

                    a3 = v86 + 1;
                    if (__OFADD__(v86, 1))
                    {
                      goto LABEL_300;
                    }

                    ++v86;
                    --v85;
                    if (v84 + v86 >= v82)
                    {
                      goto LABEL_223;
                    }
                  }

                  v89 = v84 + v86;
                  if (v81 >= v84 + v86 + 1)
                  {
                    if (((v84 - a4 + v86 + 1) & 0x8000000000000000) != 0 || (~v86 + v87) < 1)
                    {
                      goto LABEL_333;
                    }

                    if (*(v89 + 1) == 10)
                    {
                      v89 = v84 + v86 + 1;
                    }
                  }

                  v34 = __OFADD__(a5++, 1);
                  if (v34)
                  {
                    goto LABEL_323;
                  }

                  v84 = v89 + 1;
                  if (v89 + 1 >= v82)
                  {
                    goto LABEL_220;
                  }
                }
              }
            }

LABEL_315:
            __break(1u);
LABEL_316:
            __break(1u);
LABEL_317:
            __break(1u);
LABEL_318:
            __break(1u);
            goto LABEL_319;
          }

          v54 = 0;
          v53 = 3;
        }

        else if (v29 == 101 || v29 == 69)
        {
          if (v54 < 1 || v53 >= 2)
          {
            goto LABEL_121;
          }

          v54 = 0;
          v53 = 2;
        }

        else
        {
          if (v29 != 46)
          {
            goto LABEL_196;
          }

          if (v54 < 1 || v53)
          {
            v109 = &v39[v52];
            if (&v39[v52] >= a4 && a4 + a5 >= v109)
            {
              if (a4 + a5 >= &v39[v52 + 1])
              {
                v110 = &v39[v52 + 1];
              }

              else
              {
                v110 = a4 + a5;
              }

              if (v110 > a4)
              {
                v111 = a5 + a4;
                a5 = 1;
                v112 = a4;
                while (1)
                {
                  v113 = 0;
                  v114 = 0;
                  v115 = v111 - v112;
                  while (1)
                  {
                    if ((v112 - a4 + v114) < 0 || (v115 + v113) < 1)
                    {
                      goto LABEL_304;
                    }

                    v116 = *(v112 + v114);
                    if (v116 == 10)
                    {
                      break;
                    }

                    if (v116 == 13)
                    {
                      v117 = v112 + v114;
                      if (v109 >= v112 + v114 + 1)
                      {
                        if (((v112 - a4 + v114 + 1) & 0x8000000000000000) != 0 || (~v114 + v115) < 1)
                        {
                          goto LABEL_339;
                        }

                        if (*(v117 + 1) == 10)
                        {
                          v117 = v112 + v114 + 1;
                        }
                      }

                      v34 = __OFADD__(a5++, 1);
                      if (v34)
                      {
                        goto LABEL_334;
                      }

                      a3 = 0;
                      v112 = v117 + 1;
                      goto LABEL_250;
                    }

                    a3 = v114 + 1;
                    if (__OFADD__(v114, 1))
                    {
                      goto LABEL_306;
                    }

                    ++v114;
                    --v113;
                    if (v112 + v114 >= v110)
                    {
                      v29 = 46;
                      goto LABEL_223;
                    }
                  }

                  v34 = __OFADD__(a5++, 1);
                  if (v34)
                  {
                    goto LABEL_331;
                  }

                  a3 = 0;
                  v112 += v114 + 1;
LABEL_250:
                  v29 = 46;
                  if (v112 >= v110)
                  {
                    goto LABEL_223;
                  }
                }
              }

              a3 = 0;
              v29 = 46;
              goto LABEL_222;
            }

LABEL_319:
            __break(1u);
LABEL_320:
            __break(1u);
LABEL_321:
            __break(1u);
LABEL_322:
            __break(1u);
LABEL_323:
            __break(1u);
LABEL_324:
            __break(1u);
LABEL_325:
            __break(1u);
LABEL_326:
            __break(1u);
            goto LABEL_327;
          }

          v54 = 0;
          v53 = 1;
        }

        if (v55 == ++v52)
        {
          goto LABEL_290;
        }
      }
    }

    if (v23 < 1)
    {
      __break(1u);
    }

    else
    {
      v25 = *v22;
      if (v25 == 45 || (v8 = v22, v25 == 43))
      {
        v8 = v22 + 1;
      }

      if (v24 >= v8)
      {
        v26 = v8 - v22;
        if (v8 - v22 >= 0)
        {
          a3 = v24 - v8;
          if (v24 - v8 >= 0)
          {
            v14 = v23;
            v27 = v22;
            if (a3 >= 2)
            {
              v28 = 2;
            }

            else
            {
              v28 = v24 - v8;
            }

            if (_stringshims_strncasecmp_clocale(v8, "0x", v28))
            {
              if (v8 < v24)
              {
                v30 = 0;
                v31 = 0;
                v32 = 0;
                v33 = v24 - v8;
                do
                {
                  if (v26 + v30 < 0)
                  {
                    goto LABEL_293;
                  }

                  v35 = v33-- < 1;
                  if (v35)
                  {
                    goto LABEL_293;
                  }

                  LODWORD(v14) = v8[v30];
                  if ((v14 - 58) > 0xF5u)
                  {
                    v34 = __OFADD__(v32++, 1);
                    if (v34)
                    {
                      goto LABEL_295;
                    }
                  }

                  else if (v8[v30] <= 0x2Du)
                  {
                    if (v14 != 43 && v14 != 45 || v32 || v31 != 2)
                    {
LABEL_74:
                      a5 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(&v8[v30], a4, a5);
                      v24 = v47;
                      a3 = v48;
                      goto LABEL_75;
                    }

                    v32 = 0;
                    v31 = 3;
                  }

                  else if (v14 == 101 || v14 == 69)
                  {
                    if (v31 != 1 && (v31 || v32 <= 0))
                    {
                      goto LABEL_74;
                    }

                    v32 = 0;
                    v31 = 2;
                  }

                  else
                  {
                    if (v14 != 46)
                    {
                      goto LABEL_74;
                    }

                    if (v31)
                    {
                      v120 = &v8[v30];
                      if (&v8[v30] >= a4)
                      {
                        v121 = a4 + a5;
                        if (a4 + a5 >= v120)
                        {
                          if (v121 >= &v8[v30 + 1])
                          {
                            v121 = &v8[v30 + 1];
                          }

                          if (v121 <= a4)
                          {
                            v24 = 0;
                            a5 = 1;
                          }

                          else
                          {
                            v122 = a5 + a4;
                            a5 = 1;
                            v123 = a4;
                            do
                            {
                              v124 = 0;
                              v125 = 0;
                              v126 = v122 - v123;
                              while (1)
                              {
                                if ((v123 - a4 + v125) < 0 || (v126 + v124) < 1)
                                {
                                  goto LABEL_307;
                                }

                                v127 = *(v123 + v125);
                                if (v127 == 10)
                                {
                                  break;
                                }

                                if (v127 == 13)
                                {
                                  v128 = v123 + v125;
                                  if (v120 < v123 + v125 + 1)
                                  {
                                    goto LABEL_281;
                                  }

                                  if (((v123 - a4 + v125 + 1) & 0x8000000000000000) == 0 && (~v125 + v126) >= 1)
                                  {
                                    if (*(v128 + 1) == 10)
                                    {
                                      v128 = v123 + v125 + 1;
                                    }

LABEL_281:
                                    v34 = __OFADD__(a5++, 1);
                                    if (!v34)
                                    {
                                      v123 = v128 + 1;
                                      goto LABEL_285;
                                    }

LABEL_337:
                                    __break(1u);
LABEL_338:
                                    __break(1u);
LABEL_339:
                                    __break(1u);
                                  }

                                  __break(1u);
                                }

                                v24 = (v125 + 1);
                                if (__OFADD__(v125, 1))
                                {
                                  goto LABEL_308;
                                }

                                ++v125;
                                --v124;
                                if (v123 + v125 >= v121)
                                {
                                  goto LABEL_289;
                                }
                              }

                              v34 = __OFADD__(a5++, 1);
                              if (v34)
                              {
                                goto LABEL_336;
                              }

                              v123 += v125 + 1;
LABEL_285:
                              ;
                            }

                            while (v123 < v121);
                            v24 = 0;
                          }

LABEL_289:
                          a3 = &v8[v30 - a4];
                          LOBYTE(v14) = 46;
LABEL_75:
                          v49 = 0xE900000000000072;
                          v50 = 0x65626D756E206E69;
LABEL_76:
                          lazy protocol witness table accessor for type JSONError and conformance JSONError();
                          swift_allocError();
                          *v51 = v50;
                          *(v51 + 8) = v49;
                          *(v51 + 16) = v14;
                          *(v51 + 24) = a5;
                          *(v51 + 32) = v24;
                          *(v51 + 40) = a3;
LABEL_224:
                          v68 = 1;
LABEL_225:
                          *(v51 + 48) = v68;
                          return swift_willThrow();
                        }
                      }

LABEL_327:
                      __break(1u);
LABEL_328:
                      __break(1u);
LABEL_329:
                      __break(1u);
LABEL_330:
                      __break(1u);
LABEL_331:
                      __break(1u);
LABEL_332:
                      __break(1u);
LABEL_333:
                      __break(1u);
LABEL_334:
                      __break(1u);
LABEL_335:
                      __break(1u);
LABEL_336:
                      __break(1u);
                      goto LABEL_337;
                    }

                    v32 = 0;
                    v31 = 1;
                  }

                  ++v30;
                }

                while (a3 != v30);
              }

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
              LOWORD(v57) = v24;
              v59 = 0;
              v44 = v130;
              v58 = v131;
              goto LABEL_102;
            }

            v39 = v8 + 2;
            v52 = v24 - (v8 + 2);
            if (v52 >= 1 && v39 < v24)
            {
              v52 = v39 - v27;
              if (((v39 - v27) & 0x8000000000000000) == 0)
              {
                a3 = &v8[-a4 + 2];
                v52 = &v27[v14] - v8 - 3;
                v69 = v26 + 3;
                v29 = 1;
                while (1)
                {
                  v70 = v69;
                  LOWORD(v14) = *v39;
                  if ((v14 - 58) <= 0xF5u && (*v39 - 65 > 0x25 || ((1 << (v14 - 65)) & 0x3F0000003FLL) == 0))
                  {
                    break;
                  }

                  v35 = v52-- < 1;
                  if (!v35 && ++v39 < v24)
                  {
                    ++a3;
                    ++v69;
                    if ((v70 & 0x8000000000000000) == 0)
                    {
                      continue;
                    }
                  }

                  goto LABEL_120;
                }

                if (v39 >= a4)
                {
                  v90 = a4 + a5;
                  if (a4 + a5 >= v39)
                  {
                    if (v90 >= (v39 + 1))
                    {
                      v90 = (v39 + 1);
                    }

                    if (v90 <= a4)
                    {
                      v24 = 0;
                      v49 = 0xED00007265626D75;
                      v50 = 0x6E20786568206E69;
                      a5 = 1;
                      goto LABEL_76;
                    }

                    v91 = a5 + a4;
                    v92 = -a4;
                    a5 = 1;
                    v49 = 0xED00007265626D75;
                    v50 = 0x6E20786568206E69;
                    while (1)
                    {
                      v93 = 0;
                      v94 = 0;
                      v95 = v91 - a4;
                      while (1)
                      {
                        if ((v92 + a4 + v94) < 0 || (v95 + v93) < 1)
                        {
                          goto LABEL_301;
                        }

                        v96 = *(a4 + v94);
                        if (v96 == 10)
                        {
                          v34 = __OFADD__(a5++, 1);
                          if (!v34)
                          {
                            a4 += v94 + 1;
                            goto LABEL_194;
                          }

                          goto LABEL_325;
                        }

                        if (v96 == 13)
                        {
                          break;
                        }

                        v24 = (v94 + 1);
                        if (__OFADD__(v94, 1))
                        {
                          goto LABEL_302;
                        }

                        ++v94;
                        --v93;
                        if (a4 + v94 >= v90)
                        {
                          goto LABEL_76;
                        }
                      }

                      v97 = a4 + v94;
                      if (v39 >= a4 + v94 + 1)
                      {
                        if (((v92 + a4 + v94 + 1) & 0x8000000000000000) != 0 || (~v94 + v95) < 1)
                        {
                          goto LABEL_335;
                        }

                        if (*(v97 + 1) == 10)
                        {
                          v97 = a4 + v94 + 1;
                        }
                      }

                      v34 = __OFADD__(a5++, 1);
                      if (v34)
                      {
                        goto LABEL_326;
                      }

                      a4 = v97 + 1;
LABEL_194:
                      if (a4 >= v90)
                      {
                        v24 = 0;
                        goto LABEL_76;
                      }
                    }
                  }
                }

                goto LABEL_316;
              }
            }

LABEL_120:
            __break(1u);
LABEL_121:
            v72 = &v39[v52];
            if (&v39[v52] >= a4)
            {
              v73 = a4 + a5;
              if (a4 + a5 >= v72)
              {
                if (v73 >= &v39[v52 + 1])
                {
                  v73 = &v39[v52 + 1];
                }

                if (v73 > a4)
                {
                  v74 = a5 + a4;
                  a5 = 1;
                  v75 = a4;
                  while (1)
                  {
                    while (1)
                    {
                      v76 = 0;
                      v77 = 0;
                      v78 = v74 - v75;
LABEL_128:
                      if ((v75 - a4 + v77) < 0 || (v78 + v76) < 1)
                      {
                        goto LABEL_297;
                      }

                      v79 = *(v75 + v77);
                      if (v79 != 10)
                      {
                        break;
                      }

                      v34 = __OFADD__(a5++, 1);
                      if (v34)
                      {
                        goto LABEL_320;
                      }

                      v75 += v77 + 1;
                      if (v75 >= v73)
                      {
                        goto LABEL_220;
                      }
                    }

                    if (v79 != 13)
                    {
                      a3 = v77 + 1;
                      if (__OFADD__(v77, 1))
                      {
                        goto LABEL_299;
                      }

                      ++v77;
                      --v76;
                      if (v75 + v77 >= v73)
                      {
                        goto LABEL_223;
                      }

                      goto LABEL_128;
                    }

                    v80 = v75 + v77;
                    if (v72 >= v75 + v77 + 1)
                    {
                      if (((v75 - a4 + v77 + 1) & 0x8000000000000000) != 0 || (~v77 + v78) < 1)
                      {
                        goto LABEL_332;
                      }

                      if (*(v80 + 1) == 10)
                      {
                        v80 = v75 + v77 + 1;
                      }
                    }

                    v34 = __OFADD__(a5++, 1);
                    if (v34)
                    {
                      goto LABEL_322;
                    }

                    v75 = v80 + 1;
                    if (v80 + 1 >= v73)
                    {
                      goto LABEL_220;
                    }
                  }
                }

LABEL_221:
                a3 = 0;
LABEL_222:
                a5 = 1;
                goto LABEL_223;
              }
            }

            goto LABEL_314;
          }

LABEL_313:
          __break(1u);
LABEL_314:
          __break(1u);
          goto LABEL_315;
        }

LABEL_312:
        __break(1u);
        goto LABEL_313;
      }
    }

    __break(1u);
    goto LABEL_312;
  }

  specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a2, a3, 46, 0xE100000000000000, 1, v137);
  if (v138)
  {
    goto LABEL_12;
  }

  v14 = v137[1];
  v17 = v137[2];
  v18 = v137[0];
LABEL_54:
  v133[0] = v18;
  v24 = (v18 >> 32);
  v7 = v18 >> 48;
  v133[1] = v14;
  a4 = HIDWORD(v14);
  a3 = v17 >> 16;
  v134 = v17;
  isNegative_getter = _So9NSDecimala__isNegative_getter(v133);
  v131 = v18;
  v133[0] = v18;
  v133[1] = v14;
  v134 = v17;
  v8 = (v14 >> 16);
  LOWORD(a5) = v17;
  if (!_So9NSDecimala__length_getter(v133) && isNegative_getter)
  {
LABEL_107:
    v65 = static String._fromUTF8Repairing(_:)();
    v67 = v66;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v51 = v65;
    *(v51 + 8) = v67;
    *(v51 + 16) = 0u;
    *(v51 + 32) = 0u;
    v68 = 11;
    goto LABEL_225;
  }

  v133[0] = v18;
  v133[1] = v14;
  v130 = HIWORD(v14);
  v134 = v17;
  v40 = _So9NSDecimala__length_getter(v133);
  if (!v40)
  {
    goto LABEL_309;
  }

  v41 = v40 - 1;
  if (v40 == 1)
  {
    v46 = 0;
    v44 = HIWORD(v14);
    goto LABEL_101;
  }

  v42 = 0;
  v43 = 0;
  v44 = HIWORD(v14);
  do
  {
    if (v41 + 1 <= 4)
    {
      v45 = v18 >> 48;
      if (v41 != 1)
      {
        LOWORD(v45) = v14;
        if (v41 != 2)
        {
          v45 = v14 >> 16;
          if (v41 != 3)
          {
LABEL_341:
            strcpy(v133, "Invalid index ");
            HIBYTE(v133[1]) = -18;
            v129 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1865CB0E0](v129);

            MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }
        }
      }
    }

    else if (v41 + 1 > 6)
    {
      LOWORD(v45) = v17;
      if (v41 != 6)
      {
        v45 = v17 >> 16;
        if (v41 != 7)
        {
          goto LABEL_341;
        }
      }
    }

    else
    {
      v45 = HIDWORD(v14);
      if (v41 != 4)
      {
        LOWORD(v45) = HIWORD(v14);
        if (v41 != 5)
        {
          goto LABEL_341;
        }
      }
    }

    if (v42)
    {
      goto LABEL_107;
    }

    v46 = (v45 | v43) << 16;
    v42 = HIWORD(v43) != 0;
    v43 = v46;
    --v41;
  }

  while (v41);
  if (v42)
  {
    goto LABEL_107;
  }

LABEL_101:
  v57 = v18 >> 32;
  v58 = v18;
  v59 = v46 | WORD2(v18);
LABEL_102:
  LODWORD(v133[0]) = v58;
  v60 = v57;
  WORD2(v133[0]) = v57;
  HIWORD(v133[0]) = v7;
  LOWORD(v133[1]) = v14;
  WORD1(v133[1]) = v8;
  WORD2(v133[1]) = a4;
  HIWORD(v133[1]) = v44;
  LOWORD(v134) = a5;
  HIWORD(v134) = a3;
  v61 = v58;
  if ((_So9NSDecimala__exponent_getter(v133) & 0x80000000) != 0)
  {
    LODWORD(v133[0]) = v61;
    WORD2(v133[0]) = v60;
    HIWORD(v133[0]) = v7;
    LOWORD(v133[1]) = v14;
    WORD1(v133[1]) = v8;
    WORD2(v133[1]) = a4;
    HIWORD(v133[1]) = v130;
    LOWORD(v134) = a5;
    HIWORD(v134) = a3;
    v118 = _So9NSDecimala__exponent_getter(v133);
    if (v118 <= 0)
    {
      if (!v118)
      {
        goto LABEL_259;
      }

      if (__CFADD__(v118, -v118 & ~(-v118 >> 31)))
      {
        do
        {
          v59 /= 0xAuLL;
        }

        while (!__CFADD__(v118++, 1));
        goto LABEL_259;
      }

      goto LABEL_328;
    }

    goto LABEL_324;
  }

  LODWORD(v133[0]) = v61;
  WORD2(v133[0]) = v60;
  HIWORD(v133[0]) = v7;
  LOWORD(v133[1]) = v14;
  WORD1(v133[1]) = v8;
  WORD2(v133[1]) = a4;
  HIWORD(v133[1]) = v130;
  LOWORD(v134) = a5;
  HIWORD(v134) = a3;
  v62 = _So9NSDecimala__exponent_getter(v133);
  if (v62 < 0)
  {
    goto LABEL_317;
  }

  v63 = v62 + 1;
  while (--v63)
  {
    v64 = (v59 * 0xAuLL) >> 64;
    v59 *= 10;
    if (v64)
    {
      goto LABEL_107;
    }
  }

LABEL_259:
  if (isNegative_getter)
  {
    return -v59;
  }

  else
  {
    return v59;
  }
}

{
  LOWORD(v9) = v6;
  LOWORD(v15) = a1;
  v133 = *MEMORY[0x1E69E9840];
  v127[0] = 0;
  v16 = _stringshims_strtod_clocale(a2, v127);
  if (v127[0])
  {
    v17 = &a2[a3] == v127[0];
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v19 = v16;
    if (!_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs6UInt32V_SdTt1g5(v127, v16) || (BYTE4(v127[0]) & 1) != 0)
    {
      goto LABEL_57;
    }

    if (fabs(v19) < 9.00719925e15)
    {
      return LODWORD(v127[0]);
    }
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd) != MEMORY[0x1E69E6108])
  {
    specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a2, a3, 46, 0xE100000000000000, 1, v131);
    if ((v132 & 1) == 0)
    {
      a3 = v131[1];
      v8 = v131[2];
      v18 = v131[0];
      goto LABEL_56;
    }

LABEL_12:
    v20 = specialized BufferView.suffix(from:)(a6, a2, a3);
    v22 = &v20[v21];
    if (v15)
    {
      if (v21 < 1)
      {
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
        goto LABEL_312;
      }

      v23 = *v20;
      if (v23 == 45 || (v9 = v20, v23 == 43))
      {
        v9 = v20 + 1;
      }

      if (v22 < v9)
      {
        goto LABEL_311;
      }

      a6 = v9 - v20;
      if (v9 - v20 < 0)
      {
LABEL_312:
        __break(1u);
        goto LABEL_313;
      }

      a3 = v22 - v9;
      if (v22 - v9 < 0)
      {
LABEL_313:
        __break(1u);
LABEL_314:
        v80 = a4;
        v36 = 0;
        v47 = v126;
        v48 = v8;
LABEL_169:
        LODWORD(v127[0]) = a6;
        WORD2(v127[0]) = v9;
        v81 = v80;
        HIWORD(v127[0]) = v80;
        LOWORD(v127[1]) = a3;
        WORD1(v127[1]) = a5;
        WORD2(v127[1]) = v7;
        HIWORD(v127[1]) = v47;
        LOWORD(v128) = v48;
        v82 = v15;
        HIWORD(v128) = v15;
        v83 = v48;
        if ((_So9NSDecimala__exponent_getter(v127) & 0x80000000) != 0)
        {
          LODWORD(v127[0]) = a6;
          WORD2(v127[0]) = v9;
          HIWORD(v127[0]) = v81;
          LOWORD(v127[1]) = a3;
          WORD1(v127[1]) = a5;
          WORD2(v127[1]) = v7;
          HIWORD(v127[1]) = v126;
          LOWORD(v128) = v83;
          HIWORD(v128) = v82;
          v123 = _So9NSDecimala__exponent_getter(v127);
          if (v123 > 0)
          {
            goto LABEL_328;
          }

          if (v123)
          {
            if (!__CFADD__(v123, -v123 & ~(-v123 >> 31)))
            {
              goto LABEL_336;
            }

            do
            {
              v36 /= 0xAuLL;
            }

            while (!__CFADD__(v123++, 1));
          }

          goto LABEL_286;
        }

        LODWORD(v127[0]) = a6;
        WORD2(v127[0]) = v9;
        HIWORD(v127[0]) = v81;
        LOWORD(v127[1]) = a3;
        WORD1(v127[1]) = a5;
        WORD2(v127[1]) = v7;
        HIWORD(v127[1]) = v126;
        LOWORD(v128) = v83;
        HIWORD(v128) = v82;
        v84 = _So9NSDecimala__exponent_getter(v127);
        if ((v84 & 0x80000000) == 0)
        {
          v85 = v84 + 1;
          while (--v85)
          {
            v86 = (v36 * 0xAuLL) >> 64;
            v36 *= 10;
            if (v86)
            {
              goto LABEL_57;
            }
          }

LABEL_286:
          if (!HIDWORD(v36))
          {
            return v36;
          }

LABEL_57:
          v36 = static String._fromUTF8Repairing(_:)();
          v39 = v38;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v40 = v36;
          *(v40 + 8) = v39;
          *(v40 + 16) = 0u;
          *(v40 + 32) = 0u;
          v41 = 11;
          goto LABEL_58;
        }

        goto LABEL_318;
      }

      v15 = v21;
      v7 = v20;
      if (a3 >= 2)
      {
        v24 = 2;
      }

      else
      {
        v24 = v22 - v9;
      }

      if (_stringshims_strncasecmp_clocale(v9, "0x", v24))
      {
        if (v9 < v22)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = v22 - v9;
          do
          {
            if (a6 + v26 < 0)
            {
              goto LABEL_294;
            }

            v31 = v29-- < 1;
            if (v31)
            {
              goto LABEL_294;
            }

            LODWORD(v15) = v9[v26];
            if ((v15 - 58) > 0xF5u)
            {
              v30 = __OFADD__(v28++, 1);
              if (v30)
              {
                goto LABEL_296;
              }
            }

            else if (v9[v26] <= 0x2Du)
            {
              if (v15 != 43 && v15 != 45 || v28 || v27 != 2)
              {
LABEL_77:
                a5 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(&v9[v26], a4, a5);
                v52 = v51;
                a3 = v53;
                goto LABEL_78;
              }

              v28 = 0;
              v27 = 3;
            }

            else if (v15 == 101 || v15 == 69)
            {
              if (v27 != 1 && (v27 || v28 <= 0))
              {
                goto LABEL_77;
              }

              v28 = 0;
              v27 = 2;
            }

            else
            {
              if (v15 != 46)
              {
                goto LABEL_77;
              }

              if (v27)
              {
                v114 = &v9[v26];
                if (&v9[v26] >= a4)
                {
                  v115 = a4 + a5;
                  if (a4 + a5 >= v114)
                  {
                    if (v115 >= &v9[v26 + 1])
                    {
                      v115 = &v9[v26 + 1];
                    }

                    if (v115 <= a4)
                    {
                      v52 = 0;
                      a5 = 1;
                    }

                    else
                    {
                      v116 = a5 + a4;
                      a5 = 1;
                      v117 = a4;
                      do
                      {
                        v118 = 0;
                        v119 = 0;
                        v120 = v116 - v117;
                        while (1)
                        {
                          if ((v117 - a4 + v119) < 0 || (v120 + v118) < 1)
                          {
                            goto LABEL_308;
                          }

                          v121 = *(v117 + v119);
                          if (v121 == 10)
                          {
                            break;
                          }

                          if (v121 == 13)
                          {
                            v122 = v117 + v119;
                            if (v114 < v117 + v119 + 1)
                            {
                              goto LABEL_274;
                            }

                            if (((v117 - a4 + v119 + 1) & 0x8000000000000000) == 0 && (~v119 + v120) >= 1)
                            {
                              if (*(v122 + 1) == 10)
                              {
                                v122 = v117 + v119 + 1;
                              }

LABEL_274:
                              v30 = __OFADD__(a5++, 1);
                              if (!v30)
                              {
                                v117 = v122 + 1;
                                goto LABEL_278;
                              }

LABEL_338:
                              __break(1u);
LABEL_339:
                              __break(1u);
LABEL_340:
                              __break(1u);
                            }

                            __break(1u);
                          }

                          v52 = v119 + 1;
                          if (__OFADD__(v119, 1))
                          {
                            goto LABEL_309;
                          }

                          ++v119;
                          --v118;
                          if (v117 + v119 >= v115)
                          {
                            goto LABEL_290;
                          }
                        }

                        v30 = __OFADD__(a5++, 1);
                        if (v30)
                        {
                          goto LABEL_337;
                        }

                        v117 += v119 + 1;
LABEL_278:
                        ;
                      }

                      while (v117 < v115);
                      v52 = 0;
                    }

LABEL_290:
                    a3 = &v9[v26 - a4];
                    LOBYTE(v15) = 46;
LABEL_78:
                    a6 = 0xE900000000000072;
                    v7 = 0x65626D756E206E69;
LABEL_79:
                    v36 = v15;
                    lazy protocol witness table accessor for type JSONError and conformance JSONError();
                    swift_allocError();
                    *v40 = v7;
                    *(v40 + 8) = a6;
                    *(v40 + 16) = v15;
                    *(v40 + 24) = a5;
                    *(v40 + 32) = v52;
                    *(v40 + 40) = a3;
                    v41 = 1;
LABEL_58:
                    *(v40 + 48) = v41;
                    swift_willThrow();
                    return v36;
                  }
                }

LABEL_327:
                __break(1u);
LABEL_328:
                __break(1u);
LABEL_329:
                __break(1u);
LABEL_330:
                __break(1u);
LABEL_331:
                __break(1u);
LABEL_332:
                __break(1u);
LABEL_333:
                __break(1u);
LABEL_334:
                __break(1u);
LABEL_335:
                __break(1u);
LABEL_336:
                __break(1u);
LABEL_337:
                __break(1u);
                goto LABEL_338;
              }

              v28 = 0;
              v27 = 1;
            }

            ++v26;
          }

          while (a3 != v26);
        }

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
        goto LABEL_310;
      }

      v35 = v9 + 2;
      v54 = v22 - (v9 + 2);
      if (v54 >= 1 && v35 < v22)
      {
        v54 = &v35[-v7];
        if ((&v35[-v7] & 0x8000000000000000) == 0)
        {
          a3 = &v9[-a4 + 2];
          v54 = v15 + v7 - v9 - 3;
          v59 = a6 + 3;
          v25 = 1;
          while (1)
          {
            v60 = v59;
            LOWORD(v15) = *v35;
            if ((v15 - 58) <= 0xF5u && (*v35 - 65 > 0x25 || ((1 << (v15 - 65)) & 0x3F0000003FLL) == 0))
            {
              break;
            }

            v31 = v54-- < 1;
            if (!v31 && ++v35 < v22)
            {
              ++a3;
              ++v59;
              if ((v60 & 0x8000000000000000) == 0)
              {
                continue;
              }
            }

            goto LABEL_115;
          }

          if (v35 >= a4)
          {
            v87 = a4 + a5;
            if (a4 + a5 >= v35)
            {
              if (v87 >= (v35 + 1))
              {
                v87 = (v35 + 1);
              }

              if (v87 <= a4)
              {
                v52 = 0;
                a6 = 0xED00007265626D75;
                v7 = 0x6E20786568206E69;
                a5 = 1;
                goto LABEL_79;
              }

              v88 = a5 + a4;
              v89 = -a4;
              a5 = 1;
              a6 = 0xED00007265626D75;
              v7 = 0x6E20786568206E69;
              while (1)
              {
                v90 = 0;
                v91 = 0;
                v92 = v88 - a4;
                while (1)
                {
                  if ((v89 + a4 + v91) < 0 || (v92 + v90) < 1)
                  {
                    goto LABEL_302;
                  }

                  v93 = *(a4 + v91);
                  if (v93 == 10)
                  {
                    v30 = __OFADD__(a5++, 1);
                    if (!v30)
                    {
                      a4 += v91 + 1;
                      goto LABEL_198;
                    }

                    goto LABEL_325;
                  }

                  if (v93 == 13)
                  {
                    break;
                  }

                  v52 = v91 + 1;
                  if (__OFADD__(v91, 1))
                  {
                    goto LABEL_303;
                  }

                  ++v91;
                  --v90;
                  if (a4 + v91 >= v87)
                  {
                    goto LABEL_79;
                  }
                }

                v94 = a4 + v91;
                if (v35 >= a4 + v91 + 1)
                {
                  if (((v89 + a4 + v91 + 1) & 0x8000000000000000) != 0 || (~v91 + v92) < 1)
                  {
                    goto LABEL_335;
                  }

                  if (*(v94 + 1) == 10)
                  {
                    v94 = a4 + v91 + 1;
                  }
                }

                v30 = __OFADD__(a5++, 1);
                if (v30)
                {
                  goto LABEL_326;
                }

                a4 = v94 + 1;
LABEL_198:
                if (a4 >= v87)
                {
                  v52 = 0;
                  goto LABEL_79;
                }
              }
            }
          }

          goto LABEL_317;
        }
      }

LABEL_115:
      __break(1u);
LABEL_116:
      v62 = &v35[v54];
      if (&v35[v54] >= a4)
      {
        v63 = a4 + a5;
        if (a4 + a5 >= v62)
        {
          if (v63 >= &v35[v54 + 1])
          {
            v63 = &v35[v54 + 1];
          }

          if (v63 > a4)
          {
            v64 = a5 + a4;
            a5 = 1;
            v65 = a4;
            while (1)
            {
              while (1)
              {
                v66 = 0;
                v67 = 0;
                v68 = v64 - v65;
LABEL_123:
                if ((v65 - a4 + v67) < 0 || (v68 + v66) < 1)
                {
                  goto LABEL_298;
                }

                v69 = *(v65 + v67);
                if (v69 != 10)
                {
                  break;
                }

                v30 = __OFADD__(a5++, 1);
                if (v30)
                {
                  goto LABEL_321;
                }

                v65 += v67 + 1;
                if (v65 >= v63)
                {
                  goto LABEL_224;
                }
              }

              if (v69 != 13)
              {
                a3 = v67 + 1;
                if (__OFADD__(v67, 1))
                {
                  goto LABEL_300;
                }

                ++v67;
                --v66;
                if (v65 + v67 >= v63)
                {
                  goto LABEL_227;
                }

                goto LABEL_123;
              }

              v70 = v65 + v67;
              if (v62 >= v65 + v67 + 1)
              {
                if (((v65 - a4 + v67 + 1) & 0x8000000000000000) != 0 || (~v67 + v68) < 1)
                {
                  goto LABEL_332;
                }

                if (*(v70 + 1) == 10)
                {
                  v70 = v65 + v67 + 1;
                }
              }

              v30 = __OFADD__(a5++, 1);
              if (v30)
              {
                goto LABEL_323;
              }

              v65 = v70 + 1;
              if (v70 + 1 >= v63)
              {
                goto LABEL_224;
              }
            }
          }

LABEL_225:
          a3 = 0;
LABEL_226:
          a5 = 1;
          goto LABEL_227;
        }
      }

      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
      goto LABEL_320;
    }

    if (v21 >= 1)
    {
      v32 = 0;
      v33 = v21;
      v34 = v20;
      v35 = v20;
      while ((v32 & 0x8000000000000000) == 0)
      {
        v31 = v33-- < 1;
        if (v31)
        {
          break;
        }

        if (*v35 - 58 >= 0xFFFFFFF6)
        {
          ++v35;
          ++v34;
          ++v32;
          if (v35 < v22)
          {
            continue;
          }
        }

        goto LABEL_81;
      }

      goto LABEL_297;
    }

    v34 = v20;
    v35 = v20;
LABEL_81:
    if (v35 >= v22)
    {
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
      goto LABEL_293;
    }

    v54 = 0;
    v55 = 0;
    v56 = v34 - v20;
    v57 = (&v20[v21] - v34);
    v58 = &v20[v21] - v35;
    while (1)
    {
      if (v35 - v20 + v54 < 0)
      {
        goto LABEL_292;
      }

      v31 = v58-- < 1;
      if (v31)
      {
        goto LABEL_292;
      }

      v25 = v35[v54];
      if (v25 - 58 >= 0xFFFFFFF6)
      {
        v30 = __OFADD__(v56++, 1);
        if (v30)
        {
          goto LABEL_295;
        }
      }

      else if (v35[v54] <= 0x2Du)
      {
        if (v25 != 43 && v25 != 45)
        {
LABEL_200:
          v95 = &v35[v54];
          if (&v35[v54] < a4)
          {
            goto LABEL_319;
          }

          v96 = a4 + a5;
          if (a4 + a5 < v95)
          {
            goto LABEL_319;
          }

          if (v96 >= &v35[v54 + 1])
          {
            v96 = &v35[v54 + 1];
          }

          if (v96 <= a4)
          {
            goto LABEL_225;
          }

          v97 = a5 + a4;
          a5 = 1;
          v98 = a4;
          while (1)
          {
LABEL_206:
            v99 = 0;
            v100 = 0;
            v101 = v97 - v98;
            while (1)
            {
              if ((v98 - a4 + v100) < 0 || (v101 + v99) < 1)
              {
                goto LABEL_304;
              }

              v102 = *(v98 + v100);
              if (v102 == 10)
              {
                v30 = __OFADD__(a5++, 1);
                if (v30)
                {
                  goto LABEL_329;
                }

                v98 += v100 + 1;
                if (v98 >= v96)
                {
                  goto LABEL_224;
                }

                goto LABEL_206;
              }

              if (v102 == 13)
              {
                break;
              }

              a3 = v100 + 1;
              if (__OFADD__(v100, 1))
              {
                goto LABEL_306;
              }

              ++v100;
              --v99;
              if (v98 + v100 >= v96)
              {
                goto LABEL_227;
              }
            }

            v103 = v98 + v100;
            if (v95 >= v98 + v100 + 1)
            {
              if (((v98 - a4 + v100 + 1) & 0x8000000000000000) != 0 || (~v100 + v101) < 1)
              {
                goto LABEL_339;
              }

              if (*(v103 + 1) == 10)
              {
                v103 = v98 + v100 + 1;
              }
            }

            v30 = __OFADD__(a5++, 1);
            if (v30)
            {
              goto LABEL_330;
            }

            v98 = v103 + 1;
            if (v103 + 1 >= v96)
            {
LABEL_224:
              a3 = 0;
LABEL_227:
              v36 = &v35[v54 - a4];
              v104 = v25;
              lazy protocol witness table accessor for type JSONError and conformance JSONError();
              swift_allocError();
              *v40 = xmmword_181237560;
              *(v40 + 16) = v104;
              *(v40 + 24) = a5;
              *(v40 + 32) = a3;
              *(v40 + 40) = v36;
              v41 = 1;
              goto LABEL_58;
            }
          }
        }

        if (v56 || v55 != 2)
        {
          v71 = &v35[v54];
          if (&v35[v54] >= a4)
          {
            v72 = a4 + a5;
            if (a4 + a5 >= v71)
            {
              if (v72 >= &v35[v54 + 1])
              {
                v72 = &v35[v54 + 1];
              }

              if (v72 <= a4)
              {
                goto LABEL_225;
              }

              v73 = a5 + a4;
              a5 = 1;
              v74 = a4;
              while (1)
              {
LABEL_147:
                v75 = 0;
                v76 = 0;
                v77 = v73 - v74;
                while (1)
                {
                  if ((v74 - a4 + v76) < 0 || (v77 + v75) < 1)
                  {
                    goto LABEL_299;
                  }

                  v78 = *(v74 + v76);
                  if (v78 == 10)
                  {
                    v30 = __OFADD__(a5++, 1);
                    if (v30)
                    {
                      goto LABEL_322;
                    }

                    v74 += v76 + 1;
                    if (v74 >= v72)
                    {
                      goto LABEL_224;
                    }

                    goto LABEL_147;
                  }

                  if (v78 == 13)
                  {
                    break;
                  }

                  a3 = v76 + 1;
                  if (__OFADD__(v76, 1))
                  {
                    goto LABEL_301;
                  }

                  ++v76;
                  --v75;
                  if (v74 + v76 >= v72)
                  {
                    goto LABEL_227;
                  }
                }

                v79 = v74 + v76;
                if (v71 >= v74 + v76 + 1)
                {
                  if (((v74 - a4 + v76 + 1) & 0x8000000000000000) != 0 || (~v76 + v77) < 1)
                  {
                    goto LABEL_333;
                  }

                  if (*(v79 + 1) == 10)
                  {
                    v79 = v74 + v76 + 1;
                  }
                }

                v30 = __OFADD__(a5++, 1);
                if (v30)
                {
                  goto LABEL_324;
                }

                v74 = v79 + 1;
                if (v79 + 1 >= v72)
                {
                  goto LABEL_224;
                }
              }
            }
          }

          goto LABEL_316;
        }

        v56 = 0;
        v55 = 3;
      }

      else if (v25 == 101 || v25 == 69)
      {
        if (v56 < 1 || v55 >= 2)
        {
          goto LABEL_116;
        }

        v56 = 0;
        v55 = 2;
      }

      else
      {
        if (v25 != 46)
        {
          goto LABEL_200;
        }

        if (v56 < 1 || v55)
        {
          v105 = &v35[v54];
          if (&v35[v54] >= a4 && a4 + a5 >= v105)
          {
            if (a4 + a5 >= &v35[v54 + 1])
            {
              v106 = &v35[v54 + 1];
            }

            else
            {
              v106 = a4 + a5;
            }

            if (v106 > a4)
            {
              v107 = a5 + a4;
              a5 = 1;
              v108 = a4;
              while (1)
              {
                v109 = 0;
                v110 = 0;
                v111 = v107 - v108;
                while (1)
                {
                  if ((v108 - a4 + v110) < 0 || (v111 + v109) < 1)
                  {
                    goto LABEL_305;
                  }

                  v112 = *(v108 + v110);
                  if (v112 == 10)
                  {
                    break;
                  }

                  if (v112 == 13)
                  {
                    v113 = v108 + v110;
                    if (v105 >= v108 + v110 + 1)
                    {
                      if (((v108 - a4 + v110 + 1) & 0x8000000000000000) != 0 || (~v110 + v111) < 1)
                      {
                        goto LABEL_340;
                      }

                      if (*(v113 + 1) == 10)
                      {
                        v113 = v108 + v110 + 1;
                      }
                    }

                    v30 = __OFADD__(a5++, 1);
                    if (v30)
                    {
                      goto LABEL_334;
                    }

                    a3 = 0;
                    v108 = v113 + 1;
                    goto LABEL_252;
                  }

                  a3 = v110 + 1;
                  if (__OFADD__(v110, 1))
                  {
                    goto LABEL_307;
                  }

                  ++v110;
                  --v109;
                  if (v108 + v110 >= v106)
                  {
                    v25 = 46;
                    goto LABEL_227;
                  }
                }

                v30 = __OFADD__(a5++, 1);
                if (v30)
                {
                  goto LABEL_331;
                }

                a3 = 0;
                v108 += v110 + 1;
LABEL_252:
                v25 = 46;
                if (v108 >= v106)
                {
                  goto LABEL_227;
                }
              }
            }

            a3 = 0;
            v25 = 46;
            goto LABEL_226;
          }

LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
LABEL_325:
          __break(1u);
LABEL_326:
          __break(1u);
          goto LABEL_327;
        }

        v56 = 0;
        v55 = 1;
      }

      if (v57 == ++v54)
      {
        goto LABEL_291;
      }
    }
  }

  specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a2, a3, 0x2EuLL, 0xE100000000000000, 1, v129);
  if (v130 == 1)
  {
    goto LABEL_12;
  }

  a3 = v129[1];
  v8 = v129[2];
  v18 = v129[0];
LABEL_56:
  v127[0] = v18;
  v37 = HIDWORD(v18);
  v127[1] = a3;
  v15 = v8 >> 16;
  v128 = v8;
  if (_So9NSDecimala__isNegative_getter(v127))
  {
    goto LABEL_57;
  }

  v7 = HIDWORD(a3);
  a5 = a3 >> 16;
  a4 = HIWORD(v18);
  a6 = v18;
  v9 = HIDWORD(v18);
  LODWORD(v127[0]) = a6;
  WORD2(v127[0]) = v37;
  HIWORD(v127[0]) = a4;
  v127[1] = a3;
  v126 = HIWORD(a3);
  v128 = v8;
  v43 = _So9NSDecimala__length_getter(v127);
  if (!v43)
  {
    goto LABEL_314;
  }

  v44 = v43 - 1;
  if (v43 == 1)
  {
    v50 = 0;
    v45 = 0;
    v47 = HIWORD(a3);
    v48 = v8;
LABEL_167:
    if (v45)
    {
      goto LABEL_57;
    }

    v80 = a4;
    v36 = v50 | WORD2(a6);
    goto LABEL_169;
  }

  v45 = 0;
  v46 = 0;
  v47 = HIWORD(a3);
  v48 = v8;
  while (1)
  {
    if (v44 + 1 > 4)
    {
      if (v44 + 1 > 6)
      {
        LOWORD(v49) = v8;
        if (v44 != 6)
        {
          v49 = v8 >> 16;
          if (v44 != 7)
          {
            break;
          }
        }
      }

      else
      {
        v49 = HIDWORD(a3);
        if (v44 != 4)
        {
          LOWORD(v49) = HIWORD(a3);
          if (v44 != 5)
          {
            break;
          }
        }
      }

      goto LABEL_74;
    }

    LOWORD(v49) = a4;
    if (v44 != 1)
    {
      LOWORD(v49) = a3;
      if (v44 != 2)
      {
        v49 = a3 >> 16;
        if (v44 != 3)
        {
          break;
        }
      }
    }

LABEL_74:
    if (v45)
    {
      goto LABEL_57;
    }

    v50 = (v49 | v46) << 16;
    v45 = HIWORD(v46) != 0;
    v46 = v50;
    if (!--v44)
    {
      goto LABEL_167;
    }
  }

  strcpy(v127, "Invalid index ");
  HIBYTE(v127[1]) = -18;
  v125 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v125);

  MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static JSONDecoderImpl._slowpath_unwrapFixedWidthInteger<A, B>(as:json5:numberBuffer:fullSource:digitBeginning:for:_:)(__int16 a1, const char *a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  LOWORD(v8) = v6;
  LOWORD(v14) = a1;
  v135 = *MEMORY[0x1E69E9840];
  v129[0] = 0;
  v15 = _stringshims_strtod_clocale(a2, v129);
  if (v129[0])
  {
    v16 = &a2[a3] == v129[0];
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v19 = v15;
    if (!_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs4Int8V_SdTt1g5(v129, v15) || (BYTE1(v129[0]) & 1) != 0)
    {
      goto LABEL_288;
    }

    if (fabs(v19) < 9.00719925e15)
    {
      return LOBYTE(v129[0]);
    }
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd) == MEMORY[0x1E69E6108])
  {
    specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a2, a3, 0x2EuLL, 0xE100000000000000, 1, v131);
    if (v132 != 1)
    {
      a6 = v131[1];
      v17 = v131[2];
      v18 = v131[0];
      goto LABEL_56;
    }
  }

  else
  {
    specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a2, a3, 46, 0xE100000000000000, 1, v133);
    if ((v134 & 1) == 0)
    {
      a6 = v133[1];
      v17 = v133[2];
      v18 = v133[0];
LABEL_56:
      v129[0] = v18;
      v22 = (v18 >> 32);
      a4 = v18 >> 48;
      v129[1] = a6;
      v7 = HIDWORD(a6);
      a3 = v17 >> 16;
      v130 = v17;
      isNegative_getter = _So9NSDecimala__isNegative_getter(v129);
      v127 = v18;
      LODWORD(v129[0]) = v18;
      v8 = (a6 >> 16);
      WORD2(v129[0]) = v22;
      HIWORD(v129[0]) = a4;
      v129[1] = a6;
      v130 = v17;
      LOWORD(v14) = v17;
      if (_So9NSDecimala__length_getter(v129) || !isNegative_getter)
      {
        LODWORD(v129[0]) = v127;
        WORD2(v129[0]) = v22;
        HIWORD(v129[0]) = a4;
        v129[1] = a6;
        v126 = HIWORD(a6);
        v130 = v17;
        v38 = _So9NSDecimala__length_getter(v129);
        if (v38)
        {
          v39 = v38 - 1;
          if (v38 == 1)
          {
            v44 = 0;
            v42 = HIWORD(a6);
            goto LABEL_103;
          }

          v40 = 0;
          v41 = 0;
          v42 = HIWORD(a6);
          do
          {
            if (v39 + 1 <= 4)
            {
              LOWORD(v43) = a4;
              if (v39 != 1)
              {
                LOWORD(v43) = a6;
                if (v39 != 2)
                {
                  v43 = a6 >> 16;
                  if (v39 != 3)
                  {
LABEL_346:
                    strcpy(v129, "Invalid index ");
                    HIBYTE(v129[1]) = -18;
                    v125 = dispatch thunk of CustomStringConvertible.description.getter();
                    MEMORY[0x1865CB0E0](v125);

                    MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
                    result = _assertionFailure(_:_:file:line:flags:)();
                    __break(1u);
                    return result;
                  }
                }
              }
            }

            else if (v39 + 1 > 6)
            {
              LOWORD(v43) = v17;
              if (v39 != 6)
              {
                v43 = v17 >> 16;
                if (v39 != 7)
                {
                  goto LABEL_346;
                }
              }
            }

            else
            {
              v43 = HIDWORD(a6);
              if (v39 != 4)
              {
                LOWORD(v43) = HIWORD(a6);
                if (v39 != 5)
                {
                  goto LABEL_346;
                }
              }
            }

            if (v40)
            {
              goto LABEL_288;
            }

            v44 = (v43 | v41) << 16;
            v40 = HIWORD(v41) != 0;
            v41 = v44;
            --v39;
          }

          while (v39);
          if (v40)
          {
            goto LABEL_288;
          }

LABEL_103:
          v55 = v22;
          v56 = v127;
          v37 = v44 | WORD2(v127);
LABEL_104:
          LODWORD(v129[0]) = v56;
          v57 = v55;
          WORD2(v129[0]) = v55;
          HIWORD(v129[0]) = a4;
          LOWORD(v129[1]) = a6;
          WORD1(v129[1]) = v8;
          WORD2(v129[1]) = v7;
          HIWORD(v129[1]) = v42;
          LOWORD(v130) = v14;
          HIWORD(v130) = a3;
          v58 = v56;
          if ((_So9NSDecimala__exponent_getter(v129) & 0x80000000) == 0)
          {
            LODWORD(v129[0]) = v58;
            WORD2(v129[0]) = v57;
            HIWORD(v129[0]) = a4;
            LOWORD(v129[1]) = a6;
            WORD1(v129[1]) = v8;
            WORD2(v129[1]) = v7;
            HIWORD(v129[1]) = v126;
            LOWORD(v130) = v14;
            HIWORD(v130) = a3;
            v59 = _So9NSDecimala__exponent_getter(v129);
            if ((v59 & 0x80000000) == 0)
            {
              v60 = v59 + 1;
              while (--v60)
              {
                v61 = (v37 * 0xAuLL) >> 64;
                v37 *= 10;
                if (v61)
                {
                  goto LABEL_288;
                }
              }

              goto LABEL_259;
            }

LABEL_322:
            __break(1u);
LABEL_323:
            __break(1u);
LABEL_324:
            __break(1u);
LABEL_325:
            __break(1u);
LABEL_326:
            __break(1u);
LABEL_327:
            __break(1u);
LABEL_328:
            __break(1u);
LABEL_329:
            __break(1u);
LABEL_330:
            __break(1u);
LABEL_331:
            __break(1u);
LABEL_332:
            __break(1u);
LABEL_333:
            __break(1u);
LABEL_334:
            __break(1u);
LABEL_335:
            __break(1u);
LABEL_336:
            __break(1u);
LABEL_337:
            __break(1u);
LABEL_338:
            __break(1u);
LABEL_339:
            __break(1u);
LABEL_340:
            __break(1u);
LABEL_341:
            __break(1u);
LABEL_342:
            __break(1u);
LABEL_343:
            __break(1u);
LABEL_344:
            __break(1u);
LABEL_345:
            __break(1u);
          }

          LODWORD(v129[0]) = v58;
          WORD2(v129[0]) = v57;
          HIWORD(v129[0]) = a4;
          LOWORD(v129[1]) = a6;
          WORD1(v129[1]) = v8;
          WORD2(v129[1]) = v7;
          HIWORD(v129[1]) = v126;
          LOWORD(v130) = v14;
          HIWORD(v130) = a3;
          v111 = _So9NSDecimala__exponent_getter(v129);
          if (v111 > 0)
          {
            goto LABEL_329;
          }

          if (v111)
          {
            if (!__CFADD__(v111, -v111 & ~(-v111 >> 31)))
            {
              goto LABEL_333;
            }

            do
            {
              v37 /= 0xAuLL;
            }

            while (!__CFADD__(v111++, 1));
          }

LABEL_259:
          if (isNegative_getter)
          {
            if (v37 > 0x7F)
            {
              goto LABEL_288;
            }

            return -v37;
          }

          else if (v37 > 0x7F)
          {
            goto LABEL_288;
          }

          return v37;
        }

        goto LABEL_314;
      }

LABEL_288:
      v122 = static String._fromUTF8Repairing(_:)();
      v37 = v123;
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      *v48 = v122;
      *(v48 + 8) = v37;
      *(v48 + 16) = 0u;
      *(v48 + 32) = 0u;
      v49 = 11;
      goto LABEL_289;
    }
  }

  v20 = specialized BufferView.suffix(from:)(a6, a2, a3);
  v22 = &v20[v21];
  if ((v14 & 1) == 0)
  {
    if (v21 >= 1)
    {
      v33 = 0;
      v34 = v21;
      v35 = v20;
      v36 = v20;
      while ((v33 & 0x8000000000000000) == 0)
      {
        v32 = v34-- < 1;
        if (v32)
        {
          break;
        }

        if (*v36 - 58 >= 0xFFFFFFF6)
        {
          ++v36;
          ++v35;
          ++v33;
          if (v36 < v22)
          {
            continue;
          }
        }

        goto LABEL_80;
      }

      goto LABEL_301;
    }

    v35 = v20;
    v36 = v20;
LABEL_80:
    if (v36 >= v22)
    {
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
      goto LABEL_297;
    }

    v50 = 0;
    v51 = 0;
    v52 = v35 - v20;
    v53 = (&v20[v21] - v35);
    v54 = &v20[v21] - v36;
    while (1)
    {
      if (v36 - v20 + v50 < 0)
      {
        goto LABEL_296;
      }

      v32 = v54-- < 1;
      if (v32)
      {
        goto LABEL_296;
      }

      v26 = v36[v50];
      if (v26 - 58 >= 0xFFFFFFF6)
      {
        v31 = __OFADD__(v52++, 1);
        if (v31)
        {
          goto LABEL_299;
        }
      }

      else if (v36[v50] <= 0x2Du)
      {
        if (v26 != 43 && v26 != 45)
        {
LABEL_198:
          v91 = &v36[v50];
          if (&v36[v50] < a4)
          {
            goto LABEL_323;
          }

          v92 = a4 + a5;
          if (a4 + a5 < v91)
          {
            goto LABEL_323;
          }

          if (v92 >= &v36[v50 + 1])
          {
            v92 = &v36[v50 + 1];
          }

          if (v92 <= a4)
          {
            goto LABEL_223;
          }

          v93 = a5 + a4;
          v37 = 1;
          v94 = a4;
          while (1)
          {
LABEL_204:
            v95 = 0;
            v96 = 0;
            v97 = v93 - v94;
            while (1)
            {
              if ((v94 - a4 + v96) < 0 || (v97 + v95) < 1)
              {
                goto LABEL_308;
              }

              v98 = *(v94 + v96);
              if (v98 == 10)
              {
                v31 = __OFADD__(v37++, 1);
                if (v31)
                {
                  goto LABEL_334;
                }

                v94 += v96 + 1;
                if (v94 >= v92)
                {
                  goto LABEL_222;
                }

                goto LABEL_204;
              }

              if (v98 == 13)
              {
                break;
              }

              a3 = v96 + 1;
              if (__OFADD__(v96, 1))
              {
                goto LABEL_310;
              }

              ++v96;
              --v95;
              if (v94 + v96 >= v92)
              {
                goto LABEL_225;
              }
            }

            v99 = v94 + v96;
            if (v91 >= v94 + v96 + 1)
            {
              if (((v94 - a4 + v96 + 1) & 0x8000000000000000) != 0 || (~v96 + v97) < 1)
              {
                goto LABEL_343;
              }

              if (*(v99 + 1) == 10)
              {
                v99 = v94 + v96 + 1;
              }
            }

            v31 = __OFADD__(v37++, 1);
            if (v31)
            {
              goto LABEL_335;
            }

            v94 = v99 + 1;
            if (v99 + 1 >= v92)
            {
LABEL_222:
              a3 = 0;
LABEL_225:
              v100 = &v36[v50 - a4];
              v101 = v26;
              lazy protocol witness table accessor for type JSONError and conformance JSONError();
              swift_allocError();
              *v48 = xmmword_181237560;
              *(v48 + 16) = v101;
              *(v48 + 24) = v37;
              *(v48 + 32) = a3;
              *(v48 + 40) = v100;
              v49 = 1;
              goto LABEL_289;
            }
          }
        }

        if (v52 || v51 != 2)
        {
          v74 = &v36[v50];
          if (&v36[v50] >= a4)
          {
            v75 = a4 + a5;
            if (a4 + a5 >= v74)
            {
              if (v75 >= &v36[v50 + 1])
              {
                v75 = &v36[v50 + 1];
              }

              if (v75 <= a4)
              {
                goto LABEL_223;
              }

              v76 = a5 + a4;
              v37 = 1;
              v77 = a4;
              while (1)
              {
LABEL_154:
                v78 = 0;
                v79 = 0;
                v80 = v76 - v77;
                while (1)
                {
                  if ((v77 - a4 + v79) < 0 || (v80 + v78) < 1)
                  {
                    goto LABEL_303;
                  }

                  v81 = *(v77 + v79);
                  if (v81 == 10)
                  {
                    v31 = __OFADD__(v37++, 1);
                    if (v31)
                    {
                      goto LABEL_326;
                    }

                    v77 += v79 + 1;
                    if (v77 >= v75)
                    {
                      goto LABEL_222;
                    }

                    goto LABEL_154;
                  }

                  if (v81 == 13)
                  {
                    break;
                  }

                  a3 = v79 + 1;
                  if (__OFADD__(v79, 1))
                  {
                    goto LABEL_305;
                  }

                  ++v79;
                  --v78;
                  if (v77 + v79 >= v75)
                  {
                    goto LABEL_225;
                  }
                }

                v82 = v77 + v79;
                if (v74 >= v77 + v79 + 1)
                {
                  if (((v77 - a4 + v79 + 1) & 0x8000000000000000) != 0 || (~v79 + v80) < 1)
                  {
                    goto LABEL_338;
                  }

                  if (*(v82 + 1) == 10)
                  {
                    v82 = v77 + v79 + 1;
                  }
                }

                v31 = __OFADD__(v37++, 1);
                if (v31)
                {
                  goto LABEL_328;
                }

                v77 = v82 + 1;
                if (v82 + 1 >= v75)
                {
                  goto LABEL_222;
                }
              }
            }
          }

LABEL_320:
          __break(1u);
          goto LABEL_321;
        }

        v52 = 0;
        v51 = 3;
      }

      else if (v26 == 101 || v26 == 69)
      {
        if (v52 < 1 || v51 >= 2)
        {
          goto LABEL_123;
        }

        v52 = 0;
        v51 = 2;
      }

      else
      {
        if (v26 != 46)
        {
          goto LABEL_198;
        }

        if (v52 < 1 || v51)
        {
          v102 = &v36[v50];
          if (&v36[v50] < a4 || a4 + a5 < v102)
          {
            goto LABEL_324;
          }

          if (a4 + a5 >= &v36[v50 + 1])
          {
            v103 = &v36[v50 + 1];
          }

          else
          {
            v103 = a4 + a5;
          }

          if (v103 > a4)
          {
            v104 = a5 + a4;
            v37 = 1;
            v105 = a4;
            while (1)
            {
              v106 = 0;
              v107 = 0;
              v108 = v104 - v105;
              while (1)
              {
                if ((v105 - a4 + v107) < 0 || (v108 + v106) < 1)
                {
                  goto LABEL_309;
                }

                v109 = *(v105 + v107);
                if (v109 == 10)
                {
                  break;
                }

                if (v109 == 13)
                {
                  v110 = v105 + v107;
                  if (v102 >= v105 + v107 + 1)
                  {
                    if (((v105 - a4 + v107 + 1) & 0x8000000000000000) != 0 || (~v107 + v108) < 1)
                    {
                      goto LABEL_344;
                    }

                    if (*(v110 + 1) == 10)
                    {
                      v110 = v105 + v107 + 1;
                    }
                  }

                  v31 = __OFADD__(v37++, 1);
                  if (v31)
                  {
                    goto LABEL_339;
                  }

                  a3 = 0;
                  v105 = v110 + 1;
                  goto LABEL_250;
                }

                a3 = v107 + 1;
                if (__OFADD__(v107, 1))
                {
                  goto LABEL_311;
                }

                ++v107;
                --v106;
                if (v105 + v107 >= v103)
                {
                  v26 = 46;
                  goto LABEL_225;
                }
              }

              v31 = __OFADD__(v37++, 1);
              if (v31)
              {
                goto LABEL_336;
              }

              a3 = 0;
              v105 += v107 + 1;
LABEL_250:
              v26 = 46;
              if (v105 >= v103)
              {
                goto LABEL_225;
              }
            }
          }

          a3 = 0;
          v26 = 46;
          goto LABEL_224;
        }

        v52 = 0;
        v51 = 1;
      }

      if (v53 == ++v50)
      {
        goto LABEL_295;
      }
    }
  }

  if (v21 < 1)
  {
    __break(1u);
LABEL_316:
    __break(1u);
    goto LABEL_317;
  }

  v23 = *v20;
  if (v23 == 45 || (v8 = v20, v23 == 43))
  {
    v8 = v20 + 1;
  }

  if (v22 < v8)
  {
    goto LABEL_316;
  }

  a6 = v8 - v20;
  if (v8 - v20 < 0)
  {
LABEL_317:
    __break(1u);
    goto LABEL_318;
  }

  a3 = v22 - v8;
  if (v22 - v8 < 0)
  {
LABEL_318:
    __break(1u);
LABEL_319:
    __break(1u);
    goto LABEL_320;
  }

  v14 = v21;
  v24 = v20;
  if (a3 >= 2)
  {
    v25 = 2;
  }

  else
  {
    v25 = v22 - v8;
  }

  if (!_stringshims_strncasecmp_clocale(v8, "0x", v25))
  {
    v36 = v8 + 2;
    v50 = v22 - (v8 + 2);
    if (v50 >= 1 && v36 < v22)
    {
      v50 = v36 - v24;
      if (((v36 - v24) & 0x8000000000000000) == 0)
      {
        a3 = &v8[-a4 + 2];
        v50 = &v24[v14] - v8 - 3;
        v62 = a6 + 3;
        v26 = 1;
        while (1)
        {
          v63 = v62;
          LOWORD(v14) = *v36;
          if ((v14 - 58) <= 0xF5u && (*v36 - 65 > 0x25 || ((1 << (v14 - 65)) & 0x3F0000003FLL) == 0))
          {
            break;
          }

          v32 = v50-- < 1;
          if (!v32 && ++v36 < v22)
          {
            ++a3;
            ++v62;
            if ((v63 & 0x8000000000000000) == 0)
            {
              continue;
            }
          }

          goto LABEL_122;
        }

        if (v36 >= a4)
        {
          v83 = a4 + a5;
          if (a4 + a5 >= v36)
          {
            if (v83 >= (v36 + 1))
            {
              v83 = (v36 + 1);
            }

            if (v83 <= a4)
            {
              v22 = 0;
              a6 = 0xED00007265626D75;
              v47 = 0x6E20786568206E69;
              v37 = 1;
              goto LABEL_78;
            }

            v84 = a5 + a4;
            v85 = -a4;
            v37 = 1;
            a6 = 0xED00007265626D75;
            v47 = 0x6E20786568206E69;
            while (1)
            {
              v86 = 0;
              v87 = 0;
              v88 = v84 - a4;
              while (1)
              {
                if ((v85 + a4 + v87) < 0 || (v88 + v86) < 1)
                {
                  goto LABEL_306;
                }

                v89 = *(a4 + v87);
                if (v89 == 10)
                {
                  break;
                }

                if (v89 == 13)
                {
                  v90 = a4 + v87;
                  if (v36 >= a4 + v87 + 1)
                  {
                    if (((v85 + a4 + v87 + 1) & 0x8000000000000000) != 0 || (~v87 + v88) < 1)
                    {
                      goto LABEL_340;
                    }

                    if (*(v90 + 1) == 10)
                    {
                      v90 = a4 + v87 + 1;
                    }
                  }

                  v31 = __OFADD__(v37++, 1);
                  if (v31)
                  {
                    goto LABEL_331;
                  }

                  a4 = v90 + 1;
                  goto LABEL_196;
                }

                v22 = (v87 + 1);
                if (__OFADD__(v87, 1))
                {
                  goto LABEL_307;
                }

                ++v87;
                --v86;
                if (a4 + v87 >= v83)
                {
                  goto LABEL_78;
                }
              }

              v31 = __OFADD__(v37++, 1);
              if (v31)
              {
                goto LABEL_330;
              }

              a4 += v87 + 1;
LABEL_196:
              if (a4 >= v83)
              {
                v22 = 0;
                goto LABEL_78;
              }
            }
          }
        }

LABEL_321:
        __break(1u);
        goto LABEL_322;
      }
    }

LABEL_122:
    __break(1u);
LABEL_123:
    v65 = &v36[v50];
    if (&v36[v50] >= a4)
    {
      v66 = a4 + a5;
      if (a4 + a5 >= v65)
      {
        if (v66 >= &v36[v50 + 1])
        {
          v66 = &v36[v50 + 1];
        }

        if (v66 > a4)
        {
          v67 = a5 + a4;
          v37 = 1;
          v68 = a4;
          while (1)
          {
            while (1)
            {
              v69 = 0;
              v70 = 0;
              v71 = v67 - v68;
LABEL_130:
              if ((v68 - a4 + v70) < 0 || (v71 + v69) < 1)
              {
                goto LABEL_302;
              }

              v72 = *(v68 + v70);
              if (v72 != 10)
              {
                break;
              }

              v31 = __OFADD__(v37++, 1);
              if (v31)
              {
                goto LABEL_325;
              }

              v68 += v70 + 1;
              if (v68 >= v66)
              {
                goto LABEL_222;
              }
            }

            if (v72 != 13)
            {
              a3 = v70 + 1;
              if (__OFADD__(v70, 1))
              {
                goto LABEL_304;
              }

              ++v70;
              --v69;
              if (v68 + v70 >= v66)
              {
                goto LABEL_225;
              }

              goto LABEL_130;
            }

            v73 = v68 + v70;
            if (v65 >= v68 + v70 + 1)
            {
              if (((v68 - a4 + v70 + 1) & 0x8000000000000000) != 0 || (~v70 + v71) < 1)
              {
                goto LABEL_337;
              }

              if (*(v73 + 1) == 10)
              {
                v73 = v68 + v70 + 1;
              }
            }

            v31 = __OFADD__(v37++, 1);
            if (v31)
            {
              goto LABEL_327;
            }

            v68 = v73 + 1;
            if (v73 + 1 >= v66)
            {
              goto LABEL_222;
            }
          }
        }

LABEL_223:
        a3 = 0;
LABEL_224:
        v37 = 1;
        goto LABEL_225;
      }
    }

    goto LABEL_319;
  }

  if (v8 >= v22)
  {
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
    v55 = v22;
    v37 = 0;
    v42 = v126;
    v56 = v127;
    goto LABEL_104;
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = v22 - v8;
  while (1)
  {
    if ((a6 + v27) < 0)
    {
      goto LABEL_298;
    }

    v32 = v30-- < 1;
    if (v32)
    {
      goto LABEL_298;
    }

    LODWORD(v14) = v8[v27];
    if ((v14 - 58) > 0xF5u)
    {
      v31 = __OFADD__(v29++, 1);
      if (v31)
      {
        goto LABEL_300;
      }

      goto LABEL_27;
    }

    if (v8[v27] > 0x2Du)
    {
      break;
    }

    if (v14 != 43 && v14 != 45 || v29 || v28 != 2)
    {
LABEL_76:
      v37 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(&v8[v27], a4, a5);
      v22 = v45;
      a3 = v46;
      goto LABEL_77;
    }

    v29 = 0;
    v28 = 3;
LABEL_27:
    if (a3 == ++v27)
    {
      goto LABEL_297;
    }
  }

  if (v14 == 101 || v14 == 69)
  {
    if (v28 != 1 && (v28 || v29 <= 0))
    {
      goto LABEL_76;
    }

    v29 = 0;
    v28 = 2;
    goto LABEL_27;
  }

  if (v14 != 46)
  {
    goto LABEL_76;
  }

  if (!v28)
  {
    v29 = 0;
    v28 = 1;
    goto LABEL_27;
  }

  v113 = &v8[v27];
  if (&v8[v27] < a4)
  {
    goto LABEL_332;
  }

  v114 = a4 + a5;
  if (a4 + a5 < v113)
  {
    goto LABEL_332;
  }

  if (v114 >= &v8[v27 + 1])
  {
    v114 = &v8[v27 + 1];
  }

  if (v114 <= a4)
  {
    v22 = 0;
    v37 = 1;
  }

  else
  {
    v115 = a5 + a4;
    v37 = 1;
    v116 = a4;
    do
    {
      v117 = 0;
      v118 = 0;
      v119 = v115 - v116;
      while (1)
      {
        if ((v116 - a4 + v118) < 0 || (v119 + v117) < 1)
        {
          goto LABEL_312;
        }

        v120 = *(v116 + v118);
        if (v120 == 10)
        {
          v31 = __OFADD__(v37++, 1);
          if (v31)
          {
            goto LABEL_341;
          }

          v116 += v118 + 1;
          goto LABEL_285;
        }

        if (v120 == 13)
        {
          break;
        }

        v22 = (v118 + 1);
        if (__OFADD__(v118, 1))
        {
          goto LABEL_313;
        }

        ++v118;
        --v117;
        if (v116 + v118 >= v114)
        {
          goto LABEL_294;
        }
      }

      v121 = v116 + v118;
      if (v113 >= v116 + v118 + 1)
      {
        if (((v116 - a4 + v118 + 1) & 0x8000000000000000) != 0 || (~v118 + v119) < 1)
        {
          goto LABEL_345;
        }

        if (*(v121 + 1) == 10)
        {
          v121 = v116 + v118 + 1;
        }
      }

      v31 = __OFADD__(v37++, 1);
      if (v31)
      {
        goto LABEL_342;
      }

      v116 = v121 + 1;
LABEL_285:
      ;
    }

    while (v116 < v114);
    v22 = 0;
  }

LABEL_294:
  a3 = &v8[v27 - a4];
  LOBYTE(v14) = 46;
LABEL_77:
  a6 = 0xE900000000000072;
  v47 = 0x65626D756E206E69;
LABEL_78:
  lazy protocol witness table accessor for type JSONError and conformance JSONError();
  swift_allocError();
  *v48 = v47;
  *(v48 + 8) = a6;
  *(v48 + 16) = v14;
  *(v48 + 24) = v37;
  *(v48 + 32) = v22;
  *(v48 + 40) = a3;
  v49 = 1;
LABEL_289:
  *(v48 + 48) = v49;
  swift_willThrow();
  return v37;
}

{
  LOWORD(v8) = v6;
  LOWORD(v14) = a1;
  v135 = *MEMORY[0x1E69E9840];
  v129[0] = 0;
  v15 = _stringshims_strtod_clocale(a2, v129);
  if (v129[0])
  {
    v16 = &a2[a3] == v129[0];
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v19 = v15;
    if (!_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5Int16V_SdTt1g5(v129, v15) || (BYTE2(v129[0]) & 1) != 0)
    {
      goto LABEL_288;
    }

    if (fabs(v19) < 9.00719925e15)
    {
      return LOWORD(v129[0]);
    }
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd) == MEMORY[0x1E69E6108])
  {
    specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a2, a3, 0x2EuLL, 0xE100000000000000, 1, v131);
    if (v132 != 1)
    {
      a6 = v131[1];
      v17 = v131[2];
      v18 = v131[0];
      goto LABEL_56;
    }
  }

  else
  {
    specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a2, a3, 46, 0xE100000000000000, 1, v133);
    if ((v134 & 1) == 0)
    {
      a6 = v133[1];
      v17 = v133[2];
      v18 = v133[0];
LABEL_56:
      v129[0] = v18;
      v22 = (v18 >> 32);
      a4 = v18 >> 48;
      v129[1] = a6;
      v7 = HIDWORD(a6);
      a3 = v17 >> 16;
      v130 = v17;
      isNegative_getter = _So9NSDecimala__isNegative_getter(v129);
      v127 = v18;
      LODWORD(v129[0]) = v18;
      v8 = (a6 >> 16);
      WORD2(v129[0]) = v22;
      HIWORD(v129[0]) = a4;
      v129[1] = a6;
      v130 = v17;
      LOWORD(v14) = v17;
      if (_So9NSDecimala__length_getter(v129) || !isNegative_getter)
      {
        LODWORD(v129[0]) = v127;
        WORD2(v129[0]) = v22;
        HIWORD(v129[0]) = a4;
        v129[1] = a6;
        v126 = HIWORD(a6);
        v130 = v17;
        v38 = _So9NSDecimala__length_getter(v129);
        if (v38)
        {
          v39 = v38 - 1;
          if (v38 == 1)
          {
            v44 = 0;
            v42 = HIWORD(a6);
            goto LABEL_103;
          }

          v40 = 0;
          v41 = 0;
          v42 = HIWORD(a6);
          do
          {
            if (v39 + 1 <= 4)
            {
              LOWORD(v43) = a4;
              if (v39 != 1)
              {
                LOWORD(v43) = a6;
                if (v39 != 2)
                {
                  v43 = a6 >> 16;
                  if (v39 != 3)
                  {
LABEL_346:
                    strcpy(v129, "Invalid index ");
                    HIBYTE(v129[1]) = -18;
                    v125 = dispatch thunk of CustomStringConvertible.description.getter();
                    MEMORY[0x1865CB0E0](v125);

                    MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
                    result = _assertionFailure(_:_:file:line:flags:)();
                    __break(1u);
                    return result;
                  }
                }
              }
            }

            else if (v39 + 1 > 6)
            {
              LOWORD(v43) = v17;
              if (v39 != 6)
              {
                v43 = v17 >> 16;
                if (v39 != 7)
                {
                  goto LABEL_346;
                }
              }
            }

            else
            {
              v43 = HIDWORD(a6);
              if (v39 != 4)
              {
                LOWORD(v43) = HIWORD(a6);
                if (v39 != 5)
                {
                  goto LABEL_346;
                }
              }
            }

            if (v40)
            {
              goto LABEL_288;
            }

            v44 = (v43 | v41) << 16;
            v40 = HIWORD(v41) != 0;
            v41 = v44;
            --v39;
          }

          while (v39);
          if (v40)
          {
            goto LABEL_288;
          }

LABEL_103:
          v55 = v22;
          v56 = v127;
          v37 = v44 | WORD2(v127);
LABEL_104:
          LODWORD(v129[0]) = v56;
          v57 = v55;
          WORD2(v129[0]) = v55;
          HIWORD(v129[0]) = a4;
          LOWORD(v129[1]) = a6;
          WORD1(v129[1]) = v8;
          WORD2(v129[1]) = v7;
          HIWORD(v129[1]) = v42;
          LOWORD(v130) = v14;
          HIWORD(v130) = a3;
          v58 = v56;
          if ((_So9NSDecimala__exponent_getter(v129) & 0x80000000) == 0)
          {
            LODWORD(v129[0]) = v58;
            WORD2(v129[0]) = v57;
            HIWORD(v129[0]) = a4;
            LOWORD(v129[1]) = a6;
            WORD1(v129[1]) = v8;
            WORD2(v129[1]) = v7;
            HIWORD(v129[1]) = v126;
            LOWORD(v130) = v14;
            HIWORD(v130) = a3;
            v59 = _So9NSDecimala__exponent_getter(v129);
            if ((v59 & 0x80000000) == 0)
            {
              v60 = v59 + 1;
              while (--v60)
              {
                v61 = (v37 * 0xAuLL) >> 64;
                v37 *= 10;
                if (v61)
                {
                  goto LABEL_288;
                }
              }

              goto LABEL_259;
            }

LABEL_322:
            __break(1u);
LABEL_323:
            __break(1u);
LABEL_324:
            __break(1u);
LABEL_325:
            __break(1u);
LABEL_326:
            __break(1u);
LABEL_327:
            __break(1u);
LABEL_328:
            __break(1u);
LABEL_329:
            __break(1u);
LABEL_330:
            __break(1u);
LABEL_331:
            __break(1u);
LABEL_332:
            __break(1u);
LABEL_333:
            __break(1u);
LABEL_334:
            __break(1u);
LABEL_335:
            __break(1u);
LABEL_336:
            __break(1u);
LABEL_337:
            __break(1u);
LABEL_338:
            __break(1u);
LABEL_339:
            __break(1u);
LABEL_340:
            __break(1u);
LABEL_341:
            __break(1u);
LABEL_342:
            __break(1u);
LABEL_343:
            __break(1u);
LABEL_344:
            __break(1u);
LABEL_345:
            __break(1u);
          }

          LODWORD(v129[0]) = v58;
          WORD2(v129[0]) = v57;
          HIWORD(v129[0]) = a4;
          LOWORD(v129[1]) = a6;
          WORD1(v129[1]) = v8;
          WORD2(v129[1]) = v7;
          HIWORD(v129[1]) = v126;
          LOWORD(v130) = v14;
          HIWORD(v130) = a3;
          v111 = _So9NSDecimala__exponent_getter(v129);
          if (v111 > 0)
          {
            goto LABEL_329;
          }

          if (v111)
          {
            if (!__CFADD__(v111, -v111 & ~(-v111 >> 31)))
            {
              goto LABEL_333;
            }

            do
            {
              v37 /= 0xAuLL;
            }

            while (!__CFADD__(v111++, 1));
          }

LABEL_259:
          if (isNegative_getter)
          {
            if (v37 >> 15)
            {
              goto LABEL_288;
            }

            return -v37;
          }

          else if (v37 >> 15)
          {
            goto LABEL_288;
          }

          return v37;
        }

        goto LABEL_314;
      }

LABEL_288:
      v122 = static String._fromUTF8Repairing(_:)();
      v37 = v123;
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      *v48 = v122;
      *(v48 + 8) = v37;
      *(v48 + 16) = 0u;
      *(v48 + 32) = 0u;
      v49 = 11;
      goto LABEL_289;
    }
  }

  v20 = specialized BufferView.suffix(from:)(a6, a2, a3);
  v22 = &v20[v21];
  if ((v14 & 1) == 0)
  {
    if (v21 >= 1)
    {
      v33 = 0;
      v34 = v21;
      v35 = v20;
      v36 = v20;
      while ((v33 & 0x8000000000000000) == 0)
      {
        v32 = v34-- < 1;
        if (v32)
        {
          break;
        }

        if (*v36 - 58 >= 0xFFFFFFF6)
        {
          ++v36;
          ++v35;
          ++v33;
          if (v36 < v22)
          {
            continue;
          }
        }

        goto LABEL_80;
      }

      goto LABEL_301;
    }

    v35 = v20;
    v36 = v20;
LABEL_80:
    if (v36 >= v22)
    {
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
      goto LABEL_297;
    }

    v50 = 0;
    v51 = 0;
    v52 = v35 - v20;
    v53 = (&v20[v21] - v35);
    v54 = &v20[v21] - v36;
    while (1)
    {
      if (v36 - v20 + v50 < 0)
      {
        goto LABEL_296;
      }

      v32 = v54-- < 1;
      if (v32)
      {
        goto LABEL_296;
      }

      v26 = v36[v50];
      if (v26 - 58 >= 0xFFFFFFF6)
      {
        v31 = __OFADD__(v52++, 1);
        if (v31)
        {
          goto LABEL_299;
        }
      }

      else if (v36[v50] <= 0x2Du)
      {
        if (v26 != 43 && v26 != 45)
        {
LABEL_198:
          v91 = &v36[v50];
          if (&v36[v50] < a4)
          {
            goto LABEL_323;
          }

          v92 = a4 + a5;
          if (a4 + a5 < v91)
          {
            goto LABEL_323;
          }

          if (v92 >= &v36[v50 + 1])
          {
            v92 = &v36[v50 + 1];
          }

          if (v92 <= a4)
          {
            goto LABEL_223;
          }

          v93 = a5 + a4;
          v37 = 1;
          v94 = a4;
          while (1)
          {
LABEL_204:
            v95 = 0;
            v96 = 0;
            v97 = v93 - v94;
            while (1)
            {
              if ((v94 - a4 + v96) < 0 || (v97 + v95) < 1)
              {
                goto LABEL_308;
              }

              v98 = *(v94 + v96);
              if (v98 == 10)
              {
                v31 = __OFADD__(v37++, 1);
                if (v31)
                {
                  goto LABEL_334;
                }

                v94 += v96 + 1;
                if (v94 >= v92)
                {
                  goto LABEL_222;
                }

                goto LABEL_204;
              }

              if (v98 == 13)
              {
                break;
              }

              a3 = v96 + 1;
              if (__OFADD__(v96, 1))
              {
                goto LABEL_310;
              }

              ++v96;
              --v95;
              if (v94 + v96 >= v92)
              {
                goto LABEL_225;
              }
            }

            v99 = v94 + v96;
            if (v91 >= v94 + v96 + 1)
            {
              if (((v94 - a4 + v96 + 1) & 0x8000000000000000) != 0 || (~v96 + v97) < 1)
              {
                goto LABEL_343;
              }

              if (*(v99 + 1) == 10)
              {
                v99 = v94 + v96 + 1;
              }
            }

            v31 = __OFADD__(v37++, 1);
            if (v31)
            {
              goto LABEL_335;
            }

            v94 = v99 + 1;
            if (v99 + 1 >= v92)
            {
LABEL_222:
              a3 = 0;
LABEL_225:
              v100 = &v36[v50 - a4];
              v101 = v26;
              lazy protocol witness table accessor for type JSONError and conformance JSONError();
              swift_allocError();
              *v48 = xmmword_181237560;
              *(v48 + 16) = v101;
              *(v48 + 24) = v37;
              *(v48 + 32) = a3;
              *(v48 + 40) = v100;
              v49 = 1;
              goto LABEL_289;
            }
          }
        }

        if (v52 || v51 != 2)
        {
          v74 = &v36[v50];
          if (&v36[v50] >= a4)
          {
            v75 = a4 + a5;
            if (a4 + a5 >= v74)
            {
              if (v75 >= &v36[v50 + 1])
              {
                v75 = &v36[v50 + 1];
              }

              if (v75 <= a4)
              {
                goto LABEL_223;
              }

              v76 = a5 + a4;
              v37 = 1;
              v77 = a4;
              while (1)
              {
LABEL_154:
                v78 = 0;
                v79 = 0;
                v80 = v76 - v77;
                while (1)
                {
                  if ((v77 - a4 + v79) < 0 || (v80 + v78) < 1)
                  {
                    goto LABEL_303;
                  }

                  v81 = *(v77 + v79);
                  if (v81 == 10)
                  {
                    v31 = __OFADD__(v37++, 1);
                    if (v31)
                    {
                      goto LABEL_326;
                    }

                    v77 += v79 + 1;
                    if (v77 >= v75)
                    {
                      goto LABEL_222;
                    }

                    goto LABEL_154;
                  }

                  if (v81 == 13)
                  {
                    break;
                  }

                  a3 = v79 + 1;
                  if (__OFADD__(v79, 1))
                  {
                    goto LABEL_305;
                  }

                  ++v79;
                  --v78;
                  if (v77 + v79 >= v75)
                  {
                    goto LABEL_225;
                  }
                }

                v82 = v77 + v79;
                if (v74 >= v77 + v79 + 1)
                {
                  if (((v77 - a4 + v79 + 1) & 0x8000000000000000) != 0 || (~v79 + v80) < 1)
                  {
                    goto LABEL_338;
                  }

                  if (*(v82 + 1) == 10)
                  {
                    v82 = v77 + v79 + 1;
                  }
                }

                v31 = __OFADD__(v37++, 1);
                if (v31)
                {
                  goto LABEL_328;
                }

                v77 = v82 + 1;
                if (v82 + 1 >= v75)
                {
                  goto LABEL_222;
                }
              }
            }
          }

LABEL_320:
          __break(1u);
          goto LABEL_321;
        }

        v52 = 0;
        v51 = 3;
      }

      else if (v26 == 101 || v26 == 69)
      {
        if (v52 < 1 || v51 >= 2)
        {
          goto LABEL_123;
        }

        v52 = 0;
        v51 = 2;
      }

      else
      {
        if (v26 != 46)
        {
          goto LABEL_198;
        }

        if (v52 < 1 || v51)
        {
          v102 = &v36[v50];
          if (&v36[v50] < a4 || a4 + a5 < v102)
          {
            goto LABEL_324;
          }

          if (a4 + a5 >= &v36[v50 + 1])
          {
            v103 = &v36[v50 + 1];
          }

          else
          {
            v103 = a4 + a5;
          }

          if (v103 > a4)
          {
            v104 = a5 + a4;
            v37 = 1;
            v105 = a4;
            while (1)
            {
              v106 = 0;
              v107 = 0;
              v108 = v104 - v105;
              while (1)
              {
                if ((v105 - a4 + v107) < 0 || (v108 + v106) < 1)
                {
                  goto LABEL_309;
                }

                v109 = *(v105 + v107);
                if (v109 == 10)
                {
                  break;
                }

                if (v109 == 13)
                {
                  v110 = v105 + v107;
                  if (v102 >= v105 + v107 + 1)
                  {
                    if (((v105 - a4 + v107 + 1) & 0x8000000000000000) != 0 || (~v107 + v108) < 1)
                    {
                      goto LABEL_344;
                    }

                    if (*(v110 + 1) == 10)
                    {
                      v110 = v105 + v107 + 1;
                    }
                  }

                  v31 = __OFADD__(v37++, 1);
                  if (v31)
                  {
                    goto LABEL_339;
                  }

                  a3 = 0;
                  v105 = v110 + 1;
                  goto LABEL_250;
                }

                a3 = v107 + 1;
                if (__OFADD__(v107, 1))
                {
                  goto LABEL_311;
                }

                ++v107;
                --v106;
                if (v105 + v107 >= v103)
                {
                  v26 = 46;
                  goto LABEL_225;
                }
              }

              v31 = __OFADD__(v37++, 1);
              if (v31)
              {
                goto LABEL_336;
              }

              a3 = 0;
              v105 += v107 + 1;
LABEL_250:
              v26 = 46;
              if (v105 >= v103)
              {
                goto LABEL_225;
              }
            }
          }

          a3 = 0;
          v26 = 46;
          goto LABEL_224;
        }

        v52 = 0;
        v51 = 1;
      }

      if (v53 == ++v50)
      {
        goto LABEL_295;
      }
    }
  }

  if (v21 < 1)
  {
    __break(1u);
LABEL_316:
    __break(1u);
    goto LABEL_317;
  }

  v23 = *v20;
  if (v23 == 45 || (v8 = v20, v23 == 43))
  {
    v8 = v20 + 1;
  }

  if (v22 < v8)
  {
    goto LABEL_316;
  }

  a6 = v8 - v20;
  if (v8 - v20 < 0)
  {
LABEL_317:
    __break(1u);
    goto LABEL_318;
  }

  a3 = v22 - v8;
  if (v22 - v8 < 0)
  {
LABEL_318:
    __break(1u);
LABEL_319:
    __break(1u);
    goto LABEL_320;
  }

  v14 = v21;
  v24 = v20;
  if (a3 >= 2)
  {
    v25 = 2;
  }

  else
  {
    v25 = v22 - v8;
  }

  if (!_stringshims_strncasecmp_clocale(v8, "0x", v25))
  {
    v36 = v8 + 2;
    v50 = v22 - (v8 + 2);
    if (v50 >= 1 && v36 < v22)
    {
      v50 = v36 - v24;
      if (((v36 - v24) & 0x8000000000000000) == 0)
      {
        a3 = &v8[-a4 + 2];
        v50 = &v24[v14] - v8 - 3;
        v62 = a6 + 3;
        v26 = 1;
        while (1)
        {
          v63 = v62;
          LOWORD(v14) = *v36;
          if ((v14 - 58) <= 0xF5u && (*v36 - 65 > 0x25 || ((1 << (v14 - 65)) & 0x3F0000003FLL) == 0))
          {
            break;
          }

          v32 = v50-- < 1;
          if (!v32 && ++v36 < v22)
          {
            ++a3;
            ++v62;
            if ((v63 & 0x8000000000000000) == 0)
            {
              continue;
            }
          }

          goto LABEL_122;
        }

        if (v36 >= a4)
        {
          v83 = a4 + a5;
          if (a4 + a5 >= v36)
          {
            if (v83 >= (v36 + 1))
            {
              v83 = (v36 + 1);
            }

            if (v83 <= a4)
            {
              v22 = 0;
              a6 = 0xED00007265626D75;
              v47 = 0x6E20786568206E69;
              v37 = 1;
              goto LABEL_78;
            }

            v84 = a5 + a4;
            v85 = -a4;
            v37 = 1;
            a6 = 0xED00007265626D75;
            v47 = 0x6E20786568206E69;
            while (1)
            {
              v86 = 0;
              v87 = 0;
              v88 = v84 - a4;
              while (1)
              {
                if ((v85 + a4 + v87) < 0 || (v88 + v86) < 1)
                {
                  goto LABEL_306;
                }

                v89 = *(a4 + v87);
                if (v89 == 10)
                {
                  break;
                }

                if (v89 == 13)
                {
                  v90 = a4 + v87;
                  if (v36 >= a4 + v87 + 1)
                  {
                    if (((v85 + a4 + v87 + 1) & 0x8000000000000000) != 0 || (~v87 + v88) < 1)
                    {
                      goto LABEL_340;
                    }

                    if (*(v90 + 1) == 10)
                    {
                      v90 = a4 + v87 + 1;
                    }
                  }

                  v31 = __OFADD__(v37++, 1);
                  if (v31)
                  {
                    goto LABEL_331;
                  }

                  a4 = v90 + 1;
                  goto LABEL_196;
                }

                v22 = (v87 + 1);
                if (__OFADD__(v87, 1))
                {
                  goto LABEL_307;
                }

                ++v87;
                --v86;
                if (a4 + v87 >= v83)
                {
                  goto LABEL_78;
                }
              }

              v31 = __OFADD__(v37++, 1);
              if (v31)
              {
                goto LABEL_330;
              }

              a4 += v87 + 1;
LABEL_196:
              if (a4 >= v83)
              {
                v22 = 0;
                goto LABEL_78;
              }
            }
          }
        }

LABEL_321:
        __break(1u);
        goto LABEL_322;
      }
    }

LABEL_122:
    __break(1u);
LABEL_123:
    v65 = &v36[v50];
    if (&v36[v50] >= a4)
    {
      v66 = a4 + a5;
      if (a4 + a5 >= v65)
      {
        if (v66 >= &v36[v50 + 1])
        {
          v66 = &v36[v50 + 1];
        }

        if (v66 > a4)
        {
          v67 = a5 + a4;
          v37 = 1;
          v68 = a4;
          while (1)
          {
            while (1)
            {
              v69 = 0;
              v70 = 0;
              v71 = v67 - v68;
LABEL_130:
              if ((v68 - a4 + v70) < 0 || (v71 + v69) < 1)
              {
                goto LABEL_302;
              }

              v72 = *(v68 + v70);
              if (v72 != 10)
              {
                break;
              }

              v31 = __OFADD__(v37++, 1);
              if (v31)
              {
                goto LABEL_325;
              }

              v68 += v70 + 1;
              if (v68 >= v66)
              {
                goto LABEL_222;
              }
            }

            if (v72 != 13)
            {
              a3 = v70 + 1;
              if (__OFADD__(v70, 1))
              {
                goto LABEL_304;
              }

              ++v70;
              --v69;
              if (v68 + v70 >= v66)
              {
                goto LABEL_225;
              }

              goto LABEL_130;
            }

            v73 = v68 + v70;
            if (v65 >= v68 + v70 + 1)
            {
              if (((v68 - a4 + v70 + 1) & 0x8000000000000000) != 0 || (~v70 + v71) < 1)
              {
                goto LABEL_337;
              }

              if (*(v73 + 1) == 10)
              {
                v73 = v68 + v70 + 1;
              }
            }

            v31 = __OFADD__(v37++, 1);
            if (v31)
            {
              goto LABEL_327;
            }

            v68 = v73 + 1;
            if (v73 + 1 >= v66)
            {
              goto LABEL_222;
            }
          }
        }

LABEL_223:
        a3 = 0;
LABEL_224:
        v37 = 1;
        goto LABEL_225;
      }
    }

    goto LABEL_319;
  }

  if (v8 >= v22)
  {
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
    v55 = v22;
    v37 = 0;
    v42 = v126;
    v56 = v127;
    goto LABEL_104;
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = v22 - v8;
  while (1)
  {
    if ((a6 + v27) < 0)
    {
      goto LABEL_298;
    }

    v32 = v30-- < 1;
    if (v32)
    {
      goto LABEL_298;
    }

    LODWORD(v14) = v8[v27];
    if ((v14 - 58) > 0xF5u)
    {
      v31 = __OFADD__(v29++, 1);
      if (v31)
      {
        goto LABEL_300;
      }

      goto LABEL_27;
    }

    if (v8[v27] > 0x2Du)
    {
      break;
    }

    if (v14 != 43 && v14 != 45 || v29 || v28 != 2)
    {
LABEL_76:
      v37 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(&v8[v27], a4, a5);
      v22 = v45;
      a3 = v46;
      goto LABEL_77;
    }

    v29 = 0;
    v28 = 3;
LABEL_27:
    if (a3 == ++v27)
    {
      goto LABEL_297;
    }
  }

  if (v14 == 101 || v14 == 69)
  {
    if (v28 != 1 && (v28 || v29 <= 0))
    {
      goto LABEL_76;
    }

    v29 = 0;
    v28 = 2;
    goto LABEL_27;
  }

  if (v14 != 46)
  {
    goto LABEL_76;
  }

  if (!v28)
  {
    v29 = 0;
    v28 = 1;
    goto LABEL_27;
  }

  v113 = &v8[v27];
  if (&v8[v27] < a4)
  {
    goto LABEL_332;
  }

  v114 = a4 + a5;
  if (a4 + a5 < v113)
  {
    goto LABEL_332;
  }

  if (v114 >= &v8[v27 + 1])
  {
    v114 = &v8[v27 + 1];
  }

  if (v114 <= a4)
  {
    v22 = 0;
    v37 = 1;
  }

  else
  {
    v115 = a5 + a4;
    v37 = 1;
    v116 = a4;
    do
    {
      v117 = 0;
      v118 = 0;
      v119 = v115 - v116;
      while (1)
      {
        if ((v116 - a4 + v118) < 0 || (v119 + v117) < 1)
        {
          goto LABEL_312;
        }

        v120 = *(v116 + v118);
        if (v120 == 10)
        {
          v31 = __OFADD__(v37++, 1);
          if (v31)
          {
            goto LABEL_341;
          }

          v116 += v118 + 1;
          goto LABEL_285;
        }

        if (v120 == 13)
        {
          break;
        }

        v22 = (v118 + 1);
        if (__OFADD__(v118, 1))
        {
          goto LABEL_313;
        }

        ++v118;
        --v117;
        if (v116 + v118 >= v114)
        {
          goto LABEL_294;
        }
      }

      v121 = v116 + v118;
      if (v113 >= v116 + v118 + 1)
      {
        if (((v116 - a4 + v118 + 1) & 0x8000000000000000) != 0 || (~v118 + v119) < 1)
        {
          goto LABEL_345;
        }

        if (*(v121 + 1) == 10)
        {
          v121 = v116 + v118 + 1;
        }
      }

      v31 = __OFADD__(v37++, 1);
      if (v31)
      {
        goto LABEL_342;
      }

      v116 = v121 + 1;
LABEL_285:
      ;
    }

    while (v116 < v114);
    v22 = 0;
  }

LABEL_294:
  a3 = &v8[v27 - a4];
  LOBYTE(v14) = 46;
LABEL_77:
  a6 = 0xE900000000000072;
  v47 = 0x65626D756E206E69;
LABEL_78:
  lazy protocol witness table accessor for type JSONError and conformance JSONError();
  swift_allocError();
  *v48 = v47;
  *(v48 + 8) = a6;
  *(v48 + 16) = v14;
  *(v48 + 24) = v37;
  *(v48 + 32) = v22;
  *(v48 + 40) = a3;
  v49 = 1;
LABEL_289:
  *(v48 + 48) = v49;
  swift_willThrow();
  return v37;
}

{
  LOWORD(v8) = v6;
  LOWORD(v14) = a1;
  v135 = *MEMORY[0x1E69E9840];
  v129[0] = 0;
  v15 = _stringshims_strtod_clocale(a2, v129);
  if (v129[0])
  {
    v16 = &a2[a3] == v129[0];
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v19 = v15;
    if (!_ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5Int32V_SdTt1g5(v129, v15) || (BYTE4(v129[0]) & 1) != 0)
    {
      goto LABEL_288;
    }

    if (fabs(v19) < 9.00719925e15)
    {
      return LODWORD(v129[0]);
    }
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd) == MEMORY[0x1E69E6108])
  {
    specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a2, a3, 0x2EuLL, 0xE100000000000000, 1, v131);
    if (v132 != 1)
    {
      a6 = v131[1];
      v17 = v131[2];
      v18 = v131[0];
      goto LABEL_56;
    }
  }

  else
  {
    specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a2, a3, 46, 0xE100000000000000, 1, v133);
    if ((v134 & 1) == 0)
    {
      a6 = v133[1];
      v17 = v133[2];
      v18 = v133[0];
LABEL_56:
      v129[0] = v18;
      v22 = (v18 >> 32);
      a4 = v18 >> 48;
      v129[1] = a6;
      v7 = HIDWORD(a6);
      a3 = v17 >> 16;
      v130 = v17;
      isNegative_getter = _So9NSDecimala__isNegative_getter(v129);
      v127 = v18;
      LODWORD(v129[0]) = v18;
      v8 = (a6 >> 16);
      WORD2(v129[0]) = v22;
      HIWORD(v129[0]) = a4;
      v129[1] = a6;
      v130 = v17;
      LOWORD(v14) = v17;
      if (_So9NSDecimala__length_getter(v129) || !isNegative_getter)
      {
        LODWORD(v129[0]) = v127;
        WORD2(v129[0]) = v22;
        HIWORD(v129[0]) = a4;
        v129[1] = a6;
        v126 = HIWORD(a6);
        v130 = v17;
        v38 = _So9NSDecimala__length_getter(v129);
        if (v38)
        {
          v39 = v38 - 1;
          if (v38 == 1)
          {
            v44 = 0;
            v42 = HIWORD(a6);
            goto LABEL_103;
          }

          v40 = 0;
          v41 = 0;
          v42 = HIWORD(a6);
          do
          {
            if (v39 + 1 <= 4)
            {
              LOWORD(v43) = a4;
              if (v39 != 1)
              {
                LOWORD(v43) = a6;
                if (v39 != 2)
                {
                  v43 = a6 >> 16;
                  if (v39 != 3)
                  {
LABEL_346:
                    strcpy(v129, "Invalid index ");
                    HIBYTE(v129[1]) = -18;
                    v125 = dispatch thunk of CustomStringConvertible.description.getter();
                    MEMORY[0x1865CB0E0](v125);

                    MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
                    result = _assertionFailure(_:_:file:line:flags:)();
                    __break(1u);
                    return result;
                  }
                }
              }
            }

            else if (v39 + 1 > 6)
            {
              LOWORD(v43) = v17;
              if (v39 != 6)
              {
                v43 = v17 >> 16;
                if (v39 != 7)
                {
                  goto LABEL_346;
                }
              }
            }

            else
            {
              v43 = HIDWORD(a6);
              if (v39 != 4)
              {
                LOWORD(v43) = HIWORD(a6);
                if (v39 != 5)
                {
                  goto LABEL_346;
                }
              }
            }

            if (v40)
            {
              goto LABEL_288;
            }

            v44 = (v43 | v41) << 16;
            v40 = HIWORD(v41) != 0;
            v41 = v44;
            --v39;
          }

          while (v39);
          if (v40)
          {
            goto LABEL_288;
          }

LABEL_103:
          v55 = v22;
          v56 = v127;
          v37 = v44 | WORD2(v127);
LABEL_104:
          LODWORD(v129[0]) = v56;
          v57 = v55;
          WORD2(v129[0]) = v55;
          HIWORD(v129[0]) = a4;
          LOWORD(v129[1]) = a6;
          WORD1(v129[1]) = v8;
          WORD2(v129[1]) = v7;
          HIWORD(v129[1]) = v42;
          LOWORD(v130) = v14;
          HIWORD(v130) = a3;
          v58 = v56;
          if ((_So9NSDecimala__exponent_getter(v129) & 0x80000000) == 0)
          {
            LODWORD(v129[0]) = v58;
            WORD2(v129[0]) = v57;
            HIWORD(v129[0]) = a4;
            LOWORD(v129[1]) = a6;
            WORD1(v129[1]) = v8;
            WORD2(v129[1]) = v7;
            HIWORD(v129[1]) = v126;
            LOWORD(v130) = v14;
            HIWORD(v130) = a3;
            v59 = _So9NSDecimala__exponent_getter(v129);
            if ((v59 & 0x80000000) == 0)
            {
              v60 = v59 + 1;
              while (--v60)
              {
                v61 = (v37 * 0xAuLL) >> 64;
                v37 *= 10;
                if (v61)
                {
                  goto LABEL_288;
                }
              }

              goto LABEL_259;
            }

LABEL_322:
            __break(1u);
LABEL_323:
            __break(1u);
LABEL_324:
            __break(1u);
LABEL_325:
            __break(1u);
LABEL_326:
            __break(1u);
LABEL_327:
            __break(1u);
LABEL_328:
            __break(1u);
LABEL_329:
            __break(1u);
LABEL_330:
            __break(1u);
LABEL_331:
            __break(1u);
LABEL_332:
            __break(1u);
LABEL_333:
            __break(1u);
LABEL_334:
            __break(1u);
LABEL_335:
            __break(1u);
LABEL_336:
            __break(1u);
LABEL_337:
            __break(1u);
LABEL_338:
            __break(1u);
LABEL_339:
            __break(1u);
LABEL_340:
            __break(1u);
LABEL_341:
            __break(1u);
LABEL_342:
            __break(1u);
LABEL_343:
            __break(1u);
LABEL_344:
            __break(1u);
LABEL_345:
            __break(1u);
          }

          LODWORD(v129[0]) = v58;
          WORD2(v129[0]) = v57;
          HIWORD(v129[0]) = a4;
          LOWORD(v129[1]) = a6;
          WORD1(v129[1]) = v8;
          WORD2(v129[1]) = v7;
          HIWORD(v129[1]) = v126;
          LOWORD(v130) = v14;
          HIWORD(v130) = a3;
          v111 = _So9NSDecimala__exponent_getter(v129);
          if (v111 > 0)
          {
            goto LABEL_329;
          }

          if (v111)
          {
            if (!__CFADD__(v111, -v111 & ~(-v111 >> 31)))
            {
              goto LABEL_333;
            }

            do
            {
              v37 /= 0xAuLL;
            }

            while (!__CFADD__(v111++, 1));
          }

LABEL_259:
          if (isNegative_getter)
          {
            if (v37 >> 31)
            {
              goto LABEL_288;
            }

            return -v37;
          }

          else if (v37 >> 31)
          {
            goto LABEL_288;
          }

          return v37;
        }

        goto LABEL_314;
      }

LABEL_288:
      v122 = static String._fromUTF8Repairing(_:)();
      v37 = v123;
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      *v48 = v122;
      *(v48 + 8) = v37;
      *(v48 + 16) = 0u;
      *(v48 + 32) = 0u;
      v49 = 11;
      goto LABEL_289;
    }
  }

  v20 = specialized BufferView.suffix(from:)(a6, a2, a3);
  v22 = &v20[v21];
  if ((v14 & 1) == 0)
  {
    if (v21 >= 1)
    {
      v33 = 0;
      v34 = v21;
      v35 = v20;
      v36 = v20;
      while ((v33 & 0x8000000000000000) == 0)
      {
        v32 = v34-- < 1;
        if (v32)
        {
          break;
        }

        if (*v36 - 58 >= 0xFFFFFFF6)
        {
          ++v36;
          ++v35;
          ++v33;
          if (v36 < v22)
          {
            continue;
          }
        }

        goto LABEL_80;
      }

      goto LABEL_301;
    }

    v35 = v20;
    v36 = v20;
LABEL_80:
    if (v36 >= v22)
    {
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
      goto LABEL_297;
    }

    v50 = 0;
    v51 = 0;
    v52 = v35 - v20;
    v53 = (&v20[v21] - v35);
    v54 = &v20[v21] - v36;
    while (1)
    {
      if (v36 - v20 + v50 < 0)
      {
        goto LABEL_296;
      }

      v32 = v54-- < 1;
      if (v32)
      {
        goto LABEL_296;
      }

      v26 = v36[v50];
      if (v26 - 58 >= 0xFFFFFFF6)
      {
        v31 = __OFADD__(v52++, 1);
        if (v31)
        {
          goto LABEL_299;
        }
      }

      else if (v36[v50] <= 0x2Du)
      {
        if (v26 != 43 && v26 != 45)
        {
LABEL_198:
          v91 = &v36[v50];
          if (&v36[v50] < a4)
          {
            goto LABEL_323;
          }

          v92 = a4 + a5;
          if (a4 + a5 < v91)
          {
            goto LABEL_323;
          }

          if (v92 >= &v36[v50 + 1])
          {
            v92 = &v36[v50 + 1];
          }

          if (v92 <= a4)
          {
            goto LABEL_223;
          }

          v93 = a5 + a4;
          v37 = 1;
          v94 = a4;
          while (1)
          {
LABEL_204:
            v95 = 0;
            v96 = 0;
            v97 = v93 - v94;
            while (1)
            {
              if ((v94 - a4 + v96) < 0 || (v97 + v95) < 1)
              {
                goto LABEL_308;
              }

              v98 = *(v94 + v96);
              if (v98 == 10)
              {
                v31 = __OFADD__(v37++, 1);
                if (v31)
                {
                  goto LABEL_334;
                }

                v94 += v96 + 1;
                if (v94 >= v92)
                {
                  goto LABEL_222;
                }

                goto LABEL_204;
              }

              if (v98 == 13)
              {
                break;
              }

              a3 = v96 + 1;
              if (__OFADD__(v96, 1))
              {
                goto LABEL_310;
              }

              ++v96;
              --v95;
              if (v94 + v96 >= v92)
              {
                goto LABEL_225;
              }
            }

            v99 = v94 + v96;
            if (v91 >= v94 + v96 + 1)
            {
              if (((v94 - a4 + v96 + 1) & 0x8000000000000000) != 0 || (~v96 + v97) < 1)
              {
                goto LABEL_343;
              }

              if (*(v99 + 1) == 10)
              {
                v99 = v94 + v96 + 1;
              }
            }

            v31 = __OFADD__(v37++, 1);
            if (v31)
            {
              goto LABEL_335;
            }

            v94 = v99 + 1;
            if (v99 + 1 >= v92)
            {
LABEL_222:
              a3 = 0;
LABEL_225:
              v100 = &v36[v50 - a4];
              v101 = v26;
              lazy protocol witness table accessor for type JSONError and conformance JSONError();
              swift_allocError();
              *v48 = xmmword_181237560;
              *(v48 + 16) = v101;
              *(v48 + 24) = v37;
              *(v48 + 32) = a3;
              *(v48 + 40) = v100;
              v49 = 1;
              goto LABEL_289;
            }
          }
        }

        if (v52 || v51 != 2)
        {
          v74 = &v36[v50];
          if (&v36[v50] >= a4)
          {
            v75 = a4 + a5;
            if (a4 + a5 >= v74)
            {
              if (v75 >= &v36[v50 + 1])
              {
                v75 = &v36[v50 + 1];
              }

              if (v75 <= a4)
              {
                goto LABEL_223;
              }

              v76 = a5 + a4;
              v37 = 1;
              v77 = a4;
              while (1)
              {
LABEL_154:
                v78 = 0;
                v79 = 0;
                v80 = v76 - v77;
                while (1)
                {
                  if ((v77 - a4 + v79) < 0 || (v80 + v78) < 1)
                  {
                    goto LABEL_303;
                  }

                  v81 = *(v77 + v79);
                  if (v81 == 10)
                  {
                    v31 = __OFADD__(v37++, 1);
                    if (v31)
                    {
                      goto LABEL_326;
                    }

                    v77 += v79 + 1;
                    if (v77 >= v75)
                    {
                      goto LABEL_222;
                    }

                    goto LABEL_154;
                  }

                  if (v81 == 13)
                  {
                    break;
                  }

                  a3 = v79 + 1;
                  if (__OFADD__(v79, 1))
                  {
                    goto LABEL_305;
                  }

                  ++v79;
                  --v78;
                  if (v77 + v79 >= v75)
                  {
                    goto LABEL_225;
                  }
                }

                v82 = v77 + v79;
                if (v74 >= v77 + v79 + 1)
                {
                  if (((v77 - a4 + v79 + 1) & 0x8000000000000000) != 0 || (~v79 + v80) < 1)
                  {
                    goto LABEL_338;
                  }

                  if (*(v82 + 1) == 10)
                  {
                    v82 = v77 + v79 + 1;
                  }
                }

                v31 = __OFADD__(v37++, 1);
                if (v31)
                {
                  goto LABEL_328;
                }

                v77 = v82 + 1;
                if (v82 + 1 >= v75)
                {
                  goto LABEL_222;
                }
              }
            }
          }

LABEL_320:
          __break(1u);
          goto LABEL_321;
        }

        v52 = 0;
        v51 = 3;
      }

      else if (v26 == 101 || v26 == 69)
      {
        if (v52 < 1 || v51 >= 2)
        {
          goto LABEL_123;
        }

        v52 = 0;
        v51 = 2;
      }

      else
      {
        if (v26 != 46)
        {
          goto LABEL_198;
        }

        if (v52 < 1 || v51)
        {
          v102 = &v36[v50];
          if (&v36[v50] < a4 || a4 + a5 < v102)
          {
            goto LABEL_324;
          }

          if (a4 + a5 >= &v36[v50 + 1])
          {
            v103 = &v36[v50 + 1];
          }

          else
          {
            v103 = a4 + a5;
          }

          if (v103 > a4)
          {
            v104 = a5 + a4;
            v37 = 1;
            v105 = a4;
            while (1)
            {
              v106 = 0;
              v107 = 0;
              v108 = v104 - v105;
              while (1)
              {
                if ((v105 - a4 + v107) < 0 || (v108 + v106) < 1)
                {
                  goto LABEL_309;
                }

                v109 = *(v105 + v107);
                if (v109 == 10)
                {
                  break;
                }

                if (v109 == 13)
                {
                  v110 = v105 + v107;
                  if (v102 >= v105 + v107 + 1)
                  {
                    if (((v105 - a4 + v107 + 1) & 0x8000000000000000) != 0 || (~v107 + v108) < 1)
                    {
                      goto LABEL_344;
                    }

                    if (*(v110 + 1) == 10)
                    {
                      v110 = v105 + v107 + 1;
                    }
                  }

                  v31 = __OFADD__(v37++, 1);
                  if (v31)
                  {
                    goto LABEL_339;
                  }

                  a3 = 0;
                  v105 = v110 + 1;
                  goto LABEL_250;
                }

                a3 = v107 + 1;
                if (__OFADD__(v107, 1))
                {
                  goto LABEL_311;
                }

                ++v107;
                --v106;
                if (v105 + v107 >= v103)
                {
                  v26 = 46;
                  goto LABEL_225;
                }
              }

              v31 = __OFADD__(v37++, 1);
              if (v31)
              {
                goto LABEL_336;
              }

              a3 = 0;
              v105 += v107 + 1;
LABEL_250:
              v26 = 46;
              if (v105 >= v103)
              {
                goto LABEL_225;
              }
            }
          }

          a3 = 0;
          v26 = 46;
          goto LABEL_224;
        }

        v52 = 0;
        v51 = 1;
      }

      if (v53 == ++v50)
      {
        goto LABEL_295;
      }
    }
  }

  if (v21 < 1)
  {
    __break(1u);
LABEL_316:
    __break(1u);
    goto LABEL_317;
  }

  v23 = *v20;
  if (v23 == 45 || (v8 = v20, v23 == 43))
  {
    v8 = v20 + 1;
  }

  if (v22 < v8)
  {
    goto LABEL_316;
  }

  a6 = v8 - v20;
  if (v8 - v20 < 0)
  {
LABEL_317:
    __break(1u);
    goto LABEL_318;
  }

  a3 = v22 - v8;
  if (v22 - v8 < 0)
  {
LABEL_318:
    __break(1u);
LABEL_319:
    __break(1u);
    goto LABEL_320;
  }

  v14 = v21;
  v24 = v20;
  if (a3 >= 2)
  {
    v25 = 2;
  }

  else
  {
    v25 = v22 - v8;
  }

  if (!_stringshims_strncasecmp_clocale(v8, "0x", v25))
  {
    v36 = v8 + 2;
    v50 = v22 - (v8 + 2);
    if (v50 >= 1 && v36 < v22)
    {
      v50 = v36 - v24;
      if (((v36 - v24) & 0x8000000000000000) == 0)
      {
        a3 = &v8[-a4 + 2];
        v50 = &v24[v14] - v8 - 3;
        v62 = a6 + 3;
        v26 = 1;
        while (1)
        {
          v63 = v62;
          LOWORD(v14) = *v36;
          if ((v14 - 58) <= 0xF5u && (*v36 - 65 > 0x25 || ((1 << (v14 - 65)) & 0x3F0000003FLL) == 0))
          {
            break;
          }

          v32 = v50-- < 1;
          if (!v32 && ++v36 < v22)
          {
            ++a3;
            ++v62;
            if ((v63 & 0x8000000000000000) == 0)
            {
              continue;
            }
          }

          goto LABEL_122;
        }

        if (v36 >= a4)
        {
          v83 = a4 + a5;
          if (a4 + a5 >= v36)
          {
            if (v83 >= (v36 + 1))
            {
              v83 = (v36 + 1);
            }

            if (v83 <= a4)
            {
              v22 = 0;
              a6 = 0xED00007265626D75;
              v47 = 0x6E20786568206E69;
              v37 = 1;
              goto LABEL_78;
            }

            v84 = a5 + a4;
            v85 = -a4;
            v37 = 1;
            a6 = 0xED00007265626D75;
            v47 = 0x6E20786568206E69;
            while (1)
            {
              v86 = 0;
              v87 = 0;
              v88 = v84 - a4;
              while (1)
              {
                if ((v85 + a4 + v87) < 0 || (v88 + v86) < 1)
                {
                  goto LABEL_306;
                }

                v89 = *(a4 + v87);
                if (v89 == 10)
                {
                  break;
                }

                if (v89 == 13)
                {
                  v90 = a4 + v87;
                  if (v36 >= a4 + v87 + 1)
                  {
                    if (((v85 + a4 + v87 + 1) & 0x8000000000000000) != 0 || (~v87 + v88) < 1)
                    {
                      goto LABEL_340;
                    }

                    if (*(v90 + 1) == 10)
                    {
                      v90 = a4 + v87 + 1;
                    }
                  }

                  v31 = __OFADD__(v37++, 1);
                  if (v31)
                  {
                    goto LABEL_331;
                  }

                  a4 = v90 + 1;
                  goto LABEL_196;
                }

                v22 = (v87 + 1);
                if (__OFADD__(v87, 1))
                {
                  goto LABEL_307;
                }

                ++v87;
                --v86;
                if (a4 + v87 >= v83)
                {
                  goto LABEL_78;
                }
              }

              v31 = __OFADD__(v37++, 1);
              if (v31)
              {
                goto LABEL_330;
              }

              a4 += v87 + 1;
LABEL_196:
              if (a4 >= v83)
              {
                v22 = 0;
                goto LABEL_78;
              }
            }
          }
        }

LABEL_321:
        __break(1u);
        goto LABEL_322;
      }
    }

LABEL_122:
    __break(1u);
LABEL_123:
    v65 = &v36[v50];
    if (&v36[v50] >= a4)
    {
      v66 = a4 + a5;
      if (a4 + a5 >= v65)
      {
        if (v66 >= &v36[v50 + 1])
        {
          v66 = &v36[v50 + 1];
        }

        if (v66 > a4)
        {
          v67 = a5 + a4;
          v37 = 1;
          v68 = a4;
          while (1)
          {
            while (1)
            {
              v69 = 0;
              v70 = 0;
              v71 = v67 - v68;
LABEL_130:
              if ((v68 - a4 + v70) < 0 || (v71 + v69) < 1)
              {
                goto LABEL_302;
              }

              v72 = *(v68 + v70);
              if (v72 != 10)
              {
                break;
              }

              v31 = __OFADD__(v37++, 1);
              if (v31)
              {
                goto LABEL_325;
              }

              v68 += v70 + 1;
              if (v68 >= v66)
              {
                goto LABEL_222;
              }
            }

            if (v72 != 13)
            {
              a3 = v70 + 1;
              if (__OFADD__(v70, 1))
              {
                goto LABEL_304;
              }

              ++v70;
              --v69;
              if (v68 + v70 >= v66)
              {
                goto LABEL_225;
              }

              goto LABEL_130;
            }

            v73 = v68 + v70;
            if (v65 >= v68 + v70 + 1)
            {
              if (((v68 - a4 + v70 + 1) & 0x8000000000000000) != 0 || (~v70 + v71) < 1)
              {
                goto LABEL_337;
              }

              if (*(v73 + 1) == 10)
              {
                v73 = v68 + v70 + 1;
              }
            }

            v31 = __OFADD__(v37++, 1);
            if (v31)
            {
              goto LABEL_327;
            }

            v68 = v73 + 1;
            if (v73 + 1 >= v66)
            {
              goto LABEL_222;
            }
          }
        }

LABEL_223:
        a3 = 0;
LABEL_224:
        v37 = 1;
        goto LABEL_225;
      }
    }

    goto LABEL_319;
  }

  if (v8 >= v22)
  {
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
    v55 = v22;
    v37 = 0;
    v42 = v126;
    v56 = v127;
    goto LABEL_104;
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = v22 - v8;
  while (1)
  {
    if ((a6 + v27) < 0)
    {
      goto LABEL_298;
    }

    v32 = v30-- < 1;
    if (v32)
    {
      goto LABEL_298;
    }

    LODWORD(v14) = v8[v27];
    if ((v14 - 58) > 0xF5u)
    {
      v31 = __OFADD__(v29++, 1);
      if (v31)
      {
        goto LABEL_300;
      }

      goto LABEL_27;
    }

    if (v8[v27] > 0x2Du)
    {
      break;
    }

    if (v14 != 43 && v14 != 45 || v29 || v28 != 2)
    {
LABEL_76:
      v37 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(&v8[v27], a4, a5);
      v22 = v45;
      a3 = v46;
      goto LABEL_77;
    }

    v29 = 0;
    v28 = 3;
LABEL_27:
    if (a3 == ++v27)
    {
      goto LABEL_297;
    }
  }

  if (v14 == 101 || v14 == 69)
  {
    if (v28 != 1 && (v28 || v29 <= 0))
    {
      goto LABEL_76;
    }

    v29 = 0;
    v28 = 2;
    goto LABEL_27;
  }

  if (v14 != 46)
  {
    goto LABEL_76;
  }

  if (!v28)
  {
    v29 = 0;
    v28 = 1;
    goto LABEL_27;
  }

  v113 = &v8[v27];
  if (&v8[v27] < a4)
  {
    goto LABEL_332;
  }

  v114 = a4 + a5;
  if (a4 + a5 < v113)
  {
    goto LABEL_332;
  }

  if (v114 >= &v8[v27 + 1])
  {
    v114 = &v8[v27 + 1];
  }

  if (v114 <= a4)
  {
    v22 = 0;
    v37 = 1;
  }

  else
  {
    v115 = a5 + a4;
    v37 = 1;
    v116 = a4;
    do
    {
      v117 = 0;
      v118 = 0;
      v119 = v115 - v116;
      while (1)
      {
        if ((v116 - a4 + v118) < 0 || (v119 + v117) < 1)
        {
          goto LABEL_312;
        }

        v120 = *(v116 + v118);
        if (v120 == 10)
        {
          v31 = __OFADD__(v37++, 1);
          if (v31)
          {
            goto LABEL_341;
          }

          v116 += v118 + 1;
          goto LABEL_285;
        }

        if (v120 == 13)
        {
          break;
        }

        v22 = (v118 + 1);
        if (__OFADD__(v118, 1))
        {
          goto LABEL_313;
        }

        ++v118;
        --v117;
        if (v116 + v118 >= v114)
        {
          goto LABEL_294;
        }
      }

      v121 = v116 + v118;
      if (v113 >= v116 + v118 + 1)
      {
        if (((v116 - a4 + v118 + 1) & 0x8000000000000000) != 0 || (~v118 + v119) < 1)
        {
          goto LABEL_345;
        }

        if (*(v121 + 1) == 10)
        {
          v121 = v116 + v118 + 1;
        }
      }

      v31 = __OFADD__(v37++, 1);
      if (v31)
      {
        goto LABEL_342;
      }

      v116 = v121 + 1;
LABEL_285:
      ;
    }

    while (v116 < v114);
    v22 = 0;
  }

LABEL_294:
  a3 = &v8[v27 - a4];
  LOBYTE(v14) = 46;
LABEL_77:
  a6 = 0xE900000000000072;
  v47 = 0x65626D756E206E69;
LABEL_78:
  lazy protocol witness table accessor for type JSONError and conformance JSONError();
  swift_allocError();
  *v48 = v47;
  *(v48 + 8) = a6;
  *(v48 + 16) = v14;
  *(v48 + 24) = v37;
  *(v48 + 32) = v22;
  *(v48 + 40) = a3;
  v49 = 1;
LABEL_289:
  *(v48 + 48) = v49;
  swift_willThrow();
  return v37;
}