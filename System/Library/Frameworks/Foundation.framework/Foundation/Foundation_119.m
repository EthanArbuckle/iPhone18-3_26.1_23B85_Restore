Foundation::DateInterval_optional __swiftcall DateInterval.intersection(with:)(Foundation::DateInterval with)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = *v3;
  v7 = v3[1];
  v8 = *v3 + v7;
  if (*v3 <= *v1 && v4 <= v8)
  {
    goto LABEL_18;
  }

  v10 = v4 <= v8;
  v11 = v4 + v5;
  v12 = v6 <= v4 + v5 && v4 <= v6;
  v13 = v11 <= v8 && v6 <= v4 + v5;
  if (v8 > v11)
  {
    v10 = 0;
  }

  if (v12 || v13 || v10)
  {
LABEL_18:
    if (v6 == v4 && v7 == v5)
    {
      *v2 = v6;
      *(v2 + 8) = v7;
      *(v2 + 16) = 0;
    }

    else
    {
      v15 = v4 + v5;
      if (v6 > v4)
      {
        v4 = *v3;
      }

      if (v8 > v15)
      {
        v6 = v15;
      }

      else
      {
        v6 = *v3 + v7;
      }

      if (v6 < v4)
      {
        __break(1u);
      }

      else
      {
        v6 = v6 - v4;
        *v2 = v4;
        *(v2 + 8) = v6;
        *(v2 + 16) = 0;
      }
    }
  }

  else
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 1;
  }

  result.value.duration = v6;
  result.value.start._time = v4;
  result.is_nil = v1;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DateInterval.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DateInterval.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DateInterval.CodingKeys and conformance DateInterval.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DateInterval.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DateInterval.CodingKeys and conformance DateInterval.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateInterval.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation12DateIntervalV10CodingKeys33_2953BBFB9A23C5C66489CFB1510AFDBELLOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DateInterval.CodingKeys and conformance DateInterval.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v8;
  v10[7] = 0;
  lazy protocol witness table accessor for type Date and conformance Date();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[6] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

Swift::Int DateInterval.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1865CD090](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1865CD090](*&v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DateInterval()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1865CD090](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1865CD090](*&v4);
  return Hasher._finalize()();
}

uint64_t DateInterval.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v8 = *v0;
  v9 = v0[1];
  v34 = &type metadata for Date;
  *&v33 = v8;
  v30 = xmmword_1812DDA80;
  outlined init with take of Any(&v33, &v31);
  v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = v10[2];
  v11 = v10[3];
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  v10[2] = v13;
  v14 = &v10[6 * v12];
  v15 = v30;
  v16 = v32;
  v14[3] = v31;
  v14[4] = v16;
  v14[2] = v15;
  v34 = &type metadata for Date;
  *&v33 = v8 + v9;
  v30 = xmmword_1812DDA90;
  outlined init with take of Any(&v33, &v31);
  v17 = v10[3];
  v18 = v12 + 2;
  if ((v12 + 2) > (v17 >> 1))
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v12 + 2, 1, v10);
  }

  v10[2] = v18;
  v19 = &v10[6 * v13];
  v20 = v30;
  v21 = v32;
  v19[3] = v31;
  v19[4] = v21;
  v19[2] = v20;
  v34 = MEMORY[0x1E69E63B0];
  *&v33 = v9;
  v30 = xmmword_1812DDAA0;
  outlined init with take of Any(&v33, &v31);
  v22 = v10[3];
  if ((v12 + 3) > (v22 >> 1))
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v12 + 3, 1, v10);
  }

  v10[2] = v12 + 3;
  v23 = &v10[6 * v18];
  v24 = v30;
  v25 = v32;
  v23[3] = v31;
  v23[4] = v25;
  v23[2] = v24;
  *&v30 = v8;
  *(&v30 + 1) = v9;
  *&v33 = v10;
  v26 = *MEMORY[0x1E69E75B8];
  v27 = type metadata accessor for Mirror.DisplayStyle();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v7, v26, v27);
  (*(v28 + 56))(v7, 0, 1, v27);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd);
  lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

NSDateInterval __swiftcall DateInterval._bridgeToObjectiveC()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = objc_allocWithZone(NSDateInterval);
  v4 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v5 = [v3 initWithStartDate:v4 duration:v2];

  return v5;
}

id static DateInterval._unconditionallyBridgeFromObjectiveC(_:)@<X0>(id result@<X0>, uint64_t a2@<X8>)
{
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  result = [result startDate];
  if (result)
  {
    v4 = result;
    [result timeIntervalSinceReferenceDate];
    v6 = v5;

    result = [v2 duration];
    if (v7 >= 0.0)
    {
      *a2 = v6;
      *(a2 + 8) = v7;
      return result;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance DateInterval()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = objc_allocWithZone(NSDateInterval);
  v4 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v5 = [v3 initWithStartDate:v4 duration:v2];

  return v5;
}

id NSDateInterval._toCustomAnyHashable()()
{
  result = [v0 startDate];
  if (result)
  {
    v2 = result;
    [result timeIntervalSinceReferenceDate];

    result = [v0 duration];
    if (v3 >= 0.0)
    {
      lazy protocol witness table accessor for type DateInterval and conformance DateInterval();
      return AnyHashable.init<A>(_:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSDateInterval()
{
  v1 = *v0;
  NSDateInterval._toCustomAnyHashable()();
}

BOOL specialized static DateInterval.< infix(_:_:)(double *a1, double *a2)
{
  v2 = *a1 < *a2;
  if (*a2 >= *a1 && *a2 <= *a1)
  {
    return a1[1] < a2[1];
  }

  return v2;
}

unint64_t type metadata accessor for NSDateInterval()
{
  result = lazy cache variable for type metadata for NSDateInterval;
  if (!lazy cache variable for type metadata for NSDateInterval)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSDateInterval);
  }

  return result;
}

id specialized static DateInterval._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  result = [a1 startDate];
  if (result)
  {
    v5 = result;
    [result timeIntervalSinceReferenceDate];
    v7 = v6;

    result = [a1 duration];
    if (v8 >= 0.0)
    {
      *a2 = v7;
      *(a2 + 8) = v8;
      *(a2 + 16) = 0;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized static DateInterval._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  result = [a1 startDate];
  if (result)
  {
    v5 = result;
    [result timeIntervalSinceReferenceDate];
    v7 = v6;

    result = [a1 duration];
    if (v8 >= 0.0)
    {
      *a2 = v7;
      *(a2 + 8) = v8;
      *(a2 + 16) = 0;
      return 1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t instantiation function for generic protocol witness table for DateInterval(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type DateInterval and conformance DateInterval();
  a1[2] = lazy protocol witness table accessor for type DateInterval and conformance DateInterval();
  a1[3] = lazy protocol witness table accessor for type DateInterval and conformance DateInterval();
  result = lazy protocol witness table accessor for type DateInterval and conformance DateInterval();
  a1[4] = result;
  return result;
}

unint64_t specialized Collection.dropLast(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_18:
    v12 = result;
    v13 = String.UTF8View._foreignCount()();
    result = v12;
    v7 = __OFSUB__(v13, v12);
    v8 = v13 - v12;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  v3 = a3;
  v4 = a2;
  v5 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v6 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  v7 = __OFSUB__(v6, result);
  v8 = v6 - result;
  if (!v7)
  {
LABEL_6:
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if ((v3 & 0x1000000000000000) != 0)
    {
      v9 = String.UTF8View._foreignIndex(_:offsetBy:limitedBy:)();
      if ((v10 & 1) == 0)
      {
        v11 = v9;
        return _StringGuts.validateSubscalarRange(_:)(0xFuLL, v11, v4, v3);
      }
    }

    else if (v8 <= v5)
    {
      v11 = ((v8 & ~(v8 >> 63)) << 16) | 4;
      return _StringGuts.validateSubscalarRange(_:)(0xFuLL, v11, v4, v3);
    }

    if (((v3 >> 60) & ((v4 & 0x800000000000000) == 0)) != 0)
    {
      v11 = (v5 << 16) | 0xB;
    }

    else
    {
      v11 = (v5 << 16) | 7;
    }

    return _StringGuts.validateSubscalarRange(_:)(0xFuLL, v11, v4, v3);
  }

LABEL_20:
  __break(1u);
  return result;
}

void *IndexPath.Storage.append(contentsOf:)(void *result)
{
  v2 = v1;
  v3 = *v1;
  if (*(v2 + 16) > 1u)
  {
    if (*(v2 + 16) == 2)
    {
      v12 = v3;
LABEL_11:
      result = specialized Array.append<A>(contentsOf:)(result);
      *v2 = v12;
LABEL_12:
      v2[1] = 0;
      v8 = 2;
LABEL_23:
      *(v2 + 16) = v8;
      return result;
    }

    v9 = result[2];
    if (v9 != 2)
    {
      if (v9 == 1)
      {
        v11 = result[4];

        *v2 = v11;
        v2[1] = 0;
        *(v2 + 16) = 0;
        return result;
      }

      if (v9)
      {
        *v2 = result;
        goto LABEL_12;
      }

      goto LABEL_16;
    }

    v3 = result[4];
    v10 = result[5];
    goto LABEL_22;
  }

  if (!*(v2 + 16))
  {
    v4 = result[2];
    if (v4 != 1)
    {
      if (v4)
      {
        v5 = result;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_181218E20;
        *(v6 + 32) = v3;
LABEL_10:
        v12 = v6;
        result = v5;
        goto LABEL_11;
      }

      goto LABEL_16;
    }

    v10 = result[4];
LABEL_22:

    *v2 = v3;
    v2[1] = v10;
    v8 = 1;
    goto LABEL_23;
  }

  if (result[2])
  {
    v7 = v2[1];
    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_181215ED0;
    *(v6 + 32) = v3;
    *(v6 + 40) = v7;
    goto LABEL_10;
  }

LABEL_16:
}

uint64_t IndexPath.Storage.subscript.getter(unint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 != 2)
    {
LABEL_17:
      _StringGuts.grow(_:)(33);

      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v5);

      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181487780);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*(a2 + 16) > a1)
      {
        return *(a2 + 8 * a1 + 32);
      }

      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (!a4)
  {
    if (!a1)
    {
      return a2;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a1 > 1)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a1)
  {
    return a3;
  }

  return a2;
}

uint64_t IndexPath.Storage.subscript.setter(uint64_t result, unint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3 <= 1)
  {
    if (*(v2 + 16))
    {
      if (a2 <= 1)
      {
        if (a2)
        {
          *(v2 + 8) = result;
        }

        else
        {
          *v2 = result;
        }

        goto LABEL_14;
      }

      goto LABEL_18;
    }

    if (!a2)
    {
      *v2 = result;
      *(v2 + 8) = 0;
LABEL_14:
      *(v2 + 16) = v3;
      return result;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v3 == 2)
  {
    v5 = result;
    v6 = *v2;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
      v6 = result;
      if ((a2 & 0x8000000000000000) == 0)
      {
LABEL_8:
        if (*(v6 + 16) > a2)
        {
          *(v6 + 8 * a2 + 32) = v5;
          *v2 = v6;
          *(v2 + 8) = 0;
          goto LABEL_14;
        }

        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  _StringGuts.grow(_:)(33);

  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v7);

  MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181487780);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t IndexPath.Storage.subscript.getter(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v5 = a3;
  if (a5 > 1u)
  {
    if (a5 != 2)
    {
      if (!(a1 | a2))
      {
        return 0;
      }

LABEL_52:
      _StringGuts.grow(_:)(36);

      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x1865CB0E0](3943982, 0xE300000000000000);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x1865CB0E0](0, 0xE000000000000000);

      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x80000001814877E0);
      goto LABEL_54;
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v6 = *(a3 + 16);
      if (v6 >= a1 && v6 >= a2)
      {
        if ((a2 & 0x8000000000000000) == 0)
        {
          v8 = a2 - a1;
          if (a2 == a1)
          {
            return a2 - a1;
          }

          v9 = a3 + 32;
          if (v8 != 2)
          {
            if (v8 != 1)
            {
              if (v6 == v8)
              {
                outlined copy of IndexPath.Storage(a3, a4, 2);
              }

              else
              {
                specialized _copyCollectionToContiguousArray<A>(_:)(a3, a3 + 32, a1, (2 * a2) | 1);
                return v11;
              }

              return v5;
            }

            if (a2 != a1)
            {
              if (a2 > a1)
              {
                return *(v9 + 8 * a1);
              }

              goto LABEL_51;
            }

            goto LABEL_49;
          }

          if (a2 != a1)
          {
            if (a2 > a1)
            {
              return *(v9 + 8 * a1);
            }

            goto LABEL_50;
          }

LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  if (!a5)
  {
    if (a1 | a2 && (a1 != 1 || a2 != 1))
    {
      if (!a1 && a2 == 1)
      {
        return v5;
      }

      _StringGuts.grow(_:)(36);

      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x1865CB0E0](3943982, 0xE300000000000000);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x1865CB0E0](0, 0xE000000000000000);

      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x80000001814877C0);
      while (1)
      {
LABEL_54:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_55:
        _StringGuts.grow(_:)(36);

        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865CB0E0](3943982, 0xE300000000000000);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865CB0E0](0, 0xE000000000000000);

        MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x80000001814877A0);
      }
    }

    return 0;
  }

  if (!(a1 | a2) || a1 == 1 && a2 == 1 || a1 == 2 && a2 == 2)
  {
    return 0;
  }

  if (a1 || a2 != 1)
  {
    if (a1 == 1 && a2 == 2)
    {
      return a4;
    }

    else if (a1 || a2 != 2)
    {
      goto LABEL_55;
    }
  }

  return v5;
}

uint64_t IndexPath.Storage.subscript.setter(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, int64_t a5)
{
  v8 = result;
  v9 = *v5;
  v10 = *(v5 + 16);
  if (*(v5 + 16) > 1u)
  {
    if (v10 == 2)
    {
      if ((a4 & 0x8000000000000000) == 0)
      {
        v11 = *(v9 + 2);
        if (v11 >= a5)
        {
          v10 = a5 - a4;
          if (!__OFSUB__(a5, a4))
          {
            v12 = __OFSUB__(0, v10);
            v10 = a4 - a5;
            if (!v12)
            {
              v13 = v11 + v10;
              if (!__OFADD__(v11, v10))
              {
                v6 = v5;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if (!isUniquelyReferenced_nonNull_native || v13 > *(v9 + 3) >> 1)
                {
                  if (v11 <= v13)
                  {
                    v18 = v13;
                  }

                  else
                  {
                    v18 = v11;
                  }

                  v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v18, 1, v9);
                }

                specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a4, a5, 0);
                if (a3 > 1u)
                {
                  if (a3 == 2)
                  {
                    specialized Array.replaceSubrange<A>(_:with:)(a4, a4, v8);
                    outlined consume of IndexPath.Storage(v8, a2, 2);
                  }

                  goto LABEL_66;
                }

                if (!a3)
                {
                  v10 = *(v9 + 2);
                  if (v10 >= a4)
                  {
                    if (v10 < *(v9 + 3) >> 1)
                    {
LABEL_24:
                      v19 = a4;
                      v20 = a4;
                      v21 = v8;
LABEL_65:
                      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v19, v20, 1, v21);
LABEL_66:
                      result = sub_180928C90(v9);
                      *v6 = result;
                      *(v6 + 8) = v26;
                      *(v6 + 16) = v27;
                      return result;
                    }

LABEL_110:
                    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v10 + 1, 1, v9);
                    goto LABEL_24;
                  }

                  goto LABEL_108;
                }

                v10 = *(v9 + 2);
                if (v10 < a4)
                {
LABEL_109:
                  __break(1u);
                  goto LABEL_110;
                }

                if (v10 >= *(v9 + 3) >> 1)
                {
                  v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v10 + 1, 1, v9);
                }

                specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a4, a4, 1, v8);
                v25 = *(v9 + 2);
                if (v25 <= a4)
                {
                  __break(1u);
                }

                else if (v25 < *(v9 + 3) >> 1)
                {
LABEL_64:
                  v19 = a4 + 1;
                  v20 = a4 + 1;
                  v21 = a2;
                  goto LABEL_65;
                }

                v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v25 + 1, 1, v9);
                goto LABEL_64;
              }

LABEL_107:
              __break(1u);
LABEL_108:
              __break(1u);
              goto LABEL_109;
            }

LABEL_106:
            __break(1u);
            goto LABEL_107;
          }

LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      __break(1u);
    }

    else
    {
      v10 = a5 | a4;
      if (!(a5 | a4))
      {
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_104;
  }

  if (*(v5 + 16))
  {
    v22 = *(v5 + 8);
    switch(a4)
    {
      case 2uLL:
        if (a5 == 2)
        {
          if (a3 <= 1u)
          {
            if (a3)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
              result = swift_allocObject();
              *(result + 16) = xmmword_18121D6C0;
              *(result + 32) = v9;
              *(result + 40) = v22;
              *(result + 48) = v8;
              *(result + 56) = a2;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
              result = swift_allocObject();
              *(result + 16) = xmmword_18121D6B0;
              *(result + 32) = v9;
              *(result + 40) = v22;
              *(result + 48) = v8;
            }

            goto LABEL_99;
          }

          if (a3 != 2)
          {
            return result;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_181215ED0;
          *(v28 + 32) = v9;
          *(v28 + 40) = v22;
LABEL_79:
          v33 = v28;
          result = specialized Array.append<A>(contentsOf:)(v8);
          *v5 = v33;
          *(v5 + 8) = 0;
          *(v5 + 16) = 2;
          return result;
        }

        break;
      case 1uLL:
        if (a5 == 2)
        {
          if (a3 <= 1u)
          {
            if (!a3)
            {
LABEL_30:
              *(v5 + 8) = result;
LABEL_75:
              v29 = 1;
LABEL_100:
              *(v5 + 16) = v29;
              return result;
            }

            goto LABEL_52;
          }

          if (a3 == 2)
          {
LABEL_78:
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
            v28 = swift_allocObject();
            *(v28 + 16) = xmmword_181218E20;
            *(v28 + 32) = v9;
            goto LABEL_79;
          }

LABEL_97:
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
          return result;
        }

        break;
      case 0uLL:
        if (a5 == 2)
        {
          goto LABEL_32;
        }

        if (a5 == 1)
        {
          if (a3 > 1u)
          {
            if (a3 == 2)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_181218E20;
              *(inited + 32) = v22;
              goto LABEL_93;
            }

            *v5 = v22;
            goto LABEL_97;
          }

          if (!a3)
          {
            *v5 = result;
            goto LABEL_75;
          }

          v9 = a2;
        }

        else
        {
          if (a5)
          {
            break;
          }

          if (a3 > 1u)
          {
            if (a3 != 2)
            {
              return result;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_181215ED0;
            *(inited + 32) = v9;
            *(inited + 40) = v22;
            goto LABEL_93;
          }

          if (a3)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
            result = swift_allocObject();
            *(result + 16) = xmmword_18121D6C0;
            *(result + 32) = v8;
            *(result + 40) = a2;
            *(result + 48) = v9;
            *(result + 56) = v22;
            goto LABEL_99;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
        result = swift_allocObject();
        *(result + 16) = xmmword_18121D6B0;
        *(result + 32) = v8;
        *(result + 40) = v9;
        *(result + 48) = v22;
        goto LABEL_99;
    }

    _StringGuts.grow(_:)(36);

    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](3943982, 0xE300000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](0, 0xE000000000000000);

    MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x80000001814877A0);
LABEL_115:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a3 <= 1u)
  {
    if (!a3)
    {
      if (a4 == 1)
      {
        if (a5 != 1)
        {
          goto LABEL_114;
        }

        goto LABEL_30;
      }

      if (a4)
      {
LABEL_114:
        _StringGuts.grow(_:)(36);

        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865CB0E0](3943982, 0xE300000000000000);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865CB0E0](0, 0xE000000000000000);

        MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x80000001814877C0);
        goto LABEL_115;
      }

      if (a5 != 1)
      {
        if (!a5)
        {
          *v5 = result;
          *(v5 + 8) = v9;
          goto LABEL_75;
        }

        goto LABEL_114;
      }

LABEL_32:
      *v5 = result;
      *(v5 + 8) = a2;
      *(v5 + 16) = a3;
      return result;
    }

    if (a4 != 1)
    {
      if (a4)
      {
        goto LABEL_114;
      }

      if (a5 == 1)
      {
        goto LABEL_32;
      }

      if (a5)
      {
        goto LABEL_114;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      result = swift_allocObject();
      *(result + 16) = xmmword_18121D6B0;
      *(result + 32) = v8;
      *(result + 40) = a2;
      *(result + 48) = v9;
LABEL_99:
      *v5 = result;
      *(v5 + 8) = 0;
      v29 = 2;
      goto LABEL_100;
    }

    if (a5 != 1)
    {
      goto LABEL_114;
    }

LABEL_52:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    result = swift_allocObject();
    *(result + 16) = xmmword_18121D6B0;
    *(result + 32) = v9;
    *(result + 40) = v8;
    *(result + 48) = a2;
    goto LABEL_99;
  }

  if (a3 == 2)
  {
    if (!a4)
    {
      if (a5 == 1)
      {
        goto LABEL_32;
      }

      if (a5)
      {
        goto LABEL_114;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 32) = v9;
LABEL_93:
      result = specialized Array.append<A>(contentsOf:)(inited);
      *v5 = v8;
      *(v5 + 8) = 0;
      *(v5 + 16) = 2;
      return result;
    }

    if (a4 != 1 || a5 != 1)
    {
      goto LABEL_114;
    }

    goto LABEL_78;
  }

  if (a4 | a5 && (a4 != 1 || a5 != 1))
  {
    if (a4 || a5 != 1)
    {
      goto LABEL_114;
    }

    goto LABEL_32;
  }

  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance IndexPath.Storage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_180928C90(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t IndexPath.init<A>(indexes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a3;
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v26 - v9;
  v11 = dispatch thunk of Sequence.underestimatedCount.getter();
  v33 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 & ~(v11 >> 63), 0);
  v12 = v33;
  v29 = v5;
  (*(v5 + 16))(v7, a1, a2);
  result = dispatch thunk of Sequence.makeIterator()();
  if (v11 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v27 = a1;
  if (v11)
  {
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      result = dispatch thunk of IteratorProtocol.next()();
      if (v32)
      {
        goto LABEL_17;
      }

      v14 = v31;
      v33 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v12 = v33;
      }

      *(v12 + 16) = v16 + 1;
      *(v12 + 8 * v16 + 32) = v14;
      if (!--v11)
      {
        goto LABEL_10;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_10:
  dispatch thunk of IteratorProtocol.next()();
  if ((v32 & 1) == 0)
  {
    do
    {
      v23 = v31;
      v33 = v12;
      v25 = *(v12 + 16);
      v24 = *(v12 + 24);
      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
        v12 = v33;
      }

      *(v12 + 16) = v25 + 1;
      *(v12 + 8 * v25 + 32) = v23;
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v32 != 1);
  }

  (*(v28 + 8))(v10, AssociatedTypeWitness);
  v17 = sub_180928C90(v12);
  v19 = v18;
  v21 = v20;
  result = (*(v29 + 8))(v27, a2);
  v22 = v30;
  *v30 = v17;
  v22[1] = v19;
  *(v22 + 16) = v21;
  return result;
}

uint64_t IndexPath.init(index:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

void IndexPath.dropLast()(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (v3 > 1)
  {
    v4 = *(v1 + 8);
    if (v3 != 2)
    {
      goto LABEL_20;
    }

    v5 = *(v2 + 16);
    if (v5 == 3)
    {
      v6 = v2 + 32;
      v2 = *(v2 + 32);
      v4 = *(v6 + 8);
      LOBYTE(v3) = 1;
      goto LABEL_20;
    }

    v7 = a1;
    if (v5 >= 2)
    {
      v8 = v5 - 1;
    }

    else
    {
      v8 = 0;
    }

    v9 = swift_unknownObjectRetain();
    outlined copy of IndexPath.Storage(v9, v4, 2);
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain();
    v10 = swift_dynamicCastClass();
    if (!v10)
    {
      swift_unknownObjectRelease();
      v10 = MEMORY[0x1E69E7CC0];
    }

    v11 = *(v10 + 16);

    if (v11 == v8)
    {
      v12 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v12)
      {
LABEL_19:
        v4 = 0;
        LOBYTE(v3) = 2;
        v2 = v12;
        a1 = v7;
        goto LABEL_20;
      }

      v12 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      swift_unknownObjectRelease();
      specialized _copyCollectionToContiguousArray<A>(_:)(v2, v2 + 32, 0, (2 * v8) | 1);
      v12 = v13;
    }

    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  if (!*(v1 + 16))
  {
    v2 = 0;
  }

  v4 = 0;
  if (v3)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    LOBYTE(v3) = 3;
  }

LABEL_20:
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

Swift::Void __swiftcall IndexPath.append(_:)(Swift::Int a1)
{
  v3 = *v1;
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 32) = a1;
      specialized Array.append<A>(contentsOf:)(inited);
      a1 = v3;
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_8;
  }

  if (*(v1 + 16))
  {
    v6 = *(v1 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18121D6B0;
    *(v7 + 32) = v3;
    *(v7 + 40) = v6;
    *(v7 + 48) = a1;
    v4 = 2;
    a1 = v7;
LABEL_8:
    *v1 = a1;
    a1 = 0;
    goto LABEL_9;
  }

  v4 = 1;
LABEL_9:
  *(v1 + 8) = a1;
  *(v1 + 16) = v4;
}

Swift::Void __swiftcall IndexPath.append(_:)(Swift::OpaquePointer a1)
{

  IndexPath.Storage.append(contentsOf:)(v1);
}

double IndexPath.appending(_:)@<D0>(uint64_t a1@<X8>)
{
  v5 = *v1;
  v6 = *(v1 + 16);
  outlined copy of IndexPath.Storage(*v1, *(v1 + 1), v6);

  IndexPath.Storage.append(contentsOf:)(v3);
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  return result;
}

uint64_t (*IndexPath.subscript.modify(uint64_t *a1, unint64_t a2))(uint64_t a1)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = IndexPath.subscript.getter(a2);
  return IndexPath.subscript.modify;
}

uint64_t IndexPath.subscript.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = IndexPath.Storage.subscript.getter(a1, a2, *v3, *(v3 + 8), *(v3 + 16));
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  return result;
}

uint64_t key path setter for IndexPath.subscript(_:) : IndexPath(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  outlined copy of IndexPath.Storage(*a1, v6, v7);
  return IndexPath.Storage.subscript.setter(v5, v6, v7, v3, v4);
}

void (*IndexPath.subscript.modify(void *a1, unint64_t a2, unint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  *v7 = IndexPath.Storage.subscript.getter(a2, a3, *v3, *(v3 + 8), *(v3 + 16));
  v8[1] = v9;
  *(v8 + 16) = v10;
  return IndexPath.subscript.modify;
}

void IndexPath.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(*a1 + 16);
  v6 = (*a1)[4];
  v7 = (*a1)[3];
  if (a2)
  {
    outlined copy of IndexPath.Storage(**a1, v4, v5);
    IndexPath.Storage.subscript.setter(v3, v4, v5, v7, v6);
    outlined consume of IndexPath.Storage(*v2, v2[1], *(v2 + 16));
  }

  else
  {
    IndexPath.Storage.subscript.setter(**a1, v4, v5, v7, v6);
  }

  free(v2);
}

uint64_t IndexPath.makeIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  return outlined copy of IndexPath.Storage(v2, v3, v4);
}

Swift::Int __swiftcall IndexPath.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall IndexPath.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t IndexPath.compare(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(v1 + 16);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = v4[2];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
    if (*(v1 + 16))
    {
      v6 = 2;
    }
  }

  v7 = *(a1 + 8);
  v8 = *(v1 + 8);
  if (*(a1 + 16) > 1u)
  {
    if (v3 == 2)
    {
      v9 = v2[2];
      v10 = v6;
      if (v9 >= v6)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v9 = 0;
      if (!v6)
      {
        goto LABEL_33;
      }
    }
  }

  else if (*(a1 + 16))
  {
    v9 = 2;
    v10 = v6;
    if (v6 < 3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = 1;
    v10 = v6;
    if (v6 <= 1)
    {
LABEL_16:
      if (!v10)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }
  }

  v10 = v9;
  if (!v9)
  {
    goto LABEL_33;
  }

LABEL_20:
  v11 = *a1;
  if (v3 >= 2)
  {
    if (v3 != 2)
    {
      goto LABEL_65;
    }

    if (!v2[2])
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v11 = v2[4];
  }

  v12 = *v1;
  if (v5 < 2)
  {
    if (v4 < v11)
    {
      return -1;
    }

    goto LABEL_30;
  }

  if (v5 != 2)
  {
LABEL_65:
    _StringGuts.grow(_:)(33);

    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v19);

    MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181487780);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (!v4[2])
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v12 = v4[4];
  if (v12 < v11)
  {
    return -1;
  }

LABEL_30:
  if (v11 < v12)
  {
    return 1;
  }

  if (v10 != 1)
  {
    if (v3 == 1)
    {
LABEL_43:
      if (v5 == 1)
      {
        goto LABEL_47;
      }

      if (v5 != 2)
      {
        goto LABEL_64;
      }

      if (v4[2] >= 2uLL)
      {
        v8 = v4[5];
LABEL_47:
        if (v8 >= v7)
        {
          if (v7 >= v8)
          {
            v15 = 0;
            v16 = v10 - 2;
            result = 1;
            while (v16 != v15)
            {
              if (v3 != 2)
              {
                goto LABEL_61;
              }

              if ((v15 + 2) >= v2[2])
              {
                goto LABEL_59;
              }

              if (v5 != 2)
              {
                goto LABEL_62;
              }

              if ((v15 + 2) >= v4[2])
              {
                goto LABEL_60;
              }

              v17 = v2[v15 + 6];
              v18 = v4[v15 + 6];
              if (v18 < v17)
              {
                return -1;
              }

              ++v15;
              if (v17 < v18)
              {
                return result;
              }
            }

            goto LABEL_33;
          }

          return 1;
        }

        return -1;
      }

      goto LABEL_60;
    }

    if (v3 != 2)
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v2[2] >= 2uLL)
    {
      v7 = v2[5];
      goto LABEL_43;
    }

    goto LABEL_59;
  }

LABEL_33:
  if (v6 >= v9)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  if (v9 >= v6)
  {
    return v14;
  }

  else
  {
    return 1;
  }
}

uint64_t static IndexPath.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  if (*(result + 16) <= 1u)
  {
    if (!*(result + 16))
    {
      if (!*(a2 + 16))
      {
        return v2 == v3;
      }

      return 0;
    }

    if (v5 == 1)
    {
      return v2 == v3 && *(result + 8) == v4;
    }

    return 0;
  }

  if (*(result + 16) != 2)
  {
    v14 = v4 | v3;
    return v5 == 3 && v14 == 0;
  }

  if (v5 != 2)
  {
    return 0;
  }

  v6 = *(v2 + 16);
  if (v6 != *(v3 + 16))
  {
    return 0;
  }

  if (!v6 || v2 == v3)
  {
    return 1;
  }

  v7 = (v2 + 32);
  v8 = (v3 + 32);
  while (v6)
  {
    v10 = *v7++;
    v9 = v10;
    v11 = *v8++;
    result = v9 == v11;
    if (v9 != v11 || v6-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

double static IndexPath.+ infix(_:_:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v8 = *a1;
  v9 = *(a1 + 16);
  outlined copy of IndexPath.Storage(*a1, *(a1 + 1), v9);
  IndexPath.Storage.append(contentsOf:)(v4, v5, v6);
  result = *&v8;
  *a3 = v8;
  *(a3 + 16) = v9;
  return result;
}

BOOL static IndexPath.< infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return IndexPath.compare(_:)(&v5) == -1;
}

Swift::Int IndexPath.hashValue.getter()
{
  Hasher.init(_seed:)();
  IndexPath.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IndexPath()
{
  Hasher.init(_seed:)();
  IndexPath.hash(into:)();
  return Hasher._finalize()();
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance IndexPath(uint64_t *a1, unint64_t *a2))(uint64_t a1)
{
  v4 = *a2;
  a1[1] = v2;
  a1[2] = v4;
  *a1 = IndexPath.subscript.getter(v4);
  return protocol witness for MutableCollection.subscript.modify in conformance IndexPath;
}

void (*protocol witness for MutableCollection.subscript.modify in conformance IndexPath(uint64_t *a1, unint64_t *a2))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  v8 = a2[1];
  *(v6 + 24) = v2;
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  *v6 = IndexPath.Storage.subscript.getter(v7, v8, *v2, *(v2 + 8), *(v2 + 16));
  *(v6 + 8) = v9;
  *(v6 + 16) = v10;
  return protocol witness for MutableCollection.subscript.modify in conformance IndexPath;
}

void protocol witness for MutableCollection.subscript.modify in conformance IndexPath(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(*a1 + 16);
  v7 = (*a1)[4];
  v6 = (*a1)[5];
  if (a2)
  {
    outlined copy of IndexPath.Storage(**a1, v4, v5);
    IndexPath.Storage.subscript.setter(v3, v4, v5, v7, v6);
    outlined consume of IndexPath.Storage(*v2, v2[1], *(v2 + 16));
  }

  else
  {
    IndexPath.Storage.subscript.setter(**a1, v4, v5, v7, v6);
  }

  free(v2);
}

uint64_t protocol witness for MutableCollection.partition(by:) in conformance IndexPath@<X0>(uint64_t (*a1)(uint64_t *)@<X0>, uint64_t *a2@<X8>)
{
  result = specialized MutableCollection<>._partitionImpl(by:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t *protocol witness for MutableCollection.swapAt(_:_:) in conformance IndexPath(unint64_t *result, unint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if (*result != *a2)
  {
    v5 = *v2;
    v6 = *(v2 + 8);
    v7 = *(v2 + 16);
    v8 = IndexPath.Storage.subscript.getter(*result, *v2, v6, v7);
    v9 = IndexPath.Storage.subscript.getter(v4, v5, v6, v7);
    IndexPath.Storage.subscript.setter(v9, v3);

    return IndexPath.Storage.subscript.setter(v8, v4);
  }

  return result;
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance IndexPath(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return IndexPath.compare(_:)(&v5) == -1;
}

uint64_t protocol witness for Collection.subscript.getter in conformance IndexPath@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IndexPath.Storage.subscript.getter(*a1, a1[1], *v2, *(v2 + 8), *(v2 + 16));
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance IndexPath@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  if (v4 > 1)
  {
    v5 = 0;
    if (v4 == 2)
    {
      v5 = *(result + 16);
      v6 = a1;
      result = outlined copy of IndexPath.Storage(result, v3, 2);
      a1 = v6;
    }
  }

  else if (v4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 32) = v5;
  return result;
}

BOOL protocol witness for Collection.isEmpty.getter in conformance IndexPath()
{
  if (v0[16] <= 1u)
  {
    return 0;
  }

  if (v0[16] == 2)
  {
    return *(*v0 + 16) == 0;
  }

  return 1;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance IndexPath@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  outlined copy of IndexPath.Storage(v2, v3, v4);

  return outlined consume of IndexPath.Storage(v2, v3, v4);
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance IndexPath()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(v1, v2, v3);
  outlined consume of IndexPath.Storage(v1, v2, v3);
  return v4;
}

uint64_t IndexPath.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v16 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v11 = *(v1 + 16);
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v16[2] = v9;
  v16[3] = v10;
  v17 = v11;
  v12 = *MEMORY[0x1E69E7590];
  v13 = type metadata accessor for Mirror.DisplayStyle();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v8, v12, v13);
  (*(v14 + 56))(v8, 0, 1, v13);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  outlined copy of IndexPath.Storage(v9, v10, v11);
  outlined copy of IndexPath.Storage(v9, v10, v11);
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
  return Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)();
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance IndexPath@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = a2;
  v17[1] = a1;
  v3 = type metadata accessor for Mirror.AncestorRepresentation();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v17 - v8;
  v10 = *v2;
  v11 = *(v2 + 8);
  v12 = *(v2 + 16);
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v17[2] = v10;
  v17[3] = v11;
  v18 = v12;
  v13 = *MEMORY[0x1E69E7590];
  v14 = type metadata accessor for Mirror.DisplayStyle();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v9, v13, v14);
  (*(v15 + 56))(v9, 0, 1, v14);
  (*(v4 + 104))(v6, *MEMORY[0x1E69E75D8], v3);
  outlined copy of IndexPath.Storage(v10, v11, v12);
  outlined copy of IndexPath.Storage(v10, v11, v12);
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
  return Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance IndexPath.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73657865646E69 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IndexPath.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IndexPath.CodingKeys and conformance IndexPath.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IndexPath.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IndexPath.CodingKeys and conformance IndexPath.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NSIndexPath._toCustomAnyHashable()()
{
  v1 = v0;
  result = [v1 length];
  switch(result)
  {
    case 2:
      [v1 indexAtPosition_];
      [v1 indexAtPosition_];
      goto LABEL_7;
    case 1:
      [v1 indexAtPosition_];

LABEL_10:
      lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
      return AnyHashable.init<A>(_:)();
    case 0:
      sub_180928C90(MEMORY[0x1E69E7CC0]);
LABEL_7:

      goto LABEL_10;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v3 = result;
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v4 + 16) = v3;
    [v1 getIndexes:v4 + 32 range:{0, v3}];
    *(v4 + 16) = v3;

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSIndexPath()
{
  v1 = *v0;
  NSIndexPath._toCustomAnyHashable()();
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(void *a1)
{
  v2 = [a1 length];
  result = [a1 length];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = [a1 length];
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      if (v2)
      {
        v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v2, 0);
        v5 = a1;
        v6 = specialized Sequence._copyContents(initializing:)(v7, (v4 + 4), v2);

        if (v6 == v2)
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

void *specialized _copyCollectionToContiguousArray<A>(_:)(void *result, void *a2, uint64_t a3)
{
  v3 = a2 + a3;
  if (__OFADD__(a3, a2))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v3 < a3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!__OFSUB__(v3, a3))
  {
    if (a2)
    {
      v7 = result;
      v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(a2, 0);
      if (specialized Sequence._copySequenceContents(initializing:)(v9, (v8 + 4), a2, v7, a2, a3) == a2)
      {
        return v8;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_11:
  __break(1u);
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v6 = a1[2];
    if (!v6)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else if (a3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(v6, 0);
  outlined copy of IndexPath.Storage(a1, a2, a3);
  v8 = specialized Sequence._copySequenceContents(initializing:)(v10, v7 + 4, v6, a1, a2, a3);
  outlined consume of IndexPath.Storage(v10[0], v10[1], v11);
  if (v8 != v6)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v2 = [*(a1 + 16) count];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v2;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(v2, 0);

  v5 = specialized Sequence._copySequenceContents(initializing:)(v7, (v4 + 4), v3, a1);

  if (v5 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

{
  v2 = *a1;
  v11[0] = *(*a1 + 24);
  v3 = *(v2 + 56);
  v11[1] = *(v2 + 40);
  v11[2] = v3;
  v4 = *(a1 + 56);
  v11[5] = *(a1 + 40);
  v11[6] = v4;
  v5 = *(a1 + 24);
  v11[3] = *(a1 + 8);
  v11[4] = v5;
  swift_unknownObjectRetain();
  v6 = BigSubstring.UTF16View.count.getter();
  outlined destroy of BigSubstring.UTF16View(v11);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v6, 0);
  outlined init with copy of AttributedString.UTF16View(a1, v10);
  v8 = specialized Sequence._copySequenceContents(initializing:)(v10, (v7 + 4), v6);
  outlined destroy of TermOfAddress?(v10, &_ss16IndexingIteratorVy10Foundation16AttributedStringV9UTF16ViewVGMd);
  if (v8 != v6)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

{
  v2 = *a1;
  v11[0] = *(*a1 + 24);
  v3 = *(v2 + 56);
  v11[1] = *(v2 + 40);
  v11[2] = v3;
  v4 = *(a1 + 56);
  v11[5] = *(a1 + 40);
  v11[6] = v4;
  v5 = *(a1 + 24);
  v11[3] = *(a1 + 8);
  v11[4] = v5;
  swift_unknownObjectRetain();
  v6 = BigSubstring.UnicodeScalarView.count.getter();
  outlined destroy of BigSubstring.UnicodeScalarView(v11);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs7UnicodeO6ScalarV_Tt1g5(v6, 0);
  outlined init with copy of AttributedString.UnicodeScalarView(a1, v10);
  v8 = specialized Sequence._copySequenceContents(initializing:)(v10, (v7 + 4), v6);
  outlined destroy of TermOfAddress?(v10, &_ss16IndexingIteratorVy10Foundation16AttributedStringV17UnicodeScalarViewVGMd);
  if (v8 != v6)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

{
  v2 = *a1;
  v11[0] = *(*a1 + 24);
  v3 = *(v2 + 56);
  v11[1] = *(v2 + 40);
  v11[2] = v3;
  v4 = *(a1 + 56);
  v11[5] = *(a1 + 40);
  v11[6] = v4;
  v5 = *(a1 + 24);
  v11[3] = *(a1 + 8);
  v11[4] = v5;
  swift_unknownObjectRetain();
  v6 = BigSubstring.count.getter();
  outlined destroy of BigSubstring(v11);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSJ_Tt1g5(v6, 0);
  outlined init with copy of AttributedString.CharacterView(a1, v10);
  v8 = specialized Sequence._copySequenceContents(initializing:)(v10, v7 + 4, v6);
  outlined destroy of TermOfAddress?(v10, &_ss16IndexingIteratorVy10Foundation16AttributedStringV13CharacterViewVGMd);
  if (v8 != v6)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

{
  v2 = specialized Collection.distance(from:to:)((*(a1 + 48) >> 11 << 16) | 4, (*(a1 + 80) >> 11 << 16) | 4);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v2;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS5IndexV_Tt1g5(v2, 0);
  outlined init with copy of AttributedString._IndexConverterFromString(a1, v7);
  v5 = specialized Sequence._copySequenceContents(initializing:)(v7, v4 + 4, v3);
  outlined destroy of TermOfAddress?(v7, &_ss16IndexingIteratorVy10Foundation16AttributedStringV019_IndexConverterFromE0VGMd);
  if (v5 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2)
  {
    if ((result - a2) >= 0x8000000000000001)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (a2 >= result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = ~a2 + result;
  if (v3 >= (result ^ 0x8000000000000000))
  {
    v4 = result ^ 0x8000000000000000;
  }

  else
  {
    v4 = ~a2 + result;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  if ((result ^ 0x8000000000000000) <= v3)
  {
LABEL_17:
    __break(1u);
    return result;
  }

LABEL_10:
  v5 = a2 - result;
  if (a2 == result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = result;
  v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSnySiG_Tt1g5(a2 - result, 0);

  v10 = specialized Sequence._copySequenceContents(initializing:)(&v11, (v9 + 4), v5, v6, a2, a3);

  if (v10 != v5)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return v9;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString.Runs.NSAttributesSlice(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributedString.Runs.NSAttributesSlice.Iterator(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 96);
  if (v8 == 2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = *(a1 + 88);
  v10 = *(*a1 + 16);
  v17 = *(a1 + 72);
  v18 = v9;
  v19 = v8;
  v20 = v10;
  v11 = *(a1 + 208);
  if (v11 == 2)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v12 = *(a1 + 200);
  v21 = *(a1 + 184);
  v22 = v12;
  v23 = v11;
  v24 = v10;
  specialized BidirectionalCollection._distance(from:to:)(&v17, &v21);
  if (v13)
  {
    v14 = v13;
    v15 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation18AttributeContainerV_SnyAF16AttributedStringV5IndexVGt_Tt1g5(v13, 0);
    outlined init with copy of AttributedString.Runs.NSAttributesSlice(a1, v4);
    v16 = specialized Sequence._copySequenceContents(initializing:)(v7, v15 + 4, v14);
    outlined destroy of AttributedString.Runs.NSAttributesSlice.Iterator(v7);
    if (v16 != v14)
    {
      __break(1u);
    }
  }
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = MEMORY[0x1E69E7CC0];
  if (a1 && a2)
  {
    v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation16AttributedStringV12_InternalRunV_Tt1g5(a2, 0);
    swift_unknownObjectRetain();
    v10 = specialized Sequence._copySequenceContents(initializing:)(v11, v9 + 4, a2, a1, a2, a3, a4);
    result = outlined destroy of TermOfAddress?(v11, &_ss16IndexingIteratorVy10Foundation16AttributedStringV13_InternalRunsVGMd);
    if (v10 == a2)
    {
      return v9;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t specialized _copyCollectionToContiguousArray<A>(_:)()
{
  v0 = BigString.Index.init(_utf8Offset:)();
  result = BigString.Index.init(_utf8Offset:)();
  v2 = result >> 10;
  if (result >> 10 < v0 >> 10)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  if (v0 >> 10 != v2)
  {
    result = v0;
    v3 = 0;
    do
    {
      v4 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_12;
      }

      Substring.index(after:)();
      result = BigString.Index.init(_utf8Offset:)();
      ++v3;
    }

    while (v2 != result >> 10);
    if (!v4)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation16AttributedStringV5IndexV_Tt1g5(v4, 0);

    v6 = specialized Sequence._copySequenceContents(initializing:)(v7, v5 + 4, v4);
    result = outlined destroy of TermOfAddress?(v7, &_ss16IndexingIteratorVy10Foundation16AttributedStringV019_IndexConverterFromdE0VGMd);
    if (v6 == v4)
    {
      return v5;
    }

    goto LABEL_13;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v3, a1);

  outlined consume of Set<AnyKeyPath>.Iterator._Variant();
  if (v7 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1, char *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v4, 0);

    MEMORY[0x1865CC0B0](a2 + 32, v4, v3);
    v3 = v5;

    if (v3 == v4)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v4 = __CocoaSet.count.getter();
    if (!v4)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(void (**a1)(uint64_t, uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V021InflectionAlternativeG0OGMd);
  MEMORY[0x1EEE9AC00](v2);
  v194 = (&v189 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionV8IteratorVy10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AE15AttributeScopesO0dH0V021InflectionAlternativeJ0OG_GMd);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v189 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVy10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AC15AttributeScopesO0cG0V021InflectionAlternativeI0OGGMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v189 - v8;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  MEMORY[0x1EEE9AC00](v223);
  v222 = &v189 - v11;
  v201 = a1[26];
  if (v201 == 2)
  {
    goto LABEL_185;
  }

  v12 = a1[12];
  if (v12 == 2)
  {
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  v13 = a1[23];
  v14 = a1[24];
  v198 = a1[25];
  v199 = v14;
  v16 = a1[9];
  v15 = a1[10];
  v17 = a1[11];
  v212 = *a1;
  v18 = *(v212 + 2);
  *v224 = v16;
  *&v224[8] = v15;
  v216 = v17;
  v217 = v15;
  *&v224[16] = v17;
  *&v224[24] = v12;
  *&v224[32] = v18;
  v19 = v16 >> 10;
  v200 = v13;
  v20 = v13 >> 10;
  v202 = v2;
  v221 = v6;
  if (v16 >> 10 >= v13 >> 10)
  {
    goto LABEL_84;
  }

  v192 = v4;
  v193 = v9;
  v191 = v10;
  v21 = 0;
  do
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
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
      goto LABEL_169;
    }

    v259 = *v224;
    v260 = *&v224[16];
    v261 = *&v224[32];
    specialized AttributedString.Runs.AttributesSlice1.index(after:)(&v259, v224);
    ++v21;
  }

  while (v20 != *v224 >> 10);
LABEL_7:
  if (!v22)
  {
    return;
  }

  v190 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation16AttributedStringVSg_SnyAH5IndexVGt_Tt1g5(v22, 0);
  v23 = v193;
  outlined init with copy of FloatingPointRoundingRule?(a1, v193, &_ss18ReversedCollectionVy10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AC15AttributeScopesO0cG0V021InflectionAlternativeI0OGGMd);
  v2 = &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V021InflectionAlternativeG0OGMd;
  v4 = &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V021InflectionAlternativeG0OGMR;
  v24 = v23;
  v25 = v194;
  outlined init with take of IntegerFormatStyle<Int>.Percent(v24, v194, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V021InflectionAlternativeG0OGMd);
  outlined init with copy of FloatingPointRoundingRule?(v25, v6, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V021InflectionAlternativeG0OGMd);
  a1 = v25[26];
  if (a1 == 2)
  {
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
    return;
  }

  v26 = v25[24];
  v27 = v25[25];
  v16 = v25[23];
  v28 = (v6 + *(v192 + 9));
  v29 = *(*v25 + 16);
  *v28 = v16;
  v28[1] = v26;
  v216 = v27;
  v217 = v26;
  v28[2] = v27;
  v28[3] = a1;
  v197 = v28;
  v28[4] = v29;
  outlined destroy of TermOfAddress?(v25, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V021InflectionAlternativeG0OGMd);
  if (v22 < 1)
  {
    goto LABEL_167;
  }

  if (v6[12] == 2)
  {
    goto LABEL_188;
  }

  v30 = (v16 >> 10);
  v196 = v6[9] >> 10;
  v31 = v202;
  if (v16 >> 10 != v196)
  {
    v220 = (v191 + 8);
    v32 = v190 + 4;
    v33 = 1;
    v215 = v22;
    while (1)
    {
      if (!*(*(v6 + *(v31 + 9)) + 16))
      {
        goto LABEL_168;
      }

      v207 = *(v6 + *(v31 + 9));
      v209 = v33;
      v210 = v32;
      v218 = *(v6 + *(v31 + 10));
      v219 = v30;
      v34 = v6[23];
      v35 = v6[26];
      v36 = v6;
      v37 = (v34 >> 10);
      v38 = v35 != 2 && v30 == v37;
      if (!v38)
      {
        v213 = a1;
        v214 = v16;
        v9 = *(type metadata accessor for AttributedString.Runs() + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
        v39 = v222;
        RangeSet.ranges.getter();
        v40 = v223;
        v41 = RangeSet.Ranges.count.getter();
        v42 = *v220;
        (*v220)(v39, v40);
        if (v41 < 1)
        {
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
        }

        else
        {
          v43 = 0;
          while (!__OFADD__(v43, v41))
          {
            v44 = (v43 + v41) / 2;
            v45 = v222;
            RangeSet.ranges.getter();
            v46 = v223;
            RangeSet.Ranges.subscript.getter();
            v42(v45, v46);
            v47 = v219;
            v34 = v225;
            v37 = (v225 >> 10);
            if (v219 < v225 >> 10)
            {
              v41 = (v43 + v41) / 2;
            }

            else
            {
              if (v219 < v227 >> 10)
              {
                v211 = v226;
                v212 = *(&v225 + 1);
                v35 = *(&v226 + 1);
                a1 = v213;
                v16 = v214;
                goto LABEL_28;
              }

              v43 = v44 + 1;
            }

            if (v43 >= v41)
            {
              goto LABEL_152;
            }
          }
        }

        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
        goto LABEL_160;
      }

      v48 = v36[24];
      v211 = v36[25];
      v212 = v48;
      type metadata accessor for AttributedString.Runs();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
      v9 = v222;
      RangeSet.ranges.getter();
      v49 = v223;
      v44 = RangeSet.Ranges.count.getter();
      v42 = *v220;
      (*v220)(v9, v49);
      v47 = v219;
LABEL_28:
      v38 = v37 == v47;
      v6 = v221;
      if (v38)
      {
        if (v44 < 1)
        {
          goto LABEL_174;
        }

        type metadata accessor for AttributedString.Runs();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
        v9 = v222;
        RangeSet.ranges.getter();
        v50 = v223;
        RangeSet.Ranges.subscript.getter();
        v42(v9, v50);
        v34 = v225;
        v35 = *(&v226 + 1);
        v211 = v226;
        v212 = *(&v225 + 1);
        v16 = v227;
        a1 = *(&v228 + 1);
        v216 = v228;
        v217 = *(&v227 + 1);
      }

      v206 = v35;
      if (*(v218 + 16) == 1 && (specialized Set.contains(_:)(0, 1, v218) & 1) == 0)
      {
        break;
      }

      v20 = *v6;
      v51 = *(*v6 + 24);
      v204 = (*v6 + 24);
      v205 = v34;
      v52 = *(v20 + 40);
      v246 = v51;
      v247 = v52;
      v248 = *(v20 + 56);
      swift_unknownObjectRetain();
      v53 = BigString.UTF8View.index(before:)();
      v55 = v54;
      v57 = v56;
      v201 = v58;
      swift_unknownObjectRelease();
      v59 = *(v20 + 72);
      v60 = *(v20 + 88);
      if (v59)
      {
        v61 = *(v20 + 88);
      }

      else
      {
        v61 = 0;
      }

      v219 = (v53 >> 11);
      if (v61 < (v53 >> 11))
      {
        goto LABEL_170;
      }

      v198 = v57;
      v199 = v55;
      v213 = a1;
      v214 = v16;
      v203 = *(v20 + 80);
      v62 = *(v20 + 96);
      v200 = v53;
      v208 = v62;
      if (v59)
      {
        if (v219 < v60)
        {
          v64 = (v59 + 16);
          LODWORD(v63) = *(v59 + 16);
          if (*(v59 + 16))
          {
            v65 = *(v59 + 18);
            swift_unknownObjectRetain_n();
            if (!v65)
            {
              v67 = 0;
              v66 = v219;
              v70 = v59;
LABEL_62:
              v84 = 0;
              v85 = 24;
              v9 = v66;
              v63 = v63;
              while (1)
              {
                v86 = *(v70 + v85);
                v87 = v9 - v86;
                if (__OFSUB__(v9, v86))
                {
                  goto LABEL_161;
                }

                if (__OFADD__(v87, 1))
                {
                  goto LABEL_162;
                }

                if (v87 + 1 < 1)
                {
                  v63 = v84;
                  goto LABEL_72;
                }

                ++v84;
                v85 += 24;
                v9 -= v86;
                if (v63 == v84)
                {
                  if (!v87)
                  {
                    goto LABEL_71;
                  }

                  goto LABEL_182;
                }
              }
            }

            v195 = v20;
            v66 = v219;
            v67 = v65;
            v68 = v59;
            do
            {
              v69 = *v64;
              if (*v64)
              {
                v71 = 0;
                v72 = (v68 + 40);
                while (1)
                {
                  v73 = *v72;
                  v72 += 3;
                  v74 = (v66 - v73);
                  if (__OFSUB__(v66, v73))
                  {
                    goto LABEL_153;
                  }

                  if (__OFADD__(v74, 1))
                  {
                    goto LABEL_154;
                  }

                  if (v74 + 1 < 1)
                  {
                    v69 = v71;
                    goto LABEL_44;
                  }

                  ++v71;
                  v66 = v74;
                  if (v69 == v71)
                  {
                    goto LABEL_53;
                  }
                }
              }

              v74 = v66;
LABEL_53:
              if (v74)
              {
                goto LABEL_163;
              }

              v66 = 0;
LABEL_44:
              v67 = (v69 << ((4 * v65 + 8) & 0x3C)) | ((-15 << ((4 * v65 + 8) & 0x3C)) - 1) & v67;
              v70 = *(v68 + 24 + 24 * v69);
              swift_unknownObjectRetain();
              swift_unknownObjectRelease();
              v64 = (v70 + 16);
              LOBYTE(v65) = *(v70 + 18);
              v68 = v70;
            }

            while (v65);
            LODWORD(v63) = *v64;
            if (*v64)
            {
              v20 = v195;
              goto LABEL_62;
            }

            v63 = 0;
            v20 = v195;
            if (!v66)
            {
LABEL_71:
              v9 = 0;
LABEL_72:
              swift_unknownObjectRelease();
              v77 = v67 & 0xFFFFFFFFFFFFF0FFLL | (v63 << 8);
              v76 = v203;
              goto LABEL_56;
            }

            goto LABEL_182;
          }
        }
      }

      v75 = swift_unknownObjectRetain();
      v76 = v203;
      v77 = specialized Rope._endPath.getter(v75);
      v70 = 0;
      v9 = 0;
      if (v59)
      {
LABEL_56:
        v78 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v208, v77, v70, v59, v76);
        swift_unknownObjectRelease();
      }

      else
      {
        v78 = 0;
      }

      v6 = v221;
      v88 = v214;
      if (__OFSUB__(v219, v9))
      {
        goto LABEL_171;
      }

      v245[0] = v208;
      v245[1] = v77;
      v245[2] = v70;
      v245[3] = v78;
      v245[4] = v219 - v9;
      AttributedString.Runs._firstOfMatchingRuns(with:comparing:)(v245, v207, v237);
      if (v237[4] < (v205 >> 11))
      {
        v89 = v204[1];
        v242[0] = *v204;
        v242[1] = v89;
        v242[2] = v204[2];
        if (v88 >> 10 < v205 >> 10)
        {
          goto LABEL_176;
        }

        v241[0] = v205;
        v241[1] = v212;
        v241[2] = v211;
        v241[3] = v206;
        v241[4] = v88;
        v241[5] = v217;
        v241[6] = v216;
        v241[7] = v213;
        v90 = *v204;
        v91 = v204[1];
        v277 = *(v204 + 4);
        v276[1] = v91;
        v276[0] = v90;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v276, &v225);
        v82 = v242;
        v83 = v241;
        goto LABEL_78;
      }

      v99 = *(v20 + 40);
      v244[3] = *(v20 + 24);
      v244[4] = v99;
      v9 = v20;
      v244[5] = *(v20 + 56);
      swift_unknownObjectRetain();
      v100 = BigString.UTF8View.index(_:offsetBy:)();
      v102 = v101;
      v104 = v103;
      v106 = v105;
      swift_unknownObjectRelease();
      v107 = v204[1];
      v244[0] = *v204;
      v244[1] = v107;
      v244[2] = v204[2];
      if (v88 >> 10 < v100 >> 10)
      {
        goto LABEL_177;
      }

      v243[0] = v100;
      v243[1] = v102;
      v243[2] = v104;
      v243[3] = v106;
      v243[4] = v88;
      v243[5] = v217;
      v243[6] = v216;
      v243[7] = v213;
      v108 = *v204;
      v109 = v204[1];
      v275 = *(v204 + 4);
      v274[1] = v109;
      v274[0] = v108;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v274, &v225);
      v82 = v244;
      v92 = BigString._lastConstraintBreak(in:with:)(v243, v218);
      v94 = v110;
      v96 = v111;
      v98 = v112;
LABEL_81:
      outlined destroy of BigString(v82);
      v113 = *(v20 + 16);
      v114 = v197;
      *v197 = v92;
      v114[1] = v94;
      v114[2] = v96;
      v114[3] = v98;
      v114[4] = v113;
      v115 = *(v114 + 1);
      v238 = *v114;
      v239 = v115;
      v240 = v113;
      v4 = v224;
      specialized AttributedString.Runs.AttributesSlice1.subscript.getter(v224, &v224[8], &v238);
      v2 = *v224;
      v233 = *&v224[40];
      v234 = *&v224[56];
      v235 = *&v224[72];
      v231 = *&v224[8];
      v232 = *&v224[24];
      v228 = *&v224[48];
      v229 = *&v224[64];
      v230 = *&v224[80];
      v225 = *v224;
      v226 = *&v224[16];
      v227 = *&v224[32];

      outlined destroy of TermOfAddress?(&v225, &_s10Foundation16AttributedStringVSg_SnyAC5IndexVGtMd);
      v117 = v209;
      v116 = v210;
      *v210 = v2;
      v118 = v231;
      *(v116 + 3) = v232;
      v119 = v234;
      *(v116 + 5) = v233;
      *(v116 + 7) = v119;
      *(v116 + 9) = v235;
      *(v116 + 1) = v118;
      if (v117 == v215)
      {
        outlined destroy of TermOfAddress?(v6, &_ss18ReversedCollectionV8IteratorVy10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AE15AttributeScopesO0dH0V021InflectionAlternativeJ0OG_GMd);
        return;
      }

      v16 = v238;
      v216 = v239;
      v217 = *(&v238 + 1);
      a1 = *(&v239 + 1);
      v32 = v116 + 11;
      v33 = v117 + 1;
      v30 = (v238 >> 10);
      v31 = v202;
      if (v238 >> 10 == v196)
      {
        goto LABEL_83;
      }
    }

    v20 = *v6;
    v79 = *(*v6 + 24);
    v80 = *(*v6 + 56);
    v250[1] = *(*v6 + 40);
    v250[2] = v80;
    v250[0] = v79;
    if (v16 >> 10 < v34 >> 10)
    {
      goto LABEL_180;
    }

    v249[0] = v34;
    v249[1] = v212;
    v249[2] = v211;
    v249[3] = v206;
    v249[4] = v16;
    v249[5] = v217;
    v249[6] = v216;
    v249[7] = a1;
    v81 = *(v20 + 24);
    v273 = *(v20 + 56);
    v272[1] = *(v20 + 40);
    v272[0] = v81;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v272, &v225);
    v82 = v250;
    v83 = v249;
LABEL_78:
    v92 = BigString._lastConstraintBreak(in:with:)(v83, v218);
    v94 = v93;
    v96 = v95;
    v98 = v97;
    goto LABEL_81;
  }

LABEL_83:
  outlined destroy of TermOfAddress?(v6, &_ss18ReversedCollectionV8IteratorVy10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AE15AttributeScopesO0dH0V021InflectionAlternativeJ0OG_GMd);
  __break(1u);
LABEL_84:
  if (v20 < v19)
  {
    v195 = *(a1 + *(v2 + 9));
    if (*(v195 + 16))
    {
      v214 = v12;
      v192 = v4;
      v193 = v9;
      v22 = 0;
      v211 = *(a1 + *(v2 + 10));
      v191 = v10;
      v219 = (v10 + 8);
      v220 = a1;
      v209 = v20;
      while (1)
      {
        v134 = __OFSUB__(v22, 1);
        v135 = v22 - 1;
        if (v134)
        {
          break;
        }

        v215 = v135;
        v213 = v16;
        v136 = v16 >> 10;
        v210 = type metadata accessor for AttributedString.Runs();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
        v137 = v222;
        RangeSet.ranges.getter();
        v138 = v223;
        v139 = RangeSet.Ranges.count.getter();
        v218 = *v219;
        (v218)(v137, v138);
        if (v136 != v20)
        {
          if (v139 < 1)
          {
            goto LABEL_156;
          }

          v146 = 0;
          while (!__OFADD__(v146, v139))
          {
            v141 = (v146 + v139) / 2;
            v147 = v222;
            RangeSet.ranges.getter();
            v148 = v223;
            RangeSet.Ranges.subscript.getter();
            (v218)(v147, v148);
            v143 = v225;
            v140 = v225 >> 10;
            if (v136 < v225 >> 10)
            {
              v139 = (v146 + v139) / 2;
              if (v146 >= v141)
              {
                goto LABEL_156;
              }
            }

            else
            {
              if (v136 < v227 >> 10)
              {
                v142 = *(&v225 + 1);
                v145 = *(&v226 + 1);
                v144 = v226;
                v6 = v221;
                v20 = v209;
                goto LABEL_102;
              }

              v146 = v141 + 1;
              if (v141 + 1 >= v139)
              {
                goto LABEL_156;
              }
            }
          }

          goto LABEL_159;
        }

        v140 = v20;
        v141 = v139;
        v142 = v199;
        v143 = v200;
        v144 = v198;
        v145 = v201;
LABEL_102:
        v38 = v140 == v136;
        v22 = v215;
        v9 = v212;
        if (v38)
        {
          if (v141 < 1)
          {
            goto LABEL_175;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
          v149 = v222;
          RangeSet.ranges.getter();
          v150 = v223;
          RangeSet.Ranges.subscript.getter();
          v151 = v149;
          v9 = v212;
          (v218)(v151, v150);
          v142 = *(&v225 + 1);
          v143 = v225;
          v145 = *(&v226 + 1);
          v144 = v226;
          v216 = v228;
          v217 = *(&v227 + 1);
          v213 = v227;
          v214 = *(&v228 + 1);
        }

        v218 = v145;
        if (*(v211 + 16) == 1 && (specialized Set.contains(_:)(0, 1, v211) & 1) == 0)
        {
          v265[0] = *(v9 + 24);
          v265[1] = *(v9 + 40);
          v265[2] = *(v9 + 56);
          if (v213 >> 10 < v143 >> 10)
          {
            goto LABEL_181;
          }

          *&v259 = v143;
          *(&v259 + 1) = v142;
          *&v260 = v144;
          *(&v260 + 1) = v218;
          v261 = v213;
          v262 = v217;
          v263 = v216;
          v264 = v214;
          v177 = *(v9 + 24);
          v267 = *(v9 + 56);
          v266[1] = *(v9 + 40);
          v266[0] = v177;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v266, &v225);
          v130 = v265;
          v16 = BigString._lastConstraintBreak(in:with:)(&v259, v211);
          v216 = v179;
          v217 = v178;
          v214 = v180;
          a1 = v220;
        }

        else
        {
          v206 = v142;
          v256 = *(v9 + 24);
          v257 = *(v9 + 40);
          v258 = *(v9 + 56);
          swift_unknownObjectRetain();
          v152 = BigString.UTF8View.index(before:)();
          v154 = v153;
          v207 = v156;
          v208 = v155;
          swift_unknownObjectRelease();
          v157 = *(v9 + 72);
          v158 = *(v9 + 88);
          v159 = (v152 >> 11);
          if (v157)
          {
            v160 = *(v9 + 88);
          }

          else
          {
            v160 = 0;
          }

          if (v160 < v159)
          {
            goto LABEL_172;
          }

          v161 = *(v9 + 96);
          v203 = v144;
          v204 = v154;
          v205 = v152;
          if (v157)
          {
            v196 = *(v9 + 80);
            v197 = v158;
            v162 = (v157 + 16);
            v163 = *(v157 + 16);
            v164 = *(v157 + 18);
            v210 = (v152 >> 11);
            if (v159 < v158 && v163)
            {
              v190 = v161;
              swift_unknownObjectRetain_n();
              if (!v164)
              {
                v166 = 0;
                v165 = v210;
                v169 = v157;
LABEL_136:
                v22 = v215;
                v181 = 0;
                v182 = 24;
                v9 = v165;
                while (1)
                {
                  v183 = *(v169 + v182);
                  v165 = (v9 - v183);
                  if (__OFSUB__(v9, v183))
                  {
                    goto LABEL_164;
                  }

                  if (__OFADD__(v165, 1))
                  {
                    goto LABEL_165;
                  }

                  if (v165 + 1 < 1)
                  {
                    goto LABEL_144;
                  }

                  ++v181;
                  v182 += 24;
                  v9 -= v183;
                  if (v163 == v181)
                  {
                    v181 = v163;
                    goto LABEL_142;
                  }
                }
              }

              v165 = v210;
              v166 = v164;
              v167 = v157;
              do
              {
                v168 = *v162;
                if (*v162)
                {
                  v170 = 0;
                  v171 = (v167 + 40);
                  while (1)
                  {
                    v172 = *v171;
                    v171 += 3;
                    v173 = (v165 - v172);
                    if (__OFSUB__(v165, v172))
                    {
                      goto LABEL_157;
                    }

                    if (__OFADD__(v173, 1))
                    {
                      goto LABEL_158;
                    }

                    if (v173 + 1 < 1)
                    {
                      v168 = v170;
                      goto LABEL_118;
                    }

                    ++v170;
                    v165 = v173;
                    if (v168 == v170)
                    {
                      goto LABEL_127;
                    }
                  }
                }

                v173 = v165;
LABEL_127:
                if (v173)
                {
                  goto LABEL_166;
                }

                v165 = 0;
LABEL_118:
                v166 = (v168 << ((4 * v164 + 8) & 0x3C)) | ((-15 << ((4 * v164 + 8) & 0x3C)) - 1) & v166;
                v169 = *(v167 + 24 + 24 * v168);
                swift_unknownObjectRetain();
                swift_unknownObjectRelease();
                v162 = (v169 + 16);
                LOBYTE(v164) = *(v169 + 18);
                v167 = v169;
              }

              while (v164);
              LODWORD(v163) = *v162;
              if (*v162)
              {
                goto LABEL_136;
              }

              v181 = 0;
              v22 = v215;
LABEL_142:
              if (!v165)
              {
                v9 = 0;
LABEL_144:
                swift_unknownObjectRelease();
                v175 = v166 & 0xFFFFFFFFFFFFF0FFLL | (v181 << 8);
                v161 = v190;
                goto LABEL_145;
              }

              goto LABEL_183;
            }

            v175 = ((-15 << ((4 * v164 + 8) & 0x3C)) - 1) & v164 | (v163 << ((4 * v164 + 8) & 0x3C));
            swift_unknownObjectRetain();
            v9 = 0;
            v169 = 0;
            v22 = v215;
LABEL_145:
            v174 = v161;
            v176 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v161, v175, v169, v157, v196);
            swift_unknownObjectRelease();
            v159 = v210;
          }

          else
          {
            v174 = v161;
            v9 = 0;
            v169 = 0;
            v175 = 0;
            v176 = 0;
          }

          a1 = v220;
          if (__OFSUB__(v159, v9))
          {
            goto LABEL_173;
          }

          v255[0] = v174;
          v255[1] = v175;
          v255[2] = v169;
          v255[3] = v176;
          v255[4] = v159 - v9;
          AttributedString.Runs._firstOfMatchingRuns(with:comparing:)(v255, v195, v236);
          if (v236[4] >= (v143 >> 11))
          {
            v9 = v212;
            v120 = *(v212 + 40);
            v254[3] = *(v212 + 24);
            v254[4] = v120;
            v254[5] = *(v212 + 56);
            swift_unknownObjectRetain();
            v121 = BigString.UTF8View.index(_:offsetBy:)();
            v123 = v122;
            v125 = v124;
            v127 = v126;
            swift_unknownObjectRelease();
            v128 = *(v9 + 40);
            v254[0] = *(v9 + 24);
            v254[1] = v128;
            v254[2] = *(v9 + 56);
            v6 = v221;
            if (v213 >> 10 < v121 >> 10)
            {
              goto LABEL_179;
            }

            v253[0] = v121;
            v253[1] = v123;
            v253[2] = v125;
            v253[3] = v127;
            v253[4] = v213;
            v253[5] = v217;
            v253[6] = v216;
            v253[7] = v214;
            v129 = *(v9 + 24);
            v269 = *(v9 + 56);
            v268[1] = *(v9 + 40);
            v268[0] = v129;
            outlined init with copy of Rope<BigString._Chunk>._Node?(v268, &v225);
            v130 = v254;
            v16 = BigString._lastConstraintBreak(in:with:)(v253, v211);
            v216 = v132;
            v217 = v131;
            v214 = v133;
            a1 = v220;
            v20 = v209;
          }

          else
          {
            v184 = *(v212 + 40);
            v252[0] = *(v212 + 24);
            v252[1] = v184;
            v252[2] = *(v212 + 56);
            v20 = v209;
            v6 = v221;
            if (v213 >> 10 < v143 >> 10)
            {
              goto LABEL_178;
            }

            v251[0] = v143;
            v251[1] = v206;
            v251[2] = v203;
            v251[3] = v218;
            v251[4] = v213;
            v251[5] = v217;
            v251[6] = v216;
            v251[7] = v214;
            v185 = *(v212 + 24);
            v271 = *(v212 + 7);
            v270[1] = *(v212 + 40);
            v270[0] = v185;
            outlined init with copy of Rope<BigString._Chunk>._Node?(v270, &v225);
            v130 = v252;
            v16 = BigString._lastConstraintBreak(in:with:)(v251, v211);
            v216 = v187;
            v217 = v186;
            v214 = v188;
          }
        }

        outlined destroy of BigString(v130);
        if (v20 == v16 >> 10)
        {
          goto LABEL_7;
        }
      }

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
    }

    __break(1u);
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }
}

void specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V014InflectionRuleG0OGMd);
  MEMORY[0x1EEE9AC00](v2);
  v205 = &v201 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionV8IteratorVy10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AE15AttributeScopesO0dH0V014InflectionRuleJ0OG_GMd);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v201 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVy10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AC15AttributeScopesO0cG0V014InflectionRuleI0OGGMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v201 - v8;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  MEMORY[0x1EEE9AC00](v234);
  v233 = &v201 - v11;
  v212 = a1[26];
  if (v212 == 2)
  {
    goto LABEL_185;
  }

  v12 = a1[12];
  if (v12 == 2)
  {
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  v13 = a1[23];
  v14 = a1[24];
  v209 = a1[25];
  v210 = v14;
  v16 = a1[9];
  v15 = a1[10];
  v17 = a1[11];
  v18 = *a1;
  v19 = *(*a1 + 16);
  *&v239 = v16;
  *(&v239 + 1) = v15;
  v227 = v17;
  v228 = v15;
  *v240 = v17;
  *&v240[8] = v12;
  *&v240[16] = v19;
  v20 = v16 >> 10;
  v211 = v13;
  v21 = v13 >> 10;
  v214 = v2;
  v232 = v6;
  if (v16 >> 10 >= v13 >> 10)
  {
    goto LABEL_84;
  }

  v203 = v4;
  v204 = v9;
  v202 = v10;
  v22 = 0;
  do
  {
    v9 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
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
      goto LABEL_169;
    }

    v276 = v239;
    v277 = *v240;
    v278 = *&v240[16];
    specialized AttributedString.Runs.AttributesSlice1.index(after:)(&v276, &v239);
    ++v22;
  }

  while (v21 != v239 >> 10);
LABEL_7:
  if (!v9)
  {
    return;
  }

  v201 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation14InflectionRuleOSg_SnyAF16AttributedStringV5IndexVGt_Tt1g5(v9, 0);
  v23 = v204;
  outlined init with copy of FloatingPointRoundingRule?(a1, v204, &_ss18ReversedCollectionVy10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AC15AttributeScopesO0cG0V014InflectionRuleI0OGGMd);
  v2 = &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V014InflectionRuleG0OGMd;
  v4 = &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V014InflectionRuleG0OGMR;
  v24 = v23;
  v12 = v205;
  outlined init with take of IntegerFormatStyle<Int>.Percent(v24, v205, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V014InflectionRuleG0OGMd);
  outlined init with copy of FloatingPointRoundingRule?(v12, v6, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V014InflectionRuleG0OGMd);
  a1 = *(v12 + 208);
  if (a1 == 2)
  {
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
    return;
  }

  v25 = *(v12 + 192);
  v26 = *(v12 + 200);
  v16 = *(v12 + 184);
  v27 = (v6 + *(v203 + 9));
  v28 = *(*v12 + 16);
  *v27 = v16;
  v27[1] = v25;
  v227 = v26;
  v228 = v25;
  v27[2] = v26;
  v27[3] = a1;
  v209 = v27;
  v27[4] = v28;
  outlined destroy of TermOfAddress?(v12, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V014InflectionRuleG0OGMd);
  if (v9 < 1)
  {
    goto LABEL_167;
  }

  if (v6[12] == 2)
  {
    goto LABEL_188;
  }

  v29 = (v16 >> 10);
  v207 = v6[9] >> 10;
  v30 = v214;
  if (v16 >> 10 != v207)
  {
    v231 = (v202 + 8);
    v208 = v235 + 3;
    v31 = v201 + 4;
    v32 = 1;
    v225 = v9;
    while (1)
    {
      if (!*(*(v6 + *(v30 + 9)) + 16))
      {
        goto LABEL_168;
      }

      v219 = *(v6 + *(v30 + 9));
      v220 = v32;
      v221 = v31;
      v229 = *(v6 + *(v30 + 10));
      v230 = v29;
      v33 = v6[23];
      v34 = v6[26];
      v35 = v6;
      v36 = (v33 >> 10);
      v37 = v34 != 2 && v29 == v36;
      if (!v37)
      {
        v226 = v16;
        v224 = a1;
        type metadata accessor for AttributedString.Runs();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
        v38 = v233;
        RangeSet.ranges.getter();
        v39 = v234;
        v40 = RangeSet.Ranges.count.getter();
        v41 = *v231;
        (*v231)(v38, v39);
        if (v40 < 1)
        {
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
        }

        else
        {
          v42 = 0;
          while (!__OFADD__(v42, v40))
          {
            v43 = (v42 + v40) / 2;
            v44 = v233;
            RangeSet.ranges.getter();
            v45 = v234;
            RangeSet.Ranges.subscript.getter();
            v41(v44, v45);
            v46 = v230;
            v47 = v241;
            v36 = (v241 >> 10);
            if (v230 < v241 >> 10)
            {
              v40 = (v42 + v40) / 2;
            }

            else
            {
              if (v230 < v243 >> 10)
              {
                v222 = v242;
                v223 = *(&v241 + 1);
                v34 = *(&v242 + 1);
                a1 = v224;
                v16 = v226;
                goto LABEL_28;
              }

              v42 = v43 + 1;
            }

            if (v42 >= v40)
            {
              goto LABEL_152;
            }
          }
        }

        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
        goto LABEL_160;
      }

      v48 = v35[24];
      v222 = v35[25];
      v223 = v48;
      type metadata accessor for AttributedString.Runs();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
      v49 = v233;
      RangeSet.ranges.getter();
      v50 = v234;
      v47 = v33;
      v43 = RangeSet.Ranges.count.getter();
      v41 = *v231;
      (*v231)(v49, v50);
      v46 = v230;
LABEL_28:
      v37 = v36 == v46;
      v6 = v232;
      if (v37)
      {
        if (v43 < 1)
        {
          goto LABEL_174;
        }

        type metadata accessor for AttributedString.Runs();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
        v51 = v233;
        RangeSet.ranges.getter();
        v52 = v234;
        RangeSet.Ranges.subscript.getter();
        v41(v51, v52);
        v47 = v241;
        v34 = *(&v242 + 1);
        v222 = v242;
        v223 = *(&v241 + 1);
        v16 = v243;
        v227 = v244;
        v228 = *(&v243 + 1);
        a1 = *(&v244 + 1);
      }

      v218 = v34;
      if (*(v229 + 16) == 1 && (specialized Set.contains(_:)(0, 1, v229) & 1) == 0)
      {
        break;
      }

      v21 = *v6;
      v53 = *(*v6 + 24);
      v215 = (*v6 + 24);
      v216 = v47;
      v54 = *(v21 + 40);
      v263 = v53;
      v264 = v54;
      v265 = *(v21 + 56);
      swift_unknownObjectRetain();
      v55 = BigString.UTF8View.index(before:)();
      v57 = v56;
      v59 = v58;
      v61 = v60;
      swift_unknownObjectRelease();
      v62 = *(v21 + 72);
      v63 = *(v21 + 88);
      if (v62)
      {
        v64 = *(v21 + 88);
      }

      else
      {
        v64 = 0;
      }

      v230 = (v55 >> 11);
      if (v64 < (v55 >> 11))
      {
        goto LABEL_170;
      }

      v210 = v61;
      v211 = v59;
      v212 = v57;
      v213 = v55;
      v226 = v16;
      v65 = *(v21 + 80);
      v217 = *(v21 + 96);
      v224 = a1;
      if (v62)
      {
        if (v230 < v63)
        {
          v67 = (v62 + 16);
          LODWORD(v66) = *(v62 + 16);
          if (*(v62 + 16))
          {
            v206 = v65;
            v68 = *(v62 + 18);
            swift_unknownObjectRetain_n();
            if (!v68)
            {
              v70 = 0;
              v69 = v230;
              v73 = v62;
LABEL_62:
              v79 = v217;
              v89 = 0;
              v90 = 24;
              v81 = v69;
              v66 = v66;
              while (1)
              {
                v91 = *(v73 + v90);
                v92 = v81 - v91;
                if (__OFSUB__(v81, v91))
                {
                  goto LABEL_161;
                }

                if (__OFADD__(v92, 1))
                {
                  goto LABEL_162;
                }

                if (v92 + 1 < 1)
                {
                  v66 = v89;
                  goto LABEL_72;
                }

                ++v89;
                v90 += 24;
                v81 = (v81 - v91);
                if (v66 == v89)
                {
                  if (!v92)
                  {
                    goto LABEL_71;
                  }

                  goto LABEL_182;
                }
              }
            }

            v205 = v21;
            v69 = v230;
            v70 = v68;
            v71 = v62;
            do
            {
              v72 = *v67;
              if (*v67)
              {
                v74 = 0;
                v75 = (v71 + 40);
                while (1)
                {
                  v76 = *v75;
                  v75 += 3;
                  v77 = (v69 - v76);
                  if (__OFSUB__(v69, v76))
                  {
                    goto LABEL_153;
                  }

                  if (__OFADD__(v77, 1))
                  {
                    goto LABEL_154;
                  }

                  if (v77 + 1 < 1)
                  {
                    v72 = v74;
                    goto LABEL_44;
                  }

                  ++v74;
                  v69 = v77;
                  if (v72 == v74)
                  {
                    goto LABEL_53;
                  }
                }
              }

              v77 = v69;
LABEL_53:
              if (v77)
              {
                goto LABEL_163;
              }

              v69 = 0;
LABEL_44:
              v70 = (v72 << ((4 * v68 + 8) & 0x3C)) | ((-15 << ((4 * v68 + 8) & 0x3C)) - 1) & v70;
              v73 = *(v71 + 24 + 24 * v72);
              swift_unknownObjectRetain();
              swift_unknownObjectRelease();
              v67 = (v73 + 16);
              LOBYTE(v68) = *(v73 + 18);
              v71 = v73;
            }

            while (v68);
            LODWORD(v66) = *v67;
            if (*v67)
            {
              v21 = v205;
              goto LABEL_62;
            }

            v66 = 0;
            v21 = v205;
            v79 = v217;
            if (!v69)
            {
LABEL_71:
              v81 = 0;
LABEL_72:
              swift_unknownObjectRelease();
              v80 = v70 & 0xFFFFFFFFFFFFF0FFLL | (v66 << 8);
              v65 = v206;
              goto LABEL_56;
            }

            goto LABEL_182;
          }
        }
      }

      v78 = swift_unknownObjectRetain();
      v79 = v217;
      v80 = specialized Rope._endPath.getter(v78);
      v73 = 0;
      v81 = 0;
      if (v62)
      {
LABEL_56:
        v82 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v79, v80, v73, v62, v65);
        swift_unknownObjectRelease();
      }

      else
      {
        v82 = 0;
      }

      v6 = v232;
      v93 = v226;
      if (__OFSUB__(v230, v81))
      {
        goto LABEL_171;
      }

      v262[0] = v79;
      v262[1] = v80;
      v262[2] = v73;
      v262[3] = v82;
      v262[4] = v230 - v81;
      AttributedString.Runs._firstOfMatchingRuns(with:comparing:)(v262, v219, v254);
      if (v254[4] < (v216 >> 11))
      {
        v94 = v215[1];
        v259[0] = *v215;
        v259[1] = v94;
        v259[2] = v215[2];
        if (v93 >> 10 < v216 >> 10)
        {
          goto LABEL_176;
        }

        v258[0] = v216;
        v258[1] = v223;
        v258[2] = v222;
        v258[3] = v218;
        v258[4] = v93;
        v258[5] = v228;
        v258[6] = v227;
        v258[7] = v224;
        v95 = *v215;
        v96 = v215[1];
        v294 = *(v215 + 4);
        v293[0] = v95;
        v293[1] = v96;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v293, &v241);
        v87 = v259;
        v88 = v258;
        goto LABEL_78;
      }

      v103 = *(v21 + 40);
      v261[3] = *(v21 + 24);
      v261[4] = v103;
      v261[5] = *(v21 + 56);
      swift_unknownObjectRetain();
      v104 = BigString.UTF8View.index(_:offsetBy:)();
      v106 = v105;
      v108 = v107;
      v110 = v109;
      swift_unknownObjectRelease();
      v111 = v215[1];
      v261[0] = *v215;
      v261[1] = v111;
      v261[2] = v215[2];
      if (v93 >> 10 < v104 >> 10)
      {
        goto LABEL_177;
      }

      v260[0] = v104;
      v260[1] = v106;
      v260[2] = v108;
      v260[3] = v110;
      v260[4] = v93;
      v260[5] = v228;
      v260[6] = v227;
      v260[7] = v224;
      v112 = *v215;
      v113 = v215[1];
      v292 = *(v215 + 4);
      v291[0] = v112;
      v291[1] = v113;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v291, &v241);
      v87 = v261;
      v97 = BigString._lastConstraintBreak(in:with:)(v260, v229);
      v99 = v114;
      v18 = v115;
      v102 = v116;
LABEL_81:
      outlined destroy of BigString(v87);
      v117 = *(v21 + 16);
      v118 = v209;
      *v209 = v97;
      v118[1] = v99;
      v118[2] = v18;
      v118[3] = v102;
      v118[4] = v117;
      v119 = *(v118 + 1);
      v255 = *v118;
      v256 = v119;
      v257 = v117;
      specialized AttributedString.Runs.AttributesSlice1.subscript.getter(&v239, &v240[8], &v255);
      v4 = *(&v239 + 1);
      v2 = v239;
      v120 = v240[4];
      v12 = *v240;
      v245 = *&v240[48];
      v246 = *&v240[64];
      v247 = *&v240[80];
      v241 = v239;
      v242 = *v240;
      v243 = *&v240[16];
      v244 = *&v240[32];
      outlined copy of AttributedString.AttributeRunBoundaries?(v239, *(&v239 + 1));
      outlined destroy of TermOfAddress?(&v241, &_s10Foundation14InflectionRuleOSg_SnyAA16AttributedStringV5IndexVGtMd);
      v121 = *&v240[24];
      v122 = *&v240[56];
      v123 = v208;
      *(v208 + 2) = *&v240[40];
      v123[3] = v122;
      v123[4] = *&v240[72];
      *v123 = *&v240[8];
      v123[1] = v121;
      v250 = v236;
      v251 = v237;
      v252[0] = *v238;
      LODWORD(v123) = *&v238[15];
      *(v252 + 15) = *&v238[15];
      v248 = v235[0];
      v249 = v235[1];
      v124 = v237;
      v126 = v220;
      v125 = v221;
      *(v221 + 53) = v236;
      *(v125 + 69) = v124;
      *(v125 + 85) = v252[0];
      v127 = v249;
      *(v125 + 21) = v248;
      *v125 = __PAIR128__(v4, v2);
      *(v125 + 20) = v120;
      *(v125 + 16) = v12;
      *(v125 + 100) = v123;
      *(v125 + 37) = v127;
      v9 = v225;
      if (v126 == v225)
      {
        outlined destroy of TermOfAddress?(v6, &_ss18ReversedCollectionV8IteratorVy10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AE15AttributeScopesO0dH0V014InflectionRuleJ0OG_GMd);
        return;
      }

      v16 = v255;
      v227 = v256;
      v228 = *(&v255 + 1);
      a1 = *(&v256 + 1);
      v31 = (v125 + 104);
      v32 = v126 + 1;
      v29 = (v255 >> 10);
      v30 = v214;
      if (v255 >> 10 == v207)
      {
        goto LABEL_83;
      }
    }

    v21 = *v6;
    v83 = *(*v6 + 24);
    v84 = *(*v6 + 40);
    v267[2] = *(*v6 + 56);
    v267[1] = v84;
    v267[0] = v83;
    if (v16 >> 10 < v47 >> 10)
    {
      goto LABEL_180;
    }

    v266[0] = v47;
    v266[1] = v223;
    v266[2] = v222;
    v266[3] = v218;
    v266[4] = v16;
    v266[5] = v228;
    v266[6] = v227;
    v266[7] = a1;
    v85 = *(v21 + 24);
    v290 = *(v21 + 56);
    v86 = *(v21 + 40);
    v289[0] = v85;
    v289[1] = v86;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v289, &v241);
    v87 = v267;
    v88 = v266;
LABEL_78:
    v97 = BigString._lastConstraintBreak(in:with:)(v88, v229);
    v99 = v98;
    v18 = v100;
    v102 = v101;
    goto LABEL_81;
  }

LABEL_83:
  outlined destroy of TermOfAddress?(v6, &_ss18ReversedCollectionV8IteratorVy10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AE15AttributeScopesO0dH0V014InflectionRuleJ0OG_GMd);
  __break(1u);
LABEL_84:
  if (v21 < v20)
  {
    v206 = *(a1 + *(v2 + 9));
    if (*(v206 + 16))
    {
      v203 = v4;
      v204 = v9;
      v9 = 0;
      v128 = *(a1 + *(v2 + 10));
      v222 = v18;
      v223 = v128;
      v202 = v10;
      v230 = (v10 + 8);
      v231 = a1;
      v220 = v21;
      while (1)
      {
        v143 = __OFSUB__(v9, 1);
        v144 = v9 - 1;
        if (v143)
        {
          break;
        }

        v225 = v144;
        v226 = v12;
        v224 = v16;
        v145 = v16 >> 10;
        v221 = type metadata accessor for AttributedString.Runs();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
        v146 = v233;
        RangeSet.ranges.getter();
        v147 = v234;
        v148 = RangeSet.Ranges.count.getter();
        v229 = *v230;
        (v229)(v146, v147);
        if (v145 != v21)
        {
          if (v148 < 1)
          {
            goto LABEL_156;
          }

          v155 = 0;
          while (!__OFADD__(v155, v148))
          {
            v150 = (v155 + v148) / 2;
            v156 = v233;
            RangeSet.ranges.getter();
            v157 = v234;
            RangeSet.Ranges.subscript.getter();
            (v229)(v156, v157);
            v152 = v241;
            v149 = v241 >> 10;
            if (v145 < v241 >> 10)
            {
              v148 = (v155 + v148) / 2;
              if (v155 >= v150)
              {
                goto LABEL_156;
              }
            }

            else
            {
              if (v145 < v243 >> 10)
              {
                v151 = *(&v241 + 1);
                v154 = *(&v242 + 1);
                v153 = v242;
                v6 = v232;
                v21 = v220;
                goto LABEL_102;
              }

              v155 = v150 + 1;
              if (v150 + 1 >= v148)
              {
                goto LABEL_156;
              }
            }
          }

          goto LABEL_159;
        }

        v149 = v21;
        v150 = v148;
        v151 = v210;
        v152 = v211;
        v153 = v209;
        v154 = v212;
LABEL_102:
        v37 = v149 == v145;
        v18 = v222;
        v158 = v226;
        if (v37)
        {
          if (v150 < 1)
          {
            goto LABEL_175;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
          v159 = v233;
          RangeSet.ranges.getter();
          v160 = v234;
          RangeSet.Ranges.subscript.getter();
          (v229)(v159, v160);
          v151 = *(&v241 + 1);
          v152 = v241;
          v154 = *(&v242 + 1);
          v153 = v242;
          v224 = v243;
          v227 = v244;
          v228 = *(&v243 + 1);
          v158 = *(&v244 + 1);
        }

        v229 = v154;
        if (*(v223 + 16) == 1 && (specialized Set.contains(_:)(0, 1, v223) & 1) == 0)
        {
          v188 = *(v18 + 40);
          v282[0] = *(v18 + 24);
          v282[1] = v188;
          v282[2] = *(v18 + 56);
          if (v224 >> 10 < v152 >> 10)
          {
            goto LABEL_181;
          }

          *&v276 = v152;
          *(&v276 + 1) = v151;
          *&v277 = v153;
          *(&v277 + 1) = v229;
          v278 = v224;
          v279 = v228;
          v280 = v227;
          v281 = v158;
          v189 = *(v18 + 24);
          v284 = *(v18 + 56);
          v283[1] = *(v18 + 40);
          v283[0] = v189;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v283, &v241);
          v139 = v282;
          v16 = BigString._lastConstraintBreak(in:with:)(&v276, v223);
          v227 = v191;
          v228 = v190;
          v12 = v192;
          a1 = v231;
        }

        else
        {
          v217 = v151;
          v161 = *(v18 + 40);
          v273 = *(v18 + 24);
          v274 = v161;
          v275 = *(v18 + 56);
          swift_unknownObjectRetain();
          v162 = BigString.UTF8View.index(before:)();
          v164 = v163;
          v218 = v166;
          v219 = v165;
          swift_unknownObjectRelease();
          v167 = *(v18 + 72);
          v168 = *(v18 + 88);
          v169 = v162 >> 11;
          if (v167)
          {
            v170 = *(v18 + 88);
          }

          else
          {
            v170 = 0;
          }

          if (v170 < v169)
          {
            goto LABEL_172;
          }

          v226 = v158;
          v171 = *(v18 + 96);
          v213 = v153;
          v215 = v164;
          v216 = v162;
          if (v167)
          {
            v207 = *(v18 + 80);
            v208 = v168;
            v172 = (v167 + 16);
            v173 = *(v167 + 16);
            v174 = *(v167 + 18);
            v221 = v162 >> 11;
            if (v169 < v168 && v173)
            {
              v201 = v171;
              swift_unknownObjectRetain_n();
              if (!v174)
              {
                v176 = 0;
                v175 = v221;
                v179 = v167;
LABEL_136:
                v18 = v222;
                v193 = 0;
                v194 = 24;
                v185 = v175;
                while (1)
                {
                  v195 = *(v179 + v194);
                  v175 = v185 - v195;
                  if (__OFSUB__(v185, v195))
                  {
                    goto LABEL_164;
                  }

                  if (__OFADD__(v175, 1))
                  {
                    goto LABEL_165;
                  }

                  if (v175 + 1 < 1)
                  {
                    goto LABEL_144;
                  }

                  ++v193;
                  v194 += 24;
                  v185 -= v195;
                  if (v173 == v193)
                  {
                    v193 = v173;
                    goto LABEL_142;
                  }
                }
              }

              v175 = v221;
              v176 = v174;
              v177 = v167;
              do
              {
                v178 = *v172;
                if (*v172)
                {
                  v180 = 0;
                  v181 = (v177 + 40);
                  while (1)
                  {
                    v182 = *v181;
                    v181 += 3;
                    v183 = v175 - v182;
                    if (__OFSUB__(v175, v182))
                    {
                      goto LABEL_157;
                    }

                    if (__OFADD__(v183, 1))
                    {
                      goto LABEL_158;
                    }

                    if (v183 + 1 < 1)
                    {
                      v178 = v180;
                      goto LABEL_118;
                    }

                    ++v180;
                    v175 = v183;
                    if (v178 == v180)
                    {
                      goto LABEL_127;
                    }
                  }
                }

                v183 = v175;
LABEL_127:
                if (v183)
                {
                  goto LABEL_166;
                }

                v175 = 0;
LABEL_118:
                v176 = (v178 << ((4 * v174 + 8) & 0x3C)) | ((-15 << ((4 * v174 + 8) & 0x3C)) - 1) & v176;
                v179 = *(v177 + 24 + 24 * v178);
                swift_unknownObjectRetain();
                swift_unknownObjectRelease();
                v172 = (v179 + 16);
                LOBYTE(v174) = *(v179 + 18);
                v177 = v179;
              }

              while (v174);
              LODWORD(v173) = *v172;
              if (*v172)
              {
                goto LABEL_136;
              }

              v193 = 0;
              v18 = v222;
LABEL_142:
              if (!v175)
              {
                v185 = 0;
LABEL_144:
                swift_unknownObjectRelease();
                v186 = v176 & 0xFFFFFFFFFFFFF0FFLL | (v193 << 8);
                v171 = v201;
                goto LABEL_145;
              }

              goto LABEL_183;
            }

            v186 = ((-15 << ((4 * v174 + 8) & 0x3C)) - 1) & v174 | (v173 << ((4 * v174 + 8) & 0x3C));
            swift_unknownObjectRetain();
            v185 = 0;
            v179 = 0;
            v18 = v222;
LABEL_145:
            v184 = v171;
            v187 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v171, v186, v179, v167, v207);
            swift_unknownObjectRelease();
            v169 = v221;
          }

          else
          {
            v184 = v171;
            v185 = 0;
            v179 = 0;
            v186 = 0;
            v187 = 0;
          }

          a1 = v231;
          if (__OFSUB__(v169, v185))
          {
            goto LABEL_173;
          }

          v272[0] = v184;
          v272[1] = v186;
          v272[2] = v179;
          v272[3] = v187;
          v272[4] = v169 - v185;
          AttributedString.Runs._firstOfMatchingRuns(with:comparing:)(v272, v206, v253);
          if (v253[4] >= (v152 >> 11))
          {
            v129 = *(v18 + 40);
            v271[3] = *(v18 + 24);
            v271[4] = v129;
            v271[5] = *(v18 + 56);
            swift_unknownObjectRetain();
            v130 = BigString.UTF8View.index(_:offsetBy:)();
            v132 = v131;
            v134 = v133;
            v136 = v135;
            swift_unknownObjectRelease();
            v137 = *(v18 + 40);
            v271[0] = *(v18 + 24);
            v271[1] = v137;
            v271[2] = *(v18 + 56);
            v6 = v232;
            if (v224 >> 10 < v130 >> 10)
            {
              goto LABEL_179;
            }

            v270[0] = v130;
            v270[1] = v132;
            v270[2] = v134;
            v270[3] = v136;
            v270[4] = v224;
            v270[5] = v228;
            v270[6] = v227;
            v270[7] = v226;
            v138 = *(v18 + 24);
            v286 = *(v18 + 56);
            v285[1] = *(v18 + 40);
            v285[0] = v138;
            outlined init with copy of Rope<BigString._Chunk>._Node?(v285, &v241);
            v139 = v271;
            v16 = BigString._lastConstraintBreak(in:with:)(v270, v223);
            v227 = v141;
            v228 = v140;
            v12 = v142;
            a1 = v231;
            v21 = v220;
          }

          else
          {
            v196 = *(v18 + 40);
            v269[0] = *(v18 + 24);
            v269[1] = v196;
            v269[2] = *(v18 + 56);
            v21 = v220;
            v6 = v232;
            if (v224 >> 10 < v152 >> 10)
            {
              goto LABEL_178;
            }

            v268[0] = v152;
            v268[1] = v217;
            v268[2] = v213;
            v268[3] = v229;
            v268[4] = v224;
            v268[5] = v228;
            v268[6] = v227;
            v268[7] = v226;
            v197 = *(v18 + 24);
            v288 = *(v18 + 56);
            v287[1] = *(v18 + 40);
            v287[0] = v197;
            outlined init with copy of Rope<BigString._Chunk>._Node?(v287, &v241);
            v139 = v269;
            v16 = BigString._lastConstraintBreak(in:with:)(v268, v223);
            v227 = v199;
            v228 = v198;
            v12 = v200;
          }
        }

        outlined destroy of BigString(v139);
        v9 = v225;
        if (v21 == v16 >> 10)
        {
          goto LABEL_7;
        }
      }

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
    }

    __break(1u);
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }
}

uint64_t specialized MutableCollection<>._partitionImpl(by:)(uint64_t (*a1)(uint64_t *))
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 != 2)
    {
      return 0;
    }

    v10 = *(v4 + 16);
    v11 = *(v4 + 24);
    if (v10 >= v11)
    {
      return v10;
    }
  }

  else
  {
    v7 = BYTE6(v5);
    v8 = v4;
    v9 = v4 >> 32;
    if (v6)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    if (v6)
    {
      v11 = v9;
    }

    else
    {
      v11 = v7;
    }

    if (v10 >= v11)
    {
      return v10;
    }
  }

LABEL_12:
  v13 = *v1;
  v12 = *(v1 + 8);
  v14 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_71;
    }

    if (v10 < *(v13 + 16))
    {
      goto LABEL_59;
    }

    if (v10 >= *(v13 + 24))
    {
      goto LABEL_61;
    }

    v16 = v12 & 0x3FFFFFFFFFFFFFFFLL;
    v17 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (!v17)
    {
      goto LABEL_73;
    }

    v18 = *(v16 + 40);
    v19 = __OFSUB__(v10, v18);
    v20 = v10 - v18;
    if (v19)
    {
      goto LABEL_63;
    }
  }

  else
  {
    if (!v14)
    {
      if (v10 >= BYTE6(v12))
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
      }

      v37 = *v1;
      v38 = v12;
      v39 = BYTE2(v12);
      v40 = BYTE3(v12);
      v41 = BYTE4(v12);
      v42 = BYTE5(v12);
      v15 = *(&v37 + v10);
      goto LABEL_30;
    }

    if (v10 >= v13 >> 32 || v10 < v13)
    {
      goto LABEL_60;
    }

    v22 = v12 & 0x3FFFFFFFFFFFFFFFLL;
    v17 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (!v17)
    {
      goto LABEL_72;
    }

    v23 = *(v22 + 40);
    v19 = __OFSUB__(v10, v23);
    v20 = v10 - v23;
    if (v19)
    {
      goto LABEL_62;
    }
  }

  v15 = *(v17 + v20);
LABEL_30:
  LOBYTE(v37) = v15;
  result = a1(&v37);
  if (v2)
  {
    return v10;
  }

  if ((result & 1) == 0)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v19 = __OFSUB__(v11--, 1);
    if (v19)
    {
      goto LABEL_64;
    }

    if (v10 >= v11)
    {
      return v10;
    }

    v26 = *v1;
    v25 = *(v1 + 8);
    v27 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      break;
    }

    if (!v27)
    {
      if (v11 >= BYTE6(v25))
      {
        goto LABEL_65;
      }

      v37 = *v1;
      v38 = v25;
      v39 = BYTE2(v25);
      v40 = BYTE3(v25);
      v41 = BYTE4(v25);
      v42 = BYTE5(v25);
      v28 = *(&v37 + v11);
      goto LABEL_52;
    }

    if (v11 >= v26 >> 32 || v11 < v26)
    {
      goto LABEL_67;
    }

    v33 = v25 & 0x3FFFFFFFFFFFFFFFLL;
    v30 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (!v30)
    {
      goto LABEL_76;
    }

    v34 = *(v33 + 40);
    v19 = __OFSUB__(v11, v34);
    v32 = v11 - v34;
    if (v19)
    {
      goto LABEL_69;
    }

LABEL_51:
    v28 = *(v30 + v32);
LABEL_52:
    LOBYTE(v37) = v28;
    result = a1(&v37);
    if ((result & 1) == 0)
    {
      if (v10 != v11)
      {
        v35 = Data._Representation.subscript.getter(v10, *v1, *(v1 + 8));
        v36 = Data._Representation.subscript.getter(v11, *v1, *(v1 + 8));
        Data._Representation.subscript.setter(v36, v10);
        Data._Representation.subscript.setter(v35, v11);
      }

LABEL_32:
      if (++v10 >= v11)
      {
        return v10;
      }

      goto LABEL_12;
    }
  }

  if (v27 == 2)
  {
    if (v11 < *(v26 + 16))
    {
      goto LABEL_66;
    }

    if (v11 >= *(v26 + 24))
    {
      goto LABEL_68;
    }

    v29 = v25 & 0x3FFFFFFFFFFFFFFFLL;
    v30 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (!v30)
    {
      goto LABEL_75;
    }

    v31 = *(v29 + 40);
    v19 = __OFSUB__(v11, v31);
    v32 = v11 - v31;
    if (v19)
    {
      goto LABEL_70;
    }

    goto LABEL_51;
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

{
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) != 2)
    {
      return 0;
    }

    v4 = *(*v1 + 16);
    if (!v4)
    {
      return 0;
    }
  }

  else if (*(v1 + 16))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = 0;
  while (1)
  {
    v6 = *v1;
    v7 = v1[1];
    v8 = *(v1 + 16);
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_51;
      }

      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_46;
      }

      v9 = *(v6 + 8 * v5 + 32);
    }

    else if (*(v1 + 16))
    {
      if (v5 > 1)
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
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
        v18 = 0;
        v19 = 0xE000000000000000;
        _StringGuts.grow(_:)(33);

        v18 = 0x207865646E49;
        v19 = 0xE600000000000000;
        v20 = v5;
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865CB0E0](v16);

        MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181487780);
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v9 = v5 ? v1[1] : *v1;
    }

    else
    {
      v9 = *v1;
      if (v5)
      {
        goto LABEL_45;
      }
    }

    v18 = v9;
    v10 = a1(&v18);
    if (v2)
    {
      return v5;
    }

    if (v10)
    {
      break;
    }

LABEL_22:
    if (++v5 >= v4)
    {
      return v5;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 - 1;
    if (v5 >= v11 - 1)
    {
      return v5;
    }

    if (v8)
    {
      if (v8 == 1)
      {
        if (v4 > 1)
        {
          goto LABEL_49;
        }

        if (v11 == 1)
        {
          v12 = v6;
        }

        else
        {
          v12 = v7;
        }
      }

      else
      {
        if (v11 < 1)
        {
          goto LABEL_47;
        }

        if (v4 >= *(v6 + 16))
        {
          goto LABEL_50;
        }

        v12 = *(v6 + 24 + 8 * v11);
      }
    }

    else
    {
      v12 = v6;
      if (v11 != 1)
      {
        goto LABEL_48;
      }
    }

    v18 = v12;
    v13 = a1(&v18);
    v11 = v4;
    if ((v13 & 1) == 0)
    {
      if (v5 != v4)
      {
        v17 = IndexPath.Storage.subscript.getter(v5, v6, v7, v8);
        v14 = IndexPath.Storage.subscript.getter(v4, v6, v7, v8);
        IndexPath.Storage.subscript.setter(v14, v5);
        IndexPath.Storage.subscript.setter(v17, v4);
      }

      goto LABEL_22;
    }
  }
}

uint64_t specialized static IndexPath.> infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 16);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v6 = v2[2];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
    if (*(a1 + 16))
    {
      v6 = 2;
    }
  }

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  if (*(a2 + 16) > 1u)
  {
    if (v5 == 2)
    {
      v9 = v4[2];
      v10 = v6;
      if (v9 >= v6)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v9 = 0;
      if (!v6)
      {
        return v9 < v6;
      }
    }
  }

  else if (*(a2 + 16))
  {
    v9 = 2;
    v10 = v6;
    if (v6 < 3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = 1;
    v10 = v6;
    if (v6 <= 1)
    {
LABEL_16:
      if (!v10)
      {
        return v9 < v6;
      }

      goto LABEL_20;
    }
  }

  v10 = v9;
  if (!v9)
  {
    return v9 < v6;
  }

LABEL_20:
  v11 = *a2;
  if (v5 >= 2)
  {
    if (v5 != 2)
    {
      goto LABEL_59;
    }

    if (!v4[2])
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v11 = v4[4];
  }

  v12 = *a1;
  if (v3 < 2)
  {
    if (v2 < v11)
    {
      return 0;
    }

LABEL_30:
    if (v11 < v12)
    {
      return 1;
    }

    if (v10 == 1)
    {
      return v9 < v6;
    }

    if (v5 == 1)
    {
      goto LABEL_38;
    }

    if (v5 != 2)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v4[2] >= 2uLL)
    {
      v8 = v4[5];
LABEL_38:
      if (v3 == 1)
      {
        goto LABEL_42;
      }

      if (v3 != 2)
      {
        goto LABEL_58;
      }

      if (v2[2] >= 2uLL)
      {
        v7 = v2[5];
LABEL_42:
        if (v7 >= v8)
        {
          if (v8 >= v7)
          {
            v14 = 0;
            v15 = v10 - 2;
            while (v15 != v14)
            {
              if (v5 != 2)
              {
                goto LABEL_55;
              }

              if ((v14 + 2) >= v4[2])
              {
                goto LABEL_53;
              }

              if (v3 != 2)
              {
                goto LABEL_56;
              }

              if ((v14 + 2) >= v2[2])
              {
                goto LABEL_54;
              }

              v16 = v4[v14 + 6];
              v17 = v2[v14++ + 6];
              if (v17 != v16)
              {
                return v17 >= v16;
              }
            }

            return v9 < v6;
          }

          return 1;
        }

        return 0;
      }

      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (v3 == 2)
  {
    if (!v2[2])
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v12 = v2[4];
    if (v12 < v11)
    {
      return 0;
    }

    goto LABEL_30;
  }

LABEL_59:
  _StringGuts.grow(_:)(33);

  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v18);

  MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181487780);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static IndexPath.<= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 16);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v6 = v2[2];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
    if (*(a1 + 16))
    {
      v6 = 2;
    }
  }

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  if (*(a2 + 16) > 1u)
  {
    if (v5 == 2)
    {
      v9 = v4[2];
      v10 = v6;
      if (v9 >= v6)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v9 = 0;
      if (!v6)
      {
        return v9 >= v6;
      }
    }
  }

  else if (*(a2 + 16))
  {
    v9 = 2;
    v10 = v6;
    if (v6 < 3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = 1;
    v10 = v6;
    if (v6 <= 1)
    {
LABEL_16:
      if (!v10)
      {
        return v9 >= v6;
      }

      goto LABEL_20;
    }
  }

  v10 = v9;
  if (!v9)
  {
    return v9 >= v6;
  }

LABEL_20:
  v11 = *a2;
  if (v5 >= 2)
  {
    if (v5 != 2)
    {
      goto LABEL_59;
    }

    if (!v4[2])
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v11 = v4[4];
  }

  v12 = *a1;
  if (v3 < 2)
  {
    if (v2 < v11)
    {
      return 1;
    }

LABEL_30:
    if (v11 < v12)
    {
      return 0;
    }

    if (v10 == 1)
    {
      return v9 >= v6;
    }

    if (v5 == 1)
    {
      goto LABEL_38;
    }

    if (v5 != 2)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v4[2] >= 2uLL)
    {
      v8 = v4[5];
LABEL_38:
      if (v3 == 1)
      {
        goto LABEL_42;
      }

      if (v3 != 2)
      {
        goto LABEL_58;
      }

      if (v2[2] >= 2uLL)
      {
        v7 = v2[5];
LABEL_42:
        if (v7 >= v8)
        {
          if (v8 >= v7)
          {
            v14 = 0;
            v15 = v10 - 2;
            while (v15 != v14)
            {
              if (v5 != 2)
              {
                goto LABEL_55;
              }

              if ((v14 + 2) >= v4[2])
              {
                goto LABEL_53;
              }

              if (v3 != 2)
              {
                goto LABEL_56;
              }

              if ((v14 + 2) >= v2[2])
              {
                goto LABEL_54;
              }

              v16 = v4[v14 + 6];
              v17 = v2[v14++ + 6];
              if (v16 != v17)
              {
                return v17 < v16;
              }
            }

            return v9 >= v6;
          }

          return 0;
        }

        return 1;
      }

      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (v3 == 2)
  {
    if (!v2[2])
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v12 = v2[4];
    if (v12 < v11)
    {
      return 1;
    }

    goto LABEL_30;
  }

LABEL_59:
  _StringGuts.grow(_:)(33);

  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v18);

  MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181487780);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static IndexPath.>= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 16);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v6 = v2[2];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
    if (*(a1 + 16))
    {
      v6 = 2;
    }
  }

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  if (*(a2 + 16) > 1u)
  {
    if (v5 == 2)
    {
      v9 = v4[2];
      v10 = v6;
      if (v9 >= v6)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v9 = 0;
      if (!v6)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_19;
  }

  if (*(a2 + 16))
  {
    v9 = 2;
    v10 = v6;
    if (v6 < 3)
    {
      goto LABEL_16;
    }

LABEL_19:
    v10 = v9;
    if (!v9)
    {
      goto LABEL_33;
    }

LABEL_20:
    v11 = *a2;
    if (v5 >= 2)
    {
      if (v5 != 2)
      {
        goto LABEL_62;
      }

      if (!v4[2])
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v11 = v4[4];
    }

    v12 = *a1;
    if (v3 < 2)
    {
      if (v2 < v11)
      {
        return 0;
      }

LABEL_30:
      if (v11 < v12)
      {
        return 1;
      }

      if (v10 == 1)
      {
        goto LABEL_33;
      }

      if (v5 == 1)
      {
        goto LABEL_41;
      }

      if (v5 != 2)
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      if (v4[2] >= 2uLL)
      {
        v8 = v4[5];
LABEL_41:
        if (v3 == 1)
        {
          goto LABEL_45;
        }

        if (v3 != 2)
        {
          goto LABEL_61;
        }

        if (v2[2] >= 2uLL)
        {
          v7 = v2[5];
LABEL_45:
          if (v7 >= v8)
          {
            if (v8 >= v7)
            {
              v15 = 0;
              v16 = v10 - 2;
              while (v16 != v15)
              {
                if (v5 != 2)
                {
                  goto LABEL_58;
                }

                if ((v15 + 2) >= v4[2])
                {
                  goto LABEL_56;
                }

                if (v3 != 2)
                {
                  goto LABEL_59;
                }

                if ((v15 + 2) >= v2[2])
                {
                  goto LABEL_57;
                }

                v17 = v4[v15 + 6];
                v18 = v2[v15++ + 6];
                v14 = v18 < v17;
                if (v18 != v17)
                {
                  return !v14;
                }
              }

              goto LABEL_33;
            }

            return 1;
          }

          return 0;
        }

        goto LABEL_57;
      }

      goto LABEL_56;
    }

    if (v3 == 2)
    {
      if (!v2[2])
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v12 = v2[4];
      if (v12 < v11)
      {
        return 0;
      }

      goto LABEL_30;
    }

LABEL_62:
    _StringGuts.grow(_:)(33);

    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v19);

    MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181487780);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v9 = 1;
  v10 = v6;
  if (v6 > 1)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (v10)
  {
    goto LABEL_20;
  }

LABEL_33:
  v14 = v6 < v9;
  return !v14;
}

uint64_t specialized Collection.dropLast(_:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  result = String.count.getter();
  if (__OFSUB__(result, v1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  String.index(_:offsetBy:limitedBy:)();

  return String.subscript.getter();
}

uint64_t outlined consume of IndexPath.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

unint64_t type metadata accessor for NSIndexPath()
{
  result = lazy cache variable for type metadata for NSIndexPath;
  if (!lazy cache variable for type metadata for NSIndexPath)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSIndexPath);
  }

  return result;
}

uint64_t specialized static IndexPath._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  outlined consume of IndexPath?(*a2, *(a2 + 8), *(a2 + 16));
  result = [a1 length];
  switch(result)
  {
    case 2:
      v9 = [a1 indexAtPosition_];
      v8 = 1;
      v6 = [a1 indexAtPosition_];
      v5 = v9;
      goto LABEL_9;
    case 1:
      v5 = [a1 indexAtPosition_];
      v6 = 0;
      v8 = 0;
      goto LABEL_9;
    case 0:
      v5 = sub_180928C90(MEMORY[0x1E69E7CC0]);
      v8 = v7;
LABEL_9:
      *a2 = v5;
      *(a2 + 8) = v6;
      *(a2 + 16) = v8;
      return 1;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v10 = result;
    v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v11 + 16) = v10;
    [a1 getIndexes:v11 + 32 range:{0, v10}];
    v5 = v11;
    v6 = 0;
    *(v11 + 16) = v10;
    v8 = 2;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<IndexPath> and conformance <> DefaultIndices<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSIy10Foundation9IndexPathVGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for IndexPath(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
  a1[2] = lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
  a1[3] = lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
  result = lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
  a1[4] = result;
  return result;
}

uint64_t outlined destroy of AttributedString.Runs.NSAttributesSlice.Iterator(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString.Runs.NSAttributesSlice.Iterator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LockedState.init(initialState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for LockedState._Buffer();
  v6 = swift_allocObject();
  *(v6 + ((*(*v6 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v9 = *(a2 - 8);
  (*(v9 + 16))(v6 + *(*v6 + *MEMORY[0x1E69E6B68] + 16), a1, a2);
  *a3 = v6;
  v7 = *(v9 + 8);

  return v7(a1, a2);
}

uint64_t LockedState<A>.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMd);
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

void LockedState<A>.withLock<A>(_:)()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 4);
  partial apply for closure #1 in LockedState<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t LockedState.withLockExtendingLifetimeOfState<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  v10 = **v3;
  v11 = *(v10 + *MEMORY[0x1E69E6B68] + 16);
  v12 = (*(v10 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v9[v12]);
  (*(v6 + 16))(v8, &v9[v11], v5);
  a1(&v9[v11]);
  os_unfair_lock_unlock(&v9[v12]);
  return (*(v6 + 8))(v8, v5);
}

void LockedState.withLock<A>(_:)(void (*a1)(char *))
{
  v3 = *v1;
  v4 = **v1;
  v5 = *(v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v3[v6]);
  a1(&v3[v5]);
  os_unfair_lock_unlock(&v3[v6]);
}

{
  LockedState.withLockUnchecked<A>(_:)(a1);
}

uint64_t type metadata instantiation function for LockedState()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t one-time initialization function for _cachedUGIDs()
{
  v2 = *MEMORY[0x1E69E9840];
  *v1 = 0;
  if (pthread_getugid_np(&v1[1], v1))
  {
    v1[1] = geteuid();
    result = getegid();
  }

  else
  {
    result = v1[0];
  }

  _cachedUGIDs._0 = v1[1];
  _cachedUGIDs._1 = result;
  return result;
}

uint64_t closure #1 in static Platform.uid(forName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(result + 16);
  *(a2 + 4) = 0;
  return result;
}

void *specialized closure #1 in static Platform.withUserGroupBuffer<A, B, C>(_:_:sizeProperty:operation:block:)(uint64_t a1, __int128 *a2, unsigned int (*a3)(uint64_t *, __int128 *, uint64_t, void, uint64_t *), uint64_t a4, uint64_t a5, void *a6, void *(*a7)(void *__return_ptr, _OWORD *, void))
{
  v21[2] = *MEMORY[0x1E69E9840];
  v20 = a5;
  v8 = a2[3];
  v17 = a2[2];
  v18 = v8;
  v19 = *(a2 + 8);
  v9 = a2[1];
  v15 = *a2;
  v16 = v9;
  v14 = 0;
  if (!a1)
  {
    __break(1u);
  }

  if (a3(&v20, &v15, a1, *a6, &v14) || !v14)
  {
    return 0;
  }

  v12[2] = v17;
  v12[3] = v18;
  v13 = v19;
  v12[0] = v15;
  v12[1] = v16;
  result = a7(v21, v12, 0);
  if (!v7)
  {
    return v21[0];
  }

  return result;
}

uint64_t specialized static Platform.homeDirectory(forUserName:)()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = String.utf8CString.getter();
  isStackAllocationSafe = sysconf(71);
  if (isStackAllocationSafe == -1)
  {
    v2 = 4096;
  }

  else
  {
    v2 = isStackAllocationSafe;
  }

  v10 = v2;
  if (v2 < 0)
  {
    __break(1u);
  }

  if (v2 < 1025 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    memset(&v12, 0, sizeof(v12));
    v11 = 0;
    if (getpwnam_r((v0 + 32), &v12, &v9 - v3, v4, &v11))
    {
      v5 = 1;
    }

    else
    {
      v5 = v11 == 0;
    }

    if (v5 || !v12.pw_dir)
    {
      v6 = 0;
    }

    else
    {
      v6 = String.init(cString:)();
    }
  }

  else
  {
    v8 = swift_slowAlloc();
    memset(&v12, 0, sizeof(v12));
    v6 = specialized closure #1 in static Platform.withUserGroupBuffer<A, B, C>(_:_:sizeProperty:operation:block:)(v8, &v12, specialized thunk for @callee_guaranteed (@unowned UnsafePointer<Int8>?, @unowned UnsafeMutablePointer<passwd>?, @unowned UnsafeMutablePointer<Int8>?, @unowned Int, @unowned UnsafeMutablePointer<UnsafeMutablePointer<passwd>?>?) -> (@unowned Int32), 0, v0 + 32, &v10, closure #1 in static Platform.homeDirectory(forUID:));
    MEMORY[0x1865D2690](v8, -1, -1);
  }

  return v6;
}

void *specialized closure #1 in static Platform.withUserGroupBuffer<A, B, C>(_:_:sizeProperty:operation:block:)(uint64_t a1, __int128 *a2, uint64_t (*a3)(void *, __int128 *, uint64_t, void, uint64_t *), uint64_t a4, uint64_t a5, void *a6, void *(*a7)(uint64_t *__return_ptr, _OWORD *))
{
  v24[1] = *MEMORY[0x1E69E9840];
  v24[0] = a5;
  v8 = a2[2];
  v22 = a2[3];
  v23 = *(a2 + 8);
  v9 = *a2;
  v20 = a2[1];
  v21 = v8;
  v19 = v9;
  v18 = 0;
  if (!a1)
  {
    __break(1u);
  }

  v11 = a3(v24, &v19, a1, *a6, &v18);
  v12 = 0;
  v13 = 1;
  if (!v11 && v18)
  {
    v16[2] = v21;
    v16[3] = v22;
    v17 = v23;
    v16[0] = v19;
    v16[1] = v20;
    result = a7(&v15, v16);
    if (v7)
    {
      return result;
    }

    v12 = v15;
    v13 = BYTE4(v15);
  }

  LOBYTE(v19) = v13;
  return (v12 | (v13 << 32));
}

void *specialized closure #1 in static Platform.withUserGroupBuffer<A, B, C>(_:_:sizeProperty:operation:block:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int (*a6)(void *, __int128 *, uint64_t, void, uint64_t *), uint64_t a7, uint64_t a8, void *a9, void *(*a10)(uint64_t *__return_ptr, __int128 *))
{
  v23[1] = *MEMORY[0x1E69E9840];
  *&v20 = a2;
  *(&v20 + 1) = a3;
  v21 = a4;
  v22 = a5;
  v23[0] = a8;
  v19 = 0;
  if (!a1)
  {
    __break(1u);
  }

  if (a6(v23, &v20, a1, *a9, &v19))
  {
    v11 = 1;
  }

  else
  {
    v11 = v19 == 0;
  }

  if (v11)
  {
    v12 = 0;
    v13 = 1;
LABEL_10:
    LOBYTE(v20) = v13;
    return (v12 | (v13 << 32));
  }

  v16 = v20;
  v17 = v21;
  v18 = v22;
  result = a10(&v15, &v16);
  if (!v10)
  {
    v12 = v15;
    v13 = BYTE4(v15);
    goto LABEL_10;
  }

  return result;
}

uint64_t AnySortComparator.order.getter()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = __swift_project_boxed_opaque_existential_1(v0, v2);
  v6[3] = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v6);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_0, v3, v2);
  LOBYTE(v2) = v1(v6);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v2 & 1;
}

uint64_t AnySortComparator.order.setter(char a1)
{
  (*(v1 + 56))(v3, v1, a1 & 1);
  __swift_destroy_boxed_opaque_existential_1(v1);
  return outlined init with take of Equatable(v3, v1);
}

uint64_t AnySortComparator.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a3 + 8);
  a4[3] = a2;
  a4[4] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
  (*(*(a2 - 8) + 32))(boxed_opaque_existential_0, a1, a2);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  a4[5] = partial apply for closure #1 in AnySortComparator.init<A>(_:);
  a4[6] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #2 in AnySortComparator.init<A>(_:);
  *(v12 + 24) = v11;
  a4[7] = _sSH_s8Sendablep10Foundation9SortOrderOs11AnyHashableVIeghlyr_SH_sAApADSH_sAApIeghlyr_TRTA_0;
  a4[8] = v12;
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  a4[9] = partial apply for closure #3 in AnySortComparator.init<A>(_:);
  a4[10] = result;
  return result;
}

uint64_t AnySortComparator.compare(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[3];
  v7 = __swift_project_boxed_opaque_existential_1(v2, v6);
  v11[3] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v7, v6);
  v9 = v5(v11, a1, a2);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

NSComparisonResult __swiftcall NSComparisonResult.withOrder(_:)(Foundation::SortOrder a1)
{
  v2 = NSOrderedDescending;
  if (v1 == NSOrderedDescending)
  {
    v3 = -1;
  }

  else
  {
    v3 = v1;
  }

  if (v1 != NSOrderedAscending)
  {
    v2 = v3;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t SortOrder.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

Swift::Int SortOrder.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](a1 & 1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Encodable.encode(to:) in conformance SortOrder(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t closure #1 in AnySortComparator.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  v16 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, v27);
  swift_dynamicCast();
  outlined init with copy of Any(a2, v26);
  swift_dynamicCast();
  outlined init with copy of Any(v24, v25);
  swift_dynamicCast();
  v20 = (*(a5 + 24))(v15, v12, a4, a5);
  v21 = *(v10 + 8);
  v21(v12, AssociatedTypeWitness);
  v21(v15, AssociatedTypeWitness);
  (*(v16 + 8))(v19, a4);
  return v20;
}

uint64_t closure #2 in AnySortComparator.init<A>(_:)(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19[-v12 - 8];
  outlined init with take of Equatable(v14, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
  swift_dynamicCast();
  (*(a4 + 40))(a2 & 1, a3, a4);
  a1[3] = a3;
  a1[4] = *(a4 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  v16 = *(v8 + 16);
  v16(boxed_opaque_existential_0, v13, a3);
  v16(v10, v13, a3);
  AnyHashable.init<A>(_:)();
  return (*(v8 + 8))(v13, a3);
}

uint64_t closure #3 in AnySortComparator.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any(v8, v10);
  swift_dynamicCast();
  LOBYTE(a3) = (*(a3 + 32))(a2, a3);
  (*(v5 + 8))(v7, a2);
  return a3 & 1;
}

uint64_t key path getter for AnySortComparator.order : AnySortComparator@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[3];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v4);
  v9[3] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v5, v4);
  v7 = v3(v9);
  result = __swift_destroy_boxed_opaque_existential_1(v9);
  *a2 = v7 & 1;
  return result;
}

void (*AnySortComparator.order.modify(uint64_t *a1))(__int128 **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = v1[9];
  v6 = v1[3];
  v7 = __swift_project_boxed_opaque_existential_1(v1, v6);
  *(v4 + 24) = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v7, v6);
  v9 = v5(v4);
  __swift_destroy_boxed_opaque_existential_1(v4);
  *(v4 + 48) = v9 & 1;
  return AnySortComparator.order.modify;
}

void AnySortComparator.order.modify(__int128 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 5);
  (*(v2 + 56))(v2, *(*a1 + 48));
  __swift_destroy_boxed_opaque_existential_1(v2);
  outlined init with take of Equatable(v1, v2);

  free(v1);
}

uint64_t compare #1 <A, B>(_:_:) in static AnySortComparator.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[1] = a5;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v14, a2, a4, v17);
  v21 = swift_dynamicCast();
  v22 = *(v15 + 56);
  if (v21)
  {
    v22(v11, 0, 1, a3);
    (*(v15 + 32))(v19, v11, a3);
    v23 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v15 + 8))(v19, a3);
  }

  else
  {
    v22(v11, 1, 1, a3);
    (*(v9 + 8))(v11, v8);
    v23 = 0;
  }

  return v23 & 1;
}

Swift::Int AnySortComparator.hashValue.getter()
{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for SortComparator.compare(_:_:) in conformance AnySortComparator(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[3];
  v7 = __swift_project_boxed_opaque_existential_1(v2, v6);
  v11[3] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v7, v6);
  v9 = v5(v11, a1, a2);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

uint64_t protocol witness for SortComparator.order.getter in conformance AnySortComparator()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = __swift_project_boxed_opaque_existential_1(v0, v2);
  v6[3] = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v6);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_0, v3, v2);
  LOBYTE(v2) = v1(v6);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v2 & 1;
}

uint64_t protocol witness for SortComparator.order.setter in conformance AnySortComparator(char a1)
{
  (*(v1 + 56))(v3, v1, a1 & 1);
  __swift_destroy_boxed_opaque_existential_1(v1);
  return outlined init with take of Equatable(v3, v1);
}

uint64_t (*protocol witness for SortComparator.order.modify in conformance AnySortComparator(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = AnySortComparator.order.modify(v2);
  return protocol witness for AttributedStringProtocol.subscript.modify in conformance AttributedString;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnySortComparator(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);
  v6 = a2[3];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = *(v4 + 8);

  return compare #1 <A, B>(_:_:) in static AnySortComparator.== infix(_:_:)(v5, v7, v3, v6, v8);
}

uint64_t ComparableComparator.compare(_:_:)()
{
  v1 = *v0;
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    if (v1)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    v3 = dispatch thunk of static Comparable.> infix(_:_:)();
    if (v1)
    {
      return v3 << 63 >> 63;
    }

    else
    {
      return v3 & 1;
    }
  }
}

Swift::Int ComparableComparator.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

uint64_t (*protocol witness for SortComparator.order.modify in conformance ComparableComparator<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = ComparableComparator.order.modify();
  return protocol witness for SortComparator.order.modify in conformance ComparableComparator<A>;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ComparableComparator<A>()
{
  Hasher.init(_seed:)();
  ComparableComparator.hash(into:)();
  return Hasher._finalize()();
}

uint64_t (*OptionalComparator.order.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  *a1 = v2;
  *(a1 + 8) = v5;
  v6 = *(v5 + 32);
  *(a1 + 16) = v4;
  *(a1 + 24) = v6() & 1;
  return OptionalComparator.order.modify;
}

uint64_t OptionalComparator.compare(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v4 = *(a3 + 24);
  v34 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v33 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v35 = &v31 - v18;
  v19 = *(v7 + 16);
  v19(v12, a1, v6, v17);
  v36 = v13;
  v20 = *(v13 + 48);
  if (v20(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v12, v6);
    if (v20(v37, 1, AssociatedTypeWitness) == 1)
    {
      return 0;
    }

    v25 = ((*(v4 + 32))(v34, v4) & 1) == 0;
    v26 = 1;
  }

  else
  {
    v32 = v4;
    v22 = v12;
    v23 = *(v36 + 32);
    v23(v35, v22, AssociatedTypeWitness);
    (v19)(v9, v37, v6);
    if (v20(v9, 1, AssociatedTypeWitness) != 1)
    {
      v27 = v33;
      v23(v33, v9, AssociatedTypeWitness);
      v28 = v35;
      v29 = (*(v32 + 24))(v35, v27, v34);
      v30 = *(v36 + 8);
      v30(v27, AssociatedTypeWitness);
      v30(v28, AssociatedTypeWitness);
      return v29;
    }

    (*(v7 + 8))(v9, v6);
    v24 = (*(v32 + 32))(v34);
    (*(v36 + 8))(v35, AssociatedTypeWitness);
    v25 = (v24 & 1) == 0;
    v26 = -1;
  }

  if (v25)
  {
    return -v26;
  }

  else
  {
    return v26;
  }
}

Swift::Int OptionalComparator.hashValue.getter()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t (*protocol witness for SortComparator.order.modify in conformance OptionalComparator<A>(uint64_t *a1, uint64_t a2))()
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
  *(v4 + 32) = OptionalComparator.order.modify(v4, a2);
  return protocol witness for SortComparator.order.modify in conformance ComparableComparator<A>;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OptionalComparator<A>()
{
  Hasher.init(_seed:)();
  OptionalComparator.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static AnySortComparator.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v4 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  v16 = swift_dynamicCast();
  v17 = *(v5 + 56);
  if (v16)
  {
    v17(v15, 0, 1, v3);
    (*(v5 + 32))(v7, v15, v3);
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, v3);
  }

  else
  {
    v17(v15, 1, 1, v3);
    (*(v13 + 8))(v15, v12);
    v18 = 0;
  }

  return v18 & 1;
}

unint64_t instantiation function for generic protocol witness table for AnySortComparator(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AnySortComparator and conformance AnySortComparator();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AnySortComparator and conformance AnySortComparator()
{
  result = lazy protocol witness table cache variable for type AnySortComparator and conformance AnySortComparator;
  if (!lazy protocol witness table cache variable for type AnySortComparator and conformance AnySortComparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnySortComparator and conformance AnySortComparator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnySortComparator and conformance AnySortComparator;
  if (!lazy protocol witness table cache variable for type AnySortComparator and conformance AnySortComparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnySortComparator and conformance AnySortComparator);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for OptionalComparator<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AnySortComparator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for AnySortComparator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int UUID.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher.combine(bytes:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UUID()
{
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  return Hasher._finalize()();
}

uint64_t UUID.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v12 - v6;
  v13 = *v0;
  v12[1] = MEMORY[0x1E69E7CC0];
  v8 = *MEMORY[0x1E69E75B8];
  v9 = type metadata accessor for Mirror.DisplayStyle();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v7, v8, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd);
  lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance UUID()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v12 - v6;
  v13 = *v0;
  v12[1] = MEMORY[0x1E69E7CC0];
  v8 = *MEMORY[0x1E69E75B8];
  v9 = type metadata accessor for Mirror.DisplayStyle();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v7, v8, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd);
  lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance UUID(__int128 *a1, __int128 *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return (specialized static UUID.< infix(_:_:)(&v4, &v5) & 1) == 0;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance UUID(__int128 *a1, __int128 *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return (specialized static UUID.< infix(_:_:)(&v5, &v4) & 1) == 0;
}

unint64_t protocol witness for static Comparable.> infix(_:_:) in conformance UUID(__int128 *a1, __int128 *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return specialized static UUID.< infix(_:_:)(&v4, &v5) & 1;
}

unint64_t specialized static UUID.< infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = 0;
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v7 = *a2;
  v8 = v3;
  for (i = 15; i != -1; --i)
  {
    v5 = *(&v8 + i) - *(&v7 + i);
    v2 = v2 & (((v5 - 1) & ~v5) >> 8) | v5;
  }

  return v2 >> 63;
}

uint64_t NSUUID._toCustomAnyHashable()()
{
  static UUID._unconditionallyBridgeFromObjectiveC(_:)(v0, &v2);
  lazy protocol witness table accessor for type UUID and conformance UUID();
  return AnyHashable.init<A>(_:)();
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSUUID()
{
  v1 = *v0;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)(v1, &v2);
  lazy protocol witness table accessor for type UUID and conformance UUID();
  AnyHashable.init<A>(_:)();
}

id closure #1 in __NSConcreteUUID.debugDescription.getter@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = _typeName(_:qualified:)();
  MEMORY[0x1865CB0E0](v4);

  MEMORY[0x1865CB0E0](32, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPy10Foundation16__NSConcreteUUIDCGMd);
  lazy protocol witness table accessor for type UnsafePointer<__NSConcreteUUID> and conformance UnsafePointer<A>();
  v5 = _Pointer.debugDescription.getter();
  MEMORY[0x1865CB0E0](v5);

  MEMORY[0x1865CB0E0](8254, 0xE200000000000000);
  v6 = [a1 UUIDString];
  LODWORD(a1) = _objc_isTaggedPointer(v6);
  v7 = v6;
  v8 = v7;
  if (!a1)
  {
LABEL_6:
    if (__CFStringIsCF())
    {

LABEL_10:
      v10 = 0;
      v12 = 0xE000000000000000;
      goto LABEL_21;
    }

    v13 = v8;
    v14 = String.init(_nativeStorage:)();
    if (v15)
    {
      v10 = v14;
      v12 = v15;

      goto LABEL_21;
    }

    if (![v13 length])
    {

      goto LABEL_10;
    }

    v10 = String.init(_cocoaString:)();
    v12 = v19;
LABEL_20:

    goto LABEL_21;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v7);
  if (!TaggedPointerTag)
  {
    goto LABEL_14;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v12 = v11;

LABEL_21:
      MEMORY[0x1865CB0E0](v10, v12);

      *a2 = 60;
      a2[1] = 0xE100000000000000;
      return result;
    }

    goto LABEL_6;
  }

  result = [v8 UTF8String];
  if (result)
  {
    v17 = String.init(utf8String:)(result);
    if (v18)
    {
LABEL_15:
      v10 = v17;
      v12 = v18;

      goto LABEL_20;
    }

    __break(1u);
LABEL_14:
    _CFIndirectTaggedPointerStringGetContents();
    v17 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v18)
    {
      [v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v10 = v20;
      v12 = v21;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

id __NSConcreteUUID.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for __NSConcreteUUID();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t instantiation function for generic protocol witness table for UUID(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type UUID and conformance UUID();
  a1[2] = lazy protocol witness table accessor for type UUID and conformance UUID();
  a1[3] = lazy protocol witness table accessor for type UUID and conformance UUID();
  result = lazy protocol witness table accessor for type UUID and conformance UUID();
  a1[4] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type UnsafePointer<__NSConcreteUUID> and conformance UnsafePointer<A>()
{
  result = lazy protocol witness table cache variable for type UnsafePointer<__NSConcreteUUID> and conformance UnsafePointer<A>;
  if (!lazy protocol witness table cache variable for type UnsafePointer<__NSConcreteUUID> and conformance UnsafePointer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSPy10Foundation16__NSConcreteUUIDCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafePointer<__NSConcreteUUID> and conformance UnsafePointer<A>);
  }

  return result;
}

id NSSortDescriptor.init<A, B>(keyPath:ascending:comparator:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  _bridgeKeyPathToString(_:)();
  v9 = String._bridgeToObjectiveCImpl()();

  v14[4] = a3;
  v14[5] = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @in_guaranteed Any) -> (@unowned NSComparisonResult);
  v14[3] = &block_descriptor_5;
  v10 = _Block_copy(v14);

  v11 = [v8 initWithKey:v9 ascending:a2 & 1 comparator:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();
  v12 = v11;
  objc_setAssociatedObject(v12, v12, a1, 0x301);

  return v12;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @in_guaranteed Any) -> (@unowned NSComparisonResult)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;
  v8[3] = swift_getObjectType();
  v8[0] = a3;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = v5(v9, v8);

  __swift_destroy_boxed_opaque_existential_1(v8);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

uint64_t NSSortDescriptor.keyPath.getter()
{
  if (objc_getAssociatedObject(v0, v0))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    type metadata accessor for AnyKeyPath();
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of Any?(v5);
    return 0;
  }
}

void __swiftcall MachError.init(_nsError:)(Foundation::MachError *__return_ptr retstr, NSError *_nsError)
{
  v4 = [(NSError *)_nsError domain];
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = v4;
  isTaggedPointer = _objc_isTaggedPointer(v4);
  v7 = v5;
  v8 = v7;
  if (!isTaggedPointer)
  {
LABEL_7:
    LOBYTE(v35) = 0;
    if (__CFStringIsCF())
    {

      v10 = 0;
      v12 = 0xE000000000000000;
      goto LABEL_22;
    }

    v13 = v8;
    v14 = String.init(_nativeStorage:)();
    if (v15)
    {
      v10 = v14;
      v12 = v15;

      goto LABEL_22;
    }

    if ([(NSString *)v13 length])
    {
      v10 = String.init(_cocoaString:)();
      v12 = v19;
      goto LABEL_21;
    }

LABEL_20:
    v10 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_22;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v7);
  if (!TaggedPointerTag)
  {
    goto LABEL_14;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v12 = v11;

      goto LABEL_22;
    }

    goto LABEL_7;
  }

  v16 = [(NSString *)v8 UTF8String];
  if (!v16)
  {
LABEL_47:
    __break(1u);
    return;
  }

  v17 = String.init(utf8String:)(v16);
  if (!v18)
  {
    __break(1u);
LABEL_14:
    _CFIndirectTaggedPointerStringGetContents();
    v17 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v18)
    {
      [(NSString *)v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v10 = v35;
      v12 = v36;
      goto LABEL_21;
    }
  }

  v10 = v17;
  v12 = v18;

LABEL_21:
LABEL_22:
  v20 = _objc_isTaggedPointer(@"NSMachErrorDomain");
  v21 = @"NSMachErrorDomain";
  v22 = v21;
  if (!v20)
  {
    goto LABEL_27;
  }

  v23 = _objc_getTaggedPointerTag(v21);
  if (!v23)
  {
    goto LABEL_34;
  }

  if (v23 != 22)
  {
    if (v23 == 2)
    {
      MEMORY[0x1EEE9AC00](v23);
      v24 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v26 = v25;

      goto LABEL_40;
    }

LABEL_27:
    if (__CFStringIsCF())
    {
      v24 = 0;

      v26 = 0xE000000000000000;
    }

    else
    {
      v27 = v22;
      v28 = String.init(_nativeStorage:)();
      if (v29)
      {
        v24 = v28;
        v26 = v29;
      }

      else if ([(__CFString *)v27 length])
      {
        v24 = String.init(_cocoaString:)();
        v26 = v33;
      }

      else
      {

        v24 = 0;
        v26 = 0xE000000000000000;
      }
    }

    goto LABEL_40;
  }

  v30 = [(__CFString *)v22 UTF8String];
  if (!v30)
  {
    __break(1u);
    goto LABEL_47;
  }

  v31 = String.init(utf8String:)(v30);
  if (v32)
  {
LABEL_35:
    v24 = v31;
    v26 = v32;

    goto LABEL_40;
  }

  __break(1u);
LABEL_34:
  _CFIndirectTaggedPointerStringGetContents();
  v31 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (v32)
  {
    goto LABEL_35;
  }

  [(__CFString *)v22 mutableCopy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  swift_dynamicCast();
  v24 = v35;
  v26 = v36;
LABEL_40:
  if (v10 == v24 && v12 == v26)
  {
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
      __break(1u);
    }
  }

  retstr->_nsError.super.isa = _nsError;
}

id static MachError.errorDomain.getter()
{
  isTaggedPointer = _objc_isTaggedPointer(@"NSMachErrorDomain");
  v1 = @"NSMachErrorDomain";
  v2 = v1;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v1);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          return v4;
        }

        goto LABEL_6;
      }

      result = [(__CFString *)v2 UTF8String];
      if (result)
      {
        result = String.init(utf8String:)(result);
        if (v10)
        {
          goto LABEL_13;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    _CFIndirectTaggedPointerStringGetContents();
    result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      return v13;
    }

LABEL_13:
    v11 = result;

    return v11;
  }

LABEL_6:
  if (__CFStringIsCF())
  {

    return 0;
  }

  v6 = v2;
  v7 = String.init(_nativeStorage:)();
  if (v8)
  {
    v9 = v7;

    return v9;
  }

  if (![(__CFString *)v6 length])
  {

    return 0;
  }

  return String.init(_cocoaString:)();
}

uint64_t protocol witness for _BridgedStoredNSError.init(_nsError:) in conformance MachError@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 domain];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(v4);
  v7 = v6;

  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSMachErrorDomain") && v7 == v8)
  {
    goto LABEL_7;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_7:
  }

  *a2 = a1;
  return result;
}

unint64_t lazy protocol witness table accessor for type MachErrorCode and conformance MachErrorCode()
{
  result = lazy protocol witness table cache variable for type MachErrorCode and conformance MachErrorCode;
  if (!lazy protocol witness table cache variable for type MachErrorCode and conformance MachErrorCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MachErrorCode and conformance MachErrorCode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MachErrorCode and conformance MachErrorCode;
  if (!lazy protocol witness table cache variable for type MachErrorCode and conformance MachErrorCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MachErrorCode and conformance MachErrorCode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MachErrorCode and conformance MachErrorCode;
  if (!lazy protocol witness table cache variable for type MachErrorCode and conformance MachErrorCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MachErrorCode and conformance MachErrorCode);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MachError(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type MachError and conformance MachError();
  a1[2] = lazy protocol witness table accessor for type MachError and conformance MachError();
  result = lazy protocol witness table accessor for type MachError and conformance MachError();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MachError and conformance MachError()
{
  result = lazy protocol witness table cache variable for type MachError and conformance MachError;
  if (!lazy protocol witness table cache variable for type MachError and conformance MachError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MachError and conformance MachError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MachError and conformance MachError;
  if (!lazy protocol witness table cache variable for type MachError and conformance MachError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MachError and conformance MachError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MachError and conformance MachError;
  if (!lazy protocol witness table cache variable for type MachError and conformance MachError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MachError and conformance MachError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MachError and conformance MachError;
  if (!lazy protocol witness table cache variable for type MachError and conformance MachError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MachError and conformance MachError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MachError and conformance MachError;
  if (!lazy protocol witness table cache variable for type MachError and conformance MachError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MachError and conformance MachError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MachError and conformance MachError;
  if (!lazy protocol witness table cache variable for type MachError and conformance MachError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MachError and conformance MachError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MachErrorCode(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MachErrorCode and conformance MachErrorCode();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized AsyncLineSequence.AsyncIterator.next()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
}

{
  v1 = v0[2];
  if (*(v1 + 33))
  {
    v2 = *(v1 + 8);
    if (v2 == *(v1 + 16))
    {
      v70 = swift_task_alloc();
      v0[3] = v70;
      *v70 = v0;
      v71 = specialized AsyncLineSequence.AsyncIterator.next();
      goto LABEL_99;
    }

    v3 = *v2;
    *(v1 + 8) = v2 + 1;
    v1 = v0[2];
  }

  else
  {
    v3 = *(v1 + 32);
  }

  *(v1 + 32) = 256;
  if (v3 != 13)
  {
    v12 = v0[2];
    if ((v3 - 10) < 3)
    {
      if (*(v12[3] + 16))
      {
        v13 = static String._fromUTF8Repairing(_:)();
        v15 = v14;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v12[3];
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_15:
          specialized Array.replaceSubrange<A>(_:with:)(0, *(v17 + 16));
LABEL_57:
          v47 = v15;
          v48 = v13;
LABEL_66:
          v55 = v0[1];

          return v55(v48, v47);
        }

LABEL_22:
        if (*(v17 + 24) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v25 = swift_allocObject();
          v45 = _swift_stdlib_malloc_size(v25);
          v25[2] = 0;
          v25[3] = 2 * v45 - 64;
        }

        else
        {
          v25 = MEMORY[0x1E69E7CC0];
        }

        v46 = v0[2];

        *(v46 + 24) = v25;
        goto LABEL_57;
      }

      v30 = swift_isUniquelyReferenced_nonNull_native();
      v22 = v12[3];
      if (v30)
      {
        goto LABEL_34;
      }

      goto LABEL_46;
    }

    if (v3 == 226)
    {
      v33 = v12[1];
      if (v33 == v12[2])
      {
        v70 = swift_task_alloc();
        v0[9] = v70;
        *v70 = v0;
        v71 = specialized AsyncLineSequence.AsyncIterator.next();
        goto LABEL_99;
      }

      v34 = *v33;
      v19 = *v33;
      v12[1] = v33 + 1;
      v35 = v0[2];
      if (v34 == 128)
      {
        v36 = v35[1];
        if (v36 == v35[2])
        {
          v70 = swift_task_alloc();
          v0[10] = v70;
          *v70 = v0;
          v71 = specialized AsyncLineSequence.AsyncIterator.next();
          goto LABEL_99;
        }

        v38 = *v36;
        v37 = *v36;
        v35[1] = v36 + 1;
        v21 = v0[2];
        v22 = *(v21 + 24);
        if ((v38 & 0xFE) != 0xA8)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
          }

          v66 = *(v22 + 2);
          v65 = *(v22 + 3);
          v67 = v65 >> 1;
          v68 = v66 + 1;
          if (v65 >> 1 <= v66)
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v22);
            v65 = *(v22 + 3);
            v67 = v65 >> 1;
          }

          *(v22 + 2) = v68;
          v22[v66 + 32] = -30;
          v69 = v66 + 2;
          if (v67 < (v66 + 2))
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 2, 1, v22);
            v65 = *(v22 + 3);
            v67 = v65 >> 1;
          }

          *(v22 + 2) = v69;
          v22[v68 + 32] = 0x80;
          if (v67 < (v66 + 3))
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 3, 1, v22);
          }

          *(v22 + 2) = v66 + 3;
          v22[v69 + 32] = v37;
          goto LABEL_93;
        }

        if (*(v22 + 2))
        {
LABEL_21:
          v13 = static String._fromUTF8Repairing(_:)();
          v15 = v23;
          v24 = swift_isUniquelyReferenced_nonNull_native();
          v17 = *(v21 + 24);
          if (v24)
          {
            goto LABEL_15;
          }

          goto LABEL_22;
        }

LABEL_45:
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v22 = *(v21 + 24);
        if (v39)
        {
LABEL_34:
          v31 = *(v22 + 2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 1, v22);
          }

          if (v31)
          {
            v32 = *(v22 + 2) - v31;
            memmove(v22 + 32, &v22[v31 + 32], v32);
            *(v22 + 2) = v32;
          }

          goto LABEL_93;
        }

LABEL_46:
        if (*(v22 + 3) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v40 = swift_allocObject();
          v64 = _swift_stdlib_malloc_size(v40);
          v40[2] = 0;
          v40[3] = 2 * v64 - 64;
        }

        else
        {
          v40 = MEMORY[0x1E69E7CC0];
        }

        v22 = v40;
LABEL_93:
        *(v0[2] + 24) = v22;
LABEL_94:

        return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
      }

      v22 = v35[3];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
      }

      v58 = *(v22 + 2);
      v57 = *(v22 + 3);
      v59 = v57 >> 1;
      v60 = v58 + 1;
      if (v57 >> 1 <= v58)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v22);
        v57 = *(v22 + 3);
        v59 = v57 >> 1;
      }

      *(v22 + 2) = v60;
      v61 = &v22[v58];
      v62 = -30;
    }

    else
    {
      if (v3 != 194)
      {
        v22 = v12[3];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
        }

        v42 = *(v22 + 2);
        v41 = *(v22 + 3);
        if (v42 >= v41 >> 1)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v22);
        }

        *(v22 + 2) = v42 + 1;
        v22[v42 + 32] = v3;
        goto LABEL_93;
      }

      v18 = v12[1];
      if (v18 == v12[2])
      {
        v70 = swift_task_alloc();
        v0[8] = v70;
        *v70 = v0;
        v71 = specialized AsyncLineSequence.AsyncIterator.next();
        goto LABEL_99;
      }

      v20 = *v18;
      v19 = *v18;
      v12[1] = v18 + 1;
      v21 = v0[2];
      v22 = *(v21 + 24);
      if (v20 == 133)
      {
        if (*(v22 + 2))
        {
          goto LABEL_21;
        }

        goto LABEL_45;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
      }

      v58 = *(v22 + 2);
      v57 = *(v22 + 3);
      v59 = v57 >> 1;
      v60 = v58 + 1;
      if (v57 >> 1 <= v58)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v22);
        v57 = *(v22 + 3);
        v59 = v57 >> 1;
      }

      *(v22 + 2) = v60;
      v61 = &v22[v58];
      v62 = -62;
    }

    v61[32] = v62;
    v63 = v58 + 2;
    if (v59 < v63)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v63, 1, v22);
    }

    *(v22 + 2) = v63;
    v22[v60 + 32] = v19;
    goto LABEL_93;
  }

  v4 = v0[2];
  if (!*(*(v4 + 24) + 16))
  {
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + 24);
    if (v26)
    {
      v27 = *(v9 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 1, v9);
      }

      if (v27)
      {
        v28 = *(v9 + 2) - v27;
        memmove(v9 + 32, &v9[v27 + 32], v28);
        *(v9 + 2) = v28;
      }

      v5 = 0;
      v7 = 0;
      goto LABEL_30;
    }

    if (*(v9 + 3) >= 2uLL)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
      v29 = swift_allocObject();
      v49 = _swift_stdlib_malloc_size(v29);
      v29[2] = 0;
      v29[3] = 2 * v49 - 64;
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }

    v44 = v0[2];

    v5 = 0;
    v7 = 0;
LABEL_60:
    *(v44 + 24) = v29;
    goto LABEL_61;
  }

  v5 = static String._fromUTF8Repairing(_:)();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v4 + 24);
  if ((v8 & 1) == 0)
  {
    if (*(v9 + 3) >= 2uLL)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
      v29 = swift_allocObject();
      v43 = _swift_stdlib_malloc_size(v29);
      v29[2] = 0;
      v29[3] = 2 * v43 - 64;
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }

    v44 = v0[2];

    goto LABEL_60;
  }

  v10 = *(v9 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 1, v9);
  }

  if (v10)
  {
    v11 = *(v9 + 2) - v10;
    memmove(v9 + 32, &v9[v10 + 32], v11);
    *(v9 + 2) = v11;
  }

LABEL_30:
  *(v0[2] + 24) = v9;
LABEL_61:
  v0[5] = v5;
  v0[6] = v7;
  v50 = v0[2];
  v51 = *(v50 + 8);
  if (v51 != *(v50 + 16))
  {
    v53 = *v51;
    v52 = *v51;
    *(v50 + 8) = v51 + 1;
    if (v53 != 10)
    {
      v54 = v0[2];
      *(v54 + 32) = v52;
      *(v54 + 33) = 0;
    }

    v47 = v0[6];
    if (v47)
    {
      v48 = v0[5];
      goto LABEL_66;
    }

    goto LABEL_94;
  }

  v70 = swift_task_alloc();
  v0[7] = v70;
  *v70 = v0;
  v71 = specialized AsyncLineSequence.AsyncIterator.next();
LABEL_99:
  v70[1] = v71;

  return _AsyncBytesBuffer.reloadBufferAndNext()();
}

{
  v1 = *(v0 + 88);
  *(*(v0 + 16) + 32) = 256;
  if ((v1 & 0x100) != 0)
  {
    v11 = *(v0 + 16);
    v12 = *(*(v11 + 24) + 16);
    if (!v12)
    {
      v24 = 0;
LABEL_69:
      v61 = *(v0 + 8);

      return v61(v24, v12);
    }

    v13 = static String._fromUTF8Repairing(_:)();
    v15 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v11 + 24);
    v18 = *(v0 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      v25 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(0, *(v17 + 24) >> 1);

      *(v18 + 24) = v25;
      goto LABEL_60;
    }

    v19 = *(v17 + 16);
LABEL_16:
    specialized Array.replaceSubrange<A>(_:with:)(0, v19);
LABEL_60:
    v12 = v15;
    v24 = v13;
    goto LABEL_69;
  }

  v2 = *(v0 + 88);
  if (v2 != 13)
  {
    v20 = *(v0 + 16);
    if ((v2 - 10) < 3)
    {
      if (*(v20[3] + 16))
      {
        v13 = static String._fromUTF8Repairing(_:)();
        v15 = v21;
        v22 = swift_isUniquelyReferenced_nonNull_native();
        v23 = v20[3];
        if (v22)
        {
LABEL_15:
          v19 = *(v23 + 16);
          goto LABEL_16;
        }

LABEL_25:
        if (*(v23 + 24) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v33 = swift_allocObject();
          v53 = _swift_stdlib_malloc_size(v33);
          v33[2] = 0;
          v33[3] = 2 * v53 - 64;
        }

        else
        {
          v33 = MEMORY[0x1E69E7CC0];
        }

        v54 = *(v0 + 16);

        *(v54 + 24) = v33;
        goto LABEL_60;
      }

      v38 = swift_isUniquelyReferenced_nonNull_native();
      v30 = v20[3];
      if (v38)
      {
        goto LABEL_37;
      }

      goto LABEL_49;
    }

    if (v2 == 226)
    {
      v41 = v20[1];
      if (v41 == v20[2])
      {
        v76 = swift_task_alloc();
        *(v0 + 72) = v76;
        *v76 = v0;
        v77 = specialized AsyncLineSequence.AsyncIterator.next();
        goto LABEL_101;
      }

      v42 = *v41;
      v27 = *v41;
      v20[1] = v41 + 1;
      v43 = *(v0 + 16);
      if (v42 == 128)
      {
        v44 = v43[1];
        if (v44 == v43[2])
        {
          v76 = swift_task_alloc();
          *(v0 + 80) = v76;
          *v76 = v0;
          v77 = specialized AsyncLineSequence.AsyncIterator.next();
          goto LABEL_101;
        }

        v46 = *v44;
        v45 = *v44;
        v43[1] = v44 + 1;
        v29 = *(v0 + 16);
        v30 = *(v29 + 24);
        if ((v46 & 0xFE) != 0xA8)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
          }

          v72 = *(v30 + 2);
          v71 = *(v30 + 3);
          v73 = v71 >> 1;
          v74 = v72 + 1;
          if (v71 >> 1 <= v72)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v30);
            v71 = *(v30 + 3);
            v73 = v71 >> 1;
          }

          *(v30 + 2) = v74;
          v30[v72 + 32] = -30;
          v75 = v72 + 2;
          if (v73 < (v72 + 2))
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 2, 1, v30);
            v71 = *(v30 + 3);
            v73 = v71 >> 1;
          }

          *(v30 + 2) = v75;
          v30[v74 + 32] = 0x80;
          if (v73 < (v72 + 3))
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 3, 1, v30);
          }

          *(v30 + 2) = v72 + 3;
          v30[v75 + 32] = v45;
          goto LABEL_96;
        }

        if (*(v30 + 2))
        {
LABEL_24:
          v13 = static String._fromUTF8Repairing(_:)();
          v15 = v31;
          v32 = swift_isUniquelyReferenced_nonNull_native();
          v23 = *(v29 + 24);
          if (v32)
          {
            goto LABEL_15;
          }

          goto LABEL_25;
        }

LABEL_48:
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v30 = *(v29 + 24);
        if (v47)
        {
LABEL_37:
          v39 = *(v30 + 2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39, 1, v30);
          }

          if (v39)
          {
            v40 = *(v30 + 2) - v39;
            memmove(v30 + 32, &v30[v39 + 32], v40);
            *(v30 + 2) = v40;
          }

          goto LABEL_96;
        }

LABEL_49:
        if (*(v30 + 3) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v48 = swift_allocObject();
          v70 = _swift_stdlib_malloc_size(v48);
          v48[2] = 0;
          v48[3] = 2 * v70 - 64;
        }

        else
        {
          v48 = MEMORY[0x1E69E7CC0];
        }

        v30 = v48;
LABEL_96:
        *(*(v0 + 16) + 24) = v30;
LABEL_97:

        return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
      }

      v30 = v43[3];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
      }

      v64 = *(v30 + 2);
      v63 = *(v30 + 3);
      v65 = v63 >> 1;
      v66 = v64 + 1;
      if (v63 >> 1 <= v64)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v30);
        v63 = *(v30 + 3);
        v65 = v63 >> 1;
      }

      *(v30 + 2) = v66;
      v67 = &v30[v64];
      v68 = -30;
    }

    else
    {
      if (v2 != 194)
      {
        v30 = v20[3];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
        }

        v50 = *(v30 + 2);
        v49 = *(v30 + 3);
        if (v50 >= v49 >> 1)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v30);
        }

        *(v30 + 2) = v50 + 1;
        v30[v50 + 32] = v2;
        goto LABEL_96;
      }

      v26 = v20[1];
      if (v26 == v20[2])
      {
        v76 = swift_task_alloc();
        *(v0 + 64) = v76;
        *v76 = v0;
        v77 = specialized AsyncLineSequence.AsyncIterator.next();
        goto LABEL_101;
      }

      v28 = *v26;
      v27 = *v26;
      v20[1] = v26 + 1;
      v29 = *(v0 + 16);
      v30 = *(v29 + 24);
      if (v28 == 133)
      {
        if (*(v30 + 2))
        {
          goto LABEL_24;
        }

        goto LABEL_48;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
      }

      v64 = *(v30 + 2);
      v63 = *(v30 + 3);
      v65 = v63 >> 1;
      v66 = v64 + 1;
      if (v63 >> 1 <= v64)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v30);
        v63 = *(v30 + 3);
        v65 = v63 >> 1;
      }

      *(v30 + 2) = v66;
      v67 = &v30[v64];
      v68 = -62;
    }

    v67[32] = v68;
    v69 = v64 + 2;
    if (v65 < v69)
    {
      v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v69, 1, v30);
    }

    *(v30 + 2) = v69;
    v30[v66 + 32] = v27;
    goto LABEL_96;
  }

  v3 = *(v0 + 16);
  if (!*(*(v3 + 24) + 16))
  {
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v3 + 24);
    if (v34)
    {
      v35 = *(v8 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 1, v8);
      }

      if (v35)
      {
        v36 = *(v8 + 2) - v35;
        memmove(v8 + 32, &v8[v35 + 32], v36);
        *(v8 + 2) = v36;
      }

      v4 = 0;
      v6 = 0;
      goto LABEL_33;
    }

    if (*(v8 + 3) >= 2uLL)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
      v37 = swift_allocObject();
      v55 = _swift_stdlib_malloc_size(v37);
      v37[2] = 0;
      v37[3] = 2 * v55 - 64;
    }

    else
    {
      v37 = MEMORY[0x1E69E7CC0];
    }

    v52 = *(v0 + 16);

    v4 = 0;
    v6 = 0;
LABEL_63:
    *(v52 + 24) = v37;
    goto LABEL_64;
  }

  v4 = static String._fromUTF8Repairing(_:)();
  v6 = v5;
  v7 = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + 24);
  if ((v7 & 1) == 0)
  {
    if (*(v8 + 3) >= 2uLL)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
      v37 = swift_allocObject();
      v51 = _swift_stdlib_malloc_size(v37);
      v37[2] = 0;
      v37[3] = 2 * v51 - 64;
    }

    else
    {
      v37 = MEMORY[0x1E69E7CC0];
    }

    v52 = *(v0 + 16);

    goto LABEL_63;
  }

  v9 = *(v8 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 1, v8);
  }

  if (v9)
  {
    v10 = *(v8 + 2) - v9;
    memmove(v8 + 32, &v8[v9 + 32], v10);
    *(v8 + 2) = v10;
  }

LABEL_33:
  *(*(v0 + 16) + 24) = v8;
LABEL_64:
  *(v0 + 40) = v4;
  *(v0 + 48) = v6;
  v56 = *(v0 + 16);
  v57 = *(v56 + 8);
  if (v57 != *(v56 + 16))
  {
    v59 = *v57;
    v58 = *v57;
    *(v56 + 8) = v57 + 1;
    if (v59 != 10)
    {
      v60 = *(v0 + 16);
      *(v60 + 32) = v58;
      *(v60 + 33) = 0;
    }

    v12 = *(v0 + 48);
    if (v12)
    {
      v24 = *(v0 + 40);
      goto LABEL_69;
    }

    goto LABEL_97;
  }

  v76 = swift_task_alloc();
  *(v0 + 56) = v76;
  *v76 = v0;
  v77 = specialized AsyncLineSequence.AsyncIterator.next();
LABEL_101:
  v76[1] = v77;

  return _AsyncBytesBuffer.reloadBufferAndNext()();
}

{
  v1 = *(v0 + 90);
  if ((v1 & 0x100) != 0)
  {
    v3 = *(v0 + 48);
  }

  else
  {
    if (v1 != 10)
    {
      v2 = *(v0 + 16);
      *(v2 + 32) = v1;
      *(v2 + 33) = 0;
    }

    v3 = *(v0 + 48);
    if (!v3)
    {
      return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
    }
  }

  return (*(v0 + 8))(*(v0 + 40), v3);
}

{
  v1 = *(v0 + 92);
  if ((v1 & 0x100) != 0)
  {
    v10 = *(*(v0 + 16) + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    v13 = v12 + 1;
    if (v12 >= v11 >> 1)
    {
      v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v13, 1, v10);
      v13 = v12 + 1;
      v10 = v34;
    }

    v14 = *(v0 + 16);
    *(v10 + 2) = v13;
    v10[v12 + 32] = -62;
    *(v14 + 24) = v10;
    v4 = static String._fromUTF8Repairing(_:)();
    v6 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v14 + 24);
    v18 = *(v0 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      v24 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(0, *(v17 + 24) >> 1);

      *(v18 + 24) = v24;
      goto LABEL_35;
    }

    v9 = *(v17 + 16);
LABEL_12:
    specialized Array.replaceSubrange<A>(_:with:)(0, v9);
LABEL_35:
    v32 = *(v0 + 8);

    return v32(v4, v6);
  }

  v2 = *(v0 + 16);
  v3 = *(v2 + 24);
  if (v1 == 133)
  {
    if (*(v3 + 2))
    {
      v4 = static String._fromUTF8Repairing(_:)();
      v6 = v5;
      v7 = swift_isUniquelyReferenced_nonNull_native();
      v8 = *(v2 + 24);
      if ((v7 & 1) == 0)
      {
        if (*(v8 + 24) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v28 = swift_allocObject();
          v30 = _swift_stdlib_malloc_size(v28);
          v28[2] = 0;
          v28[3] = 2 * v30 - 64;
        }

        else
        {
          v28 = MEMORY[0x1E69E7CC0];
        }

        v31 = *(v0 + 16);

        *(v31 + 24) = v28;
        goto LABEL_35;
      }

      v9 = *(v8 + 16);
      goto LABEL_12;
    }

    v25 = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v2 + 24);
    if (v25)
    {
      v26 = *(v3 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 1, v3);
      }

      if (v26)
      {
        v27 = *(v3 + 2) - v26;
        memmove(v3 + 32, &v3[v26 + 32], v27);
        *(v3 + 2) = v27;
      }
    }

    else
    {
      if (*(v3 + 3) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
        v29 = swift_allocObject();
        v33 = _swift_stdlib_malloc_size(v29);
        v29[2] = 0;
        v29[3] = 2 * v33 - 64;
      }

      else
      {
        v29 = MEMORY[0x1E69E7CC0];
      }

      v3 = v29;
    }
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    }

    v20 = *(v3 + 2);
    v19 = *(v3 + 3);
    v21 = v19 >> 1;
    v22 = v20 + 1;
    if (v19 >> 1 <= v20)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v3);
      v19 = *(v3 + 3);
      v21 = v19 >> 1;
    }

    *(v3 + 2) = v22;
    v3[v20 + 32] = -62;
    v23 = v20 + 2;
    if (v21 < v23)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v23, 1, v3);
    }

    *(v3 + 2) = v23;
    v3[v22 + 32] = v1;
  }

  *(*(v0 + 16) + 24) = v3;

  return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
}

{
  v1 = *(v0 + 94);
  if ((v1 & 0x100) != 0)
  {
    v13 = *(*(v0 + 16) + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v16, 1, v13);
      v16 = v15 + 1;
      v13 = v45;
    }

    v17 = *(v0 + 16);
    *(v13 + 2) = v16;
    v13[v15 + 32] = -30;
    *(v17 + 24) = v13;
    v7 = static String._fromUTF8Repairing(_:)();
    v9 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v17 + 24);
    v21 = *(v0 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      v28 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(0, *(v20 + 24) >> 1);

      *(v21 + 24) = v28;
      goto LABEL_23;
    }

    v12 = *(v20 + 16);
LABEL_14:
    specialized Array.replaceSubrange<A>(_:with:)(0, v12);
LABEL_23:
    v29 = *(v0 + 8);

    return v29(v7, v9);
  }

  v2 = *(v0 + 16);
  if (v1 != 128)
  {
    v6 = v2[3];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    }

    v23 = *(v6 + 2);
    v22 = *(v6 + 3);
    v24 = v22 >> 1;
    v25 = v23 + 1;
    if (v22 >> 1 <= v23)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v6);
      v22 = *(v6 + 3);
      v24 = v22 >> 1;
    }

    *(v6 + 2) = v25;
    v6[v23 + 32] = -30;
    v26 = v23 + 2;
    if (v24 < v26)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v26, 1, v6);
    }

    *(v6 + 2) = v26;
    v27 = &v6[v25];
    goto LABEL_35;
  }

  v3 = v2[1];
  if (v3 != v2[2])
  {
    v4 = *v3;
    LOBYTE(v1) = *v3;
    v2[1] = v3 + 1;
    v5 = *(v0 + 16);
    v6 = *(v5 + 24);
    if ((v4 & 0xFE) == 0xA8)
    {
      if (*(v6 + 2))
      {
        v7 = static String._fromUTF8Repairing(_:)();
        v9 = v8;
        v10 = swift_isUniquelyReferenced_nonNull_native();
        v11 = *(v5 + 24);
        if ((v10 & 1) == 0)
        {
          if (*(v11 + 24) >= 2uLL)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
            v40 = swift_allocObject();
            v42 = _swift_stdlib_malloc_size(v40);
            v40[2] = 0;
            v40[3] = 2 * v42 - 64;
          }

          else
          {
            v40 = MEMORY[0x1E69E7CC0];
          }

          v43 = *(v0 + 16);

          *(v43 + 24) = v40;
          goto LABEL_23;
        }

        v12 = *(v11 + 16);
        goto LABEL_14;
      }

      v37 = swift_isUniquelyReferenced_nonNull_native();
      v6 = *(v5 + 24);
      if (v37)
      {
        v38 = *(v6 + 2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 1, v6);
        }

        if (v38)
        {
          v39 = *(v6 + 2) - v38;
          memmove(v6 + 32, &v6[v38 + 32], v39);
          *(v6 + 2) = v39;
        }
      }

      else
      {
        if (*(v6 + 3) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v41 = swift_allocObject();
          v44 = _swift_stdlib_malloc_size(v41);
          v41[2] = 0;
          v41[3] = 2 * v44 - 64;
        }

        else
        {
          v41 = MEMORY[0x1E69E7CC0];
        }

        v6 = v41;
      }

      goto LABEL_36;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    }

    v31 = *(v6 + 2);
    v32 = *(v6 + 3);
    v33 = v32 >> 1;
    v34 = v31 + 1;
    if (v32 >> 1 <= v31)
    {
      v47 = v6;
      v48 = *(v6 + 2);
      v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v31 + 1, 1, v47);
      v31 = v48;
      v6 = v49;
      v32 = *(v49 + 3);
      v33 = v32 >> 1;
    }

    *(v6 + 2) = v34;
    v6[v31 + 32] = -30;
    v35 = v31 + 2;
    if (v33 < (v31 + 2))
    {
      v50 = v6;
      v51 = v31;
      v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v31 + 2, 1, v50);
      v31 = v51;
      v6 = v52;
      v32 = *(v52 + 3);
      v33 = v32 >> 1;
    }

    *(v6 + 2) = v35;
    v6[v34 + 32] = 0x80;
    v36 = v31 + 3;
    if (v33 < (v31 + 3))
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v31 + 3, 1, v6);
    }

    *(v6 + 2) = v36;
    v27 = &v6[v35];
LABEL_35:
    v27[32] = v1;
LABEL_36:
    *(*(v0 + 16) + 24) = v6;

    return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
  }

  v46 = swift_task_alloc();
  *(v0 + 80) = v46;
  *v46 = v0;
  v46[1] = specialized AsyncLineSequence.AsyncIterator.next();

  return _AsyncBytesBuffer.reloadBufferAndNext()();
}

{
  v1 = *(v0 + 96);
  if ((v1 & 0x100) != 0)
  {
    v10 = *(*(v0 + 16) + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    v13 = v11 >> 1;
    v14 = v12 + 1;
    if (v11 >> 1 <= v12)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
      v11 = *(v10 + 3);
      v13 = v11 >> 1;
    }

    *(v10 + 2) = v14;
    v10[v12 + 32] = -30;
    v15 = v12 + 2;
    if (v13 < (v12 + 2))
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v15, 1, v10);
      v15 = v12 + 2;
      v10 = v36;
    }

    v16 = *(v0 + 16);
    *(v10 + 2) = v15;
    v10[v14 + 32] = 0x80;
    *(v16 + 24) = v10;
    v4 = static String._fromUTF8Repairing(_:)();
    v6 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v16 + 24);
    v20 = *(v0 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      v26 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(0, *(v19 + 24) >> 1);

      *(v20 + 24) = v26;
      goto LABEL_39;
    }

    v9 = *(v19 + 16);
LABEL_14:
    specialized Array.replaceSubrange<A>(_:with:)(0, v9);
LABEL_39:
    v34 = *(v0 + 8);

    return v34(v4, v6);
  }

  v2 = *(v0 + 16);
  v3 = *(v2 + 24);
  if ((v1 & 0xFE) == 0xA8)
  {
    if (*(v3 + 2))
    {
      v4 = static String._fromUTF8Repairing(_:)();
      v6 = v5;
      v7 = swift_isUniquelyReferenced_nonNull_native();
      v8 = *(v2 + 24);
      if ((v7 & 1) == 0)
      {
        if (*(v8 + 24) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v30 = swift_allocObject();
          v32 = _swift_stdlib_malloc_size(v30);
          v30[2] = 0;
          v30[3] = 2 * v32 - 64;
        }

        else
        {
          v30 = MEMORY[0x1E69E7CC0];
        }

        v33 = *(v0 + 16);

        *(v33 + 24) = v30;
        goto LABEL_39;
      }

      v9 = *(v8 + 16);
      goto LABEL_14;
    }

    v27 = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v2 + 24);
    if (v27)
    {
      v28 = *(v3 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 1, v3);
      }

      if (v28)
      {
        v29 = *(v3 + 2) - v28;
        memmove(v3 + 32, &v3[v28 + 32], v29);
        *(v3 + 2) = v29;
      }
    }

    else
    {
      if (*(v3 + 3) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
        v31 = swift_allocObject();
        v35 = _swift_stdlib_malloc_size(v31);
        v31[2] = 0;
        v31[3] = 2 * v35 - 64;
      }

      else
      {
        v31 = MEMORY[0x1E69E7CC0];
      }

      v3 = v31;
    }
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    }

    v22 = *(v3 + 2);
    v21 = *(v3 + 3);
    v23 = v21 >> 1;
    v24 = v22 + 1;
    if (v21 >> 1 <= v22)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v3);
      v21 = *(v3 + 3);
      v23 = v21 >> 1;
    }

    *(v3 + 2) = v24;
    v3[v22 + 32] = -30;
    v25 = v22 + 2;
    if (v23 < (v22 + 2))
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 2, 1, v3);
      v21 = *(v3 + 3);
      v23 = v21 >> 1;
    }

    *(v3 + 2) = v25;
    v3[v24 + 32] = 0x80;
    if (v23 < (v22 + 3))
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 3, 1, v3);
    }

    *(v3 + 2) = v22 + 3;
    v3[v25 + 32] = v1;
  }

  *(*(v0 + 16) + 24) = v3;

  return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
}

{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
}

{
  v1 = v0[2];
  if (*(v1 + 33))
  {
    v2 = *(v1 + 8);
    if (v2 == *(v1 + 16))
    {
      v70 = swift_task_alloc();
      v0[3] = v70;
      *v70 = v0;
      v71 = specialized AsyncLineSequence.AsyncIterator.next();
      goto LABEL_99;
    }

    v3 = *v2;
    *(v1 + 8) = v2 + 1;
    v1 = v0[2];
  }

  else
  {
    v3 = *(v1 + 32);
  }

  *(v1 + 32) = 256;
  if (v3 != 13)
  {
    v12 = v0[2];
    if ((v3 - 10) < 3)
    {
      if (*(v12[3] + 16))
      {
        v13 = static String._fromUTF8Repairing(_:)();
        v15 = v14;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v12[3];
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_15:
          specialized Array.replaceSubrange<A>(_:with:)(0, *(v17 + 16));
LABEL_57:
          v47 = v15;
          v48 = v13;
LABEL_66:
          v55 = v0[1];

          return v55(v48, v47);
        }

LABEL_22:
        if (*(v17 + 24) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v25 = swift_allocObject();
          v45 = _swift_stdlib_malloc_size(v25);
          v25[2] = 0;
          v25[3] = 2 * v45 - 64;
        }

        else
        {
          v25 = MEMORY[0x1E69E7CC0];
        }

        v46 = v0[2];

        *(v46 + 24) = v25;
        goto LABEL_57;
      }

      v30 = swift_isUniquelyReferenced_nonNull_native();
      v22 = v12[3];
      if (v30)
      {
        goto LABEL_34;
      }

      goto LABEL_46;
    }

    if (v3 == 226)
    {
      v33 = v12[1];
      if (v33 == v12[2])
      {
        v70 = swift_task_alloc();
        v0[9] = v70;
        *v70 = v0;
        v71 = specialized AsyncLineSequence.AsyncIterator.next();
        goto LABEL_99;
      }

      v34 = *v33;
      v19 = *v33;
      v12[1] = v33 + 1;
      v35 = v0[2];
      if (v34 == 128)
      {
        v36 = v35[1];
        if (v36 == v35[2])
        {
          v70 = swift_task_alloc();
          v0[10] = v70;
          *v70 = v0;
          v71 = specialized AsyncLineSequence.AsyncIterator.next();
          goto LABEL_99;
        }

        v38 = *v36;
        v37 = *v36;
        v35[1] = v36 + 1;
        v21 = v0[2];
        v22 = *(v21 + 24);
        if ((v38 & 0xFE) != 0xA8)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
          }

          v66 = *(v22 + 2);
          v65 = *(v22 + 3);
          v67 = v65 >> 1;
          v68 = v66 + 1;
          if (v65 >> 1 <= v66)
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v22);
            v65 = *(v22 + 3);
            v67 = v65 >> 1;
          }

          *(v22 + 2) = v68;
          v22[v66 + 32] = -30;
          v69 = v66 + 2;
          if (v67 < (v66 + 2))
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 2, 1, v22);
            v65 = *(v22 + 3);
            v67 = v65 >> 1;
          }

          *(v22 + 2) = v69;
          v22[v68 + 32] = 0x80;
          if (v67 < (v66 + 3))
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 3, 1, v22);
          }

          *(v22 + 2) = v66 + 3;
          v22[v69 + 32] = v37;
          goto LABEL_93;
        }

        if (*(v22 + 2))
        {
LABEL_21:
          v13 = static String._fromUTF8Repairing(_:)();
          v15 = v23;
          v24 = swift_isUniquelyReferenced_nonNull_native();
          v17 = *(v21 + 24);
          if (v24)
          {
            goto LABEL_15;
          }

          goto LABEL_22;
        }

LABEL_45:
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v22 = *(v21 + 24);
        if (v39)
        {
LABEL_34:
          v31 = *(v22 + 2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 1, v22);
          }

          if (v31)
          {
            v32 = *(v22 + 2) - v31;
            memmove(v22 + 32, &v22[v31 + 32], v32);
            *(v22 + 2) = v32;
          }

          goto LABEL_93;
        }

LABEL_46:
        if (*(v22 + 3) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v40 = swift_allocObject();
          v64 = _swift_stdlib_malloc_size(v40);
          v40[2] = 0;
          v40[3] = 2 * v64 - 64;
        }

        else
        {
          v40 = MEMORY[0x1E69E7CC0];
        }

        v22 = v40;
LABEL_93:
        *(v0[2] + 24) = v22;
LABEL_94:

        return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
      }

      v22 = v35[3];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
      }

      v58 = *(v22 + 2);
      v57 = *(v22 + 3);
      v59 = v57 >> 1;
      v60 = v58 + 1;
      if (v57 >> 1 <= v58)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v22);
        v57 = *(v22 + 3);
        v59 = v57 >> 1;
      }

      *(v22 + 2) = v60;
      v61 = &v22[v58];
      v62 = -30;
    }

    else
    {
      if (v3 != 194)
      {
        v22 = v12[3];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
        }

        v42 = *(v22 + 2);
        v41 = *(v22 + 3);
        if (v42 >= v41 >> 1)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v22);
        }

        *(v22 + 2) = v42 + 1;
        v22[v42 + 32] = v3;
        goto LABEL_93;
      }

      v18 = v12[1];
      if (v18 == v12[2])
      {
        v70 = swift_task_alloc();
        v0[8] = v70;
        *v70 = v0;
        v71 = specialized AsyncLineSequence.AsyncIterator.next();
        goto LABEL_99;
      }

      v20 = *v18;
      v19 = *v18;
      v12[1] = v18 + 1;
      v21 = v0[2];
      v22 = *(v21 + 24);
      if (v20 == 133)
      {
        if (*(v22 + 2))
        {
          goto LABEL_21;
        }

        goto LABEL_45;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
      }

      v58 = *(v22 + 2);
      v57 = *(v22 + 3);
      v59 = v57 >> 1;
      v60 = v58 + 1;
      if (v57 >> 1 <= v58)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v22);
        v57 = *(v22 + 3);
        v59 = v57 >> 1;
      }

      *(v22 + 2) = v60;
      v61 = &v22[v58];
      v62 = -62;
    }

    v61[32] = v62;
    v63 = v58 + 2;
    if (v59 < v63)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v63, 1, v22);
    }

    *(v22 + 2) = v63;
    v22[v60 + 32] = v19;
    goto LABEL_93;
  }

  v4 = v0[2];
  if (!*(*(v4 + 24) + 16))
  {
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + 24);
    if (v26)
    {
      v27 = *(v9 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 1, v9);
      }

      if (v27)
      {
        v28 = *(v9 + 2) - v27;
        memmove(v9 + 32, &v9[v27 + 32], v28);
        *(v9 + 2) = v28;
      }

      v5 = 0;
      v7 = 0;
      goto LABEL_30;
    }

    if (*(v9 + 3) >= 2uLL)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
      v29 = swift_allocObject();
      v49 = _swift_stdlib_malloc_size(v29);
      v29[2] = 0;
      v29[3] = 2 * v49 - 64;
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }

    v44 = v0[2];

    v5 = 0;
    v7 = 0;
LABEL_60:
    *(v44 + 24) = v29;
    goto LABEL_61;
  }

  v5 = static String._fromUTF8Repairing(_:)();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v4 + 24);
  if ((v8 & 1) == 0)
  {
    if (*(v9 + 3) >= 2uLL)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
      v29 = swift_allocObject();
      v43 = _swift_stdlib_malloc_size(v29);
      v29[2] = 0;
      v29[3] = 2 * v43 - 64;
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }

    v44 = v0[2];

    goto LABEL_60;
  }

  v10 = *(v9 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 1, v9);
  }

  if (v10)
  {
    v11 = *(v9 + 2) - v10;
    memmove(v9 + 32, &v9[v10 + 32], v11);
    *(v9 + 2) = v11;
  }

LABEL_30:
  *(v0[2] + 24) = v9;
LABEL_61:
  v0[5] = v5;
  v0[6] = v7;
  v50 = v0[2];
  v51 = *(v50 + 8);
  if (v51 != *(v50 + 16))
  {
    v53 = *v51;
    v52 = *v51;
    *(v50 + 8) = v51 + 1;
    if (v53 != 10)
    {
      v54 = v0[2];
      *(v54 + 32) = v52;
      *(v54 + 33) = 0;
    }

    v47 = v0[6];
    if (v47)
    {
      v48 = v0[5];
      goto LABEL_66;
    }

    goto LABEL_94;
  }

  v70 = swift_task_alloc();
  v0[7] = v70;
  *v70 = v0;
  v71 = specialized AsyncLineSequence.AsyncIterator.next();
LABEL_99:
  v70[1] = v71;

  return _AsyncBytesBuffer.reloadBufferAndNext()();
}

{
  v1 = *(v0 + 88);
  *(*(v0 + 16) + 32) = 256;
  if ((v1 & 0x100) != 0)
  {
    v11 = *(v0 + 16);
    v12 = *(*(v11 + 24) + 16);
    if (!v12)
    {
      v24 = 0;
LABEL_69:
      v61 = *(v0 + 8);

      return v61(v24, v12);
    }

    v13 = static String._fromUTF8Repairing(_:)();
    v15 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v11 + 24);
    v18 = *(v0 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      v25 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(0, *(v17 + 24) >> 1);

      *(v18 + 24) = v25;
      goto LABEL_60;
    }

    v19 = *(v17 + 16);
LABEL_16:
    specialized Array.replaceSubrange<A>(_:with:)(0, v19);
LABEL_60:
    v12 = v15;
    v24 = v13;
    goto LABEL_69;
  }

  v2 = *(v0 + 88);
  if (v2 != 13)
  {
    v20 = *(v0 + 16);
    if ((v2 - 10) < 3)
    {
      if (*(v20[3] + 16))
      {
        v13 = static String._fromUTF8Repairing(_:)();
        v15 = v21;
        v22 = swift_isUniquelyReferenced_nonNull_native();
        v23 = v20[3];
        if (v22)
        {
LABEL_15:
          v19 = *(v23 + 16);
          goto LABEL_16;
        }

LABEL_25:
        if (*(v23 + 24) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v33 = swift_allocObject();
          v53 = _swift_stdlib_malloc_size(v33);
          v33[2] = 0;
          v33[3] = 2 * v53 - 64;
        }

        else
        {
          v33 = MEMORY[0x1E69E7CC0];
        }

        v54 = *(v0 + 16);

        *(v54 + 24) = v33;
        goto LABEL_60;
      }

      v38 = swift_isUniquelyReferenced_nonNull_native();
      v30 = v20[3];
      if (v38)
      {
        goto LABEL_37;
      }

      goto LABEL_49;
    }

    if (v2 == 226)
    {
      v41 = v20[1];
      if (v41 == v20[2])
      {
        v76 = swift_task_alloc();
        *(v0 + 72) = v76;
        *v76 = v0;
        v77 = specialized AsyncLineSequence.AsyncIterator.next();
        goto LABEL_101;
      }

      v42 = *v41;
      v27 = *v41;
      v20[1] = v41 + 1;
      v43 = *(v0 + 16);
      if (v42 == 128)
      {
        v44 = v43[1];
        if (v44 == v43[2])
        {
          v76 = swift_task_alloc();
          *(v0 + 80) = v76;
          *v76 = v0;
          v77 = specialized AsyncLineSequence.AsyncIterator.next();
          goto LABEL_101;
        }

        v46 = *v44;
        v45 = *v44;
        v43[1] = v44 + 1;
        v29 = *(v0 + 16);
        v30 = *(v29 + 24);
        if ((v46 & 0xFE) != 0xA8)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
          }

          v72 = *(v30 + 2);
          v71 = *(v30 + 3);
          v73 = v71 >> 1;
          v74 = v72 + 1;
          if (v71 >> 1 <= v72)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v30);
            v71 = *(v30 + 3);
            v73 = v71 >> 1;
          }

          *(v30 + 2) = v74;
          v30[v72 + 32] = -30;
          v75 = v72 + 2;
          if (v73 < (v72 + 2))
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 2, 1, v30);
            v71 = *(v30 + 3);
            v73 = v71 >> 1;
          }

          *(v30 + 2) = v75;
          v30[v74 + 32] = 0x80;
          if (v73 < (v72 + 3))
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 3, 1, v30);
          }

          *(v30 + 2) = v72 + 3;
          v30[v75 + 32] = v45;
          goto LABEL_96;
        }

        if (*(v30 + 2))
        {
LABEL_24:
          v13 = static String._fromUTF8Repairing(_:)();
          v15 = v31;
          v32 = swift_isUniquelyReferenced_nonNull_native();
          v23 = *(v29 + 24);
          if (v32)
          {
            goto LABEL_15;
          }

          goto LABEL_25;
        }

LABEL_48:
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v30 = *(v29 + 24);
        if (v47)
        {
LABEL_37:
          v39 = *(v30 + 2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39, 1, v30);
          }

          if (v39)
          {
            v40 = *(v30 + 2) - v39;
            memmove(v30 + 32, &v30[v39 + 32], v40);
            *(v30 + 2) = v40;
          }

          goto LABEL_96;
        }

LABEL_49:
        if (*(v30 + 3) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v48 = swift_allocObject();
          v70 = _swift_stdlib_malloc_size(v48);
          v48[2] = 0;
          v48[3] = 2 * v70 - 64;
        }

        else
        {
          v48 = MEMORY[0x1E69E7CC0];
        }

        v30 = v48;
LABEL_96:
        *(*(v0 + 16) + 24) = v30;
LABEL_97:

        return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
      }

      v30 = v43[3];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
      }

      v64 = *(v30 + 2);
      v63 = *(v30 + 3);
      v65 = v63 >> 1;
      v66 = v64 + 1;
      if (v63 >> 1 <= v64)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v30);
        v63 = *(v30 + 3);
        v65 = v63 >> 1;
      }

      *(v30 + 2) = v66;
      v67 = &v30[v64];
      v68 = -30;
    }

    else
    {
      if (v2 != 194)
      {
        v30 = v20[3];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
        }

        v50 = *(v30 + 2);
        v49 = *(v30 + 3);
        if (v50 >= v49 >> 1)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v30);
        }

        *(v30 + 2) = v50 + 1;
        v30[v50 + 32] = v2;
        goto LABEL_96;
      }

      v26 = v20[1];
      if (v26 == v20[2])
      {
        v76 = swift_task_alloc();
        *(v0 + 64) = v76;
        *v76 = v0;
        v77 = specialized AsyncLineSequence.AsyncIterator.next();
        goto LABEL_101;
      }

      v28 = *v26;
      v27 = *v26;
      v20[1] = v26 + 1;
      v29 = *(v0 + 16);
      v30 = *(v29 + 24);
      if (v28 == 133)
      {
        if (*(v30 + 2))
        {
          goto LABEL_24;
        }

        goto LABEL_48;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
      }

      v64 = *(v30 + 2);
      v63 = *(v30 + 3);
      v65 = v63 >> 1;
      v66 = v64 + 1;
      if (v63 >> 1 <= v64)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v30);
        v63 = *(v30 + 3);
        v65 = v63 >> 1;
      }

      *(v30 + 2) = v66;
      v67 = &v30[v64];
      v68 = -62;
    }

    v67[32] = v68;
    v69 = v64 + 2;
    if (v65 < v69)
    {
      v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v69, 1, v30);
    }

    *(v30 + 2) = v69;
    v30[v66 + 32] = v27;
    goto LABEL_96;
  }

  v3 = *(v0 + 16);
  if (!*(*(v3 + 24) + 16))
  {
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v3 + 24);
    if (v34)
    {
      v35 = *(v8 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 1, v8);
      }

      if (v35)
      {
        v36 = *(v8 + 2) - v35;
        memmove(v8 + 32, &v8[v35 + 32], v36);
        *(v8 + 2) = v36;
      }

      v4 = 0;
      v6 = 0;
      goto LABEL_33;
    }

    if (*(v8 + 3) >= 2uLL)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
      v37 = swift_allocObject();
      v55 = _swift_stdlib_malloc_size(v37);
      v37[2] = 0;
      v37[3] = 2 * v55 - 64;
    }

    else
    {
      v37 = MEMORY[0x1E69E7CC0];
    }

    v52 = *(v0 + 16);

    v4 = 0;
    v6 = 0;
LABEL_63:
    *(v52 + 24) = v37;
    goto LABEL_64;
  }

  v4 = static String._fromUTF8Repairing(_:)();
  v6 = v5;
  v7 = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + 24);
  if ((v7 & 1) == 0)
  {
    if (*(v8 + 3) >= 2uLL)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
      v37 = swift_allocObject();
      v51 = _swift_stdlib_malloc_size(v37);
      v37[2] = 0;
      v37[3] = 2 * v51 - 64;
    }

    else
    {
      v37 = MEMORY[0x1E69E7CC0];
    }

    v52 = *(v0 + 16);

    goto LABEL_63;
  }

  v9 = *(v8 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 1, v8);
  }

  if (v9)
  {
    v10 = *(v8 + 2) - v9;
    memmove(v8 + 32, &v8[v9 + 32], v10);
    *(v8 + 2) = v10;
  }

LABEL_33:
  *(*(v0 + 16) + 24) = v8;
LABEL_64:
  *(v0 + 40) = v4;
  *(v0 + 48) = v6;
  v56 = *(v0 + 16);
  v57 = *(v56 + 8);
  if (v57 != *(v56 + 16))
  {
    v59 = *v57;
    v58 = *v57;
    *(v56 + 8) = v57 + 1;
    if (v59 != 10)
    {
      v60 = *(v0 + 16);
      *(v60 + 32) = v58;
      *(v60 + 33) = 0;
    }

    v12 = *(v0 + 48);
    if (v12)
    {
      v24 = *(v0 + 40);
      goto LABEL_69;
    }

    goto LABEL_97;
  }

  v76 = swift_task_alloc();
  *(v0 + 56) = v76;
  *v76 = v0;
  v77 = specialized AsyncLineSequence.AsyncIterator.next();
LABEL_101:
  v76[1] = v77;

  return _AsyncBytesBuffer.reloadBufferAndNext()();
}

{
  v1 = *(v0 + 90);
  if ((v1 & 0x100) != 0)
  {
    v3 = *(v0 + 48);
  }

  else
  {
    if (v1 != 10)
    {
      v2 = *(v0 + 16);
      *(v2 + 32) = v1;
      *(v2 + 33) = 0;
    }

    v3 = *(v0 + 48);
    if (!v3)
    {
      return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
    }
  }

  return (*(v0 + 8))(*(v0 + 40), v3);
}

{
  v1 = *(v0 + 92);
  if ((v1 & 0x100) != 0)
  {
    v10 = *(*(v0 + 16) + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    v13 = v12 + 1;
    if (v12 >= v11 >> 1)
    {
      v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v13, 1, v10);
      v13 = v12 + 1;
      v10 = v34;
    }

    v14 = *(v0 + 16);
    *(v10 + 2) = v13;
    v10[v12 + 32] = -62;
    *(v14 + 24) = v10;
    v4 = static String._fromUTF8Repairing(_:)();
    v6 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v14 + 24);
    v18 = *(v0 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      v24 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(0, *(v17 + 24) >> 1);

      *(v18 + 24) = v24;
      goto LABEL_35;
    }

    v9 = *(v17 + 16);
LABEL_12:
    specialized Array.replaceSubrange<A>(_:with:)(0, v9);
LABEL_35:
    v32 = *(v0 + 8);

    return v32(v4, v6);
  }

  v2 = *(v0 + 16);
  v3 = *(v2 + 24);
  if (v1 == 133)
  {
    if (*(v3 + 2))
    {
      v4 = static String._fromUTF8Repairing(_:)();
      v6 = v5;
      v7 = swift_isUniquelyReferenced_nonNull_native();
      v8 = *(v2 + 24);
      if ((v7 & 1) == 0)
      {
        if (*(v8 + 24) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v28 = swift_allocObject();
          v30 = _swift_stdlib_malloc_size(v28);
          v28[2] = 0;
          v28[3] = 2 * v30 - 64;
        }

        else
        {
          v28 = MEMORY[0x1E69E7CC0];
        }

        v31 = *(v0 + 16);

        *(v31 + 24) = v28;
        goto LABEL_35;
      }

      v9 = *(v8 + 16);
      goto LABEL_12;
    }

    v25 = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v2 + 24);
    if (v25)
    {
      v26 = *(v3 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 1, v3);
      }

      if (v26)
      {
        v27 = *(v3 + 2) - v26;
        memmove(v3 + 32, &v3[v26 + 32], v27);
        *(v3 + 2) = v27;
      }
    }

    else
    {
      if (*(v3 + 3) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
        v29 = swift_allocObject();
        v33 = _swift_stdlib_malloc_size(v29);
        v29[2] = 0;
        v29[3] = 2 * v33 - 64;
      }

      else
      {
        v29 = MEMORY[0x1E69E7CC0];
      }

      v3 = v29;
    }
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    }

    v20 = *(v3 + 2);
    v19 = *(v3 + 3);
    v21 = v19 >> 1;
    v22 = v20 + 1;
    if (v19 >> 1 <= v20)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v3);
      v19 = *(v3 + 3);
      v21 = v19 >> 1;
    }

    *(v3 + 2) = v22;
    v3[v20 + 32] = -62;
    v23 = v20 + 2;
    if (v21 < v23)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v23, 1, v3);
    }

    *(v3 + 2) = v23;
    v3[v22 + 32] = v1;
  }

  *(*(v0 + 16) + 24) = v3;

  return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
}

{
  v1 = *(v0 + 94);
  if ((v1 & 0x100) != 0)
  {
    v13 = *(*(v0 + 16) + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v16, 1, v13);
      v16 = v15 + 1;
      v13 = v45;
    }

    v17 = *(v0 + 16);
    *(v13 + 2) = v16;
    v13[v15 + 32] = -30;
    *(v17 + 24) = v13;
    v7 = static String._fromUTF8Repairing(_:)();
    v9 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v17 + 24);
    v21 = *(v0 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      v28 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(0, *(v20 + 24) >> 1);

      *(v21 + 24) = v28;
      goto LABEL_23;
    }

    v12 = *(v20 + 16);
LABEL_14:
    specialized Array.replaceSubrange<A>(_:with:)(0, v12);
LABEL_23:
    v29 = *(v0 + 8);

    return v29(v7, v9);
  }

  v2 = *(v0 + 16);
  if (v1 != 128)
  {
    v6 = v2[3];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    }

    v23 = *(v6 + 2);
    v22 = *(v6 + 3);
    v24 = v22 >> 1;
    v25 = v23 + 1;
    if (v22 >> 1 <= v23)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v6);
      v22 = *(v6 + 3);
      v24 = v22 >> 1;
    }

    *(v6 + 2) = v25;
    v6[v23 + 32] = -30;
    v26 = v23 + 2;
    if (v24 < v26)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v26, 1, v6);
    }

    *(v6 + 2) = v26;
    v27 = &v6[v25];
    goto LABEL_35;
  }

  v3 = v2[1];
  if (v3 != v2[2])
  {
    v4 = *v3;
    LOBYTE(v1) = *v3;
    v2[1] = v3 + 1;
    v5 = *(v0 + 16);
    v6 = *(v5 + 24);
    if ((v4 & 0xFE) == 0xA8)
    {
      if (*(v6 + 2))
      {
        v7 = static String._fromUTF8Repairing(_:)();
        v9 = v8;
        v10 = swift_isUniquelyReferenced_nonNull_native();
        v11 = *(v5 + 24);
        if ((v10 & 1) == 0)
        {
          if (*(v11 + 24) >= 2uLL)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
            v40 = swift_allocObject();
            v42 = _swift_stdlib_malloc_size(v40);
            v40[2] = 0;
            v40[3] = 2 * v42 - 64;
          }

          else
          {
            v40 = MEMORY[0x1E69E7CC0];
          }

          v43 = *(v0 + 16);

          *(v43 + 24) = v40;
          goto LABEL_23;
        }

        v12 = *(v11 + 16);
        goto LABEL_14;
      }

      v37 = swift_isUniquelyReferenced_nonNull_native();
      v6 = *(v5 + 24);
      if (v37)
      {
        v38 = *(v6 + 2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 1, v6);
        }

        if (v38)
        {
          v39 = *(v6 + 2) - v38;
          memmove(v6 + 32, &v6[v38 + 32], v39);
          *(v6 + 2) = v39;
        }
      }

      else
      {
        if (*(v6 + 3) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v41 = swift_allocObject();
          v44 = _swift_stdlib_malloc_size(v41);
          v41[2] = 0;
          v41[3] = 2 * v44 - 64;
        }

        else
        {
          v41 = MEMORY[0x1E69E7CC0];
        }

        v6 = v41;
      }

      goto LABEL_36;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    }

    v31 = *(v6 + 2);
    v32 = *(v6 + 3);
    v33 = v32 >> 1;
    v34 = v31 + 1;
    if (v32 >> 1 <= v31)
    {
      v47 = v6;
      v48 = *(v6 + 2);
      v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v31 + 1, 1, v47);
      v31 = v48;
      v6 = v49;
      v32 = *(v49 + 3);
      v33 = v32 >> 1;
    }

    *(v6 + 2) = v34;
    v6[v31 + 32] = -30;
    v35 = v31 + 2;
    if (v33 < (v31 + 2))
    {
      v50 = v6;
      v51 = v31;
      v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v31 + 2, 1, v50);
      v31 = v51;
      v6 = v52;
      v32 = *(v52 + 3);
      v33 = v32 >> 1;
    }

    *(v6 + 2) = v35;
    v6[v34 + 32] = 0x80;
    v36 = v31 + 3;
    if (v33 < (v31 + 3))
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v31 + 3, 1, v6);
    }

    *(v6 + 2) = v36;
    v27 = &v6[v35];
LABEL_35:
    v27[32] = v1;
LABEL_36:
    *(*(v0 + 16) + 24) = v6;

    return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
  }

  v46 = swift_task_alloc();
  *(v0 + 80) = v46;
  *v46 = v0;
  v46[1] = specialized AsyncLineSequence.AsyncIterator.next();

  return _AsyncBytesBuffer.reloadBufferAndNext()();
}

{
  v1 = *(v0 + 96);
  if ((v1 & 0x100) != 0)
  {
    v10 = *(*(v0 + 16) + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    v13 = v11 >> 1;
    v14 = v12 + 1;
    if (v11 >> 1 <= v12)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
      v11 = *(v10 + 3);
      v13 = v11 >> 1;
    }

    *(v10 + 2) = v14;
    v10[v12 + 32] = -30;
    v15 = v12 + 2;
    if (v13 < (v12 + 2))
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v15, 1, v10);
      v15 = v12 + 2;
      v10 = v36;
    }

    v16 = *(v0 + 16);
    *(v10 + 2) = v15;
    v10[v14 + 32] = 0x80;
    *(v16 + 24) = v10;
    v4 = static String._fromUTF8Repairing(_:)();
    v6 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v16 + 24);
    v20 = *(v0 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      v26 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(0, *(v19 + 24) >> 1);

      *(v20 + 24) = v26;
      goto LABEL_39;
    }

    v9 = *(v19 + 16);
LABEL_14:
    specialized Array.replaceSubrange<A>(_:with:)(0, v9);
LABEL_39:
    v34 = *(v0 + 8);

    return v34(v4, v6);
  }

  v2 = *(v0 + 16);
  v3 = *(v2 + 24);
  if ((v1 & 0xFE) == 0xA8)
  {
    if (*(v3 + 2))
    {
      v4 = static String._fromUTF8Repairing(_:)();
      v6 = v5;
      v7 = swift_isUniquelyReferenced_nonNull_native();
      v8 = *(v2 + 24);
      if ((v7 & 1) == 0)
      {
        if (*(v8 + 24) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v30 = swift_allocObject();
          v32 = _swift_stdlib_malloc_size(v30);
          v30[2] = 0;
          v30[3] = 2 * v32 - 64;
        }

        else
        {
          v30 = MEMORY[0x1E69E7CC0];
        }

        v33 = *(v0 + 16);

        *(v33 + 24) = v30;
        goto LABEL_39;
      }

      v9 = *(v8 + 16);
      goto LABEL_14;
    }

    v27 = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v2 + 24);
    if (v27)
    {
      v28 = *(v3 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 1, v3);
      }

      if (v28)
      {
        v29 = *(v3 + 2) - v28;
        memmove(v3 + 32, &v3[v28 + 32], v29);
        *(v3 + 2) = v29;
      }
    }

    else
    {
      if (*(v3 + 3) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
        v31 = swift_allocObject();
        v35 = _swift_stdlib_malloc_size(v31);
        v31[2] = 0;
        v31[3] = 2 * v35 - 64;
      }

      else
      {
        v31 = MEMORY[0x1E69E7CC0];
      }

      v3 = v31;
    }
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    }

    v22 = *(v3 + 2);
    v21 = *(v3 + 3);
    v23 = v21 >> 1;
    v24 = v22 + 1;
    if (v21 >> 1 <= v22)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v3);
      v21 = *(v3 + 3);
      v23 = v21 >> 1;
    }

    *(v3 + 2) = v24;
    v3[v22 + 32] = -30;
    v25 = v22 + 2;
    if (v23 < (v22 + 2))
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 2, 1, v3);
      v21 = *(v3 + 3);
      v23 = v21 >> 1;
    }

    *(v3 + 2) = v25;
    v3[v24 + 32] = 0x80;
    if (v23 < (v22 + 3))
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 3, 1, v3);
    }

    *(v3 + 2) = v22 + 3;
    v3[v25 + 32] = v1;
  }

  *(*(v0 + 16) + 24) = v3;

  return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
}

{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
}

{
  v1 = v0[2];
  if (*(v1 + 33))
  {
    v2 = *(v1 + 8);
    if (v2 == *(v1 + 16))
    {
      v70 = swift_task_alloc();
      v0[3] = v70;
      *v70 = v0;
      v71 = specialized AsyncLineSequence.AsyncIterator.next();
      goto LABEL_99;
    }

    v3 = *v2;
    *(v1 + 8) = v2 + 1;
    v1 = v0[2];
  }

  else
  {
    v3 = *(v1 + 32);
  }

  *(v1 + 32) = 256;
  if (v3 != 13)
  {
    v12 = v0[2];
    if ((v3 - 10) < 3)
    {
      if (*(v12[3] + 16))
      {
        v13 = static String._fromUTF8Repairing(_:)();
        v15 = v14;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v12[3];
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_15:
          specialized Array.replaceSubrange<A>(_:with:)(0, *(v17 + 16));
LABEL_57:
          v47 = v15;
          v48 = v13;
LABEL_66:
          v55 = v0[1];

          return v55(v48, v47);
        }

LABEL_22:
        if (*(v17 + 24) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v25 = swift_allocObject();
          v45 = _swift_stdlib_malloc_size(v25);
          v25[2] = 0;
          v25[3] = 2 * v45 - 64;
        }

        else
        {
          v25 = MEMORY[0x1E69E7CC0];
        }

        v46 = v0[2];

        *(v46 + 24) = v25;
        goto LABEL_57;
      }

      v30 = swift_isUniquelyReferenced_nonNull_native();
      v22 = v12[3];
      if (v30)
      {
        goto LABEL_34;
      }

      goto LABEL_46;
    }

    if (v3 == 226)
    {
      v33 = v12[1];
      if (v33 == v12[2])
      {
        v70 = swift_task_alloc();
        v0[9] = v70;
        *v70 = v0;
        v71 = specialized AsyncLineSequence.AsyncIterator.next();
        goto LABEL_99;
      }

      v34 = *v33;
      v19 = *v33;
      v12[1] = v33 + 1;
      v35 = v0[2];
      if (v34 == 128)
      {
        v36 = v35[1];
        if (v36 == v35[2])
        {
          v70 = swift_task_alloc();
          v0[10] = v70;
          *v70 = v0;
          v71 = specialized AsyncLineSequence.AsyncIterator.next();
          goto LABEL_99;
        }

        v38 = *v36;
        v37 = *v36;
        v35[1] = v36 + 1;
        v21 = v0[2];
        v22 = *(v21 + 24);
        if ((v38 & 0xFE) != 0xA8)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
          }

          v66 = *(v22 + 2);
          v65 = *(v22 + 3);
          v67 = v65 >> 1;
          v68 = v66 + 1;
          if (v65 >> 1 <= v66)
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v22);
            v65 = *(v22 + 3);
            v67 = v65 >> 1;
          }

          *(v22 + 2) = v68;
          v22[v66 + 32] = -30;
          v69 = v66 + 2;
          if (v67 < (v66 + 2))
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 2, 1, v22);
            v65 = *(v22 + 3);
            v67 = v65 >> 1;
          }

          *(v22 + 2) = v69;
          v22[v68 + 32] = 0x80;
          if (v67 < (v66 + 3))
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 3, 1, v22);
          }

          *(v22 + 2) = v66 + 3;
          v22[v69 + 32] = v37;
          goto LABEL_93;
        }

        if (*(v22 + 2))
        {
LABEL_21:
          v13 = static String._fromUTF8Repairing(_:)();
          v15 = v23;
          v24 = swift_isUniquelyReferenced_nonNull_native();
          v17 = *(v21 + 24);
          if (v24)
          {
            goto LABEL_15;
          }

          goto LABEL_22;
        }

LABEL_45:
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v22 = *(v21 + 24);
        if (v39)
        {
LABEL_34:
          v31 = *(v22 + 2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 1, v22);
          }

          if (v31)
          {
            v32 = *(v22 + 2) - v31;
            memmove(v22 + 32, &v22[v31 + 32], v32);
            *(v22 + 2) = v32;
          }

          goto LABEL_93;
        }

LABEL_46:
        if (*(v22 + 3) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v40 = swift_allocObject();
          v64 = _swift_stdlib_malloc_size(v40);
          v40[2] = 0;
          v40[3] = 2 * v64 - 64;
        }

        else
        {
          v40 = MEMORY[0x1E69E7CC0];
        }

        v22 = v40;
LABEL_93:
        *(v0[2] + 24) = v22;
LABEL_94:

        return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
      }

      v22 = v35[3];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
      }

      v58 = *(v22 + 2);
      v57 = *(v22 + 3);
      v59 = v57 >> 1;
      v60 = v58 + 1;
      if (v57 >> 1 <= v58)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v22);
        v57 = *(v22 + 3);
        v59 = v57 >> 1;
      }

      *(v22 + 2) = v60;
      v61 = &v22[v58];
      v62 = -30;
    }

    else
    {
      if (v3 != 194)
      {
        v22 = v12[3];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
        }

        v42 = *(v22 + 2);
        v41 = *(v22 + 3);
        if (v42 >= v41 >> 1)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v22);
        }

        *(v22 + 2) = v42 + 1;
        v22[v42 + 32] = v3;
        goto LABEL_93;
      }

      v18 = v12[1];
      if (v18 == v12[2])
      {
        v70 = swift_task_alloc();
        v0[8] = v70;
        *v70 = v0;
        v71 = specialized AsyncLineSequence.AsyncIterator.next();
        goto LABEL_99;
      }

      v20 = *v18;
      v19 = *v18;
      v12[1] = v18 + 1;
      v21 = v0[2];
      v22 = *(v21 + 24);
      if (v20 == 133)
      {
        if (*(v22 + 2))
        {
          goto LABEL_21;
        }

        goto LABEL_45;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
      }

      v58 = *(v22 + 2);
      v57 = *(v22 + 3);
      v59 = v57 >> 1;
      v60 = v58 + 1;
      if (v57 >> 1 <= v58)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v22);
        v57 = *(v22 + 3);
        v59 = v57 >> 1;
      }

      *(v22 + 2) = v60;
      v61 = &v22[v58];
      v62 = -62;
    }

    v61[32] = v62;
    v63 = v58 + 2;
    if (v59 < v63)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v63, 1, v22);
    }

    *(v22 + 2) = v63;
    v22[v60 + 32] = v19;
    goto LABEL_93;
  }

  v4 = v0[2];
  if (!*(*(v4 + 24) + 16))
  {
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + 24);
    if (v26)
    {
      v27 = *(v9 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 1, v9);
      }

      if (v27)
      {
        v28 = *(v9 + 2) - v27;
        memmove(v9 + 32, &v9[v27 + 32], v28);
        *(v9 + 2) = v28;
      }

      v5 = 0;
      v7 = 0;
      goto LABEL_30;
    }

    if (*(v9 + 3) >= 2uLL)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
      v29 = swift_allocObject();
      v49 = _swift_stdlib_malloc_size(v29);
      v29[2] = 0;
      v29[3] = 2 * v49 - 64;
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }

    v44 = v0[2];

    v5 = 0;
    v7 = 0;
LABEL_60:
    *(v44 + 24) = v29;
    goto LABEL_61;
  }

  v5 = static String._fromUTF8Repairing(_:)();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v4 + 24);
  if ((v8 & 1) == 0)
  {
    if (*(v9 + 3) >= 2uLL)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
      v29 = swift_allocObject();
      v43 = _swift_stdlib_malloc_size(v29);
      v29[2] = 0;
      v29[3] = 2 * v43 - 64;
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }

    v44 = v0[2];

    goto LABEL_60;
  }

  v10 = *(v9 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 1, v9);
  }

  if (v10)
  {
    v11 = *(v9 + 2) - v10;
    memmove(v9 + 32, &v9[v10 + 32], v11);
    *(v9 + 2) = v11;
  }

LABEL_30:
  *(v0[2] + 24) = v9;
LABEL_61:
  v0[5] = v5;
  v0[6] = v7;
  v50 = v0[2];
  v51 = *(v50 + 8);
  if (v51 != *(v50 + 16))
  {
    v53 = *v51;
    v52 = *v51;
    *(v50 + 8) = v51 + 1;
    if (v53 != 10)
    {
      v54 = v0[2];
      *(v54 + 32) = v52;
      *(v54 + 33) = 0;
    }

    v47 = v0[6];
    if (v47)
    {
      v48 = v0[5];
      goto LABEL_66;
    }

    goto LABEL_94;
  }

  v70 = swift_task_alloc();
  v0[7] = v70;
  *v70 = v0;
  v71 = specialized AsyncLineSequence.AsyncIterator.next();
LABEL_99:
  v70[1] = v71;

  return _AsyncBytesBuffer.reloadBufferAndNext()();
}

{
  *(*(v0 + 16) + 32) = 256;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 88);
  *(*(v0 + 16) + 32) = 256;
  if ((v1 & 0x100) != 0)
  {
    v11 = *(v0 + 16);
    v12 = *(*(v11 + 24) + 16);
    if (!v12)
    {
      v24 = 0;
LABEL_69:
      v61 = *(v0 + 8);

      return v61(v24, v12);
    }

    v13 = static String._fromUTF8Repairing(_:)();
    v15 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v11 + 24);
    v18 = *(v0 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      v25 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(0, *(v17 + 24) >> 1);

      *(v18 + 24) = v25;
      goto LABEL_60;
    }

    v19 = *(v17 + 16);
LABEL_16:
    specialized Array.replaceSubrange<A>(_:with:)(0, v19);
LABEL_60:
    v12 = v15;
    v24 = v13;
    goto LABEL_69;
  }

  v2 = *(v0 + 88);
  if (v2 != 13)
  {
    v20 = *(v0 + 16);
    if ((v2 - 10) < 3)
    {
      if (*(v20[3] + 16))
      {
        v13 = static String._fromUTF8Repairing(_:)();
        v15 = v21;
        v22 = swift_isUniquelyReferenced_nonNull_native();
        v23 = v20[3];
        if (v22)
        {
LABEL_15:
          v19 = *(v23 + 16);
          goto LABEL_16;
        }

LABEL_25:
        if (*(v23 + 24) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v33 = swift_allocObject();
          v53 = _swift_stdlib_malloc_size(v33);
          v33[2] = 0;
          v33[3] = 2 * v53 - 64;
        }

        else
        {
          v33 = MEMORY[0x1E69E7CC0];
        }

        v54 = *(v0 + 16);

        *(v54 + 24) = v33;
        goto LABEL_60;
      }

      v38 = swift_isUniquelyReferenced_nonNull_native();
      v30 = v20[3];
      if (v38)
      {
        goto LABEL_37;
      }

      goto LABEL_49;
    }

    if (v2 == 226)
    {
      v41 = v20[1];
      if (v41 == v20[2])
      {
        v76 = swift_task_alloc();
        *(v0 + 72) = v76;
        *v76 = v0;
        v77 = specialized AsyncLineSequence.AsyncIterator.next();
        goto LABEL_101;
      }

      v42 = *v41;
      v27 = *v41;
      v20[1] = v41 + 1;
      v43 = *(v0 + 16);
      if (v42 == 128)
      {
        v44 = v43[1];
        if (v44 == v43[2])
        {
          v76 = swift_task_alloc();
          *(v0 + 80) = v76;
          *v76 = v0;
          v77 = specialized AsyncLineSequence.AsyncIterator.next();
          goto LABEL_101;
        }

        v46 = *v44;
        v45 = *v44;
        v43[1] = v44 + 1;
        v29 = *(v0 + 16);
        v30 = *(v29 + 24);
        if ((v46 & 0xFE) != 0xA8)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
          }

          v72 = *(v30 + 2);
          v71 = *(v30 + 3);
          v73 = v71 >> 1;
          v74 = v72 + 1;
          if (v71 >> 1 <= v72)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v30);
            v71 = *(v30 + 3);
            v73 = v71 >> 1;
          }

          *(v30 + 2) = v74;
          v30[v72 + 32] = -30;
          v75 = v72 + 2;
          if (v73 < (v72 + 2))
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 2, 1, v30);
            v71 = *(v30 + 3);
            v73 = v71 >> 1;
          }

          *(v30 + 2) = v75;
          v30[v74 + 32] = 0x80;
          if (v73 < (v72 + 3))
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 3, 1, v30);
          }

          *(v30 + 2) = v72 + 3;
          v30[v75 + 32] = v45;
          goto LABEL_96;
        }

        if (*(v30 + 2))
        {
LABEL_24:
          v13 = static String._fromUTF8Repairing(_:)();
          v15 = v31;
          v32 = swift_isUniquelyReferenced_nonNull_native();
          v23 = *(v29 + 24);
          if (v32)
          {
            goto LABEL_15;
          }

          goto LABEL_25;
        }

LABEL_48:
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v30 = *(v29 + 24);
        if (v47)
        {
LABEL_37:
          v39 = *(v30 + 2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39, 1, v30);
          }

          if (v39)
          {
            v40 = *(v30 + 2) - v39;
            memmove(v30 + 32, &v30[v39 + 32], v40);
            *(v30 + 2) = v40;
          }

          goto LABEL_96;
        }

LABEL_49:
        if (*(v30 + 3) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v48 = swift_allocObject();
          v70 = _swift_stdlib_malloc_size(v48);
          v48[2] = 0;
          v48[3] = 2 * v70 - 64;
        }

        else
        {
          v48 = MEMORY[0x1E69E7CC0];
        }

        v30 = v48;
LABEL_96:
        *(*(v0 + 16) + 24) = v30;
LABEL_97:

        return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
      }

      v30 = v43[3];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
      }

      v64 = *(v30 + 2);
      v63 = *(v30 + 3);
      v65 = v63 >> 1;
      v66 = v64 + 1;
      if (v63 >> 1 <= v64)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v30);
        v63 = *(v30 + 3);
        v65 = v63 >> 1;
      }

      *(v30 + 2) = v66;
      v67 = &v30[v64];
      v68 = -30;
    }

    else
    {
      if (v2 != 194)
      {
        v30 = v20[3];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
        }

        v50 = *(v30 + 2);
        v49 = *(v30 + 3);
        if (v50 >= v49 >> 1)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v30);
        }

        *(v30 + 2) = v50 + 1;
        v30[v50 + 32] = v2;
        goto LABEL_96;
      }

      v26 = v20[1];
      if (v26 == v20[2])
      {
        v76 = swift_task_alloc();
        *(v0 + 64) = v76;
        *v76 = v0;
        v77 = specialized AsyncLineSequence.AsyncIterator.next();
        goto LABEL_101;
      }

      v28 = *v26;
      v27 = *v26;
      v20[1] = v26 + 1;
      v29 = *(v0 + 16);
      v30 = *(v29 + 24);
      if (v28 == 133)
      {
        if (*(v30 + 2))
        {
          goto LABEL_24;
        }

        goto LABEL_48;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
      }

      v64 = *(v30 + 2);
      v63 = *(v30 + 3);
      v65 = v63 >> 1;
      v66 = v64 + 1;
      if (v63 >> 1 <= v64)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v30);
        v63 = *(v30 + 3);
        v65 = v63 >> 1;
      }

      *(v30 + 2) = v66;
      v67 = &v30[v64];
      v68 = -62;
    }

    v67[32] = v68;
    v69 = v64 + 2;
    if (v65 < v69)
    {
      v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v69, 1, v30);
    }

    *(v30 + 2) = v69;
    v30[v66 + 32] = v27;
    goto LABEL_96;
  }

  v3 = *(v0 + 16);
  if (!*(*(v3 + 24) + 16))
  {
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v3 + 24);
    if (v34)
    {
      v35 = *(v8 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 1, v8);
      }

      if (v35)
      {
        v36 = *(v8 + 2) - v35;
        memmove(v8 + 32, &v8[v35 + 32], v36);
        *(v8 + 2) = v36;
      }

      v4 = 0;
      v6 = 0;
      goto LABEL_33;
    }

    if (*(v8 + 3) >= 2uLL)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
      v37 = swift_allocObject();
      v55 = _swift_stdlib_malloc_size(v37);
      v37[2] = 0;
      v37[3] = 2 * v55 - 64;
    }

    else
    {
      v37 = MEMORY[0x1E69E7CC0];
    }

    v52 = *(v0 + 16);

    v4 = 0;
    v6 = 0;
LABEL_63:
    *(v52 + 24) = v37;
    goto LABEL_64;
  }

  v4 = static String._fromUTF8Repairing(_:)();
  v6 = v5;
  v7 = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + 24);
  if ((v7 & 1) == 0)
  {
    if (*(v8 + 3) >= 2uLL)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
      v37 = swift_allocObject();
      v51 = _swift_stdlib_malloc_size(v37);
      v37[2] = 0;
      v37[3] = 2 * v51 - 64;
    }

    else
    {
      v37 = MEMORY[0x1E69E7CC0];
    }

    v52 = *(v0 + 16);

    goto LABEL_63;
  }

  v9 = *(v8 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 1, v8);
  }

  if (v9)
  {
    v10 = *(v8 + 2) - v9;
    memmove(v8 + 32, &v8[v9 + 32], v10);
    *(v8 + 2) = v10;
  }

LABEL_33:
  *(*(v0 + 16) + 24) = v8;
LABEL_64:
  *(v0 + 40) = v4;
  *(v0 + 48) = v6;
  v56 = *(v0 + 16);
  v57 = *(v56 + 8);
  if (v57 != *(v56 + 16))
  {
    v59 = *v57;
    v58 = *v57;
    *(v56 + 8) = v57 + 1;
    if (v59 != 10)
    {
      v60 = *(v0 + 16);
      *(v60 + 32) = v58;
      *(v60 + 33) = 0;
    }

    v12 = *(v0 + 48);
    if (v12)
    {
      v24 = *(v0 + 40);
      goto LABEL_69;
    }

    goto LABEL_97;
  }

  v76 = swift_task_alloc();
  *(v0 + 56) = v76;
  *v76 = v0;
  v77 = specialized AsyncLineSequence.AsyncIterator.next();
LABEL_101:
  v76[1] = v77;

  return _AsyncBytesBuffer.reloadBufferAndNext()();
}

{
  v1 = *(v0 + 90);
  if ((v1 & 0x100) != 0)
  {
    v3 = *(v0 + 48);
  }

  else
  {
    if (v1 != 10)
    {
      v2 = *(v0 + 16);
      *(v2 + 32) = v1;
      *(v2 + 33) = 0;
    }

    v3 = *(v0 + 48);
    if (!v3)
    {
      return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
    }
  }

  return (*(v0 + 8))(*(v0 + 40), v3);
}

{
  v1 = *(v0 + 92);
  if ((v1 & 0x100) != 0)
  {
    v10 = *(*(v0 + 16) + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    v13 = v12 + 1;
    if (v12 >= v11 >> 1)
    {
      v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v13, 1, v10);
      v13 = v12 + 1;
      v10 = v34;
    }

    v14 = *(v0 + 16);
    *(v10 + 2) = v13;
    v10[v12 + 32] = -62;
    *(v14 + 24) = v10;
    v4 = static String._fromUTF8Repairing(_:)();
    v6 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v14 + 24);
    v18 = *(v0 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      v24 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(0, *(v17 + 24) >> 1);

      *(v18 + 24) = v24;
      goto LABEL_35;
    }

    v9 = *(v17 + 16);
LABEL_12:
    specialized Array.replaceSubrange<A>(_:with:)(0, v9);
LABEL_35:
    v32 = *(v0 + 8);

    return v32(v4, v6);
  }

  v2 = *(v0 + 16);
  v3 = *(v2 + 24);
  if (v1 == 133)
  {
    if (*(v3 + 2))
    {
      v4 = static String._fromUTF8Repairing(_:)();
      v6 = v5;
      v7 = swift_isUniquelyReferenced_nonNull_native();
      v8 = *(v2 + 24);
      if ((v7 & 1) == 0)
      {
        if (*(v8 + 24) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v28 = swift_allocObject();
          v30 = _swift_stdlib_malloc_size(v28);
          v28[2] = 0;
          v28[3] = 2 * v30 - 64;
        }

        else
        {
          v28 = MEMORY[0x1E69E7CC0];
        }

        v31 = *(v0 + 16);

        *(v31 + 24) = v28;
        goto LABEL_35;
      }

      v9 = *(v8 + 16);
      goto LABEL_12;
    }

    v25 = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v2 + 24);
    if (v25)
    {
      v26 = *(v3 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 1, v3);
      }

      if (v26)
      {
        v27 = *(v3 + 2) - v26;
        memmove(v3 + 32, &v3[v26 + 32], v27);
        *(v3 + 2) = v27;
      }
    }

    else
    {
      if (*(v3 + 3) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
        v29 = swift_allocObject();
        v33 = _swift_stdlib_malloc_size(v29);
        v29[2] = 0;
        v29[3] = 2 * v33 - 64;
      }

      else
      {
        v29 = MEMORY[0x1E69E7CC0];
      }

      v3 = v29;
    }
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    }

    v20 = *(v3 + 2);
    v19 = *(v3 + 3);
    v21 = v19 >> 1;
    v22 = v20 + 1;
    if (v19 >> 1 <= v20)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v3);
      v19 = *(v3 + 3);
      v21 = v19 >> 1;
    }

    *(v3 + 2) = v22;
    v3[v20 + 32] = -62;
    v23 = v20 + 2;
    if (v21 < v23)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v23, 1, v3);
    }

    *(v3 + 2) = v23;
    v3[v22 + 32] = v1;
  }

  *(*(v0 + 16) + 24) = v3;

  return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
}

{
  v1 = *(v0 + 94);
  if ((v1 & 0x100) != 0)
  {
    v13 = *(*(v0 + 16) + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v16, 1, v13);
      v16 = v15 + 1;
      v13 = v45;
    }

    v17 = *(v0 + 16);
    *(v13 + 2) = v16;
    v13[v15 + 32] = -30;
    *(v17 + 24) = v13;
    v7 = static String._fromUTF8Repairing(_:)();
    v9 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v17 + 24);
    v21 = *(v0 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      v28 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(0, *(v20 + 24) >> 1);

      *(v21 + 24) = v28;
      goto LABEL_23;
    }

    v12 = *(v20 + 16);
LABEL_14:
    specialized Array.replaceSubrange<A>(_:with:)(0, v12);
LABEL_23:
    v29 = *(v0 + 8);

    return v29(v7, v9);
  }

  v2 = *(v0 + 16);
  if (v1 != 128)
  {
    v6 = v2[3];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    }

    v23 = *(v6 + 2);
    v22 = *(v6 + 3);
    v24 = v22 >> 1;
    v25 = v23 + 1;
    if (v22 >> 1 <= v23)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v6);
      v22 = *(v6 + 3);
      v24 = v22 >> 1;
    }

    *(v6 + 2) = v25;
    v6[v23 + 32] = -30;
    v26 = v23 + 2;
    if (v24 < v26)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v26, 1, v6);
    }

    *(v6 + 2) = v26;
    v27 = &v6[v25];
    goto LABEL_35;
  }

  v3 = v2[1];
  if (v3 != v2[2])
  {
    v4 = *v3;
    LOBYTE(v1) = *v3;
    v2[1] = v3 + 1;
    v5 = *(v0 + 16);
    v6 = *(v5 + 24);
    if ((v4 & 0xFE) == 0xA8)
    {
      if (*(v6 + 2))
      {
        v7 = static String._fromUTF8Repairing(_:)();
        v9 = v8;
        v10 = swift_isUniquelyReferenced_nonNull_native();
        v11 = *(v5 + 24);
        if ((v10 & 1) == 0)
        {
          if (*(v11 + 24) >= 2uLL)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
            v40 = swift_allocObject();
            v42 = _swift_stdlib_malloc_size(v40);
            v40[2] = 0;
            v40[3] = 2 * v42 - 64;
          }

          else
          {
            v40 = MEMORY[0x1E69E7CC0];
          }

          v43 = *(v0 + 16);

          *(v43 + 24) = v40;
          goto LABEL_23;
        }

        v12 = *(v11 + 16);
        goto LABEL_14;
      }

      v37 = swift_isUniquelyReferenced_nonNull_native();
      v6 = *(v5 + 24);
      if (v37)
      {
        v38 = *(v6 + 2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 1, v6);
        }

        if (v38)
        {
          v39 = *(v6 + 2) - v38;
          memmove(v6 + 32, &v6[v38 + 32], v39);
          *(v6 + 2) = v39;
        }
      }

      else
      {
        if (*(v6 + 3) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v41 = swift_allocObject();
          v44 = _swift_stdlib_malloc_size(v41);
          v41[2] = 0;
          v41[3] = 2 * v44 - 64;
        }

        else
        {
          v41 = MEMORY[0x1E69E7CC0];
        }

        v6 = v41;
      }

      goto LABEL_36;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    }

    v31 = *(v6 + 2);
    v32 = *(v6 + 3);
    v33 = v32 >> 1;
    v34 = v31 + 1;
    if (v32 >> 1 <= v31)
    {
      v47 = v6;
      v48 = *(v6 + 2);
      v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v31 + 1, 1, v47);
      v31 = v48;
      v6 = v49;
      v32 = *(v49 + 3);
      v33 = v32 >> 1;
    }

    *(v6 + 2) = v34;
    v6[v31 + 32] = -30;
    v35 = v31 + 2;
    if (v33 < (v31 + 2))
    {
      v50 = v6;
      v51 = v31;
      v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v31 + 2, 1, v50);
      v31 = v51;
      v6 = v52;
      v32 = *(v52 + 3);
      v33 = v32 >> 1;
    }

    *(v6 + 2) = v35;
    v6[v34 + 32] = 0x80;
    v36 = v31 + 3;
    if (v33 < (v31 + 3))
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v31 + 3, 1, v6);
    }

    *(v6 + 2) = v36;
    v27 = &v6[v35];
LABEL_35:
    v27[32] = v1;
LABEL_36:
    *(*(v0 + 16) + 24) = v6;

    return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
  }

  v46 = swift_task_alloc();
  *(v0 + 80) = v46;
  *v46 = v0;
  v46[1] = specialized AsyncLineSequence.AsyncIterator.next();

  return _AsyncBytesBuffer.reloadBufferAndNext()();
}

{
  v1 = *(v0 + 96);
  if ((v1 & 0x100) != 0)
  {
    v10 = *(*(v0 + 16) + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    v13 = v11 >> 1;
    v14 = v12 + 1;
    if (v11 >> 1 <= v12)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
      v11 = *(v10 + 3);
      v13 = v11 >> 1;
    }

    *(v10 + 2) = v14;
    v10[v12 + 32] = -30;
    v15 = v12 + 2;
    if (v13 < (v12 + 2))
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v15, 1, v10);
      v15 = v12 + 2;
      v10 = v36;
    }

    v16 = *(v0 + 16);
    *(v10 + 2) = v15;
    v10[v14 + 32] = 0x80;
    *(v16 + 24) = v10;
    v4 = static String._fromUTF8Repairing(_:)();
    v6 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v16 + 24);
    v20 = *(v0 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      v26 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(0, *(v19 + 24) >> 1);

      *(v20 + 24) = v26;
      goto LABEL_39;
    }

    v9 = *(v19 + 16);
LABEL_14:
    specialized Array.replaceSubrange<A>(_:with:)(0, v9);
LABEL_39:
    v34 = *(v0 + 8);

    return v34(v4, v6);
  }

  v2 = *(v0 + 16);
  v3 = *(v2 + 24);
  if ((v1 & 0xFE) == 0xA8)
  {
    if (*(v3 + 2))
    {
      v4 = static String._fromUTF8Repairing(_:)();
      v6 = v5;
      v7 = swift_isUniquelyReferenced_nonNull_native();
      v8 = *(v2 + 24);
      if ((v7 & 1) == 0)
      {
        if (*(v8 + 24) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
          v30 = swift_allocObject();
          v32 = _swift_stdlib_malloc_size(v30);
          v30[2] = 0;
          v30[3] = 2 * v32 - 64;
        }

        else
        {
          v30 = MEMORY[0x1E69E7CC0];
        }

        v33 = *(v0 + 16);

        *(v33 + 24) = v30;
        goto LABEL_39;
      }

      v9 = *(v8 + 16);
      goto LABEL_14;
    }

    v27 = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v2 + 24);
    if (v27)
    {
      v28 = *(v3 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 1, v3);
      }

      if (v28)
      {
        v29 = *(v3 + 2) - v28;
        memmove(v3 + 32, &v3[v28 + 32], v29);
        *(v3 + 2) = v29;
      }
    }

    else
    {
      if (*(v3 + 3) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
        v31 = swift_allocObject();
        v35 = _swift_stdlib_malloc_size(v31);
        v31[2] = 0;
        v31[3] = 2 * v35 - 64;
      }

      else
      {
        v31 = MEMORY[0x1E69E7CC0];
      }

      v3 = v31;
    }
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    }

    v22 = *(v3 + 2);
    v21 = *(v3 + 3);
    v23 = v21 >> 1;
    v24 = v22 + 1;
    if (v21 >> 1 <= v22)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v3);
      v21 = *(v3 + 3);
      v23 = v21 >> 1;
    }

    *(v3 + 2) = v24;
    v3[v22 + 32] = -30;
    v25 = v22 + 2;
    if (v23 < (v22 + 2))
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 2, 1, v3);
      v21 = *(v3 + 3);
      v23 = v21 >> 1;
    }

    *(v3 + 2) = v25;
    v3[v24 + 32] = 0x80;
    if (v23 < (v22 + 3))
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 3, 1, v3);
    }

    *(v3 + 2) = v22 + 3;
    v3[v25 + 32] = v1;
  }

  *(*(v0 + 16) + 24) = v3;

  return MEMORY[0x1EEE6DFA0](specialized AsyncLineSequence.AsyncIterator.next(), 0, 0);
}