unint64_t *protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance JSONDecoderImpl.UnkeyedContainer()
{
  return specialized JSONDecoderImpl.UnkeyedContainer.decode(_:)();
}

{
  return specialized JSONDecoderImpl.UnkeyedContainer.decode(_:)();
}

{
  return specialized JSONDecoderImpl.UnkeyedContainer.decode(_:)();
}

{
  return specialized JSONDecoderImpl.UnkeyedContainer.decode(_:)();
}

{
  return specialized JSONDecoderImpl.UnkeyedContainer.decode(_:)();
}

{
  return specialized JSONDecoderImpl.UnkeyedContainer.decode(_:)();
}

{
  return specialized JSONDecoderImpl.UnkeyedContainer.decode(_:)();
}

{
  return specialized JSONDecoderImpl.UnkeyedContainer.decode(_:)();
}

{
  return specialized JSONDecoderImpl.UnkeyedContainer.decode(_:)();
}

{
  return specialized JSONDecoderImpl.UnkeyedContainer.decode(_:)();
}

{
  return specialized JSONDecoderImpl.UnkeyedContainer.decode(_:)();
}

{
  return specialized JSONDecoderImpl.UnkeyedContainer.decode(_:)();
}

{
  return specialized JSONDecoderImpl.UnkeyedContainer.decode(_:)();
}

uint64_t JSONDecoderImpl.KeyedContainer.decodeIfPresent<A>(_:forKey:)@<X0>(ValueMetadata *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v38 = a9;
  v39 = a7;
  v36 = a4;
  v37 = a3;
  v35 = a1;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  v18 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a5 + 16))
  {

    return (*(*(v39 - 8) + 56))(v38, 1, 1);
  }

  v34 = v15;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    return (*(*(v39 - 8) + 56))(v38, 1, 1);
  }

  v23 = *(a5 + 56) + 24 * v20;
  v24 = *(v23 + 8);
  v25 = *(v23 + 16);
  v33 = *v23;
  v26 = (v25 & 0xE0) == 0xA0 && (v24 | v33) == 0;
  if (v26 && v25 == 160)
  {
    return (*(*(v39 - 8) + 56))(v38, 1, 1);
  }

  v27 = *(a6 - 8);
  (*(v27 + 16))(v17, a2, a6);
  (*(v27 + 56))(v17, 0, 1, a6);
  v29 = v38;
  v28 = v39;
  v30 = v40;
  JSONDecoderImpl.unwrap<A, B>(_:as:for:_:)(v33, v24, v25, v35, v36, v17, v39, a6, v38, a10, a8);
  if (v30)
  {
    return (*(v34 + 8))(v17, v14);
  }

  (*(v34 + 8))(v17, v14);
  return (*(*(v28 - 8) + 56))(v29, 0, 1, v28);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, JSONDecoderImpl.KeyedContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeNil(forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, JSONDecoderImpl.KeyedContainer.decode(_:forKey:)) & 1;
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance JSONDecoderImpl.KeyedContainer<A>(a1, a2, a3, specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

uint64_t JSONDecoderImpl.KeyedContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a2;
  v40 = a3;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a4 + 16))
  {

    goto LABEL_7;
  }

  v35 = v11;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_7:
    v26 = type metadata accessor for DecodingError();
    swift_allocError();
    v28 = v27;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v28[3] = a5;
    v28[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v28);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
    _CodingPathNode.path.getter(v40);
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v38 = 0xD00000000000001DLL;
    v39 = 0x8000000181482300;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v30);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v31 = dispatch thunk of CodingKey.stringValue.getter();
    a6 = v32;
    MEMORY[0x1865CB0E0](v31);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF0], v26);
    swift_willThrow();
    return a6;
  }

  v19 = *(a4 + 56) + 24 * v16;
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(a5 - 8);
  v23 = *(v19 + 16);
  (*(v22 + 16))(v13, a1, a5);
  (*(v22 + 56))(v13, 0, 1, a5);
  v24 = v37;
  v25 = JSONDecoderImpl.unwrapString<A>(from:for:_:)(v20, v21, v23, v40, v13, a5, a6);
  if (!v24)
  {
    a6 = v25;
  }

  (*(v35 + 8))(v13, v10);
  return a6;
}

{
  v60 = a3;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v53 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Optional();
  v54 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v49 - v16;
  v57 = a6;
  v17 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a4 + 16))
  {

    goto LABEL_6;
  }

  v52 = v12;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_6:
    v25 = type metadata accessor for DecodingError();
    v56 = swift_allocError();
    v27 = v26;
    v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v28 = v57;
    v27[3] = a5;
    v27[4] = v28;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27);
    (*(v10 + 16))(boxed_opaque_existential_0, a1, a5);
    _CodingPathNode.path.getter(v60);
    v58 = 0;
    v59 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v58 = 0xD00000000000001DLL;
    v59 = 0x8000000181482300;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v30);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v31 = dispatch thunk of CodingKey.stringValue.getter();
    MEMORY[0x1865CB0E0](v31);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF0], v25);
LABEL_7:
    swift_willThrow();
    return v24 & 1;
  }

  v22 = *(a4 + 56) + 24 * v19;
  v23 = *(v22 + 16) >> 5;
  if (v23 != 2)
  {
    v33 = type metadata accessor for DecodingError();
    v56 = swift_allocError();
    v51 = v34;
    *v34 = MEMORY[0x1E69E6370];
    v35 = v55;
    v50 = *(v10 + 16);
    v50(v55, a1, a5);
    (*(v10 + 56))(v35, 0, 1, a5);
    v36 = v54;
    v37 = v52;
    (*(v54 + 16))(v14, v35, v52);
    if ((*(v10 + 48))(v14, 1, a5) == 1)
    {
      v38 = *(v36 + 8);
      v38(v14, v37);
      _CodingPathNode.path.getter(v60);
      v38(v35, v37);
    }

    else
    {
      v39 = v53;
      (*(v10 + 32))(v53, v14, a5);
      v40 = _CodingPathNode.path.getter(v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      v60 = v33;
      v42 = v36;
      v43 = inited;
      *(inited + 16) = xmmword_181218E20;
      v44 = v57;
      *(inited + 56) = a5;
      *(inited + 64) = v44;
      v45 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      v50(v45, v39, a5);
      v58 = v40;
      specialized Array.append<A>(contentsOf:)(v43);
      (*(v10 + 8))(v39, a5);
      (*(v42 + 8))(v55, v37);
      v33 = v60;
    }

    v58 = 0;
    v59 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    v58 = 0xD000000000000022;
    v59 = 0x8000000181482220;
    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v46 = 0xEC0000007972616ELL;
        v47 = 0x6F69746369642061;
      }

      else if (v23 == 4)
      {
        v46 = 0xE800000000000000;
        v47 = 0x7961727261206E61;
      }

      else
      {
        v46 = 0xE400000000000000;
        v47 = 1819047278;
      }
    }

    else if (v23)
    {
      if (v23 == 1)
      {
        v46 = 0xE600000000000000;
        v47 = 0x7265626D756ELL;
      }

      else
      {
        v46 = 0xE400000000000000;
        v47 = 1819242338;
      }
    }

    else
    {
      v46 = 0xE800000000000000;
      v47 = 0x676E697274732061;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    MEMORY[0x1865CB0E0](v47, v46);

    MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
    v48 = v51;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v33 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v33);
    goto LABEL_7;
  }

  v24 = *v22;
  return v24 & 1;
}

unint64_t *JSONDecoderImpl.unwrapString<A>(from:for:_:)(void *a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v69 = a7;
  v71 = a5;
  v72 = a4;
  v77 = a2;
  v74 = a1;
  v73 = *(a6 - 8);
  v9 = a3;
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v67 - v13;
  v14 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v67 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v67 - v21;
  v26.n128_f64[0] = MEMORY[0x1EEE9AC00](v23);
  v28 = &v67 - v27;
  v29 = a3 >> 5;
  if (v29 == 5 && !(v77 | v74) && v9 == 160)
  {
    v30 = v25;
    v77 = type metadata accessor for DecodingError();
    swift_allocError();
    v32 = v31;
    *v31 = MEMORY[0x1E69E6158];
    v33 = *(v30 + 16);
    v33(v28, v71, v14);
    v33(v22, v28, v14);
    v34 = v73;
    if ((*(v73 + 48))(v22, 1, a6) == 1)
    {
      v35 = *(v30 + 8);
      v35(v22, v14);
      _CodingPathNode.path.getter(v72);
      v35(v28, v14);
    }

    else
    {
      v58 = *(v34 + 32);
      v74 = v32;
      v59 = v68;
      v58(v68, v22, a6);
      v60 = v34;
      v61 = _CodingPathNode.path.getter(v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v63 = v69;
      *(inited + 56) = a6;
      *(inited + 64) = v63;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (*(v60 + 16))(boxed_opaque_existential_0, v59, a6);
      v75 = v61;
      specialized Array.append<A>(contentsOf:)(inited);
      v65 = v59;
      v32 = v74;
      (*(v60 + 8))(v65, a6);
      (*(v30 + 8))(v28, v14);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    v75 = 0;
    v76 = 0xE000000000000000;
    v40 = &v75;
    _StringGuts.grow(_:)(55);
    MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
    MEMORY[0x1865CB0E0](0x676E69727453, 0xE600000000000000);
    MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v77 - 8) + 104))(v32, *MEMORY[0x1E69E6B08]);
LABEL_25:
    swift_willThrow();
    return v40;
  }

  if (v9 > 0x1F)
  {
    v44 = *(v25 + 16);
    v45 = v25;
    v44(v19, v71, v14, v26);
    (v44)(v16, v19, v14);
    v46 = v73;
    if ((*(v73 + 48))(v16, 1, a6) == 1)
    {
      v47 = *(v45 + 8);
      v47(v16, v14);
      _CodingPathNode.path.getter(v72);
      v47(v19, v14);
    }

    else
    {
      (*(v46 + 32))(v11, v16, a6);
      v48 = v46;
      v49 = _CodingPathNode.path.getter(v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v50 = swift_initStackObject();
      *(v50 + 16) = xmmword_181218E20;
      v51 = v69;
      *(v50 + 56) = a6;
      *(v50 + 64) = v51;
      v52 = __swift_allocate_boxed_opaque_existential_0((v50 + 32));
      (*(v48 + 16))(v52, v11, a6);
      v75 = v49;
      specialized Array.append<A>(contentsOf:)(v50);
      (*(v48 + 8))(v11, a6);
      (*(v45 + 8))(v19, v14);
    }

    v53 = type metadata accessor for DecodingError();
    swift_allocError();
    v55 = v54;
    *v54 = MEMORY[0x1E69E6158];
    v75 = 0;
    v76 = 0xE000000000000000;
    v40 = &v75;
    _StringGuts.grow(_:)(43);

    v75 = 0xD000000000000024;
    v76 = 0x8000000181481E20;
    if (v29 <= 2)
    {
      if (v29 == 1)
      {
        v56 = 0xE600000000000000;
        v57 = 0x7265626D756ELL;
      }

      else
      {
        v56 = 0xE400000000000000;
        v57 = 1819242338;
      }
    }

    else if (v29 == 3)
    {
      v56 = 0xEC0000007972616ELL;
      v57 = 0x6F69746369642061;
    }

    else if (v29 == 4)
    {
      v56 = 0xE800000000000000;
      v57 = 0x7961727261206E61;
    }

    else
    {
      v56 = 0xE400000000000000;
      v57 = 1819047278;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    MEMORY[0x1865CB0E0](v57, v56);

    MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x1E69E6AF8]);
    goto LABEL_25;
  }

  MEMORY[0x1EEE9AC00](v24);
  *(&v67 - 16) = v9 & 1;
  *(&v67 - 15) = v36;
  v38 = *(*(v37 + 32) + 24);
  MEMORY[0x1EEE9AC00](v39);
  v40 = (&v67 - 6);
  *(&v67 - 4) = closure #1 in JSONDecoderImpl.unwrapString<A>(from:for:_:)partial apply;
  *(&v67 - 3) = v41;
  v42 = v77;
  *(&v67 - 2) = v74;
  *(&v67 - 1) = v42;

  os_unfair_lock_lock((v38 + 40));
  v43 = v70;
  closure #1 in JSONMap.withBuffer<A>(for:perform:)specialized partial apply((v38 + 16), &v75);
  os_unfair_lock_unlock((v38 + 40));

  if (!v43)
  {
    v40 = v75;
  }

  return v40;
}

void JSONDecoderImpl.UnkeyedContainer.decode<A>(_:)(ValueMetadata *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v7 = *(v3 + 24);
  v8 = *(v3 + 40);
  if (v8 < 0xFE)
  {
    v20 = *(v3 + 32);
  }

  else
  {
    v30 = a3;
    v9 = *(v3 + 8);
    v10 = JSONMap.loadValue(at:)(v9);
    if (v12 > 0xFDu)
    {
      if (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd) == a2)
      {
      }

      a2 = _CodingPathNode.path.getter(*(v3 + 72));
      v13 = *(v3 + 64);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

    v21 = v10;
    v22 = v9;
    v23 = v12;
    v24 = v11;
    v25 = JSONMap.offset(after:)(v22);
    v20 = v24;
    v8 = v23;
    v26 = v25;
    v7 = v21;
    *(v3 + 8) = v26;
    *(v3 + 24) = v21;
    *(v3 + 32) = v24;
    *(v3 + 40) = v23;
    a3 = v30;
  }

  v13 = *(v3 + 64);
  specialized JSONDecoderImpl.unwrap<A, B>(_:as:for:_:)(v7, v20, v8, a1, *(v3 + 72), v13, 0, 0, a3, 2u, a2);
  if (v4)
  {
    return;
  }

  if (!__OFADD__(v13, 1))
  {
    *(v3 + 64) = v13 + 1;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = -2;
    return;
  }

  __break(1u);
LABEL_16:
  a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2[2] + 1, 1, a2);
LABEL_6:
  v15 = a2[2];
  v14 = a2[3];
  if (v15 >= v14 >> 1)
  {
    a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, a2);
  }

  v28 = &type metadata for _CodingKey;
  v29 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v16 = swift_allocObject();
  *&v27 = v16;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = v13;
  *(v16 + 40) = 2;
  a2[2] = v15 + 1;
  outlined init with take of Equatable(&v27, &a2[5 * v15 + 4]);
  v17 = type metadata accessor for DecodingError();
  swift_allocError();
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *v19 = a1;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
  swift_willThrow();
}

unint64_t lazy protocol witness table accessor for type JSONDecoderImpl.UnkeyedContainer and conformance JSONDecoderImpl.UnkeyedContainer()
{
  result = lazy protocol witness table cache variable for type JSONDecoderImpl.UnkeyedContainer and conformance JSONDecoderImpl.UnkeyedContainer;
  if (!lazy protocol witness table cache variable for type JSONDecoderImpl.UnkeyedContainer and conformance JSONDecoderImpl.UnkeyedContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONDecoderImpl.UnkeyedContainer and conformance JSONDecoderImpl.UnkeyedContainer);
  }

  return result;
}

BOOL protocol witness for UnkeyedDecodingContainer.isAtEnd.getter in conformance JSONDecoderImpl.UnkeyedContainer()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    return *(v0 + 64) >= *(v0 + 48);
  }

  __break(1u);
  return result;
}

void JSONDecoderImpl.unkeyedContainer()(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = *(v2 + 16);
  if (!v3)
  {
    __break(1u);
    goto LABEL_26;
  }

  v4 = v2 + 24 * v3;
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  v7 = *(v4 + 24);
  if (v7 >> 5 == 4)
  {
    v18 = v1[20];
    v19 = v1[4];
    a1[3] = &unk_1EEEE71D0;
    a1[4] = lazy protocol witness table accessor for type JSONDecoderImpl.UnkeyedContainer and conformance JSONDecoderImpl.UnkeyedContainer();
    v21 = swift_allocObject();
    *a1 = v21;
    *(v21 + 16) = v1;
    *(v21 + 24) = v6;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 32) = v19;
    *(v21 + 56) = -2;
    *(v21 + 64) = v5;
    *(v21 + 72) = 0;
    *(v21 + 80) = 0;
    *(v21 + 88) = v18;

    return;
  }

  v8 = v7 >> 5 == 5 && (v5 | v6) == 0;
  if (!v8 || v7 != 160)
  {
    v9 = type metadata accessor for DecodingError();
    swift_allocError();
    v11 = v10;
    *v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd);
    v12 = v1[20];

    _CodingPathNode.path.getter(v12);

    _StringGuts.grow(_:)(43);

    v13 = v1[2];
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = *(v13 + 24 * v14 + 24) >> 5;
      if (v15 > 2)
      {
        if (v15 == 3)
        {
          v16 = 0xEC0000007972616ELL;
          v17 = 0x6F69746369642061;
        }

        else if (v15 == 4)
        {
          v16 = 0xE800000000000000;
          v17 = 0x7961727261206E61;
        }

        else
        {
          v16 = 0xE400000000000000;
          v17 = 1819047278;
        }
      }

      else if (v15)
      {
        if (v15 == 1)
        {
          v16 = 0xE600000000000000;
          v17 = 0x7265626D756ELL;
        }

        else
        {
          v16 = 0xE400000000000000;
          v17 = 1819242338;
        }
      }

      else
      {
        v16 = 0xE800000000000000;
        v17 = 0x676E697274732061;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v17, v16);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v24 = MEMORY[0x1E69E6AF8];
      goto LABEL_23;
    }

LABEL_26:
    __break(1u);
    return;
  }

  v9 = type metadata accessor for DecodingError();
  swift_allocError();
  v11 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd);
  v23 = v1[20];

  _CodingPathNode.path.getter(v23);

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v24 = MEMORY[0x1E69E6B08];
LABEL_23:
  (*(*(v9 - 8) + 104))(v11, *v24, v9);
  swift_willThrow();
}

uint64_t sub_1807AC46C()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t outlined copy of _CodingKey(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3 || a4 == 0)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey()
{
  result = lazy protocol witness table cache variable for type _CodingKey and conformance _CodingKey;
  if (!lazy protocol witness table cache variable for type _CodingKey and conformance _CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _CodingKey and conformance _CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _CodingKey and conformance _CodingKey;
  if (!lazy protocol witness table cache variable for type _CodingKey and conformance _CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _CodingKey and conformance _CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _CodingKey and conformance _CodingKey;
  if (!lazy protocol witness table cache variable for type _CodingKey and conformance _CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _CodingKey and conformance _CodingKey);
  }

  return result;
}

uint64_t outlined consume of _CodingKey(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3 || a4 == 0)
  {
  }

  return result;
}

uint64_t JSONDecoderImpl.KeyedContainer.decode<A>(_:forKey:)@<X0>(ValueMetadata *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v40 = a3;
  v41 = a7;
  v45 = a4;
  v38 = a9;
  v39 = a1;
  v15 = type metadata accessor for Optional();
  v42 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  v18 = dispatch thunk of CodingKey.stringValue.getter();
  if (*(a5 + 16))
  {
    v37 = v10;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
    v22 = v21;

    if (v22)
    {
      v36 = a10;
      v23 = *(a5 + 56) + 24 * v20;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(a6 - 8);
      v27 = *(v23 + 16);
      (*(v26 + 16))(v17, a2, a6);
      (*(v26 + 56))(v17, 0, 1, a6);
      JSONDecoderImpl.unwrap<A, B>(_:as:for:_:)(v24, v25, v27, v39, v45, v17, v41, a6, v38, v36, a8);
      return (*(v42 + 8))(v17, v15);
    }
  }

  else
  {
  }

  v29 = type metadata accessor for DecodingError();
  swift_allocError();
  v31 = v30;
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
  v31[3] = a6;
  v31[4] = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_0, a2, a6);
  _CodingPathNode.path.getter(v45);
  v43 = 0;
  v44 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);

  v43 = 0xD00000000000001DLL;
  v44 = 0x8000000181482300;
  v33 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v33);

  MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
  v34 = dispatch thunk of CodingKey.stringValue.getter();
  MEMORY[0x1865CB0E0](v34);

  MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF0], v29);
  return swift_willThrow();
}

void JSONDecoderImpl.unwrap<A, B>(_:as:for:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, ValueMetadata *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11)
{
  v76 = a9;
  v69 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v68 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  if (a4 == &type metadata for Date)
  {
    v32 = v83;
    JSONDecoderImpl.unwrapDate<A>(from:for:_:)(a1, a2, a3, a5, a6, a8, a11, &v78);
    if (v32)
    {
      return;
    }

    goto LABEL_16;
  }

  v70 = a8;
  v71 = a11;
  v72 = a5;
  v73 = a2;
  v75 = a1;
  v74 = a3;
  if (a4 == &type metadata for Data)
  {
    v33 = v83;
    v34 = JSONDecoderImpl.unwrapData<A>(from:for:_:)(v75, v73, v74, v72, a6, v70, v71);
    if (v33)
    {
      return;
    }

    v78 = v34;
    v79 = v35;
    goto LABEL_16;
  }

  v26 = a7;
  if (a4 == &type metadata for URL)
  {
    v36 = v83;
    JSONDecoderImpl.unwrapURL<A>(from:for:_:)(v75, v73, v74, v72, a6, v70, v71, &v78);
    if (v36)
    {
      return;
    }

    goto LABEL_16;
  }

  v27 = v25;
  v28 = v67 - v23;
  v29 = v24;
  v30 = v22;
  type metadata accessor for NSDecimal(0);
  if (v31 != a4)
  {
    if (swift_conformsToProtocol2() && v26)
    {
      JSONDecoderImpl.unwrapDictionary<A, B>(from:as:for:_:)(v75, v73, v74, a4, v72, a6, v26, v70, v76, a10, v71);
      return;
    }

    v67[1] = a10;
    v67[2] = v26;
    v41 = *(v29 + 16);
    v41(v28, a6, v30);
    v41(v27, v28, v30);
    v43 = v69;
    v42 = v70;
    v44 = (*(v69 + 48))(v27, 1, v70);
    v45 = v71;
    if (v44 == 1)
    {
      v46 = *(v29 + 8);
      v46(v28, v30);
      v46(v27, v30);
      v47 = v72;

      v49 = v83;
      v50 = v77;
      v51 = v74;
      v52 = v73;
      goto LABEL_28;
    }

    v53 = *(v43 + 32);
    v53(v68, v27, v42);
    v47 = swift_allocObject();
    *(v47 + 40) = v42;
    *(v47 + 48) = v45;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v47 + 16));
    v53(boxed_opaque_existential_0, v68, v42);
    (*(v29 + 8))(v28, v30);
    v55 = v72;
    *(v47 + 56) = v72;
    if (v55 >> 62)
    {
      v49 = v83;
      v50 = v77;
      v51 = v74;
      v52 = v73;
      if (v55 >> 62 != 1)
      {
        v57 = 0;
        goto LABEL_26;
      }

      v56 = ((v55 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v56 = (v55 + 64);
      v49 = v83;
      v50 = v77;
      v51 = v74;
      v52 = v73;
    }

    v57 = *v56;

LABEL_26:
    if (__OFADD__(v57, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    *(v47 + 64) = v57 + 1;
    v48 = v47 & 0x3FFFFFFFFFFFFFFFLL;
LABEL_28:
    v58 = *(v50 + 160);
    *(v50 + 160) = v47;
    v59 = *(v50 + 16);
    v83 = v48;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v50 + 16) = v59;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v59 + 2) + 1, 1, v59);
      *(v50 + 16) = v59;
    }

    v61 = v75;
    v63 = *(v59 + 2);
    v62 = *(v59 + 3);
    if (v63 >= v62 >> 1)
    {
      v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v59);
      v61 = v75;
      v59 = v66;
    }

    *(v59 + 2) = v63 + 1;
    v64 = &v59[24 * v63];
    *(v64 + 4) = v61;
    *(v64 + 5) = v52;
    v64[48] = v51;
    *(v50 + 16) = v59;
    v81 = type metadata accessor for JSONDecoderImpl();
    v82 = lazy protocol witness table accessor for type JSONDecoderImpl and conformance JSONDecoderImpl(&lazy protocol witness table cache variable for type JSONDecoderImpl and conformance JSONDecoderImpl, type metadata accessor for JSONDecoderImpl);
    v78 = v50;
    v47 = v50;

    dispatch thunk of Decodable.init(from:)();
    if (!v49)
    {
LABEL_37:
      *(v50 + 160) = v58;

      a4 = *(v50 + 16);
      if (a4[1].Kind)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          Kind = a4[1].Kind;
          if (Kind)
          {
            goto LABEL_40;
          }

          goto LABEL_47;
        }

LABEL_46:
        a4 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
        Kind = a4[1].Kind;
        if (Kind)
        {
          goto LABEL_40;
        }

LABEL_47:
        __break(1u);
        return;
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    *(v50 + 160) = v58;

    a4 = *(v50 + 16);
    if (a4[1].Kind)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        Kind = a4[1].Kind;
        if (Kind)
        {
LABEL_40:
          a4[1].Kind = Kind - 1;
          *(v47 + 16) = a4;

          return;
        }

        goto LABEL_36;
      }
    }

    else
    {
      __break(1u);
    }

    a4 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    Kind = a4[1].Kind;
    if (Kind)
    {
      goto LABEL_40;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v37 = v83;
  v38 = JSONDecoderImpl.unwrapDecimal<A>(from:for:_:)(v75, v73, v74, v72, a6, v70, v71);
  if (!v37)
  {
    v78 = v38;
    v79 = v39;
    v80 = v40;
LABEL_16:
    swift_dynamicCast();
  }
}

uint64_t JSONDecoderImpl.__deallocating_deinit()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 128);
  outlined consume of JSONDecoder.DateDecodingStrategy(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_1807A5C7C(v1);
  outlined consume of JSONDecoder.NonConformingFloatDecodingStrategy(v2, v3);
  sub_1807A5C7C(v4);

  return swift_deallocClassInstance();
}

uint64_t JSONMap.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock((v1 + 40));
  result = *(v1 + 32);
  if (result)
  {
    if (result != *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    MEMORY[0x1865D2690]();
  }

  os_unfair_lock_unlock((v1 + 40));

  return swift_deallocClassInstance();
}

uint64_t outlined consume of JSONDecoder.NonConformingFloatDecodingStrategy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void outlined consume of JSONDecoder.DateDecodingStrategy(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t JSONDecoder.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_assumesTopLevelDictionaryKey;
  v2 = type metadata accessor for CodingUserInfoKey();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 24);
  v4 = *(v0 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 40);
  v5 = *(v0 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 48);
  v6 = *(v0 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 88);
  outlined consume of JSONDecoder.DateDecodingStrategy(*(v0 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options), *(v0 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 8), *(v0 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 16));
  sub_1807A5C7C(v3);
  outlined consume of JSONDecoder.NonConformingFloatDecodingStrategy(v4, v5);
  sub_1807A5C7C(v6);

  return swift_deallocClassInstance();
}

void message_handler_error(uint64_t a1, uint64_t a2)
{
  v11[5] = *MEMORY[0x1E69E9840];
  if (a2 == MEMORY[0x1E69E9E18])
  {
    ++*(*(a1 + 72) + 8);
    v3 = objc_autoreleasePoolPush();
    v4 = [a1 interruptionHandler];
    if (v4)
    {
      (*(v4 + 16))();
    }

    objc_autoreleasePoolPop(v3);
  }

  else if (a2 != MEMORY[0x1E69E9E38])
  {
    if (a2 == MEMORY[0x1E69E9E20])
    {
      v5 = objc_autoreleasePoolPush();
      [(_NSXPCConnectionRequestedReplies *)*(a1 + 64) invalidate];
      v6 = [a1 invalidationHandler];
      if (v6)
      {
        (*(v6 + 16))();
      }

      v7 = [a1 _additionalInvalidationHandler];
      if (v7)
      {
        v8 = v7;
        global_queue = dispatch_get_global_queue(21, 0);
        dispatch_async(global_queue, v8);
        [a1 set_additionalInvalidationHandler:0];
      }

      [a1 setInvalidationHandler:0];
      [a1 setInterruptionHandler:0];
      [a1 setExportedObject:0];
      [(_NSXPCConnectionExportedObjectTable *)*(a1 + 56) invalidate];
      [(_NSXPCConnectionClassCache *)*(a1 + 120) clear];
      [(_NSXPCConnectionClassCache *)*(a1 + 128) clear];
      objc_autoreleasePoolPop(v5);
      if ((atomic_fetch_and_explicit((a1 + 32), 0xFBu, memory_order_relaxed) & 4) != 0)
      {
        v10 = *(a1 + 24);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __message_handler_error_block_invoke;
        v11[3] = &unk_1E69F2C00;
        v11[4] = a1;
        dispatch_async(v10, v11);
      }
    }

    else if (a2 == MEMORY[0x1E69E9E30])
    {

      [a1 invalidate];
    }
  }
}

void __message_handler_error_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  CFRelease(*(a1 + 32));

  objc_autoreleasePoolPop(v2);
}

uint64_t static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a2 == MEMORY[0x1E69E6158] && a3 == MEMORY[0x1E69E7CA0] + 8)
  {

    swift_unknownObjectRetain();
    v9 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
    if (v9)
    {
      return v9;
    }

    v12 = [a1 count];
    if (v12)
    {
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
      v11 = static _DictionaryStorage.allocate(capacity:)();
      v14 = v11[6];
      v15 = v11[7];

      result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v14, v15, a1, v13);
      if (result < 0 || v13 < result)
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v11[2] = result;
      if (!result)
      {
LABEL_29:

        if (v11)
        {
          return v11;
        }

        goto LABEL_47;
      }

      v16 = result - 1;
      v17 = v11 + 8;
      while (1)
      {
        while (1)
        {
          if ((*(v17 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v16))
          {
            goto LABEL_21;
          }

          v22 = (v11[6] + 16 * v16);
          v23 = *v22;
          v24 = v22[1];

          v25 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
          v27 = v26;

          if ((v27 & 1) == 0)
          {
            break;
          }

          v28 = v11[6] + 16 * v16;

          outlined destroy of String(v28);
          result = __swift_destroy_boxed_opaque_existential_1(v11[7] + 32 * v16);
          v29 = v11[2];
          v30 = __OFSUB__(v29, 1);
          v31 = v29 - 1;
          if (v30)
          {
            goto LABEL_48;
          }

          v11[2] = v31;

LABEL_21:
          if (--v16 < 0)
          {
            goto LABEL_29;
          }
        }

        *(v17 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        if (v16 < v25)
        {
          *(v11[6] + 16 * v25) = *(v11[6] + 16 * v16);
          v18 = v11[7];
          v19 = (v18 + 32 * v16);
          v20 = v19[1];
          v21 = (v18 + 32 * v25);
          *v21 = *v19;
          v21[1] = v20;
          goto LABEL_21;
        }

        if (v25 == v16)
        {
          goto LABEL_21;
        }

        v32 = v11[6];
        v33 = (v32 + 16 * v25);
        v34 = (v32 + 16 * v16);
        v35 = *v33;
        v36 = v33[1];
        v37 = v34[1];
        *v33 = *v34;
        v33[1] = v37;
        *v34 = v35;
        v34[1] = v36;
        v38 = v11[7];
        v39 = (v38 + 32 * v25);
        v40 = (v38 + 32 * v16);
        outlined init with take of Any(v39, &aBlock);
        outlined init with take of Any(v40, v39);
        outlined init with take of Any(&aBlock, v40);
        if (v16 < 0)
        {
          goto LABEL_29;
        }
      }
    }

    return MEMORY[0x1E69E7CC8];
  }

  swift_unknownObjectRetain();
  v9 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (v9)
  {
    return v9;
  }

  if (_swift_isClassOrObjCExistentialType() & 1) != 0 && (_swift_isClassOrObjCExistentialType())
  {
    result = [a1 copyWithZone_];
    v11 = (~(result >> 1) & 0x4000000000000000 | result);
    if (!v11)
    {
      goto LABEL_47;
    }

    return v11;
  }

  if (*(*(a2 - 8) + 72) >= 8 && *(*(a3 - 8) + 72) > 7)
  {
    v44 = [a1 count];
    if (!v44)
    {
      result = specialized Dictionary.init(dictionaryLiteral:)(MEMORY[0x1E69E7CC0], a2, a3, a4);
      v11 = result;
      if (!result)
      {
        goto LABEL_47;
      }

      return v11;
    }

    MEMORY[0x1EEE9AC00](v44);
    v51[2] = a2;
    v51[3] = a3;
    v51[4] = a4;
    v51[5] = a1;
    v51[6] = v45;
    result = _NativeDictionary.init(_unsafeUninitializedCapacity:allowingDuplicates:initializingWith:)(v45, v46, partial apply for closure #2 in static Dictionary._forceBridgeFromObjectiveC(_:result:), v51, a2, a3);
    v11 = result;
    if (result)
    {
      return v11;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v42 = [a1 count];
  if (v42)
  {
    type metadata accessor for _DictionaryStorage();
    v43 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC8];
  }

  v57 = v43;
  v58 = v42;
  v47 = swift_allocObject();
  v47[2] = a2;
  v47[3] = a3;
  v47[4] = a4;
  v47[5] = &v57;
  v48 = swift_allocObject();
  *(v48 + 16) = partial apply for closure #1 in static Dictionary._forceBridgeFromObjectiveC(_:result:);
  *(v48 + 24) = v47;
  v55 = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any, @in_guaranteed Any, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v56 = v48;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v53 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @in_guaranteed Any, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v54 = &block_descriptor_20;
  v49 = _Block_copy(&aBlock);

  [a1 enumerateKeysAndObjectsUsingBlock_];
  _Block_release(v49);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_50;
  }

  v11 = v57;
  if (v57[2] == v58)
  {

    if (v11)
    {
      return v11;
    }

    goto LABEL_47;
  }

LABEL_51:
  __break(1u);
  return result;
}

void oq_set_property_qos(uint64_t a1, uint64_t a2)
{
  if (a2 > 16)
  {
    if (a2 == 17)
    {
      v2 = 17;
      goto LABEL_15;
    }

    if (a2 != 33)
    {
      if (a2 == 25)
      {
        v2 = 25;
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v2 = 33;
  }

  else
  {
    if (a2 == -1)
    {
      v2 = 21;
      goto LABEL_15;
    }

    if (a2 != 5)
    {
      if (a2 == 9)
      {
        v2 = 9;
        goto LABEL_15;
      }

LABEL_12:
      v2 = 0;
      goto LABEL_15;
    }

    v2 = 5;
  }

LABEL_15:
  if (v2 != atomic_exchange((a1 + 502), v2))
  {
    v3 = *(a1 + 184);
    *(a1 + 184) = 0;
    *(a1 + 200) = 0;
    if (v3)
    {
      dispatch_release(v3);
    }
  }
}

uint64_t _NativeDictionary.init(_unsafeUninitializedCapacity:allowingDuplicates:initializingWith:)(uint64_t a1, int a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v81 = a2;
  v80 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v76 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v9;
  v82 = *(v9 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v83 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15)
  {
    v77 = v11;
    v78 = v12;
    type metadata accessor for _DictionaryStorage();
    v16 = static _DictionaryStorage.allocate(capacity:)();
    v17 = *(v16 + 48);
    v18 = *(v16 + 56);

    result = a3(v17, a1, v18, a1);
    if ((result & 0x8000000000000000) == 0 && result <= a1)
    {
      *(v16 + 16) = result;
      if (result)
      {
        v20 = result - 1;
        v21 = v16 + 64;
        v79 = v82 + 16;
        v22 = (v82 + 8);
        v73 = (v82 + 32);
        v74 = (v82 + 8);
        v71 = v80 + 32;
        v72 = v16;
        v75 = v80 + 8;
        v23 = v78;
        while (1)
        {
          if ((*(v21 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v20))
          {
            goto LABEL_7;
          }

          v24 = *(v82 + 72);
          v25 = v24 * v20;
          (*(v82 + 16))(v83, *(v16 + 48) + v24 * v20, v84);
          if ((v81 & 1) == 0)
          {
            break;
          }

          v27 = v83;
          v26 = v84;
          v28 = __RawDictionaryStorage.find<A>(_:)(v83, v84, v23);
          v30 = v29;
          v31 = v27;
          v32 = *v22;
          (*v22)(v31, v26);
          if ((v30 & 1) == 0)
          {
            *(v21 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
            v23 = v78;
            if (v20 >= v28)
            {
LABEL_17:
              if (v28 != v20)
              {
                v44 = *(v16 + 48);
                v45 = v44 + v24 * v28;
                v47 = v83;
                v46 = v84;
                v48 = *v73;
                (*v73)(v83, v45, v84);
                v48(v45, v44 + v25, v46);
                v48(v44 + v25, v47, v46);
                v16 = v72;
                v49 = *(v72 + 56);
                v50 = *(v80 + 72);
                v51 = (v49 + v50 * v28);
                v52 = (v49 + v50 * v20);
                v53 = *(v80 + 32);
                v54 = v76;
                v55 = v77;
                v53(v76, v51, v77);
                v56 = v51;
                v23 = v78;
                v53(v56, v52, v55);
                v57 = v54;
                v22 = v74;
                v53(v52, v57, v55);
                goto LABEL_8;
              }

              goto LABEL_7;
            }

LABEL_28:
            v62 = *(v16 + 48);
            v63 = v62 + v24 * v28;
            v64 = v62 + v25 + v24;
            if ((v24 * v28) < v25 || v63 >= v64)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v24 * v28 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v66 = *(v16 + 56);
            v67 = *(v80 + 72);
            v68 = v66 + v67 * v28;
            v69 = v66 + v67 * v20 + v67;
            if ((v67 * v28) < v67 * v20 || v68 >= v69)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v67 * v28 != v67 * v20)
            {
              swift_arrayInitWithTakeBackToFront();
            }

LABEL_7:
            --v20;
            goto LABEL_8;
          }

          v33 = *(v16 + 48);

          v32(v33 + v25, v26);
          result = (*(v80 + 8))(*(v16 + 56) + *(v80 + 72) * v20, v77);
          v34 = *(v16 + 16);
          v35 = __OFSUB__(v34, 1);
          v36 = v34 - 1;
          if (v35)
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          *(v16 + 16) = v36;

          --v20;
          v23 = v78;
LABEL_8:
          if (v20 < 0)
          {
            goto LABEL_42;
          }
        }

        v37 = v83;
        v38 = v84;
        v39 = v23;
        v40 = dispatch thunk of Hashable._rawHashValue(seed:)();
        result = (*v22)(v37, v38);
        v41 = -1 << *(v16 + 32);
        v42 = v40 & ~v41;
        v43 = v42 >> 6;
        if (((-1 << v42) & ~*(v21 + 8 * (v42 >> 6))) != 0)
        {
          v28 = __clz(__rbit64((-1 << v42) & ~*(v21 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
          v23 = v39;
        }

        else
        {
          v58 = 0;
          v59 = (63 - v41) >> 6;
          v23 = v39;
          do
          {
            if (++v43 == v59 && (v58 & 1) != 0)
            {
              __break(1u);
              goto LABEL_46;
            }

            v60 = v43 == v59;
            if (v43 == v59)
            {
              v43 = 0;
            }

            v58 |= v60;
            v61 = *(v21 + 8 * v43);
          }

          while (v61 == -1);
          v28 = __clz(__rbit64(~v61)) + (v43 << 6);
        }

        *(v21 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        if (v20 >= v28)
        {
          goto LABEL_17;
        }

        goto LABEL_28;
      }

LABEL_42:

      return v16;
    }

LABEL_47:
    __break(1u);
  }

  else
  {
    result = (a3)(0, 0, 0, 0, v13);
    if (!result)
    {
      return MEMORY[0x1E69E7CC8];
    }
  }

  __break(1u);
  return result;
}

BOOL containsMethod(Protocol *a1, const char *a2, BOOL isRequiredMethod)
{
  v12 = *MEMORY[0x1E69E9840];
  outCount = 0;
  v4 = protocol_copyMethodDescriptionList(a1, isRequiredMethod, 1, &outCount);
  if (!v4)
  {
    return 0;
  }

  if (outCount)
  {
    if (v4->name == a2)
    {
      v9 = 1;
    }

    else
    {
      v5 = v4 + 1;
      v6 = 1;
      do
      {
        v7 = v6;
        if (outCount == v6)
        {
          break;
        }

        name = v5->name;
        ++v5;
        ++v6;
      }

      while (name != a2);
      v9 = v7 < outCount;
    }
  }

  else
  {
    v9 = 0;
  }

  free(v4);
  return v9;
}

uint64_t __NSSearchPathForDirectoriesInDomains_block_invoke()
{
  result = dyld_program_sdk_at_least();
  if (result)
  {
    v1 = 0;
  }

  else
  {
    result = _CFAppVersionCheck();
    v1 = result != 0;
  }

  _MergedGlobals_11_0 = v1;
  return result;
}

void setProtocolMetdataWithMethods(Protocol *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v6 = 0;
    v27 = a2 + 1040;
    v25 = a2 + 16;
    v26 = a2 + 2064;
    v7 = a4;
    while (1)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a3 + 16 * v6);
      MethodTypeEncoding = _protocol_getMethodTypeEncoding();
      if (!MethodTypeEncoding)
      {
        break;
      }

      v11 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:MethodTypeEncoding];
      if (!v11)
      {
        Name = protocol_getName(a1);
        v23 = [NSString stringWithFormat:@"NSXPCInterface: Unable to get method signature from Protocol data (%s / %s)", Name, sel_getName(v9)];
LABEL_30:
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v23 userInfo:0]);
      }

      v12 = v11;
      if (*a2)
      {
        Superclass = class_getSuperclass(*a2);
        if (Superclass)
        {
          if (!class_getInstanceMethod(Superclass, v9))
          {
            v14 = [v12 _argInfo:-1];
            if ((*(v14 + 34) & 0x80) != 0)
            {
              v14 = *v14;
            }

            if (*(v14 + 36) == 118)
            {
              v15 = [v12 numberOfArguments];
              if (v15 == 2)
              {
                v16 = *(a2 + 8);
                *(a2 + 8) = v16 + 1;
                *(v25 + 8 * v16) = v9;
                *(v27 + 8 * v16) = _NSXPCDistantObjectSimpleMessageSend0;
                *(v26 + 8 * v16) = "v@:";
                if (v16 == 127)
                {
LABEL_13:
                  setProtocolContextFlush(a2);
                }
              }

              else
              {
                v17 = v15;
                if ((v15 - 3) <= 3)
                {
                  v18 = 2;
                  while ((*([v12 _argInfo:v18] + 34) & 0x2000) != 0)
                  {
                    if (v17 == ++v18)
                    {
                      v19 = *(a2 + 8);
                      *(a2 + 8) = v19 + 1;
                      *(v25 + 8 * v19) = v9;
                      if (v17 == 5)
                      {
                        v20 = v26;
                        *(v27 + 8 * v19) = _NSXPCDistantObjectSimpleMessageSend3;
                        v21 = "v@:@@@";
                      }

                      else if (v17 == 4)
                      {
                        v20 = v26;
                        *(v27 + 8 * v19) = _NSXPCDistantObjectSimpleMessageSend2;
                        v21 = "v@:@@";
                      }

                      else
                      {
                        v20 = v26;
                        if (v17 == 3)
                        {
                          *(v27 + 8 * v19) = _NSXPCDistantObjectSimpleMessageSend1;
                          v21 = "v@:@";
                        }

                        else
                        {
                          *(v27 + 8 * v19) = _NSXPCDistantObjectSimpleMessageSend4;
                          v21 = "v@:@@@@";
                        }
                      }

                      *(v20 + 8 * v19) = v21;
                      if (v19 == 127)
                      {
                        goto LABEL_13;
                      }

                      break;
                    }
                  }
                }
              }
            }
          }
        }
      }

      objc_autoreleasePoolPop(v8);
      if (++v6 == v7)
      {
        return;
      }
    }

    v22 = protocol_getName(a1);
    v23 = [NSString stringWithFormat:@"NSXPCInterface: Unable to get extended method signature from Protocol data (%s / %s). Use of clang is required for NSXPCInterface.", v22, sel_getName(v9)];
    goto LABEL_30;
  }
}

uint64_t _NSFileSystemRepresentationWithPath(void *a1)
{
  if (!a1)
  {
    v4 = [NSString stringWithFormat:@"*** [NSFileManager fileSystemRepresentationWithPath:]: nil path argument", v1, v2];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v4 userInfo:0]);
  }

  return [a1 fileSystemRepresentation];
}

void setProtocolContextFlush(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = class_addMethodsBulk();
    if (v2)
    {
      free(v2);
    }

    *(a1 + 8) = 0;
  }
}

uint64_t methodSignatureForSelectorInProtocol(SEL aSel, Protocol *p)
{
  if (!aSel)
  {
    return 0;
  }

  if (!p)
  {
    return 0;
  }

  MethodDescription = protocol_getMethodDescription(p, aSel, 1, 1);
  types = MethodDescription.types;
  if (!MethodDescription.name)
  {
    v6 = protocol_getMethodDescription(p, aSel, 0, 1);
    types = v6.types;
    if (!v6.name)
    {
      return 0;
    }
  }

  v7 = MEMORY[0x1E695DF68];

  return [v7 signatureWithObjCTypes:types];
}

void ___setupListenerConnection_block_invoke(uint64_t a1, id a2)
{
  v10 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a2);
  if (Class == MEMORY[0x1E69E9E68])
  {
    v7 = *(a1 + 32);

    service_connection_handler_make_connection(v7, a2);
  }

  else if (Class != MEMORY[0x1E69E9E98])
  {
    v5 = MEMORY[0x1865D3A50](a2);
    v6 = _NSXPCLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v8 = 136446210;
      v9 = v5;
      _os_log_fault_impl(&dword_18075C000, v6, OS_LOG_TYPE_FAULT, "NSXPCListener: received error or other non-connection type in handler for listener: %{public}s", &v8, 0xCu);
    }

    free(v5);
  }
}

void service_connection_handler_make_connection(void *a1, _xpc_connection_s *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = -[NSXPCConnection _initWithPeerConnection:name:options:]([NSXPCConnection alloc], a2, [a1 serviceName]);
  [a1 delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([objc_msgSend(a1 "delegate")] & 1) == 0)
  {
    [v5 invalidate];
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t lazy protocol witness table accessor for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t instantiation function for generic protocol witness table for _TimeZoneGMTICU(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _TimeZoneGMTICU and conformance _TimeZoneGMTICU();
  *(a1 + 8) = result;
  return result;
}

unint64_t specialized BidirectionalCollection._index<A>(_:backwardsOffsetByCountOf:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    while (a1 >= 0x4000)
    {
      v5 = String.index(before:)();
      a1 = String.index(before:)();
      if (!(v5 >> 14))
      {
        return a1;
      }
    }

    return 0;
  }

  return a1;
}

uint64_t TimeZoneCache.State.fixed(_:)(uint64_t a1, unint64_t a2)
{
  v5 = v2;
  v6 = a1 == 5524807 && a2 == 0xE300000000000000;
  if (v6 || (v3 = a2, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v8 = *(v2 + 40);
    if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v10 & 1) == 0))
    {
      type metadata accessor for _TimeZoneGMTICU();
      swift_allocObject();
      v11 = _TimeZoneGMTICU.init(secondsFromGMT:)(0);
      if (!v11)
      {
        return v11;
      }

      v12 = lazy protocol witness table accessor for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating(&lazy protocol witness table cache variable for type _TimeZoneGMTICU and conformance _TimeZoneGMTICU, type metadata accessor for _TimeZoneGMTICU);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v5 + 40);
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(0);
      v17 = *(v14 + 16);
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        __break(1u);
      }

      else
      {
        LOBYTE(v3) = v16;
        if (*(v14 + 24) < v20)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, isUniquelyReferenced_nonNull_native);
          v21 = v14;
          v15 = specialized __RawDictionaryStorage.find<A>(_:)(0);
          if ((v3 & 1) == (v22 & 1))
          {
            if (v3)
            {
LABEL_13:
              v23 = (*(v21 + 56) + 16 * v15);
              *v23 = v11;
              v23[1] = v12;
              swift_unknownObjectRelease();
              *(v5 + 40) = v21;
              return v11;
            }

LABEL_26:
            specialized _NativeDictionary._insert(at:key:value:)(v15, 0, v11, v21);
            *(v5 + 40) = v21;
            return v11;
          }

          goto LABEL_70;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v21 = v14;
          if (v16)
          {
            goto LABEL_13;
          }

          goto LABEL_26;
        }
      }

      v73 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation17_TimeZoneProtocol_pGMd);
      v37 = static _DictionaryStorage.copy(original:)();
      v21 = v37;
      if (!*(v14 + 16))
      {
LABEL_48:

        v15 = v73;
        if (v3)
        {
          goto LABEL_13;
        }

        goto LABEL_26;
      }

      v38 = (v37 + 64);
      v39 = v14 + 64;
      v40 = ((1 << *(v21 + 32)) + 63) >> 6;
      if (v21 != v14 || v38 >= v39 + 8 * v40)
      {
        memmove(v38, (v14 + 64), 8 * v40);
      }

      v41 = 0;
      *(v21 + 16) = *(v14 + 16);
      v42 = 1 << *(v14 + 32);
      v43 = *(v14 + 64);
      v44 = -1;
      if (v42 < 64)
      {
        v44 = ~(-1 << v42);
      }

      v45 = v44 & v43;
      v46 = (v42 + 63) >> 6;
      if ((v44 & v43) != 0)
      {
        do
        {
          v47 = __clz(__rbit64(v45));
          v45 &= v45 - 1;
LABEL_46:
          v50 = v47 | (v41 << 6);
          v51 = *(*(v14 + 56) + 16 * v50);
          *(*(v21 + 48) + 8 * v50) = *(*(v14 + 48) + 8 * v50);
          *(*(v21 + 56) + 16 * v50) = v51;
          swift_unknownObjectRetain();
        }

        while (v45);
      }

      v48 = v41;
      while (1)
      {
        v41 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v41 >= v46)
        {
          goto LABEL_48;
        }

        v49 = *(v39 + 8 * v41);
        ++v48;
        if (v49)
        {
          v47 = __clz(__rbit64(v49));
          v45 = (v49 - 1) & v49;
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_71;
    }

LABEL_16:
    v11 = *(*(v8 + 56) + 16 * v9);
    swift_unknownObjectRetain();
    return v11;
  }

  v8 = *(v2 + 32);
  if (*(v8 + 16))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, v3);
    if (v24)
    {
      goto LABEL_16;
    }
  }

  type metadata accessor for _TimeZoneICU();
  swift_allocObject();

  v11 = _TimeZoneICU.init(identifier:)(a1, v3);
  if (!v11)
  {
    return v11;
  }

  v25 = lazy protocol witness table accessor for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating(&lazy protocol witness table cache variable for type _TimeZoneICU and conformance _TimeZoneICU, type metadata accessor for _TimeZoneICU);
  swift_retain_n();
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v5 + 32);
  v28 = specialized __RawDictionaryStorage.find<A>(_:)(a1, v3);
  v30 = *(v27 + 16);
  v31 = (v29 & 1) == 0;
  v19 = __OFADD__(v30, v31);
  v32 = v30 + v31;
  if (v19)
  {
    __break(1u);
    goto LABEL_51;
  }

  v4 = v29;
  if (*(v27 + 24) >= v32)
  {
    if (v26)
    {
      v33 = v27;
      if (v29)
      {
        goto LABEL_22;
      }

      goto LABEL_29;
    }

LABEL_51:
    v70 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation17_TimeZoneProtocol_pGMd);
    v52 = static _DictionaryStorage.copy(original:)();
    v33 = v52;
    if (*(v27 + 16))
    {
      v53 = (v52 + 64);
      __src = (v27 + 64);
      v54 = ((1 << *(v33 + 32)) + 63) >> 6;
      if (v33 != v27 || v53 >= &__src[8 * v54])
      {
        memmove(v53, __src, 8 * v54);
      }

      v72 = 0;
      *(v33 + 16) = *(v27 + 16);
      v55 = 1 << *(v27 + 32);
      v56 = *(v27 + 64);
      v57 = -1;
      if (v55 < 64)
      {
        v57 = ~(-1 << v55);
      }

      v58 = v57 & v56;
      v69 = (v55 + 63) >> 6;
      if ((v57 & v56) != 0)
      {
        do
        {
          v59 = __clz(__rbit64(v58));
          v58 &= v58 - 1;
          v60 = v72;
LABEL_64:
          v63 = 16 * (v59 | (v60 << 6));
          v64 = (*(v27 + 48) + v63);
          v66 = *v64;
          v65 = v64[1];
          v67 = *(*(v27 + 56) + v63);
          v68 = (*(v33 + 48) + v63);
          *v68 = v66;
          v68[1] = v65;
          *(*(v33 + 56) + v63) = v67;

          swift_unknownObjectRetain();
        }

        while (v58);
      }

      v61 = v72;
      while (1)
      {
        v60 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          goto LABEL_69;
        }

        if (v60 >= v69)
        {
          break;
        }

        v62 = *&__src[8 * v60];
        ++v61;
        if (v62)
        {
          v59 = __clz(__rbit64(v62));
          v58 = (v62 - 1) & v62;
          v72 = v60;
          goto LABEL_64;
        }
      }
    }

    v28 = v70;
    if (v4)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, v26);
  v33 = v27;
  v28 = specialized __RawDictionaryStorage.find<A>(_:)(a1, v3);
  if ((v4 & 1) == (v34 & 1))
  {
    if (v4)
    {
LABEL_22:
      v35 = (*(v33 + 56) + 16 * v28);
      *v35 = v11;
      v35[1] = v25;

      swift_unknownObjectRelease();
LABEL_30:
      *(v5 + 32) = v33;
      return v11;
    }

LABEL_29:
    specialized _NativeDictionary._insert(at:key:value:)(v28, a1, v3, v11, v33);

    goto LABEL_30;
  }

LABEL_71:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t one-time initialization function for cache()
{
  type metadata accessor for _TimeZoneGMTICU();
  swift_allocObject();
  result = _TimeZoneGMTICU.init(secondsFromGMT:)(0);
  if (result)
  {
    v1 = result;
    v2 = lazy protocol witness table accessor for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating(&lazy protocol witness table cache variable for type _TimeZoneGMTICU and conformance _TimeZoneGMTICU, type metadata accessor for _TimeZoneGMTICU);
    *&xmmword_1ED440468 = v1;
    *(&xmmword_1ED440468 + 1) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
    v3 = 51;
    v4 = static _DictionaryStorage.allocate(capacity:)();

    v5 = &unk_1EEECC208;
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v9 = *(v5 - 1);
      v8 = *v5;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
      if (v10)
      {
        __break(1u);
LABEL_9:
        __break(1u);
        goto LABEL_10;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      v12 = (v4[7] + 16 * result);
      *v12 = v9;
      v12[1] = v8;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_9;
      }

      v4[2] = v15;
      v5 += 4;
      --v3;
    }

    while (v3);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd);
    swift_arrayDestroy();
    result = *MEMORY[0x1E695E9B8];
    if (!*MEMORY[0x1E695E9B8])
    {
      goto LABEL_11;
    }

    _CFNotificationCenterInitializeDependentNotificationIfNecessary();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA13TimeZoneCacheV0C0V_GMd);
    result = swift_allocObject();
    *(result + 120) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    v16 = MEMORY[0x1E69E7CC8];
    *(result + 48) = MEMORY[0x1E69E7CC8];
    *(result + 56) = v16;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = v16;
    *(result + 104) = v16;
    *(result + 112) = v4;
    static TimeZoneCache.cache = result;
  }

  else
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in String.init(_utf16:)@<X0>(uint64_t result@<X0>, unsigned __int16 *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = 0;
  v6 = 0;
  if (a2)
  {
    v7 = &a2[a3];
  }

  else
  {
    v7 = 0;
  }

  v29 = 0;
  for (i = 0; ; v5 = i)
  {
    if (v5)
    {
      v8 = v29;
      if ((v29 & 0xF800) != 0xD800)
      {
        v26 = v6;
        v27 = result;
        v25 = a2;
        lazy protocol witness table accessor for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser();
        v24 = WeekendRange.onsetTime.modify();
        specialized RangeReplaceableCollection.remove(at:)(0);
        v24(v28, 0);
        a2 = v25;
        v6 = v26;
        result = v27;
        v8 = v8;
        v11 = 1;
        goto LABEL_28;
      }

      if (!a2)
      {
        goto LABEL_20;
      }

      v9 = a2;
      if (a2 == v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (!a2 || a2 == v7)
      {
LABEL_50:
        if (v6 < 0)
        {
          __break(1u);
        }

        else
        {
          result = static String._tryFromUTF8(_:)();
          *a4 = result;
          a4[1] = v23;
        }

        return result;
      }

      v8 = *a2;
      v9 = a2 + 1;
      if ((v8 & 0xF800) != 0xD800)
      {
        v11 = 1;
        ++a2;
        goto LABEL_28;
      }

      v8 |= HIWORD(v29) << 16;
      v5 = 16;
      ++a2;
      if (v9 == v7)
      {
        goto LABEL_20;
      }
    }

    a2 = v9 + 1;
    v8 = (*v9 << v5) | ((-65535 << v5) - 1) & v8;
    v10 = v5 + 16;
    if ((v5 + 16) >= 0x20u)
    {
      goto LABEL_19;
    }

    if (a2 == v7)
    {
      goto LABEL_16;
    }

    a2 = v9 + 2;
    v8 = (v9[1] << v10) | ((-65535 << v10) - 1) & v8;
    v10 = v5 + 32;
    if (v5 < 0xE0u)
    {
LABEL_19:
      v5 = v10;
    }

    else if (a2 == v7 || (a2 = v9 + 3, v8 = (v9[2] << v5) | ((-65535 << v5) - 1) & v8, v10 = v5 + 48, v5 += 48, v5 < 0x20u))
    {
LABEL_16:
      v5 = v10;
      if (!v10)
      {
        goto LABEL_50;
      }
    }

LABEL_20:
    v12 = v8 & 0xFC00FC00;
    if ((v8 & 0xFC00FC00) == 0xDC00D800)
    {
      v13 = 32;
    }

    else
    {
      v13 = 16;
    }

    i = v5 - v13;
    if (v12 == -603924480)
    {
      v14 = 32;
    }

    else
    {
      v14 = 16;
    }

    v29 = v8 >> v14;
    if (v12 != -603924480)
    {
      goto LABEL_53;
    }

    v11 = 0;
LABEL_28:
    if (v8 >= 0x80u)
    {
      break;
    }

    v15 = (v8 + 1);
    if (v8 != 0xFF)
    {
      goto LABEL_30;
    }

LABEL_5:
    ;
  }

  v18 = (v8 & 0x3F) << 8;
  if (v8 < 0x800u)
  {
    v15 = v18 + (v8 >> 6) + 33217;
    goto LABEL_30;
  }

  if ((v8 & 0xF800) != 0xD800)
  {
    v19 = ((v18 | (v8 >> 6) & 0x3F) << 8) | (v8 >> 12);
    v20 = 8487393;
LABEL_42:
    v15 = v19 + v20;
    goto LABEL_30;
  }

  if ((v11 & 1) == 0)
  {
    v21 = ((v8 & 0x3FF) << 10) | HIWORD(v8) & 0x3FF;
    v19 = ((v21 + 0x10000) >> 4) & 0x3F00 | ((v21 + 0x10000) >> 18) | (((v21 >> 6) & 0x3F | (((v21 + 0x10000) & 0x3F) << 8)) << 16);
    v20 = -2122219023;
    goto LABEL_42;
  }

  if (v8 > 0x7Fu)
  {
    v22 = (v8 & 0x3F) << 8;
    v15 = ((v8 >> 12) | ((v22 | (v8 >> 6) & 0x3F) << 8)) + 8487393;
    if (v8 < 0x800u)
    {
      v15 = (v8 >> 6) + v22 + 33217;
    }
  }

  else
  {
    v15 = v8 + 1;
  }

LABEL_30:
  while (1)
  {
    *(result + v6) = v15 - 1;
    v16 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    ++v6;
    v17 = v15 >= 0x100;
    v15 >>= 8;
    if (!v17)
    {
      v6 = v16;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_53:
  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!a2)
  {
    v10 = 0;
    v9 = 0;
    v7 = 0;
LABEL_41:
    v14 = 1;
    goto LABEL_42;
  }

  v7 = a3;
  if (!a3)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_41;
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = a5 & 0xFFFFFFFFFFFFFFLL;
  v12 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v13 = a3 - 1;
  v14 = 1;
  do
  {
    if ((v14 & 1) == 0)
    {
      v14 = 1;
      LOWORD(v17) = v9;
      v9 = 0;
      goto LABEL_33;
    }

    if (v10 >= v6)
    {
      goto LABEL_43;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      v29 = a5;
      v32 = a2;
      v23 = a4;
      v24 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      a4 = v23;
      v17 = v24;
      v19 = v25;
      a5 = v29;
      a2 = v32;
    }

    else
    {
      if ((a5 & 0x2000000000000000) == 0)
      {
        v15 = v12;
        if ((a4 & 0x1000000000000000) == 0)
        {
          v30 = a5;
          v33 = a2;
          v26 = a4;
          v15 = _StringObject.sharedUTF8.getter();
          a5 = v30;
          a2 = v33;
          a4 = v26;
        }

        v16 = (v15 + v10);
        v17 = *(v15 + v10);
        if ((*(v15 + v10) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v20 = (__clz(v17 ^ 0xFF) - 24);
        if (v20 <= 2)
        {
          if (v20 == 1)
          {
LABEL_15:
            v18 = 1;
          }

          else
          {
            LOWORD(v17) = v16[1] & 0x3F | ((v17 & 0x1F) << 6);
            v18 = 2;
          }

LABEL_16:
          v10 += v18;
LABEL_32:
          v14 = 1;
          goto LABEL_33;
        }

        if (v20 == 3)
        {
          LOWORD(v17) = (v17 << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v18 = 3;
          goto LABEL_16;
        }

LABEL_30:
        v17 = ((v17 & 0xF) << 18) | ((v16[1] & 0x3F) << 12) | ((v16[2] & 0x3F) << 6) | v16[3] & 0x3F;
        v19 = 4;
        goto LABEL_31;
      }

      v34[0] = a4;
      v34[1] = v11;
      v16 = v34 + v10;
      v17 = *(v34 + v10);
      if ((*(v34 + v10) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      v21 = (__clz(v17 ^ 0xFF) - 24);
      if (v21 > 2)
      {
        if (v21 == 3)
        {
          v17 = ((v17 & 0xF) << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v19 = 3;
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (v21 == 1)
      {
LABEL_19:
        v19 = 1;
        goto LABEL_31;
      }

      v17 = v16[1] & 0x3F | ((v17 & 0x1F) << 6);
      v19 = 2;
    }

LABEL_31:
    v10 += v19;
    if (!HIWORD(v17))
    {
      goto LABEL_32;
    }

    v28 = a5;
    v31 = a2;
    v27 = a4;
    v9 = Unicode.Scalar.UTF16View.subscript.getter();
    v22 = Unicode.Scalar.UTF16View.subscript.getter();
    a5 = v28;
    a2 = v31;
    a4 = v27;
    LOWORD(v17) = v22;
    v14 = 0;
LABEL_33:
    *(a2 + 2 * v8) = v17;
    if (v13 == v8)
    {
      goto LABEL_42;
    }

    ++v8;
  }

  while (!__OFADD__(v8, 1));
  __break(1u);
LABEL_43:
  v14 = 1;
  v7 = v8;
LABEL_42:
  *v5 = a4;
  *(v5 + 8) = a5;
  *(v5 + 16) = v10;
  *(v5 + 24) = v6;
  *(v5 + 32) = v9;
  *(v5 + 34) = v14;
  return v7;
}

void *_TimeZoneGMTICU.init(secondsFromGMT:)(uint64_t a1)
{
  v2 = v1;
  if ((a1 - 64801) >= 0xFFFFFFFFFFFE05BFLL)
  {
    if (a1 >= 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = -a1;
    }

    v5 = (v4 + 30) % 0xE10u;
    if (v4 > 0xDF1 || (v4 + 30) % 0xE10u >= 0x3C)
    {
      if (v4 > 0x8C81)
      {
        v8 = dispatch thunk of CustomStringConvertible.description.getter();
        v7 = v9;
      }

      else
      {
        v6 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865CB0E0](v6);

        v8 = 48;
        v7 = 0xE100000000000000;
      }

      if (v5 > 0x257u)
      {
        v12 = dispatch thunk of CustomStringConvertible.description.getter();
        v11 = v13;
      }

      else
      {
        v10 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865CB0E0](v10);

        v12 = 48;
        v11 = 0xE100000000000000;
      }

      if (a1 >= 0)
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      MEMORY[0x1865CB0E0](v14, 0xE100000000000000);

      MEMORY[0x1865CB0E0](v8, v7);

      MEMORY[0x1865CB0E0](v12, v11);
    }

    v1[3] = 5524807;
    v1[4] = 0xE300000000000000;
    v1[2] = a1;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type _TimeZoneGMTICU and conformance _TimeZoneGMTICU()
{
  result = lazy protocol witness table cache variable for type _TimeZoneGMTICU and conformance _TimeZoneGMTICU;
  if (!lazy protocol witness table cache variable for type _TimeZoneGMTICU and conformance _TimeZoneGMTICU)
  {
    type metadata accessor for _TimeZoneGMTICU();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TimeZoneGMTICU and conformance _TimeZoneGMTICU);
  }

  return result;
}

uint64_t TimeZoneCache.State.findCurrentTimeZone()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = [v4 processInfo];
  v6 = [v5 environment];

  v7 = MEMORY[0x1E69E6158];
  if (!v6)
  {
    v8 = MEMORY[0x1E69E7CA0];
    v13 = MEMORY[0x1E69E7CC8];
    if (!*(MEMORY[0x1E69E7CC8] + 16))
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v8 = MEMORY[0x1E69E7CA0];
  v9 = MEMORY[0x1E69E7CA0] + 8;
  swift_unknownObjectRetain();
  if (v7 == v9)
  {
    v10 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
    if (!v10)
    {
      v11 = [v6 count];
      if (v11)
      {
        v12 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
        v13 = static _DictionaryStorage.allocate(capacity:)();
        v14 = v13[6];
        v15 = v13[7];

        v16 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v14, v15, v6, v12);
        if ((v16 & 0x8000000000000000) == 0 && v12 >= v16)
        {
          v13[2] = v16;
          v7 = MEMORY[0x1E69E6158];
          if (v16)
          {
            __src = a1;
            v197 = v2;
            a1 = v16 - 1;
            v2 = (v13 + 8);
            while (1)
            {
              while (((*(v2 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) != 0)
              {
                if (--a1 < 0)
                {
                  goto LABEL_72;
                }
              }

              v17 = (v13[6] + 16 * a1);
              v18 = *v17;
              v7 = v17[1];

              v19 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v7);
              v21 = v20;

              if (v21)
              {
                v22 = v13[6] + 16 * a1;

                outlined destroy of String(v22);
                v23 = __swift_destroy_boxed_opaque_existential_1(v13[7] + 32 * a1);
                v24 = v13[2];
                v25 = __OFSUB__(v24, 1);
                v26 = v24 - 1;
                if (v25)
                {
                  goto LABEL_136;
                }

                v13[2] = v26;
              }

              else
              {
                *(v2 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
                if (a1 >= v19)
                {
                  if (v19 != a1)
                  {
                    v31 = v13[6];
                    v32 = (v31 + 16 * v19);
                    v33 = (v31 + 16 * a1);
                    v34 = *v32;
                    v35 = v32[1];
                    v36 = v33[1];
                    *v32 = *v33;
                    v32[1] = v36;
                    *v33 = v34;
                    v33[1] = v35;
                    v37 = v13[7];
                    v38 = (v37 + 32 * v19);
                    v39 = (v37 + 32 * a1);
                    outlined init with take of Any(v38, v199);
                    outlined init with take of Any(v39, v38);
                    outlined init with take of Any(v199, v39);
                    goto LABEL_18;
                  }
                }

                else
                {
                  *(v13[6] + 16 * v19) = *(v13[6] + 16 * a1);
                  v27 = v13[7];
                  v28 = (v27 + 32 * a1);
                  v29 = v28[1];
                  v30 = (v27 + 32 * v19);
                  *v30 = *v28;
                  v30[1] = v29;
                }
              }

              --a1;
LABEL_18:
              v7 = MEMORY[0x1E69E6158];
              if (a1 < 0)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_134;
        }

        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
        goto LABEL_160;
      }

LABEL_93:
      v13 = MEMORY[0x1E69E7CC8];
      goto LABEL_25;
    }

LABEL_24:
    v13 = v10;
    goto LABEL_25;
  }

  v10 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (v10)
  {
    goto LABEL_24;
  }

  v77 = [v6 count];
  if (!v77)
  {
    goto LABEL_93;
  }

  v78 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
  v13 = static _DictionaryStorage.allocate(capacity:)();
  v79 = v13[6];
  v80 = v13[7];

  v81 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_SSTt3g5Tf4xxnn_n(v79, v80, v6, v78);
  if (v81 < 0 || v78 < v81)
  {
    goto LABEL_158;
  }

  v13[2] = v81;
  v7 = MEMORY[0x1E69E6158];
  if (v81)
  {
    __src = a1;
    v197 = v2;
    v2 = v81 - 1;
    a1 = (v13 + 8);
    while (1)
    {
      while (((*(a1 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v2) & 1) != 0)
      {
LABEL_61:
        if (--v2 < 0)
        {
          goto LABEL_72;
        }
      }

      v82 = (v13[6] + 16 * v2);
      v83 = *v82;
      v84 = v82[1];

      v85 = specialized __RawDictionaryStorage.find<A>(_:)(v83, v84);
      v21 = v86;

      if (v21)
      {
        v22 = v13[6];
        LOBYTE(v7) = 16 * v2;

        outlined destroy of String(v22 + 16 * v2);
        v23 = outlined destroy of String(v13[7] + 16 * v2);
        v87 = v13[2];
        v25 = __OFSUB__(v87, 1);
        v88 = v87 - 1;
        if (v25)
        {
          goto LABEL_137;
        }

        v13[2] = v88;

        goto LABEL_68;
      }

      *(a1 + ((v85 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v85;
      if (v2 >= v85)
      {
        v7 = MEMORY[0x1E69E6158];
        if (v85 == v2)
        {
          goto LABEL_61;
        }

        v90 = v13[6];
        v91 = (v90 + 16 * v85);
        v92 = (v90 + 16 * v2);
        v93 = *v91;
        v94 = v91[1];
        v95 = v92[1];
        *v91 = *v92;
        v91[1] = v95;
        *v92 = v93;
        v92[1] = v94;
        v96 = v13[7];
        v97 = (v96 + 16 * v85);
        v98 = (v96 + 16 * v2);
        v99 = *v97;
        v100 = v97[1];
        v101 = v98[1];
        *v97 = *v98;
        v97[1] = v101;
        *v98 = v99;
        v98[1] = v100;
        if (v2 < 0)
        {
LABEL_72:

          a1 = __src;
          v2 = v197;
          goto LABEL_25;
        }
      }

      else
      {
        v89 = 16 * v85;
        *(v13[6] + v89) = *(v13[6] + 16 * v2);
        *(v13[7] + v89) = *(v13[7] + 16 * v2);
LABEL_68:
        --v2;
        v7 = MEMORY[0x1E69E6158];
        if (v2 < 0)
        {
          goto LABEL_72;
        }
      }
    }
  }

LABEL_134:

LABEL_25:

  if (!v13[2])
  {
LABEL_29:

    goto LABEL_30;
  }

LABEL_26:
  v40 = specialized __RawDictionaryStorage.find<A>(_:)(0x454C49465A54, 0xE600000000000000);
  if ((v41 & 1) == 0)
  {
    goto LABEL_29;
  }

  v42 = (v13[7] + 16 * v40);
  v43 = *v42;
  v44 = v42[1];

  v45 = TimeZoneCache.State.fixed(_:)(v43, v44);
  v47 = v46;

  if (v45)
  {
LABEL_112:
    *a1 = v45;
    *(a1 + 8) = v47;
    return result;
  }

LABEL_30:
  v49 = [v4 processInfo];
  v4 = [v49 environment];

  if (v4)
  {
    swift_unknownObjectRetain();
    if (v7 == v8 + 8)
    {
      v50 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
      if (!v50)
      {
        v51 = [v4 count];
        if (v51)
        {
          v52 = v51;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
          v53 = static _DictionaryStorage.allocate(capacity:)();
          v54 = v53[6];
          v7 = v53[7];

          v55 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v54, v7, v4, v52);
          if ((v55 & 0x8000000000000000) == 0 && v52 >= v55)
          {
            v53[2] = v55;
            if (v55)
            {
              v56 = v2;
              v57 = v55 - 1;
              v2 = (v53 + 8);
              v21 = 1;
              do
              {
                while (1)
                {
                  while (((*(v2 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v57) & 1) != 0)
                  {
                    if (--v57 < 0)
                    {
                      goto LABEL_91;
                    }
                  }

                  v58 = (v53[6] + 16 * v57);
                  v59 = *v58;
                  v22 = v58[1];

                  v60 = specialized __RawDictionaryStorage.find<A>(_:)(v59, v22);
                  LOBYTE(v7) = v61;

                  if (v7)
                  {
                    break;
                  }

                  *(v2 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
                  if (v57 >= v60)
                  {
                    if (v60 == v57)
                    {
                      if (--v57 < 0)
                      {
                        goto LABEL_91;
                      }
                    }

                    else
                    {
                      v68 = v53[6];
                      v69 = (v68 + 16 * v60);
                      v70 = (v68 + 16 * v57);
                      v71 = *v69;
                      v72 = v69[1];
                      v73 = v70[1];
                      *v69 = *v70;
                      v69[1] = v73;
                      *v70 = v71;
                      v70[1] = v72;
                      v74 = v53[7];
                      v75 = (v74 + 32 * v60);
                      v76 = (v74 + 32 * v57);
                      outlined init with take of Any(v75, v199);
                      outlined init with take of Any(v76, v75);
                      outlined init with take of Any(v199, v76);
                      if (v57 < 0)
                      {
                        goto LABEL_91;
                      }
                    }
                  }

                  else
                  {
                    *(v53[6] + 16 * v60) = *(v53[6] + 16 * v57);
                    v64 = v53[7];
                    v65 = (v64 + 32 * v60);
                    v66 = (v64 + 32 * v57);
                    v67 = v66[1];
                    *v65 = *v66;
                    v65[1] = v67;
                    if (--v57 < 0)
                    {
                      goto LABEL_91;
                    }
                  }
                }

                v6 = (v53[6] + 16 * v57);

                outlined destroy of String(v6);
                v23 = __swift_destroy_boxed_opaque_existential_1(v53[7] + 32 * v57);
                v62 = v53[2];
                v25 = __OFSUB__(v62, 1);
                v63 = v62 - 1;
                if (v25)
                {
                  goto LABEL_138;
                }

                v53[2] = v63;

                --v57;
              }

              while ((v57 & 0x8000000000000000) == 0);
LABEL_91:
              v2 = v56;
              goto LABEL_92;
            }

            goto LABEL_92;
          }

          goto LABEL_159;
        }

LABEL_94:
        v53 = MEMORY[0x1E69E7CC8];
LABEL_95:

        if (!v53[2])
        {
          goto LABEL_100;
        }

        goto LABEL_96;
      }
    }

    else
    {
      v50 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
      if (!v50)
      {
        v102 = [v4 count];
        if (v102)
        {
          v103 = v102;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
          v53 = static _DictionaryStorage.allocate(capacity:)();
          v104 = v53[6];
          v7 = v53[7];

          v105 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_SSTt3g5Tf4xxnn_n(v104, v7, v4, v103);
          if ((v105 & 0x8000000000000000) == 0 && v103 >= v105)
          {
            v53[2] = v105;
            if (v105)
            {
              v56 = v2;
              v106 = v105 - 1;
              v2 = (v53 + 8);
              v21 = 1;
              do
              {
                while (1)
                {
                  while (((*(v2 + ((v106 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v106) & 1) != 0)
                  {
                    if (--v106 < 0)
                    {
                      goto LABEL_91;
                    }
                  }

                  v107 = (v53[6] + 16 * v106);
                  v108 = *v107;
                  v109 = v107[1];

                  v110 = specialized __RawDictionaryStorage.find<A>(_:)(v108, v109);
                  LOBYTE(v7) = v111;

                  if (v7)
                  {
                    break;
                  }

                  *(v2 + ((v110 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v110;
                  if (v106 >= v110)
                  {
                    if (v110 == v106)
                    {
                      if (--v106 < 0)
                      {
                        goto LABEL_91;
                      }
                    }

                    else
                    {
                      v115 = v53[6];
                      v116 = (v115 + 16 * v110);
                      v117 = (v115 + 16 * v106);
                      v118 = *v116;
                      v119 = v116[1];
                      v120 = v117[1];
                      *v116 = *v117;
                      v116[1] = v120;
                      *v117 = v118;
                      v117[1] = v119;
                      v121 = v53[7];
                      v122 = (v121 + 16 * v110);
                      v123 = (v121 + 16 * v106);
                      v124 = *v122;
                      v125 = v122[1];
                      v126 = v123[1];
                      *v122 = *v123;
                      v122[1] = v126;
                      *v123 = v124;
                      v123[1] = v125;
                      if (v106 < 0)
                      {
                        goto LABEL_91;
                      }
                    }
                  }

                  else
                  {
                    v114 = 16 * v110;
                    *(v53[6] + v114) = *(v53[6] + 16 * v106);
                    *(v53[7] + v114) = *(v53[7] + 16 * v106--);
                    if (v106 < 0)
                    {
                      goto LABEL_91;
                    }
                  }
                }

                v6 = v53[6];
                v22 = 16 * v106;

                outlined destroy of String(v6 + 16 * v106);
                v23 = outlined destroy of String(v53[7] + 16 * v106);
                v112 = v53[2];
                v25 = __OFSUB__(v112, 1);
                v113 = v112 - 1;
                if (v25)
                {
                  goto LABEL_139;
                }

                v53[2] = v113;

                --v106;
              }

              while ((v106 & 0x8000000000000000) == 0);
              goto LABEL_91;
            }

LABEL_92:

            goto LABEL_95;
          }

LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        goto LABEL_94;
      }
    }

    v53 = v50;
    goto LABEL_95;
  }

  v53 = MEMORY[0x1E69E7CC8];
  if (!*(MEMORY[0x1E69E7CC8] + 16))
  {
    goto LABEL_100;
  }

LABEL_96:
  v127 = specialized __RawDictionaryStorage.find<A>(_:)(23124, 0xE200000000000000);
  if (v128)
  {
    v129 = (v53[7] + 16 * v127);
    v131 = *v129;
    v130 = v129[1];

    v132 = *(v2 + 56);
    if (v132)
    {
      if (!*(v132 + 16))
      {
        goto LABEL_111;
      }
    }

    else
    {
      v132 = *(v2 + 96);
      *(v2 + 56) = v132;

      if (!*(v132 + 16))
      {
        goto LABEL_111;
      }
    }

    v142 = specialized __RawDictionaryStorage.find<A>(_:)(v131, v130);
    if (v143)
    {
      v144 = (*(v132 + 56) + 16 * v142);
      v145 = *v144;
      v7 = v144[1];

      v146 = TimeZoneCache.State.fixed(_:)(v145, v7);
      v148 = v147;

      if (v146)
      {

        *a1 = v146;
        *(a1 + 8) = v148;
        return result;
      }
    }

LABEL_111:
    v45 = TimeZoneCache.State.fixed(_:)(v131, v130);
    v47 = v149;

    if (v45)
    {
      goto LABEL_112;
    }

    goto LABEL_101;
  }

LABEL_100:

LABEL_101:
  v4 = swift_slowAlloc();
  bzero(v4, 0x401uLL);
  v133 = readlink("/var/db/timezone/localtime", v4, 0x400uLL);
  if (v133 < 0)
  {
    goto LABEL_119;
  }

  *(v4 + v133) = 0;
  v134 = MEMORY[0x1865CAEB0](v4);
  if (!v135)
  {
    goto LABEL_119;
  }

  v136 = v134;
  v137 = v135;
  v138 = 0xD000000000000019;
  v139 = 0x8000000181486900;
  v140 = specialized BidirectionalCollection.last.getter(0xD000000000000019, 0x8000000181486900);
  if (!v141)
  {
    goto LABEL_114;
  }

  if (v140 == 47 && v141 == 0xE100000000000000)
  {

    goto LABEL_115;
  }

  v150 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v150 & 1) == 0)
  {
LABEL_114:
    v139 = 0x80000001814805A0;
    v138 = 0xD00000000000001ALL;
  }

LABEL_115:
  specialized BidirectionalCollection._range<A>(of:anchored:backwards:)(v138, v139, 0, 0, v136, v137);
  v7 = v151;
  v153 = v152;

  if (v153)
  {
  }

  else
  {
    v154 = specialized Collection.suffix(from:)(v7, v136, v137);
    v156 = v155;
    v7 = v157;
    v159 = v158;

    v160 = MEMORY[0x1865CAE80](v154, v156, v7, v159);
    v162 = v161;

    v163 = TimeZoneCache.State.fixed(_:)(v160, v162);
    v165 = v164;

    if (v163)
    {
      *a1 = v163;
      *(a1 + 8) = v165;
      return MEMORY[0x1865D2690](v4, -1, -1);
    }
  }

LABEL_119:
  v166 = *(v2 + 40);
  if (*(v166 + 16))
  {
    v167 = specialized __RawDictionaryStorage.find<A>(_:)(0);
    if (v168)
    {
      v169 = *(v166 + 56) + 16 * v167;
      v6 = *v169;
      v22 = *(v169 + 8);
      swift_unknownObjectRetain();
LABEL_132:
      *a1 = v6;
      *(a1 + 8) = v22;
      return MEMORY[0x1865D2690](v4, -1, -1);
    }
  }

  type metadata accessor for _TimeZoneGMTICU();
  swift_allocObject();
  v170 = _TimeZoneGMTICU.init(secondsFromGMT:)(0);
  if (!v170)
  {
    goto LABEL_162;
  }

  v6 = v170;
  v22 = lazy protocol witness table accessor for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating(&lazy protocol witness table cache variable for type _TimeZoneGMTICU and conformance _TimeZoneGMTICU, type metadata accessor for _TimeZoneGMTICU);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v199[0] = *(v2 + 40);
  v21 = *&v199[0];
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(0);
  v173 = *(v21 + 16);
  v174 = (v172 & 1) == 0;
  v25 = __OFADD__(v173, v174);
  v175 = v173 + v174;
  if (v25)
  {
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
    v198 = v2;
    v194 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation17_TimeZoneProtocol_pGMd);
    v179 = static _DictionaryStorage.copy(original:)();
    v176 = v179;
    if (!*(v21 + 16))
    {
LABEL_155:

      v23 = v194;
      v2 = v198;
      if (v7)
      {
        goto LABEL_127;
      }

      goto LABEL_130;
    }

    v180 = a1;
    v181 = (v179 + 64);
    v182 = ((1 << *(v176 + 32)) + 63) >> 6;
    __srca = (v21 + 64);
    if (v176 != v21 || v181 >= v21 + 64 + 8 * v182)
    {
      memmove(v181, __srca, 8 * v182);
    }

    v183 = 0;
    *(v176 + 16) = *(v21 + 16);
    v184 = 1 << *(v21 + 32);
    v185 = *(v21 + 64);
    v186 = -1;
    if (v184 < 64)
    {
      v186 = ~(-1 << v184);
    }

    v187 = v186 & v185;
    v188 = (v184 + 63) >> 6;
    if ((v186 & v185) != 0)
    {
      do
      {
        v189 = __clz(__rbit64(v187));
        v187 &= v187 - 1;
LABEL_153:
        v192 = v189 | (v183 << 6);
        v193 = *(*(v21 + 56) + 16 * v192);
        *(*(v176 + 48) + 8 * v192) = *(*(v21 + 48) + 8 * v192);
        *(*(v176 + 56) + 16 * v192) = v193;
        swift_unknownObjectRetain();
      }

      while (v187);
    }

    v190 = v183;
    a1 = v180;
    while (1)
    {
      v183 = v190 + 1;
      if (__OFADD__(v190, 1))
      {
        goto LABEL_161;
      }

      if (v183 >= v188)
      {
        goto LABEL_155;
      }

      v191 = *(__srca + v183);
      ++v190;
      if (v191)
      {
        v189 = __clz(__rbit64(v191));
        v187 = (v191 - 1) & v191;
        goto LABEL_153;
      }
    }
  }

  LOBYTE(v7) = v172;
  if (*(v21 + 24) >= v175)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v176 = v21;
      if (v172)
      {
        goto LABEL_127;
      }

      goto LABEL_130;
    }

    goto LABEL_140;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v175, isUniquelyReferenced_nonNull_native);
  v176 = *&v199[0];
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(0);
  if ((v7 & 1) == (v177 & 1))
  {
    if (v7)
    {
LABEL_127:
      v178 = (*(v176 + 56) + 16 * v23);
      *v178 = v6;
      v178[1] = v22;
      swift_unknownObjectRelease();
LABEL_131:
      *(v2 + 40) = v176;
      goto LABEL_132;
    }

LABEL_130:
    specialized _NativeDictionary._insert(at:key:value:)(v23, 0, v6, v176);
    goto LABEL_131;
  }

LABEL_163:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  String.index(before:)();
  return String.subscript.getter();
}

{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v4)
    {
      if ((a2 & 0xFF000000000000) != 0)
      {
        v5 = BYTE6(a2);
        goto LABEL_12;
      }

LABEL_10:
      v6 = 0;
      v7 = 1;
      return v6 | (v7 << 8);
    }

    if (a1 == a1 >> 32)
    {
      goto LABEL_10;
    }
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 24);
  }

  else
  {
    v5 = a1 >> 32;
  }

LABEL_12:
  result = v5 - 1;
  if (!__OFSUB__(v5, 1))
  {
    v6 = Data._Representation.subscript.getter(result, a1, a2);
    v7 = 0;
    return v6 | (v7 << 8);
  }

  __break(1u);
  return result;
}

unint64_t specialized BidirectionalCollection._range<A>(of:anchored:backwards:)(uint64_t a1, unint64_t a2, char a3, char a4, uint64_t a5, unint64_t a6)
{
  v10 = HIBYTE(a6) & 0xF;
  v11 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 1) == 0)
  {
    if (a3)
    {
      v14 = 15;
    }

    else
    {
      if ((a6 & 0x2000000000000000) != 0)
      {
        v17 = HIBYTE(a6) & 0xF;
      }

      else
      {
        v17 = a5 & 0xFFFFFFFFFFFFLL;
      }

      v18 = 7;
      if (((a6 >> 60) & ((a5 & 0x800000000000000) == 0)) != 0)
      {
        v18 = 11;
      }

      v14 = specialized BidirectionalCollection._index<A>(_:backwardsOffsetByCountOf:)(v18 | (v17 << 16), a1, a2);
      if (v19)
      {
        return 0;
      }
    }

    v16 = 15;
    goto LABEL_21;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v12 = a5 & 0xFFFFFFFFFFFFLL;
  }

  v13 = 7;
  if (((a6 >> 60) & ((a5 & 0x800000000000000) == 0)) != 0)
  {
    v13 = 11;
  }

  v14 = specialized BidirectionalCollection._index<A>(_:backwardsOffsetByCountOf:)(v13 | (v12 << 16), a1, a2);
  if (v15)
  {
    return 0;
  }

  v16 = v14;
  if ((a3 & 1) == 0)
  {
    v14 = 15;
  }

LABEL_21:
  v21 = v14 >> 14;
  v22 = v16;
  v33 = v21;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v10;
  }

  else
  {
    v23 = v11;
  }

  v24 = 4 * v23;
  v25 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v25 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v34 = v25;
  v36 = v24;
  v37 = 4 * v25;
  while (1)
  {
    v26 = 0;
    v35 = v22;
    if (v34)
    {
      v27 = v22;
      if (v22 >> 14 < v36)
      {
        v26 = 0;
        v27 = v22;
        do
        {
          v28 = String.subscript.getter();
          v30 = v29;
          if (v28 == String.subscript.getter() && v30 == v31)
          {
          }

          else
          {
            v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v32 & 1) == 0)
            {
              break;
            }
          }

          v27 = String.index(after:)();
          v26 = String.index(after:)() >> 14;
        }

        while (v26 < v37 && v27 >> 14 < v36);
      }
    }

    else
    {
      v27 = v22;
    }

    if (v26 == v37)
    {
      break;
    }

    if (v33 == v35 >> 14)
    {
      return 0;
    }

    v22 = String.index(_:offsetBy:)();
  }

  result = v35;
  if (v27 >> 14 < v35 >> 14)
  {
    __break(1u);
  }

  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x1865CB200]();
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v4, 0);

  v7 = specialized Sequence._copySequenceContents(initializing:)(v9, (v6 + 4), v5, a1, a2);

  if (v7 != v5)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    v5 = v6 - v7;
    if (__OFSUB__(v6, v7))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (!v5)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      if (!BYTE6(a2))
      {
        return MEMORY[0x1E69E7CC0];
      }

      goto LABEL_8;
    }

    v12 = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v5 = v12;
    if (!v12)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

LABEL_8:
  result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(v5, 0);
  if (v4 == 2)
  {
    if (*(a1 + 16) == *(a1 + 24))
    {
LABEL_11:
      v9 = result;
      if (v4 == 2)
      {
        v10 = 0;
        v11 = *(a1 + 16);
      }

      else
      {
        v10 = 0;
        v11 = a1;
      }

      goto LABEL_40;
    }
  }

  else
  {
    if (v4 != 1)
    {
      if ((a2 & 0xFF000000000000) == 0)
      {
        v9 = result;
        v11 = 0;
        v10 = 0;
        goto LABEL_40;
      }

      *&__src[0] = a1;
      if (v5 >= BYTE6(a2))
      {
        v10 = BYTE6(a2);
      }

      else
      {
        v10 = v5;
      }

      WORD4(__src[0]) = a2;
      BYTE10(__src[0]) = BYTE2(a2);
      BYTE11(__src[0]) = BYTE3(a2);
      BYTE12(__src[0]) = BYTE4(a2);
      BYTE13(__src[0]) = BYTE5(a2);
      v9 = result;
      memcpy(result + 4, __src, v10);
      v20 = 0;
LABEL_39:
      v15 = __OFADD__(v20, v10);
      v11 = v20 + v10;
      if (v15)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

LABEL_40:
      outlined copy of Data._Representation(a1, a2);
      Data.Iterator.init(_:at:)(a1, a2, v11, __src);
      v25[0] = __src[0];
      v25[1] = __src[1];
      v25[2] = __src[2];
      v25[3] = __src[3];
      outlined destroy of Data.Iterator(v25);
      if (v10 == v5)
      {
        return v9;
      }

      __break(1u);
      goto LABEL_44;
    }

    if (a1 == a1 >> 32)
    {
      goto LABEL_11;
    }
  }

  if (v4 == 2)
  {
    v13 = *(a1 + 16);
    v14 = *(a1 + 24);
    v15 = __OFSUB__(v14, v13);
    v16 = v14 - v13;
    if (v15)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v5 >= v16)
    {
      v10 = v16;
    }

    else
    {
      v10 = v5;
    }

    v17 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v17)
    {
      v18 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v15 = __OFSUB__(v13, v18);
      v19 = v13 - v18;
      if (v15)
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v9 = result;
      memcpy(result + 4, (v17 + v19), v10);
      v20 = *(a1 + 16);
      goto LABEL_39;
    }

    __break(1u);
  }

  else
  {
    v21 = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v5 >= v21)
    {
      v10 = v21;
    }

    else
    {
      v10 = v5;
    }

    v20 = a1;
    if (a1 > a1 >> 32)
    {
      goto LABEL_49;
    }

    v22 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v22)
    {
      v23 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v15 = __OFSUB__(a1, v23);
      v24 = a1 - v23;
      if (v15)
      {
        goto LABEL_51;
      }

      v9 = result;
      memcpy(result + 4, (v22 + v24), v10);
      goto LABEL_39;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _withResizingUCharBuffer(initialSize:_:)(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3)
{
  v8[2] = *MEMORY[0x1E69E9840];
  if ((isStackAllocationSafe & 0x80000000) != 0)
  {
    __break(1u);
  }

  if (isStackAllocationSafe < 513 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)(&v8[-1] - v4, a3, v8);
    return v8[0];
  }

  else
  {
    v6 = swift_slowAlloc();
    specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)(v6, a3, v8);
    MEMORY[0x1865D2690](v6, -1, -1);
    return v8[0];
  }
}

uint64_t specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, void *a3@<X8>)
{
  if (!a1)
  {
LABEL_7:
    __break(1u);
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = ucal_getCanonicalTimeZoneID();
  *a3 = 0;
  a3[1] = 0;
  return result;
}

uint64_t specialized String.init(_utf16:)(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = (a2 * 3) >> 64;
  v5 = 3 * a2;
  if (v4 == v5 >> 63)
  {
    if (v5 < 0)
    {
      __break(1u);
    }

    v2 = isStackAllocationSafe;
    if (v5 <= 1024)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (!isStackAllocationSafe)
  {
    v8 = swift_slowAlloc();
    closure #1 in String.init(_utf16:)(v8, v2, a2, v10);
    MEMORY[0x1865D2690](v8, -1, -1);
    return v10[0];
  }

LABEL_4:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  closure #1 in String.init(_utf16:)(&v10[-1] - v6, v2, a2, v10);
  return v10[0];
}

unint64_t instantiation function for generic protocol witness table for _TimeZoneICU(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _TimeZoneICU and conformance _TimeZoneICU();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _TimeZoneICU and conformance _TimeZoneICU()
{
  result = lazy protocol witness table cache variable for type _TimeZoneICU and conformance _TimeZoneICU;
  if (!lazy protocol witness table cache variable for type _TimeZoneICU and conformance _TimeZoneICU)
  {
    type metadata accessor for _TimeZoneICU();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TimeZoneICU and conformance _TimeZoneICU);
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS10Foundation17_TimeZoneProtocol_pGMd);
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      MEMORY[0x1865CD060](v20);
      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation17_TimeZoneProtocol_pGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      result = MEMORY[0x1865CD030](*(v7 + 40), v20);
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation16_NSSwiftTimeZoneCGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      result = MEMORY[0x1865CD030](*(v7 + 40), v20);
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation11LocaleCacheV5StateV18IdentifierAndPrefsVAC08_NSSwiftD0CGMd);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      if (v39)
      {
        memmove(__src, (*(v5 + 48) + 160 * v19), 0x9CuLL);
        v20 = *(*(v5 + 56) + 8 * v19);
      }

      else
      {
        v21 = (*(v5 + 48) + 160 * v19);
        v22 = v21[1];
        v41[0] = *v21;
        v41[1] = v22;
        v23 = v21[5];
        v25 = v21[2];
        v24 = v21[3];
        v41[4] = v21[4];
        v41[5] = v23;
        v41[2] = v25;
        v41[3] = v24;
        v26 = v21[6];
        v27 = v21[7];
        v28 = v21[8];
        *(v42 + 12) = *(v21 + 140);
        v41[7] = v27;
        v42[0] = v28;
        v41[6] = v26;
        memmove(__src, v21, 0x9CuLL);
        v29 = *(*(v5 + 56) + 8 * v19);
        outlined init with copy of LocaleCache.State.IdentifierAndPrefs(v41, v40);
        v20 = v29;
      }

      lazy protocol witness table accessor for type LocaleCache.State.IdentifierAndPrefs and conformance LocaleCache.State.IdentifierAndPrefs();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = memmove((*(v7 + 48) + 160 * v15), __src, 0x9CuLL);
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS10Foundation15_LocaleProtocol_pGMd);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS10Foundation14_NSSwiftLocaleCGMd);
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        outlined copy of Data._Representation(v34, *(&v34 + 1));
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS10Foundation16_NSSwiftTimeZoneCGMd);
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation6LocaleV14IdentifierTypeOSSGMd);
  v32 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = v22[1];
      v33 = *v22;
      if ((v32 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x1865CD060](v21);
      result = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v33;
      v16[1] = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS10Foundation36MarkdownDecodableAttributedStringKey_pXpGMd);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS10Foundation19AttributedStringKey_pXpGMd);
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy18ReflectionInternal4TypeV10Foundation16ScopeDescription33_4D406B8DD906487F9F362CE42830919ELLVGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x1865CD060](v20);
      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation19ICUPatternGeneratorC07PatternE4InfoVAESgGMd);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 24 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v35 = *(v21 + 16);
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      MEMORY[0x1865CD060](v35);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(v16 + 16) = v35;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation16ICUDateFormatterC15PatternCacheKeyVSSGMd);
  v51 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v50 = v5;
    v14 = result + 64;
    v49 = result;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      if (v51)
      {
        v23 = *(v5 + 56);
        v24 = *(v5 + 48) + 96 * v22;
        v25 = *v24;
        v26 = *(v24 + 8);
        v64 = *(v24 + 72);
        v27 = *(v24 + 16);
        v28 = *(v24 + 40);
        v61 = *(v24 + 24);
        v62 = v28;
        v63 = *(v24 + 56);
        v29 = *(v24 + 80);
        v30 = (v23 + 16 * v22);
        v52 = v30[1];
        v53 = *v30;
      }

      else
      {
        v31 = (*(v5 + 48) + 96 * v22);
        v32 = v31[2];
        v33 = v31[3];
        v34 = v31[5];
        *&v59[48] = v31[4];
        v60 = v34;
        *&v59[16] = v32;
        *&v59[32] = v33;
        v35 = v31[1];
        v58 = *v31;
        *v59 = v35;
        v36 = (*(v5 + 56) + 16 * v22);
        v37 = v36[1];
        v53 = *v36;
        v54 = v34;
        v38 = v12;
        v39 = v35;
        v26 = *(&v58 + 1);
        v40 = v58;
        outlined init with copy of ICUDateFormatter.PatternCacheKey(&v58, v57);
        v61 = *&v59[8];
        v62 = *&v59[24];
        v63 = *&v59[40];
        v64 = *&v59[56];
        v52 = v37;
        v25 = v40;
        v27 = v39;
        v12 = v38;
        v7 = v49;

        v29 = v54;
      }

      *&v56[55] = v64;
      *&v56[23] = v62;
      *&v56[39] = v63;
      *&v56[7] = v61;
      *&v59[1] = *v56;
      *&v58 = v25;
      *(&v58 + 1) = v26;
      v59[0] = v27;
      *&v59[17] = *&v56[16];
      *&v59[33] = *&v56[32];
      *&v59[42] = *&v56[41];
      v55 = v29;
      v60 = v29;
      Hasher.init(_seed:)();
      ICUDateFormatter.PatternCacheKey.hash(into:)(v57);
      result = Hasher._finalize()();
      v41 = -1 << *(v7 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v14 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        v16 = v55;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v14 + 8 * v43);
          if (v47 != -1)
          {
            v15 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v42) & ~*(v14 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
      v16 = v55;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = *(v7 + 48) + 96 * v15;
      *(v17 + 17) = *v56;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      *(v17 + 33) = *&v56[16];
      *(v17 + 49) = *&v56[32];
      *(v17 + 58) = *&v56[41];
      *(v17 + 80) = v16;
      v18 = (*(v7 + 56) + 16 * v15);
      *v18 = v53;
      v18[1] = v52;
      ++*(v7 + 16);
      v5 = v50;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v48 = 1 << *(v5 + 32);
    v3 = v2;
    if (v48 >= 64)
    {
      bzero(v9, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v48;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation16ICUDateFormatterC14DateFormatInfoVAESgGMd);
  v53 = a2;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v51 = (v5 + 64);
    v52 = v5;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v49 = v3;
    v50 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    v54 = v6;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v19 = (v11 - 1) & v11;
LABEL_15:
      v22 = v18 | (v8 << 6);
      v55 = v19;
      if (v53)
      {
        v23 = *(v5 + 56);
        v24 = *(v5 + 48) + 96 * v22;
        v26 = *v24;
        v25 = *(v24 + 8);
        v27 = *(v24 + 16);
        v60 = *(v24 + 24);
        v28 = *(v24 + 32);
        v30 = *(v24 + 40);
        v29 = *(v24 + 48);
        v31 = *(v24 + 56);
        v58 = *(v24 + 64);
        v32 = *(v24 + 88);
        v59 = *(v24 + 80);
        v56 = *(v23 + 8 * v22);
        v57 = *(v24 + 72);
      }

      else
      {
        v33 = (*(v5 + 48) + 96 * v22);
        v34 = v33[2];
        v35 = v33[3];
        v36 = v33[5];
        v63 = v33[4];
        v64 = v36;
        v62[3] = v35;
        v37 = v33[1];
        v62[0] = *v33;
        v62[1] = v37;
        v62[2] = v34;
        v38 = *(*(v5 + 56) + 8 * v22);
        v32 = *(&v36 + 1);
        v59 = v36;
        v57 = *(&v63 + 1);
        v58 = v63;
        v31 = BYTE8(v35);
        v30 = *(&v34 + 1);
        v29 = v35;
        v28 = v34;
        v60 = *(&v37 + 1);
        v27 = v37;
        v25 = *(&v62[0] + 1);
        v26 = *&v62[0];
        outlined init with copy of ICUDateFormatter.DateFormatInfo(v62, v61);
        v56 = v38;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x1865CD060](v28);
      MEMORY[0x1865CD060](v30);
      MEMORY[0x1865CD060](v29);
      MEMORY[0x1865CD060](v31);
      String.hash(into:)();
      Hasher._combine(_:)(v59);
      if (v32 == 0.0)
      {
        v39 = 0.0;
      }

      else
      {
        v39 = v32;
      }

      MEMORY[0x1865CD090](*&v39);
      v40 = Hasher._finalize()();
      v7 = v54;
      v41 = -1 << *(v54 + 32);
      v42 = v40 & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v12 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        v15 = v26;
        v14 = v27;
        result = v25;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v12 + 8 * v43);
          if (v47 != -1)
          {
            v13 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v42) & ~*(v12 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
      v15 = v26;
      v14 = v27;
      result = v25;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v17 = *(v54 + 48) + 96 * v13;
      *v17 = v15;
      *(v17 + 8) = result;
      *(v17 + 16) = v14;
      *(v17 + 24) = v60;
      *(v17 + 32) = v28;
      *(v17 + 40) = v30;
      *(v17 + 48) = v29;
      *(v17 + 56) = v31;
      *(v17 + 64) = v58;
      *(v17 + 72) = v57;
      *(v17 + 80) = v59;
      *(v17 + 88) = v32;
      *(*(v54 + 56) + 8 * v13) = v56;
      ++*(v54 + 16);
      v5 = v52;
      v11 = v55;
    }

    v20 = v8;
    result = v51;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v8 >= v50)
      {
        break;
      }

      v21 = v51[v8];
      ++v20;
      if (v21)
      {
        v18 = __clz(__rbit64(v21));
        v19 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v53 & 1) == 0)
    {

      v3 = v49;
      goto LABEL_37;
    }

    v48 = 1 << *(v5 + 32);
    v3 = v49;
    if (v48 >= 64)
    {
      bzero(v51, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v51 = -1 << v48;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd, &_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMR, outlined copy of JSONFuture);
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 72 * v24;
      if (v40)
      {
        v41 = *v28;
        v29 = *(v28 + 16);
        v30 = *(v28 + 32);
        v31 = *(v28 + 48);
        v45 = *(v28 + 64);
        v43 = v30;
        v44 = v31;
        v42 = v29;
      }

      else
      {
        outlined init with copy of AttributedString._AttributeValue(v28, &v41);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v26;
      v16[1] = v27;
      v17 = *(v7 + 56) + 72 * v15;
      *v17 = v41;
      v18 = v42;
      v19 = v43;
      v20 = v44;
      *(v17 + 64) = v45;
      *(v17 + 32) = v19;
      *(v17 + 48) = v20;
      *(v17 + 16) = v18;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16LoadedScopeCache33_4D406B8DD906487F9F362CE42830919ELLV0E4TypeOGMd);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SSgGMd);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        outlined init with take of Any(v24, v34);
      }

      else
      {
        outlined init with copy of Any(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = outlined init with take of Any(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation3ICUO7CaseMapCGMd);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt32VSpySvSgGGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = MEMORY[0x1865CD020](*(v7 + 40), v20, 4);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation29PredicateCodableConfigurationV13AllowListTypeOGMd);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v38 = *(v26 + 8);
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v7 + 56) + v16;
      *v18 = v27;
      *(v18 + 8) = v38;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceOAGGMd);
  v41 = a2;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v39 = v2;
    v40 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 24 * (v19 | (v8 << 6));
      v23 = *(v5 + 48) + v22;
      v25 = *v23;
      v24 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(v5 + 56) + v22;
      v42 = *(v27 + 8);
      v43 = *v27;
      v28 = *(v27 + 16);
      if ((v41 & 1) == 0)
      {
        outlined copy of _XMLPlistEncodingFormat.Reference(v25, v24, v26);
        outlined copy of _XMLPlistEncodingFormat.Reference(v43, v42, v28);
      }

      Hasher.init(_seed:)();
      if (v26)
      {
        goto LABEL_37;
      }

      String.hash(into:)();
      v29 = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
LABEL_37:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 24 * v15;
      v17 = *(v7 + 48) + v16;
      *v17 = v25;
      *(v17 + 8) = v24;
      *(v17 + 16) = 0;
      v18 = *(v7 + 56) + v16;
      *v18 = v43;
      *(v18 + 8) = v42;
      *(v18 + 16) = v28;
      ++*(v7 + 16);
      v5 = v40;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy10Foundation29ICUMeasurementNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySu10Foundation20PredicateExpressionsO10VariableIDVGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = MEMORY[0x1865CD030](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySnySiGGGMd);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSSGMd);
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation6LocaleV7WeekdayOSaySiGGMd);
  v30 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOSiGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      Hasher.init(_seed:)();
      MEMORY[0x1865CD060](v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt32VSSGMd);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = MEMORY[0x1865CD020](*(v7 + 40), v21, 4);
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy10Foundation4DateV11FormatStyleV0dF0VSSGMd);
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation11XMLPlistMapC5ValueOGMd);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        outlined copy of XMLPlistMap.Value(v24);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation7JSONMapC5ValueOGMd);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v37 = *v25;
      v26 = *(v25 + 16);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v37;
      *(v17 + 16) = v26;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy10Foundation27ICUByteCountNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation16ICUListFormatterC9SignatureVAEGMd);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 32 * v20);
      v22 = v21[1];
      v23 = v21[2];
      v35 = v21[3];
      v36 = *v21;
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      MEMORY[0x1865CD060](v23);
      MEMORY[0x1865CD060](v35);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v36;
      v16[1] = v22;
      v16[2] = v23;
      v16[3] = v35;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 48 * v20);
      v23 = v22[1];
      v40 = *v22;
      v24 = v22[3];
      v39 = v22[2];
      v25 = v22[5];
      v38 = v22[4];
      v26 = *(v21 + 8 * v20);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 48 * v15);
      *v16 = v40;
      v16[1] = v23;
      v16[2] = v39;
      v16[3] = v24;
      v16[4] = v38;
      v16[5] = v25;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v37 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICURelativeDateFormatterC9SignatureVAESgGMd);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 32 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v35 = *(v21 + 16);
      v38 = *(v21 + 20);
      v36 = *(v21 + 28);
      v37 = *(v21 + 24);
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      if (v38)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(v35);
      }

      Hasher._combine(_:)(v37);
      Hasher._combine(_:)(v36);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 32 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(v16 + 16) = v35;
      *(v16 + 20) = v38;
      *(v16 + 24) = v37;
      *(v16 + 28) = v36;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DateV21ComponentsFormatStyleVSo06NSDateE9FormatterCGMd);
  v32 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 56 * v20;
      v33 = *v21;
      v34 = *(v21 + 8);
      v35 = *(v21 + 16);
      v36 = *(v21 + 32);
      v37 = *(v21 + 48);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v32 & 1) == 0)
      {

        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v23 = v22;
      }

      lazy protocol witness table accessor for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 56 * v15;
      *v16 = v33;
      *(v16 + 8) = v34;
      *(v16 + 16) = v35;
      *(v16 + 32) = v36;
      *(v16 + 48) = v37;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys8DurationV10FoundationE16UnitsFormatStyleV4UnitVSdGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      Hasher.init(_seed:)();
      MEMORY[0x1865CD060](v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10FoundationE17LocalizationValueV21AttributedStringCacheV0H3Key33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLVAC0fG0V6parsed_Sb23hasInflectionAttributestSg3str_ypXp9scopeTypeSb0S15SourcePositionstGMd);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 32 * v21;
      v26 = *v25;
      v39 = *(v25 + 8);
      v38 = *(v25 + 16);
      v37 = *(v25 + 24);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.LocalizationValue.AttributedStringCache.CacheKey.hash(into:)(v40, v23, v24);
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v26;
      *(v17 + 8) = v39;
      *(v17 + 16) = v38;
      *(v17 + 24) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSSGMd);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = MEMORY[0x1865CD030](*(v7 + 40), v21);
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS10Foundation16JSONEncoderValueOGMd, &_ss18_DictionaryStorageCySS10Foundation16JSONEncoderValueOGMR, outlined copy of JSONEncoderValue);
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOSSSgGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x1865CD060](v20);
      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation16AttributedStringV010_AttributeB0VSiGMd);
  v45 = a2;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (!*(v5 + 16))
  {
    goto LABEL_43;
  }

  v8 = 0;
  v39 = v3;
  v40 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v41 = v12;
  v42 = v6 + 64;
  v43 = v6;
  v44 = v5;
LABEL_9:
  if (v11)
  {
    v19 = __clz(__rbit64(v11));
    v47 = (v11 - 1) & v11;
    goto LABEL_16;
  }

  v20 = v8;
  result = v40;
  while (1)
  {
    v8 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_46;
    }

    if (v8 >= v12)
    {
      break;
    }

    v21 = v40[v8];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v47 = (v21 - 1) & v21;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v46 = *(*(v5 + 56) + 8 * v22);
      v49 = *(*(v5 + 48) + 16 * v22);
      v23 = *(*(v5 + 48) + 16 * v22 + 8);
      if ((v45 & 1) == 0)
      {
      }

      v48 = v23;
      Hasher.init(_seed:)();
      v24 = 1 << *(v49 + 32);
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v26 = v25 & *(v49 + 64);
      v27 = (v24 + 63) >> 6;

      v28 = 0;
      v29 = 0;
      if (v26)
      {
        while (1)
        {
          v30 = v29;
LABEL_26:
          v31 = __clz(__rbit64(v26)) | (v30 << 6);
          v32 = *(*(v49 + 48) + 16 * v31 + 8);
          outlined init with copy of AttributedString._AttributeValue(*(v49 + 56) + 72 * v31, &v54);
          v52 = v57;
          v53 = v55;
          v50 = v56;
          v51 = v54;
          v33 = v58;

          if (!v32)
          {
            break;
          }

          v26 &= v26 - 1;
          v54 = v51;
          v55 = v53;
          v56 = v50;
          v57 = v52;
          v58 = v33;
          String.hash(into:)();

          __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
          dispatch thunk of Hashable.hash(into:)();
          outlined destroy of AttributedString._AttributeValue(&v54);
          result = Hasher._finalize()();
          v28 ^= result;
          v29 = v30;
          if (!v26)
          {
            goto LABEL_23;
          }
        }

LABEL_6:

        MEMORY[0x1865CD060](v28);
        specialized Set.hash(into:)(v59, v48);
        result = Hasher._finalize()();
        v7 = v43;
        v14 = -1 << *(v43 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v42 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v42 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
          v5 = v44;
          v18 = v49;
LABEL_8:
          *(v42 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
          *(*(v43 + 48) + 16 * v17) = v18;
          v11 = v47;
          *(*(v43 + 56) + 8 * v17) = v46;
          ++*(v43 + 16);
          v12 = v41;
          goto LABEL_9;
        }

        v34 = 0;
        v35 = (63 - v14) >> 6;
        v5 = v44;
        v18 = v49;
        while (++v16 != v35 || (v34 & 1) == 0)
        {
          v36 = v16 == v35;
          if (v16 == v35)
          {
            v16 = 0;
          }

          v34 |= v36;
          v37 = *(v42 + 8 * v16);
          if (v37 != -1)
          {
            v17 = __clz(__rbit64(~v37)) + (v16 << 6);
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_23:
        while (1)
        {
          v30 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if (v30 >= v27)
          {
            goto LABEL_6;
          }

          v26 = *(v49 + 64 + 8 * v30);
          ++v29;
          if (v26)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

  if (v45)
  {
    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v40, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v40 = -1 << v38;
    }

    *(v5 + 16) = 0;
LABEL_43:
  }

  else
  {

    v3 = v39;
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation20PredicateExpressionsO10VariableIDVSo12NSExpressionCGMd);
  v31 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      Hasher.init(_seed:)();
      MEMORY[0x1865CD060](v20);
      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2iGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = MEMORY[0x1865CD030](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10MorphologyV14_CustomPronounVGMd);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 80 * v21;
      if (v37)
      {
        v38 = *v25;
        v39 = *(v25 + 16);
        v40 = *(v25 + 32);
        v41 = *(v25 + 48);
        v42 = *(v25 + 72);
        v43 = *(v25 + 64);
      }

      else
      {
        v26 = *(v25 + 16);
        v27 = *(v25 + 32);
        v28 = *(v25 + 64);
        v46 = *(v25 + 48);
        v47 = v28;
        v45[1] = v26;
        v45[2] = v27;
        v45[0] = *v25;
        v42 = *(&v28 + 1);
        v43 = v28;
        v40 = v27;
        v41 = v46;
        v38 = v45[0];
        v39 = v26;

        outlined init with copy of Morphology._CustomPronoun(v45, v44);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 80 * v15;
      *v17 = v38;
      *(v17 + 16) = v39;
      *(v17 + 32) = v40;
      *(v17 + 48) = v41;
      *(v17 + 64) = v43;
      *(v17 + 72) = v42;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        outlined init with take of Any((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        outlined init with copy of AnyHashable(v23, &v36);
        outlined init with copy of Any(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = outlined init with take of Any(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}