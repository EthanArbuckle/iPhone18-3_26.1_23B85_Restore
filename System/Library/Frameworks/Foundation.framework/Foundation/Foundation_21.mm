void *specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)@<X0>(void *result@<X0>, void *(*a2)(uint64_t *__return_ptr, uint64_t, uint64_t, void, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v7 = result[1];
  v8 = v7 < a4 + a3 || v7 < a4;
  if (v8 || (a4 | a3) < 0 || v7 <= a3)
  {
    __break(1u);
  }

  else
  {
    result = a2(&v9, *result + a3, a4, *result, v7);
    if (!v5)
    {
      *a5 = v9;
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
    result = a2(&v9, *result + a3, a4, *result, v7);
    if (!v5)
    {
      *a5 = v9;
    }
  }

  return result;
}

void closure #1 in Double.init(prevalidatedBuffer:)(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v6 = _stringshims_strtod_clocale(a1, v10);
  if (v10[0])
  {
    v7 = &a1[a2] == v10[0];
  }

  else
  {
    v7 = 0;
  }

  v8 = !v7;
  v9 = v6;
  if (!v7)
  {
    v9 = 0.0;
  }

  *a3 = v9;
  *(a3 + 8) = v8;
}

uint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized closure #1 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:), a5);
}

{
  return partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(a1, a2, a3, a4, specialized closure #1 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:), a5);
}

unint64_t *specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v57[0] = a5;
  v57[1] = a6;
  v57[2] = a7;
  v58 = a8;
  v10 = a3 >> 5;
  if (v10 == 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v50 = v27;
    v51 = v28 & 1;
    v52 = a4;
    v53 = v57;
    v54 = v29;
    v31 = *(*(v30 + 32) + 24);
    MEMORY[0x1EEE9AC00](v32);
    v33 = v49;
    v49[2] = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    v49[3] = v34;
    v49[4] = v35;
    v49[5] = v36;

    os_unfair_lock_lock((v31 + 40));
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v31 + 16), &v55);
    os_unfair_lock_unlock((v31 + 40));

    if (!v8)
    {
      v33 = v55;
    }
  }

  else
  {
    if (v10 == 5 && !(a2 | a1) && a3 == 160)
    {
      v15 = type metadata accessor for DecodingError();
      swift_allocError();
      v17 = v16;
      *v16 = MEMORY[0x1E69E6530];
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v18 = _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        *(inited + 56) = &type metadata for _CodingKey;
        *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v20 = swift_allocObject();
        *(inited + 32) = v20;
        *(v20 + 16) = a5;
        *(v20 + 24) = a6;
        *(v20 + 32) = a7;
        *(v20 + 40) = a8;
        v55 = v18;
        specialized Array.append<A>(contentsOf:)(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v55 = 0;
      v56 = 0xE000000000000000;
      v33 = &v55;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](7630409, 0xE300000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    }

    else
    {
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v24 = _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v25 = swift_initStackObject();
        *(v25 + 16) = xmmword_181218E20;
        *(v25 + 56) = &type metadata for _CodingKey;
        *(v25 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v26 = swift_allocObject();
        *(v25 + 32) = v26;
        *(v26 + 16) = a5;
        *(v26 + 24) = a6;
        *(v26 + 32) = a7;
        *(v26 + 40) = a8;
        v55 = v24;
        specialized Array.append<A>(contentsOf:)(v25);
      }

      v37 = type metadata accessor for DecodingError();
      swift_allocError();
      v39 = v38;
      *v38 = MEMORY[0x1E69E6530];
      v55 = 0;
      v56 = 0xE000000000000000;
      v33 = &v55;
      _StringGuts.grow(_:)(43);

      v55 = 0xD000000000000021;
      v56 = 0x80000001814821C0;
      v40 = 0xE800000000000000;
      v41 = 0x676E697274732061;
      v42 = 0xEC0000007972616ELL;
      v43 = 0x6F69746369642061;
      v44 = 0xE800000000000000;
      v45 = 0x7961727261206E61;
      if (v10 != 4)
      {
        v45 = 1819047278;
        v44 = 0xE400000000000000;
      }

      if (v10 != 3)
      {
        v43 = v45;
        v42 = v44;
      }

      if (v10)
      {
        v41 = 1819242338;
        v40 = 0xE400000000000000;
      }

      if (v10 <= 2)
      {
        v46 = v41;
      }

      else
      {
        v46 = v43;
      }

      if (v10 <= 2)
      {
        v47 = v40;
      }

      else
      {
        v47 = v42;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v46, v47);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    }

    swift_willThrow();
  }

  return v33;
}

{
  v57[0] = a5;
  v57[1] = a6;
  v57[2] = a7;
  v58 = a8;
  v10 = a3 >> 5;
  if (v10 == 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v50 = v27;
    v51 = v28 & 1;
    v52 = a4;
    v53 = v57;
    v54 = v29;
    v31 = *(*(v30 + 32) + 24);
    MEMORY[0x1EEE9AC00](v32);
    v33 = v49;
    v49[2] = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    v49[3] = v34;
    v49[4] = v35;
    v49[5] = v36;

    os_unfair_lock_lock((v31 + 40));
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v31 + 16), &v55);
    os_unfair_lock_unlock((v31 + 40));

    if (!v8)
    {
      v33 = v55;
    }
  }

  else
  {
    if (v10 == 5 && !(a2 | a1) && a3 == 160)
    {
      v15 = type metadata accessor for DecodingError();
      swift_allocError();
      v17 = v16;
      *v16 = MEMORY[0x1E69E6810];
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v18 = _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        *(inited + 56) = &type metadata for _CodingKey;
        *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v20 = swift_allocObject();
        *(inited + 32) = v20;
        *(v20 + 16) = a5;
        *(v20 + 24) = a6;
        *(v20 + 32) = a7;
        *(v20 + 40) = a8;
        v55 = v18;
        specialized Array.append<A>(contentsOf:)(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v55 = 0;
      v56 = 0xE000000000000000;
      v33 = &v55;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](1953384789, 0xE400000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    }

    else
    {
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v24 = _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v25 = swift_initStackObject();
        *(v25 + 16) = xmmword_181218E20;
        *(v25 + 56) = &type metadata for _CodingKey;
        *(v25 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v26 = swift_allocObject();
        *(v25 + 32) = v26;
        *(v26 + 16) = a5;
        *(v26 + 24) = a6;
        *(v26 + 32) = a7;
        *(v26 + 40) = a8;
        v55 = v24;
        specialized Array.append<A>(contentsOf:)(v25);
      }

      v37 = type metadata accessor for DecodingError();
      swift_allocError();
      v39 = v38;
      *v38 = MEMORY[0x1E69E6810];
      v55 = 0;
      v56 = 0xE000000000000000;
      v33 = &v55;
      _StringGuts.grow(_:)(43);

      v55 = 0xD000000000000022;
      v56 = 0x80000001814820A0;
      v40 = 0xE800000000000000;
      v41 = 0x676E697274732061;
      v42 = 0xEC0000007972616ELL;
      v43 = 0x6F69746369642061;
      v44 = 0xE800000000000000;
      v45 = 0x7961727261206E61;
      if (v10 != 4)
      {
        v45 = 1819047278;
        v44 = 0xE400000000000000;
      }

      if (v10 != 3)
      {
        v43 = v45;
        v42 = v44;
      }

      if (v10)
      {
        v41 = 1819242338;
        v40 = 0xE400000000000000;
      }

      if (v10 <= 2)
      {
        v46 = v41;
      }

      else
      {
        v46 = v43;
      }

      if (v10 <= 2)
      {
        v47 = v40;
      }

      else
      {
        v47 = v42;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v46, v47);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    }

    swift_willThrow();
  }

  return v33;
}

{
  v57[0] = a5;
  v57[1] = a6;
  v57[2] = a7;
  v58 = a8;
  v10 = a3 >> 5;
  if (v10 == 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v50 = v27;
    v51 = v28 & 1;
    v52 = a4;
    v53 = v57;
    v54 = v29;
    v31 = *(*(v30 + 32) + 24);
    MEMORY[0x1EEE9AC00](v32);
    v33 = v49;
    v49[2] = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    v49[3] = v34;
    v49[4] = v35;
    v49[5] = v36;

    os_unfair_lock_lock((v31 + 40));
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v31 + 16), &v55);
    os_unfair_lock_unlock((v31 + 40));

    if (!v8)
    {
      v33 = v55;
    }
  }

  else
  {
    if (v10 == 5 && !(a2 | a1) && a3 == 160)
    {
      v15 = type metadata accessor for DecodingError();
      swift_allocError();
      v17 = v16;
      *v16 = MEMORY[0x1E69E72F0];
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v18 = _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        *(inited + 56) = &type metadata for _CodingKey;
        *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v20 = swift_allocObject();
        *(inited + 32) = v20;
        *(v20 + 16) = a5;
        *(v20 + 24) = a6;
        *(v20 + 32) = a7;
        *(v20 + 40) = a8;
        v55 = v18;
        specialized Array.append<A>(contentsOf:)(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v55 = 0;
      v56 = 0xE000000000000000;
      v33 = &v55;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0x3233746E49, 0xE500000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    }

    else
    {
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v24 = _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v25 = swift_initStackObject();
        *(v25 + 16) = xmmword_181218E20;
        *(v25 + 56) = &type metadata for _CodingKey;
        *(v25 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v26 = swift_allocObject();
        *(v25 + 32) = v26;
        *(v26 + 16) = a5;
        *(v26 + 24) = a6;
        *(v26 + 32) = a7;
        *(v26 + 40) = a8;
        v55 = v24;
        specialized Array.append<A>(contentsOf:)(v25);
      }

      v37 = type metadata accessor for DecodingError();
      swift_allocError();
      v39 = v38;
      *v38 = MEMORY[0x1E69E72F0];
      v55 = 0;
      v56 = 0xE000000000000000;
      v33 = &v55;
      _StringGuts.grow(_:)(43);

      v55 = 0xD000000000000023;
      v56 = 0x8000000181482130;
      v40 = 0xE800000000000000;
      v41 = 0x676E697274732061;
      v42 = 0xEC0000007972616ELL;
      v43 = 0x6F69746369642061;
      v44 = 0xE800000000000000;
      v45 = 0x7961727261206E61;
      if (v10 != 4)
      {
        v45 = 1819047278;
        v44 = 0xE400000000000000;
      }

      if (v10 != 3)
      {
        v43 = v45;
        v42 = v44;
      }

      if (v10)
      {
        v41 = 1819242338;
        v40 = 0xE400000000000000;
      }

      if (v10 <= 2)
      {
        v46 = v41;
      }

      else
      {
        v46 = v43;
      }

      if (v10 <= 2)
      {
        v47 = v40;
      }

      else
      {
        v47 = v42;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v46, v47);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    }

    swift_willThrow();
  }

  return v33;
}

{
  v57[0] = a5;
  v57[1] = a6;
  v57[2] = a7;
  v58 = a8;
  v10 = a3 >> 5;
  if (v10 == 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v50 = v27;
    v51 = v28 & 1;
    v52 = a4;
    v53 = v57;
    v54 = v29;
    v31 = *(*(v30 + 32) + 24);
    MEMORY[0x1EEE9AC00](v32);
    v33 = v49;
    v49[2] = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    v49[3] = v34;
    v49[4] = v35;
    v49[5] = v36;

    os_unfair_lock_lock((v31 + 40));
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v31 + 16), &v55);
    os_unfair_lock_unlock((v31 + 40));

    if (!v8)
    {
      v33 = v55;
    }
  }

  else
  {
    if (v10 == 5 && !(a2 | a1) && a3 == 160)
    {
      v15 = type metadata accessor for DecodingError();
      swift_allocError();
      v17 = v16;
      *v16 = MEMORY[0x1E69E7508];
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v18 = _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        *(inited + 56) = &type metadata for _CodingKey;
        *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v20 = swift_allocObject();
        *(inited + 32) = v20;
        *(v20 + 16) = a5;
        *(v20 + 24) = a6;
        *(v20 + 32) = a7;
        *(v20 + 40) = a8;
        v55 = v18;
        specialized Array.append<A>(contentsOf:)(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v55 = 0;
      v56 = 0xE000000000000000;
      v33 = &v55;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0x38746E4955, 0xE500000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    }

    else
    {
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v24 = _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v25 = swift_initStackObject();
        *(v25 + 16) = xmmword_181218E20;
        *(v25 + 56) = &type metadata for _CodingKey;
        *(v25 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v26 = swift_allocObject();
        *(v25 + 32) = v26;
        *(v26 + 16) = a5;
        *(v26 + 24) = a6;
        *(v26 + 32) = a7;
        *(v26 + 40) = a8;
        v55 = v24;
        specialized Array.append<A>(contentsOf:)(v25);
      }

      v37 = type metadata accessor for DecodingError();
      swift_allocError();
      v39 = v38;
      *v38 = MEMORY[0x1E69E7508];
      v55 = 0;
      v56 = 0xE000000000000000;
      v33 = &v55;
      _StringGuts.grow(_:)(43);

      v55 = 0xD000000000000023;
      v56 = 0x8000000181482070;
      v40 = 0xE800000000000000;
      v41 = 0x676E697274732061;
      v42 = 0xEC0000007972616ELL;
      v43 = 0x6F69746369642061;
      v44 = 0xE800000000000000;
      v45 = 0x7961727261206E61;
      if (v10 != 4)
      {
        v45 = 1819047278;
        v44 = 0xE400000000000000;
      }

      if (v10 != 3)
      {
        v43 = v45;
        v42 = v44;
      }

      if (v10)
      {
        v41 = 1819242338;
        v40 = 0xE400000000000000;
      }

      if (v10 <= 2)
      {
        v46 = v41;
      }

      else
      {
        v46 = v43;
      }

      if (v10 <= 2)
      {
        v47 = v40;
      }

      else
      {
        v47 = v42;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v46, v47);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    }

    swift_willThrow();
  }

  return v33;
}

{
  v57[0] = a5;
  v57[1] = a6;
  v57[2] = a7;
  v58 = a8;
  v10 = a3 >> 5;
  if (v10 == 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v50 = v27;
    v51 = v28 & 1;
    v52 = a4;
    v53 = v57;
    v54 = v29;
    v31 = *(*(v30 + 32) + 24);
    MEMORY[0x1EEE9AC00](v32);
    v33 = v49;
    v49[2] = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    v49[3] = v34;
    v49[4] = v35;
    v49[5] = v36;

    os_unfair_lock_lock((v31 + 40));
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v31 + 16), &v55);
    os_unfair_lock_unlock((v31 + 40));

    if (!v8)
    {
      v33 = v55;
    }
  }

  else
  {
    if (v10 == 5 && !(a2 | a1) && a3 == 160)
    {
      v15 = type metadata accessor for DecodingError();
      swift_allocError();
      v17 = v16;
      *v16 = MEMORY[0x1E69E7230];
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v18 = _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        *(inited + 56) = &type metadata for _CodingKey;
        *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v20 = swift_allocObject();
        *(inited + 32) = v20;
        *(v20 + 16) = a5;
        *(v20 + 24) = a6;
        *(v20 + 32) = a7;
        *(v20 + 40) = a8;
        v55 = v18;
        specialized Array.append<A>(contentsOf:)(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v55 = 0;
      v56 = 0xE000000000000000;
      v33 = &v55;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](947154505, 0xE400000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    }

    else
    {
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v24 = _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v25 = swift_initStackObject();
        *(v25 + 16) = xmmword_181218E20;
        *(v25 + 56) = &type metadata for _CodingKey;
        *(v25 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v26 = swift_allocObject();
        *(v25 + 32) = v26;
        *(v26 + 16) = a5;
        *(v26 + 24) = a6;
        *(v26 + 32) = a7;
        *(v26 + 40) = a8;
        v55 = v24;
        specialized Array.append<A>(contentsOf:)(v25);
      }

      v37 = type metadata accessor for DecodingError();
      swift_allocError();
      v39 = v38;
      *v38 = MEMORY[0x1E69E7230];
      v55 = 0;
      v56 = 0xE000000000000000;
      v33 = &v55;
      _StringGuts.grow(_:)(43);

      v55 = 0xD000000000000022;
      v56 = 0x8000000181482190;
      v40 = 0xE800000000000000;
      v41 = 0x676E697274732061;
      v42 = 0xEC0000007972616ELL;
      v43 = 0x6F69746369642061;
      v44 = 0xE800000000000000;
      v45 = 0x7961727261206E61;
      if (v10 != 4)
      {
        v45 = 1819047278;
        v44 = 0xE400000000000000;
      }

      if (v10 != 3)
      {
        v43 = v45;
        v42 = v44;
      }

      if (v10)
      {
        v41 = 1819242338;
        v40 = 0xE400000000000000;
      }

      if (v10 <= 2)
      {
        v46 = v41;
      }

      else
      {
        v46 = v43;
      }

      if (v10 <= 2)
      {
        v47 = v40;
      }

      else
      {
        v47 = v42;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v46, v47);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    }

    swift_willThrow();
  }

  return v33;
}

{
  v57[0] = a5;
  v57[1] = a6;
  v57[2] = a7;
  v58 = a8;
  v10 = a3 >> 5;
  if (v10 == 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v50 = v27;
    v51 = v28 & 1;
    v52 = a4;
    v53 = v57;
    v54 = v29;
    v31 = *(*(v30 + 32) + 24);
    MEMORY[0x1EEE9AC00](v32);
    v33 = v49;
    v49[2] = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    v49[3] = v34;
    v49[4] = v35;
    v49[5] = v36;

    os_unfair_lock_lock((v31 + 40));
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v31 + 16), &v55);
    os_unfair_lock_unlock((v31 + 40));

    if (!v8)
    {
      v33 = v55;
    }
  }

  else
  {
    if (v10 == 5 && !(a2 | a1) && a3 == 160)
    {
      v15 = type metadata accessor for DecodingError();
      swift_allocError();
      v17 = v16;
      *v16 = MEMORY[0x1E69E75F8];
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v18 = _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        *(inited + 56) = &type metadata for _CodingKey;
        *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v20 = swift_allocObject();
        *(inited + 32) = v20;
        *(v20 + 16) = a5;
        *(v20 + 24) = a6;
        *(v20 + 32) = a7;
        *(v20 + 40) = a8;
        v55 = v18;
        specialized Array.append<A>(contentsOf:)(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v55 = 0;
      v56 = 0xE000000000000000;
      v33 = &v55;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    }

    else
    {
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v24 = _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v25 = swift_initStackObject();
        *(v25 + 16) = xmmword_181218E20;
        *(v25 + 56) = &type metadata for _CodingKey;
        *(v25 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v26 = swift_allocObject();
        *(v25 + 32) = v26;
        *(v26 + 16) = a5;
        *(v26 + 24) = a6;
        *(v26 + 32) = a7;
        *(v26 + 40) = a8;
        v55 = v24;
        specialized Array.append<A>(contentsOf:)(v25);
      }

      v37 = type metadata accessor for DecodingError();
      swift_allocError();
      v39 = v38;
      *v38 = MEMORY[0x1E69E75F8];
      v55 = 0;
      v56 = 0xE000000000000000;
      v33 = &v55;
      _StringGuts.grow(_:)(43);

      v55 = 0xD000000000000024;
      v56 = 0x8000000181482040;
      v40 = 0xE800000000000000;
      v41 = 0x676E697274732061;
      v42 = 0xEC0000007972616ELL;
      v43 = 0x6F69746369642061;
      v44 = 0xE800000000000000;
      v45 = 0x7961727261206E61;
      if (v10 != 4)
      {
        v45 = 1819047278;
        v44 = 0xE400000000000000;
      }

      if (v10 != 3)
      {
        v43 = v45;
        v42 = v44;
      }

      if (v10)
      {
        v41 = 1819242338;
        v40 = 0xE400000000000000;
      }

      if (v10 <= 2)
      {
        v46 = v41;
      }

      else
      {
        v46 = v43;
      }

      if (v10 <= 2)
      {
        v47 = v40;
      }

      else
      {
        v47 = v42;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v46, v47);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    }

    swift_willThrow();
  }

  return v33;
}

{
  v57[0] = a5;
  v57[1] = a6;
  v57[2] = a7;
  v58 = a8;
  v10 = a3 >> 5;
  if (v10 == 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v50 = v27;
    v51 = v28 & 1;
    v52 = a4;
    v53 = v57;
    v54 = v29;
    v31 = *(*(v30 + 32) + 24);
    MEMORY[0x1EEE9AC00](v32);
    v33 = v49;
    v49[2] = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    v49[3] = v34;
    v49[4] = v35;
    v49[5] = v36;

    os_unfair_lock_lock((v31 + 40));
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v31 + 16), &v55);
    os_unfair_lock_unlock((v31 + 40));

    if (!v8)
    {
      v33 = v55;
    }
  }

  else
  {
    if (v10 == 5 && !(a2 | a1) && a3 == 160)
    {
      v15 = type metadata accessor for DecodingError();
      swift_allocError();
      v17 = v16;
      *v16 = MEMORY[0x1E69E7290];
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v18 = _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        *(inited + 56) = &type metadata for _CodingKey;
        *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v20 = swift_allocObject();
        *(inited + 32) = v20;
        *(v20 + 16) = a5;
        *(v20 + 24) = a6;
        *(v20 + 32) = a7;
        *(v20 + 40) = a8;
        v55 = v18;
        specialized Array.append<A>(contentsOf:)(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v55 = 0;
      v56 = 0xE000000000000000;
      v33 = &v55;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0x3631746E49, 0xE500000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    }

    else
    {
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v24 = _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v25 = swift_initStackObject();
        *(v25 + 16) = xmmword_181218E20;
        *(v25 + 56) = &type metadata for _CodingKey;
        *(v25 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v26 = swift_allocObject();
        *(v25 + 32) = v26;
        *(v26 + 16) = a5;
        *(v26 + 24) = a6;
        *(v26 + 32) = a7;
        *(v26 + 40) = a8;
        v55 = v24;
        specialized Array.append<A>(contentsOf:)(v25);
      }

      v37 = type metadata accessor for DecodingError();
      swift_allocError();
      v39 = v38;
      *v38 = MEMORY[0x1E69E7290];
      v55 = 0;
      v56 = 0xE000000000000000;
      v33 = &v55;
      _StringGuts.grow(_:)(43);

      v55 = 0xD000000000000023;
      v56 = 0x8000000181482160;
      v40 = 0xE800000000000000;
      v41 = 0x676E697274732061;
      v42 = 0xEC0000007972616ELL;
      v43 = 0x6F69746369642061;
      v44 = 0xE800000000000000;
      v45 = 0x7961727261206E61;
      if (v10 != 4)
      {
        v45 = 1819047278;
        v44 = 0xE400000000000000;
      }

      if (v10 != 3)
      {
        v43 = v45;
        v42 = v44;
      }

      if (v10)
      {
        v41 = 1819242338;
        v40 = 0xE400000000000000;
      }

      if (v10 <= 2)
      {
        v46 = v41;
      }

      else
      {
        v46 = v43;
      }

      if (v10 <= 2)
      {
        v47 = v40;
      }

      else
      {
        v47 = v42;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v46, v47);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    }

    swift_willThrow();
  }

  return v33;
}

{
  v57[0] = a5;
  v57[1] = a6;
  v57[2] = a7;
  v58 = a8;
  v10 = a3 >> 5;
  if (v10 == 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v50 = v27;
    v51 = v28 & 1;
    v52 = a4;
    v53 = v57;
    v54 = v29;
    v31 = *(*(v30 + 32) + 24);
    MEMORY[0x1EEE9AC00](v32);
    v33 = v49;
    v49[2] = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    v49[3] = v34;
    v49[4] = v35;
    v49[5] = v36;

    os_unfair_lock_lock((v31 + 40));
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v31 + 16), &v55);
    os_unfair_lock_unlock((v31 + 40));

    if (!v8)
    {
      v33 = v55;
    }
  }

  else
  {
    if (v10 == 5 && !(a2 | a1) && a3 == 160)
    {
      v15 = type metadata accessor for DecodingError();
      swift_allocError();
      v17 = v16;
      *v16 = MEMORY[0x1E69E7360];
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v18 = _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        *(inited + 56) = &type metadata for _CodingKey;
        *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v20 = swift_allocObject();
        *(inited + 32) = v20;
        *(v20 + 16) = a5;
        *(v20 + 24) = a6;
        *(v20 + 32) = a7;
        *(v20 + 40) = a8;
        v55 = v18;
        specialized Array.append<A>(contentsOf:)(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v55 = 0;
      v56 = 0xE000000000000000;
      v33 = &v55;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0x3436746E49, 0xE500000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    }

    else
    {
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v24 = _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v25 = swift_initStackObject();
        *(v25 + 16) = xmmword_181218E20;
        *(v25 + 56) = &type metadata for _CodingKey;
        *(v25 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v26 = swift_allocObject();
        *(v25 + 32) = v26;
        *(v26 + 16) = a5;
        *(v26 + 24) = a6;
        *(v26 + 32) = a7;
        *(v26 + 40) = a8;
        v55 = v24;
        specialized Array.append<A>(contentsOf:)(v25);
      }

      v37 = type metadata accessor for DecodingError();
      swift_allocError();
      v39 = v38;
      *v38 = MEMORY[0x1E69E7360];
      v55 = 0;
      v56 = 0xE000000000000000;
      v33 = &v55;
      _StringGuts.grow(_:)(43);

      v55 = 0xD000000000000023;
      v56 = 0x8000000181482100;
      v40 = 0xE800000000000000;
      v41 = 0x676E697274732061;
      v42 = 0xEC0000007972616ELL;
      v43 = 0x6F69746369642061;
      v44 = 0xE800000000000000;
      v45 = 0x7961727261206E61;
      if (v10 != 4)
      {
        v45 = 1819047278;
        v44 = 0xE400000000000000;
      }

      if (v10 != 3)
      {
        v43 = v45;
        v42 = v44;
      }

      if (v10)
      {
        v41 = 1819242338;
        v40 = 0xE400000000000000;
      }

      if (v10 <= 2)
      {
        v46 = v41;
      }

      else
      {
        v46 = v43;
      }

      if (v10 <= 2)
      {
        v47 = v40;
      }

      else
      {
        v47 = v42;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v46, v47);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    }

    swift_willThrow();
  }

  return v33;
}

{
  v56[0] = a5;
  v56[1] = a6;
  v56[2] = a7;
  v57 = a8;
  v10 = a3 >> 5;
  if (v10 == 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v49 = v26;
    v50 = v27 & 1;
    v51 = a4;
    v52 = v56;
    v53 = v28;
    v30 = *(*(v29 + 32) + 24);
    MEMORY[0x1EEE9AC00](v31);
    v32 = v48;
    v48[2] = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    v48[3] = v33;
    v48[4] = v34;
    v48[5] = v35;

    os_unfair_lock_lock((v30 + 40));
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v30 + 16), &v54);
    os_unfair_lock_unlock((v30 + 40));

    if (!v8)
    {
      v32 = v54;
    }
  }

  else
  {
    if (v10 == 5 && !(a2 | a1) && a3 == 160)
    {
      v15 = type metadata accessor for DecodingError();
      swift_allocError();
      v17 = v16;
      *v16 = MEMORY[0x1E69E7570];
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v18 = _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        *(inited + 56) = &type metadata for _CodingKey;
        *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v20 = swift_allocObject();
        *(inited + 32) = v20;
        *(v20 + 16) = a5;
        *(v20 + 24) = a6;
        *(v20 + 32) = a7;
        *(v20 + 40) = a8;
        v54 = v18;
        specialized Array.append<A>(contentsOf:)(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v54 = 0;
      v55 = 0xE000000000000000;
      v32 = &v54;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0x383231746E49, 0xE600000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    }

    else
    {
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v24 = swift_initStackObject();
        *(v24 + 16) = xmmword_181218E20;
        *(v24 + 56) = &type metadata for _CodingKey;
        *(v24 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v25 = swift_allocObject();
        *(v24 + 32) = v25;
        *(v25 + 16) = a5;
        *(v25 + 24) = a6;
        *(v25 + 32) = a7;
        *(v25 + 40) = a8;
        specialized Array.append<A>(contentsOf:)(v24);
      }

      v36 = type metadata accessor for DecodingError();
      swift_allocError();
      v38 = v37;
      *v37 = MEMORY[0x1E69E7570];
      v54 = 0;
      v55 = 0xE000000000000000;
      v32 = &v54;
      _StringGuts.grow(_:)(43);

      v54 = 0xD000000000000024;
      v55 = 0x80000001814820D0;
      v39 = 0xE800000000000000;
      v40 = 0x676E697274732061;
      v41 = 0xEC0000007972616ELL;
      v42 = 0x6F69746369642061;
      v43 = 0xE800000000000000;
      v44 = 0x7961727261206E61;
      if (v10 != 4)
      {
        v44 = 1819047278;
        v43 = 0xE400000000000000;
      }

      if (v10 != 3)
      {
        v42 = v44;
        v41 = v43;
      }

      if (v10)
      {
        v40 = 1819242338;
        v39 = 0xE400000000000000;
      }

      if (v10 <= 2)
      {
        v45 = v40;
      }

      else
      {
        v45 = v42;
      }

      if (v10 <= 2)
      {
        v46 = v39;
      }

      else
      {
        v46 = v41;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v45, v46);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    }

    swift_willThrow();
  }

  return v32;
}

{
  v57[0] = a5;
  v57[1] = a6;
  v57[2] = a7;
  v58 = a8;
  v10 = a3 >> 5;
  if (v10 == 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v50 = v27;
    v51 = v28 & 1;
    v52 = a4;
    v53 = v57;
    v54 = v29;
    v31 = *(*(v30 + 32) + 24);
    MEMORY[0x1EEE9AC00](v32);
    v33 = v49;
    v49[2] = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    v49[3] = v34;
    v49[4] = v35;
    v49[5] = v36;

    os_unfair_lock_lock((v31 + 40));
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v31 + 16), &v55);
    os_unfair_lock_unlock((v31 + 40));

    if (!v8)
    {
      v33 = v55;
    }
  }

  else
  {
    if (v10 == 5 && !(a2 | a1) && a3 == 160)
    {
      v15 = type metadata accessor for DecodingError();
      swift_allocError();
      v17 = v16;
      *v16 = MEMORY[0x1E69E7668];
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v18 = _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        *(inited + 56) = &type metadata for _CodingKey;
        *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v20 = swift_allocObject();
        *(inited + 32) = v20;
        *(v20 + 16) = a5;
        *(v20 + 24) = a6;
        *(v20 + 32) = a7;
        *(v20 + 40) = a8;
        v55 = v18;
        specialized Array.append<A>(contentsOf:)(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v55 = 0;
      v56 = 0xE000000000000000;
      v33 = &v55;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    }

    else
    {
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v24 = _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v25 = swift_initStackObject();
        *(v25 + 16) = xmmword_181218E20;
        *(v25 + 56) = &type metadata for _CodingKey;
        *(v25 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v26 = swift_allocObject();
        *(v25 + 32) = v26;
        *(v26 + 16) = a5;
        *(v26 + 24) = a6;
        *(v26 + 32) = a7;
        *(v26 + 40) = a8;
        v55 = v24;
        specialized Array.append<A>(contentsOf:)(v25);
      }

      v37 = type metadata accessor for DecodingError();
      swift_allocError();
      v39 = v38;
      *v38 = MEMORY[0x1E69E7668];
      v55 = 0;
      v56 = 0xE000000000000000;
      v33 = &v55;
      _StringGuts.grow(_:)(43);

      v55 = 0xD000000000000024;
      v56 = 0x8000000181482010;
      v40 = 0xE800000000000000;
      v41 = 0x676E697274732061;
      v42 = 0xEC0000007972616ELL;
      v43 = 0x6F69746369642061;
      v44 = 0xE800000000000000;
      v45 = 0x7961727261206E61;
      if (v10 != 4)
      {
        v45 = 1819047278;
        v44 = 0xE400000000000000;
      }

      if (v10 != 3)
      {
        v43 = v45;
        v42 = v44;
      }

      if (v10)
      {
        v41 = 1819242338;
        v40 = 0xE400000000000000;
      }

      if (v10 <= 2)
      {
        v46 = v41;
      }

      else
      {
        v46 = v43;
      }

      if (v10 <= 2)
      {
        v47 = v40;
      }

      else
      {
        v47 = v42;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v46, v47);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    }

    swift_willThrow();
  }

  return v33;
}

{
  v57[0] = a5;
  v57[1] = a6;
  v57[2] = a7;
  v58 = a8;
  v10 = a3 >> 5;
  if (v10 == 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v50 = v27;
    v51 = v28 & 1;
    v52 = a4;
    v53 = v57;
    v54 = v29;
    v31 = *(*(v30 + 32) + 24);
    MEMORY[0x1EEE9AC00](v32);
    v33 = v49;
    v49[2] = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    v49[3] = v34;
    v49[4] = v35;
    v49[5] = v36;

    os_unfair_lock_lock((v31 + 40));
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v31 + 16), &v55);
    os_unfair_lock_unlock((v31 + 40));

    if (!v8)
    {
      v33 = v55;
    }
  }

  else
  {
    if (v10 == 5 && !(a2 | a1) && a3 == 160)
    {
      v15 = type metadata accessor for DecodingError();
      swift_allocError();
      v17 = v16;
      *v16 = MEMORY[0x1E69E76D8];
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v18 = _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        *(inited + 56) = &type metadata for _CodingKey;
        *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v20 = swift_allocObject();
        *(inited + 32) = v20;
        *(v20 + 16) = a5;
        *(v20 + 24) = a6;
        *(v20 + 32) = a7;
        *(v20 + 40) = a8;
        v55 = v18;
        specialized Array.append<A>(contentsOf:)(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v55 = 0;
      v56 = 0xE000000000000000;
      v33 = &v55;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    }

    else
    {
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v24 = _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v25 = swift_initStackObject();
        *(v25 + 16) = xmmword_181218E20;
        *(v25 + 56) = &type metadata for _CodingKey;
        *(v25 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v26 = swift_allocObject();
        *(v25 + 32) = v26;
        *(v26 + 16) = a5;
        *(v26 + 24) = a6;
        *(v26 + 32) = a7;
        *(v26 + 40) = a8;
        v55 = v24;
        specialized Array.append<A>(contentsOf:)(v25);
      }

      v37 = type metadata accessor for DecodingError();
      swift_allocError();
      v39 = v38;
      *v38 = MEMORY[0x1E69E76D8];
      v55 = 0;
      v56 = 0xE000000000000000;
      v33 = &v55;
      _StringGuts.grow(_:)(43);

      v55 = 0xD000000000000024;
      v56 = 0x8000000181481FE0;
      v40 = 0xE800000000000000;
      v41 = 0x676E697274732061;
      v42 = 0xEC0000007972616ELL;
      v43 = 0x6F69746369642061;
      v44 = 0xE800000000000000;
      v45 = 0x7961727261206E61;
      if (v10 != 4)
      {
        v45 = 1819047278;
        v44 = 0xE400000000000000;
      }

      if (v10 != 3)
      {
        v43 = v45;
        v42 = v44;
      }

      if (v10)
      {
        v41 = 1819242338;
        v40 = 0xE400000000000000;
      }

      if (v10 <= 2)
      {
        v46 = v41;
      }

      else
      {
        v46 = v43;
      }

      if (v10 <= 2)
      {
        v47 = v40;
      }

      else
      {
        v47 = v42;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v46, v47);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    }

    swift_willThrow();
  }

  return v33;
}

{
  v56[0] = a5;
  v56[1] = a6;
  v56[2] = a7;
  v57 = a8;
  v10 = a3 >> 5;
  if (v10 == 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v49 = v26;
    v50 = v27 & 1;
    v51 = a4;
    v52 = v56;
    v53 = v28;
    v30 = *(*(v29 + 32) + 24);
    MEMORY[0x1EEE9AC00](v31);
    v32 = v48;
    v48[2] = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    v48[3] = v33;
    v48[4] = v34;
    v48[5] = v35;

    os_unfair_lock_lock((v30 + 40));
    closure #1 in JSONMap.withBuffer<A>(for:perform:)specialized partial apply((v30 + 16), &v54);
    os_unfair_lock_unlock((v30 + 40));

    if (!v8)
    {
      v32 = v54;
    }
  }

  else
  {
    if (v10 == 5 && !(a2 | a1) && a3 == 160)
    {
      v15 = type metadata accessor for DecodingError();
      swift_allocError();
      v17 = v16;
      *v16 = MEMORY[0x1E69E77B8];
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v18 = _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        *(inited + 56) = &type metadata for _CodingKey;
        *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v20 = swift_allocObject();
        *(inited + 32) = v20;
        *(v20 + 16) = a5;
        *(v20 + 24) = a6;
        *(v20 + 32) = a7;
        *(v20 + 40) = a8;
        v54 = v18;
        specialized Array.append<A>(contentsOf:)(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v54 = 0;
      v55 = 0xE000000000000000;
      v32 = &v54;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0x383231746E4955, 0xE700000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    }

    else
    {
      if (a8 == -1)
      {
        _CodingPathNode.path.getter(a4);
      }

      else
      {
        outlined copy of _CodingKey(a5, a6, a7, a8);
        _CodingPathNode.path.getter(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v24 = swift_initStackObject();
        *(v24 + 16) = xmmword_181218E20;
        *(v24 + 56) = &type metadata for _CodingKey;
        *(v24 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v25 = swift_allocObject();
        *(v24 + 32) = v25;
        *(v25 + 16) = a5;
        *(v25 + 24) = a6;
        *(v25 + 32) = a7;
        *(v25 + 40) = a8;
        specialized Array.append<A>(contentsOf:)(v24);
      }

      v36 = type metadata accessor for DecodingError();
      swift_allocError();
      v38 = v37;
      *v37 = MEMORY[0x1E69E77B8];
      v54 = 0;
      v55 = 0xE000000000000000;
      v32 = &v54;
      _StringGuts.grow(_:)(43);

      v54 = 0xD000000000000025;
      v55 = 0x8000000181481FB0;
      v39 = 0xE800000000000000;
      v40 = 0x676E697274732061;
      v41 = 0xEC0000007972616ELL;
      v42 = 0x6F69746369642061;
      v43 = 0xE800000000000000;
      v44 = 0x7961727261206E61;
      if (v10 != 4)
      {
        v44 = 1819047278;
        v43 = 0xE400000000000000;
      }

      if (v10 != 3)
      {
        v42 = v44;
        v41 = v43;
      }

      if (v10)
      {
        v40 = 1819242338;
        v39 = 0xE400000000000000;
      }

      if (v10 <= 2)
      {
        v45 = v40;
      }

      else
      {
        v45 = v42;
      }

      if (v10 <= 2)
      {
        v46 = v39;
      }

      else
      {
        v46 = v41;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v45, v46);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    }

    swift_willThrow();
  }

  return v32;
}

uint64_t sub_180887874(unsigned __int8 *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
    v3 = *a1;
    if (v3 == 43)
    {
      if (a2 >= 2)
      {
        v14 = a1 + 1;
        if (a1 + 1 < &a1[a2])
        {
          v15 = 0;
          v16 = a2 - 1;
          while (1)
          {
            v17 = *v14 - 48;
            if (v17 > 9)
            {
              break;
            }

            result = 0;
            v18 = (v15 * 10) >> 64;
            v19 = 10 * v15;
            v20 = v18 != v19 >> 63;
            v12 = __OFADD__(v19, v17);
            v15 = v19 + v17;
            v21 = v12;
            if (!v20 && (v21 & 1) == 0)
            {
              ++v14;
              result = v15;
              if (--v16)
              {
                continue;
              }
            }

            return result;
          }

          return 0;
        }

        return 0;
      }
    }

    else
    {
      if (v3 != 45)
      {
        if (a2 >= 1)
        {
          v22 = 0;
          v23 = &a1[a2];
          while (1)
          {
            v24 = *v2 - 48;
            if (v24 > 9)
            {
              break;
            }

            result = 0;
            v25 = (v22 * 10) >> 64;
            v26 = 10 * v22;
            v27 = v25 != v26 >> 63;
            v12 = __OFADD__(v26, v24);
            v22 = v26 + v24;
            v28 = v12;
            if (!v27 && (v28 & 1) == 0)
            {
              ++v2;
              result = v22;
              if (v2 < v23)
              {
                continue;
              }
            }

            return result;
          }

          return 0;
        }

        return 0;
      }

      if (a2 >= 2)
      {
        v4 = a1 + 1;
        if (a1 + 1 < &a1[a2])
        {
          v5 = 0;
          v6 = a2 - 1;
          while (1)
          {
            v7 = *v4 - 48;
            if (v7 > 9)
            {
              break;
            }

            result = 0;
            v9 = (v5 * 10) >> 64;
            v10 = 10 * v5;
            v11 = v9 != v10 >> 63;
            v12 = __OFSUB__(v10, v7);
            v5 = v10 - v7;
            v13 = v12;
            if (!v11 && (v13 & 1) == 0)
            {
              ++v4;
              result = v5;
              if (--v6)
              {
                continue;
              }
            }

            return result;
          }

          return 0;
        }

        return 0;
      }
    }
  }

  return 0;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSONScanner.scanNumber()()
{
  v1 = v0[3];
  v2 = v0[4];
  if (v2 == v1)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v3 = v1 + 1;
  v4 = *v1;
  v0[3] = v1 + 1;
  if (v4 != 45 && (v4 - 58) < 0xFFFFFFF6)
  {
    goto LABEL_21;
  }

  if (v3 >= v2)
  {
LABEL_18:
    v9 = 1;
  }

  else
  {
    v6 = 0;
    while (1)
    {
      while (1)
      {
        v7 = *v3;
        if ((v7 - 58) <= 0xFFFFFFF5)
        {
          v8 = v7 - 43;
          if (v8 > 0x3A)
          {
            goto LABEL_16;
          }

          if (((1 << v8) & 0xD) == 0)
          {
            break;
          }
        }

        v0[3] = ++v3;
        if (v3 >= v2)
        {
          goto LABEL_16;
        }
      }

      if (((1 << v8) & 0x400000004000000) == 0)
      {
        break;
      }

      v0[3] = ++v3;
      v6 = 1;
      if (v3 >= v2)
      {
        goto LABEL_17;
      }
    }

LABEL_16:
    if ((v6 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = 9;
  }

  v10 = v3 - v1;
  v11 = v0[1];
  v12 = v1 - v11;
  JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(v11, v0[2], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18121D6B0;
  *(inited + 32) = v9;
  *(inited + 40) = v10;
  *(inited + 48) = v12;
  specialized Array.append<A>(contentsOf:)(inited);
}

uint64_t (*specialized JSONDecoderImpl.decode(_:)(uint64_t (*result)(uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, uint64_t)))(uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, uint64_t)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = v2 + 24 * v3;
    v6 = *(v5 + 8);
    v7 = *(v5 + 16);
    v8 = *(v1 + 160);
    v9 = *(v5 + 24);

    v10 = v4(v6, v7, v9, v8, 0, 0, 0, 255);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = v2 + 24 * v3;
    v6 = *(v5 + 8);
    v7 = *(v5 + 16);
    v8 = *(v1 + 160);
    v9 = *(v5 + 24);

    v10 = v4(v6, v7, v9, v8, 0, 0, 0, 255);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = v2 + 24 * v3;
    v6 = *(v5 + 8);
    v7 = *(v5 + 16);
    v8 = *(v1 + 160);
    v9 = *(v5 + 24);

    v10 = v4(v6, v7, v9, v8, 0, 0, 0, 255);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = v2 + 24 * v3;
    v6 = *(v5 + 8);
    v7 = *(v5 + 16);
    v8 = *(v1 + 160);
    v9 = *(v5 + 24);

    v10 = v4(v6, v7, v9, v8, 0, 0, 0, 255);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = v2 + 24 * v3;
    v6 = *(v5 + 8);
    v7 = *(v5 + 16);
    v8 = *(v1 + 160);
    v9 = *(v5 + 24);

    v10 = v4(v6, v7, v9, v8, 0, 0, 0, 255);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*protocol witness for SingleValueDecodingContainer.decode(_:) in conformance JSONDecoderImpl())(uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, uint64_t)
{
  return specialized JSONDecoderImpl.decode(_:)(specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return specialized JSONDecoderImpl.decode(_:)(specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return specialized JSONDecoderImpl.decode(_:)(specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return specialized JSONDecoderImpl.decode(_:)(specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return specialized JSONDecoderImpl.decode(_:)(specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return specialized JSONDecoderImpl.decode(_:)(specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return specialized JSONDecoderImpl.decode(_:)(specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return specialized JSONDecoderImpl.decode(_:)(specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return specialized JSONDecoderImpl.decode(_:)(specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return specialized JSONDecoderImpl.decode(_:)(specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return specialized JSONDecoderImpl.decode(_:)(specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

{
  return specialized JSONDecoderImpl.decode(_:)(specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:));
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance JSONDecoderImpl()
{
  return specialized JSONDecoderImpl.decode(_:)();
}

{
  specialized JSONDecoderImpl.decode(_:)();
  return v0 & 1;
}

{
  return specialized JSONDecoderImpl.decode(_:)();
}

uint64_t __JSONEncoder.takeValue()()
{
  if (*(v0 + 48))
  {
    *(v0 + 48) = 0;
    v1 = JSONFuture.RefObject.values.getter();
  }

  else if (*(v0 + 40))
  {
    *(v0 + 40) = 0;
    v1 = JSONFuture.RefArray.values.getter();
  }

  else
  {
    v1 = *(v0 + 16);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = -1;
  }

  return v1;
}

uint64_t outlined copy of JSONEncoderValue(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 3u)
  {
    if (a3 != 4)
    {
      if (a3 == 5)
      {
      }

      if (a3 != 6)
      {
        return result;
      }
    }
  }

  if (a3 < 2u || a3 == 3)
  {
  }

  return result;
}

uint64_t specialized __JSONEncoder.wrapGeneric<A, B>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v175 = a7;
  MEMORY[0x1EEE9AC00](a1);
  v176 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v177 = &v170 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v178 = &v170 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v179 = &v170 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v170 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v20;
  v209[0] = v20;
  v209[1] = v22;
  v23 = v22;
  v25 = v24;
  v209[2] = v24;
  v27 = v26;
  v210 = v26;
  v29 = *(v28 + 16);
  v32 = v31;
  v180 = v28 + 16;
  v181 = v29;
  (v29)(&v170 - v30, v31, v33, v19);
  if (swift_dynamicCast())
  {
    return specialized __JSONEncoder.wrap<A>(_:for:)(v21, v23, v25, v27, *&v197);
  }

  v173 = v23;
  v174 = v21;
  v171 = v25;
  LODWORD(v172) = v27;
  v35 = v211;
  v36 = v181;
  v181(v17, v32, a6);
  if (swift_dynamicCast())
  {
    v37 = v197;
    v38 = specialized __JSONEncoder.wrap<A>(_:for:)(v197, *(&v197 + 1), v174, v173, v171, v172);
    if (v35)
    {
      return outlined consume of Data._Representation(v37, *(&v37 + 1));
    }

    v61 = v38;
    outlined consume of Data._Representation(v37, *(&v37 + 1));
    return v61;
  }

  v36(v179, v32, a6);
  v39 = swift_dynamicCast();
  v40 = v174;
  if (v39)
  {
    v41 = *(&v197 + 1);
    ObjectType = swift_getObjectType();
    v43 = (*(v41 + 112))(ObjectType, v41);
    swift_unknownObjectRelease();
    return v43;
  }

  v36(v178, v32, a6);
  type metadata accessor for NSDecimal(0);
  if (swift_dynamicCast())
  {
    v193 = v197;
    LODWORD(v194) = v198;
    if (!_So9NSDecimala__length_getter(&v193))
    {
      v193 = v197;
      LODWORD(v194) = v198;
      if (_So9NSDecimala__isNegative_getter(&v193))
      {
        return 5136718;
      }
    }

    v193 = v197;
    LODWORD(v194) = v198;
    if (!_So9NSDecimala__length_getter(&v193))
    {
      return 48;
    }

    *&v205[0] = 0;
    *(&v205[0] + 1) = 0xE000000000000000;
    v193 = v197;
    LODWORD(v194) = v198;
    v186 = v197;
    LODWORD(v187) = v198;
    if (_So9NSDecimala__exponent_getter(&v186) >= 1)
    {
      do
      {
        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        v186 = v193;
        LODWORD(v187) = v194;
        v44 = _So9NSDecimala__exponent_getter(&v186);
        _So9NSDecimala__exponent_setter((v44 - 1), &v193);
        v186 = v193;
        LODWORD(v187) = v194;
      }

      while (_So9NSDecimala__exponent_getter(&v186) > 0);
    }

    v186 = v193;
    LODWORD(v187) = v194;
    if (!_So9NSDecimala__exponent_getter(&v186))
    {
      _So9NSDecimala__exponent_setter(1, &v193);
    }

    v186 = v193;
    LODWORD(v187) = v194;
    if (!_So9NSDecimala__length_getter(&v186))
    {
LABEL_106:
      v186 = v193;
      LODWORD(v187) = v194;
      if (_So9NSDecimala__exponent_getter(&v186) <= 0)
      {
        while (1)
        {
          v186 = v193;
          LODWORD(v187) = v194;
          if (!_So9NSDecimala__exponent_getter(&v186))
          {
            break;
          }

          MEMORY[0x1865CB0E0](48, 0xE100000000000000);
          v186 = v193;
          LODWORD(v187) = v194;
          v154 = _So9NSDecimala__exponent_getter(&v186);
          _So9NSDecimala__exponent_setter((v154 + 1), &v193);
        }

        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      }

      v186 = v193;
      LODWORD(v187) = v194;
      if (_So9NSDecimala__isNegative_getter(&v186))
      {
        MEMORY[0x1865CB0E0](45, 0xE100000000000000);
      }

      v186 = v205[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>, &_ss18ReversedCollectionVySSGMd);
      return String.init<A>(_:)();
    }

    while (1)
    {
      v186 = v193;
      LODWORD(v187) = v194;
      if (!_So9NSDecimala__exponent_getter(&v186))
      {
        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      }

      v211 = v35;
      v186 = v193;
      LODWORD(v187) = v194;
      v45 = _So9NSDecimala__exponent_getter(&v186);
      _So9NSDecimala__exponent_setter((v45 + 1), &v193);
      v181 = WORD2(v193);
      v182 = v193;
      v174 = WORD3(v193);
      v179 = WORD5(v193);
      v180 = WORD4(v193);
      v178 = WORD6(v193);
      v176 = HIWORD(v193);
      LODWORD(v177) = v194;
      LODWORD(v175) = WORD1(v194);
      NSDecimal.asVariableLengthInteger()(v193 | (WORD2(v193) << 32) | (WORD3(v193) << 48), WORD4(v193) | (WORD5(v193) << 16) | (WORD6(v193) << 32) | (HIWORD(v193) << 48), v194 | (WORD1(v194) << 16));
      v47 = v46;
      v48 = *(v46 + 16);
      v50._rawValue = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v48);
      *&v186 = v50;
      if (v48)
      {
        break;
      }

      v56 = 48;
LABEL_26:
      for (i = *(v50._rawValue + 2); i; i = *(v186 + 16))
      {
        if (*(v50._rawValue + i + 15))
        {
          break;
        }

        if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
        {
          specialized Array.remove(at:)(*(v186 + 16) - 1);
        }

        v50._rawValue = v186;
      }

      LODWORD(v186) = v182;
      WORD2(v186) = v181;
      WORD3(v186) = v174;
      WORD4(v186) = v180;
      WORD5(v186) = v179;
      WORD6(v186) = v178;
      HIWORD(v186) = v176;
      LOWORD(v187) = v177;
      WORD1(v187) = v175;
      NSDecimal.copyVariableLengthInteger(_:)(v50);
      v35 = v58;
      if (v58)
      {
        goto LABEL_135;
      }

      v59 = *(v50._rawValue + 2);

      if (HIDWORD(v59))
      {
        goto LABEL_132;
      }

      _So9NSDecimala__length_setter(v59, &v186);
      v193 = v186;
      LODWORD(v194) = v187;
      *&v207 = v56;
      v60 = static String._uncheckedFromUTF8(_:)();
      MEMORY[0x1865CB0E0](v60);

      v207 = v193;
      v208 = v194;
      if (!_So9NSDecimala__length_getter(&v207))
      {
        goto LABEL_106;
      }
    }

    v51 = 0;
    v52 = v48 + 15;
    while (1)
    {
      v53 = *(v47 + 16);
      if ((v52 - 15) > v53)
      {
        break;
      }

      v54 = *(v47 + 2 * v52);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50._rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(v50._rawValue);
      }

      v53 = *(v50._rawValue + 2);
      if ((v52 - 15) > v53)
      {
        goto LABEL_115;
      }

      v55 = v54 | (v51 << 16);
      *(v50._rawValue + v52) = v55 / 0xA;
      v51 = v55 % 0xA;
      if (--v52 == 15)
      {

        *&v186 = v50;
        v56 = v51 | 0x30;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v36(v177, v32, a6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation36_JSONStringDictionaryEncodableMarker33_12768CA107A31EF2DCE034FD75B541C9LL_pMd);
  if (!swift_dynamicCast())
  {
    v206 = 0;
    memset(v205, 0, sizeof(v205));
    outlined destroy of TermOfAddress?(v205, &_s10Foundation36_JSONStringDictionaryEncodableMarker33_12768CA107A31EF2DCE034FD75B541C9LL_pSgMd);
    v181(v176, v32, a6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation25_JSONDirectArrayEncodable33_12768CA107A31EF2DCE034FD75B541C9LL_pMd);
    if (!swift_dynamicCast())
    {
      *&v195 = 0;
      v193 = 0u;
      v194 = 0u;
      outlined destroy of TermOfAddress?(&v193, &_s10Foundation25_JSONDirectArrayEncodable33_12768CA107A31EF2DCE034FD75B541C9LL_pSgMd);
      v148 = v172;
      if (v172 == 0xFF)
      {
        v150 = 0;
        v153 = 0;
        v149 = 0;
        *(&v186 + 1) = 0;
        *&v187 = 0;
        v152 = v171;
        v151 = v173;
      }

      else
      {
        v149 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v150 = swift_allocObject();
        v151 = v173;
        *(v150 + 16) = v40;
        *(v150 + 24) = v151;
        v152 = v171;
        *(v150 + 32) = v171;
        *(v150 + 40) = v148;
        v153 = &type metadata for _CodingKey;
      }

      *&v186 = v150;
      *(&v187 + 1) = v153;
      *&v188 = v149;
      outlined init with copy of FloatingPointRoundingRule?(&v186, &v197, &_ss9CodingKey_pSgMd);
      if (*(&v198 + 1))
      {
        outlined init with take of Equatable(&v197, &v207);
        v157 = *(v182 + 184);
        v158 = v182;
        if (v157)
        {
          *(v182 + 184) = 0;
          outlined copy of _CodingKey?(v174, v173, v152, v148);
          outlined destroy of TermOfAddress?(v157 + 192, &_ss9CodingKey_pSgMd);
          outlined init with take of Equatable(&v207, v157 + 192);
          *(v157 + 176) = v158;
          v159 = v158;
        }

        else
        {
          v160 = *(v182 + 136);
          v201 = *(v182 + 120);
          v202 = v160;
          v203 = *(v182 + 152);
          v204 = *(v182 + 168);
          v161 = *(v182 + 72);
          v197 = *(v182 + 56);
          v198 = v161;
          v162 = *(v182 + 104);
          v199 = *(v182 + 88);
          v200 = v162;
          outlined init with take of Equatable(&v207, v205);
          type metadata accessor for __JSONEncoder();
          v157 = swift_allocObject();
          *(v157 + 184) = 0u;
          *(v157 + 200) = 0u;
          *(v157 + 216) = 0u;
          v163 = v202;
          *(v157 + 120) = v201;
          *(v157 + 136) = v163;
          *(v157 + 152) = v203;
          v164 = v198;
          *(v157 + 56) = v197;
          *(v157 + 72) = v164;
          v165 = v200;
          *(v157 + 88) = v199;
          *(v157 + 16) = 0;
          *(v157 + 24) = 0;
          *(v157 + 32) = -1;
          *(v157 + 40) = 0;
          *(v157 + 48) = 0;
          v166 = v204;
          *(v157 + 104) = v165;
          *(v157 + 168) = v166;
          *(v157 + 176) = v158;
          v159 = v158;

          outlined copy of _CodingKey?(v174, v173, v152, v148);
          outlined init with copy of JSONEncoder._Options(&v197, &v193);
          outlined assign with take of CodingKey?(v205, v157 + 192);
        }
      }

      else
      {
        outlined copy of _CodingKey?(v40, v151, v152, v148);
        outlined destroy of TermOfAddress?(&v197, &_ss9CodingKey_pSgMd);
        v157 = v182;

        v159 = v157;
      }

      outlined destroy of TermOfAddress?(&v186, &_ss9CodingKey_pSgMd);
      v192[0] = v157;
      *(&v198 + 1) = type metadata accessor for __JSONEncoder();
      *&v199 = lazy protocol witness table accessor for type __JSONEncoder and conformance __JSONEncoder(&lazy protocol witness table cache variable for type __JSONEncoder and conformance __JSONEncoder, type metadata accessor for __JSONEncoder);
      *&v197 = v157;

      v167 = v211;
      dispatch thunk of Encodable.encode(to:)();
      if (v167)
      {
        __swift_destroy_boxed_opaque_existential_1(&v197);
        $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v159, v192);
      }

      __swift_destroy_boxed_opaque_existential_1(&v197);
      v61 = __JSONEncoder.takeValue()();
      $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v159, v192);

      return v61;
    }

    outlined init with take of Equatable(&v193, &v197);
    v145 = *(v182 + 56);
    v50._rawValue = *(&v198 + 1);
    v52 = v199;
    __swift_project_boxed_opaque_existential_1(&v197, *(&v198 + 1));
    v49 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v53 = v52;
    if ((v145 & 1) == 0)
    {
      v146 = v211;
      v147 = (*(v52 + 8))(v182, v209, &type metadata for _CodingKey, v49, v50, v52);
      if (!v146)
      {
        v168 = v147;
        __swift_destroy_boxed_opaque_existential_1(&v197);
        return v168;
      }

      return __swift_destroy_boxed_opaque_existential_1(&v197);
    }

LABEL_116:
    v155 = v211;
    v156 = (*(v53 + 16))(v182, v209, &type metadata for _CodingKey, v49, v50, v52);
    if (!v155)
    {
      v169 = v156;
      __swift_destroy_boxed_opaque_existential_1(&v197);
      return v169;
    }

    return __swift_destroy_boxed_opaque_existential_1(&v197);
  }

  outlined init with take of Equatable(v205, &v207);
  outlined init with copy of Hashable & Sendable(&v207, v192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSE_pGMd);
  swift_dynamicCast();
  v62 = v191;
  v190 = MEMORY[0x1E69E7CC8];
  v63 = *(v191 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation16JSONEncoderValueOGMd);
  v64 = v182;
  Dictionary.reserveCapacity(_:)(v63);
  v65 = *(v64 + 136);
  v201 = *(v64 + 120);
  v202 = v65;
  v203 = *(v64 + 152);
  v204 = *(v64 + 168);
  v66 = *(v64 + 72);
  v197 = *(v64 + 56);
  v198 = v66;
  v67 = *(v64 + 104);
  v199 = *(v64 + 88);
  v200 = v67;
  type metadata accessor for __JSONEncoder();
  v186 = 0u;
  v187 = 0u;
  *&v188 = 0;
  v68 = swift_allocObject();
  *(v68 + 16) = 0;
  *(v68 + 24) = 0;
  *(v68 + 32) = -1;
  *(v68 + 40) = 0;
  *(v68 + 48) = 0;
  *(v68 + 184) = 0u;
  *(v68 + 200) = 0u;
  *(v68 + 216) = 0u;
  *(v68 + 120) = *(v64 + 120);
  *(v68 + 136) = *(v64 + 136);
  *(v68 + 152) = *(v64 + 152);
  v69 = *(v64 + 168);
  *(v68 + 56) = *(v64 + 56);
  *(v68 + 72) = *(v64 + 72);
  *(v68 + 88) = *(v64 + 88);
  *(v68 + 104) = *(v64 + 104);
  *(v68 + 168) = v69;
  *(v68 + 176) = v64;
  outlined init with copy of JSONEncoder._Options(&v197, &v193);

  v179 = v68;
  outlined assign with take of CodingKey?(&v186, v68 + 192);
  v70 = v62 + 64;
  v71 = 1 << v62[32];
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  else
  {
    v72 = -1;
  }

  v73 = v72 & *(v62 + 8);
  v74 = v190;
  v75 = (v71 + 63) >> 6;
  v176 = v62;

  v76 = 0;
  v177 = v75;
  v178 = v70;
  while (1)
  {
    if (!v73)
    {
      if (v75 <= v76 + 1)
      {
        v83 = v76 + 1;
      }

      else
      {
        v83 = v75;
      }

      v84 = v83 - 1;
      while (1)
      {
        v82 = v76 + 1;
        if (__OFADD__(v76, 1))
        {
          break;
        }

        if (v82 >= v75)
        {
          v73 = 0;
          v189 = 0;
          v187 = 0u;
          v188 = 0u;
          v76 = v84;
          v186 = 0u;
          goto LABEL_56;
        }

        v73 = *&v70[8 * v82];
        ++v76;
        if (v73)
        {
          v76 = v82;
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    v82 = v76;
LABEL_55:
    v85 = __clz(__rbit64(v73));
    v73 &= v73 - 1;
    v86 = v85 | (v82 << 6);
    v87 = (*(v176 + 6) + 16 * v86);
    v89 = *v87;
    v88 = v87[1];
    outlined init with copy of Hashable & Sendable(*(v176 + 7) + 40 * v86, &v183);
    *&v186 = v89;
    *(&v186 + 1) = v88;
    outlined init with take of Equatable(&v183, &v187);

LABEL_56:
    v193 = v186;
    v194 = v187;
    v195 = v188;
    v196 = v189;
    v90 = *(&v186 + 1);
    if (!*(&v186 + 1))
    {

      __swift_destroy_boxed_opaque_existential_1(&v207);

      return v74;
    }

    v91 = v193;
    outlined init with take of Equatable(&v194, &v186);
    v184 = &type metadata for _CodingKey;
    v185 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v92 = swift_allocObject();
    *&v183 = v92;
    *(v92 + 16) = v91;
    *(v92 + 24) = v90;
    *(v92 + 32) = 0;
    *(v92 + 40) = 0;

    outlined assign with take of CodingKey?(&v183, (v179 + 192));
    v93 = *(&v187 + 1);
    v94 = v188;
    v95 = __swift_project_boxed_opaque_existential_1(&v186, *(&v187 + 1));
    v96 = v211;
    v97 = specialized __JSONEncoder.wrapGeneric<A, B>(_:for:)(v95, 0, 0, 0, 255, v93, v94);
    if (v96)
    {
      v190 = v74;

      __swift_destroy_boxed_opaque_existential_1(&v186);

      __swift_destroy_boxed_opaque_existential_1(&v207);
    }

    v211 = 0;
    if (v99 == 255)
    {
      v100 = MEMORY[0x1E69E7CC8];
    }

    else
    {
      v100 = v97;
    }

    if (v99 == 255)
    {
      v101 = 0;
    }

    else
    {
      v101 = v98;
    }

    v180 = v101;
    v181 = v100;
    if (v99 == 255)
    {
      v102 = 4;
    }

    else
    {
      v102 = v99;
    }

    LODWORD(v182) = v102;
    v103 = v74;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v183 = v74;
    v106 = specialized __RawDictionaryStorage.find<A>(_:)(v91, v90);
    v107 = *(v74 + 16);
    v108 = (v105 & 1) == 0;
    v109 = v107 + v108;
    if (__OFADD__(v107, v108))
    {
      goto LABEL_130;
    }

    v110 = v105;
    if (*(v103 + 24) >= v109)
    {
      break;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v109, isUniquelyReferenced_nonNull_native);
    v103 = v183;
    v111 = specialized __RawDictionaryStorage.find<A>(_:)(v91, v90);
    if ((v110 & 1) != (v112 & 1))
    {
      goto LABEL_134;
    }

    v106 = v111;
    if (v110)
    {
LABEL_43:

      v77 = *(v103 + 56) + 24 * v106;
      v78 = *v77;
      v79 = *(v77 + 8);
      v80 = v180;
      *v77 = v181;
      *(v77 + 8) = v80;
      v81 = *(v77 + 16);
      *(v77 + 16) = v182;
      outlined consume of JSONEncoderValue(v78, v79, v81);
      goto LABEL_44;
    }

LABEL_74:
    *(v103 + 8 * (v106 >> 6) + 64) |= 1 << v106;
    v113 = (*(v103 + 48) + 16 * v106);
    *v113 = v91;
    v113[1] = v90;
    v114 = *(v103 + 56) + 24 * v106;
    v115 = v180;
    *v114 = v181;
    *(v114 + 8) = v115;
    *(v114 + 16) = v182;
    v116 = *(v103 + 16);
    v117 = __OFADD__(v116, 1);
    v118 = v116 + 1;
    if (v117)
    {
      goto LABEL_131;
    }

    *(v103 + 16) = v118;
LABEL_44:
    v75 = v177;
    v70 = v178;
    __swift_destroy_boxed_opaque_existential_1(&v186);
    v74 = v103;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    if (v105)
    {
      goto LABEL_43;
    }

    goto LABEL_74;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16JSONEncoderValueOGMd);
  v119 = v103;
  v120 = static _DictionaryStorage.copy(original:)();
  v103 = v120;
  v175 = v119;
  if (!v119[2])
  {
LABEL_93:

    if (v110)
    {
      goto LABEL_43;
    }

    goto LABEL_74;
  }

  v121 = (v120 + 64);
  v122 = 1 << *(v103 + 32);
  v170 = (v175 + 8);
  v123 = (v122 + 63) >> 6;
  if (v103 != v175 || v121 >= &v170[8 * v123])
  {
    memmove(v121, v170, 8 * v123);
  }

  v124 = 0;
  v125 = v175;
  *(v103 + 16) = v175[2];
  v126 = 1 << *(v125 + 32);
  v127 = v125[8];
  if (v126 < 64)
  {
    v128 = ~(-1 << v126);
  }

  else
  {
    v128 = -1;
  }

  v129 = v128 & v127;
  v130 = (v126 + 63) >> 6;
  v171 = v130;
  if (v129)
  {
    do
    {
      v131 = __clz(__rbit64(v129));
      v174 = (v129 - 1) & v129;
LABEL_91:
      v134 = v131 | (v124 << 6);
      v135 = 16 * v134;
      v136 = (v175[6] + 16 * v134);
      v138 = *v136;
      v137 = v136[1];
      v134 *= 24;
      v139 = v175[7] + v134;
      v140 = *v139;
      v172 = *(v139 + 8);
      v141 = v172;
      v173 = v140;
      v142 = (*(v103 + 48) + v135);
      v143 = *(v139 + 16);
      *v142 = v138;
      v142[1] = v137;
      v144 = *(v103 + 56) + v134;
      *v144 = v140;
      *(v144 + 8) = v141;
      *(v144 + 16) = v143;

      outlined copy of JSONEncoderValue(v173, v172, v143);
      v130 = v171;
      v129 = v174;
    }

    while (v174);
  }

  v132 = v124;
  while (1)
  {
    v124 = v132 + 1;
    if (__OFADD__(v132, 1))
    {
      break;
    }

    if (v124 >= v130)
    {
      goto LABEL_93;
    }

    v133 = *&v170[8 * v124];
    ++v132;
    if (v133)
    {
      v131 = __clz(__rbit64(v133));
      v174 = (v133 - 1) & v133;
      goto LABEL_91;
    }
  }

LABEL_133:
  __break(1u);
LABEL_134:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_135:

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_180889210()
{
  outlined consume of _CodingKey(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t lazy protocol witness table accessor for type __JSONEncoder and conformance __JSONEncoder(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined assign with take of CodingKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for Encoder.singleValueContainer() in conformance __JSONEncoder@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for __JSONEncoder();
  a1[4] = lazy protocol witness table accessor for type __JSONEncoder and conformance __JSONEncoder(&lazy protocol witness table cache variable for type __JSONEncoder and conformance __JSONEncoder, type metadata accessor for __JSONEncoder);
  *a1 = v3;
}

uint64_t *JSONEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v37 = *MEMORY[0x1E69E9840];
  v9 = *(v3 + 96);
  v35[4] = *(v3 + 80);
  v35[5] = v9;
  v35[6] = *(v3 + 112);
  v36 = *(v3 + 128);
  v10 = *(v3 + 32);
  v35[0] = *(v3 + 16);
  v35[1] = v10;
  v11 = *(v3 + 64);
  v35[2] = *(v3 + 48);
  v35[3] = v11;
  type metadata accessor for __JSONEncoder();
  memset(v30, 0, sizeof(v30));
  v31 = 0;
  v12 = swift_allocObject();
  *(v12 + 23) = 0u;
  *(v12 + 25) = 0u;
  *(v12 + 27) = 0u;
  v13 = *(v5 + 96);
  *(v12 + 15) = *(v5 + 80);
  *(v12 + 17) = v13;
  *(v12 + 19) = *(v5 + 112);
  v14 = *(v5 + 32);
  *(v12 + 7) = *(v5 + 16);
  *(v12 + 9) = v14;
  v15 = *(v5 + 64);
  *(v12 + 11) = *(v5 + 48);
  v12[2] = 0;
  v12[3] = 0;
  *(v12 + 32) = -1;
  v12[5] = 0;
  v12[6] = 0;
  v16 = *(v5 + 128);
  *(v12 + 13) = v15;
  v12[21] = v16;
  v12[22] = 0;
  outlined init with copy of JSONEncoder._Options(v35, &v32);
  outlined assign with take of CodingKey?(v30, (v12 + 24));
  v17 = specialized __JSONEncoder.wrapGeneric<A, B>(_:for:)(a1, 0, 0, 0, 255, a2, a3);
  if (!v4)
  {
    v21 = v19;
    if (v19 != 0xFF)
    {
      v22 = v17;
      v23 = v18;
      (*(*v5 + 96))(&v32);
      v24 = v32;
      v32 = 0;
      LOBYTE(v33) = v24 & 1;
      BYTE1(v33) = (v24 & 2) != 0;
      BYTE2(v33) = (v24 & 8) != 0;
      v34 = MEMORY[0x1E69E7CC0];
      JSONWriter.serializeJSON(_:depth:)(v22, v23, v21, 0);
      outlined consume of JSONEncoderValue?(v22, v23, v21);
      v12 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v34);

      return v12;
    }

    v25 = type metadata accessor for EncodingError();
    swift_allocError();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
    v27[3] = a2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27);
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v32 = 0x6576656C2D706F54;
    v33 = 0xEA0000000000206CLL;
    v29 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v29);

    v12 = &v32;
    MEMORY[0x1865CB0E0](0xD00000000000001BLL, 0x8000000181482320);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6B30], v25);
    swift_willThrow();
  }

  return v12;
}

uint64_t outlined consume of JSONEncoderValue?(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return outlined consume of JSONEncoderValue(a1, a2, a3);
  }

  return a1;
}

uint64_t outlined consume of JSONEncoderValue(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 3u)
  {
    if (a3 != 4)
    {
      if (a3 == 5)
      {
      }

      if (a3 != 6)
      {
        return result;
      }
    }
  }

  if (a3 < 2u || a3 == 3)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation11JSONEncoderC34NonConformingFloatEncodingStrategyO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(uint64_t result, void *a2)
{
  if (*a2 != result && !*(result + 184))
  {
    v2 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v4 = a2;
      v5 = v2;
      v6 = *a2;
      v7 = v5;
      v8 = v4;
      outlined destroy of TermOfAddress?(v6 + 192, &_ss9CodingKey_pSgMd);
      *(v6 + 192) = 0u;
      *(v6 + 208) = 0u;
      *(v6 + 224) = 0;
      *(*v8 + 176) = 0;

      *(v7 + 184) = *v8;
    }
  }

  return result;
}

uint64_t __JSONEncoder.container<A>(keyedBy:)()
{
  if (*(v0 + 48))
  {
    type metadata accessor for _JSONKeyedEncodingContainer();

    swift_getWitnessTable();
    return KeyedEncodingContainer.init<A>(_:)();
  }

  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  if (v5 != 255)
  {
    v35 = v0;
    if (v5 == 4)
    {
      v34 = (v0 + 16);
      v32 = *(v0 + 24);
      outlined copy of JSONEncoderValue(v4, v32, 4u);
      v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS10Foundation16JSONEncoderValueOG_SS_AF10JSONFutureOts5NeverOTg5016_s10Foundation16ef27O20convertedToObjectRefAA10G39O0gF0CSgyFSS_AFtSS3key_AC5valuet_tXEfU_Tf1cn_n(v4);
      v33 = v4;
      if (*(v6 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd);
        v7 = static _DictionaryStorage.allocate(capacity:)();
        v38 = v7;
        v36 = *(v6 + 16);
        if (v36)
        {
          v8 = 0;
          v9 = (v6 + 64);
          while (v8 < *(v6 + 16))
          {
            v10 = *(v9 - 4);
            v11 = *(v9 - 3);
            v1 = *(v9 - 2);
            v3 = *(v9 - 1);
            v2 = *v9;

            outlined copy of JSONFuture(v1, v3, v2);
            v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
            v14 = v7[2];
            v15 = (v13 & 1) == 0;
            v16 = __OFADD__(v14, v15);
            v17 = v14 + v15;
            if (v16)
            {
              goto LABEL_22;
            }

            v18 = v13;
            if (v7[3] < v17)
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, 1);
              v7 = v38;
              v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
              if ((v18 & 1) != (v19 & 1))
              {
                goto LABEL_28;
              }
            }

            if (v18)
            {
              goto LABEL_26;
            }

            v7[(v12 >> 6) + 8] |= 1 << v12;
            v20 = (v7[6] + 16 * v12);
            *v20 = v10;
            v20[1] = v11;
            v21 = v7[7] + 24 * v12;
            *v21 = v1;
            *(v21 + 8) = v3;
            *(v21 + 16) = v2;
            v22 = v7[2];
            v16 = __OFADD__(v22, 1);
            v23 = v22 + 1;
            if (v16)
            {
              goto LABEL_23;
            }

            ++v8;
            v7[2] = v23;
            v9 += 40;
            if (v36 == v8)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      else
      {
        v7 = MEMORY[0x1E69E7CC8];
      }

LABEL_19:
      outlined consume of JSONEncoderValue?(v33, v32, 4u);

      type metadata accessor for JSONFuture.RefObject();
      v25 = swift_allocObject();
      *(v25 + 16) = v7;
      v26 = *(v35 + 16);
      v27 = *(v35 + 24);
      *v34 = 0;
      v34[1] = 0;
      v28 = *(v35 + 32);
      *(v35 + 32) = -1;
      outlined consume of JSONEncoderValue?(v26, v27, v28);
      *(v35 + 48) = v25;

      type metadata accessor for _JSONKeyedEncodingContainer();

      swift_getWitnessTable();
      return KeyedEncodingContainer.init<A>(_:)();
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!*(v0 + 40))
  {
    type metadata accessor for JSONFuture.RefObject();
    v24 = swift_allocObject();
    *(v24 + 16) = MEMORY[0x1E69E7CC8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation10JSONFutureOGMd);
    Dictionary.reserveCapacity(_:)(4);
    *(v0 + 48) = v24;

    type metadata accessor for _JSONKeyedEncodingContainer();

    swift_getWitnessTable();
    return KeyedEncodingContainer.init<A>(_:)();
  }

LABEL_25:
  __break(1u);
LABEL_26:

  v30 = swift_allocError();
  swift_willThrow();
  outlined consume of JSONFuture(v1, v3, v2);
  v37 = v30;
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    _StringGuts.grow(_:)(30);
    MEMORY[0x1865CB0E0](0xD00000000000001BLL, 0x800000018147F480);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_28:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t __JSONEncoder.wrapGeneric<A, B>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v171 = a6;
  v166 = a5;
  v170 = a2;
  v165 = type metadata accessor for Optional();
  v163 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v164 = &v158 - v10;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v167 = &v158 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v168 = &v158 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v169 = &v158 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v158 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v158 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v26 = *(v11 + 16);
  v26(&v158 - v27, a1, a3, v25);
  if (swift_dynamicCast())
  {
    v28 = v199;
    v29 = __JSONEncoder.wrap<A>(_:for:)(&v187, v170, a4, v171);
    if (!v28)
    {
      return v29;
    }

    return a1;
  }

  v162 = a4;
  (v26)(v23, a1, a3);
  if (swift_dynamicCast())
  {
    v30 = v187;
    v31 = v199;
    v32 = __JSONEncoder.wrap<A>(_:for:)(v187, *(&v187 + 1), v170, v162, v171);
    if (!v31)
    {
      a1 = v32;
    }

    outlined consume of Data._Representation(v30, *(&v30 + 1));
    return a1;
  }

  (v26)(v20, a1, a3);
  if (swift_dynamicCast())
  {
    v34 = *(&v187 + 1);
    ObjectType = swift_getObjectType();
    a1 = (*(v34 + 112))(ObjectType, v34);
    swift_unknownObjectRelease();
    return a1;
  }

  (v26)(v169, a1, a3);
  type metadata accessor for NSDecimal(0);
  if (swift_dynamicCast())
  {
    v183 = v187;
    LODWORD(v184) = v188;
    if (!_So9NSDecimala__length_getter(&v183))
    {
      v183 = v187;
      LODWORD(v184) = v188;
      if (_So9NSDecimala__isNegative_getter(&v183))
      {
        return 5136718;
      }
    }

    v183 = v187;
    LODWORD(v184) = v188;
    v36 = _So9NSDecimala__length_getter(&v183);
    v37 = v199;
    if (!v36)
    {
      return 48;
    }

    *&v195[0] = 0;
    *(&v195[0] + 1) = 0xE000000000000000;
    v183 = v187;
    LODWORD(v184) = v188;
    v176 = v187;
    LODWORD(v177) = v188;
    if (_So9NSDecimala__exponent_getter(&v176) >= 1)
    {
      do
      {
        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        v176 = v183;
        LODWORD(v177) = v184;
        v38 = _So9NSDecimala__exponent_getter(&v176);
        _So9NSDecimala__exponent_setter((v38 - 1), &v183);
        v176 = v183;
        LODWORD(v177) = v184;
      }

      while (_So9NSDecimala__exponent_getter(&v176) > 0);
    }

    v176 = v183;
    LODWORD(v177) = v184;
    if (!_So9NSDecimala__exponent_getter(&v176))
    {
      _So9NSDecimala__exponent_setter(1, &v183);
    }

    v176 = v183;
    LODWORD(v177) = v184;
    if (!_So9NSDecimala__length_getter(&v176))
    {
LABEL_107:
      v176 = v183;
      LODWORD(v177) = v184;
      if (_So9NSDecimala__exponent_getter(&v176) <= 0)
      {
        while (1)
        {
          v176 = v183;
          LODWORD(v177) = v184;
          if (!_So9NSDecimala__exponent_getter(&v176))
          {
            break;
          }

          MEMORY[0x1865CB0E0](48, 0xE100000000000000);
          v176 = v183;
          LODWORD(v177) = v184;
          v145 = _So9NSDecimala__exponent_getter(&v176);
          _So9NSDecimala__exponent_setter((v145 + 1), &v183);
        }

        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      }

      v176 = v183;
      LODWORD(v177) = v184;
      if (_So9NSDecimala__isNegative_getter(&v176))
      {
        MEMORY[0x1865CB0E0](45, 0xE100000000000000);
      }

      v176 = v195[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>, &_ss18ReversedCollectionVySSGMd);
      return String.init<A>(_:)();
    }

    a1 = 3435973837;
    while (1)
    {
      v176 = v183;
      LODWORD(v177) = v184;
      if (!_So9NSDecimala__exponent_getter(&v176))
      {
        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      }

      v199 = v37;
      v176 = v183;
      LODWORD(v177) = v184;
      v39 = _So9NSDecimala__exponent_getter(&v176);
      _So9NSDecimala__exponent_setter((v39 + 1), &v183);
      v171 = WORD2(v183);
      v172 = v183;
      v164 = WORD3(v183);
      v169 = WORD5(v183);
      v170 = WORD4(v183);
      v168 = WORD6(v183);
      v166 = HIWORD(v183);
      LODWORD(v167) = v184;
      LODWORD(v165) = WORD1(v184);
      NSDecimal.asVariableLengthInteger()(v183 | (WORD2(v183) << 32) | (WORD3(v183) << 48), WORD4(v183) | (WORD5(v183) << 16) | (WORD6(v183) << 32) | (HIWORD(v183) << 48), v184 | (WORD1(v184) << 16));
      v41 = v40;
      v42 = *(v40 + 16);
      v46._rawValue = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v42);
      *&v176 = v46;
      if (v42)
      {
        break;
      }

      v52 = 48;
LABEL_30:
      for (i = *(v46._rawValue + 2); i; i = *(v176 + 16))
      {
        if (*(v46._rawValue + i + 15))
        {
          break;
        }

        if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
        {
          specialized Array.remove(at:)(*(v176 + 16) - 1);
        }

        v46._rawValue = v176;
      }

      LODWORD(v176) = v172;
      WORD2(v176) = v171;
      WORD3(v176) = v164;
      WORD4(v176) = v170;
      WORD5(v176) = v169;
      WORD6(v176) = v168;
      HIWORD(v176) = v166;
      LOWORD(v177) = v167;
      WORD1(v177) = v165;
      NSDecimal.copyVariableLengthInteger(_:)(v46);
      v37 = v6;
      if (v6)
      {
        goto LABEL_135;
      }

      v54 = *(v46._rawValue + 2);

      if (HIDWORD(v54))
      {
        goto LABEL_132;
      }

      _So9NSDecimala__length_setter(v54, &v176);
      v183 = v176;
      LODWORD(v184) = v177;
      *&v197 = v52;
      v55 = static String._uncheckedFromUTF8(_:)();
      MEMORY[0x1865CB0E0](v55);

      v197 = v183;
      v198 = v184;
      if (!_So9NSDecimala__length_getter(&v197))
      {
        goto LABEL_107;
      }
    }

    v47 = 0;
    v48 = v42 + 15;
    while (1)
    {
      v49 = *(v41 + 16);
      if ((v48 - 15) > v49)
      {
        break;
      }

      v50 = *(v41 + 2 * v48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46._rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(v46._rawValue);
      }

      v49 = *(v46._rawValue + 2);
      if ((v48 - 15) > v49)
      {
        goto LABEL_116;
      }

      v51 = v50 | (v47 << 16);
      *(v46._rawValue + v48) = v51 / 0xA;
      v47 = v51 % 0xA;
      if (--v48 == 15)
      {

        *&v176 = v46;
        v52 = v47 | 0x30;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  (v26)(v168, a1, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation36_JSONStringDictionaryEncodableMarker33_12768CA107A31EF2DCE034FD75B541C9LL_pMd);
  if (!swift_dynamicCast())
  {
    v196 = 0;
    memset(v195, 0, sizeof(v195));
    outlined destroy of TermOfAddress?(v195, &_s10Foundation36_JSONStringDictionaryEncodableMarker33_12768CA107A31EF2DCE034FD75B541C9LL_pSgMd);
    (v26)(v167, a1, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation25_JSONDirectArrayEncodable33_12768CA107A31EF2DCE034FD75B541C9LL_pMd);
    if (!swift_dynamicCast())
    {
      *&v185 = 0;
      v183 = 0u;
      v184 = 0u;
      outlined destroy of TermOfAddress?(&v183, &_s10Foundation25_JSONDirectArrayEncodable33_12768CA107A31EF2DCE034FD75B541C9LL_pSgMd);
      v140 = v163;
      v141 = v164;
      v142 = v165;
      (*(v163 + 16))(v164, v170, v165);
      v143 = v162;
      v144 = *(v162 - 1);
      if ((*(v144 + 48))(v141, 1, v162) == 1)
      {
        (*(v140 + 8))(v141, v142);
        *&v178 = 0;
        v176 = 0u;
        v177 = 0u;
      }

      else
      {
        *(&v177 + 1) = v143;
        *&v178 = v171;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v176);
        (*(v144 + 32))(boxed_opaque_existential_0, v141, v143);
      }

      a1 = v166;
      outlined init with copy of FloatingPointRoundingRule?(&v176, &v187, &_ss9CodingKey_pSgMd);
      if (*(&v188 + 1))
      {
        outlined init with take of Equatable(&v187, &v197);
        v147 = *(v172 + 184);
        v148 = v172;
        if (v147)
        {
          *(v172 + 184) = 0;
          outlined destroy of TermOfAddress?(v147 + 192, &_ss9CodingKey_pSgMd);
          outlined init with take of Equatable(&v197, v147 + 192);
          *(v147 + 176) = v148;
          v149 = v148;
        }

        else
        {
          v150 = *(v172 + 136);
          v191 = *(v172 + 120);
          v192 = v150;
          v193 = *(v172 + 152);
          v194 = *(v172 + 168);
          v151 = *(v172 + 72);
          v187 = *(v172 + 56);
          v188 = v151;
          v152 = *(v172 + 104);
          v189 = *(v172 + 88);
          v190 = v152;
          outlined init with take of Equatable(&v197, v195);
          type metadata accessor for __JSONEncoder();
          v147 = swift_allocObject();
          *(v147 + 184) = 0u;
          *(v147 + 200) = 0u;
          *(v147 + 216) = 0u;
          v153 = v192;
          *(v147 + 120) = v191;
          *(v147 + 136) = v153;
          *(v147 + 152) = v193;
          v154 = v188;
          *(v147 + 56) = v187;
          *(v147 + 72) = v154;
          v155 = v190;
          *(v147 + 88) = v189;
          *(v147 + 16) = 0;
          *(v147 + 24) = 0;
          *(v147 + 32) = -1;
          *(v147 + 40) = 0;
          *(v147 + 48) = 0;
          v156 = v194;
          *(v147 + 104) = v155;
          *(v147 + 168) = v156;
          *(v147 + 176) = v148;
          v149 = v148;

          outlined init with copy of JSONEncoder._Options(&v187, &v183);
          outlined assign with take of CodingKey?(v195, v147 + 192);
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v187, &_ss9CodingKey_pSgMd);
        v147 = v172;

        v149 = v147;
      }

      outlined destroy of TermOfAddress?(&v176, &_ss9CodingKey_pSgMd);
      v182[0] = v147;
      *(&v188 + 1) = type metadata accessor for __JSONEncoder();
      *&v189 = lazy protocol witness table accessor for type __JSONEncoder and conformance __JSONEncoder(&lazy protocol witness table cache variable for type __JSONEncoder and conformance __JSONEncoder, type metadata accessor for __JSONEncoder);
      *&v187 = v147;

      v157 = v199;
      dispatch thunk of Encodable.encode(to:)();
      __swift_destroy_boxed_opaque_existential_1(&v187);
      if (!v157)
      {
        a1 = __JSONEncoder.takeValue()();
      }

      $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v149, v182);

      return a1;
    }

    outlined init with take of Equatable(&v183, &v187);
    a1 = *(v172 + 56);
    v46._rawValue = *(&v188 + 1);
    v48 = v189;
    __swift_project_boxed_opaque_existential_1(&v187, *(&v188 + 1));
    v6 = v199;
    v44 = v162;
    v43 = v170;
    v45 = v171;
    v49 = v48;
    if ((a1 & 1) == 0)
    {
      v139 = (*(v48 + 8))(v172, v170, v162, v171, v46, v48);
      if (v6)
      {
LABEL_118:
        __swift_destroy_boxed_opaque_existential_1(&v187);
        return a1;
      }

LABEL_99:
      a1 = v139;
      __swift_destroy_boxed_opaque_existential_1(&v187);
      return a1;
    }

LABEL_117:
    v139 = (*(v49 + 16))(v172, v43, v44, v45, v46, v48);
    if (v6)
    {
      goto LABEL_118;
    }

    goto LABEL_99;
  }

  outlined init with take of Equatable(v195, &v197);
  outlined init with copy of Hashable & Sendable(&v197, v182);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSE_pGMd);
  swift_dynamicCast();
  v56 = v181;
  v180 = MEMORY[0x1E69E7CC8];
  v57 = *(v181 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation16JSONEncoderValueOGMd);
  v58 = v172;
  Dictionary.reserveCapacity(_:)(v57);
  v59 = *(v58 + 136);
  v191 = *(v58 + 120);
  v192 = v59;
  v193 = *(v58 + 152);
  v194 = *(v58 + 168);
  v60 = *(v58 + 72);
  v187 = *(v58 + 56);
  v188 = v60;
  v61 = *(v58 + 104);
  v189 = *(v58 + 88);
  v190 = v61;
  type metadata accessor for __JSONEncoder();
  v176 = 0u;
  v177 = 0u;
  *&v178 = 0;
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  *(v62 + 32) = -1;
  *(v62 + 40) = 0;
  *(v62 + 48) = 0;
  *(v62 + 184) = 0u;
  *(v62 + 200) = 0u;
  *(v62 + 216) = 0u;
  *(v62 + 120) = *(v58 + 120);
  *(v62 + 136) = *(v58 + 136);
  *(v62 + 152) = *(v58 + 152);
  v63 = *(v58 + 168);
  *(v62 + 56) = *(v58 + 56);
  *(v62 + 72) = *(v58 + 72);
  *(v62 + 88) = *(v58 + 88);
  *(v62 + 104) = *(v58 + 104);
  *(v62 + 168) = v63;
  *(v62 + 176) = v58;
  outlined init with copy of JSONEncoder._Options(&v187, &v183);

  v166 = v62;
  outlined assign with take of CodingKey?(&v176, v62 + 192);
  v64 = v56 + 64;
  v65 = 1 << *(v56 + 32);
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  else
  {
    v66 = -1;
  }

  v67 = v66 & *(v56 + 64);
  a1 = v180;
  v68 = (v65 + 63) >> 6;
  v163 = v56;

  v69 = 0;
  v70 = v199;
  v164 = v68;
  v165 = v64;
  while (1)
  {
    if (!v67)
    {
      if (v68 <= v69 + 1)
      {
        v78 = v69 + 1;
      }

      else
      {
        v78 = v68;
      }

      v79 = v78 - 1;
      while (1)
      {
        v77 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          break;
        }

        if (v77 >= v68)
        {
          v67 = 0;
          v179 = 0;
          v177 = 0u;
          v178 = 0u;
          v69 = v79;
          v176 = 0u;
          goto LABEL_58;
        }

        v67 = *(v64 + 8 * v77);
        ++v69;
        if (v67)
        {
          v69 = v77;
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    v77 = v69;
LABEL_57:
    v80 = __clz(__rbit64(v67));
    v67 &= v67 - 1;
    v81 = v80 | (v77 << 6);
    v82 = (*(v163 + 48) + 16 * v81);
    v84 = *v82;
    v83 = v82[1];
    outlined init with copy of Hashable & Sendable(*(v163 + 56) + 40 * v81, &v173);
    *&v176 = v84;
    *(&v176 + 1) = v83;
    outlined init with take of Equatable(&v173, &v177);

LABEL_58:
    v183 = v176;
    v184 = v177;
    v185 = v178;
    v186 = v179;
    v85 = *(&v176 + 1);
    if (!*(&v176 + 1))
    {

      __swift_destroy_boxed_opaque_existential_1(&v197);

      return a1;
    }

    v171 = a1;
    v86 = v183;
    outlined init with take of Equatable(&v184, &v176);
    v174 = &type metadata for _CodingKey;
    v175 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v87 = swift_allocObject();
    *&v173 = v87;
    *(v87 + 16) = v86;
    *(v87 + 24) = v85;
    *(v87 + 32) = 0;
    *(v87 + 40) = 0;

    a1 = v70;
    outlined assign with take of CodingKey?(&v173, v166 + 192);
    v88 = v85;
    v89 = *(&v177 + 1);
    v90 = v178;
    v91 = __swift_project_boxed_opaque_existential_1(&v176, *(&v177 + 1));
    v92 = specialized __JSONEncoder.wrapGeneric<A, B>(_:for:)(v91, 0, 0, 0, 255, v89, v90);
    if (v70)
    {
      v180 = v171;

      __swift_destroy_boxed_opaque_existential_1(&v176);

      __swift_destroy_boxed_opaque_existential_1(&v197);

      return a1;
    }

    v199 = 0;
    if (v94 == 255)
    {
      v95 = MEMORY[0x1E69E7CC8];
    }

    else
    {
      v95 = v92;
    }

    if (v94 == 255)
    {
      v96 = 0;
    }

    else
    {
      v96 = v93;
    }

    v168 = v96;
    v169 = v95;
    if (v94 == 255)
    {
      v97 = 4;
    }

    else
    {
      v97 = v94;
    }

    LODWORD(v170) = v97;
    v98 = v171;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v172 = v88;
    *&v173 = v98;
    v100 = specialized __RawDictionaryStorage.find<A>(_:)(v86, v88);
    v102 = *(v98 + 16);
    v103 = (v101 & 1) == 0;
    v104 = __OFADD__(v102, v103);
    v105 = v102 + v103;
    if (v104)
    {
      goto LABEL_130;
    }

    v106 = v101;
    v107 = *(v98 + 24);
    v167 = v86;
    if (v107 >= v105)
    {
      break;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v105, isUniquelyReferenced_nonNull_native);
    v108 = v173;
    v100 = specialized __RawDictionaryStorage.find<A>(_:)(v86, v172);
    v64 = v165;
    if ((v106 & 1) != (v109 & 1))
    {
      goto LABEL_134;
    }

LABEL_75:
    v70 = v199;
    v68 = v164;
    if (v106)
    {
      v71 = v100;

      v72 = *(v108 + 56) + 24 * v71;
      v73 = *v72;
      v74 = *(v72 + 8);
      v75 = v168;
      *v72 = v169;
      *(v72 + 8) = v75;
      v76 = *(v72 + 16);
      *(v72 + 16) = v170;
      outlined consume of JSONEncoderValue(v73, v74, v76);
    }

    else
    {
      *(v108 + 8 * (v100 >> 6) + 64) |= 1 << v100;
      v110 = (*(v108 + 48) + 16 * v100);
      v111 = v172;
      *v110 = v167;
      v110[1] = v111;
      v112 = *(v108 + 56) + 24 * v100;
      v113 = v168;
      *v112 = v169;
      *(v112 + 8) = v113;
      *(v112 + 16) = v170;
      v114 = *(v108 + 16);
      v104 = __OFADD__(v114, 1);
      v115 = v114 + 1;
      if (v104)
      {
        goto LABEL_131;
      }

      *(v108 + 16) = v115;
    }

    __swift_destroy_boxed_opaque_existential_1(&v176);
    a1 = v108;
  }

  v64 = v165;
  if (isUniquelyReferenced_nonNull_native)
  {
    v108 = v98;
    goto LABEL_75;
  }

  v158 = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16JSONEncoderValueOGMd);
  v116 = static _DictionaryStorage.copy(original:)();
  v108 = v116;
  if (!*(v98 + 16))
  {
LABEL_95:

    v100 = v158;
    goto LABEL_75;
  }

  v117 = (v116 + 64);
  v118 = 1 << *(v108 + 32);
  v159 = (v98 + 64);
  v119 = (v118 + 63) >> 6;
  if (v108 != v98 || v117 >= &v159[8 * v119])
  {
    memmove(v117, v159, 8 * v119);
  }

  v120 = 0;
  *(v108 + 16) = *(v98 + 16);
  v121 = 1 << *(v98 + 32);
  if (v121 < 64)
  {
    v122 = ~(-1 << v121);
  }

  else
  {
    v122 = -1;
  }

  v123 = v122 & *(v98 + 64);
  v124 = (v121 + 63) >> 6;
  v160 = v124;
  if (v123)
  {
    do
    {
      v125 = __clz(__rbit64(v123));
      v162 = ((v123 - 1) & v123);
LABEL_93:
      v128 = v125 | (v120 << 6);
      v129 = 16 * v128;
      v130 = (*(v98 + 48) + 16 * v128);
      v132 = *v130;
      v131 = v130[1];
      v128 *= 24;
      v133 = *(v98 + 56) + v128;
      v135 = *v133;
      v161 = *(v133 + 8);
      v134 = v161;
      v136 = (*(v108 + 48) + v129);
      v137 = *(v133 + 16);
      *v136 = v132;
      v136[1] = v131;
      v138 = *(v108 + 56) + v128;
      *v138 = v135;
      *(v138 + 8) = v134;
      *(v138 + 16) = v137;

      outlined copy of JSONEncoderValue(v135, v161, v137);
      v124 = v160;
      v123 = v162;
    }

    while (v162);
  }

  v126 = v120;
  while (1)
  {
    v120 = v126 + 1;
    if (__OFADD__(v126, 1))
    {
      break;
    }

    if (v120 >= v124)
    {
      goto LABEL_95;
    }

    v127 = *&v159[8 * v120];
    ++v126;
    if (v127)
    {
      v125 = __clz(__rbit64(v127));
      v162 = ((v127 - 1) & v127);
      goto LABEL_93;
    }
  }

LABEL_133:
  __break(1u);
LABEL_134:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_135:

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation11JSONEncoderC20DateEncodingStrategyO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation16JSONEncoderValueO(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

unint64_t specialized String.withUTF8<A>(_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  if ((v5 & 0x1000000000000000) != 0)
  {
    v10 = static String._copying(_:)();
    v12 = v11;

    v4 = v10;
    *a1 = v10;
    a1[1] = v12;
    v5 = v12;
    if ((v12 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v4 & 0x1000000000000000) != 0)
    {
      v7 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v8 = v4 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
LABEL_180:
      v7 = _StringObject.sharedUTF8.getter();
    }

    return closure #1 in JSONWriter.serializeStringContents(_:)(v7, v8, a2);
  }

  v13 = HIBYTE(v5) & 0xF;
  v80[0] = v4;
  v80[1] = v5 & 0xFFFFFFFFFFFFFFLL;
  if (!v13)
  {
    return specialized Array.append<A>(contentsOf:)(MEMORY[0x1E69E7CC0]);
  }

  v14 = v80 + v13;
  v15 = v80;
  v16 = v80;
  do
  {
    while (1)
    {
      v17 = *v16;
      if (v17 > 0xC)
      {
        if (*v16 > 0x2Eu)
        {
          if (v17 == 47)
          {
            if ((*(a2 + 10) & 1) == 0)
            {
              if (v15 < v16)
              {
                specialized Array.append<A>(contentsOf:)(v15, v16 - v15);
              }

              v18 = *(a2 + 16);
              v62 = *(v18 + 2);
              v63 = v62 + 2;
              if (__OFADD__(v62, 2))
              {
                goto LABEL_177;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(a2 + 16) = v18;
              if (!isUniquelyReferenced_nonNull_native || (v65 = *(v18 + 3) >> 1, v65 < v63))
              {
                if (*(v18 + 2) <= v63)
                {
                  v66 = v63;
                }

                else
                {
                  v66 = *(v18 + 2);
                }

                v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v66, 1, v18);
                *(a2 + 16) = v18;
                v65 = *(v18 + 3) >> 1;
              }

              v67 = *(v18 + 2);
              if (v65 - v67 < 2)
              {
                goto LABEL_178;
              }

              *&v18[v67 + 32] = word_1EEED1A48;
              v25 = v67 + 2;
              if (__OFADD__(v67, 2))
              {
                goto LABEL_179;
              }

              goto LABEL_124;
            }

            goto LABEL_9;
          }

          if (v17 == 92)
          {
            if (v15 < v16)
            {
              specialized Array.append<A>(contentsOf:)(v15, v16 - v15);
            }

            v18 = *(a2 + 16);
            v38 = *(v18 + 2);
            v39 = v38 + 2;
            if (__OFADD__(v38, 2))
            {
              __break(1u);
LABEL_157:
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
              goto LABEL_180;
            }

            v40 = swift_isUniquelyReferenced_nonNull_native();
            *(a2 + 16) = v18;
            if (!v40 || (v41 = *(v18 + 3) >> 1, v41 < v39))
            {
              if (*(v18 + 2) <= v39)
              {
                v42 = v39;
              }

              else
              {
                v42 = *(v18 + 2);
              }

              v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v40, v42, 1, v18);
              *(a2 + 16) = v18;
              v41 = *(v18 + 3) >> 1;
            }

            v43 = *(v18 + 2);
            if (v41 - v43 < 2)
            {
              goto LABEL_166;
            }

            *&v18[v43 + 32] = word_1EEED1A20;
            v25 = v43 + 2;
            if (__OFADD__(v43, 2))
            {
              goto LABEL_175;
            }

            goto LABEL_124;
          }
        }

        else
        {
          if (v17 == 13)
          {
            if (v15 < v16)
            {
              specialized Array.append<A>(contentsOf:)(v15, v16 - v15);
            }

            v18 = *(a2 + 16);
            v50 = *(v18 + 2);
            v51 = v50 + 2;
            if (__OFADD__(v50, 2))
            {
              goto LABEL_157;
            }

            v52 = swift_isUniquelyReferenced_nonNull_native();
            *(a2 + 16) = v18;
            if (!v52 || (v53 = *(v18 + 3) >> 1, v53 < v51))
            {
              if (*(v18 + 2) <= v51)
              {
                v54 = v51;
              }

              else
              {
                v54 = *(v18 + 2);
              }

              v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v52, v54, 1, v18);
              *(a2 + 16) = v18;
              v53 = *(v18 + 3) >> 1;
            }

            v55 = *(v18 + 2);
            if (v53 - v55 < 2)
            {
              goto LABEL_165;
            }

            *&v18[v55 + 32] = word_1EEED1AE8;
            v25 = v55 + 2;
            if (__OFADD__(v55, 2))
            {
              goto LABEL_173;
            }

            goto LABEL_124;
          }

          if (v17 == 34)
          {
            if (v15 < v16)
            {
              specialized Array.append<A>(contentsOf:)(v15, v16 - v15);
            }

            v18 = *(a2 + 16);
            v26 = *(v18 + 2);
            v27 = v26 + 2;
            if (__OFADD__(v26, 2))
            {
              goto LABEL_159;
            }

            v28 = swift_isUniquelyReferenced_nonNull_native();
            *(a2 + 16) = v18;
            if (!v28 || (v29 = *(v18 + 3) >> 1, v29 < v27))
            {
              if (*(v18 + 2) <= v27)
              {
                v30 = v27;
              }

              else
              {
                v30 = *(v18 + 2);
              }

              v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28, v30, 1, v18);
              *(a2 + 16) = v18;
              v29 = *(v18 + 3) >> 1;
            }

            v31 = *(v18 + 2);
            if (v29 - v31 < 2)
            {
              goto LABEL_163;
            }

            *&v18[v31 + 32] = word_1EEED19F8;
            v25 = v31 + 2;
            if (__OFADD__(v31, 2))
            {
              goto LABEL_171;
            }

            goto LABEL_124;
          }
        }
      }

      else if (*v16 > 9u)
      {
        if (v17 == 10)
        {
          if (v15 < v16)
          {
            specialized Array.append<A>(contentsOf:)(v15, v16 - v15);
          }

          v18 = *(a2 + 16);
          v56 = *(v18 + 2);
          v57 = v56 + 2;
          if (__OFADD__(v56, 2))
          {
            goto LABEL_158;
          }

          v58 = swift_isUniquelyReferenced_nonNull_native();
          *(a2 + 16) = v18;
          if (!v58 || (v59 = *(v18 + 3) >> 1, v59 < v57))
          {
            if (*(v18 + 2) <= v57)
            {
              v60 = v57;
            }

            else
            {
              v60 = *(v18 + 2);
            }

            v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v58, v60, 1, v18);
            *(a2 + 16) = v18;
            v59 = *(v18 + 3) >> 1;
          }

          v61 = *(v18 + 2);
          if (v59 - v61 < 2)
          {
            goto LABEL_169;
          }

          *&v18[v61 + 32] = word_1EEED1AC0;
          v25 = v61 + 2;
          if (__OFADD__(v61, 2))
          {
            goto LABEL_172;
          }

          goto LABEL_124;
        }

        if (v17 == 12)
        {
          if (v15 < v16)
          {
            specialized Array.append<A>(contentsOf:)(v15, v16 - v15);
          }

          v18 = *(a2 + 16);
          v32 = *(v18 + 2);
          v33 = v32 + 2;
          if (__OFADD__(v32, 2))
          {
            goto LABEL_161;
          }

          v34 = swift_isUniquelyReferenced_nonNull_native();
          *(a2 + 16) = v18;
          if (!v34 || (v35 = *(v18 + 3) >> 1, v35 < v33))
          {
            if (*(v18 + 2) <= v33)
            {
              v36 = v33;
            }

            else
            {
              v36 = *(v18 + 2);
            }

            v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34, v36, 1, v18);
            *(a2 + 16) = v18;
            v35 = *(v18 + 3) >> 1;
          }

          v37 = *(v18 + 2);
          if (v35 - v37 < 2)
          {
            goto LABEL_164;
          }

          *&v18[v37 + 32] = word_1EEED1A98;
          v25 = v37 + 2;
          if (__OFADD__(v37, 2))
          {
            goto LABEL_170;
          }

          goto LABEL_124;
        }
      }

      else
      {
        if (v17 == 8)
        {
          if (v15 < v16)
          {
            specialized Array.append<A>(contentsOf:)(v15, v16 - v15);
          }

          v18 = *(a2 + 16);
          v44 = *(v18 + 2);
          v45 = v44 + 2;
          if (__OFADD__(v44, 2))
          {
            goto LABEL_160;
          }

          v46 = swift_isUniquelyReferenced_nonNull_native();
          *(a2 + 16) = v18;
          if (!v46 || (v47 = *(v18 + 3) >> 1, v47 < v45))
          {
            if (*(v18 + 2) <= v45)
            {
              v48 = v45;
            }

            else
            {
              v48 = *(v18 + 2);
            }

            v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v46, v48, 1, v18);
            *(a2 + 16) = v18;
            v47 = *(v18 + 3) >> 1;
          }

          v49 = *(v18 + 2);
          if (v47 - v49 < 2)
          {
            goto LABEL_167;
          }

          *&v18[v49 + 32] = word_1EEED1A70;
          v25 = v49 + 2;
          if (__OFADD__(v49, 2))
          {
            goto LABEL_174;
          }

          goto LABEL_124;
        }

        if (v17 == 9)
        {
          if (v15 < v16)
          {
            specialized Array.append<A>(contentsOf:)(v15, v16 - v15);
          }

          v18 = *(a2 + 16);
          v19 = *(v18 + 2);
          v20 = v19 + 2;
          if (__OFADD__(v19, 2))
          {
            goto LABEL_162;
          }

          v21 = swift_isUniquelyReferenced_nonNull_native();
          *(a2 + 16) = v18;
          if (!v21 || (v22 = *(v18 + 3) >> 1, v22 < v20))
          {
            if (*(v18 + 2) <= v20)
            {
              v23 = v20;
            }

            else
            {
              v23 = *(v18 + 2);
            }

            v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21, v23, 1, v18);
            *(a2 + 16) = v18;
            v22 = *(v18 + 3) >> 1;
          }

          v24 = *(v18 + 2);
          if (v22 - v24 < 2)
          {
            goto LABEL_168;
          }

          *&v18[v24 + 32] = word_1EEED1B10;
          v25 = v24 + 2;
          if (__OFADD__(v24, 2))
          {
            goto LABEL_176;
          }

LABEL_124:
          *(v18 + 2) = v25;
          *(a2 + 16) = v18;
          goto LABEL_125;
        }
      }

      if (v17 <= 0xF)
      {
        if (v15 < v16)
        {
          specialized Array.append<A>(contentsOf:)(v15, v16 - v15);
        }

        result = specialized Array.append<A>(contentsOf:)(&outlined read-only object #8 of closure #1 in JSONWriter.serializeStringContents(_:));
        v76 = *v16;
        if (v76 < 0xA)
        {
          v75 = v76 | 0x30;
        }

        else
        {
          if (v76 > 0xF)
          {
            __break(1u);
            return result;
          }

          v75 = v76 + 87;
        }

        v73 = *(a2 + 16);
        goto LABEL_148;
      }

      if (v17 < 0x20)
      {
        break;
      }

LABEL_9:
      if (++v16 >= v14)
      {
        goto LABEL_153;
      }
    }

    if (v15 < v16)
    {
      specialized Array.append<A>(contentsOf:)(v15, v16 - v15);
    }

    specialized Array.append<A>(contentsOf:)(&outlined read-only object #9 of closure #1 in JSONWriter.serializeStringContents(_:));
    if (*v16 <= 0x9Fu)
    {
      v68 = (*v16 >> 4) | 0x30;
    }

    else
    {
      v68 = (*v16 >> 4) + 87;
    }

    v69 = *(a2 + 16);
    v70 = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v69;
    if ((v70 & 1) == 0)
    {
      v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v69 + 2) + 1, 1, v69);
      *(a2 + 16) = v69;
    }

    v72 = *(v69 + 2);
    v71 = *(v69 + 3);
    if (v72 >= v71 >> 1)
    {
      v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v69);
      *(a2 + 16) = v69;
    }

    *(v69 + 2) = v72 + 1;
    v69[v72 + 32] = v68;
    v73 = *(a2 + 16);
    v74 = *v16 & 0xF;
    if (v74 <= 9)
    {
      v75 = *v16 & 0xF | 0x30;
    }

    else
    {
      v75 = v74 + 87;
    }

LABEL_148:
    v77 = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v73;
    if ((v77 & 1) == 0)
    {
      v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v73 + 2) + 1, 1, v73);
      *(a2 + 16) = v73;
    }

    v79 = *(v73 + 2);
    v78 = *(v73 + 3);
    if (v79 >= v78 >> 1)
    {
      v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v73);
      *(a2 + 16) = v73;
    }

    *(v73 + 2) = v79 + 1;
    v73[v79 + 32] = v75;
LABEL_125:
    v15 = ++v16;
  }

  while (v16 < v14);
LABEL_153:
  if (v15 < v16)
  {
    specialized Array.append<A>(contentsOf:)(v15, v16 - v15);
  }

  return specialized Array.append<A>(contentsOf:)(MEMORY[0x1E69E7CC0]);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v8 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v8 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + v8 + 32), (v7 + 32), v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return MEMORY[0x1EEE693F0]();
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t a1)
{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t JSONEncoder.outputFormatting.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 136);

  os_unfair_lock_lock(v3 + 4);

  *a1 = *(v1 + 16);
  v4 = *(v1 + 136);

  os_unfair_lock_unlock(v4 + 4);
}

uint64_t __JSONEncoder.__deallocating_deinit()
{
  outlined consume of JSONEncoderValue?(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v1 = *(v0 + 88);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 152);
  outlined consume of JSONDecoder.DateDecodingStrategy(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  sub_1807A5C7C(v1);
  outlined consume of JSONDecoder.NonConformingFloatDecodingStrategy(v2, v3);
  sub_1807A5C7C(v4);

  outlined destroy of TermOfAddress?(v0 + 192, &_ss9CodingKey_pSgMd);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSONWriter.serializeObject(_:depth:)(Swift::OpaquePointer _, Swift::Int depth)
{
  v57[5] = *MEMORY[0x1E69E9840];
  if (depth > 511)
  {
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v26 = 0;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
    *(v26 + 24) = 1;
    *(v26 + 32) = 0;
    *(v26 + 40) = 0;
    *(v26 + 48) = 2;
    swift_willThrow();
    return;
  }

  v5 = v2[2];
  v51 = v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    v8 = v7 + 1;
    if (v7 >= v6 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v8;
    v5[v7 + 32] = 123;
    v2[2] = v5;
    if (*(v2 + 8) == 1)
    {
      v9 = *(v5 + 3);
      if ((v7 + 2) > (v9 >> 1))
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v7 + 2, 1, v5);
      }

      *(v5 + 2) = v7 + 2;
      v5[v8 + 32] = 10;
      v2[2] = v5;
      if (__OFADD__(*v2, 1))
      {
        __break(1u);
LABEL_74:
        swift_once();
        goto LABEL_13;
      }

      ++*v2;
      if (*(_._rawValue + 2))
      {
        JSONWriter.writeIndent()();
      }
    }

    v52 = v2;
    v53 = swift_allocObject();
    *(v53 + 16) = 1;
    if (*(v2 + 9) != 1)
    {
      v5 = _._rawValue + 64;
      v27 = 1 << *(_._rawValue + 32);
      v28 = -1;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      v29 = v28 & *(_._rawValue + 8);
      v30 = (v27 + 63) >> 6;

      v31 = 0;
      if (!v29)
      {
        goto LABEL_48;
      }

      do
      {
        v32 = v31;
LABEL_51:
        v33 = __clz(__rbit64(v29)) | (v32 << 6);
        rawValue = _._rawValue;
        v35 = (*(_._rawValue + 6) + 16 * v33);
        v2 = v35[1];
        v49 = *v35;
        v36 = *(_._rawValue + 7) + 24 * v33;
        v37 = *v36;
        v38 = *(v36 + 8);
        v39 = *(v36 + 16);

        outlined copy of JSONEncoderValue(v37, v38, v39);
        v3 = v51;
        serializeObjectElement #1 (key:value:depth:) in JSONWriter.serializeObject(_:depth:)(v49, v2, v37, v38, v39, depth, v53, v52);
        if (v51)
        {

          outlined consume of JSONEncoderValue(v37, v38, v39);

          return;
        }

        v29 &= v29 - 1;
        outlined consume of JSONEncoderValue(v37, v38, v39);

        v31 = v32;
        _._rawValue = rawValue;
      }

      while (v29);
LABEL_48:
      while (1)
      {
        v32 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v32 >= v30)
        {
          goto LABEL_64;
        }

        v29 = *&v5[8 * v32];
        ++v31;
        if (v29)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v3 = v51;
    if (one-time initialization token for compatibility1 != -1)
    {
      goto LABEL_74;
    }

LABEL_13:
    if (static JSONEncoder.compatibility1 == 1)
    {
      break;
    }

    v40 = *(_._rawValue + 2);
    if (v40)
    {
      v41 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_10Foundation16JSONEncoderValueO5valuet_Tt1g5(*(_._rawValue + 2), 0);
      v50 = specialized Sequence._copyContents(initializing:)(v57, (v41 + 4), v40, _._rawValue);
      _._rawValue = v57[1];

      outlined consume of Set<AnyKeyPath>.Iterator._Variant();
      if (v50 != v40)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    v57[0] = v41;
    specialized MutableCollection<>.sort(by:)(v57);
    v10 = v3;
    if (v3)
    {
      goto LABEL_78;
    }

    v2 = v57[0];
    v51 = v57[0][2];
    if (!v51)
    {
      goto LABEL_64;
    }

    v5 = 0;
    v42 = (v57[0] + 8);
    while (v5 < v2[2])
    {
      v43 = *(v42 - 2);
      v44 = *(v42 - 1);
      _._rawValue = *v42;
      v46 = *(v42 - 4);
      v45 = *(v42 - 3);

      outlined copy of JSONEncoderValue(v43, v44, _._rawValue);
      v3 = 0;
      serializeObjectElement #1 (key:value:depth:) in JSONWriter.serializeObject(_:depth:)(v46, v45, v43, v44, _._rawValue, depth, v53, v52);

      ++v5;
      outlined consume of JSONEncoderValue(v43, v44, _._rawValue);
      v42 += 40;
      if (v51 == v5)
      {
        goto LABEL_64;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v57[0] = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS10Foundation16JSONEncoderValueOG_So8NSStringC3key_AH5valuets5NeverOTg5061_s10Foundation10JSONWriterV15serializeObject_5depthySDySSAA16ef11OG_SitKFSo8G31C3key_AG5valuetSSAK_AgLt_tXEfU_Tf1cn_n(_._rawValue);

  specialized MutableCollection<>.sort(by:)(v57);
  v10 = v3;
  if (v3)
  {
    goto LABEL_78;
  }

  v11 = v57[0];
  v48 = v57[0][2];
  if (!v48)
  {
LABEL_64:

    if (*(v52 + 8) == 1)
    {
      specialized Array.append<A>(contentsOf:)("\n", 1);
      if (__OFSUB__(*v52, 1))
      {
        __break(1u);
LABEL_76:
        __break(1u);
      }

      --*v52;
      JSONWriter.writeIndent()();
    }

    specialized Array.append<A>(contentsOf:)("}", 1);

    return;
  }

  v5 = 0;
  _._rawValue = v57[0] + 7;
  v47 = v57[0];
  while (2)
  {
    if (v5 >= v11[2])
    {
      goto LABEL_70;
    }

    v12 = *(_._rawValue - 2);
    v13 = *(_._rawValue - 1);
    v14 = *_._rawValue;
    v15 = *(_._rawValue - 3);
    outlined copy of JSONEncoderValue(v12, v13, v14);
    LODWORD(v51) = v14;
    if (!_objc_isTaggedPointer(v15))
    {
      goto LABEL_23;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v15);
    if (!TaggedPointerTag)
    {
      _CFIndirectTaggedPointerStringGetContents();
      v23 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v24)
      {
        [v15 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v17 = v55;
        v2 = v56;
        goto LABEL_40;
      }

LABEL_33:
      v17 = v23;
      v2 = v24;

      goto LABEL_40;
    }

    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v17 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v2 = v18;

        v10 = 0;
        goto LABEL_37;
      }

LABEL_23:
      LOBYTE(v55) = 0;
      v57[0] = 0;
      if (__CFStringIsCF())
      {
        if (v57[0])
        {
LABEL_39:
          v17 = String.init(_cocoaString:)();
          v2 = v25;
LABEL_40:
        }

        else
        {

          v17 = 0;
          v2 = 0xE000000000000000;
        }
      }

      else
      {
        v19 = v15;
        v20 = String.init(_nativeStorage:)();
        if (v21)
        {
          v17 = v20;
          v2 = v21;
        }

        else
        {
          v57[0] = [v19 length];
          if (v57[0])
          {
            v11 = v47;
            goto LABEL_39;
          }

          v17 = 0;
          v2 = 0xE000000000000000;
        }

LABEL_37:
        v11 = v47;
      }

      v3 = v10;
      serializeObjectElement #1 (key:value:depth:) in JSONWriter.serializeObject(_:depth:)(v17, v2, v12, v13, v51, depth, v53, v52);
      ++v5;

      outlined consume of JSONEncoderValue(v12, v13, v51);
      _._rawValue = _._rawValue + 32;
      if (v48 == v5)
      {
        goto LABEL_64;
      }

      continue;
    }

    break;
  }

  v22 = [v15 UTF8String];
  if (!v22)
  {
    goto LABEL_77;
  }

  v23 = String.init(utf8String:)(v22);
  if (v24)
  {
    goto LABEL_33;
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:

  __break(1u);
}

void serializeObjectElement #1 (key:value:depth:) in JSONWriter.serializeObject(_:depth:)(int64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v9 = v8;
  v10 = a8;
  v11 = a6;
  LOBYTE(v12) = a5;
  v13 = a4;
  v14 = a3;
  if (*(a7 + 16) == 1)
  {
    *(a7 + 16) = 0;
    goto LABEL_8;
  }

  LODWORD(v419) = a5;
  v12 = a6;
  v15 = a4;
  v13 = v8;
  v16 = a3;
  v17 = a1;
  v14 = a2;
  if (*(a8 + 8) == 1)
  {
    specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of serializeObjectElement #1 (key:value:depth:) in JSONWriter.serializeObject(_:depth:));
    JSONWriter.writeIndent()();
    goto LABEL_7;
  }

  v18 = *(a8 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v10;
  *(v10 + 16) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_529;
  }

LABEL_6:
  v21 = *(v18 + 2);
  v10 = v20;
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v21);
  v22 = *(v20 + 16);
  *(v22 + 16) = v21 + 1;
  *(v22 + v21 + 32) = 44;
LABEL_7:
  a2 = v14;
  a1 = v17;
  v14 = v16;
  v9 = v13;
  v13 = v15;
  v11 = v12;
  LOBYTE(v12) = v419;
LABEL_8:
  JSONWriter.serializeString(_:)(*&a1);
  if (*(v10 + 8) == 1)
  {
    specialized Array.append<A>(contentsOf:)(&outlined read-only object #1 of serializeObjectElement #1 (key:value:depth:) in JSONWriter.serializeObject(_:depth:));
    goto LABEL_14;
  }

  v23 = *(v10 + 16);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 16) = v23;
  if ((v24 & 1) == 0)
  {
    goto LABEL_527;
  }

LABEL_11:
  v26 = *(v23 + 2);
  v25 = *(v23 + 3);
  if (v26 >= v25 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v23);
    *(v10 + 16) = v23;
  }

  *(v23 + 2) = v26 + 1;
  v23[v26 + 32] = 58;
LABEL_14:
  if (v12 <= 3u)
  {
    if (v12 <= 1u)
    {
      if (v12)
      {

        specialized Array.append<A>(contentsOf:)(v14, v13);
      }

      else
      {
        v27._countAndFlagsBits = v14;
        v27._object = v13;
        JSONWriter.serializeString(_:)(v27);
      }

      return;
    }

    if (v12 == 2)
    {
      if (v14)
      {
        v37 = "true";
      }

      else
      {
        v37 = "false";
      }

      if (v14)
      {
        v38 = 4;
      }

      else
      {
        v38 = 5;
      }

LABEL_474:
      specialized Array.append<A>(contentsOf:)(v37, v38);
      return;
    }

    v40 = __OFADD__(v11, 1);
    v15 = v11 + 1;
    if (v40)
    {
      goto LABEL_542;
    }

    if (v15 > 511)
    {
      goto LABEL_475;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v41 = *(*(v10 + 16) + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v41);
    v42 = *(v10 + 16);
    *(v42 + 16) = v41 + 1;
    *(v42 + v41 + 32) = 91;
    if (*(v10 + 8))
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v43 = *(*(v10 + 16) + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v43);
      v44 = *(v10 + 16);
      *(v44 + 16) = v43 + 1;
      *(v44 + v43 + 32) = 10;
      if (__OFADD__(*v10, 1))
      {
        goto LABEL_556;
      }

      ++*v10;
    }

    if (!*(v14 + 16))
    {
LABEL_476:
      if (*(v10 + 8))
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v334 = *(*(v10 + 16) + 16);
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v334);
        v335 = *(v10 + 16);
        *(v335 + 16) = v334 + 1;
        *(v335 + v334 + 32) = 10;
        if (__OFSUB__(*v10, 1))
        {
          goto LABEL_561;
        }

        --*v10;
        JSONWriter.writeIndent()();
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v336 = *(*(v10 + 16) + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v336);
      v337 = *(v10 + 16);
      *(v337 + 16) = v336 + 1;
      *(v337 + v336 + 32) = 93;
      return;
    }

    v45 = 0;
    v391 = v14 + 32;
    v13 = 24;
    v46 = 1;
    v413 = v15;
    v415 = v10;
    v384 = *(v14 + 16);
    while (1)
    {
      v419 = v9;
      v47 = v391 + 24 * v45;
      v49._rawValue = *v47;
      v48 = *(v47 + 8);
      v14 = *(v47 + 16);
      v50 = *(v10 + 8);
      if (v46)
      {
        v9 = *(v47 + 8);
        outlined copy of JSONEncoderValue(*v47, v48, *(v47 + 16));
        if (v50)
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (*(v10 + 8))
        {
          v9 = *(v47 + 8);
          outlined copy of JSONEncoderValue(*v47, v48, *(v47 + 16));
          specialized Array.append<A>(contentsOf:)(&outlined read-only object #5 of serializeObjectElement #1 (key:value:depth:) in JSONWriter.serializeObject(_:depth:));
        }

        else
        {
          v51 = *(v10 + 16);
          v9 = *(v47 + 8);
          outlined copy of JSONEncoderValue(*v47, v48, *(v47 + 16));
          v52 = swift_isUniquelyReferenced_nonNull_native();
          *(v10 + 16) = v51;
          v53 = v45;
          if ((v52 & 1) == 0)
          {
            v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 2) + 1, 1, v51);
            *(v10 + 16) = v51;
          }

          v55 = *(v51 + 2);
          v54 = *(v51 + 3);
          if (v55 >= v54 >> 1)
          {
            v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v51);
            *(v10 + 16) = v51;
          }

          *(v51 + 2) = v55 + 1;
          v51[v55 + 32] = 44;
          v45 = v53;
          v13 = 24;
        }

        if (*(v10 + 8) == 1)
        {
LABEL_65:
          JSONWriter.writeIndent()();
        }
      }

      ++v45;
      if (v14 > 3)
      {
        if (v14 > 5)
        {
          if (v14 == 6)
          {
            specialized Array.append<A>(contentsOf:)(v49._rawValue);
            goto LABEL_422;
          }

          v90 = "null";
          v91 = 4;
LABEL_421:
          specialized Array.append<A>(contentsOf:)(v90, v91);
          goto LABEL_422;
        }

        if (v14 == 4)
        {
          if (v15 == 511)
          {
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            *v355 = 0;
            *(v355 + 8) = 0;
            *(v355 + 16) = 0;
            *(v355 + 24) = 1;
            *(v355 + 32) = 0;
            *(v355 + 40) = 0;
            *(v355 + 48) = 2;
            swift_willThrow();
            outlined consume of JSONEncoderValue(v49._rawValue, v9, 4u);
            return;
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v23 = *(*(v10 + 16) + 16);
          specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v23);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v23, 123);
          if (*(v10 + 8))
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v23 = *(*(v10 + 16) + 16);
            specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v23);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v23, 10);
            if (__OFADD__(*v10, 1))
            {
              goto LABEL_560;
            }

            ++*v10;
            if (*(v49._rawValue + 2))
            {
              JSONWriter.writeIndent()();
            }
          }

          v385 = swift_allocObject();
          *(v385 + 16) = 1;
          v370 = v9;
          v395 = v45;
          if (*(v10 + 9) == 1)
          {
            if (one-time initialization token for compatibility1 != -1)
            {
              swift_once();
            }

            if (static JSONEncoder.compatibility1)
            {
              v70 = *(v49._rawValue + 2);
              rawValue = v49._rawValue;
              if (v70)
              {
                v417 = MEMORY[0x1E69E7CC0];
                specialized ContiguousArray.reserveCapacity(_:)(v70);
                v407 = v49._rawValue + 64;
                v9 = _HashTable.startBucket.getter();
                v71 = 0;
                v377 = v49._rawValue + 72;
                v380 = v70;
                do
                {
                  if ((v9 & 0x8000000000000000) != 0 || v9 >= 1 << *(v49._rawValue + 32))
                  {
                    goto LABEL_531;
                  }

                  v387._rawValue = v71;
                  v73 = v9 >> 6;
                  if ((*&v407[8 * (v9 >> 6)] & (1 << v9)) == 0)
                  {
                    goto LABEL_532;
                  }

                  v397._rawValue = *(v49._rawValue + 9);
                  v74 = *(v49._rawValue + 7) + 24 * v9;
                  v75 = *v74;
                  v76 = *(v74 + 8);
                  v77 = *(v74 + 16);
                  v78 = String._bridgeToObjectiveCImpl()();
                  v79 = v417;
                  outlined copy of JSONEncoderValue(v75, v76, v77);
                  _._rawValue = v78;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v79[2] + 1, 1);
                    v79 = v417;
                  }

                  v14 = v79[2];
                  v80 = v79[3];
                  v10 = v14 + 1;
                  v81 = v397._rawValue;
                  if (v14 >= v80 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v14 + 1, 1);
                    v81 = v397._rawValue;
                    v79 = v417;
                  }

                  v79[2] = v10;
                  v82 = &v79[4 * v14];
                  v82[4] = _._rawValue;
                  v82[5] = v75;
                  v82[6] = v76;
                  *(v82 + 56) = v77;
                  v49._rawValue = rawValue;
                  v72 = 1 << *(rawValue + 32);
                  if (v9 >= v72)
                  {
                    goto LABEL_533;
                  }

                  v83 = *&v407[8 * v73];
                  v15 = v413;
                  v10 = v415;
                  v14 = v380;
                  if ((v83 & (1 << v9)) == 0)
                  {
                    goto LABEL_534;
                  }

                  if (v81 != *(rawValue + 36))
                  {
                    goto LABEL_535;
                  }

                  v84 = v83 & (-2 << (v9 & 0x3F));
                  if (v84)
                  {
                    v72 = __clz(__rbit64(v84)) | v9 & 0x7FFFFFFFFFFFFFC0;
                  }

                  else
                  {
                    v85 = v73 << 6;
                    v86 = v73 + 1;
                    v87 = &v377[8 * v73];
                    while (v86 < (v72 + 63) >> 6)
                    {
                      v89 = *v87++;
                      v88 = v89;
                      v85 += 64;
                      ++v86;
                      if (v89)
                      {
                        outlined consume of Set<Date.ComponentsFormatStyle.Field>.Index._Variant(v9, v81, 0);
                        v72 = __clz(__rbit64(v88)) + v85;
                        goto LABEL_92;
                      }
                    }

                    outlined consume of Set<Date.ComponentsFormatStyle.Field>.Index._Variant(v9, v81, 0);
                  }

LABEL_92:
                  v71 = v387._rawValue + 1;
                  v9 = v72;
                  v45 = v395;
                  v13 = 24;
                }

                while (v387._rawValue + 1 != v380);
                v320 = v419;
                v312 = v370;
              }

              else
              {
                v312 = v9;
                v79 = MEMORY[0x1E69E7CC0];
                v320 = v419;
              }

              v417 = v79;

              specialized MutableCollection<>.sort(by:)(&v417);
              v9 = v320;
              if (v320)
              {
                goto LABEL_574;
              }

              v321 = v417;
              v410 = v417[2];
              if (v410)
              {
                v419 = 0;
                v9 = 0;
                v322 = (v417 + 7);
                v404 = v417;
                while (1)
                {
                  if (v9 >= v321[2])
                  {
                    goto LABEL_550;
                  }

                  v323 = *(v322 - 3);
                  v14 = *(v322 - 2);
                  v324 = *(v322 - 1);
                  v325 = *v322;
                  v326 = static String._unconditionallyBridgeFromObjectiveC(_:)(v323);
                  v328 = v327;
                  v329 = v323;
                  outlined copy of JSONEncoderValue(v14, v324, v325);
                  v330 = v419;
                  serializeObjectElement #1 (key:value:depth:) in JSONWriter.serializeObject(_:depth:)(v326, v328, v14, v324, v325, v413 + 1, v385, v10);
                  v419 = v330;
                  if (v330)
                  {
                    break;
                  }

                  ++v9;
                  outlined consume of JSONEncoderValue(v14, v324, v325);
                  v322 += 32;
                  v321 = v404;
                  if (v410 == v9)
                  {
                    v9 = v419;
                    goto LABEL_463;
                  }
                }

                outlined consume of JSONEncoderValue(v14, v324, v325);
                outlined consume of JSONEncoderValue(rawValue, v370, 4u);

                goto LABEL_505;
              }

LABEL_464:

              if (*(v10 + 8) == 1)
              {
                specialized Array.append<A>(contentsOf:)("\n", 1);
                if (__OFSUB__(*v10, 1))
                {
                  goto LABEL_562;
                }

                --*v10;
                JSONWriter.writeIndent()();
              }

              specialized Array.append<A>(contentsOf:)("}", 1);

              v94 = v49._rawValue;
              v95 = v312;
              v96 = 4;
LABEL_468:
              outlined consume of JSONEncoderValue(v94, v95, v96);
              v69 = v384;
              goto LABEL_469;
            }

            v312 = v9;
            v417 = specialized _copyCollectionToContiguousArray<A>(_:)(v49._rawValue);
            v313 = v419;
            specialized MutableCollection<>.sort(by:)(&v417);
            v9 = v313;
            if (v313)
            {
              goto LABEL_574;
            }

            v314 = v417;
            v419 = v417[2];
            if (v419)
            {
              rawValue = v49._rawValue;
              v10 = 0;
              v9 = (v417 + 8);
              do
              {
                if (v10 >= v314[2])
                {
                  goto LABEL_549;
                }

                v315 = v314;
                v316 = *(v9 - 16);
                v14 = *(v9 - 8);
                v317 = *v9;
                v319 = *(v9 - 32);
                v318 = *(v9 - 24);

                outlined copy of JSONEncoderValue(v316, v14, v317);
                serializeObjectElement #1 (key:value:depth:) in JSONWriter.serializeObject(_:depth:)(v319, v318, v316, v14, v317, v413 + 1, v385, v415);

                ++v10;
                outlined consume of JSONEncoderValue(v316, v14, v317);
                v9 += 40;
                v314 = v315;
              }

              while (v419 != v10);
              v9 = 0;
              v10 = v415;
LABEL_463:
              v312 = v370;
              v49._rawValue = rawValue;
              v15 = v413;
              v45 = v395;
              v13 = 24;
              goto LABEL_464;
            }

            v10 = v415;
          }

          else
          {
            v299 = v49._rawValue;
            v301 = *(v49._rawValue + 8);
            v12 = v49._rawValue + 64;
            v300 = v301;
            v302 = 1 << v299[32];
            if (v302 < 64)
            {
              v303 = ~(-1 << v302);
            }

            else
            {
              v303 = -1;
            }

            v10 = v303 & v300;
            v304 = (v302 + 63) >> 6;
            v11 = v299;

            v305 = 0;
            if (v10)
            {
              while (1)
              {
                v9 = v305;
LABEL_443:
                v306 = __clz(__rbit64(v10)) | (v9 << 6);
                v307 = (*(v11 + 48) + 16 * v306);
                v23 = v307[1];
                v409 = *v307;
                v308 = *(v11 + 56) + 24 * v306;
                v309 = *v308;
                v14 = *(v308 + 8);
                v310 = *(v308 + 16);

                outlined copy of JSONEncoderValue(v309, v14, v310);
                v311 = v419;
                serializeObjectElement #1 (key:value:depth:) in JSONWriter.serializeObject(_:depth:)(v409, v23, v309, v14, v310, v413 + 1, v385, v415);
                v419 = v311;
                if (v311)
                {
                  break;
                }

                v10 &= v10 - 1;
                outlined consume of JSONEncoderValue(v309, v14, v310);

                v305 = v9;
                v13 = 24;
                if (!v10)
                {
                  goto LABEL_440;
                }
              }

              outlined consume of JSONEncoderValue(v309, v14, v310);

              outlined consume of JSONEncoderValue(v11, v370, 4u);
LABEL_505:

              return;
            }

            while (1)
            {
LABEL_440:
              v9 = v305 + 1;
              if (__OFADD__(v305, 1))
              {
                goto LABEL_526;
              }

              if (v9 >= v304)
              {
                break;
              }

              v10 = *(v12 + 8 * v9);
              ++v305;
              if (v10)
              {
                goto LABEL_443;
              }
            }

            v49._rawValue = v11;
            v9 = v419;
            v15 = v413;
            v10 = v415;
            v312 = v370;
          }

          v45 = v395;
          goto LABEL_464;
        }

        v92 = v9;
        JSONWriter.serializePreformattedByteArray(_:_:depth:)(v49, v9, v15 + 1);
        v9 = v93;
        v94 = v49._rawValue;
        v95 = v92;
        v96 = 5;
        if (v93)
        {
          outlined consume of JSONEncoderValue(v49._rawValue, v92, 5u);
          return;
        }

        goto LABEL_468;
      }

      if (v14 <= 1)
      {
        if (!v14)
        {
          v56 = v9;
          v57 = *(v10 + 16);
          v58 = swift_isUniquelyReferenced_nonNull_native();
          *(v10 + 16) = v57;
          v394 = v45;
          if ((v58 & 1) == 0)
          {
            v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 2) + 1, 1, v57);
            *(v10 + 16) = v57;
          }

          v60 = *(v57 + 2);
          v59 = *(v57 + 3);
          if (v60 >= v59 >> 1)
          {
            v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v57);
            v61 = v9;
            *(v10 + 16) = v57;
          }

          else
          {
            v61 = v9;
          }

          *(v57 + 2) = v60 + 1;
          v57[v60 + 32] = 34;
          v417 = v49._rawValue;
          v418 = v61;

          v62 = v419;
          specialized String.withUTF8<A>(_:)(&v417, v10);
          v9 = v62;

          v63 = *(v10 + 16);
          v64 = swift_isUniquelyReferenced_nonNull_native();
          *(v10 + 16) = v63;
          if ((v64 & 1) == 0)
          {
            v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v63 + 2) + 1, 1, v63);
            *(v10 + 16) = v63;
          }

          v66 = *(v63 + 2);
          v65 = *(v63 + 3);
          v67 = v56;
          if (v66 >= v65 >> 1)
          {
            v331 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v63);
            v67 = v56;
            *(v10 + 16) = v331;
          }

          outlined consume of JSONEncoderValue(v49._rawValue, v67, 0);
          v68 = *(v10 + 16);
          *(v68 + 16) = v66 + 1;
          *(v68 + v66 + 32) = 34;
          v69 = v384;
          v45 = v394;
          goto LABEL_469;
        }

        specialized Array.append<A>(contentsOf:)(v49._rawValue, v9);
LABEL_422:
        v69 = v384;
        v9 = v419;
        goto LABEL_469;
      }

      if (v14 == 2)
      {
        if (v49._rawValue)
        {
          v90 = "true";
        }

        else
        {
          v90 = "false";
        }

        if (v49._rawValue)
        {
          v91 = 4;
        }

        else
        {
          v91 = 5;
        }

        goto LABEL_421;
      }

      v371 = v9;
      if (v15 == 511)
      {
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v354 = 0;
        *(v354 + 8) = 0;
        *(v354 + 16) = 0;
        *(v354 + 24) = 1;
        *(v354 + 32) = 0;
        *(v354 + 40) = 0;
        *(v354 + 48) = 2;
        swift_willThrow();
        goto LABEL_524;
      }

      v97 = *(v10 + 16);
      v98 = swift_isUniquelyReferenced_nonNull_native();
      *(v10 + 16) = v97;
      v396 = v45;
      if ((v98 & 1) == 0)
      {
        v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v97 + 2) + 1, 1, v97);
        *(v10 + 16) = v97;
      }

      v100 = *(v97 + 2);
      v99 = *(v97 + 3);
      if (v100 >= v99 >> 1)
      {
        v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v99 > 1), v100 + 1, 1, v97);
        *(v10 + 16) = v97;
      }

      *(v97 + 2) = v100 + 1;
      v97[v100 + 32] = 91;
      if (*(v10 + 8))
      {
        v101 = *(v10 + 16);
        v103 = *(v101 + 2);
        v102 = *(v101 + 3);
        if (v103 >= v102 >> 1)
        {
          v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1, v101);
          *(v10 + 16) = v101;
        }

        *(v101 + 2) = v103 + 1;
        v101[v103 + 32] = 10;
        if (__OFADD__(*v10, 1))
        {
          goto LABEL_559;
        }

        ++*v10;
      }

      v376 = *(v49._rawValue + 2);
      if (v376)
      {
        v9 = 0;
        v386 = v49._rawValue + 32;
        v104 = 1;
        rawValue = v49._rawValue;
        while (1)
        {
          v105 = &v386[24 * v9];
          v107 = *v105;
          v106 = *(v105 + 1);
          v14 = v105[16];
          v108 = *(v10 + 8);
          v408 = *v105;
          _a._rawValue = v106;
          if (v104)
          {
            outlined copy of JSONEncoderValue(v107, v106, v14);
            if (v108)
            {
              goto LABEL_144;
            }
          }

          else
          {
            if (*(v10 + 8))
            {
              outlined copy of JSONEncoderValue(v107, v106, v14);
              specialized Array.append<A>(contentsOf:)(&outlined read-only object #4 of serializeObjectElement #1 (key:value:depth:) in JSONWriter.serializeObject(_:depth:));
            }

            else
            {
              v109 = *(v10 + 16);
              outlined copy of JSONEncoderValue(v107, v106, v14);
              v110 = swift_isUniquelyReferenced_nonNull_native();
              *(v10 + 16) = v109;
              if ((v110 & 1) == 0)
              {
                v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v109 + 2) + 1, 1, v109);
                *(v10 + 16) = v109;
              }

              v112 = *(v109 + 2);
              v111 = *(v109 + 3);
              if (v112 >= v111 >> 1)
              {
                v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v111 > 1), v112 + 1, 1, v109);
                *(v10 + 16) = v109;
              }

              *(v109 + 2) = v112 + 1;
              v109[v112 + 32] = 44;
              v107 = v408;
            }

            if (*(v10 + 8) == 1)
            {
LABEL_144:
              JSONWriter.writeIndent()();
            }
          }

          ++v9;
          if (v14 <= 3)
          {
            if (v14 <= 1)
            {
              if (v14)
              {
                specialized Array.append<A>(contentsOf:)(v107, _a._rawValue);
              }

              else
              {
                v14 = _a._rawValue;
                v113 = *(v10 + 16);
                v114 = swift_isUniquelyReferenced_nonNull_native();
                *(v10 + 16) = v113;
                if ((v114 & 1) == 0)
                {
                  v113 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v113 + 2) + 1, 1, v113);
                  *(v10 + 16) = v113;
                }

                v116 = *(v113 + 2);
                v115 = *(v113 + 3);
                if (v116 >= v115 >> 1)
                {
                  v113 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v115 > 1), v116 + 1, 1, v113);
                  v117 = _a._rawValue;
                  *(v10 + 16) = v113;
                }

                else
                {
                  v117 = _a._rawValue;
                }

                *(v113 + 2) = v116 + 1;
                v113[v116 + 32] = 34;
                v417 = v408;
                v418 = v117;

                v118 = v419;
                specialized String.withUTF8<A>(_:)(&v417, v10);
                v419 = v118;

                v119 = *(v10 + 16);
                v120 = swift_isUniquelyReferenced_nonNull_native();
                *(v10 + 16) = v119;
                if ((v120 & 1) == 0)
                {
                  v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v119 + 2) + 1, 1, v119);
                  *(v10 + 16) = v119;
                }

                v122 = *(v119 + 2);
                v121 = *(v119 + 3);
                v123 = _a._rawValue;
                if (v122 >= v121 >> 1)
                {
                  v289 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v121 > 1), v122 + 1, 1, v119);
                  v123 = _a._rawValue;
                  *(v10 + 16) = v289;
                }

                outlined consume of JSONEncoderValue(v408, v123, 0);
                v124 = *(v10 + 16);
                *(v124 + 16) = v122 + 1;
                *(v124 + v122 + 32) = 34;
              }

              goto LABEL_416;
            }

            if (v14 == 2)
            {
              if (v107)
              {
                v140 = "true";
              }

              else
              {
                v140 = "false";
              }

              if (v107)
              {
                v141 = 4;
              }

              else
              {
                v141 = 5;
              }

              specialized Array.append<A>(contentsOf:)(v140, v141);
              goto LABEL_416;
            }

            if (v15 >= 510)
            {
              lazy protocol witness table accessor for type JSONError and conformance JSONError();
              swift_allocError();
              *v361 = 0;
              *(v361 + 8) = 0;
              *(v361 + 16) = 0;
              *(v361 + 24) = 1;
              *(v361 + 32) = 0;
              *(v361 + 40) = 0;
              *(v361 + 48) = 2;
              swift_willThrow();
              v358 = v107;
              goto LABEL_522;
            }

            v146 = *(v10 + 16);
            v147 = swift_isUniquelyReferenced_nonNull_native();
            *(v10 + 16) = v146;
            if ((v147 & 1) == 0)
            {
              v146 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v146 + 2) + 1, 1, v146);
              *(v10 + 16) = v146;
            }

            v149 = *(v146 + 2);
            v148 = *(v146 + 3);
            if (v149 >= v148 >> 1)
            {
              v146 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v148 > 1), v149 + 1, 1, v146);
              *(v10 + 16) = v146;
            }

            *(v146 + 2) = v149 + 1;
            v146[v149 + 32] = 91;
            v150 = v408;
            if (*(v10 + 8))
            {
              v151 = *(v10 + 16);
              v153 = *(v151 + 2);
              v152 = *(v151 + 3);
              if (v153 >= v152 >> 1)
              {
                v151 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v152 > 1), v153 + 1, 1, v151);
                *(v10 + 16) = v151;
              }

              *(v151 + 2) = v153 + 1;
              v151[v153 + 32] = 10;
              if (__OFADD__(*v10, 1))
              {
                goto LABEL_564;
              }

              ++*v10;
              v150 = v408;
            }

            v375 = *(v150 + 16);
            if (v375)
            {
              v154 = 0;
              v379 = v150 + 32;
              v155 = 1;
              v373 = v9;
              while (1)
              {
                v158 = v379 + 24 * v154;
                v160 = *v158;
                v159 = *(v158 + 8);
                v161 = *(v158 + 16);
                v389._rawValue = v159;
                if (v155)
                {
                  v14 = v150;
                  if ((*(v10 + 8) & 1) == 0)
                  {
                    outlined copy of JSONEncoderValue(v160, v159, v161);
                    goto LABEL_251;
                  }

                  v162 = *v10;
                  outlined copy of JSONEncoderValue(v160, v159, v161);
                  if (v162 > 4)
                  {
                    goto LABEL_231;
                  }
                }

                else
                {
                  if (*(v10 + 8))
                  {
                    outlined copy of JSONEncoderValue(v160, v159, v161);
                    specialized Array.append<A>(contentsOf:)(&outlined read-only object #3 of serializeObjectElement #1 (key:value:depth:) in JSONWriter.serializeObject(_:depth:));
                  }

                  else
                  {
                    v163 = v9;
                    v164 = *(v10 + 16);
                    outlined copy of JSONEncoderValue(v160, v159, v161);
                    v165 = swift_isUniquelyReferenced_nonNull_native();
                    *(v10 + 16) = v164;
                    v166 = v154;
                    if ((v165 & 1) == 0)
                    {
                      v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v164 + 2) + 1, 1, v164);
                      *(v10 + 16) = v164;
                    }

                    v168 = *(v164 + 2);
                    v167 = *(v164 + 3);
                    if (v168 >= v167 >> 1)
                    {
                      v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v167 > 1), v168 + 1, 1, v164);
                      *(v10 + 16) = v164;
                    }

                    *(v164 + 2) = v168 + 1;
                    v164[v168 + 32] = 44;
                    v150 = v408;
                    v154 = v166;
                    v9 = v163;
                    v13 = 24;
                  }

                  v14 = v150;
                  if (*(v10 + 8) != 1)
                  {
                    goto LABEL_251;
                  }

                  v162 = *v10;
                  if (*v10 > 4)
                  {
LABEL_231:
                    if (v162 > 7)
                    {
                      switch(v162)
                      {
                        case 8:
                          specialized Array.append<A>(contentsOf:)("                ", 16);
                          goto LABEL_251;
                        case 9:
                          specialized Array.append<A>(contentsOf:)("                  ", 18);
                          goto LABEL_251;
                        case 10:
                          specialized Array.append<A>(contentsOf:)("                    ", 20);
                          goto LABEL_251;
                      }
                    }

                    else
                    {
                      switch(v162)
                      {
                        case 5:
                          specialized Array.append<A>(contentsOf:)("          ", 10);
                          goto LABEL_251;
                        case 6:
                          specialized Array.append<A>(contentsOf:)("            ", 12);
                          goto LABEL_251;
                        case 7:
                          specialized Array.append<A>(contentsOf:)("              ", 14);
                          goto LABEL_251;
                      }
                    }

                    goto LABEL_249;
                  }
                }

                if (v162 <= 1)
                {
                  if (!v162)
                  {
                    goto LABEL_251;
                  }

                  if (v162 == 1)
                  {
                    specialized Array.append<A>(contentsOf:)("  ", 2);
                    goto LABEL_251;
                  }
                }

                else
                {
                  switch(v162)
                  {
                    case 2:
                      specialized Array.append<A>(contentsOf:)("    ", 4);
                      goto LABEL_251;
                    case 3:
                      specialized Array.append<A>(contentsOf:)("      ", 6);
                      goto LABEL_251;
                    case 4:
                      specialized Array.append<A>(contentsOf:)("        ", 8);
                      goto LABEL_251;
                  }
                }

LABEL_249:
                if (v162 < 0)
                {
                  goto LABEL_571;
                }

                do
                {
                  specialized Array.append<A>(contentsOf:)("  ", 2);
                  --v162;
                }

                while (v162);
LABEL_251:
                ++v154;
                if (v161 <= 3)
                {
                  v150 = v14;
                  if (v161 <= 1)
                  {
                    if (v161)
                    {
                      specialized Array.append<A>(contentsOf:)(v160, v389._rawValue);
                      goto LABEL_210;
                    }

                    v169 = *(v10 + 16);
                    v170 = swift_isUniquelyReferenced_nonNull_native();
                    *(v10 + 16) = v169;
                    v368 = v154;
                    if ((v170 & 1) == 0)
                    {
                      v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v169 + 2) + 1, 1, v169);
                      *(v10 + 16) = v169;
                    }

                    v399 = v160;
                    v172 = *(v169 + 2);
                    v171 = *(v169 + 3);
                    v173 = v389._rawValue;
                    if (v172 >= v171 >> 1)
                    {
                      v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v171 > 1), v172 + 1, 1, v169);
                      v173 = v389._rawValue;
                      *(v10 + 16) = v169;
                    }

                    v15 = v413;
                    *(v169 + 2) = v172 + 1;
                    v169[v172 + 32] = 34;
                    v49._rawValue = rawValue;
                    v417 = v399;
                    v418 = v173;

                    v174 = v419;
                    specialized String.withUTF8<A>(_:)(&v417, v10);
                    v419 = v174;

                    v175 = *(v10 + 16);
                    v176 = swift_isUniquelyReferenced_nonNull_native();
                    *(v10 + 16) = v175;
                    if ((v176 & 1) == 0)
                    {
                      v175 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v175 + 2) + 1, 1, v175);
                      *(v10 + 16) = v175;
                    }

                    v178 = *(v175 + 2);
                    v177 = *(v175 + 3);
                    v179 = v389._rawValue;
                    if (v178 >= v177 >> 1)
                    {
                      v251 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v177 > 1), v178 + 1, 1, v175);
                      v179 = v389._rawValue;
                      *(v10 + 16) = v251;
                    }

                    outlined consume of JSONEncoderValue(v399, v179, 0);
                    v180 = *(v10 + 16);
                    *(v180 + 16) = v178 + 1;
                    v181 = v180 + v178;
                    v182 = 34;
LABEL_352:
                    *(v181 + 32) = v182;
                    v150 = v408;
                    v154 = v368;
                    goto LABEL_211;
                  }

                  if (v161 == 2)
                  {
                    if (v160)
                    {
                      v156 = "true";
                    }

                    else
                    {
                      v156 = "false";
                    }

                    if (v160)
                    {
                      v157 = 4;
                    }

                    else
                    {
                      v157 = 5;
                    }

                    goto LABEL_209;
                  }

                  v401 = v160;
                  v15 = v413;
                  if (v413 >= 509)
                  {
                    lazy protocol witness table accessor for type JSONError and conformance JSONError();
                    swift_allocError();
                    *v362 = 0;
                    *(v362 + 8) = 0;
                    *(v362 + 16) = 0;
                    *(v362 + 24) = 1;
                    *(v362 + 32) = 0;
                    *(v362 + 40) = 0;
                    *(v362 + 48) = 2;
                    swift_willThrow();
                    outlined consume of JSONEncoderValue(v401, v389._rawValue, 3u);
                    outlined consume of JSONEncoderValue(v14, _a._rawValue, 3u);
                    v356 = rawValue;
                    goto LABEL_515;
                  }

                  v202 = *(v10 + 16);
                  v203 = swift_isUniquelyReferenced_nonNull_native();
                  *(v10 + 16) = v202;
                  v49._rawValue = rawValue;
                  v368 = v154;
                  if ((v203 & 1) == 0)
                  {
                    v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v202 + 2) + 1, 1, v202);
                    *(v10 + 16) = v202;
                  }

                  v205 = *(v202 + 2);
                  v204 = *(v202 + 3);
                  if (v205 >= v204 >> 1)
                  {
                    v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v204 > 1), v205 + 1, 1, v202);
                    *(v10 + 16) = v202;
                  }

                  *(v202 + 2) = v205 + 1;
                  v202[v205 + 32] = 91;
                  if (*(v10 + 8))
                  {
                    v206 = *(v10 + 16);
                    v208 = *(v206 + 2);
                    v207 = *(v206 + 3);
                    if (v208 >= v207 >> 1)
                    {
                      v206 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v207 > 1), v208 + 1, 1, v206);
                      *(v10 + 16) = v206;
                    }

                    *(v206 + 2) = v208 + 1;
                    v206[v208 + 32] = 10;
                    if (__OFADD__(*v10, 1))
                    {
                      goto LABEL_567;
                    }

                    ++*v10;
                  }

                  v383 = *(v401 + 16);
                  if (!v383)
                  {
LABEL_340:
                    v233 = *(v10 + 16);
                    if (*(v10 + 8))
                    {
                      v234 = swift_isUniquelyReferenced_nonNull_native();
                      *(v10 + 16) = v233;
                      if ((v234 & 1) == 0)
                      {
                        v233 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v233 + 2) + 1, 1, v233);
                        *(v10 + 16) = v233;
                      }

                      v236 = *(v233 + 2);
                      v235 = *(v233 + 3);
                      if (v236 >= v235 >> 1)
                      {
                        v233 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v235 > 1), v236 + 1, 1, v233);
                        *(v10 + 16) = v233;
                      }

                      *(v233 + 2) = v236 + 1;
                      v233[v236 + 32] = 10;
                      if (__OFSUB__(*v10, 1))
                      {
                        goto LABEL_572;
                      }

                      --*v10;
                      JSONWriter.writeIndent()();
                      v233 = *(v10 + 16);
                    }

                    v237 = swift_isUniquelyReferenced_nonNull_native();
                    *(v10 + 16) = v233;
                    if ((v237 & 1) == 0)
                    {
                      v233 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v233 + 2) + 1, 1, v233);
                      *(v10 + 16) = v233;
                    }

                    v238 = v389._rawValue;
                    v240 = *(v233 + 2);
                    v239 = *(v233 + 3);
                    if (v240 >= v239 >> 1)
                    {
                      v252 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v239 > 1), v240 + 1, 1, v233);
                      v238 = v389._rawValue;
                      *(v10 + 16) = v252;
                    }

                    outlined consume of JSONEncoderValue(v401, v238, 3u);
                    v241 = *(v10 + 16);
                    *(v241 + 16) = v240 + 1;
                    v181 = v241 + v240;
                    v182 = 93;
                    goto LABEL_352;
                  }

                  v209 = v419;

                  v10 = 0;
                  v9 = v210 + 48;
                  v211 = 1;
                  while (2)
                  {
                    if (v10 >= *(v210 + 16))
                    {
                      goto LABEL_537;
                    }

                    v14 = *(v9 - 16);
                    v212 = *(v9 - 8);
                    v213 = *v9;
                    v214 = *(v415 + 8);
                    if (v211)
                    {
                      outlined copy of JSONEncoderValue(*(v9 - 16), *(v9 - 8), *v9);
                      if ((v214 & 1) == 0)
                      {
                        goto LABEL_325;
                      }
                    }

                    else
                    {
                      if (*(v415 + 8))
                      {
                        outlined copy of JSONEncoderValue(*(v9 - 16), *(v9 - 8), *v9);
                        v215 = v415;
                        specialized Array.append<A>(contentsOf:)(&outlined read-only object #2 of serializeObjectElement #1 (key:value:depth:) in JSONWriter.serializeObject(_:depth:));
                      }

                      else
                      {
                        v216 = *(v415 + 16);
                        outlined copy of JSONEncoderValue(*(v9 - 16), *(v9 - 8), *v9);
                        v217 = swift_isUniquelyReferenced_nonNull_native();
                        *(v415 + 16) = v216;
                        if ((v217 & 1) == 0)
                        {
                          v216 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v216 + 2) + 1, 1, v216);
                          *(v415 + 16) = v216;
                        }

                        v219 = *(v216 + 2);
                        v218 = *(v216 + 3);
                        if (v219 >= v218 >> 1)
                        {
                          v216 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v218 > 1), v219 + 1, 1, v216);
                          *(v415 + 16) = v216;
                        }

                        *(v216 + 2) = v219 + 1;
                        v216[v219 + 32] = 44;
                        v215 = v415;
                      }

                      if (*(v215 + 8) != 1)
                      {
                        goto LABEL_325;
                      }
                    }

                    JSONWriter.writeIndent()();
LABEL_325:
                    JSONWriter.serializeJSON(_:depth:)(v14, v212, v213, v413 + 3);
                    if (v209)
                    {
                      outlined consume of JSONEncoderValue(v14, v212, v213);
                      outlined consume of JSONEncoderValue(v401, v389._rawValue, 3u);
                      outlined consume of JSONEncoderValue(v401, v389._rawValue, 3u);
                      outlined consume of JSONEncoderValue(v408, _a._rawValue, 3u);
                      outlined consume of JSONEncoderValue(rawValue, v371, 3u);
                      return;
                    }

                    ++v10;
                    outlined consume of JSONEncoderValue(v14, v212, v213);
                    v211 = 0;
                    v9 += 24;
                    v210 = v401;
                    if (v383 == v10)
                    {
                      outlined consume of JSONEncoderValue(v401, v389._rawValue, 3u);
                      v419 = 0;
                      v15 = v413;
                      v10 = v415;
                      v49._rawValue = rawValue;
                      v13 = 24;
                      v9 = v373;
                      goto LABEL_340;
                    }

                    continue;
                  }
                }

                v150 = v14;
                if (v161 > 5)
                {
                  if (v161 == 6)
                  {
                    specialized Array.append<A>(contentsOf:)(v160);
                    goto LABEL_210;
                  }

                  v156 = "null";
                  v157 = 4;
LABEL_209:
                  specialized Array.append<A>(contentsOf:)(v156, v157);
LABEL_210:
                  v15 = v413;
                  v49._rawValue = rawValue;
                  goto LABEL_211;
                }

                v400 = v160;
                if (v161 == 4)
                {
                  v15 = v413;
                  v49._rawValue = rawValue;
                  if (v413 < 509)
                  {
                    v183 = *(v10 + 16);
                    v184 = swift_isUniquelyReferenced_nonNull_native();
                    *(v10 + 16) = v183;
                    v369 = v154;
                    if ((v184 & 1) == 0)
                    {
                      v183 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v183 + 2) + 1, 1, v183);
                      *(v10 + 16) = v183;
                    }

                    v186 = *(v183 + 2);
                    v185 = *(v183 + 3);
                    if (v186 >= v185 >> 1)
                    {
                      v183 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v185 > 1), v186 + 1, 1, v183);
                      *(v10 + 16) = v183;
                    }

                    *(v183 + 2) = v186 + 1;
                    v183[v186 + 32] = 123;
                    v150 = v408;
                    v154 = v369;
                    if (*(v10 + 8))
                    {
                      v14 = v408;
                      v187 = *(v10 + 16);
                      v189 = *(v187 + 2);
                      v188 = *(v187 + 3);
                      if (v189 >= v188 >> 1)
                      {
                        v187 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v188 > 1), v189 + 1, 1, v187);
                        *(v10 + 16) = v187;
                      }

                      *(v187 + 2) = v189 + 1;
                      v187[v189 + 32] = 10;
                      if (__OFADD__(*v10, 1))
                      {
                        goto LABEL_568;
                      }

                      ++*v10;
                      v150 = v408;
                      if (*(v400 + 16))
                      {
                        JSONWriter.writeIndent()();
                      }
                    }

                    v382 = swift_allocObject();
                    *(v382 + 16) = 1;
                    if (*(v10 + 9) != 1)
                    {
                      v220 = 1 << *(v400 + 32);
                      if (v220 < 64)
                      {
                        v221 = ~(-1 << v220);
                      }

                      else
                      {
                        v221 = -1;
                      }

                      v10 = v221 & *(v400 + 64);
                      v222 = (v220 + 63) >> 6;

                      v224 = 0;
                      if (!v10)
                      {
LABEL_333:
                        while (1)
                        {
                          v9 = v224 + 1;
                          if (__OFADD__(v224, 1))
                          {
                            break;
                          }

                          if (v9 >= v222)
                          {
                            v15 = v413;
                            v10 = v415;
                            v49._rawValue = rawValue;
                            goto LABEL_364;
                          }

                          v10 = *(v400 + 64 + 8 * v9);
                          ++v224;
                          if (v10)
                          {
                            goto LABEL_336;
                          }
                        }

                        __break(1u);
LABEL_531:
                        __break(1u);
LABEL_532:
                        __break(1u);
LABEL_533:
                        __break(1u);
LABEL_534:
                        __break(1u);
LABEL_535:
                        __break(1u);
LABEL_536:
                        __break(1u);
LABEL_537:
                        __break(1u);
                        while (1)
                        {
                          __break(1u);
                          while (1)
                          {
                            __break(1u);
LABEL_540:
                            __break(1u);
LABEL_541:
                            __break(1u);
LABEL_542:
                            __break(1u);
LABEL_543:
                            __break(1u);
LABEL_544:
                            __break(1u);
LABEL_545:
                            __break(1u);
LABEL_546:
                            __break(1u);
LABEL_547:
                            __break(1u);
LABEL_548:
                            __break(1u);
LABEL_549:
                            __break(1u);
LABEL_550:
                            __break(1u);
LABEL_551:
                            __break(1u);
LABEL_552:
                            __break(1u);
LABEL_553:
                            __break(1u);
LABEL_554:
                            __break(1u);
LABEL_555:
                            __break(1u);
LABEL_556:
                            __break(1u);
LABEL_557:
                            swift_once();
LABEL_28:
                            if (static JSONEncoder.compatibility1)
                            {
                              break;
                            }

                            v417 = specialized _copyCollectionToContiguousArray<A>(_:)(v14);
                            specialized MutableCollection<>.sort(by:)(&v417);
                            if (v9)
                            {
                              goto LABEL_574;
                            }

                            v348 = v417[2];
                            if (!v348)
                            {
                              goto LABEL_497;
                            }

                            v414 = v10;
                            v14 = 0;
                            v412 = v417;
                            v349 = (v417 + 8);
                            while (v14 < v412[2])
                            {
                              v350 = *(v349 - 2);
                              v351 = *(v349 - 1);
                              v352 = *v349;
                              v353 = *(v349 - 4);
                              v10 = *(v349 - 3);

                              outlined copy of JSONEncoderValue(v350, v351, v352);
                              serializeObjectElement #1 (key:value:depth:) in JSONWriter.serializeObject(_:depth:)(v353, v10, v350, v351, v352, rawValue, v413, v414);

                              ++v14;
                              outlined consume of JSONEncoderValue(v350, v351, v352);
                              v349 += 40;
                              if (v348 == v14)
                              {
LABEL_496:
                                v10 = v414;
                                goto LABEL_497;
                              }
                            }
                          }

                          v417 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS10Foundation16JSONEncoderValueOG_So8NSStringC3key_AH5valuets5NeverOTg5061_s10Foundation10JSONWriterV15serializeObject_5depthySDySSAA16ef11OG_SitKFSo8G31C3key_AG5valuetSSAK_AgLt_tXEfU_Tf1cn_n(v14);

                          specialized MutableCollection<>.sort(by:)(&v417);
                          if (v9)
                          {
                            goto LABEL_574;
                          }

                          v419 = v417[2];
                          if (!v419)
                          {
                            goto LABEL_497;
                          }

                          v414 = v10;
                          v14 = 0;
                          v406 = v417;
                          v30 = (v417 + 7);
                          while (v14 < v406[2])
                          {
                            v32 = *(v30 - 3);
                            v31 = *(v30 - 2);
                            v33 = *(v30 - 1);
                            v34 = *v30;
                            v35 = static String._unconditionallyBridgeFromObjectiveC(_:)(v32);
                            v10 = v36;
                            v9 = v32;
                            outlined copy of JSONEncoderValue(v31, v33, v34);
                            serializeObjectElement #1 (key:value:depth:) in JSONWriter.serializeObject(_:depth:)(v35, v10, v31, v33, v34, rawValue, v413, v414);

                            ++v14;
                            outlined consume of JSONEncoderValue(v31, v33, v34);
                            v30 += 32;
                            if (v419 == v14)
                            {
                              v9 = 0;
                              goto LABEL_496;
                            }
                          }
                        }
                      }

                      while (1)
                      {
                        v9 = v224;
LABEL_336:
                        v225 = __clz(__rbit64(v10)) | (v9 << 6);
                        v226 = (*(v223 + 48) + 16 * v225);
                        v228 = *v226;
                        v227 = v226[1];
                        v229 = *(v223 + 56) + 24 * v225;
                        v230 = *v229;
                        v14 = *(v229 + 8);
                        v231 = *(v229 + 16);

                        outlined copy of JSONEncoderValue(v230, v14, v231);
                        v232 = v419;
                        serializeObjectElement #1 (key:value:depth:) in JSONWriter.serializeObject(_:depth:)(v228, v227, v230, v14, v231, v413 + 3, v382, v415);
                        v419 = v232;
                        if (v232)
                        {
                          break;
                        }

                        v10 &= v10 - 1;
                        outlined consume of JSONEncoderValue(v230, v14, v231);

                        v224 = v9;
                        v13 = 24;
                        v223 = v400;
                        if (!v10)
                        {
                          goto LABEL_333;
                        }
                      }

                      outlined consume of JSONEncoderValue(v230, v14, v231);

                      outlined consume of JSONEncoderValue(v400, v389._rawValue, 4u);
LABEL_513:

                      outlined consume of JSONEncoderValue(v408, _a._rawValue, 3u);
LABEL_514:
                      v356 = rawValue;
                      goto LABEL_515;
                    }

                    if (one-time initialization token for compatibility1 != -1)
                    {
                      swift_once();
                    }

                    if (static JSONEncoder.compatibility1)
                    {
                      v14 = v150;
                      v190 = v419;
                      v417 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS10Foundation16JSONEncoderValueOG_So8NSStringC3key_AH5valuets5NeverOTg5061_s10Foundation10JSONWriterV15serializeObject_5depthySDySSAA16ef11OG_SitKFSo8G31C3key_AG5valuetSSAK_AgLt_tXEfU_Tf1cn_n(v400);

                      specialized MutableCollection<>.sort(by:)(&v417);
                      if (v190)
                      {
                        v364 = v190;
                        goto LABEL_578;
                      }

                      v191 = v417;
                      v365 = v417[2];
                      v419 = 0;
                      if (v365)
                      {
                        v9 = 0;
                        v192 = (v417 + 7);
                        while (1)
                        {
                          if (v9 >= v191[2])
                          {
                            goto LABEL_553;
                          }

                          v193 = v191;
                          v194 = *(v192 - 3);
                          v14 = *(v192 - 2);
                          v195 = *(v192 - 1);
                          v196 = *v192;
                          v197 = static String._unconditionallyBridgeFromObjectiveC(_:)(v194);
                          v199 = v198;
                          v10 = v194;
                          outlined copy of JSONEncoderValue(v14, v195, v196);
                          v200 = v419;
                          serializeObjectElement #1 (key:value:depth:) in JSONWriter.serializeObject(_:depth:)(v197, v199, v14, v195, v196, v413 + 3, v382, v415);
                          v419 = v200;
                          if (v200)
                          {
                            break;
                          }

                          ++v9;
                          outlined consume of JSONEncoderValue(v14, v195, v196);
                          v192 += 32;
                          v191 = v193;
                          if (v365 == v9)
                          {
                            goto LABEL_363;
                          }
                        }

                        outlined consume of JSONEncoderValue(v14, v195, v196);
                        outlined consume of JSONEncoderValue(v400, v389._rawValue, 4u);

                        goto LABEL_513;
                      }
                    }

                    else
                    {
                      v14 = v400;
                      v242 = *(v400 + 16);
                      if (v242)
                      {
                        v243 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_10Foundation16JSONEncoderValueO5valuet_Tt1g5(*(v400 + 16), 0);
                        v366 = specialized Sequence._copyContents(initializing:)(&v417, (v243 + 4), v242, v400);
                        outlined copy of JSONEncoderValue(v400, v389._rawValue, 4u);
                        outlined consume of Set<AnyKeyPath>.Iterator._Variant();
                        if (v366 != v242)
                        {
                          goto LABEL_573;
                        }

                        v15 = v413;
                        v13 = 24;
                      }

                      else
                      {
                        v243 = MEMORY[0x1E69E7CC0];
                      }

                      v417 = v243;
                      v244 = v419;
                      specialized MutableCollection<>.sort(by:)(&v417);
                      if (v244)
                      {
                        v364 = v244;
                        goto LABEL_578;
                      }

                      v245 = v417;
                      v419 = v417[2];
                      if (v419)
                      {
                        v10 = 0;
                        v9 = (v417 + 8);
                        do
                        {
                          if (v10 >= v245[2])
                          {
                            goto LABEL_554;
                          }

                          v246 = v245;
                          v247 = *(v9 - 16);
                          v14 = *(v9 - 8);
                          v248 = *v9;
                          v250 = *(v9 - 32);
                          v249 = *(v9 - 24);

                          outlined copy of JSONEncoderValue(v247, v14, v248);
                          serializeObjectElement #1 (key:value:depth:) in JSONWriter.serializeObject(_:depth:)(v250, v249, v247, v14, v248, v413 + 3, v382, v415);

                          ++v10;
                          outlined consume of JSONEncoderValue(v247, v14, v248);
                          v9 += 40;
                          v245 = v246;
                        }

                        while (v419 != v10);
                        v419 = 0;
LABEL_363:
                        v15 = v413;
                        v10 = v415;
                        v49._rawValue = rawValue;
                        v13 = 24;
LABEL_364:
                        v150 = v408;
                        v9 = v373;
                      }

                      else
                      {
                        v419 = 0;
                        v150 = v408;
                      }

                      v154 = v369;
                    }

                    if (*(v10 + 8) == 1)
                    {
                      specialized Array.append<A>(contentsOf:)("\n", 1);
                      if (__OFSUB__(*v10, 1))
                      {
                        goto LABEL_569;
                      }

                      --*v10;
                      JSONWriter.writeIndent()();
                    }

                    specialized Array.append<A>(contentsOf:)("}", 1);

                    outlined consume of JSONEncoderValue(v400, v389._rawValue, 4u);
LABEL_211:
                    if (v154 == v375)
                    {
                      break;
                    }

                    goto LABEL_212;
                  }

                  lazy protocol witness table accessor for type JSONError and conformance JSONError();
                  swift_allocError();
                  *v363 = 0;
                  *(v363 + 8) = 0;
                  *(v363 + 16) = 0;
                  *(v363 + 24) = 1;
                  *(v363 + 32) = 0;
                  *(v363 + 40) = 0;
                  *(v363 + 48) = 2;
                  swift_willThrow();
                  outlined consume of JSONEncoderValue(v400, v389._rawValue, 4u);
                  v358 = v14;
LABEL_522:
                  v359 = _a._rawValue;
                  v360 = 3;
LABEL_523:
                  outlined consume of JSONEncoderValue(v358, v359, v360);
LABEL_524:
                  v356 = v49._rawValue;
LABEL_515:
                  outlined consume of JSONEncoderValue(v356, v371, 3u);
                  return;
                }

                v15 = v413;
                JSONWriter.serializePreformattedByteArray(_:_:depth:)(v400, v389, v413 + 3);
                v419 = v201;
                v49._rawValue = rawValue;
                if (v201)
                {
                  outlined consume of JSONEncoderValue(v400, v389._rawValue, 5u);
                  v143 = v14;
                  v144 = _a._rawValue;
                  v145 = 3;
LABEL_520:
                  outlined consume of JSONEncoderValue(v143, v144, v145);
                  v356 = v49._rawValue;
                  goto LABEL_515;
                }

                outlined consume of JSONEncoderValue(v400, v389._rawValue, 5u);
                v13 = 24;
                v150 = v14;
                if (v154 == v375)
                {
                  break;
                }

LABEL_212:
                v155 = 0;
                if (v154 >= *(v150 + 16))
                {
                  goto LABEL_543;
                }
              }
            }

            v253 = *(v10 + 16);
            if (*(v10 + 8))
            {
              v254 = swift_isUniquelyReferenced_nonNull_native();
              *(v10 + 16) = v253;
              if ((v254 & 1) == 0)
              {
                v253 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v253 + 2) + 1, 1, v253);
                *(v10 + 16) = v253;
              }

              v256 = *(v253 + 2);
              v255 = *(v253 + 3);
              if (v256 >= v255 >> 1)
              {
                v253 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v255 > 1), v256 + 1, 1, v253);
                *(v10 + 16) = v253;
              }

              *(v253 + 2) = v256 + 1;
              v253[v256 + 32] = 10;
              if (__OFSUB__(*v10, 1))
              {
                goto LABEL_570;
              }

              --*v10;
              JSONWriter.writeIndent()();
              v253 = *(v10 + 16);
            }

            v257 = swift_isUniquelyReferenced_nonNull_native();
            *(v10 + 16) = v253;
            if ((v257 & 1) == 0)
            {
              v253 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v253 + 2) + 1, 1, v253);
              *(v10 + 16) = v253;
            }

            v144 = _a._rawValue;
            v259 = *(v253 + 2);
            v258 = *(v253 + 3);
            if (v259 >= v258 >> 1)
            {
              v290 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v258 > 1), v259 + 1, 1, v253);
              v144 = _a._rawValue;
              v253 = v290;
              *(v10 + 16) = v290;
            }

            *(v253 + 2) = v259 + 1;
            v253[v259 + 32] = 93;
            v143 = v408;
            v145 = 3;
            goto LABEL_415;
          }

          if (v14 > 5)
          {
            if (v14 == 6)
            {
              specialized Array.append<A>(contentsOf:)(v107);
            }

            else
            {
              specialized Array.append<A>(contentsOf:)("null", 4);
            }

            goto LABEL_416;
          }

          if (v14 == 4)
          {
            if (v15 >= 510)
            {
              lazy protocol witness table accessor for type JSONError and conformance JSONError();
              swift_allocError();
              *v357 = 0;
              *(v357 + 8) = 0;
              *(v357 + 16) = 0;
              *(v357 + 24) = 1;
              *(v357 + 32) = 0;
              *(v357 + 40) = 0;
              *(v357 + 48) = 2;
              swift_willThrow();
              v358 = v107;
              v359 = _a._rawValue;
              v360 = 4;
              goto LABEL_523;
            }

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v18 = *(*(v10 + 16) + 16);
            specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v18);
            v125 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v18, 123);
            v20 = v10 + 16;
            _NSBundleDeallocatingImmortalBundle(v125, v126);
            if (*(v10 + 8))
            {
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              v18 = *(*(v10 + 16) + 16);
              specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v18);
              v127 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v18, 10);
              v20 = v10 + 16;
              _NSBundleDeallocatingImmortalBundle(v127, v128);
              if (__OFADD__(*v10, 1))
              {
                goto LABEL_563;
              }

              ++*v10;
              if (*(v107 + 16))
              {
                v20 = v10;
                JSONWriter.writeIndent()();
              }
            }

            v372 = v9;
            v374 = swift_allocObject();
            *(v374 + 16) = 1;
            if (*(v10 + 9) != 1)
            {
              v260 = v49._rawValue;
              v12 = v107 + 64;
              v261 = 1 << *(v107 + 32);
              if (v261 < 64)
              {
                v262 = ~(-1 << v261);
              }

              else
              {
                v262 = -1;
              }

              v263 = v262 & *(v107 + 64);
              v17 = (v261 + 63) >> 6;

              v264 = 0;
              if (v263)
              {
                while (1)
                {
                  v16 = v264;
LABEL_392:
                  v265 = __clz(__rbit64(v263)) | (v16 << 6);
                  v266 = (*(v408 + 48) + 16 * v265);
                  v15 = *v266;
                  v18 = v266[1];
                  v267 = *(v408 + 56) + 24 * v265;
                  v20 = *v267;
                  v14 = *(v267 + 8);
                  v268 = *(v267 + 16);

                  outlined copy of JSONEncoderValue(v20, v14, v268);
                  v269 = v419;
                  serializeObjectElement #1 (key:value:depth:) in JSONWriter.serializeObject(_:depth:)(v15, v18, v20, v14, v268, v413 + 2, v374, v415);
                  v419 = v269;
                  if (v269)
                  {
                    break;
                  }

                  v263 &= v263 - 1;
                  outlined consume of JSONEncoderValue(v20, v14, v268);

                  v264 = v16;
                  v260 = rawValue;
                  v13 = 24;
                  if (!v263)
                  {
                    goto LABEL_389;
                  }
                }

                outlined consume of JSONEncoderValue(v20, v14, v268);

                outlined consume of JSONEncoderValue(v408, _a._rawValue, 4u);
LABEL_508:

                goto LABEL_514;
              }

LABEL_389:
              while (1)
              {
                v16 = v264 + 1;
                if (__OFADD__(v264, 1))
                {
                  break;
                }

                if (v16 >= v17)
                {
                  v270 = v408;
                  v15 = v413;
                  v10 = v415;
                  v49._rawValue = v260;
                  v9 = v372;
                  goto LABEL_411;
                }

                v263 = *(v12 + 8 * v16);
                ++v264;
                if (v263)
                {
                  goto LABEL_392;
                }
              }

              __break(1u);
              __break(1u);
LABEL_529:
              v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
              *(v20 + 16) = v18;
              goto LABEL_6;
            }

            if (one-time initialization token for compatibility1 != -1)
            {
              swift_once();
            }

            if (static JSONEncoder.compatibility1)
            {
              v129 = v49._rawValue;
              v130 = *(v107 + 16);
              if (v130)
              {
                v417 = MEMORY[0x1E69E7CC0];
                specialized ContiguousArray.reserveCapacity(_:)(v130);
                v131 = v107 + 64;
                v14 = _HashTable.startBucket.getter();
                v367 = v107 + 64;
                do
                {
                  if ((v14 & 0x8000000000000000) != 0 || v14 >= 1 << *(v107 + 32))
                  {
                    goto LABEL_544;
                  }

                  if ((*(v131 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
                  {
                    goto LABEL_545;
                  }

                  v10 = v130;
                  v378 = *(v408 + 36);
                  v132 = *(v408 + 56) + 24 * v14;
                  v134 = *v132;
                  v133 = *(v132 + 8);
                  v135 = *(v132 + 16);
                  v381 = String._bridgeToObjectiveCImpl()();
                  v136 = v417;
                  v388 = v135;
                  outlined copy of JSONEncoderValue(v134, v133, v135);
                  v398._rawValue = v133;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v136[2] + 1, 1);
                    v136 = v417;
                  }

                  v138 = v136[2];
                  v137 = v136[3];
                  v9 = v138 + 1;
                  if (v138 >= v137 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v137 > 1), v138 + 1, 1);
                    v136 = v417;
                  }

                  v136[2] = v9;
                  v139 = &v136[4 * v138];
                  v139[4] = v381;
                  v139[5] = v134;
                  v139[6] = v398._rawValue;
                  *(v139 + 56) = v388;
                  if (v14 >= -(-1 << *(v408 + 32)))
                  {
                    goto LABEL_546;
                  }

                  v131 = v367;
                  v10 = v415;
                  v129 = rawValue;
                  v13 = 24;
                  v9 = v372;
                  if ((*(v367 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
                  {
                    goto LABEL_547;
                  }

                  v107 = v408;
                  if (v378 != *(v408 + 36))
                  {
                    goto LABEL_548;
                  }

                  v14 = _HashTable.occupiedBucket(after:)();
                  --v130;
                }

                while (v130);
              }

              else
              {
                v136 = MEMORY[0x1E69E7CC0];
              }

              v417 = v136;

              v278 = v419;
              specialized MutableCollection<>.sort(by:)(&v417);
              v15 = v413;
              v419 = v278;
              if (v278)
              {
LABEL_576:
                v364 = v419;
                goto LABEL_578;
              }

              v49._rawValue = v129;

              v279 = v417;
              v403._rawValue = v417[2];
              if (v403._rawValue)
              {
                v9 = 0;
                v280 = (v417 + 7);
                v390 = v417;
                while (1)
                {
                  if (v9 >= v279[2])
                  {
                    goto LABEL_552;
                  }

                  v281 = *(v280 - 3);
                  v14 = *(v280 - 2);
                  v282 = *(v280 - 1);
                  v283 = *v280;
                  v284 = static String._unconditionallyBridgeFromObjectiveC(_:)(v281);
                  v286 = v285;
                  v287 = v281;
                  outlined copy of JSONEncoderValue(v14, v282, v283);
                  v288 = v419;
                  serializeObjectElement #1 (key:value:depth:) in JSONWriter.serializeObject(_:depth:)(v284, v286, v14, v282, v283, v413 + 2, v374, v10);
                  v419 = v288;
                  if (v288)
                  {
                    break;
                  }

                  ++v9;
                  outlined consume of JSONEncoderValue(v14, v282, v283);
                  v280 += 32;
                  v279 = v390;
                  if (v403._rawValue == v9)
                  {
                    goto LABEL_409;
                  }
                }

                outlined consume of JSONEncoderValue(v14, v282, v283);
                outlined consume of JSONEncoderValue(v408, _a._rawValue, 4u);

                goto LABEL_508;
              }

LABEL_410:
              v270 = v408;
            }

            else
            {
              v417 = specialized _copyCollectionToContiguousArray<A>(_:)(v107);
              v271 = v419;
              specialized MutableCollection<>.sort(by:)(&v417);
              v419 = v271;
              if (v271)
              {
                goto LABEL_576;
              }

              v272 = v417;
              v402._rawValue = v417[2];
              if (!v402._rawValue)
              {
                goto LABEL_410;
              }

              v10 = 0;
              v9 = (v417 + 8);
              do
              {
                if (v10 >= v272[2])
                {
                  goto LABEL_551;
                }

                v273 = v272;
                v274 = *(v9 - 16);
                v14 = *(v9 - 8);
                v275 = *v9;
                v277 = *(v9 - 32);
                v276 = *(v9 - 24);

                outlined copy of JSONEncoderValue(v274, v14, v275);
                serializeObjectElement #1 (key:value:depth:) in JSONWriter.serializeObject(_:depth:)(v277, v276, v274, v14, v275, v413 + 2, v374, v415);

                ++v10;
                outlined consume of JSONEncoderValue(v274, v14, v275);
                v9 += 40;
                v272 = v273;
              }

              while (v402._rawValue != v10);
              v419 = 0;
              v10 = v415;
LABEL_409:
              v49._rawValue = rawValue;
              v270 = v408;
              v15 = v413;
              v13 = 24;
              v9 = v372;
            }

LABEL_411:

            if (*(v10 + 8) == 1)
            {
              specialized Array.append<A>(contentsOf:)("\n", 1);
              if (__OFSUB__(*v10, 1))
              {
                goto LABEL_566;
              }

              --*v10;
              JSONWriter.writeIndent()();
            }

            specialized Array.append<A>(contentsOf:)("}", 1);

            v143 = v270;
            v144 = _a._rawValue;
            v145 = 4;
            goto LABEL_415;
          }

          JSONWriter.serializePreformattedByteArray(_:_:depth:)(v107, _a, v15 + 2);
          v419 = v142;
          v143 = v107;
          v144 = _a._rawValue;
          v145 = 5;
          if (v142)
          {
            goto LABEL_520;
          }

LABEL_415:
          outlined consume of JSONEncoderValue(v143, v144, v145);
LABEL_416:
          if (v9 == v376)
          {
            break;
          }

          v104 = 0;
          if (v9 >= *(v49._rawValue + 2))
          {
            goto LABEL_536;
          }
        }
      }

      v291 = *(v10 + 16);
      if (*(v10 + 8))
      {
        v292 = swift_isUniquelyReferenced_nonNull_native();
        *(v10 + 16) = v291;
        if ((v292 & 1) == 0)
        {
          v291 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v291 + 2) + 1, 1, v291);
          *(v10 + 16) = v291;
        }

        v294 = *(v291 + 2);
        v293 = *(v291 + 3);
        if (v294 >= v293 >> 1)
        {
          v291 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v293 > 1), v294 + 1, 1, v291);
          *(v10 + 16) = v291;
        }

        *(v291 + 2) = v294 + 1;
        v291[v294 + 32] = 10;
        if (__OFSUB__(*v10, 1))
        {
          goto LABEL_565;
        }

        --*v10;
        JSONWriter.writeIndent()();
        v291 = *(v10 + 16);
      }

      v295 = swift_isUniquelyReferenced_nonNull_native();
      *(v10 + 16) = v291;
      if ((v295 & 1) == 0)
      {
        v291 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v291 + 2) + 1, 1, v291);
        *(v10 + 16) = v291;
      }

      v296 = v371;
      v298 = *(v291 + 2);
      v297 = *(v291 + 3);
      if (v298 >= v297 >> 1)
      {
        v332 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v297 > 1), v298 + 1, 1, v291);
        v296 = v371;
        v291 = v332;
        *(v10 + 16) = v332;
      }

      *(v291 + 2) = v298 + 1;
      v291[v298 + 32] = 93;
      outlined consume of JSONEncoderValue(v49._rawValue, v296, 3u);
      v69 = v384;
      v45 = v396;
      v9 = v419;
LABEL_469:
      if (v45 == v69)
      {
        goto LABEL_476;
      }

      v46 = 0;
    }
  }

  if (v12 > 5u)
  {
    if (v12 == 6)
    {

      specialized Array.append<A>(contentsOf:)(v39);
      return;
    }

    v37 = "null";
    v38 = 4;
    goto LABEL_474;
  }

  if (v12 != 4)
  {
    if (__OFADD__(v11, 1))
    {
      goto LABEL_541;
    }

    JSONWriter.serializePreformattedByteArray(_:_:depth:)(v14, v13, v11 + 1);
    return;
  }

  if (__OFADD__(v11, 1))
  {
    goto LABEL_540;
  }

  if ((v11 + 1) > 511)
  {
LABEL_475:
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v333 = 0;
    *(v333 + 8) = 0;
    *(v333 + 16) = 0;
    *(v333 + 24) = 1;
    *(v333 + 32) = 0;
    *(v333 + 40) = 0;
    *(v333 + 48) = 2;
    swift_willThrow();
    return;
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v23 = *(*(v10 + 16) + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v23);
  v28 = *(v10 + 16);
  *(v28 + 16) = v23 + 1;
  v23[v28 + 32] = 123;
  if (*(v10 + 8))
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v23 = *(*(v10 + 16) + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v23);
    v29 = *(v10 + 16);
    *(v29 + 16) = v23 + 1;
    v23[v29 + 32] = 10;
    if (__OFADD__(*v10, 1))
    {
      goto LABEL_555;
    }

    ++*v10;
    if (*(v14 + 16))
    {
      JSONWriter.writeIndent()();
    }
  }

  v413 = swift_allocObject();
  *(v413 + 16) = 1;
  rawValue = v11 + 1;
  if (*(v10 + 9) == 1)
  {
    if (one-time initialization token for compatibility1 != -1)
    {
      goto LABEL_557;
    }

    goto LABEL_28;
  }

  v419 = v9;
  v9 = v14 + 64;
  v338 = 1 << *(v14 + 32);
  v339 = -1;
  if (v338 < 64)
  {
    v339 = ~(-1 << v338);
  }

  v11 = v339 & *(v14 + 64);
  v340 = (v338 + 63) >> 6;
  v411 = v14;

  v341 = 0;
  v416 = v10;
  if (v11)
  {
    while (1)
    {
      v14 = v341;
LABEL_487:
      v342 = __clz(__rbit64(v11)) | (v14 << 6);
      v343 = (*(v411 + 48) + 16 * v342);
      v13 = *v343;
      v23 = v343[1];
      v344 = *(v411 + 56) + 24 * v342;
      v345 = *v344;
      v12 = *(v344 + 8);
      v346 = *(v344 + 16);

      outlined copy of JSONEncoderValue(v345, v12, v346);
      v347 = v419;
      serializeObjectElement #1 (key:value:depth:) in JSONWriter.serializeObject(_:depth:)(v13, v23, v345, v12, v346, rawValue, v413, v416);
      v419 = v347;
      if (v347)
      {
        break;
      }

      v11 &= v11 - 1;
      outlined consume of JSONEncoderValue(v345, v12, v346);

      v341 = v14;
      v10 = v416;
      if (!v11)
      {
        goto LABEL_484;
      }
    }

    outlined consume of JSONEncoderValue(v345, v12, v346);

    return;
  }

  while (1)
  {
LABEL_484:
    v14 = v341 + 1;
    if (__OFADD__(v341, 1))
    {
      __break(1u);
LABEL_526:
      __break(1u);
LABEL_527:
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
      *(v10 + 16) = v23;
      goto LABEL_11;
    }

    if (v14 >= v340)
    {
      break;
    }

    v11 = *(v9 + 8 * v14);
    ++v341;
    if (v11)
    {
      goto LABEL_487;
    }
  }

  v9 = v419;
LABEL_497:

  if (*(v10 + 8) == 1)
  {
    specialized Array.append<A>(contentsOf:)("\n", 1);
    if (!__OFSUB__(*v10, 1))
    {
      --*v10;
      JSONWriter.writeIndent()();
      goto LABEL_500;
    }

    __break(1u);
LABEL_559:
    __break(1u);
LABEL_560:
    __break(1u);
LABEL_561:
    __break(1u);
LABEL_562:
    __break(1u);
LABEL_563:
    __break(1u);
LABEL_564:
    __break(1u);
LABEL_565:
    __break(1u);
LABEL_566:
    __break(1u);
LABEL_567:
    __break(1u);
LABEL_568:
    __break(1u);
LABEL_569:
    __break(1u);
LABEL_570:
    __break(1u);
LABEL_571:
    __break(1u);
LABEL_572:
    __break(1u);
LABEL_573:
    __break(1u);
LABEL_574:
    v364 = v9;
LABEL_578:

    __break(1u);
  }

  else
  {
LABEL_500:
    specialized Array.append<A>(contentsOf:)("}", 1);
  }
}

void JSONWriter.serializeJSON(_:depth:)(Swift::Int a1, unint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (a3 > 3u)
  {
    if (a3 > 5u)
    {
      if (a3 == 6)
      {

        specialized Array.append<A>(contentsOf:)(v7);
        return;
      }

      v5 = "null";
      v6 = 4;
      goto LABEL_24;
    }

    if (a3 == 4)
    {
      if (!__OFADD__(a4, 1))
      {
        JSONWriter.serializeObject(_:depth:)(a1, a4 + 1);
        return;
      }

      __break(1u);
    }

    else if (!__OFADD__(a4, 1))
    {
      JSONWriter.serializePreformattedByteArray(_:_:depth:)(a1, a2, a4 + 1);
      return;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v4 = (a1 & 1) == 0;
      if (a1)
      {
        v5 = "true";
      }

      else
      {
        v5 = "false";
      }

      if (v4)
      {
        v6 = 5;
      }

      else
      {
        v6 = 4;
      }

LABEL_24:
      specialized Array.append<A>(contentsOf:)(v5, v6);
      return;
    }

    if (!__OFADD__(a4, 1))
    {
      JSONWriter.serializeArray(_:depth:)(a1, a4 + 1);
      return;
    }

    goto LABEL_27;
  }

  if (a3)
  {

    specialized Array.append<A>(contentsOf:)(a1, a2);
  }

  else
  {
    JSONWriter.serializeString(_:)(*&a1);
  }
}

char *specialized Array.append<A>(contentsOf:)(char *result, char *a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2);
  v5 = &a2[v4];
  if (__OFADD__(v4, a2))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = a2;
  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v3 + 3) >> 1, v9 < v5))
  {
    if (v4 <= v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v3);
    v9 = *(v3 + 3) >> 1;
  }

  v11 = *(v3 + 2);
  v12 = v9 - v11;
  result = specialized UnsafeBufferPointer._copyContents(initializing:)(&v3[v11 + 32], v9 - v11, v7, v6);
  if (v13 < v6)
  {
    goto LABEL_22;
  }

  if (v13 < 1)
  {
    goto LABEL_12;
  }

  v14 = *(v3 + 2);
  v15 = __OFADD__(v14, v13);
  v16 = v14 + v13;
  if (!v15)
  {
    *(v3 + 2) = v16;
LABEL_12:
    if (v13 != v12 || result == 0 || result == a2)
    {
      goto LABEL_20;
    }

    goto LABEL_24;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  v19 = *(v3 + 2);
  v21 = *result++;
  v20 = v21;
  while (1)
  {
    v22 = *(v3 + 3);
    v23 = v22 >> 1;
    if ((v22 >> 1) < v19 + 1)
    {
      break;
    }

    if (v19 < v23)
    {
      goto LABEL_28;
    }

LABEL_25:
    *(v3 + 2) = v19;
  }

  v26 = result;
  v27 = a2;
  v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v19 + 1, 1, v3);
  a2 = v27;
  v3 = v28;
  result = v26;
  v23 = *(v3 + 3) >> 1;
  if (v19 >= v23)
  {
    goto LABEL_25;
  }

LABEL_28:
  v24 = v19 + 32;
  while (1)
  {
    v3[v24] = v20;
    if (result == a2)
    {
      break;
    }

    v25 = *result++;
    v20 = v25;
    if (++v24 - v23 == 32)
    {
      v19 = v23;
      goto LABEL_25;
    }
  }

  *(v3 + 2) = v24 - 31;
LABEL_20:
  *v2 = v3;
  return result;
}

char *specialized UnsafeBufferPointer._copyContents(initializing:)(void *a1, int64_t a2, char *__src, int64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, v5);
    v4 += v5;
  }

  return v4;
}

Swift::Int __swiftcall JSONWriter.serializeString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v4[v6 + 32] = 34;
  *(v1 + 16) = v4;
  v12[0] = countAndFlagsBits;
  v12[1] = object;

  specialized String.withUTF8<A>(_:)(v12, v1);

  v7 = *(v1 + 16);
  v8 = *(v7 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 + 1, 1, v7);
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v7[v10 + 32] = 34;
  *(v1 + 16) = v7;
  return v8 - v6 + 1;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t result, char a2)
{
  v3 = *v2;
  *(v3 + 16) = result + 1;
  *(v3 + result + 32) = a2;
  return result;
}

Swift::Int specialized Array.append<A>(contentsOf:)(Swift::Int result, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    result = String.UTF8View._foreignCount()();
    v3 = result;
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || *(v4 + 3) >> 1 < v6)
    {
      if (v5 <= v6)
      {
        v8 = v5 + v3;
      }

      else
      {
        v8 = v5;
      }

      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v8, 1, v4);
    }

    result = _StringGuts.copyUTF8(into:)();
    if (v9)
    {
      goto LABEL_22;
    }

    v10 = result;

    if (v10 >= v3)
    {
      if (v10 < 1)
      {
LABEL_17:
        *v2 = v4;
        return result;
      }

      v11 = *(v4 + 2);
      v12 = __OFADD__(v11, v10);
      v13 = v11 + v10;
      if (!v12)
      {
        *(v4 + 2) = v13;
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

unint64_t closure #1 in JSONWriter.serializeStringContents(_:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
LABEL_177:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    return specialized Array.append<A>(contentsOf:)(MEMORY[0x1E69E7CC0]);
  }

  v4 = result + a2;
  v5 = result;
  do
  {
    while (1)
    {
      v6 = *v5;
      if (v6 > 0xC)
      {
        break;
      }

      if (*v5 > 9u)
      {
        if (v6 == 10)
        {
          if (result < v5)
          {
            result = specialized Array.append<A>(contentsOf:)(result, &v5[-result]);
          }

          v7 = *(a3 + 16);
          v39 = *(v7 + 16);
          v40 = v39 + 2;
          if (__OFADD__(v39, 2))
          {
            goto LABEL_154;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          *(a3 + 16) = v7;
          if (!result || (v41 = *(v7 + 24) >> 1, v41 < v40))
          {
            if (*(v7 + 16) <= v40)
            {
              v42 = v40;
            }

            else
            {
              v42 = *(v7 + 16);
            }

            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v42, 1, v7);
            v7 = result;
            *(a3 + 16) = result;
            v41 = *(result + 24) >> 1;
          }

          v43 = *(v7 + 16);
          if (v41 - v43 < 2)
          {
            goto LABEL_165;
          }

          *(v7 + v43 + 32) = word_1EEED1AC0;
          v13 = v43 + 2;
          if (__OFADD__(v43, 2))
          {
            goto LABEL_168;
          }

          goto LABEL_118;
        }

        if (v6 == 12)
        {
          if (result < v5)
          {
            result = specialized Array.append<A>(contentsOf:)(result, &v5[-result]);
          }

          v7 = *(a3 + 16);
          v19 = *(v7 + 16);
          v20 = v19 + 2;
          if (__OFADD__(v19, 2))
          {
            goto LABEL_157;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          *(a3 + 16) = v7;
          if (!result || (v21 = *(v7 + 24) >> 1, v21 < v20))
          {
            if (*(v7 + 16) <= v20)
            {
              v22 = v20;
            }

            else
            {
              v22 = *(v7 + 16);
            }

            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v22, 1, v7);
            v7 = result;
            *(a3 + 16) = result;
            v21 = *(result + 24) >> 1;
          }

          v23 = *(v7 + 16);
          if (v21 - v23 < 2)
          {
            goto LABEL_160;
          }

          *(v7 + v23 + 32) = word_1EEED1A98;
          v13 = v23 + 2;
          if (__OFADD__(v23, 2))
          {
            goto LABEL_166;
          }

          goto LABEL_118;
        }

LABEL_121:
        if (v6 <= 0xF)
        {
          if (result < v5)
          {
            specialized Array.append<A>(contentsOf:)(result, &v5[-result]);
          }

          result = specialized Array.append<A>(contentsOf:)(&outlined read-only object #8 of closure #1 in JSONWriter.serializeStringContents(_:));
          v49 = *v5;
          if (v49 < 0xA)
          {
            v50 = v49 | 0x30;
          }

          else
          {
            if (v49 > 0xF)
            {
              goto LABEL_176;
            }

            v50 = v49 + 87;
          }

          v56 = *(a3 + 16);
        }

        else
        {
          if (v6 > 0x1F)
          {
            goto LABEL_123;
          }

          if (result < v5)
          {
            specialized Array.append<A>(contentsOf:)(result, &v5[-result]);
          }

          specialized Array.append<A>(contentsOf:)(&outlined read-only object #9 of closure #1 in JSONWriter.serializeStringContents(_:));
          if (*v5 <= 0x9Fu)
          {
            v51 = (*v5 >> 4) | 0x30;
          }

          else
          {
            v51 = (*v5 >> 4) + 87;
          }

          v52 = *(a3 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(a3 + 16) = v52;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52);
            *(a3 + 16) = v52;
          }

          v55 = *(v52 + 2);
          v54 = *(v52 + 3);
          if (v55 >= v54 >> 1)
          {
            v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v52);
            *(a3 + 16) = v52;
          }

          *(v52 + 2) = v55 + 1;
          v52[v55 + 32] = v51;
          v56 = *(a3 + 16);
          v57 = *v5 & 0xF;
          if (v57 <= 9)
          {
            v50 = *v5 & 0xF | 0x30;
          }

          else
          {
            v50 = v57 + 87;
          }
        }

        v58 = swift_isUniquelyReferenced_nonNull_native();
        *(a3 + 16) = v56;
        if ((v58 & 1) == 0)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v56 + 2) + 1, 1, v56);
          *(a3 + 16) = v56;
        }

        v60 = *(v56 + 2);
        v59 = *(v56 + 3);
        if (v60 >= v59 >> 1)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v56);
          *(a3 + 16) = v56;
        }

        *(v56 + 2) = v60 + 1;
        v56[v60 + 32] = v50;
        goto LABEL_119;
      }

      if (v6 == 8)
      {
        if (result < v5)
        {
          result = specialized Array.append<A>(contentsOf:)(result, &v5[-result]);
        }

        v7 = *(a3 + 16);
        v29 = *(v7 + 16);
        v30 = v29 + 2;
        if (__OFADD__(v29, 2))
        {
          goto LABEL_156;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        *(a3 + 16) = v7;
        if (!result || (v31 = *(v7 + 24) >> 1, v31 < v30))
        {
          if (*(v7 + 16) <= v30)
          {
            v32 = v30;
          }

          else
          {
            v32 = *(v7 + 16);
          }

          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v32, 1, v7);
          v7 = result;
          *(a3 + 16) = result;
          v31 = *(result + 24) >> 1;
        }

        v33 = *(v7 + 16);
        if (v31 - v33 < 2)
        {
          goto LABEL_163;
        }

        *(v7 + v33 + 32) = word_1EEED1A70;
        v13 = v33 + 2;
        if (__OFADD__(v33, 2))
        {
          goto LABEL_170;
        }

        goto LABEL_118;
      }

      if (v6 != 9)
      {
        goto LABEL_121;
      }

      if (result < v5)
      {
        result = specialized Array.append<A>(contentsOf:)(result, &v5[-result]);
      }

      v7 = *(a3 + 16);
      v8 = *(v7 + 16);
      v9 = v8 + 2;
      if (__OFADD__(v8, 2))
      {
        goto LABEL_158;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + 16) = v7;
      if (!result || (v10 = *(v7 + 24) >> 1, v10 < v9))
      {
        if (*(v7 + 16) <= v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = *(v7 + 16);
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v7);
        v7 = result;
        *(a3 + 16) = result;
        v10 = *(result + 24) >> 1;
      }

      v12 = *(v7 + 16);
      if (v10 - v12 < 2)
      {
        goto LABEL_164;
      }

      *(v7 + v12 + 32) = word_1EEED1B10;
      v13 = v12 + 2;
      if (__OFADD__(v12, 2))
      {
        goto LABEL_172;
      }

LABEL_118:
      *(v7 + 16) = v13;
      *(a3 + 16) = v7;
LABEL_119:
      result = ++v5;
      if (v5 >= v4)
      {
        goto LABEL_149;
      }
    }

    if (*v5 <= 0x2Eu)
    {
      if (v6 == 13)
      {
        if (result < v5)
        {
          result = specialized Array.append<A>(contentsOf:)(result, &v5[-result]);
        }

        v7 = *(a3 + 16);
        v34 = *(v7 + 16);
        v35 = v34 + 2;
        if (__OFADD__(v34, 2))
        {
          goto LABEL_153;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        *(a3 + 16) = v7;
        if (!result || (v36 = *(v7 + 24) >> 1, v36 < v35))
        {
          if (*(v7 + 16) <= v35)
          {
            v37 = v35;
          }

          else
          {
            v37 = *(v7 + 16);
          }

          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v37, 1, v7);
          v7 = result;
          *(a3 + 16) = result;
          v36 = *(result + 24) >> 1;
        }

        v38 = *(v7 + 16);
        if (v36 - v38 < 2)
        {
          goto LABEL_161;
        }

        *(v7 + v38 + 32) = word_1EEED1AE8;
        v13 = v38 + 2;
        if (__OFADD__(v38, 2))
        {
          goto LABEL_169;
        }

        goto LABEL_118;
      }

      if (v6 == 34)
      {
        if (result < v5)
        {
          result = specialized Array.append<A>(contentsOf:)(result, &v5[-result]);
        }

        v7 = *(a3 + 16);
        v14 = *(v7 + 16);
        v15 = v14 + 2;
        if (__OFADD__(v14, 2))
        {
          goto LABEL_155;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        *(a3 + 16) = v7;
        if (!result || (v16 = *(v7 + 24) >> 1, v16 < v15))
        {
          if (*(v7 + 16) <= v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = *(v7 + 16);
          }

          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v17, 1, v7);
          v7 = result;
          *(a3 + 16) = result;
          v16 = *(result + 24) >> 1;
        }

        v18 = *(v7 + 16);
        if (v16 - v18 < 2)
        {
          goto LABEL_159;
        }

        *(v7 + v18 + 32) = word_1EEED19F8;
        v13 = v18 + 2;
        if (__OFADD__(v18, 2))
        {
          goto LABEL_167;
        }

        goto LABEL_118;
      }

      goto LABEL_121;
    }

    if (v6 != 47)
    {
      if (v6 == 92)
      {
        if (result < v5)
        {
          result = specialized Array.append<A>(contentsOf:)(result, &v5[-result]);
        }

        v7 = *(a3 + 16);
        v24 = *(v7 + 16);
        v25 = v24 + 2;
        if (__OFADD__(v24, 2))
        {
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
          goto LABEL_177;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        *(a3 + 16) = v7;
        if (!result || (v26 = *(v7 + 24) >> 1, v26 < v25))
        {
          if (*(v7 + 16) <= v25)
          {
            v27 = v25;
          }

          else
          {
            v27 = *(v7 + 16);
          }

          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v27, 1, v7);
          v7 = result;
          *(a3 + 16) = result;
          v26 = *(result + 24) >> 1;
        }

        v28 = *(v7 + 16);
        if (v26 - v28 < 2)
        {
          goto LABEL_162;
        }

        *(v7 + v28 + 32) = word_1EEED1A20;
        v13 = v28 + 2;
        if (__OFADD__(v28, 2))
        {
          goto LABEL_171;
        }

        goto LABEL_118;
      }

      goto LABEL_121;
    }

    if ((*(a3 + 10) & 1) == 0)
    {
      if (result < v5)
      {
        result = specialized Array.append<A>(contentsOf:)(result, &v5[-result]);
      }

      v7 = *(a3 + 16);
      v44 = *(v7 + 16);
      v45 = v44 + 2;
      if (__OFADD__(v44, 2))
      {
        goto LABEL_173;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + 16) = v7;
      if (!result || (v46 = *(v7 + 24) >> 1, v46 < v45))
      {
        if (*(v7 + 16) <= v45)
        {
          v47 = v45;
        }

        else
        {
          v47 = *(v7 + 16);
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v47, 1, v7);
        v7 = result;
        *(a3 + 16) = result;
        v46 = *(result + 24) >> 1;
      }

      v48 = *(v7 + 16);
      if (v46 - v48 < 2)
      {
        goto LABEL_174;
      }

      *(v7 + v48 + 32) = word_1EEED1A48;
      v13 = v48 + 2;
      if (__OFADD__(v48, 2))
      {
        goto LABEL_175;
      }

      goto LABEL_118;
    }

LABEL_123:
    ++v5;
  }

  while (v5 < v4);
LABEL_149:
  if (result < v5)
  {
    specialized Array.append<A>(contentsOf:)(result, &v5[-result]);
  }

  return specialized Array.append<A>(contentsOf:)(MEMORY[0x1E69E7CC0]);
}

uint64_t closure #1 in TimeZoneCache.fixed(_:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = TimeZoneCache.State.fixed(_:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return (*(*(a2 - 8) + 16))(a3, a1, a2);
}

{
  return (*(*(a2 - 8) + 16))(a3, a1, a2);
}

uint64_t type metadata accessor for JSONDecoder()
{
  result = type metadata singleton initialization cache for JSONDecoder;
  if (!type metadata singleton initialization cache for JSONDecoder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _JSONKeyedEncodingContainer.encode<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v179 = a5;
  v177 = a3;
  v9 = *(a3 + 16);
  v189 = type metadata accessor for Optional();
  v178 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v11 = &v167 - v10;
  v12 = *(a4 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v167 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = v5;
  v17 = *v5;
  (*(v12 + 16))(v16, a1, a4, v14);
  v18 = *(v9 - 8);
  v20 = v18 + 16;
  v19 = *(v18 + 16);
  v176 = a2;
  v174 = v19;
  (v19)(v11, a2, v9);
  (*(v18 + 56))(v11, 0, 1, v9);
  v21 = *(v177 + 24);
  v22 = v179;
  v23 = v180;
  v179 = v17;
  v24 = __JSONEncoder.wrapGeneric<A, B>(_:for:)(v16, v11, a4, v9, v22, v21);
  v27 = (v178 + 8);
  if (v23)
  {
    (*v27)(v11, v189);
    return (*(v12 + 8))(v16, a4);
  }

  v173 = v18;
  v180 = 0;
  v29 = v26;
  v30 = *v27;
  v31 = v24;
  v32 = v11;
  v33 = v25;
  v34 = v189;
  LODWORD(v189) = v26;
  v30(v32, v34);
  if (v29 == 255)
  {
    v35 = MEMORY[0x1E69E7CC8];
  }

  else
  {
    v35 = v31;
  }

  if (v29 == 255)
  {
    v36 = 0;
  }

  else
  {
    v36 = v33;
  }

  v177 = v36;
  v178 = v35;
  if (v29 == 255)
  {
    v37 = 4;
  }

  else
  {
    v37 = v189;
  }

  (*(v12 + 8))(v16, a4);
  v39 = *(v175 + 8);
  v38 = *(v175 + 16);
  v188[3] = v9;
  v188[4] = v21;
  v189 = v21;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v188);
  (v174)(boxed_opaque_existential_0, v176, v9);
  v41 = *(v179 + 152);
  if (!v41)
  {
    v44 = dispatch thunk of CodingKey.stringValue.getter();
    v45 = v55;
    LODWORD(v47) = v37;
    goto LABEL_95;
  }

  if (v41 != 1)
  {
    v171 = v37;

    v56 = __JSONEncoder.codingPath.getter();
    v57 = _CodingPathNode.path.getter(v38);
    v184 = v56;
    specialized Array.append<A>(contentsOf:)(v57);
    v58 = v184;
    outlined init with copy of Hashable & Sendable(v188, &v184);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
    }

    v60 = v58[2];
    v59 = v58[3];
    v172 = v39;
    if (v60 >= v59 >> 1)
    {
      v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v58);
    }

    v61 = __swift_mutable_project_boxed_opaque_existential_1(&v184, v186);
    v62 = MEMORY[0x1EEE9AC00](v61);
    v64 = &v167 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v65 + 16))(v64, v62);
    v182 = v9;
    v183 = v189;
    v66 = __swift_allocate_boxed_opaque_existential_0(&v181);
    (*(v173 + 32))(v66, v64, v9);
    v58[2] = v60 + 1;
    outlined init with take of Equatable(&v181, &v58[5 * v60 + 4]);
    __swift_destroy_boxed_opaque_existential_1(&v184);
    v41(&v184, v58);

    LOBYTE(v9) = v187;
    __swift_project_boxed_opaque_existential_1(&v184, v186);
    v67 = dispatch thunk of CodingKey.stringValue.getter();
    v45 = v68;
    v69 = v41;
    v44 = v67;
    sub_1807A5C7C(v69);
    __swift_destroy_boxed_opaque_existential_1(&v184);
    goto LABEL_94;
  }

  v42 = dispatch thunk of CodingKey.stringValue.getter();
  v44 = v42;
  v45 = v43;
  if ((v43 & 0x2000000000000000) != 0)
  {
    v46 = HIBYTE(v43) & 0xF;
  }

  else
  {
    v46 = v42 & 0xFFFFFFFFFFFFLL;
  }

  LODWORD(v47) = v37;
  if (v46)
  {
    v172 = v39;
    v48 = String.index(after:)();
    v49 = 7;
    if (((v45 >> 60) & ((v44 & 0x800000000000000) == 0)) != 0)
    {
      v49 = 11;
    }

    v173 = 4 * v46;
    if (4 * v46 < v48 >> 14)
    {
      __break(1u);
    }

    else
    {
      v170 = v49 | (v46 << 16);
      v189 = v44;
      v50 = String.subscript.getter();
      v54 = v53;
      v171 = v37;
      if ((v50 ^ v51) >= 0x4000)
      {
        v44 = v50;
        v70 = v51;
        v39 = v52;
        v174 = MEMORY[0x1E69E7CC0];
        v20 = 15;
        v179 = v45;
        while (1)
        {
          v169 = v20;
          v47 = Substring.UnicodeScalarView.index(before:)();
          v71 = Substring.UnicodeScalarView.subscript.getter();
          v72 = v71;
          v73 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v71), 1u);
          v9 = v44;
          if (!BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v72, v73, 0x700030001))
          {
            break;
          }

LABEL_31:
          v74 = Substring.UnicodeScalarView.index(after:)();

          v75 = v9 >> 14;
          v76 = v169;
          if (v9 >> 14 < v169 >> 14 || v74 >> 14 < v75)
          {
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
            goto LABEL_132;
          }

          v44 = v174;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 16) + 1, 1, v44);
          }

          v78 = *(v44 + 16);
          v77 = *(v44 + 24);
          if (v78 >= v77 >> 1)
          {
            v75 = v9 >> 14;
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1, v44);
          }

          *(v44 + 16) = v78 + 1;
          v174 = v44;
          v79 = v44 + 16 * v78;
          *(v79 + 32) = v76;
          *(v79 + 40) = v9;
          if (v173 < v75)
          {
            goto LABEL_128;
          }

          v80 = String.subscript.getter();
          v84 = v83;
          if ((v80 ^ v81) < 0x4000)
          {
            goto LABEL_84;
          }

          v47 = v80;
          v44 = v81;
          v39 = v82;
          v167 = v75;
          v176 = Substring.UnicodeScalarView.index(before:)();
          v85 = Substring.UnicodeScalarView.subscript.getter();
          v86 = v85;
          v87 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v85), 0);
          v88 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v86, v87, 0x700030000);
          v89 = v47;
          if (!v88)
          {
            v102 = HIBYTE(v84) & 0xF;
            if ((v84 & 0x2000000000000000) == 0)
            {
              v102 = v39 & 0xFFFFFFFFFFFFLL;
            }

            v175 = v102;
            v169 = v84 & 0xFFFFFFFFFFFFFFLL;
            v168 = (v84 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v89 = v47;
            while ((v89 ^ v176) >= 0x4000)
            {
              v96 = _StringGuts.validateInclusiveScalarIndex(_:)(v89, v39, v84);
              v70 = v96 >> 16;
              if (v96 >> 16 >= v175)
              {
                goto LABEL_105;
              }

              if ((v84 & 0x1000000000000000) != 0)
              {
                v89 = String.UnicodeScalarView._foreignIndex(after:)();
              }

              else
              {
                if ((v84 & 0x2000000000000000) != 0)
                {
                  v184 = v39;
                  v185 = v169;
                  v107 = *(&v184 + v70);
                }

                else
                {
                  v106 = v168;
                  if ((v39 & 0x1000000000000000) == 0)
                  {
                    v106 = _StringObject.sharedUTF8.getter();
                  }

                  v107 = *(v106 + v70);
                }

                v108 = v107;
                v109 = __clz(v107 ^ 0xFF) - 24;
                if (v108 >= 0)
                {
                  LOBYTE(v109) = 1;
                }

                v89 = ((v70 + v109) << 16) | 5;
              }

              v103 = Substring.UnicodeScalarView.subscript.getter();
              v104 = v103;
              v105 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v103), 0);
              if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v104, v105, 0x700030000))
              {
                goto LABEL_40;
              }
            }

LABEL_84:
            v20 = v9;
            goto LABEL_85;
          }

LABEL_40:
          v90 = Substring.UnicodeScalarView.index(after:)();

          if (v90 >> 14 < v89 >> 14)
          {
            goto LABEL_129;
          }

          if (v89 >> 14 == String.index(after:)() >> 14)
          {
            v20 = v9;
          }

          else
          {
            v110 = String.index(before:)();
            if (v167 > v110 >> 14)
            {
              goto LABEL_131;
            }

            v20 = v110;
            v112 = *(v174 + 2);
            v111 = *(v174 + 3);
            if (v112 >= v111 >> 1)
            {
              v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v111 > 1), v112 + 1, 1, v174);
            }

            v113 = v174;
            *(v174 + 2) = v112 + 1;
            v114 = &v113[16 * v112];
            *(v114 + 4) = v9;
            *(v114 + 5) = v20;
          }

          if (v173 < v90 >> 14)
          {
            goto LABEL_130;
          }

          v44 = String.subscript.getter();
          v70 = v115;
          v39 = v116;
          v54 = v117;
          if ((v44 ^ v115) < 0x4000)
          {
            goto LABEL_85;
          }
        }

        if ((v54 & 0x2000000000000000) != 0)
        {
          v91 = HIBYTE(v54) & 0xF;
        }

        else
        {
          v91 = v39 & 0xFFFFFFFFFFFFLL;
        }

        v175 = (v54 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v176 = v54 & 0xFFFFFFFFFFFFFFLL;
        v9 = v44;
        while (1)
        {
          if ((v9 ^ v47) < 0x4000)
          {
            v20 = v169;
            goto LABEL_85;
          }

          v96 = _StringGuts.validateInclusiveScalarIndex(_:)(v9, v39, v54);
          v97 = v96 >> 16;
          if (v96 >> 16 >= v91)
          {
            break;
          }

          if ((v54 & 0x1000000000000000) != 0)
          {
            v9 = String.UnicodeScalarView._foreignIndex(after:)();
          }

          else
          {
            if ((v54 & 0x2000000000000000) != 0)
            {
              v184 = v39;
              v185 = v176;
              v99 = *(&v184 + v97);
            }

            else
            {
              v98 = v175;
              if ((v39 & 0x1000000000000000) == 0)
              {
                v98 = _StringObject.sharedUTF8.getter();
              }

              v99 = *(v98 + v97);
            }

            v100 = v99;
            v101 = __clz(v99 ^ 0xFF) - 24;
            if (v100 >= 0)
            {
              LOBYTE(v101) = 1;
            }

            v9 = ((v97 + v101) << 16) | 5;
          }

          v92 = Substring.UnicodeScalarView.subscript.getter();
          v93 = v92;
          v94 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v92), 1u);
          v95 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v93, v94, 0x700030001);
          v45 = v179;
          if (v95)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      v20 = 15;
      v174 = MEMORY[0x1E69E7CC0];
LABEL_85:

      if (v173 >= v20 >> 14)
      {
        v44 = v174;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_87:
          v119 = *(v44 + 16);
          v118 = *(v44 + 24);
          v120 = v119 + 1;
          if (v119 >= v118 >> 1)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v118 > 1), v119 + 1, 1, v44);
          }

          *(v44 + 16) = v120;
          v121 = v44 + 16 * v119;
          v122 = v170;
          *(v121 + 32) = v20;
          *(v121 + 40) = v122;
          v184 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v120, 0);
          v9 = v184;
          v174 = v44;
          v123 = v44 + 40;
          do
          {
            String.subscript.getter();
            v124 = Substring.lowercased()();

            v184 = v9;
            v126 = *(v9 + 16);
            v125 = *(v9 + 24);
            if (v126 >= v125 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v125 > 1), v126 + 1, 1);
              v9 = v184;
            }

            v123 += 16;
            *(v9 + 16) = v126 + 1;
            *(v9 + 16 * v126 + 32) = v124;
            --v120;
          }

          while (v120);

          v184 = v9;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
          lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
          v44 = BidirectionalCollection<>.joined(separator:)();
          v128 = v127;

          v45 = v128;
LABEL_94:
          v39 = v172;
          LODWORD(v47) = v171;
          goto LABEL_95;
        }

LABEL_126:
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 16) + 1, 1, v44);
        goto LABEL_87;
      }
    }

    __break(1u);
    goto LABEL_126;
  }

LABEL_95:
  __swift_destroy_boxed_opaque_existential_1(v188);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v188[0] = *(v39 + 16);
  v70 = v188[0];
  *(v39 + 16) = 0x8000000000000000;
  v96 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v45);
  v131 = *(v70 + 16);
  v132 = (v130 & 1) == 0;
  v133 = __OFADD__(v131, v132);
  v134 = v131 + v132;
  if (v133)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    v172 = v39;
    v176 = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd);
    v143 = static _DictionaryStorage.copy(original:)();
    v135 = v143;
    if (!*(v70 + 16))
    {
LABEL_122:

      v96 = v176;
      v39 = v172;
      if (v9)
      {
        goto LABEL_99;
      }

      goto LABEL_102;
    }

    v179 = v45;
    v189 = v44;
    v171 = v47;
    v144 = (v143 + 64);
    v145 = v70 + 64;
    v146 = ((1 << *(v135 + 32)) + 63) >> 6;
    if (v135 != v70 || v144 >= v145 + 8 * v146)
    {
      memmove(v144, (v70 + 64), 8 * v146);
    }

    v147 = 0;
    *(v135 + 16) = *(v70 + 16);
    v148 = 1 << *(v70 + 32);
    v149 = *(v70 + 64);
    v150 = -1;
    if (v148 < 64)
    {
      v150 = ~(-1 << v148);
    }

    v151 = v150 & v149;
    v152 = (v148 + 63) >> 6;
    if ((v150 & v149) != 0)
    {
      do
      {
        v153 = __clz(__rbit64(v151));
        v151 &= v151 - 1;
LABEL_120:
        v156 = v153 | (v147 << 6);
        v157 = 16 * v156;
        v158 = (*(v70 + 48) + 16 * v156);
        v160 = *v158;
        v159 = v158[1];
        v156 *= 24;
        v161 = *(v70 + 56) + v156;
        v162 = *v161;
        v163 = *(v161 + 8);
        v164 = (*(v135 + 48) + v157);
        v165 = *(v161 + 16);
        *v164 = v160;
        v164[1] = v159;
        v166 = *(v135 + 56) + v156;
        *v166 = v162;
        *(v166 + 8) = v163;
        *(v166 + 16) = v165;

        outlined copy of JSONFuture(v162, v163, v165);
      }

      while (v151);
    }

    v154 = v147;
    LOBYTE(v47) = v171;
    v44 = v189;
    v45 = v179;
    while (1)
    {
      v147 = v154 + 1;
      if (__OFADD__(v154, 1))
      {
        break;
      }

      if (v147 >= v152)
      {
        goto LABEL_122;
      }

      v155 = *(v145 + 8 * v147);
      ++v154;
      if (v155)
      {
        v153 = __clz(__rbit64(v155));
        v151 = (v155 - 1) & v155;
        goto LABEL_120;
      }
    }

LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  LOBYTE(v9) = v130;
  if (*(v70 + 24) >= v134)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v135 = v70;
      if (v130)
      {
        goto LABEL_99;
      }

      goto LABEL_102;
    }

    goto LABEL_107;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v134, isUniquelyReferenced_nonNull_native);
  v135 = v188[0];
  v96 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v45);
  if ((v9 & 1) == (v136 & 1))
  {
    if (v9)
    {
LABEL_99:
      v137 = v96;

      v138 = *(v135 + 56) + 24 * v137;
      v139 = *v138;
      v140 = *(v138 + 8);
      v141 = v177;
      *v138 = v178;
      *(v138 + 8) = v141;
      v142 = *(v138 + 16);
      *(v138 + 16) = v47;
      result = outlined consume of JSONFuture(v139, v140, v142);
LABEL_103:
      *(v39 + 16) = v135;
      return result;
    }

LABEL_102:
    result = specialized _NativeDictionary._insert(at:key:value:)(v96, v44, v45, v178, v177, v47, v135);
    goto LABEL_103;
  }

LABEL_133:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}