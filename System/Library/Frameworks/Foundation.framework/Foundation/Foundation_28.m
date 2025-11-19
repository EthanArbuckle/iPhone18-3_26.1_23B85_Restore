Swift::Int _s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(uint64_t a1, unint64_t a2)
{
  v4 = specialized Collection.first.getter(a1, a2);
  if ((v4 & 0x1FF) != 0x5B)
  {
    return 0;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    result = String.UTF8View._foreignCount()();
    if (__OFSUB__(result, 1))
    {
      __break(1u);
      return result;
    }

    v6 = 4 << ((a1 & 0x800000000000000) != 0);
    v4 = MEMORY[0x1865CB180](15, result - 1, a1, a2);
LABEL_7:
    if ((v4 & 0xC) != v6)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

  v5 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  if (v5)
  {
    v4 = (v5 << 16) - 65532;
    v6 = 8;
    goto LABEL_7;
  }

  __break(1u);
LABEL_24:
  v4 = _StringGuts._slowEnsureMatchingEncoding(_:)(v4, a1, a2);
LABEL_8:
  v7 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  v8 = v4 >> 16;
  if (v4 >> 16 >= v7)
  {
    __break(1u);
LABEL_26:
    v9 = _StringObject.sharedUTF8.getter();
    goto LABEL_15;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v10 = String.UTF8View._foreignSubscript(position:)();
    return v10 == 93;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v12[0] = a1;
    v12[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = *(v12 + v8);
    return v10 == 93;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
    goto LABEL_26;
  }

  v9 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_15:
  v10 = *(v9 + v8);
  return v10 == 93;
}

uint64_t _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD215LL10hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void, void, void, void, void), uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void, void))
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2 > 2048)
  {
    return 0;
  }

  if (one-time initialization token for idnaTranscoder != -1)
  {
    v23 = a7;
    v24 = a5;
    v25 = a3;
    swift_once();
    a3 = v25;
    a5 = v24;
    a7 = v23;
  }

  if (byte_1ED436DC0 == 1)
  {
    return 0;
  }

  v9 = a3;
  v10 = a5;
  v11 = a7;
  v12 = static UIDNAHookICU.idnaTranscoder;
  result = swift_stdlib_isStackAllocationSafe();
  if ((result & 1) == 0)
  {
    result = swift_slowAlloc();
    v27 = 16;
    memset(v28, 0, sizeof(v28));
    v26 = 0;
    if (a1)
    {
      if (a2 >= 0xFFFFFFFF80000000)
      {
        v15 = result;
        v16 = v9(v12, a1, a2, result, 2048, &v27, &v26);
        if (v26 <= 0)
        {
          v20 = v16;
          v21 = v10(*&v28[1]);
          v17 = 0;
          if ((v21 & 1) != 0 && v20 > 0)
          {
            v17 = v11(v15, v20);
          }
        }

        else
        {
          v17 = 0;
        }

        v22 = v17;
        MEMORY[0x1865D2690](v15, -1, -1);
        return v22;
      }

LABEL_23:
      __break(1u);
    }

LABEL_25:
    __break(1u);
    return result;
  }

  v27 = 16;
  memset(v28, 0, sizeof(v28));
  v26 = 0;
  if (!a1)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_23;
  }

  v14 = v9(v12, a1, a2, v29, 2048, &v27, &v26);
  if (v26 > 0)
  {
    return 0;
  }

  v18 = v14;
  v19 = v10(*&v28[1]);
  result = 0;
  if ((v19 & 1) != 0 && v18 > 0)
  {
    return v11(v29, v18);
  }

  return result;
}

BOOL sub_1808F5DC8(unsigned int a1, char a2)
{
  if (a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = 63;
  }

  return v2 >= a1;
}

BOOL _s10Foundation12UIDNAHookICUV17IDNACodedHostUTF833_438666AB1527AE198C118BCABA7FD215LL_13encodeToASCIISSSgSRys5UInt8VG_SbtFZAGSRys4Int8VGXEfU_Sbs6UInt32VXEfU_TA_0(unsigned int a1)
{
  if (*(v1 + 16))
  {
    v2 = 0;
  }

  else
  {
    v2 = 63;
  }

  return v2 >= a1;
}

uint64_t one-time initialization function for idnaTranscoder()
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = 0;
  result = MEMORY[0x1865D2F20](60, &v2);
  if (v2 <= 0)
  {
    v1 = result;
  }

  else
  {
    v1 = 0;
  }

  static UIDNAHookICU.idnaTranscoder = v1;
  byte_1ED436DC0 = v2 > 0;
  return result;
}

uint64_t closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)(uint64_t result, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a2 != a4 || !a2)
  {
    return static String._tryFromUTF8(_:)();
  }

  v4 = result;
  v6 = a2;
  v7 = a2 & ~(a2 >> 63);
  while (v7)
  {
    v8 = *a3;
    v9 = *v4;
    if (v8 == v9 || v9 == (((0x3FFE000000000uLL >> ((v8 - 1) >> 1)) & 0x20) + v8))
    {
      --v7;
      ++a3;
      ++v4;
      if (--v6)
      {
        continue;
      }
    }

    return static String._tryFromUTF8(_:)();
  }

  __break(1u);
  return result;
}

unint64_t URLParseInfo.netLocationRange.getter()
{
  v1 = *(v0 + 72);
  result = *(v0 + 56);
  if (v1 == 1)
  {
    if (*(v0 + 96) == 1)
    {
      if (*(v0 + 120) == 1)
      {
        result = *(v0 + 128);
        if (*(v0 + 144))
        {
          return result;
        }
      }

      else
      {
        result = *(v0 + 104);
      }
    }

    else
    {
      result = *(v0 + 80);
    }
  }

  if (*(v0 + 144) == 1)
  {
    if (*(v0 + 120) == 1)
    {
      v3 = *(v0 + 96) & v1;
      if (*(v0 + 96))
      {
        v4 = *(v0 + 64);
      }

      else
      {
        v4 = *(v0 + 88);
      }

      if (v3)
      {
        return *(v0 + 56);
      }

      v5 = v4;
    }

    else
    {
      v5 = *(v0 + 112);
    }
  }

  else
  {
    v5 = *(v0 + 136);
  }

  if (v5 >> 14 < result >> 14)
  {
    __break(1u);
  }

  return result;
}

uint64_t one-time initialization function for us()
{
  v1 = String.lowercased()();
  result = v1._countAndFlagsBits;
  static Locale.MeasurementSystem.us = 0x6D65747379737375;
  *algn_1EA7B2448 = 0xE800000000000000;
  xmmword_1EA7B2450 = v1;
  return result;
}

uint64_t specialized RangeReplaceableCollection<>.popLast()()
{
  v1 = v0[1];
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  String.index(before:)();
  return String.remove(at:)();
}

int64_t *_NSProgressFractionMultiplyByFraction(int64_t *result, int64_t *a2)
{
  v2 = *a2;
  v3 = *result;
  v4 = result[1];
  v5 = *result * *a2;
  if ((*result * *a2) >> 64 == v5 >> 63)
  {
    v6 = a2[1];
    v7 = v4 * v6;
    if ((v4 * v6) >> 64 == (v4 * v6) >> 63)
    {
      goto LABEL_35;
    }
  }

  if (v4)
  {
    v8 = result[1];
    v9 = *result;
    do
    {
      v10 = v9;
      v9 = v8;
      v8 = v10 % v8;
    }

    while (v8);
    v3 /= v9;
    v11 = v4 / v9;
    *result = v3;
    result[1] = v4 / v9;
    v2 = *a2;
  }

  else
  {
    v11 = 0;
  }

  v12 = a2[1];
  if (v12)
  {
    v13 = a2[1];
    v14 = v2;
    do
    {
      v15 = v14;
      v14 = v13;
      v13 = v15 % v13;
    }

    while (v13);
    v16 = v2 / v14;
    v17 = v12 / v14;
  }

  else
  {
    v17 = 0;
    v16 = v2;
  }

  v5 = v3 * v16;
  if ((v3 * v16) >> 64 == (v3 * v16) >> 63)
  {
    v7 = v11 * v17;
    if ((v11 * v17) >> 64 == (v11 * v17) >> 63)
    {
LABEL_35:
      *result = v5;
      goto LABEL_36;
    }
  }

  *(result + 16) = 1;
  v18 = 0.0;
  v19 = 0.0;
  if ((v3 & 0x8000000000000000) == 0 && (v11 & 0x8000000000000000) == 0 && v3 | v11)
  {
    if (!v11)
    {
      v19 = 1.0;
      if ((v2 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_32;
    }

    v19 = v3 / v11;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
LABEL_21:
    v20 = v12 < 0 || (v12 | v2) == 0;
    v21 = v20;
    v18 = 1.0;
    if (v20)
    {
      v18 = 0.0;
    }

    if (v12 && (v21 & 1) == 0)
    {
      v18 = v2 / v12;
    }
  }

LABEL_32:
  v22 = vcvtd_n_s64_f64(v19 * v18, 0x20uLL);
  v23 = 0x100000000;
  v24 = v22;
  do
  {
    v25 = v24;
    v24 = v23;
    v23 = v25 % v23;
  }

  while (v23);
  *result = v22 / v24;
  v7 = 0x100000000 / v24;
LABEL_36:
  result[1] = v7;
  return result;
}

uint64_t Data.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = specialized Data.init<A>(_:)(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t specialized Data.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v32 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  (*(v17 + 16))(&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of Equatable(v35, &v37);
    v18 = v38;
    v19 = v39;
    __swift_project_boxed_opaque_existential_1(&v37, v38);
    (*(v19 + 8))(&__src, closure #1 in Data.init<A>(_:), 0, &type metadata for Data._Representation, v18, v19);
    v35[0] = __src;
    __swift_destroy_boxed_opaque_existential_1(&v37);
    goto LABEL_34;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  outlined destroy of ContiguousBytes?(v35);
  dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (*(&v37 + 1) >> 60 != 15)
  {
    v35[0] = v37;
    goto LABEL_34;
  }

  v33 = v37;
  v20 = dispatch thunk of Sequence.underestimatedCount.getter();
  *&v35[0] = _s10Foundation4DataV15_RepresentationO5countAESi_tcfC_0(v20);
  *(&v35[0] + 1) = v21;
  MEMORY[0x1EEE9AC00](*&v35[0]);
  *(&v32 - 4) = a2;
  *(&v32 - 3) = a3;
  *(&v32 - 2) = a1;
  Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for closure #3 in Data.init<A>(_:));
  v22 = *&v9[*(TupleTypeMetadata2 + 48)];
  (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
  v23 = *(&v35[0] + 1) >> 62;
  if ((*(&v35[0] + 1) >> 62) <= 1)
  {
    if (v23)
    {
      if (__OFSUB__(DWORD1(v35[0]), v35[0]))
      {
        goto LABEL_38;
      }

      if (v22 == DWORD1(v35[0]) - LODWORD(v35[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v22 == BYTE14(v35[0]))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v23 == 2)
  {
    v25 = *(*&v35[0] + 16);
    v24 = *(*&v35[0] + 24);
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    if (v26)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v22 == v27)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v23 == 2)
    {
      v28 = *(*&v35[0] + 24);
    }

    else if (v23 == 1)
    {
      v28 = *&v35[0] >> 32;
    }

    else
    {
      v28 = BYTE14(v35[0]);
    }

LABEL_31:
    if (v28 >= v22)
    {
      Data._Representation.replaceSubrange(_:with:count:)(v22, v28, 0, 0);
LABEL_33:
      (*(v10 + 8))(v13, AssociatedTypeWitness);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v22)
  {
    v28 = 0;
    goto LABEL_31;
  }

LABEL_20:
  swift_getAssociatedConformanceWitness();
  *&v37 = 0;
  *(&v37 + 7) = 0;
  dispatch thunk of IteratorProtocol.next()();
  if (BYTE1(__src) == 1)
  {
    goto LABEL_28;
  }

  LOBYTE(v29) = 0;
  do
  {
    *(&v37 + v29) = __src;
    v29 = v29 + 1;
    if ((v29 >> 8))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    BYTE14(v37) = v29;
    if (v29 == 14)
    {
      *&__src = v37;
      *(&__src + 6) = *(&v37 + 6);
      Data._Representation.append(contentsOf:)(&__src, &__src + 14);
      LOBYTE(v29) = 0;
      BYTE14(v37) = 0;
    }

    dispatch thunk of IteratorProtocol.next()();
  }

  while ((BYTE1(__src) & 1) == 0);
  if (v29)
  {
    *&__src = v37;
    *(&__src + 6) = *(&v37 + 6);
    Data._Representation.append(contentsOf:)(&__src, &v35[-1] + v29);
    outlined consume of Data?(v33, *(&v33 + 1));
    goto LABEL_33;
  }

LABEL_28:
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  outlined consume of Data?(v33, *(&v33 + 1));
LABEL_34:
  v30 = v35[0];
  outlined copy of Data._Representation(*&v35[0], *(&v35[0] + 1));
  outlined consume of Data._Representation(v30, *(&v30 + 1));
  return v30;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t DataProtocol.copyBytes(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a1;
  v40 = a2;
  v43 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for Range();
  v36 = *(v18 - 8);
  v37 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  dispatch thunk of Collection.startIndex.getter();
  v41 = a3;
  v42 = v4;
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v22 = *(v11 + 32);
    v22(v10, v17, AssociatedTypeWitness);
    v23 = TupleTypeMetadata2;
    v22(&v10[*(TupleTypeMetadata2 + 48)], v14, AssociatedTypeWitness);
    v24 = v38;
    v25 = v35;
    (*(v38 + 16))(v35, v10, v23);
    v33 = *(v23 + 48);
    v22(v20, v25, AssociatedTypeWitness);
    v26 = *(v11 + 8);
    v26(&v25[v33], AssociatedTypeWitness);
    (*(v24 + 32))(v25, v10, v23);
    v27 = v37;
    v22(&v20[*(v37 + 36)], &v25[*(v23 + 48)], AssociatedTypeWitness);
    v26(v25, AssociatedTypeWitness);
    v28 = v43;
    v29 = *(v43 + 104);
    WitnessTable = swift_getWitnessTable();
    v31 = v29(v39, v40, v20, v27, WitnessTable, v41, v28);
    (*(v36 + 8))(v20, v27);
    return v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized DataProtocol.copyBytes<A>(to:from:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd);
  result = dispatch thunk of RangeExpression.relative<A>(to:)();
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(a4 + 16);
  if (v7 < v11 || v7 < v12)
  {
    goto LABEL_14;
  }

  if (v12 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v8 = a2 - v6;
  if ((v12 - v11) < a2 - v6)
  {
    v8 = v12 - v11;
  }

  v9 = v8;
  v10 = 0;
  if (v8 < 1)
  {
    return 0;
  }

  closure #1 in DataProtocol.copyBytes<A>(to:from:)((a4 + v11 + 32), a4 + 32 + v12, v6, a2, &v10, &v9);
  return v10;
}

{
  v13 = a4;
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15ContiguousArrayVys5UInt8VGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ContiguousArray<UInt8> and conformance ContiguousArray<A>, &_ss15ContiguousArrayVys5UInt8VGMd);
  result = dispatch thunk of RangeExpression.relative<A>(to:)();
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(a4 + 16);
  if (v7 < v11 || v7 < v12)
  {
    goto LABEL_14;
  }

  if (v12 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v8 = a2 - v6;
  if ((v12 - v11) < a2 - v6)
  {
    v8 = v12 - v11;
  }

  v9 = v8;
  v10 = 0;
  if (v8 < 1)
  {
    return 0;
  }

  closure #1 in DataProtocol.copyBytes<A>(to:from:)((a4 + v11 + 32), a4 + 32 + v12, v6, a2, &v10, &v9);
  return v10;
}

BOOL NSBOOLFromString(void *a1)
{
  if ([a1 isEqual:@"YES"])
  {
    return 1;
  }

  v3 = [a1 length];
  v2 = 1;
  if ([a1 compare:@"YES" options:1 range:{0, v3}])
  {
    v2 = 1;
    if ([a1 compare:@"Y" options:1 range:{0, v3}])
    {
      return [a1 integerValue] != 0;
    }
  }

  return v2;
}

NSHashTable *__cdecl NSCreateHashTable(NSHashTableCallBacks *callBacks, NSUInteger capacity)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *&callBacks->retain;
  *&v5.hash = *&callBacks->hash;
  *&v5.retain = v3;
  v5.describe = callBacks->describe;
  return NSCreateHashTableWithZone(&v5, capacity, v2);
}

NSHashTable *__cdecl NSCreateHashTableWithZone(NSHashTableCallBacks *callBacks, NSUInteger capacity, NSZone *zone)
{
  v4 = objc_opt_self();
  v5 = malloc_default_zone();
  v6 = NSAllocateObject(v4, 0, v5);
  describe = callBacks->describe;
  v8 = *&callBacks->retain;
  *(v6 + 8) = *&callBacks->hash;
  *(v6 + 24) = v8;
  *(v6 + 5) = describe;
  result = malloc_type_malloc(0x10uLL, 0x80040B8603338uLL);
  if (result)
  {
    result->super.isa = __NSHashTableCallback;
    result[1].super.isa = v6;
    if (*&callBacks->retain == 0)
    {
      v10 = 0x2000;
    }

    else
    {
      v10 = 8704;
    }

    *(v6 + 6) = CFBasicHashCreate(*MEMORY[0x1E695E4A8], v10, result);
    return v6;
  }

  else
  {
    qword_1EA7BB378 = "unable to allocate space for callbacks";
    __break(1u);
  }

  return result;
}

__CFString *__NSHashTableCallback(int a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = 0;
  v7 = a5[1];
  if (a2 <= 15)
  {
    if (a2 <= 9)
    {
      if (a2 == 8)
      {
        result = malloc_type_malloc(0x10uLL, 0xA478A96BuLL);
        if (result)
        {
          *&result->isa = *a5;
        }

        else
        {
          qword_1EA7BB378 = "unable to allocate space for callbacks";
          __break(1u);
        }

        return result;
      }

      if (a2 != 9)
      {
        return result;
      }

      free(a5);
      return 0;
    }

    if (a2 != 10 && a2 != 12)
    {
      if (a2 != 14)
      {
        return result;
      }

LABEL_12:
      v9 = v7[4];
      if (v9)
      {
        v9(a5[1], a3);
      }

      return 0;
    }

    v13 = v7[3];
    if (v13)
    {
      v13(a5[1], a3);
    }

    return a3;
  }

  if (a2 <= 21)
  {
    if (a2 != 16)
    {
      if (a2 == 18 || a2 == 20)
      {
        v8 = v7[2];
        if (v8)
        {
          return v8(a5[1], a3, a4);
        }

        else
        {
          return (a3 == a4);
        }
      }

      return result;
    }

    goto LABEL_12;
  }

  if (a2 != 22)
  {
    if (a2 == 24 || a2 == 26)
    {
      v10 = v7[5];
      if (v10)
      {
        v11 = v10(a5[1], a3);
        return CFRetain(v11);
      }

      else
      {
        return CFStringCreateWithFormat(*MEMORY[0x1E695E4A8], 0, @"<%p>", a3);
      }
    }

    return result;
  }

  v14 = v7[1];
  if (!v14)
  {
    return a3;
  }

  v15 = a5[1];

  return v14(v15, a3);
}

uint64_t AttributeContainer.subscript.setter(uint64_t a1, void *a2, uint64_t a3)
{
  specialized AttributeContainer.subscript.setter(a1, *(*a2 + *MEMORY[0x1E69E77B0] + 8), a3);

  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

char *specialized AttributeContainer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v99 - v14;
  v106 = v9;
  v16 = *(v9 + 16);
  v16(&v99 - v14, a1, v8, v13);
  v107 = v15;
  v17 = v15;
  v18 = v8;
  (v16)(v11, v17, v8);
  v19 = (*(a3 + 24))(a2, a3);
  v21 = v20;
  v108 = v11;
  static AttributedString._AttributeValue.wrapIfPresent<A>(_:for:)(v11, a2, a3, v122);
  outlined init with copy of AttributedString._AttributeValue?(v122, &v117);
  if (!*(&v118 + 1))
  {
LABEL_6:
    outlined destroy of TermOfAddress?(&v117, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v21);
    v11 = v4;
    if ((v33 & 1) == 0)
    {
      v23 = v19;
      v121 = 0;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
LABEL_35:
      v75 = v107;
      v76 = v108;
      v77 = v106;
      AttributedString._AttributeStorage._attributeModified(_:old:new:)(v23, v21, &v117, v122);
      outlined destroy of TermOfAddress?(v122, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of TermOfAddress?(&v117, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

      v78 = *(v77 + 8);
      v78(v75, v18);
      return (v78)(v76, v18);
    }

    a3 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *v4;
    v23 = v19;
    if (isUniquelyReferenced_nonNull_native)
    {
      v30 = *v11;
LABEL_9:

      v35 = *(v30 + 56) + 72 * a3;
      v117 = *v35;
      v37 = *(v35 + 32);
      v36 = *(v35 + 48);
      v38 = *(v35 + 64);
      v118 = *(v35 + 16);
      v119 = v37;
      v121 = v38;
      v120 = v36;
      specialized _NativeDictionary._delete(at:)(a3, v30);
LABEL_34:
      *v11 = v30;
      goto LABEL_35;
    }

    goto LABEL_37;
  }

  v115[2] = v119;
  v115[3] = v120;
  v116 = v121;
  v115[0] = v117;
  v115[1] = v118;
  outlined init with copy of AttributedString._AttributeValue(v115, &v110);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v4;
  v23 = v109;
  v24 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v21);
  v26 = *(v23 + 16);
  v27 = (v25 & 1) == 0;
  v28 = __OFADD__(v26, v27);
  v29 = v26 + v27;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    a3 = v25;
    v11 = v4;
    if (*(v23 + 24) < v29)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, v22);
      v30 = v109;
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v21);
      if ((a3 & 1) != (v31 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_6;
      }

LABEL_12:
      if (a3)
      {
        goto LABEL_13;
      }

      goto LABEL_32;
    }

    if (v22)
    {
      v30 = v23;
      goto LABEL_12;
    }
  }

  v100 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
  v46 = static _DictionaryStorage.copy(original:)();
  v30 = v46;
  if (*(v23 + 16))
  {
    result = (v46 + 64);
    v48 = (v23 + 64);
    v49 = ((1 << *(v30 + 32)) + 63) >> 6;
    v99 = v23 + 64;
    if (v30 != v23 || result >= &v48[8 * v49])
    {
      result = memmove(result, v48, 8 * v49);
    }

    v50 = 0;
    *(v30 + 16) = *(v23 + 16);
    v51 = 1 << *(v23 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v23 + 64);
    v54 = (v51 + 63) >> 6;
    v101 = v54;
    if (v53)
    {
      do
      {
        v55 = __clz(__rbit64(v53));
        v105 = (v53 - 1) & v53;
LABEL_29:
        v58 = v55 | (v50 << 6);
        v102 = 16 * v58;
        v59 = *(v23 + 56);
        v60 = (*(v23 + 48) + 16 * v58);
        v61 = *v60;
        v103 = v60[1];
        v104 = v61;
        v4 = 72 * v58;
        outlined init with copy of AttributedString._AttributeValue(v59 + 72 * v58, &v117);
        v62 = v103;
        v63 = (*(v30 + 48) + v102);
        *v63 = v104;
        v63[1] = v62;
        v64 = *(v30 + 56) + v4;
        *v64 = v117;
        v65 = v118;
        v66 = v119;
        v67 = v120;
        *(v64 + 64) = v121;
        *(v64 + 32) = v66;
        *(v64 + 48) = v67;
        *(v64 + 16) = v65;

        v54 = v101;
        v53 = v105;
      }

      while (v105);
    }

    v56 = v50;
    while (1)
    {
      v50 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v50 >= v54)
      {
        goto LABEL_31;
      }

      v57 = *(v99 + 8 * v50);
      ++v56;
      if (v57)
      {
        v55 = __clz(__rbit64(v57));
        v105 = (v57 - 1) & v57;
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_54;
  }

LABEL_31:

  v24 = v100;
  if (a3)
  {
LABEL_13:
    v23 = v19;
    v39 = *(v30 + 56) + 72 * v24;
    v117 = *v39;
    v40 = *(v39 + 16);
    v41 = *(v39 + 32);
    v42 = *(v39 + 48);
    v121 = *(v39 + 64);
    v119 = v41;
    v120 = v42;
    v118 = v40;
    v43 = v111;
    v44 = v112;
    v45 = v113;
    *(v39 + 64) = v114;
    *(v39 + 32) = v44;
    *(v39 + 48) = v45;
    *v39 = v110;
    *(v39 + 16) = v43;
    outlined destroy of AttributedString._AttributeValue(v115);
    goto LABEL_34;
  }

LABEL_32:
  *(v30 + 8 * (v24 >> 6) + 64) |= 1 << v24;
  v68 = (*(v30 + 48) + 16 * v24);
  *v68 = v19;
  v68[1] = v21;
  v69 = *(v30 + 56) + 72 * v24;
  *v69 = v110;
  v70 = v111;
  v71 = v112;
  v72 = v113;
  *(v69 + 64) = v114;
  *(v69 + 32) = v71;
  *(v69 + 48) = v72;
  *(v69 + 16) = v70;
  v73 = *(v30 + 16);
  v28 = __OFADD__(v73, 1);
  v74 = v73 + 1;
  if (!v28)
  {
    v23 = v19;
    *(v30 + 16) = v74;

    outlined destroy of AttributedString._AttributeValue(v115);
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0;
    goto LABEL_34;
  }

  __break(1u);
LABEL_37:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
  v79 = static _DictionaryStorage.copy(original:)();
  v30 = v79;
  if (!*(v4 + 16))
  {
LABEL_52:

    goto LABEL_9;
  }

  v101 = v11;
  v102 = v18;
  result = (v79 + 64);
  v80 = ((1 << *(v30 + 32)) + 63) >> 6;
  v103 = (v4 + 64);
  if (v30 != v4 || result >= v4 + 64 + 8 * v80)
  {
    result = memmove(result, v103, 8 * v80);
  }

  v81 = 0;
  *(v30 + 16) = *(v4 + 16);
  v82 = 1 << *(v4 + 32);
  v83 = -1;
  if (v82 < 64)
  {
    v83 = ~(-1 << v82);
  }

  v105 = v83 & *(v4 + 64);
  v100 = (v82 + 63) >> 6;
  for (i = v105; v105; i = v105)
  {
    v85 = __clz(__rbit64(i));
    v105 = (i - 1) & i;
LABEL_50:
    v88 = v85 | (v81 << 6);
    v89 = 16 * v88;
    v90 = *(v4 + 56);
    v91 = (*(v4 + 48) + 16 * v88);
    v92 = v91[1];
    v104 = *v91;
    v93 = 72 * v88;
    outlined init with copy of AttributedString._AttributeValue(v90 + 72 * v88, &v117);
    v94 = (*(v30 + 48) + v89);
    *v94 = v104;
    v94[1] = v92;
    v95 = *(v30 + 56) + v93;
    *v95 = v117;
    v96 = v118;
    v97 = v119;
    v98 = v120;
    *(v95 + 64) = v121;
    *(v95 + 32) = v97;
    *(v95 + 48) = v98;
    *(v95 + 16) = v96;
  }

  v86 = v81;
  v11 = v101;
  v18 = v102;
  while (1)
  {
    v81 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
      break;
    }

    if (v81 >= v100)
    {
      goto LABEL_52;
    }

    v87 = *(v103 + v81);
    ++v86;
    if (v87)
    {
      v85 = __clz(__rbit64(v87));
      v105 = (v87 - 1) & v87;
      goto LABEL_50;
    }
  }

LABEL_54:
  __break(1u);
  return result;
}

id NSSortDescriptor.init<A, B>(keyPath:ascending:)(void *a1, char a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  _bridgeKeyPathToString(_:)();
  v5 = String._bridgeToObjectiveCImpl()();

  v6 = [v4 initWithKey:v5 ascending:a2 & 1];
  swift_unknownObjectRelease();
  v7 = v6;
  objc_setAssociatedObject(v7, v7, a1, 0x301);

  return v7;
}

uint64_t Calendar.date(byAdding:to:wrappingComponents:)(void *__src, double *a2, char a3)
{
  memcpy(__dst, __src, 0x11BuLL);
  v6 = *a2;
  v7 = *(v3 + 8);
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v8 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v8 = v6;
  }

  if (*&static Date.validCalendarRange >= v8)
  {
    v9 = *&static Date.validCalendarRange;
  }

  else
  {
    v9 = v8;
  }

  ObjectType = swift_getObjectType();
  v12 = v9;
  return (*(v7 + 200))(__dst, &v12, a3 & 1, ObjectType, v7);
}

uint64_t *DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31)
{
  *(a9 + 281) = 514;
  v35 = *a2;
  *a9 = 0u;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0;
  *(a9 + 40) = 1;
  *(a9 + 48) = 0;
  *(a9 + 56) = 1;
  *(a9 + 64) = 0;
  *(a9 + 72) = 1;
  *(a9 + 80) = 0;
  *(a9 + 88) = 1;
  *(a9 + 96) = 0;
  *(a9 + 104) = 1;
  *(a9 + 112) = 0;
  *(a9 + 120) = 1;
  *(a9 + 128) = 0;
  *(a9 + 136) = 1;
  *(a9 + 144) = 0;
  *(a9 + 152) = 1;
  *(a9 + 160) = 0;
  *(a9 + 168) = 1;
  *(a9 + 176) = 0;
  *(a9 + 184) = 1;
  *(a9 + 192) = 0;
  *(a9 + 200) = 1;
  *(a9 + 208) = 0;
  *(a9 + 216) = 1;
  *(a9 + 224) = 0;
  *(a9 + 232) = 1;
  *(a9 + 240) = 0;
  *(a9 + 248) = 1;
  *(a9 + 256) = 0;
  *(a9 + 264) = 1;
  *(a9 + 272) = 0;
  *(a9 + 280) = 1;
  v36 = *a1;
  *a9 = *a1;
  v37 = *(a9 + 16);
  if (v37 && v36)
  {
    v38 = *(a9 + 24);
    v58[0] = v37;
    v58[1] = v38;
    v54 = v35;
    swift_unknownObjectRetain();
    Calendar.timeZone.setter(v58);
    v35 = v54;
  }

  *v58 = v35;
  result = DateComponents.timeZone.setter(v58);
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v40 = 0;
  }

  else
  {
    v40 = a3;
  }

  if (a4)
  {
    v40 = a3;
  }

  *(a9 + 32) = v40;
  *(a9 + 40) = a4 & 1 | (a3 == 0x7FFFFFFFFFFFFFFFLL);
  if (a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v41 = 0;
  }

  else
  {
    v41 = a5;
  }

  if (a6)
  {
    v41 = a5;
  }

  *(a9 + 48) = v41;
  *(a9 + 56) = a6 & 1 | (a5 == 0x7FFFFFFFFFFFFFFFLL);
  if (a7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v42 = 0;
  }

  else
  {
    v42 = a7;
  }

  if (a8)
  {
    v42 = a7;
  }

  *(a9 + 64) = v42;
  *(a9 + 72) = a8 & 1 | (a7 == 0x7FFFFFFFFFFFFFFFLL);
  if (a10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v43 = 0;
  }

  else
  {
    v43 = a10;
  }

  if (a11)
  {
    v43 = a10;
  }

  *(a9 + 80) = v43;
  *(a9 + 88) = a11 & 1 | (a10 == 0x7FFFFFFFFFFFFFFFLL);
  if (a12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v44 = 0;
  }

  else
  {
    v44 = a12;
  }

  if (a13)
  {
    v44 = a12;
  }

  *(a9 + 112) = v44;
  *(a9 + 120) = a13 & 1 | (a12 == 0x7FFFFFFFFFFFFFFFLL);
  if (a14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v45 = 0;
  }

  else
  {
    v45 = a14;
  }

  if (a15)
  {
    v45 = a14;
  }

  *(a9 + 128) = v45;
  *(a9 + 136) = a15 & 1 | (a14 == 0x7FFFFFFFFFFFFFFFLL);
  if (a16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v46 = 0;
  }

  else
  {
    v46 = a16;
  }

  if (a17)
  {
    v46 = a16;
  }

  *(a9 + 144) = v46;
  *(a9 + 152) = a17 & 1 | (a16 == 0x7FFFFFFFFFFFFFFFLL);
  if (a18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v47 = 0;
  }

  else
  {
    v47 = a18;
  }

  if (a19)
  {
    v47 = a18;
  }

  *(a9 + 160) = v47;
  *(a9 + 168) = a19 & 1 | (a18 == 0x7FFFFFFFFFFFFFFFLL);
  if (a20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v48 = 0;
  }

  else
  {
    v48 = a20;
  }

  if (a21)
  {
    v48 = a20;
  }

  *(a9 + 176) = v48;
  *(a9 + 184) = a21 & 1 | (a20 == 0x7FFFFFFFFFFFFFFFLL);
  if (a22 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v49 = 0;
  }

  else
  {
    v49 = a22;
  }

  if (a23)
  {
    v49 = a22;
  }

  *(a9 + 192) = v49;
  *(a9 + 200) = a23 & 1 | (a22 == 0x7FFFFFFFFFFFFFFFLL);
  if (a24 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v50 = 0;
  }

  else
  {
    v50 = a24;
  }

  if (a25)
  {
    v50 = a24;
  }

  *(a9 + 208) = v50;
  *(a9 + 216) = a25 & 1 | (a24 == 0x7FFFFFFFFFFFFFFFLL);
  if (a26 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v51 = 0;
  }

  else
  {
    v51 = a26;
  }

  if (a27)
  {
    v51 = a26;
  }

  *(a9 + 240) = v51;
  *(a9 + 248) = a27 & 1 | (a26 == 0x7FFFFFFFFFFFFFFFLL);
  if (a28 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v52 = 0;
  }

  else
  {
    v52 = a28;
  }

  if (a29)
  {
    v52 = a28;
  }

  *(a9 + 256) = v52;
  *(a9 + 264) = a29 & 1 | (a28 == 0x7FFFFFFFFFFFFFFFLL);
  if (a30 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v53 = 0;
  }

  else
  {
    v53 = a30;
  }

  if (a31)
  {
    v53 = a30;
  }

  *(a9 + 272) = v53;
  *(a9 + 280) = a31 & 1 | (a30 == 0x7FFFFFFFFFFFFFFFLL);
  *(a9 + 104) = 1;
  *(a9 + 96) = 0;
  return result;
}

uint64_t outlined init with copy of AttributedString._AttributeValue?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static AttributedString._AttributeValue.wrapIfPresent<A>(_:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v26 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - v18;
  (*(v9 + 16))(v11, v26, v8, v17);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v9 + 8))(v11, v8);
    v21 = 0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    (*(v12 + 32))(v19, v11, AssociatedTypeWitness);
    v22 = *(v12 + 16);
    v22(v15, v19, AssociatedTypeWitness);
    *(a4 + 24) = AssociatedTypeWitness;
    *(a4 + 32) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
    v22(boxed_opaque_existential_0, v15, AssociatedTypeWitness);
    (*(a3 + 32))(&v27, a2, a3);
    *(a4 + 40) = v27;
    *(a4 + 56) = (*(a3 + 40))(a2, a3) & 1;
    v21 = (*(a3 + 48))(a2, a3);
    v24 = *(v12 + 8);
    v24(v15, AssociatedTypeWitness);
    result = (v24)(v19, AssociatedTypeWitness);
  }

  *(a4 + 64) = v21;
  return result;
}

uint64_t specialized Dictionary<>.init(_:attributeTable:options:)(uint64_t *a1, void *a2, uint64_t a3)
{
  AssociatedTypeWitness = v3;
  v80 = a3;
  v7 = *a1;
  v78[1] = a1[1];

  v8 = 0;
  v9 = (v7 + 64);
  v10 = 1 << *(v7 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v7 + 64);
  v79 = MEMORY[0x1E69E7CC8];
  v13 = (v10 + 63) >> 6;
  v84 = v7;
  v83 = a2;
  v82 = (v7 + 64);
  v81 = v13;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        do
        {
          if (!v12)
          {
            while (1)
            {
              v15 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
                break;
              }

              if (v15 >= v13)
              {

                return v79;
              }

              v14 = *&v9[8 * v15];
              ++v8;
              if (v14)
              {
                v8 = v15;
                goto LABEL_12;
              }
            }

            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            v90[7](a2, 1, 1, AssociatedTypeWitness);
            (*(v9 + 1))(a2, isUniquelyReferenced_nonNull_native);
            __break(1u);
LABEL_61:

LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v14 = v12;
LABEL_12:
          v12 = (v14 - 1) & v14;
        }

        while (!a2[2]);
        v16 = (*(v7 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v14)))));
        isUniquelyReferenced_nonNull_native = *v16;
        v17 = v16[1];

        v18 = specialized __RawDictionaryStorage.find<A>(_:)(isUniquelyReferenced_nonNull_native, v17);
        if (v19)
        {
          break;
        }
      }

      v87 = v12;
      v92 = AssociatedTypeWitness;
      v20 = (a2[7] + 16 * v18);
      v22 = *v20;
      v21 = v20[1];
      v91 = String._bridgeToObjectiveCImpl()();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v90 = *(AssociatedTypeWitness - 8);
      v23 = v90[8];
      v24 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      v93 = v78 - v25;
      v26 = *(v21 + 24);
      v89 = v22;
      v27 = v26(v22, v21, v24);
      if (!*(v7 + 16))
      {
        goto LABEL_61;
      }

      v88 = v78;
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28);
      v31 = v30;

      if ((v31 & 1) == 0)
      {
        goto LABEL_62;
      }

      outlined init with copy of AttributedString._AttributeValue(*(v7 + 56) + 72 * v29, v95);
      outlined init with copy of Hashable & Sendable(v95, v94);
      isUniquelyReferenced_nonNull_native = type metadata accessor for Optional();
      v9 = *(isUniquelyReferenced_nonNull_native - 8);
      MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
      a2 = (v78 - v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
      if (!swift_dynamicCast())
      {
        goto LABEL_60;
      }

      outlined destroy of AttributedString._AttributeValue(v95);

      isUniquelyReferenced_nonNull_native = v90;
      v90[7](a2, 0, 1, AssociatedTypeWitness);
      v9 = v93;
      (*(isUniquelyReferenced_nonNull_native + 32))(v93, a2, AssociatedTypeWitness);
      a2 = v89;
      v33 = swift_conformsToProtocol2();
      if (!v33 || !a2)
      {
        break;
      }

      v34 = v33;
      v86 = v78;
      v35 = MEMORY[0x1EEE9AC00](v33);
      (*(isUniquelyReferenced_nonNull_native + 16))(v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v9, AssociatedTypeWitness, v35);
      v36 = swift_getAssociatedTypeWitness();
      v85 = v78;
      v37 = AssociatedTypeWitness;
      v38 = *(v36 - 8);
      MEMORY[0x1EEE9AC00](v36);
      AssociatedTypeWitness = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = v78 - v39;
      swift_dynamicCast();
      v40 = v92;
      v41 = (*(v34 + 24))(isUniquelyReferenced_nonNull_native, a2, v34);
      if (!v40)
      {
        v44 = v41;
        (*(v38 + 8))(isUniquelyReferenced_nonNull_native, v36);
        v9 = v82;
        v13 = v81;
        v43 = v91;
        v92 = 0;
        isUniquelyReferenced_nonNull_native = AssociatedTypeWitness;
        v45 = v93;
        goto LABEL_26;
      }

      swift_unknownObjectRelease();
      (*(v38 + 8))(isUniquelyReferenced_nonNull_native, v36);
      (*(AssociatedTypeWitness + 8))(v93, v37);
      a2 = v83;
      v12 = v87;
      if ((v80 & 1) == 0)
      {

        v77 = v79;

        swift_willThrow();

        return v77;
      }

      AssociatedTypeWitness = 0;
      v7 = v84;
      v9 = v82;
      v13 = v81;
    }

    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    if (isClassOrObjCExistentialType)
    {
      v43 = v91;
      if (v23 != 8)
      {
        goto LABEL_58;
      }

      v37 = AssociatedTypeWitness;
      v44 = *v9;
      swift_unknownObjectRetain();
      v45 = v9;
      v9 = v82;
      v13 = v81;
    }

    else
    {
      v56 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
      (*(isUniquelyReferenced_nonNull_native + 16))(v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v9, AssociatedTypeWitness, v56);
      v37 = AssociatedTypeWitness;
      v44 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v45 = v9;
      v9 = v82;
      v13 = v81;
      v43 = v91;
    }

LABEL_26:
    (*(isUniquelyReferenced_nonNull_native + 8))(v45, v37);
    ObjectType = swift_getObjectType();
    *&v96 = v44;
    outlined init with take of Any(&v96, v95);
    a2 = v79;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = a2;
    v46 = v43;
    v47 = specialized __RawDictionaryStorage.find<A>(_:)(v43);
    v49 = a2[2];
    v50 = (v48 & 1) == 0;
    v51 = __OFADD__(v49, v50);
    v52 = v49 + v50;
    if (v51)
    {
      goto LABEL_57;
    }

    v53 = v48;
    v7 = v84;
    AssociatedTypeWitness = v92;
    if (a2[3] < v52)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v52, isUniquelyReferenced_nonNull_native);
      a2 = v98;
      v47 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
      if ((v53 & 1) != (v54 & 1))
      {
        goto LABEL_64;
      }

LABEL_31:
      if (v53)
      {
        goto LABEL_32;
      }

      goto LABEL_51;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_31;
    }

    v90 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd);
    v57 = static _DictionaryStorage.copy(original:)();
    v58 = v57;
    if (a2[2])
    {
      break;
    }

LABEL_50:

    a2 = v58;
    v47 = v90;
    v46 = v91;
    AssociatedTypeWitness = v92;
    v7 = v84;
    v9 = v82;
    v13 = v81;
    if (v53)
    {
LABEL_32:
      v55 = (a2[7] + 32 * v47);
      __swift_destroy_boxed_opaque_existential_1(v55);
      outlined init with take of Any(v95, v55);
      swift_unknownObjectRelease();
      goto LABEL_53;
    }

LABEL_51:
    a2[(v47 >> 6) + 8] |= 1 << v47;
    *(a2[6] + 8 * v47) = v46;
    outlined init with take of Any(v95, (a2[7] + 32 * v47));
    v74 = a2[2];
    v51 = __OFADD__(v74, 1);
    v75 = v74 + 1;
    if (v51)
    {
      goto LABEL_59;
    }

    a2[2] = v75;
LABEL_53:
    v79 = a2;
    a2 = v83;
    v12 = v87;
  }

  v59 = (v57 + 64);
  v60 = 1 << *(v58 + 32);
  v93 = (v79 + 8);
  v61 = (v60 + 63) >> 6;
  if (v58 != v79 || v59 >= &v93[8 * v61])
  {
    memmove(v59, v93, 8 * v61);
  }

  v62 = 0;
  v63 = v79;
  *(v58 + 16) = v79[2];
  v64 = 1 << *(v63 + 32);
  v65 = v63[8];
  if (v64 < 64)
  {
    v66 = ~(-1 << v64);
  }

  else
  {
    v66 = -1;
  }

  v67 = v66 & v65;
  v68 = (v64 + 63) >> 6;
  if ((v66 & v65) != 0)
  {
    do
    {
      v69 = __clz(__rbit64(v67));
      v67 &= v67 - 1;
LABEL_48:
      v72 = v69 | (v62 << 6);
      isUniquelyReferenced_nonNull_native = *(v79[6] + 8 * v72);
      outlined init with copy of Any(v79[7] + 32 * v72, v94);
      *(*(v58 + 48) + 8 * v72) = isUniquelyReferenced_nonNull_native;
      outlined init with take of Any(v94, (*(v58 + 56) + 32 * v72));
      v73 = isUniquelyReferenced_nonNull_native;
    }

    while (v67);
  }

  v70 = v62;
  while (1)
  {
    v62 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      break;
    }

    if (v62 >= v68)
    {
      goto LABEL_50;
    }

    v71 = *&v93[8 * v62];
    ++v70;
    if (v71)
    {
      v69 = __clz(__rbit64(v71));
      v67 = (v71 - 1) & v71;
      goto LABEL_48;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  type metadata accessor for NSAttributedStringKey(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation16AttributedStringV22AttributeRunBoundariesOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for AttributedString._AttributeValue(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AttributedString._AttributeValue(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AttributedString._AttributeStorage._attributeModified(_:old:new:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v9 = result;
  if (!*(a3 + 24) && !*(a4 + 24))
  {
    return result;
  }

  outlined init with copy of FloatingPointRoundingRule?(a4, &v153, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  v128 = a3;
  if (!*(&v154 + 1))
  {
    outlined destroy of TermOfAddress?(&v153, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    goto LABEL_7;
  }

  v10 = AttributedString._AttributeValue.isInvalidatedOnAttributeChange.getter();
  outlined destroy of AttributedString._AttributeValue(&v153);
  if ((v10 & 1) == 0)
  {
LABEL_7:
    specialized Set._Variant.remove(_:)(v9, a2);
    goto LABEL_8;
  }

  specialized Set._Variant.insert(_:)(&v153, v9, a2);
LABEL_8:

  v152 = 2;
  v11 = v5[1];
  v12 = v11 + 56;
  v13 = 1 << *(v11 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v11 + 56);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  v132 = v11;
  while (v15)
  {
LABEL_17:
    v19 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v20 = (*(v11 + 48) + ((v17 << 10) | (16 * v19)));
    v21 = *v20;
    if (*v20 != v9 || v20[1] != a2)
    {
      v133 = v20[1];
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v23 = *v5;
        if (!*(*v5 + 16))
        {
          goto LABEL_51;
        }

        v130 = v5;

        v127 = v21;
        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v133);
        if (v25)
        {
          v131 = v9;
          outlined init with copy of AttributedString._AttributeValue(*(v23 + 56) + 72 * v24, &v147);
          v26 = v151;
          v157 = v151;
          v155 = v149;
          v156 = v150;
          v153 = v147;
          v154 = v148;
          if (v151)
          {
            v129 = a2;
            v126 = v6;
            v27 = 1 << *(v151 + 32);
            if (v27 < 64)
            {
              v28 = ~(-1 << v27);
            }

            else
            {
              v28 = -1;
            }

            v29 = v28 & *(v151 + 56);
            v30 = (v27 + 63) >> 6;

            v31 = 0;
            do
            {
              while (1)
              {
                if (!v29)
                {
                  while (1)
                  {
                    v32 = v31 + 1;
                    if (__OFADD__(v31, 1))
                    {
                      goto LABEL_102;
                    }

                    if (v32 >= v30)
                    {

                      v5 = v130;
                      v6 = v126;
                      goto LABEL_50;
                    }

                    v29 = *(v26 + 56 + 8 * v32);
                    ++v31;
                    if (v29)
                    {
                      v31 = v32;
                      break;
                    }
                  }
                }

                v33 = __clz(__rbit64(v29));
                v29 &= v29 - 1;
                v34 = (*(v26 + 48) + ((v31 << 10) | (16 * v33)));
                v35 = v34[1];
                if (v35)
                {
                  break;
                }
              }

              v36 = *v34 == v131 && v35 == a2;
            }

            while (!v36 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);

            v6 = v126;
            v5 = v130;
            if ((specialized getter of valueChanged #1 in AttributedString._AttributeStorage._attributeModified(_:old:new:)(&v152, v128, v126) & 1) == 0)
            {
              goto LABEL_103;
            }

            v151 = 0;
            v149 = 0u;
            v150 = 0u;
            v147 = 0u;
            v148 = 0u;
            outlined init with copy of FloatingPointRoundingRule?(&v147, &v142, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            if (!*(&v143 + 1))
            {
              outlined destroy of TermOfAddress?(&v142, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              v39 = v127;
              v56 = specialized __RawDictionaryStorage.find<A>(_:)(v127, v133);
              v9 = v131;
              if (v57)
              {
                v124 = v56;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v59 = *v130;
                if (isUniquelyReferenced_nonNull_native)
                {
                  v60 = *v130;
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
                  v95 = static _DictionaryStorage.copy(original:)();
                  v60 = v95;
                  if (*(v59 + 16))
                  {
                    v96 = (v95 + 64);
                    v120 = (v59 + 64);
                    v97 = ((1 << *(v60 + 32)) + 63) >> 6;
                    if (v60 != v59 || v96 >= &v120[8 * v97])
                    {
                      memmove(v96, v120, 8 * v97);
                    }

                    __srca = 0;
                    *(v60 + 16) = *(v59 + 16);
                    v98 = 1 << *(v59 + 32);
                    if (v98 < 64)
                    {
                      v99 = ~(-1 << v98);
                    }

                    else
                    {
                      v99 = -1;
                    }

                    v118 = v99 & *(v59 + 64);
                    v100 = (v98 + 63) >> 6;
                    while (v118)
                    {
                      v101 = __clz(__rbit64(v118));
                      v118 &= v118 - 1;
LABEL_96:
                      v104 = v101 | (__srca << 6);
                      v105 = 16 * v104;
                      v106 = (*(v59 + 48) + 16 * v104);
                      v107 = v106[1];
                      v116 = *v106;
                      v108 = 72 * v104;
                      outlined init with copy of AttributedString._AttributeValue(*(v59 + 56) + 72 * v104, &v142);
                      v109 = (*(v60 + 48) + v105);
                      *v109 = v116;
                      v109[1] = v107;
                      v110 = *(v60 + 56) + v108;
                      *v110 = v142;
                      v111 = v143;
                      v112 = v144;
                      v113 = v145;
                      *(v110 + 64) = v146;
                      *(v110 + 32) = v112;
                      *(v110 + 48) = v113;
                      *(v110 + 16) = v111;
                    }

                    v102 = __srca;
                    while (1)
                    {
                      __srca = (v102 + 1);
                      if (__OFADD__(v102, 1))
                      {
                        goto LABEL_107;
                      }

                      if (__srca >= v100)
                      {
                        break;
                      }

                      v103 = *&v120[8 * __srca];
                      ++v102;
                      if (v103)
                      {
                        v101 = __clz(__rbit64(v103));
                        v118 = (v103 - 1) & v103;
                        goto LABEL_96;
                      }
                    }
                  }

                  v5 = v130;
                  v9 = v131;
                  v6 = v126;
                  v39 = v127;
                }

                v61 = *(v60 + 56) + 72 * v124;
                v142 = *v61;
                v63 = *(v61 + 32);
                v62 = *(v61 + 48);
                v64 = *(v61 + 64);
                v143 = *(v61 + 16);
                v144 = v63;
                v146 = v64;
                v145 = v62;
                specialized _NativeDictionary._delete(at:)(v124, v60);
                *v5 = v60;
              }

              else
              {
                v146 = 0;
                v144 = 0u;
                v145 = 0u;
                v142 = 0u;
                v143 = 0u;
              }

              a2 = v129;
              goto LABEL_63;
            }

            v140[2] = v144;
            v140[3] = v145;
            v141 = v146;
            v140[0] = v142;
            v140[1] = v143;
            outlined init with copy of AttributedString._AttributeValue(v140, &v135);
            v37 = swift_isUniquelyReferenced_nonNull_native();
            v38 = *v130;
            v134 = *v130;
            v39 = v127;
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v127, v133);
            v42 = *(v38 + 16);
            v43 = (v40 & 1) == 0;
            v44 = v42 + v43;
            v9 = v131;
            if (__OFADD__(v42, v43))
            {
              __break(1u);
              goto LABEL_105;
            }

            if (*(v38 + 24) >= v44)
            {
              v47 = v133;
              if (v37)
              {
                a2 = v129;
                if ((v40 & 1) == 0)
                {
                  goto LABEL_58;
                }
              }

              else
              {
                v125 = v40;
                v114 = v41;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
                v73 = v38;
                v74 = static _DictionaryStorage.copy(original:)();
                v38 = v74;
                v117 = v73;
                if (*(v73 + 16))
                {
                  v75 = (v74 + 64);
                  __src = (v73 + 64);
                  v76 = ((1 << *(v38 + 32)) + 63) >> 6;
                  if (v38 != v73 || v75 >= &__src[8 * v76])
                  {
                    memmove(v75, __src, 8 * v76);
                  }

                  v77 = 0;
                  *(v38 + 16) = *(v73 + 16);
                  v78 = 1 << *(v73 + 32);
                  v79 = *(v73 + 64);
                  if (v78 < 64)
                  {
                    v80 = ~(-1 << v78);
                  }

                  else
                  {
                    v80 = -1;
                  }

                  v119 = v80 & v79;
                  v81 = (v78 + 63) >> 6;
                  if ((v80 & v79) != 0)
                  {
                    do
                    {
                      v82 = __clz(__rbit64(v119));
                      v119 &= v119 - 1;
LABEL_78:
                      v85 = v82 | (v77 << 6);
                      v86 = 16 * v85;
                      v87 = (*(v117 + 48) + 16 * v85);
                      v88 = v87[1];
                      v115 = *v87;
                      v89 = 72 * v85;
                      outlined init with copy of AttributedString._AttributeValue(*(v117 + 56) + 72 * v85, &v142);
                      v90 = (*(v38 + 48) + v86);
                      *v90 = v115;
                      v90[1] = v88;
                      v91 = *(v38 + 56) + v89;
                      *v91 = v142;
                      v92 = v143;
                      v93 = v144;
                      v94 = v145;
                      *(v91 + 64) = v146;
                      *(v91 + 32) = v93;
                      *(v91 + 48) = v94;
                      *(v91 + 16) = v92;
                    }

                    while (v119);
                  }

                  v83 = v77;
                  while (1)
                  {
                    v77 = v83 + 1;
                    if (__OFADD__(v83, 1))
                    {
                      goto LABEL_106;
                    }

                    if (v77 >= v81)
                    {
                      break;
                    }

                    v84 = *&__src[8 * v77];
                    ++v83;
                    if (v84)
                    {
                      v82 = __clz(__rbit64(v84));
                      v119 = (v84 - 1) & v84;
                      goto LABEL_78;
                    }
                  }
                }

                a2 = v129;
                v5 = v130;
                v6 = v126;
                v39 = v127;
                v9 = v131;
                v47 = v133;
                v41 = v114;
                if ((v125 & 1) == 0)
                {
                  goto LABEL_58;
                }
              }

LABEL_48:
              v48 = *(v38 + 56) + 72 * v41;
              v50 = *(v48 + 16);
              v49 = *(v48 + 32);
              v51 = *(v48 + 48);
              v146 = *(v48 + 64);
              v145 = v51;
              v142 = *v48;
              v143 = v50;
              v144 = v49;
              v52 = *(v38 + 56) + 72 * v41;
              v53 = v136;
              v54 = v137;
              v55 = v138;
              *(v52 + 64) = v139;
              *(v52 + 32) = v54;
              *(v52 + 48) = v55;
              *(v52 + 16) = v53;
              *v52 = v135;
              outlined destroy of AttributedString._AttributeValue(v140);
              goto LABEL_60;
            }

            v123 = v40;
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, v37);
            v38 = v134;
            v45 = specialized __RawDictionaryStorage.find<A>(_:)(v127, v133);
            if ((v123 & 1) == (v46 & 1))
            {
              v41 = v45;
              a2 = v129;
              v47 = v133;
              if (v123)
              {
                goto LABEL_48;
              }

LABEL_58:
              *(v38 + 8 * (v41 >> 6) + 64) |= 1 << v41;
              v65 = (*(v38 + 48) + 16 * v41);
              *v65 = v39;
              v65[1] = v47;
              v66 = *(v38 + 56) + 72 * v41;
              *v66 = v135;
              v67 = v136;
              v68 = v137;
              v69 = v138;
              *(v66 + 64) = v139;
              *(v66 + 32) = v68;
              *(v66 + 48) = v69;
              *(v66 + 16) = v67;

              outlined destroy of AttributedString._AttributeValue(v140);
              v70 = *(v38 + 16);
              v71 = __OFADD__(v70, 1);
              v72 = v70 + 1;
              if (!v71)
              {
                *(v38 + 16) = v72;
                v146 = 0;
                v144 = 0u;
                v145 = 0u;
                v142 = 0u;
                v143 = 0u;
LABEL_60:
                *v5 = v38;
LABEL_63:
                AttributedString._AttributeStorage._attributeModified(_:old:new:)(v39, v133, &v142, &v147);

                outlined destroy of TermOfAddress?(&v142, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of TermOfAddress?(&v147, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of AttributedString._AttributeValue(&v153);
                v11 = v132;
                continue;
              }

LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
LABEL_107:
              __break(1u);
            }

            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

LABEL_50:
          outlined destroy of AttributedString._AttributeValue(&v153);

          v9 = v131;
LABEL_51:
          v11 = v132;
        }

        else
        {

          v11 = v132;
        }
      }
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v16)
    {
    }

    v15 = *(v12 + 8 * v18);
    ++v17;
    if (v15)
    {
      v17 = v18;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  outlined destroy of AttributedString._AttributeValue(&v153);
}

uint64_t AttributedString._AttributeValue.isInvalidatedOnAttributeChange.getter()
{
  v1 = *(v0 + 64);
  if (!v1)
  {
    return 0;
  }

  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      if (*(*(v1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v4)))) + 8))
      {
        break;
      }

      v4 &= v4 - 1;

      v7 = v8;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    v9 = 1;
LABEL_13:

    return v9;
  }

LABEL_6:
  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
      v9 = 0;
      goto LABEL_13;
    }

    v4 = *(v1 + 56 + 8 * v8);
    ++v7;
    if (v4)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v6 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  v34 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    v16 = *v2;
LABEL_12:
    v13 = *(*(v16 + 48) + 16 * v9);
    specialized _NativeSet._delete(at:)(v9);
    *v3 = v34;
    return v13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
  v18 = static _SetStorage.copy(original:)();
  v16 = v18;
  if (!*(v15 + 16))
  {
LABEL_29:

    v34 = v16;
    goto LABEL_12;
  }

  result = (v18 + 56);
  v19 = v15 + 56;
  v20 = ((1 << *(v16 + 32)) + 63) >> 6;
  if (v16 != v15 || result >= v19 + 8 * v20)
  {
    result = memmove(result, (v15 + 56), 8 * v20);
  }

  v21 = 0;
  *(v16 + 16) = *(v15 + 16);
  v22 = 1 << *(v15 + 32);
  v23 = *(v15 + 56);
  v24 = -1;
  if (v22 < 64)
  {
    v24 = ~(-1 << v22);
  }

  v25 = v24 & v23;
  v26 = (v22 + 63) >> 6;
  if ((v24 & v23) != 0)
  {
    do
    {
      v27 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_27:
      v30 = 16 * (v27 | (v21 << 6));
      v31 = (*(v15 + 48) + v30);
      v32 = v31[1];
      v33 = (*(v16 + 48) + v30);
      *v33 = *v31;
      v33[1] = v32;
    }

    while (v25);
  }

  v28 = v21;
  while (1)
  {
    v21 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v21 >= v26)
    {
      goto LABEL_29;
    }

    v29 = *(v19 + 8 * v21);
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v25 = (v29 - 1) & v29;
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall IndexSet.removeAll()()
{
  if (*(*v0 + 24) != 1)
  {
    v2 = *(*v0 + 16);
LABEL_8:
    v3 = v2;
    [v3 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableIndexSet);
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
    v4 = swift_allocObject();
    *(v4 + 16) = v6;
    *(v4 + 24) = 1;
    v5 = v6;

    *v0 = v4;
    [v5 removeAllIndexes];

    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(*v0 + 16);
  if ((*(*v0 + 24) & 1) == 0 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_8;
  }

  [v2 removeAllIndexes];
}

uint64_t static AttributedString.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 40);
  v36 = *(*a1 + 24);
  v37 = v4;
  v38 = *(v2 + 56);
  *&v19 = BigString.startIndex.getter();
  *(&v19 + 1) = v5;
  v20 = v6;
  v21 = v7;
  v22 = BigString.endIndex.getter();
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v11 = *(v3 + 40);
  v33 = *(v3 + 24);
  v34 = v11;
  v35 = *(v3 + 56);
  *&v26 = BigString.startIndex.getter();
  *(&v26 + 1) = v12;
  v27 = v13;
  v28 = v14;
  v29 = BigString.endIndex.getter();
  v30 = v15;
  v31 = v16;
  v32 = v17;
  return specialized static AttributedString.Guts.characterwiseIsEqual(_:in:to:in:)(v2, &v19, v3, &v26) & 1;
}

uint64_t protocol witness for _LocaleProtocol.pref(for:) in conformance _LocaleAutoupdating(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v5 = v4;
  ObjectType = swift_getObjectType();
  (*(v5 + 480))(a1, a2, ObjectType, v5);

  return swift_unknownObjectRelease();
}

uint64_t initEXGetExtensionClass()
{
  v0 = ExtensionFoundationLibrary_frameworkLibrary_0;
  if (!ExtensionFoundationLibrary_frameworkLibrary_0)
  {
    v0 = dlopen("/System/Library/Frameworks/ExtensionFoundation.framework/ExtensionFoundation", 2);
    ExtensionFoundationLibrary_frameworkLibrary_0 = v0;
    if (!v0)
    {
      return 0;
    }
  }

  v1 = dlsym(v0, "EXGetExtensionClass");
  softLinkEXGetExtensionClass = v1;
  if (!v1)
  {
    return 0;
  }

  return v1();
}

uint64_t _FileManagerImpl.currentDirectoryPath.getter()
{
  v30 = *MEMORY[0x1E69E9840];
  if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
  {
    v0 = swift_slowAlloc();
    if (getcwd(v0, 0x402uLL))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_56;
      }

      v9 = Strong;
      v3 = [Strong stringWithFileSystemRepresentation:v0 length:strlen(v0)];

      if (!v3)
      {
        goto LABEL_52;
      }

      isTaggedPointer = _objc_isTaggedPointer(v3);
      v10 = v3;
      v4 = v10;
      if (!isTaggedPointer)
      {
        goto LABEL_23;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v10);
      switch(TaggedPointerTag)
      {
        case 0:
          _CFIndirectTaggedPointerStringGetContents();
          v22 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v25)
          {
            [v4 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v3 = v27;
            goto LABEL_51;
          }

LABEL_42:
          v3 = v22;

LABEL_51:
          break;
        case 0x16:
          goto LABEL_35;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v3 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          break;
        default:
LABEL_23:
          v29 = 0;
          if (__CFStringIsCF())
          {
            v3 = v29;
          }

          else
          {
            v15 = v4;
            v16 = String.init(_nativeStorage:)();
            if (v17)
            {
              v3 = v16;
            }

            else
            {
              v29 = [v15 length];
              if (v29)
              {
                v3 = String.init(_cocoaString:)();
                goto LABEL_51;
              }

              v3 = 0;
            }
          }

          break;
      }
    }

    else
    {
      v3 = 0;
    }

LABEL_52:
    MEMORY[0x1865D2690](v0, -1, -1);
    return v3;
  }

  if (!getcwd(v28, 0x402uLL))
  {
    return 0;
  }

  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 stringWithFileSystemRepresentation:v28 length:strlen(v28)];

    if (!v3)
    {
      return v3;
    }

    v4 = _objc_isTaggedPointer(v3);
    v5 = v3;
    isTaggedPointer = v5;
    if (!v4)
    {
LABEL_20:
      v29 = 0;
      if (!__CFStringIsCF())
      {
        v12 = isTaggedPointer;
        v13 = String.init(_nativeStorage:)();
        if (v14)
        {
          v3 = v13;

          return v3;
        }

        v29 = [v12 length];
        if (!v29)
        {

          return 0;
        }

LABEL_49:
        v3 = String.init(_cocoaString:)();

        return v3;
      }

      v3 = v29;
      if (v29)
      {
        goto LABEL_49;
      }

LABEL_40:

      return v3;
    }

    v7 = _objc_getTaggedPointerTag(v5);
    if (!v7)
    {
      goto LABEL_38;
    }

    if (v7 != 22)
    {
      if (v7 == 2)
      {
        MEMORY[0x1EEE9AC00](v7);
        v3 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        return v3;
      }

      goto LABEL_20;
    }

    v18 = [isTaggedPointer UTF8String];
    if (!v18)
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v19 = String.init(utf8String:)(v18);
    if (v20)
    {
LABEL_39:
      v3 = v19;
      goto LABEL_40;
    }

    __break(1u);
LABEL_35:
    v21 = [v4 UTF8String];
    if (v21)
    {
      v22 = String.init(utf8String:)(v21);
      if (!v23)
      {
        __break(1u);
LABEL_38:
        _CFIndirectTaggedPointerStringGetContents();
        v19 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v24)
        {
          [isTaggedPointer mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v3 = v27;

          return v3;
        }

        goto LABEL_39;
      }

      goto LABEL_42;
    }

    goto LABEL_55;
  }

LABEL_56:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void _SwiftURL.absoluteURL.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v4 = v1[3];
  v3 = v1[4];
  v140 = v1;
  if (!v4)
  {
    *a1 = 0;
    a1[1] = v3;
    return;
  }

  v131 = v3;
  v133 = a1;
  v134 = v2;
  v5 = v140[2];

  swift_unknownObjectRetain();
  specialized _SwiftURL.URLStringBuilder.init(parseInfo:original:)(v5, 0, &v156);
  v6 = *(&v156 + 1);
  v7 = v157;
  v8 = *(&v158 + 1);
  v9 = *(&v159 + 1);
  v10 = v160;
  v155 = v165;
  v138 = v156;
  v139 = v163;
  v135 = v164;
  v136 = v158;
  v132 = v4;
  v137 = *(&v160 + 1);
  if (*(&v156 + 1))
  {
    v128 = *(&v157 + 1);
    v11 = *(&v159 + 1);
    v12 = *(&v158 + 1);
    v13 = v159;
    v14 = v158;
    v15 = String.removingDotSegments.getter(v161, v162);
    v129 = v16;
    v130 = v15;

    v170 = v138;
    v171 = v6;
    v172 = v7;
    v173 = v14;
    v174 = v12;
    v175 = v13;
    v176 = v11;
    v177 = v10;
    v178 = v137;
    v179 = v130;
    v180 = v129;
    v181 = v139;
    v182 = v135;
    v183 = v165;
    v131 = _SwiftURL.URLStringBuilder.string.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    v141 = v138;
    v142 = v6;
    v143 = v7;
    v144 = v136;
    v145 = v12;
    v146 = v13;
    v147 = v11;
    v148 = v10;
    v149 = v137;
    v150 = v130;
    v151 = v129;
    v152 = v139;
    v153 = v135;
LABEL_15:
    v154 = v165;
    outlined destroy of _SwiftURL.URLStringBuilder(&v141);
    goto LABEL_16;
  }

  v129 = v160;
  v130 = v161;
  v126 = v159;
  v127 = v162;
  v19 = *(&v157 + 1);
  v124 = v157;
  ObjectType = swift_getObjectType();
  v21 = (*(v131 + 136))(ObjectType, v131);
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = v138;
  }

  v24 = v5[72];
  v123 = v22;
  v125 = v9;
  if ((v24 & 1) == 0 || (v5[96] & 1) == 0 || v5[120] != 1 || v5[144] != 1)
  {
    v170 = v23;
    v171 = v22;
    *&v172 = v124;
    *(&v172 + 1) = *(&v7 + 1);
    v173 = v136;
    v174 = v8;
    v175 = v126;
    v176 = v9;
    v177 = v129;
    v178 = v137;
    v179 = v130;
    v180 = v127;
    v181 = v139;
    v182 = v135;
    v183 = v165;
    v27 = v23;
    v131 = _SwiftURL.URLStringBuilder.string.getter();
    v18 = v28;
    swift_unknownObjectRelease();
    v141 = v27;
    v142 = v123;
    *&v143 = v124;
    *(&v143 + 1) = *(&v7 + 1);
    v144 = v136;
    v145 = v8;
    v146 = v126;
    v147 = v125;
    v148 = v129;
    v149 = v137;
    v150 = v130;
    v151 = v127;
    v152 = v139;
    v153 = v135;
    goto LABEL_15;
  }

  v138 = ObjectType;
  v122 = v23;
  v170 = v4;
  v171 = v131;
  URL._swiftURL.getter();
  if (v25)
  {
    v26 = *(v25 + 16);
  }

  else
  {
    v26 = 0;
  }

  v37 = (*(v131 + 168))(1, v138, v131);
  if (v38)
  {
    v39 = v37;
    v40 = v38;
    v169 = v157;
    outlined destroy of TermOfAddress?(&v169, &_sSSSgMd);
    v19 = v40;
    v124 = v39;
  }

  v41 = (*(v131 + 184))(1, v138, v131);
  if (v42)
  {
    v43 = v41;
    v44 = v42;
    v168 = v158;
    outlined destroy of TermOfAddress?(&v168, &_sSSSgMd);
    v8 = v44;
    v136 = v43;
  }

  v166 = v159;
  v167 = v160;
  v45 = v26;
  v121 = v8;
  if (v26 && (*(v26 + 120) & 1) == 0)
  {

    v51 = String.subscript.getter();
    v53 = v52;
    v55 = v54;
    v57 = v56;

    v126 = MEMORY[0x1865CAE80](v51, v53, v55, v57);
    v48 = v58;

    outlined destroy of TermOfAddress?(&v166, &_sSSSgMd);
  }

  else
  {
    v46 = (*(v131 + 200))(1, v138, v131);
    v48 = v125;
    if (v47)
    {
      v49 = v46;
      v50 = v47;
      outlined destroy of TermOfAddress?(&v166, &_sSSSgMd);
      v126 = v49;
      v48 = v50;
    }

    if (!v26)
    {
      goto LABEL_34;
    }
  }

  if ((*(v26 + 144) & 1) == 0)
  {
    v125 = v48;

    v62 = String.subscript.getter();
    v64 = v63;
    v66 = v65;
    v68 = v67;

    v129 = MEMORY[0x1865CAE80](v62, v64, v66, v68);
    v137 = v69;

    goto LABEL_37;
  }

LABEL_34:
  v125 = v48;
  v59 = (*(v131 + 208))(v138);
  if (v60)
  {
    goto LABEL_38;
  }

  v170 = v59;
  v129 = dispatch thunk of CustomStringConvertible.description.getter();
  v137 = v61;
LABEL_37:
  outlined destroy of TermOfAddress?(&v167, &_sSSSgMd);
LABEL_38:
  v134 = v45;
  v70 = HIBYTE(v127) & 0xF;
  if ((v127 & 0x2000000000000000) == 0)
  {
    v70 = v130 & 0xFFFFFFFFFFFFLL;
  }

  v128 = v19;
  if (!v70)
  {
    v82 = v164;
    v83 = (*(v131 + 248))(1, v138, v131);
    v85 = v84;

    if (v82)
    {
      v86 = v135;
    }

    else
    {
      v87 = (*(v131 + 264))(1, v138, v131);
      v89 = v139;
      if (v88)
      {
        v89 = v87;
      }

      v139 = v89;
      v86 = v135;
      if (v88)
      {
        v86 = v88;
      }
    }

    v91 = v136;
    v90 = v137;
    v92 = v124;
    v93 = v126;
    v94 = v83;
    goto LABEL_59;
  }

  v71 = v127;
  if ((specialized Collection.first.getter(v130, v127) & 0x1FF) != 0x2F)
  {
    v72 = (*(v131 + 152))(v138, v131);
    v73 = *(v131 + 248);
    if (v72)
    {
      *(&v120 + 1) = *(v131 + 248);
      v74 = v73(1, v138, v131);
      v76 = v75;

      v77 = HIBYTE(v76) & 0xF;
      if ((v76 & 0x2000000000000000) == 0)
      {
        v77 = v74 & 0xFFFFFFFFFFFFLL;
      }

      v73 = *(&v120 + 1);
      if (!v77)
      {
        v170 = 47;
        v171 = 0xE100000000000000;
        MEMORY[0x1865CB0E0](v130, v127);
        v97 = v170;
        v96 = v171;
        v91 = v136;
        goto LABEL_58;
      }
    }

    v78 = v73(1, v138, v131);
    v80 = v79;
    v71 = v127;
    v81 = specialized Collection.first.getter(v130, v127);
    if ((v81 & 0x1FF) == 0x2F)
    {
    }

    else
    {
      LOBYTE(v170) = 47;
      MEMORY[0x1EEE9AC00](v81);
      v119[2] = &v170;
      specialized BidirectionalCollection.lastIndex(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, v119, v78, v80);
      if ((v95 & 1) == 0)
      {
        String.index(after:)();
        v108 = String.subscript.getter();
        v110 = v109;
        v112 = v111;
        v114 = v113;
        v141 = 0;
        v142 = 0xE000000000000000;
        v115 = v127;
        v138 = String.count.getter();
        v131 = v110;
        *&v120 = v112;
        *(&v120 + 1) = v114;
        v116 = Substring.distance(from:to:)();
        v117 = __OFADD__(v138, v116);
        v118 = v138 + v116;
        v91 = v136;
        if (v117)
        {
          __break(1u);
          return;
        }

        MEMORY[0x1865CAED0](v118);
        v170 = v108;
        v171 = v131;
        v172 = v120;
        lazy protocol witness table accessor for type Substring and conformance Substring();
        String.append<A>(contentsOf:)();
        v170 = v130;
        v171 = v115;

        String.append<A>(contentsOf:)();

        v97 = v141;
        v96 = v142;
        goto LABEL_58;
      }

      v71 = v127;
    }
  }

  v96 = v71;
  v91 = v136;
  v97 = v130;
LABEL_58:
  v94 = String.removingDotSegments.getter(v97, v96);
  v99 = v98;

  v85 = v99;

  v86 = v135;
  v92 = v124;
  v90 = v137;
  v93 = v126;
LABEL_59:
  v135 = v86;
  v136 = v91;
  v124 = v92;
  v126 = v93;
  v137 = v90;
  v138 = v94;
  v100 = v122;
  v101 = v123;
  v170 = v122;
  v171 = v123;
  v103 = v128;
  v102 = v129;
  *&v172 = v92;
  *(&v172 + 1) = v128;
  v173 = v91;
  v104 = v121;
  v174 = v121;
  v175 = v93;
  v176 = v125;
  v177 = v129;
  v178 = v90;
  v179 = v94;
  v105 = v139;
  v180 = v85;
  v181 = v139;
  v182 = v86;
  v183 = v155;
  v106 = v85;
  v131 = _SwiftURL.URLStringBuilder.string.getter();
  v18 = v107;
  swift_unknownObjectRelease();

  v141 = v100;
  v142 = v101;
  *&v143 = v124;
  *(&v143 + 1) = v103;
  v144 = v136;
  v145 = v104;
  v146 = v126;
  v147 = v125;
  v148 = v102;
  v149 = v137;
  v150 = v138;
  v151 = v106;
  v152 = v105;
  v153 = v135;
  v154 = v155;
  outlined destroy of _SwiftURL.URLStringBuilder(&v141);
LABEL_16:
  v29 = v140[5];
  v30 = swift_allocObject();
  type metadata accessor for _SwiftURL.ResourceInfo();
  v31 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyXlSg_GMd);
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  *(v32 + 16) = 0;
  *(v31 + 16) = v32;
  *(v30 + 56) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySo5NSURLCSg_GMd);
  v33 = swift_allocObject();
  *(v33 + 24) = 0;
  *(v33 + 16) = 0;
  *(v30 + 64) = v33;
  v34 = static RFC3986Parser.compatibilityParse(urlString:encodingInvalidCharacters:)(v131, v18, 1);

  if (v34)
  {
    *(v30 + 16) = v34;
    if ((*(v34 + 48) & 1) == 0)
    {

      String.subscript.getter();
    }

    *(v30 + 24) = 0;
    *(v30 + 32) = 0;
    *(v30 + 40) = v29;
    *(v30 + 48) = 0;
    v35 = v133;
    *v133 = v30;
    v35[1] = &protocol witness table for _SwiftURL;
  }

  else
  {

    swift_deallocPartialClassInstance();
    v36 = v133;
    *v133 = v140;
    v36[1] = &protocol witness table for _SwiftURL;
  }
}

uint64_t _SwiftURL.scheme.getter()
{
  if (*(v0[2] + 48))
  {
    if (v0[3])
    {
      v1 = v0[4];
      ObjectType = swift_getObjectType();
      return (*(v1 + 136))(ObjectType, v1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v4 = String.subscript.getter();
    v5 = MEMORY[0x1865CAE80](v4);

    return v5;
  }
}

void AttributeContainer.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CD0];
  *a1 = MEMORY[0x1E69E7CC8];
  a1[1] = v1;
}

uint64_t AttributedString.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v64 = a1;
  v63 = a4;
  v62 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v59 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v5;
  v17 = &unk_1EA7B2000;
  v61 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v59 = v8;
    v18 = v14;
    v60 = v11;
    v19 = *(v16 + 40);
    v76 = *(v16 + 24);
    v77 = v19;
    v78 = *(v16 + 56);
    v20 = *(v16 + 72);
    v21 = *(v16 + 80);
    v22 = *(v16 + 88);
    v23 = *(v16 + 96);
    type metadata accessor for AttributedString.Guts();
    v16 = swift_allocObject();
    v24 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v76, &v65);
    v25 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v25);
    if (v20)
    {
      v26 = v22 == 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v26;
    if (v27 == v24)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_10:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v29 = v77;
        *(v16 + 24) = v76;
        *(v16 + 16) = add_explicit;
        *(v16 + 40) = v29;
        *(v16 + 56) = v78;
        *(v16 + 72) = v20;
        *(v16 + 80) = v21;
        *(v16 + 88) = v22;
        *(v16 + 96) = v23;
        *(v16 + 104) = MEMORY[0x1E69E7CC0];

        *v5 = v16;
        v7 = v61;
        v11 = v60;
        v14 = v18;
        v8 = v59;
        v17 = &unk_1EA7B2000;
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
  v30 = v64;
  if (v17[147] != -1)
  {
    swift_once();
  }

  *(v16 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  (*(v8 + 16))(v10, v30, v7);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    v31 = *(v8 + 8);
    v31(v10, v7);
    v32 = *(v16 + 40);
    v73 = *(v16 + 24);
    v74 = v32;
    v75 = *(v16 + 56);
    v33 = v7;
    v34 = BigString.startIndex.getter();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = BigString.endIndex.getter();
    v65 = v34;
    v66 = v36;
    v67 = v38;
    v68 = v40;
    v69 = v41;
    v70 = v42;
    v71 = v43;
    v72 = v44;
    AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(v62, &v65, v62, v63);
    return (v31)(v30, v33);
  }

  else
  {
    (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
    v46 = *(v16 + 40);
    v73 = *(v16 + 24);
    v74 = v46;
    v75 = *(v16 + 56);
    v47 = BigString.startIndex.getter();
    v60 = AssociatedTypeWitness;
    v48 = v14;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v55 = BigString.endIndex.getter();
    v65 = v47;
    v66 = v50;
    v67 = v52;
    v68 = v54;
    v69 = v55;
    v70 = v56;
    v71 = v57;
    v72 = v58;
    AttributedString.Guts.setAttributeValue<A>(_:forKey:in:)(v48, v62, &v65, v62, v63);
    (*(v8 + 8))(v30, v61);
    return (*(v11 + 8))(v48, v60);
  }
}

uint64_t AttributeContainer.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v299 = a1;
  v283[0] = a2;
  v317 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for _loadedScopeCache != -1)
  {
    goto LABEL_355;
  }

  while (1)
  {
    v2 = _loadedScopeCache;
    MEMORY[0x1EEE9AC00](a1);
    os_unfair_lock_lock(v2 + 10);
    partial apply for closure #1 in _loadDefaultAttributes()(&v308);
    v298 = 0;
    os_unfair_lock_unlock(v2 + 10);
    v3 = v308;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14AttributeScope_pXpGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 32) = &type metadata for AttributeScopes.FoundationAttributes;
    *(inited + 40) = &protocol witness table for AttributeScopes.FoundationAttributes;
    *&v308 = v3;
    specialized Array.append<A>(contentsOf:)(inited);
    v5 = v308;
    v6 = *(v308 + 16);
    if (v6)
    {
      *&v308 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
      v7 = v308;
      v8 = v5 + 40;
      do
      {
        v9 = static AttributeScope.scopeDescription.getter(*(v8 - 8));

        *&v308 = v7;
        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v7 = v308;
        }

        *(v7 + 16) = v11 + 1;
        *(v7 + 8 * v11 + 32) = v9;
        v8 += 16;
        --v6;
      }

      while (v6);

      v12 = v7;
    }

    else
    {

      v12 = MEMORY[0x1E69E7CC0];
    }

    v13 = MEMORY[0x1E69E7CC8];
    v297 = *(v12 + 16);
    if (!v297)
    {
      break;
    }

    v14 = 0;
    v295 = v12;
    v296 = v12 + 32;
    while (v14 < *(v12 + 16))
    {
      v15 = *(v296 + 8 * v14);
      v300 = v14 + 1;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v308 = v13;
      v17 = v15 + 64;
      v18 = 1 << *(v15 + 32);
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v20 = v19 & *(v15 + 64);
      v21 = (v18 + 63) >> 6;
      v302 = v15;

      v22 = 0;
      v301 = v21;
      while (v20)
      {
        v23 = v22;
LABEL_24:
        v24 = (v23 << 10) | (16 * __clz(__rbit64(v20)));
        v25 = v302[6] + v24;
        v26 = *v25;
        v27 = *(v25 + 8);
        v303 = *(v302[7] + v24);

        v304 = v26;
        v28 = v13;
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
        v31 = *(v13 + 16);
        v32 = (v29 & 1) == 0;
        v33 = v31 + v32;
        if (__OFADD__(v31, v32))
        {
LABEL_351:
          __break(1u);
LABEL_352:
          __break(1u);
          goto LABEL_353;
        }

        v34 = v29;
        if (*(v13 + 24) >= v33)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation19AttributedStringKey_pXpGMd);
            v42 = static _DictionaryStorage.copy(original:)();
            v28 = v42;
            if (*(v13 + 16))
            {
              v43 = (v42 + 64);
              v44 = v13 + 64;
              v45 = ((1 << *(v28 + 32)) + 63) >> 6;
              if (v28 != v13 || v43 >= v44 + 8 * v45)
              {
                memmove(v43, (v13 + 64), 8 * v45);
              }

              v46 = 0;
              *(v28 + 16) = *(v13 + 16);
              v47 = 1 << *(v13 + 32);
              if (v47 < 64)
              {
                v48 = ~(-1 << v47);
              }

              else
              {
                v48 = -1;
              }

              v49 = v48 & *(v13 + 64);
              v292 = (v47 + 63) >> 6;
              if (!v49)
              {
                goto LABEL_42;
              }

              while (1)
              {
                v293 = (v49 - 1) & v49;
                v294 = v46;
                for (i = __clz(__rbit64(v49)) | (v46 << 6); ; i = __clz(__rbit64(v53)) | (v52 << 6))
                {
                  v54 = 16 * i;
                  v55 = (*(v13 + 48) + v54);
                  v57 = *v55;
                  v56 = v55[1];
                  v58 = *(*(v13 + 56) + v54);
                  v59 = (*(v28 + 48) + v54);
                  *v59 = v57;
                  v59[1] = v56;
                  *(*(v28 + 56) + v54) = v58;

                  v49 = v293;
                  v46 = v294;
                  if (v293)
                  {
                    break;
                  }

LABEL_42:
                  v51 = v46;
                  do
                  {
                    v52 = (v51 + 1);
                    if (__OFADD__(v51, 1))
                    {
                      goto LABEL_357;
                    }

                    if (v52 >= v292)
                    {
                      goto LABEL_49;
                    }

                    v53 = *(v44 + 8 * v52);
                    ++v51;
                  }

                  while (!v53);
                  v293 = (v53 - 1) & v53;
                  v294 = v52;
                }
              }
            }

LABEL_49:

            *&v308 = v28;
          }

          v35 = v304;
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native & 1);
          v28 = v308;
          v35 = v304;
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v304, v27);
          if ((v34 & 1) != (v37 & 1))
          {
            goto LABEL_371;
          }

          v30 = v36;
        }

        v20 &= v20 - 1;
        if (v34)
        {

          *(*(v28 + 56) + 16 * v30) = v303;
        }

        else
        {
          *(v28 + 8 * (v30 >> 6) + 64) |= 1 << v30;
          v38 = (*(v28 + 48) + 16 * v30);
          *v38 = v35;
          v38[1] = v27;
          *(*(v28 + 56) + 16 * v30) = v303;
          v39 = *(v28 + 16);
          v40 = __OFADD__(v39, 1);
          v41 = v39 + 1;
          if (v40)
          {
            goto LABEL_352;
          }

          *(v28 + 16) = v41;
        }

        isUniquelyReferenced_nonNull_native = 1;
        v22 = v23;
        v13 = v28;
        v21 = v301;
      }

      while (1)
      {
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
LABEL_350:
          __break(1u);
          goto LABEL_351;
        }

        if (v23 >= v21)
        {
          break;
        }

        v20 = *(v17 + 8 * v23);
        ++v22;
        if (v20)
        {
          goto LABEL_24;
        }
      }

      v14 = v300;
      v12 = v295;
      if (v300 == v297)
      {
        goto LABEL_50;
      }
    }

LABEL_353:
    __break(1u);
LABEL_354:
    __break(1u);
LABEL_355:
    a1 = swift_once();
  }

LABEL_50:
  *&v303 = v13;

  v60 = 0;
  v307 = MEMORY[0x1E69E7CC8];
  v61 = v299 + 64;
  v62 = 1 << *(v299 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v299 + 64);
  v65 = (v62 + 63) >> 6;
  v287 = @"NSCocoaErrorDomain";
  v291 = v65;
  v292 = v299 + 64;
  while (1)
  {
    if (v64)
    {
      v66 = v60;
LABEL_65:
      v69 = __clz(__rbit64(v64));
      v64 &= v64 - 1;
      v70 = v69 | (v66 << 6);
      v71 = *(*(v299 + 48) + 8 * v70);
      outlined init with copy of Any(*(v299 + 56) + 32 * v70, &v313);
      *&v308 = v71;
      outlined init with take of Any(&v313, (&v308 + 8));
      v72 = v71;
    }

    else
    {
      if (v65 <= v60 + 1)
      {
        v67 = v60 + 1;
      }

      else
      {
        v67 = v65;
      }

      v68 = v67 - 1;
      while (1)
      {
        v66 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_350;
        }

        if (v66 >= v65)
        {
          break;
        }

        v64 = *(v61 + 8 * v66);
        ++v60;
        if (v64)
        {
          v60 = v66;
          goto LABEL_65;
        }
      }

      v64 = 0;
      v310[0] = 0;
      v60 = v68;
      v308 = 0u;
      v309 = 0u;
    }

    v315[0] = v308;
    v315[1] = v309;
    v316 = v310[0];
    v73 = v308;
    if (!v308)
    {

      *v283[0] = v307;
      return result;
    }

    outlined init with take of Any((v315 + 8), &v313);
    isTaggedPointer = _objc_isTaggedPointer(v73);
    v75 = v73;
    v76 = v75;
    if (!isTaggedPointer)
    {
      goto LABEL_72;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v75);
    switch(TaggedPointerTag)
    {
      case 0:
        v305 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v92 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v93)
        {
          [v76 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v81 = *(&v312 + 1);
          v82 = v312;
          goto LABEL_101;
        }

        v81 = v93;
LABEL_99:
        v91 = v92;
        goto LABEL_100;
      case 0x16:
        v88 = [v76 UTF8String];
        if (!v88)
        {
          goto LABEL_359;
        }

        v89 = String.init(utf8String:)(v88);
        if (!v90)
        {
          goto LABEL_358;
        }

        v91 = v89;
        v81 = v90;
LABEL_100:

        v82 = v91;
        goto LABEL_101;
      case 2:
        v302 = v283;
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v78 = v298;
        v79 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v81 = v80;
        v298 = v78;

        v82 = v79;
        goto LABEL_101;
    }

LABEL_72:
    LOBYTE(v312) = 0;
    *&v308 = 0;
    LOBYTE(v305) = 0;
    v306 = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      if (!v308)
      {

        goto LABEL_81;
      }

      if (v306 == 1)
      {
        if (v312)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v82 = String.init<A>(_immortalCocoaString:count:encoding:)();
        v81 = v96;
        goto LABEL_101;
      }

      if (v305)
      {
        if (v312 == 1)
        {
          v302 = v283;
        }

        else
        {
          IsCF = [v76 lengthOfBytesUsingEncoding_];
        }

        MEMORY[0x1EEE9AC00](IsCF);
        v94 = v298;
        v92 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v81 = v95;
        v97 = HIBYTE(v95) & 0xF;
        if ((v95 & 0x2000000000000000) == 0)
        {
          v97 = v92 & 0xFFFFFFFFFFFFLL;
        }

        v298 = v94;
        if (v97)
        {
          goto LABEL_99;
        }
      }
    }

    else
    {
      v84 = v76;
      v85 = String.init(_nativeStorage:)();
      if (v86)
      {
        v81 = v86;
        v87 = v85;

        v82 = v87;
        goto LABEL_101;
      }

      *&v308 = [v84 length];
      if (!v308)
      {

LABEL_81:
        v82 = 0;
        v81 = 0xE000000000000000;
LABEL_101:
        v98 = v303;
        if (!*(v303 + 16))
        {
          goto LABEL_53;
        }

        goto LABEL_102;
      }
    }

    v98 = v303;
    v82 = String.init(_cocoaString:)();
    v81 = v171;
    if (!*(v98 + 16))
    {
LABEL_53:

      goto LABEL_54;
    }

LABEL_102:
    v304 = v76;
    v99 = specialized __RawDictionaryStorage.find<A>(_:)(v82, v81);
    v101 = v100;

    if ((v101 & 1) == 0)
    {

      goto LABEL_54;
    }

    v102 = (*(v98 + 56) + 16 * v99);
    v103 = v102[1];
    v302 = *v102;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v105 = type metadata accessor for Optional();
    v106 = *(v105 - 8);
    v300 = *(v106 + 64);
    MEMORY[0x1EEE9AC00](v105);
    v294 = v283 - v107;
    v108 = v314;
    v109 = __swift_project_boxed_opaque_existential_1(&v313, v314);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v111 = *(*(v108 - 8) + 64);
    v296 = v106;
    v297 = v105;
    v295 = AssociatedTypeWitness;
    v293 = v103;
    if (isClassOrObjCExistentialType)
    {
      if (v111 != 8)
      {
        goto LABEL_354;
      }

      v112 = *v109;
      swift_unknownObjectRetain();
    }

    else
    {
      v279 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
      (*(v281 + 16))(v283 - ((v280 + 15) & 0xFFFFFFFFFFFFFFF0), v109, v108, v279);
      v112 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v113 = v302;
    v114 = swift_conformsToProtocol2();
    v301 = v283;
    if (!v114 || !v113)
    {
      break;
    }

    v115 = v114;
    swift_getAssociatedTypeWitness();
    swift_unknownObjectRetain();
    v116 = swift_dynamicCastUnknownClass();
    if (!v116)
    {
      swift_unknownObjectRelease();
      v138 = v287;
      v139 = _objc_isTaggedPointer(v287);
      v140 = v138;
      v141 = v140;
      v288 = v112;
      if (v139)
      {
        v142 = _objc_getTaggedPointerTag(v140);
        switch(v142)
        {
          case 0:
            v305 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v181)
            {
              [(__CFString *)v141 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_222;
            }

            goto LABEL_159;
          case 0x16:
            v179 = [(__CFString *)v141 UTF8String];
            if (!v179)
            {
              goto LABEL_364;
            }

            String.init(utf8String:)(v179);
            if (!v180)
            {
              goto LABEL_363;
            }

            goto LABEL_159;
          case 2:
            MEMORY[0x1EEE9AC00](v142);
            v143 = v298;
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v298 = v143;

            goto LABEL_222;
        }
      }

      LOBYTE(v312) = 0;
      *&v308 = 0;
      LOBYTE(v305) = 0;
      v306 = 0;
      v170 = __CFStringIsCF();
      if (!v170)
      {
        v174 = v141;
        String.init(_nativeStorage:)();
        if (v175 || (*&v308 = [(__CFString *)v174 length], !v308))
        {

          goto LABEL_222;
        }

        goto LABEL_221;
      }

      if (v308)
      {
        if (v306 == 1)
        {
          if (v312)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_222:
          v216 = objc_allocWithZone(NSError);
          v217 = String._bridgeToObjectiveCImpl()();

          v188 = [v216 initWithDomain:v217 code:4866 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v218 = [v188 domain];
          if (!v218)
          {
            v225 = 0;
            v227 = 0xE000000000000000;
            goto LABEL_305;
          }

          LODWORD(v302) = v139;
          v219 = v218;
          v220 = _objc_isTaggedPointer(v218);
          v221 = v219;
          v222 = v221;
          if ((v220 & 1) == 0)
          {
            goto LABEL_228;
          }

          v223 = _objc_getTaggedPointerTag(v221);
          if (v223)
          {
            if (v223 != 22)
            {
              if (v223 == 2)
              {
                MEMORY[0x1EEE9AC00](v223);
                v224 = v298;
                v225 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v227 = v226;
                v298 = v224;

LABEL_304:
                v139 = v302;
LABEL_305:
                v260 = v141;
                v261 = v260;
                if (!v139)
                {
                  goto LABEL_310;
                }

                v262 = _objc_getTaggedPointerTag(v260);
                if (v262)
                {
                  if (v262 != 22)
                  {
                    if (v262 == 2)
                    {
                      MEMORY[0x1EEE9AC00](v262);
                      v263 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v265 = v264;

                      goto LABEL_340;
                    }

LABEL_310:
                    LOBYTE(v312) = 0;
                    *&v308 = 0;
                    LOBYTE(v305) = 0;
                    v306 = 0;
                    v266 = __CFStringIsCF();
                    if (v266)
                    {
                      if (v308)
                      {
                        if (v306 == 1)
                        {
                          if (v312)
                          {
                            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                          }

                          else
                          {
                            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                          }

                          v273 = String.init<A>(_immortalCocoaString:count:encoding:)();
                          goto LABEL_339;
                        }

                        if (v305)
                        {
                          if (v312 != 1)
                          {
                            v266 = [(__CFString *)v261 lengthOfBytesUsingEncoding:4];
                          }

                          MEMORY[0x1EEE9AC00](v266);
                          v275 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                          v265 = v276;
                          v277 = HIBYTE(v276) & 0xF;
                          if ((v276 & 0x2000000000000000) == 0)
                          {
                            v277 = v275 & 0xFFFFFFFFFFFFLL;
                          }

                          if (v277)
                          {
                            v263 = v275;

                            goto LABEL_340;
                          }
                        }

LABEL_338:
                        v273 = String.init(_cocoaString:)();
LABEL_339:
                        v263 = v273;
                        v265 = v274;
LABEL_340:
                        if (v225 == v263 && v227 == v265)
                        {
                          goto LABEL_342;
                        }

                        v278 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if ((v278 & 1) == 0)
                        {
                          goto LABEL_356;
                        }

                        goto LABEL_344;
                      }
                    }

                    else
                    {
                      v267 = v261;
                      v268 = String.init(_nativeStorage:)();
                      if (v269)
                      {
                        v263 = v268;
                        v265 = v269;

                        goto LABEL_340;
                      }

                      *&v308 = [(__CFString *)v267 length];
                      if (v308)
                      {
                        goto LABEL_338;
                      }
                    }

                    v263 = 0;
                    v265 = 0xE000000000000000;
                    goto LABEL_340;
                  }

                  v270 = [(__CFString *)v261 UTF8String];
                  if (!v270)
                  {
                    goto LABEL_366;
                  }

                  v271 = String.init(utf8String:)(v270);
                  if (!v272)
                  {
                    goto LABEL_365;
                  }
                }

                else
                {
                  v305 = 0;
                  _CFIndirectTaggedPointerStringGetContents();
                  v271 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (!v272)
                  {
                    [(__CFString *)v261 mutableCopy];
                    _bridgeAnyObjectToAny(_:)();

                    swift_unknownObjectRelease();
                    swift_dynamicCast();
                    v265 = *(&v312 + 1);
                    v263 = v312;
                    goto LABEL_340;
                  }
                }

                v263 = v271;
                v265 = v272;

                goto LABEL_340;
              }

LABEL_228:
              LOBYTE(v312) = 0;
              *&v308 = 0;
              LOBYTE(v305) = 0;
              v306 = 0;
              v228 = __CFStringIsCF();
              if (v228)
              {
                v225 = v308;
                if (!v308)
                {

                  v227 = 0xE000000000000000;
                  goto LABEL_304;
                }

                if (v306 == 1)
                {
                  if (v312)
                  {
                    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                  }

                  else
                  {
                    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                  }

                  v235 = String.init<A>(_immortalCocoaString:count:encoding:)();
                  goto LABEL_302;
                }

                if (v305)
                {
                  if (v312 != 1)
                  {
                    v228 = [v222 lengthOfBytesUsingEncoding_];
                  }

                  MEMORY[0x1EEE9AC00](v228);
                  v256 = v298;
                  v257 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v227 = v258;
                  v259 = HIBYTE(v258) & 0xF;
                  if ((v258 & 0x2000000000000000) == 0)
                  {
                    v259 = v257 & 0xFFFFFFFFFFFFLL;
                  }

                  v298 = v256;
                  if (v259)
                  {
                    v225 = v257;
                    goto LABEL_242;
                  }
                }
              }

              else
              {
                v229 = v222;
                v230 = String.init(_nativeStorage:)();
                if (v231)
                {
                  v225 = v230;
                  v227 = v231;

                  goto LABEL_304;
                }

                *&v308 = [v229 length];
                if (!v308)
                {

                  v225 = 0;
                  v227 = 0xE000000000000000;
                  goto LABEL_304;
                }
              }

              v235 = String.init(_cocoaString:)();
LABEL_302:
              v225 = v235;
              v227 = v236;
              goto LABEL_303;
            }

            v232 = [v222 UTF8String];
            if (!v232)
            {
              goto LABEL_369;
            }

            v233 = String.init(utf8String:)(v232);
            if (!v234)
            {
              goto LABEL_370;
            }
          }

          else
          {
            v305 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v233 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v234)
            {
              [v222 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v227 = *(&v312 + 1);
              v225 = v312;
              goto LABEL_303;
            }
          }

          v225 = v233;
          v227 = v234;
LABEL_242:

LABEL_303:
          goto LABEL_304;
        }

        if (v305)
        {
          LODWORD(v302) = v139;
          if (v312 != 1)
          {
            v170 = [(__CFString *)v141 lengthOfBytesUsingEncoding:4];
          }

          MEMORY[0x1EEE9AC00](v170);
          v208 = v298;
          v209 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v211 = HIBYTE(v210) & 0xF;
          if ((v210 & 0x2000000000000000) == 0)
          {
            v211 = v209 & 0xFFFFFFFFFFFFLL;
          }

          v298 = v208;
          if (v211)
          {

            v139 = v302;
            goto LABEL_222;
          }

          v139 = v302;
        }

LABEL_221:
        String.init(_cocoaString:)();
        goto LABEL_222;
      }

LABEL_159:

      goto LABEL_222;
    }

    v117 = v116;
    v118 = swift_getAssociatedTypeWitness();
    v119 = MEMORY[0x1EEE9AC00](v118);
    v120 = v117;
    v121 = v298;
    (*(v115 + 32))(v120, v113, v115, v119);
    if (!v121)
    {
      v298 = 0;
      swift_unknownObjectRelease_n();
      v130 = v294;
      v122 = v295;
      swift_dynamicCast();
      v123 = *(v122 - 8);
LABEL_130:
      v145 = (*(v123 + 56))(v130, 0, 1, v122);
      v289 = v283;
      v146 = *(v123 + 64);
      MEMORY[0x1EEE9AC00](v145);
      v286 = v147;
      v290 = v283 - v147;
      v148 = v122;
      v288 = v283;
      v150 = MEMORY[0x1EEE9AC00](v149);
      v152 = v283 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
      v153 = v296;
      v154 = v297;
      (*(v296 + 16))(v152, v150);
      if ((*(v123 + 48))(v152, 1, v148) == 1)
      {
        v155 = *(v153 + 8);
        v155(v152, v154);
        v156 = (*(v293 + 24))();
        v311 = 0;
        memset(v310, 0, sizeof(v310));
        v308 = 0u;
        v309 = 0u;
        specialized AttributedString._AttributeStorage.subscript.setter(&v308, v156, v157);

        v155(v294, v154);
      }

      else
      {
        v284 = v123;
        (*(v123 + 32))(v290, v152, v148);
        v158 = v293;
        v159 = v302;
        v300 = (*(v293 + 24))(v302, v293);
        v288 = v160;
        v285 = v283;
        v161 = MEMORY[0x1EEE9AC00](v300);
        v162 = v286;
        v283[1] = v146;
        v163 = *(v123 + 16);
        v164 = v283 - v286;
        v165 = v295;
        v166 = v163(v161);
        v283[2] = v283;
        v167 = MEMORY[0x1EEE9AC00](v166);
        (v163)(v283 - v162, v164, v165, v167);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
        swift_dynamicCast();
        (*(v158 + 32))(&v312, v159, v158);
        *&v310[1] = v312;
        LOBYTE(v310[3]) = (*(v158 + 40))(v159, v158) & 1;
        v168 = (*(v158 + 48))(v159, v158);
        v169 = *(v284 + 8);
        v169(v164, v165);
        v311 = v168;
        specialized AttributedString._AttributeStorage.subscript.setter(&v308, v300, v288);

        v169(v290, v165);
        (*(v296 + 8))(v294, v297);
      }

      goto LABEL_346;
    }

    swift_unknownObjectRelease_n();

LABEL_345:
    v298 = 0;
LABEL_346:
    v65 = v291;
    v61 = v292;
LABEL_54:
    __swift_destroy_boxed_opaque_existential_1(&v313);
  }

  v290 = v283;
  v122 = v295;
  v123 = *(v295 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v125 = v283 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = v283;
  *&v308 = v112;
  MEMORY[0x1EEE9AC00](v126);
  v128 = v283 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    (*(v123 + 56))(v128, 0, 1, v122);
    v129 = *(v123 + 32);
    v129(v125, v128, v122);
    v130 = v294;
    v129(v294, v125, v122);
    goto LABEL_130;
  }

  v288 = v112;
  (*(v123 + 56))(v128, 1, 1, v122);
  (*(v296 + 8))(v128, v297);
  v131 = v287;
  v132 = _objc_isTaggedPointer(v287);
  v133 = v131;
  v134 = v133;
  if (!v132)
  {
    goto LABEL_124;
  }

  v135 = _objc_getTaggedPointerTag(v133);
  if (!v135)
  {
    v305 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v178)
    {
      [(__CFString *)v134 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_181;
    }

    goto LABEL_150;
  }

  if (v135 != 22)
  {
    if (v135 == 2)
    {
      v136 = v132;
      MEMORY[0x1EEE9AC00](v135);
      v137 = v298;
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v298 = v137;

      goto LABEL_178;
    }

LABEL_124:
    LOBYTE(v312) = 0;
    *&v308 = 0;
    LOBYTE(v305) = 0;
    v306 = 0;
    v144 = __CFStringIsCF();
    if (!v144)
    {
      v172 = v134;
      String.init(_nativeStorage:)();
      if (v173 || (*&v308 = [(__CFString *)v172 length], !v308))
      {

        goto LABEL_181;
      }

      goto LABEL_180;
    }

    if (v308)
    {
      if (v306 == 1)
      {
        if (v312)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_181;
      }

      if (v305)
      {
        v136 = v132;
        if (v312 != 1)
        {
          v144 = [(__CFString *)v134 lengthOfBytesUsingEncoding:4];
        }

        MEMORY[0x1EEE9AC00](v144);
        v182 = v298;
        v183 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v185 = HIBYTE(v184) & 0xF;
        if ((v184 & 0x2000000000000000) == 0)
        {
          v185 = v183 & 0xFFFFFFFFFFFFLL;
        }

        v298 = v182;
        if (v185)
        {

LABEL_178:
          v132 = v136;
LABEL_181:
          v186 = objc_allocWithZone(NSError);
          v187 = String._bridgeToObjectiveCImpl()();

          v188 = [v186 initWithDomain:v187 code:4866 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v189 = [v188 domain];
          if (!v189)
          {
            v196 = 0;
            v198 = 0xE000000000000000;
            goto LABEL_256;
          }

          LODWORD(v302) = v132;
          v190 = v189;
          v191 = _objc_isTaggedPointer(v189);
          v192 = v190;
          v193 = v192;
          if ((v191 & 1) == 0)
          {
            goto LABEL_187;
          }

          v194 = _objc_getTaggedPointerTag(v192);
          if (v194)
          {
            if (v194 != 22)
            {
              if (v194 == 2)
              {
                MEMORY[0x1EEE9AC00](v194);
                v195 = v298;
                v196 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v198 = v197;
                v298 = v195;

                goto LABEL_255;
              }

LABEL_187:
              LOBYTE(v312) = 0;
              *&v308 = 0;
              LOBYTE(v305) = 0;
              v306 = 0;
              v199 = __CFStringIsCF();
              if (v199)
              {
                v196 = v308;
                if (!v308)
                {

                  v198 = 0xE000000000000000;
                  goto LABEL_255;
                }

                if (v306 == 1)
                {
                  if (v312)
                  {
                    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                  }

                  else
                  {
                    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                  }

                  v206 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_253:
                  v196 = v206;
                  v198 = v207;
LABEL_254:

LABEL_255:
                  v132 = v302;
LABEL_256:
                  v237 = v134;
                  v238 = v237;
                  if (!v132)
                  {
                    goto LABEL_261;
                  }

                  v239 = _objc_getTaggedPointerTag(v237);
                  if (v239)
                  {
                    if (v239 != 22)
                    {
                      if (v239 == 2)
                      {
                        MEMORY[0x1EEE9AC00](v239);
                        v240 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        v242 = v241;

LABEL_291:
                        if (v196 != v240 || v198 != v242)
                        {
                          v255 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if ((v255 & 1) == 0)
                          {
                            __break(1u);
LABEL_356:
                            __break(1u);
LABEL_357:
                            __break(1u);
LABEL_358:
                            __break(1u);
LABEL_359:
                            __break(1u);
                          }

                          goto LABEL_344;
                        }

LABEL_342:

LABEL_344:
                        swift_willThrow();

                        swift_unknownObjectRelease();
                        goto LABEL_345;
                      }

LABEL_261:
                      LOBYTE(v312) = 0;
                      *&v308 = 0;
                      LOBYTE(v305) = 0;
                      v306 = 0;
                      v243 = __CFStringIsCF();
                      if (v243)
                      {
                        if (v308)
                        {
                          if (v306 == 1)
                          {
                            if (v312)
                            {
                              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                            }

                            else
                            {
                              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                            }

                            v250 = String.init<A>(_immortalCocoaString:count:encoding:)();
                            goto LABEL_290;
                          }

                          if (v305)
                          {
                            if (v312 != 1)
                            {
                              v243 = [(__CFString *)v238 lengthOfBytesUsingEncoding:4];
                            }

                            MEMORY[0x1EEE9AC00](v243);
                            v252 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                            v242 = v253;
                            v254 = HIBYTE(v253) & 0xF;
                            if ((v253 & 0x2000000000000000) == 0)
                            {
                              v254 = v252 & 0xFFFFFFFFFFFFLL;
                            }

                            if (v254)
                            {
                              v240 = v252;

                              goto LABEL_291;
                            }
                          }

LABEL_289:
                          v250 = String.init(_cocoaString:)();
LABEL_290:
                          v240 = v250;
                          v242 = v251;
                          goto LABEL_291;
                        }
                      }

                      else
                      {
                        v244 = v238;
                        v245 = String.init(_nativeStorage:)();
                        if (v246)
                        {
                          v240 = v245;
                          v242 = v246;

                          goto LABEL_291;
                        }

                        *&v308 = [(__CFString *)v244 length];
                        if (v308)
                        {
                          goto LABEL_289;
                        }
                      }

                      v240 = 0;
                      v242 = 0xE000000000000000;
                      goto LABEL_291;
                    }

                    v247 = [(__CFString *)v238 UTF8String];
                    if (!v247)
                    {
                      goto LABEL_362;
                    }

                    v248 = String.init(utf8String:)(v247);
                    if (!v249)
                    {
                      goto LABEL_361;
                    }
                  }

                  else
                  {
                    v305 = 0;
                    _CFIndirectTaggedPointerStringGetContents();
                    v248 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                    if (!v249)
                    {
                      [(__CFString *)v238 mutableCopy];
                      _bridgeAnyObjectToAny(_:)();

                      swift_unknownObjectRelease();
                      swift_dynamicCast();
                      v242 = *(&v312 + 1);
                      v240 = v312;
                      goto LABEL_291;
                    }
                  }

                  v240 = v248;
                  v242 = v249;

                  goto LABEL_291;
                }

                if (v305)
                {
                  if (v312 != 1)
                  {
                    v199 = [v193 lengthOfBytesUsingEncoding_];
                  }

                  MEMORY[0x1EEE9AC00](v199);
                  v212 = v298;
                  v213 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v198 = v214;
                  v215 = HIBYTE(v214) & 0xF;
                  if ((v214 & 0x2000000000000000) == 0)
                  {
                    v215 = v213 & 0xFFFFFFFFFFFFLL;
                  }

                  v298 = v212;
                  if (v215)
                  {
                    v196 = v213;
                    goto LABEL_201;
                  }
                }
              }

              else
              {
                v200 = v193;
                v201 = String.init(_nativeStorage:)();
                if (v202)
                {
                  v196 = v201;
                  v198 = v202;

                  goto LABEL_255;
                }

                *&v308 = [v200 length];
                if (!v308)
                {

                  v196 = 0;
                  v198 = 0xE000000000000000;
                  goto LABEL_255;
                }
              }

              v206 = String.init(_cocoaString:)();
              goto LABEL_253;
            }

            v203 = [v193 UTF8String];
            if (!v203)
            {
              goto LABEL_368;
            }

            v204 = String.init(utf8String:)(v203);
            if (!v205)
            {
              goto LABEL_367;
            }
          }

          else
          {
            v305 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v204 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v205)
            {
              [v193 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v198 = *(&v312 + 1);
              v196 = v312;
              goto LABEL_254;
            }
          }

          v196 = v204;
          v198 = v205;
LABEL_201:

          goto LABEL_254;
        }
      }

LABEL_180:
      String.init(_cocoaString:)();
      goto LABEL_181;
    }

LABEL_150:

    goto LABEL_181;
  }

  v176 = [(__CFString *)v134 UTF8String];
  if (!v176)
  {
    goto LABEL_360;
  }

  String.init(utf8String:)(v176);
  if (v177)
  {
    goto LABEL_150;
  }

  __break(1u);
LABEL_360:
  __break(1u);
LABEL_361:
  __break(1u);
LABEL_362:
  __break(1u);
LABEL_363:
  __break(1u);
LABEL_364:
  __break(1u);
LABEL_365:
  __break(1u);
LABEL_366:
  __break(1u);
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

char *specialized AttributedString._AttributeStorage.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  outlined init with copy of FloatingPointRoundingRule?(a1, &v88, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  if (!*(&v89 + 1))
  {
    goto LABEL_6;
  }

  v86[2] = v90;
  v86[3] = v91;
  v87 = v92;
  v86[0] = v88;
  v86[1] = v89;
  outlined init with copy of AttributedString._AttributeValue(v86, v84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v83 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = v12;
  if (*(v10 + 24) >= v16)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v17 = v10;
LABEL_12:
      if (v4)
      {
        goto LABEL_13;
      }

      goto LABEL_32;
    }

LABEL_16:
    v74 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
    v35 = static _DictionaryStorage.copy(original:)();
    v17 = v35;
    if (*(v10 + 16))
    {
      result = (v35 + 64);
      v37 = (v10 + 64);
      v38 = ((1 << *(v17 + 32)) + 63) >> 6;
      if (v17 != v10 || result >= &v37[8 * v38])
      {
        result = memmove(result, v37, 8 * v38);
      }

      v39 = 0;
      *(v17 + 16) = *(v10 + 16);
      v40 = 1 << *(v10 + 32);
      v41 = -1;
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      v42 = v41 & *(v10 + 64);
      v43 = (v40 + 63) >> 6;
      v76 = v43;
      if (v42)
      {
        do
        {
          v44 = __clz(__rbit64(v42));
          v81 = (v42 - 1) & v42;
LABEL_29:
          v47 = v44 | (v39 << 6);
          v48 = 16 * v47;
          v49 = (*(v10 + 48) + 16 * v47);
          v77 = v49[1];
          v79 = *v49;
          v50 = 72 * v47;
          outlined init with copy of AttributedString._AttributeValue(*(v10 + 56) + 72 * v47, &v88);
          v51 = (*(v17 + 48) + v48);
          *v51 = v79;
          v51[1] = v77;
          v52 = *(v17 + 56) + v50;
          *v52 = v88;
          v53 = v89;
          v54 = v90;
          v55 = v91;
          *(v52 + 64) = v92;
          *(v52 + 32) = v54;
          *(v52 + 48) = v55;
          *(v52 + 16) = v53;

          v43 = v76;
          v42 = v81;
        }

        while (v81);
      }

      v45 = v39;
      while (1)
      {
        v39 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          break;
        }

        if (v39 >= v43)
        {
          goto LABEL_31;
        }

        v46 = *(v10 + 64 + 8 * v39);
        ++v45;
        if (v46)
        {
          v44 = __clz(__rbit64(v46));
          v81 = (v46 - 1) & v46;
          goto LABEL_29;
        }
      }

      __break(1u);
      goto LABEL_52;
    }

LABEL_31:

    v11 = v74;
    if (v4)
    {
LABEL_13:
      v28 = *(v17 + 56) + 72 * v11;
      v88 = *v28;
      v29 = *(v28 + 16);
      v30 = *(v28 + 32);
      v31 = *(v28 + 48);
      v92 = *(v28 + 64);
      v90 = v30;
      v91 = v31;
      v89 = v29;
      v32 = v84[1];
      v33 = v84[2];
      v34 = v84[3];
      *(v28 + 64) = v85;
      *(v28 + 32) = v33;
      *(v28 + 48) = v34;
      *v28 = v84[0];
      *(v28 + 16) = v32;
      outlined destroy of AttributedString._AttributeValue(v86);
      goto LABEL_33;
    }

LABEL_32:
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, v84, v17);

    outlined destroy of AttributedString._AttributeValue(v86);
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0;
    goto LABEL_33;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
  v17 = v83;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v4 & 1) == (v18 & 1))
  {
    goto LABEL_12;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_6:
  outlined destroy of TermOfAddress?(&v88, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v20 & 1) == 0)
  {
    v92 = 0;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
LABEL_34:
    AttributedString._AttributeStorage._attributeModified(_:old:new:)(a2, a3, &v88, a1);
    outlined destroy of TermOfAddress?(a1, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    return outlined destroy of TermOfAddress?(&v88, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  }

  v21 = v19;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v5;
  if (v22)
  {
    v17 = *v5;
LABEL_9:

    v24 = *(v17 + 56) + 72 * v21;
    v88 = *v24;
    v26 = *(v24 + 32);
    v25 = *(v24 + 48);
    v27 = *(v24 + 64);
    v89 = *(v24 + 16);
    v90 = v26;
    v92 = v27;
    v91 = v25;
    specialized _NativeDictionary._delete(at:)(v21, v17);
LABEL_33:
    *v5 = v17;
    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
  v56 = static _DictionaryStorage.copy(original:)();
  v17 = v56;
  if (!*(v23 + 16))
  {
LABEL_50:

    goto LABEL_9;
  }

  result = (v56 + 64);
  v57 = ((1 << *(v17 + 32)) + 63) >> 6;
  if (v17 != v23 || result >= v23 + 64 + 8 * v57)
  {
    result = memmove(result, (v23 + 64), 8 * v57);
  }

  v58 = 0;
  *(v17 + 16) = *(v23 + 16);
  v59 = 1 << *(v23 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v75 = (v59 + 63) >> 6;
  v61 = v60 & *(v23 + 64);
  if (v61)
  {
    do
    {
      v62 = __clz(__rbit64(v61));
      v82 = (v61 - 1) & v61;
LABEL_48:
      v65 = v62 | (v58 << 6);
      v66 = 16 * v65;
      v67 = (*(v23 + 48) + 16 * v65);
      v78 = v67[1];
      v80 = *v67;
      v68 = 72 * v65;
      outlined init with copy of AttributedString._AttributeValue(*(v23 + 56) + 72 * v65, &v88);
      v69 = (*(v17 + 48) + v66);
      *v69 = v80;
      v69[1] = v78;
      v70 = *(v17 + 56) + v68;
      *v70 = v88;
      v71 = v89;
      v72 = v90;
      v73 = v91;
      *(v70 + 64) = v92;
      *(v70 + 32) = v72;
      *(v70 + 48) = v73;
      *(v70 + 16) = v71;

      v61 = v82;
    }

    while (v82);
  }

  v63 = v58;
  while (1)
  {
    v58 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v58 >= v75)
    {
      goto LABEL_50;
    }

    v64 = *(v23 + 64 + 8 * v58);
    ++v63;
    if (v64)
    {
      v62 = __clz(__rbit64(v64));
      v82 = (v64 - 1) & v64;
      goto LABEL_48;
    }
  }

LABEL_52:
  __break(1u);
  return result;
}

__CFString *NSStringFromBOOL(int a1)
{
  if (a1)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

uint64_t AttributeContainer.init<A>(_:including:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v324 = a3;
  v370 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = a2;
  v5 = static AttributeScope.scopeDescription.getter(a2);

  v6 = 0;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v349 = MEMORY[0x1E69E7CC8];
  v345 = a1 + 64;
  v346 = v11;
  v329 = a1;
  v330 = v5;
  while (1)
  {
    if (v10)
    {
      v12 = v6;
      goto LABEL_18;
    }

    if (v11 <= &v6->isa + 1)
    {
      v13 = &v6->isa + 1;
    }

    else
    {
      v13 = v11;
    }

    v14 = (v13 - 1);
    do
    {
      v12 = &v6->isa + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_143;
      }

      if (v12 >= v11)
      {
        v10 = 0;
        v364[0] = 0;
        v6 = v14;
        v362 = 0u;
        v363 = 0u;
        goto LABEL_19;
      }

      v10 = *(v7 + 8 * v12);
      v6 = (v6 + 1);
    }

    while (!v10);
    v6 = v12;
LABEL_18:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v12 << 6);
    v17 = *(*(a1 + 48) + 8 * v16);
    outlined init with copy of Any(*(a1 + 56) + 32 * v16, &v357);
    *&v362 = v17;
    outlined init with take of Any(&v357, (&v362 + 8));
    v18 = v17;
LABEL_19:
    v368[0] = v362;
    v368[1] = v363;
    v369 = v364[0];
    v19 = v362;
    if (!v362)
    {

      *v324 = v349;
      return result;
    }

    outlined init with take of Any((v368 + 8), &v366);
    isTaggedPointer = _objc_isTaggedPointer(v19);
    v21 = v19;
    v22 = v21;
    if (!isTaggedPointer)
    {
      goto LABEL_25;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v21);
    if (!TaggedPointerTag)
    {
      LOWORD(v355[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v35 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v36)
      {
        LODWORD(v4) = [v22 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v26 = *(&v357 + 1);
        v27 = v357;
        goto LABEL_62;
      }

      v26 = v36;
LABEL_41:
      v4 = v35;
LABEL_42:

      v27 = v4;
      goto LABEL_62;
    }

    if (TaggedPointerTag == 22)
    {
      v32 = [v22 UTF8String];
      if (v32)
      {
        v33 = String.init(utf8String:)(v32);
        if (v34)
        {
          v4 = v33;
          v26 = v34;
          goto LABEL_42;
        }

LABEL_361:
        __break(1u);
      }

      __break(1u);
    }

    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      *(&v323 - 2) = v22;
      v24 = v340;
      v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v26 = v25;
      v340 = v24;

      v27 = v4;
      goto LABEL_32;
    }

LABEL_25:
    LOBYTE(v357) = 0;
    *&v362 = 0;
    LOBYTE(v355[0]) = 0;
    LOBYTE(v350) = 0;
    IsCF = __CFStringIsCF();
    if (!IsCF)
    {
      v4 = v22;
      v29 = String.init(_nativeStorage:)();
      if (v30)
      {
        v26 = v30;
        v31 = v29;

        v27 = v31;
LABEL_32:
        v7 = v345;
        goto LABEL_62;
      }

      *&v362 = [v4 length];
      if (!v362)
      {

        goto LABEL_35;
      }

LABEL_60:
      v27 = String.init(_cocoaString:)();
      goto LABEL_61;
    }

    v4 = v362;
    if (!v362)
    {

LABEL_35:
      v27 = 0;
      v26 = 0xE000000000000000;
      goto LABEL_62;
    }

    if (v350 != 1)
    {
      if (v355[0])
      {
        if (v357 == 1)
        {
          MEMORY[0x1EEE9AC00](IsCF);
          *(&v323 - 4) = v22;
          *(&v323 - 3) = &v362;
          *(&v323 - 4) = 1536;
          *(&v323 - 1) = v4;
          v37 = v340;
          v38 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v26 = v39;
          v340 = v37;
          v40 = HIBYTE(v39) & 0xF;
          if ((v39 & 0x2000000000000000) == 0)
          {
            v40 = v38 & 0xFFFFFFFFFFFFLL;
          }

          if (v40)
          {
            v4 = v38;

            v27 = v4;
            goto LABEL_32;
          }

          v7 = v345;
        }

        else
        {
          v42 = [v22 lengthOfBytesUsingEncoding_];
          v4 = &v323;
          MEMORY[0x1EEE9AC00](v42);
          *(&v323 - 4) = v22;
          *(&v323 - 3) = &v362;
          *(&v323 - 4) = 134217984;
          *(&v323 - 1) = v43;
          v44 = v340;
          v35 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v26 = v45;
          v340 = v44;
          v46 = HIBYTE(v45) & 0xF;
          if ((v45 & 0x2000000000000000) == 0)
          {
            v46 = v35 & 0xFFFFFFFFFFFFLL;
          }

          if (v46)
          {
            goto LABEL_41;
          }
        }
      }

      goto LABEL_60;
    }

    if (v357)
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    v27 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_61:
    v26 = v41;
LABEL_62:
    if (!*(v5 + 16))
    {

LABEL_6:
      v11 = v346;
      goto LABEL_7;
    }

    v4 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v26);
    v48 = v47;

    if ((v48 & 1) == 0)
    {

      v7 = v345;
      goto LABEL_6;
    }

    v49 = *(v5 + 56) + 16 * v4;
    v50 = *(v49 + 8);
    v344 = *v49;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v51 = type metadata accessor for Optional();
    v337 = &v323;
    v343 = v51;
    v338 = *(v51 - 8);
    v339 = *(v338 + 64);
    MEMORY[0x1EEE9AC00](v51);
    v341 = &v323 - v52;
    v53 = v367;
    v54 = __swift_project_boxed_opaque_existential_1(&v366, v367);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v347 = &v323;
      v139 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
      (*(v141 + 16))(&v323 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0), v54, v53, v139);
      v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      goto LABEL_67;
    }

    if (*(*(v53 - 8) + 64) != 8)
    {
      __break(1u);
LABEL_186:
      v212 = [(__CFString *)v6 lengthOfBytesUsingEncoding:4, v323];
      MEMORY[0x1EEE9AC00](v212);
      *(&v323 - 4) = v6;
      *(&v323 - 3) = &v362;
      *(&v323 - 4) = 134217984;
      *(&v323 - 1) = v213;
LABEL_187:
      v214 = v340;
      v215 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v340 = v214;
      v217 = HIBYTE(v216) & 0xF;
      if ((v216 & 0x2000000000000000) == 0)
      {
        v217 = v215 & 0xFFFFFFFFFFFFLL;
      }

      if (v217)
      {
LABEL_190:

        goto LABEL_198;
      }

LABEL_197:
      String.init(_cocoaString:)();
      goto LABEL_198;
    }

    v4 = *v54;
    swift_unknownObjectRetain();
LABEL_67:
    v56 = v344;
    v57 = swift_conformsToProtocol2();
    i = v50;
    v336 = v22;
    if (v57)
    {
      if (v56)
      {
        break;
      }
    }

    v347 = &v323;
    v67 = AssociatedTypeWitness;
    v68 = *(AssociatedTypeWitness - 8);
    MEMORY[0x1EEE9AC00](v57);
    v333 = (&v323 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
    v334 = &v323;
    *&v362 = v4;
    MEMORY[0x1EEE9AC00](v70);
    v72 = &v323 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
    swift_unknownObjectRetain();
    v65 = v67;
    if ((swift_dynamicCast() & 1) == 0)
    {
      v346 = v4;

      (*(v68 + 56))(v72, 1, 1, v67);
      (*(v338 + 8))(v72, v343);
      LODWORD(v4) = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
      v194 = @"NSCocoaErrorDomain";
      v195 = v194;
      if (!v4)
      {
        goto LABEL_148;
      }

      v196 = _objc_getTaggedPointerTag(v194);
      if (v196)
      {
        if (v196 != 22)
        {
          if (v196 == 2)
          {
            MEMORY[0x1EEE9AC00](v196);
            *(&v323 - 2) = v195;
            v197 = v340;
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v340 = v197;

            goto LABEL_229;
          }

LABEL_148:
          LOBYTE(v357) = 0;
          *&v362 = 0;
          LOBYTE(v355[0]) = 0;
          LOBYTE(v350) = 0;
          v200 = __CFStringIsCF();
          if (v200)
          {
            v201 = v362;
            if (!v362)
            {
LABEL_195:

              goto LABEL_229;
            }

            if (v350 == 1)
            {
              if (v357)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_229:
              v247 = objc_allocWithZone(NSError);
              v248 = String._bridgeToObjectiveCImpl()();

              v249 = [v247 initWithDomain:v248 code:4866 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v250 = [v249 domain];
              if (!v250)
              {
                goto LABEL_243;
              }

              v251 = v250;
              v252 = _objc_isTaggedPointer(v250);
              v253 = v251;
              v254 = v253;
              if ((v252 & 1) == 0)
              {
LABEL_235:
                LOBYTE(v357) = 0;
                *&v362 = 0;
                LOBYTE(v355[0]) = 0;
                LOBYTE(v350) = 0;
                v260 = __CFStringIsCF();
                if (v260)
                {
                  v261 = v362;
                  if (v362)
                  {
                    if (v350 == 1)
                    {
                      if (v357)
                      {
                        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                      }

                      else
                      {
                        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                      }

                      v268 = String.init<A>(_immortalCocoaString:count:encoding:)();
                      goto LABEL_313;
                    }

                    if (v355[0])
                    {
                      if (v357 == 1)
                      {
                        MEMORY[0x1EEE9AC00](v260);
                        *(&v323 - 4) = v254;
                        *(&v323 - 3) = &v362;
                        *(&v323 - 4) = 1536;
                        *(&v323 - 1) = v261;
                      }

                      else
                      {
                        v276 = [v254 lengthOfBytesUsingEncoding_];
                        MEMORY[0x1EEE9AC00](v276);
                        *(&v323 - 4) = v254;
                        *(&v323 - 3) = &v362;
                        *(&v323 - 4) = 134217984;
                        *(&v323 - 1) = v277;
                      }

                      v278 = v340;
                      v279 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v259 = v280;
                      v340 = v278;
                      v281 = HIBYTE(v280) & 0xF;
                      if ((v280 & 0x2000000000000000) == 0)
                      {
                        v281 = v279 & 0xFFFFFFFFFFFFLL;
                      }

                      if (!v281)
                      {
LABEL_311:

                        goto LABEL_312;
                      }

                      v257 = v279;
                      goto LABEL_249;
                    }

LABEL_312:
                    v268 = String.init(_cocoaString:)();
LABEL_313:
                    v257 = v268;
                    v259 = v269;
                    goto LABEL_314;
                  }
                }

                else
                {
                  v262 = v254;
                  v263 = String.init(_nativeStorage:)();
                  if (v264)
                  {
                    v257 = v263;
                    v259 = v264;

                    goto LABEL_315;
                  }

                  *&v362 = [v262 length];
                  if (v362)
                  {
                    goto LABEL_312;
                  }
                }

LABEL_243:
                v257 = 0;
                v259 = 0xE000000000000000;
                goto LABEL_315;
              }

              v255 = _objc_getTaggedPointerTag(v253);
              if (v255)
              {
                if (v255 != 22)
                {
                  if (v255 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v255);
                    *(&v323 - 2) = v254;
                    v256 = v340;
                    v257 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v259 = v258;
                    v340 = v256;

LABEL_315:
                    v301 = v195;
                    v302 = v301;
                    if (!v4)
                    {
                      goto LABEL_320;
                    }

                    v303 = _objc_getTaggedPointerTag(v301);
                    if (!v303)
                    {
                      goto LABEL_332;
                    }

                    if (v303 != 22)
                    {
                      if (v303 == 2)
                      {
                        MEMORY[0x1EEE9AC00](v303);
                        *(&v323 - 2) = v302;
                        v304 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        v306 = v305;

                        goto LABEL_350;
                      }

LABEL_320:
                      LOBYTE(v357) = 0;
                      *&v362 = 0;
                      LOBYTE(v355[0]) = 0;
                      LOBYTE(v350) = 0;
                      v307 = __CFStringIsCF();
                      if (v307)
                      {
                        v308 = v362;
                        if (v362)
                        {
                          if (v350 == 1)
                          {
                            if (v357)
                            {
                              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                            }

                            else
                            {
                              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                            }

                            v315 = String.init<A>(_immortalCocoaString:count:encoding:)();
                            goto LABEL_349;
                          }

                          if (v355[0])
                          {
                            if (v357 == 1)
                            {
                              MEMORY[0x1EEE9AC00](v307);
                              *(&v323 - 4) = v302;
                              *(&v323 - 3) = &v362;
                              *(&v323 - 4) = 1536;
                              *(&v323 - 1) = v308;
                            }

                            else
                            {
                              v317 = [v302 lengthOfBytesUsingEncoding_];
                              MEMORY[0x1EEE9AC00](v317);
                              *(&v323 - 4) = v302;
                              *(&v323 - 3) = &v362;
                              *(&v323 - 4) = 134217984;
                              *(&v323 - 1) = v318;
                            }

                            v319 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                            v306 = v320;
                            v321 = HIBYTE(v320) & 0xF;
                            if ((v320 & 0x2000000000000000) == 0)
                            {
                              v321 = v319 & 0xFFFFFFFFFFFFLL;
                            }

                            if (v321)
                            {
                              v304 = v319;

                              goto LABEL_350;
                            }
                          }

LABEL_348:
                          v315 = String.init(_cocoaString:)();
LABEL_349:
                          v304 = v315;
                          v306 = v316;
LABEL_350:
                          if (v257 == v304 && v259 == v306)
                          {
LABEL_352:

                            goto LABEL_354;
                          }

                          v322 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if (v322)
                          {
                            goto LABEL_354;
                          }

LABEL_358:
                          __break(1u);
LABEL_359:
                          __break(1u);
LABEL_360:
                          __break(1u);
                          goto LABEL_361;
                        }
                      }

                      else
                      {
                        v309 = v302;
                        v310 = String.init(_nativeStorage:)();
                        if (v311)
                        {
                          v304 = v310;
                          v306 = v311;

                          goto LABEL_350;
                        }

                        *&v362 = [v309 length];
                        if (v362)
                        {
                          goto LABEL_348;
                        }
                      }

                      v304 = 0;
                      v306 = 0xE000000000000000;
                      goto LABEL_350;
                    }

                    v312 = [v302 UTF8String];
                    if (v312)
                    {
                      v313 = String.init(utf8String:)(v312);
                      if (v314)
                      {
                        goto LABEL_333;
                      }

                      __break(1u);
LABEL_332:
                      LOWORD(v355[0]) = 0;
                      _CFIndirectTaggedPointerStringGetContents();
                      v313 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                      if (!v314)
                      {
                        [v302 mutableCopy];
                        _bridgeAnyObjectToAny(_:)();

                        swift_unknownObjectRelease();
                        swift_dynamicCast();
                        v306 = *(&v357 + 1);
                        v304 = v357;
                        goto LABEL_350;
                      }

LABEL_333:
                      v304 = v313;
                      v306 = v314;

                      goto LABEL_350;
                    }

                    goto LABEL_366;
                  }

                  goto LABEL_235;
                }

                v265 = [v254 UTF8String];
                if (!v265)
                {
LABEL_368:
                  __break(1u);
LABEL_369:
                  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
                  return result;
                }

                v266 = String.init(utf8String:)(v265);
                if (v267)
                {
LABEL_248:
                  v257 = v266;
                  v259 = v267;
LABEL_249:

LABEL_314:
                  goto LABEL_315;
                }

                __break(1u);
              }

              LOWORD(v355[0]) = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v266 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v267)
              {
                [v254 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v259 = *(&v357 + 1);
                v257 = v357;
                goto LABEL_314;
              }

              goto LABEL_248;
            }

            if (v355[0])
            {
              if (v357 == 1)
              {
                MEMORY[0x1EEE9AC00](v200);
                *(&v323 - 4) = v195;
                *(&v323 - 3) = &v362;
                *(&v323 - 4) = 1536;
                *(&v323 - 1) = v201;
              }

              else
              {
                v218 = [v195 lengthOfBytesUsingEncoding_];
                MEMORY[0x1EEE9AC00](v218);
                *(&v323 - 4) = v195;
                *(&v323 - 3) = &v362;
                *(&v323 - 4) = 134217984;
                *(&v323 - 1) = v219;
              }

              v220 = v340;
              v221 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v340 = v220;
              v223 = HIBYTE(v222) & 0xF;
              if ((v222 & 0x2000000000000000) == 0)
              {
                v223 = v221 & 0xFFFFFFFFFFFFLL;
              }

              if (v223)
              {
                goto LABEL_195;
              }
            }
          }

          else
          {
            v204 = v195;
            String.init(_nativeStorage:)();
            if (v205 || (*&v362 = [v204 length], !v362))
            {

              goto LABEL_229;
            }
          }

          String.init(_cocoaString:)();
          goto LABEL_229;
        }

        v209 = [v195 UTF8String];
        if (!v209)
        {
          goto LABEL_364;
        }

        String.init(utf8String:)(v209);
        if (v210)
        {
          goto LABEL_195;
        }

        __break(1u);
      }

      LOWORD(v355[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v211)
      {
        [v195 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_229;
      }

      goto LABEL_195;
    }

    swift_unknownObjectRelease();
    (*(v68 + 56))(v72, 0, 1, v67);
    v332 = v68;
    v73 = *(v68 + 32);
    v74 = v333;
    v73(v333, v72, v67);
    v64 = v341;
    v73(v341, v74, v67);
    v66 = v332;
LABEL_75:
    v347 = v66;
    v75 = (v66[7])(v64, 0, 1, v65);
    v332 = &v323;
    v334 = v66[8];
    MEMORY[0x1EEE9AC00](v75);
    v331 = v76;
    v77 = (&v323 - v76);
    v333 = &v323;
    v79 = MEMORY[0x1EEE9AC00](v78);
    v81 = &v323 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
    v82 = v338;
    (*(v338 + 16))(v81, v64, v343, v79);
    v83 = v347;
    if ((v347[6])(v81, 1, v65) == 1)
    {
      v84 = *(v82 + 8);
      v85 = v343;
      v84(v81, v343);
      v86 = (*(i + 24))();
      v365 = 0;
      memset(v364, 0, sizeof(v364));
      v362 = 0u;
      v363 = 0u;
      v4 = &v349;
      specialized AttributedString._AttributeStorage.subscript.setter(&v362, v86, v87);

      v84(v341, v85);
      a1 = v329;
      v5 = v330;
      v7 = v345;
      goto LABEL_6;
    }

    (v83[4])(v77, v81, v65);
    v88 = i;
    v89 = v344;
    v333 = (*(i + 24))(v344, i);
    v339 = v90;
    v328 = &v323;
    v91 = MEMORY[0x1EEE9AC00](v333);
    v92 = v331;
    v325 = v77;
    v326 = (&v323 - v331);
    v93 = AssociatedTypeWitness;
    v94 = (v347[2])(v91);
    v327 = &v323;
    v95 = MEMORY[0x1EEE9AC00](v94);
    v96 = (&v323 - v92);
    v97 = v326;
    v98(v96, v326, v93, v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
    swift_dynamicCast();
    (*(v88 + 32))(&v357, v89, v88);
    *&v364[1] = v357;
    LOBYTE(v364[3]) = (*(v88 + 40))(v89, v88) & 1;
    v99 = (*(v88 + 48))(v89, v88);
    v100 = v347 + 1;
    v344 = v347[1];
    v344(v97, v93);
    v365 = v99;
    outlined init with copy of AttributedString._AttributeValue?(&v362, &v357);
    v347 = v100;
    if (!*(&v358 + 1))
    {
      outlined destroy of TermOfAddress?(&v357, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v103 = v333;
      v112 = v339;
      v122 = specialized __RawDictionaryStorage.find<A>(_:)(v333, v339);
      v5 = v330;
      if (v123)
      {
        v124 = v122;
        v125 = v112;
        v126 = v349;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v127 = v126;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v166 = static _DictionaryStorage.copy(original:)();
          v127 = v166;
          if (*(v126 + 16))
          {
            v167 = (v166 + 64);
            v168 = (v126 + 64);
            v169 = ((1 << *(v127 + 32)) + 63) >> 6;
            v326 = (v126 + 64);
            if (v127 != v126 || v167 >= &v168[8 * v169])
            {
              memmove(v167, v168, 8 * v169);
            }

            v170 = 0;
            *(v127 + 16) = *(v126 + 16);
            v171 = 1 << *(v126 + 32);
            if (v171 < 64)
            {
              v172 = ~(-1 << v171);
            }

            else
            {
              v172 = -1;
            }

            v173 = v172 & *(v126 + 64);
            v174 = (v171 + 63) >> 6;
            v327 = v174;
            if (!v173)
            {
              goto LABEL_122;
            }

            while (1)
            {
              v175 = __clz(__rbit64(v173));
              for (i = (v173 - 1) & v173; ; i = (v177 - 1) & v177)
              {
                v178 = v175 | (v170 << 6);
                v328 = (16 * v178);
                v179 = *(v126 + 56);
                v180 = (*(v126 + 48) + 16 * v178);
                v182 = *v180;
                v181 = v180[1];
                v334 = v182;
                v331 = v181;
                v183 = 72 * v178;
                outlined init with copy of AttributedString._AttributeValue(v179 + 72 * v178, &v357);
                v184 = (v328 + *(v127 + 48));
                v185 = v331;
                *v184 = v334;
                v184[1] = v185;
                v186 = *(v127 + 56) + v183;
                *v186 = v357;
                v187 = v358;
                v188 = v359;
                v189 = v360;
                *(v186 + 64) = v361;
                *(v186 + 32) = v188;
                *(v186 + 48) = v189;
                *(v186 + 16) = v187;

                v5 = v330;
                v174 = v327;
                v173 = i;
                if (i)
                {
                  break;
                }

LABEL_122:
                v176 = v170;
                do
                {
                  v170 = v176 + 1;
                  if (__OFADD__(v176, 1))
                  {
                    goto LABEL_360;
                  }

                  if (v170 >= v174)
                  {
                    goto LABEL_129;
                  }

                  v177 = *&v326[8 * v170];
                  ++v176;
                }

                while (!v177);
                v175 = __clz(__rbit64(v177));
              }
            }
          }

LABEL_129:
        }

        v128 = *(v127 + 56) + 72 * v124;
        v357 = *v128;
        v130 = *(v128 + 32);
        v129 = *(v128 + 48);
        v131 = *(v128 + 64);
        v358 = *(v128 + 16);
        v359 = v130;
        v361 = v131;
        v360 = v129;
        specialized _NativeDictionary._delete(at:)(v124, v127);
        *&v349 = v127;
        v112 = v125;
        v103 = v333;
      }

      else
      {
        v361 = 0;
        v359 = 0u;
        v360 = 0u;
        v357 = 0u;
        v358 = 0u;
      }

      goto LABEL_94;
    }

    v355[2] = v359;
    v355[3] = v360;
    v356 = v361;
    v355[0] = v357;
    v355[1] = v358;
    outlined init with copy of AttributedString._AttributeValue(v355, &v350);
    v101 = v349;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v348 = v101;
    v103 = v333;
    v104 = specialized __RawDictionaryStorage.find<A>(_:)(v333, v339);
    v106 = *(v101 + 16);
    v107 = (v105 & 1) == 0;
    v108 = __OFADD__(v106, v107);
    v109 = v106 + v107;
    v5 = v330;
    if (v108)
    {
      __break(1u);
LABEL_357:
      __break(1u);
      goto LABEL_358;
    }

    v110 = v105;
    if (*(v101 + 24) >= v109)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v111 = v101;
      }

      else
      {
        v326 = v104;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v142 = static _DictionaryStorage.copy(original:)();
        v111 = v142;
        if (*(v101 + 16))
        {
          v143 = (v142 + 64);
          v144 = (v101 + 64);
          v145 = ((1 << *(v111 + 32)) + 63) >> 6;
          v323 = v101 + 64;
          if (v111 != v101 || v143 >= &v144[8 * v145])
          {
            memmove(v143, v144, 8 * v145);
          }

          v146 = 0;
          *(v111 + 16) = *(v101 + 16);
          v147 = 1 << *(v101 + 32);
          if (v147 < 64)
          {
            v148 = ~(-1 << v147);
          }

          else
          {
            v148 = -1;
          }

          v149 = v148 & *(v101 + 64);
          v150 = (v147 + 63) >> 6;
          v327 = v150;
          if (!v149)
          {
            goto LABEL_105;
          }

          while (1)
          {
            v151 = __clz(__rbit64(v149));
            for (i = (v149 - 1) & v149; ; i = (v153 - 1) & v153)
            {
              v154 = v151 | (v146 << 6);
              v328 = (16 * v154);
              v155 = *(v101 + 56);
              v156 = (*(v101 + 48) + 16 * v154);
              v158 = *v156;
              v157 = v156[1];
              v334 = v158;
              v331 = v157;
              v159 = 72 * v154;
              outlined init with copy of AttributedString._AttributeValue(v155 + 72 * v154, &v357);
              v160 = (v328 + *(v111 + 48));
              v161 = v331;
              *v160 = v334;
              v160[1] = v161;
              v162 = *(v111 + 56) + v159;
              *v162 = v357;
              v163 = v358;
              v164 = v359;
              v165 = v360;
              *(v162 + 64) = v361;
              *(v162 + 32) = v164;
              *(v162 + 48) = v165;
              *(v162 + 16) = v163;

              v5 = v330;
              v150 = v327;
              v149 = i;
              if (i)
              {
                break;
              }

LABEL_105:
              v152 = v146;
              do
              {
                v146 = v152 + 1;
                if (__OFADD__(v152, 1))
                {
                  goto LABEL_359;
                }

                if (v146 >= v150)
                {
                  goto LABEL_112;
                }

                v153 = *(v323 + 8 * v146);
                ++v152;
              }

              while (!v153);
              v151 = __clz(__rbit64(v153));
            }
          }
        }

LABEL_112:

        v104 = v326;
      }

      v112 = v339;
      if ((v110 & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v109, isUniquelyReferenced_nonNull_native);
      v111 = v348;
      v112 = v339;
      v104 = specialized __RawDictionaryStorage.find<A>(_:)(v103, v339);
      if ((v110 & 1) != (v113 & 1))
      {
        goto LABEL_369;
      }

      if ((v110 & 1) == 0)
      {
LABEL_90:
        *(v111 + 8 * (v104 >> 6) + 64) |= 1 << v104;
        v132 = (*(v111 + 48) + 16 * v104);
        *v132 = v103;
        v132[1] = v112;
        v133 = *(v111 + 56) + 72 * v104;
        *v133 = v350;
        v134 = v351;
        v135 = v352;
        v136 = v353;
        *(v133 + 64) = v354;
        *(v133 + 32) = v135;
        *(v133 + 48) = v136;
        *(v133 + 16) = v134;
        v137 = *(v111 + 16);
        v108 = __OFADD__(v137, 1);
        v138 = v137 + 1;
        if (v108)
        {
          goto LABEL_357;
        }

        *(v111 + 16) = v138;

        outlined destroy of AttributedString._AttributeValue(v355);
        v357 = 0u;
        v358 = 0u;
        v359 = 0u;
        v360 = 0u;
        v361 = 0;
        goto LABEL_92;
      }
    }

    v114 = *(v111 + 56) + 72 * v104;
    v116 = *(v114 + 16);
    v115 = *(v114 + 32);
    v117 = *(v114 + 48);
    v361 = *(v114 + 64);
    v360 = v117;
    v357 = *v114;
    v358 = v116;
    v359 = v115;
    v118 = *(v111 + 56) + 72 * v104;
    v119 = v351;
    v120 = v352;
    v121 = v353;
    *(v118 + 64) = v354;
    *(v118 + 32) = v120;
    *(v118 + 48) = v121;
    *(v118 + 16) = v119;
    *v118 = v350;
    outlined destroy of AttributedString._AttributeValue(v355);
LABEL_92:
    *&v349 = v111;
LABEL_94:
    AttributedString._AttributeStorage._attributeModified(_:old:new:)(v103, v112, &v357, &v362);
    v4 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
    outlined destroy of TermOfAddress?(&v362, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v357, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

    v344(v325, AssociatedTypeWitness);
    (*(v338 + 8))(v341, v343);
    v7 = v345;
    v11 = v346;
    a1 = v329;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(&v366);
  }

  v58 = v57;
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  v59 = swift_dynamicCastUnknownClass();
  if (!v59)
  {

    v346 = v4;
    swift_unknownObjectRelease();
    LODWORD(v4) = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
    v191 = @"NSCocoaErrorDomain";
    v6 = v191;
    if (v4)
    {
      v192 = _objc_getTaggedPointerTag(v191);
      if (!v192)
      {
LABEL_162:
        LOWORD(v355[0]) = 0;
        _CFIndirectTaggedPointerStringGetContents();
        _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (v208)
        {
          goto LABEL_190;
        }

        [(__CFString *)v6 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_198;
      }

      if (v192 != 22)
      {
        if (v192 == 2)
        {
          MEMORY[0x1EEE9AC00](v192);
          *(&v323 - 2) = v6;
          v193 = v340;
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v340 = v193;

          goto LABEL_198;
        }

        goto LABEL_143;
      }

      v206 = [(__CFString *)v6 UTF8String];
      if (v206)
      {
        String.init(utf8String:)(v206);
        if (v207)
        {
          goto LABEL_190;
        }

        __break(1u);
        goto LABEL_162;
      }

      __break(1u);
LABEL_364:
      __break(1u);
      goto LABEL_365;
    }

LABEL_143:
    LOBYTE(v357) = 0;
    *&v362 = 0;
    LOBYTE(v355[0]) = 0;
    LOBYTE(v350) = 0;
    v198 = __CFStringIsCF();
    if (!v198)
    {
      v202 = v6;
      String.init(_nativeStorage:)();
      if (v203 || (*&v362 = [(__CFString *)v202 length], !v362))
      {

        goto LABEL_198;
      }

      goto LABEL_197;
    }

    v199 = v362;
    if (!v362)
    {
      goto LABEL_190;
    }

    if (v350 != 1)
    {
      if (v355[0])
      {
        if (v357 != 1)
        {
          goto LABEL_186;
        }

        MEMORY[0x1EEE9AC00](v198);
        *(&v323 - 4) = v6;
        *(&v323 - 3) = &v362;
        *(&v323 - 4) = 1536;
        *(&v323 - 1) = v199;
        goto LABEL_187;
      }

      goto LABEL_197;
    }

    if (v357)
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_198:
    v224 = objc_allocWithZone(NSError);
    v225 = String._bridgeToObjectiveCImpl()();

    v226 = [v224 initWithDomain:v225 code:4866 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v227 = [v226 domain];
    if (!v227)
    {
      goto LABEL_212;
    }

    v228 = v227;
    v229 = _objc_isTaggedPointer(v227);
    v230 = v228;
    v231 = v230;
    if ((v229 & 1) == 0)
    {
LABEL_204:
      LOBYTE(v357) = 0;
      *&v362 = 0;
      LOBYTE(v355[0]) = 0;
      LOBYTE(v350) = 0;
      v237 = __CFStringIsCF();
      if (v237)
      {
        v238 = v362;
        if (v362)
        {
          if (v350 == 1)
          {
            if (v357)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v245 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_270;
          }

          if (v355[0])
          {
            if (v357 == 1)
            {
              MEMORY[0x1EEE9AC00](v237);
              *(&v323 - 4) = v231;
              *(&v323 - 3) = &v362;
              *(&v323 - 4) = 1536;
              *(&v323 - 1) = v238;
            }

            else
            {
              v270 = [v231 lengthOfBytesUsingEncoding_];
              MEMORY[0x1EEE9AC00](v270);
              *(&v323 - 4) = v231;
              *(&v323 - 3) = &v362;
              *(&v323 - 4) = 134217984;
              *(&v323 - 1) = v271;
            }

            v272 = v340;
            v273 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v236 = v274;
            v340 = v272;
            v275 = HIBYTE(v274) & 0xF;
            if ((v274 & 0x2000000000000000) == 0)
            {
              v275 = v273 & 0xFFFFFFFFFFFFLL;
            }

            if (v275)
            {
              v234 = v273;
              goto LABEL_218;
            }
          }

LABEL_269:
          v245 = String.init(_cocoaString:)();
LABEL_270:
          v234 = v245;
          v236 = v246;
          goto LABEL_271;
        }
      }

      else
      {
        v239 = v231;
        v240 = String.init(_nativeStorage:)();
        if (v241)
        {
          v234 = v240;
          v236 = v241;

          goto LABEL_272;
        }

        *&v362 = [v239 length];
        if (v362)
        {
          goto LABEL_269;
        }
      }

LABEL_212:
      v234 = 0;
      v236 = 0xE000000000000000;
      goto LABEL_272;
    }

    v232 = _objc_getTaggedPointerTag(v230);
    if (v232)
    {
      if (v232 != 22)
      {
        if (v232 == 2)
        {
          MEMORY[0x1EEE9AC00](v232);
          *(&v323 - 2) = v231;
          v233 = v340;
          v234 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v236 = v235;
          v340 = v233;

LABEL_272:
          v282 = v6;
          v283 = v282;
          if (!v4)
          {
            goto LABEL_277;
          }

          v284 = _objc_getTaggedPointerTag(v282);
          if (!v284)
          {
            goto LABEL_289;
          }

          if (v284 != 22)
          {
            if (v284 == 2)
            {
              MEMORY[0x1EEE9AC00](v284);
              *(&v323 - 2) = v283;
              v195 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v4 = v285;

              goto LABEL_307;
            }

LABEL_277:
            LOBYTE(v357) = 0;
            *&v362 = 0;
            LOBYTE(v355[0]) = 0;
            LOBYTE(v350) = 0;
            v286 = __CFStringIsCF();
            if (v286)
            {
              v287 = v362;
              if (v362)
              {
                if (v350 == 1)
                {
                  if (v357)
                  {
                    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                  }

                  else
                  {
                    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                  }

                  v294 = String.init<A>(_immortalCocoaString:count:encoding:)();
                  goto LABEL_306;
                }

                if (v355[0])
                {
                  if (v357 == 1)
                  {
                    MEMORY[0x1EEE9AC00](v286);
                    *(&v323 - 4) = v283;
                    *(&v323 - 3) = &v362;
                    *(&v323 - 4) = 1536;
                    *(&v323 - 1) = v287;
                  }

                  else
                  {
                    v296 = [(__CFString *)v283 lengthOfBytesUsingEncoding:4];
                    MEMORY[0x1EEE9AC00](v296);
                    *(&v323 - 4) = v283;
                    *(&v323 - 3) = &v362;
                    *(&v323 - 4) = 134217984;
                    *(&v323 - 1) = v297;
                  }

                  v298 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v4 = v299;
                  v300 = HIBYTE(v299) & 0xF;
                  if ((v299 & 0x2000000000000000) == 0)
                  {
                    v300 = v298 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v300)
                  {
                    v195 = v298;

                    goto LABEL_307;
                  }
                }

LABEL_305:
                v294 = String.init(_cocoaString:)();
LABEL_306:
                v195 = v294;
                v4 = v295;
LABEL_307:
                if (v234 == v195 && v236 == v4)
                {
                  goto LABEL_352;
                }

                v254 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v254)
                {
LABEL_354:
                  swift_willThrow();
                  swift_unknownObjectRelease();
                  goto LABEL_355;
                }

                __break(1u);
                goto LABEL_311;
              }
            }

            else
            {
              v288 = v283;
              v289 = String.init(_nativeStorage:)();
              if (v290)
              {
                v195 = v289;
                v4 = v290;

                goto LABEL_307;
              }

              *&v362 = [(__CFString *)v288 length];
              if (v362)
              {
                goto LABEL_305;
              }
            }

            v195 = 0;
            v4 = 0xE000000000000000;
            goto LABEL_307;
          }

          v291 = [(__CFString *)v283 UTF8String];
          if (v291)
          {
            v292 = String.init(utf8String:)(v291);
            if (v293)
            {
              goto LABEL_290;
            }

            __break(1u);
LABEL_289:
            LOWORD(v355[0]) = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v292 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v293)
            {
              [(__CFString *)v283 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v4 = *(&v357 + 1);
              v195 = v357;
              goto LABEL_307;
            }

LABEL_290:
            v195 = v292;
            v4 = v293;

            goto LABEL_307;
          }

LABEL_365:
          __break(1u);
LABEL_366:
          __break(1u);
          goto LABEL_367;
        }

        goto LABEL_204;
      }

      v242 = [v231 UTF8String];
      if (!v242)
      {
LABEL_367:
        __break(1u);
        goto LABEL_368;
      }

      v243 = String.init(utf8String:)(v242);
      if (v244)
      {
LABEL_217:
        v234 = v243;
        v236 = v244;
LABEL_218:

LABEL_271:
        goto LABEL_272;
      }

      __break(1u);
    }

    LOWORD(v355[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v243 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v244)
    {
      [v231 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v236 = *(&v357 + 1);
      v234 = v357;
      goto LABEL_271;
    }

    goto LABEL_217;
  }

  v60 = v59;
  v61 = swift_getAssociatedTypeWitness();
  v347 = &v323;
  v62 = MEMORY[0x1EEE9AC00](v61);
  v63 = v340;
  (*(v58 + 32))(v60, v62);
  v340 = v63;
  if (!v63)
  {
    swift_unknownObjectRelease_n();
    v64 = v341;
    v65 = AssociatedTypeWitness;
    swift_dynamicCast();
    v66 = *(v65 - 8);
    goto LABEL_75;
  }

  swift_unknownObjectRelease_n();

LABEL_355:

  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(&v366);
}

uint64_t Dictionary<>.init<A>(_:including:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v3 = static AttributeScope.scopeDescription.getter(a3);

  return specialized Dictionary<>.init(_:attributeTable:options:)(&v5, v3, 0);
}

{
  v6 = *a1;
  v3 = static AttributeScope.scopeDescription.getter(a3);

  v4 = specialized Dictionary<>.init(_:attributeTable:options:)(&v6, v3, 0);

  return v4;
}

void _NSAllocatorDeallocateWithBlock(uint64_t a1, void (**a2)(void))
{
  a2[2](a2);
}

uint64_t closure #1 in _NSSwiftURLComponents.user.setter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 10) = 0;
  if (!a3)
  {
    goto LABEL_8;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v22 = a2;
    v23 = a3;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v10 = String._bridgeToObjectiveCImpl()();

    v11 = [v10 _fastCharacterContents];
    v12 = v10;
    if (v11)
    {
      StringProtocol._ephemeralString.getter();
      v13 = String._bridgeToObjectiveCImpl()();

      v14 = [v13 length];
      swift_unknownObjectRelease();
      v8 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v11, v14, 2u, 0);
      if ((v8 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = specialized Sequence.allSatisfy(_:)(a2, a3, 2);
      if ((v8 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_8:

    *(a1 + 40) = a2;
    *(a1 + 48) = a3;
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a3) & 0xF;
    v22 = a2;
    v23 = a3 & 0xFFFFFFFFFFFFFFLL;
    v6 = &v22;
  }

  else if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = a2 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = _StringObject.sharedUTF8.getter();
  }

  v8 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v6, v7, 2u, 0);
  if (v8)
  {
    goto LABEL_8;
  }

LABEL_11:
  v15 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v15 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v22 = a2;
    v23 = a3;
    MEMORY[0x1EEE9AC00](v8);
    v20[2] = &v22;
    v21 = 2;

    v16 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v20, a2, a3);
    if (!v17)
    {
      v16 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(a2, a3, 2u, 0);
    }

    v18 = v16;
    v19 = v17;
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
  }

  *(a1 + 40) = v18;
  *(a1 + 48) = v19;
  return result;
}

uint64_t String.LocalizationValue.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = MEMORY[0x1E69E7CC0];
  a3[1] = result;
  a3[2] = a2;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance URL(void *a1, _OWORD *a2)
{
  swift_unknownObjectRelease();
  URL.init(reference:)(a1, &v5);
  *a2 = v5;
  return 1;
}

void URL.init(reference:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (!_foundation_swift_nsurl_feature_enabled())
  {
    v10 = type metadata accessor for _BridgedURL();
    v11 = objc_allocWithZone(v10);
    *&v11[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = a1;
    v20.receiver = v11;
    v12 = a1;
    v13 = objc_msgSendSuper2(&v20, sel_init, v19.receiver, v19.super_class, v20.receiver, v10);
LABEL_6:
    v17 = v13;
    v7 = _BridgedURL.convertingFileReference()();
    v9 = v18;

    goto LABEL_7;
  }

  type metadata accessor for _NSSwiftURL();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    v14 = type metadata accessor for _BridgedURL();
    v15 = objc_allocWithZone(v14);
    *&v15[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = a1;
    v19.receiver = v15;
    v16 = a1;
    v13 = objc_msgSendSuper2(&v19, sel_init, v19.receiver, v14, v20.receiver, v20.super_class);
    goto LABEL_6;
  }

  v5 = v4;
  type metadata accessor for _BridgedNSSwiftURL();
  *(swift_allocObject() + 16) = v5;
  v6 = a1;
  v7 = _BridgedNSSwiftURL.convertingFileReference()();
  v9 = v8;

LABEL_7:
  *a2 = v7;
  a2[1] = v9;
}

NSNumber __swiftcall NSNumber.init(integerLiteral:)(Swift::Int integerLiteral)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithInteger_];
}

__n128 Locale.Language.Components.init(languageCode:script:region:)@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  outlined consume of Locale.LanguageCode?(0, 0);
  v8 = a1[1];
  *a4 = *a1;
  a4[1] = v8;
  outlined consume of Locale.LanguageCode?(0, 0);
  v9 = a2[1];
  a4[2] = *a2;
  a4[3] = v9;
  outlined consume of Locale.LanguageCode?(0, 0);
  result = *a3;
  v11 = *(a3 + 16);
  a4[4] = *a3;
  a4[5] = v11;
  return result;
}

uint64_t Locale.Language.script.getter@<X0>(uint64_t *a1@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = v1[4];
  v3 = v1[5];
  v5 = v4;
  v6 = v3;
  countAndFlagsBits = v1[6];
  object = v1[7];
  if (!v3)
  {
    Locale.Language.maximalIdentifier.getter();
    String.utf8CString.getter();

    Script = uloc_getScript();

    if (Script >= 1 && (v14[Script] = 0, v10 = MEMORY[0x1865CAEB0](v14), v11))
    {
      v5 = v10;
      v6 = v11;
      swift_bridgeObjectRetain_n();
      String.init<A>(_:)();
      v12 = String._capitalized()();
      countAndFlagsBits = v12._countAndFlagsBits;
      object = v12._object;
    }

    else
    {

      v5 = 0;
      v6 = 0;
      countAndFlagsBits = 0;
      object = 0;
    }
  }

  *a1 = v5;
  a1[1] = v6;
  a1[2] = countAndFlagsBits;
  a1[3] = object;
  return outlined copy of Locale.LanguageCode?(v4, v3);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSnySiG_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 17;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 4);
  return result;
}

uint64_t Locale.Components.init(locale:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *(a2 + 96) = 27;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 1031;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 336) = 0u;
  ObjectType = swift_getObjectType();
  (*(v4 + 64))(ObjectType, v4);
  Locale.Components.init(identifier:)(__src);
  outlined consume of Locale.LanguageCode?(*(a2 + 104), *(a2 + 112));
  outlined consume of Locale.LanguageCode?(*(a2 + 136), *(a2 + 144));
  outlined consume of Locale.LanguageCode?(*(a2 + 168), *(a2 + 176));
  outlined consume of Locale.LanguageCode?(*(a2 + 208), *(a2 + 216));
  outlined consume of Locale.LanguageCode?(*(a2 + 240), *(a2 + 248));
  outlined consume of Locale.LanguageCode?(*(a2 + 272), *(a2 + 280));
  swift_unknownObjectRelease();
  outlined consume of Locale.LanguageCode?(*(a2 + 320), *(a2 + 328));
  memcpy(a2, __src, 0x160uLL);
  v7[0] = v3;
  v7[1] = v4;
  Locale.Components.applyPreferencesOverride(_:)(v7);

  return swift_unknownObjectRelease();
}

void *Locale.Components.applyPreferencesOverride(_:)(void *result)
{
  v2 = result[1];
  if (*(v1 + 201) == 4)
  {
    ObjectType = swift_getObjectType();
    result = (*(v2 + 424))(&v11, ObjectType, v2);
    if (v11 != 4)
    {
      *(v1 + 201) = v11;
    }
  }

  if (!*(v1 + 216))
  {
    v4 = swift_getObjectType();
    result = (*(v2 + 448))(&v11, v4, v2);
    v5 = v12;
    if (v12)
    {
      v7 = v13;
      v6 = v14;
      v8 = v11;
      result = outlined consume of Locale.LanguageCode?(*(v1 + 208), *(v1 + 216));
      *(v1 + 208) = v8;
      *(v1 + 216) = v5;
      *(v1 + 224) = v7;
      *(v1 + 232) = v6;
    }
  }

  if (*(v1 + 200) == 7)
  {
    v9 = swift_getObjectType();
    (*(v2 + 200))(&v10, v9, v2);
    result = (*(v2 + 432))(&v11, &v10, v9, v2);
    if (v11 != 7)
    {
      *(v1 + 200) = v11;
    }
  }

  return result;
}

uint64_t _LocaleICU.forceHourCycle.getter@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 136);
  v4 = *(v1 + 168);
  v9[6] = *(v1 + 152);
  *v10 = v4;
  *&v10[12] = *(v1 + 180);
  v5 = *(v1 + 72);
  v6 = *(v1 + 104);
  v9[2] = *(v1 + 88);
  v9[3] = v6;
  v9[4] = *(v1 + 120);
  v9[5] = v3;
  v9[0] = *(v1 + 56);
  v9[1] = v5;
  result = _s10Foundation17LocalePreferencesVSgWOg(v9);
  if (result == 1)
  {
    goto LABEL_8;
  }

  if (v10[26] == 2 || (v10[26] & 1) == 0)
  {
    if (v10[27] != 2 && (v10[27] & 1) != 0)
    {
      v8 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v8 = 4;
    goto LABEL_9;
  }

  v8 = 2;
LABEL_9:
  *a1 = v8;
  return result;
}

uint64_t XMLPlistMap.Value.dataValue<A>(in:for:_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a1;
  v40 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - v18;
  if (a4 >> 60 == 3)
  {
    MEMORY[0x1EEE9AC00](v17);
    *(&v36 - 4) = a5;
    *(&v36 - 3) = a6;
    *(&v36 - 2) = a2;
    *(&v36 - 1) = a3;
    v21 = *(v36 + 24);
    *&v23 = MEMORY[0x1EEE9AC00](v22);
    *(&v36 - 4) = partial apply for closure #1 in XMLPlistMap.Value.dataValue<A>(in:for:_:);
    *(&v36 - 3) = v24;
    *(&v36 - 1) = v23;

    os_unfair_lock_lock((v21 + 40));
    v25 = v37;
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v21 + 16));
    os_unfair_lock_unlock((v21 + 40));

    if (!v25)
    {
      return v39;
    }
  }

  else
  {
    v36 = a6;
    v37 = a4;
    v27 = *(v13 + 16);
    v27(&v36 - v18, a3, v12, v19);
    (v27)(v15, v20, v12);
    v28 = v40;
    if ((*(v40 + 48))(v15, 1, a5) == 1)
    {
      v29 = *(v13 + 8);
      v29(v15, v12);
      _CodingPathNode.path.getter(a2);
      v29(v20, v12);
    }

    else
    {
      (*(v28 + 32))(v38, v15, a5);
      v30 = _CodingPathNode.path.getter(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v32 = v36;
      *(inited + 56) = a5;
      *(inited + 64) = v32;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      v34 = v38;
      (*(v28 + 16))(boxed_opaque_existential_0, v38, a5);
      v39 = v30;
      specialized Array.append<A>(contentsOf:)(inited);
      (*(v28 + 8))(v34, a5);
      (*(v13 + 8))(v20, v12);
    }

    type metadata accessor for DecodingError();
    swift_allocError();
    _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC11XMLPlistMapC0K0O_Tt3g5(&type metadata for Data, v37, v35);

    return swift_willThrow();
  }

  return result;
}

void closure #1 in XMLPlistMap.Value.dataValue<A>(in:for:_:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v104 = a6;
  v102 = a5;
  v105 = a9;
  v15 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v18);
  v103 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = MEMORY[0x1E69E7CC0];
  v122 = MEMORY[0x1E69E7CC0];
  if (a2 < 1)
  {
LABEL_40:
    v67 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v24);
    v69 = v68;

    v70 = v105;
    *v105 = v67;
    v70[1] = v69;
    return;
  }

  v101 = &v92 - v22;
  v25 = &a1[a2];
  if (a3 + a4 - &a1[a2] < 0)
  {
LABEL_54:
    __break(1u);
    return;
  }

  v95 = v17;
  v96 = a8;
  v97 = v23;
  v98 = v15;
  v99 = v21;
  v100 = a7;
  v26 = 0;
  v113 = 0;
  v27 = 0;
  v28 = &a1[-a3];
  v110 = xmmword_18121D6B0;
  v94 = xmmword_181215ED0;
  v29 = a1;
  v30 = a1;
  v107 = a1;
  v111 = &a1[a2];
  v109 = a4;
  v108 = a3;
  while (1)
  {
    v117 = a3;
    v118 = a4;
    v119 = v30;
    v120 = v29;
    v121 = v25;
    if (v25 < v29)
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
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if ((v28 & 0x8000000000000000) != 0)
    {
      goto LABEL_46;
    }

    if (a2 < 0)
    {
      goto LABEL_47;
    }

    v34 = *v29;
    if (v34 == 61)
    {
      v43 = __OFADD__(v26++, 1);
      if (v43)
      {
        goto LABEL_50;
      }

      goto LABEL_18;
    }

    if (v34 == 60)
    {
LABEL_39:
      v24 = v122;
      goto LABEL_40;
    }

    v35 = a2;
    v36 = v30;
    v37 = a3;
    v38 = a4;
    v39 = v27;
    LODWORD(v112) = v34;
    v40 = v26;
    v41 = isspace(v34);
    v26 = v40;
    v42 = v112;
    if (v41)
    {
      v26 = 0;
    }

    if ((v112 & 0x80000000) != 0)
    {
      break;
    }

    v25 = v111;
    v27 = v39;
    a4 = v38;
    a3 = v37;
    v30 = v36;
    a2 = v35;
LABEL_18:
    v44 = outlined read-only object #0 of one-time initialization function for dataDecodeTable[v34 + 4];
    if ((v44 & 0x8000000000000000) == 0)
    {
      v43 = __OFADD__(v27++, 1);
      if (v43)
      {
        goto LABEL_48;
      }

      v45 = v44 + (v113 << 6);
      if (__OFADD__(v44, v113 << 6))
      {
        goto LABEL_49;
      }

      v113 = v44 + (v113 << 6);
      if ((v27 & 3) == 0)
      {
        v46 = v45 >> 16;
        v112 = v27;
        if (v26)
        {
          v31 = v26;
          if (v26 != 1)
          {
            v62 = v122;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v62 + 2) + 1, 1, v62);
            }

            v25 = v111;
            v64 = *(v62 + 2);
            v63 = *(v62 + 3);
            v65 = v64 + 1;
            v27 = v112;
            if (v64 >= v63 >> 1)
            {
              v93 = v64 + 1;
              v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v62);
              v65 = v93;
              v26 = v31;
              v27 = v112;
              v25 = v111;
              v62 = v66;
            }

            else
            {
              v26 = v31;
            }

            *(v62 + 2) = v65;
            v62[v64 + 32] = v46;
            v122 = v62;
            v30 = v107;
            goto LABEL_7;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          inited = swift_initStackObject();
          *(inited + 16) = v94;
          *(inited + 32) = BYTE2(v45);
          *(inited + 33) = BYTE1(v45);
          specialized Array.append<A>(contentsOf:)(inited);
        }

        else
        {
          v31 = 0;
          v47 = v45 >> 8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v48 = swift_initStackObject();
          v49 = v45;
          *(v48 + 32) = BYTE2(v45);
          v50 = v48 + 32;
          *(v48 + 16) = v110;
          *(v48 + 33) = v47;
          *(v48 + 34) = v49;
          v51 = v122;
          v52 = *(v122 + 2);
          v53 = v52 + 3;
          if (__OFADD__(v52, 3))
          {
            goto LABEL_51;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v55 = *(v51 + 3) >> 1, v55 < v53))
          {
            if (v52 <= v53)
            {
              v56 = v52 + 3;
            }

            else
            {
              v56 = v52;
            }

            v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v56, 1, v51);
            v55 = *(v51 + 3) >> 1;
          }

          a4 = v109;
          a3 = v108;
          v57 = *(v51 + 2);
          if (v55 - v57 < 3)
          {
            goto LABEL_52;
          }

          v58 = &v51[v57];
          v59 = *v50;
          v58[34] = *(v50 + 2);
          *(v58 + 16) = v59;

          v60 = *(v51 + 2);
          v43 = __OFADD__(v60, 3);
          v61 = v60 + 3;
          if (v43)
          {
            goto LABEL_53;
          }

          *(v51 + 2) = v61;
          v122 = v51;
          v30 = v107;
        }

        v25 = v111;
        v27 = v112;
        v26 = v31;
      }
    }

LABEL_7:
    --a2;
    ++v28;
    v33 = v29 + 2;
    ++v29;
    if (v25 < v33)
    {
      goto LABEL_39;
    }
  }

  v115 = 0;
  v116 = 0xE000000000000000;
  _StringGuts.grow(_:)(59);
  MEMORY[0x1865CB0E0](0xD000000000000023, 0x8000000181486700);
  v114 = BufferReader.lineNumber.getter();
  v71 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v71);

  MEMORY[0x1865CB0E0](0xD000000000000014, 0x8000000181486730);
  LOBYTE(v114) = v42;
  lazy protocol witness table accessor for type UInt8 and conformance UInt8();
  v72 = String.init<A>(_:radix:uppercase:)();
  MEMORY[0x1865CB0E0](v72);

  v113 = v115;
  v112 = v116;
  v73 = type metadata accessor for DecodingError();
  v74 = swift_allocError();
  v111 = v75;
  v76 = v97;
  v77 = *(v97 + 16);
  v78 = v101;
  v79 = v99;
  v77(v101, v104, v99);
  v80 = v103;
  v77(v103, v78, v79);
  v81 = v98;
  v82 = v100;
  if ((*(v98 + 48))(v80, 1, v100) == 1)
  {
    v83 = *(v76 + 8);
    v83(v80, v79);
    _CodingPathNode.path.getter(v102);
    v83(v78, v79);
  }

  else
  {
    v84 = *(v81 + 32);
    v106 = v74;
    v85 = v80;
    v86 = v95;
    v84(v95, v85, v82);
    v87 = _CodingPathNode.path.getter(v102);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    v88 = swift_initStackObject();
    *(v88 + 16) = xmmword_181218E20;
    v89 = v96;
    *(v88 + 56) = v82;
    *(v88 + 64) = v89;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v88 + 32));
    (*(v81 + 16))(boxed_opaque_existential_0, v86, v82);
    v115 = v87;
    specialized Array.append<A>(contentsOf:)(v88);
    (*(v81 + 8))(v86, v82);
    (*(v76 + 8))(v78, v79);
  }

  v91 = v111;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v73 - 8) + 104))(v91, *MEMORY[0x1E69E6B00], v73);
  swift_willThrow();
}

id _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCSRyAHG_Tt1B5(char *a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v45 = *MEMORY[0x1E69E9840];
  v5 = 2;
  if (a3 > 2348810495)
  {
    if (a3 > 2483028223)
    {
      if (a3 != 2483028224)
      {
        if (a3 != 2550137088)
        {
          if (a3 == 2617245952)
          {
            v5 = 0;
            goto LABEL_35;
          }

          goto LABEL_39;
        }

        v5 = 1;
LABEL_35:
        closure #2 in String.init<A>(bytes:encoding:)(a1, a2, v5, closure #1 in closure #3 in String.init<A>(bytes:encoding:), v44);
        if (*(&v44[0] + 1))
        {
          return *&v44[0];
        }

        result = specialized String.init<A, B>(_validating:as:)();
        if (!v14)
        {
          return 0;
        }

        return result;
      }

      v5 = 0;
LABEL_31:
      closure #2 in String.init<A>(bytes:encoding:)(a1, a2, v5, closure #1 in closure #2 in String.init<A>(bytes:encoding:), v44);
      if (*(&v44[0] + 1))
      {
        return *&v44[0];
      }

      result = specialized String.init<A, B>(_validating:as:)(v4, v3, v5);
      if (!v13)
      {
        return 0;
      }

      return result;
    }

    if (a3 == 2348810496)
    {
      goto LABEL_35;
    }

    if (a3 == 2415919360)
    {
      v5 = 1;
      goto LABEL_31;
    }

LABEL_39:
    result = [objc_allocWithZone(NSString) initWithBytes:a1 length:a2 encoding:a3];
    if (!result)
    {
      return result;
    }

    v15 = result;
    isTaggedPointer = _objc_isTaggedPointer(result);
    v17 = v15;
    v18 = v17;
    if (!isTaggedPointer)
    {
      goto LABEL_45;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v17);
    if (!TaggedPointerTag)
    {
      _CFIndirectTaggedPointerStringGetContents();
      v34 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v35)
      {
        v36 = v34;
      }

      else
      {
        [v18 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v36 = v43;
      }

      goto LABEL_80;
    }

    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v20 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        return v20;
      }

LABEL_45:
      *&v44[0] = 0;
      if (__CFStringIsCF())
      {

        return 0;
      }

      v21 = v18;
      v22 = String.init(_nativeStorage:)();
      if (v23)
      {
        v24 = v22;

        return v24;
      }

      if (![v21 length])
      {

        return 0;
      }

      v36 = String.init(_cocoaString:)();
LABEL_80:

      return v36;
    }

    result = [v18 UTF8String];
    if (result)
    {
      result = String.init(utf8String:)(result);
      if (v32)
      {
        v33 = result;

        return v33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_90;
  }

  if (a3 > 6)
  {
    if (a3 != 7)
    {
      if (a3 == 10)
      {
        goto LABEL_31;
      }

      goto LABEL_39;
    }

LABEL_24:
    result = _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O5ASCIIO_SRys5UInt8VGTt0t1g5(a1, a2);
    if (v11)
    {
      return result;
    }

    if (one-time initialization token for compatibility1 != -1)
    {
      swift_once();
    }

    if (static String.compatibility1)
    {
      if (v3)
      {
        v12 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(v3, 0);
        memcpy(v12 + 4, v4, v3);
      }

      else
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      v25 = [objc_allocWithZone(NSString) initWithBytes:v12 + 4 length:v12[2] encoding:a3];
      if (v25)
      {
        v26 = v25;
        v27 = _objc_isTaggedPointer(v25);
        v28 = v26;
        v29 = v28;
        if (v27)
        {
          v30 = _objc_getTaggedPointerTag(v28);
          if (v30)
          {
            if (v30 != 22)
            {
              if (v30 == 2)
              {
                MEMORY[0x1EEE9AC00](v30);
                v31 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_85:

                return v31;
              }

              goto LABEL_56;
            }

            result = [v29 UTF8String];
            if (!result)
            {
LABEL_90:
              __break(1u);
              goto LABEL_91;
            }

            result = String.init(utf8String:)(result);
            if (!v40)
            {
LABEL_91:
              __break(1u);
              return result;
            }

            v31 = result;
          }

          else
          {
            _CFIndirectTaggedPointerStringGetContents();
            v41 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v42)
            {
              [v29 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();

              return v43;
            }

            v31 = v41;
          }

          goto LABEL_84;
        }

LABEL_56:
        *&v44[0] = 0;
        if (__CFStringIsCF())
        {
          v31 = *&v44[0];

          goto LABEL_85;
        }

        v37 = v29;
        v38 = String.init(_nativeStorage:)();
        if (v39)
        {
          v31 = v38;

          goto LABEL_85;
        }

        if (![v37 length])
        {

          v31 = 0;
          goto LABEL_85;
        }

        v31 = String.init(_cocoaString:)();
LABEL_84:

        goto LABEL_85;
      }
    }

    return 0;
  }

  if (a3 == 1)
  {
    goto LABEL_24;
  }

  if (a3 != 4)
  {
    goto LABEL_39;
  }

  if (specialized Sequence<>.starts<A>(with:)(&outlined read-only object #0 of makeString #2 <A>(buffer:) in String.init<A>(bytes:encoding:), a1, a2))
  {
    v6 = v3 < 3;
    v3 -= 3;
    if (v6)
    {
      __break(1u);
    }

    if (v4)
    {
      v4 += 3;
    }

    else
    {
      v4 = 0;
    }
  }

  result = static String._tryFromUTF8(_:)();
  if (!v8)
  {
    result = _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O4UTF8O_SRys5UInt8VGTt0t1g5(v4, v3);
    if (!v9)
    {
      return 0;
    }
  }

  return result;
}

void Data._Representation.withUnsafeMutableBytes<A>(_:)(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v10 = *MEMORY[0x1E69E9840];
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      outlined consume of Data._Representation(v5, v4);
      *&v9 = v5;
      *(&v9 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_181234410;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(a1);
      v7 = v9;
      v8 = *(&v9 + 1) | 0x4000000000000000;
    }

    else
    {
      outlined consume of Data._Representation(v5, v4);
      *&v9 = v5;
      WORD4(v9) = v4;
      BYTE10(v9) = BYTE2(v4);
      BYTE11(v9) = BYTE3(v4);
      BYTE12(v9) = BYTE4(v4);
      BYTE13(v9) = BYTE5(v4);
      BYTE14(v9) = BYTE6(v4);
      a1(&v9, &v9 + BYTE6(v4));
      v7 = v9;
      v8 = DWORD2(v9) | ((WORD6(v9) | (BYTE14(v9) << 16)) << 32);
    }

    goto LABEL_7;
  }

  if (v6 == 2)
  {

    outlined consume of Data._Representation(v5, v4);
    *&v9 = v5;
    *(&v9 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
    *v2 = xmmword_181234410;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.withUnsafeMutableBytes<A>(_:)(a1);
    v7 = v9;
    v8 = *(&v9 + 1) | 0x8000000000000000;
LABEL_7:
    *v2 = v7;
    v2[1] = v8;
    return;
  }

  *(&v9 + 7) = 0;
  *&v9 = 0;
  a1(&v9, &v9);
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(int *a1, int a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(a1 + 1);
  v7 = v6[2];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v8 = v6[5];
  v9 = __OFSUB__(v4, v8);
  v10 = v4 - v8;
  if (v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v5 - v4;
  if (v6[3] >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v6[3];
  }

  memset((v7 + v10), a2, v12);
}

__n128 Locale.Components.languageComponents.setter(uint64_t a1)
{
  v3 = v1[3];
  v10[2] = v1[2];
  v10[3] = v3;
  v4 = v1[5];
  v10[4] = v1[4];
  v10[5] = v4;
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  outlined destroy of Locale.Language.Components(v10);
  v6 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v6;
  v7 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v9;
  return result;
}

uint64_t closure #1 in LocaleCache.fixedComponents(_:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  memcpy(__dst, a2, 0x160uLL);
  v8 = Locale.Components.icuIdentifier.getter();
  v10 = v8;
  v11 = v9;
  v12 = *(a1 + 8);
  if (*(v12 + 16))
  {
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
    if (v14)
    {
      v15 = v13;

      v16 = (*(v12 + 56) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      result = swift_unknownObjectRetain();
LABEL_31:
      *a3 = v18;
      a3[1] = v17;
      return result;
    }
  }

  __dst[46] = v3;
  type metadata accessor for _LocaleICU();
  v52 = _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, type metadata accessor for _LocaleICU);
  memcpy(__dst, a2, 0x160uLL);
  swift_allocObject();
  outlined init with copy of Locale.Components(a2, v53);
  v18 = _LocaleICU.init(components:)(__dst);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  __dst[0] = *(a1 + 8);
  v21 = __dst[0];
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
  v24 = *(v21 + 16);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v22;
  if (*(v21 + 24) >= v26)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v27 = v21;
      v17 = v52;
      if (v22)
      {
        goto LABEL_11;
      }

      goto LABEL_29;
    }

LABEL_13:
    v50 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation15_LocaleProtocol_pGMd);
    v32 = static _DictionaryStorage.copy(original:)();
    v27 = v32;
    if (*(v21 + 16))
    {
      v33 = (v32 + 64);
      v34 = (v21 + 64);
      v35 = ((1 << *(v27 + 32)) + 63) >> 6;
      if (v27 != v21 || v33 >= &v34[8 * v35])
      {
        memmove(v33, v34, 8 * v35);
      }

      v36 = 0;
      *(v27 + 16) = *(v21 + 16);
      v37 = 1 << *(v21 + 32);
      v38 = -1;
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      v39 = v38 & *(v21 + 64);
      v40 = (v37 + 63) >> 6;
      if (v39)
      {
        do
        {
          v41 = __clz(__rbit64(v39));
          v51 = (v39 - 1) & v39;
LABEL_26:
          v44 = 16 * (v41 | (v36 << 6));
          v45 = (*(v21 + 48) + v44);
          v47 = *v45;
          v46 = v45[1];
          v48 = *(*(v21 + 56) + v44);
          v49 = (*(v27 + 48) + v44);
          *v49 = v47;
          v49[1] = v46;
          *(*(v27 + 56) + v44) = v48;

          swift_unknownObjectRetain();
          v39 = v51;
        }

        while (v51);
      }

      v42 = v36;
      while (1)
      {
        v36 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v36 >= v40)
        {
          goto LABEL_28;
        }

        v43 = *(v21 + 64 + 8 * v36);
        ++v42;
        if (v43)
        {
          v41 = __clz(__rbit64(v43));
          v51 = (v43 - 1) & v43;
          goto LABEL_26;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_28:

    v17 = v52;
    v23 = v50;
    if (v4)
    {
      goto LABEL_11;
    }

LABEL_29:
    result = specialized _NativeDictionary._insert(at:key:value:)(v23, v10, v11, v18, v27);
    goto LABEL_30;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
  v27 = __dst[0];
  v28 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
  if ((v4 & 1) == (v29 & 1))
  {
    v23 = v28;
    v17 = v52;
    if ((v4 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_11:
    v30 = v23;

    v31 = (*(v27 + 56) + 16 * v30);
    *v31 = v18;
    v31[1] = v17;
    result = swift_unknownObjectRelease();
LABEL_30:
    *(a1 + 8) = v27;
    goto LABEL_31;
  }

LABEL_33:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t static TimeZone.autoupdatingCurrent.getter@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  type metadata accessor for _TimeZoneAutoupdating();
  inited = swift_initStaticObject();
  result = _s10Foundation16_TimeZoneBridgedCAcA01_bC8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating, type metadata accessor for _TimeZoneAutoupdating);
  *a1 = inited;
  a1[1] = result;
  return result;
}

uint64_t Date.FormatStyle.weekday(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 16);
  v25[0] = *v2;
  v25[1] = v4;
  v5 = *(v2 + 80);
  v28 = *(v2 + 64);
  v29 = v5;
  v30[0] = *(v2 + 96);
  *(v30 + 10) = *(v2 + 106);
  v6 = *(v2 + 48);
  v26 = *(v2 + 32);
  v27 = v6;
  v7 = v25[0];
  v8 = *(&v26 + 1);
  v9 = v26;
  v10 = v27;
  if ((v26 & 0xFF000000000000) == 0x3000000000000)
  {
    if (v3 == 6)
    {
      v17 = *(v2 + 66);
      v18 = *(v2 + 82);
      v19 = *(v2 + 98);
      v20 = *(v2 + 114);
      v16 = *(v2 + 50);
      v14[0] = v25[0];
      v14[1] = v4;
      v14[2] = v26;
      v15 = v27;
      v11 = a2;
      Date.FormatStyle.symbols.getter(v21);
      a2 = v11;
      v7 = v21[0];
      v4 = v21[1];
      v9 = v22;
      v8 = v23;
      v10 = v24;
      v12 = v22 & 0xFFFFFFFFFFFF0000;
      if ((v22 & 0xFF000000000000) == 0x3000000000000)
      {
        LOBYTE(v3) = BYTE3(v22);
      }

      else
      {
        LOBYTE(v3) = 6;
      }
    }

    else
    {
      v8 = 0;
      v12 = 0x2020E0906030000;
      LOBYTE(v14[0]) = 1;
      v9 = 100860160;
      v4 = xmmword_181223220;
      v7 = xmmword_18121B8E0;
      v10 = 3327;
    }
  }

  else
  {
    v12 = v26;
  }

  *a2 = v7;
  *(a2 + 16) = v4;
  *(a2 + 32) = v12 & 0xFFFFFFFF00000000 | (v3 << 24) | *&v9 & 0xFFFFFFLL;
  *(a2 + 40) = v8;
  *(a2 + 48) = v10;
  *(a2 + 66) = *(v2 + 66);
  *(a2 + 82) = *(v2 + 82);
  *(a2 + 98) = *(v2 + 98);
  *(a2 + 114) = *(v2 + 114);
  *(a2 + 50) = *(v2 + 50);
  return outlined init with copy of Date.FormatStyle(v25, v14);
}

uint64_t Date.FormatStyle.month(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = v2[1];
  v29 = *v2;
  v30 = v4;
  v5 = v2[3];
  v31 = v2[2];
  v32 = v5;
  v6 = v2[5];
  v33 = v2[4];
  v34 = v6;
  v35[0] = v2[6];
  *(v35 + 10) = *(v2 + 106);
  v7 = *(&v29 + 1);
  v8 = v29;
  v9 = *(&v30 + 1);
  v10 = v30;
  v11 = *(&v31 + 1);
  v12 = v31;
  v13 = v32;
  if ((v31 & 0xFF000000000000) == 0x3000000000000)
  {
    if (v3 == 5)
    {
      v19 = *(v2 + 66);
      v20 = *(v2 + 82);
      v21 = *(v2 + 98);
      v22 = *(v2 + 114);
      v18 = *(v2 + 50);
      v16[0] = v29;
      v16[1] = v30;
      v16[2] = v31;
      v17 = v32;
      v14 = a2;
      Date.FormatStyle.symbols.getter(v23);
      a2 = v14;
      v8 = v23[0];
      v7 = v23[1];
      v10 = v24;
      v9 = v25;
      v12 = v26;
      v11 = v27;
      v13 = v28;
      if ((v26 & 0xFF000000000000) == 0x3000000000000)
      {
        LOBYTE(v3) = BYTE2(v24);
      }

      else
      {
        LOBYTE(v3) = 5;
      }
    }

    else
    {
      v11 = 0;
      v9 = 0;
      v7 = 0;
      LOBYTE(v16[0]) = 1;
      v12 = 0x2020E0906030100;
      v13 = 3327;
      v8 = 3;
      v10 = 50660863;
    }
  }

  *a2 = v8;
  *(a2 + 8) = v7;
  *(a2 + 16) = v10 & 0xFFFFFFFFFF00FFFFLL | (v3 << 16);
  *(a2 + 24) = v9;
  *(a2 + 32) = v12;
  *(a2 + 40) = v11;
  *(a2 + 48) = v13;
  *(a2 + 66) = *(v2 + 66);
  *(a2 + 82) = *(v2 + 82);
  *(a2 + 98) = *(v2 + 98);
  *(a2 + 114) = *(v2 + 114);
  *(a2 + 50) = *(v2 + 50);
  return outlined init with copy of Date.FormatStyle(&v29, v16);
}

uint64_t Date.FormatStyle.day(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[5];
  v37 = v2[4];
  v38 = v3;
  v39[0] = v2[6];
  *(v39 + 10) = *(v2 + 106);
  v4 = v2[1];
  v33 = *v2;
  v34 = v4;
  v5 = v2[3];
  v35 = v2[2];
  v6 = *a1;
  v7 = *(a1 + 8);
  LOBYTE(v8) = *(a1 + 9);
  v36 = v5;
  v9 = *(&v33 + 1);
  v10 = v33;
  v11 = *(&v35 + 2) | (WORD3(v35) << 32);
  v12 = *(&v35 + 1);
  v13 = v5;
  if ((v11 & 0xFF00000000) != 0x300000000)
  {
    v15 = v34;
LABEL_8:
    v28 = v8;
    goto LABEL_9;
  }

  if ((v8 & 1) == 0)
  {
    v12 = 0;
    v9 = 0;
    v28 = 1;
    v13 = 3327;
    v11 = 0x2020E090603;
    v10 = 3;
    v15 = 50660863;
    goto LABEL_8;
  }

  v14 = a2;
  v24 = *(v2 + 66);
  v25 = *(v2 + 82);
  v26 = *(v2 + 98);
  v27 = *(v2 + 114);
  v23 = *(v2 + 50);
  v17[0] = v33;
  v17[1] = v34;
  v18 = v35;
  v19 = *(&v35 + 2);
  v20 = WORD2(v11);
  v21 = *(&v35 + 1);
  v22 = v5;
  Date.FormatStyle.symbols.getter(v29);
  v10 = v29[0];
  v9 = v29[1];
  v15 = v29[2];
  v12 = v31;
  v13 = v32;
  v11 = v30 >> 16;
  if (((v30 >> 16) & 0xFF00000000) != 0x300000000)
  {
    a2 = v14;
    goto LABEL_8;
  }

  v6 = v29[3];
  v8 = v30 >> 8;
  v7 = v30;
  a2 = v14;
LABEL_9:
  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v15;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 33) = v8;
  *(a2 + 34) = v11;
  *(a2 + 38) = WORD2(v11);
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;
  *(a2 + 66) = *(v2 + 66);
  *(a2 + 82) = *(v2 + 82);
  *(a2 + 98) = *(v2 + 98);
  *(a2 + 114) = *(v2 + 114);
  *(a2 + 50) = *(v2 + 50);
  return outlined init with copy of Date.FormatStyle(&v33, v17);
}

uint64_t specialized _NSSwiftProcessInfo.globallyUniqueString.getter()
{
  v13 = *MEMORY[0x1E69E9840];
  memset(out, 0, sizeof(out));
  _foundation_uuid_generate_random(out);
  v0 = UUID.uuidString.getter();
  v2 = v1;
  getpid();
  *out = mach_absolute_time();
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  v3 = String.init<A>(_:radix:uppercase:)();
  v5 = v4;
  v6 = String.count.getter();
  v7 = 16 - v6;
  if (__OFSUB__(16, v6))
  {
    __break(1u);
  }

  v8._countAndFlagsBits = 48;
  v8._object = 0xE100000000000000;
  v9 = String.init(repeating:count:)(v8, v7);
  *out = v0;
  *&out[8] = v2;
  MEMORY[0x1865CB0E0](45, 0xE100000000000000);
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v10);

  MEMORY[0x1865CB0E0](45, 0xE100000000000000);
  MEMORY[0x1865CB0E0](v9._countAndFlagsBits, v9._object);

  MEMORY[0x1865CB0E0](v3, v5);

  return *out;
}

double *specialized static Date.subsecondsOffsetInNanoScale(_:_:)(double *result, double *a2)
{
  v2 = *result;
  if (*result == *a2)
  {
    return 0;
  }

  if (*result >= *a2)
  {
    v3 = *result;
  }

  else
  {
    v3 = *a2;
  }

  if (*result >= *a2)
  {
    v2 = *a2;
  }

  v4 = round((ceil(v2) - v2 + v3 - floor(v3)) * 1000000000.0);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v4 < 9.22337204e18)
  {
    return v4;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    outlined init with copy of AttributedString._AttributeValue(*(a1 + 56) + 72 * (v10 | (v9 << 6)), v14);
    v11 = v15;
    v12 = v16;
    outlined copy of AttributedString.AttributeRunBoundaries?(v15, v16);
    result = outlined destroy of AttributedString._AttributeValue(v14);
    if (v12 != 1)
    {
      outlined consume of AttributedString.AttributeRunBoundaries?(v11, v12);
      v13 = 1;
LABEL_13:

      return v13;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      v13 = 0;
      goto LABEL_13;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 64);
  v40 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v43 = a2;
  v42 = result;
  v41 = v9;
  if ((v7 & v5) != 0)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v11 = (v8 - 1) & v8;
LABEL_12:
      v14 = v10 | (v4 << 6);
      v15 = (*(v3 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      outlined init with copy of AttributedString._AttributeValue(*(v3 + 56) + 72 * v14, &v52);
      v48 = v53;
      v46 = v52;
      v47 = v55;
      v45 = v54;
      v18 = v56;

      if (!v17)
      {
        return 1;
      }

      v52 = v46;
      v53 = v48;
      v54 = v45;
      v55 = v47;
      v56 = v18;
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
      v21 = v20;

      if ((v21 & 1) == 0)
      {
        break;
      }

      v44 = v11;
      outlined init with copy of AttributedString._AttributeValue(*(v2 + 56) + 72 * v19, v49);
      v22 = v50;
      *&v46 = v51;
      *&v45 = __swift_project_boxed_opaque_existential_1(v49, v50);
      v23 = __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
      *&v48 = &v39;
      v24 = *(v22 - 8);
      MEMORY[0x1EEE9AC00](v23);
      v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      *&v47 = &v39;
      v28 = MEMORY[0x1EEE9AC00](v27);
      (*(v30 + 16))(&v39 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
      v31 = type metadata accessor for Optional();
      v32 = *(v31 - 8);
      MEMORY[0x1EEE9AC00](v31);
      v34 = &v39 - v33;
      v35 = swift_dynamicCast();
      v36 = *(v24 + 56);
      if (!v35)
      {
        v36(v34, 1, 1, v22);
        (*(v32 + 8))(v34, v31);
        outlined destroy of AttributedString._AttributeValue(&v52);
        v38 = v49;
        goto LABEL_21;
      }

      v36(v34, 0, 1, v22);
      (*(v24 + 32))(v26, v34, v22);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v24 + 8))(v26, v22);
      outlined destroy of AttributedString._AttributeValue(&v52);
      result = outlined destroy of AttributedString._AttributeValue(v49);
      if ((v37 & 1) == 0)
      {
        return 0;
      }

      v2 = v43;
      v3 = v42;
      v9 = v41;
      v8 = v44;
      if (!v44)
      {
        goto LABEL_7;
      }
    }

    v38 = &v52;
LABEL_21:
    outlined destroy of AttributedString._AttributeValue(v38);
    return 0;
  }

LABEL_7:
  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v40 + 8 * v4);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}