void *protocol witness for BidirectionalCollection.index(before:) in conformance PKStrokePath@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    result = [*v2 count];
    if ((v4 & 0x8000000000000000) == 0 && v4 < result)
    {
      *a2 = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance PKStrokePath(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = [*v1 count];
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

id protocol witness for Collection.endIndex.getter in conformance PKStrokePath@<X0>(void *a1@<X8>)
{
  result = [*v1 count];
  *a1 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance PKStrokePath(void *a1, void *a2))(id *a1)
{
  v4 = [*v2 objectAtIndexedSubscript_];
  if (v4)
  {
    *a1 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.subscript.getter in conformance PKStrokePath@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *v2;
  result = [*v2 count];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < v4)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  a2[1] = v4;
  a2[2] = v7;
  *a2 = v5;

  return v7;
}

unint64_t protocol witness for Collection.indices.getter in conformance PKStrokePath@<X0>(void *a1@<X8>)
{
  result = [*v1 count];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = result;
  }

  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance PKStrokePath@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = [*v3 count];
    if ((v5 & 0x8000000000000000) == 0 && result >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

id protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance PKStrokePath@<X0>(int64_t *a1@<X0>, uint64_t a2@<X1>, int64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

id protocol witness for RandomAccessCollection.distance(from:to:) in conformance PKStrokePath(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  result = [*v2 count];
  if (v3 < 0 || result < v3)
  {
    __break(1u);
  }

  else
  {
    result = [v5 count];
    if ((v4 & 0x8000000000000000) == 0 && result >= v4)
    {
      return (v4 - v3);
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance PKStrokePath(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance PKStrokePath(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

id protocol witness for Collection.index(after:) in conformance PKStrokePath@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = [*v2 count];
  if (v4 < 0 || v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 + 1;
  }

  return result;
}

id protocol witness for Collection.formIndex(after:) in conformance PKStrokePath(uint64_t *a1)
{
  v3 = *v1;
  v4 = *a1;
  result = [v3 count];
  if (v4 < 0 || v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4 + 1;
  }

  return result;
}

int64_t protocol witness for Collection.count.getter in conformance PKStrokePath()
{
  v1 = *v0;
  v2 = [v1 count];
  result = [v1 count];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = [v1 count];
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance PKStrokePath()
{
  v1 = *v0;
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v2;
}

id static PKStrokePath._forceBridgeFromObjectiveC(_:result:)(void *a1, id *a2)
{
  *a2 = a1;

  return a1;
}

uint64_t static PKStrokePath._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, id *a2)
{
  *a2 = a1;
  v4 = a1;
  return 1;
}

unint64_t lazy protocol witness table accessor for type PKStrokePath and conformance PKStrokePath()
{
  result = lazy protocol witness table cache variable for type PKStrokePath and conformance PKStrokePath;
  if (!lazy protocol witness table cache variable for type PKStrokePath and conformance PKStrokePath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokePath and conformance PKStrokePath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokePath and conformance PKStrokePath;
  if (!lazy protocol witness table cache variable for type PKStrokePath and conformance PKStrokePath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokePath and conformance PKStrokePath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokePath and conformance PKStrokePath;
  if (!lazy protocol witness table cache variable for type PKStrokePath and conformance PKStrokePath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokePath and conformance PKStrokePath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokePath and conformance PKStrokePath;
  if (!lazy protocol witness table cache variable for type PKStrokePath and conformance PKStrokePath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokePath and conformance PKStrokePath);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<PKStrokePath> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy9PencilKit12PKStrokePathVGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance PKStrokePath@<X0>(id a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  if (!a1)
  {
    a1 = [objc_allocWithZone(PKStrokePath) init];
    v2 = 0;
  }

  *a2 = a1;

  return v2;
}

uint64_t getEnumTagSinglePayload for PKStrokePath.InterpolatedSlice(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for PKStrokePath.InterpolatedSlice(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PKStrokePath.InterpolatedSlice.Stride(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PKStrokePath.InterpolatedSlice.Stride(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(void *a1)
{
  v2 = [a1 count];
  result = [a1 count];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = [a1 count];
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      if (v2)
      {
        v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9PencilKit13PKStrokePointV_Tt1g5(v2, 0);
        v5 = specialized Sequence._copySequenceContents(initializing:)(v6, (v4 + 4), v2, a1);

        if (v5 == v2)
        {
          return v4;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  if (!a2)
  {
    a3 = 0;
    goto LABEL_31;
  }

  if (!a3)
  {
LABEL_31:
    *a1 = v5;
    *(a1 + 8) = v4;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_34;
  }

  v10 = a2;
  v22 = a1;
  v23 = *(v3 + 8);
  v11 = 0;
  v12 = v4;
  v21 = a3;
  v13 = a3 - 1;
  do
  {
    if (v8 < v9)
    {
      a3 = v11;
LABEL_30:
      a1 = v22;
      v4 = v23;
      goto LABEL_31;
    }

    v14 = v5;
    v15 = [v14 interpolatedPointAt_];
    v16 = v15;
    if (v8 <= v9 + 0.001)
    {
      if (!v15)
      {
        goto LABEL_35;
      }

      v9 = v9 + 1.0;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_35;
      }

      if (!v6)
      {
        [v14 parametricValue:v9 offsetByDistance:v12];
        goto LABEL_14;
      }

      if (v6 == 1)
      {
        [v14 parametricValue:v9 offsetByTime:v12];
LABEL_14:
        v9 = v17;
        goto LABEL_15;
      }

      v18 = [v14 count];
      if (([v14 count] & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v19 = [v14 count];
      if (v18 < 0 || v19 < v18)
      {
        goto LABEL_33;
      }

      if (v9 + v12 >= (v18 - 1))
      {
        v9 = (v18 - 1);
      }

      else
      {
        v9 = v9 + v12;
      }

      v10 = a2;
      if (v9 < 0.0)
      {
        v9 = 0.0;
      }
    }

LABEL_15:
    *(v10 + 8 * v11) = v16;
    if (v13 == v11)
    {
      a3 = v21;
      goto LABEL_30;
    }

    ++v11;
  }

  while (!__OFADD__(v11, 1));
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3, id a4)
{
  if (!a2)
  {
LABEL_12:
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_15:
    *a1 = a4;
    a1[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = a3;
    v9 = a3 - 1;
    while (1)
    {
      if (v7 == [a4 count])
      {
        a3 = v7;
        goto LABEL_15;
      }

      v10 = [a4 objectAtIndexedSubscript_];
      if (!v10)
      {
        goto LABEL_18;
      }

      v11 = v10;
      if (v7 >= [a4 count])
      {
        break;
      }

      *(a2 + 8 * v7) = v11;
      if (v9 == v7)
      {
        a3 = v8;
        goto LABEL_15;
      }

      if (__OFADD__(++v7, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_18:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1C7D23C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void std::vector<CGPoint>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

uint64_t std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<ClipperLib::IntPoint>>::__emplace_back_slow_path<std::vector<ClipperLib::IntPoint> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<ClipperLib::IntPoint>>::__construct_one_at_end[abi:ne200100]<std::vector<ClipperLib::IntPoint> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_1C7D24308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void **a25)
{
  a25 = &a22;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&a25);

  _Unwind_Resume(a1);
}

void sub_1C7D24EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void **a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  a16 = &a19;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&a16);

  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E82D5FD8, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::vector<ClipperLib::IntPoint>>::__construct_one_at_end[abi:ne200100]<std::vector<ClipperLib::IntPoint> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<ClipperLib::IntPoint>::__init_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<ClipperLib::IntPoint>>::__emplace_back_slow_path<std::vector<ClipperLib::IntPoint> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<ClipperLib::IntPoint>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<ClipperLib::IntPoint>::__init_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<ClipperLib::IntPoint>>::~__split_buffer(&v14);
  return v8;
}

void sub_1C7D25378(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<ClipperLib::IntPoint>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ClipperLib::IntPoint>::__init_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ClipperLib::IntPoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C7D253EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ClipperLib::IntPoint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(a1, a2);
  }

  std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<ClipperLib::IntPoint>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void ClipperLib::Clipper::~Clipper(ClipperLib::Clipper *this)
{
  v2 = off_1F47698C0;
  *(*(v3 - 3) + this) = v2;
  std::__list_imp<long long>::clear(this + 11);
  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    *(this + 2) = v6;
    operator delete(v6);
  }
}

{
  *this = &off_1F4769838;
  v2 = (this + 144);
  *(this + 18) = &unk_1F4769880;
  std::__list_imp<long long>::clear(this + 11);
  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }

  ClipperLib::ClipperBase::~ClipperBase(v2);
}

{
  *this = &off_1F4769838;
  v2 = (this + 144);
  *(this + 18) = &unk_1F4769880;
  std::__list_imp<long long>::clear(this + 11);
  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }

  ClipperLib::ClipperBase::~ClipperBase(v2);

  JUMPOUT(0x1CCA6ECB0);
}

void *std::__list_imp<long long>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void sub_1C7D25A1C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1C7D25CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_1C7D263AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v21 = v17;

  _Unwind_Resume(a1);
}

void sub_1C7D27654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a29, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7D28CF4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t drawing::Color::Color(uint64_t this)
{
  *this = &unk_1F4768408;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_1F4768408;
  *(this + 24) = 0;
  return this;
}

void drawing::Color::~Color(drawing::Color *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA6ECB0);
}

float drawing::Color::Color(drawing::Color *this, const drawing::Color *a2)
{
  *this = &unk_1F4768408;
  *(this + 6) = 0;
  v2 = *(a2 + 24);
  if ((v2 & 8) != 0)
  {
    result = *(a2 + 5);
    v3 = 8;
    *(this + 24) = 8;
    *(this + 5) = result;
    v2 = *(a2 + 24);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 24) & 4) != 0)
  {
LABEL_5:
    result = *(a2 + 4);
    v3 |= 4u;
    *(this + 24) = v3;
    *(this + 4) = result;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 2) == 0)
  {
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 2);
    *(this + 24) = v3 | 1;
    *(this + 2) = result;
    return result;
  }

  result = *(a2 + 3);
  v3 |= 2u;
  *(this + 24) = v3;
  *(this + 3) = result;
  if (*(a2 + 24))
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t drawing::Color::operator=(uint64_t a1, const drawing::Color *a2)
{
  if (a1 != a2)
  {
    drawing::Color::Color(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(&v6);
  }

  return a1;
}

float drawing::swap(drawing *this, drawing::Color *a2, drawing::Color *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

float drawing::Color::Color(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4768408;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 12) = *(a2 + 12);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_1F4768408;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 12) = *(a2 + 12);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t drawing::Color::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_1F4768408;
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v9 = *(a1 + 24);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 24) = v3;
    *(a1 + 8) = v5;
    v8 = v4;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t drawing::Color::formatText(drawing::Color *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    PB::TextFormatter::format(a2, "alpha", *(this + 2));
    v5 = *(this + 24);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "blue", *(this + 3));
  v5 = *(this + 24);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "green", *(this + 4));
  if ((*(this + 24) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "red", *(this + 5));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t drawing::Color::readFrom(drawing::Color *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        *(this + 24) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
LABEL_36:
          *(a2 + 24) = 1;
          goto LABEL_39;
        }

        *(this + 3) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 4)
      {
        *(this + 24) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_38;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 24) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 5) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 2)
      {
        *(this + 24) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 4) = *(*a2 + v2);
LABEL_38:
        v2 = *(a2 + 1) + 4;
        *(a2 + 1) = v2;
        goto LABEL_39;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_39:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t drawing::Color::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(this + 20));
    v4 = *(v3 + 24);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 12));
      if ((*(v3 + 24) & 1) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 24);
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5);
}

BOOL drawing::Color::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 8) != 0)
  {
    if ((*(a2 + 24) & 8) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 24) & 4) != 0)
  {
    if ((*(a2 + 24) & 4) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    if ((*(a2 + 24) & 2) == 0 || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 1) == 0;
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t drawing::Color::hash_value(drawing::Color *this)
{
  if ((*(this + 24) & 8) == 0)
  {
    v1 = 0;
    if ((*(this + 24) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v3 = 0;
    if ((*(this + 24) & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v8 = *(this + 5);
  v1 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v1 = 0;
  }

  if ((*(this + 24) & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 4);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 24) & 2) != 0)
  {
LABEL_6:
    v4 = *(this + 3);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if (*(this + 24))
    {
      goto LABEL_9;
    }

LABEL_17:
    v7 = 0;
    return v3 ^ v1 ^ v5 ^ v7;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = *(this + 2);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  return v3 ^ v1 ^ v5 ^ v7;
}

Class __getBETextDocumentRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1ED6A4F38)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __BrowserEngineKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E82D64B8;
    v6 = 0;
    qword_1ED6A4F38 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1ED6A4F38)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("BETextDocumentRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1ED6A4F30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BrowserEngineKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED6A4F38 = result;
  return result;
}

void sub_1C7D2BB70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PKSelectionView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C7D2CC88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1C7D30330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v17 = v15;

  _Unwind_Resume(a1);
}

void sub_1C7D30498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v17 = v15;

  _Unwind_Resume(a1);
}

void sub_1C7D30C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1C7D30D30(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C7D31FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1C7D32070(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1C7D323E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 - 96));

  _Unwind_Resume(a1);
}

void sub_1C7D34088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7D36794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7D387E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C7D38A18(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C7D38C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = PKTiledView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C7D390C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1C7D39824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v10;

  _Unwind_Resume(a1);
}

void sub_1C7D3B454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1C7D3B81C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C7D3CCAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a18, 8);
  if (a24)
  {
    a25 = a24;
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__1(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1C7D3E298(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C7D3E4A4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C7D40504(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 - 72));

  _Unwind_Resume(a1);
}

void sub_1C7D40E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1C7D430C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1C7D43E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__441(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7D45364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, void *a20)
{
  _Block_object_dispose(&STACK[0x278], 8);

  _Block_object_dispose(&STACK[0x2A8], 8);
  objc_destroyWeak(&STACK[0x368]);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__444(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  *(a1 + 48) = result;
  return result;
}

void sub_1C7D47A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);

  _Unwind_Resume(a1);
}

void sub_1C7D48A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27)
{
  std::vector<AttachmentTileInfo>::__destroy_vector::operator()[abi:ne200100](&a27);

  _Unwind_Resume(a1);
}

void sub_1C7D49B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void **a60)
{
  a60 = &a42;
  std::vector<AttachmentTileInfo>::__destroy_vector::operator()[abi:ne200100](&a60);

  _Unwind_Resume(a1);
}

void sub_1C7D4BAB0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C7D4EA38(_Unwind_Exception *a1)
{
  if ((v2 & 1) == 0)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1C7D51470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1C7D51CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, id location)
{
  objc_destroyWeak(&a16);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C7D52050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void ___ZL29PKAllowVisionOSGestureDrawingv_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  byte_1EC291539 = [v0 BOOLForKey:@"internalSettings.drawing.allowVisionOSGestureDrawing"];
}

uint64_t std::__split_buffer<AttachmentTileInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  v10 = *(a1 + 8);
  v11 = *(a1 + 24);
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;

  v7 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v7;
  v8 = *a2;
  *a2 = v4;

  result = v10;
  *(a2 + 8) = v10;
  *(a2 + 24) = v11;
  return result;
}

double std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[PKTiledView updateTilesForVisibleRectRendering:offscreen:overrideAdditionalStrokes:]::$_0 &,AttachmentTileInfo *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 24);
  v9 = *(a3 + 24);
  if (v8 >= *(a1 + 24))
  {
    if (v9 < v8)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(a2, a3);
      if (*(a2 + 24) < *(v7 + 24))
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(a1, v10);
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(a1, a2);
    if (*(a3 + 24) < *(a2 + 24))
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  result = *(a4 + 24);
  if (result < *(a3 + 24))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(a3, a4);
    result = *(a3 + 24);
    if (result < *(a2 + 24))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(a2, a3);
      result = *(a2 + 24);
      if (result < *(v7 + 24))
      {

        *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(v7, a2).n128_u64[0];
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[PKTiledView updateTilesForVisibleRectRendering:offscreen:overrideAdditionalStrokes:]::$_0 &,AttachmentTileInfo *>(double *a1, double *a2)
{
  v3 = a1;
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = a1[7];
        v9 = *(a2 - 1);
        if (v8 < a1[3])
        {
          if (v9 >= v8)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(a1, (a1 + 4));
            if (*(a2 - 1) >= v3[7])
            {
              return 1;
            }

            a1 = v3 + 4;
          }

          v5 = (a2 - 4);
          goto LABEL_31;
        }

        if (v9 >= v8)
        {
          return 1;
        }

        v6 = (a1 + 4);
        v7 = (a2 - 4);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[PKTiledView updateTilesForVisibleRectRendering:offscreen:overrideAdditionalStrokes:]::$_0 &,AttachmentTileInfo *,0>(a1, (a1 + 4), (a1 + 8), (a2 - 4));
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[PKTiledView updateTilesForVisibleRectRendering:offscreen:overrideAdditionalStrokes:]::$_0 &,AttachmentTileInfo *,0>(a1, (a1 + 4), (a1 + 8), (a1 + 12));
        if (*(a2 - 1) >= v3[15])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>((v3 + 12), (a2 - 4));
        if (v3[15] >= v3[11])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>((v3 + 8), (v3 + 12));
        if (v3[11] >= v3[7])
        {
          return 1;
        }

        v6 = (v3 + 4);
        v7 = (v3 + 8);
        break;
      default:
        goto LABEL_16;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(v6, v7);
    if (v3[7] < v3[3])
    {
      v5 = (v3 + 4);
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 1) < a1[3])
    {
      v5 = (a2 - 4);
LABEL_24:
      a1 = v3;
LABEL_31:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = a1 + 8;
  v11 = a1[7];
  v12 = a1[11];
  if (v11 < a1[3])
  {
    if (v12 >= v11)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(a1, (a1 + 4));
      if (v3[11] >= v3[7])
      {
        goto LABEL_36;
      }

      a1 = v3 + 4;
    }

    v13 = (v3 + 8);
    goto LABEL_35;
  }

  if (v12 < v11)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>((a1 + 4), (a1 + 8));
    if (v3[7] < v3[3])
    {
      v13 = (v3 + 4);
      a1 = v3;
LABEL_35:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttachmentTileInfo *&,AttachmentTileInfo *&>(a1, v13);
    }
  }

LABEL_36:
  v14 = v3 + 12;
  if (v3 + 12 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = v14[3];
    if (v17 < v10[3])
    {
      v18 = *v14;
      *v14 = 0.0;
      v26 = *(v14 + 1);
      v19 = v15;
      while (1)
      {
        v20 = v3 + v19;
        v21 = *(v3 + v19 + 64);
        *(v20 + 8) = 0;
        v22 = *(v3 + v19 + 96);
        *(v20 + 12) = v21;

        *(v20 + 104) = *(v20 + 72);
        *(v20 + 15) = *(v20 + 11);
        if (v19 == -64)
        {
          break;
        }

        v19 -= 32;
        if (v17 >= *(v20 + 7))
        {
          v23 = v3 + v19 + 96;
          goto LABEL_44;
        }
      }

      v23 = v3;
LABEL_44:
      v24 = *v23;
      *v23 = v18;

      *(v20 + 72) = v26;
      *(v23 + 24) = v17;
      if (++v16 == 8)
      {
        return v14 + 4 == a2;
      }
    }

    v10 = v14;
    v15 += 32;
    v14 += 4;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

void sub_1C7D57330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 168), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C7D5A140(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C7D5CD3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7D639D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7D645C8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1C7D647C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  va_copy(va2, va1);
  v17 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Block_object_dispose((v10 - 96), 8);
  objc_sync_exit(v9);

  _Unwind_Resume(a1);
}

double _PKVectorSafeGet(void *a1, int a2)
{
  v2 = ((a1[1] - *a1) >> 3) - 1;
  if (v2 >= a2)
  {
    v2 = a2;
  }

  return *(*a1 + 8 * v2);
}

void _PKTriangularWindow(int a1, const void **a2)
{
  if (a1 >= 1)
  {
    v13[1] = v5;
    v13[2] = v4;
    v13[7] = v2;
    v13[8] = v3;
    v8 = a1;
    v9 = (2.0 / a1);
    v10 = -a1;
    v11 = a1;
    do
    {
      if (v10 >= 0)
      {
        v12 = v10;
      }

      else
      {
        v12 = -v10;
      }

      v13[0] = (a1 - v12) / v8 * v9;
      std::vector<double>::push_back[abi:ne200100](a2, v13);
      v10 += 2;
      --v11;
    }

    while (v11);
  }
}

void _PKTrapezoidWindow(int a1, int a2, const void **a3)
{
  v9 = a1 - 1;
  if (a1 >= 1)
  {
    v20[1] = v8;
    v20[2] = v7;
    v20[3] = v6;
    v20[4] = v5;
    v20[11] = v3;
    v20[12] = v4;
    if ((a2 & ~(a2 >> 31)) < v9)
    {
      v9 = a2 & ~(a2 >> 31);
    }

    v11 = ((a1 - v9) & 1) + v9;
    v12 = 2.0 / (v11 + a1);
    v13 = a1 - v11;
    v14 = (a1 - v11) / 2;
    v15 = v12;
    if ((a1 - v11) >= 2)
    {
      v16 = 0.0;
      v17 = v13 / 2;
      do
      {
        v20[0] = v16 / v14 * v15;
        std::vector<double>::push_back[abi:ne200100](a3, v20);
        v16 = v16 + 1.0;
        --v17;
      }

      while (v17);
    }

    for (; v11; --v11)
    {
      v20[0] = v15;
      std::vector<double>::push_back[abi:ne200100](a3, v20);
    }

    if (v13 >= 2)
    {
      v18 = v14;
      v19 = 0.0;
      do
      {
        v20[0] = (1.0 - v19 / v18) * v15;
        std::vector<double>::push_back[abi:ne200100](a3, v20);
        v19 = v19 + 1.0;
        --v14;
      }

      while (v14);
    }
  }
}

void _PKConvolve(uint64_t *a1, void *a2, const void **a3)
{
  if (a1[1] != *a1)
  {
    v6 = 0;
    do
    {
      v15 = 0.0;
      v7 = a2[1] - *a2;
      if (v7)
      {
        v8 = 0;
        v9 = v7 >> 3;
        v10 = ++v6;
        do
        {
          v12 = 0;
          v13 = 0;
          v14 = 0;
          std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v12, *a1, a1[1], (a1[1] - *a1) >> 3);
          if (v8 >= (a2[1] - *a2) >> 3)
          {
            std::vector<double>::__throw_out_of_range[abi:ne200100]();
          }

          v11 = v13 - v12 - 1;
          if (v11 >= v10 - v9 / 2)
          {
            v11 = v10 - v9 / 2;
          }

          v15 = v15 + v12[v11] * *(*a2 + 8 * v8);
          v13 = v12;
          operator delete(v12);
          ++v8;
          v9 = (a2[1] - *a2) >> 3;
          ++v10;
        }

        while (v9 > v8);
      }

      else
      {
        ++v6;
      }

      std::vector<double>::push_back[abi:ne200100](a3, &v15);
    }

    while (v6 < (a1[1] - *a1) >> 3);
  }
}

void sub_1C7D66740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _PKCurvature(uint64_t *a1, const void **a2)
{
  __src = 0;
  v36 = 0;
  v37 = 0;
  v2 = *a1;
  if (a1[1] != *a1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      memset(v30, 0, sizeof(v30));
      *(v30 + 8) = *(v2 + v4);
      if (v5 >= v37)
      {
        v11 = __src;
        v12 = v5 - __src;
        v13 = 0xAAAAAAAAAAAAAAABLL * ((v5 - __src) >> 5);
        v14 = v13 + 1;
        if (v13 + 1 > 0x2AAAAAAAAAAAAAALL)
        {
          std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v37 - __src) >> 5) > v14)
        {
          v14 = 0x5555555555555556 * ((v37 - __src) >> 5);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v37 - __src) >> 5) >= 0x155555555555555)
        {
          v15 = 0x2AAAAAAAAAAAAAALL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<_PKStrokePoint>>(&__src, v15);
        }

        v16 = (32 * ((v5 - __src) >> 5));
        v16[2] = v31;
        v16[3] = v32;
        v16[4] = v33;
        v16[5] = v34;
        *v16 = v30[0];
        v16[1] = v30[1];
        v5 = (96 * v13 + 96);
        v17 = (96 * v13 - v12);
        memcpy(v16 - v12, v11, v12);
        v18 = __src;
        __src = v17;
        v36 = v5;
        v37 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        v7 = v30[1];
        *v5 = v30[0];
        *(v5 + 1) = v7;
        v8 = v31;
        v9 = v32;
        v10 = v34;
        *(v5 + 4) = v33;
        *(v5 + 5) = v10;
        *(v5 + 2) = v8;
        *(v5 + 3) = v9;
        v5 += 96;
      }

      v36 = v5;
      ++v6;
      v2 = *a1;
      v19 = a1[1];
      v4 += 16;
    }

    while (v6 < (v19 - *a1) >> 4);
    if (v19 != v2)
    {
      v20 = 0;
      do
      {
        v21 = splinePoint(&__src, v20, b2, 0.0);
        v23 = v22;
        v24 = splinePoint(&__src, v20, b3, 0.0);
        v26 = v25;
        v27 = pow(v23 * v23 + v21 * v21, 1.5);
        if (v27 <= 0.001)
        {
          v28 = 100.0;
        }

        else
        {
          v28 = fabs((v21 * v26 - v23 * v24) / v27);
        }

        *v30 = v28;
        std::vector<double>::push_back[abi:ne200100](a2, v30);
        ++v20;
      }

      while (v20 < (a1[1] - *a1) >> 4);
    }

    if (__src)
    {
      v36 = __src;
      operator delete(__src);
    }
  }
}

void sub_1C7D669F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PKSmoothedCurvature(uint64_t *a1, const void **a2)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(&v12, *a1, a1[1], (a1[1] - *a1) >> 4);
  _PKCurvature(&v12, &v15);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  _PKTrapezoidWindow(15, 5, &v9);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v6, v15, v16, (v16 - v15) >> 3);
  __p = 0;
  v4 = 0;
  v5 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, v9, v10, (v10 - v9) >> 3);
  _PKConvolve(&v6, &__p, a2);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_1C7D66B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  v19 = *(v17 - 40);
  if (v19)
  {
    *(v17 - 32) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void PKIntegrate(uint64_t *a1, const void **a2)
{
  v6 = 0.0;
  v2 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    do
    {
      v6 = *(v2 + 8 * v5) + v6;
      std::vector<double>::push_back[abi:ne200100](a2, &v6);
      ++v5;
      v2 = *a1;
    }

    while (v5 < (a1[1] - *a1) >> 3);
  }
}

double PKInterpolatedValue(uint64_t *a1, double a2)
{
  v2 = *a1;
  v3 = (a1[1] - *a1) >> 3;
  v4 = v3 * a2;
  if (v4 < 0.0)
  {
    return *v2;
  }

  v6 = v3 - 1;
  if (v4 > v6)
  {
    return *(v2 + 8 * v6);
  }

  v7 = vcvtmd_s64_f64(v4);
  v8 = vcvtpd_s64_f64(v4);
  if (v7 == v8)
  {
    return *(v2 + 8 * v7);
  }

  else
  {
    return (1.0 - (v8 - v4)) * *(v2 + 8 * v8) + (v8 - v4) * *(v2 + 8 * v7);
  }
}

void PKRunningStat::PKRunningStat(PKRunningStat *this, BOOL a2)
{
  this->isAngle = a2;
  this->limit = 0.0;
  this->lock._os_unfair_lock_opaque = 0;
  this->numValues = 0;
  this->numValuesOverLimit = 0;
}

{
  this->isAngle = a2;
  this->limit = 0.0;
  this->lock._os_unfair_lock_opaque = 0;
  this->numValues = 0;
  this->numValuesOverLimit = 0;
}

void PKRunningStat::clear(PKRunningStat *this, double a2)
{
  os_unfair_lock_lock(&this->lock);
  this->numValues = 0;
  this->numValuesOverLimit = 0;
  this->limit = a2;

  os_unfair_lock_unlock(&this->lock);
}

void PKRunningStat::push(PKRunningStat *this, long double a2)
{
  os_unfair_lock_lock(&this->lock);
  numValues = this->numValues;
  v5 = numValues + 1;
  this->numValues = numValues + 1;
  if (this->limit < a2)
  {
    ++this->numValuesOverLimit;
  }

  if (numValues)
  {
    minValue = this->minValue;
    maxValue = this->maxValue;
    if (minValue > a2)
    {
      minValue = a2;
    }

    if (maxValue < a2)
    {
      maxValue = a2;
    }

    this->minValue = minValue;
    this->maxValue = maxValue;
    oldM = this->oldM;
    if (this->isAngle)
    {
      DKDMixAnglesInRadians(this->oldM, a2, 1.0 / v5);
      v10 = v9;
      oldS = this->oldS;
      DKDDiffAngleInRadians(a2, oldM);
      v13 = v12;
      DKDDiffAngleInRadians(a2, v10);
      v15 = oldS + v13 * v14;
      v16 = 48;
      v17 = 32;
      a2 = v10;
    }

    else
    {
      v19 = oldM + (a2 - oldM) / v5;
      v15 = this->oldS + (a2 - oldM) * (a2 - v19);
      v16 = 48;
      v17 = 32;
      a2 = v19;
    }

    v18 = v15;
  }

  else
  {
    this->minValue = a2;
    v18 = 0.0;
    v16 = 32;
    v17 = 64;
    v15 = a2;
  }

  *(&this->isAngle + v17) = a2;
  *(&this->isAngle + v16) = v15;
  this->oldM = a2;
  this->oldS = v18;

  os_unfair_lock_unlock(&this->lock);
}

uint64_t PKRunningStat::count(PKRunningStat *this)
{
  os_unfair_lock_lock(&this->lock);
  numValues = this->numValues;
  os_unfair_lock_unlock(&this->lock);
  return numValues;
}

uint64_t PKRunningStat::countOverLimit(PKRunningStat *this)
{
  os_unfair_lock_lock(&this->lock);
  numValuesOverLimit = this->numValuesOverLimit;
  os_unfair_lock_unlock(&this->lock);
  return numValuesOverLimit;
}

double PKRunningStat::min(PKRunningStat *this)
{
  os_unfair_lock_lock(&this->lock);
  if (this->numValues < 1)
  {
    minValue = 0.0;
  }

  else
  {
    minValue = this->minValue;
  }

  os_unfair_lock_unlock(&this->lock);
  return minValue;
}

double PKRunningStat::max(PKRunningStat *this)
{
  os_unfair_lock_lock(&this->lock);
  if (this->numValues < 1)
  {
    maxValue = 0.0;
  }

  else
  {
    maxValue = this->maxValue;
  }

  os_unfair_lock_unlock(&this->lock);
  return maxValue;
}

double PKRunningStat::mean(PKRunningStat *this)
{
  os_unfair_lock_lock(&this->lock);
  if (this->numValues < 1)
  {
    newM = 0.0;
  }

  else
  {
    newM = this->newM;
  }

  os_unfair_lock_unlock(&this->lock);
  return newM;
}

double PKRunningStat::variance(PKRunningStat *this)
{
  os_unfair_lock_lock(&this->lock);
  numValues = this->numValues;
  v3 = 0.0;
  if (numValues >= 2)
  {
    v3 = this->newS / (numValues - 1);
  }

  os_unfair_lock_unlock(&this->lock);
  return v3;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E82D5FE0, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_PKStrokePoint>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CGPoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C7D67190(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CGPoint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(a1, a2);
  }

  std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
}

double legacy_drawing::VectorTimestampClock::VectorTimestampClock(legacy_drawing::VectorTimestampClock *this)
{
  *this = &unk_1F4768898;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4768898;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void legacy_drawing::VectorTimestampClock::~VectorTimestampClock(legacy_drawing::VectorTimestampClock *this)
{
  *this = &unk_1F4768898;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 4, 0);
  if (*(this + 1))
  {
    std::vector<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>::clear[abi:ne200100](this + 1);
    operator delete(*(this + 1));
  }

  PB::Base::~Base(this);
}

{
  legacy_drawing::VectorTimestampClock::~VectorTimestampClock(this);

  JUMPOUT(0x1CCA6ECB0);
}

uint64_t legacy_drawing::VectorTimestampClock::VectorTimestampClock(uint64_t this, const legacy_drawing::VectorTimestampClock *a2)
{
  *this = &unk_1F4768898;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  if (*(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 1) != *(a2 + 2))
  {
    PB::PtrVector<legacy_drawing::VectorTimestampClockReplicaClock>::emplace_back<legacy_drawing::VectorTimestampClockReplicaClock const&>();
  }

  return this;
}

uint64_t legacy_drawing::VectorTimestampClock::operator=(uint64_t a1, const legacy_drawing::VectorTimestampClock *a2)
{
  if (a1 != a2)
  {
    legacy_drawing::VectorTimestampClock::VectorTimestampClock(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    legacy_drawing::VectorTimestampClock::~VectorTimestampClock(v7);
  }

  return a1;
}

void *legacy_drawing::swap(void *this, legacy_drawing::VectorTimestampClock *a2, legacy_drawing::VectorTimestampClock *a3)
{
  v3 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v6;
  return this;
}

uint64_t legacy_drawing::VectorTimestampClock::VectorTimestampClock(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4768898;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100]((a1 + 32), v5);
  if (*v4)
  {
    std::vector<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>::clear[abi:ne200100](v4);
    operator delete(*v4);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t legacy_drawing::VectorTimestampClock::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    legacy_drawing::VectorTimestampClock::VectorTimestampClock(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    legacy_drawing::VectorTimestampClock::~VectorTimestampClock(v7);
  }

  return a1;
}

uint64_t legacy_drawing::VectorTimestampClock::formatText(legacy_drawing::VectorTimestampClock *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "replicaClock");
  }

  if (*(this + 4))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t legacy_drawing::VectorTimestampClock::readFrom(legacy_drawing::VectorTimestampClock *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_22;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_28;
      }

      if ((v9 >> 3) == 2)
      {
        PB::PtrVector<legacy_drawing::VectorTimestampClockReplicaClock>::emplace_back<>();
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_22:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_28;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_28:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t legacy_drawing::VectorTimestampClock::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::write(a2, v4);
  }

  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  while (v6 != v5)
  {
    v7 = *v6++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  return this;
}

BOOL legacy_drawing::VectorTimestampClock::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (!v4)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!v4 || (PB::Data::operator==() & 1) == 0 && *(a1 + 32) | *(a2 + 32))
  {
    return 0;
  }

LABEL_5:

  return PB::PtrVector<legacy_drawing::VectorTimestampClockReplicaClock>::operator==((a1 + 8), a2 + 8);
}

BOOL PB::PtrVector<legacy_drawing::VectorTimestampClockReplicaClock>::operator==(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  do
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = legacy_drawing::VectorTimestampClockReplicaClock::operator==(v5, v7);
  }

  while (result && v3 != v2);
  return result;
}

uint64_t legacy_drawing::VectorTimestampClock::hash_value(legacy_drawing::VectorTimestampClock *this)
{
  if (*(this + 4))
  {
    v2 = PBHashBytes();
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 1);
  v4 = *(this + 2);
  if (v3 != v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = *v3;
      if (*(*v3 + 16))
      {
        v7 = *(v6 + 8);
        if ((*(*v3 + 16) & 2) != 0)
        {
LABEL_10:
          v8 = *(v6 + 12);
          goto LABEL_11;
        }
      }

      else
      {
        v7 = 0;
        if ((*(*v3 + 16) & 2) != 0)
        {
          goto LABEL_10;
        }
      }

      v8 = 0;
LABEL_11:
      v5 ^= v7 ^ v8;
      if (++v3 == v4)
      {
        return v5 ^ v2;
      }
    }
  }

  v5 = 0;
  return v5 ^ v2;
}

void *std::vector<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void ***std::unique_ptr<PB::Data>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    free(*v2);

    JUMPOUT(0x1CCA6ECB0);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void sub_1C7D6A594(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1C7D6AA48(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1C7D6AE1C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1C7D6CB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7D6E030(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<PKProtobufUnknownFields>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::shared_ptr<PKProtobufUnknownFields>::operator=[abi:ne200100]<PKProtobufUnknownFields,std::default_delete<PKProtobufUnknownFields>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<PKProtobufUnknownFields>::shared_ptr[abi:ne200100]<PKProtobufUnknownFields,std::default_delete<PKProtobufUnknownFields>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

PB::Writer ***std::unique_ptr<PKProtobufUnknownFields>::~unique_ptr[abi:ne200100](PB::Writer ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::unique_ptr<PB::Writer>::reset[abi:ne200100](v2, 0);
    MEMORY[0x1CCA6ECB0](v2, 0x1020C40EDED9539);
  }

  return a1;
}

uint64_t *std::shared_ptr<PKProtobufUnknownFields>::shared_ptr[abi:ne200100]<PKProtobufUnknownFields,std::default_delete<PKProtobufUnknownFields>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<PKProtobufUnknownFields  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1CCA6ECB0);
}

uint64_t std::__shared_ptr_pointer<PKProtobufUnknownFields  *>::__on_zero_shared(uint64_t result)
{
  if (*(result + 24))
  {
    std::unique_ptr<PB::Writer>::reset[abi:ne200100](*(result + 24), 0);

    JUMPOUT(0x1CCA6ECB0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<PKProtobufUnknownFields  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void __CheckSandboxAccess_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  getpid();
  v0 = sandbox_check();
  _MergedGlobals_121 = v0 == 0;
  if (v0)
  {
    v1 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v2 = [MEMORY[0x1E696AAE8] mainBundle];
      v3 = [v2 bundleIdentifier];
      *buf = 138412290;
      v5 = v3;
      _os_log_error_impl(&dword_1C7CCA000, v1, OS_LOG_TYPE_ERROR, "Sandbox disabled Scribble for :%@", buf, 0xCu);
    }
  }
}

void sub_1C7D73DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = PKTiledCanvasView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C7D765C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void LogTouchIfEnabled(UITouch *a1, int a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (qword_1EC291568 != -1)
    {
      dispatch_once(&qword_1EC291568, &__block_literal_global_848);
    }

    if (_MergedGlobals_289_0 == 1)
    {
      [(UITouch *)v3 timestamp];
      v5 = v4;
      [(UITouch *)v3 preciseLocationInView:0];
      v7 = v6;
      v9 = v8;
      [(UITouch *)v3 azimuthAngleInView:0];
      v11 = v10;
      [(UITouch *)v3 altitudeAngle];
      v13 = v12;
      [(UITouch *)v3 force];
      v15 = v14;
      v16 = os_log_create("com.apple.pencilkit", "PencilKit Touch Events");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        if (a2)
        {
          v17 = @"Update";
        }

        else
        {
          v17 = @"Touch";
        }

        v18 = [(UITouch *)v3 estimationUpdateIndex];
        v19 = 138414082;
        v20 = v17;
        v21 = 2048;
        v22 = v5;
        v23 = 2048;
        v24 = v7;
        v25 = 2048;
        v26 = v9;
        v27 = 2048;
        v28 = v11;
        v29 = 2048;
        v30 = v13;
        v31 = 2048;
        v32 = v15;
        v33 = 2048;
        v34 = [v18 unsignedIntegerValue];
        _os_log_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_DEFAULT, "%@: Timestamp: %.4f, location: %.3f %.3f, azimuth: %g, altitude: %g, force: %g, updateCorrelationToken: %lu", &v19, 0x52u);
      }
    }
  }
}

void std::vector<PKInputPoint>::resize(void *a1, unint64_t a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<PKInputPoint>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 136 * a2;
  }
}

void sub_1C7D7C5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<PKInputPoint>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v13 = 0xF0F0F0F0F0F0F0F1 * ((v4 - *a1) >> 3);
    v14 = v13 + 1;
    if (v13 + 1 > 0x1E1E1E1E1E1E1E1)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0xF0F0F0F0F0F0F0F1 * ((v5 - *a1) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0xF0F0F0F0F0F0F0)
    {
      v16 = 0x1E1E1E1E1E1E1E1;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKInputPoint>>(a1, v16);
    }

    v17 = 136 * v13;
    *v17 = *a2;
    v18 = *(a2 + 16);
    v19 = *(a2 + 32);
    v20 = *(a2 + 64);
    *(v17 + 48) = *(a2 + 48);
    *(v17 + 64) = v20;
    *(v17 + 16) = v18;
    *(v17 + 32) = v19;
    v21 = *(a2 + 80);
    v22 = *(a2 + 96);
    v23 = *(a2 + 112);
    *(v17 + 128) = *(a2 + 128);
    *(v17 + 96) = v22;
    *(v17 + 112) = v23;
    *(v17 + 80) = v21;
    v12 = 136 * v13 + 136;
    v24 = *(a1 + 8) - *a1;
    v25 = v17 - v24;
    memcpy((v17 - v24), *a1, v24);
    v26 = *a1;
    *a1 = v25;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v4 = *a2;
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    v8 = *(a2 + 64);
    *(v4 + 48) = *(a2 + 48);
    *(v4 + 64) = v8;
    *(v4 + 16) = v6;
    *(v4 + 32) = v7;
    v9 = *(a2 + 80);
    v10 = *(a2 + 96);
    v11 = *(a2 + 112);
    *(v4 + 128) = *(a2 + 128);
    *(v4 + 96) = v10;
    *(v4 + 112) = v11;
    *(v4 + 80) = v9;
    v12 = v4 + 136;
  }

  *(a1 + 8) = v12;
}

void *std::vector<PKInputPoint>::reserve(void *result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x1E1E1E1E1E1E1E2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKInputPoint>>(result, a2);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1C7D7E534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17)
{
  objc_destroyWeak((v21 + 64));

  _Unwind_Resume(a1);
}

void sub_1C7D823E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, void *a18, uint64_t a19, id location)
{
  objc_destroyWeak((v22 + 64));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void ___ZL22PKShouldLogTouchEventsv_block_invoke()
{
  if (os_variant_has_internal_diagnostics())
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    _MergedGlobals_289_0 = [v0 BOOLForKey:@"PKLogTouchEventsInPencilKit"];
  }

  else
  {
    _MergedGlobals_289_0 = 0;
  }
}

void std::vector<PKInputPoint>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xF0F0F0F0F0F0F0F1 * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 136 * ((136 * a2 - 136) / 0x88) + 136;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xF0F0F0F0F0F0F0F1 * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1E1E1E1E1E1E1E1)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xF0F0F0F0F0F0F0F1 * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xF0F0F0F0F0F0F0)
    {
      v9 = 0x1E1E1E1E1E1E1E1;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKInputPoint>>(a1, v9);
    }

    v11 = 136 * v6;
    v12 = 136 * ((136 * a2 - 136) / 0x88) + 136;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PKInputPoint>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void ___ZL25PKRenderFullStrokePreviewv_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  byte_1EC291561 = [v0 BOOLForKey:@"PKRenderFullStrokePreview"];
}

void ___ZL29PKRenderAfterTouchRollUpdatesv_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  byte_1EC291562 = [v0 BOOLForKey:@"PKRenderAfterTouchRollUpdates"];
}

uint64_t std::vector<PKInputPoint>::__init_with_size[abi:ne200100]<PKInputPoint*,PKInputPoint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PKInputPoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C7D846B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<PKInputPoint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PKInputPoint>>(a1, a2);
  }

  std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
}

void ___ZL34PKAlwaysRenderLiveStrokesAsPreviewv_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  byte_1EC291563 = [v0 BOOLForKey:@"PKAlwaysRenderLiveStrokesAsPreview"];
}

void sub_1C7D849EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PKTitleQuery;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C7D87030(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1C7D89EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PKSpecificCast(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 isMemberOfClass:a1])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id PKProtocolCast(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4 && [v4 conformsToProtocol:v3])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id PKClassAndProtocolCast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v14 = &a9;
    if (!a3)
    {
LABEL_6:
      v12 = v10;
      goto LABEL_8;
    }

    while (1)
    {
      v11 = v14++;
      if (([v10 conformsToProtocol:*v11] & 1) == 0)
      {
        break;
      }

      if (!--a3)
      {
        goto LABEL_6;
      }
    }
  }

  v12 = 0;
LABEL_8:

  return v12;
}

CFTypeRef PKCFTypeCast(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (CFGetTypeID(cf) == a1)
  {
    return cf;
  }

  return 0;
}

id PKCheckedProtocolCast(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v5 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_error_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_ERROR, "Protocol is nil", &v12, 2u);
    }
  }

  v6 = PKProtocolCast(v3, v4);
  v7 = v6;
  if (v4 && !v6)
  {
    v8 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      if (v3)
      {
        Name = protocol_getName(v3);
      }

      else
      {
        Name = "<No protocol supplied>";
      }

      v12 = 138412546;
      v13 = v10;
      v14 = 2080;
      v15 = Name;
      _os_log_error_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_ERROR, "Unexpected object type in checked protocol cast %@ expects %s", &v12, 0x16u);
    }
  }

  return v7;
}

void __PKSubheadRegularFontSizeInPoints_block_invoke()
{
  v1 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [v1 pointSize];
  _MergedGlobals_123 = v0;
}

void _PKHandleProofreadingSettingsDidChange(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = +[PKSettingsDaemon proofreadingEnabled];
  v4 = os_log_create("com.apple.pencilkit", "PKProofreadingSettingsObserver");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = @"PKRemoteProofreadingSettingsDidChange";
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Handle remote notification %@, proofreadingEnabled = %{BOOL}d", &v8, 0x12u);
  }

  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 1);
    if (v7)
    {
      (*(v7 + 16))(v7, v6);
    }
  }
}

void sub_1C7D8FFC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7D923EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, id location)
{
  objc_destroyWeak((v63 + 32));
  _Block_object_dispose(&a35, 8);
  objc_destroyWeak(&a57);
  objc_destroyWeak(&a62);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7D93890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double drawing::Stroke::Stroke(drawing::Stroke *this)
{
  *this = &unk_1F4768B88;
  *(this + 24) = 0;
  *(this + 25) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 13) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 46) = 0;
  return result;
}

{
  *this = &unk_1F4768B88;
  *(this + 24) = 0;
  *(this + 25) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 13) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 46) = 0;
  return result;
}

void drawing::Stroke::~Stroke(drawing::Stroke *this)
{
  *this = &unk_1F4768B88;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 22);
  *(this + 22) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 21);
  *(this + 21) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 20);
  *(this + 20) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v11 = (this + 136);
  std::vector<std::unique_ptr<drawing::Stroke>>::__destroy_vector::operator()[abi:ne200100](&v11);
  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 15, 0);
  v6 = *(this + 14);
  *(this + 14) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 13);
  *(this + 13) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 11, 0);
  v11 = (this + 64);
  std::vector<PB::Data>::__destroy_vector::operator()[abi:ne200100](&v11);
  v8 = *(this + 7);
  *(this + 7) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 5, 0);
  v9 = *(this + 4);
  *(this + 4) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 1);
  if (v10)
  {
    *(this + 2) = v10;
    operator delete(v10);
  }

  PB::Base::~Base(this);
}

{
  drawing::Stroke::~Stroke(this);

  JUMPOUT(0x1CCA6ECB0);
}

drawing::Stroke *drawing::Stroke::Stroke(drawing::Stroke *this, const drawing::Stroke *a2)
{
  *this = &unk_1F4768B88;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 5) = 0;
  *(this + 56) = 0u;
  *(this + 11) = 0;
  *(this + 13) = 0;
  *(this + 15) = 0;
  *(this + 136) = 0u;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 24) = 0u;
  *(this + 72) = 0u;
  *(this + 14) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  v5 = *(a2 + 24);
  v6 = *(a2 + 25);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v7 = *(this + 25);
    *(this + 24) = v5;
    *(this + 25) = v6;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    *(this + 24) = v5;
    *(this + 25) = 0;
  }

  *(this + 46) = 0;
  if (*(a2 + 15))
  {
    operator new();
  }

  if (*(a2 + 13))
  {
    operator new();
  }

  if (*(a2 + 22))
  {
    operator new();
  }

  if (*(a2 + 184))
  {
    v8 = *(a2 + 6);
    *(this + 184) |= 1u;
    *(this + 6) = v8;
  }

  if (*(a2 + 14))
  {
    operator new();
  }

  if (*(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 21))
  {
    operator new();
  }

  if ((*(a2 + 184) & 4) != 0)
  {
    v9 = *(a2 + 16);
    *(this + 184) |= 4u;
    *(this + 16) = v9;
  }

  if (*(a2 + 20))
  {
    operator new();
  }

  if (this != a2)
  {
    std::vector<PB::Data>::__assign_with_size[abi:ne200100]<PB::Data*,PB::Data*>(this + 64, *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 4);
  }

  if (*(a2 + 17) != *(a2 + 18))
  {
    PB::PtrVector<drawing::Stroke>::emplace_back<drawing::Stroke const&>();
  }

  if (this != a2)
  {
    v10 = *(a2 + 1);
    v11 = *(a2 + 2);
    v12 = v11 - v10;
    v13 = *(this + 3);
    v14 = *(this + 1);
    if (v13 - v14 < (v11 - v10))
    {
      v15 = v12 >> 2;
      if (v14)
      {
        *(this + 2) = v14;
        operator delete(v14);
        v13 = 0;
        *v4 = 0;
        v4[1] = 0;
        v4[2] = 0;
      }

      if (!(v15 >> 62))
      {
        v16 = v13 >> 1;
        if (v13 >> 1 <= v15)
        {
          v16 = v12 >> 2;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v17 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (!(v17 >> 62))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v4, v17);
        }
      }

      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v18 = *(this + 2);
    v19 = v18 - v14;
    if (v18 - v14 >= v12)
    {
      if (v11 != v10)
      {
        memmove(*(this + 1), *(a2 + 1), v11 - v10);
      }

      v21 = &v14[v12];
    }

    else
    {
      v20 = &v10[v19];
      if (v18 != v14)
      {
        memmove(*(this + 1), *(a2 + 1), v19);
        v18 = *(this + 2);
      }

      if (v11 != v20)
      {
        memmove(v18, v20, v11 - v20);
      }

      v21 = &v18[v11 - v20];
    }

    *(this + 2) = v21;
  }

  if (*(a2 + 5))
  {
    operator new();
  }

  if ((*(a2 + 184) & 2) != 0)
  {
    v22 = *(a2 + 12);
    *(this + 184) |= 2u;
    *(this + 12) = v22;
  }

  if (*(a2 + 7))
  {
    operator new();
  }

  if (*(a2 + 11))
  {
    operator new();
  }

  return this;
}

uint64_t drawing::Stroke::operator=(uint64_t a1, const drawing::Stroke *a2)
{
  if (a1 != a2)
  {
    drawing::Stroke::Stroke(v5, a2);
    drawing::swap(a1, v5, v3);
    drawing::Stroke::~Stroke(v5);
  }

  return a1;
}

uint64_t drawing::swap(uint64_t this, drawing::Stroke *a2, drawing::Stroke *a3)
{
  v3 = *(this + 192);
  *(this + 192) = *(a2 + 24);
  *(a2 + 24) = v3;
  v4 = *(this + 200);
  *(this + 200) = *(a2 + 25);
  *(a2 + 25) = v4;
  LODWORD(v4) = *(this + 184);
  *(this + 184) = *(a2 + 46);
  *(a2 + 46) = v4;
  v5 = *(this + 120);
  *(this + 120) = *(a2 + 15);
  *(a2 + 15) = v5;
  v6 = *(this + 104);
  *(this + 104) = *(a2 + 13);
  *(a2 + 13) = v6;
  v7 = *(this + 176);
  *(this + 176) = *(a2 + 22);
  *(a2 + 22) = v7;
  v8 = *(this + 112);
  *(this + 112) = *(a2 + 14);
  *(a2 + 14) = v8;
  v9 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v9;
  v10 = *(this + 168);
  *(this + 168) = *(a2 + 21);
  *(a2 + 21) = v10;
  v11 = *(this + 160);
  *(this + 160) = *(a2 + 20);
  *(a2 + 20) = v11;
  v12 = *(this + 64);
  *(this + 64) = *(a2 + 8);
  *(a2 + 8) = v12;
  v13 = *(this + 72);
  *(this + 72) = *(a2 + 9);
  *(a2 + 9) = v13;
  v14 = *(this + 80);
  *(this + 80) = *(a2 + 10);
  *(a2 + 10) = v14;
  v15 = *(this + 136);
  *(this + 136) = *(a2 + 17);
  *(a2 + 17) = v15;
  v16 = *(this + 144);
  *(this + 144) = *(a2 + 18);
  *(a2 + 18) = v16;
  v17 = *(this + 152);
  *(this + 152) = *(a2 + 19);
  *(a2 + 19) = v17;
  v18 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v18;
  v19 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v19;
  v20 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v20;
  v22 = *(this + 40);
  v21 = *(this + 48);
  v23 = *(a2 + 6);
  *(this + 40) = *(a2 + 5);
  *(this + 48) = v23;
  *(a2 + 6) = v21;
  v24 = *(this + 128);
  *(this + 128) = *(a2 + 16);
  *(a2 + 16) = v24;
  *(a2 + 5) = v22;
  v25 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v25;
  v27 = *(this + 88);
  v26 = *(this + 96);
  v28 = *(a2 + 12);
  *(this + 88) = *(a2 + 11);
  *(this + 96) = v28;
  *(a2 + 11) = v27;
  *(a2 + 12) = v26;
  return this;
}

uint64_t drawing::Stroke::Stroke(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4768B88;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 40) = 0;
  v5 = (a1 + 40);
  *(a1 + 120) = 0;
  v6 = (a1 + 120);
  *(a1 + 136) = 0u;
  v7 = (a1 + 136);
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  v8 = *(a2 + 192);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  v9 = *(a1 + 200);
  *(a1 + 192) = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  *(a1 + 184) = *(a2 + 184);
  *(a2 + 184) = 0;
  v10 = *(a2 + 120);
  *(a2 + 120) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](v6, v10);
  v11 = *(a2 + 104);
  *(a2 + 104) = 0;
  v12 = *(a1 + 104);
  *(a1 + 104) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(a2 + 176);
  *(a2 + 176) = 0;
  v14 = *(a1 + 176);
  *(a1 + 176) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  *(a1 + 48) = *(a2 + 48);
  v15 = *(a2 + 112);
  *(a2 + 112) = 0;
  v16 = *(a1 + 112);
  *(a1 + 112) = v15;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(a2 + 32);
  *(a2 + 32) = 0;
  v18 = *(a1 + 32);
  *(a1 + 32) = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(a2 + 168);
  *(a2 + 168) = 0;
  v20 = *(a1 + 168);
  *(a1 + 168) = v19;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  *(a1 + 128) = *(a2 + 128);
  v21 = *(a2 + 160);
  *(a2 + 160) = 0;
  v22 = *(a1 + 160);
  *(a1 + 160) = v21;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  std::vector<PB::Data>::__vdeallocate((a1 + 64));
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  std::vector<std::unique_ptr<drawing::Stroke>>::__vdeallocate(v7);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  v23 = *(a1 + 8);
  if (v23)
  {
    *(a1 + 16) = v23;
    operator delete(v23);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v24 = *(a2 + 40);
  *(a2 + 40) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100](v5, v24);
  *(a1 + 96) = *(a2 + 96);
  v25 = *(a2 + 56);
  *(a2 + 56) = 0;
  v26 = *(a1 + 56);
  *(a1 + 56) = v25;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = *(a2 + 88);
  *(a2 + 88) = 0;
  std::unique_ptr<PB::Data>::reset[abi:ne200100]((a1 + 88), v27);
  return a1;
}

uint64_t drawing::Stroke::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    drawing::Stroke::Stroke(v5, a2);
    drawing::swap(a1, v5, v3);
    drawing::Stroke::~Stroke(v5);
  }

  return a1;
}

uint64_t drawing::Stroke::formatText(drawing::Stroke *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 4);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "bounds");
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "centerlineSlices", v8);
  }

  if (*(this + 5))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 184))
  {
    PB::TextFormatter::format(a2, "inkIndex");
  }

  v9 = *(this + 7);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "inkTransform");
  }

  v10 = *(this + 8);
  for (i = *(this + 9); v10 != i; v10 += 16)
  {
    PB::TextFormatter::format();
  }

  if (*(this + 11))
  {
    PB::TextFormatter::format();
  }

  if ((*(this + 184) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "shapeType");
  }

  v12 = *(this + 13);
  if (v12)
  {
    (*(*v12 + 32))(v12, a2, "sortID");
  }

  v13 = *(this + 14);
  if (v13)
  {
    (*(*v13 + 32))(v13, a2, "strokeData");
  }

  if (*(this + 15))
  {
    PB::TextFormatter::format();
  }

  if ((*(this + 184) & 4) != 0)
  {
    PB::TextFormatter::format(a2, "styleFlags");
  }

  v14 = *(this + 17);
  v15 = *(this + 18);
  while (v14 != v15)
  {
    v16 = *v14++;
    (*(*v16 + 32))(v16, a2, "substrokes");
  }

  v17 = *(this + 20);
  if (v17)
  {
    (*(*v17 + 32))(v17, a2, "substrokesVersion");
  }

  v18 = *(this + 21);
  if (v18)
  {
    (*(*v18 + 32))(v18, a2, "transform");
  }

  v19 = *(this + 22);
  if (v19)
  {
    (*(*v19 + 32))(v19, a2, "version");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t drawing::Stroke::readFrom(drawing::Stroke *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
    goto LABEL_138;
  }

  while (1)
  {
    v7 = *a2;
    if (v2 <= 0xFFFFFFFFFFFFFFF5 && v2 + 10 <= v3)
    {
      break;
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    do
    {
      if (!v19)
      {
        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_138;
      }

      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
    }

    while (!v14);
LABEL_17:
    v22 = 0;
    LODWORD(v23) = 0;
LABEL_18:
    v24 = *(this + 24);
    if (!v24)
    {
      operator new();
    }

    if ((PKProtobufUnknownFields::add(v24, v23, v22, a2) & 1) == 0)
    {
LABEL_140:
      v102 = 0;
      return v102 & 1;
    }

LABEL_83:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
    if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
    {
      goto LABEL_138;
    }
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = (v7 + v2);
  v12 = v2 + 1;
  while (1)
  {
    *(a2 + 1) = v12;
    v13 = *v11++;
    v10 |= (v13 & 0x7F) << v8;
    if ((v13 & 0x80) == 0)
    {
      break;
    }

    v8 += 7;
    ++v12;
    v14 = v9++ > 8;
    if (v14)
    {
      goto LABEL_17;
    }
  }

LABEL_22:
  v22 = v10 & 7;
  if (v22 != 4)
  {
    v23 = v10 >> 3;
    switch((v10 >> 3))
    {
      case 1u:
        operator new();
      case 2u:
        operator new();
      case 3u:
        operator new();
      case 4u:
        *(this + 184) |= 1u;
        v44 = *(a2 + 1);
        v43 = *(a2 + 2);
        v45 = *a2;
        if (v44 <= 0xFFFFFFFFFFFFFFF5 && v44 + 10 <= v43)
        {
          v46 = 0;
          v47 = 0;
          v48 = 0;
          v49 = (v45 + v44);
          v50 = v44 + 1;
          do
          {
            *(a2 + 1) = v50;
            v51 = *v49++;
            v48 |= (v51 & 0x7F) << v46;
            if ((v51 & 0x80) == 0)
            {
              goto LABEL_123;
            }

            v46 += 7;
            ++v50;
            v14 = v47++ > 8;
          }

          while (!v14);
LABEL_93:
          v48 = 0;
          goto LABEL_123;
        }

        v73 = 0;
        v74 = 0;
        v48 = 0;
        v75 = (v45 + v44);
        v18 = v43 >= v44;
        v76 = v43 - v44;
        if (!v18)
        {
          v76 = 0;
        }

        v77 = v44 + 1;
        while (2)
        {
          if (v76)
          {
            v78 = *v75;
            *(a2 + 1) = v77;
            v48 |= (v78 & 0x7F) << v73;
            if (v78 < 0)
            {
              v73 += 7;
              ++v75;
              --v76;
              ++v77;
              v14 = v74++ > 8;
              if (v14)
              {
                goto LABEL_93;
              }

              continue;
            }

            if (*(a2 + 24))
            {
              v48 = 0;
            }
          }

          else
          {
            v48 = 0;
            *(a2 + 24) = 1;
          }

          break;
        }

LABEL_123:
        *(this + 6) = v48;
        goto LABEL_83;
      case 5u:
        operator new();
      case 6u:
        operator new();
      case 7u:
        operator new();
      case 8u:
        *(this + 184) |= 4u;
        v53 = *(a2 + 1);
        v52 = *(a2 + 2);
        v54 = *a2;
        if (v53 <= 0xFFFFFFFFFFFFFFF5 && v53 + 10 <= v52)
        {
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = (v54 + v53);
          v59 = v53 + 1;
          do
          {
            *(a2 + 1) = v59;
            v60 = *v58++;
            v57 |= (v60 & 0x7F) << v55;
            if ((v60 & 0x80) == 0)
            {
              goto LABEL_126;
            }

            v55 += 7;
            ++v59;
            v14 = v56++ > 8;
          }

          while (!v14);
LABEL_101:
          v57 = 0;
          goto LABEL_126;
        }

        v79 = 0;
        v80 = 0;
        v57 = 0;
        v81 = (v54 + v53);
        v18 = v52 >= v53;
        v82 = v52 - v53;
        if (!v18)
        {
          v82 = 0;
        }

        v83 = v53 + 1;
        while (2)
        {
          if (v82)
          {
            v84 = *v81;
            *(a2 + 1) = v83;
            v57 |= (v84 & 0x7F) << v79;
            if (v84 < 0)
            {
              v79 += 7;
              ++v81;
              --v82;
              ++v83;
              v14 = v80++ > 8;
              if (v14)
              {
                goto LABEL_101;
              }

              continue;
            }

            if (*(a2 + 24))
            {
              v57 = 0;
            }
          }

          else
          {
            v57 = 0;
            *(a2 + 24) = 1;
          }

          break;
        }

LABEL_126:
        *(this + 16) = v57;
        goto LABEL_83;
      case 9u:
        operator new();
      case 0xAu:
        v41 = *(this + 9);
        if (v41 >= *(this + 10))
        {
          v42 = std::vector<PB::Data>::__emplace_back_slow_path<>(this + 64);
        }

        else
        {
          *v41 = 0;
          v41[1] = 0;
          v42 = (v41 + 2);
        }

        *(this + 9) = v42;
        PB::Reader::read(a2, (v42 - 16));
        goto LABEL_83;
      case 0xBu:
        PB::PtrVector<drawing::Stroke>::emplace_back<>();
      case 0xCu:
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_140;
          }

          v25 = *(a2 + 1);
          v26 = *(a2 + 2);
          while (v25 < v26 && (*(a2 + 24) & 1) == 0)
          {
            v28 = *(this + 2);
            v27 = *(this + 3);
            if (v28 >= v27)
            {
              v30 = *(this + 1);
              v31 = v28 - v30;
              v32 = (v28 - v30) >> 2;
              v33 = v32 + 1;
              if ((v32 + 1) >> 62)
              {
                goto LABEL_142;
              }

              v34 = v27 - v30;
              if (v34 >> 1 > v33)
              {
                v33 = v34 >> 1;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v35 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v35 = v33;
              }

              if (v35)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this + 8, v35);
              }

              v36 = (v28 - v30) >> 2;
              v37 = (4 * v32);
              v38 = (4 * v32 - 4 * v36);
              *v37 = 0;
              v29 = v37 + 1;
              memcpy(v38, v30, v31);
              v39 = *(this + 1);
              *(this + 1) = v38;
              *(this + 2) = v29;
              *(this + 3) = 0;
              if (v39)
              {
                operator delete(v39);
              }
            }

            else
            {
              *v28 = 0;
              v29 = v28 + 4;
            }

            *(this + 2) = v29;
            v40 = *(a2 + 1);
            if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(a2 + 2))
            {
              *(a2 + 24) = 1;
              break;
            }

            *(v29 - 1) = *(*a2 + v40);
            v26 = *(a2 + 2);
            v25 = *(a2 + 1) + 4;
            *(a2 + 1) = v25;
          }

          PB::Reader::recallMark();
        }

        else
        {
          v71 = *(this + 2);
          v70 = *(this + 3);
          if (v71 >= v70)
          {
            v91 = *(this + 1);
            v92 = v71 - v91;
            v93 = (v71 - v91) >> 2;
            v94 = v93 + 1;
            if ((v93 + 1) >> 62)
            {
LABEL_142:
              std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
            }

            v95 = v70 - v91;
            if (v95 >> 1 > v94)
            {
              v94 = v95 >> 1;
            }

            if (v95 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v96 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v96 = v94;
            }

            if (v96)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this + 8, v96);
            }

            v97 = (v71 - v91) >> 2;
            v98 = (4 * v93);
            v99 = (4 * v93 - 4 * v97);
            *v98 = 0;
            v72 = v98 + 1;
            memcpy(v99, v91, v92);
            v100 = *(this + 1);
            *(this + 1) = v99;
            *(this + 2) = v72;
            *(this + 3) = 0;
            if (v100)
            {
              operator delete(v100);
            }
          }

          else
          {
            *v71 = 0;
            v72 = v71 + 4;
          }

          *(this + 2) = v72;
          v101 = *(a2 + 1);
          if (v101 <= 0xFFFFFFFFFFFFFFFBLL && v101 + 4 <= *(a2 + 2))
          {
            *(v72 - 1) = *(*a2 + v101);
            *(a2 + 1) += 4;
          }

          else
          {
            *(a2 + 24) = 1;
          }
        }

        break;
      case 0xDu:
        operator new();
      case 0xEu:
        *(this + 184) |= 2u;
        v62 = *(a2 + 1);
        v61 = *(a2 + 2);
        v63 = *a2;
        if (v62 <= 0xFFFFFFFFFFFFFFF5 && v62 + 10 <= v61)
        {
          v64 = 0;
          v65 = 0;
          v66 = 0;
          v67 = (v63 + v62);
          v68 = v62 + 1;
          do
          {
            *(a2 + 1) = v68;
            v69 = *v67++;
            v66 |= (v69 & 0x7F) << v64;
            if ((v69 & 0x80) == 0)
            {
              goto LABEL_129;
            }

            v64 += 7;
            ++v68;
            v14 = v65++ > 8;
          }

          while (!v14);
LABEL_109:
          v66 = 0;
          goto LABEL_129;
        }

        v85 = 0;
        v86 = 0;
        v66 = 0;
        v87 = (v63 + v62);
        v18 = v61 >= v62;
        v88 = v61 - v62;
        if (!v18)
        {
          v88 = 0;
        }

        v89 = v62 + 1;
        while (2)
        {
          if (v88)
          {
            v90 = *v87;
            *(a2 + 1) = v89;
            v66 |= (v90 & 0x7F) << v85;
            if (v90 < 0)
            {
              v85 += 7;
              ++v87;
              --v88;
              ++v89;
              v14 = v86++ > 8;
              if (v14)
              {
                goto LABEL_109;
              }

              continue;
            }

            if (*(a2 + 24))
            {
              v66 = 0;
            }
          }

          else
          {
            v66 = 0;
            *(a2 + 24) = 1;
          }

          break;
        }

LABEL_129:
        *(this + 12) = v66;
        goto LABEL_83;
      case 0xFu:
        operator new();
      case 0x10u:
        operator new();
      default:
        goto LABEL_18;
    }

    goto LABEL_83;
  }

  v4 = 0;
LABEL_138:
  v102 = v4 ^ 1;
  return v102 & 1;
}

const void ***drawing::Stroke::writeTo(drawing::Stroke *this, PB::Writer *a2)
{
  v4 = *(this + 15);
  if (v4)
  {
    PB::Writer::write(a2, v4);
  }

  v5 = *(this + 13);
  if (v5)
  {
    PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = *(this + 22);
  if (v6)
  {
    PB::Writer::writeSubmessage(a2, v6);
  }

  if (*(this + 184))
  {
    PB::Writer::writeVarInt(a2);
  }

  v7 = *(this + 14);
  if (v7)
  {
    PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = *(this + 4);
  if (v8)
  {
    PB::Writer::writeSubmessage(a2, v8);
  }

  v9 = *(this + 21);
  if (v9)
  {
    PB::Writer::writeSubmessage(a2, v9);
  }

  if ((*(this + 184) & 4) != 0)
  {
    PB::Writer::writeVarInt(a2);
  }

  v10 = *(this + 20);
  if (v10)
  {
    PB::Writer::writeSubmessage(a2, v10);
  }

  v11 = *(this + 8);
  v12 = *(this + 9);
  while (v11 != v12)
  {
    PB::Writer::write(a2, v11);
    v11 = (v11 + 16);
  }

  v13 = *(this + 17);
  v14 = *(this + 18);
  while (v13 != v14)
  {
    v15 = *v13++;
    PB::Writer::writeSubmessage(a2, v15);
  }

  v16 = *(this + 1);
  v17 = *(this + 2);
  while (v16 != v17)
  {
    v18 = *v16++;
    PB::Writer::write(a2, v18);
  }

  v19 = *(this + 5);
  if (v19)
  {
    PB::Writer::write(a2, v19);
  }

  if ((*(this + 184) & 2) != 0)
  {
    PB::Writer::writeVarInt(a2);
  }

  v20 = *(this + 7);
  if (v20)
  {
    PB::Writer::writeSubmessage(a2, v20);
  }

  v21 = *(this + 11);
  if (v21)
  {
    PB::Writer::write(a2, v21);
  }

  result = *(this + 24);
  if (result)
  {

    return PKProtobufUnknownFields::writeTo(result, a2);
  }

  return result;
}

uint64_t drawing::Stroke::operator==(uint64_t a1, uint64_t a2)
{
  result = PKProtobufUnknownFieldsCompare((a1 + 192), (a2 + 192));
  if (result)
  {
    v5 = *(a2 + 120);
    if (*(a1 + 120))
    {
      if (!v5 || (PB::Data::operator==() & 1) == 0 && *(a1 + 120) | *(a2 + 120))
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }

    v6 = *(a1 + 104);
    v7 = *(a2 + 104);
    if (v6)
    {
      if (!v7 || !drawing::StrokeID::operator==(v6, v7))
      {
        return 0;
      }
    }

    else if (v7)
    {
      return 0;
    }

    v8 = *(a1 + 176);
    v9 = *(a2 + 176);
    if (v8)
    {
      if (!v9 || !drawing::StrokeID::operator==(v8, v9))
      {
        return 0;
      }
    }

    else if (v9)
    {
      return 0;
    }

    if (*(a1 + 184))
    {
      if ((*(a2 + 184) & 1) == 0 || *(a1 + 48) != *(a2 + 48))
      {
        return 0;
      }
    }

    else if (*(a2 + 184))
    {
      return 0;
    }

    v10 = *(a1 + 112);
    v11 = *(a2 + 112);
    if (v10)
    {
      if (!v11 || !drawing::StrokeData::operator==(v10, v11) && *(a1 + 112) | *(a2 + 112))
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    v12 = *(a1 + 32);
    v13 = *(a2 + 32);
    if (v12)
    {
      if (!v13 || !drawing::Rectangle::operator==(v12, v13))
      {
        return 0;
      }
    }

    else if (v13)
    {
      return 0;
    }

    v14 = *(a1 + 168);
    v15 = *(a2 + 168);
    if (v14)
    {
      if (!v15 || !drawing::Transform::operator==(v14, v15))
      {
        return 0;
      }
    }

    else if (v15)
    {
      return 0;
    }

    if ((*(a1 + 184) & 4) != 0)
    {
      if ((*(a2 + 184) & 4) == 0 || *(a1 + 128) != *(a2 + 128))
      {
        return 0;
      }
    }

    else if ((*(a2 + 184) & 4) != 0)
    {
      return 0;
    }

    v16 = *(a1 + 160);
    v17 = *(a2 + 160);
    if (v16)
    {
      if (!v17 || !drawing::StrokeID::operator==(v16, v17))
      {
        return 0;
      }
    }

    else if (v17)
    {
      return 0;
    }

    v18 = *(a1 + 64);
    v19 = *(a1 + 72);
    v20 = *(a2 + 64);
    if (v19 - v18 != *(a2 + 72) - v20)
    {
      return 0;
    }

    while (v18 != v19)
    {
      result = PB::Data::operator==();
      if (!result)
      {
        return result;
      }

      v18 += 16;
      v20 += 16;
    }

    result = PB::PtrVector<drawing::Stroke>::operator==((a1 + 136), (a2 + 136));
    if (result)
    {
      v22 = *(a1 + 8);
      v21 = *(a1 + 16);
      v23 = *(a2 + 8);
      if (v21 - v22 == *(a2 + 16) - v23)
      {
        while (v22 != v21)
        {
          if (*v22 != *v23)
          {
            return 0;
          }

          ++v22;
          ++v23;
        }

        v24 = *(a2 + 40);
        if (*(a1 + 40))
        {
          if (!v24 || (PB::Data::operator==() & 1) == 0 && *(a1 + 40) | *(a2 + 40))
          {
            return 0;
          }
        }

        else if (v24)
        {
          return 0;
        }

        if ((*(a1 + 184) & 2) != 0)
        {
          if ((*(a2 + 184) & 2) == 0 || *(a1 + 96) != *(a2 + 96))
          {
            return 0;
          }
        }

        else if ((*(a2 + 184) & 2) != 0)
        {
          return 0;
        }

        v25 = *(a1 + 56);
        v26 = *(a2 + 56);
        if (v25)
        {
          if (!v26 || !drawing::Transform::operator==(v25, v26))
          {
            return 0;
          }

LABEL_74:
          if (!*(a1 + 88))
          {
            return *(a2 + 88) == 0;
          }

          if (*(a2 + 88))
          {
            if (PB::Data::operator==())
            {
              return 1;
            }

            if (!*(a1 + 88))
            {
              return *(a2 + 88) == 0;
            }
          }

          return 0;
        }

        if (!v26)
        {
          goto LABEL_74;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t PB::PtrVector<drawing::Stroke>::operator==(void *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if ((v2 - *a1) != (a2[1] - *a2))
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  do
  {
    result = drawing::Stroke::operator==(*v3, *v4);
    if (!result)
    {
      break;
    }

    ++v3;
    ++v4;
  }

  while (v3 != a1[1]);
  return result;
}

uint64_t drawing::Stroke::hash_value(drawing::Stroke *this)
{
  if (*(this + 15))
  {
    v2 = PBHashBytes();
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 13);
  if (!v3)
  {
    v39 = 0;
    goto LABEL_14;
  }

  if ((*(v3 + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(v3 + 32) & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    v5 = 0;
    if ((*(v3 + 32) & 4) != 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  v4 = *(v3 + 8);
  if ((*(v3 + 32) & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v5 = *(v3 + 16);
  if ((*(v3 + 32) & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v6 = *(v3 + 24);
LABEL_13:
  v39 = v5 ^ v4 ^ v6;
LABEL_14:
  v7 = *(this + 22);
  if (!v7)
  {
    v38 = 0;
    goto LABEL_24;
  }

  if ((*(v7 + 32) & 1) == 0)
  {
    v8 = 0;
    if ((*(v7 + 32) & 2) != 0)
    {
      goto LABEL_17;
    }

LABEL_21:
    v9 = 0;
    if ((*(v7 + 32) & 4) != 0)
    {
      goto LABEL_18;
    }

LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  v8 = *(v7 + 8);
  if ((*(v7 + 32) & 2) == 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v9 = *(v7 + 16);
  if ((*(v7 + 32) & 4) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  v10 = *(v7 + 24);
LABEL_23:
  v38 = v9 ^ v8 ^ v10;
LABEL_24:
  v40 = v2;
  if (*(this + 184))
  {
    v37 = *(this + 6);
  }

  else
  {
    v37 = 0;
  }

  v11 = *(this + 14);
  if (v11)
  {
    v36 = drawing::StrokeData::hash_value(v11);
  }

  else
  {
    v36 = 0;
  }

  v12 = *(this + 4);
  if (v12)
  {
    v35 = drawing::Rectangle::hash_value(v12);
  }

  else
  {
    v35 = 0;
  }

  v13 = *(this + 21);
  if (v13)
  {
    v14 = drawing::Transform::hash_value(v13);
  }

  else
  {
    v14 = 0;
  }

  if ((*(this + 184) & 4) != 0)
  {
    v15 = *(this + 16);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(this + 20);
  if (!v16)
  {
    v20 = 0;
    goto LABEL_49;
  }

  if ((*(v16 + 32) & 1) == 0)
  {
    v17 = 0;
    if ((*(v16 + 32) & 2) != 0)
    {
      goto LABEL_42;
    }

LABEL_46:
    v18 = 0;
    if ((*(v16 + 32) & 4) != 0)
    {
      goto LABEL_43;
    }

LABEL_47:
    v19 = 0;
    goto LABEL_48;
  }

  v17 = *(v16 + 8);
  if ((*(v16 + 32) & 2) == 0)
  {
    goto LABEL_46;
  }

LABEL_42:
  v18 = *(v16 + 16);
  if ((*(v16 + 32) & 4) == 0)
  {
    goto LABEL_47;
  }

LABEL_43:
  v19 = *(v16 + 24);
LABEL_48:
  v20 = v18 ^ v17 ^ v19;
LABEL_49:
  v21 = *(this + 8);
  v22 = *(this + 9);
  if (v21 == v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = 0;
    do
    {
      v21 += 16;
      v23 ^= PBHashBytes();
    }

    while (v21 != v22);
  }

  v24 = *(this + 17);
  v25 = *(this + 18);
  if (v24 == v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = 0;
    do
    {
      v27 = *v24++;
      v26 ^= drawing::Stroke::hash_value(v27);
    }

    while (v24 != v25);
  }

  v28 = PBHashBytes();
  if (*(this + 5))
  {
    v29 = PBHashBytes();
  }

  else
  {
    v29 = 0;
  }

  if ((*(this + 184) & 2) != 0)
  {
    v30 = *(this + 12);
  }

  else
  {
    v30 = 0;
  }

  v31 = *(this + 7);
  if (v31)
  {
    v32 = drawing::Transform::hash_value(v31);
  }

  else
  {
    v32 = 0;
  }

  if (*(this + 11))
  {
    v33 = PBHashBytes();
  }

  else
  {
    v33 = 0;
  }

  return v39 ^ v40 ^ v38 ^ v37 ^ v36 ^ v35 ^ v14 ^ v15 ^ v20 ^ v23 ^ v26 ^ v28 ^ v29 ^ v30 ^ v32 ^ v33;
}

uint64_t drawing::Stroke::makeSortID(uint64_t this)
{
  if (!*(this + 104))
  {
    operator new();
  }

  return this;
}

uint64_t drawing::Stroke::makeVersion(uint64_t this)
{
  if (!*(this + 176))
  {
    operator new();
  }

  return this;
}

uint64_t drawing::Stroke::makeStrokeData(uint64_t this)
{
  if (!*(this + 112))
  {
    operator new();
  }

  return this;
}

uint64_t drawing::Stroke::makeBounds(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t drawing::Stroke::makeTransform(uint64_t this)
{
  if (!*(this + 168))
  {
    operator new();
  }

  return this;
}

uint64_t drawing::Stroke::makeSubstrokesVersion(uint64_t this)
{
  if (!*(this + 160))
  {
    operator new();
  }

  return this;
}

uint64_t drawing::Stroke::makeInkTransform(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

void std::vector<std::unique_ptr<drawing::Stroke>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<PB::Data>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 2);
        v4 -= 16;
        free(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<PB::Data>::__assign_with_size[abi:ne200100]<PB::Data*,PB::Data*>(uint64_t a1, PB::Data *a2, PB::Data *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 4)
  {
    std::vector<PB::Data>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = *(a1 + 16) - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<PB::Data>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  v12 = *(a1 + 8) - v8;
  if (a4 <= v12 >> 4)
  {
    std::__copy_impl::operator()[abi:ne200100]<PB::Data *,PB::Data *,PB::Data *>(&v18, a2, a3, v8);
    v14 = v13;
    v15 = *(a1 + 8);
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 16);
        v15 -= 16;
        free(v16);
      }

      while (v15 != v14);
    }

    *(a1 + 8) = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<PB::Data *,PB::Data *,PB::Data *>(&v17, a2, (a2 + v12), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<PB::Data>,PB::Data*,PB::Data*,PB::Data*>(a1, (a2 + v12), a3, *(a1 + 8));
  }
}

void std::vector<PB::Data>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 2);
        v3 -= 16;
        free(v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<PB::Data>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PB::Data>>(a1, a2);
  }

  std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
}

PB::Data *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<PB::Data>,PB::Data*,PB::Data*,PB::Data*>(int a1, PB::Data *a2, PB::Data *a3, PB::Data *this)
{
  if (a2 == a3)
  {
    return this;
  }

  v5 = a2;
  v6 = 0;
  result = this;
  do
  {
    v8 = PB::Data::Data(result, v5);
    v5 = (v5 + 16);
    result = (v8 + 16);
    v6 -= 16;
  }

  while (v5 != a3);
  return result;
}

void sub_1C7D96BC4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = -v2;
    v5 = v1 - 16;
    do
    {
      free(*(v5 + v4));
      v4 -= 16;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

PB::Data *std::__copy_impl::operator()[abi:ne200100]<PB::Data *,PB::Data *,PB::Data *>(int a1, PB::Data *a2, PB::Data *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      PB::Data::Data(&v8, v5);
      free(v8);
      v5 = (v5 + 16);
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PB::Data>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::unique_ptr<drawing::Stroke>>::__vdeallocate(void **a1)
{
  if (*a1)
  {
    std::vector<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::vector<PB::Data>::__emplace_back_slow_path<>(uint64_t a1)
{
  v1 = (*(a1 + 8) - *a1) >> 4;
  v2 = v1 + 1;
  if ((v1 + 1) >> 60)
  {
    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  v4 = *(a1 + 16) - *a1;
  if (v4 >> 3 > v2)
  {
    v2 = v4 >> 3;
  }

  if (v4 >= 0x7FFFFFFFFFFFFFF0)
  {
    v5 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v2;
  }

  v16 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PB::Data>>(a1, v5);
  }

  v6 = (16 * v1);
  v13 = 0;
  v14 = v6;
  *(&v15 + 1) = 0;
  *v6 = 0;
  v6[1] = 0;
  *&v15 = 16 * v1 + 16;
  v7 = *(a1 + 8);
  v8 = 16 * v1 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PB::Data>,PB::Data*>(a1, *a1, v7, (v6 + *a1 - v7));
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<PB::Data>::~__split_buffer(&v13);
  return v12;
}

void sub_1C7D96E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<PB::Data>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PB::Data>,PB::Data*>(int a1, void **a2, PB::Data *a3, PB::Data *this)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    v7 = a2;
    do
    {
      v9 = PB::Data::Data(this, v7);
      v7 = (v7 + 16);
      this = (v9 + 16);
      v6 -= 16;
    }

    while (v7 != a3);
    do
    {
      v10 = *v5;
      v5 += 2;
      free(v10);
    }

    while (v5 != a3);
  }
}

void sub_1C7D96E9C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = -v2;
    v5 = v1 - 16;
    do
    {
      free(*(v5 + v4));
      v4 -= 16;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<PB::Data>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 16);
    *(a1 + 16) = i - 16;
    free(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

id PKPaletteEraserNameForEraserType(uint64_t a1)
{
  v2 = _PencilKitBundle();
  v3 = v2;
  if (a1)
  {
    v4 = @"Object Eraser";
  }

  else
  {
    v4 = @"Pixel Eraser";
  }

  v5 = [v2 localizedStringForKey:v4 value:v4 table:@"Localizable"];

  return v5;
}

uint64_t drawingV1::Color::Color(uint64_t this)
{
  *this = &unk_1F4768C18;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_1F4768C18;
  *(this + 24) = 0;
  return this;
}

void drawingV1::Color::~Color(drawingV1::Color *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA6ECB0);
}

float drawingV1::Color::Color(drawingV1::Color *this, const drawingV1::Color *a2)
{
  *this = &unk_1F4768C18;
  *(this + 6) = 0;
  v2 = *(a2 + 24);
  if ((v2 & 8) != 0)
  {
    result = *(a2 + 5);
    v3 = 8;
    *(this + 24) = 8;
    *(this + 5) = result;
    v2 = *(a2 + 24);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 24) & 4) != 0)
  {
LABEL_5:
    result = *(a2 + 4);
    v3 |= 4u;
    *(this + 24) = v3;
    *(this + 4) = result;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 2) == 0)
  {
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 2);
    *(this + 24) = v3 | 1;
    *(this + 2) = result;
    return result;
  }

  result = *(a2 + 3);
  v3 |= 2u;
  *(this + 24) = v3;
  *(this + 3) = result;
  if (*(a2 + 24))
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t drawingV1::Color::operator=(uint64_t a1, const drawingV1::Color *a2)
{
  if (a1 != a2)
  {
    drawingV1::Color::Color(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(&v6);
  }

  return a1;
}

float drawingV1::swap(drawingV1 *this, drawingV1::Color *a2, drawingV1::Color *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

float drawingV1::Color::Color(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4768C18;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 12) = *(a2 + 12);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_1F4768C18;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 12) = *(a2 + 12);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t drawingV1::Color::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_1F4768C18;
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v9 = *(a1 + 24);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 24) = v3;
    *(a1 + 8) = v5;
    v8 = v4;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t drawingV1::Color::formatText(drawingV1::Color *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    PB::TextFormatter::format(a2, "alpha", *(this + 2));
    v5 = *(this + 24);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "blue", *(this + 3));
  v5 = *(this + 24);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "green", *(this + 4));
  if ((*(this + 24) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "red", *(this + 5));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t drawingV1::Color::readFrom(drawingV1::Color *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        *(this + 24) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
LABEL_36:
          *(a2 + 24) = 1;
          goto LABEL_39;
        }

        *(this + 3) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 4)
      {
        *(this + 24) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_38;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 24) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 5) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 2)
      {
        *(this + 24) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 4) = *(*a2 + v2);
LABEL_38:
        v2 = *(a2 + 1) + 4;
        *(a2 + 1) = v2;
        goto LABEL_39;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_39:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t drawingV1::Color::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(this + 20));
    v4 = *(v3 + 24);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 12));
      if ((*(v3 + 24) & 1) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 24);
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5);
}

BOOL drawingV1::Color::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 8) != 0)
  {
    if ((*(a2 + 24) & 8) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 24) & 4) != 0)
  {
    if ((*(a2 + 24) & 4) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    if ((*(a2 + 24) & 2) == 0 || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 1) == 0;
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t drawingV1::Color::hash_value(drawingV1::Color *this)
{
  if ((*(this + 24) & 8) == 0)
  {
    v1 = 0;
    if ((*(this + 24) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v3 = 0;
    if ((*(this + 24) & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v8 = *(this + 5);
  v1 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v1 = 0;
  }

  if ((*(this + 24) & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 4);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 24) & 2) != 0)
  {
LABEL_6:
    v4 = *(this + 3);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if (*(this + 24))
    {
      goto LABEL_9;
    }

LABEL_17:
    v7 = 0;
    return v3 ^ v1 ^ v5 ^ v7;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = *(this + 2);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  return v3 ^ v1 ^ v5 ^ v7;
}

uint64_t _PKStrokeIDCompare(_PKStrokeID *a1, _PKStrokeID *a2)
{
  if (a1->clock < a2->clock)
  {
    return -1;
  }

  if (a1->clock > a2->clock)
  {
    return 1;
  }

  v5 = uuid_compare(a1->replicaUUID, a2->replicaUUID);
  if (v5 < 0)
  {
    result = -1;
  }

  else
  {
    result = v5 != 0;
  }

  if (result != -1 && result != 1)
  {
    subclock = a1->subclock;
    v8 = a2->subclock;
    v9 = subclock >= v8;
    v10 = subclock > v8;
    if (v9)
    {
      return v10;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

BOOL _PKStrokeIDEqual(_PKStrokeID *a1, _PKStrokeID *a2)
{
  if (a1->clock != a2->clock)
  {
    return 0;
  }

  if (uuid_compare(a1->replicaUUID, a2->replicaUUID))
  {
    return 0;
  }

  return a1->subclock == a2->subclock;
}

__n128 _PKStrokeIDCreate@<Q0>(__n128 *a1@<X1>, int a2@<W0>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a2;
  result = *a1;
  *(a4 + 4) = *a1;
  *(a4 + 20) = a3;
  return result;
}

double PKLengthOfPointArray(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 - 1;
  if (v2 == 1)
  {
    return 0.0;
  }

  if (v2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = (*(a1 + 8) - *a1) >> 4;
  }

  v5 = v4 - 1;
  if (v2 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = (*(a1 + 8) - *a1) >> 4;
  }

  if (v6 >= v2 - 2)
  {
    v6 = v2 - 2;
  }

  if (v2 == v6 || v5 == v6)
  {
    std::vector<double>::__throw_out_of_range[abi:ne200100]();
  }

  v9 = *v1;
  v8 = v1[1];
  v7 = v1 + 3;
  result = 0.0;
  do
  {
    v11 = *(v7 - 1);
    v12 = *v7;
    result = result + sqrt((v8 - *v7) * (v8 - *v7) + (v9 - v11) * (v9 - v11));
    v7 += 2;
    v8 = v12;
    v9 = v11;
    --v3;
  }

  while (v3);
  return result;
}

void _PKSplitPathApplier(void **a1, const CGPathElement *a2)
{
  type = a2->type;
  if (a2->type <= kCGPathElementAddLineToPoint)
  {
    if (type)
    {
      if (type != kCGPathElementAddLineToPoint)
      {
        return;
      }

      v7 = a1[1];
      if (v7 == *a1)
      {
        goto LABEL_40;
      }

      v8 = *(v7 - 1);
      points = a2->points;
      x = points->x;
      y = points->y;

      CGPathAddLineToPoint(v8, 0, x, y);
    }

    else
    {
      Mutable = CGPathCreateMutable();
      v29 = Mutable;
      v31 = a1[1];
      v30 = a1[2];
      if (v31 >= v30)
      {
        v33 = *a1;
        v34 = v31 - *a1;
        v35 = v34 >> 3;
        v36 = (v34 >> 3) + 1;
        if (v36 >> 61)
        {
          std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
        }

        v37 = v30 - v33;
        if (v37 >> 2 > v36)
        {
          v36 = v37 >> 2;
        }

        if (v37 >= 0x7FFFFFFFFFFFFFF8)
        {
          v38 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v36;
        }

        if (v38)
        {
          if (!(v38 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v35) = Mutable;
        v32 = 8 * v35 + 8;
        memcpy(0, v33, v34);
        *a1 = 0;
        a1[1] = v32;
        a1[2] = 0;
        if (v33)
        {
          operator delete(v33);
        }
      }

      else
      {
        *v31 = Mutable;
        v32 = (v31 + 1);
      }

      a1[1] = v32;
      v39 = a2->points;
      v40 = v39->x;
      v41 = v39->y;

      CGPathMoveToPoint(v29, 0, v40, v41);
    }
  }

  else
  {
    switch(type)
    {
      case kCGPathElementAddQuadCurveToPoint:
        v12 = a1[1];
        if (v12 == *a1)
        {
          goto LABEL_40;
        }

        v13 = *(v12 - 1);
        v14 = a2->points;
        v15 = v14->x;
        v16 = v14->y;
        v17 = v14[1].x;
        v18 = v14[1].y;

        CGPathAddQuadCurveToPoint(v13, 0, v15, v16, v17, v18);
        break;
      case kCGPathElementAddCurveToPoint:
        v19 = a1[1];
        if (v19 == *a1)
        {
          goto LABEL_40;
        }

        v20 = *(v19 - 1);
        v21 = a2->points;
        v22 = v21->x;
        v23 = v21->y;
        v24 = v21[1].x;
        v25 = v21[1].y;
        v26 = v21[2].x;
        v27 = v21[2].y;

        CGPathAddCurveToPoint(v20, 0, v22, v23, v24, v25, v26, v27);
        break;
      case kCGPathElementCloseSubpath:
        v5 = a1[1];
        if (v5 != *a1)
        {
          v6 = *(v5 - 1);

          CGPathCloseSubpath(v6);
          return;
        }

LABEL_40:
        std::vector<double>::__throw_out_of_range[abi:ne200100]();
      default:
        return;
    }
  }
}

void CGPathAddFlattenedCurve(CGPath *a1, CGPoint a2, CGPoint a3, CGPoint a4, double a5)
{
  x = a4.x;
  y = a4.y;
  v45 = a3.y;
  v41 = a2.y;
  v43 = a3.x;
  v39 = a2.x;
  CurrentPoint = CGPathGetCurrentPoint(a1);
  v9.f64[0] = CurrentPoint.y;
  v8.f64[0] = v41;
  v8.f64[1] = v39;
  v9.f64[1] = CurrentPoint.x;
  v10 = vsubq_f64(v8, v9);
  v11 = v8;
  v8.f64[0] = v45;
  v8.f64[1] = v43;
  v12.f64[0] = y;
  v12.f64[1] = x;
  v13 = vsubq_f64(v8, v11);
  v14 = vsubq_f64(v12, v8);
  v15 = vsubq_f64(v13, v10);
  v16 = vsubq_f64(v14, v13);
  v17 = vzip1q_s64(v15, v16);
  v18 = vzip2q_s64(v15, v16);
  v19 = vmlaq_f64(vmulq_f64(v17, v17), v18, v18);
  if (v19.f64[0] <= v19.f64[1])
  {
    v19.f64[0] = v19.f64[1];
  }

  v20 = v19.f64[0] * 9.0 * 0.0625;
  if (v20 > a5 * a5)
  {
    v21 = vsubq_f64(v16, v15);
    __asm
    {
      FMOV            V5.2D, #3.0
      FMOV            V6.2D, #6.0
    }

    v28 = vmulq_f64(v21, _Q6);
    v29 = vmlaq_f64(v21, _Q5, vaddq_f64(v10, v15));
    v30 = vmulq_f64(vaddq_f64(v15, v21), _Q6);
    v31 = 1;
    __asm
    {
      FMOV            V2.2D, #0.125
      FMOV            V3.2D, #0.25
      FMOV            V4.2D, #0.5
    }

    do
    {
      v35 = v31;
      v28 = vmulq_f64(v28, _Q2);
      v30 = vsubq_f64(vmulq_f64(v30, _Q3), v28);
      v29 = vsubq_f64(vmulq_f64(v29, _Q4), vmulq_f64(v30, _Q4));
      v31 *= 2;
      v20 = v20 * 0.0625;
    }

    while (v20 > a5 * a5 && v31 <= 0x10000);
    if (v31 >= 2)
    {
      v36 = (2 * v35) | 1;
      do
      {
        v44 = v28;
        v46 = vaddq_f64(v29, v9);
        v40 = vaddq_f64(v28, v30);
        v42 = vaddq_f64(v29, v30);
        CGPathAddLineToPoint(a1, 0, v46.f64[1], v46.f64[0]);
        v30 = v40;
        v29 = v42;
        v28 = v44;
        v9 = v46;
        --v36;
      }

      while (v36 > 2);
    }
  }

  CGPathAddLineToPoint(a1, 0, x, y);
}

void CGPathAddFlattenedQuadCurve(CGPath *a1, CGPoint a2, CGPoint a3, double a4)
{
  y = a3.y;
  x = a3.x;
  v7 = a2.y;
  v8 = a2.x;
  CurrentPoint = CGPathGetCurrentPoint(a1);
  v11 = x;
  v12 = y;

  v15.x = (x + v8 * 2.0) / 3.0;
  v15.y = (y + v7 * 2.0) / 3.0;
  v14.x = (CurrentPoint.x + v8 * 2.0) / 3.0;
  v14.y = (CurrentPoint.y + v7 * 2.0) / 3.0;
  CGPathAddFlattenedCurve(a1, v14, v15, *&v11, a4);
}

void _PKAddFlattenedElementApplier(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        CGPathAddLineToPoint(*a1, 0, **(a2 + 8), *(*(a2 + 8) + 8));
      }
    }

    else
    {
      CGPathMoveToPoint(*a1, 0, **(a2 + 8), *(*(a2 + 8) + 8));
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        CGPathAddFlattenedQuadCurve(*a1, **(a2 + 8), *(*(a2 + 8) + 16), *(a1 + 8));
        break;
      case 3:
        CGPathAddFlattenedCurve(*a1, **(a2 + 8), *(*(a2 + 8) + 16), *(*(a2 + 8) + 32), *(a1 + 8));
        break;
      case 4:
        CGPathCloseSubpath(*a1);
        break;
    }
  }
}

void _PKControlPointsFromFlattenedPathApplier(void *a1, uint64_t a2)
{
  if (*a2 != 4)
  {
    if (*a2 > 1u)
    {
      __assert_rtn("_PKControlPointsFromFlattenedPathApplier", "PKCGPathUtility.mm", 218, "element->type == kCGPathElementCloseSubpath");
    }

    v3 = *(a2 + 8);

LABEL_5:
    std::vector<CGPoint>::push_back[abi:ne200100](a1, v3);
    return;
  }

  v3 = *a1;
  if (a1[1] != *a1)
  {

    goto LABEL_5;
  }
}

void PKPointsFromPath(const CGPath *a1, uint64_t *a2, double a3, double a4)
{
  if (a1)
  {
    Mutable = CGPathCreateMutable();
    info[0] = Mutable;
    v9 = 0.01;
    if (a4 > 0.0)
    {
      v9 = a4;
    }

    *&info[1] = v9;
    CGPathApply(a1, info, _PKAddFlattenedElementApplier);
    CGPathApply(Mutable, a2, _PKControlPointsFromFlattenedPathApplier);
    CGPathRelease(Mutable);
    v10 = *a2;
    v11 = a2[1];
    v12 = (v11 - *a2) >> 4;
    if (a3 < 1.79769313e308 && v12 >= 2)
    {
      __p = 0;
      v15 = 0;
      v16 = 0;
      std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(&__p, v10, v11, v12);
      PKPointsFromLineSegments(&__p, a2, a3);
      if (__p)
      {
        v15 = __p;
        operator delete(__p);
      }
    }
  }
}

void sub_1C7D9C094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PKPointsFromLineSegments(uint64_t *a1, void *a2, double a3)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = ((v6 - *a1) >> 4) - 1;
  std::vector<CGPoint>::resize(a2, 0);
  if (v6 != v7 && v8 != 0)
  {
    v10 = 0;
    do
    {
      v11 = v10 + 1;
      v12 = *(*a1 + 16 * v10);
      v13 = *(*a1 + 16 * (v10 + 1));
      v14 = vsubq_f64(v12, v13);
      v15 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v14, v14).f64[1]) + v14.f64[0] * v14.f64[0]);
      if (v15 != 0.0)
      {
        if (a3 <= 0.0)
        {
          v16 = 1;
        }

        else
        {
          v16 = vcvtpd_u64_f64(v15 / a3);
        }

        v17 = 0;
        v18 = vsubq_f64(v13, v12);
        v19 = *(*a1 + 16 * v10);
        do
        {
          v20 = vaddq_f64(v12, vmulq_n_f64(v18, v17 / v16));
          std::vector<CGPoint>::push_back[abi:ne200100](a2, &v20);
          v12 = v19;
          ++v17;
        }

        while (v17 <= v16);
      }

      v10 = v11;
    }

    while (v11 != v8);
  }
}

void std::vector<CGPoint>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<CGPoint>::__append(a1, a2 - v2);
  }
}

void PKArcLengthsFromPointArray(uint64_t *a1, const void **a2)
{
  v5 = a2[1];
  v4 = a2[2];
  if (v5 >= v4)
  {
    v7 = *a2;
    v8 = v5 - *a2;
    v9 = v8 >> 3;
    v10 = (v8 >> 3) + 1;
    if (v10 >> 61)
    {
LABEL_31:
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a2, v13);
    }

    *(8 * v9) = 0;
    v6 = (8 * v9 + 8);
    memcpy(0, v7, v8);
    v14 = *a2;
    *a2 = 0;
    a2[1] = v6;
    a2[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = 0;
    v6 = (v5 + 1);
  }

  a2[1] = v6;
  v15 = *a1;
  v16 = a1[1] - *a1;
  if (v16 != 16)
  {
    v17 = 0;
    v18 = 0;
    v19 = v16 >> 4;
    do
    {
      if (v19 <= v18 || (++v18, v19 <= v18))
      {
        std::vector<double>::__throw_out_of_range[abi:ne200100]();
      }

      v20 = (v15 + v17);
      v21 = sqrt((v20[1] - v20[3]) * (v20[1] - v20[3]) + (*v20 - v20[2]) * (*v20 - v20[2]));
      v22 = a2[2];
      if (v6 >= v22)
      {
        v23 = *a2;
        v24 = v6 - *a2;
        v25 = v24 >> 3;
        v26 = (v24 >> 3) + 1;
        if (v26 >> 61)
        {
          goto LABEL_31;
        }

        v27 = v22 - v23;
        if (v27 >> 2 > v26)
        {
          v26 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a2, v28);
        }

        *(8 * v25) = v21;
        v6 = (8 * v25 + 8);
        memcpy(0, v23, v24);
        v29 = *a2;
        *a2 = 0;
        a2[1] = v6;
        a2[2] = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        *v6++ = v21;
      }

      a2[1] = v6;
      v15 = *a1;
      v19 = (a1[1] - *a1) >> 4;
      v17 += 16;
    }

    while (v19 - 1 > v18);
  }
}

void std::vector<CGPoint>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t drawing::Transform::Transform(uint64_t this)
{
  *this = &unk_1F4768C88;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F4768C88;
  *(this + 32) = 0;
  return this;
}

void drawing::Transform::~Transform(drawing::Transform *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA6ECB0);
}

float drawing::Transform::Transform(drawing::Transform *this, const drawing::Transform *a2)
{
  *this = &unk_1F4768C88;
  *(this + 8) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    result = *(a2 + 2);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 2) = result;
    v2 = *(a2 + 32);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 3);
    v3 |= 2u;
    *(this + 32) = v3;
    *(this + 3) = result;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result = *(a2 + 4);
    v3 |= 4u;
    *(this + 32) = v3;
    *(this + 4) = result;
    v2 = *(a2 + 32);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 5);
  v3 |= 8u;
  *(this + 32) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 32);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      return result;
    }

LABEL_14:
    result = *(a2 + 7);
    *(this + 32) = v3 | 0x20;
    *(this + 7) = result;
    return result;
  }

LABEL_13:
  result = *(a2 + 6);
  v3 |= 0x10u;
  *(this + 32) = v3;
  *(this + 6) = result;
  if ((*(a2 + 32) & 0x20) != 0)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t drawing::Transform::operator=(uint64_t a1, const drawing::Transform *a2)
{
  if (a1 != a2)
  {
    drawing::Transform::Transform(v6, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    *&v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

float drawing::swap(drawing *this, drawing::Transform *a2, drawing::Transform *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v8;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  return result;
}

float drawing::Transform::Transform(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4768C88;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 28);
  *(a1 + 28) = result;
  return result;
}

{
  *a1 = &unk_1F4768C88;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 28);
  *(a1 + 28) = result;
  return result;
}

uint64_t drawing::Transform::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_1F4768C88;
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v11 = *(a1 + 32);
    v4 = *(a2 + 8);
    v9 = *(a1 + 8);
    v5 = *(a1 + 24);
    v6 = *(a2 + 24);
    *(a1 + 32) = v3;
    *(a1 + 8) = v4;
    *(a1 + 24) = v6;
    v10 = v5;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t drawing::Transform::formatText(drawing::Transform *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if (v5)
  {
    PB::TextFormatter::format(a2, "a", *(this + 2));
    v5 = *(this + 32);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "b", *(this + 3));
  v5 = *(this + 32);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "c", *(this + 4));
  v5 = *(this + 32);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "d", *(this + 5));
  v5 = *(this + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "tx", *(this + 6));
  if ((*(this + 32) & 0x20) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(a2, "ty", *(this + 7));
  }

LABEL_8:

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t drawing::Transform::readFrom(drawing::Transform *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 3)
    {
      switch(v22)
      {
        case 4:
          *(this + 32) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_44:
            *(a2 + 24) = 1;
            goto LABEL_47;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_46;
        case 5:
          *(this + 32) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_46;
        case 6:
          *(this + 32) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_46;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          *(this + 32) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_46;
        case 2:
          *(this + 32) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_46;
        case 3:
          *(this + 32) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 4) = *(*a2 + v2);
LABEL_46:
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
          goto LABEL_47;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_47:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t drawing::Transform::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 32);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 12));
  v4 = *(v3 + 32);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 32);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = PB::Writer::write(a2, *(v3 + 24));
    if ((*(v3 + 32) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 32);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v5 = *(v3 + 28);

  return PB::Writer::write(a2, v5);
}

BOOL drawing::Transform::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 2) != 0)
  {
    if ((*(a2 + 32) & 2) == 0 || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 0x10) != 0)
  {
    if ((*(a2 + 32) & 0x10) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 0x10) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 0x20) == 0;
  if ((*(a1 + 32) & 0x20) != 0)
  {
    return (*(a2 + 32) & 0x20) != 0 && *(a1 + 28) == *(a2 + 28);
  }

  return v2;
}

uint64_t drawing::Transform::hash_value(drawing::Transform *this)
{
  if ((*(this + 32) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    v3 = 0;
    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    v5 = 0;
    if ((*(this + 32) & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v7 = 0;
    if ((*(this + 32) & 0x10) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v12 = *(this + 2);
  v1 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v1 = 0;
  }

  if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_21;
  }

LABEL_3:
  v2 = *(this + 3);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  v4 = *(this + 4);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  v6 = *(this + 5);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 32) & 0x10) != 0)
  {
LABEL_12:
    v8 = *(this + 6);
    v9 = LODWORD(v8);
    if (v8 == 0.0)
    {
      v9 = 0;
    }

    if ((*(this + 32) & 0x20) != 0)
    {
      goto LABEL_15;
    }

LABEL_25:
    v11 = 0;
    return v3 ^ v1 ^ v5 ^ v7 ^ v9 ^ v11;
  }

LABEL_24:
  v9 = 0;
  if ((*(this + 32) & 0x20) == 0)
  {
    goto LABEL_25;
  }

LABEL_15:
  v10 = *(this + 7);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  return v3 ^ v1 ^ v5 ^ v7 ^ v9 ^ v11;
}

uint64_t legacy_drawing::Color::Color(uint64_t this)
{
  *this = &unk_1F4768CD8;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_1F4768CD8;
  *(this + 24) = 0;
  return this;
}

void legacy_drawing::Color::~Color(legacy_drawing::Color *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA6ECB0);
}

float legacy_drawing::Color::Color(legacy_drawing::Color *this, const legacy_drawing::Color *a2)
{
  *this = &unk_1F4768CD8;
  *(this + 6) = 0;
  v2 = *(a2 + 24);
  if ((v2 & 8) != 0)
  {
    result = *(a2 + 5);
    v3 = 8;
    *(this + 24) = 8;
    *(this + 5) = result;
    v2 = *(a2 + 24);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 24) & 4) != 0)
  {
LABEL_5:
    result = *(a2 + 4);
    v3 |= 4u;
    *(this + 24) = v3;
    *(this + 4) = result;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 2) == 0)
  {
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 2);
    *(this + 24) = v3 | 1;
    *(this + 2) = result;
    return result;
  }

  result = *(a2 + 3);
  v3 |= 2u;
  *(this + 24) = v3;
  *(this + 3) = result;
  if (*(a2 + 24))
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t legacy_drawing::Color::operator=(uint64_t a1, const legacy_drawing::Color *a2)
{
  if (a1 != a2)
  {
    legacy_drawing::Color::Color(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(&v6);
  }

  return a1;
}

float legacy_drawing::swap(legacy_drawing *this, legacy_drawing::Color *a2, legacy_drawing::Color *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

float legacy_drawing::Color::Color(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4768CD8;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 12) = *(a2 + 12);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_1F4768CD8;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 12) = *(a2 + 12);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t legacy_drawing::Color::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_1F4768CD8;
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v9 = *(a1 + 24);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 24) = v3;
    *(a1 + 8) = v5;
    v8 = v4;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t legacy_drawing::Color::formatText(legacy_drawing::Color *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    PB::TextFormatter::format(a2, "alpha", *(this + 2));
    v5 = *(this + 24);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "blue", *(this + 3));
  v5 = *(this + 24);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "green", *(this + 4));
  if ((*(this + 24) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "red", *(this + 5));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t legacy_drawing::Color::readFrom(legacy_drawing::Color *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        *(this + 24) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
LABEL_36:
          *(a2 + 24) = 1;
          goto LABEL_39;
        }

        *(this + 3) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 4)
      {
        *(this + 24) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_38;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 24) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 5) = *(*a2 + v2);
        goto LABEL_38;
      }

      if (v22 == 2)
      {
        *(this + 24) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_36;
        }

        *(this + 4) = *(*a2 + v2);
LABEL_38:
        v2 = *(a2 + 1) + 4;
        *(a2 + 1) = v2;
        goto LABEL_39;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_39:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t legacy_drawing::Color::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(this + 20));
    v4 = *(v3 + 24);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 12));
      if ((*(v3 + 24) & 1) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 24);
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5);
}

BOOL legacy_drawing::Color::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 8) != 0)
  {
    if ((*(a2 + 24) & 8) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 24) & 4) != 0)
  {
    if ((*(a2 + 24) & 4) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    if ((*(a2 + 24) & 2) == 0 || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 1) == 0;
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t legacy_drawing::Color::hash_value(legacy_drawing::Color *this)
{
  if ((*(this + 24) & 8) == 0)
  {
    v1 = 0;
    if ((*(this + 24) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v3 = 0;
    if ((*(this + 24) & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v8 = *(this + 5);
  v1 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v1 = 0;
  }

  if ((*(this + 24) & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 4);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 24) & 2) != 0)
  {
LABEL_6:
    v4 = *(this + 3);
    v5 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    if (*(this + 24))
    {
      goto LABEL_9;
    }

LABEL_17:
    v7 = 0;
    return v3 ^ v1 ^ v5 ^ v7;
  }

LABEL_16:
  v5 = 0;
  if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = *(this + 2);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  return v3 ^ v1 ^ v5 ^ v7;
}

id hidQueue()
{
  if (qword_1ED6A5018 != -1)
  {
    dispatch_once(&qword_1ED6A5018, &__block_literal_global_88);
  }

  v1 = qword_1ED6A5020;

  return v1;
}

void stylusDeviceAddedCallback(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (PKQueryIsRollSupported())
    {
      v2 = 4;
    }

    else
    {
      v2 = 0;
    }

    v3 = os_log_create("com.apple.pencilkit", "PencilDevice");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v8 = v2;
      _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "HID pencil device added callback: %lu", buf, 0xCu);
    }

    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __stylusDeviceAddedCallback_block_invoke;
    v4[3] = &unk_1E82D7170;
    v5 = v1;
    v6 = v2;
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

void stylusDeviceRemovedCallback(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = os_log_create("com.apple.pencilkit", "PencilDevice");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "HID pencil device removed callback.", buf, 2u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __stylusDeviceRemovedCallback_block_invoke;
    block[3] = &unk_1E82D7148;
    v4 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t PKQueryIsRollSupported()
{
  v17[2] = *MEMORY[0x1E69E9840];
  v0 = IOHIDEventSystemClientCreateWithType();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v16[0] = @"PrimaryUsagePage";
  v16[1] = @"PrimaryUsage";
  v17[0] = &unk_1F47C10B8;
  v17[1] = &unk_1F47C1178;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  IOHIDEventSystemClientSetMatching();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = IOHIDEventSystemClientCopyServices(v1);
  v4 = [(__CFArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = IOHIDServiceClientCopyProperty(*(*(&v11 + 1) + 8 * v7), @"IsRollSupported");
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 BOOLValue];

          goto LABEL_12;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(__CFArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_12:

  CFRelease(v1);
  return v9;
}

void __hidQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);

  v1 = dispatch_queue_create("com.apple.pencilkit.pencildevice", attr);
  v2 = qword_1ED6A5020;
  qword_1ED6A5020 = v1;
}

void __stylusDeviceAddedCallback_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && (*(v1 + 48) = *(a1 + 40), (v2 = *(a1 + 32)) != 0))
  {
    *(v2 + 32) = 1;
    [(PKPencilDevice *)*(a1 + 32) resetRollSupportedState];
  }

  else
  {
    [(PKPencilDevice *)0 resetRollSupportedState];
  }
}

void __stylusDeviceRemovedCallback_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    *(v1 + 32) = 0;
    [(PKPencilDevice *)*(a1 + 32) resetRollSupportedState];
  }

  else
  {
    [(PKPencilDevice *)0 resetRollSupportedState];
  }
}

void sub_1C7DA1578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = PKLRUCache;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C7DA18A8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 14);

  _Unwind_Resume(a1);
}

void sub_1C7DA1A24(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 14);

  _Unwind_Resume(a1);
}

void sub_1C7DA1EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v11 + 14);

  _Unwind_Resume(a1);
}

void sub_1C7DA202C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  os_unfair_lock_unlock(v10 + 14);
  _Unwind_Resume(a1);
}

void sub_1C7DA678C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  drawing::StrokeDelta::~StrokeDelta(va);

  _Unwind_Resume(a1);
}

uint64_t PKProtobufUtilitiesParseArchiveFromNSDataWithHeader<drawing::StrokeDelta>(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([v5 length] <= 7)
  {
    PKProtobufUtilitiesMalformedError(a3);
LABEL_3:
    v6 = 0;
    goto LABEL_4;
  }

  v15 = 0;
  [v5 getBytes:&v15 range:{0, 4}];
  if (v15 == -260869013)
  {
    v13 = 0;
    [v5 getBytes:&v13 range:{4, 1}];
    if (v13 >= 2u)
    {
      PKProtobufUtilitiesFormatTooNew(a3);
      goto LABEL_3;
    }

    v12 = 0;
    [v5 getBytes:&v12 range:{6, 2}];
    v9 = v12;
    if (v12 < 8uLL || [v5 length] <= v9)
    {
      PKProtobufUtilitiesMalformedError(a3);
      goto LABEL_3;
    }

    v10 = [v5 bytes];
    v11 = v12;
    [v5 length];
    PB::Reader::Reader(v14, (v10 + v11));
    v6 = (*(*a1 + 16))(a1, v14);
    if ((v6 & 1) == 0)
    {
      PKProtobufUtilitiesMalformedError(a3);
    }
  }

  else
  {
    v8 = [v5 bytes];
    [v5 length];
    PB::Reader::Reader(v14, v8);
    v6 = (*(*a1 + 16))(a1, v14);
    if ((v6 & 1) == 0)
    {
      PKProtobufUtilitiesMalformedError(a3);
    }
  }

LABEL_4:

  return v6;
}

void sub_1C7DA6B40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  drawing::StrokeDelta::~StrokeDelta(va);
  _Unwind_Resume(a1);
}

id PKProtobufUtilitiesNSDataFromArchiveWithHeader<drawing::StrokeDelta>(uint64_t a1)
{
  v11 = -260869013;
  v10 = 1;
  v9 = 0;
  PB::Writer::Writer(&v7);
  (*(*a1 + 24))(a1, &v7);
  v2 = objc_alloc(MEMORY[0x1E695DF88]);
  v3 = [v2 initWithCapacity:v7 - v8 + 8];
  [v3 appendBytes:&v11 length:4];
  [v3 appendBytes:&v10 length:1];
  [v3 appendBytes:&v9 length:1];
  v6 = 8;
  [v3 appendBytes:&v6 length:2];
  [v3 appendBytes:v8 length:v7 - v8];
  v4 = [v3 copy];

  PB::Writer::~Writer(&v7);

  return v4;
}

void sub_1C7DA6C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PB::Writer::~Writer(va);
  _Unwind_Resume(a1);
}

void sub_1C7DA70CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  drawing::StrokeDelta::~StrokeDelta(va);

  _Unwind_Resume(a1);
}

void sub_1C7DA731C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  drawing::StrokeDelta::~StrokeDelta(va);
  _Unwind_Resume(a1);
}

void sub_1C7DA85D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _PKPaletteViewUpdateUI(void *a1, uint64_t a2)
{
  v14 = a1;
  v3 = [v14 isToolPreviewInstalled];
  v4 = [v14 traitCollection];
  v5 = [v14 wantsToolPreviewForTraitCollection:v4];

  if (!v5 || (v3 & 1) != 0)
  {
    if (!(v5 & 1 | ((v3 & 1) == 0)))
    {
      [v14 _uninstallToolPreview];
    }
  }

  else
  {
    v6 = [v14 clippingView];
    [v14 _installToolPreviewInView:v6];
  }

  v7 = [v14 _pk_useCompactLayout];
  v8 = 1.0;
  if ((v7 & 1) == 0)
  {
    v9 = [v14 paletteScaleFactorPolicy];
    [v14 adjustedWindowSceneBounds];
    [v9 scaleFactorForWindowBounds:v14 paletteView:?];
    v8 = v10;
  }

  [v14 _setPaletteScaleFactor:a2 notifyDidChange:v8];
  v11 = _UISolariumEnabled();
  v12 = v7 ^ 1;
  v13 = [v14 clippingView];
  [v13 setClipsToBounds:v11 | v12];
}

void sub_1C7DB03E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&a14);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C7DB0514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

BOOL PKIsRightHandedGrip(double a1)
{
  if (a1 < 0.0)
  {
    a1 = -a1;
  }

  return a1 < 1.57079633;
}

double PKSqueezePaletteViewStartAngle(int a1, double a2)
{
  if (a2 < 0.0)
  {
    a2 = -a2;
  }

  v2 = 4.38077642;
  if (a1)
  {
    v2 = 5.70722665;
  }

  v3 = a2 < 1.57079633;
  result = 3.45575192;
  if (!v3)
  {
    return v2;
  }

  return result;
}

double PKSqueezePaletteViewSize()
{
  v0 = *&PKSqueezePaletteViewRadius + *&PKSqueezePaletteViewContentHeight * 0.5 + *&PKSqueezePaletteViewRadius + *&PKSqueezePaletteViewContentHeight * 0.5;
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v1 scale];
  v3 = round(v0 * v2) / v2;

  return v3;
}

void PKSqueezePaletteViewConfigureShadow(void *a1, int a2)
{
  v3 = a1;
  v8 = v3;
  LODWORD(v4) = 1034147594;
  if (a2)
  {
    *&v4 = 0.13;
    v5 = 16.0;
  }

  else
  {
    v5 = 0.5;
  }

  if (a2)
  {
    v6 = 5.0;
  }

  else
  {
    v6 = 0.0;
  }

  [v3 setShadowOpacity:v4];
  [v8 setShadowRadius:v5];
  [v8 setShadowOffset:{0.0, v6}];
  v7 = [MEMORY[0x1E69DC888] blackColor];
  [v8 setShadowColor:{objc_msgSend(v7, "CGColor")}];
}

double PKSqueezePaletteViewScaleFactor(void *a1, double a2, double a3, double a4, double a5, double a6)
{
  v8 = a1;
  v9 = v8;
  if (v8)
  {
    v10 = [(PKToolPicker *)v8 _fullScreenWindowScaleFactor];
  }

  else
  {
    v10 = 1.0;
  }

  if (a6 > a4)
  {
    v10 = a4 / a6 * v10;
  }

  return v10;
}

double PKSqueezePaletteViewAdjustedHoverLocation(double a1, double a2, double a3)
{
  if (a3 < 0.0)
  {
    a3 = -a3;
  }

  v3 = a3 < 1.57079633;
  v4 = -30.0;
  if (v3)
  {
    v4 = 30.0;
  }

  return a1 + v4;
}