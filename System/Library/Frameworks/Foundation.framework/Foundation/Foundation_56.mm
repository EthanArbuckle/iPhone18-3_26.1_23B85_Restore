uint64_t *protocol witness for BidirectionalCollection.distance(from:to:) in conformance AttributedString._InternalRunsSlice(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v7 = *(a1 + 32);
  v4 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v4;
  v9 = *(a2 + 32);
  return specialized BidirectionalCollection._distance(from:to:)(v6, v8, *v2, *(v2 + 8), *(v2 + 16));
}

double protocol witness for Collection.index(after:) in conformance AttributedString._InternalRunsSlice@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  AttributedString._InternalRunsSlice.index(after:)(a1, *v2, *(v2 + 8), *(v2 + 16), v6);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

unint64_t *protocol witness for Collection.formIndex(after:) in conformance AttributedString._InternalRunsSlice(unint64_t *result)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = *result;
  v6 = result[1];
  v8 = result[2];
  v7 = result[3];
  v9 = result[4];
  v10 = v3[9];
  v11 = v3[10];
  v12 = v3[11];
  v13 = v3[12];
  v29 = v4;
  v30 = *result;
  v31 = v6;
  v32 = v8;
  v27 = v2;
  v28 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  swift_unknownObjectRetain();
  v15 = specialized Rope.subscript.getter(v5, v6, v8, v10, v11, v12, v13);

  v16 = __OFADD__(v9, v15);
  v17 = v9 + v15;
  if (v16)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  specialized Rope.formIndex(after:)(&v30, v10, v11, v12, v13);
  result = swift_unknownObjectRelease();
  if (v17 < v29)
  {
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v21 = v28;
LABEL_15:
    *v14 = v18;
    v14[1] = v19;
    v14[2] = v20;
    v14[3] = v21;
    v14[4] = v17;
    return result;
  }

  v22 = v3[9];
  v21 = v3[10];
  v17 = v3[11];
  v18 = v3[12];
  swift_unknownObjectRetain();
  if (v27 != v29)
  {
    result = specialized Rope._endPath.getter(v22);
    v19 = result;
    if (v22)
    {
      result = swift_unknownObjectRelease();
      v20 = 0;
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v17 = 0;
    }

    goto LABEL_15;
  }

  result = specialized Rope.find<A>(at:in:preferEnd:)(v27, 0, v22, v21, v17, v18);
  if (result != v18)
  {
    goto LABEL_18;
  }

  v19 = v23;
  v20 = v24;
  v26 = v25;
  if (v22)
  {
    v21 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v18, v23, v24, v22, v21);
    result = swift_unknownObjectRelease();
    v17 = v27 - v26;
    if (!__OFSUB__(v27, v26))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v21 = 0;
    v17 = v27 - v25;
    if (!__OFSUB__(v27, v25))
    {
      goto LABEL_15;
    }
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance AttributedString._InternalRunsSlice@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = *v1;
  v16 = *(v1 + 8);
  *(a1 + 8) = v16;
  v4 = v3[9];
  v5 = v3[10];
  v7 = v3[11];
  v6 = v3[12];
  swift_unknownObjectRetain();

  result = specialized Rope.find<A>(at:in:preferEnd:)(v16, 0, v4, v5, v7, v6);
  if (result == v6)
  {
    v12 = v9;
    v13 = v10;
    v14 = v11;
    if (v4)
    {
      v15 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v6, v9, v10, v4, v5);
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0;
    }

    if (!__OFSUB__(v16, v14))
    {
      *(a1 + 24) = v6;
      *(a1 + 32) = v12;
      *(a1 + 40) = v13;
      *(a1 + 48) = v15;
      *(a1 + 56) = v16 - v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance AttributedString._InternalRunsSlice()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = specialized Collection.count.getter(*v0, v2, v3);
  if (!v4)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation16AttributedStringV12_InternalRunV_Tt1g5(v4, 0);

  v7 = specialized Sequence._copySequenceContents(initializing:)(v9, v6 + 4, v5, v1, v2, v3);
  result = outlined destroy of TermOfAddress?(v9, &_ss16IndexingIteratorVy10Foundation16AttributedStringV18_InternalRunsSliceVGMd);
  if (v7 == v5)
  {

    return v6;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString._InternalRunsSlice and conformance AttributedString._InternalRunsSlice()
{
  result = lazy protocol witness table cache variable for type AttributedString._InternalRunsSlice and conformance AttributedString._InternalRunsSlice;
  if (!lazy protocol witness table cache variable for type AttributedString._InternalRunsSlice and conformance AttributedString._InternalRunsSlice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString._InternalRunsSlice and conformance AttributedString._InternalRunsSlice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString._InternalRunsSlice and conformance AttributedString._InternalRunsSlice;
  if (!lazy protocol witness table cache variable for type AttributedString._InternalRunsSlice and conformance AttributedString._InternalRunsSlice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString._InternalRunsSlice and conformance AttributedString._InternalRunsSlice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString._InternalRunsSlice and conformance AttributedString._InternalRunsSlice;
  if (!lazy protocol witness table cache variable for type AttributedString._InternalRunsSlice and conformance AttributedString._InternalRunsSlice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString._InternalRunsSlice and conformance AttributedString._InternalRunsSlice);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<AttributedString._InternalRunsSlice> and conformance <> DefaultIndices<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    lazy protocol witness table accessor for type AttributedString._InternalRunsSlice and conformance AttributedString._InternalRunsSlice();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized Rope._UnsafeHandle.findSlot<A>(at:in:preferEnd:)(uint64_t result, int a2, _WORD *a3, uint64_t *a4)
{
  v4 = result;
  v5 = *a3;
  if (*a3)
  {
    result = 0;
    v6 = ~a2 & 1;
    while (1)
    {
      v7 = *a4;
      a4 += 3;
      v8 = v4 - v7;
      if (__OFSUB__(v4, v7))
      {
        break;
      }

      if (__OFADD__(v8, v6))
      {
        goto LABEL_12;
      }

      if (v8 + v6 < 1)
      {
        return result;
      }

      ++result;
      v4 = v8;
      if (v5 == result)
      {
        v4 = v8;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_8:
    if (!v4)
    {
      return v5 - (a2 & 1);
    }
  }

  __break(1u);
  return result;
}

int64_t specialized Rope.find<A>(at:in:preferEnd:)(int64_t result, uint64_t a2, unint64_t a3, int64_t a4, uint64_t a5, unint64_t a6)
{
  if (a3)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  if (result < 0 || (v7 = result, v6 < result))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v9 = a3;
  if (!a3 || (v10 = (a3 + 16), !*(a3 + 16)) || !((a4 > result) | a2 & 1))
  {
LABEL_26:
    specialized Rope._endPath.getter(v9);
    return a6;
  }

  v12 = *(a3 + 18);
  result = swift_unknownObjectRetain();
  if (v12)
  {
    v21 = a6;
    v13 = ~a2 & 1;
    v14 = v12;
    a6 = v9;
    while (1)
    {
      v15 = *v10;
      if (*v10)
      {
        break;
      }

      v18 = 0;
LABEL_20:
      if (v7)
      {
        goto LABEL_33;
      }

      v16 = v15 + (a2 << 63 >> 63);
      if (a2)
      {
        v7 = v18;
      }

      else
      {
        v7 = 0;
      }

      if (v16 < 0)
      {
        __break(1u);
        goto LABEL_26;
      }

LABEL_11:
      v14 = (v16 << ((4 * v12 + 8) & 0x3C)) | ((-15 << ((4 * v12 + 8) & 0x3C)) - 1) & v14;
      v9 = *(a6 + 24 + 24 * v16);
      swift_unknownObjectRetain();
      result = swift_unknownObjectRelease();
      v10 = (v9 + 16);
      LOBYTE(v12) = *(v9 + 18);
      a6 = v9;
      if (!v12)
      {
        a6 = v21;
        goto LABEL_28;
      }
    }

    v16 = 0;
    v17 = (a6 + 32);
    while (1)
    {
      v19 = *v17;
      v17 += 3;
      v18 = v19;
      v20 = v7 - v19;
      if (__OFSUB__(v7, v19))
      {
        break;
      }

      if (__OFADD__(v20, v13))
      {
        goto LABEL_32;
      }

      if (v20 + v13 < 1)
      {
        goto LABEL_11;
      }

      ++v16;
      v7 = v20;
      if (v15 == v16)
      {
        v7 = v20;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_28:
  v22 = v7;
  result = specialized closure #2 in Rope.find<A>(at:in:preferEnd:)(v10, &v22, a2 & 1);
  if ((result & 0x8000000000000000) == 0)
  {
    swift_unknownObjectRelease();
    return a6;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t specialized BidirectionalCollection.index(_:offsetBy:)(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_5:
    if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) >= a2)
    {
      __break(1u);
      return result;
    }

    goto LABEL_6;
  }

  if (!a2)
  {
    return result;
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) <= a2 - 1)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  result += a2;
  return result;
}

uint64_t specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    v7 = 0;
    while (result - a3 + v7)
    {
      v8 = result + v7 - 1;
      if (__OFSUB__(result + v7, 1))
      {
LABEL_27:
        __break(1u);
        return result;
      }

      if (--v7 <= a2)
      {
        return v8;
      }
    }

    return 0;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= (a2 - 1))
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFuLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 > 4)
    {
      v9 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v9 = 4;
      }

      v5 = v4 - v9;
      v10 = 0uLL;
      v11 = result;
      v12 = vdupq_n_s64(1uLL);
      v13 = v5;
      do
      {
        v10 = vaddq_s64(v10, v12);
        v11 = vaddq_s64(v11, v12);
        v13 -= 4;
      }

      while (v13);
      v6 = vaddvq_s64(vpaddq_s64(v11, v10));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v14 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v15 = v5 + result - a3;
    v16 = a2 - v5;
    result = v6;
    while (v15)
    {
      if (!v14)
      {
        __break(1u);
        goto LABEL_27;
      }

      ++result;
      ++v14;
      ++v15;
      if (!--v16)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

unint64_t specialized AttributedString._InternalRunsSlice.updateEach(with:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[9];
  v336 = a1 + 9;
  if (v5)
  {
    v6 = a1[11];
  }

  else
  {
    v6 = 0;
  }

  if (a2 < 0 || v6 < a2)
  {
LABEL_409:
    __break(1u);
    goto LABEL_410;
  }

  v7 = a4;
  v8 = a3;
  v9 = a1[10];
  v10 = a1[12];
  if (!v5 || ((v12 = (v5 + 16), LODWORD(v11) = *(v5 + 16), *(v5 + 16)) ? (v13 = a1[11] <= a2) : (v13 = 1), v13))
  {
    v14 = swift_unknownObjectRetain();
    result = specialized Rope._endPath.getter(v14);
    v16 = result;
    v17 = 0;
    v18 = 0;
    if (!v5)
    {
      goto LABEL_40;
    }

    goto LABEL_13;
  }

  v327 = a1[12];
  v19 = *(v5 + 18);
  swift_unknownObjectRetain_n();
  if (!v19)
  {
    v10 = 0;
    v20 = a2;
    v17 = v5;
    goto LABEL_31;
  }

  v337 = v9;
  v20 = a2;
  v10 = v19;
  v21 = v5;
  do
  {
    v22 = *v12;
    if (*v12)
    {
      v23 = 0;
      v24 = (v21 + 40);
      while (1)
      {
        v25 = *v24;
        v24 += 3;
        v26 = v20 - v25;
        if (__OFSUB__(v20, v25))
        {
          goto LABEL_369;
        }

        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v26 + 1 < 1)
        {
          v22 = v23;
          goto LABEL_17;
        }

        ++v23;
        v20 = v26;
        if (v22 == v23)
        {
          goto LABEL_26;
        }
      }

LABEL_370:
      __break(1u);
LABEL_371:
      __break(1u);
LABEL_372:
      __break(1u);
LABEL_373:
      __break(1u);
LABEL_374:
      __break(1u);
LABEL_375:
      __break(1u);
LABEL_376:
      __break(1u);
LABEL_377:
      __break(1u);
LABEL_378:
      __break(1u);
LABEL_379:
      __break(1u);
LABEL_380:
      __break(1u);
LABEL_381:
      __break(1u);
LABEL_382:
      __break(1u);
LABEL_383:
      __break(1u);
LABEL_384:
      __break(1u);
LABEL_385:
      __break(1u);
LABEL_386:
      __break(1u);
LABEL_387:
      __break(1u);
LABEL_388:
      __break(1u);
LABEL_389:
      __break(1u);
LABEL_390:
      __break(1u);
LABEL_391:
      __break(1u);
LABEL_392:
      __break(1u);
LABEL_393:
      __break(1u);
LABEL_394:
      __break(1u);
LABEL_395:
      __break(1u);
LABEL_396:
      __break(1u);
LABEL_397:
      __break(1u);
LABEL_398:
      __break(1u);
LABEL_399:
      __break(1u);
LABEL_400:
      __break(1u);
LABEL_401:
      __break(1u);
LABEL_402:
      __break(1u);
LABEL_403:
      __break(1u);
LABEL_404:
      __break(1u);
LABEL_405:
      __break(1u);
LABEL_406:
      __break(1u);
LABEL_407:
      __break(1u);
LABEL_408:
      __break(1u);
      goto LABEL_409;
    }

    v26 = v20;
LABEL_26:
    if (v26)
    {
      goto LABEL_400;
    }

    v20 = 0;
LABEL_17:
    v10 = (v22 << ((4 * v19 + 8) & 0x3C)) | ((-15 << ((4 * v19 + 8) & 0x3C)) - 1) & v10;
    v17 = *(v21 + 24 + 24 * v22);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v12 = (v17 + 16);
    LOBYTE(v19) = *(v17 + 18);
    v21 = v17;
  }

  while (v19);
  LODWORD(v11) = *v12;
  if (*v12)
  {
    v7 = a4;
LABEL_31:
    v27 = 0;
    v28 = 24;
    v18 = v20;
    v11 = v11;
    while (1)
    {
      v29 = *(v17 + v28);
      v30 = v18 - v29;
      if (__OFSUB__(v18, v29))
      {
        goto LABEL_397;
      }

      if (__OFADD__(v30, 1))
      {
        goto LABEL_398;
      }

      if (v30 + 1 < 1)
      {
        break;
      }

      ++v27;
      v28 += 24;
      v18 -= v29;
      if (v11 == v27)
      {
        if (!v30)
        {
          goto LABEL_37;
        }

LABEL_366:
        __break(1u);
LABEL_367:
        __break(1u);
LABEL_368:
        __break(1u);
LABEL_369:
        __break(1u);
        goto LABEL_370;
      }
    }

    v11 = v27;
  }

  else
  {
LABEL_365:
    v11 = 0;
    v7 = a4;
    v9 = v337;
    if (v20)
    {
      goto LABEL_366;
    }

LABEL_37:
    v18 = 0;
  }

  result = swift_unknownObjectRelease();
  v16 = v10 & 0xFFFFFFFFFFFFF0FFLL | (v11 << 8);
  v8 = a3;
  v10 = v327;
  if (v5)
  {
LABEL_13:
    v324 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v10, v16, v17, v5, v9);
    result = swift_unknownObjectRelease();
    goto LABEL_41;
  }

LABEL_40:
  v324 = 0;
LABEL_41:
  v31 = a2;
  v32 = a2 - v18;
  if (!__OFSUB__(a2, v18))
  {
    while (2)
    {
      v33 = *v336;
      v337 = v32;
      v332 = v16;
      v327 = v10;
      if (v31 == v8)
      {
        if (v33)
        {
          v34 = a1[11];
          if (v34 < v31)
          {
            goto LABEL_401;
          }

          v35 = a1[10];
          v317 = a1[12];
          v36 = (v33 + 16);
          v37 = *(v33 + 16);
          v38 = *(v33 + 18);
          if (*(v33 + 16))
          {
            v39 = v34 <= v31;
          }

          else
          {
            v39 = 1;
          }

          if (!v39)
          {
            swift_unknownObjectRetain_n();
            v315 = v35;
            if (!v38)
            {
              v44 = 0;
              v20 = a2;
              v10 = v33;
LABEL_73:
              v16 = v332;
              v50 = 0;
              v51 = 24;
              v41 = v20;
              v52 = v37;
              v32 = v337;
              while (1)
              {
                v53 = *(v10 + v51);
                v20 = v41 - v53;
                if (__OFSUB__(v41, v53))
                {
                  goto LABEL_371;
                }

                if (__OFADD__(v20, 1))
                {
                  goto LABEL_372;
                }

                if (v20 + 1 < 1)
                {
                  goto LABEL_81;
                }

                ++v50;
                v51 += 24;
                v41 -= v53;
                if (v52 == v50)
                {
                  v50 = v52;
                  goto LABEL_79;
                }
              }
            }

            v20 = a2;
            v44 = v38;
            v5 = v33;
            do
            {
              v45 = *v36;
              if (*v36)
              {
                v46 = 0;
                v47 = (v5 + 40);
                while (1)
                {
                  v48 = *v47;
                  v47 += 3;
                  v49 = v20 - v48;
                  if (__OFSUB__(v20, v48))
                  {
                    break;
                  }

                  if (__OFADD__(v49, 1))
                  {
                    goto LABEL_362;
                  }

                  if (v49 + 1 < 1)
                  {
                    v45 = v46;
                    goto LABEL_59;
                  }

                  ++v46;
                  v20 = v49;
                  if (v45 == v46)
                  {
                    goto LABEL_68;
                  }
                }

                __break(1u);
LABEL_362:
                __break(1u);
LABEL_363:
                __break(1u);
LABEL_364:
                __break(1u);
                goto LABEL_365;
              }

              v49 = v20;
LABEL_68:
              if (v49)
              {
                goto LABEL_373;
              }

              v20 = 0;
LABEL_59:
              v44 = (v45 << ((4 * v38 + 8) & 0x3C)) | ((-15 << ((4 * v38 + 8) & 0x3C)) - 1) & v44;
              v10 = *(v5 + 24 + 24 * v45);
              swift_unknownObjectRetain();
              swift_unknownObjectRelease();
              v36 = (v10 + 16);
              LOBYTE(v38) = *(v10 + 18);
              v5 = v10;
            }

            while (v38);
            LODWORD(v37) = *v36;
            if (*v36)
            {
              goto LABEL_73;
            }

            v50 = 0;
            v32 = v337;
            v16 = v332;
LABEL_79:
            if (!v20)
            {
              v41 = 0;
LABEL_81:
              swift_unknownObjectRelease();
              v40 = v44 & 0xFFFFFFFFFFFFF0FFLL | (v50 << 8);
              v8 = a3;
              v35 = v315;
              goto LABEL_82;
            }

            goto LABEL_412;
          }

          v40 = ((-15 << ((4 * v38 + 8) & 0x3C)) - 1) & v38 | (v37 << ((4 * v38 + 8) & 0x3C));
          swift_unknownObjectRetain();
          v41 = 0;
          v10 = 0;
          v32 = v337;
          v16 = v332;
LABEL_82:
          specialized Rope._Node.distanceFromStart<A>(to:in:)(v317, v40, v10, v33, v35);
          result = swift_unknownObjectRelease();
          v10 = v327;
          v31 = a2;
        }

        else
        {
          if (v31 > 0)
          {
            goto LABEL_405;
          }

          v41 = 0;
        }

        v54 = __OFSUB__(v31, v41);
        v43 = v31 - v41;
        v42 = a1;
        if (v54)
        {
          goto LABEL_387;
        }

        v7 = a4;
      }

      else if (v33)
      {
        v42 = a1;
        v43 = a1[11];
      }

      else
      {
        v43 = 0;
        v42 = a1;
      }

      if (v32 >= v43)
      {
        return result;
      }

      if (v10 != v42[12])
      {
        goto LABEL_377;
      }

      if (v17)
      {
        v55 = (v17 + 24 * ((v16 >> ((4 * *(v17 + 18) + 8) & 0x3C)) & 0xF));
        v57 = v55[4];
        v56 = v55[5];
        v58 = v55[3];
        v59 = v32 + v58;
        v60 = __OFADD__(v32, v58);

        if (v60)
        {
          goto LABEL_385;
        }

        *&v359 = v57;
        *(&v359 + 1) = v56;
        v61 = a2;
      }

      else
      {
        v62 = v42[9];
        swift_unknownObjectRetain();
        specialized Rope._Node.subscript.getter(v16, v62);
        v57 = v63;
        v65 = v64;
        swift_unknownObjectRelease();
        if (v10 != v42[12])
        {
          goto LABEL_395;
        }

        v66 = v42[9];
        swift_unknownObjectRetain();
        v67 = specialized Rope._Node.subscript.getter(v16, v66);
        swift_unknownObjectRelease();

        v54 = __OFADD__(v32, v67);
        v59 = v32 + v67;
        if (v54)
        {
          goto LABEL_396;
        }

        *&v359 = v57;
        *(&v359 + 1) = v65;
        v61 = a2;
        v16 = v332;
      }

      v68 = v61;
      if (v32 >= v61)
      {
        if (v32 >= v8)
        {
          v68 = v8;
        }

        else
        {
          v68 = v32;
        }
      }

      if (v59 > v61)
      {
        v61 = v59;
      }

      if (v59 <= v8)
      {
        v69 = v61;
      }

      else
      {
        v69 = v8;
      }

      if (v68 == v69)
      {
        goto LABEL_378;
      }

      if (v68 == v32 && v69 == v59)
      {
        v70 = v336;
        if (v327 != v42[12])
        {
          goto LABEL_388;
        }

        if (!*v336)
        {
          goto LABEL_423;
        }

        specialized Rope._Node._prepareModify(at:)(v16, &v360);
        v371 = v361;
        v354 = v360;
        v355 = v361;
        v356 = v362;
        outlined destroy of TermOfAddress?(&v371, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        outlined destroy of TermOfAddress?(&v371 + 8, &_sShySSGMd);
        v355 = MEMORY[0x1E69E7CC8];
        v42[12] = v327 + 1;
        v71 = a5;
        if (!v42[9])
        {
          goto LABEL_424;
        }

        specialized Rope._Node._finalizeModify(_:)(&v349, &v354);

        v358 = 0;
        v356 = 0u;
        v357 = 0u;
        v354 = 0u;
        v355 = 0u;
        outlined init with copy of AttributedString._AttributeValue?(&v354, &v349);
        if (*(&v350 + 1))
        {
          v346 = v351;
          v347 = v352;
          v348 = v353;
          v344 = v349;
          v345 = v350;
          outlined init with copy of AttributedString._AttributeValue(&v344, &v339);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v73 = specialized __RawDictionaryStorage.find<A>(_:)(v7, a5);
          v75 = *(v57 + 16);
          v76 = (v74 & 1) == 0;
          v54 = __OFADD__(v75, v76);
          v77 = v75 + v76;
          if (v54)
          {
            goto LABEL_403;
          }

          v78 = v74;
          if (*(v57 + 24) >= v77)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v79 = v57;
              if (v74)
              {
                goto LABEL_116;
              }

              goto LABEL_162;
            }

            v316 = v73;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
            v247 = static _DictionaryStorage.copy(original:)();
            v79 = v247;
            if (*(v57 + 16))
            {
              v248 = (v247 + 64);
              v249 = (v57 + 64);
              v250 = ((1 << *(v79 + 32)) + 63) >> 6;
              if (v79 != v57 || v248 >= &v249[8 * v250])
              {
                memmove(v248, v249, 8 * v250);
              }

              v251 = 0;
              *(v79 + 16) = *(v57 + 16);
              v252 = 1 << *(v57 + 32);
              if (v252 < 64)
              {
                v253 = ~(-1 << v252);
              }

              else
              {
                v253 = -1;
              }

              v254 = v253 & *(v57 + 64);
              v255 = (v252 + 63) >> 6;
              if (v254)
              {
                do
                {
                  v256 = __clz(__rbit64(v254));
                  v318 = (v254 - 1) & v254;
LABEL_320:
                  v259 = v256 | (v251 << 6);
                  v260 = 16 * v259;
                  v261 = (*(v57 + 48) + 16 * v259);
                  v263 = *v261;
                  v262 = v261[1];
                  v264 = 72 * v259;
                  outlined init with copy of AttributedString._AttributeValue(*(v57 + 56) + 72 * v259, &v349);
                  v265 = (*(v79 + 48) + v260);
                  *v265 = v263;
                  v265[1] = v262;
                  v266 = *(v79 + 56) + v264;
                  *v266 = v349;
                  v267 = v350;
                  v268 = v351;
                  v269 = v352;
                  *(v266 + 64) = v353;
                  *(v266 + 32) = v268;
                  *(v266 + 48) = v269;
                  *(v266 + 16) = v267;

                  v71 = a5;
                  v42 = a1;
                  v254 = v318;
                }

                while (v318);
              }

              v257 = v251;
              while (1)
              {
                v251 = v257 + 1;
                if (__OFADD__(v257, 1))
                {
                  goto LABEL_422;
                }

                if (v251 >= v255)
                {
                  break;
                }

                v258 = *(v57 + 64 + 8 * v251);
                ++v257;
                if (v258)
                {
                  v256 = __clz(__rbit64(v258));
                  v318 = (v258 - 1) & v258;
                  goto LABEL_320;
                }
              }
            }

            v73 = v316;
            v7 = a4;
            v70 = v336;
            if ((v78 & 1) == 0)
            {
              goto LABEL_162;
            }

LABEL_116:
            v81 = *(v79 + 56) + 72 * v73;
            v83 = *(v81 + 16);
            v82 = *(v81 + 32);
            v84 = *(v81 + 48);
            v353 = *(v81 + 64);
            v352 = v84;
            v349 = *v81;
            v350 = v83;
            v351 = v82;
            v85 = *(v79 + 56) + 72 * v73;
            v86 = v340;
            v87 = v341;
            v88 = v342;
            *(v85 + 64) = v343;
            *(v85 + 32) = v87;
            *(v85 + 48) = v88;
            *(v85 + 16) = v86;
            *v85 = v339;
            outlined destroy of AttributedString._AttributeValue(&v344);
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v77, isUniquelyReferenced_nonNull_native);
            v79 = v57;
            v73 = specialized __RawDictionaryStorage.find<A>(_:)(v7, a5);
            if ((v78 & 1) != (v80 & 1))
            {
              goto LABEL_433;
            }

            if (v78)
            {
              goto LABEL_116;
            }

LABEL_162:
            specialized _NativeDictionary._insert(at:key:value:)(v73, v7, v71, &v339, v79);

            outlined destroy of AttributedString._AttributeValue(&v344);
            v349 = 0u;
            v350 = 0u;
            v351 = 0u;
            v352 = 0u;
            v353 = 0;
          }

LABEL_163:
          *&v359 = v79;
        }

        else
        {

          outlined destroy of TermOfAddress?(&v349, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          v114 = specialized __RawDictionaryStorage.find<A>(_:)(v7, a5);
          if (v115)
          {
            v116 = v114;
            v117 = v359;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v79 = v117;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
              v292 = static _DictionaryStorage.copy(original:)();
              v79 = v292;
              if (*(v117 + 16))
              {
                v293 = (v292 + 64);
                v294 = (v117 + 64);
                v295 = ((1 << *(v79 + 32)) + 63) >> 6;
                if (v79 != v117 || v293 >= &v294[8 * v295])
                {
                  memmove(v293, v294, 8 * v295);
                }

                v296 = 0;
                *(v79 + 16) = *(v117 + 16);
                v297 = 1 << *(v117 + 32);
                if (v297 < 64)
                {
                  v298 = ~(-1 << v297);
                }

                else
                {
                  v298 = -1;
                }

                v299 = v298 & *(v117 + 64);
                v300 = (v297 + 63) >> 6;
                if (v299)
                {
                  do
                  {
                    v301 = __clz(__rbit64(v299));
                    v319 = (v299 - 1) & v299;
LABEL_356:
                    v304 = v301 | (v296 << 6);
                    v305 = 16 * v304;
                    v306 = (*(v117 + 48) + 16 * v304);
                    v308 = *v306;
                    v307 = v306[1];
                    v309 = 72 * v304;
                    outlined init with copy of AttributedString._AttributeValue(*(v117 + 56) + 72 * v304, &v349);
                    v310 = (*(v79 + 48) + v305);
                    *v310 = v308;
                    v310[1] = v307;
                    v311 = *(v79 + 56) + v309;
                    *v311 = v349;
                    v312 = v350;
                    v313 = v351;
                    v314 = v352;
                    *(v311 + 64) = v353;
                    *(v311 + 32) = v313;
                    *(v311 + 48) = v314;
                    *(v311 + 16) = v312;

                    v71 = a5;
                    v42 = a1;
                    v299 = v319;
                  }

                  while (v319);
                }

                v302 = v296;
                while (1)
                {
                  v296 = v302 + 1;
                  if (__OFADD__(v302, 1))
                  {
                    goto LABEL_428;
                  }

                  if (v296 >= v300)
                  {
                    break;
                  }

                  v303 = *(v117 + 64 + 8 * v296);
                  ++v302;
                  if (v303)
                  {
                    v301 = __clz(__rbit64(v303));
                    v319 = (v303 - 1) & v303;
                    goto LABEL_356;
                  }
                }
              }

              v7 = a4;
              v70 = v336;
            }

            v118 = *(v79 + 56) + 72 * v116;
            v349 = *v118;
            v120 = *(v118 + 32);
            v119 = *(v118 + 48);
            v121 = *(v118 + 64);
            v350 = *(v118 + 16);
            v351 = v120;
            v353 = v121;
            v352 = v119;
            specialized _NativeDictionary._delete(at:)(v116, v79);
            goto LABEL_163;
          }

          v353 = 0;
          v351 = 0u;
          v352 = 0u;
          v349 = 0u;
          v350 = 0u;
        }

        AttributedString._AttributeStorage._attributeModified(_:old:new:)(v7, v71, &v349, &v354);
        outlined destroy of TermOfAddress?(&v354, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v349, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

        if (v327 + 1 != v42[12])
        {
          goto LABEL_390;
        }

        if (!*v70)
        {
          goto LABEL_426;
        }

        specialized Rope._Node._prepareModify(at:)(v332, &v363);
        v369 = v364;
        v370 = v365;
        outlined destroy of TermOfAddress?(&v369, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        outlined destroy of TermOfAddress?(&v370, &_sShySSGMd);
        v354 = v363;
        v356 = v366;
        v145 = v359;
        v355 = v359;
        v146 = v327 + 2;
        v42[12] = v327 + 2;
        if (!v42[9])
        {
          goto LABEL_425;
        }

        v137 = specialized Rope._Node._finalizeModify(_:)(&v344, &v354);

        v147 = v42[9];
        v148 = v42[12];
        *&v354 = v327 + 2;
        *(&v354 + 1) = v332;
        *&v355 = v137;
        if (v146 != v148)
        {
          goto LABEL_392;
        }

        v149 = v327 + 2;
        if (v147)
        {
          v150 = ((-15 << ((4 * *(v147 + 18) + 8) & 0x3C)) - 1) & *(v147 + 18) | (*(v147 + 16) << ((4 * *(v147 + 18) + 8) & 0x3C));
          swift_unknownObjectRetain();
        }

        else
        {
          v150 = 0;
        }

        if (v332 >= v150)
        {
          goto LABEL_393;
        }

        v151 = (4 * *(v137 + 18) + 8) & 0x3C;
        v152 = ((v332 >> v151) & 0xF) + 1;
        if (v152 < *(v137 + 16))
        {
          v153 = (v152 << v151) | ((-15 << v151) - 1) & v332;
          swift_unknownObjectRelease();
          v154 = v327 + 2;
          v155 = v137;
          v156 = v336;
          v144 = v324;
          v157 = v332;
          v158 = *v336;
          if (*v336)
          {
            goto LABEL_174;
          }

LABEL_183:
          v163 = 0;
LABEL_215:
          if (v163 < v157)
          {
            v172 = v42[9];
            v173 = v42[10];
            v174 = v157;
            v176 = v42[11];
            v175 = v42[12];
            v177 = v149;
            *&v354 = v149;
            *(&v354 + 1) = v174;
            v178 = v174;
            *&v355 = v137;
            swift_unknownObjectRetain();
            specialized Rope.formIndex(before:)(&v354, v172, v173, v176, v175);
            swift_unknownObjectRelease();
            specialized Rope.subscript.getter(v354, *(&v354 + 1), v355, v42[9], v42[10], v42[11], v42[12]);
            v180 = v179;
            if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v181, v145))
            {
              v182 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v180, *(&v145 + 1));

              if (v182)
              {
                v183 = specialized Rope._remove(at:)(&v354, v149, v178);
                v184 = v42[12];
                if (v183 >= specialized Rope._endPath.getter(v42[9]))
                {
                  v185 = 0;
                }

                else
                {
                  v185 = specialized Rope._Node.unmanagedLeaf(at:)(v183, v42[9]);
                }

                *&v349 = v184;
                *(&v349 + 1) = v183;
                *&v350 = v185;
                v186 = v354;

                v187 = v42[9];
                v188 = v42[10];
                v189 = v42[11];
                v190 = v42[12];
                swift_unknownObjectRetain();
                specialized Rope.formIndex(before:)(&v349, v187, v188, v189, v190);
                swift_unknownObjectRelease();
                v191 = v349;
                if (v349 != v42[12])
                {
                  goto LABEL_414;
                }

                if (!*v336)
                {
                  goto LABEL_429;
                }

                v157 = *(&v349 + 1);
                specialized Rope._Node._prepareModify(at:)(*(&v349 + 1), v368);
                v354 = v368[0];
                v355 = v368[1];
                v356 = v368[2];
                if (__OFSUB__(v337, *(&v368[0] + 1)))
                {
                  goto LABEL_415;
                }

                if (__OFADD__(*(&v368[0] + 1), v186))
                {
                  goto LABEL_416;
                }

                v337 -= *(&v368[0] + 1);
                *(&v354 + 1) = *(&v368[0] + 1) + v186;
                v177 = v191 + 1;
                v42[12] = v191 + 1;
                if (!v42[9])
                {
                  goto LABEL_430;
                }

                v137 = specialized Rope._Node._finalizeModify(_:)(&v344, &v354);

                v144 = v324 - 1;
                if (__OFSUB__(v324, 1))
                {
                  goto LABEL_417;
                }

LABEL_233:
                v149 = v177;
LABEL_234:
                v192 = v42[9];
                v193 = v42[12];
                *&v354 = v149;
                *(&v354 + 1) = v157;
                *&v355 = v137;
                v54 = __OFADD__(v144, 1);
                v194 = v144 + 1;
                if (v54)
                {
                  goto LABEL_380;
                }

                if (v149 != v193)
                {
                  goto LABEL_381;
                }

                if (v137)
                {
                  v195 = *(v137 + 24 * ((v157 >> ((4 * *(v137 + 18) + 8) & 0x3C)) & 0xF) + 24);
                  v54 = __OFADD__(v337, v195);
                  v338 = v337 + v195;
                  if (v54)
                  {
                    goto LABEL_386;
                  }

                  if (!v192)
                  {
                    goto LABEL_379;
                  }

                  swift_unknownObjectRetain();
                }

                else
                {
                  v196 = v194;
                  v197 = v42;
                  swift_unknownObjectRetain();
                  v198 = specialized Rope._Node.subscript.getter(v157, v192);

                  v54 = __OFADD__(v337, v198);
                  v338 = v337 + v198;
                  if (v54)
                  {
                    goto LABEL_399;
                  }

                  v42 = v197;
                  v194 = v196;
                  if (!v192)
                  {
                    goto LABEL_379;
                  }
                }

                if (v157 >= (((-15 << ((4 * *(v192 + 18) + 8) & 0x3C)) - 1) & *(v192 + 18) | (*(v192 + 16) << ((4 * *(v192 + 18) + 8) & 0x3C))))
                {
                  goto LABEL_379;
                }

                v324 = v194;
                if (v137 && (v199 = (4 * *(v137 + 18) + 8) & 0x3C, v200 = ((v157 >> v199) & 0xF) + 1, v200 < *(v137 + 16)))
                {
                  result = swift_unknownObjectRelease();
                  v16 = (v200 << v199) | ((-15 << v199) - 1) & v157;
                }

                else if (specialized Rope._Node.formSuccessor(of:)(&v354, v192))
                {
                  result = swift_unknownObjectRelease();
                  v16 = *(&v354 + 1);
                }

                else
                {
                  v201 = *(v192 + 18);
                  v202 = *(v192 + 16);
                  result = swift_unknownObjectRelease();
                  v16 = ((-15 << ((4 * v201 + 8) & 0x3C)) - 1) & v201 | (v202 << ((4 * v201 + 8) & 0x3C));
                  *&v354 = v149;
                  *(&v354 + 1) = v16;
                  *&v355 = 0;
                }

                v8 = a3;
                v32 = v338;
                v10 = v354;
                v17 = v355;
                v31 = a2;
                v7 = a4;
                if (v338 >= a3)
                {
                  v203 = *v336;
                  if (a2 == a3)
                  {
                    v10 = v42[12];
                    if (v203)
                    {
                      v204 = v42[11];
                      if (v204 < a2)
                      {
                        goto LABEL_408;
                      }

                      v328 = v42[12];
                      v205 = v42[10];
                      v207 = (v203 + 16);
                      v206 = *(v203 + 16);
                      v208 = *(v203 + 18);
                      if (*(v203 + 16) && v204 > a2)
                      {
                        swift_unknownObjectRetain_n();
                        if (!v208)
                        {
                          v210 = 0;
                          v209 = a2;
                          v17 = v203;
LABEL_277:
                          v221 = 0;
                          v222 = 24;
                          v218 = v209;
                          while (1)
                          {
                            v223 = *(v17 + v222);
                            v209 = v218 - v223;
                            if (__OFSUB__(v218, v223))
                            {
                              goto LABEL_382;
                            }

                            if (__OFADD__(v209, 1))
                            {
                              goto LABEL_383;
                            }

                            if (v209 + 1 < 1)
                            {
                              goto LABEL_285;
                            }

                            ++v221;
                            v222 += 24;
                            v218 -= v223;
                            if (v206 == v221)
                            {
                              v221 = v206;
                              goto LABEL_283;
                            }
                          }
                        }

                        v209 = a2;
                        v210 = v208;
                        v211 = v203;
                        do
                        {
                          v212 = *v207;
                          if (*v207)
                          {
                            v213 = 0;
                            v214 = (v211 + 40);
                            while (1)
                            {
                              v215 = *v214;
                              v214 += 3;
                              v216 = v209 - v215;
                              if (__OFSUB__(v209, v215))
                              {
                                goto LABEL_367;
                              }

                              if (__OFADD__(v216, 1))
                              {
                                goto LABEL_368;
                              }

                              if (v216 + 1 < 1)
                              {
                                v212 = v213;
                                goto LABEL_258;
                              }

                              ++v213;
                              v209 = v216;
                              if (v212 == v213)
                              {
                                goto LABEL_267;
                              }
                            }
                          }

                          v216 = v209;
LABEL_267:
                          if (v216)
                          {
                            goto LABEL_384;
                          }

                          v209 = 0;
LABEL_258:
                          v210 = (v212 << ((4 * v208 + 8) & 0x3C)) | ((-15 << ((4 * v208 + 8) & 0x3C)) - 1) & v210;
                          v17 = *(v211 + 24 + 24 * v212);
                          swift_unknownObjectRetain();
                          swift_unknownObjectRelease();
                          v207 = (v17 + 16);
                          LOBYTE(v208) = *(v17 + 18);
                          v211 = v17;
                        }

                        while (v208);
                        LODWORD(v206) = *v207;
                        if (*v207)
                        {
                          goto LABEL_277;
                        }

                        v221 = 0;
LABEL_283:
                        if (!v209)
                        {
                          v218 = 0;
LABEL_285:
                          swift_unknownObjectRelease();
                          v220 = v210 & 0xFFFFFFFFFFFFF0FFLL | (v221 << 8);
                          v8 = a3;
                          goto LABEL_286;
                        }

                        goto LABEL_420;
                      }

                      v220 = ((-15 << ((4 * v208 + 8) & 0x3C)) - 1) & v208 | (v206 << ((4 * v208 + 8) & 0x3C));
                      swift_unknownObjectRetain();
                      v218 = 0;
                      v17 = 0;
LABEL_286:
                      v219 = v220;
                      v224 = v205;
                      v10 = v328;
                      v324 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v328, v220, v17, v203, v224);
                      result = swift_unknownObjectRelease();
                      v217 = a4;
                      v31 = a2;
                    }

                    else
                    {
                      if (a2 > 0)
                      {
                        goto LABEL_411;
                      }

                      v217 = a4;
                      v218 = 0;
                      v17 = 0;
                      v219 = 0;
                      v324 = 0;
                    }

                    v54 = __OFSUB__(v31, v218);
                    v32 = v31 - v218;
                    v16 = v219;
                    v7 = v217;
                    if (v54)
                    {
                      goto LABEL_404;
                    }
                  }

                  else
                  {
                    v32 = 0;
                    v324 = 0;
                    v17 = 0;
                    v16 = 0;
                    v10 = v42[12];
                    if (v203)
                    {
                      v17 = 0;
                      v32 = v42[11];
                      v324 = v42[10];
                      v16 = ((-15 << ((4 * *(v203 + 18) + 8) & 0x3C)) - 1) & *(v203 + 18) | (*(v203 + 16) << ((4 * *(v203 + 18) + 8) & 0x3C));
                      v31 = a2;
                    }
                  }
                }

                continue;
              }
            }

            else
            {
            }

            v157 = v178;
            goto LABEL_233;
          }

          goto LABEL_234;
        }

        v156 = v336;
        v144 = v324;
        if (specialized Rope._Node.formSuccessor(of:)(&v354, v147))
        {
          swift_unknownObjectRelease();
          v153 = *(&v354 + 1);
          v155 = v355;
          v154 = v354;
        }

        else
        {
          v153 = specialized Rope._endPath.getter(v147);
          swift_unknownObjectRelease();
          v155 = 0;
          *&v354 = v327 + 2;
          v154 = v327 + 2;
        }

        v157 = v332;
        v158 = *v336;
        if (!*v336)
        {
          goto LABEL_183;
        }

LABEL_174:
        if (v153 >= (((-15 << ((4 * *(v158 + 18) + 8) & 0x3C)) - 1) & *(v158 + 18) | (*(v158 + 16) << ((4 * *(v158 + 18) + 8) & 0x3C))))
        {
          goto LABEL_213;
        }

        if (v154 != v42[12])
        {
          goto LABEL_407;
        }

        if (v155)
        {
          v159 = v155 + 24 * ((v153 >> ((4 * *(v155 + 18) + 8) & 0x3C)) & 0xF);
          v160 = *(v159 + 32);
          v161 = *(v159 + 40);
        }

        else
        {
          specialized Rope._Node.subscript.getter(v153, v158);
          v160 = v167;
          v161 = v168;
        }

        if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v160, v145) & 1) == 0)
        {

          goto LABEL_212;
        }

        v169 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v161, *(&v145 + 1));

        if (v169)
        {
          v157 = specialized Rope._remove(at:)(&v354, v146, v332);
          v170 = v42[12];
          if (v157 < specialized Rope._endPath.getter(v42[9]))
          {
            specialized Rope._Node.unmanagedLeaf(at:)(v157, v42[9]);
          }

          v171 = v354;

          if (v170 != v42[12])
          {
            goto LABEL_418;
          }

          if (!*v156)
          {
            goto LABEL_432;
          }

          specialized Rope._Node._prepareModify(at:)(v157, v367);
          v354 = v367[0];
          v355 = v367[1];
          v356 = v367[2];
          if (__OFADD__(*(&v367[0] + 1), v171))
          {
            goto LABEL_419;
          }

          *(&v354 + 1) = *(&v367[0] + 1) + v171;
          v149 = v170 + 1;
          v42[12] = v170 + 1;
          if (!v42[9])
          {
            goto LABEL_431;
          }

          v137 = specialized Rope._Node._finalizeModify(_:)(&v344, &v354);

LABEL_212:

LABEL_213:
          v163 = *v156;
          if (!*v156)
          {
            goto LABEL_215;
          }
        }

        else
        {
          v157 = v332;
          v163 = *v156;
          if (!*v156)
          {
            goto LABEL_215;
          }
        }

        v163 = *(v163 + 18);
        goto LABEL_215;
      }

      break;
    }

    v358 = 0;
    v356 = 0u;
    v357 = 0u;
    v354 = 0u;
    v355 = 0u;
    outlined init with copy of AttributedString._AttributeValue?(&v354, &v349);
    if (*(&v350 + 1))
    {
      v346 = v351;
      v347 = v352;
      v348 = v353;
      v344 = v349;
      v345 = v350;
      outlined init with copy of AttributedString._AttributeValue(&v344, &v339);

      v89 = swift_isUniquelyReferenced_nonNull_native();
      v90 = specialized __RawDictionaryStorage.find<A>(_:)(v7, a5);
      v92 = *(v57 + 16);
      v93 = (v91 & 1) == 0;
      v54 = __OFADD__(v92, v93);
      v94 = v92 + v93;
      if (v54)
      {
        goto LABEL_402;
      }

      v95 = v91;
      if (*(v57 + 24) >= v94)
      {
        if (v89)
        {
          v96 = v57;
          if (v91)
          {
            goto LABEL_122;
          }

          goto LABEL_133;
        }

        v326 = v90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v225 = static _DictionaryStorage.copy(original:)();
        v96 = v225;
        if (*(v57 + 16))
        {
          v226 = (v225 + 64);
          v227 = (v57 + 64);
          v228 = ((1 << *(v96 + 32)) + 63) >> 6;
          if (v96 != v57 || v226 >= &v227[8 * v228])
          {
            memmove(v226, v227, 8 * v228);
          }

          v229 = 0;
          *(v96 + 16) = *(v57 + 16);
          v230 = 1 << *(v57 + 32);
          if (v230 < 64)
          {
            v231 = ~(-1 << v230);
          }

          else
          {
            v231 = -1;
          }

          v232 = v231 & *(v57 + 64);
          v233 = (v230 + 63) >> 6;
          if (v232)
          {
            do
            {
              v234 = __clz(__rbit64(v232));
              v334 = (v232 - 1) & v232;
LABEL_304:
              v237 = v234 | (v229 << 6);
              v238 = 16 * v237;
              v239 = (*(v57 + 48) + 16 * v237);
              v240 = v239[1];
              v329 = *v239;
              v241 = 72 * v237;
              outlined init with copy of AttributedString._AttributeValue(*(v57 + 56) + 72 * v237, &v349);
              v242 = (*(v96 + 48) + v238);
              *v242 = v329;
              v242[1] = v240;
              v243 = *(v96 + 56) + v241;
              *v243 = v349;
              v244 = v350;
              v245 = v351;
              v246 = v352;
              *(v243 + 64) = v353;
              *(v243 + 32) = v245;
              *(v243 + 48) = v246;
              *(v243 + 16) = v244;

              v42 = a1;
              v7 = a4;
              v232 = v334;
            }

            while (v334);
          }

          v235 = v229;
          while (1)
          {
            v229 = v235 + 1;
            if (__OFADD__(v235, 1))
            {
              goto LABEL_421;
            }

            if (v229 >= v233)
            {
              break;
            }

            v236 = *(v57 + 64 + 8 * v229);
            ++v235;
            if (v236)
            {
              v234 = __clz(__rbit64(v236));
              v334 = (v236 - 1) & v236;
              goto LABEL_304;
            }
          }
        }

        v90 = v326;
        v32 = v337;
        if ((v95 & 1) == 0)
        {
          goto LABEL_133;
        }

LABEL_122:
        v98 = *(v96 + 56) + 72 * v90;
        v100 = *(v98 + 16);
        v99 = *(v98 + 32);
        v101 = *(v98 + 48);
        v353 = *(v98 + 64);
        v352 = v101;
        v349 = *v98;
        v350 = v100;
        v351 = v99;
        v102 = *(v96 + 56) + 72 * v90;
        v103 = v340;
        v104 = v341;
        v105 = v342;
        *(v102 + 64) = v343;
        *(v102 + 32) = v104;
        *(v102 + 48) = v105;
        *(v102 + 16) = v103;
        *v102 = v339;
        outlined destroy of AttributedString._AttributeValue(&v344);
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v94, v89);
        v96 = v57;
        v90 = specialized __RawDictionaryStorage.find<A>(_:)(v7, a5);
        if ((v95 & 1) != (v97 & 1))
        {
          goto LABEL_433;
        }

        if (v95)
        {
          goto LABEL_122;
        }

LABEL_133:
        *(v96 + 8 * (v90 >> 6) + 64) |= 1 << v90;
        v122 = (*(v96 + 48) + 16 * v90);
        *v122 = v7;
        v122[1] = a5;
        v123 = *(v96 + 56) + 72 * v90;
        *v123 = v339;
        v124 = v340;
        v125 = v341;
        v126 = v342;
        *(v123 + 64) = v343;
        *(v123 + 32) = v125;
        *(v123 + 48) = v126;
        *(v123 + 16) = v124;
        v127 = *(v96 + 16);
        v54 = __OFADD__(v127, 1);
        v128 = v127 + 1;
        if (v54)
        {
          goto LABEL_406;
        }

        *(v96 + 16) = v128;

        outlined destroy of AttributedString._AttributeValue(&v344);
        v349 = 0u;
        v350 = 0u;
        v351 = 0u;
        v352 = 0u;
        v353 = 0;
      }

LABEL_135:
      *&v359 = v96;
    }

    else
    {

      outlined destroy of TermOfAddress?(&v349, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v106 = specialized __RawDictionaryStorage.find<A>(_:)(v7, a5);
      if (v107)
      {
        v108 = v106;
        v109 = v359;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v96 = v109;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v270 = static _DictionaryStorage.copy(original:)();
          v96 = v270;
          if (*(v109 + 16))
          {
            v271 = (v270 + 64);
            v272 = (v109 + 64);
            v273 = ((1 << *(v96 + 32)) + 63) >> 6;
            if (v96 != v109 || v271 >= &v272[8 * v273])
            {
              memmove(v271, v272, 8 * v273);
            }

            v274 = 0;
            *(v96 + 16) = *(v109 + 16);
            v275 = 1 << *(v109 + 32);
            if (v275 < 64)
            {
              v276 = ~(-1 << v275);
            }

            else
            {
              v276 = -1;
            }

            v277 = v276 & *(v109 + 64);
            v278 = (v275 + 63) >> 6;
            if (v277)
            {
              do
              {
                v279 = __clz(__rbit64(v277));
                v335 = (v277 - 1) & v277;
LABEL_340:
                v282 = v279 | (v274 << 6);
                v283 = 16 * v282;
                v284 = (*(v109 + 48) + 16 * v282);
                v285 = v284[1];
                v330 = *v284;
                v286 = 72 * v282;
                outlined init with copy of AttributedString._AttributeValue(*(v109 + 56) + 72 * v282, &v349);
                v287 = (*(v96 + 48) + v283);
                *v287 = v330;
                v287[1] = v285;
                v288 = *(v96 + 56) + v286;
                *v288 = v349;
                v289 = v350;
                v290 = v351;
                v291 = v352;
                *(v288 + 64) = v353;
                *(v288 + 32) = v290;
                *(v288 + 48) = v291;
                *(v288 + 16) = v289;

                v7 = a4;
                v32 = v337;
                v277 = v335;
              }

              while (v335);
            }

            v280 = v274;
            while (1)
            {
              v274 = v280 + 1;
              if (__OFADD__(v280, 1))
              {
                goto LABEL_427;
              }

              if (v274 >= v278)
              {
                break;
              }

              v281 = *(v109 + 64 + 8 * v274);
              ++v280;
              if (v281)
              {
                v279 = __clz(__rbit64(v281));
                v335 = (v281 - 1) & v281;
                goto LABEL_340;
              }
            }
          }

          v42 = a1;
        }

        v110 = *(v96 + 56) + 72 * v108;
        v349 = *v110;
        v112 = *(v110 + 32);
        v111 = *(v110 + 48);
        v113 = *(v110 + 64);
        v350 = *(v110 + 16);
        v351 = v112;
        v353 = v113;
        v352 = v111;
        specialized _NativeDictionary._delete(at:)(v108, v96);
        goto LABEL_135;
      }

      v353 = 0;
      v351 = 0u;
      v352 = 0u;
      v349 = 0u;
      v350 = 0u;
    }

    AttributedString._AttributeStorage._attributeModified(_:old:new:)(v7, a5, &v349, &v354);
    outlined destroy of TermOfAddress?(&v354, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v349, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

    if (__OFSUB__(v69, v68))
    {
      goto LABEL_389;
    }

    v129 = *(&v359 + 1);
    specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v68, v69, v69 - v68, v359, *(&v359 + 1));
    v17 = v42[9];
    v10 = v42[11];
    if (v17)
    {
      v130 = v42[11];
    }

    else
    {
      v130 = 0;
    }

    if (v32 < 0 || v130 < v32)
    {
      goto LABEL_391;
    }

    v333 = v42[12];
    if (v17)
    {
      v327 = v129;
      v131 = v42[10];
      v132 = (v17 + 16);
      v5 = *(v17 + 16);
      v133 = *(v17 + 18);
      if (*(v17 + 16) && v32 < v10)
      {
        v325 = v42[10];
        swift_unknownObjectRetain_n();
        if (!v133)
        {
          v134 = 0;
          v20 = v32;
          v137 = v17;
LABEL_189:
          v164 = 0;
          v165 = 24;
          v142 = v20;
          while (1)
          {
            v166 = *(v137 + v165);
            v20 = v142 - v166;
            if (__OFSUB__(v142, v166))
            {
              goto LABEL_374;
            }

            if (__OFADD__(v20, 1))
            {
              goto LABEL_375;
            }

            if (v20 + 1 < 1)
            {
              goto LABEL_197;
            }

            ++v164;
            v165 += 24;
            v142 -= v166;
            if (v5 == v164)
            {
              v164 = v5;
              goto LABEL_195;
            }
          }
        }

        v20 = v32;
        v134 = v133;
        v135 = v17;
        do
        {
          v136 = *v132;
          if (*v132)
          {
            v138 = 0;
            v139 = (v135 + 40);
            while (1)
            {
              v140 = *v139;
              v139 += 3;
              v141 = v20 - v140;
              if (__OFSUB__(v20, v140))
              {
                goto LABEL_363;
              }

              if (__OFADD__(v141, 1))
              {
                goto LABEL_364;
              }

              if (v141 + 1 < 1)
              {
                v136 = v138;
                goto LABEL_148;
              }

              ++v138;
              v20 = v141;
              if (v136 == v138)
              {
                goto LABEL_157;
              }
            }
          }

          v141 = v20;
LABEL_157:
          if (v141)
          {
            goto LABEL_376;
          }

          v20 = 0;
LABEL_148:
          v134 = (v136 << ((4 * v133 + 8) & 0x3C)) | ((-15 << ((4 * v133 + 8) & 0x3C)) - 1) & v134;
          v137 = *(v135 + 24 + 24 * v136);
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v132 = (v137 + 16);
          LOBYTE(v133) = *(v137 + 18);
          v135 = v137;
        }

        while (v133);
        LODWORD(v5) = *v132;
        if (*v132)
        {
          goto LABEL_189;
        }

        v164 = 0;
LABEL_195:
        if (!v20)
        {
          v142 = 0;
LABEL_197:
          swift_unknownObjectRelease();
          v162 = v134 & 0xFFFFFFFFFFFFF0FFLL | (v164 << 8);
          v42 = a1;
          v131 = v325;
          goto LABEL_198;
        }

        goto LABEL_413;
      }

      v162 = ((-15 << ((4 * v133 + 8) & 0x3C)) - 1) & v133 | (v5 << ((4 * v133 + 8) & 0x3C));
      swift_unknownObjectRetain();
      v142 = 0;
      v137 = 0;
LABEL_198:
      v143 = v162;
      v144 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v333, v162, v137, v17, v131);

      swift_unknownObjectRelease();
    }

    else
    {

      v142 = 0;
      v137 = 0;
      v143 = 0;
      v144 = 0;
    }

    v54 = __OFSUB__(v337, v142);
    v337 -= v142;
    if (v54)
    {
      goto LABEL_394;
    }

    v157 = v143;
    v149 = v333;
    goto LABEL_234;
  }

LABEL_410:
  __break(1u);
LABEL_411:
  __break(1u);
LABEL_412:
  __break(1u);
LABEL_413:
  __break(1u);
LABEL_414:
  __break(1u);
LABEL_415:
  __break(1u);
LABEL_416:
  __break(1u);
LABEL_417:
  __break(1u);
LABEL_418:
  __break(1u);
LABEL_419:
  __break(1u);
LABEL_420:
  __break(1u);
LABEL_421:
  __break(1u);
LABEL_422:
  __break(1u);
LABEL_423:
  __break(1u);
LABEL_424:
  __break(1u);
LABEL_425:
  __break(1u);
LABEL_426:
  __break(1u);
LABEL_427:
  __break(1u);
LABEL_428:
  __break(1u);
LABEL_429:
  __break(1u);
LABEL_430:
  __break(1u);
LABEL_431:
  __break(1u);
LABEL_432:
  __break(1u);
LABEL_433:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized AttributedString._InternalRunsSlice.updateEach(with:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = result[9];
  if (v5)
  {
    v6 = result[11];
  }

  else
  {
    v6 = 0;
  }

  if (a2 < 0 || (v7 = a2, v6 < a2))
  {
LABEL_307:
    __break(1u);
    goto LABEL_308;
  }

  v8 = a3;
  v9 = result;
  v171 = result[10];
  v172 = result + 9;
  v10 = result[12];
  LOBYTE(v176) = a5;
  if (!v5 || ((v11 = (v5 + 16), LODWORD(v12) = *(v5 + 16), *(v5 + 16)) ? (v13 = result[11] <= a2) : (v13 = 1), v13))
  {
    v14 = swift_unknownObjectRetain();
    result = specialized Rope._endPath.getter(v14);
    v15 = result;
    v16 = 0;
    v17 = 0;
    v173 = result;
    if (!v5)
    {
      goto LABEL_40;
    }

    goto LABEL_13;
  }

  v167 = result[12];
  v18 = *(v5 + 18);
  result = swift_unknownObjectRetain_n();
  if (!v18)
  {
    v19 = v7;
    v7 = 0;
    v16 = v5;
    v8 = a3;
    goto LABEL_31;
  }

  v19 = v7;
  v7 = v18;
  v20 = v5;
  do
  {
    v21 = *v11;
    if (*v11)
    {
      v22 = 0;
      v23 = (v20 + 40);
      while (1)
      {
        v24 = *v23;
        v23 += 3;
        v25 = v19 - v24;
        if (__OFSUB__(v19, v24))
        {
          goto LABEL_271;
        }

        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v25 + 1 < 1)
        {
          v21 = v22;
          goto LABEL_17;
        }

        ++v22;
        v19 = v25;
        if (v21 == v22)
        {
          goto LABEL_26;
        }
      }

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
      goto LABEL_307;
    }

    v25 = v19;
LABEL_26:
    if (v25)
    {
      goto LABEL_302;
    }

    v19 = 0;
LABEL_17:
    v7 = (v21 << ((4 * v18 + 8) & 0x3C)) | ((-15 << ((4 * v18 + 8) & 0x3C)) - 1) & v7;
    v16 = *(v20 + 24 + 24 * v21);
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    v11 = (v16 + 16);
    LOBYTE(v18) = *(v16 + 18);
    v20 = v16;
  }

  while (v18);
  LODWORD(v12) = *v11;
  if (*v11)
  {
    v8 = a3;
LABEL_31:
    v26 = 0;
    v27 = 24;
    v17 = v19;
    v12 = v12;
    while (1)
    {
      v28 = *(v16 + v27);
      v29 = v17 - v28;
      if (__OFSUB__(v17, v28))
      {
        goto LABEL_299;
      }

      if (__OFADD__(v29, 1))
      {
        goto LABEL_300;
      }

      if (v29 + 1 < 1)
      {
        break;
      }

      ++v26;
      v27 += 24;
      v17 -= v28;
      if (v12 == v26)
      {
        if (!v29)
        {
          goto LABEL_37;
        }

LABEL_268:
        __break(1u);
LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
        goto LABEL_272;
      }
    }

    v12 = v26;
  }

  else
  {
LABEL_267:
    v12 = 0;
    v8 = a3;
    if (v19)
    {
      goto LABEL_268;
    }

LABEL_37:
    v17 = 0;
  }

  result = swift_unknownObjectRelease();
  v15 = v7 & 0xFFFFFFFFFFFFF0FFLL | (v12 << 8);
  v7 = a2;
  v10 = v167;
  v173 = v15;
  if (v5)
  {
LABEL_13:
    v170 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v10, v15, v16, v5, v171);
    result = swift_unknownObjectRelease();
    goto LABEL_41;
  }

LABEL_40:
  v170 = 0;
LABEL_41:
  v30 = v7 - v17;
  v31 = v172;
  if (!__OFSUB__(v7, v17))
  {
    v163 = v176 & 1;
    v171 = v9;
    while (1)
    {
      v32 = *v31;
      if (v7 == v8)
      {
        if (v32)
        {
          v33 = *(v9 + 11);
          if (v33 < v7)
          {
            goto LABEL_303;
          }

          v161 = *(v9 + 12);
          v162 = *(v9 + 10);
          v9 = (v32 + 16);
          v34 = *(v32 + 16);
          v5 = *(v32 + 18);
          if (*(v32 + 16))
          {
            v35 = v33 <= v7;
          }

          else
          {
            v35 = 1;
          }

          if (!v35)
          {
            v167 = v10;
            result = swift_unknownObjectRetain_n();
            if (!v5)
            {
              v41 = 0;
              v19 = v7;
              v7 = v32;
LABEL_75:
              v9 = v171;
              v48 = 0;
              v49 = 24;
              v38 = v19;
              v50 = v34;
              v8 = a3;
              while (1)
              {
                v51 = *(v7 + v49);
                v19 = v38 - v51;
                if (__OFSUB__(v38, v51))
                {
                  goto LABEL_273;
                }

                if (__OFADD__(v19, 1))
                {
                  goto LABEL_274;
                }

                if (v19 + 1 < 1)
                {
                  goto LABEL_83;
                }

                ++v48;
                v49 += 24;
                v38 -= v51;
                if (v50 == v48)
                {
                  v48 = v50;
                  goto LABEL_81;
                }
              }
            }

            v19 = v7;
            v41 = v5;
            v42 = v32;
            do
            {
              v43 = *v9;
              if (*v9)
              {
                v44 = 0;
                v45 = (v42 + 40);
                while (1)
                {
                  v46 = *v45;
                  v45 += 3;
                  v47 = v19 - v46;
                  if (__OFSUB__(v19, v46))
                  {
                    break;
                  }

                  if (__OFADD__(v47, 1))
                  {
                    goto LABEL_264;
                  }

                  if (v47 + 1 < 1)
                  {
                    v43 = v44;
                    goto LABEL_61;
                  }

                  ++v44;
                  v19 = v47;
                  if (v43 == v44)
                  {
                    goto LABEL_70;
                  }
                }

                __break(1u);
LABEL_264:
                __break(1u);
LABEL_265:
                __break(1u);
LABEL_266:
                __break(1u);
                goto LABEL_267;
              }

              v47 = v19;
LABEL_70:
              if (v47)
              {
                goto LABEL_275;
              }

              v19 = 0;
LABEL_61:
              v41 = (v43 << ((4 * v5 + 8) & 0x3C)) | ((-15 << ((4 * v5 + 8) & 0x3C)) - 1) & v41;
              v7 = *(v42 + 24 + 24 * v43);
              swift_unknownObjectRetain();
              result = swift_unknownObjectRelease();
              v9 = (v7 + 16);
              v5 = *(v7 + 18);
              v42 = v7;
            }

            while (*(v7 + 18));
            LODWORD(v34) = *v9;
            if (*v9)
            {
              goto LABEL_75;
            }

            v48 = 0;
            v8 = a3;
            v9 = v171;
LABEL_81:
            if (!v19)
            {
              v38 = 0;
LABEL_83:
              swift_unknownObjectRelease();
              v37 = v41 & 0xFFFFFFFFFFFFF0FFLL | (v48 << 8);
              v36 = a2;
              v10 = v167;
              goto LABEL_84;
            }

            goto LABEL_310;
          }

          v36 = v7;
          v37 = ((-15 << ((4 * v5 + 8) & 0x3C)) - 1) & v5 | (v34 << ((4 * v5 + 8) & 0x3C));
          swift_unknownObjectRetain();
          v38 = 0;
          v7 = 0;
          v8 = a3;
          v9 = v171;
LABEL_84:
          specialized Rope._Node.distanceFromStart<A>(to:in:)(v161, v37, v7, v32, v162);
          result = swift_unknownObjectRelease();
          v7 = v36;
        }

        else
        {
          if (v7 > 0)
          {
            goto LABEL_304;
          }

          v38 = 0;
        }

        v39 = v7 - v38;
        v40 = v173;
        if (__OFSUB__(v7, v38))
        {
          goto LABEL_289;
        }
      }

      else
      {
        if (v32)
        {
          v39 = *(v9 + 11);
        }

        else
        {
          v39 = 0;
        }

        v40 = v173;
      }

      if (v30 >= v39)
      {
        return result;
      }

      if (v10 != *(v9 + 12))
      {
        goto LABEL_279;
      }

      if (v16)
      {
        v52 = (v16 + 24 * ((v40 >> ((4 * *(v16 + 18) + 8) & 0x3C)) & 0xF));
        v54 = v52[4];
        v53 = v52[5];
        v55 = v52[3];
        v56 = v30 + v55;
        v57 = __OFADD__(v30, v55);

        if (v57)
        {
          goto LABEL_287;
        }

        *&v184 = v54;
        *(&v184 + 1) = v53;
        v58 = v7;
        if (v30 >= v7)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v80 = *(v9 + 9);
        swift_unknownObjectRetain();
        specialized Rope._Node.subscript.getter(v40, v80);
        v82 = v81;
        v84 = v83;
        result = swift_unknownObjectRelease();
        if (v10 != *(v9 + 12))
        {
          goto LABEL_297;
        }

        v168 = v10;
        v85 = v8;
        v86 = v40;
        v87 = *(v9 + 9);
        swift_unknownObjectRetain();
        v88 = specialized Rope._Node.subscript.getter(v86, v87);
        swift_unknownObjectRelease();

        v56 = v30 + v88;
        if (__OFADD__(v30, v88))
        {
          goto LABEL_298;
        }

        *&v184 = v82;
        *(&v184 + 1) = v84;
        v58 = v7;
        v8 = v85;
        v10 = v168;
        if (v30 >= v7)
        {
LABEL_94:
          if (v30 >= v8)
          {
            v58 = v8;
          }

          else
          {
            v58 = v30;
          }
        }
      }

      if (v56 <= v7)
      {
        v59 = v7;
      }

      else
      {
        v59 = v56;
      }

      if (v56 <= v8)
      {
        v60 = v59;
      }

      else
      {
        v60 = v8;
      }

      if (v58 == v60)
      {
        goto LABEL_280;
      }

      v176 = v30;
      if (v58 != v30 || v60 != v56)
      {
        LOBYTE(v181) = v163;
        result = specialized AttributedString._AttributeStorage.mergeIn(_:mergePolicy:)(a4, &v181);
        if (__OFSUB__(v60, v58))
        {
          goto LABEL_291;
        }

        v67 = *(&v184 + 1);
        result = specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v58, v60, v60 - v58, v184, *(&v184 + 1));
        v68 = v9;
        v9 = *(v9 + 9);
        v19 = *(v68 + 11);
        if (v9)
        {
          v69 = *(v68 + 11);
        }

        else
        {
          v69 = 0;
        }

        if (v30 < 0 || v69 < v30)
        {
          goto LABEL_292;
        }

        v174 = *(v171 + 96);
        if (v9)
        {
          v70 = *(v171 + 80);
          v71 = v9 + 8;
          v7 = v9[8];
          v5 = *(v9 + 18);
          if (v9[8] && v30 < v19)
          {
            v167 = *(v171 + 80);
            v16 = v67;
            result = swift_unknownObjectRetain_n();
            if (!v5)
            {
              v73 = 0;
              v72 = v30;
              v63 = v9;
LABEL_161:
              v104 = 0;
              v105 = 24;
              v89 = v72;
              while (1)
              {
                v106 = *(v63 + v105);
                v72 = v89 - v106;
                if (__OFSUB__(v89, v106))
                {
                  goto LABEL_276;
                }

                if (__OFADD__(v72, 1))
                {
                  goto LABEL_277;
                }

                if (v72 + 1 < 1)
                {
                  goto LABEL_169;
                }

                ++v104;
                v105 += 24;
                v89 -= v106;
                if (v7 == v104)
                {
                  v104 = v7;
                  goto LABEL_167;
                }
              }
            }

            v72 = v30;
            v73 = v5;
            v74 = v9;
            do
            {
              v75 = *v71;
              if (*v71)
              {
                v76 = 0;
                v77 = (v74 + 20);
                while (1)
                {
                  v78 = *v77;
                  v77 += 3;
                  v79 = v72 - v78;
                  if (__OFSUB__(v72, v78))
                  {
                    goto LABEL_265;
                  }

                  if (__OFADD__(v79, 1))
                  {
                    goto LABEL_266;
                  }

                  if (v79 + 1 < 1)
                  {
                    v75 = v76;
                    goto LABEL_127;
                  }

                  ++v76;
                  v72 = v79;
                  if (v75 == v76)
                  {
                    goto LABEL_136;
                  }
                }
              }

              v79 = v72;
LABEL_136:
              if (v79)
              {
                goto LABEL_278;
              }

              v72 = 0;
LABEL_127:
              v73 = (v75 << ((4 * v5 + 8) & 0x3C)) | ((-15 << ((4 * v5 + 8) & 0x3C)) - 1) & v73;
              v63 = *&v74[12 * v75 + 12];
              swift_unknownObjectRetain();
              result = swift_unknownObjectRelease();
              v71 = (v63 + 16);
              v5 = *(v63 + 18);
              v74 = v63;
            }

            while (*(v63 + 18));
            LODWORD(v7) = *v71;
            if (*v71)
            {
              goto LABEL_161;
            }

            v104 = 0;
LABEL_167:
            if (!v72)
            {
              v89 = 0;
LABEL_169:
              swift_unknownObjectRelease();
              v90 = v73 & 0xFFFFFFFFFFFFF0FFLL | (v104 << 8);
              v8 = a3;
              v70 = v167;
              goto LABEL_170;
            }

            goto LABEL_311;
          }

          v90 = ((-15 << ((4 * v5 + 8) & 0x3C)) - 1) & v5 | (v7 << ((4 * v5 + 8) & 0x3C));
          swift_unknownObjectRetain();
          v89 = 0;
          v63 = 0;
LABEL_170:
          v91 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v174, v90, v63, v9, v70);

          swift_unknownObjectRelease();
        }

        else
        {

          v89 = 0;
          v63 = 0;
          v90 = 0;
          v91 = 0;
        }

        v107 = __OFSUB__(v176, v89);
        v176 -= v89;
        v97 = v171;
        if (v107)
        {
          goto LABEL_296;
        }

        v62 = v174;
        goto LABEL_205;
      }

      if (v10 != *(v9 + 12))
      {
        goto LABEL_290;
      }

      if (!*v172)
      {
        goto LABEL_319;
      }

      specialized Rope._Node._prepareModify(at:)(v173, &v185);
      v196[0] = v186;
      v181 = v185;
      v182 = v186;
      v183 = v187;
      outlined destroy of TermOfAddress?(v196, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      result = outlined destroy of TermOfAddress?(v196 + 8, &_sShySSGMd);
      v182 = MEMORY[0x1E69E7CC8];
      *(v9 + 12) = v10 + 1;
      if (!*(v9 + 9))
      {
        goto LABEL_320;
      }

      specialized Rope._Node._finalizeModify(_:)(&v178, &v181);

      LOBYTE(v181) = v163;
      result = specialized AttributedString._AttributeStorage.mergeIn(_:mergePolicy:)(a4, &v181);
      if (v10 + 1 != *(v9 + 12))
      {
        goto LABEL_293;
      }

      if (!*v172)
      {
        goto LABEL_322;
      }

      specialized Rope._Node._prepareModify(at:)(v173, &v188);
      v194 = v189;
      v195 = v190;
      outlined destroy of TermOfAddress?(&v194, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      result = outlined destroy of TermOfAddress?(&v195, &_sShySSGMd);
      v181 = v188;
      v183 = v191;
      v61 = v184;
      v182 = v184;
      v62 = v10 + 2;
      *(v9 + 12) = v62;
      if (!*(v9 + 9))
      {
        goto LABEL_321;
      }

      v63 = specialized Rope._Node._finalizeModify(_:)(v177, &v181);

      v64 = *(v9 + 9);
      v65 = *(v9 + 12);
      *&v181 = v62;
      *(&v181 + 1) = v173;
      *&v182 = v63;
      if (v62 != v65)
      {
        goto LABEL_294;
      }

      if (v64)
      {
        v66 = ((-15 << ((4 * *(v64 + 18) + 8) & 0x3C)) - 1) & *(v64 + 18) | (*(v64 + 16) << ((4 * *(v64 + 18) + 8) & 0x3C));
        result = swift_unknownObjectRetain();
      }

      else
      {
        v66 = 0;
      }

      v8 = a3;
      if (v173 >= v66)
      {
        goto LABEL_295;
      }

      v92 = (4 * *(v63 + 18) + 8) & 0x3C;
      v93 = ((v173 >> v92) & 0xF) + 1;
      if (v93 >= *(v63 + 16))
      {
        v97 = v171;
        if (specialized Rope._Node.formSuccessor(of:)(&v181, v64))
        {
          result = swift_unknownObjectRelease();
          v94 = *(&v181 + 1);
          v96 = v182;
          v95 = v181;
        }

        else
        {
          v94 = specialized Rope._endPath.getter(v64);
          result = swift_unknownObjectRelease();
          v96 = 0;
          *&v181 = v62;
          v95 = v62;
        }

        v90 = v173;
      }

      else
      {
        v94 = (v93 << v92) | ((-15 << v92) - 1) & v173;
        result = swift_unknownObjectRelease();
        v95 = v62;
        v96 = v63;
        v97 = v171;
        v90 = v173;
      }

      v98 = v172;
      v99 = *v172;
      if (!*v172)
      {
        v103 = 0;
        goto LABEL_187;
      }

      if (v94 >= (((-15 << ((4 * *(v99 + 18) + 8) & 0x3C)) - 1) & *(v99 + 18) | (*(v99 + 16) << ((4 * *(v99 + 18) + 8) & 0x3C))))
      {
        goto LABEL_185;
      }

      if (v95 != v97[12])
      {
        goto LABEL_305;
      }

      if (v96)
      {
        v100 = v96 + 24 * ((v94 >> ((4 * *(v96 + 18) + 8) & 0x3C)) & 0xF);
        v101 = *(v100 + 32);
        v102 = *(v100 + 40);
      }

      else
      {
        specialized Rope._Node.subscript.getter(v94, v99);
        v101 = v108;
        v102 = v109;
      }

      if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v101, v61) & 1) == 0)
      {

LABEL_184:

LABEL_185:
        v103 = *v98;
        if (!*v98)
        {
          goto LABEL_187;
        }

LABEL_186:
        v103 = *(v103 + 18);
        goto LABEL_187;
      }

      v110 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v102, *(&v61 + 1));

      if (v110)
      {
        v98 = v172;
        v90 = specialized Rope._remove(at:)(&v181, v62, v173);
        v111 = v97[12];
        if (v90 < specialized Rope._endPath.getter(v97[9]))
        {
          specialized Rope._Node.unmanagedLeaf(at:)(v90, v97[9]);
        }

        v112 = v181;

        if (v111 != v97[12])
        {
          goto LABEL_316;
        }

        if (!*v172)
        {
          goto LABEL_325;
        }

        result = specialized Rope._Node._prepareModify(at:)(v90, v192);
        v181 = v192[0];
        v182 = v192[1];
        v183 = v192[2];
        if (__OFADD__(*(&v192[0] + 1), v112))
        {
          goto LABEL_317;
        }

        *(&v181 + 1) = *(&v192[0] + 1) + v112;
        v62 = v111 + 1;
        v97[12] = v111 + 1;
        if (!v97[9])
        {
          goto LABEL_326;
        }

        v63 = specialized Rope._Node._finalizeModify(_:)(v177, &v181);

        goto LABEL_184;
      }

      v90 = v173;
      v103 = *v172;
      if (*v172)
      {
        goto LABEL_186;
      }

LABEL_187:
      v91 = v170;
      if (v103 >= v90)
      {
      }

      else
      {
        v113 = v97[9];
        v114 = v97[10];
        v115 = v90;
        v116 = v62;
        v117 = v97[11];
        v118 = v97[12];
        v175 = v116;
        *&v181 = v116;
        *(&v181 + 1) = v115;
        v119 = v115;
        *&v182 = v63;
        swift_unknownObjectRetain();
        specialized Rope.formIndex(before:)(&v181, v113, v114, v117, v118);
        swift_unknownObjectRelease();
        specialized Rope.subscript.getter(v181, *(&v181 + 1), v182, v97[9], v97[10], v97[11], v97[12]);
        v121 = v120;
        if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v122, v61))
        {
          v123 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v121, *(&v61 + 1));

          if (v123)
          {
            v124 = specialized Rope._remove(at:)(&v181, v175, v119);
            v125 = v97[12];
            if (v124 >= specialized Rope._endPath.getter(v97[9]))
            {
              v126 = 0;
            }

            else
            {
              v126 = specialized Rope._Node.unmanagedLeaf(at:)(v124, v97[9]);
            }

            v8 = a3;
            v178 = v125;
            v179 = v124;
            v180 = v126;
            v127 = v181;

            v128 = v97[9];
            v129 = v97[10];
            v130 = v97[11];
            v131 = v97[12];
            swift_unknownObjectRetain();
            specialized Rope.formIndex(before:)(&v178, v128, v129, v130, v131);
            result = swift_unknownObjectRelease();
            v132 = v178;
            if (v178 != v97[12])
            {
              goto LABEL_312;
            }

            if (!*v172)
            {
              goto LABEL_323;
            }

            v90 = v179;
            result = specialized Rope._Node._prepareModify(at:)(v179, v193);
            v181 = v193[0];
            v182 = v193[1];
            v183 = v193[2];
            if (__OFSUB__(v176, *(&v193[0] + 1)))
            {
              goto LABEL_313;
            }

            if (__OFADD__(*(&v193[0] + 1), v127))
            {
              goto LABEL_314;
            }

            v176 -= *(&v193[0] + 1);
            *(&v181 + 1) = *(&v193[0] + 1) + v127;
            v62 = v132 + 1;
            v97[12] = v132 + 1;
            if (!v97[9])
            {
              goto LABEL_324;
            }

            v63 = specialized Rope._Node._finalizeModify(_:)(v177, &v181);

            v91 = v170 - 1;
            if (__OFSUB__(v170, 1))
            {
              goto LABEL_315;
            }

            goto LABEL_205;
          }
        }

        else
        {
        }

        v90 = v119;
        v8 = a3;
        v62 = v175;
      }

LABEL_205:
      v133 = v97[9];
      v134 = v97[12];
      *&v181 = v62;
      *(&v181 + 1) = v90;
      *&v182 = v63;
      v107 = __OFADD__(v91, 1);
      v135 = v91 + 1;
      if (v107)
      {
        goto LABEL_282;
      }

      if (v62 != v134)
      {
        goto LABEL_283;
      }

      if (v63)
      {
        v136 = *(v63 + 24 * ((v90 >> ((4 * *(v63 + 18) + 8) & 0x3C)) & 0xF) + 24);
        v107 = __OFADD__(v176, v136);
        v176 += v136;
        if (v107)
        {
          goto LABEL_288;
        }

        if (!v133)
        {
          goto LABEL_281;
        }

        result = swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v137 = specialized Rope._Node.subscript.getter(v90, v133);

        v107 = __OFADD__(v176, v137);
        v176 += v137;
        if (v107)
        {
          goto LABEL_301;
        }

        if (!v133)
        {
          goto LABEL_281;
        }
      }

      if (v90 >= (((-15 << ((4 * *(v133 + 18) + 8) & 0x3C)) - 1) & *(v133 + 18) | (*(v133 + 16) << ((4 * *(v133 + 18) + 8) & 0x3C))))
      {
        goto LABEL_281;
      }

      v170 = v135;
      if (v63 && (v138 = (4 * *(v63 + 18) + 8) & 0x3C, v139 = ((v90 >> v138) & 0xF) + 1, v139 < *(v63 + 16)))
      {
        result = swift_unknownObjectRelease();
        v173 = (v139 << v138) | ((-15 << v138) - 1) & v90;
        v9 = v171;
        v31 = v172;
      }

      else
      {
        v31 = v172;
        if (specialized Rope._Node.formSuccessor(of:)(&v181, v133))
        {
          result = swift_unknownObjectRelease();
          v173 = *(&v181 + 1);
        }

        else
        {
          v140 = *(v133 + 18);
          v141 = *(v133 + 16);
          result = swift_unknownObjectRelease();
          *&v181 = v62;
          *(&v181 + 1) = ((-15 << ((4 * v140 + 8) & 0x3C)) - 1) & v140 | (v141 << ((4 * v140 + 8) & 0x3C));
          v173 = *(&v181 + 1);
          *&v182 = 0;
        }

        v9 = v171;
      }

      v30 = v176;
      v7 = a2;
      v10 = v181;
      v16 = v182;
      if (v176 >= v8)
      {
        v142 = *v31;
        if (a2 == v8)
        {
          v169 = *(v9 + 12);
          if (v142)
          {
            v143 = *(v9 + 11);
            if (v143 < a2)
            {
              goto LABEL_306;
            }

            v144 = *(v9 + 10);
            v145 = (v142 + 16);
            v146 = *(v142 + 16);
            v147 = *(v142 + 18);
            if (*(v142 + 16) && v143 > a2)
            {
              v176 = *(v9 + 10);
              result = swift_unknownObjectRetain_n();
              if (!v147)
              {
                v149 = 0;
                v148 = a2;
                v16 = v142;
LABEL_249:
                v158 = 0;
                v159 = 24;
                v156 = v148;
                while (1)
                {
                  v160 = *(v16 + v159);
                  v148 = v156 - v160;
                  if (__OFSUB__(v156, v160))
                  {
                    goto LABEL_284;
                  }

                  if (__OFADD__(v148, 1))
                  {
                    goto LABEL_285;
                  }

                  if (v148 + 1 < 1)
                  {
                    goto LABEL_257;
                  }

                  ++v158;
                  v159 += 24;
                  v156 -= v160;
                  if (v146 == v158)
                  {
                    v158 = v146;
                    goto LABEL_255;
                  }
                }
              }

              v148 = a2;
              v149 = v147;
              v150 = v142;
              do
              {
                v151 = *v145;
                if (*v145)
                {
                  v152 = 0;
                  v153 = (v150 + 40);
                  while (1)
                  {
                    v154 = *v153;
                    v153 += 3;
                    v155 = v148 - v154;
                    if (__OFSUB__(v148, v154))
                    {
                      goto LABEL_269;
                    }

                    if (__OFADD__(v155, 1))
                    {
                      goto LABEL_270;
                    }

                    if (v155 + 1 < 1)
                    {
                      v151 = v152;
                      goto LABEL_230;
                    }

                    ++v152;
                    v148 = v155;
                    if (v151 == v152)
                    {
                      goto LABEL_239;
                    }
                  }
                }

                v155 = v148;
LABEL_239:
                if (v155)
                {
                  goto LABEL_286;
                }

                v148 = 0;
LABEL_230:
                v149 = (v151 << ((4 * v147 + 8) & 0x3C)) | ((-15 << ((4 * v147 + 8) & 0x3C)) - 1) & v149;
                v16 = *(v150 + 24 + 24 * v151);
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v145 = (v16 + 16);
                LOBYTE(v147) = *(v16 + 18);
                v150 = v16;
              }

              while (v147);
              LODWORD(v146) = *v145;
              if (*v145)
              {
                goto LABEL_249;
              }

              v158 = 0;
LABEL_255:
              if (!v148)
              {
                v156 = 0;
LABEL_257:
                swift_unknownObjectRelease();
                v157 = v149 & 0xFFFFFFFFFFFFF0FFLL | (v158 << 8);
                v8 = a3;
                v31 = v172;
                v144 = v176;
                goto LABEL_258;
              }

              goto LABEL_318;
            }

            v157 = ((-15 << ((4 * v147 + 8) & 0x3C)) - 1) & v147 | (v146 << ((4 * v147 + 8) & 0x3C));
            swift_unknownObjectRetain();
            v156 = 0;
            v16 = 0;
LABEL_258:
            v173 = v157;
            v170 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v169, v157, v16, v142, v144);
            result = swift_unknownObjectRelease();
          }

          else
          {
            if (a2 > 0)
            {
              goto LABEL_309;
            }

            v156 = 0;
            v16 = 0;
            v173 = 0;
            v170 = 0;
          }

          v7 = a2;
          v107 = __OFSUB__(a2, v156);
          v30 = a2 - v156;
          v10 = v169;
          if (v107)
          {
            __break(1u);
            return result;
          }
        }

        else
        {
          v30 = 0;
          v170 = 0;
          v16 = 0;
          v173 = 0;
          v10 = *(v9 + 12);
          if (v142)
          {
            v16 = 0;
            v30 = *(v9 + 11);
            v170 = *(v9 + 10);
            v173 = ((-15 << ((4 * *(v142 + 18) + 8) & 0x3C)) - 1) & *(v142 + 18) | (*(v142 + 16) << ((4 * *(v142 + 18) + 8) & 0x3C));
          }
        }
      }
    }
  }

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
  return result;
}

uint64_t *specialized AttributedString._InternalRunsSlice.updateEach(with:)(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result[9];
  if (v4)
  {
    v5 = result[11];
  }

  else
  {
    v5 = 0;
  }

  if (a2 < 0 || (v6 = a2, v5 < a2))
  {
LABEL_310:
    __break(1u);
LABEL_311:
    __break(1u);
    goto LABEL_312;
  }

  v7 = result;
  v8 = result[10];
  v9 = result[12];
  v175 = result;
  v177 = result + 9;
  if (!v4 || ((v10 = (v4 + 16), v11 = *(v4 + 16), *(v4 + 16)) ? (v12 = result[11] <= a2) : (v12 = 1), v12))
  {
    v13 = swift_unknownObjectRetain();
    result = specialized Rope._endPath.getter(v13);
    v14 = result;
    v15 = 0;
    v16 = 0;
    if (!v4)
    {
      goto LABEL_40;
    }

    goto LABEL_13;
  }

  v179 = result[10];
  v171 = result[12];
  v18 = *(v4 + 18);
  result = swift_unknownObjectRetain_n();
  if (!v18)
  {
    v20 = 0;
    v19 = v6;
    v15 = v4;
    goto LABEL_31;
  }

  v19 = v6;
  v20 = v18;
  v21 = v4;
  do
  {
    v22 = *v10;
    if (*v10)
    {
      v23 = 0;
      v24 = (v21 + 40);
      while (1)
      {
        v25 = *v24;
        v24 += 3;
        v26 = v19 - v25;
        if (__OFSUB__(v19, v25))
        {
          goto LABEL_273;
        }

        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v26 + 1 < 1)
        {
          v22 = v23;
          goto LABEL_17;
        }

        ++v23;
        v19 = v26;
        if (v22 == v23)
        {
          goto LABEL_26;
        }
      }

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

    v26 = v19;
LABEL_26:
    if (v26)
    {
      goto LABEL_299;
    }

    v19 = 0;
LABEL_17:
    v20 = (v22 << ((4 * v18 + 8) & 0x3C)) | ((-15 << ((4 * v18 + 8) & 0x3C)) - 1) & v20;
    v15 = *(v21 + 24 + 24 * v22);
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    v10 = (v15 + 16);
    LOBYTE(v18) = *(v15 + 18);
    v21 = v15;
  }

  while (v18);
  v11 = *v10;
  if (*v10)
  {
    v6 = a2;
LABEL_31:
    v27 = 0;
    v28 = 24;
    v16 = v19;
    v29 = v11;
    while (1)
    {
      v30 = *(v15 + v28);
      v31 = v16 - v30;
      if (__OFSUB__(v16, v30))
      {
        goto LABEL_297;
      }

      if (__OFADD__(v31, 1))
      {
        goto LABEL_298;
      }

      if (v31 + 1 < 1)
      {
        break;
      }

      ++v27;
      v28 += 24;
      v16 -= v30;
      if (v11 == v27)
      {
        if (!v31)
        {
          goto LABEL_37;
        }

LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
        goto LABEL_274;
      }
    }

    v29 = v27;
  }

  else
  {
LABEL_271:
    v29 = 0;
    v6 = a2;
    if (v19)
    {
      goto LABEL_272;
    }

LABEL_37:
    v16 = 0;
  }

  result = swift_unknownObjectRelease();
  v14 = v20 & 0xFFFFFFFFFFFFF0FFLL | (v29 << 8);
  v7 = v175;
  v9 = v171;
  v8 = v179;
  if (v4)
  {
LABEL_13:
    v17 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v9, v14, v15, v4, v8);
    result = swift_unknownObjectRelease();
    goto LABEL_41;
  }

LABEL_40:
  v17 = 0;
LABEL_41:
  v32 = a3;
  v19 = v6 - v16;
  if (!__OFSUB__(v6, v16))
  {
    v178 = v17;
    while (1)
    {
      v179 = v14;
      v35 = *v177;
      if (v6 == v32)
      {
        if (v35)
        {
          v36 = v7[11];
          if (v36 < v6)
          {
            goto LABEL_296;
          }

          v171 = v9;
          v168 = v7[12];
          v169 = v7[10];
          v37 = (v35 + 16);
          v38 = *(v35 + 16);
          v39 = v6;
          v40 = *(v35 + 18);
          if (*(v35 + 16))
          {
            v41 = v36 <= v39;
          }

          else
          {
            v41 = 1;
          }

          if (!v41)
          {
            result = swift_unknownObjectRetain_n();
            if (!v40)
            {
              v47 = 0;
              v4 = a2;
              v44 = v35;
LABEL_78:
              v9 = v171;
              v54 = 0;
              v55 = 24;
              v43 = v4;
              v56 = v38;
              v7 = v175;
              while (1)
              {
                v57 = *(v44 + v55);
                v4 = v43 - v57;
                if (__OFSUB__(v43, v57))
                {
                  goto LABEL_275;
                }

                if (__OFADD__(v4, 1))
                {
                  goto LABEL_276;
                }

                if (v4 + 1 < 1)
                {
                  goto LABEL_86;
                }

                ++v54;
                v55 += 24;
                v43 -= v57;
                if (v56 == v54)
                {
                  v54 = v56;
                  goto LABEL_84;
                }
              }
            }

            v4 = a2;
            v47 = v40;
            v48 = v35;
            v20 = 24;
            do
            {
              v49 = *v37;
              if (*v37)
              {
                v50 = 0;
                v51 = (v48 + 40);
                while (1)
                {
                  v52 = *v51;
                  v51 += 3;
                  v53 = v4 - v52;
                  if (__OFSUB__(v4, v52))
                  {
                    break;
                  }

                  if (__OFADD__(v53, 1))
                  {
                    goto LABEL_266;
                  }

                  if (v53 + 1 < 1)
                  {
                    v49 = v50;
                    goto LABEL_64;
                  }

                  ++v50;
                  v4 = v53;
                  if (v49 == v50)
                  {
                    goto LABEL_73;
                  }
                }

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
                goto LABEL_271;
              }

              v53 = v4;
LABEL_73:
              if (v53)
              {
                goto LABEL_277;
              }

              v4 = 0;
LABEL_64:
              v47 = (v49 << ((4 * v40 + 8) & 0x3C)) | ((-15 << ((4 * v40 + 8) & 0x3C)) - 1) & v47;
              v44 = *(v48 + 24 + 24 * v49);
              swift_unknownObjectRetain();
              result = swift_unknownObjectRelease();
              v37 = (v44 + 16);
              LOBYTE(v40) = *(v44 + 18);
              v48 = v44;
            }

            while (v40);
            LODWORD(v38) = *v37;
            if (*v37)
            {
              goto LABEL_78;
            }

            v54 = 0;
            v7 = v175;
            v9 = v171;
LABEL_84:
            if (!v4)
            {
              v43 = 0;
LABEL_86:
              swift_unknownObjectRelease();
              v42 = v47 & 0xFFFFFFFFFFFFF0FFLL | (v54 << 8);
              v32 = a3;
              goto LABEL_87;
            }

            goto LABEL_313;
          }

          v42 = ((-15 << ((4 * v40 + 8) & 0x3C)) - 1) & v40 | (v38 << ((4 * v40 + 8) & 0x3C));
          swift_unknownObjectRetain();
          v43 = 0;
          v44 = 0;
          v7 = v175;
          v9 = v171;
LABEL_87:
          specialized Rope._Node.distanceFromStart<A>(to:in:)(v168, v42, v44, v35, v169);
          result = swift_unknownObjectRelease();
        }

        else
        {
          if (v6 > 0)
          {
            goto LABEL_308;
          }

          v43 = 0;
        }

        v45 = a2 - v43;
        v46 = v179;
        if (__OFSUB__(a2, v43))
        {
          goto LABEL_291;
        }

        v6 = a2;
      }

      else
      {
        if (v35)
        {
          v45 = v7[11];
        }

        else
        {
          v45 = 0;
        }

        v46 = v179;
      }

      if (v19 >= v45)
      {
        return result;
      }

      if (v9 != v7[12])
      {
        goto LABEL_278;
      }

      v58 = v9;
      if (v15)
      {
        v59 = (v15 + 24 * ((v46 >> ((4 * *(v15 + 18) + 8) & 0x3C)) & 0xF));
        v61 = v59[4];
        v60 = v59[5];
        v62 = v59[3];
        v63 = v19 + v62;
        v64 = __OFADD__(v19, v62);

        if (v64)
        {
          goto LABEL_289;
        }

        *&v188 = v61;
        *(&v188 + 1) = v60;
        v65 = v6;
        v46 = v179;
        if (v19 >= v6)
        {
          goto LABEL_98;
        }
      }

      else
      {
        v83 = v7[9];
        swift_unknownObjectRetain();
        specialized Rope._Node.subscript.getter(v46, v83);
        v85 = v84;
        v87 = v86;
        result = swift_unknownObjectRelease();
        if (v58 != v7[12])
        {
          goto LABEL_293;
        }

        v88 = v7[9];
        swift_unknownObjectRetain();
        v89 = specialized Rope._Node.subscript.getter(v46, v88);
        swift_unknownObjectRelease();

        v34 = __OFADD__(v19, v89);
        v63 = v19 + v89;
        if (v34)
        {
          goto LABEL_294;
        }

        *&v188 = v85;
        *(&v188 + 1) = v87;
        v7 = v175;
        v6 = a2;
        v65 = a2;
        v32 = a3;
        if (v19 >= a2)
        {
LABEL_98:
          if (v19 >= v32)
          {
            v65 = v32;
          }

          else
          {
            v65 = v19;
          }
        }
      }

      if (v63 <= v6)
      {
        v66 = v6;
      }

      else
      {
        v66 = v63;
      }

      if (v63 <= v32)
      {
        v67 = v66;
      }

      else
      {
        v67 = v32;
      }

      if (v65 == v67)
      {
        goto LABEL_279;
      }

      v187 = 1;
      if (v65 != v19 || v67 != v63)
      {
        result = specialized closure #1 in AttributedString.init<A, B>(_:including:)(&v188, &v187, a4);
        if (v187 == 1)
        {
          if (__OFSUB__(v67, v65))
          {
            goto LABEL_300;
          }

          result = specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v65, v67, v67 - v65, v188, *(&v188 + 1));
          v74 = v7[9];
          v4 = v7[11];
          if (v74)
          {
            v75 = v7[11];
          }

          else
          {
            v75 = 0;
          }

          if (v19 < 0 || v75 < v19)
          {
            goto LABEL_301;
          }

          v76 = v7[12];
          if (v74)
          {
            v77 = v7[10];
            v78 = (v74 + 16);
            v79 = *(v74 + 16);
            v20 = *(v74 + 18);
            v179 = v77;
            if (*(v74 + 16) && v19 < v4)
            {
              v171 = v76;
              result = swift_unknownObjectRetain_n();
              if (!v20)
              {
                v81 = 0;
                v80 = v19;
                v15 = v74;
LABEL_171:
                v107 = 0;
                v108 = 24;
                v96 = v80;
                while (1)
                {
                  v109 = *(v15 + v108);
                  v80 = v96 - v109;
                  if (__OFSUB__(v96, v109))
                  {
                    goto LABEL_283;
                  }

                  if (__OFADD__(v80, 1))
                  {
                    goto LABEL_284;
                  }

                  if (v80 + 1 < 1)
                  {
                    goto LABEL_179;
                  }

                  ++v107;
                  v108 += 24;
                  v96 -= v109;
                  if (v79 == v107)
                  {
                    v107 = v79;
                    goto LABEL_177;
                  }
                }
              }

              v80 = v19;
              v81 = v20;
              v82 = v74;
              do
              {
                v90 = *v78;
                if (*v78)
                {
                  v91 = 0;
                  v92 = (v82 + 40);
                  while (1)
                  {
                    v93 = *v92;
                    v92 += 3;
                    v94 = v80 - v93;
                    if (__OFSUB__(v80, v93))
                    {
                      goto LABEL_267;
                    }

                    if (__OFADD__(v94, 1))
                    {
                      goto LABEL_268;
                    }

                    if (v94 + 1 < 1)
                    {
                      v90 = v91;
                      goto LABEL_137;
                    }

                    ++v91;
                    v80 = v94;
                    if (v90 == v91)
                    {
                      goto LABEL_146;
                    }
                  }
                }

                v94 = v80;
LABEL_146:
                if (v94)
                {
                  goto LABEL_287;
                }

                v80 = 0;
LABEL_137:
                v81 = (v90 << ((4 * v20 + 8) & 0x3C)) | ((-15 << ((4 * v20 + 8) & 0x3C)) - 1) & v81;
                v15 = *(v82 + 24 + 24 * v90);
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v78 = (v15 + 16);
                v20 = *(v15 + 18);
                v82 = v15;
              }

              while (*(v15 + 18));
              LODWORD(v79) = *v78;
              if (*v78)
              {
                goto LABEL_171;
              }

              v107 = 0;
LABEL_177:
              if (!v80)
              {
                v96 = 0;
LABEL_179:
                swift_unknownObjectRelease();
                v46 = v81 & 0xFFFFFFFFFFFFF0FFLL | (v107 << 8);
                v76 = v171;
                goto LABEL_180;
              }

              goto LABEL_315;
            }

            v46 = ((-15 << ((4 * v20 + 8) & 0x3C)) - 1) & v20 | (v79 << ((4 * v20 + 8) & 0x3C));
            swift_unknownObjectRetain();
            v96 = 0;
            v15 = 0;
LABEL_180:
            v178 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v76, v46, v15, v74, v179);
            result = swift_unknownObjectRelease();
            v7 = v175;
          }

          else
          {
            v96 = 0;
            v15 = 0;
            v46 = 0;
            v178 = 0;
          }

          v34 = __OFSUB__(v19, v96);
          v19 -= v96;
          v32 = a3;
          if (v34)
          {
            goto LABEL_306;
          }
        }

        else
        {
          v76 = v58;
        }

        goto LABEL_213;
      }

      if (v58 != v7[12])
      {
        goto LABEL_292;
      }

      if (!*v177)
      {
        goto LABEL_323;
      }

      specialized Rope._Node._prepareModify(at:)(v179, &v189);
      v204[0] = v190;
      v184 = v189;
      v185 = v190;
      v186 = v191;
      outlined destroy of TermOfAddress?(v204, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      result = outlined destroy of TermOfAddress?(v204 + 8, &_sShySSGMd);
      v185 = MEMORY[0x1E69E7CC8];
      v68 = v58 + 1;
      v7[12] = v58 + 1;
      if (!v7[9])
      {
        goto LABEL_324;
      }

      specialized Rope._Node._finalizeModify(_:)(&v181, &v184);

      result = specialized closure #1 in AttributedString.init<A, B>(_:including:)(&v188, &v187, a4);
      if (v187 != 1)
      {
        if (v68 != v7[12])
        {
          goto LABEL_302;
        }

        if (!*v177)
        {
          goto LABEL_328;
        }

        specialized Rope._Node._prepareModify(at:)(v179, &v198);
        v203 = v199;
        v184 = v198;
        v185 = v199;
        v186 = v200;
        v95 = v188;

        outlined destroy of TermOfAddress?(&v203, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        result = outlined destroy of TermOfAddress?(&v203 + 8, &_sShySSGMd);
        v185 = v95;
        v76 = v58 + 2;
        v7[12] = v58 + 2;
        if (!v7[9])
        {
          goto LABEL_325;
        }

        v15 = specialized Rope._Node._finalizeModify(_:)(&v181, &v184);

        v46 = v179;
        goto LABEL_213;
      }

      if (v68 != v7[12])
      {
        goto LABEL_303;
      }

      if (!*v177)
      {
        goto LABEL_326;
      }

      specialized Rope._Node._prepareModify(at:)(v179, &v192);
      v201 = v193;
      v202 = v194;
      outlined destroy of TermOfAddress?(&v201, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      outlined destroy of TermOfAddress?(&v202, &_sShySSGMd);
      v184 = v192;
      v186 = v195;
      v69 = *(&v188 + 1);
      result = v188;
      v185 = v188;
      v7[12] = v58 + 2;
      if (!v7[9])
      {
        goto LABEL_327;
      }

      v172 = result;

      v170 = v69;

      v15 = specialized Rope._Node._finalizeModify(_:)(v180, &v184);

      v70 = v7[9];
      v71 = v7[12];
      *&v184 = v58 + 2;
      *(&v184 + 1) = v179;
      *&v185 = v15;
      if (v58 + 2 != v71)
      {
        goto LABEL_304;
      }

      v72 = v58 + 2;
      if (v70)
      {
        v73 = ((-15 << ((4 * *(v70 + 18) + 8) & 0x3C)) - 1) & *(v70 + 18) | (*(v70 + 16) << ((4 * *(v70 + 18) + 8) & 0x3C));
        result = swift_unknownObjectRetain();
      }

      else
      {
        v73 = 0;
      }

      if (v179 >= v73)
      {
        goto LABEL_305;
      }

      v46 = v179;
      v97 = (4 * *(v15 + 18) + 8) & 0x3C;
      v98 = ((v179 >> v97) & 0xF) + 1;
      if (v98 >= *(v15 + 16))
      {
        if (specialized Rope._Node.formSuccessor(of:)(&v184, v70))
        {
          result = swift_unknownObjectRelease();
          v99 = *(&v184 + 1);
          v101 = v185;
          v100 = v184;
        }

        else
        {
          v99 = specialized Rope._endPath.getter(v70);
          result = swift_unknownObjectRelease();
          v101 = 0;
          *&v184 = v72;
          v100 = v72;
          v46 = v179;
        }
      }

      else
      {
        v99 = (v98 << v97) | ((-15 << v97) - 1) & v179;
        result = swift_unknownObjectRelease();
        v100 = v72;
        v101 = v15;
      }

      v102 = *v177;
      v7 = v175;
      if (!*v177)
      {
        v106 = 0;
        v76 = v72;
        goto LABEL_198;
      }

      if (v99 < (((-15 << ((4 * *(v102 + 18) + 8) & 0x3C)) - 1) & *(v102 + 18) | (*(v102 + 16) << ((4 * *(v102 + 18) + 8) & 0x3C))))
      {
        if (v100 != v175[12])
        {
          goto LABEL_314;
        }

        if (v101)
        {
          v103 = v101 + 24 * ((v99 >> ((4 * *(v101 + 18) + 8) & 0x3C)) & 0xF);
          v104 = *(v103 + 32);
          v105 = *(v103 + 40);
        }

        else
        {
          specialized Rope._Node.subscript.getter(v99, v102);
          v104 = v110;
          v105 = v111;
        }

        if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v104, v172))
        {
          v112 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v105, v69);

          if (v112)
          {
            v113 = specialized Rope._remove(at:)(&v184, v72, v46);
            v114 = v175[12];
            v115 = v113;
            if (v113 < specialized Rope._endPath.getter(v175[9]))
            {
              specialized Rope._Node.unmanagedLeaf(at:)(v113, v175[9]);
            }

            v116 = v184;

            if (v114 != v175[12])
            {
              goto LABEL_321;
            }

            if (!*v177)
            {
              goto LABEL_332;
            }

            result = specialized Rope._Node._prepareModify(at:)(v115, v196);
            v184 = v196[0];
            v185 = v196[1];
            v186 = v196[2];
            if (__OFADD__(*(&v196[0] + 1), v116))
            {
              goto LABEL_322;
            }

            *(&v184 + 1) = *(&v196[0] + 1) + v116;
            v76 = v114 + 1;
            v175[12] = v114 + 1;
            if (!v175[9])
            {
              goto LABEL_331;
            }

            v15 = specialized Rope._Node._finalizeModify(_:)(v180, &v184);

            v46 = v115;
            goto LABEL_196;
          }
        }

        else
        {
        }
      }

      v76 = v72;
LABEL_196:
      v106 = *v177;
      if (*v177)
      {
        v106 = *(v106 + 18);
      }

LABEL_198:
      if (v106 < v46)
      {
        v117 = v76;
        v118 = v175[9];
        v119 = v175[10];
        v120 = v175[11];
        v121 = v175[12];
        v122 = v46;
        v123 = v117;
        *&v184 = v117;
        *(&v184 + 1) = v122;
        v124 = v122;
        *&v185 = v15;
        swift_unknownObjectRetain();
        specialized Rope.formIndex(before:)(&v184, v118, v119, v120, v121);
        swift_unknownObjectRelease();
        specialized Rope.subscript.getter(v184, *(&v184 + 1), v185, v175[9], v175[10], v175[11], v175[12]);
        v126 = v125;
        if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v127, v172))
        {
          v128 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v126, v170);

          v32 = a3;
          if (v128)
          {
            v129 = specialized Rope._remove(at:)(&v184, v123, v124);
            v130 = v175[12];
            if (v129 >= specialized Rope._endPath.getter(v175[9]))
            {
              v131 = 0;
            }

            else
            {
              v131 = specialized Rope._Node.unmanagedLeaf(at:)(v129, v175[9]);
            }

            v181 = v130;
            v182 = v129;
            v183 = v131;
            v132 = v184;

            v133 = v175[9];
            v134 = v175[10];
            v135 = v175[11];
            v136 = v175[12];
            swift_unknownObjectRetain();
            specialized Rope.formIndex(before:)(&v181, v133, v134, v135, v136);
            result = swift_unknownObjectRelease();
            v137 = v181;
            if (v181 != v175[12])
            {
              goto LABEL_317;
            }

            if (!*v177)
            {
              goto LABEL_329;
            }

            v138 = v182;
            result = specialized Rope._Node._prepareModify(at:)(v182, v197);
            v184 = v197[0];
            v185 = v197[1];
            v186 = v197[2];
            v34 = __OFSUB__(v19, *(&v197[0] + 1));
            v19 -= *(&v197[0] + 1);
            if (v34)
            {
              goto LABEL_318;
            }

            if (__OFADD__(*(&v197[0] + 1), v132))
            {
              goto LABEL_319;
            }

            *(&v184 + 1) = *(&v197[0] + 1) + v132;
            v76 = v137 + 1;
            v175[12] = v137 + 1;
            if (!v175[9])
            {
              goto LABEL_330;
            }

            v15 = specialized Rope._Node._finalizeModify(_:)(v180, &v184);

            v32 = a3;
            if (__OFSUB__(v178, 1))
            {
              goto LABEL_320;
            }

            --v178;
            v46 = v138;
            goto LABEL_213;
          }
        }

        else
        {

          v32 = a3;
        }

        v76 = v123;
        v46 = v124;
      }

LABEL_213:

      v139 = v7[9];
      v140 = v7[12];
      *&v184 = v76;
      *(&v184 + 1) = v46;
      *&v185 = v15;
      v34 = __OFADD__(v178++, 1);
      if (v34)
      {
        goto LABEL_281;
      }

      if (v76 != v140)
      {
        goto LABEL_282;
      }

      if (v15)
      {
        v141 = *(v15 + 24 * ((v46 >> ((4 * *(v15 + 18) + 8) & 0x3C)) & 0xF) + 24);
        v34 = __OFADD__(v19, v141);
        v142 = v19 + v141;
        if (v34)
        {
          goto LABEL_290;
        }

        if (!v139)
        {
          goto LABEL_280;
        }

        v143 = v76;
        result = swift_unknownObjectRetain();
      }

      else
      {
        v143 = v76;
        swift_unknownObjectRetain();
        v144 = specialized Rope._Node.subscript.getter(v46, v139);

        v34 = __OFADD__(v19, v144);
        v142 = v19 + v144;
        if (v34)
        {
          goto LABEL_295;
        }

        if (!v139)
        {
          goto LABEL_280;
        }
      }

      if (v46 >= (((-15 << ((4 * *(v139 + 18) + 8) & 0x3C)) - 1) & *(v139 + 18) | (*(v139 + 16) << ((4 * *(v139 + 18) + 8) & 0x3C))))
      {
        goto LABEL_280;
      }

      v145 = v142;
      v146 = v32;
      if (v15 && (v147 = v46, v148 = (4 * *(v15 + 18) + 8) & 0x3C, v149 = ((v147 >> v148) & 0xF) + 1, v149 < *(v15 + 16)))
      {
        result = swift_unknownObjectRelease();
        v14 = (v149 << v148) | ((-15 << v148) - 1) & v147;
      }

      else if (specialized Rope._Node.formSuccessor(of:)(&v184, v139))
      {
        result = swift_unknownObjectRelease();
        v14 = *(&v184 + 1);
      }

      else
      {
        v150 = *(v139 + 18);
        v151 = *(v139 + 16);
        result = swift_unknownObjectRelease();
        v14 = ((-15 << ((4 * v150 + 8) & 0x3C)) - 1) & v150 | (v151 << ((4 * v150 + 8) & 0x3C));
        *&v184 = v143;
        *(&v184 + 1) = v14;
        *&v185 = 0;
      }

      v32 = v146;
      v9 = v184;
      v15 = v185;
      v19 = v145;
      v12 = v145 < v32;
      v7 = v175;
      v6 = a2;
      if (!v12)
      {
        v152 = *v177;
        if (a2 == v32)
        {
          v9 = v175[12];
          if (v152)
          {
            v4 = v175[11];
            if (v4 < a2)
            {
              goto LABEL_309;
            }

            v153 = v175[10];
            v154 = (v152 + 16);
            v155 = *(v152 + 16);
            v156 = *(v152 + 18);
            if (*(v152 + 16) && v4 > a2)
            {
              v171 = v175[12];
              result = swift_unknownObjectRetain_n();
              if (!v156)
              {
                v157 = 0;
                v19 = a2;
                v15 = v152;
LABEL_255:
                v164 = 0;
                v165 = 24;
                v33 = v19;
                v166 = v155;
                v7 = v175;
                while (1)
                {
                  v167 = *(v15 + v165);
                  v19 = v33 - v167;
                  if (__OFSUB__(v33, v167))
                  {
                    goto LABEL_285;
                  }

                  if (__OFADD__(v19, 1))
                  {
                    goto LABEL_286;
                  }

                  if (v19 + 1 < 1)
                  {
                    goto LABEL_263;
                  }

                  ++v164;
                  v165 += 24;
                  v33 -= v167;
                  if (v166 == v164)
                  {
                    v164 = v166;
                    goto LABEL_261;
                  }
                }
              }

              v19 = a2;
              v157 = v156;
              v158 = v152;
              v20 = 24;
              do
              {
                v159 = *v154;
                if (*v154)
                {
                  v160 = 0;
                  v161 = (v158 + 40);
                  while (1)
                  {
                    v162 = *v161;
                    v161 += 3;
                    v163 = v19 - v162;
                    if (__OFSUB__(v19, v162))
                    {
                      goto LABEL_269;
                    }

                    if (__OFADD__(v163, 1))
                    {
                      goto LABEL_270;
                    }

                    if (v163 + 1 < 1)
                    {
                      v159 = v160;
                      goto LABEL_237;
                    }

                    ++v160;
                    v19 = v163;
                    if (v159 == v160)
                    {
                      goto LABEL_246;
                    }
                  }
                }

                v163 = v19;
LABEL_246:
                if (v163)
                {
                  goto LABEL_288;
                }

                v19 = 0;
LABEL_237:
                v157 = (v159 << ((4 * v156 + 8) & 0x3C)) | ((-15 << ((4 * v156 + 8) & 0x3C)) - 1) & v157;
                v15 = *(v158 + 24 + 24 * v159);
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v154 = (v15 + 16);
                LOBYTE(v156) = *(v15 + 18);
                v158 = v15;
              }

              while (v156);
              LODWORD(v155) = *v154;
              if (*v154)
              {
                goto LABEL_255;
              }

              v164 = 0;
              v7 = v175;
LABEL_261:
              if (!v19)
              {
                v33 = 0;
LABEL_263:
                swift_unknownObjectRelease();
                v14 = v157 & 0xFFFFFFFFFFFFF0FFLL | (v164 << 8);
                v9 = v171;
                goto LABEL_44;
              }

              goto LABEL_316;
            }

            v14 = ((-15 << ((4 * v156 + 8) & 0x3C)) - 1) & v156 | (v155 << ((4 * v156 + 8) & 0x3C));
            swift_unknownObjectRetain();
            v33 = 0;
            v15 = 0;
            v7 = v175;
LABEL_44:
            v178 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v9, v14, v15, v152, v153);
            result = swift_unknownObjectRelease();
            v32 = a3;
          }

          else
          {
            if (a2 > 0)
            {
              goto LABEL_311;
            }

            v33 = 0;
            v15 = 0;
            v14 = 0;
            v178 = 0;
          }

          v34 = __OFSUB__(a2, v33);
          v19 = a2 - v33;
          v6 = a2;
          if (v34)
          {
            goto LABEL_307;
          }
        }

        else
        {
          v19 = 0;
          v178 = 0;
          v15 = 0;
          v14 = 0;
          v9 = v175[12];
          if (v152)
          {
            v15 = 0;
            v19 = v175[11];
            v178 = v175[10];
            v14 = ((-15 << ((4 * *(v152 + 18) + 8) & 0x3C)) - 1) & *(v152 + 18) | (*(v152 + 16) << ((4 * *(v152 + 18) + 8) & 0x3C));
          }
        }
      }
    }
  }

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
  return result;
}

__n128 AttributedString.SingleAttributeTransformer.range.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 AttributedString.SingleAttributeTransformer.range.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v2;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t AttributedString.SingleAttributeTransformer.value.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-v6];
  outlined init with copy of AttributedString._AttributeValue?(v1 + 96, v13);
  if (v14)
  {
    outlined init with copy of Hashable & Sendable(v13, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
    v8 = swift_dynamicCast();
    v9 = *(*(AssociatedTypeWitness - 8) + 56);
    if (v8)
    {
      v10 = *(AssociatedTypeWitness - 8);
      v9(v7, 0, 1, AssociatedTypeWitness);
      (*(v10 + 32))(a1, v7, AssociatedTypeWitness);
      outlined destroy of AttributedString._AttributeValue(v13);
      return v9(a1, 0, 1, AssociatedTypeWitness);
    }

    else
    {
      v9(v7, 1, 1, AssociatedTypeWitness);
      result = (*(v5 + 8))(v7, v4);
      __break(1u);
    }
  }

  else
  {
    outlined destroy of TermOfAddress?(v13, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    return (*(*(AssociatedTypeWitness - 8) + 56))(a1, 1, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t key path setter for AttributedString.SingleAttributeTransformer.value : <A>AttributedString.SingleAttributeTransformer<A>(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for Optional();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  (*(v6 + 16))(&v9 - v4, a1, v3);
  v7 = type metadata accessor for AttributedString.SingleAttributeTransformer();
  return AttributedString.SingleAttributeTransformer.value.setter(v5, v7);
}

uint64_t AttributedString.SingleAttributeTransformer.value.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  (*(v7 + 16))(v9, a1, v6, v15);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    v18 = *(v7 + 8);
    v18(a1, v6);
    v18(v9, v6);
    v19 = 0;
    memset(v31, 0, sizeof(v31));
    v29 = 0u;
    v30 = 0u;
  }

  else
  {
    (*(v10 + 32))(v17, v9, AssociatedTypeWitness);
    v25 = v13;
    v26 = a1;
    v20 = *(v10 + 16);
    v20(v13, v17, AssociatedTypeWitness);
    *(&v30 + 1) = AssociatedTypeWitness;
    *&v31[0] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v29);
    v20(boxed_opaque_existential_0, v13, AssociatedTypeWitness);
    (*(v3 + 32))(&v28, v4, v3);
    *(v31 + 8) = v28;
    BYTE8(v31[1]) = (*(v3 + 40))(v4, v3) & 1;
    v19 = (*(v3 + 48))(v4, v3);
    (*(v7 + 8))(v26, v6);
    v22 = *(v10 + 8);
    v22(v25, AssociatedTypeWitness);
    v22(v17, AssociatedTypeWitness);
  }

  v32 = v19;
  return outlined assign with take of AttributedString._AttributeValue?(&v29, v27 + 96);
}

uint64_t outlined assign with take of AttributedString._AttributeValue?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*AttributedString.SingleAttributeTransformer.value.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  AttributedString.SingleAttributeTransformer.value.getter(v11);
  return AttributedString.SingleAttributeTransformer.value.modify;
}

void AttributedString.SingleAttributeTransformer.value.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    AttributedString.SingleAttributeTransformer.value.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    AttributedString.SingleAttributeTransformer.value.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t AttributedString.SingleAttributeTransformer.replace<A>(with:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v23[-1] - v13;
  v15 = (*(a5 + 24))(a4, a5, v12);
  v17 = v16;

  *(v6 + 80) = v15;
  *(v6 + 88) = v17;
  v18 = *(v11 + 16);
  v18(v14, a2, AssociatedTypeWitness);
  v23[3] = AssociatedTypeWitness;
  v23[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  v18(boxed_opaque_existential_0, v14, AssociatedTypeWitness);
  (*(a5 + 32))(&v22, a4, a5);
  v24 = v22;
  v25 = (*(a5 + 40))(a4, a5) & 1;
  v20 = (*(a5 + 48))(a4, a5);
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  v26 = v20;
  return outlined assign with take of AttributedString._AttributeValue?(v23, v6 + 96);
}

void *AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  v11 = a2[5];
  if ((*a2 ^ *a1) <= 0x3FF && (a1[5] ^ v11) <= 0x3FF)
  {
    v12 = a1[10] == a2[10] && a1[11] == a2[11];
    if (v12 || (v13 = a1, v14 = _stringCompareWithSmolCheck(_:_:expecting:)(), a1 = v13, (v14 & 1) != 0))
    {
      outlined init with copy of AttributedString._AttributeValue?((a1 + 12), v40);
      outlined init with copy of AttributedString._AttributeValue?((a2 + 12), &v43);
      if (*(&v40[1] + 1))
      {
        outlined init with copy of AttributedString._AttributeValue?(v40, &v48);
        if (*(&v44 + 1))
        {
          v37 = v45;
          v38 = v46;
          v39 = v47;
          v35 = v43;
          v36 = v44;
          v15 = specialized static AttributedString._AttributeValue.== infix(_:_:)(&v48, &v35);
          outlined destroy of AttributedString._AttributeValue(&v35);
          outlined destroy of AttributedString._AttributeValue(&v48);
          result = outlined destroy of TermOfAddress?(v40, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          if (v15)
          {
            return result;
          }

          goto LABEL_16;
        }

        outlined destroy of AttributedString._AttributeValue(&v48);
      }

      else if (!*(&v44 + 1))
      {
        return outlined destroy of TermOfAddress?(v40, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      outlined destroy of TermOfAddress?(v40, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
    }
  }

LABEL_16:
  outlined init with copy of AttributedString._AttributeValue?((a2 + 12), &v48);
  if (*(&v49 + 1))
  {
    v41[0] = v50;
    v41[1] = v51;
    v42 = v52;
    v40[0] = v48;
    v40[1] = v49;
    v17 = *a3;
    v18 = a2[10];
    v33 = a2[11];
    v34 = v18;
    v19 = a2[6];
    v32[6] = a2[8];
    v32[7] = v19;
    v20 = *(v17 + 40);
    v48 = *(v17 + 24);
    v49 = v20;
    v50 = *(v17 + 56);
    swift_unknownObjectRetain();
    v21 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v22 = *(v17 + 40);
    v35 = *(v17 + 24);
    v36 = v22;
    v37 = *(v17 + 56);
    swift_unknownObjectRetain();
    v23 = BigString.UnicodeScalarView.index(roundingDown:)();
    v24 = swift_unknownObjectRelease();
    v25 = v21 >> 11;
    v26 = v23 >> 11;
    MEMORY[0x1EEE9AC00](v24);
    v32[2] = v34;
    v32[3] = v33;
    v32[4] = v40;
    AttributedString._InternalRunsSlice.updateEach(with:)(partial apply for closure #1 in AttributedString.Guts.setAttributeValue(_:forKey:in:), v32, v17, v21 >> 11, v26);
    v27 = *&v41[1];
    if (*&v41[1] != 1)
    {
      v28 = *(&v41[0] + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_181218E20;
      *(v29 + 32) = v28;
      *(v29 + 40) = v27;
      outlined copy of AttributedString.AttributeRunBoundaries?(v28, v27);
      AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v25, v26, 0, v29);
    }

    return outlined destroy of AttributedString._AttributeValue(v40);
  }

  else
  {
    outlined destroy of TermOfAddress?(&v48, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v30 = a2[3];
    v31 = a2[8];
    *&v40[0] = v10;
    *(v40 + 8) = *(a2 + 1);
    *(&v40[1] + 1) = v30;
    *&v41[0] = v11;
    *(v41 + 8) = *(a2 + 3);
    *(&v41[1] + 1) = v31;
    return AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(a5, v40, a5, a6);
  }
}

uint64_t AttributedString.transformingAttributes<A>(_:_:)@<X0>(void (*a1)(__int128 *)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X8>)
{
  v289 = a1;
  v290 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v269 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v279 = &v254 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v278 = &v254 - v12;
  v288 = v13;
  v301 = type metadata accessor for Optional();
  v294 = *(v301 - 8);
  MEMORY[0x1EEE9AC00](v301);
  v287 = &v254 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v293 = &v254 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v300 = &v254 - v18;
  v282 = type metadata accessor for AttributedString.Runs.AttributesSlice1();
  v274 = *(v282 - 8);
  MEMORY[0x1EEE9AC00](v282);
  v273 = &v254 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v284 = &v254 - v21;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v298 = *(v309 - 8);
  MEMORY[0x1EEE9AC00](v309);
  *&v272 = &v254 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v254 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v286 = &v254 - v27;
  *&v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v312);
  v308 = &v254 - v28;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v285 = *(v303 - 8);
  MEMORY[0x1EEE9AC00](v303);
  v302 = &v254 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v283 = &v254 - v31;
  v276 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v276);
  v281 = (&v254 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33);
  v297 = (&v254 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v280 = (&v254 - v36);
  v307 = a3;
  v295 = type metadata accessor for AttributedString.Runs.AttributesSlice1.Iterator();
  v270 = *(v295 - 8);
  MEMORY[0x1EEE9AC00](v295);
  v291 = &v254 - v37;
  v337 = *v5;
  v38 = v337;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = &unk_1EA7B2000;
  v299 = v38;
  v41 = &static AttributedString.Guts._nextVersion;
  v296 = v38;
  v271 = a5;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_11;
  }

  a5 = v25;
  v42 = *(v38 + 40);
  v359 = *(v38 + 24);
  v360 = v42;
  v361 = *(v38 + 56);
  v43 = *(v38 + 72);
  v44 = *(v38 + 80);
  v45 = *(v38 + 88);
  v46 = *(v38 + 96);
  type metadata accessor for AttributedString.Guts();
  v299 = swift_allocObject();
  v47 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v359, &v320);
  v48 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v48);
  if (v43)
  {
    v49 = v45 == 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = v49;
  if (v50 != v47)
  {
    goto LABEL_92;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_93;
  }

  while (1)
  {
    add_explicit = atomic_fetch_add_explicit(v41, 1uLL, memory_order_relaxed);
    v52 = v360;
    v53 = v299;
    *(v299 + 24) = v359;
    *(v53 + 16) = add_explicit;
    *(v53 + 40) = v52;
    *(v53 + 56) = v361;
    *(v53 + 72) = v43;
    *(v53 + 80) = v44;
    *(v53 + 88) = v45;
    *(v53 + 96) = v46;
    *(v53 + 104) = MEMORY[0x1E69E7CC0];
    v38 = v296;

    v337 = v53;
    v25 = a5;
LABEL_11:
    v275 = v25;
    if (v40[147] != -1)
    {
      swift_once();
    }

    v54 = atomic_fetch_add_explicit(v41, 1uLL, memory_order_relaxed);
    *(v299 + 16) = v54;
    v55 = *(v38 + 40);
    v356 = *(v38 + 24);
    v357 = v55;
    v358 = *(v38 + 56);
    v41 = v38;
    v46 = BigString.startIndex.getter();
    v43 = v56;
    v44 = v57;
    v45 = v58;
    v59 = BigString.endIndex.getter();
    v40 = v303;
    if (v59 >> 10 >= v46 >> 10)
    {
      break;
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    swift_once();
  }

  v305 = a4;
  v320 = v46;
  v321 = v43;
  v322 = v44;
  v323 = v45;
  v324 = v59;
  v325 = v60;
  v326 = v61;
  v327 = v62;
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

  RangeSet.init(_:)();
  *v297 = v41;
  RangeSet.init()();
  v63 = v286;
  RangeSet.ranges.getter();
  v64 = v298;
  v66 = v308;
  v65 = v309;
  (*(v298 + 16))(v308, v63, v309);
  v67 = *(v312 + 36);
  v68 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of Collection.startIndex.getter();
  v69 = *(v64 + 8);
  v298 = v64 + 8;
  v277 = v69;
  v69(v63, v65);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v66 + v67) != v320)
  {
    v306 = v68;
    v304 = v67;
    do
    {
      v78 = dispatch thunk of Collection.subscript.read();
      v80 = v79[4];
      v311 = v79[5];
      *&v312 = v80;
      v310 = v79[6];
      v78(&v320, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v81 = v296;
      v82 = *(v296 + 40);
      v353 = *(v296 + 24);
      v354 = v82;
      v355 = *(v296 + 56);
      swift_unknownObjectRetain();
      v83 = BigString.UnicodeScalarView.index(roundingDown:)();
      v85 = v84;
      v87 = v86;
      v89 = v88;
      swift_unknownObjectRelease();
      v90 = *(v81 + 40);
      v350 = *(v81 + 24);
      v351 = v90;
      v352 = *(v81 + 56);
      swift_unknownObjectRetain();
      v91 = BigString.UnicodeScalarView.index(roundingDown:)();
      v93 = v92;
      v95 = v94;
      v97 = v96;
      v65 = v309;
      swift_unknownObjectRelease();
      v320 = v83;
      v321 = v85;
      v322 = v87;
      v323 = v89;
      v324 = v91;
      v325 = v93;
      v326 = v95;
      v327 = v97;
      if ((v91 ^ v83) >= 0x400)
      {
        v98 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v98(&v314, 0);
      }

      v66 = v308;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v66 + v304) != v320);
  }

  outlined destroy of TermOfAddress?(v66, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v70 = v276;
  v71 = *(v276 + 24);
  v72 = v297;
  (*(v285 + 16))(v297 + v71, v302, v303);
  v73 = v286;
  RangeSet.ranges.getter();
  v74 = RangeSet.Ranges.count.getter();
  v75 = v277;
  v277(v73, v65);
  v76 = *(v70 + 28);
  v268 = v74 > 1;
  *(v72 + v76) = v268;
  v77 = v275;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v314 == v320)
  {
    v75(v77, v65);
LABEL_23:
    v105 = v296;
    v106 = *(v296 + 72);
    v107 = v307;
    if (v106)
    {
      *&v312 = *(v106 + 18);
    }

    else
    {
      *&v312 = 0;
    }

    v311 = *(v296 + 96);
    v108 = *(v296 + 40);
    v347 = *(v296 + 24);
    v348 = v108;
    v349 = *(v296 + 56);
    v109 = BigString.startIndex.getter();
    v310 = v110;
    v308 = v111;
    v306 = v112;
    v113 = *(v105 + 72);
    v304 = *(v105 + 96);
    if (v113)
    {
      v276 = *(v113 + 18);
      v114 = *(v285 + 8);
      swift_unknownObjectRetain();
      v115 = v303;
      v114(v283, v303);
      v114(v302, v115);
      swift_unknownObjectRelease();
    }

    else
    {
      v116 = *(v285 + 8);
      v117 = v303;
      v116(v283, v303);
      v116(v302, v117);
      v276 = 0;
    }

    v118 = *(v105 + 40);
    v344 = *(v105 + 24);
    v345 = v118;
    v346 = *(v105 + 56);
    v119 = BigString.startIndex.getter();
    v123 = 0;
    v124 = 0;
    v125 = 0;
    v126 = 0;
    v127 = 0;
    v128 = -1;
    v129 = v109;
    v130 = v310;
    v131 = v310;
    v132 = v308;
    v133 = v308;
    v134 = v306;
    v135 = v306;
    v136 = v119;
    v137 = v120;
    v138 = v121;
    v139 = v122;
    v140 = -1;
    v141 = v312;
    goto LABEL_30;
  }

  v99 = dispatch thunk of Collection.subscript.read();
  v101 = *v100;
  v102 = v100[1];
  v266 = v100[2];
  v267 = v102;
  v103 = v100[3];
  v264 = v101;
  v265 = v103;
  v99(&v320, 0);
  v75(v77, v65);
  v104 = v272;
  RangeSet.ranges.getter();
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v75(v104, v65);
    goto LABEL_23;
  }

  v258 = v71;
  v148 = v104;
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v149 = dispatch thunk of Collection.subscript.read();
  v136 = v150[4];
  v151 = v150[5];
  v152 = v150[6];
  v153 = v150[7];
  v149(&v320, 0);
  v75(v148, v65);
  v129 = v264;
  v154 = v296;
  AttributedString.Guts.findRun(at:)(v264, v265, &v320);
  v155 = v321;
  *&v272 = v322;
  v260 = v323;
  v275 = v325;
  v310 = v326;
  v311 = v320;
  v308 = v327;
  v306 = v328;
  v156 = *(v154 + 40);
  v347 = *(v154 + 24);
  v348 = v156;
  v349 = *(v154 + 56);
  v157 = BigString.endIndex.getter();
  *&v312 = v155;
  v262 = v152;
  v263 = v151;
  v261 = v153;
  if ((v157 ^ v136) > 0x3FF)
  {
    v187 = v65;
    AttributedString.Guts.findRun(at:)(v136, v153, &v320);
    v304 = v320;
    v276 = v321;
    v127 = v322;
    v259 = v323;
    v309 = v325;
    v256 = v327;
    v257 = v326;
    v255 = v328;
    v72 = v297;
    v188 = v286;
    v189 = v303;
    RangeSet.ranges.getter();
    v140 = RangeSet.Ranges.count.getter();
    v190 = *(v285 + 8);
    v190(v283, v189);
    v191 = v188;
    v137 = v263;
    v277(v191, v187);
    v190(v302, v189);
    v126 = v259;
    v123 = v260;
    v141 = v312;
    v129 = v264;
    v135 = v265;
    v122 = v255;
    v121 = v256;
    v120 = v257;
    v119 = v309;
    v130 = v310;
    v128 = 0;
    v107 = v307;
    v132 = v308;
    v125 = v268;
    v133 = v266;
    v131 = v267;
    v109 = v275;
    v134 = v306;
    v139 = v261;
    v138 = v262;
    v124 = v272;
  }

  else
  {
    v158 = *(v154 + 72);
    if (v158)
    {
      v159 = *(v154 + 80);
    }

    else
    {
      v159 = 0;
    }

    v259 = v159;
    v160 = *(v154 + 96);
    v161 = swift_unknownObjectRetain();
    v304 = v160;
    v276 = specialized Rope._endPath.getter(v161);
    if (v158)
    {
      swift_unknownObjectRelease();
    }

    v72 = v297;
    v162 = v286;
    v163 = v303;
    RangeSet.ranges.getter();
    v164 = v309;
    v140 = RangeSet.Ranges.count.getter();
    v165 = *(v285 + 8);
    v165(v283, v163);
    v277(v162, v164);
    v165(v302, v163);
    v128 = 0;
    v127 = 0;
    v119 = v136;
    v138 = v262;
    v137 = v263;
    v120 = v263;
    v121 = v262;
    v123 = v260;
    v139 = v261;
    v122 = v261;
    v107 = v307;
    v132 = v308;
    v125 = v268;
    v141 = v312;
    v133 = v266;
    v131 = v267;
    v135 = v265;
    v109 = v275;
    v130 = v310;
    v134 = v306;
    v124 = v272;
    v126 = v259;
  }

LABEL_30:
  *(v72 + 8) = v123;
  *(v72 + 16) = v311;
  *(v72 + 24) = v141;
  *(v72 + 32) = v124;
  *(v72 + 40) = v109;
  *(v72 + 48) = v130;
  *(v72 + 56) = v132;
  *(v72 + 64) = v134;
  *(v72 + 72) = v129;
  *(v72 + 80) = v131;
  *(v72 + 88) = v133;
  *(v72 + 96) = v135;
  *(v72 + 104) = v128;
  *(v72 + 112) = 0;
  *(v72 + 113) = v125;
  v142 = v304;
  *(v72 + 120) = v126;
  *(v72 + 128) = v142;
  *(v72 + 136) = v276;
  *(v72 + 144) = v127;
  *(v72 + 152) = v119;
  *(v72 + 160) = v120;
  *(v72 + 168) = v121;
  *(v72 + 176) = v122;
  *(v72 + 184) = v136;
  *(v72 + 192) = v137;
  *(v72 + 200) = v138;
  *(v72 + 208) = v139;
  *(v72 + 216) = v140;
  *(v72 + 224) = 0;
  *(v72 + 225) = v125;
  v143 = v280;
  outlined init with take of AttributedString.Runs(v72, v280);
  v144 = v143;
  v145 = v281;
  outlined init with copy of AttributedString.Runs(v144, v281);
  v44 = v284;
  outlined init with copy of AttributedString.Runs(v145, v284);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v146 = swift_allocObject();
  v272 = xmmword_181218E20;
  *(v146 + 16) = xmmword_181218E20;
  v43 = v305;
  v285 = *(v305 + 24);
  v286 = (v305 + 24);
  *(v146 + 32) = (v285)(v107, v305);
  *(v146 + 40) = v147;
  *&v44[*(v282 + 36)] = v146;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
  v41 = swift_allocObject();
  v297 = *(v43 + 32);
  v298 = v43 + 32;
  v297(v107, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
  v40 = static _SetStorage.allocate(capacity:)();
  v45 = (v40 + 7);
  v46 = v41[4];
  a4 = v41[5];
  Hasher.init(_seed:)();
  if (a4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if (a4)
    {
      MEMORY[0x1865CD060](1);
      String.hash(into:)();
    }

    else
    {
      MEMORY[0x1865CD060](0);
    }
  }

  v166 = Hasher._finalize()();
  v167 = -1 << *(v40 + 32);
  a5 = v166 & ~v167;
  v168 = a5 >> 6;
  v169 = *&v45[8 * (a5 >> 6)];
  v170 = 1 << a5;
  if (((1 << a5) & v169) == 0)
  {
LABEL_63:
    *&v45[8 * v168] = v169 | v170;
    v178 = (v40[6] + 16 * a5);
    *v178 = v46;
    v178[1] = a4;
    v179 = v40[2];
    v180 = __OFADD__(v179, 1);
    v181 = v179 + 1;
    if (!v180)
    {
      v40[2] = v181;
      v182 = v291;
      v183 = v282;
      v184 = v274;
      goto LABEL_71;
    }

    goto LABEL_91;
  }

  *&v312 = v41;
  v171 = ~v167;
  while (1)
  {
    v172 = (v40[6] + 16 * a5);
    v173 = *v172;
    v43 = v172[1];
    if (v43 == 1)
    {
      if (a4 == 1)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v172, 1);
        v185 = v173;
        v186 = 1;
        goto LABEL_70;
      }

LABEL_48:
      outlined copy of AttributedString.AttributeRunBoundaries?(*v172, v172[1]);
      outlined copy of AttributedString.AttributeRunBoundaries?(v46, a4);
      outlined consume of AttributedString.AttributeRunBoundaries?(v173, v43);
      v174 = v46;
      v175 = a4;
LABEL_49:
      outlined consume of AttributedString.AttributeRunBoundaries?(v174, v175);
      goto LABEL_50;
    }

    if (a4 == 1)
    {
      goto LABEL_48;
    }

    if (!v43)
    {
      break;
    }

    if (!a4)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(*v172, v172[1]);
      outlined copy of AttributedString.AttributeRunBoundaries?(v46, 0);
      outlined copy of AttributedString.AttributeRunBoundaries?(v173, v43);

      v174 = v173;
      v175 = v43;
      goto LABEL_49;
    }

    if (v173 == v46 && v43 == a4)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(v46, a4);
      outlined copy of AttributedString.AttributeRunBoundaries?(v46, a4);

LABEL_68:
      v185 = v46;
      v186 = a4;
      goto LABEL_70;
    }

    v177 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of AttributedString.AttributeRunBoundaries?(v173, v43);
    outlined copy of AttributedString.AttributeRunBoundaries?(v46, a4);
    outlined copy of AttributedString.AttributeRunBoundaries?(v173, v43);

    if (v177)
    {
      outlined consume of AttributedString.AttributeRunBoundaries?(v46, a4);
      v46 = v173;
      a4 = v43;
      v44 = v284;
      goto LABEL_68;
    }

    outlined consume of AttributedString.AttributeRunBoundaries?(v173, v43);
    v44 = v284;
LABEL_50:
    a5 = (a5 + 1) & v171;
    v168 = a5 >> 6;
    v169 = *&v45[8 * (a5 >> 6)];
    v170 = 1 << a5;
    if ((v169 & (1 << a5)) == 0)
    {
      v41 = v312;
      goto LABEL_63;
    }
  }

  outlined copy of AttributedString.AttributeRunBoundaries?(*v172, 0);
  if (a4)
  {
    outlined copy of AttributedString.AttributeRunBoundaries?(v46, a4);

    v174 = v173;
    v175 = 0;
    goto LABEL_49;
  }

  swift_bridgeObjectRelease_n();
  v185 = v173;
  v186 = 0;
LABEL_70:
  outlined consume of AttributedString.AttributeRunBoundaries?(v185, v186);
  v182 = v291;
  v183 = v282;
  v184 = v274;
  v41 = v312;
LABEL_71:
  swift_setDeallocating();
  outlined destroy of TermOfAddress?((v41 + 4), &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
  swift_deallocClassInstance();
  outlined destroy of AttributedString.Runs(v281);
  outlined destroy of AttributedString.Runs(v280);
  *&v44[*(v183 + 40)] = v40;
  v192 = *(v184 + 16);
  v193 = v273;
  v192(v273, v44, v183);
  result = (v192)(v182, v193, v183);
  v195 = *(v193 + 12);
  v196 = v305;
  if (v195 == 2)
  {
    __break(1u);
  }

  else
  {
    v197 = *(v193 + 11);
    v312 = *(v193 + 72);
    v198 = *(v184 + 8);
    v198(v44, v183);
    v199 = *(*v193 + 16);
    v198(v193, v183);
    v200 = v295;
    v201 = &v182[*(v295 + 36)];
    *v201 = v312;
    *(v201 + 2) = v197;
    *(v201 + 3) = v195;
    *(v201 + 4) = v199;
    v202 = v300;
    AttributedString.Runs.AttributesSlice1.Iterator.next()(v200, v300);
    v203 = TupleTypeMetadata2;
    v204 = *(TupleTypeMetadata2 - 8);
    v205 = *(v204 + 48);
    v283 = (v204 + 48);
    v284 = v205;
    v206 = (v205)(v202, 1, TupleTypeMetadata2);
    v207 = v307;
    v208 = v293;
    v209 = v301;
    if (v206 != 1)
    {
      v210 = *(v294 + 32);
      v281 = (v294 + 16);
      v282 = v210;
      v280 = (v269 + 48);
      v276 = v269 + 16;
      v277 = (v269 + 32);
      v274 = v196 + 48;
      v275 = (v196 + 40);
      v273 = (v269 + 8);
      v294 += 32;
      v302 = (v294 - 24);
      do
      {
        v212 = (v202 + *(v203 + 48));
        v214 = *v212;
        v213 = v212[1];
        v215 = v212[3];
        v309 = v212[2];
        v310 = v213;
        v308 = v215;
        v216 = v212[4];
        v217 = v212[5];
        v219 = v212[6];
        v218 = v212[7];
        v221 = v212[8];
        v220 = v212[9];
        v311 = v221;
        *&v312 = v218;
        v303 = v220;
        v304 = v216;
        (v282)(v208, v202, v209);
        v222 = v287;
        (*v281)(v287, v208, v209);
        v223 = v288;
        v224 = (*v280)(v222, 1, v288);
        v306 = v219;
        if (v224 == 1)
        {
          (*v302)(v222, v209);
          v225 = 0;
          memset(v316, 0, sizeof(v316));
          v314 = 0u;
          v315 = 0u;
        }

        else
        {
          v226 = v278;
          (*v277)(v278, v222, v223);
          v227 = *v276;
          v228 = v279;
          (*v276)(v279, v226, v223);
          *(&v315 + 1) = v223;
          *&v316[0] = swift_getAssociatedConformanceWitness();
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v314);
          v227(boxed_opaque_existential_0, v228, v223);
          (v297)(&v313, v207, v196);
          *(v316 + 8) = v313;
          BYTE8(v316[1]) = (*(v196 + 40))(v207, v196) & 1;
          v225 = (*(v196 + 48))(v207, v196);
          v230 = *v273;
          v231 = v228;
          v202 = v300;
          (*v273)(v231, v223);
          v232 = v226;
          v209 = v301;
          v230(v232, v223);
          v219 = v306;
          v207 = v307;
        }

        v317 = v225;
        v233 = (v285)(v207, v196);
        v235 = v234;
        v320 = v214;
        v321 = v310;
        v322 = v309;
        v323 = v308;
        v324 = v304;
        v236 = v217;
        v325 = v217;
        v326 = v219;
        v327 = v312;
        v328 = v311;
        v329 = v303;
        v330 = v233;
        v331 = v234;
        v334 = v316[0];
        v335 = v316[1];
        v336 = v317;
        v332 = v314;
        v333 = v315;
        v237 = type metadata accessor for AttributedString.SingleAttributeTransformer();
        v238 = *(v237 - 8);
        (*(v238 + 16))(&v314, &v320, v237);
        v289(&v314);
        if ((v314 ^ v214) > 0x3FF || (*(&v316[0] + 1) ^ v236) > 0x3FF || ((v239 = v319, v233 != v318) || v235 != v319) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v240 = v299;
          v241 = *(v299 + 40);
          v341 = *(v299 + 24);
          v342 = v241;
          v343 = *(v299 + 56);
          swift_unknownObjectRetain();
          v242 = BigString.UnicodeScalarView.index(roundingDown:)();
          swift_unknownObjectRelease();
          v243 = *(v240 + 40);
          v338 = *(v240 + 24);
          v339 = v243;
          v340 = *(v240 + 56);
          swift_unknownObjectRetain();
          v244 = BigString.UnicodeScalarView.index(roundingDown:)();
          v245 = swift_unknownObjectRelease();
          v246 = v242 >> 11;
          v247 = v244 >> 11;
          MEMORY[0x1EEE9AC00](v245);
          v248 = v307;
          v249 = v305;
          *(&v254 - 2) = v307;
          *(&v254 - 1) = v249;
          AttributedString._InternalRunsSlice.updateEach(with:)(partial apply for closure #1 in AttributedString.Guts.removeAttributeValue<A>(forKey:in:), (&v254 - 4), v240, v246, v247);
          v250 = v297;
          (v297)(&v313, v248, v249);
          if (*(&v313 + 1) == 1)
          {
            v202 = v300;
            v209 = v301;
          }

          else
          {
            outlined consume of AttributedString.AttributeRunBoundaries?(v313, *(&v313 + 1));
            v250(&v313, v248, v249);
            v251 = *(&v313 + 1);
            if (*(&v313 + 1) == 1)
            {
              v252 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              v253 = v313;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
              v252 = swift_allocObject();
              *(v252 + 16) = v272;
              *(v252 + 32) = v253;
              *(v252 + 40) = v251;
            }

            v209 = v301;
            AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v246, v247, 0, v252);

            v202 = v300;
          }
        }

        v207 = v307;
        v196 = v305;
        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(&v320, &v314, &v337, v239, v307, v305);
        v208 = v293;
        (*v302)(v293, v209);
        v211 = *(v238 + 8);
        v211(&v314, v237);
        v211(&v320, v237);
        v182 = v291;
        AttributedString.Runs.AttributesSlice1.Iterator.next()(v295, v202);
        v203 = TupleTypeMetadata2;
      }

      while ((v284)(v202, 1, TupleTypeMetadata2) != 1);
    }

    (*(v270 + 8))(v182, v295);

    *v271 = v337;
  }

  return result;
}

uint64_t AttributedString.transformingAttributes<A, B>(_:_:_:)@<X0>(void (*a1)(__int128 *, _OWORD *)@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  v375 = a4;
  v376 = a6;
  v351 = a1;
  v352 = a2;
  v319 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v321 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v334 = &v318 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v333 = &v318 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v336 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v332 = &v318 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v331 = &v318 - v19;
  v350 = AssociatedTypeWitness;
  v20 = type metadata accessor for Optional();
  *&v320 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v348 = &v318 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v370 = &v318 - v23;
  v349 = v16;
  v24 = type metadata accessor for Optional();
  v355 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v347 = &v318 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v372 = &v318 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  v356 = v24;
  v373 = v20;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v28 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v353 = &v318 - v29;
  v412 = a3;
  v413 = a4;
  v414 = a5;
  v415 = a6;
  v363 = type metadata accessor for AttributedString.Runs.AttributesSlice2();
  v341 = *(v363 - 8);
  MEMORY[0x1EEE9AC00](v363);
  v340 = &v318 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v362 = &v318 - v32;
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v371 = *(v382 - 8);
  MEMORY[0x1EEE9AC00](v382);
  v345 = &v318 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v364 = &v318 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v368 = &v318 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v38);
  v381 = &v318 - v39;
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v366 = *(v377 - 8);
  MEMORY[0x1EEE9AC00](v377);
  v374 = &v318 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v365 = &v318 - v42;
  v346 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v346);
  v361 = &v318 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v369 = &v318 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v342 = (&v318 - v47);
  v379 = a3;
  v380 = a5;
  v412 = a3;
  v413 = a4;
  v414 = a5;
  v415 = a6;
  v357 = type metadata accessor for AttributedString.Runs.AttributesSlice2.Iterator();
  v48 = *(v357 - 8);
  MEMORY[0x1EEE9AC00](v357);
  v358 = &v318 - v49;
  v429 = *v7;
  v50 = v429;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = &unk_1EA7B2000;
  v359 = v50;
  v360 = v50;
  v53 = &static AttributedString.Guts._nextVersion;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_11;
  }

  v54 = *(v50 + 40);
  v457 = *(v50 + 24);
  v458 = v54;
  v459 = *(v50 + 56);
  v55 = v50;
  v56 = *(v50 + 72);
  v57 = *(v50 + 80);
  v59 = *(v55 + 88);
  v58 = *(v55 + 96);
  type metadata accessor for AttributedString.Guts();
  v359 = swift_allocObject();
  v60 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v457, &v412);
  v61 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v61);
  if (v56)
  {
    v62 = v59 == 0;
  }

  else
  {
    v62 = 1;
  }

  v63 = v62;
  if (v63 != v60)
  {
    goto LABEL_105;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_106;
  }

  while (1)
  {
    add_explicit = atomic_fetch_add_explicit(v53, 1uLL, memory_order_relaxed);
    v65 = v458;
    v66 = v359;
    *(v359 + 24) = v457;
    *(v66 + 16) = add_explicit;
    *(v66 + 40) = v65;
    *(v66 + 56) = v459;
    *(v66 + 72) = v56;
    *(v66 + 80) = v57;
    *(v66 + 88) = v59;
    *(v66 + 96) = v58;
    *(v66 + 104) = MEMORY[0x1E69E7CC0];
    v50 = v360;

    v429 = v66;
LABEL_11:
    if (*(v52 + 1176) != -1)
    {
LABEL_103:
      swift_once();
    }

    v67 = atomic_fetch_add_explicit(v53, 1uLL, memory_order_relaxed);
    *(v359 + 16) = v67;
    v68 = *(v50 + 40);
    v454 = *(v50 + 24);
    v455 = v68;
    v456 = *(v50 + 56);
    v59 = BigString.startIndex.getter();
    v58 = v69;
    v56 = v70;
    v53 = v50;
    v57 = v71;
    v72 = BigString.endIndex.getter();
    if (v72 >> 10 >= v59 >> 10)
    {
      break;
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    swift_once();
  }

  v318 = v48;
  v412 = v59;
  v413 = v58;
  v414 = v56;
  v415 = v57;
  v416 = v72;
  v417 = v73;
  v418 = v74;
  v419 = v75;
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

  RangeSet.init(_:)();
  *v369 = v53;
  RangeSet.init()();
  v76 = v368;
  RangeSet.ranges.getter();
  v77 = v371;
  v78 = v381;
  v79 = v382;
  (*(v371 + 16))(v381, v76, v382);
  v80 = *(v38 + 36);
  v81 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of Collection.startIndex.getter();
  v82 = *(v77 + 8);
  v371 = v77 + 8;
  v367 = v82;
  v82(v76, v79);
  dispatch thunk of Collection.endIndex.getter();
  v83 = *(v78 + v80);
  v383 = v81;
  if (v83 != v412)
  {
    v378 = v80;
    do
    {
      v93 = dispatch thunk of Collection.subscript.read();
      v95 = v94[5];
      *&v387 = v94[4];
      v386 = v95;
      v96 = v94[7];
      v385 = v94[6];
      v384 = v96;
      v93(&v412, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v97 = v360;
      v98 = *(v360 + 40);
      v451 = *(v360 + 24);
      v452 = v98;
      v453 = *(v360 + 56);
      swift_unknownObjectRetain();
      v99 = BigString.UnicodeScalarView.index(roundingDown:)();
      v101 = v100;
      v103 = v102;
      v105 = v104;
      swift_unknownObjectRelease();
      v106 = *(v97 + 40);
      v448 = *(v97 + 24);
      v449 = v106;
      v450 = *(v97 + 56);
      swift_unknownObjectRetain();
      v107 = BigString.UnicodeScalarView.index(roundingDown:)();
      v109 = v108;
      v111 = v110;
      v113 = v112;
      swift_unknownObjectRelease();
      v412 = v99;
      v413 = v101;
      v414 = v103;
      v415 = v105;
      v416 = v107;
      v417 = v109;
      v79 = v382;
      v418 = v111;
      v419 = v113;
      if ((v107 ^ v99) >= 0x400)
      {
        v114 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v114(&v400, 0);
      }

      v78 = v381;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v78 + v378) != v412);
  }

  outlined destroy of TermOfAddress?(v78, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v84 = v346;
  v85 = *(v346 + 24);
  v86 = v369;
  (*(v366 + 16))(&v85[v369], v374, v377);
  v87 = v368;
  RangeSet.ranges.getter();
  v88 = RangeSet.Ranges.count.getter();
  v367(v87, v79);
  v89 = *(v84 + 28);
  LODWORD(v346) = v88 > 1;
  *(v86 + v89) = v346;
  v90 = v364;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  v91 = v79;
  dispatch thunk of Collection.endIndex.getter();
  if (v400 == v412)
  {
    v367(v90, v79);
    v92 = v360;
LABEL_22:
    v124 = *(v92 + 72);
    v125 = v379;
    if (v124)
    {
      v124 = *(v124 + 18);
    }

    *&v387 = v124;
    v386 = *(v92 + 96);
    v126 = *(v92 + 40);
    v445 = *(v92 + 24);
    v446 = v126;
    v447 = *(v92 + 56);
    v127 = BigString.startIndex.getter();
    v385 = v128;
    v384 = v129;
    v383 = v130;
    v131 = *(v92 + 72);
    v381 = *(v92 + 96);
    if (v131)
    {
      v378 = *(v131 + 18);
      v132 = *(v366 + 8);
      swift_unknownObjectRetain();
      v133 = v377;
      v132(v365, v377);
      v132(v374, v133);
      swift_unknownObjectRelease();
    }

    else
    {
      v134 = *(v366 + 8);
      v135 = v377;
      v134(v365, v377);
      v134(v374, v135);
      v378 = 0;
    }

    v136 = *(v92 + 40);
    v442 = *(v92 + 24);
    v443 = v136;
    v444 = *(v92 + 56);
    v140 = BigString.startIndex.getter();
    v141 = v137;
    v142 = v138;
    v143 = v139;
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v148 = 0;
    v149 = -1;
    v150 = v127;
    v151 = v127;
    v152 = v385;
    v153 = v385;
    v154 = v384;
    v155 = v384;
    v156 = v383;
    v157 = v383;
    v158 = v140;
    v159 = -1;
    v160 = v386;
    v161 = v387;
    goto LABEL_28;
  }

  v115 = dispatch thunk of Collection.subscript.read();
  v117 = *v116;
  v343 = v116[1];
  v344 = v117;
  v118 = v116[2];
  v338 = v116[3];
  v339 = v118;
  v115(&v412, 0);
  v119 = v79;
  v120 = v367;
  v367(v90, v119);
  v364 = v85;
  v121 = v91;
  v122 = v345;
  RangeSet.ranges.getter();
  v123 = dispatch thunk of Collection.isEmpty.getter();
  v92 = v360;
  if (v123)
  {
    v120(v122, v121);
    goto LABEL_22;
  }

  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v297 = dispatch thunk of Collection.subscript.read();
  v299 = v298[4];
  v300 = v298[5];
  v301 = v298[7];
  v337 = v298[6];
  v335 = v301;
  v297(&v412, 0);
  v120(v122, v121);
  AttributedString.Guts.findRun(at:)(v344, v338, &v412);
  v386 = v412;
  *&v387 = v413;
  v329 = v415;
  v330 = v414;
  v345 = v417;
  v385 = v418;
  v384 = v419;
  v383 = v420;
  v302 = *(v92 + 40);
  v445 = *(v92 + 24);
  v446 = v302;
  v447 = *(v92 + 56);
  if ((BigString.endIndex.getter() ^ v299) > 0x3FF)
  {
    AttributedString.Guts.findRun(at:)(v299, v335, &v412);
    v381 = v412;
    v378 = v413;
    v326 = v414;
    v327 = v300;
    v328 = v415;
    v140 = v417;
    v141 = v418;
    v313 = v366;
    v142 = v419;
    v143 = v420;
    v314 = v368;
    v382 = v299;
    v315 = v377;
    RangeSet.ranges.getter();
    v364 = RangeSet.Ranges.count.getter();
    v316 = *(v313 + 8);
    v316(v365, v315);
    v367(v314, v121);
    v317 = v315;
    v158 = v382;
    v316(v374, v317);
    v159 = v364;
    v148 = v326;
    v137 = v327;
    v147 = v328;
    v144 = v329;
    v149 = 0;
    v125 = v379;
    v146 = v346;
    v161 = v387;
    v153 = v343;
    v151 = v344;
    v160 = v386;
    v157 = v338;
    v155 = v339;
    v150 = v345;
    v152 = v385;
    v154 = v384;
    v156 = v383;
    v138 = v337;
    v139 = v335;
    v145 = v330;
  }

  else
  {
    v303 = v367;
    v304 = v299;
    v305 = *(v92 + 72);
    if (v305)
    {
      v306 = *(v92 + 80);
    }

    else
    {
      v306 = 0;
    }

    v328 = v306;
    v307 = *(v92 + 96);
    v308 = swift_unknownObjectRetain();
    v381 = v307;
    v378 = specialized Rope._endPath.getter(v308);
    if (v305)
    {
      swift_unknownObjectRelease();
    }

    v309 = v368;
    v310 = v377;
    RangeSet.ranges.getter();
    v311 = v382;
    v159 = RangeSet.Ranges.count.getter();
    v312 = *(v366 + 8);
    v312(v365, v310);
    v303(v309, v311);
    v312(v374, v310);
    v149 = 0;
    v148 = 0;
    v158 = v304;
    v140 = v304;
    v137 = v300;
    v141 = v300;
    v138 = v337;
    v157 = v338;
    v142 = v337;
    v139 = v335;
    v143 = v335;
    v125 = v379;
    v146 = v346;
    v161 = v387;
    v153 = v343;
    v151 = v344;
    v160 = v386;
    v155 = v339;
    v150 = v345;
    v152 = v385;
    v154 = v384;
    v156 = v383;
    v144 = v329;
    v145 = v330;
    v147 = v328;
  }

LABEL_28:
  v162 = v369;
  *(v369 + 8) = v144;
  *(v162 + 16) = v160;
  *(v162 + 24) = v161;
  *(v162 + 32) = v145;
  *(v162 + 40) = v150;
  *(v162 + 48) = v152;
  *(v162 + 56) = v154;
  *(v162 + 64) = v156;
  *(v162 + 72) = v151;
  *(v162 + 80) = v153;
  *(v162 + 88) = v155;
  *(v162 + 96) = v157;
  *(v162 + 104) = v149;
  *(v162 + 112) = 0;
  *(v162 + 113) = v146;
  v163 = v381;
  *(v162 + 120) = v147;
  *(v162 + 128) = v163;
  *(v162 + 136) = v378;
  *(v162 + 144) = v148;
  *(v162 + 152) = v140;
  *(v162 + 160) = v141;
  *(v162 + 168) = v142;
  *(v162 + 176) = v143;
  *(v162 + 184) = v158;
  *(v162 + 192) = v137;
  *(v162 + 200) = v138;
  *(v162 + 208) = v139;
  *(v162 + 216) = v159;
  *(v162 + 224) = 0;
  *(v162 + 225) = v146;
  v164 = v342;
  outlined init with take of AttributedString.Runs(v162, v342);
  v165 = v164;
  v166 = v361;
  outlined init with copy of AttributedString.Runs(v165, v361);
  v50 = v362;
  outlined init with copy of AttributedString.Runs(v166, v362);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_181215ED0;
  v168 = v380;
  v345 = *(v380 + 24);
  v346 = v380 + 24;
  *(v167 + 32) = (v345)(v125, v380);
  *(v167 + 40) = v169;
  v171 = v375;
  v170 = v376;
  v343 = *(v376 + 24);
  v344 = v376 + 24;
  *(v167 + 48) = v343(v375, v376);
  *(v167 + 56) = v172;
  *(v50 + *(v363 + 52)) = v167;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
  v173 = swift_allocObject();
  v366 = *(v168 + 32);
  v367 = (v168 + 32);
  v386 = v173 + 32;
  (v366)(v125, v168);
  v174 = *(v170 + 32);
  v385 = v173;
  v364 = v174;
  v365 = (v170 + 32);
  (v174)(v171, v170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
  v175 = static _SetStorage.allocate(capacity:)();
  v176 = 0;
  v177 = 0;
  v178 = v175 + 56;
  v48 = 1;
  while (2)
  {
    v181 = v176;
    v182 = (v386 + 16 * v177);
    v38 = *v182;
    v183 = v182[1];
    Hasher.init(_seed:)();
    LODWORD(v387) = v181;
    if (v183 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      if (v183)
      {
        MEMORY[0x1865CD060](1);
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x1865CD060](0);
      }
    }

    v184 = Hasher._finalize()();
    v53 = ~(-1 << *(v175 + 32));
    v52 = v184 & v53;
    v185 = (v184 & v53) >> 6;
    v186 = *(v178 + 8 * v185);
    v187 = 1 << (v184 & v53);
    if ((v187 & v186) == 0)
    {
LABEL_56:
      *(v178 + 8 * v185) = v186 | v187;
      v194 = (*(v175 + 48) + 16 * v52);
      *v194 = v38;
      v194[1] = v183;
      v195 = *(v175 + 16);
      v196 = __OFADD__(v195, 1);
      v197 = v195 + 1;
      if (!v196)
      {
        *(v175 + 16) = v197;
        goto LABEL_30;
      }

      __break(1u);
      goto LABEL_103;
    }

    while (1)
    {
      v188 = (*(v175 + 48) + 16 * v52);
      v189 = *v188;
      v50 = v188[1];
      if (v50 == 1)
      {
        if (v183 == 1)
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(*v188, 1);
          v179 = v189;
          v180 = 1;
          goto LABEL_29;
        }

LABEL_41:
        outlined copy of AttributedString.AttributeRunBoundaries?(*v188, v188[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v38, v183);
        outlined consume of AttributedString.AttributeRunBoundaries?(v189, v50);
        v190 = v38;
        v191 = v183;
LABEL_42:
        outlined consume of AttributedString.AttributeRunBoundaries?(v190, v191);
        goto LABEL_43;
      }

      if (v183 == 1)
      {
        goto LABEL_41;
      }

      if (!v50)
      {
        break;
      }

      if (!v183)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v188, v188[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v38, 0);
        outlined copy of AttributedString.AttributeRunBoundaries?(v189, v50);

        v190 = v189;
        v191 = v50;
        goto LABEL_42;
      }

      if (v189 == v38 && v50 == v183)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(v38, v183);
        outlined copy of AttributedString.AttributeRunBoundaries?(v38, v183);

LABEL_60:
        v179 = v38;
        v180 = v183;
        goto LABEL_29;
      }

      v193 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of AttributedString.AttributeRunBoundaries?(v189, v50);
      outlined copy of AttributedString.AttributeRunBoundaries?(v38, v183);
      outlined copy of AttributedString.AttributeRunBoundaries?(v189, v50);

      if (v193)
      {
        outlined consume of AttributedString.AttributeRunBoundaries?(v38, v183);
        v38 = v189;
        v183 = v50;
        v48 = 1;
        goto LABEL_60;
      }

      outlined consume of AttributedString.AttributeRunBoundaries?(v189, v50);
      v48 = 1;
LABEL_43:
      v52 = (v52 + 1) & v53;
      v185 = v52 >> 6;
      v186 = *(v178 + 8 * (v52 >> 6));
      v187 = 1 << v52;
      if ((v186 & (1 << v52)) == 0)
      {
        goto LABEL_56;
      }
    }

    outlined copy of AttributedString.AttributeRunBoundaries?(*v188, 0);
    if (v183)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(v38, v183);

      v190 = v189;
      v191 = 0;
      goto LABEL_42;
    }

    swift_bridgeObjectRelease_n();
    v179 = v189;
    v180 = 0;
LABEL_29:
    outlined consume of AttributedString.AttributeRunBoundaries?(v179, v180);
LABEL_30:
    v176 = 1;
    v177 = 1;
    if ((v387 & 1) == 0)
    {
      continue;
    }

    break;
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  outlined destroy of AttributedString.Runs(v361);
  outlined destroy of AttributedString.Runs(v342);
  v198 = v362;
  v199 = v363;
  *(v362 + *(v363 + 56)) = v175;
  v200 = v198;
  v202 = v340;
  v201 = v341;
  v203 = *(v341 + 16);
  v203(v340, v198, v199);
  v204 = v358;
  result = (v203)(v358, v202, v199);
  v206 = *(v202 + 12);
  if (v206 == 2)
  {
    __break(1u);
  }

  else
  {
    v207 = *(v202 + 11);
    v387 = *(v202 + 72);
    v208 = *(v201 + 8);
    v208(v200, v199);
    v209 = *(*v202 + 16);
    v208(v202, v199);
    v210 = v357;
    v211 = &v204[*(v357 + 52)];
    *v211 = v387;
    *(v211 + 2) = v207;
    *(v211 + 3) = v206;
    *(v211 + 4) = v209;
    v212 = v353;
    AttributedString.Runs.AttributesSlice2.Iterator.next()(v210, v353);
    v213 = TupleTypeMetadata3;
    v214 = *(TupleTypeMetadata3 - 8);
    v215 = *(v214 + 48);
    v341 = v214 + 48;
    v342 = v215;
    v216 = (v215)(v212, 1, TupleTypeMetadata3);
    v218 = v372;
    v217 = v373;
    v219 = v370;
    v220 = v356;
    if (v216 != 1)
    {
      v221 = *(v355 + 32);
      v339 = (v320 + 32);
      v340 = v221;
      v338 = (v355 + 16);
      v337 = (v336 + 6);
      v330 = v336 + 4;
      v329 = v336 + 2;
      v328 = (v380 + 40);
      v326 = (v336 + 1);
      v327 = v380 + 48;
      v355 += 32;
      v369 = v355 - 24;
      v335 = (v321 + 6);
      v336 = (v320 + 16);
      v324 = (v321 + 2);
      v325 = (v321 + 4);
      v322 = v376 + 48;
      v323 = v376 + 40;
      ++v321;
      v368 = (v320 + 8);
      v320 = xmmword_181218E20;
      do
      {
        v230 = *(v213 + 48);
        v231 = (v212 + *(v213 + 64));
        v232 = v231[1];
        v384 = *v231;
        v383 = v232;
        v233 = v231[3];
        v382 = v231[2];
        v381 = v233;
        v234 = v231[4];
        v374 = v231[5];
        v235 = v231[7];
        *&v387 = v231[6];
        v386 = v235;
        v237 = v231[8];
        v236 = v231[9];
        v385 = v237;
        v377 = v236;
        v378 = v234;
        (v340)(v218, v212, v220);
        (*v339)(v219, v212 + v230, v217);
        v238 = v347;
        (*v338)(v347, v218, v220);
        v239 = v349;
        if ((*v337)(v238, 1, v349) == 1)
        {
          (*v369)(v238, v220);
          v240 = 0;
          memset(v402, 0, sizeof(v402));
          v400 = 0u;
          v401 = 0u;
          v242 = v375;
          v241 = v376;
          v244 = v379;
          v243 = v380;
        }

        else
        {
          v245 = v331;
          (*v330)(v331, v238, v239);
          v246 = *v329;
          v247 = v332;
          (*v329)(v332, v245, v239);
          *(&v401 + 1) = v239;
          v244 = v379;
          v248 = v380;
          *&v402[0] = swift_getAssociatedConformanceWitness();
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v400);
          v246(boxed_opaque_existential_0, v247, v239);
          (v366)(&v394, v244, v248);
          *(v402 + 8) = v394;
          BYTE8(v402[1]) = (*(v248 + 40))(v244, v248) & 1;
          v240 = (*(v248 + 48))(v244, v248);
          v250 = *v326;
          v219 = v370;
          (*v326)(v247, v239);
          v250(v245, v239);
          v243 = v248;
          v242 = v375;
          v241 = v376;
        }

        v403 = v240;
        v251 = (v345)(v244, v243);
        v412 = v384;
        v413 = v383;
        v414 = v382;
        v415 = v381;
        v416 = v378;
        v252 = v374;
        v417 = v374;
        v418 = v387;
        v419 = v386;
        v420 = v385;
        v421 = v377;
        v422 = v251;
        v361 = v253;
        v423 = v253;
        v426 = v402[0];
        v427 = v402[1];
        v428 = v403;
        v424 = v400;
        v425 = v401;
        v254 = v348;
        v255 = v373;
        (*v336)(v348, v219, v373);
        v256 = v350;
        if ((*v335)(v254, 1, v350) == 1)
        {
          (*v368)(v254, v255);
          v257 = 0;
          memset(v396, 0, sizeof(v396));
          v394 = 0u;
          v395 = 0u;
        }

        else
        {
          v258 = *v325;
          v371 = v251;
          v259 = v333;
          v258(v333, v254, v256);
          v260 = *v324;
          v261 = v334;
          (*v324)(v334, v259, v256);
          *(&v395 + 1) = v256;
          *&v396[0] = swift_getAssociatedConformanceWitness();
          v262 = __swift_allocate_boxed_opaque_existential_0(&v394);
          v260(v262, v261, v256);
          (v364)(v390, v242, v241);
          *(v396 + 8) = v390[0];
          BYTE8(v396[1]) = (*(v241 + 40))(v242, v241) & 1;
          v257 = (*(v241 + 48))(v242, v241);
          v263 = *v321;
          (*v321)(v261, v256);
          v264 = v259;
          v251 = v371;
          v263(v264, v256);
        }

        v265 = v359;
        v397 = v257;
        v266 = v343(v242, v241);
        v267 = v384;
        *&v400 = v384;
        *(&v400 + 1) = v383;
        *&v401 = v382;
        *(&v401 + 1) = v381;
        *&v402[0] = v378;
        *(&v402[0] + 1) = v252;
        *&v402[1] = v387;
        *(&v402[1] + 1) = v386;
        v403 = v385;
        v404 = v377;
        v362 = v268;
        v363 = v266;
        v405 = v266;
        v406 = v268;
        v409 = v396[0];
        v410 = v396[1];
        v411 = v397;
        v407 = v394;
        v408 = v395;
        v269 = type metadata accessor for AttributedString.SingleAttributeTransformer();
        v377 = *(v269 - 8);
        v378 = v269;
        (*(v377 + 16))(&v394, &v412);
        v270 = type metadata accessor for AttributedString.SingleAttributeTransformer();
        v371 = *(v270 - 8);
        (*(v371 + 16))(v390, &v400, v270);
        v351(&v394, v390);
        v271 = v267 >> 10;
        if (v267 >> 10 != v394 >> 10 || (*(&v396[0] + 1) ^ v252) > 0x3FF || (v251 != v398 || v361 != v399) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v272 = *(v265 + 40);
          v439 = *(v265 + 24);
          v440 = v272;
          v441 = *(v265 + 56);
          swift_unknownObjectRetain();
          v273 = BigString.UnicodeScalarView.index(roundingDown:)();
          swift_unknownObjectRelease();
          v274 = *(v265 + 40);
          v436 = *(v265 + 24);
          v437 = v274;
          v438 = *(v265 + 56);
          swift_unknownObjectRetain();
          v275 = BigString.UnicodeScalarView.index(roundingDown:)();
          v276 = swift_unknownObjectRelease();
          v277 = v273 >> 11;
          v278 = v275 >> 11;
          MEMORY[0x1EEE9AC00](v276);
          v279 = v379;
          v280 = v380;
          *(&v318 - 2) = v379;
          *(&v318 - 1) = v280;
          AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.removeAttributeValue<A>(forKey:in:)partial apply, (&v318 - 4), v265, v277, v278);
          v281 = v366;
          (v366)(&v388, v279, v280);
          if (v389 == 1)
          {
            v252 = v374;
          }

          else
          {
            outlined consume of AttributedString.AttributeRunBoundaries?(v388, v389);
            v281(&v388, v279, v280);
            v282 = v389;
            if (v389 == 1)
            {
              v283 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              v284 = v388;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
              v283 = swift_allocObject();
              *(v283 + 16) = v320;
              *(v283 + 32) = v284;
              *(v283 + 40) = v282;
            }

            v252 = v374;
            AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v277, v278, 0, v283);
          }
        }

        if (v271 != *&v390[0] >> 10 || (v391 ^ v252) > 0x3FF || ((v223 = v393, v363 != v392) || v362 != v393) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v285 = *(v265 + 40);
          v433 = *(v265 + 24);
          v434 = v285;
          v435 = *(v265 + 56);
          swift_unknownObjectRetain();
          v286 = BigString.UnicodeScalarView.index(roundingDown:)();
          swift_unknownObjectRelease();
          v287 = *(v265 + 40);
          v430 = *(v265 + 24);
          v431 = v287;
          v432 = *(v265 + 56);
          swift_unknownObjectRetain();
          v288 = BigString.UnicodeScalarView.index(roundingDown:)();
          v289 = swift_unknownObjectRelease();
          v290 = v286 >> 11;
          v291 = v288 >> 11;
          MEMORY[0x1EEE9AC00](v289);
          v292 = v375;
          v293 = v376;
          *(&v318 - 2) = v375;
          *(&v318 - 1) = v293;
          AttributedString._InternalRunsSlice.updateEach(with:)(closure #1 in AttributedString.Guts.removeAttributeValue<A>(forKey:in:)partial apply, (&v318 - 4), v265, v290, v291);
          v294 = v364;
          (v364)(&v388, v292, v293);
          if (v389 != 1)
          {
            outlined consume of AttributedString.AttributeRunBoundaries?(v388, v389);
            v294(&v388, v292, v293);
            v295 = v389;
            if (v389 == 1)
            {
              v222 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              v296 = v388;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd);
              v222 = swift_allocObject();
              *(v222 + 16) = v320;
              *(v222 + 32) = v296;
              *(v222 + 40) = v295;
            }

            AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v290, v291, 0, v222);
          }
        }

        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(&v412, &v394, &v429, v223, v379, v380);
        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(&v400, v390, &v429, v224, v375, v376);
        v219 = v370;
        v225 = v373;
        (*v368)(v370, v373);
        v220 = v356;
        (*v369)(v372, v356);
        v226 = *(v371 + 8);
        v226(v390, v270);
        v227 = *(v377 + 8);
        v228 = v270;
        v229 = v378;
        v227(&v394, v378);
        v226(&v400, v228);
        v227(&v412, v229);
        v217 = v225;
        v218 = v372;
        v212 = v353;
        AttributedString.Runs.AttributesSlice2.Iterator.next()(v357, v353);
        v213 = TupleTypeMetadata3;
      }

      while ((v342)(v212, 1, TupleTypeMetadata3) != 1);
    }

    (*(v318 + 8))(v358, v357);

    *v319 = v429;
  }

  return result;
}

uint64_t AttributedString.transformingAttributes<A, B, C>(_:_:_:_:)@<X0>(void (*a1)(_OWORD *, uint64_t *, uint64_t *)@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, void *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v389 = a1;
  v390 = a2;
  v337 = a6;
  v421 = a8;
  v415 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v338 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v364 = &v334 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v363 = &v334 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v366 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v362 = &v334 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v361 = &v334 - v19;
  v388 = AssociatedTypeWitness;
  v418 = a7;
  v20 = swift_getAssociatedTypeWitness();
  v368 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v360 = &v334 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v359 = &v334 - v23;
  v24 = type metadata accessor for Optional();
  v335 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v385 = &v334 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v411 = &v334 - v27;
  v387 = v16;
  v28 = type metadata accessor for Optional();
  v365 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v384 = &v334 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v416 = &v334 - v31;
  v386 = v20;
  v32 = type metadata accessor for Optional();
  v393 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v383 = &v334 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v408 = &v334 - v35;
  v409 = v36;
  v465 = v36;
  v410 = v28;
  v466 = v28;
  v412 = v24;
  v467 = v24;
  v468 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v37 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v37 - 8);
  v391 = &v334 - v38;
  v465 = a3;
  v466 = a4;
  v467 = a5;
  v468 = a7;
  v39 = v421;
  v469 = v421;
  v470 = a9;
  v403 = type metadata accessor for AttributedString.Runs.AttributesSlice3();
  v375 = *(v403 - 8);
  MEMORY[0x1EEE9AC00](v403);
  v41 = &v334 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v402 = &v334 - v43;
  v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v417 = *(v425 - 8);
  MEMORY[0x1EEE9AC00](v425);
  v45 = &v334 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v334 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v406 = &v334 - v50;
  v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v427);
  v424 = &v334 - v51;
  v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v405 = *(v420 - 8);
  MEMORY[0x1EEE9AC00](v420);
  v419 = &v334 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v404 = (&v334 - v54);
  v397 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v397);
  v401 = &v334 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v334 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v400 = &v334 - v60;
  v429 = a3;
  v465 = a3;
  v413 = a4;
  v466 = a4;
  v467 = v415;
  v468 = a7;
  v469 = v39;
  v414 = a9;
  v470 = a9;
  v394 = type metadata accessor for AttributedString.Runs.AttributesSlice3.Iterator();
  v336 = *(v394 - 8);
  MEMORY[0x1EEE9AC00](v394);
  v395 = &v334 - v61;
  v480 = *v428;
  v62 = v480;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = &unk_1EA7B2000;
  v65 = v62;
  v66 = &static AttributedString.Guts._nextVersion;
  v396 = v62;
  v407 = v58;
  v381 = v45;
  v398 = v48;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_11;
  }

  v58 = v41;
  v67 = *(v62 + 40);
  v499 = *(v62 + 24);
  v500 = v67;
  v501 = *(v62 + 56);
  v68 = *(v62 + 72);
  v69 = *(v62 + 80);
  v70 = *(v62 + 88);
  v71 = *(v62 + 96);
  type metadata accessor for AttributedString.Guts();
  v41 = swift_allocObject();
  v72 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v499, &v465);
  v73 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v73);
  if (v68)
  {
    v74 = v70 == 0;
  }

  else
  {
    v74 = 1;
  }

  v75 = v74;
  if (v75 != v72)
  {
    goto LABEL_107;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_108;
  }

  while (1)
  {
    add_explicit = atomic_fetch_add_explicit(v66, 1uLL, memory_order_relaxed);
    v77 = v500;
    *(v41 + 24) = v499;
    *(v41 + 2) = add_explicit;
    *(v41 + 40) = v77;
    *(v41 + 56) = v501;
    *(v41 + 9) = v68;
    *(v41 + 10) = v69;
    *(v41 + 11) = v70;
    *(v41 + 12) = v71;
    v65 = v41;
    *(v41 + 13) = MEMORY[0x1E69E7CC0];
    v62 = v396;

    v480 = v41;
    v41 = v58;
    v58 = v407;
LABEL_11:
    if (v64[147] != -1)
    {
LABEL_105:
      swift_once();
    }

    v78 = atomic_fetch_add_explicit(v66, 1uLL, memory_order_relaxed);
    v382 = v65;
    v65[2] = v78;
    v79 = *(v62 + 40);
    v496 = *(v62 + 24);
    v497 = v79;
    v498 = *(v62 + 56);
    v66 = v62;
    v71 = BigString.startIndex.getter();
    v68 = v80;
    v69 = v81;
    v70 = v82;
    v83 = BigString.endIndex.getter();
    v64 = v417;
    if (v83 >> 10 >= v71 >> 10)
    {
      break;
    }

    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    swift_once();
  }

  v374 = v41;
  v465 = v71;
  v466 = v68;
  v467 = v69;
  v468 = v70;
  v469 = v83;
  v470 = v84;
  v471 = v85;
  v472 = v86;
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

  RangeSet.init(_:)();
  *v58 = v66;
  RangeSet.init()();
  v87 = v406;
  RangeSet.ranges.getter();
  v88 = v424;
  v89 = v425;
  (v64[2])(v424, v87, v425);
  v90 = *(v427 + 36);
  v91 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of Collection.startIndex.getter();
  v92 = v64[1];
  v417 = (v64 + 1);
  v399 = v92;
  v92(v87, v89);
  dispatch thunk of Collection.endIndex.getter();
  v93 = *(v88 + v90);
  v423 = v91;
  if (v93 != v465)
  {
    v422 = v90;
    do
    {
      v105 = dispatch thunk of Collection.subscript.read();
      v107 = v106[5];
      *&v428 = v106[4];
      v427 = v107;
      v426 = v106[6];
      v105(&v465, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v108 = v396;
      v109 = *(v396 + 40);
      v493 = *(v396 + 24);
      v494 = v109;
      v495 = *(v396 + 56);
      swift_unknownObjectRetain();
      v110 = BigString.UnicodeScalarView.index(roundingDown:)();
      v112 = v111;
      v114 = v113;
      v116 = v115;
      swift_unknownObjectRelease();
      v117 = *(v108 + 40);
      v490 = *(v108 + 24);
      v491 = v117;
      v492 = *(v108 + 56);
      swift_unknownObjectRetain();
      v118 = BigString.UnicodeScalarView.index(roundingDown:)();
      v120 = v119;
      v122 = v121;
      v124 = v123;
      swift_unknownObjectRelease();
      v465 = v110;
      v466 = v112;
      v467 = v114;
      v468 = v116;
      v469 = v118;
      v470 = v120;
      v471 = v122;
      v89 = v425;
      v472 = v124;
      if ((v118 ^ v110) >= 0x400)
      {
        v125 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v125(&v451, 0);
      }

      v88 = v424;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v88 + v422) != v465);
  }

  outlined destroy of TermOfAddress?(v88, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v94 = v397;
  v95 = *(v397 + 24);
  v96 = v407;
  (*(v405 + 16))(&v95[v407], v419, v420);
  v97 = v406;
  RangeSet.ranges.getter();
  v98 = RangeSet.Ranges.count.getter();
  v99 = v97;
  v100 = v399;
  v399(v99, v89);
  v101 = *(v94 + 28);
  LODWORD(v397) = v98 > 1;
  *(v96 + v101) = v397;
  v102 = v398;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v451 == v465)
  {
    v100(v102, v425);
    v103 = v418;
    v104 = v396;
LABEL_22:
    v133 = *(v104 + 72);
    v134 = v413;
    if (v133)
    {
      *&v428 = *(v133 + 18);
    }

    else
    {
      *&v428 = 0;
    }

    v135 = *(v104 + 96);
    v136 = *(v104 + 40);
    v487 = *(v104 + 24);
    v488 = v136;
    v489 = *(v104 + 56);
    v427 = BigString.startIndex.getter();
    v426 = v137;
    v424 = v138;
    v423 = v139;
    v140 = *(v104 + 72);
    v422 = *(v104 + 96);
    if (v140)
    {
      v398 = *(v140 + 18);
      v141 = *(v405 + 8);
      swift_unknownObjectRetain();
      v142 = v135;
      v143 = v420;
      v141(v404, v420);
      v144 = v143;
      v135 = v142;
      v141(v419, v144);
      swift_unknownObjectRelease();
    }

    else
    {
      v145 = *(v405 + 8);
      v146 = v420;
      v145(v404, v420);
      v145(v419, v146);
      v398 = 0;
    }

    v147 = *(v104 + 40);
    v484 = *(v104 + 24);
    v485 = v147;
    v486 = *(v104 + 56);
    v148 = BigString.startIndex.getter();
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v155 = 0;
    v156 = 0;
    v157 = -1;
    v158 = v427;
    v159 = v427;
    v160 = v426;
    v161 = v426;
    v162 = v424;
    v163 = v424;
    v164 = v423;
    v165 = v423;
    v166 = v148;
    v167 = v149;
    v168 = v150;
    v169 = v151;
    v170 = -1;
    v171 = v428;
    goto LABEL_29;
  }

  v126 = v425;
  v127 = dispatch thunk of Collection.subscript.read();
  v129 = *v128;
  v379 = v128[1];
  v380 = v129;
  v130 = v128[2];
  v377 = v128[3];
  v378 = v130;
  v127(&v465, 0);
  v100(v102, v126);
  v376 = v95;
  v131 = v381;
  RangeSet.ranges.getter();
  v132 = dispatch thunk of Collection.isEmpty.getter();
  v103 = v418;
  v104 = v396;
  if (v132)
  {
    v399(v131, v425);
    goto LABEL_22;
  }

  v311 = v131;
  v312 = v425;
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v313 = dispatch thunk of Collection.subscript.read();
  v166 = v314[4];
  v315 = v314[5];
  v316 = v314[6];
  v317 = v314[7];
  v313(&v465, 0);
  v399(v311, v312);
  AttributedString.Guts.findRun(at:)(v380, v377, &v465);
  v381 = v465;
  *&v428 = v466;
  v370 = v468;
  v371 = v467;
  v427 = v470;
  v426 = v471;
  v424 = v472;
  v423 = v473;
  v318 = *(v104 + 40);
  v487 = *(v104 + 24);
  v488 = v318;
  v489 = *(v104 + 56);
  v319 = BigString.endIndex.getter();
  v372 = v317;
  v373 = v316;
  if ((v319 ^ v166) > 0x3FF)
  {
    v367 = v315;
    AttributedString.Guts.findRun(at:)(v166, v317, &v465);
    v422 = v465;
    v398 = v466;
    v156 = v467;
    v369 = v468;
    v328 = v470;
    v357 = v472;
    v358 = v471;
    v356 = v473;
    v329 = v406;
    v330 = v420;
    RangeSet.ranges.getter();
    v331 = v425;
    v170 = RangeSet.Ranges.count.getter();
    v376 = v166;
    v332 = *(v405 + 8);
    v332(v404, v330);
    v333 = v329;
    v155 = v369;
    v399(v333, v331);
    v166 = v376;
    v332(v419, v330);
    v151 = v356;
    v150 = v357;
    v149 = v358;
    v148 = v328;
    v157 = 0;
    v134 = v413;
    v103 = v418;
    v154 = v397;
    v171 = v428;
    v159 = v380;
    v135 = v381;
    v163 = v378;
    v161 = v379;
    v165 = v377;
    v158 = v427;
    v160 = v426;
    v162 = v424;
    v164 = v423;
    v167 = v367;
    v169 = v372;
    v168 = v373;
    v152 = v370;
    v153 = v371;
  }

  else
  {
    v320 = *(v104 + 72);
    if (v320)
    {
      v321 = *(v104 + 80);
    }

    else
    {
      v321 = 0;
    }

    v369 = v321;
    v322 = *(v104 + 96);
    v323 = swift_unknownObjectRetain();
    v422 = v322;
    v398 = specialized Rope._endPath.getter(v323);
    if (v320)
    {
      swift_unknownObjectRelease();
    }

    v324 = v406;
    v325 = v420;
    RangeSet.ranges.getter();
    v326 = v425;
    v170 = RangeSet.Ranges.count.getter();
    v327 = *(v405 + 8);
    v327(v404, v325);
    v399(v324, v326);
    v327(v419, v325);
    v157 = 0;
    v156 = 0;
    v148 = v166;
    v167 = v315;
    v149 = v315;
    v169 = v372;
    v168 = v373;
    v150 = v373;
    v151 = v372;
    v134 = v413;
    v103 = v418;
    v154 = v397;
    v171 = v428;
    v159 = v380;
    v135 = v381;
    v163 = v378;
    v161 = v379;
    v165 = v377;
    v158 = v427;
    v160 = v426;
    v162 = v424;
    v164 = v423;
    v152 = v370;
    v153 = v371;
    v155 = v369;
  }

LABEL_29:
  v172 = v407;
  *(v407 + 8) = v152;
  *(v172 + 16) = v135;
  *(v172 + 24) = v171;
  *(v172 + 32) = v153;
  *(v172 + 40) = v158;
  *(v172 + 48) = v160;
  *(v172 + 56) = v162;
  *(v172 + 64) = v164;
  *(v172 + 72) = v159;
  *(v172 + 80) = v161;
  *(v172 + 88) = v163;
  *(v172 + 96) = v165;
  *(v172 + 104) = v157;
  *(v172 + 112) = 0;
  *(v172 + 113) = v154;
  v173 = v422;
  *(v172 + 120) = v155;
  *(v172 + 128) = v173;
  *(v172 + 136) = v398;
  *(v172 + 144) = v156;
  *(v172 + 152) = v148;
  *(v172 + 160) = v149;
  *(v172 + 168) = v150;
  *(v172 + 176) = v151;
  *(v172 + 184) = v166;
  *(v172 + 192) = v167;
  *(v172 + 200) = v168;
  *(v172 + 208) = v169;
  *(v172 + 216) = v170;
  *(v172 + 224) = 0;
  *(v172 + 225) = v154;
  v174 = v400;
  outlined init with take of AttributedString.Runs(v172, v400);
  v175 = v174;
  v176 = v401;
  outlined init with copy of AttributedString.Runs(v175, v401);
  v177 = v402;
  outlined init with copy of AttributedString.Runs(v176, v402);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v178 = swift_allocObject();
  *(v178 + 16) = xmmword_18121D6B0;
  v179 = v429;
  v380 = *(v103 + 24);
  v381 = v103 + 24;
  *(v178 + 32) = v380(v429, v103);
  *(v178 + 40) = v180;
  v181 = v421;
  v378 = *(v421 + 24);
  v379 = v421 + 24;
  *(v178 + 48) = (v378)(v134, v421);
  *(v178 + 56) = v182;
  v183 = v414;
  v184 = v103;
  v185 = v415;
  v376 = *(v414 + 24);
  v377 = v414 + 24;
  *(v178 + 64) = v376(v415, v414);
  *(v178 + 72) = v186;
  *(v177 + *(v403 + 68)) = v178;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
  v187 = swift_allocObject();
  v188 = *(v184 + 32);
  v427 = v187 + 32;
  v357 = v188;
  v358 = (v184 + 32);
  (v188)(v179, v184);
  v355 = *(v181 + 32);
  v356 = v181 + 32;
  v355(v134, v181);
  v189 = *(v183 + 32);
  v426 = v187;
  v353 = v189;
  v354 = v183 + 32;
  v189(v185, v183);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
  v190 = static _SetStorage.allocate(capacity:)();
  v191 = 0;
  v41 = (v190 + 56);
  while (2)
  {
    v194 = (v427 + 16 * v191);
    v195 = *v194;
    v66 = v194[1];
    Hasher.init(_seed:)();
    *&v428 = v191;
    if (v66 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      if (v66)
      {
        MEMORY[0x1865CD060](1);
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x1865CD060](0);
      }
    }

    v65 = &v465;
    v196 = Hasher._finalize()();
    v62 = ~(-1 << *(v190 + 32));
    v58 = v196 & v62;
    v197 = (v196 & v62) >> 6;
    v198 = *&v41[8 * v197];
    v199 = 1 << (v196 & v62);
    if ((v199 & v198) == 0)
    {
LABEL_57:
      *&v41[8 * v197] = v198 | v199;
      v206 = (*(v190 + 48) + 16 * v58);
      *v206 = v195;
      v206[1] = v66;
      v207 = *(v190 + 16);
      v208 = __OFADD__(v207, 1);
      v209 = v207 + 1;
      if (!v208)
      {
        *(v190 + 16) = v209;
        goto LABEL_31;
      }

      __break(1u);
      goto LABEL_105;
    }

    while (1)
    {
      v200 = (*(v190 + 48) + 16 * v58);
      v65 = *v200;
      v201 = v200[1];
      if (v201 == 1)
      {
        if (v66 == 1)
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(*v200, 1);
          v192 = v65;
          v193 = 1;
          goto LABEL_30;
        }

LABEL_42:
        outlined copy of AttributedString.AttributeRunBoundaries?(*v200, v200[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v195, v66);
        outlined consume of AttributedString.AttributeRunBoundaries?(v65, v201);
        v202 = v195;
        v203 = v66;
LABEL_43:
        outlined consume of AttributedString.AttributeRunBoundaries?(v202, v203);
        goto LABEL_44;
      }

      if (v66 == 1)
      {
        goto LABEL_42;
      }

      if (!v201)
      {
        break;
      }

      if (!v66)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v200, v200[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v195, 0);
        outlined copy of AttributedString.AttributeRunBoundaries?(v65, v201);

        v202 = v65;
        v203 = v201;
        goto LABEL_43;
      }

      if (v65 == v195 && v201 == v66)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(v195, v66);
        outlined copy of AttributedString.AttributeRunBoundaries?(v195, v66);

LABEL_61:
        v192 = v195;
        v193 = v66;
        goto LABEL_30;
      }

      v205 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of AttributedString.AttributeRunBoundaries?(v65, v201);
      outlined copy of AttributedString.AttributeRunBoundaries?(v195, v66);
      outlined copy of AttributedString.AttributeRunBoundaries?(v65, v201);

      if (v205)
      {
        outlined consume of AttributedString.AttributeRunBoundaries?(v195, v66);
        v195 = v65;
        v66 = v201;
        goto LABEL_61;
      }

      outlined consume of AttributedString.AttributeRunBoundaries?(v65, v201);
LABEL_44:
      v58 = (v58 + 1) & v62;
      v197 = v58 >> 6;
      v198 = *&v41[8 * (v58 >> 6)];
      v199 = 1 << v58;
      if ((v198 & (1 << v58)) == 0)
      {
        goto LABEL_57;
      }
    }

    outlined copy of AttributedString.AttributeRunBoundaries?(*v200, 0);
    if (v66)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(v195, v66);

      v202 = v65;
      v203 = 0;
      goto LABEL_43;
    }

    swift_bridgeObjectRelease_n();
    v192 = v65;
    v193 = 0;
LABEL_30:
    outlined consume of AttributedString.AttributeRunBoundaries?(v192, v193);
LABEL_31:
    v191 = v428 + 1;
    if (v428 != 2)
    {
      continue;
    }

    break;
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  outlined destroy of AttributedString.Runs(v401);
  outlined destroy of AttributedString.Runs(v400);
  v210 = v403;
  v211 = v402;
  *(v402 + *(v403 + 72)) = v190;
  v213 = v374;
  v212 = v375;
  v214 = v375[2];
  v214(v374, v211, v210);
  v215 = v395;
  result = (v214)(v395, v213, v210);
  v217 = *(v213 + 12);
  if (v217 == 2)
  {
    __break(1u);
  }

  else
  {
    v218 = *(v213 + 11);
    v428 = *(v213 + 72);
    v219 = v212[1];
    v219(v211, v210);
    v220 = *(*v213 + 16);
    v219(v213, v210);
    v221 = v394;
    v222 = &v215[*(v394 + 68)];
    *v222 = v428;
    *(v222 + 2) = v218;
    *(v222 + 3) = v217;
    *(v222 + 4) = v220;
    v223 = v391;
    AttributedString.Runs.AttributesSlice3.Iterator.next()(v221, v391);
    v224 = TupleTypeMetadata;
    v225 = *(TupleTypeMetadata - 8);
    v226 = *(v225 + 48);
    v374 = (v225 + 48);
    v375 = v226;
    v227 = (v226)(v223, 1, TupleTypeMetadata);
    v228 = v412;
    v229 = v411;
    v230 = v410;
    v231 = v416;
    v232 = v409;
    v233 = v408;
    if (v227 != 1)
    {
      v234 = *(v393 + 32);
      v372 = (v365 + 4);
      v373 = v234;
      v370 = (v393 + 16);
      v371 = (v335 + 32);
      v369 = (v368 + 6);
      v352 = v368 + 4;
      v351 = v368 + 2;
      v349 = v418 + 48;
      v350 = v418 + 40;
      v348 = (v368 + 1);
      v393 += 32;
      v405 = v393 - 24;
      v367 = (v366 + 6);
      v368 = (v365 + 2);
      v346 = v366 + 2;
      v347 = v366 + 4;
      v344 = v421 + 48;
      v345 = v421 + 40;
      v235 = (v366 + 1);
      v404 = (v365 + 1);
      v366 = (v335 + 16);
      v365 = (v338 + 6);
      v342 = (v338 + 4);
      v343 = v235;
      v341 = (v338 + 2);
      v339 = v414 + 48;
      v340 = v414 + 40;
      ++v338;
      v403 = v335 + 8;
      do
      {
        v247 = v224;
        v248 = *(v224 + 48);
        v249 = *(v247 + 64);
        v250 = (v223 + *(v247 + 80));
        v251 = v250[1];
        v417 = *v250;
        v427 = v251;
        v252 = v250[3];
        v426 = v250[2];
        v425 = v252;
        v253 = v250[5];
        v420 = v250[4];
        *&v428 = v253;
        v254 = v250[7];
        v424 = v250[6];
        v423 = v254;
        v256 = v250[8];
        v255 = v250[9];
        v422 = v256;
        v419 = v255;
        (v373)(v233, v223, v232);
        (*v372)(v231, v223 + v248, v230);
        (*v371)(v229, v223 + v249, v228);
        v257 = v383;
        (*v370)(v383, v233, v232);
        v258 = v386;
        v259 = (*v369)(v257, 1, v386);
        v260 = v429;
        if (v259 == 1)
        {
          v261 = v230;
          (*v405)(v257, v232);
          v262 = 0;
          memset(v479, 0, 32);
          v477 = 0u;
          v478 = 0u;
          v263 = v415;
          v264 = v413;
          v265 = v418;
        }

        else
        {
          v266 = v359;
          (*v352)(v359, v257, v258);
          v267 = *v351;
          v268 = v360;
          (*v351)(v360, v266, v258);
          *(&v478 + 1) = v258;
          v265 = v418;
          v479[0] = swift_getAssociatedConformanceWitness();
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v477);
          v267(boxed_opaque_existential_0, v268, v258);
          (v357)(&v451, v429, v265);
          *&v479[1] = v451;
          LOBYTE(v479[3]) = (*(v265 + 40))(v429, v265) & 1;
          v262 = (*(v265 + 48))(v429, v265);
          v270 = *v348;
          v271 = v268;
          v261 = v410;
          (*v348)(v271, v258);
          v270(v266, v258);
          v260 = v429;
          v263 = v415;
          v264 = v413;
        }

        v272 = v387;
        v479[4] = v262;
        v273 = v380(v260, v265);
        v274 = v417;
        v465 = v417;
        v466 = v427;
        v467 = v426;
        v468 = v425;
        v469 = v420;
        v470 = v428;
        v471 = v424;
        v472 = v423;
        v473 = v422;
        v474 = v419;
        v402 = v273;
        v475 = v273;
        v399 = v275;
        v476 = v275;
        v276 = v384;
        (*v368)(v384, v416, v261);
        if ((*v367)(v276, 1, v272) == 1)
        {
          (*v404)(v276, v261);
          v277 = 0;
          memset(v464, 0, 32);
          v462 = 0u;
          v463 = 0u;
          v278 = v421;
        }

        else
        {
          v279 = v361;
          (*v347)(v361, v276, v272);
          v280 = *v346;
          v281 = v362;
          (*v346)(v362, v279, v272);
          *(&v463 + 1) = v272;
          v278 = v421;
          v464[0] = swift_getAssociatedConformanceWitness();
          v282 = __swift_allocate_boxed_opaque_existential_0(&v462);
          v280(v282, v281, v272);
          (v355)(&v437, v264, v278);
          *&v464[1] = v437;
          LOBYTE(v464[3]) = (*(v278 + 40))(v264, v278) & 1;
          v277 = (*(v278 + 48))(v264, v278);
          v283 = *v343;
          (*v343)(v281, v272);
          v284 = v279;
          v228 = v412;
          v283(v284, v272);
          v274 = v417;
        }

        v285 = v411;
        v464[4] = v277;
        v286 = (v378)(v264, v278);
        *&v451 = v274;
        *(&v451 + 1) = v427;
        v452 = v426;
        v453 = v425;
        v454 = v420;
        v455 = v428;
        v456 = v424;
        v457 = v423;
        v458 = v422;
        v459 = v419;
        v401 = v286;
        v460 = v286;
        v398 = v287;
        v461 = v287;
        v288 = v385;
        (*v366)(v385, v285, v228);
        v289 = v388;
        if ((*v365)(v288, 1, v388) == 1)
        {
          (*v403)(v288, v228);
          v290 = 0;
          memset(v450, 0, 32);
          v448 = 0u;
          v449 = 0u;
          v291 = v414;
        }

        else
        {
          v292 = v363;
          (*v342)(v363, v288, v289);
          v293 = *v341;
          v294 = v364;
          (*v341)(v364, v292, v289);
          *(&v449 + 1) = v289;
          v291 = v414;
          v450[0] = swift_getAssociatedConformanceWitness();
          v295 = __swift_allocate_boxed_opaque_existential_0(&v448);
          v293(v295, v294, v289);
          v353(v433, v263, v291);
          *&v450[1] = v433[0];
          LOBYTE(v450[3]) = (*(v291 + 40))(v263, v291) & 1;
          v290 = (*(v291 + 48))(v263, v291);
          v296 = *v338;
          (*v338)(v294, v289);
          v297 = v292;
          v285 = v411;
          v296(v297, v289);
        }

        v450[4] = v290;
        v298 = v376(v263, v291);
        v299 = v417;
        *&v437 = v417;
        *(&v437 + 1) = v427;
        v438 = v426;
        v439 = v425;
        v440 = v420;
        v441 = v428;
        v442 = v424;
        v443 = v423;
        v444 = v422;
        v445 = v419;
        v400 = v298;
        v446 = v298;
        v397 = v300;
        v447 = v300;
        v301 = v417;
        v302 = type metadata accessor for AttributedString.SingleAttributeTransformer();
        v420 = *(v302 - 8);
        v303 = *(v420 + 16);
        v419 = v302;
        v303(v433, &v465);
        v304 = type metadata accessor for AttributedString.SingleAttributeTransformer();
        v407 = *(v304 - 8);
        v305 = *(v407 + 16);
        v406 = v304;
        v305(v432, &v451);
        v306 = type metadata accessor for AttributedString.SingleAttributeTransformer();
        v307 = *(v306 - 8);
        v308 = v306;
        (*(v307 + 16))(v430, &v437);
        v389(v433, v432, v430);
        v309 = v301 >> 10;
        if (v301 >> 10 != *&v433[0] >> 10 || (v434 ^ v428) > 0x3FF || (v402 != v435 || v399 != v436) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v483[0] = v299;
          v483[1] = v427;
          v483[2] = v426;
          v483[3] = v425;
          v483[4] = v428;
          v483[5] = v424;
          v483[6] = v423;
          v483[7] = v422;
          AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(v429, v483, v429, v418);
        }

        v310 = v408;
        if (v309 != v432[0] >> 10 || (v432[5] ^ v428) > 0x3FF || (v401 != v432[10] || v398 != v432[11]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v482[0] = v301;
          v482[1] = v427;
          v482[2] = v426;
          v482[3] = v425;
          v482[4] = v428;
          v482[5] = v424;
          v482[6] = v423;
          v482[7] = v422;
          AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(v413, v482, v413, v421);
        }

        if (v309 != v430[0] >> 10 || (v430[5] ^ v428) > 0x3FF || ((v236 = v431, v400 != v430[10]) || v397 != v431) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v481[0] = v301;
          v481[1] = v427;
          v481[2] = v426;
          v481[3] = v425;
          v481[4] = v428;
          v481[5] = v424;
          v481[6] = v423;
          v481[7] = v422;
          AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(v415, v481, v415, v414);
        }

        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(&v465, v433, &v480, v236, v429, v418);
        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(&v451, v432, &v480, v237, v413, v421);
        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(&v437, v430, &v480, v238, v415, v414);
        (*v403)(v285, v412);
        (*v404)(v416, v410);
        (*v405)(v310, v409);
        v239 = *(v307 + 8);
        v239(v430, v308);
        v240 = *(v407 + 8);
        v241 = v406;
        v240(v432, v406);
        v242 = *(v420 + 8);
        v243 = v419;
        v242(v433, v419);
        v244 = v308;
        v232 = v409;
        v239(&v437, v244);
        v245 = v241;
        v233 = v408;
        v240(&v451, v245);
        v229 = v411;
        v246 = v243;
        v231 = v416;
        v242(&v465, v246);
        v230 = v410;
        v228 = v412;
        v223 = v391;
        AttributedString.Runs.AttributesSlice3.Iterator.next()(v394, v391);
        v224 = TupleTypeMetadata;
      }

      while ((v375)(v223, 1, TupleTypeMetadata) != 1);
    }

    (*(v336 + 8))(v395, v394);

    *v337 = v480;
  }

  return result;
}

uint64_t AttributedString.transformingAttributes<A, B, C, D>(_:_:_:_:_:)@<X0>(void (*a1)(void, void, void, void)@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, void *a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v327 = a1;
  v328 = a2;
  v307 = a5;
  v368 = a11;
  v364 = a7;
  v363 = a6;
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  v311 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v360 = &v306 - v14;
  swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  v310 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v359 = &v306 - v16;
  swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Optional();
  v309 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v350 = &v306 - v18;
  v351 = v19;
  v365 = a3;
  v20 = v19;
  v352 = v15;
  v362 = a10;
  swift_getAssociatedTypeWitness();
  v354 = type metadata accessor for Optional();
  v331 = *(v354 - 8);
  MEMORY[0x1EEE9AC00](v354);
  v353 = &v306 - v21;
  v386 = v22;
  v387 = v20;
  v388 = v15;
  v355 = v13;
  v389 = v13;
  v390 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v23 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v329 = &v306 - v24;
  v386 = a3;
  v387 = a4;
  v25 = v363;
  v26 = v364;
  v388 = v363;
  v389 = v364;
  v390 = a8;
  v391 = a9;
  v392 = a10;
  v27 = v368;
  v393 = v368;
  v343 = type metadata accessor for AttributedString.Runs.AttributesSlice4();
  v337 = *(v343 - 8);
  MEMORY[0x1EEE9AC00](v343);
  v336 = &v306 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v348 = &v306 - v30;
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v349 = *(v371 - 8);
  MEMORY[0x1EEE9AC00](v371);
  v32 = &v306 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v306 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v346 = &v306 - v37;
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v373);
  v370 = &v306 - v38;
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v345 = *(v358 - 8);
  MEMORY[0x1EEE9AC00](v358);
  v357 = &v306 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v344 = &v306 - v41;
  v338 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v338);
  v342 = &v306 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v347 = &v306 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v341 = &v306 - v46;
  v386 = v365;
  v361 = a9;
  v356 = a4;
  v387 = a4;
  v388 = v25;
  v389 = v26;
  v367 = a8;
  v390 = a8;
  v391 = a9;
  v392 = a10;
  v393 = v27;
  v332 = type metadata accessor for AttributedString.Runs.AttributesSlice4.Iterator();
  v47 = *(v332 - 8);
  MEMORY[0x1EEE9AC00](v332);
  v333 = &v306 - v48;
  v399 = *v374;
  v49 = v399;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = &unk_1EA7B2000;
  v52 = v49;
  v53 = &static AttributedString.Guts._nextVersion;
  v335 = v32;
  v339 = v35;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_11;
  }

  v54 = *(v49 + 40);
  v419 = *(v49 + 24);
  v420 = v54;
  v421 = *(v49 + 56);
  v55 = *(v49 + 72);
  v56 = *(v49 + 80);
  v57 = *(v49 + 88);
  v58 = *(v49 + 96);
  type metadata accessor for AttributedString.Guts();
  v59 = swift_allocObject();
  v60 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v419, &v386);
  v61 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v61);
  if (v55)
  {
    v62 = v57 == 0;
  }

  else
  {
    v62 = 1;
  }

  v63 = v62;
  if (v63 != v60)
  {
    goto LABEL_105;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_106;
  }

  while (1)
  {
    add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v65 = v420;
    *(v59 + 24) = v419;
    *(v59 + 16) = add_explicit;
    *(v59 + 40) = v65;
    *(v59 + 56) = v421;
    *(v59 + 72) = v55;
    *(v59 + 80) = v56;
    v53 = &static AttributedString.Guts._nextVersion;
    *(v59 + 88) = v57;
    *(v59 + 96) = v58;
    v52 = v59;
    *(v59 + 104) = MEMORY[0x1E69E7CC0];

    v399 = v59;
LABEL_11:
    if (v51[147] != -1)
    {
LABEL_103:
      swift_once();
    }

    v66 = atomic_fetch_add_explicit(v53, 1uLL, memory_order_relaxed);
    v326 = v52;
    v52[2] = v66;
    v67 = *(v49 + 40);
    v416 = *(v49 + 24);
    v417 = v67;
    v418 = *(v49 + 56);
    v58 = BigString.startIndex.getter();
    v55 = v68;
    v56 = v69;
    v57 = v70;
    v71 = BigString.endIndex.getter();
    v59 = v347;
    v51 = v358;
    if (v71 >> 10 >= v58 >> 10)
    {
      break;
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    swift_once();
  }

  v306 = v47;
  v386 = v58;
  v387 = v55;
  v388 = v56;
  v389 = v57;
  v390 = v71;
  v391 = v72;
  v392 = v73;
  v393 = v74;
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

  RangeSet.init(_:)();
  v334 = v49;
  *v59 = v49;
  RangeSet.init()();
  v75 = v346;
  RangeSet.ranges.getter();
  v76 = v349;
  v77 = v370;
  v78 = v371;
  (*(v349 + 16))(v370, v75, v371);
  v79 = *(v373 + 36);
  v80 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of Collection.startIndex.getter();
  v81 = *(v76 + 8);
  v349 = v76 + 8;
  v340 = v81;
  v81(v75, v78);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v77 + v79) != v386)
  {
    v369 = v80;
    v366 = v79;
    do
    {
      v90 = dispatch thunk of Collection.subscript.read();
      v92 = v91[5];
      *&v374 = v91[4];
      v373 = v92;
      v372 = v91[6];
      v90(&v386, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v93 = v334;
      v94 = *(v334 + 40);
      v413 = *(v334 + 24);
      v414 = v94;
      v415 = *(v334 + 56);
      swift_unknownObjectRetain();
      v95 = BigString.UnicodeScalarView.index(roundingDown:)();
      v97 = v96;
      v99 = v98;
      v101 = v100;
      swift_unknownObjectRelease();
      v102 = *(v93 + 40);
      v410 = *(v93 + 24);
      v411 = v102;
      v412 = *(v93 + 56);
      swift_unknownObjectRetain();
      v103 = BigString.UnicodeScalarView.index(roundingDown:)();
      v105 = v104;
      v107 = v106;
      v109 = v108;
      v78 = v371;
      swift_unknownObjectRelease();
      v386 = v95;
      v387 = v97;
      v388 = v99;
      v389 = v101;
      v390 = v103;
      v391 = v105;
      v392 = v107;
      v393 = v109;
      if ((v103 ^ v95) >= 0x400)
      {
        v110 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v110(v384, 0);
      }

      v77 = v370;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v77 + v366) != v386);
  }

  outlined destroy of TermOfAddress?(v77, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v82 = v338;
  v83 = *(v338 + 24);
  v84 = v347;
  (*(v345 + 16))(&v347[v83], v357, v358);
  v85 = v346;
  RangeSet.ranges.getter();
  v86 = RangeSet.Ranges.count.getter();
  v87 = v340;
  v340(v85, v78);
  v88 = *(v82 + 28);
  LODWORD(v338) = v86 > 1;
  *(v84 + v88) = v338;
  v89 = v339;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v384[0] == v386)
  {
    v87(v89, v78);
LABEL_22:
    v117 = v334;
    v118 = *(v334 + 72);
    v119 = v367;
    if (v118)
    {
      v366 = *(v118 + 18);
    }

    else
    {
      v366 = 0;
    }

    *&v374 = *(v334 + 96);
    v120 = *(v334 + 40);
    v407 = *(v334 + 24);
    v408 = v120;
    v409 = *(v334 + 56);
    v121 = BigString.startIndex.getter();
    v123 = v122;
    v373 = v124;
    v372 = v125;
    v126 = *(v117 + 72);
    v370 = *(v117 + 96);
    if (v126)
    {
      v369 = *(v126 + 18);
      v127 = *(v345 + 8);
      swift_unknownObjectRetain();
      v128 = v358;
      v127(v344, v358);
      v127(v357, v128);
      swift_unknownObjectRelease();
    }

    else
    {
      v129 = *(v345 + 8);
      v130 = v358;
      v129(v344, v358);
      v129(v357, v130);
      v369 = 0;
    }

    v131 = *(v117 + 40);
    v404 = *(v117 + 24);
    v405 = v131;
    v406 = *(v117 + 56);
    v132 = BigString.startIndex.getter();
    v136 = 0;
    v137 = 0;
    v138 = 0;
    v139 = 0;
    v140 = 0;
    v141 = -1;
    v142 = v121;
    v143 = v123;
    v144 = v373;
    v145 = v373;
    v146 = v372;
    v147 = v372;
    v148 = v132;
    v149 = v133;
    v150 = v134;
    v151 = v135;
    v152 = -1;
    v153 = v366;
    v154 = v374;
    goto LABEL_29;
  }

  v111 = dispatch thunk of Collection.subscript.read();
  v113 = *v112;
  v114 = v112[1];
  v324 = v112[2];
  v325 = v114;
  v115 = v112[3];
  v322 = v113;
  v323 = v115;
  v111(&v386, 0);
  v87(v89, v78);
  v116 = v335;
  RangeSet.ranges.getter();
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v87(v116, v78);
    goto LABEL_22;
  }

  v316 = v83;
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v285 = dispatch thunk of Collection.subscript.read();
  v148 = v286[4];
  v287 = v286[5];
  v288 = v286[6];
  v289 = v286[7];
  v285(&v386, 0);
  v87(v116, v78);
  v142 = v322;
  v290 = v334;
  AttributedString.Guts.findRun(at:)(v322, v323, &v386);
  *&v374 = v386;
  v291 = v387;
  v317 = v389;
  v318 = v388;
  v339 = v391;
  v335 = v392;
  v373 = v393;
  v372 = v394;
  v292 = *(v290 + 40);
  v407 = *(v290 + 24);
  v408 = v292;
  v409 = *(v290 + 56);
  v293 = BigString.endIndex.getter();
  v320 = v288;
  v321 = v287;
  v319 = v289;
  if ((v293 ^ v148) > 0x3FF)
  {
    AttributedString.Guts.findRun(at:)(v148, v289, &v386);
    v369 = v387;
    v370 = v386;
    v140 = v388;
    v366 = v391;
    v314 = v392;
    v315 = v389;
    v312 = v394;
    v313 = v393;
    v302 = v346;
    v303 = v358;
    RangeSet.ranges.getter();
    v304 = v371;
    v152 = RangeSet.Ranges.count.getter();
    v305 = *(v345 + 8);
    v305(v344, v303);
    v340(v302, v304);
    v153 = v291;
    v142 = v322;
    v305(v357, v303);
    v133 = v314;
    v139 = v315;
    v154 = v374;
    v135 = v312;
    v134 = v313;
    v84 = v347;
    v132 = v366;
    v119 = v367;
    v141 = 0;
    v138 = v338;
    v145 = v324;
    v143 = v325;
    v147 = v323;
    v121 = v339;
    v123 = v335;
    v144 = v373;
    v146 = v372;
    v150 = v320;
    v149 = v321;
    v137 = v318;
    v151 = v319;
    v136 = v317;
  }

  else
  {
    v366 = v291;
    v294 = *(v290 + 72);
    if (v294)
    {
      v295 = *(v290 + 80);
    }

    else
    {
      v295 = 0;
    }

    v315 = v295;
    v296 = *(v290 + 96);
    v297 = swift_unknownObjectRetain();
    v370 = v296;
    v369 = specialized Rope._endPath.getter(v297);
    if (v294)
    {
      swift_unknownObjectRelease();
    }

    v298 = v346;
    v84 = v347;
    v299 = v358;
    RangeSet.ranges.getter();
    v300 = v371;
    v152 = RangeSet.Ranges.count.getter();
    v301 = *(v345 + 8);
    v301(v344, v299);
    v340(v298, v300);
    v301(v357, v299);
    v141 = 0;
    v140 = 0;
    v132 = v148;
    v150 = v320;
    v149 = v321;
    v133 = v321;
    v134 = v320;
    v137 = v318;
    v151 = v319;
    v135 = v319;
    v153 = v366;
    v119 = v367;
    v138 = v338;
    v154 = v374;
    v145 = v324;
    v143 = v325;
    v147 = v323;
    v121 = v339;
    v123 = v335;
    v144 = v373;
    v146 = v372;
    v136 = v317;
    v139 = v315;
  }

LABEL_29:
  *(v84 + 8) = v136;
  *(v84 + 16) = v154;
  *(v84 + 24) = v153;
  *(v84 + 32) = v137;
  *(v84 + 40) = v121;
  *(v84 + 48) = v123;
  *(v84 + 56) = v144;
  *(v84 + 64) = v146;
  *(v84 + 72) = v142;
  *(v84 + 80) = v143;
  *(v84 + 88) = v145;
  *(v84 + 96) = v147;
  *(v84 + 104) = v141;
  *(v84 + 112) = 0;
  *(v84 + 113) = v138;
  v155 = v369;
  v156 = v370;
  *(v84 + 120) = v139;
  *(v84 + 128) = v156;
  *(v84 + 136) = v155;
  *(v84 + 144) = v140;
  *(v84 + 152) = v132;
  *(v84 + 160) = v133;
  *(v84 + 168) = v134;
  *(v84 + 176) = v135;
  *(v84 + 184) = v148;
  *(v84 + 192) = v149;
  *(v84 + 200) = v150;
  *(v84 + 208) = v151;
  *(v84 + 216) = v152;
  *(v84 + 224) = 0;
  *(v84 + 225) = v138;
  v157 = v341;
  outlined init with take of AttributedString.Runs(v84, v341);
  v158 = v157;
  v159 = v342;
  outlined init with copy of AttributedString.Runs(v158, v342);
  outlined init with copy of AttributedString.Runs(v159, v348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v160 = swift_allocObject();
  *(v160 + 16) = xmmword_18121D6C0;
  v161 = v365;
  v324 = *(v119 + 24);
  v325 = v119 + 24;
  *(v160 + 32) = v324(v365, v119);
  *(v160 + 40) = v162;
  v163 = v361;
  v164 = v356;
  v322 = *(v361 + 24);
  v323 = v361 + 24;
  *(v160 + 48) = v322(v356, v361);
  *(v160 + 56) = v165;
  v166 = v362;
  v167 = v363;
  v320 = *(v362 + 24);
  v321 = (v362 + 24);
  *(v160 + 64) = v320(v363, v362);
  *(v160 + 72) = v168;
  v169 = v368;
  v170 = v364;
  v318 = *(v368 + 24);
  v319 = v368 + 24;
  *(v160 + 80) = v318(v364, v368);
  *(v160 + 88) = v171;
  *(v348 + *(v343 + 84)) = v160;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
  v172 = swift_allocObject();
  v173 = *(v367 + 32);
  v373 = v172 + 32;
  v173(v161);
  (*(v163 + 32))(v164, v163);
  (*(v166 + 32))(v167, v166);
  v174 = *(v169 + 32);
  v372 = v172;
  v174(v170, v169);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
  v175 = static _SetStorage.allocate(capacity:)();
  v176 = 0;
  v49 = v175 + 56;
  while (2)
  {
    v179 = (v373 + 16 * v176);
    v180 = *v179;
    v53 = v179[1];
    Hasher.init(_seed:)();
    *&v374 = v176;
    if (v53 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      if (v53)
      {
        MEMORY[0x1865CD060](1);
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x1865CD060](0);
      }
    }

    v52 = &v386;
    v181 = Hasher._finalize()();
    v47 = ~(-1 << *(v175 + 32));
    v182 = v181 & v47;
    v183 = (v181 & v47) >> 6;
    v184 = *(v49 + 8 * v183);
    v185 = 1 << (v181 & v47);
    if ((v185 & v184) == 0)
    {
LABEL_57:
      *(v49 + 8 * v183) = v184 | v185;
      v192 = (*(v175 + 48) + 16 * v182);
      *v192 = v180;
      v192[1] = v53;
      v193 = *(v175 + 16);
      v194 = __OFADD__(v193, 1);
      v195 = v193 + 1;
      if (!v194)
      {
        *(v175 + 16) = v195;
        goto LABEL_31;
      }

      __break(1u);
      goto LABEL_103;
    }

    while (1)
    {
      v186 = (*(v175 + 48) + 16 * v182);
      v52 = *v186;
      v187 = v186[1];
      if (v187 == 1)
      {
        if (v53 == 1)
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(*v186, 1);
          v177 = v52;
          v178 = 1;
          goto LABEL_30;
        }

LABEL_42:
        outlined copy of AttributedString.AttributeRunBoundaries?(*v186, v186[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v180, v53);
        outlined consume of AttributedString.AttributeRunBoundaries?(v52, v187);
        v188 = v180;
        v189 = v53;
LABEL_43:
        outlined consume of AttributedString.AttributeRunBoundaries?(v188, v189);
        goto LABEL_44;
      }

      if (v53 == 1)
      {
        goto LABEL_42;
      }

      if (!v187)
      {
        break;
      }

      if (!v53)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v186, v186[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v180, 0);
        outlined copy of AttributedString.AttributeRunBoundaries?(v52, v187);

        v188 = v52;
        v189 = v187;
        goto LABEL_43;
      }

      if (v52 == v180 && v187 == v53)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(v180, v53);
        outlined copy of AttributedString.AttributeRunBoundaries?(v180, v53);

LABEL_61:
        v177 = v180;
        v178 = v53;
        goto LABEL_30;
      }

      v191 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of AttributedString.AttributeRunBoundaries?(v52, v187);
      outlined copy of AttributedString.AttributeRunBoundaries?(v180, v53);
      outlined copy of AttributedString.AttributeRunBoundaries?(v52, v187);

      if (v191)
      {
        outlined consume of AttributedString.AttributeRunBoundaries?(v180, v53);
        v180 = v52;
        v53 = v187;
        goto LABEL_61;
      }

      outlined consume of AttributedString.AttributeRunBoundaries?(v52, v187);
LABEL_44:
      v182 = (v182 + 1) & v47;
      v183 = v182 >> 6;
      v184 = *(v49 + 8 * (v182 >> 6));
      v185 = 1 << v182;
      if ((v184 & (1 << v182)) == 0)
      {
        goto LABEL_57;
      }
    }

    outlined copy of AttributedString.AttributeRunBoundaries?(*v186, 0);
    if (v53)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(v180, v53);

      v188 = v52;
      v189 = 0;
      goto LABEL_43;
    }

    swift_bridgeObjectRelease_n();
    v177 = v52;
    v178 = 0;
LABEL_30:
    outlined consume of AttributedString.AttributeRunBoundaries?(v177, v178);
LABEL_31:
    v176 = v374 + 1;
    if (v374 != 3)
    {
      continue;
    }

    break;
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  outlined destroy of AttributedString.Runs(v342);
  outlined destroy of AttributedString.Runs(v341);
  v196 = v343;
  v197 = v348;
  *(v348 + *(v343 + 88)) = v175;
  v199 = v336;
  v198 = v337;
  v200 = *(v337 + 16);
  v200(v336, v197, v196);
  v201 = v333;
  result = (v200)(v333, v199, v196);
  v203 = *(v199 + 12);
  if (v203 == 2)
  {
    __break(1u);
  }

  else
  {
    v204 = *(v199 + 11);
    v374 = *(v199 + 72);
    v205 = *(v198 + 8);
    v205(v197, v196);
    v206 = *(*v199 + 16);
    v205(v199, v196);
    v207 = v332;
    v208 = &v201[*(v332 + 84)];
    *v208 = v374;
    *(v208 + 2) = v204;
    *(v208 + 3) = v203;
    *(v208 + 4) = v206;
    v209 = v329;
    AttributedString.Runs.AttributesSlice4.Iterator.next()(v207, v329);
    v210 = TupleTypeMetadata;
    v211 = *(TupleTypeMetadata - 8);
    v212 = *(v211 + 48);
    v316 = v211 + 48;
    v317 = v212;
    v213 = v212(v209, 1, TupleTypeMetadata);
    v214 = v365;
    v215 = v354;
    v216 = v355;
    v217 = v353;
    if (v213 != 1)
    {
      v218 = *(v331 + 32);
      v314 = (v309 + 4);
      v315 = v218;
      v313 = (v310 + 4);
      v219 = v311++;
      v312 = (v219 + 4);
      ++v310;
      v331 += 32;
      v308 = (v331 - 24);
      ++v309;
      do
      {
        v230 = v210[12];
        v231 = v210[20];
        v348 = v210[16];
        v349 = v231;
        v232 = (v209 + v210[24]);
        v233 = *v232;
        v234 = v359;
        v366 = v232[1];
        v235 = v232[3];
        v372 = v232[2];
        v373 = v235;
        v236 = v232[4];
        v237 = v232[5];
        v238 = v232[6];
        v371 = v232[7];
        v240 = v232[8];
        v239 = v232[9];
        v369 = v236;
        v370 = v240;
        v357 = v233;
        v358 = v239;
        v315(v217, v209, v215);
        v241 = v350;
        (*v314)(v350, v209 + v230, v351);
        (*v313)(v234, v209 + v348, v352);
        (*v312)(v360, v209 + v349, v216);
        v242 = v357;
        v243 = v367;
        static AttributedString._AttributeValue.wrapIfPresent<A>(_:for:)(v217, v214, v367, &v398);
        v244 = v324(v214, v243);
        v386 = v242;
        v387 = v366;
        v245 = v372;
        v388 = v372;
        v246 = v373;
        v389 = v373;
        v247 = v369;
        v248 = v370;
        v390 = v369;
        *&v374 = v237;
        v391 = v237;
        v392 = v238;
        v393 = v371;
        v394 = v370;
        v395 = v358;
        v339 = v244;
        v396 = v244;
        v335 = v249;
        v397 = v249;
        v250 = v241;
        v251 = v356;
        v252 = v361;
        static AttributedString._AttributeValue.wrapIfPresent<A>(_:for:)(v250, v356, v361, &v385);
        v253 = v322(v251, v252);
        v384[0] = v242;
        v384[1] = v366;
        v384[2] = v245;
        v384[3] = v246;
        v384[4] = v247;
        v384[5] = v237;
        v254 = v238;
        v384[6] = v238;
        v255 = v371;
        v384[7] = v371;
        v256 = v248;
        v384[8] = v248;
        v257 = v358;
        v384[9] = v358;
        v340 = v253;
        v384[10] = v253;
        v336 = v258;
        v384[11] = v258;
        v260 = v362;
        v259 = v363;
        static AttributedString._AttributeValue.wrapIfPresent<A>(_:for:)(v359, v363, v362, &v383);
        v261 = v320(v259, v260);
        v382[0] = v242;
        v262 = v366;
        v382[1] = v366;
        v263 = v372;
        v382[2] = v372;
        v382[3] = v373;
        v265 = v368;
        v264 = v369;
        v382[4] = v369;
        v382[5] = v374;
        v382[6] = v254;
        v382[7] = v255;
        v382[8] = v256;
        v382[9] = v257;
        v341 = v261;
        v382[10] = v261;
        v337 = v266;
        v382[11] = v266;
        v267 = v364;
        static AttributedString._AttributeValue.wrapIfPresent<A>(_:for:)(v360, v364, v368, &v381);
        v268 = v318(v267, v265);
        v269 = v357;
        v380[0] = v357;
        v380[1] = v262;
        v380[2] = v263;
        v380[3] = v373;
        v380[4] = v264;
        v380[5] = v374;
        v369 = v254;
        v380[6] = v254;
        v380[7] = v255;
        v380[8] = v256;
        v380[9] = v257;
        v342 = v268;
        v380[10] = v268;
        v338 = v270;
        v380[11] = v270;
        v271 = v365;
        v272 = type metadata accessor for AttributedString.SingleAttributeTransformer();
        v358 = *(v272 - 8);
        v273 = *(v358 + 16);
        v347 = v272;
        v273(v379, &v386);
        v274 = v356;
        v275 = type metadata accessor for AttributedString.SingleAttributeTransformer();
        v348 = *(v275 - 8);
        v349 = v275;
        (*(v348 + 16))(v378, v384);
        v276 = type metadata accessor for AttributedString.SingleAttributeTransformer();
        v277 = *(v276 - 8);
        v345 = v276;
        v346 = v277;
        (*(v277 + 2))(v377, v382);
        v278 = type metadata accessor for AttributedString.SingleAttributeTransformer();
        v343 = *(v278 - 8);
        v344 = v278;
        (*(v343 + 16))(v375, v380);
        v327(v379, v378, v377, v375);
        v279 = v269;
        v280 = v269 >> 10;
        if (v269 >> 10 != v379[0] >> 10 || (v379[5] ^ v374) > 0x3FF || (v339 != v379[10] || v335 != v379[11]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v403[0] = v269;
          v403[1] = v262;
          v403[2] = v372;
          v403[3] = v373;
          v403[4] = v374;
          v403[5] = v369;
          v403[6] = v371;
          v403[7] = v370;
          AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(v271, v403, v271, v367);
        }

        v281 = v361;
        if (v280 != v378[0] >> 10 || (v378[5] ^ v374) > 0x3FF || (v340 != v378[10] || v336 != v378[11]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v402[0] = v269;
          v402[1] = v262;
          v402[2] = v372;
          v402[3] = v373;
          v402[4] = v374;
          v402[5] = v369;
          v402[6] = v371;
          v402[7] = v370;
          AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(v274, v402, v274, v281);
        }

        v282 = v362;
        v283 = v363;
        if (v280 != v377[0] >> 10 || (v377[5] ^ v374) > 0x3FF || (v341 != v377[10] || v337 != v377[11]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v401[0] = v279;
          v401[1] = v262;
          v401[2] = v372;
          v401[3] = v373;
          v401[4] = v374;
          v401[5] = v369;
          v401[6] = v371;
          v401[7] = v370;
          AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(v283, v401, v283, v282);
        }

        v62 = v280 == v375[0] >> 10;
        v284 = v364;
        if (!v62 || (v375[5] ^ v374) > 0x3FF || ((v220 = v376, v342 != v375[10]) || v338 != v376) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v400[0] = v279;
          v400[1] = v262;
          v400[2] = v372;
          v400[3] = v373;
          v400[4] = v374;
          v400[5] = v369;
          v400[6] = v371;
          v400[7] = v370;
          AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(v284, v400, v284, v368);
        }

        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(&v386, v379, &v399, v220, v365, v367);
        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(v384, v378, &v399, v221, v274, v281);
        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(v382, v377, &v399, v222, v283, v282);
        AttributedString.applyChanges<A>(withOriginal:andChanged:to:key:)(v380, v375, &v399, v223, v284, v368);
        (*v311)(v360, v355);
        (*v310)(v359, v352);
        (*v309)(v350, v351);
        (*v308)(v353, v354);
        v224 = v344;
        *&v374 = *(v343 + 8);
        (v374)(v375, v344);
        v225 = v345;
        v373 = *(v346 + 1);
        (v373)(v377, v345);
        v226 = v349;
        v372 = *(v348 + 8);
        (v372)(v378, v349);
        v227 = *(v358 + 8);
        v228 = v347;
        v227(v379, v347);
        (v374)(v380, v224);
        (v373)(v382, v225);
        (v372)(v384, v226);
        v227(&v386, v228);
        v209 = v329;
        AttributedString.Runs.AttributesSlice4.Iterator.next()(v332, v329);
        v210 = TupleTypeMetadata;
        v229 = v317(v209, 1, TupleTypeMetadata);
        v217 = v353;
        v215 = v354;
        v216 = v355;
        v214 = v365;
      }

      while (v229 != 1);
    }

    (*(v306 + 8))(v333, v332, v215);

    *v307 = v399;
  }

  return result;
}