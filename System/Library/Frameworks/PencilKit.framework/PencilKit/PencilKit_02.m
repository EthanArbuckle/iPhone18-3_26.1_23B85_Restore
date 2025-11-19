uint64_t PKRefineMorph.Match.MatchTo.hash(into:)(double a1, double a2, double a3)
{
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x1CCA6D5C0](*&v5);
  if (a3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = a3;
  }

  MEMORY[0x1CCA6D5C0](*&v6);
  if (a1 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a1;
  }

  return MEMORY[0x1CCA6D5C0](*&v7);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PKRefineMorph.Match.MatchTo()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  PKRefineMorph.Match.MatchTo.hash(into:)(v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PKRefineMorph.Match.MatchTo()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  PKRefineMorph.Match.MatchTo.hash(into:)(v1, v2, v3);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PKRefineMorph.Match.MatchTo(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    return a1[1] == a2[1];
  }

  return 0;
}

uint64_t PKRefineMorph.Match.filterMatches(distanceMatchCanJumpSqr:)(double a1)
{
  specialized MutableCollection.swapAt(_:_:)(0, *(v1 + 24));
  *(v1 + 24) = 0;
  result = *(v1 + 16);
  v4 = *(result + 16);
  if (v4)
  {
    v5 = MEMORY[0x1E69E7CC0];
    v6 = MEMORY[0x1E69E7CC0] + 32;
    v32 = MEMORY[0x1E69E7CC0];
    v33 = MEMORY[0x1E69E7CC0] + 32;
    v34 = 1;
    v7 = v4 - 1;
    if (v4 == 1)
    {
      v8 = 1;
      v9 = 1;
    }

    else
    {
      v30 = *(result + 40);

      v11 = v30;
      v29 = v10;
      v12 = (v10 + 64);
      v8 = 1;
      do
      {
        v14 = vsubq_f64(*v12, v11);
        if (vaddvq_f64(vmulq_f64(v14, v14)) < a1)
        {
          v31 = *v12;
          v15 = v12[-1].f64[1];
          if ((v8 & 1) == 0 || (result = swift_isUniquelyReferenced_nonNull(), v32 = v5, (result & 1) == 0))
          {
            result = specialized ArraySlice._copyToNewBuffer(oldCount:)((v8 >> 1));
            v8 = v34;
          }

          v16 = v8 >> 1;
          v17 = v8 >> 1;
          if (v8)
          {
            type metadata accessor for __ContiguousArrayStorageBase();
            swift_unknownObjectRetain();
            v18 = swift_dynamicCastClass();
            if (!v18)
            {
              swift_unknownObjectRelease();
              v18 = MEMORY[0x1E69E7CC0];
            }

            v19 = *(v18 + 16);
            if (v33 + 24 * v16 == v18 + 24 * v19 + 32)
            {
              v20 = *(v18 + 24);

              v21 = (v20 >> 1) - v19;
              v22 = __OFADD__(v16, v21);
              v17 = v16 + v21;
              if (v22)
              {
                goto LABEL_35;
              }
            }

            else
            {

              v17 = v8 >> 1;
            }
          }

          v23 = v16 + 1;
          if (v17 < (v16 + 1))
          {
            result = specialized ArraySlice._copyToNewBuffer(oldCount:)((v8 >> 1));
            v8 = v34;
          }

          v24 = v8 >> 1;
          v22 = __OFSUB__(v23, v8 >> 1);
          v25 = v23 - (v8 >> 1);
          if (v22)
          {
            __break(1u);
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          v5 = v32;
          if (v25)
          {
            type metadata accessor for __ContiguousArrayStorageBase();
            swift_unknownObjectRetain();
            result = swift_dynamicCastClass();
            if (!result)
            {
              swift_unknownObjectRelease();
              result = MEMORY[0x1E69E7CC0];
            }

            v26 = *(result + 16);
            v22 = __OFADD__(v26, v25);
            v27 = v26 + v25;
            if (v22)
            {
              goto LABEL_32;
            }

            *(result + 16) = v27;

            v28 = v24 + v25;
            if (__OFADD__(v24, v25))
            {
              goto LABEL_33;
            }

            if ((v28 & 0x8000000000000000) != 0)
            {
              goto LABEL_34;
            }

            v8 = v8 & 1 | (2 * v28);
            v34 = v8;
          }

          v6 = v33;
          v13 = v33 + 24 * v16;
          *v13 = v15;
          v11 = v30;
          *(v13 + 8) = v31;
        }

        v12 = (v12 + 24);
        --v7;
      }

      while (v7);

      v9 = *(v29 + 16);
      if (!v9)
      {
        goto LABEL_37;
      }
    }

    specialized Array.subscript.setter(v5, v6, 0, v8, 1uLL, v9);

    return swift_unknownObjectRelease();
  }

  else
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  return result;
}

unint64_t specialized MutableCollection.swapAt(_:_:)(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v9 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v3;
      v10 = *(*v3 + 16);
      if (v10 > result)
      {
        v2 = a2;
        if (v10 > a2)
        {
          v11 = v4 + 32 + 24 * result;
          v15 = *v11;
          v5 = *(v11 + 16);
          v12 = (v4 + 32 + 24 * a2);
          v6 = *v12;
          v7 = v12[1];
          v8 = v12[2];
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
LABEL_6:
            v13 = (v4 + 32 + 24 * v9);
            *v13 = v6;
            v13[1] = v7;
            v13[2] = v8;
            v14 = v4 + 32 + 24 * v2;
            *v14 = v15;
            *(v14 + 16) = v5;
            *v3 = v4;
            return result;
          }

LABEL_11:
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
          v4 = result;
          goto LABEL_6;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t PKRefineMorph.Match.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  if (a4 == 0.0)
  {
    a4 = 0.0;
  }

  MEMORY[0x1CCA6D5C0](*&a4);
  if (a5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a5;
  }

  MEMORY[0x1CCA6D5C0](*&v9);
  specialized Array<A>.hash(into:)(a1, a2);
  return MEMORY[0x1CCA6D5B0](a3);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PKRefineMorph.Match()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  Hasher.init(_seed:)();
  PKRefineMorph.Match.hash(into:)(v6, v3, v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PKRefineMorph.Match()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  Hasher.init(_seed:)();
  PKRefineMorph.Match.hash(into:)(v6, v3, v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PKRefineMorph.Match(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a2 + 24);
  v5 = *(a1 + 24);
  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ9PencilKit13PKRefineMorphV5MatchV0F2ToV_Tt1g5(*(a1 + 16), *(a2 + 16)) & (v5 == v4);
}

uint64_t specialized morphCost #1 (of:match:in:) in static PKRefineMorph.computeMorph(from:to:fromViewFrame:toViewFrame:transformViewToModel:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, float64_t a6, float64_t a7)
{
  result = swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (*(*a5 + 16) <= a1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = *(*a5 + 8 * a1 + 32);
  v14 = *(v13 + 16);
  if (v14)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (*(a2 + 16) <= a3)
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v15.f64[0] = a6;
    v15.f64[1] = a7;
    v16 = (v13 + 40);
    v17 = 0.0;
    while (*v16 < *(a4 + 16))
    {
      v18 = a4 + 32 + 32 * *v16;
      v19 = *(v18 + 24);
      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_14;
      }

      v20 = *(v18 + 16);
      if (v19 >= *(v20 + 16))
      {
        goto LABEL_15;
      }

      v21 = *(v16 - 1);
      v16 += 2;
      v22 = vsubq_f64(vaddq_f64(vsubq_f64(v15, *v18), *(v20 + 24 * v19 + 40)), *(a2 + 24 * a3 + 40));
      v17 = v17 + v21 * vaddvq_f64(vmulq_f64(v22, v22)) * 1000.0;
      if (!--v14)
      {
        return result;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t specialized morphCost #2 (of:) in static PKRefineMorph.computeMorph(from:to:fromViewFrame:toViewFrame:transformViewToModel:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  result = swift_beginAccess();
  if (v4)
  {
    v6 = 0;
    v7 = a1 + 32;
    v8 = 0.0;
    while (v6 < *(*a2 + 16))
    {
      v10 = *(*a2 + 32 + 8 * v6);
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = v7 + 32 * v6;
        v13 = *(v12 + 24);
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        result = *(v12 + 16);
        if (v13 >= *(result + 16))
        {
          goto LABEL_21;
        }

        v14 = *v12;
        v15 = *(result + 24 * v13 + 40);
        v16 = (v10 + 40);
        v9 = 0.0;
        while (*v16 < v4)
        {
          v17 = v7 + 32 * *v16;
          v18 = *(v17 + 24);
          if ((v18 & 0x8000000000000000) != 0)
          {
            goto LABEL_17;
          }

          result = *(v17 + 16);
          if (v18 >= *(result + 16))
          {
            goto LABEL_18;
          }

          v19 = *(v16 - 1);
          v16 += 2;
          v20 = vsubq_f64(vaddq_f64(vsubq_f64(v14, *v17), *(result + 24 * v18 + 40)), v15);
          v9 = v9 + v19 * vaddvq_f64(vmulq_f64(v20, v20)) * 1000.0;
          if (!--v11)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        break;
      }

      v9 = 0.0;
LABEL_4:
      ++v6;
      v8 = v8 + v9;
      if (v6 == v4)
      {
        return result;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ9PencilKit13PKRefineMorphV5MatchV0F2ToV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  v4 = (result + 48);
  while (v2)
  {
    v5 = *(v3 - 2);
    v6 = *(v3 - 1);
    v7 = *v3;
    v3 += 3;
    v8 = v7;
    v9 = *(v4 - 2) == v5;
    if (*(v4 - 1) != v6)
    {
      v9 = 0;
    }

    result = *v4 == v8 && v9;
    v10 = result != 1 || v2-- == 1;
    v4 += 3;
    if (v10)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x1CCA6D590](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(double a1)
{
  v3 = a1 == 0.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = a1;
  }

  v5 = MEMORY[0x1CCA6D590](*(v1 + 40), *&v4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v5, a1);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

uint64_t specialized static BinaryFloatingPoint<>.random<A>(in:using:)(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x1CCA6FC40](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v6, a2, a3);
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi12CoreGraphics7CGFloatVGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      result = MEMORY[0x1CCA6D590](*(v7 + 40), v20);
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

    if (a2)
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

    v3 = v30;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy12CoreGraphics7CGFloatVSo7UIImageCGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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

      if (v20 == 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v20;
      }

      result = MEMORY[0x1CCA6D590](*(v7 + 40), *&v23);
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

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_38;
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
      v31 = 1 << *(v5 + 32);
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

    v3 = v32;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSNumberCSo7UIImageCGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
        v22 = v20;
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
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
      v31 = 1 << *(v5 + 32);
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

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for NSNumber();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xE900000000000064;
    v6 = 0xE600000000000000;
    v7 = a1;
    while (1)
    {
      v8 = *(*(v19 + 48) + v4);
      if (v8 <= 1)
      {
        if (*(*(v19 + 48) + v4))
        {
          v9 = 0x6874756D697A61;
        }

        else
        {
          v9 = 0x737569646172;
        }

        if (*(*(v19 + 48) + v4))
        {
          v10 = 0xE700000000000000;
        }

        else
        {
          v10 = 0xE600000000000000;
        }
      }

      else if (v8 == 2)
      {
        v10 = 0xE700000000000000;
        v9 = 0x7974696361706FLL;
      }

      else
      {
        if (v8 == 3)
        {
          v9 = 0x32737569646172;
        }

        else
        {
          v9 = 0x6C6F687365726874;
        }

        if (v8 == 3)
        {
          v10 = 0xE700000000000000;
        }

        else
        {
          v10 = 0xE900000000000064;
        }
      }

      if (v7 == 3)
      {
        v11 = 0x32737569646172;
      }

      else
      {
        v11 = 0x6C6F687365726874;
      }

      if (v7 == 3)
      {
        v5 = 0xE700000000000000;
      }

      if (v7 == 2)
      {
        v11 = 0x7974696361706FLL;
        v5 = 0xE700000000000000;
      }

      if (v7)
      {
        v12 = 0x6874756D697A61;
      }

      else
      {
        v12 = 0x737569646172;
      }

      if (v7)
      {
        v6 = 0xE700000000000000;
      }

      v13 = v7 <= 1 ? v12 : v11;
      v14 = v7 <= 1 ? v6 : v5;
      if (v9 == v13 && v10 == v14)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xE900000000000064;
        v6 = 0xE600000000000000;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi12CoreGraphics7CGFloatVGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy12CoreGraphics7CGFloatVSo7UIImageCGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSNumberCSo7UIImageCGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1CCA6D5B0](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 3;
      v9 = v8;
      if (v6 == 0.0)
      {
        v6 = 0.0;
      }

      MEMORY[0x1CCA6D5C0](*&v6);
      if (v9 == 0.0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = v9;
      }

      MEMORY[0x1CCA6D5C0](*&v10);
      if (v7 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v7;
      }

      result = MEMORY[0x1CCA6D5C0](*&v11);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = v4[2];
  v7 = v4[3] >> 1;
  result = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_35;
  }

  v10 = *a1;
  v11 = *(*a1 + 16);
  v30 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v30)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v14 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = result - a2;
  if (__OFSUB__(result, a2))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v30 = __OFSUB__(v15, v14);
  v16 = v15 - v14;
  if (v30)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v37 = v16;
  v17 = (v10 + 32);
  v18 = v10 + 32 + 24 * a2;
  __dst = (v18 + 24 * a3);
  result = specialized _SliceBuffer.requestUniqueMutableBackingBuffer(minimumCapacity:)(result);
  if (result)
  {
    v19 = result;
    v35 = v10;
    v20 = v4[2];
    v21 = (v4[1] + 24 * v20);
    v22 = &v21[24 * a2];
    if (v17 != v21 || v17 >= v22)
    {
      memmove(v17, v21, 24 * a2);
    }

    a4(v18, a3);
    v24 = &v22[24 * v37];
    if (__dst != v24 || __dst >= &v24[24 * v14])
    {
      memmove(__dst, v24, 24 * v14);
    }

    *(v19 + 16) = 0;

    v10 = v35;
  }

  else
  {
    v20 = v4[2];
    v26 = v20 + a2;
    if (__OFADD__(v20, a2))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v26 < v20)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (__OFSUB__(v26, v20))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v27 = v4[1];
    memcpy((v10 + 32), (v27 + 24 * v20), 24 * a2);
    result = (a4)(&v17[24 * a2], a3);
    v28 = v26 + v37;
    if (__OFADD__(v26, v37))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v29 = v4[3] >> 1;
    v30 = __OFSUB__(v29, v28);
    v31 = v29 < v28;
    v32 = v29 - v28;
    if (v31)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v30)
    {
LABEL_48:
      __break(1u);
      return result;
    }

    memcpy(__dst, (v27 + 24 * v28), 24 * v32);
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v20))
  {
    goto LABEL_39;
  }

  v33 = *(v10 + 16);
  v30 = __OFADD__(v20, v33);
  v34 = v20 + v33;
  if (v30)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v34 < v20)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v34 < 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  *v4 = v10;
  v4[1] = &v17[-24 * v20];
  v4[2] = v20;
  v4[3] = (2 * v34) | 1;
}

void *specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 24 * a5 + 24 * v8;
  if (v13 == v11 + 24 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x1E69E7CC0];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 24 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 24 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9PencilKit13PKRefineMorphV5MatchV0L2ToV_Tt1g5(v6, v25);
}

uint64_t specialized ArraySlice._copyToNewBuffer(oldCount:)(void *a1)
{
  v5 = specialized _ArrayBufferProtocol._forceCreateUniqueMutableBuffer(countForNewBuffer:minNewCapacity:)(a1, a1 + 1, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  v3 = specialized default argument 3 of _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)();
  specialized _ArrayBufferProtocol._arrayOutOfPlaceUpdate(_:_:_:_:)(&v5, a1, 0, v3);
}

uint64_t specialized _SliceBuffer.requestUniqueMutableBackingBuffer(minimumCapacity:)(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v1[1];
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 24 * v6 + 24 * v7 != v9 + 24 * v10 + 32)
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = *(v9 + 24);

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v15 = (v8 + 24 * v6 - result - 32) / 24;
  v14 = __OFADD__(v7, v15);
  v5 = v7 + v15;
  if (v14)
  {
    goto LABEL_18;
  }

  v4 = *(result + 16);
  if (v5 < v4)
  {
LABEL_19:
    v16 = result;
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v5, v4, 0);
    return v16;
  }

  return result;
}

void specialized PKRefineMorph.GridMesh.init(bounds:step:)(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  Width = CGRectGetWidth(*&a3);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_48;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (!a1)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (Width == 0x8000000000000000 && a1 == -1)
  {
    __break(1u);
LABEL_58:
    __break(1u);
    return;
  }

  v16 = Width / a1;
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    goto LABEL_51;
  }

  if (v18 <= 2)
  {
    v18 = 2;
  }

  if (v18 >= 256)
  {
    v6 = 256;
  }

  else
  {
    v6 = v18;
  }

  v68.origin.x = a3;
  v68.origin.y = a4;
  v68.size.width = a5;
  v68.size.height = a6;
  Height = CGRectGetHeight(v68);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_52;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (Height >= 9.22337204e18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (Height == 0x8000000000000000 && a1 == -1)
  {
    goto LABEL_58;
  }

  v20 = Height / a1;
  v17 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (!v17)
  {
    v63 = a2;
    if (v21 <= 2)
    {
      v21 = 2;
    }

    if (v21 >= 256)
    {
      v7 = 256;
    }

    else
    {
      v7 = v21;
    }

    if (one-time initialization token for logger == -1)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  swift_once();
LABEL_27:
  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, logger);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134218240;
    *(v25 + 4) = v6;
    *(v25 + 12) = 2048;
    *(v25 + 14) = v7;
    _os_log_impl(&dword_1C7CCA000, v23, v24, "Creating refine mesh of size %ldx%ld", v25, 0x16u);
    MEMORY[0x1CCA6FC30](v25, -1, -1);
  }

  v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 * v6, 0, MEMORY[0x1E69E7CC0]);
  v27 = 0;
  v64 = v7 - 1;
  v65 = (v7 - 1);
  do
  {
    v28 = 0;
    v29 = v27++;
    v30 = v29 / v65;
    *&v29 = v29 / v65;
    v66 = LODWORD(v29);
    do
    {
      v69.origin.x = a3;
      v69.origin.y = a4;
      v69.size.width = a5;
      v69.size.height = a6;
      MinX = CGRectGetMinX(v69);
      v70.origin.x = a3;
      v70.origin.y = a4;
      v70.size.width = a5;
      v70.size.height = a6;
      v32 = CGRectGetWidth(v70);
      v71.origin.x = a3;
      v71.origin.y = a4;
      v71.size.width = a5;
      v71.size.height = a6;
      MinY = CGRectGetMinY(v71);
      v72.origin.x = a3;
      v72.origin.y = a4;
      v72.size.width = a5;
      v72.size.height = a6;
      v34 = CGRectGetHeight(v72);
      v36 = *(v26 + 2);
      v35 = *(v26 + 3);
      if (v36 >= v35 >> 1)
      {
        v62 = v34;
        v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v26);
        v34 = v62;
        v26 = v42;
      }

      v37 = v28 / (v6 - 1);
      *&v38 = MinX + v37 * v32;
      v39 = MinY + v30 * v34;
      *(&v38 + 1) = v39;
      *&v40 = v37;
      HIDWORD(v40) = v66;
      *(v26 + 2) = v36 + 1;
      v41 = &v26[24 * v36];
      *(v41 + 4) = v38;
      *(v41 + 5) = v38;
      *(v41 + 6) = v40;
      ++v28;
    }

    while (v6 != v28);
  }

  while (v27 != v7);
  v67 = v7;
  v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v64 * ((2 * v6) | 1)) & ~((v64 * ((2 * v6) | 1)) >> 63), 0, MEMORY[0x1E69E7CC0]);
  v44 = v7 - 1;
  v45 = v43;
  v46 = 0;
  v47 = 0;
  v48 = v6;
  do
  {
    ++v47;
    v49 = v6;
    v50 = v46;
    v51 = v48;
    do
    {
      v53 = *(v45 + 2);
      v52 = *(v45 + 3);
      v54 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v45);
        v44 = v64;
        v45 = v57;
      }

      *(v45 + 2) = v54;
      *&v45[2 * v53 + 32] = v50;
      v55 = *(v45 + 3);
      v56 = v53 + 2;
      if (v56 > (v55 >> 1))
      {
        v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56, 1, v45);
        v44 = v64;
        v45 = v58;
      }

      *(v45 + 2) = v56;
      *&v45[2 * v54 + 32] = v51++;
      ++v50;
      --v49;
    }

    while (v49);
    v60 = *(v45 + 2);
    v59 = *(v45 + 3);
    if (v60 >= v59 >> 1)
    {
      v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v45);
      v44 = v64;
      v45 = v61;
    }

    *(v45 + 2) = v60 + 1;
    *&v45[2 * v60 + 32] = -1;
    v48 += v6;
    v46 += v6;
  }

  while (v47 != v44);
  *v63 = v26;
  *(v63 + 8) = v45;
  *(v63 + 16) = a3;
  *(v63 + 24) = a4;
  *(v63 + 32) = a5;
  *(v63 + 40) = a6;
  *(v63 + 48) = v6;
  *(v63 + 56) = v67;
}

char *specialized static PKRefineMorph.NStroke.normalized(stroke:step:)(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = 0uLL;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = 1;
  v9 = 0.0;
  do
  {
    v10 = v6;
    v6 = *(v5 + 16 * v4);
    if (v8)
    {
      v35 = *(v5 + 16 * v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v12 = *(v7 + 2);
      v11 = *(v7 + 3);
      v6 = v35;
      if (v12 >= v11 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v7);
        v6 = v35;
        v7 = v22;
      }

      *(v7 + 2) = v12 + 1;
      *&v7[16 * v12 + 32] = v6;
    }

    else
    {
      v13 = vsubq_f64(v6, v10);
      v14 = sqrt(vaddvq_f64(vmulq_f64(v13, v13)));
      if (v9 + v14 <= a2)
      {
        v9 = v9 + v14;
      }

      else
      {
        v32 = v10;
        v33 = v13;
        v36 = *(v5 + 16 * v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
        }

        v16 = *(v7 + 2);
        v15 = *(v7 + 3);
        v17 = v33;
        v6 = v36;
        if (v16 >= v15 >> 1)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v7);
          v17 = v33;
          v6 = v36;
          v7 = v23;
        }

        v18 = vaddq_f64(v32, vmulq_n_f64(v17, (a2 - v9) / v14));
        *(v7 + 2) = v16 + 1;
        *&v7[16 * v16 + 32] = v18;
        v9 = v14 - (a2 - v9);
        if (v9 > a2)
        {
          v19 = v16 + 3;
          do
          {
            v20 = *(v7 + 3);
            if (v19 - 2 >= v20 >> 1)
            {
              v34 = v18;
              v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v19 - 1, 1, v7);
              v18 = v34;
              v6 = v36;
              v7 = v21;
            }

            v18 = vaddq_f64(v18, vmulq_n_f64(vsubq_f64(v6, v18), a2 / v9));
            *(v7 + 2) = v19 - 1;
            *&v7[16 * v19] = v18;
            v9 = v9 - a2;
            ++v19;
          }

          while (v9 > a2);
          v9 = v9 + 0.0;
        }
      }
    }

    v8 = 0;
    ++v4;
  }

  while (v4 != v2);
  v24 = *(v7 + 2);
  if (v24)
  {
    v37 = *(v5 + 16 * v2 - 16);
    v25 = vsubq_f64(v37, *&v7[16 * v24 + 16]);
    v26 = sqrt(vaddvq_f64(vmulq_f64(v25, v25)));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v26 >= a2 * 0.5)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_30:
        v30 = *(v7 + 2);
        v29 = *(v7 + 3);
        if (v30 >= v29 >> 1)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v7);
        }

        *(v7 + 2) = v30 + 1;
        v28 = &v7[16 * v30 + 32];
        goto LABEL_33;
      }
    }

    else
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      }

      if (v24 <= *(v7 + 2))
      {
        v28 = &v7[16 * v24 + 16];
LABEL_33:
        *v28 = v37;
        return v7;
      }

      __break(1u);
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    goto LABEL_30;
  }

  return v7;
}

unint64_t specialized static PKRefineMorph.calcMatches(fromDrawing:toDrawing:maxDist:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = 0;
    v6 = a1 + 32;
    v217 = a2 + 32;
    v7 = a3 * a3;
    v211 = MEMORY[0x1E69E7CC0];
    v202 = *(a1 + 16);
    v203 = a2;
    v201 = a1 + 32;
    while (1)
    {
      v8 = *(v6 + 8 * v5);
      v208 = *(v8 + 16);
      if (v208)
      {
        break;
      }

LABEL_269:
      if (++v5 == v3)
      {
        return v211;
      }
    }

    v218 = *(a2 + 16);
    v209 = (v8 + 32);
    v204 = v5;
    v205 = (v8 + 48);
    result = swift_bridgeObjectRetain_n();
    v10 = 0;
    v210 = v8;
    while (1)
    {
      v11 = *(v8 + 16);
      if (v10 >= v11)
      {
        goto LABEL_292;
      }

      v12 = &v209[v10];
      v214 = v10 + 1;
      v225 = 0u;
      if (v11 >= 2)
      {
        v13 = v205;
        v14 = v209;
        if (v10)
        {
          v15 = v11 - 1;
          v16 = &v209[v11 - 1];
          v17 = (v210 + 16 * v11);
          v18 = v10 >= v15;
          if (v10 >= v15)
          {
            v13 = v16;
          }

          else
          {
            v13 = &v209[v214];
          }

          if (v18)
          {
            v14 = v17;
          }

          else
          {
            v14 = v12 - 1;
          }
        }

        v19 = vsubq_f64(*v13, *v14);
        v225 = vdivq_f64(v19, vdupq_lane_s64(COERCE__INT64(sqrt(vaddvq_f64(vmulq_f64(v19, v19)))), 0));
      }

      v234 = *v12;
      if (v218)
      {
        v20 = 0;
        v21 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v22 = *(v217 + 8 * v20);
          v23 = *(v22 + 16);
          if (v23)
          {
            v24 = v22 + 32;

            v25 = 0;
            v26 = v22 + 48;
            v27 = MEMORY[0x1E69E7CC0];
            do
            {
              v29 = vsubq_f64(*(v24 + 16 * v25), v234);
              v30 = vaddvq_f64(vmulq_f64(v29, v29));
              if (v30 < v7)
              {
                v231 = *(v24 + 16 * v25);
                v31 = *(v22 + 16);
                v32 = 0uLL;
                if (v31 >= 2)
                {
                  v33 = (v22 + 48);
                  v34 = (v22 + 32);
                  if (v25)
                  {
                    v35 = v31 - 1;
                    v34 = (v26 - 32);
                    v36 = v24 + 16 * (v31 - 1);
                    v37 = (v22 + 16 * v31);
                    v38 = v25 < v35;
                    v33 = (v25 >= v35 ? v36 : v26);
                    if (!v38)
                    {
                      v34 = v37;
                    }
                  }

                  v39 = vsubq_f64(*v33, *v34);
                  v32 = vdivq_f64(v39, vdupq_lane_s64(COERCE__INT64(sqrt(vaddvq_f64(vmulq_f64(v39, v39)))), 0));
                }

                v228 = v32;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
                }

                v41 = *(v27 + 2);
                v40 = *(v27 + 3);
                if (v41 >= v40 >> 1)
                {
                  v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v27);
                }

                *(v27 + 2) = v41 + 1;
                v28 = &v27[24 * v41];
                *(v28 + 4) = v30 / a3 + fabs(vaddvq_f64(vmulq_f64(v225, v228))) * -200.0;
                *(v28 + 40) = v231;
              }

              ++v25;
              v26 += 16;
            }

            while (v23 != v25);
          }

          else
          {
            v27 = MEMORY[0x1E69E7CC0];
          }

          v42 = *(v27 + 2);
          v43 = *(v21 + 2);
          v44 = v43 + v42;
          if (__OFADD__(v43, v42))
          {
            goto LABEL_276;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) != 0 && v44 <= *(v21 + 3) >> 1)
          {
            if (!*(v27 + 2))
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (v43 <= v44)
            {
              v45 = v43 + v42;
            }

            else
            {
              v45 = v43;
            }

            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v45, 1, v21);
            v21 = result;
            if (!*(v27 + 2))
            {
LABEL_19:

              if (v42)
              {
                goto LABEL_277;
              }

              goto LABEL_20;
            }
          }

          v46 = *(v21 + 2);
          if ((*(v21 + 3) >> 1) - v46 < v42)
          {
            goto LABEL_278;
          }

          memcpy(&v21[24 * v46 + 32], v27 + 32, 24 * v42);

          if (v42)
          {
            v47 = *(v21 + 2);
            v99 = __OFADD__(v47, v42);
            v48 = v47 + v42;
            if (v99)
            {
              goto LABEL_289;
            }

            *(v21 + 2) = v48;
          }

LABEL_20:
          if (++v20 == v218)
          {
            goto LABEL_54;
          }
        }
      }

      v21 = MEMORY[0x1E69E7CC0];
LABEL_54:
      if (*(v21 + 2))
      {
        break;
      }

LABEL_6:
      v10 = v214;
      v8 = v210;
      if (v214 == v208)
      {
        swift_bridgeObjectRelease_n();
        v3 = v202;
        a2 = v203;
        v5 = v204;
        v6 = v201;
        goto LABEL_269;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
    }

    v49 = *(v21 + 2);
    if (v49 < 0x40)
    {
      if (v49 < 2)
      {
        goto LABEL_263;
      }

      goto LABEL_195;
    }

    v50 = 58 - __clz(v49);
    v51 = -1 << v50;
    v52 = v49 >> v50;
    if ((v49 & ~v51) != 0)
    {
      ++v52;
    }

    if (v52 >= v49)
    {
LABEL_195:
      v160 = -1;
      v161 = v21 + 32;
      for (i = 1; i != v49; ++i)
      {
        v163 = *&v21[24 * i + 32];
        v164 = v160;
        v165 = v161;
        do
        {
          if (v163 >= *v165)
          {
            break;
          }

          v166 = *(v165 + 2);
          *(v165 + 24) = *v165;
          *(v165 + 5) = *(v165 + 2);
          *v165 = v163;
          *(v165 + 8) = v166;
          v165 -= 24;
          v18 = __CFADD__(v164++, 1);
        }

        while (!v18);
        v161 += 24;
        --v160;
      }

LABEL_263:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v211 + 16) + 1, 1, v211);
        v211 = result;
      }

      v199 = *(v211 + 16);
      v198 = *(v211 + 24);
      if (v199 >= v198 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v198 > 1), v199 + 1, 1, v211);
        v211 = result;
      }

      *(v211 + 16) = v199 + 1;
      v200 = v211 + 32 * v199;
      *(v200 + 32) = v234;
      *(v200 + 48) = v21;
      *(v200 + 56) = 0;
      goto LABEL_6;
    }

    v206 = v52;
    v220 = v21 + 32;
    v53 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v54 = 0;
    *(v53 + 16) = v49 >> 1;
    v55 = v53;
    result = v53 + 32;
    v207 = v21 + 80;
    v56 = MEMORY[0x1E69E7CC0];
    v224 = v21;
    v212 = v49;
    __len = v55;
    __dst = result;
LABEL_66:
    v58 = v54;
    v59 = v54 + 1;
    if (v54 + 1 >= v49)
    {
      goto LABEL_79;
    }

    v60 = *&v220[24 * v59];
    v61 = 24 * v54;
    v62 = *&v220[24 * v54];
    v63 = v54 + 2;
    v64 = &v207[24 * v58];
    v65 = v60;
    do
    {
      if (v49 == v63)
      {
        v59 = v49;
        if (v60 >= v62)
        {
          goto LABEL_79;
        }

        goto LABEL_73;
      }

      v66 = *v64;
      v64 += 3;
      v67 = v66 >= v65;
      ++v63;
      v65 = v66;
    }

    while ((((v60 < v62) ^ v67) & 1) != 0);
    v59 = v63 - 1;
    if (v60 >= v62)
    {
      goto LABEL_79;
    }

LABEL_73:
    if (v59 < v58)
    {
      goto LABEL_297;
    }

    if (v58 < v59)
    {
      v68 = 24 * v59;
      v69 = v59;
      v70 = v58;
      do
      {
        if (v70 != --v69)
        {
          v71 = &v21[v61];
          v72 = &v21[v68];
          v73 = *&v21[v61 + 48];
          v74 = *&v21[v61 + 32];
          v75 = *&v21[v68 + 24];
          *(v71 + 2) = *&v21[v68 + 8];
          *(v71 + 6) = v75;
          *(v72 + 8) = v74;
          *(v72 + 3) = v73;
        }

        ++v70;
        v68 -= 24;
        v61 += 24;
      }

      while (v70 < v69);
    }

LABEL_79:
    if (v59 < v49)
    {
      if (__OFSUB__(v59, v58))
      {
        goto LABEL_293;
      }

      if (v59 - v58 < v206)
      {
        v76 = v58 + v206;
        if (__OFADD__(v58, v206))
        {
          goto LABEL_298;
        }

        if (v76 >= v49)
        {
          v76 = v49;
        }

        if (v76 < v58)
        {
          goto LABEL_299;
        }

        if (v59 != v76)
        {
          v77 = &v220[24 * v59];
          v78 = v58 - v59;
          do
          {
            v79 = *&v220[24 * v59];
            v80 = v78;
            v81 = v77;
            do
            {
              if (v79 >= *(v81 - 3))
              {
                break;
              }

              v82 = *(v81 + 8);
              v83 = *(v81 - 24);
              *(v81 + 2) = *(v81 - 1);
              *(v81 - 1) = v82;
              *v81 = v83;
              *(v81 - 3) = v79;
              v81 -= 24;
              v18 = __CFADD__(v80++, 1);
            }

            while (!v18);
            ++v59;
            v77 += 24;
            --v78;
          }

          while (v59 != v76);
          v59 = v76;
        }
      }
    }

    if (v59 < v58)
    {
      goto LABEL_291;
    }

    v215 = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v56 + 2) + 1, 1, v56);
    }

    v85 = *(v56 + 2);
    v84 = *(v56 + 3);
    v86 = v85 + 1;
    result = __dst;
    if (v85 >= v84 >> 1)
    {
      v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v56);
      result = __dst;
    }

    *(v56 + 2) = v86;
    v87 = &v56[16 * v85];
    *(v87 + 4) = v58;
    *(v87 + 5) = v215;
    if (!v85)
    {
      v57 = __len;
      goto LABEL_65;
    }

    v57 = __len;
LABEL_102:
    v88 = v86 - 1;
    if (v86 >= 4)
    {
      v93 = &v56[16 * v86 + 32];
      v94 = *(v93 - 64);
      v95 = *(v93 - 56);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_279;
      }

      v98 = *(v93 - 48);
      v97 = *(v93 - 40);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_280;
      }

      v100 = &v56[16 * v86];
      v102 = *v100;
      v101 = *(v100 + 1);
      v99 = __OFSUB__(v101, v102);
      v103 = v101 - v102;
      if (v99)
      {
        goto LABEL_282;
      }

      v99 = __OFADD__(v91, v103);
      v104 = v91 + v103;
      if (v99)
      {
        goto LABEL_285;
      }

      if (v104 >= v96)
      {
        v122 = &v56[16 * v88 + 32];
        v124 = *v122;
        v123 = *(v122 + 1);
        v99 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v99)
        {
          goto LABEL_290;
        }

        if (v91 < v125)
        {
          v88 = v86 - 2;
        }

        goto LABEL_136;
      }
    }

    else
    {
      if (v86 != 3)
      {
        v115 = &v56[16 * v86];
        v117 = *v115;
        v116 = *(v115 + 1);
        v99 = __OFSUB__(v116, v117);
        v109 = v116 - v117;
        v110 = v99;
LABEL_129:
        if (v110)
        {
          goto LABEL_283;
        }

        v118 = &v56[16 * v88];
        v120 = *(v118 + 4);
        v119 = *(v118 + 5);
        v99 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v99)
        {
          goto LABEL_286;
        }

        if (v121 < v109)
        {
          goto LABEL_65;
        }

LABEL_136:
        if (v88 - 1 >= v86)
        {
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
          return result;
        }

        v232 = v88;
        v126 = &v56[16 * v88 + 32];
        v229 = *&v56[16 * v88 + 16];
        v127 = &v220[24 * v229];
        v128 = 24 * *v126;
        v129 = &v220[v128];
        v226 = *(v126 + 1);
        v130 = &v220[24 * v226];
        v131 = v128 - 24 * v229;
        v132 = 24 * v226 - v128;
        v222 = v88 - 1;
        if (v131 / 24 >= v132 / 24)
        {
          v133 = v132 / 24;
          if (result < v129 || result >= v130)
          {
            v135 = 24 * v133;
            v21 = v224;
          }

          else
          {
            v135 = 24 * v133;
            v21 = v224;
            if (result == v129)
            {
LABEL_162:
              v145 = v135 + 32;
              v57 = __len;
              v136 = __len + v145;
              if (v132 < 24 || v128 <= 24 * v229)
              {
                v140 = result;
                v141 = v232;
                v137 = v229;
                v138 = v226;
                goto LABEL_185;
              }

              v146 = &v220[v128];
              v141 = v232;
              v137 = v229;
              v138 = v226;
              while (1)
              {
                v147 = *(v146 - 24);
                v146 -= 24;
                if (*(v145 + __len - 24) < v147)
                {
                  v148 = v130;
                  v130 -= 24;
                  if (v148 != v129)
                  {
                    goto LABEL_167;
                  }

                  goto LABEL_168;
                }

                v150 = 0;
                v151 = __len + v145;
                do
                {
                  v152 = v151 + v150;
                  v153 = (v130 + v150 - 24);
                  if (v130 != v151 || v153 >= v152)
                  {
                    v154 = *(v152 - 24);
                    *(v130 + v150 - 8) = *(v152 - 8);
                    *v153 = v154;
                  }

                  if (v145 + v150 <= 56)
                  {
                    v136 = __len + v145 + v150 - 24;
LABEL_181:
                    v140 = result;
                    goto LABEL_185;
                  }

                  v155 = *(v151 + v150 - 48);
                  v150 -= 24;
                }

                while (v155 >= *v146);
                v145 += v150;
                v136 = v145 + __len;
                v156 = (v130 + v150);
                v130 = (v156 - 3);
                if (v156 == v129)
                {
                  goto LABEL_168;
                }

LABEL_167:
                v149 = *v146;
                *(v130 + 16) = *(v146 + 16);
                *v130 = v149;
LABEL_168:
                if (v145 >= 33)
                {
                  v129 = v146;
                  if (v127 < v146)
                  {
                    continue;
                  }
                }

                v129 = v146;
                goto LABEL_181;
              }
            }
          }

          memmove(result, v129, v135);
          result = __dst;
          goto LABEL_162;
        }

        if (result < v127 || result >= v129)
        {
          v134 = 24 * (v131 / 24);
        }

        else
        {
          v134 = 24 * (v131 / 24);
          if (result == v127)
          {
            goto LABEL_148;
          }
        }

        memmove(result, v127, v134);
        result = __dst;
LABEL_148:
        v136 = result + v134;
        v38 = v131 < 24;
        v137 = v229;
        v138 = v226;
        if (v38)
        {
          v129 = &v220[24 * v229];
          v140 = result;
          v21 = v224;
          v57 = __len;
          goto LABEL_184;
        }

        v57 = __len;
        if (24 * v226 <= v128)
        {
          v129 = &v220[24 * v229];
          v140 = result;
          v21 = v224;
LABEL_184:
          v141 = v232;
          goto LABEL_185;
        }

        v139 = result;
        v140 = result;
        v21 = v224;
        v141 = v232;
        while (*v129 < *v139)
        {
          v142 = v129;
          v143 = v127 == v129;
          v129 += 3;
          if (!v143)
          {
            goto LABEL_156;
          }

LABEL_157:
          v127 += 3;
          if (v139 >= v136 || v129 >= v130)
          {
            v129 = v127;
LABEL_185:
            v157 = ((v136 - v140) * 0x2AAAAAAAAAAAAAABLL) >> 64;
            v158 = (v157 >> 2) + (v157 >> 63);
            if (v129 != v140 || v129 >= &v140[3 * v158])
            {
              result = memmove(v129, v140, 24 * v158);
            }

            if (v138 < v137)
            {
              goto LABEL_274;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v56);
              v56 = result;
            }

            if (v141 > *(v56 + 2))
            {
              goto LABEL_275;
            }

            v159 = &v56[16 * v222];
            *(v159 + 4) = v137;
            *(v159 + 5) = v138;
            specialized Array.remove(at:)(v141);
            v86 = *(v56 + 2);
            result = __dst;
            if (v86 <= 1)
            {
LABEL_65:
              v49 = v212;
              v54 = v215;
              if (v215 < v212)
              {
                goto LABEL_66;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v56 = specialized _ArrayBuffer._consumeAndCreateNew()(v56);
              }

              v167 = (v56 + 16);
              v168 = *(v56 + 2);
              v169 = __dst;
              if (v168 < 2)
              {
LABEL_262:

                *(v57 + 16) = 0;

                goto LABEL_263;
              }

              v216 = v56;
              v213 = v56 + 16;
              while (2)
              {
                v170 = &v167[2 * v168];
                v233 = *&v56[16 * v168];
                v171 = &v220[24 * v233];
                v172 = 24 * *v170;
                v173 = &v220[v172];
                v230 = v170[1];
                v174 = &v220[24 * v230];
                v175 = v172 - 24 * v233;
                v176 = (24 * v230 - v172) / 24;
                v223 = v170;
                v227 = &v56[16 * v168];
                if (v175 / 24 < v176)
                {
                  if (v169 < v171 || v169 >= v173)
                  {
                    v178 = *&v56[16 * v168];
                    v179 = v170[1];
                    goto LABEL_220;
                  }

                  v178 = *&v56[16 * v168];
                  v179 = v170[1];
                  if (v169 != v171)
                  {
LABEL_220:
                    memmove(v169, &v220[24 * v233], 24 * (v175 / 24));
                    v169 = __dst;
                  }

                  v182 = &v169[3 * (v175 / 24)];
                  if (v175 < 24)
                  {
                    v183 = v169;
                    result = &v220[24 * v233];
                    v21 = v224;
                    v57 = __len;
                    v56 = v216;
                    v167 = v213;
                    goto LABEL_255;
                  }

                  v57 = __len;
                  v167 = v213;
                  v183 = v169;
                  if ((24 * v230) <= v172)
                  {
                    result = &v220[24 * v233];
                    v21 = v224;
                    v56 = v216;
                    goto LABEL_255;
                  }

                  v21 = v224;
                  v56 = v216;
                  while (2)
                  {
                    if (*v173 >= *v183)
                    {
                      v184 = v183;
                      v143 = v171 == v183;
                      v183 += 3;
                      if (!v143)
                      {
                        goto LABEL_229;
                      }
                    }

                    else
                    {
                      v184 = v173;
                      v143 = v171 == v173;
                      v173 += 3;
                      if (!v143)
                      {
LABEL_229:
                        v185 = *v184;
                        v171[2] = v184[2];
                        *v171 = v185;
                      }
                    }

                    v171 += 3;
                    if (v183 >= v182 || v173 >= v174)
                    {
                      result = v171;
                      goto LABEL_255;
                    }

                    continue;
                  }
                }

                v180 = 24 * v176;
                if (v169 >= v173 && v169 < v174)
                {
                  v56 = v216;
                  v167 = v213;
                  if (v169 != v173)
                  {
LABEL_234:
                    memmove(v169, v173, 24 * v176);
                    v169 = __dst;
                  }

                  v186 = v180 + 32;
                  v57 = __len;
                  v182 = (__len + v186);
                  if ((24 * v230 - v172) < 24)
                  {
                    v183 = v169;
                    result = &v220[v172];
                    v21 = v224;
                    v178 = v233;
                    v179 = v230;
                    goto LABEL_255;
                  }

                  v179 = v230;
                  v183 = v169;
                  if (v172 <= 24 * v233)
                  {
                    result = &v220[v172];
                    v21 = v224;
                    v178 = v233;
                    goto LABEL_255;
                  }

                  v21 = v224;
                  v178 = v233;
                  do
                  {
                    v187 = 0;
                    result = (v173 - 3);
                    v188 = __len + v186;
                    v189 = v186;
                    while (1)
                    {
                      v191 = (v174 + v187 - 24);
                      v192 = (v188 + v187 - 24);
                      if (*v192 < *result)
                      {
                        break;
                      }

                      if (v191 != v192 || v191 >= v182)
                      {
                        v190 = *v192;
                        *(v174 + v187 - 8) = *(v188 + v187 - 8);
                        *v191 = v190;
                      }

                      v189 -= 24;
                      v182 = (__len + v189);
                      v187 -= 24;
                      if (v186 + v187 + 24 <= 56)
                      {
                        v182 = (__len + v186 + v187);
                        result = v173;
                        goto LABEL_255;
                      }
                    }

                    if ((v174 + v187) != v173)
                    {
                      v193 = *result;
                      *(v174 + v187 - 8) = *(v173 - 1);
                      *v191 = v193;
                    }

                    v182 = (__len + v186 + v187);
                    if (v186 + v187 < 33)
                    {
                      break;
                    }

                    v186 += v187;
                    v174 = v174 + v187 - 24;
                    v173 -= 3;
                  }

                  while (v171 < result);
LABEL_255:
                  v194 = ((v182 - v183) * 0x2AAAAAAAAAAAAAABLL) >> 64;
                  v195 = (v194 >> 2) + (v194 >> 63);
                  if (result != v183 || result >= &v183[3 * v195])
                  {
                    result = memmove(result, v183, 24 * v195);
                  }

                  if (v179 < v178)
                  {
                    goto LABEL_294;
                  }

                  v196 = *v167;
                  if ((v168 - 2) >= *v167)
                  {
                    goto LABEL_295;
                  }

                  *v227 = v178;
                  *(v227 + 1) = v179;
                  v197 = v196 - v168;
                  if (v196 < v168)
                  {
                    goto LABEL_296;
                  }

                  v168 = v196 - 1;
                  memmove(v223, v223 + 16, 16 * v197);
                  *v167 = v168;
                  v169 = __dst;
                  if (v168 <= 1)
                  {
                    goto LABEL_262;
                  }

                  continue;
                }

                break;
              }

              v56 = v216;
              v167 = v213;
              goto LABEL_234;
            }

            goto LABEL_102;
          }
        }

        v140 = v139 + 3;
        v142 = v139;
        v143 = v127 == v139;
        v139 += 3;
        if (v143)
        {
          goto LABEL_157;
        }

LABEL_156:
        v144 = *v142;
        v127[2] = v142[2];
        *v127 = v144;
        goto LABEL_157;
      }

      v89 = *(v56 + 4);
      v90 = *(v56 + 5);
      v99 = __OFSUB__(v90, v89);
      v91 = v90 - v89;
      v92 = v99;
    }

    if (v92)
    {
      goto LABEL_281;
    }

    v105 = &v56[16 * v86];
    v107 = *v105;
    v106 = *(v105 + 1);
    v108 = __OFSUB__(v106, v107);
    v109 = v106 - v107;
    v110 = v108;
    if (v108)
    {
      goto LABEL_284;
    }

    v111 = &v56[16 * v88 + 32];
    v113 = *v111;
    v112 = *(v111 + 1);
    v99 = __OFSUB__(v112, v113);
    v114 = v112 - v113;
    if (v99)
    {
      goto LABEL_287;
    }

    if (__OFADD__(v109, v114))
    {
      goto LABEL_288;
    }

    if (v109 + v114 >= v91)
    {
      if (v91 < v114)
      {
        v88 = v86 - 2;
      }

      goto LABEL_136;
    }

    goto LABEL_129;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a3 - v8;
  if (__OFSUB__(a3, v8))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = *v7;
  v11 = (v10 + 32 + 24 * result);
  if (!v9)
  {
    goto LABEL_13;
  }

  v12 = *(v10 + 16);
  v13 = __OFSUB__(v12, a2);
  v14 = v12 - a2;
  if (v13)
  {
    goto LABEL_22;
  }

  result = v11 + 24 * a3;
  v15 = (v10 + 32 + 24 * a2);
  if (result != v15 || result >= v15 + 24 * v14)
  {
    v17 = a3;
    v18 = a6;
    v19 = a5;
    v20 = a7;
    result = memmove(result, v15, 24 * v14);
    a7 = v20;
    a5 = v19;
    a6 = v18;
    a3 = v17;
  }

  v21 = *(v10 + 16);
  v13 = __OFADD__(v21, v9);
  v22 = v21 + v9;
  if (v13)
  {
    goto LABEL_23;
  }

  *(v10 + 16) = v22;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (__OFSUB__(a7 >> 1, a6))
  {
    goto LABEL_24;
  }

  if ((a7 >> 1) - a6 != a3)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v23 = 24 * a3;

  return memcpy(v11, (a5 + 24 * a6), v23);
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = *v6;
  v9 = *(*v6 + 2);
  if (v9 < a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = __OFSUB__(v13, v11);
  v15 = v13 - v11;
  if (v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = v9 + v15;
  if (__OFADD__(v9, v15))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v16 > *(v8 + 3) >> 1)
  {
    if (v9 <= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v9;
    }

    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v20, 1, v8);
    *v6 = v8;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v10, a2, v13, a3, a4, a5, a6);
  *v6 = v8;
  return result;
}

uint64_t specialized Array.subscript.setter(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(*v6 + 16);
  if (v7 < a5 || v7 < a6)
  {
    goto LABEL_14;
  }

  if (a6 < 0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (*v6 + 24 * a5 + 32 != a2 + 24 * a3)
  {
    return specialized Array.replaceSubrange<A>(_:with:)(a5, a6, result, a2, a3, a4);
  }

  if ((a4 >> 1) < a3)
  {
    goto LABEL_16;
  }

  if (a5 != a3 || a4 >> 1 != a6)
  {
    return specialized Array.replaceSubrange<A>(_:with:)(a5, a6, result, a2, a3, a4);
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 24 * result + 24 * a3;
  v10 = (v6 + 32 + 24 * a2);
  if (result != v10 || result >= v10 + 24 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 24 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t specialized static PKRefineMorph.computeMorph(from:to:fromViewFrame:toViewFrame:transformViewToModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, CGAffineTransform *a3@<X2>, _OWORD *a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>, double a11@<D6>, double a12@<D7>)
{
  v12 = a2;
  v19 = *(a1 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (*&v19 == 0.0)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v226 = *&v23;
    v19 = *(v12 + 16);
    v20 = MEMORY[0x1E69E7CC0];
    if (*&v19 == 0.0)
    {
      v201 = a7;
      v202 = a8;
      *v203 = a9;
      *&v203[8] = a10;
      *&v203[16] = a11;
      *&v203[24] = a12;
      a = MEMORY[0x1E69E7CC0];
    }

    else
    {
      *&v233.a = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
      v42 = 0;
      a = v233.a;
      v229 = v12 + 32;
      v222 = v19;
      do
      {
        v44 = *(v229 + 8 * v42);
        v45 = [v44 path];
        if (!v45)
        {
          v45 = [objc_allocWithZone(PKStrokePath) init];
        }

        v26 = [v45 count];
        if (([v45 count] & 0x8000000000000000) != 0)
        {
          goto LABEL_196;
        }

        v46 = [v45 count];
        if (v26 < 0 || v46 < v26)
        {
          goto LABEL_197;
        }

        v232 = a;
        if (v26)
        {
          toTransform.a = v20;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
          v47 = 0;
          v48 = toTransform.a;
          do
          {
            v49 = [v45 objectAtIndexedSubscript_];
            if (!v49)
            {
              goto LABEL_214;
            }

            v50 = v49;
            [v49 location];
            v52 = v51;
            v54 = v53;
            [v44 transform];
            v242.x = v52;
            v242.y = v54;
            v55 = CGPointApplyAffineTransform(v242, &v235);

            toTransform.a = v48;
            v57 = *(*&v48 + 16);
            v56 = *(*&v48 + 24);
            if (v57 >= v56 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1);
              v48 = toTransform.a;
            }

            *(*&v48 + 16) = v57 + 1;
            *(*&v48 + 16 * v57 + 32) = v55;
            if (v47 >= [v45 count])
            {
              goto LABEL_177;
            }

            ++v47;
          }

          while (v26 != v47);

          v20 = MEMORY[0x1E69E7CC0];
          v19 = v222;
        }

        else
        {

          v48 = v20;
        }

        v58 = specialized static PKRefineMorph.NStroke.normalized(stroke:step:)(*&v48, 5.0);

        a = v232;
        v233.a = v232;
        v60 = *(*&v232 + 16);
        v59 = *(*&v232 + 24);
        if (v60 >= v59 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1);
          a = v233.a;
        }

        ++v42;
        *(*&a + 16) = v60 + 1;
        *(*&a + 8 * v60 + 32) = v58;
      }

      while (v42 != v19);
      v201 = a7;
      v202 = a8;
      *v203 = a9;
      *&v203[8] = a10;
      *&v203[16] = a11;
      *&v203[24] = a12;
    }

    v238 = *&a;

    v62 = PKRefineMorph.NDrawing.bounds.getter(v61);
    v64 = v63;
    v66 = v65;
    v68 = v67;

    v69 = PKRefineMorph.NDrawing.bounds.getter(v226);
    v205 = v70 / v66;
    v206 = v69 - v62 * (v70 / v66);
    by.a = v70 / v66;
    by.b = 0.0;
    by.c = 0.0;
    v207 = v71 / v68;
    by.d = v71 / v68;
    by.tx = v206;
    v204 = v72 - v64 * (v71 / v68);
    by.ty = v204;
    PKRefineMorph.NDrawing.transform(by:)(&by);
    v73 = v238;
    v74 = PKRefineMorph.NDrawing.bounds.getter(v238);
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v248.origin.x = PKRefineMorph.NDrawing.bounds.getter(v226);
    v248.origin.y = v81;
    v248.size.width = v82;
    v248.size.height = v83;
    v243.origin.x = v74;
    v243.origin.y = v76;
    v243.size.width = v78;
    v243.size.height = v80;
    v244 = CGRectUnion(v243, v248);
    x = v244.origin.x;
    y = v244.origin.y;
    width = v244.size.width;
    height = v244.size.height;
    v88 = CGRectGetWidth(v244);
    v245.origin.x = x;
    v245.origin.y = y;
    v245.size.width = width;
    v245.size.height = height;
    v89 = CGRectGetHeight(v245);
    if (v88 > v89)
    {
      v89 = v88;
    }

    a7 = v89 * 0.25;
    v90 = specialized static PKRefineMorph.calcMatches(fromDrawing:toDrawing:maxDist:)(v226, v73, v89 * 0.25);
    v26 = v90;
    v91 = MEMORY[0x1E69E7CC0];
    v223 = *(v90 + 16);
    if (v223)
    {
      v92 = 0;
      v216 = (v90 + 40);
      v219 = v90 + 32;
      v232 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v92 >= *(v26 + 16))
        {
          goto LABEL_204;
        }

        v93 = (v219 + 32 * v92);
        v95 = *v93;
        v94 = v93[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v232 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v232 + 16) + 1, 1, *&v232));
        }

        v97 = *(*&v232 + 16);
        v96 = *(*&v232 + 24);
        if (v97 >= v96 >> 1)
        {
          v232 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1, *&v232));
        }

        *(*&v232 + 16) = v97 + 1;
        *(*&v232 + 8 * v97 + 32) = v91;
        v98 = *(v26 + 16);
        if (v98)
        {
          break;
        }

LABEL_47:
        ++v92;

        v91 = MEMORY[0x1E69E7CC0];
        if (v92 == v223)
        {
          goto LABEL_72;
        }
      }

      *&v19 = 0.0;
      *&v20 = *&v232 + 24;
      v99 = v216;
      while (v19 < *(v26 + 16))
      {
        if (v92 != v19)
        {
          v101 = (sqrt((v95 - *(v99 - 1)) * (v95 - *(v99 - 1)) + (v94 - *v99) * (v94 - *v99)) + -60.0) / -60.0;
          v102 = v101 < 0.0 ? 0.0 : v101;
          v103 = v101 >= 1.0 ? 1.0 : v102;
          v104 = v103 * (v103 * 3.0) - v103 * (v103 * (v103 + v103));
          if (v104 > 0.1)
          {
            v105 = *(*&v232 + 16);
            if (!v105)
            {
              __break(1u);
              goto LABEL_184;
            }

            v106 = *(*&v20 + 8 * v105);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(*&v20 + 8 * v105) = v106;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v106 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v106 + 2) + 1, 1, v106);
              *(*&v20 + 8 * v105) = v106;
            }

            v109 = *(v106 + 2);
            v108 = *(v106 + 3);
            if (v109 >= v108 >> 1)
            {
              v106 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v108 > 1), v109 + 1, 1, v106);
              *(*&v20 + 8 * v105) = v106;
            }

            *(v106 + 2) = v109 + 1;
            v100 = &v106[16 * v109];
            *(v100 + 4) = v104;
            *(v100 + 5) = *&v19;
          }
        }

        ++v19;
        v99 += 4;
        if (v98 == v19)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_181;
    }

    v232 = MEMORY[0x1E69E7CC0];
LABEL_72:
    v237 = v232;
    specialized morphCost #2 (of:) in static PKRefineMorph.computeMorph(from:to:fromViewFrame:toViewFrame:transformViewToModel:)(v26, &v237);
    v110 = *(v26 + 16);
    *&v19 = MEMORY[0x1E69E7CC0];
    if (v110)
    {
      *&v235.a = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v110, 0);
      v111 = 0;
      v20 = v235.a;
      v112 = (v26 + 56);
      do
      {
        specialized morphCost #1 (of:match:in:) in static PKRefineMorph.computeMorph(from:to:fromViewFrame:toViewFrame:transformViewToModel:)(v111, *(v112 - 1), *v112, v26, &v237, *(v112 - 3), *(v112 - 2));
        v235.a = v20;
        v115 = *(*&v20 + 16);
        v114 = *(*&v20 + 24);
        if (v115 >= v114 >> 1)
        {
          v116 = v113;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v114 > 1), v115 + 1, 1);
          v113 = v116;
          v20 = v235.a;
        }

        ++v111;
        v112 += 4;
        *(*&v20 + 16) = v115 + 1;
        *(*&v20 + 8 * v115 + 32) = v113;
      }

      while (v110 != v111);
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_213;
    }

    while (1)
    {
      v117 = 0;
      v224 = *&v20 + 32;
      v220 = v20;
LABEL_81:
      HIDWORD(v118) = -1030792151 * v117;
      LODWORD(v118) = HIDWORD(v118);
      if ((v118 >> 1) <= 0x51EB851)
      {
        v144 = *(v26 + 16);
        if (v144)
        {
          v145 = 0;
          v146 = 32;
          do
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
            }

            if (v145 >= *(v26 + 16))
            {
              goto LABEL_205;
            }

            ++v145;
            PKRefineMorph.Match.filterMatches(distanceMatchCanJumpSqr:)(a7 * ((5000 - v117) / 5000.0) * (a7 * ((5000 - v117) / 5000.0)));
            v146 += 32;
          }

          while (v144 != v145);
        }
      }

      *&v214 = COERCE_DOUBLE(_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_12CoreGraphics7CGFloatVTt0g5Tf4g_n(v19));
      v119 = *(v26 + 16);

      v120 = 0;
      v121 = *&v19;
LABEL_83:
      v122 = 32 * v120 + 48;
      while (v119 != v120)
      {
        if (v120 >= v119)
        {
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
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
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
          goto LABEL_212;
        }

        v19 = v120 + 1;
        if (__OFADD__(v120, 1))
        {
          goto LABEL_186;
        }

        if (v120 >= *(v26 + 16))
        {
          goto LABEL_187;
        }

        v123 = *(*(v26 + v122) + 16);
        ++v120;
        v122 += 32;
        if (v123 >= 2)
        {
          v124 = swift_isUniquelyReferenced_nonNull_native();
          v235.a = v121;
          if ((v124 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v121 + 16) + 1, 1);
            v121 = v235.a;
          }

          v126 = *(*&v121 + 16);
          v125 = *(*&v121 + 24);
          if (v126 >= v125 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v125 > 1), v126 + 1, 1);
            v121 = v235.a;
          }

          *(*&v121 + 16) = v126 + 1;
          *(*&v121 + 8 * v126 + 32) = v120 - 1;
          v120 = v19;
          goto LABEL_83;
        }
      }

      v127 = *(*&v121 + 16);
      if (!v127)
      {
        goto LABEL_182;
      }

      v212 = v117;
      v213 = v117 + 1;
      v19 = -v127;
      do
      {
        v235.a = 0.0;
        MEMORY[0x1CCA6FC40](&v235, 8);
        v128 = (*&v235.a * v127) >> 64;
        if (v127 > *&v235.a * v127 && v19 % v127 > *&v235.a * v127)
        {
          do
          {
            v235.a = 0.0;
            MEMORY[0x1CCA6FC40](&v235, 8);
          }

          while (v19 % v127 > *&v235.a * v127);
          v128 = (*&v235.a * v127) >> 64;
        }

        if (v128 >= *(*&v121 + 16))
        {
          goto LABEL_188;
        }

        v129 = *(*&v121 + 32 + 8 * v128);
        if (v129 < 0)
        {
          goto LABEL_189;
        }

        if (v129 >= *(v26 + 16))
        {
          goto LABEL_190;
        }

        *&v20 = v26 + 32 + 32 * v129;
        v130 = *(*(*&v20 + 16) + 16);
        if (!v130)
        {
          goto LABEL_191;
        }

        v235.a = 0.0;
        MEMORY[0x1CCA6FC40](&v235, 8);
        v131 = (*&v235.a * v130) >> 64;
        if (v130 > *&v235.a * v130)
        {
          v132 = -v130 % v130;
          if (v132 > *&v235.a * v130)
          {
            do
            {
              v235.a = 0.0;
              MEMORY[0x1CCA6FC40](&v235, 8);
            }

            while (v132 > *&v235.a * v130);
            v131 = (*&v235.a * v130) >> 64;
          }
        }

        if (v129 >= *(v26 + 16))
        {
          goto LABEL_192;
        }
      }

      while (v131 == *(*&v20 + 24));

      v133 = swift_isUniquelyReferenced_nonNull_native();
      v134 = v26;
      if ((v133 & 1) == 0)
      {
        v134 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
      }

      v135 = (*&v232 + 32);
      if (v129 >= *(v134 + 2))
      {
        goto LABEL_211;
      }

      v230 = v134;
      v136 = v134 + 32;
      *&v134[32 * v129 + 56] = v131;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C8018A40;
      *(inited + 32) = v129;
      if (v129 < *(*&v232 + 16))
      {
        break;
      }

LABEL_212:
      __break(1u);
LABEL_213:
      v20 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew()(*&v20));
    }

    v138 = *(*&v232 + 32 + 8 * v129);
    v19 = *(v138 + 16);
    if (*&v19 == 0.0)
    {
      v139 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v217 = inited;
      *&v235.a = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
      v139 = v235.a;
      v140 = *(*&v235.a + 16);
      v141 = 40;
      do
      {
        v142 = *(v138 + v141);
        v235.a = v139;
        v143 = *(*&v139 + 24);
        if (v140 >= v143 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v143 > 1), v140 + 1, 1);
          v139 = v235.a;
        }

        *(*&v139 + 16) = v140 + 1;
        *(*&v139 + 8 * v140 + 32) = v142;
        v141 += 16;
        ++v140;
        --v19;
      }

      while (*&v19 != 0.0);

      v135 = (*&v232 + 32);
      inited = v217;
    }

    *&v235.a = inited;
    specialized Array.append<A>(contentsOf:)(*&v139);
    v147 = v235.a;
    v20 = v220;
    v218 = *(*&v235.a + 16);
    if (!v218)
    {

      v149 = 0.0;
      *&v19 = MEMORY[0x1E69E7CC0];
      v180 = v213;
      v181 = v230;
      goto LABEL_159;
    }

    v148 = 0;
    v215 = *&v235.a + 32;
    v149 = 0.0;
    v150 = *&v214;
    while (1)
    {
      if (v148 >= *(*&v147 + 16))
      {
        goto LABEL_198;
      }

      v151 = *(v215 + 8 * v148);
      if ((v151 & 0x8000000000000000) != 0)
      {
        goto LABEL_199;
      }

      if (v151 >= *(*&v20 + 16))
      {
        goto LABEL_200;
      }

      v152 = *(v230 + 2);
      if (v151 >= v152)
      {
        goto LABEL_201;
      }

      if (v151 >= *(*&v232 + 16))
      {
        goto LABEL_202;
      }

      v153 = *(v224 + 8 * v151);
      v154 = v135[v151];
      v155 = *(v154 + 16);
      if (v155)
      {
        v156 = &v136[32 * v151];
        v157 = *(v156 + 3);
        if ((v157 & 0x8000000000000000) != 0)
        {
          goto LABEL_206;
        }

        v158 = *(v156 + 2);
        if (v157 >= *(v158 + 16))
        {
          goto LABEL_207;
        }

        v159 = *v156;
        v160 = *(v158 + 24 * v157 + 40);
        v161 = (v154 + 40);
        v162 = 0.0;
        do
        {
          if (*v161 >= v152)
          {
            goto LABEL_178;
          }

          v163 = &v136[32 * *v161];
          v164 = *(v163 + 3);
          if ((v164 & 0x8000000000000000) != 0)
          {
            goto LABEL_179;
          }

          v165 = *(v163 + 2);
          if (v164 >= *(v165 + 16))
          {
            goto LABEL_180;
          }

          v166 = *(v161 - 1);
          v161 += 2;
          v167 = vsubq_f64(vaddq_f64(vsubq_f64(v159, *v163), *(v165 + 24 * v164 + 40)), v160);
          v162 = v162 + v166 * vaddvq_f64(vmulq_f64(v167, v167)) * 1000.0;
          --v155;
        }

        while (v155);
      }

      else
      {
        v162 = 0.0;
      }

      v168 = v150;
      v169 = swift_isUniquelyReferenced_nonNull_native();
      v235.a = v168;
      v170 = specialized __RawDictionaryStorage.find<A>(_:)(v151);
      v172 = *(*&v168 + 16);
      v173 = (v171 & 1) == 0;
      v174 = __OFADD__(v172, v173);
      v175 = v172 + v173;
      if (v174)
      {
        goto LABEL_203;
      }

      v19 = v171;
      if (*(*&v168 + 24) < v175)
      {
        break;
      }

      if (v169)
      {
        goto LABEL_152;
      }

      v179 = v170;
      specialized _NativeDictionary.copy()();
      v170 = v179;
      v135 = (*&v232 + 32);
      v150 = v235.a;
      if ((v19 & 1) == 0)
      {
LABEL_153:
        *(*&v150 + 8 * (v170 >> 6) + 64) |= 1 << v170;
        *(*(*&v150 + 48) + 8 * v170) = v151;
        *(*(*&v150 + 56) + 8 * v170) = v162;
        v177 = *(*&v150 + 16);
        v174 = __OFADD__(v177, 1);
        v178 = v177 + 1;
        if (v174)
        {
          goto LABEL_208;
        }

        *(*&v150 + 16) = v178;
        goto LABEL_131;
      }

LABEL_130:
      *(*(*&v150 + 56) + 8 * v170) = v162;
LABEL_131:
      ++v148;
      v149 = v149 - v153 + v162;
      v20 = v220;
      if (v148 == v218)
      {
        *&v214 = v150;

        *&v19 = MEMORY[0x1E69E7CC0];
        v180 = v213;
        v181 = v230;
        if (v149 < 0.0)
        {
          goto LABEL_160;
        }

LABEL_159:
        v182 = exp(-v149 / (5000 - v212));
        specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v183, 0.0, 1.0);
        if (v184 >= v182)
        {
        }

        else
        {
LABEL_160:

          v185 = 0;
          v186 = 1 << *(v214 + 32);
          if (v186 < 64)
          {
            v187 = ~(-1 << v186);
          }

          else
          {
            v187 = -1;
          }

          v188 = v187 & *(v214 + 64);
          v189 = (v186 + 63) >> 6;
          if (v188)
          {
            while (1)
            {
              v190 = v185;
LABEL_168:
              v191 = (v190 << 9) | (8 * __clz(__rbit64(v188)));
              v192 = *(*(v214 + 48) + v191);
              if ((v192 & 0x8000000000000000) != 0)
              {
                goto LABEL_209;
              }

              if (v192 >= *(*&v20 + 16))
              {
                goto LABEL_210;
              }

              v188 &= v188 - 1;
              *(v224 + 8 * v192) = *(*(v214 + 56) + v191);
              v185 = v190;
              if (!v188)
              {
                goto LABEL_165;
              }
            }
          }

          while (1)
          {
LABEL_165:
            v190 = v185 + 1;
            if (__OFADD__(v185, 1))
            {
              goto LABEL_195;
            }

            if (v190 >= v189)
            {
              break;
            }

            v188 = *(v214 + 64 + 8 * v190);
            ++v185;
            if (v188)
            {
              goto LABEL_168;
            }
          }

          v26 = v181;
        }

        v117 = v180;
        if (v180 == 5000)
        {
          goto LABEL_184;
        }

        goto LABEL_81;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v175, v169);
    v170 = specialized __RawDictionaryStorage.find<A>(_:)(v151);
    if ((v19 & 1) != (v176 & 1))
    {
      goto LABEL_215;
    }

LABEL_152:
    v150 = v235.a;
    if ((v19 & 1) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_130;
  }

  *&v233.a = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
  v22 = 0;
  v23 = v233.a;
  v228 = v19;
  *&v232 = a1 + 32;
  while (1)
  {
    v225 = v23;
    v24 = *(*&v232 + 8 * v22);
    v25 = [v24 path];
    if (!v25)
    {
      v25 = [objc_allocWithZone(PKStrokePath) init];
    }

    v26 = [v25 count];
    if (([v25 count] & 0x8000000000000000) != 0)
    {
      goto LABEL_193;
    }

    v27 = [v25 count];
    if (v26 < 0 || v27 < v26)
    {
      goto LABEL_194;
    }

    if (v26)
    {
      break;
    }

    v29 = v20;
LABEL_17:
    v39 = specialized static PKRefineMorph.NStroke.normalized(stroke:step:)(*&v29, 5.0);

    v23 = v225;
    v233.a = v225;
    v41 = *(*&v225 + 16);
    v40 = *(*&v225 + 24);
    if (v41 >= v40 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
      v23 = v233.a;
    }

    ++v22;
    *(*&v23 + 16) = v41 + 1;
    *(*&v23 + 8 * v41 + 32) = v39;
    if (v22 == v19)
    {
      v12 = a2;
      goto LABEL_22;
    }
  }

  toTransform.a = v20;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
  v28 = 0;
  v29 = toTransform.a;
  while (1)
  {
    v30 = [v25 objectAtIndexedSubscript_];
    if (!v30)
    {
LABEL_214:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_215:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v31 = v30;
    [v30 location];
    v33 = v32;
    v35 = v34;
    [v24 transform];
    v241.x = v33;
    v241.y = v35;
    v36 = CGPointApplyAffineTransform(v241, &v235);

    toTransform.a = v29;
    v38 = *(*&v29 + 16);
    v37 = *(*&v29 + 24);
    if (v38 >= v37 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
      v29 = toTransform.a;
    }

    *(*&v29 + 16) = v38 + 1;
    *(*&v29 + 16 * v38 + 32) = v36;
    if (v28 >= [v25 count])
    {
      break;
    }

    if (v26 == ++v28)
    {

      v20 = MEMORY[0x1E69E7CC0];
      v19 = v228;
      goto LABEL_17;
    }
  }

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

LABEL_184:

  v246.origin.x = a5;
  v246.origin.y = a6;
  v246.size.width = v201;
  v246.size.height = v202;
  v247 = CGRectUnion(v246, *v203);
  v227 = v247.origin.y;
  v231 = v247.origin.x;
  specialized PKRefineMorph.GridMesh.init(bounds:step:)(4, &v235, a5, a6, v201, v202);
  v233.a = v205;
  v233.b = 0.0;
  v233.c = 0.0;
  v233.d = v207;
  v233.tx = v206;
  v233.ty = v204;
  CGAffineTransformInvert(&toTransform, &v233);
  PKRefineMorph.GridMesh.morph(matches:toTransform:reversed:transformViewToModel:origin:)(v26, &toTransform, 0, a3, __PAIR128__(*&v227, *&v231));
  specialized PKRefineMorph.GridMesh.init(bounds:step:)(4, &v233, *v203, *&v203[8], *&v203[16], *&v203[24]);
  PKRefineMorph.GridMesh.morph(matches:toTransform:reversed:transformViewToModel:origin:)(v26, &by, 1, a3, __PAIR128__(*&v227, *&v231));

  v194 = *&v233.tx;
  v195 = v234;
  v197 = *&v233.a;
  v196 = *&v233.c;
  v198 = *&v235.tx;
  v199 = v236;
  v200 = *&v235.c;
  *a4 = *&v235.a;
  a4[1] = v200;
  a4[2] = v198;
  a4[3] = v199;
  a4[4] = v197;
  a4[5] = v196;
  a4[6] = v194;
  a4[7] = v195;
  return result;
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

uint64_t getEnumTagSinglePayload for PKRefineMorph.Match(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PKRefineMorph.Match(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t getEnumTagSinglePayload for PKRefineMorph.GridMesh(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for PKRefineMorph.GridMesh(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PKRefineMorph.Match.MatchTo and conformance PKRefineMorph.Match.MatchTo()
{
  result = lazy protocol witness table cache variable for type PKRefineMorph.Match.MatchTo and conformance PKRefineMorph.Match.MatchTo;
  if (!lazy protocol witness table cache variable for type PKRefineMorph.Match.MatchTo and conformance PKRefineMorph.Match.MatchTo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKRefineMorph.Match.MatchTo and conformance PKRefineMorph.Match.MatchTo);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PKRefineMorph.Match and conformance PKRefineMorph.Match()
{
  result = lazy protocol witness table cache variable for type PKRefineMorph.Match and conformance PKRefineMorph.Match;
  if (!lazy protocol witness table cache variable for type PKRefineMorph.Match and conformance PKRefineMorph.Match)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKRefineMorph.Match and conformance PKRefineMorph.Match);
  }

  return result;
}

id static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)@<X0>(id a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  if (!a1)
  {
    a1 = [objc_allocWithZone(PKDrawing) init];
    v2 = 0;
  }

  *a2 = a1;

  return v2;
}

uint64_t PKDrawing.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = objc_allocWithZone(PKDrawing);
  v8 = specialized @nonobjc PKDrawing.init(data:)();
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v8;
  }

  return result;
}

uint64_t PKDrawing.dataRepresentation()()
{
  v1 = [*v0 dataRepresentation];
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id PKDrawing.image(from:scale:)()
{
  v1 = [*v0 imageFromRect_scale_];

  return v1;
}

Swift::Void __swiftcall PKDrawing.transform(using:)(CGAffineTransform *using)
{
  v2 = *v1;
  v3 = *&using->c;
  v6[0] = *&using->a;
  v6[1] = v3;
  v6[2] = *&using->tx;
  v4 = [v2 drawingByApplyingTransform_];
  if (v4)
  {
    v5 = v4;

    *v1 = v5;
  }

  else
  {
    __break(1u);
  }
}

void __swiftcall PKDrawing.transformed(using:)(PencilKit::PKDrawing *__return_ptr retstr, CGAffineTransform *using)
{
  v4 = *v2;
  v5 = *&using->c;
  v7[0] = *&using->a;
  v7[1] = v5;
  v7[2] = *&using->tx;
  v6 = [v4 drawingByApplyingTransform_];
  if (v6)
  {
    retstr->drawing.super.isa = v6;
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall PKDrawing.append(_:)(PencilKit::PKDrawing *a1)
{
  v2 = [*v1 drawingByAppendingDrawing_];
  if (v2)
  {
    v3 = v2;

    *v1 = v3;
  }

  else
  {
    __break(1u);
  }
}

void __swiftcall PKDrawing.appending(_:)(PencilKit::PKDrawing *__return_ptr retstr, PencilKit::PKDrawing *a2)
{
  v4 = [*v2 drawingByAppendingDrawing_];
  if (!v4)
  {
    v4 = [objc_allocWithZone(PKDrawing) init];
  }

  retstr->drawing.super.isa = v4;
}

uint64_t PKDrawing.init<A>(strokes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  Array.init<A>(_:)();
  v8 = objc_allocWithZone(PKDrawing);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithStrokes_];

  result = (*(v6 + 8))(a1, a2);
  *a3 = v10;
  return result;
}

uint64_t PKDrawing.strokes.getter()
{
  v1 = [*v0 strokes];
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = *(v2 + 16);
  if (v3)
  {
    v12 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = 32;
    v5 = v12;
    do
    {
      v6 = *(v12 + 16);
      v7 = *(v12 + 24);
      v8 = *(v2 + v4);
      if (v6 >= v7 >> 1)
      {
        v9 = v7 > 1;
        v10 = v8;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9, v6 + 1, 1);
        v8 = v10;
      }

      *(v12 + 16) = v6 + 1;
      *(v12 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

void key path setter for PKDrawing.strokes : PKDrawing(uint64_t a1, id *a2)
{
  v3 = objc_allocWithZone(PKDrawing);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = [v3 initWithStrokes_];

  *a2 = v5;
}

void PKDrawing.strokes.setter()
{
  v1 = objc_allocWithZone(PKDrawing);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithStrokes_];

  *v0 = v3;
}

void (*PKDrawing.strokes.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = PKDrawing.strokes.getter();
  return PKDrawing.strokes.modify;
}

void PKDrawing.strokes.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  if (a2)
  {

    v4 = objc_allocWithZone(PKDrawing);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = [v4 initWithStrokes_];

    *v2 = v6;
  }

  else
  {

    v7 = objc_allocWithZone(PKDrawing);
    v8 = Array._bridgeToObjectiveC()().super.isa;

    v9 = [v7 initWithStrokes_];

    *v2 = v9;
  }
}

uint64_t PKDrawing.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v5 = objc_allocWithZone(PKDrawing);
    v6 = specialized @nonobjc PKDrawing.init(data:)();
    outlined consume of Data._Representation(v8, v9);
    __swift_destroy_boxed_opaque_existential_0(v10);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t PKDrawing.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v3 = [v2 dataRepresentation];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  lazy protocol witness table accessor for type Data and conformance Data();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  outlined consume of Data._Representation(v4, v6);
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

id static PKDrawing._forceBridgeFromObjectiveC(_:result:)(void *a1, id *a2)
{
  *a2 = a1;

  return a1;
}

uint64_t static PKDrawing._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, id *a2)
{
  *a2 = a1;
  v4 = a1;
  return 1;
}

id protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance PKDrawing@<X0>(id a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  if (!a1)
  {
    a1 = [objc_allocWithZone(PKDrawing) init];
    v2 = 0;
  }

  *a2 = a1;

  return v2;
}

id specialized @nonobjc PKDrawing.init(data:)()
{
  v6[1] = *MEMORY[0x1E69E9840];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6[0] = 0;
  v2 = [v0 initWithData:isa error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

id static PKInk._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v4 = [objc_opt_self() blackColor];
    v5 = MEMORY[0x1CCA6CE70](0xD000000000000011, 0x80000001C801FDB0);
    v3 = [objc_allocWithZone(PKInk) initWithInkType:v5 color:v4];

    a1 = 0;
  }

  *a2 = v3;

  return a1;
}

void __swiftcall PKInk.init(_:color:)(PencilKit::PKInk *__return_ptr retstr, PencilKit::PKInkingTool::InkType _, UIColor color)
{
  v4 = 0xD000000000000014;
  v5 = *_;
  v6 = "eyBag.framework/MobileKeyBag";
  v7 = "com.apple.ink.watercolor";
  v8 = 0xD00000000000001DLL;
  if (v5 == 6)
  {
    v8 = 0xD000000000000014;
  }

  else
  {
    v7 = "com.apple.ink.crayon";
  }

  v9 = "com.apple.ink.monoline";
  v10 = 0xD000000000000019;
  if (v5 != 4)
  {
    v10 = 0xD000000000000018;
    v9 = "com.apple.ink.fountainpen";
  }

  if (*_ <= 5u)
  {
    v8 = v10;
    v7 = v9;
  }

  v11 = "com.apple.ink.pencil";
  v12 = 0xD000000000000016;
  if (v5 == 2)
  {
    v12 = 0xD000000000000014;
  }

  else
  {
    v11 = "com.apple.ink.marker";
  }

  if (*_)
  {
    v6 = "com.apple.ink.pen";
  }

  else
  {
    v4 = 0xD000000000000011;
  }

  if (*_ > 1u)
  {
    v4 = v12;
    v6 = v11;
  }

  if (*_ <= 3u)
  {
    v13 = v4;
  }

  else
  {
    v13 = v8;
  }

  if (v5 <= 3)
  {
    v14 = v6;
  }

  else
  {
    v14 = v7;
  }

  v16 = MEMORY[0x1CCA6CE70](v13, v14 | 0x8000000000000000);

  v17 = [objc_allocWithZone(PKInk) initWithInkType:v16 color:color.super.isa];

  retstr->ink.super.isa = v17;
}

void PKInk.inkType.getter(_BYTE *a1@<X8>)
{
  v3 = [*v1 inkType];
  v4._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  PKInkingTool.InkType.init(rawValue:)(v4);
  if (v5 == 8)
  {
    __break(1u);
  }

  else
  {

    *a1 = v5;
  }
}

void key path getter for PKInk.inkType : PKInk(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 inkType];
  v4._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  PKInkingTool.InkType.init(rawValue:)(v4);
  if (v5 == 8)
  {
    __break(1u);
  }

  else
  {

    *a2 = v5;
  }
}

void PKInk.inkType.setter(_BYTE *a1)
{
  v2 = 0xD000000000000014;
  v3 = *a1;
  v4 = "eyBag.framework/MobileKeyBag";
  v5 = "com.apple.ink.watercolor";
  v6 = 0xD00000000000001DLL;
  if (v3 == 6)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v5 = "com.apple.ink.crayon";
  }

  v7 = "com.apple.ink.monoline";
  v8 = 0xD000000000000019;
  if (v3 != 4)
  {
    v8 = 0xD000000000000018;
    v7 = "com.apple.ink.fountainpen";
  }

  if (*a1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "com.apple.ink.pencil";
  v10 = 0xD000000000000016;
  if (v3 == 2)
  {
    v10 = 0xD000000000000014;
  }

  else
  {
    v9 = "com.apple.ink.marker";
  }

  if (*a1)
  {
    v4 = "com.apple.ink.pen";
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*a1 > 1u)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*a1 <= 3u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v6;
  }

  if (v3 <= 3)
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  v13 = MEMORY[0x1CCA6CE70](v11, v12 | 0x8000000000000000);

  v14 = [*v1 color];
  v15 = [objc_allocWithZone(PKInk) initWithInkType:v13 color:v14];

  *v1 = v15;
}

id PKInk.color.getter()
{
  v1 = [*v0 color];

  return v1;
}

char PKInk.inkType.modify(uint64_t a1)
{
  *a1 = v1;
  v3 = [*v1 inkType];
  v4._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  LOBYTE(v5) = PKInkingTool.InkType.init(rawValue:)(v4);
  if (v7 == 8)
  {
    __break(1u);
  }

  else
  {

    *(a1 + 8) = v7;
    return PKInk.inkType.modify;
  }

  return v5;
}

void PKInk.inkType.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v2 = &v3;
  }

  else
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  PKInk.inkType.setter(v2);
}

void key path setter for PKInk.color : PKInk(void *a1, id *a2)
{
  v3 = [objc_opt_self() inkFromInk:*a2 color:*a1];

  *a2 = v3;
}

void PKInk.color.setter(void *a1)
{
  v3 = [objc_opt_self() inkFromInk:*v1 color:a1];

  *v1 = v3;
}

void (*PKInk.color.modify(void *a1))(void *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = [v3 color];
  return PKInk.color.modify;
}

void PKInk.color.modify(void *a1, char a2)
{
  v6 = *a1;
  v4 = [objc_opt_self() inkFromInk:a1[2] color:*a1];
  v5 = a1[1];
  if (a2)
  {

    *v5 = v4;
  }

  else
  {

    *v5 = v4;
  }
}

id static PKInk._forceBridgeFromObjectiveC(_:result:)(void *a1, id *a2)
{
  *a2 = a1;

  return a1;
}

uint64_t static PKInk._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, id *a2)
{
  *a2 = a1;
  v4 = a1;
  return 1;
}

id protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance PKInk@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v4 = [objc_opt_self() blackColor];
    v5 = MEMORY[0x1CCA6CE70](0xD000000000000011, 0x80000001C801FDB0);
    v3 = [objc_allocWithZone(PKInk) initWithInkType:v5 color:v4];

    a1 = 0;
  }

  *a2 = v3;

  return a1;
}

void __swiftcall PKStrokePath.InterpolatedSlice.next()(PencilKit::PKStrokePoint_optional *__return_ptr retstr)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (v4 < v3)
  {
    retstr->value.strokePoint.super.isa = 0;
    return;
  }

  v5 = *v1;
  v6 = [v5 interpolatedPointAt_];
  v7 = v6;
  if (v4 <= v3 + 0.001)
  {
    if (v6)
    {

      retstr->value.strokePoint.super.isa = v7;
      *(v1 + 40) = v3 + 1.0;
      return;
    }

    goto LABEL_10;
  }

  if (!v6)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  retstr->value.strokePoint.super.isa = v7;

  $defer #2 () in PKStrokePath.InterpolatedSlice.next()(v1);
}

void $defer #2 () in PKStrokePath.InterpolatedSlice.next()(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 40);
  v4 = *(a1 + 8);
  if (!*(a1 + 16))
  {
    [v2 parametricValue:*(a1 + 40) offsetByDistance:*(a1 + 8)];
    goto LABEL_5;
  }

  if (*(a1 + 16) == 1)
  {
    [v2 parametricValue:*(a1 + 40) offsetByTime:*(a1 + 8)];
LABEL_5:
    *(a1 + 40) = v5;
    return;
  }

  v6 = v2;
  v7 = [v6 count];
  if (([v6 count] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = [v6 count];

    if ((v7 & 0x8000000000000000) == 0 && v8 >= v7)
    {
      v5 = (v7 - 1);
      if (v3 + v4 < v5)
      {
        v5 = v3 + v4;
      }

      if (v5 < 0.0)
      {
        v5 = 0.0;
      }

      goto LABEL_5;
    }
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type PKStrokePath.InterpolatedSlice and conformance PKStrokePath.InterpolatedSlice()
{
  result = lazy protocol witness table cache variable for type PKStrokePath.InterpolatedSlice and conformance PKStrokePath.InterpolatedSlice;
  if (!lazy protocol witness table cache variable for type PKStrokePath.InterpolatedSlice and conformance PKStrokePath.InterpolatedSlice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokePath.InterpolatedSlice and conformance PKStrokePath.InterpolatedSlice);
  }

  return result;
}

double protocol witness for Sequence.makeIterator() in conformance PKStrokePath.InterpolatedSlice@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  result = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = result;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance PKStrokePath.InterpolatedSlice()
{
  v1 = v0[1];
  v4[0] = *v0;
  v4[1] = v1;
  v4[2] = v0[2];
  v2 = specialized _copySequenceToContiguousArray<A>(_:)(v4);
  outlined destroy of PKStrokePath.InterpolatedSlice(v4);
  return v2;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  outlined init with copy of PKStrokePath.InterpolatedSlice(a1, v36);
  v6 = MEMORY[0x1E69E7CC0];
  v7 = 0;
  if (v2 >= v1)
  {
    v13 = (MEMORY[0x1E69E7CC0] + 32);
    v14 = &selRef_initWithLocation_timeOffset_size_opacity_force_azimuth_altitude_secondaryScale_threshold_;
    v15 = &selRef_correctionResult;
    v35 = v3;
    do
    {
      v16 = v3;
      v17 = [v16 v14[236]];
      v18 = v17;
      if (v2 <= v1 + 0.001)
      {
        if (!v17)
        {
          goto LABEL_45;
        }

        v1 = v1 + 1.0;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_45;
        }

        if (!v5)
        {
          [v16 parametricValue:v1 offsetByDistance:v4];
          goto LABEL_15;
        }

        if (v5 == 1)
        {
          [v16 parametricValue:v1 offsetByTime:v4];
LABEL_15:
          v1 = v19;
          goto LABEL_16;
        }

        v33 = [v16 v15[1]];
        if (([v16 v15[1]] & 0x8000000000000000) != 0)
        {
          goto LABEL_42;
        }

        v34 = [v16 v15[1]];
        if (v33 < 0 || v34 < v33)
        {
          goto LABEL_43;
        }

        if (v1 + v4 >= (v33 - 1))
        {
          v1 = (v33 - 1);
        }

        else
        {
          v1 = v1 + v4;
        }

        if (v1 < 0.0)
        {
          v1 = 0.0;
        }
      }

LABEL_16:
      if (!v7)
      {
        v20 = v6[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_41;
        }

        v21 = v5;
        v22 = v14;
        v23 = v15;
        v24 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PencilKit13PKStrokePointVGMd);
        v26 = swift_allocObject();
        v27 = _swift_stdlib_malloc_size(v26);
        v28 = v27 - 32;
        if (v27 < 32)
        {
          v28 = v27 - 25;
        }

        v29 = v28 >> 3;
        v26[2] = v25;
        v26[3] = 2 * (v28 >> 3);
        v30 = (v26 + 4);
        v31 = v6[3] >> 1;
        if (v6[2])
        {
          v32 = v6 + 4;
          if (v26 != v6 || v30 >= v32 + 8 * v31)
          {
            memmove(v26 + 4, v32, 8 * v31);
          }

          v6[2] = 0;
        }

        v13 = (v30 + 8 * v31);
        v7 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v6 = v26;
        v15 = v23;
        v14 = v22;
        v5 = v21;
        v3 = v35;
      }

      v10 = __OFSUB__(v7--, 1);
      if (v10)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      *v13++ = v18;
    }

    while (v2 >= v1);
  }

  v8 = v6[3];
  if (v8 >= 2)
  {
    v9 = v8 >> 1;
    v10 = __OFSUB__(v9, v7);
    v11 = v9 - v7;
    if (v10)
    {
      goto LABEL_44;
    }

    v6[2] = v11;
  }

  return v6;
}

void PKInkingTool.init(_:color:width:)(_BYTE *a1@<X0>, void *a2@<X1>, double a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v5 = *a1;
  v6 = 0xD00000000000001DLL;
  if (v5 == 6)
  {
    v6 = 0xD000000000000014;
    v7 = "com.apple.ink.watercolor";
  }

  else
  {
    v7 = "com.apple.ink.crayon";
  }

  v8 = 0xD000000000000019;
  if (v5 == 4)
  {
    v9 = "com.apple.ink.monoline";
  }

  else
  {
    v8 = 0xD000000000000018;
    v9 = "com.apple.ink.fountainpen";
  }

  if (*a1 <= 5u)
  {
    v6 = v8;
    v7 = v9;
  }

  v10 = 0xD000000000000016;
  if (v5 == 2)
  {
    v10 = 0xD000000000000014;
    v11 = "com.apple.ink.pencil";
  }

  else
  {
    v11 = "com.apple.ink.marker";
  }

  if (*a1)
  {
    v12 = 0xD000000000000014;
  }

  else
  {
    v12 = 0xD000000000000011;
  }

  if (*a1)
  {
    v13 = "com.apple.ink.pen";
  }

  else
  {
    v13 = "eyBag.framework/MobileKeyBag";
  }

  if (*a1 <= 1u)
  {
    v10 = v12;
    v11 = v13;
  }

  if (*a1 <= 3u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (v5 <= 3)
  {
    v15 = v11;
  }

  else
  {
    v15 = v7;
  }

  v33 = MEMORY[0x1CCA6CE70](v14, v15 | 0x8000000000000000);

  if (a4)
  {
    v16 = 0xD00000000000001DLL;
    if (v5 == 6)
    {
      v16 = 0xD000000000000014;
      v17 = "com.apple.ink.watercolor";
    }

    else
    {
      v17 = "com.apple.ink.crayon";
    }

    v18 = 0xD000000000000019;
    if (v5 == 4)
    {
      v19 = "com.apple.ink.monoline";
    }

    else
    {
      v18 = 0xD000000000000018;
      v19 = "com.apple.ink.fountainpen";
    }

    if (v5 <= 5)
    {
      v16 = v18;
      v17 = v19;
    }

    v20 = 0xD000000000000016;
    if (v5 == 2)
    {
      v20 = 0xD000000000000014;
      v21 = "com.apple.ink.pencil";
    }

    else
    {
      v21 = "com.apple.ink.marker";
    }

    v23 = "eyBag.framework/MobileKeyBag";
    v22 = 0xD000000000000011;
    if (v5)
    {
      v22 = 0xD000000000000014;
      v23 = "com.apple.ink.pen";
    }

    if (v5 <= 1)
    {
      v20 = v22;
      v21 = v23;
    }

    if (v5 <= 3)
    {
      v24 = v20;
    }

    else
    {
      v24 = v16;
    }

    if (v5 <= 3)
    {
      v25 = v21;
    }

    else
    {
      v25 = v17;
    }

    v26 = objc_opt_self();
    v27 = MEMORY[0x1CCA6CE70](v24, v25 | 0x8000000000000000);

    [v26 defaultWidthForInkType_];
    v29 = v28;
  }

  else
  {
    v29 = a3;
  }

  v30 = [objc_allocWithZone(PKInkingTool) initWithInkType:v33 color:a2 width:v29];

  *a5 = v30;
}

double PKInkingTool.InkType.defaultWidth.getter()
{
  v1 = 0xD000000000000014;
  v2 = *v0;
  v3 = "eyBag.framework/MobileKeyBag";
  v4 = "com.apple.ink.watercolor";
  v5 = 0xD00000000000001DLL;
  if (v2 == 6)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v4 = "com.apple.ink.crayon";
  }

  v6 = "com.apple.ink.monoline";
  v7 = 0xD000000000000019;
  if (v2 != 4)
  {
    v7 = 0xD000000000000018;
    v6 = "com.apple.ink.fountainpen";
  }

  if (*v0 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "com.apple.ink.pencil";
  v9 = 0xD000000000000016;
  if (v2 == 2)
  {
    v9 = 0xD000000000000014;
  }

  else
  {
    v8 = "com.apple.ink.marker";
  }

  if (*v0)
  {
    v3 = "com.apple.ink.pen";
  }

  else
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 > 1u)
  {
    v1 = v9;
    v3 = v8;
  }

  if (*v0 <= 3u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v5;
  }

  if (*v0 <= 3u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  v12 = objc_opt_self();
  v13 = MEMORY[0x1CCA6CE70](v10, v11 | 0x8000000000000000);

  [v12 defaultWidthForInkType_];
  v15 = v14;

  return v15;
}

void PKInkingTool.init(_:color:width:azimuth:)(_BYTE *a1@<X0>, void *a2@<X1>, double a3@<X2>, char a4@<W3>, void *a5@<X8>, double a6@<D0>)
{
  v6 = *a1;
  v7 = 0xD00000000000001DLL;
  if (v6 == 6)
  {
    v7 = 0xD000000000000014;
    v8 = "com.apple.ink.watercolor";
  }

  else
  {
    v8 = "com.apple.ink.crayon";
  }

  v9 = 0xD000000000000019;
  if (v6 == 4)
  {
    v10 = "com.apple.ink.monoline";
  }

  else
  {
    v9 = 0xD000000000000018;
    v10 = "com.apple.ink.fountainpen";
  }

  if (*a1 <= 5u)
  {
    v7 = v9;
    v8 = v10;
  }

  v11 = 0xD000000000000016;
  if (v6 == 2)
  {
    v11 = 0xD000000000000014;
    v12 = "com.apple.ink.pencil";
  }

  else
  {
    v12 = "com.apple.ink.marker";
  }

  if (*a1)
  {
    v13 = 0xD000000000000014;
  }

  else
  {
    v13 = 0xD000000000000011;
  }

  if (*a1)
  {
    v14 = "com.apple.ink.pen";
  }

  else
  {
    v14 = "eyBag.framework/MobileKeyBag";
  }

  if (*a1 <= 1u)
  {
    v11 = v13;
    v12 = v14;
  }

  if (*a1 <= 3u)
  {
    v15 = v11;
  }

  else
  {
    v15 = v7;
  }

  if (v6 <= 3)
  {
    v16 = v12;
  }

  else
  {
    v16 = v8;
  }

  v35 = MEMORY[0x1CCA6CE70](v15, v16 | 0x8000000000000000);

  if (a4)
  {
    v18 = 0xD00000000000001DLL;
    if (v6 == 6)
    {
      v18 = 0xD000000000000014;
      v19 = "com.apple.ink.watercolor";
    }

    else
    {
      v19 = "com.apple.ink.crayon";
    }

    v20 = 0xD000000000000019;
    if (v6 == 4)
    {
      v21 = "com.apple.ink.monoline";
    }

    else
    {
      v20 = 0xD000000000000018;
      v21 = "com.apple.ink.fountainpen";
    }

    if (v6 <= 5)
    {
      v18 = v20;
      v19 = v21;
    }

    v22 = 0xD000000000000016;
    if (v6 == 2)
    {
      v22 = 0xD000000000000014;
      v23 = "com.apple.ink.pencil";
    }

    else
    {
      v23 = "com.apple.ink.marker";
    }

    v25 = "eyBag.framework/MobileKeyBag";
    v24 = 0xD000000000000011;
    if (v6)
    {
      v24 = 0xD000000000000014;
      v25 = "com.apple.ink.pen";
    }

    if (v6 <= 1)
    {
      v22 = v24;
      v23 = v25;
    }

    if (v6 <= 3)
    {
      v26 = v22;
    }

    else
    {
      v26 = v18;
    }

    if (v6 <= 3)
    {
      v27 = v23;
    }

    else
    {
      v27 = v19;
    }

    v28 = objc_opt_self();
    v29 = MEMORY[0x1CCA6CE70](v26, v27 | 0x8000000000000000);

    [v28 defaultWidthForInkType_];
    v31 = v30;
  }

  else
  {
    v31 = a3;
  }

  v32 = [objc_allocWithZone(PKInkingTool) initWithInkType:v35 color:a2 width:v31 azimuth:a6];

  *a5 = v32;
}

PencilKit::PKInkingTool::InkType_optional __swiftcall PKInkingTool.InkType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PKInkingTool.InkType.init(rawValue:), v3);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t PKInkingTool.InkType.rawValue.getter()
{
  v1 = 0xD000000000000014;
  v2 = *v0;
  v3 = 0xD00000000000001DLL;
  if (v2 == 6)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0xD000000000000019;
  if (v2 != 4)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000016;
  if (v2 == 2)
  {
    v5 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 > 1u)
  {
    v1 = v5;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

void PKInkingTool.InkType.validWidthRange.getter()
{
  v1 = *v0;
  v2 = "com.apple.ink.crayon";
  v3 = 0xD00000000000001DLL;
  if (v1 == 6)
  {
    v3 = 0xD000000000000014;
    v2 = "com.apple.ink.watercolor";
  }

  v4 = "com.apple.ink.monoline";
  if (v1 == 4)
  {
    v5 = 0xD000000000000019;
  }

  else
  {
    v5 = 0xD000000000000018;
  }

  if (v1 != 4)
  {
    v4 = "com.apple.ink.fountainpen";
  }

  if (*v0 <= 5u)
  {
    v3 = v5;
    v2 = v4;
  }

  if (v1 == 2)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000016;
  }

  if (v1 == 2)
  {
    v7 = "com.apple.ink.pencil";
  }

  else
  {
    v7 = "com.apple.ink.marker";
  }

  if (*v0)
  {
    v8 = 0xD000000000000014;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*v0)
  {
    v9 = "com.apple.ink.pen";
  }

  else
  {
    v9 = "eyBag.framework/MobileKeyBag";
  }

  if (*v0 <= 1u)
  {
    v6 = v8;
    v7 = v9;
  }

  if (*v0 <= 3u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v3;
  }

  if (v1 <= 3)
  {
    v11 = v7;
  }

  else
  {
    v11 = v2;
  }

  v12 = objc_opt_self();
  v13 = MEMORY[0x1CCA6CE70](v10, v11 | 0x8000000000000000);

  [v12 minimumWidthForInkType_];
  v15 = v14;

  v16 = 0xD00000000000001DLL;
  if (v1 == 6)
  {
    v16 = 0xD000000000000014;
  }

  v17 = "com.apple.ink.watercolor";
  v18 = "eyBag.framework/MobileKeyBag";
  if (v1 != 6)
  {
    v17 = "com.apple.ink.crayon";
  }

  v19 = 0xD000000000000019;
  v20 = "com.apple.ink.monoline";
  if (v1 != 4)
  {
    v19 = 0xD000000000000018;
    v20 = "com.apple.ink.fountainpen";
  }

  if (v1 <= 5)
  {
    v16 = v19;
    v17 = v20;
  }

  if (v1 == 2)
  {
    v21 = 0xD000000000000014;
  }

  else
  {
    v21 = 0xD000000000000016;
  }

  if (v1 == 2)
  {
    v22 = "com.apple.ink.pencil";
  }

  else
  {
    v22 = "com.apple.ink.marker";
  }

  v23 = 0xD000000000000011;
  if (v1)
  {
    v23 = 0xD000000000000014;
    v18 = "com.apple.ink.pen";
  }

  if (v1 <= 1)
  {
    v21 = v23;
    v22 = v18;
  }

  if (v1 <= 3)
  {
    v24 = v21;
  }

  else
  {
    v24 = v16;
  }

  if (v1 <= 3)
  {
    v25 = v22;
  }

  else
  {
    v25 = v17;
  }

  v26 = MEMORY[0x1CCA6CE70](v24, v25 | 0x8000000000000000);

  [v12 maximumWidthForInkType_];
  v28 = v27;

  if (v15 > v28)
  {
    __break(1u);
  }
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PKInkingTool.InkType@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = *v1;
  v4 = "eyBag.framework/MobileKeyBag";
  v5 = "com.apple.ink.watercolor";
  v6 = 0xD00000000000001DLL;
  if (v3 == 6)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v5 = "com.apple.ink.crayon";
  }

  v7 = "com.apple.ink.monoline";
  v8 = 0xD000000000000019;
  result = 0xD000000000000018;
  if (v3 != 4)
  {
    v8 = 0xD000000000000018;
    v7 = "com.apple.ink.fountainpen";
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = "com.apple.ink.pencil";
  v11 = 0xD000000000000016;
  if (v3 == 2)
  {
    v11 = 0xD000000000000014;
  }

  else
  {
    v10 = "com.apple.ink.marker";
  }

  if (*v1)
  {
    v4 = "com.apple.ink.pen";
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v1 > 1u)
  {
    v2 = v11;
    v4 = v10;
  }

  if (*v1 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v2 = v6;
    v12 = v5;
  }

  *a1 = v2;
  a1[1] = v12 | 0x8000000000000000;
  return result;
}

id PKInkingTool.color.getter()
{
  v1 = [*v0 color];

  return v1;
}

void PKInkingTool.color.setter(void *a1)
{
  v3 = *v1;
  v4 = [*v1 inkType];
  v5._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  PKInkingTool.InkType.init(rawValue:)(v5);
  if (v21 == 8)
  {
    __break(1u);
  }

  else
  {

    v6 = "eyBag.framework/MobileKeyBag";
    v7 = 0xD000000000000011;
    v8 = "com.apple.ink.watercolor";
    v9 = 0xD00000000000001DLL;
    if (v21 == 6)
    {
      v9 = 0xD000000000000014;
    }

    else
    {
      v8 = "com.apple.ink.crayon";
    }

    v10 = "com.apple.ink.monoline";
    v11 = 0xD000000000000019;
    if (v21 != 4)
    {
      v11 = 0xD000000000000018;
      v10 = "com.apple.ink.fountainpen";
    }

    if (v21 <= 5u)
    {
      v9 = v11;
      v8 = v10;
    }

    v12 = "com.apple.ink.pencil";
    v13 = 0xD000000000000016;
    if (v21 == 2)
    {
      v13 = 0xD000000000000014;
    }

    else
    {
      v12 = "com.apple.ink.marker";
    }

    if (v21)
    {
      v7 = 0xD000000000000014;
      v6 = "com.apple.ink.pen";
    }

    if (v21 > 1u)
    {
      v7 = v13;
      v6 = v12;
    }

    if (v21 <= 3u)
    {
      v14 = v7;
    }

    else
    {
      v14 = v9;
    }

    if (v21 <= 3u)
    {
      v15 = v6;
    }

    else
    {
      v15 = v8;
    }

    v16 = MEMORY[0x1CCA6CE70](v14, v15 | 0x8000000000000000);

    [v3 width];
    v18 = v17;
    [v3 azimuth];
    v20 = [objc_allocWithZone(PKInkingTool) initWithInkType:v16 color:a1 width:v18 azimuth:v19];

    *v1 = v20;
  }
}

void PKInkingTool.inkType.getter(_BYTE *a1@<X8>)
{
  v3 = [*v1 inkType];
  v4._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  PKInkingTool.InkType.init(rawValue:)(v4);
  if (v5 == 8)
  {
    __break(1u);
  }

  else
  {

    *a1 = v5;
  }
}

void (*PKInkingTool.color.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = [*v1 color];
  return PKInkingTool.color.modify;
}

void PKInkingTool.color.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    PKInkingTool.color.setter(v3);
  }

  else
  {
    PKInkingTool.color.setter(v2);
  }
}

id static PKInkingTool.convertColor(_:from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_opt_self() convertColor:a1 fromUserInterfaceStyle:a2 to:a3];

  return v3;
}

void PKInkingTool.width.setter(double a1)
{
  v3 = *v1;
  v4 = [*v1 inkType];
  v5._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  PKInkingTool.InkType.init(rawValue:)(v5);
  if (v20 == 8)
  {
    __break(1u);
  }

  else
  {

    v6 = "eyBag.framework/MobileKeyBag";
    v7 = 0xD000000000000011;
    v8 = "com.apple.ink.watercolor";
    v9 = 0xD00000000000001DLL;
    if (v20 == 6)
    {
      v9 = 0xD000000000000014;
    }

    else
    {
      v8 = "com.apple.ink.crayon";
    }

    v10 = "com.apple.ink.monoline";
    v11 = 0xD000000000000019;
    if (v20 != 4)
    {
      v11 = 0xD000000000000018;
      v10 = "com.apple.ink.fountainpen";
    }

    if (v20 <= 5u)
    {
      v9 = v11;
      v8 = v10;
    }

    v12 = "com.apple.ink.pencil";
    v13 = 0xD000000000000016;
    if (v20 == 2)
    {
      v13 = 0xD000000000000014;
    }

    else
    {
      v12 = "com.apple.ink.marker";
    }

    if (v20)
    {
      v7 = 0xD000000000000014;
      v6 = "com.apple.ink.pen";
    }

    if (v20 > 1u)
    {
      v7 = v13;
      v6 = v12;
    }

    if (v20 <= 3u)
    {
      v14 = v7;
    }

    else
    {
      v14 = v9;
    }

    if (v20 <= 3u)
    {
      v15 = v6;
    }

    else
    {
      v15 = v8;
    }

    v16 = MEMORY[0x1CCA6CE70](v14, v15 | 0x8000000000000000);

    v17 = [v3 color];
    [v3 azimuth];
    v19 = [objc_allocWithZone(PKInkingTool) initWithInkType:v16 color:v17 width:a1 azimuth:v18];

    *v1 = v19;
  }
}

void (*PKInkingTool.width.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*v1 width];
  *a1 = v3;
  return PKInkingTool.width.modify;
}

void PKInkingTool.azimuth.setter(double a1)
{
  v3 = *v1;
  v4 = [*v1 inkType];
  v5._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  PKInkingTool.InkType.init(rawValue:)(v5);
  if (v20 == 8)
  {
    __break(1u);
  }

  else
  {

    v6 = "eyBag.framework/MobileKeyBag";
    v7 = 0xD000000000000011;
    v8 = "com.apple.ink.watercolor";
    v9 = 0xD00000000000001DLL;
    if (v20 == 6)
    {
      v9 = 0xD000000000000014;
    }

    else
    {
      v8 = "com.apple.ink.crayon";
    }

    v10 = "com.apple.ink.monoline";
    v11 = 0xD000000000000019;
    if (v20 != 4)
    {
      v11 = 0xD000000000000018;
      v10 = "com.apple.ink.fountainpen";
    }

    if (v20 <= 5u)
    {
      v9 = v11;
      v8 = v10;
    }

    v12 = "com.apple.ink.pencil";
    v13 = 0xD000000000000016;
    if (v20 == 2)
    {
      v13 = 0xD000000000000014;
    }

    else
    {
      v12 = "com.apple.ink.marker";
    }

    if (v20)
    {
      v7 = 0xD000000000000014;
      v6 = "com.apple.ink.pen";
    }

    if (v20 > 1u)
    {
      v7 = v13;
      v6 = v12;
    }

    if (v20 <= 3u)
    {
      v14 = v7;
    }

    else
    {
      v14 = v9;
    }

    if (v20 <= 3u)
    {
      v15 = v6;
    }

    else
    {
      v15 = v8;
    }

    v16 = MEMORY[0x1CCA6CE70](v14, v15 | 0x8000000000000000);

    v17 = [v3 color];
    [v3 width];
    v19 = [objc_allocWithZone(PKInkingTool) initWithInkType:v16 color:v17 width:v18 azimuth:a1];

    *v1 = v19;
  }
}

void (*PKInkingTool.azimuth.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*v1 azimuth];
  *a1 = v3;
  return PKInkingTool.azimuth.modify;
}

void PKInkingTool.inkType.setter(_BYTE *a1)
{
  v2 = 0xD000000000000014;
  v3 = *a1;
  v4 = "eyBag.framework/MobileKeyBag";
  v5 = "com.apple.ink.watercolor";
  v6 = 0xD00000000000001DLL;
  if (v3 == 6)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v5 = "com.apple.ink.crayon";
  }

  v7 = "com.apple.ink.monoline";
  v8 = 0xD000000000000019;
  if (v3 != 4)
  {
    v8 = 0xD000000000000018;
    v7 = "com.apple.ink.fountainpen";
  }

  if (*a1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "com.apple.ink.pencil";
  v10 = 0xD000000000000016;
  if (v3 == 2)
  {
    v10 = 0xD000000000000014;
  }

  else
  {
    v9 = "com.apple.ink.marker";
  }

  if (*a1)
  {
    v4 = "com.apple.ink.pen";
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*a1 > 1u)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*a1 <= 3u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v6;
  }

  if (v3 <= 3)
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  v13 = MEMORY[0x1CCA6CE70](v11, v12 | 0x8000000000000000);

  v14 = *v1;
  v15 = [*v1 color];
  [v14 width];
  v17 = v16;
  [v14 azimuth];
  v19 = [objc_allocWithZone(PKInkingTool) initWithInkType:v13 color:v15 width:v17 azimuth:v18];

  *v1 = v19;
}

char PKInkingTool.inkType.modify(uint64_t a1)
{
  *a1 = v1;
  v3 = [*v1 inkType];
  v4._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  LOBYTE(v5) = PKInkingTool.InkType.init(rawValue:)(v4);
  if (v7 == 8)
  {
    __break(1u);
  }

  else
  {

    *(a1 + 8) = v7;
    return PKInkingTool.inkType.modify;
  }

  return v5;
}

void PKInkingTool.inkType.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v2 = &v3;
  }

  else
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  PKInkingTool.inkType.setter(v2);
}

void PKInkingTool.init(ink:width:)(void *a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v4 = *a1;
  v5 = [objc_allocWithZone(PKInkingTool) initWithInk:*a1 width:a3];

  *a2 = v5;
}

id PKInkingTool.ink.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 ink];
  if (!result)
  {
    v4 = [objc_opt_self() blackColor];
    v5 = MEMORY[0x1CCA6CE70](0xD000000000000011, 0x80000001C801FDB0);
    v6 = [objc_allocWithZone(PKInk) initWithInkType:v5 color:v4];

    result = v6;
  }

  *a1 = result;
  return result;
}

id static PKInkingTool._forceBridgeFromObjectiveC(_:result:)(void *a1, id *a2)
{
  *a2 = a1;

  return a1;
}

uint64_t static PKInkingTool._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, id *a2)
{
  *a2 = a1;
  v4 = a1;
  return 1;
}

id static PKInkingTool._unconditionallyBridgeFromObjectiveC(_:)@<X0>(id result@<X0>, id *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PKToolPickerLassoItem.lassoTool.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 _tool];
  objc_opt_self();
  result = swift_dynamicCastObjCClassUnconditional();
  *a1 = result;
  return result;
}

void PKToolPickerCustomItem.configuration.getter(uint64_t a1@<X8>)
{
  v3 = [v1 configuration];

  PKToolPickerCustomItem.Configuration.init(objcConfig:)(v3, a1);
}

void PKToolPickerCustomItem.Configuration.init(objcConfig:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_So7UIImageCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4 = [objc_opt_self() blackColor];
  v5 = [a1 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = [a1 name];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v11;
  v69 = v10;

  v12 = [a1 imageProvider];
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v66 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned PKToolPickerCustomItem) -> (@autoreleased UIImage);
    v67 = v14;
  }

  else
  {
    v66 = 0;
    v67 = 0;
  }

  v15 = [a1 viewControllerProvider];
  v71 = v8;
  v72 = v6;
  v70 = v4;
  if (v15)
  {
    v16 = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v64 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned PKToolPickerCustomItem) -> (@autoreleased UIViewController);
    v65 = v17;
  }

  else
  {
    v64 = 0;
    v65 = 0;
  }

  [a1 defaultWidth];
  v19 = v18;
  v76 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_So7UIImageCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v20 = [a1 widthVariants];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  lazy protocol witness table accessor for type NSNumber and conformance NSObject();
  v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v73 = a1;
  v74 = a2;
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = __CocoaDictionary.makeIterator()();
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v21 = v22 | 0x8000000000000000;
  }

  else
  {
    v26 = -1 << *(v21 + 32);
    v23 = v21 + 64;
    v24 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v25 = v28 & *(v21 + 64);
  }

  v29 = 0;
  v63 = v24;
  v30 = (v24 + 64) >> 6;
  v75 = v30;
  while ((v21 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.next()() || (swift_dynamicCast(), v39 = v77, swift_dynamicCast(), v40 = v77, v35 = v29, v36 = v25, !v77))
    {
LABEL_34:
      outlined consume of [NSNumber : UIImage].Iterator._Variant();

      v59 = [v73 defaultColor];

      v60 = [v73 allowsColorSelection];
      v61 = [v73 toolAttributeControls];
      v62 = [v73 _supportsLassoToolEditingView];

      *v74 = v72;
      *(v74 + 8) = v71;
      *(v74 + 16) = v69;
      *(v74 + 24) = v68;
      *(v74 + 32) = v66;
      *(v74 + 40) = v67;
      *(v74 + 48) = v64;
      *(v74 + 56) = v65;
      *(v74 + 64) = v19;
      *(v74 + 72) = v76;
      *(v74 + 80) = v59;
      *(v74 + 88) = v60;
      *(v74 + 96) = v61;
      *(v74 + 104) = v62;
      return;
    }

LABEL_25:
    v41 = v23;
    v42 = v21;
    v43 = v39;
    [v39 floatValue];
    v45 = v44;
    v46 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v76;
    v49 = specialized __RawDictionaryStorage.find<A>(_:)(v45);
    v50 = v76[2];
    v51 = (v48 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      goto LABEL_36;
    }

    v53 = v48;
    if (v76[3] >= v52)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v52, isUniquelyReferenced_nonNull_native);
      v54 = specialized __RawDictionaryStorage.find<A>(_:)(v45);
      if ((v53 & 1) != (v55 & 1))
      {
        goto LABEL_38;
      }

      v49 = v54;
    }

    if (v53)
    {
      v31 = v76[7];
      v32 = *(v31 + 8 * v49);
      *(v31 + 8 * v49) = v46;
    }

    else
    {
      v76[(v49 >> 6) + 8] |= 1 << v49;
      *(v76[6] + 8 * v49) = v45;
      *(v76[7] + 8 * v49) = v46;

      v56 = v76[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_37;
      }

      v76[2] = v58;
    }

    v29 = v35;
    v25 = v36;
    v21 = v42;
    v23 = v41;
    v30 = v75;
  }

  v33 = v29;
  v34 = v25;
  v35 = v29;
  if (v25)
  {
LABEL_21:
    v36 = (v34 - 1) & v34;
    v37 = (v35 << 9) | (8 * __clz(__rbit64(v34)));
    v38 = *(*(v21 + 56) + v37);
    v39 = *(*(v21 + 48) + v37);
    v40 = v38;
    if (!v39)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v30)
    {
      goto LABEL_34;
    }

    v34 = *(v23 + 8 * v35);
    ++v33;
    if (v34)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id PKToolPickerCustomItem.init(configuration:)(__int128 *a1)
{
  v2 = a1[5];
  v19 = a1[4];
  v20[0] = v2;
  *(v20 + 9) = *(a1 + 89);
  v3 = a1[1];
  v15 = *a1;
  v16 = v3;
  v4 = a1[3];
  v17 = a1[2];
  v18 = v4;
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = a1[4];
  *v14 = a1[5];
  *&v14[9] = *(a1 + 89);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v6 = PKToolPickerCustomItem.Configuration.objcInstance.getter();
  outlined destroy of PKToolPickerCustomItem.Configuration(&v15);
  v7 = [v5 initWithObjcConfiguration_];

  return v7;
}

uint64_t PKToolPickerCustomItem.Configuration.objcInstance.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v8 = *(v0 + 7);
  v9 = v0[8];
  v10 = *(v0 + 9);
  v52 = *(v0 + 10);
  v53 = *(v0 + 88);
  v54 = *(v0 + 12);
  v55 = *(v0 + 104);
  v11 = objc_allocWithZone(PKToolPickerCustomItemConfiguration);
  outlined copy of (@escaping @callee_guaranteed @async (@guaranteed [PKStroke], @guaranteed [PKStroke]) -> ())?(v5);
  v12 = MEMORY[0x1CCA6CE70](*&v1, v2);
  v13 = MEMORY[0x1CCA6CE70](v3, v4);
  v14 = [v11 initWithIdentifier:v12 name:v13];

  if (v5)
  {
    v60 = v5;
    v61 = v6;
    aBlock = MEMORY[0x1E69E9820];
    v57 = 1107296256;
    v58 = thunk for @escaping @callee_guaranteed (@guaranteed PKToolPickerCustomItem) -> (@owned UIImage);
    v59 = &block_descriptor_19;
    v15 = _Block_copy(&aBlock);
  }

  else
  {
    v15 = 0;
  }

  [v14 setImageProvider_];
  _Block_release(v15);
  if (v7)
  {
    v60 = v7;
    v61 = v8;
    aBlock = MEMORY[0x1E69E9820];
    v57 = 1107296256;
    v58 = thunk for @escaping @callee_guaranteed (@guaranteed PKToolPickerCustomItem) -> (@owned UIImage);
    v59 = &block_descriptor_2;
    v16 = _Block_copy(&aBlock);
  }

  else
  {
    v16 = 0;
  }

  [v14 setViewControllerProvider_];
  _Block_release(v16);
  v51 = v14;
  [v14 setDefaultWidth_];
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSNumberC_So7UIImageCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v18 = 1 << *(v10 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v10 + 64);
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_13:
  while (1)
  {
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v25 >= v21)
    {

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      lazy protocol witness table accessor for type NSNumber and conformance NSObject();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v51 setWidthVariants_];

      [v51 setDefaultColor_];
      [v51 setAllowsColorSelection_];
      [v51 setToolAttributeControls_];
      [v51 _setSupportsLassoToolEditingView_];
      return v51;
    }

    v20 = *(v10 + 64 + 8 * v25);
    ++v22;
    if (v20)
    {
      while (1)
      {
        v26 = (v25 << 9) | (8 * __clz(__rbit64(v20)));
        v27 = *(*(v10 + 56) + v26);
        v28 = *(*(v10 + 48) + v26);
        v29 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        v30 = v27;
        *&v31 = v28;
        v32 = [v29 initWithFloat_];
        if ((v17 & 0xC000000000000001) != 0)
        {
          if (v17 < 0)
          {
            v33 = v17;
          }

          else
          {
            v33 = v17 & 0xFFFFFFFFFFFFFF8;
          }

          v34 = v30;
          v35 = __CocoaSet.count.getter();
          if (__OFADD__(v35, 1))
          {
            goto LABEL_36;
          }

          v17 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8NSNumberC_So7UIImageCTt1g5(v33, v35 + 1);
        }

        else
        {
          v36 = v30;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v17;
        v38 = specialized __RawDictionaryStorage.find<A>(_:)(v32);
        v40 = *(v17 + 16);
        v41 = (v39 & 1) == 0;
        v42 = __OFADD__(v40, v41);
        v43 = v40 + v41;
        if (v42)
        {
          goto LABEL_35;
        }

        v44 = v39;
        if (*(v17 + 24) >= v43)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v48 = v38;
            specialized _NativeDictionary.copy()();
            v38 = v48;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, isUniquelyReferenced_nonNull_native);
          v38 = specialized __RawDictionaryStorage.find<A>(_:)(v32);
          if ((v44 & 1) != (v45 & 1))
          {
            goto LABEL_38;
          }
        }

        v20 &= v20 - 1;
        v17 = aBlock;
        if (v44)
        {
          v23 = *(aBlock + 56);
          v24 = *(v23 + 8 * v38);
          *(v23 + 8 * v38) = v30;

          v22 = v25;
          if (!v20)
          {
            goto LABEL_13;
          }
        }

        else
        {
          *(aBlock + 8 * (v38 >> 6) + 64) |= 1 << v38;
          *(*(v17 + 48) + 8 * v38) = v32;
          *(*(v17 + 56) + 8 * v38) = v30;

          v46 = *(v17 + 16);
          v42 = __OFADD__(v46, 1);
          v47 = v46 + 1;
          if (v42)
          {
            goto LABEL_37;
          }

          *(v17 + 16) = v47;
          v22 = v25;
          if (!v20)
          {
            goto LABEL_13;
          }
        }

LABEL_12:
        v25 = v22;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t PKToolPickerCustomItem.Configuration.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PKToolPickerCustomItem.Configuration.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PKToolPickerCustomItem.Configuration.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PKToolPickerCustomItem.Configuration.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t key path getter for PKToolPickerCustomItem.Configuration.imageProvider : PKToolPickerCustomItem.Configuration@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed PKToolPickerCustomItem) -> (@owned UIImage);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed @async (@guaranteed [PKStroke], @guaranteed [PKStroke]) -> ())?(v3);
}

uint64_t key path setter for PKToolPickerCustomItem.Configuration.imageProvider : PKToolPickerCustomItem.Configuration(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed PKToolPickerCustomItem) -> (@out UIImage);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 32);
  outlined copy of (@escaping @callee_guaranteed @async (@guaranteed [PKStroke], @guaranteed [PKStroke]) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed [PKStroke], @guaranteed [PKStroke]) -> ())?(v7);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  return result;
}

uint64_t PKToolPickerCustomItem.Configuration.imageProvider.getter()
{
  v1 = *(v0 + 32);
  outlined copy of (@escaping @callee_guaranteed @async (@guaranteed [PKStroke], @guaranteed [PKStroke]) -> ())?(v1);
  return v1;
}

uint64_t PKToolPickerCustomItem.Configuration.imageProvider.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed [PKStroke], @guaranteed [PKStroke]) -> ())?(*(v2 + 32));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t key path getter for PKToolPickerCustomItem.Configuration.viewControllerProvider : PKToolPickerCustomItem.Configuration@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed PKToolPickerCustomItem) -> (@owned UIViewController);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed @async (@guaranteed [PKStroke], @guaranteed [PKStroke]) -> ())?(v3);
}

uint64_t key path setter for PKToolPickerCustomItem.Configuration.viewControllerProvider : PKToolPickerCustomItem.Configuration(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed PKToolPickerCustomItem) -> (@out UIViewController);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 48);
  outlined copy of (@escaping @callee_guaranteed @async (@guaranteed [PKStroke], @guaranteed [PKStroke]) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed [PKStroke], @guaranteed [PKStroke]) -> ())?(v7);
  *(a2 + 48) = v6;
  *(a2 + 56) = v5;
  return result;
}

uint64_t PKToolPickerCustomItem.Configuration.viewControllerProvider.getter()
{
  v1 = *(v0 + 48);
  outlined copy of (@escaping @callee_guaranteed @async (@guaranteed [PKStroke], @guaranteed [PKStroke]) -> ())?(v1);
  return v1;
}

uint64_t PKToolPickerCustomItem.Configuration.viewControllerProvider.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed [PKStroke], @guaranteed [PKStroke]) -> ())?(*(v2 + 48));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t PKToolPickerCustomItem.Configuration.widthVariants.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

_BYTE *(*PKToolPickerCustomItem.Configuration._supportsLassoBehaviors.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 104);
  return PKToolPickerCustomItem.Configuration._supportsLassoBehaviors.modify;
}

id PKToolPickerCustomItem.Configuration.init(identifier:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 64) = 0;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 72) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_So7UIImageCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  result = [objc_opt_self() blackColor];
  *(a5 + 80) = result;
  *(a5 + 88) = 0;
  *(a5 + 96) = 3;
  *(a5 + 104) = 0;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

id thunk for @escaping @callee_guaranteed (@guaranteed PKToolPickerCustomItem) -> (@owned UIImage)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

Swift::Int _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8NSNumberC_So7UIImageCTt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSNumberCSo7UIImageCGMd);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_12CoreGraphics7CGFloatVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi12CoreGraphics7CGFloatVGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_So7UIImageCTt0g5Tf4g_n(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy12CoreGraphics7CGFloatVSo7UIImageCGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = *(a1 + 5);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = a1 + 7;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PKToolPickerCustomItem.Configuration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PKToolPickerCustomItem.Configuration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed PKToolPickerCustomItem) -> (@owned UIViewController)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed PKToolPickerCustomItem) -> (@out UIViewController)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSNumberC_So7UIImageCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSNumberCSo7UIImageCGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo13CIImageOptiona_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo13CIImageOptionaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (CIContextOption, Any)(v4, &v11, &_sSo13CIImageOptiona_yptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo15CIContextOptiona_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo15CIContextOptionaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (CIContextOption, Any)(v4, &v11, &_sSo15CIContextOptiona_yptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t outlined init with copy of (CIContextOption, Any)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type NSNumber and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSNumber and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSNumber and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for NSNumber);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSNumber and conformance NSObject);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned PKToolPickerCustomItem) -> (@autoreleased UIViewController)()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

CGFloat specialized CGAffineTransform.init(convertFrom:to:percent:)@<D0>(_OWORD *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>, double a10)
{
  v14 = 1.0 - a10 + a8 / a4 * a10;
  v15 = 1.0 - a10 + a9 / a5 * a10;
  CGAffineTransformMakeTranslation(&t1, -a2, -a3);
  tx = t1.tx;
  ty = t1.ty;
  v31 = *&t1.c;
  v32 = *&t1.a;
  CGAffineTransformMakeScale(&t1, v14, v15);
  v18 = *&t1.a;
  v19 = *&t1.c;
  v20 = *&t1.tx;
  *&t1.a = v32;
  *&t1.c = v31;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v18;
  *&t2.c = v19;
  *&t2.tx = v20;
  CGAffineTransformConcat(&v37, &t1, &t2);
  v21 = v37.tx;
  v22 = v37.ty;
  v23 = a6 * a10 + (1.0 - a10) * a2;
  v24 = a7 * a10 + (1.0 - a10) * a3;
  v34 = *&v37.c;
  v36 = *&v37.a;
  CGAffineTransformMakeTranslation(&t1, v23, v24);
  v25 = *&t1.a;
  v26 = *&t1.c;
  v27 = *&t1.tx;
  *&t1.a = v36;
  *&t1.c = v34;
  t1.tx = v21;
  t1.ty = v22;
  *&t2.a = v25;
  *&t2.c = v26;
  *&t2.tx = v27;
  CGAffineTransformConcat(&v37, &t1, &t2);
  result = v37.a;
  v29 = *&v37.c;
  v30 = *&v37.tx;
  *a1 = *&v37.a;
  a1[1] = v29;
  a1[2] = v30;
  return result;
}

id static PKLassoTool._forceBridgeFromObjectiveC(_:result:)(void *a1, id *a2)
{
  *a2 = a1;

  return a1;
}

uint64_t static PKLassoTool._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, id *a2)
{
  *a2 = a1;
  v4 = a1;
  return 1;
}

id static PKLassoTool._unconditionallyBridgeFromObjectiveC(_:)@<X0>(id result@<X0>, id *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PKToolPickerInkingItem.inkingTool.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 _tool];
  objc_opt_self();
  result = swift_dynamicCastObjCClassUnconditional();
  *a1 = result;
  return result;
}

id PKToolPickerInkingItem.init(type:color:width:identifier:)(_BYTE *a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  if (!a2)
  {
    v27 = "eyBag.framework/MobileKeyBag";
    v28 = 0xD000000000000011;
    v29 = "com.apple.ink.watercolor";
    v30 = 0xD00000000000001DLL;
    if (v10 == 6)
    {
      v30 = 0xD000000000000014;
    }

    else
    {
      v29 = "com.apple.ink.crayon";
    }

    v31 = "com.apple.ink.monoline";
    v32 = 0xD000000000000019;
    if (v10 != 4)
    {
      v32 = 0xD000000000000018;
      v31 = "com.apple.ink.fountainpen";
    }

    if (*a1 <= 5u)
    {
      v30 = v32;
      v29 = v31;
    }

    v33 = "com.apple.ink.pencil";
    v34 = 0xD000000000000016;
    if (v10 == 2)
    {
      v34 = 0xD000000000000014;
    }

    else
    {
      v33 = "com.apple.ink.marker";
    }

    if (*a1)
    {
      v28 = 0xD000000000000014;
      v27 = "com.apple.ink.pen";
    }

    if (*a1 > 1u)
    {
      v28 = v34;
      v27 = v33;
    }

    if (*a1 <= 3u)
    {
      v35 = v28;
    }

    else
    {
      v35 = v30;
    }

    if (*a1 <= 3u)
    {
      v36 = v27;
    }

    else
    {
      v36 = v29;
    }

    v37 = objc_opt_self();
    v38 = MEMORY[0x1CCA6CE70](v35, v36 | 0x8000000000000000);

    v11 = [(PKToolConfiguration *)v37 defaultColorForInkingToolWithIdentifier:v38];

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_45:
    v26 = *&a3;
    v39 = a2;
    goto LABEL_46;
  }

  v11 = a2;
  if ((a4 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_3:
  v12 = "eyBag.framework/MobileKeyBag";
  v13 = 0xD000000000000011;
  v14 = "com.apple.ink.watercolor";
  v15 = 0xD00000000000001DLL;
  if (v10 == 6)
  {
    v15 = 0xD000000000000014;
  }

  else
  {
    v14 = "com.apple.ink.crayon";
  }

  v16 = "com.apple.ink.monoline";
  v17 = 0xD000000000000019;
  if (v10 != 4)
  {
    v17 = 0xD000000000000018;
    v16 = "com.apple.ink.fountainpen";
  }

  if (v10 <= 5)
  {
    v15 = v17;
    v14 = v16;
  }

  v18 = "com.apple.ink.pencil";
  v19 = 0xD000000000000016;
  if (v10 == 2)
  {
    v19 = 0xD000000000000014;
  }

  else
  {
    v18 = "com.apple.ink.marker";
  }

  if (v10)
  {
    v13 = 0xD000000000000014;
    v12 = "com.apple.ink.pen";
  }

  if (v10 > 1)
  {
    v13 = v19;
    v12 = v18;
  }

  if (v10 <= 3)
  {
    v20 = v13;
  }

  else
  {
    v20 = v15;
  }

  if (v10 <= 3)
  {
    v21 = v12;
  }

  else
  {
    v21 = v14;
  }

  v22 = objc_opt_self();
  v23 = a2;
  v24 = MEMORY[0x1CCA6CE70](v20, v21 | 0x8000000000000000);

  [v22 defaultWidthForInkType_];
  v26 = v25;

LABEL_46:
  v40 = 0xD000000000000011;
  v41 = "eyBag.framework/MobileKeyBag";
  v42 = "com.apple.ink.watercolor";
  v43 = 0xD00000000000001DLL;
  if (v10 == 6)
  {
    v43 = 0xD000000000000014;
  }

  else
  {
    v42 = "com.apple.ink.crayon";
  }

  v44 = "com.apple.ink.monoline";
  v45 = 0xD000000000000019;
  if (v10 != 4)
  {
    v45 = 0xD000000000000018;
    v44 = "com.apple.ink.fountainpen";
  }

  if (v10 <= 5)
  {
    v43 = v45;
    v42 = v44;
  }

  v46 = "com.apple.ink.pencil";
  v47 = 0xD000000000000016;
  if (v10 == 2)
  {
    v47 = 0xD000000000000014;
  }

  else
  {
    v46 = "com.apple.ink.marker";
  }

  if (v10)
  {
    v40 = 0xD000000000000014;
    v41 = "com.apple.ink.pen";
  }

  if (v10 > 1)
  {
    v40 = v47;
    v41 = v46;
  }

  if (v10 <= 3)
  {
    v48 = v40;
  }

  else
  {
    v48 = v43;
  }

  if (v10 <= 3)
  {
    v49 = v41;
  }

  else
  {
    v49 = v42;
  }

  v50 = MEMORY[0x1CCA6CE70](v48, v49 | 0x8000000000000000);

  v51 = [objc_allocWithZone(PKInkingTool) initWithInkType:v50 color:v11 width:v26];

  if (a6)
  {
    v52 = MEMORY[0x1CCA6CE70](a5, a6);
  }

  else
  {
    v52 = 0;
  }

  v53 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTool:v51 identifier:v52];

  return v53;
}

id PKToolPickerInkingItem.init(type:color:width:azimuth:identifier:)(_BYTE *a1, void *a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v12 = "eyBag.framework/MobileKeyBag";
    v13 = 0xD000000000000011;
    v14 = "com.apple.ink.watercolor";
    v15 = 0xD00000000000001DLL;
    if (v10 == 6)
    {
      v15 = 0xD000000000000014;
    }

    else
    {
      v14 = "com.apple.ink.crayon";
    }

    v16 = "com.apple.ink.monoline";
    v17 = 0xD000000000000019;
    if (v10 != 4)
    {
      v17 = 0xD000000000000018;
      v16 = "com.apple.ink.fountainpen";
    }

    if (*a1 <= 5u)
    {
      v15 = v17;
      v14 = v16;
    }

    v18 = "com.apple.ink.pencil";
    v19 = 0xD000000000000016;
    if (v10 == 2)
    {
      v19 = 0xD000000000000014;
    }

    else
    {
      v18 = "com.apple.ink.marker";
    }

    if (*a1)
    {
      v13 = 0xD000000000000014;
      v12 = "com.apple.ink.pen";
    }

    if (*a1 > 1u)
    {
      v13 = v19;
      v12 = v18;
    }

    if (*a1 <= 3u)
    {
      v20 = v13;
    }

    else
    {
      v20 = v15;
    }

    if (*a1 <= 3u)
    {
      v21 = v12;
    }

    else
    {
      v21 = v14;
    }

    v22 = a3;
    v23 = objc_opt_self();
    v24 = MEMORY[0x1CCA6CE70](v20, v21 | 0x8000000000000000);

    v11 = [(PKToolConfiguration *)v23 defaultColorForInkingToolWithIdentifier:v24];

    a3 = v22;
  }

  v73 = a2;
  if (a4)
  {
    v68 = v11;
    v25 = "eyBag.framework/MobileKeyBag";
    v26 = 0xD000000000000011;
    v27 = "com.apple.ink.watercolor";
    v28 = 0xD00000000000001DLL;
    if (v10 == 6)
    {
      v28 = 0xD000000000000014;
    }

    else
    {
      v27 = "com.apple.ink.crayon";
    }

    v29 = "com.apple.ink.monoline";
    v30 = 0xD000000000000019;
    if (v10 != 4)
    {
      v30 = 0xD000000000000018;
      v29 = "com.apple.ink.fountainpen";
    }

    if (v10 <= 5)
    {
      v28 = v30;
      v27 = v29;
    }

    v31 = "com.apple.ink.pencil";
    v32 = 0xD000000000000016;
    if (v10 == 2)
    {
      v32 = 0xD000000000000014;
    }

    else
    {
      v31 = "com.apple.ink.marker";
    }

    if (v10)
    {
      v26 = 0xD000000000000014;
      v25 = "com.apple.ink.pen";
    }

    if (v10 > 1)
    {
      v26 = v32;
      v25 = v31;
    }

    if (v10 <= 3)
    {
      v33 = v26;
    }

    else
    {
      v33 = v28;
    }

    if (v10 <= 3)
    {
      v34 = v25;
    }

    else
    {
      v34 = v27;
    }

    v35 = objc_opt_self();
    v36 = a2;
    v37 = MEMORY[0x1CCA6CE70](v33, v34 | 0x8000000000000000);

    [v35 defaultWidthForInkType_];
    v39 = v38;

    v11 = v68;
  }

  else
  {
    v39 = *&a3;
    v40 = a2;
  }

  if (a6)
  {
    v41 = 0xD000000000000011;
    v42 = "eyBag.framework/MobileKeyBag";
    v43 = "com.apple.ink.watercolor";
    v44 = 0xD00000000000001DLL;
    if (v10 == 6)
    {
      v44 = 0xD000000000000014;
    }

    else
    {
      v43 = "com.apple.ink.crayon";
    }

    v45 = "com.apple.ink.monoline";
    v46 = 0xD000000000000019;
    if (v10 != 4)
    {
      v46 = 0xD000000000000018;
      v45 = "com.apple.ink.fountainpen";
    }

    if (v10 <= 5)
    {
      v44 = v46;
      v43 = v45;
    }

    v47 = "com.apple.ink.pencil";
    v48 = 0xD000000000000016;
    if (v10 == 2)
    {
      v48 = 0xD000000000000014;
    }

    else
    {
      v47 = "com.apple.ink.marker";
    }

    if (v10)
    {
      v41 = 0xD000000000000014;
      v42 = "com.apple.ink.pen";
    }

    if (v10 > 1)
    {
      v41 = v48;
      v42 = v47;
    }

    if (v10 <= 3)
    {
      v49 = v41;
    }

    else
    {
      v49 = v44;
    }

    if (v10 <= 3)
    {
      v50 = v42;
    }

    else
    {
      v50 = v43;
    }

    v51 = MEMORY[0x1CCA6CE70](v49, v50 | 0x8000000000000000);

    v52 = [objc_allocWithZone(PKInkingTool) initWithInkType:v51 color:v11 width:v39];
  }

  else
  {
    v53 = 0xD000000000000011;
    v54 = "eyBag.framework/MobileKeyBag";
    v55 = "com.apple.ink.watercolor";
    v56 = 0xD00000000000001DLL;
    if (v10 == 6)
    {
      v56 = 0xD000000000000014;
    }

    else
    {
      v55 = "com.apple.ink.crayon";
    }

    v57 = "com.apple.ink.monoline";
    v58 = 0xD000000000000019;
    if (v10 != 4)
    {
      v58 = 0xD000000000000018;
      v57 = "com.apple.ink.fountainpen";
    }

    if (v10 <= 5)
    {
      v56 = v58;
      v55 = v57;
    }

    v59 = "com.apple.ink.pencil";
    v60 = 0xD000000000000016;
    if (v10 == 2)
    {
      v60 = 0xD000000000000014;
    }

    else
    {
      v59 = "com.apple.ink.marker";
    }

    if (v10)
    {
      v53 = 0xD000000000000014;
      v54 = "com.apple.ink.pen";
    }

    if (v10 > 1)
    {
      v53 = v60;
      v54 = v59;
    }

    if (v10 <= 3)
    {
      v61 = v53;
    }

    else
    {
      v61 = v56;
    }

    if (v10 <= 3)
    {
      v62 = v54;
    }

    else
    {
      v62 = v55;
    }

    v51 = MEMORY[0x1CCA6CE70](v61, v62 | 0x8000000000000000);

    v52 = [objc_allocWithZone(PKInkingTool) initWithInkType:v51 color:v11 width:v39 azimuth:*&a5];
  }

  v63 = v52;

  v64 = v63;
  if (a8)
  {
    v65 = MEMORY[0x1CCA6CE70](a7, a8);
  }

  else
  {
    v65 = 0;
  }

  v66 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTool:v63 identifier:v65];

  return v66;
}

id PKToolPickerInkingItem.init(type:color:width:identifier:)(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v5 = 0xD000000000000014;
  v6 = *a1;
  v7 = "eyBag.framework/MobileKeyBag";
  v8 = "com.apple.ink.watercolor";
  v9 = 0xD00000000000001DLL;
  if (v6 == 6)
  {
    v9 = 0xD000000000000014;
  }

  else
  {
    v8 = "com.apple.ink.crayon";
  }

  v10 = "com.apple.ink.monoline";
  v11 = 0xD000000000000019;
  if (v6 != 4)
  {
    v11 = 0xD000000000000018;
    v10 = "com.apple.ink.fountainpen";
  }

  if (*a1 <= 5u)
  {
    v9 = v11;
    v8 = v10;
  }

  v12 = "com.apple.ink.pencil";
  v13 = 0xD000000000000016;
  if (v6 == 2)
  {
    v13 = 0xD000000000000014;
  }

  else
  {
    v12 = "com.apple.ink.marker";
  }

  if (*a1)
  {
    v7 = "com.apple.ink.pen";
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (*a1 > 1u)
  {
    v5 = v13;
    v7 = v12;
  }

  if (*a1 <= 3u)
  {
    v14 = v5;
  }

  else
  {
    v14 = v9;
  }

  if (v6 <= 3)
  {
    v15 = v7;
  }

  else
  {
    v15 = v8;
  }

  v20 = MEMORY[0x1CCA6CE70](v14, v15 | 0x8000000000000000);

  v21 = [objc_allocWithZone(PKInkingTool) initWithInkType:v20 color:a2 width:a5];

  if (a4)
  {
    v22 = MEMORY[0x1CCA6CE70](a3, a4);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTool:v21 identifier:v22];

  return v23;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?) -> () with result type UIImage?(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t PKDrawing.draw(in:frame:from:darkUserInterfaceStyle:)(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, char a12)
{
  *(v13 + 2472) = a12;
  *(v13 + 2208) = a9;
  *(v13 + 2200) = a8;
  *(v13 + 2192) = a7;
  *(v13 + 2184) = a6;
  *(v13 + 2176) = a5;
  *(v13 + 2168) = a4;
  *(v13 + 2160) = a3;
  *(v13 + 2152) = a2;
  *(v13 + 2144) = a11;
  *(v13 + 2216) = *v12;
  if (a1)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *(v13 + 2232) = v16;
  *(v13 + 2224) = v14;

  return MEMORY[0x1EEE6DFA0](PKDrawing.draw(in:frame:from:darkUserInterfaceStyle:), v14, v16);
}

uint64_t PKDrawing.draw(in:frame:from:darkUserInterfaceStyle:)()
{
  v135 = v0;
  v119 = *(v0 + 2168);
  v121 = *(v0 + 2176);
  v1 = *(v0 + 2160);
  v2 = *(v0 + 2152);
  v3 = *(v0 + 2144);
  CGContextSaveGState(v3);
  CGContextGetCTM(&v134, v3);
  a = v134.a;
  b = v134.b;
  c = v134.c;
  d = v134.d;
  tx = v134.tx;
  ty = v134.ty;
  *(v0 + 1064) = 0x3FF0000000000000;
  *(v0 + 1072) = 0u;
  *(v0 + 1088) = 0x3FF0000000000000;
  *(v0 + 1096) = 0u;
  CGContextSetCTM();
  v131 = a;
  *(v0 + 1880) = a;
  v128 = b;
  *(v0 + 1888) = b;
  v125 = d;
  v126 = c;
  *(v0 + 1896) = c;
  *(v0 + 1904) = d;
  v123 = ty;
  v124 = tx;
  *(v0 + 1912) = tx;
  *(v0 + 1920) = ty;
  v137.origin.x = v2;
  v137.origin.y = v1;
  v137.size.width = v119;
  v137.size.height = v121;
  v138 = CGRectApplyAffineTransform(v137, (v0 + 1880));
  x = v138.origin.x;
  y = v138.origin.y;
  width = v138.size.width;
  height = v138.size.height;
  Type = CGContextGetType();
  v15 = 0;
  v16 = 0;
  v17 = 0;
  if (Type != 1 && Type != 6)
  {
    v18 = CGBitmapContextGetColorSpace(*(v0 + 2144));
    if (v18)
    {
      v19 = v18;
      if (CGColorSpaceUsesExtendedRange(v18))
      {
        v17 = 1;
      }

      else
      {
        v17 = MEMORY[0x1CCA6DB40](v19);
      }

      if (*(v0 + 2472))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v17 = 0;
      if (*(v0 + 2472))
      {
LABEL_10:
        v15 = 0;
        goto LABEL_11;
      }
    }

    v20 = *(v0 + 2144);
    v15 = 1;
    CGContextSetInterpolationQuality(v20, kCGInterpolationNone);
    CGContextSetBlendMode(v20, kCGBlendModeCopy);
LABEL_11:
    v16 = 1;
  }

  *(v0 + 2475) = v17;
  *(v0 + 2474) = v16;
  *(v0 + 2473) = v15;
  *(v0 + 2024) = x;
  *(v0 + 2032) = y;
  *(v0 + 2040) = width;
  *(v0 + 2048) = height;
  v139.origin.x = x;
  v139.origin.y = y;
  v139.size.width = width;
  v139.size.height = height;
  v21 = CGRectGetWidth(v139);
  v22 = 512.0;
  if (v21 + v21 < 512.0)
  {
    v22 = 512.0;
    v23 = 512;
    do
    {
      v140.origin.x = x;
      v140.origin.y = y;
      v140.size.width = width;
      v140.size.height = height;
      v24 = CGRectGetHeight(v140);
      if (v24 + v24 >= v22)
      {
        break;
      }

      v23 /= 2;
      v22 = v23;
      v141.origin.x = x;
      v141.origin.y = y;
      v141.size.width = width;
      v141.size.height = height;
      v25 = CGRectGetWidth(v141);
    }

    while (v25 + v25 < v23);
  }

  *(v0 + 2240) = v22;
  v26 = *(v0 + 2216);
  v27 = *(v0 + 2472);
  v28 = *(v0 + 2208);
  v29 = *(v0 + 2200);
  v30 = *(v0 + 2192);
  v31 = *(v0 + 2184);
  v120 = *(v0 + 2168);
  v122 = *(v0 + 2176);
  v118 = *(v0 + 2160);
  v32 = *(v0 + 2152);
  v33 = *(v0 + 2144);
  v34 = [objc_allocWithZone(PKImageRenderer) initWithSize:0 scale:v15 renderQueue:v16 sixChannelBlending:v17 transparentBlending:v22 extendedDynamicRange:{v22, 1.0}];
  *(v0 + 2248) = v34;
  [v34 setInvertColors_];
  *(v0 + 2256) = floor(x);
  v134.a = v26;
  v35 = PKDrawing.strokes.getter();
  *(v0 + 2264) = v35;
  v142.origin.x = v31;
  v142.origin.y = v30;
  v142.size.width = v29;
  v142.size.height = v28;
  MinY = CGRectGetMinY(v142);
  v143.origin.x = v31;
  v143.origin.y = v30;
  v143.size.width = v29;
  v143.size.height = v28;
  MaxY = CGRectGetMaxY(v143);
  *(v0 + 1736) = 0x3FF0000000000000;
  *(v0 + 1744) = 0u;
  *(v0 + 1760) = 0x3FF0000000000000;
  *(v0 + 1768) = 0u;
  *(v0 + 1160) = 0x3FF0000000000000;
  *(v0 + 1168) = 0u;
  *(v0 + 1184) = xmmword_1C80196E0;
  *(v0 + 1200) = MinY + MaxY;
  CGAffineTransformConcat(&v134, (v0 + 1736), (v0 + 1160));
  v38 = v134.tx;
  v39 = v134.ty;
  v116 = *&v134.c;
  v117 = *&v134.a;
  specialized CGAffineTransform.init(convertFrom:to:percent:)((v0 + 1976), v31, v30, v29, v28, v32, v118, v120, v122, 1.0);
  v40 = *(v0 + 1976);
  v41 = *(v0 + 2016);
  *(v0 + 744) = v116;
  *(v0 + 728) = v117;
  *(v0 + 760) = v38;
  *(v0 + 768) = v39;
  *(v0 + 1544) = v40;
  *(v0 + 1552) = *(v0 + 1984);
  *(v0 + 1568) = *(v0 + 2000);
  *(v0 + 1584) = v41;
  CGAffineTransformConcat(&v134, (v0 + 728), (v0 + 1544));
  v42 = *&v134.c;
  v43 = *&v134.tx;
  *(v0 + 1496) = *&v134.a;
  *(v0 + 1512) = v42;
  *(v0 + 1528) = v43;
  *(v0 + 1112) = v131;
  *(v0 + 1120) = v128;
  *(v0 + 1128) = v126;
  *(v0 + 1136) = v125;
  *(v0 + 1144) = v124;
  *(v0 + 1152) = v123;
  CGAffineTransformConcat(&v134, (v0 + 1496), (v0 + 1112));
  v44 = v134.a;
  v45 = v134.b;
  *(v0 + 2272) = v134.a;
  *(v0 + 2280) = v45;
  v46 = v134.c;
  v47 = v134.d;
  *(v0 + 2288) = v134.c;
  *(v0 + 2296) = v47;
  v48 = v134.tx;
  v49 = v134.ty;
  *(v0 + 2304) = v134.tx;
  *(v0 + 2312) = v49;
  *(v0 + 1016) = v44;
  *(v0 + 1024) = v45;
  *(v0 + 1032) = v46;
  *(v0 + 1040) = v47;
  *(v0 + 1048) = v48;
  *(v0 + 1056) = v49;
  CGAffineTransformInvert(&v134, (v0 + 1016));
  v50 = *&v134.c;
  *(v0 + 2320) = *&v134.a;
  *(v0 + 2336) = v50;
  *(v0 + 2352) = *&v134.tx;
  Image = CGBitmapContextCreateImage(v33);
  *(v0 + 2368) = Image;
  if (Image)
  {
    if (v15)
    {
      v52 = Image;
      v53 = CGBitmapContextGetColorSpace(*(v0 + 2144));
      v54 = *MEMORY[0x1E695F9A8];
      if (v53)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13CIImageOptiona_yptGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C8018A40;
        *(inited + 32) = v54;
        type metadata accessor for CGColorSpaceRef(0);
        *(inited + 64) = v56;
        *(inited + 40) = v53;
        v57 = v52;
        v54 = v54;
        v58 = v53;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo13CIImageOptiona_ypTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        outlined destroy of (CIImageOption, Any)(inited + 32, &_sSo13CIImageOptiona_yptMd);
        v59 = objc_allocWithZone(MEMORY[0x1E695F658]);
        type metadata accessor for CIImageOption(0);
        lazy protocol witness table accessor for type CIImageOption and conformance CIImageOption(&lazy protocol witness table cache variable for type CIImageOption and conformance CIImageOption, type metadata accessor for CIImageOption);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v53 = [v59 initWithCGImage:v57 options:isa];
      }
    }

    else
    {
      v53 = 0;
      v54 = *MEMORY[0x1E695F9A8];
    }

    v61 = floor(y);
    *(v0 + 2376) = v53;
    *(v0 + 2384) = [objc_allocWithZone(type metadata accessor for SixChannelCompositeFilter()) init];
    v62 = *(v35 + 16);
    v63 = *(MEMORY[0x1E695F050] + 16);
    *(v0 + 2056) = *MEMORY[0x1E695F050];
    *(v0 + 2392) = v62;
    *(v0 + 2400) = OBJC_IVAR____TtC9PencilKitP33_45B1B8C2C17199CF2EF5F41F5CBE091B25SixChannelCompositeFilter_backgroundImage;
    *(v0 + 2408) = OBJC_IVAR____TtC9PencilKitP33_45B1B8C2C17199CF2EF5F41F5CBE091B25SixChannelCompositeFilter_addImage;
    *(v0 + 2416) = OBJC_IVAR____TtC9PencilKitP33_45B1B8C2C17199CF2EF5F41F5CBE091B25SixChannelCompositeFilter_multiplyImage;
    *(v0 + 2072) = v63;
    *(v0 + 2424) = v54;
    v64 = MEMORY[0x1E695F868];
    *(v0 + 2432) = *MEMORY[0x1E695F838];
    *(v0 + 2440) = *v64;
    *(v0 + 2464) = *MEMORY[0x1E695F8A0];
    *(v0 + 2468) = *MEMORY[0x1E695F920];
    do
    {
      *(v0 + 2448) = v61;
      v65 = *(v0 + 2256);
      while (2)
      {
        *(v0 + 2456) = v65;
        v66 = *(v0 + 2448);
        v67 = *(v0 + 2240);
        *(v0 + 2088) = v65;
        *(v0 + 2096) = v66;
        *(v0 + 2104) = v67;
        *(v0 + 2112) = v67;
        v68 = *(v0 + 2336);
        *(v0 + 968) = *(v0 + 2320);
        *(v0 + 984) = v68;
        *(v0 + 1000) = *(v0 + 2352);
        v69 = v65;
        *&v68 = v66;
        v70 = v67;
        v71 = v67;
        v144 = CGRectApplyAffineTransform(*(&v68 - 8), (v0 + 968));
        v72 = v144.origin.x;
        v73 = v144.origin.y;
        v74 = v144.size.width;
        v75 = v144.size.height;
        v76 = 0;
        while (v76 != *(v0 + 2392))
        {
          v77 = *(v0 + 2264);
          if (v76 >= *(v77 + 16))
          {
            __break(1u);
            goto LABEL_44;
          }

          v78 = v76 + 1;
          v79 = *(v77 + 8 * v76 + 32);
          [v79 renderBounds];
          v148.origin.x = v72;
          v148.origin.y = v73;
          v148.size.width = v74;
          v148.size.height = v75;
          v80 = CGRectIntersectsRect(v145, v148);

          v76 = v78;
          if (v80)
          {
            v88 = *(v0 + 2474);
            v129 = *(v0 + 2272);
            v132 = *(v0 + 2304);
            v127 = *(v0 + 2288);
            CGContextSaveGState(*(v0 + 2144));
            v146.origin.x = v65;
            v146.origin.y = v66;
            v146.size.width = v67;
            v146.size.height = v67;
            v89 = -CGRectGetMinX(v146);
            v147.origin.x = v65;
            v147.origin.y = v66;
            v147.size.width = v67;
            v147.size.height = v67;
            v90 = CGRectGetMinY(v147);
            CGAffineTransformMakeTranslation((v0 + 1448), v89, -v90);
            v91 = *(v0 + 1448);
            v92 = *(v0 + 1488);
            v93 = *(v0 + 1456);
            v94 = *(v0 + 1472);
            *(v0 + 824) = v129;
            *(v0 + 840) = v127;
            *(v0 + 856) = v132;
            *(v0 + 872) = v91;
            *(v0 + 880) = v93;
            *(v0 + 896) = v94;
            *(v0 + 912) = v92;
            CGAffineTransformConcat((v0 + 920), (v0 + 824), (v0 + 872));
            if (v88)
            {
              v95 = *(v0 + 920);
              v96 = *(v0 + 928);
              v97 = *(v0 + 936);
              v98 = *(v0 + 944);
              v99 = *(v0 + 952);
              v100 = *(v0 + 960);
              v101 = *(v0 + 2056);
              v102 = *(v0 + 2064);
              v130 = *(v0 + 2072);
              v133 = *(v0 + 2080);
              v103 = *(v0 + 2248);
              v104 = *(v0 + 2216);
              if (*(v0 + 2473) == 1 && (v105 = *(v0 + 2376)) != 0)
              {
                v106 = (v0 + 80);
                *(v0 + 80) = v0;
                *(v0 + 120) = v0 + 2120;
                *(v0 + 88) = PKDrawing.draw(in:frame:from:darkUserInterfaceStyle:);
                v107 = swift_continuation_init();
                *(v0 + 656) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CGImageRefaSg_ACts5NeverOGMd);
                *(v0 + 632) = v107;
                *(v0 + 600) = MEMORY[0x1E69E9820];
                *(v0 + 608) = 1107296256;
                *(v0 + 616) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CGImageRef?, @unowned CGImageRef?) -> () with result type (CGImageRef?, CGImageRef?);
                *(v0 + 624) = &block_descriptor_6;
                v108 = v104;
                v109 = v105;
                *(v0 + 1592) = v95;
                *(v0 + 1600) = v96;
                *(v0 + 1608) = v97;
                *(v0 + 1616) = v98;
                *(v0 + 1624) = v99;
                *(v0 + 1632) = v100;
                [v103 sixChannelCGRenderDrawing:v108 clippedToStrokeSpaceRect:v0 + 1592 scale:v0 + 600 strokeTransform:v101 completion:{v102, v130, v133, 1.0}];
              }

              else
              {
                v106 = (v0 + 144);
                *(v0 + 144) = v0;
                *(v0 + 184) = v0 + 2136;
                *(v0 + 152) = PKDrawing.draw(in:frame:from:darkUserInterfaceStyle:);
                v114 = swift_continuation_init();
                *(v0 + 592) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCSgs5NeverOGMd);
                *(v0 + 568) = v114;
                *(v0 + 536) = MEMORY[0x1E69E9820];
                *(v0 + 544) = 1107296256;
                *(v0 + 552) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?) -> () with result type UIImage?;
                *(v0 + 560) = &block_descriptor_3;
                v115 = v104;
                *(v0 + 1208) = v95;
                *(v0 + 1216) = v96;
                *(v0 + 1224) = v97;
                *(v0 + 1232) = v98;
                *(v0 + 1240) = v99;
                *(v0 + 1248) = v100;
                [v103 renderDrawing:v115 clippedToStrokeSpaceRect:v0 + 1208 scale:v0 + 536 strokeTransform:v101 completion:{v102, v130, v133, 1.0}];
              }

              Image = v106;
            }

            else
            {
              v110 = *(v0 + 2248);
              v111 = *(v0 + 2216);
              v112 = *(v0 + 2144);
              *(v0 + 16) = v0;
              *(v0 + 24) = PKDrawing.draw(in:frame:from:darkUserInterfaceStyle:);
              v113 = swift_continuation_init();
              *(v0 + 720) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
              *(v0 + 696) = v113;
              *(v0 + 664) = MEMORY[0x1E69E9820];
              *(v0 + 672) = 1107296256;
              *(v0 + 680) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
              *(v0 + 688) = &block_descriptor_3;
              [v110 sixChannelPDFRenderDrawing:v111 context:v112 clippedToStrokeSpaceRect:v0 + 664 scale:v65 completion:{v66, v67, v67, 1.0}];
              Image = (v0 + 16);
            }

            return MEMORY[0x1EEE6DEC8](Image);
          }
        }

        v65 = *(v0 + 2456) + *(v0 + 2240);
        if (CGRectGetMaxX(*(v0 + 2024)) > v65)
        {
          continue;
        }

        break;
      }

      v61 = *(v0 + 2448) + *(v0 + 2240);
    }

    while (CGRectGetMaxY(*(v0 + 2024)) > v61);
    v81 = *(v0 + 2384);
    v82 = *(v0 + 2376);
    v83 = *(v0 + 2368);
    v84 = *(v0 + 2248);
    v85 = *(v0 + 2144);

    CGContextRestoreGState(v85);
    v86 = *(v0 + 8);

    return v86();
  }

  else
  {
LABEL_44:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](Image);
  }
}

{
  v1 = *(*v0 + 2232);
  v2 = *(*v0 + 2224);

  return MEMORY[0x1EEE6DFA0](PKDrawing.draw(in:frame:from:darkUserInterfaceStyle:), v2, v1);
}

{

  CGContextRestoreGState(*(v0 + 2144));
LABEL_2:
  v1 = *(v0 + 2456) + *(v0 + 2240);
  MaxX = CGRectGetMaxX(*(v0 + 2024));
  v3 = *(v0 + 2448);
  if (MaxX > v1)
  {
    goto LABEL_5;
  }

  v3 = v3 + *(v0 + 2240);
  if (CGRectGetMaxY(*(v0 + 2024)) > v3)
  {
    *(v0 + 2448) = v3;
    v1 = *(v0 + 2256);
LABEL_5:
    *(v0 + 2456) = v1;
    v4 = *(v0 + 2240);
    *(v0 + 2088) = v1;
    *(v0 + 2096) = v3;
    *(v0 + 2104) = v4;
    *(v0 + 2112) = v4;
    v5 = *(v0 + 2336);
    *(v0 + 968) = *(v0 + 2320);
    *(v0 + 984) = v5;
    *(v0 + 1000) = *(v0 + 2352);
    v6 = v1;
    *&v5 = v3;
    v7 = v4;
    v8 = v4;
    v60 = CGRectApplyAffineTransform(*(&v5 - 8), (v0 + 968));
    x = v60.origin.x;
    y = v60.origin.y;
    width = v60.size.width;
    height = v60.size.height;
    v14 = 0;
    while (1)
    {
      if (v14 == *(v0 + 2392))
      {
        goto LABEL_2;
      }

      v15 = *(v0 + 2264);
      if (v14 >= *(v15 + 16))
      {
        break;
      }

      v16 = v14 + 1;
      v17 = *(v15 + 8 * v14 + 32);
      [v17 renderBounds];
      v64.origin.x = x;
      v64.origin.y = y;
      v64.size.width = width;
      v64.size.height = height;
      v18 = CGRectIntersectsRect(v61, v64);

      v14 = v16;
      if (v18)
      {
        v19 = *(v0 + 2474);
        v55 = *(v0 + 2272);
        v57 = *(v0 + 2304);
        v54 = *(v0 + 2288);
        CGContextSaveGState(*(v0 + 2144));
        v62.origin.x = v1;
        v62.origin.y = v3;
        v62.size.width = v4;
        v62.size.height = v4;
        v20 = -CGRectGetMinX(v62);
        v63.origin.x = v1;
        v63.origin.y = v3;
        v63.size.width = v4;
        v63.size.height = v4;
        MinY = CGRectGetMinY(v63);
        CGAffineTransformMakeTranslation((v0 + 1448), v20, -MinY);
        v22 = *(v0 + 1448);
        v23 = *(v0 + 1488);
        v24 = *(v0 + 1456);
        v25 = *(v0 + 1472);
        *(v0 + 824) = v55;
        *(v0 + 840) = v54;
        *(v0 + 856) = v57;
        *(v0 + 872) = v22;
        *(v0 + 880) = v24;
        *(v0 + 896) = v25;
        *(v0 + 912) = v23;
        CGAffineTransformConcat((v0 + 920), (v0 + 824), (v0 + 872));
        if (v19)
        {
          v26 = *(v0 + 920);
          v27 = *(v0 + 928);
          v28 = *(v0 + 936);
          v29 = *(v0 + 944);
          v30 = *(v0 + 952);
          v31 = *(v0 + 960);
          v32 = *(v0 + 2056);
          v33 = *(v0 + 2064);
          v56 = *(v0 + 2072);
          v58 = *(v0 + 2080);
          v34 = *(v0 + 2248);
          v35 = *(v0 + 2216);
          if (*(v0 + 2473) == 1 && (v36 = *(v0 + 2376)) != 0)
          {
            v37 = v0 + 80;
            *(v0 + 80) = v0;
            *(v0 + 120) = v0 + 2120;
            *(v0 + 88) = PKDrawing.draw(in:frame:from:darkUserInterfaceStyle:);
            v38 = swift_continuation_init();
            *(v0 + 656) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CGImageRefaSg_ACts5NeverOGMd);
            *(v0 + 632) = v38;
            *(v0 + 600) = MEMORY[0x1E69E9820];
            *(v0 + 608) = 1107296256;
            *(v0 + 616) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CGImageRef?, @unowned CGImageRef?) -> () with result type (CGImageRef?, CGImageRef?);
            *(v0 + 624) = &block_descriptor_6;
            v39 = v35;
            v40 = v36;
            *(v0 + 1592) = v26;
            *(v0 + 1600) = v27;
            *(v0 + 1608) = v28;
            *(v0 + 1616) = v29;
            *(v0 + 1624) = v30;
            *(v0 + 1632) = v31;
            [v34 sixChannelCGRenderDrawing:v39 clippedToStrokeSpaceRect:v0 + 1592 scale:v0 + 600 strokeTransform:v32 completion:{v33, v56, v58, 1.0, v54}];
          }

          else
          {
            v37 = v0 + 144;
            *(v0 + 144) = v0;
            *(v0 + 184) = v0 + 2136;
            *(v0 + 152) = PKDrawing.draw(in:frame:from:darkUserInterfaceStyle:);
            v45 = swift_continuation_init();
            *(v0 + 592) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCSgs5NeverOGMd);
            *(v0 + 568) = v45;
            *(v0 + 536) = MEMORY[0x1E69E9820];
            *(v0 + 544) = 1107296256;
            *(v0 + 552) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?) -> () with result type UIImage?;
            *(v0 + 560) = &block_descriptor_3;
            v46 = v35;
            *(v0 + 1208) = v26;
            *(v0 + 1216) = v27;
            *(v0 + 1224) = v28;
            *(v0 + 1232) = v29;
            *(v0 + 1240) = v30;
            *(v0 + 1248) = v31;
            [v34 renderDrawing:v46 clippedToStrokeSpaceRect:v0 + 1208 scale:v0 + 536 strokeTransform:v32 completion:{v33, v56, v58, 1.0, v54}];
          }

          v9 = v37;
        }

        else
        {
          v41 = *(v0 + 2248);
          v42 = *(v0 + 2216);
          v43 = *(v0 + 2144);
          *(v0 + 16) = v0;
          *(v0 + 24) = PKDrawing.draw(in:frame:from:darkUserInterfaceStyle:);
          v44 = swift_continuation_init();
          *(v0 + 720) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
          *(v0 + 696) = v44;
          *(v0 + 664) = MEMORY[0x1E69E9820];
          *(v0 + 672) = 1107296256;
          *(v0 + 680) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
          *(v0 + 688) = &block_descriptor_3;
          [v41 sixChannelPDFRenderDrawing:v42 context:v43 clippedToStrokeSpaceRect:v0 + 664 scale:v1 completion:{v3, v4, v4, 1.0}];
          v9 = v0 + 16;
        }

        return MEMORY[0x1EEE6DEC8](v9);
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DEC8](v9);
  }

  v47 = *(v0 + 2384);
  v48 = *(v0 + 2376);
  v49 = *(v0 + 2368);
  v50 = *(v0 + 2248);
  v51 = *(v0 + 2144);

  CGContextRestoreGState(v51);
  v52 = *(v0 + 8);

  return v52();
}

{
  v1 = *(*v0 + 2232);
  v2 = *(*v0 + 2224);

  return MEMORY[0x1EEE6DFA0](PKDrawing.draw(in:frame:from:darkUserInterfaceStyle:), v2, v1);
}

{
  v1 = *(v0 + 2088);
  v2 = *(v0 + 2096);
  v3 = *(v0 + 2104);
  v4 = *(v0 + 2112);
  v5 = *(v0 + 2400);
  v6 = *(v0 + 2384);
  v7 = *(v0 + 2376);
  v8 = *(v0 + 2120);
  v149 = *(v0 + 2128);

  v9 = v7;
  v10 = [v9 imageByClampingToExtent];
  v11 = [v10 imageByCroppingToRect_];

  v154.origin.x = v1;
  v154.origin.y = v2;
  v154.size.width = v3;
  v154.size.height = v4;
  v12 = -CGRectGetMinX(v154);
  v155.origin.x = v1;
  v155.origin.y = v2;
  v155.size.width = v3;
  v155.size.height = v4;
  MinY = CGRectGetMinY(v155);
  CGAffineTransformMakeTranslation((v0 + 1640), v12, -MinY);
  v14 = *(v0 + 1680);
  v15 = *(v0 + 1648);
  v16 = *(v0 + 1664);
  *(v0 + 1688) = *(v0 + 1640);
  *(v0 + 1696) = v15;
  *(v0 + 1712) = v16;
  *(v0 + 1728) = v14;
  v17 = [v11 imageByApplyingTransform_];

  v18 = *(v6 + v5);
  *(v6 + v5) = v17;
  v145 = v17;

  if (!v8)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v19);
  }

  v20 = *(v0 + 2424);
  v21 = *(v0 + 2408);
  v22 = *(v0 + 2384);
  v23 = *(v0 + 2240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13CIImageOptiona_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C8018A40;
  *(inited + 32) = v20;
  v25 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  v26 = v20;
  v27 = v8;
  v28 = [v25 init];
  v29 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull);
  *(inited + 64) = v29;
  *(inited + 40) = v28;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo13CIImageOptiona_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CIImageOption, Any)(inited + 32, &_sSo13CIImageOptiona_yptMd);
  v30 = objc_allocWithZone(MEMORY[0x1E695F658]);
  type metadata accessor for CIImageOption(0);
  lazy protocol witness table accessor for type CIImageOption and conformance CIImageOption(&lazy protocol witness table cache variable for type CIImageOption and conformance CIImageOption, type metadata accessor for CIImageOption);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v32 = [v30 initWithCGImage:v27 options:isa];

  v143 = v27;
  CGAffineTransformMake((v0 + 1784), 1.0, 0.0, 0.0, -1.0, 0.0, v23);
  v33 = *(v0 + 1824);
  v34 = *(v0 + 1792);
  v35 = *(v0 + 1808);
  *(v0 + 1832) = *(v0 + 1784);
  *(v0 + 1840) = v34;
  *(v0 + 1856) = v35;
  *(v0 + 1872) = v33;
  v36 = [v32 imageByApplyingTransform_];

  v37 = *(v22 + v21);
  *(v22 + v21) = v36;

  if (!v149)
  {
    goto LABEL_33;
  }

  v38 = *(v0 + 2432);
  v39 = *(v0 + 2424);
  v40 = *(v0 + 2416);
  v141 = *(v0 + 2384);
  v142 = *(v0 + 2440);
  v41 = *(v0 + 2240);
  v42 = swift_initStackObject();
  *(v42 + 16) = xmmword_1C8018A40;
  *(v42 + 32) = v39;
  v43 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  v44 = v149;
  v45 = [v43 init];
  *(v42 + 64) = v29;
  *(v42 + 40) = v45;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo13CIImageOptiona_ypTt0g5Tf4g_n(v42);
  swift_setDeallocating();
  outlined destroy of (CIImageOption, Any)(v42 + 32, &_sSo13CIImageOptiona_yptMd);
  v46 = objc_allocWithZone(MEMORY[0x1E695F658]);
  v47 = Dictionary._bridgeToObjectiveC()().super.isa;

  v48 = v46;
  v49 = v44;
  v50 = [v48 initWithCGImage:v44 options:v47];

  CGAffineTransformMake((v0 + 1928), 1.0, 0.0, 0.0, -1.0, 0.0, v41);
  v51 = *(v0 + 1968);
  v52 = *(v0 + 1936);
  v53 = *(v0 + 1952);
  *(v0 + 776) = *(v0 + 1928);
  *(v0 + 784) = v52;
  *(v0 + 800) = v53;
  *(v0 + 816) = v51;
  v54 = [v50 imageByApplyingTransform_];

  v55 = *&v141[v40];
  *&v141[v40] = v54;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo15CIContextOptiona_yptGMd);
  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_1C80196F0;
  *(v56 + 32) = v38;
  v57 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  v58 = v38;
  *(v56 + 40) = [v57 init];
  *(v56 + 64) = v29;
  *(v56 + 72) = v142;
  v59 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  v60 = v142;
  v61 = [v59 init];
  *(v56 + 104) = v29;
  *(v56 + 80) = v61;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo15CIContextOptiona_ypTt0g5Tf4g_n(v56);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CIContextOptiona_yptMd);
  swift_arrayDestroy();
  v62 = objc_allocWithZone(MEMORY[0x1E695F620]);
  type metadata accessor for CIContextOption(0);
  lazy protocol witness table accessor for type CIImageOption and conformance CIImageOption(&lazy protocol witness table cache variable for type CIContextOption and conformance CIContextOption, type metadata accessor for CIContextOption);
  v63 = Dictionary._bridgeToObjectiveC()().super.isa;

  v64 = [v62 initWithOptions_];

  v65 = [v141 outputImage];
  if (!v65)
  {
    v81 = *(v0 + 2384);
    v82 = *(v0 + 2376);
    v83 = *(v0 + 2368);
    v84 = *(v0 + 2248);

    v85 = v82;
    goto LABEL_9;
  }

  v66 = v65;
  v67 = (v0 + 2468);
  v68 = *(v0 + 2144);
  if (!*(v0 + 2475))
  {
    v67 = (v0 + 2464);
  }

  v69 = *v67;
  [v65 extent];
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = CGBitmapContextGetColorSpace(v68);
  v79 = [v64 createCGImage:v66 fromRect:v69 format:v78 colorSpace:{v71, v73, v75, v77}];

  if (v79)
  {
    v156.origin.x = *(v0 + 2456);
    v156.origin.y = *(v0 + 2448);
    v80 = *(v0 + 2376);
    v156.size.width = *(v0 + 2240);
    v156.size.height = v156.size.width;
    CGContextRef.draw(_:in:byTiling:)(v79, v156, 0);
  }

  else
  {
    v88 = *(v0 + 2376);

    v64 = v88;
  }

  CGContextRestoreGState(*(v0 + 2144));
  while (1)
  {
    v89 = *(v0 + 2456) + *(v0 + 2240);
    MaxX = CGRectGetMaxX(*(v0 + 2024));
    v91 = *(v0 + 2448);
    if (MaxX <= v89)
    {
      break;
    }

LABEL_17:
    *(v0 + 2456) = v89;
    v92 = *(v0 + 2240);
    *(v0 + 2088) = v89;
    *(v0 + 2096) = v91;
    *(v0 + 2104) = v92;
    *(v0 + 2112) = v92;
    v93 = *(v0 + 2336);
    *(v0 + 968) = *(v0 + 2320);
    *(v0 + 984) = v93;
    *(v0 + 1000) = *(v0 + 2352);
    v94 = v89;
    *&v93 = v91;
    v95 = v92;
    v96 = v92;
    v157 = CGRectApplyAffineTransform(*(&v93 - 8), (v0 + 968));
    x = v157.origin.x;
    y = v157.origin.y;
    width = v157.size.width;
    height = v157.size.height;
    v101 = 0;
    while (v101 != *(v0 + 2392))
    {
      v102 = *(v0 + 2264);
      if (v101 >= *(v102 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      v103 = v101 + 1;
      v104 = *(v102 + 8 * v101 + 32);
      [v104 renderBounds];
      v161.origin.x = x;
      v161.origin.y = y;
      v161.size.width = width;
      v161.size.height = height;
      v105 = CGRectIntersectsRect(v158, v161);

      v101 = v103;
      if (v105)
      {
        v106 = *(v0 + 2474);
        v146 = *(v0 + 2272);
        v150 = *(v0 + 2304);
        v144 = *(v0 + 2288);
        CGContextSaveGState(*(v0 + 2144));
        v159.origin.x = v89;
        v159.origin.y = v91;
        v159.size.width = v92;
        v159.size.height = v92;
        v107 = -CGRectGetMinX(v159);
        v160.origin.x = v89;
        v160.origin.y = v91;
        v160.size.width = v92;
        v160.size.height = v92;
        v108 = CGRectGetMinY(v160);
        CGAffineTransformMakeTranslation((v0 + 1448), v107, -v108);
        v109 = *(v0 + 1448);
        v110 = *(v0 + 1488);
        v111 = *(v0 + 1456);
        v112 = *(v0 + 1472);
        *(v0 + 824) = v146;
        *(v0 + 840) = v144;
        *(v0 + 856) = v150;
        *(v0 + 872) = v109;
        *(v0 + 880) = v111;
        *(v0 + 896) = v112;
        *(v0 + 912) = v110;
        CGAffineTransformConcat((v0 + 920), (v0 + 824), (v0 + 872));
        if (v106)
        {
          v113 = *(v0 + 920);
          v114 = *(v0 + 928);
          v115 = *(v0 + 936);
          v116 = *(v0 + 944);
          v117 = *(v0 + 952);
          v118 = *(v0 + 960);
          if (*(v0 + 2473) == 1 && (v119 = *(v0 + 2376)) != 0)
          {
            v120 = v0 + 80;
            v151 = *(v0 + 2056);
            v147 = *(v0 + 2064);
            v121 = *(v0 + 2072);
            v122 = *(v0 + 2080);
            v123 = *(v0 + 2248);
            v124 = *(v0 + 2216);
            *(v0 + 80) = v0;
            *(v0 + 120) = v0 + 2120;
            *(v0 + 88) = PKDrawing.draw(in:frame:from:darkUserInterfaceStyle:);
            v125 = swift_continuation_init();
            *(v0 + 656) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CGImageRefaSg_ACts5NeverOGMd);
            *(v0 + 632) = v125;
            *(v0 + 600) = MEMORY[0x1E69E9820];
            *(v0 + 608) = 1107296256;
            *(v0 + 616) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CGImageRef?, @unowned CGImageRef?) -> () with result type (CGImageRef?, CGImageRef?);
            *(v0 + 624) = &block_descriptor_6;
            v126 = v124;
            v127 = v119;
            *(v0 + 1592) = v113;
            *(v0 + 1600) = v114;
            *(v0 + 1608) = v115;
            *(v0 + 1616) = v116;
            *(v0 + 1624) = v117;
            *(v0 + 1632) = v118;
            [v123 sixChannelCGRenderDrawing:v126 clippedToStrokeSpaceRect:v0 + 1592 scale:v0 + 600 strokeTransform:v151 completion:{v147, v121, v122, 1.0}];
          }

          else
          {
            v120 = v0 + 144;
            v152 = *(v0 + 2056);
            v148 = *(v0 + 2064);
            v132 = *(v0 + 2072);
            v133 = *(v0 + 2080);
            v134 = *(v0 + 2248);
            v135 = *(v0 + 2216);
            *(v0 + 144) = v0;
            *(v0 + 184) = v0 + 2136;
            *(v0 + 152) = PKDrawing.draw(in:frame:from:darkUserInterfaceStyle:);
            v136 = swift_continuation_init();
            *(v0 + 592) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCSgs5NeverOGMd);
            *(v0 + 568) = v136;
            *(v0 + 536) = MEMORY[0x1E69E9820];
            *(v0 + 544) = 1107296256;
            *(v0 + 552) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?) -> () with result type UIImage?;
            *(v0 + 560) = &block_descriptor_3;
            v137 = v135;
            *(v0 + 1208) = v113;
            *(v0 + 1216) = v114;
            *(v0 + 1224) = v115;
            *(v0 + 1232) = v116;
            *(v0 + 1240) = v117;
            *(v0 + 1248) = v118;
            [v134 renderDrawing:v137 clippedToStrokeSpaceRect:v0 + 1208 scale:v0 + 536 strokeTransform:v152 completion:{v148, v132, v133, 1.0}];
          }
        }

        else
        {
          v120 = v0 + 16;
          v128 = *(v0 + 2248);
          v129 = *(v0 + 2216);
          v130 = *(v0 + 2144);
          *(v0 + 16) = v0;
          *(v0 + 24) = PKDrawing.draw(in:frame:from:darkUserInterfaceStyle:);
          v131 = swift_continuation_init();
          *(v0 + 720) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
          *(v0 + 696) = v131;
          *(v0 + 664) = MEMORY[0x1E69E9820];
          *(v0 + 672) = 1107296256;
          *(v0 + 680) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
          *(v0 + 688) = &block_descriptor_3;
          [v128 sixChannelPDFRenderDrawing:v129 context:v130 clippedToStrokeSpaceRect:v0 + 664 scale:v89 completion:{v91, v92, v92, 1.0}];
        }

        v19 = v120;

        return MEMORY[0x1EEE6DEC8](v19);
      }
    }
  }

  v91 = v91 + *(v0 + 2240);
  if (CGRectGetMaxY(*(v0 + 2024)) > v91)
  {
    *(v0 + 2448) = v91;
    v89 = *(v0 + 2256);
    goto LABEL_17;
  }

  v85 = *(v0 + 2384);
  v138 = *(v0 + 2376);
  v82 = *(v0 + 2368);
  v139 = *(v0 + 2248);
  v140 = *(v0 + 2144);

  CGContextRestoreGState(v140);
LABEL_9:

  v86 = *(v0 + 8);

  return v86();
}

{
  v1 = *(*v0 + 2232);
  v2 = *(*v0 + 2224);

  return MEMORY[0x1EEE6DFA0](PKDrawing.draw(in:frame:from:darkUserInterfaceStyle:), v2, v1);
}

{
  v1 = *(v0 + 2136);

  if (v1)
  {
    v2 = [(CGImage *)v1 CGImage];
    if (v2)
    {
      v3 = v2;
      v4 = *(v0 + 2088);
      v5 = *(v0 + 2096);
      v6 = *(v0 + 2104);
      v7 = *(v0 + 2112);
      v8 = *(v0 + 2456);
      v9 = *(v0 + 2448);
      v10 = *(v0 + 2240);
      v11 = *(v0 + 2144);
      CGContextSaveGState(v11);
      v82.origin.x = v4;
      v82.origin.y = v5;
      v82.size.width = v6;
      v82.size.height = v7;
      MinY = CGRectGetMinY(v82);
      v83.origin.x = v4;
      v83.origin.y = v5;
      v83.size.width = v6;
      v83.size.height = v7;
      MaxY = CGRectGetMaxY(v83);
      *(v0 + 1256) = 0x3FF0000000000000;
      *(v0 + 1264) = 0u;
      *(v0 + 1280) = 0x3FF0000000000000;
      *(v0 + 1288) = 0u;
      *(v0 + 1304) = 0x3FF0000000000000;
      *(v0 + 1312) = 0u;
      *(v0 + 1328) = xmmword_1C80196E0;
      *(v0 + 1344) = MinY + MaxY;
      CGAffineTransformConcat((v0 + 1352), (v0 + 1256), (v0 + 1304));
      v14 = *(v0 + 1392);
      v15 = *(v0 + 1360);
      v16 = *(v0 + 1376);
      *(v0 + 1400) = *(v0 + 1352);
      *(v0 + 1408) = v15;
      *(v0 + 1424) = v16;
      *(v0 + 1440) = v14;
      CGContextConcatCTM(v11, (v0 + 1400));
      v84.origin.x = v8;
      v84.origin.y = v9;
      v84.size.width = v10;
      v84.size.height = v10;
      CGContextRef.draw(_:in:byTiling:)(v3, v84, 0);
      CGContextRestoreGState(v11);

      v1 = v3;
    }
  }

  CGContextRestoreGState(*(v0 + 2144));
LABEL_6:
  v17 = *(v0 + 2456) + *(v0 + 2240);
  MaxX = CGRectGetMaxX(*(v0 + 2024));
  v19 = *(v0 + 2448);
  if (MaxX > v17)
  {
    goto LABEL_9;
  }

  v19 = v19 + *(v0 + 2240);
  if (CGRectGetMaxY(*(v0 + 2024)) > v19)
  {
    *(v0 + 2448) = v19;
    v17 = *(v0 + 2256);
LABEL_9:
    *(v0 + 2456) = v17;
    v20 = *(v0 + 2240);
    *(v0 + 2088) = v17;
    *(v0 + 2096) = v19;
    *(v0 + 2104) = v20;
    *(v0 + 2112) = v20;
    v21 = *(v0 + 2336);
    *(v0 + 968) = *(v0 + 2320);
    *(v0 + 984) = v21;
    *(v0 + 1000) = *(v0 + 2352);
    v22 = v17;
    *&v21 = v19;
    v23 = v20;
    v24 = v20;
    v85 = CGRectApplyAffineTransform(*(&v21 - 8), (v0 + 968));
    x = v85.origin.x;
    y = v85.origin.y;
    width = v85.size.width;
    height = v85.size.height;
    v30 = 0;
    while (1)
    {
      if (v30 == *(v0 + 2392))
      {
        goto LABEL_6;
      }

      v31 = *(v0 + 2264);
      if (v30 >= *(v31 + 16))
      {
        break;
      }

      v32 = v30 + 1;
      v33 = *(v31 + 8 * v30 + 32);
      [v33 renderBounds];
      v89.origin.x = x;
      v89.origin.y = y;
      v89.size.width = width;
      v89.size.height = height;
      v34 = CGRectIntersectsRect(v86, v89);

      v30 = v32;
      if (v34)
      {
        v35 = *(v0 + 2474);
        v75 = *(v0 + 2272);
        v78 = *(v0 + 2304);
        v74 = *(v0 + 2288);
        CGContextSaveGState(*(v0 + 2144));
        v87.origin.x = v17;
        v87.origin.y = v19;
        v87.size.width = v20;
        v87.size.height = v20;
        v36 = -CGRectGetMinX(v87);
        v88.origin.x = v17;
        v88.origin.y = v19;
        v88.size.width = v20;
        v88.size.height = v20;
        v37 = CGRectGetMinY(v88);
        CGAffineTransformMakeTranslation((v0 + 1448), v36, -v37);
        v38 = *(v0 + 1448);
        v39 = *(v0 + 1488);
        v40 = *(v0 + 1456);
        v41 = *(v0 + 1472);
        *(v0 + 824) = v75;
        *(v0 + 840) = v74;
        *(v0 + 856) = v78;
        *(v0 + 872) = v38;
        *(v0 + 880) = v40;
        *(v0 + 896) = v41;
        *(v0 + 912) = v39;
        CGAffineTransformConcat((v0 + 920), (v0 + 824), (v0 + 872));
        if (v35)
        {
          v42 = *(v0 + 920);
          v43 = *(v0 + 928);
          v44 = *(v0 + 936);
          v45 = *(v0 + 944);
          v46 = *(v0 + 952);
          v47 = *(v0 + 960);
          if (*(v0 + 2473) == 1 && (v48 = *(v0 + 2376)) != 0)
          {
            v49 = v0 + 80;
            v79 = *(v0 + 2056);
            v76 = *(v0 + 2064);
            v50 = *(v0 + 2072);
            v51 = *(v0 + 2080);
            v52 = *(v0 + 2248);
            v53 = *(v0 + 2216);
            *(v0 + 80) = v0;
            *(v0 + 120) = v0 + 2120;
            *(v0 + 88) = PKDrawing.draw(in:frame:from:darkUserInterfaceStyle:);
            v54 = swift_continuation_init();
            *(v0 + 656) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CGImageRefaSg_ACts5NeverOGMd);
            *(v0 + 632) = v54;
            *(v0 + 600) = MEMORY[0x1E69E9820];
            *(v0 + 608) = 1107296256;
            *(v0 + 616) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CGImageRef?, @unowned CGImageRef?) -> () with result type (CGImageRef?, CGImageRef?);
            *(v0 + 624) = &block_descriptor_6;
            v55 = v53;
            v56 = v48;
            *(v0 + 1592) = v42;
            *(v0 + 1600) = v43;
            *(v0 + 1608) = v44;
            *(v0 + 1616) = v45;
            *(v0 + 1624) = v46;
            *(v0 + 1632) = v47;
            [v52 sixChannelCGRenderDrawing:v55 clippedToStrokeSpaceRect:v0 + 1592 scale:v0 + 600 strokeTransform:v79 completion:{v76, v50, v51, 1.0, v74}];
          }

          else
          {
            v49 = v0 + 144;
            v80 = *(v0 + 2056);
            v77 = *(v0 + 2064);
            v61 = *(v0 + 2072);
            v62 = *(v0 + 2080);
            v63 = *(v0 + 2248);
            v64 = *(v0 + 2216);
            *(v0 + 144) = v0;
            *(v0 + 184) = v0 + 2136;
            *(v0 + 152) = PKDrawing.draw(in:frame:from:darkUserInterfaceStyle:);
            v65 = swift_continuation_init();
            *(v0 + 592) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCSgs5NeverOGMd);
            *(v0 + 568) = v65;
            *(v0 + 536) = MEMORY[0x1E69E9820];
            *(v0 + 544) = 1107296256;
            *(v0 + 552) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?) -> () with result type UIImage?;
            *(v0 + 560) = &block_descriptor_3;
            v66 = v64;
            *(v0 + 1208) = v42;
            *(v0 + 1216) = v43;
            *(v0 + 1224) = v44;
            *(v0 + 1232) = v45;
            *(v0 + 1240) = v46;
            *(v0 + 1248) = v47;
            [v63 renderDrawing:v66 clippedToStrokeSpaceRect:v0 + 1208 scale:v0 + 536 strokeTransform:v80 completion:{v77, v61, v62, 1.0, v74}];
          }
        }

        else
        {
          v49 = v0 + 16;
          v57 = *(v0 + 2248);
          v58 = *(v0 + 2216);
          v59 = *(v0 + 2144);
          *(v0 + 16) = v0;
          *(v0 + 24) = PKDrawing.draw(in:frame:from:darkUserInterfaceStyle:);
          v60 = swift_continuation_init();
          *(v0 + 720) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
          *(v0 + 696) = v60;
          *(v0 + 664) = MEMORY[0x1E69E9820];
          *(v0 + 672) = 1107296256;
          *(v0 + 680) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
          *(v0 + 688) = &block_descriptor_3;
          [v57 sixChannelPDFRenderDrawing:v58 context:v59 clippedToStrokeSpaceRect:v0 + 664 scale:v17 completion:{v19, v20, v20, 1.0}];
        }

        v25 = v49;

        return MEMORY[0x1EEE6DEC8](v25);
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DEC8](v25);
  }

  v67 = *(v0 + 2384);
  v68 = *(v0 + 2376);
  v69 = *(v0 + 2368);
  v70 = *(v0 + 2248);
  v71 = *(v0 + 2144);

  CGContextRestoreGState(v71);
  v72 = *(v0 + 8);

  return v72();
}