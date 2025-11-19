uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    type metadata accessor for _DictionaryStorage<AnyHashable, Any>();
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    type metadata accessor for NSAttributedStringKey(0);
    v15 = v14;
    swift_dynamicCast();
    outlined init with take of Any((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    outlined init with take of Any(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    outlined init with take of Any(v30, v31);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = outlined init with take of Any(v31, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5(uint64_t a1)
{
  v1 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(a1);

  return v1;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_Tt0g5(uint64_t a1)
{
  v1 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_Tt0g5Tf4g_n(a1);

  return v1;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    type metadata accessor for _SetStorage<Duration.UnitsFormatStyle.Unit>();
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0]);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0]);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    type metadata accessor for _SetStorage<Calendar.Component>();
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, MEMORY[0x1E6969AD0]);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, MEMORY[0x1E6969AD0]);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t specialized NSCalendarUnit.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v29 = v3 + 16;
  v10 = (v3 + 8);

  v11 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  while (v8)
  {
LABEL_9:
    (*(v3 + 16))(v5, *(a1 + 48) + *(v3 + 72) * (__clz(__rbit64(v8)) | (v11 << 6)), v2);
    closure #1 in NSCalendarUnit.init(_:)(v5, a1, &v30);
    v8 &= v8 - 1;
    (*v10)(v5, v2);
    if ((v31 & 1) == 0)
    {
      v27 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
      }

      v14 = *(v28 + 2);
      v13 = *(v28 + 3);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        v25 = *(v28 + 2);
        v26 = v14 + 1;
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v28);
        v14 = v25;
        v15 = v26;
        v28 = v18;
      }

      v16 = v27;
      v17 = v28;
      *(v28 + 2) = v15;
      *&v17[8 * v14 + 32] = v16;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);

      (*v10)(v5, v2);

      __break(1u);
      return result;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(a1 + 56 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  v19 = *(v28 + 2);
  if (v19)
  {
    v20 = 0;
    v21 = v28 + 32;
    do
    {
      v23 = *v21;
      v21 += 8;
      v22 = v23;
      if ((v23 & ~v20) == 0)
      {
        v22 = 0;
      }

      v20 |= v22;
      --v19;
    }

    while (v19);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

{
  v2 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v29 = v3 + 16;
  v10 = (v3 + 8);

  v11 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  while (v8)
  {
LABEL_9:
    (*(v3 + 16))(v5, *(a1 + 48) + *(v3 + 72) * (__clz(__rbit64(v8)) | (v11 << 6)), v2);
    closure #1 in NSCalendarUnit.init(_:)(v5, &v30);
    v8 &= v8 - 1;
    (*v10)(v5, v2);
    if ((v31 & 1) == 0)
    {
      v27 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
      }

      v14 = *(v28 + 2);
      v13 = *(v28 + 3);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        v25 = *(v28 + 2);
        v26 = v14 + 1;
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v28);
        v14 = v25;
        v15 = v26;
        v28 = v18;
      }

      v16 = v27;
      v17 = v28;
      *(v28 + 2) = v15;
      *&v17[8 * v14 + 32] = v16;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);

      (*v10)(v5, v2);

      __break(1u);
      return result;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(a1 + 56 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  v19 = *(v28 + 2);
  if (v19)
  {
    v20 = 0;
    v21 = v28 + 32;
    do
    {
      v23 = *v21;
      v21 += 8;
      v22 = v23;
      if ((v23 & ~v20) == 0)
      {
        v22 = 0;
      }

      v20 |= v22;
      --v19;
    }

    while (v19);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t specialized Set<>.init(_:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  result = MEMORY[0x1E69E7CD0];
  v16 = MEMORY[0x1E69E7CD0];
  if ((a2 & 1) == 0)
  {
    v12 = 0;
    v13 = (v8 + 8);
    while (1)
    {
      v14 = *(&outlined read-only object #0 of Set<>.init(_:) + v12 + 32);
      if ((v14 & ~a1) == 0)
      {
        if (v14 > 63)
        {
          if (v14 > 4095)
          {
            if (v14 != 4096 && v14 != 0x2000)
            {
              goto LABEL_5;
            }

            static Date.ComponentsFormatStyle.Style.abbreviated.getter();
          }

          else if (v14 == 64)
          {
            static Date.ComponentsFormatStyle.Field.minute.getter();
          }

          else
          {
            if (v14 != 128)
            {
              goto LABEL_5;
            }

            static Date.ComponentsFormatStyle.Field.second.getter();
          }
        }

        else if (v14 > 15)
        {
          if (v14 == 16)
          {
            static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
          }

          else
          {
            if (v14 != 32)
            {
              goto LABEL_5;
            }

            static Date.ComponentsFormatStyle.Style.spellOut.getter();
          }
        }

        else if (v14 == 4)
        {
          static Date.ComponentsFormatStyle.Style.wide.getter();
        }

        else
        {
          if (v14 != 8)
          {
            goto LABEL_5;
          }

          static Date.ComponentsFormatStyle.Style.narrow.getter();
        }

        specialized Set._Variant.insert(_:)(v10, v6);
        (*v13)(v10, v4);
      }

LABEL_5:
      v12 += 8;
      if (v12 == 64)
      {
        return v16;
      }
    }
  }

  return result;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _SetStorage<NSURLResourceKey>();
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t outlined destroy of NSURLResourceKey(uint64_t a1)
{
  type metadata accessor for NSURLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of URLResourceValues?(uint64_t a1)
{
  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for URLResourceValues?, MEMORY[0x1E69688C8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Calendar.Component.Magnitude and conformance Calendar.Component.Magnitude()
{
  result = lazy protocol witness table cache variable for type Calendar.Component.Magnitude and conformance Calendar.Component.Magnitude;
  if (!lazy protocol witness table cache variable for type Calendar.Component.Magnitude and conformance Calendar.Component.Magnitude)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Component.Magnitude and conformance Calendar.Component.Magnitude);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Locale.Key(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale.Components();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t destroy for Locale.Key(uint64_t a1)
{
  v2 = type metadata accessor for Locale.Components();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for Locale.Key(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale.Components();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for Locale.Key(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale.Components();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for Locale.Key(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale.Components();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for Locale.Key(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale.Components();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t type metadata accessor for Locale.Key()
{
  result = type metadata singleton initialization cache for Locale.Key;
  if (!type metadata singleton initialization cache for Locale.Key)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Locale.Key()
{
  result = type metadata accessor for Locale.Components();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for _SetStorage<Duration.UnitsFormatStyle.Unit>()
{
  if (!lazy cache variable for type metadata for _SetStorage<Duration.UnitsFormatStyle.Unit>)
  {
    type metadata accessor for Duration.UnitsFormatStyle.Unit();
    _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0]);
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<Duration.UnitsFormatStyle.Unit>);
    }
  }
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI27DefaultDescriptionAttributeO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for KeyedEncodingContainer<Calendar.Component.Magnitude.CodingKeys>(0, &lazy cache variable for type metadata for _SetStorage<DefaultDescriptionAttribute>, lazy protocol witness table accessor for type DefaultDescriptionAttribute and conformance DefaultDescriptionAttribute, &type metadata for DefaultDescriptionAttribute, MEMORY[0x1E69E6A10]);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v31 = a1 + 32;
    while (1)
    {
      v32 = *(v31 + v4);
      Hasher.init(_seed:)();
      DefaultDescriptionAttribute.rawValue.getter();
      String.hash(into:)();

      result = Hasher._finalize()();
      v7 = ~(-1 << *(v3 + 32));
      v8 = result & v7;
      v9 = (result & v7) >> 6;
      v10 = *(v5 + 8 * v9);
      v11 = 1 << (result & v7);
      if ((v11 & v10) != 0)
      {
        while (1)
        {
          v12 = 0xE400000000000000;
          v13 = 1952671090;
          switch(*(*(v3 + 48) + v8))
          {
            case 1:
              v12 = 0xE600000000000000;
              v13 = 0x6E696769726FLL;
              break;
            case 2:
              v12 = 0xEA0000000000746ELL;
              v13 = 0x696F507472617473;
              break;
            case 3:
              v12 = 0xE800000000000000;
              v13 = 0x746E696F50646E65;
              break;
            case 4:
              v12 = 0xE90000000000006DLL;
              v13 = 0x726F66736E617274;
              break;
            case 5:
              v12 = 0xE500000000000000;
              v13 = 0x7370696C63;
              break;
            case 6:
              v15 = 0x72656E726F63;
              goto LABEL_27;
            case 7:
              v13 = 0xD000000000000011;
              v12 = 0x800000018DD74080;
              break;
            case 8:
              v12 = 0xE700000000000000;
              v13 = 0x7974696361706FLL;
              break;
            case 9:
              v13 = 0x6957726564726F62;
              v12 = 0xEB00000000687464;
              break;
            case 0xA:
              v14 = 0x726564726F62;
              goto LABEL_30;
            case 0xB:
              v13 = 0x756F72676B636162;
              v12 = 0xEF726F6C6F43646ELL;
              break;
            case 0xC:
              v13 = 0xD000000000000011;
              v12 = 0x800000018DD740D0;
              break;
            case 0xD:
              v13 = 0x55656C6261736964;
              v12 = 0xEE00736574616470;
              break;
            case 0xE:
              v13 = 0x704F776F64616873;
              v12 = 0xED00007974696361;
              break;
            case 0xF:
              v15 = 0x776F64616873;
LABEL_27:
              v13 = v15 & 0xFFFFFFFFFFFFLL | 0x6152000000000000;
              v16 = 1937074532;
              goto LABEL_39;
            case 0x10:
              v14 = 0x776F64616873;
LABEL_30:
              v13 = v14 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
              v12 = 0xEB00000000726F6CLL;
              break;
            case 0x11:
              v13 = 0x664F776F64616873;
              v16 = 1952805734;
              goto LABEL_39;
            case 0x12:
              v13 = 0x6150776F64616873;
              v12 = 0xEA00000000006874;
              break;
            case 0x13:
              v13 = 0xD000000000000012;
              v12 = 0x800000018DD74130;
              break;
            case 0x14:
              v13 = 0x74756F68636E7570;
              v12 = 0xEE00776F64616853;
              break;
            case 0x15:
              v13 = 0x73746E65746E6F63;
              v12 = 0xEE007265746E6543;
              break;
            case 0x16:
              v13 = 0x73746E65746E6F63;
              v12 = 0xEF676E696C616353;
              break;
            case 0x17:
              v13 = 0xD000000000000015;
              v12 = 0x800000018DD74180;
              break;
            case 0x18:
              v13 = 0x686353726F6C6F63;
              v12 = 0xEB00000000656D65;
              break;
            case 0x19:
              v12 = 0xE700000000000000;
              v13 = 0x737265746C6966;
              break;
            case 0x1A:
              v13 = 0x746E656964617267;
              v16 = 1701869908;
LABEL_39:
              v12 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              break;
            case 0x1B:
              v13 = 0x746E656964617267;
              v12 = 0xEE0073726F6C6F43;
              break;
            case 0x1C:
              v13 = 0xD000000000000011;
              v12 = 0x800000018DD741D0;
              break;
            case 0x1D:
              v13 = 0xD000000000000016;
              v12 = 0x800000018DD741F0;
              break;
            case 0x1E:
              v13 = 0x7461506570616873;
              v12 = 0xE900000000000068;
              break;
            default:
              break;
          }

          v17 = 0xE400000000000000;
          v18 = 1952671090;
          switch(v32)
          {
            case 1:
              v17 = 0xE600000000000000;
              if (v13 == 0x6E696769726FLL)
              {
                goto LABEL_94;
              }

              goto LABEL_95;
            case 2:
              v17 = 0xEA0000000000746ELL;
              if (v13 != 0x696F507472617473)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 3:
              v17 = 0xE800000000000000;
              if (v13 != 0x746E696F50646E65)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 4:
              v17 = 0xE90000000000006DLL;
              if (v13 != 0x726F66736E617274)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 5:
              v17 = 0xE500000000000000;
              if (v13 != 0x7370696C63)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 6:
              v24 = 0x72656E726F63;
              goto LABEL_73;
            case 7:
              v17 = 0x800000018DD74080;
              if (v13 != 0xD000000000000011)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 8:
              v17 = 0xE700000000000000;
              if (v13 != 0x7974696361706FLL)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 9:
              v22 = 0x6957726564726F62;
              v23 = 6845540;
              goto LABEL_78;
            case 10:
              v21 = 0x726564726F62;
              goto LABEL_77;
            case 11:
              v17 = 0xEF726F6C6F43646ELL;
              if (v13 != 0x756F72676B636162)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 12:
              v17 = 0x800000018DD740D0;
              if (v13 != 0xD000000000000011)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 13:
              v19 = 0x55656C6261736964;
              v20 = 0x736574616470;
              goto LABEL_70;
            case 14:
              v17 = 0xED00007974696361;
              if (v13 != 0x704F776F64616873)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 15:
              v24 = 0x776F64616873;
LABEL_73:
              v25 = v24 & 0xFFFFFFFFFFFFLL | 0x6152000000000000;
              v26 = 1937074532;
              goto LABEL_99;
            case 16:
              v21 = 0x776F64616873;
LABEL_77:
              v22 = v21 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
              v23 = 7499628;
              goto LABEL_78;
            case 17:
              v25 = 0x664F776F64616873;
              v26 = 1952805734;
              goto LABEL_99;
            case 18:
              v17 = 0xEA00000000006874;
              if (v13 != 0x6150776F64616873)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 19:
              v17 = 0x800000018DD74130;
              if (v13 != 0xD000000000000012)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 20:
              v19 = 0x74756F68636E7570;
              v20 = 0x776F64616853;
              goto LABEL_70;
            case 21:
              v19 = 0x73746E65746E6F63;
              v20 = 0x7265746E6543;
              goto LABEL_70;
            case 22:
              v17 = 0xEF676E696C616353;
              if (v13 != 0x73746E65746E6F63)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 23:
              v17 = 0x800000018DD74180;
              if (v13 != 0xD000000000000015)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 24:
              v22 = 0x686353726F6C6F63;
              v23 = 6647141;
LABEL_78:
              v17 = v23 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              if (v13 != v22)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 25:
              v17 = 0xE700000000000000;
              if (v13 != 0x737265746C6966)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 26:
              v25 = 0x746E656964617267;
              v26 = 1701869908;
LABEL_99:
              v17 = v26 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              if (v13 != v25)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 27:
              v19 = 0x746E656964617267;
              v20 = 0x73726F6C6F43;
LABEL_70:
              v17 = v20 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
              if (v13 != v19)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 28:
              v17 = 0x800000018DD741D0;
              if (v13 != 0xD000000000000011)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 29:
              v18 = 0xD000000000000016;
              v17 = 0x800000018DD741F0;
              goto LABEL_93;
            case 30:
              v17 = 0xE900000000000068;
              if (v13 != 0x7461506570616873)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            default:
LABEL_93:
              if (v13 != v18)
              {
                goto LABEL_95;
              }

LABEL_94:
              if (v12 == v17)
              {

                goto LABEL_4;
              }

LABEL_95:
              v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v27)
              {
                goto LABEL_4;
              }

              v8 = (v8 + 1) & v7;
              v9 = v8 >> 6;
              v10 = *(v5 + 8 * (v8 >> 6));
              v11 = 1 << v8;
              if ((v10 & (1 << v8)) == 0)
              {
                goto LABEL_101;
              }

              break;
          }
        }
      }

LABEL_101:
      *(v5 + 8 * v9) = v10 | v11;
      *(*(v3 + 48) + v8) = v32;
      v28 = *(v3 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      *(v3 + 16) = v30;
LABEL_4:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI9TouchTypeO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for KeyedEncodingContainer<Calendar.Component.Magnitude.CodingKeys>(0, &lazy cache variable for type metadata for _SetStorage<TouchType>, lazy protocol witness table accessor for type TouchType and conformance TouchType, &type metadata for TouchType, MEMORY[0x1E69E6A10]);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t lazy protocol witness table accessor for type TouchType and conformance TouchType()
{
  result = lazy protocol witness table cache variable for type TouchType and conformance TouchType;
  if (!lazy protocol witness table cache variable for type TouchType and conformance TouchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TouchType and conformance TouchType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TouchType and conformance TouchType;
  if (!lazy protocol witness table cache variable for type TouchType and conformance TouchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TouchType and conformance TouchType);
  }

  return result;
}

void type metadata accessor for KeyedEncodingContainer<Calendar.Component.Magnitude.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for _SetStorage<Calendar.Component>()
{
  if (!lazy cache variable for type metadata for _SetStorage<Calendar.Component>)
  {
    type metadata accessor for Calendar.Component();
    _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, MEMORY[0x1E6969AD0]);
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<Calendar.Component>);
    }
  }
}

void type metadata accessor for _SetStorage<Date.ComponentsFormatStyle.Field>()
{
  if (!lazy cache variable for type metadata for _SetStorage<Date.ComponentsFormatStyle.Field>)
  {
    type metadata accessor for Date.ComponentsFormatStyle.Field();
    _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<Date.ComponentsFormatStyle.Field>);
    }
  }
}

void type metadata accessor for ObjectCache<Locale.Key, String>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Locale.Key();
    v7 = _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Locale.Key and conformance Locale.Key, type metadata accessor for Locale.Key);
    v8 = a3(a1, v6, MEMORY[0x1E69E6158], v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined init with copy of ObjectCache<Locale.Key, String>.Item(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ObjectCache<Locale.Key, String>(0, &lazy cache variable for type metadata for ObjectCache<Locale.Key, String>.Item, type metadata accessor for ObjectCache.Item);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ObjectCache<Locale.Key, String>.Item(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ObjectCache<Locale.Key, String>(0, &lazy cache variable for type metadata for ObjectCache<Locale.Key, String>.Item, type metadata accessor for ObjectCache.Item);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for AtomicBuffer<ObjectCache<Locale.Key, String>.Data>()
{
  if (!lazy cache variable for type metadata for AtomicBuffer<ObjectCache<Locale.Key, String>.Data>)
  {
    type metadata accessor for ObjectCache<Locale.Key, String>(255, &lazy cache variable for type metadata for ObjectCache<Locale.Key, String>.Data, type metadata accessor for ObjectCache.Data);
    v0 = type metadata accessor for AtomicBuffer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AtomicBuffer<ObjectCache<Locale.Key, String>.Data>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<AnyHashable, Any>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, Any>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, Any>);
    }
  }
}

void type metadata accessor for _SetStorage<NSURLResourceKey>()
{
  if (!lazy cache variable for type metadata for _SetStorage<NSURLResourceKey>)
  {
    type metadata accessor for NSURLResourceKey(255);
    _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey);
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<NSURLResourceKey>);
    }
  }
}

uint64_t _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for URLResourceValues?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t static ViewBuilder.buildEither<A, B>(first:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for _ConditionalContent.Storage();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  (*(*(a2 - 8) + 16))(&v11 - v8, a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)(v9, a3);
}

uint64_t EnvironmentObject.Wrapper.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_unknownObjectRetain();

  return Binding.init<A>(_:keyPath:isolation:)(a2, a1, 0, 0, a3);
}

uint64_t EnvironmentObject.wrappedValue.getter(uint64_t a1)
{
  specialized EnvironmentObject.wrappedValue.getter(a1);

  return swift_unknownObjectRetain();
}

uint64_t EnvironmentObject._store.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t EnvironmentObject.projectedValue.getter(uint64_t a1)
{
  if (!a1)
  {
    specialized EnvironmentObject.error()();
  }

  return swift_unknownObjectRetain();
}

uint64_t StoreBox.reset()()
{
  result = swift_unknownObjectRelease();
  *(v0 + 40) = 0;
  return result;
}

void specialized EnvironmentObject.error()()
{
  _StringGuts.grow(_:)(117);
  MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD79B10);
  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](0xD000000000000029, 0x800000018DD77670);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v1);

  MEMORY[0x193ABEDD0](0xD00000000000002CLL, 0x800000018DD776A0);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized EnvironmentObject.wrappedValue.getter(uint64_t result)
{
  if (!result)
  {
    specialized EnvironmentObject.error()();
  }

  return result;
}

void *assignWithTake for EnvironmentObject(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  return a1;
}

uint64_t assignWithCopy for StoreBox(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

uint64_t assignWithTake for StoreBox(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t getEnumTagSinglePayload for StoreBox(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for StoreBox(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t View.mask<A>(alignment:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(double)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v22 = a6;
  v20 = a7;
  v21 = a4;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _MaskAlignmentEffect();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  a3(v16);
  (*(v11 + 32))(&v18[*(v14 + 36)], v13, a5);
  *v18 = a1;
  *(v18 + 1) = a2;
  View.modifier<A>(_:)(v18, v21, v14);
  return (*(v15 + 8))(v18, v14);
}

uint64_t _MaskAlignmentEffect.init(alignment:mask:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for _MaskAlignmentEffect();
  result = (*(*(a4 - 8) + 32))(&a5[*(v10 + 36)], a3, a4);
  *a5 = a1;
  *(a5 + 1) = a2;
  return result;
}

uint64_t _MaskAlignmentEffect.alignment.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t MaskDefaultForeground.value.getter@<X0>(uint64_t *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;
  v5 = one-time initialization token for black;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = static Color.black;
  v7 = one-time initialization token for foreground;
  swift_retain_n();
  if (v7 != -1)
  {
    swift_once();
  }

  if (v6 == static Color.foreground || (v8 = v6, ((*(*v6 + 88))() & 1) != 0))
  {

    v8 = 0;
  }

  swift_retain_n();
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015ForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(a1, v8);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015ForegroundStyleK033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Ttg5(v4, *a1);
  }

  v9 = *a1;
  swift_retain_n();
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022DefaultForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(a1, v6);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022DefaultForegroundStyleK033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Ttg5(v9, *a1);
  }
}

uint64_t get_witness_table_7SwiftUI4ViewRzAaBRd__r__lAA15ModifiedContentVyxAA20_MaskAlignmentEffectVyqd__GGAaBHPxAaBHD1__AgA0C8ModifierHPyHCHCTm(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 8), *(a1 + 24));
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

unint64_t instantiation function for generic protocol witness table for MaskDefaultForeground(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MaskDefaultForeground and conformance MaskDefaultForeground();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MaskDisplayList(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MaskDisplayList and conformance MaskDisplayList();
  *(a1 + 8) = result;
  return result;
}

Swift::Int ContainerBackgroundKind.Builtin.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

BOOL static ContainerBackgroundKind.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v3 == 5)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t ContainerBackgroundKind.hash(into:)()
{
  v1 = *v0;
  if (v1 == 5)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x193AC11A0](0);
  }

  return MEMORY[0x193AC11A0](v1);
}

Swift::Int ContainerBackgroundKind.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 5)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x193AC11A0](0);
  }

  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ContainerBackgroundKind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 5)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x193AC11A0](0);
  }

  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ContainerBackgroundKind()
{
  v1 = *v0;
  if (v1 == 5)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x193AC11A0](0);
  }

  return MEMORY[0x193AC11A0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ContainerBackgroundKind()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  if (v1 == 5)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x193AC11A0](0);
  }

  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void *EnvironmentValues.containerBackgroundKind.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA23ContainerBackgroundKindO0I0VG_Tt1g5(v3, a1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA23ContainerBackgroundKindO0S0VG_Tt0g5(*v1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 6;
    }

    *a1 = v5;
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.containerBackgroundKind : EnvironmentValues@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA23ContainerBackgroundKindO0I0VG_Tt1g5(v3, &v6);

    v5 = v6;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA23ContainerBackgroundKindO0S0VG_Tt0g5(*a1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 6;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.containerBackgroundKind : EnvironmentValues(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA23ContainerBackgroundKindO0F0VG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA23ContainerBackgroundKindO0K0VG_Ttg5(v3, *a2);
  }
}

uint64_t EnvironmentValues.containerBackgroundKind.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA23ContainerBackgroundKindO0F0VG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA23ContainerBackgroundKindO0K0VG_Ttg5(v3, *v2);
  }
}

void (*EnvironmentValues.containerBackgroundKind.modify(char **a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 2) = v1;
  v5 = *v1;
  *(v3 + 3) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 4) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA23ContainerBackgroundKindO0I0VG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA23ContainerBackgroundKindO0S0VG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 6;
    }

    v4[40] = v8;
  }

  return EnvironmentValues.containerBackgroundKind.modify;
}

void EnvironmentValues.containerBackgroundKind.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA23ContainerBackgroundKindO0F0VG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA23ContainerBackgroundKindO0K0VG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

unint64_t lazy protocol witness table accessor for type ContainerBackgroundKind.Builtin and conformance ContainerBackgroundKind.Builtin()
{
  result = lazy protocol witness table cache variable for type ContainerBackgroundKind.Builtin and conformance ContainerBackgroundKind.Builtin;
  if (!lazy protocol witness table cache variable for type ContainerBackgroundKind.Builtin and conformance ContainerBackgroundKind.Builtin)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerBackgroundKind.Builtin and conformance ContainerBackgroundKind.Builtin);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ContainerBackgroundKind.Builtin] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ContainerBackgroundKind.Builtin] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ContainerBackgroundKind.Builtin] and conformance [A])
  {
    type metadata accessor for [ContainerBackgroundKind.Builtin]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ContainerBackgroundKind.Builtin] and conformance [A]);
  }

  return result;
}

void type metadata accessor for [ContainerBackgroundKind.Builtin]()
{
  if (!lazy cache variable for type metadata for [ContainerBackgroundKind.Builtin])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [ContainerBackgroundKind.Builtin]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ContainerBackgroundKind and conformance ContainerBackgroundKind()
{
  result = lazy protocol witness table cache variable for type ContainerBackgroundKind and conformance ContainerBackgroundKind;
  if (!lazy protocol witness table cache variable for type ContainerBackgroundKind and conformance ContainerBackgroundKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerBackgroundKind and conformance ContainerBackgroundKind);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContainerBackgroundKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 5;
  v9 = v7 - 5;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContainerBackgroundKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for ContainerBackgroundKind(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for ContainerBackgroundKind(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance RadialGradient@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance EllipticalGradient@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance AngularGradient@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t closure #1 in static View._viewListCount(inputs:)(_OWORD *a1)
{
  v1 = a1[3];
  v6[2] = a1[2];
  v6[3] = v1;
  v6[4] = a1[4];
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(v6, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t ViewValuePredicate.view.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ViewValuePredicate.view.setter(uint64_t a1)
{
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ViewValuePredicate.init(view:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 40);

  return v6(a3, a1, v5);
}

BOOL ViewValuePredicate.apply(to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  v13 = *AGGraphGetAttributeInfo();
  v14 = swift_conformsToProtocol2();
  if (v14)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    (*(v14 + 16))(v5, a1, v5, v13, v14);
    (*(v7 + 40))(v3, v12, v6);
  }

  (*(v7 + 16))(v9, v3, v6);
  v16 = (*(*(v5 - 8) + 48))(v9, 1, v5) != 1;
  (*(v7 + 8))(v9, v6);
  return v16;
}

uint64_t ViewStatePredicate.state.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Binding();
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ViewStatePredicate.state.setter(uint64_t a1)
{
  type metadata accessor for Binding();
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ViewStatePredicate.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Binding();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

BOOL ViewStatePredicate.apply(to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 24);
  v7 = type metadata accessor for Binding();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  v15 = *AGGraphGetAttributeInfo();
  v16 = swift_conformsToProtocol2();
  if (v16)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    (*(v16 + 24))(&v21, *(a2 + 16), a1, *(a2 + 16), v15);
    if ((v22 & 1) == 0)
    {
      _DynamicPropertyBuffer.getState<A>(type:)(v6, v14);
      (*(v9 + 40))(v3, v14, v8);
    }
  }

  (*(v9 + 16))(v11, v3, v8);
  v18 = (*(*(v7 - 8) + 48))(v11, 1, v7) != 1;
  (*(v9 + 8))(v11, v8);
  return v18;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance _IntelligenceSupport.AnimatingText@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance _IntelligenceSupport.AnimatingSummarySymbol@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance Capsule@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance Ellipse@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance Rectangle._Inset@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance RoundedRectangle._Inset@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance Capsule._Inset@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance Ellipse._Inset@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance Circle._Inset@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ContainerRelativeShape@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ContainerRelativeShape._Inset@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance MeshGradient@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

void protocol witness for static View._makeView(view:inputs:) in conformance Never(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v5[2] = *(a2 + 32);
  v5[3] = v3;
  v5[4] = *(a2 + 64);
  v6 = *(a2 + 80);
  v4 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v4;
  specialized static View.makeView(view:inputs:)(v2, v5);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance _TestApp.RootView@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance _GlassContainerStorageView@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance GlassEffectView@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance GlassEntryContainerView@<X0>(int *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance GlassEntryView@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance GlassItemView@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._viewListCount(inputs:) in conformance LinearGradient(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  v4 = a1[3];
  v7[2] = a1[2];
  v7[3] = v4;
  v7[4] = a1[4];
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return a4(v7);
}

uint64_t type metadata completion function for ViewStatePredicate()
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ViewStatePredicate(void *__dst, void *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 16) & ~v6) + *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || v7 > 0x18)
  {
    v10 = *a2;
    *__dst = *a2;
    __dst = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));

    return __dst;
  }

  v11 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v5 + 84) & 0x80000000) == 0)
  {
    v12 = *v11;
    if (*v11 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    if (v12 != -1)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v14 = a2;
  v15 = (*(v5 + 48))(v11 + 1, *(v5 + 84), v4);
  a2 = v14;
  if (!v15)
  {
LABEL_18:
    *__dst = *a2;
    v16 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v11;
    v17 = *(v5 + 16);

    v17(v16 + 1, v11 + 1, v4);
    return __dst;
  }

LABEL_14:

  return memcpy(__dst, a2, v7);
}

uint64_t destroy for ViewStatePredicate(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = ~v4;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = v3;
  if ((*(v3 + 84) & 0x80000000) != 0)
  {
    result = (*(v3 + 48))((v6 + v4 + 8) & v5);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v7 = *v6;
  if (*v6 >= 0xFFFFFFFF)
  {
    LODWORD(v7) = -1;
  }

  result = (v7 + 1);
  if (v7 == -1)
  {
LABEL_7:

    v9 = *(v10 + 8);

    return v9((v6 + v4 + 8) & v5, v2);
  }

  return result;
}

void *initializeWithCopy for ViewStatePredicate(void *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = ~v5;
  v7 = *(v4 + 64);
  v8 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v4 + 84) & 0x80000000) == 0)
  {
    v9 = *v8;
    if (*v8 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    if (v9 != -1)
    {
      goto LABEL_5;
    }

LABEL_9:
    *a1 = *a2;
    v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v8;
    v16 = v15 + v5 + 8;
    v17 = v8 + v5 + 8;
    v18 = *(v4 + 16);
    v19 = a1;

    v18(v16 & v6, v17 & v6, v3);
    return v19;
  }

  v11 = a1;
  v12 = a2;
  v13 = (*(v4 + 48))((v8 + v5 + 8) & v6, *(v4 + 84), v3);
  a2 = v12;
  v14 = v13;
  a1 = v11;
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_5:

  return memcpy(a1, a2, ((v5 + 16) & ~v5) + v7);
}

void *assignWithCopy for ViewStatePredicate(void *a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = (v8 + 16) & ~v8;
  v11 = *(v6 + 64);
  v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v24 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = *(v6 + 64);
    v19 = *(v6 + 48);
    v22 = v19((v12 + v8 + 8) & v9, v7, v5);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v4 = a1;
    v15 = v19((v13 + v8 + 8) & v9, v7, v5);
    v12 = v24;
    v3 = a2;
    v11 = v23;
    v10 = (v8 + 16) & ~v8;
    if (!v22)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v15)
    {
      v17 = v10 + v11;
      goto LABEL_10;
    }

    *v4 = *v3;
    *v12 = *v13;
    v21 = *(v6 + 16);

    v21((v12 + v8 + 8) & ~v8, (v13 + v8 + 8) & ~v8, v5);
    return v4;
  }

  v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v13 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 + 1;
  if (*v12 <= 0xFFFFFFFEuLL)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!v15)
  {
    *v4 = *v3;

    *v12 = *v13;

    (*(v6 + 24))((v12 + v8 + 8) & v9, (v13 + v8 + 8) & v9, v5);
    return v4;
  }

  v16 = v11;

  (*(v6 + 8))((v12 + v8 + 8) & v9, v5);
  v17 = v10 + v16;
LABEL_10:

  return memcpy(v4, v3, v17);
}

void *initializeWithTake for ViewStatePredicate(void *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = ~v5;
  v7 = *(v4 + 64);
  v8 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v4 + 84) & 0x80000000) == 0)
  {
    v9 = *v8;
    if (*v8 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    if (v9 != -1)
    {
      goto LABEL_5;
    }

LABEL_9:
    *a1 = *a2;
    v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v8;
    v16 = v15 + v5 + 8;
    v17 = v8 + v5 + 8;
    v18 = a1;
    (*(v4 + 32))(v16 & v6, v17 & v6, v3);
    return v18;
  }

  v11 = a1;
  v12 = a2;
  v13 = (*(v4 + 48))((v8 + v5 + 8) & v6, *(v4 + 84), v3);
  a2 = v12;
  v14 = v13;
  a1 = v11;
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_5:

  return memcpy(a1, a2, ((v5 + 16) & ~v5) + v7);
}

void *assignWithTake for ViewStatePredicate(void *a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = (v7 + 16) & ~v7;
  v10 = *(v5 + 64);
  v11 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v6 & 0x80000000) != 0)
  {
    v16 = *(v5 + 48);
    v17 = *(a3 + 24);
    v21 = v16((v11 + v7 + 8) & v8, v6, v17);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = v6;
    v12 = v17;
    v19 = v17;
    v9 = (v7 + 16) & ~v7;
    v4 = a1;
    v15 = v16((v13 + v7 + 8) & v8, v18, v19);
    v3 = a2;
    if (!v21)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    *v4 = *v3;
    *v11 = *v13;
    (*(v5 + 32))((v11 + v7 + 8) & v8, (v13 + v7 + 8) & v8, v12);
    return v4;
  }

  v12 = *(a3 + 24);
  v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v13 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 + 1;
  if (*v11 <= 0xFFFFFFFEuLL)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!v15)
  {
    *v4 = *v3;

    *v11 = *v13;

    (*(v5 + 40))((v11 + v7 + 8) & v8, (v13 + v7 + 8) & v8, v12);
    return v4;
  }

  (*(v5 + 8))((v11 + v7 + 8) & v8, v12);
LABEL_9:

  return memcpy(v4, v3, v9 + v10);
}

uint64_t getEnumTagSinglePayload for ViewStatePredicate(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 - 1 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 16) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v9 = 8 * v8;
  if (v8 > 3)
  {
    goto LABEL_7;
  }

  v12 = (((1 << v9) + a2 - v7) >> v9) + 1;
  if (HIWORD(v12))
  {
    v10 = *(a1 + v8);
    if (v10)
    {
      goto LABEL_15;
    }

LABEL_28:
    v16 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      v18 = (*(v4 + 48))((v16 + v6 + 8) & ~v6);
    }

    else
    {
      v17 = *v16;
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      v18 = v17 + 1;
    }

    if (v18 >= 2)
    {
      return v18 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v12 > 0xFF)
  {
    v10 = *(a1 + v8);
    if (*(a1 + v8))
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  if (v12 < 2)
  {
    goto LABEL_28;
  }

LABEL_7:
  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_28;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 <= 3)
    {
      v14 = ((v6 + 16) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        v15 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v15 = *a1;
      }
    }

    else if (v14 == 1)
    {
      v15 = *a1;
    }

    else
    {
      v15 = *a1;
    }
  }

  else
  {
    v15 = 0;
  }

  return (v15 | v13) + v7;
}

void storeEnumTagSinglePayload for ViewStatePredicate(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = v8 - 1;
  v10 = *(v6 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(*(a4 + 24) - 8) + 64);
  if (v8 - 1 >= a3)
  {
    v12 = 0;
LABEL_16:
    if (v9 >= a2)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v12 = 1;
  if (v11 > 3)
  {
    goto LABEL_16;
  }

  v13 = (((1 << (8 * v11)) + a3 - v8) >> (8 * v11)) + 1;
  if (HIWORD(v13))
  {
    v12 = 4;
    if (v9 >= a2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v13 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 >= 2)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    if (v9 >= a2)
    {
LABEL_26:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *&a1[v11] = 0;
      }

      else if (v12)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      v18 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v19 = *(v6 + 56);
        v20 = a2 + 1;

        v19((v18 + v10 + 8) & ~v10, v20);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v18 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v18 = a2;
      }

      return;
    }
  }

LABEL_17:
  v15 = a2 - v8;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v15;
    v16 = 1;
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v16 = (v15 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_43:
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v17 = v15 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v17;
    a1[2] = BYTE2(v17);
    goto LABEL_43;
  }

  if (v11 == 2)
  {
    *a1 = v17;
    if (v12 > 1)
    {
LABEL_47:
      if (v12 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v12 > 1)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v12)
  {
    a1[v11] = v16;
  }
}

uint64_t _SymbolEffect.Trigger.activates(after:)(uint64_t *a1)
{
  v2 = *a1;
  if ((~*a1 & 0xF000000000000006) == 0)
  {
    goto LABEL_11;
  }

  v3 = *v1;
  if (v2 < 0)
  {
    if (v3 < 0)
    {
      outlined consume of _SymbolEffect.Trigger(*a1);
      outlined consume of _SymbolEffect.Trigger(v3);
      v5 = (v2 ^ 1) & v3;
      return v5 & 1;
    }
  }

  else
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      if (v2 != v3)
      {
        v7 = *(*v2 + 88);
        outlined copy of _SymbolEffect.Trigger?(*a1);
        outlined copy of _SymbolEffect.Trigger?(v2);
        outlined copy of _SymbolEffect.Trigger(v3);
        outlined copy of _SymbolEffect.Trigger?(v2);
        outlined copy of _SymbolEffect.Trigger(v3);
        v8 = v7(v3);
        outlined consume of _SymbolEffect.Trigger(v2);
        outlined consume of _SymbolEffect.Trigger(v3);
        outlined consume of _SymbolEffect.Trigger?(v2);
        outlined consume of _SymbolEffect.Trigger(v3);
        outlined consume of _SymbolEffect.Trigger?(v2);
        v5 = v8 ^ 1;
        return v5 & 1;
      }

      outlined copy of _SymbolEffect.Trigger?(*a1);
      outlined copy of _SymbolEffect.Trigger(v2);
      outlined consume of _SymbolEffect.Trigger(v2);
      v4 = v2;
      goto LABEL_10;
    }

    outlined copy of _SymbolEffect.Trigger?(*a1);
  }

  outlined consume of _SymbolEffect.Trigger(v2);
  v4 = v3;
LABEL_10:
  outlined consume of _SymbolEffect.Trigger(v4);
LABEL_11:
  v5 = 0;
  return v5 & 1;
}

uint64_t _SymbolEffect.Options.repeatCount.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = BYTE4(result) & 1;
  return result;
}

uint64_t _SymbolEffect.Options.repeatDelay.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result) & 1;
  return result;
}

void __swiftcall _SymbolEffect.Options.init()(SwiftUI::_SymbolEffect::Options *__return_ptr retstr)
{
  *&retstr->speed = 1065353216;
  retstr->repeatCount.is_nil = 1;
  retstr->repeatDelay.value = 0.0;
  retstr->repeatDelay.is_nil = 1;
}

uint64_t _SymbolEffect.storage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 24);
  *(a1 + 24) = v5;
  return outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
}

__n128 _SymbolEffect.storage.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u16[4];
  outlined consume of _SymbolEffect.Storage(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  result = v5;
  *v1 = v5;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

float _SymbolEffect.options.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 28);
  v3 = *(v1 + 32);
  v4 = *(v1 + 36);
  v5 = *(v1 + 40);
  v6 = *(v1 + 44);
  *a1 = result;
  *(a1 + 4) = v3;
  *(a1 + 8) = v4;
  *(a1 + 12) = v5;
  *(a1 + 16) = v6;
  return result;
}

float _SymbolEffect.options.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = *(a1 + 16);
  *(v1 + 28) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 36) = v4;
  *(v1 + 40) = v5;
  *(v1 + 44) = v6;
  return result;
}

float _SymbolEffect.init(_:options:)@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = *a2;
  v6 = *(a2 + 4);
  v7 = *(a2 + 8);
  v8 = *(a2 + 12);
  v9 = *(a2 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 24) = v4;
  *(a3 + 28) = result;
  *(a3 + 32) = v6;
  *(a3 + 36) = v7;
  *(a3 + 40) = v8;
  *(a3 + 44) = v9;
  return result;
}

uint64_t _SymbolEffect.PulseConfiguration.trigger.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return outlined copy of _SymbolEffect.Trigger?(v2);
}

uint64_t _SymbolEffect.PulseConfiguration.trigger.setter(uint64_t *a1)
{
  v2 = *a1;
  result = outlined consume of _SymbolEffect.Trigger?(*v1);
  *v1 = v2;
  return result;
}

uint64_t _SymbolEffect.BounceConfiguration.trigger.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return outlined copy of _SymbolEffect.Trigger?(v2);
}

uint64_t _SymbolEffect.BounceConfiguration.trigger.setter(uint64_t *a1)
{
  v2 = *a1;
  result = outlined consume of _SymbolEffect.Trigger?(*v1);
  *v1 = v2;
  return result;
}

void _SymbolEffect.BounceConfiguration.init()(uint64_t a1@<X8>)
{
  *a1 = 0xF000000000000006;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
}

uint64_t _SymbolEffect.WiggleConfiguration.trigger.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return outlined copy of _SymbolEffect.Trigger?(v2);
}

uint64_t _SymbolEffect.WiggleConfiguration.trigger.setter(uint64_t *a1)
{
  v2 = *a1;
  result = outlined consume of _SymbolEffect.Trigger?(*v1);
  *v1 = v2;
  return result;
}

uint64_t _SymbolEffect.WiggleConfiguration.angle.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

double _SymbolEffect.WiggleConfiguration.init()@<D0>(uint64_t a1@<X8>)
{
  result = -3.10503618e231;
  *a1 = xmmword_18DDC4DA0;
  *(a1 + 16) = 1;
  *(a1 + 20) = 0;
  *(a1 + 24) = 1;
  return result;
}

uint64_t _SymbolEffect.VariableColorConfiguration.trigger.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return outlined copy of _SymbolEffect.Trigger?(v2);
}

uint64_t _SymbolEffect.VariableColorConfiguration.trigger.setter(uint64_t *a1)
{
  v2 = *a1;
  result = outlined consume of _SymbolEffect.Trigger?(*v1);
  *v1 = v2;
  return result;
}

uint64_t static _SymbolEffect.ScaleConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 4) ^ *(a1 + 4) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _SymbolEffect.ScaleConfiguration(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 4) ^ *(a1 + 4) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

void _SymbolEffect.HiddenConfiguration.kind.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  *a1 = *v1;
  *(a1 + 4) = v2;
}

uint64_t _SymbolEffect.HiddenConfiguration.kind.setter(uint64_t result)
{
  v2 = *(result + 4);
  *v1 = *result;
  *(v1 + 4) = v2;
  return result;
}

void _SymbolEffect.HiddenConfiguration.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 5) = 1;
}

uint64_t _SymbolEffect.HiddenConfiguration.transitionFlags.getter()
{
  v1 = *(v0 + 5);
  if ((v0[1] & 1) == 0)
  {
    result = *v0;
    if ((v1 | ((*v0 & 0x10) >> 4)))
    {
      return result;
    }

    return result | 0x10;
  }

  result = 0;
  if ((v1 & 1) == 0)
  {
    return result | 0x10;
  }

  return result;
}

void _SymbolEffect.ReplaceConfiguration.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 1065353216;
}

uint64_t _SymbolEffect.ReplaceConfiguration.transitionFlags.getter()
{
  if (v0[4])
  {
    return *v0;
  }

  else
  {
    return *v0 | 0x10u;
  }
}

BOOL static _SymbolEffect.ReplaceConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 4) ^ *(a2 + 4)) & 1) == 0)
  {
    return *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance _SymbolEffect.ReplaceConfiguration(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 4) ^ *(a2 + 4)) & 1) == 0)
  {
    return *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t _SymbolEffect.Identified.effect.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v6 = v1[1];
  v7[0] = v2;
  *(v7 + 13) = *(v1 + 45);
  v3 = *(v7 + 13);
  *a1 = v6;
  a1[1] = v2;
  *(a1 + 29) = v3;
  return outlined init with copy of _SymbolEffect(&v6, &v5);
}

__n128 _SymbolEffect.Identified.effect.setter(uint64_t a1)
{
  v3 = v1[2];
  v6 = v1[1];
  v7[0] = v3;
  *(v7 + 13) = *(v1 + 45);
  outlined destroy of _SymbolEffect(&v6);
  v4 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v4;
  result = *(a1 + 29);
  *(v1 + 45) = result;
  return result;
}

__n128 _SymbolEffect.Identified.init(identifier:serial:effect:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  v4 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v4;
  result = *(a3 + 29);
  *(a4 + 45) = result;
  return result;
}

uint64_t _SymbolEffect.applyLayoutDirection(from:)(uint64_t result)
{
  v2 = *(v1 + 24);
  if ((v2 & 0xF000) != 0x3000)
  {
    return result;
  }

  v3 = *v1;
  if ((*(v1 + 24) & 0x100) == 0)
  {
    outlined copy of _SymbolEffect.Trigger?(*v1);
    goto LABEL_13;
  }

  v4 = *result;
  v5 = *(result + 8);
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *v1;
  if (v5)
  {
    outlined copy of _SymbolEffect.Storage(v8, *(v1 + 8), *(v1 + 16), *(v1 + 24));

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v4, &v13);

    if ((v13 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  outlined copy of _SymbolEffect.Trigger?(v8);
  v9 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v4);
  if (v9 && *(v9 + 72) == 1)
  {
LABEL_9:
    v10 = HIDWORD(v7) & 0xFFFFFF0F;
    v11 = BYTE4(v7) & 0xF0;
    if ((v7 & 0xF000000000) == 0)
    {
      goto LABEL_12;
    }

    if (v11 == 32)
    {
      v10 = v10 | 0x10;
      goto LABEL_17;
    }

    if (v11 == 16)
    {
LABEL_12:
      v10 = v10 | 0x20;
    }

LABEL_17:
    v12 = v7 & 1 | (v10 << 32);
    result = outlined consume of _SymbolEffect.Storage(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
    *v1 = v3;
    *(v1 + 8) = v6;
    *(v1 + 16) = v12;
    *(v1 + 24) = v2 & 0x3001;
    return result;
  }

LABEL_13:

  return outlined consume of _SymbolEffect.Trigger?(v3);
}

uint64_t EnvironmentValues.symbolEffects.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(v1);
  }

  v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE013SymbolEffectsI033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt1g5(v1);

  return v2;
}

uint64_t key path getter for EnvironmentValues.symbolEffects : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE013SymbolEffectsI033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt1g5(v3);
  }

  else
  {
    result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(*a1);
    v4 = result;
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.symbolEffects : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE013SymbolEffectsK033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Ttg5(v4, *a2);
  }
}

uint64_t EnvironmentValues.symbolEffects.setter(uint64_t a1)
{
  v3 = *v1;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(v1, a1);

  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE013SymbolEffectsK033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Ttg5(v3, *v1);
  }
}

void (*EnvironmentValues.symbolEffects.modify(uint64_t **a1))(uint64_t **a1, char a2)
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
  v3[3] = v1;
  v5 = *v1;
  v3[4] = *v1;
  v6 = *(v1 + 8);
  v3[5] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE013SymbolEffectsI033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(v5);
  }

  v4[6] = 0;
  *v4 = v7;
  return EnvironmentValues.symbolEffects.modify;
}

void EnvironmentValues.symbolEffects.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;

  v5 = v3[5];
  v6 = v3[3];
  if (a2)
  {
    swift_bridgeObjectRetain_n();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(v6, v4);

    if (v5)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE013SymbolEffectsK033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Ttg5(v3[4], *v3[3]);
    }
  }

  else
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(v6, v4);

    if (v5)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE013SymbolEffectsK033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Ttg5(v3[4], *v3[3]);
    }
  }

  free(v3);
}

uint64_t EnvironmentValues.appendSymbolEffect(_:for:)(__int128 *a1, uint64_t a2)
{
  v4 = a1[1];
  v18 = *a1;
  v19[0] = v4;
  *(v19 + 13) = *(a1 + 29);
  v16 = v18;
  v17[0] = v4;
  *(v17 + 13) = *(v19 + 13);
  v5 = *v2;
  v6 = v2[1];
  *&v20 = *v2;
  *(&v20 + 1) = v6;
  outlined init with copy of _SymbolEffect(&v18, &v22);

  _SymbolEffect.applyLayoutDirection(from:)(&v20);

  v20 = v16;
  v21[0] = v17[0];
  *(v21 + 13) = *(v17 + 13);
  v22 = v16;
  v23[0] = v17[0];
  *(v23 + 13) = *(v17 + 13);
  outlined init with copy of _SymbolEffect(&v20, &v14);
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE013SymbolEffectsI033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(v5);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
  }

  v9 = *(v7 + 16);
  v8 = *(v7 + 24);
  if (v9 >= v8 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 16) = v9 + 1;
  v10 = v7 + (v9 << 6);
  *(v10 + 32) = a2;
  *(v10 + 40) = 0;
  v11 = v22;
  v12 = v23[0];
  *(v10 + 77) = *(v23 + 13);
  *(v10 + 48) = v11;
  *(v10 + 64) = v12;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(v2, v7);

  if (v6)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE013SymbolEffectsK033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Ttg5(v5, *v2);
  }

  v14 = v16;
  v15[0] = v17[0];
  *(v15 + 13) = *(v17 + 13);
  return outlined destroy of _SymbolEffect(&v14);
}

uint64_t _SymbolEffect.Storage.matchesType(of:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = v9 >> 12;
  if (v9 >> 12 <= 3)
  {
    if (v9 >> 12 > 1)
    {
      v11 = v5 & 0xF000;
      if (v10 == 2)
      {
        outlined copy of _SymbolEffect.Trigger?(v6);
        if (v11 != 0x2000)
        {
          goto LABEL_31;
        }
      }

      else
      {
        outlined copy of _SymbolEffect.Trigger?(v6);
        if (v11 != 12288)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_29;
    }

    if (v10)
    {
      outlined copy of _SymbolEffect.Trigger?(v6);
      if ((v5 & 0xF000) != 0x1000)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    outlined copy of _SymbolEffect.Trigger?(*v1);
    if (v5 < 0x1000)
    {
      goto LABEL_29;
    }

LABEL_31:
    v14 = 0;
    goto LABEL_32;
  }

  if (v9 >> 12 <= 5)
  {
    v12 = v5 & 0xF000;
    if (v10 == 4)
    {
      outlined copy of _SymbolEffect.Trigger?(v6);
      if (v12 != 0x4000)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    outlined copy of _SymbolEffect.Trigger?(v6);
    if (v12 == 20480)
    {
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  if (v10 == 6)
  {
    if ((v5 & 0xF000) != 0x6000)
    {
      goto LABEL_31;
    }
  }

  else if (v10 == 7)
  {
    if ((v5 & 0xF000) != 0x7000)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v13 = (v5 & 0xF000) == 0x8000 && (v3 | v2 | v4) == 0;
    if (!v13 || v5 != 0x8000)
    {
      goto LABEL_31;
    }
  }

LABEL_29:
  v14 = 1;
LABEL_32:
  outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
  outlined consume of _SymbolEffect.Storage(v6, v7, v8, v9);
  outlined consume of _SymbolEffect.Storage(v2, v3, v4, v5);
  return v14;
}

uint64_t _SymbolEffect.Storage.trigger.setter(uint64_t *a1)
{
  v2 = *a1;
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v6 >> 12;
  if (v6 >> 12 <= 3)
  {
    v11 = *v1;
    if (v6 >> 12 > 1)
    {
      if (v7 == 2)
      {
        outlined copy of _SymbolEffect.Trigger?(v11);
        outlined consume of _SymbolEffect.Storage(v4, v3, v5, v6);
        outlined consume of _SymbolEffect.Trigger?(v4);
        v9 = 0;
        v3 &= 0x1FFFFFFFFuLL;
        v10 = 0x2000;
      }

      else
      {
        outlined copy of _SymbolEffect.Trigger?(v11);
        outlined consume of _SymbolEffect.Storage(v4, v3, v5, v6);
        outlined consume of _SymbolEffect.Trigger?(v4);
        v9 = v5 & 0xFFFFFFFF00000001;
        v10 = v6 & 0x101 | 0x3000;
      }
    }

    else if (v7)
    {
      outlined copy of _SymbolEffect.Trigger?(v11);
      outlined consume of _SymbolEffect.Storage(v4, v3, v5, v6);
      outlined consume of _SymbolEffect.Trigger?(v4);
      v9 = 0;
      v3 &= 0x1FFFFFFFFuLL;
      v10 = 4096;
    }

    else
    {
      outlined copy of _SymbolEffect.Trigger?(v11);
      outlined consume of _SymbolEffect.Storage(v4, v3, v5, v6);
      outlined consume of _SymbolEffect.Trigger?(v4);
      v9 = 0;
      v10 = 0;
      v3 &= 1u;
    }
  }

  else
  {
    if (v7 - 6 < 3)
    {
      goto LABEL_14;
    }

    v8 = *v1;
    if (v7 == 4)
    {
      outlined copy of _SymbolEffect.Trigger?(v8);
      outlined consume of _SymbolEffect.Storage(v4, v3, v5, v6);
      outlined consume of _SymbolEffect.Trigger?(v4);
      v9 = 0;
      v3 &= 0x1FFFFFFFFuLL;
      v10 = 0x4000;
    }

    else
    {
      outlined copy of _SymbolEffect.Trigger?(v8);
      outlined consume of _SymbolEffect.Storage(v4, v3, v5, v6);
      outlined consume of _SymbolEffect.Trigger?(v4);
      v9 = 0;
      v3 = v3;
      v10 = 20480;
    }
  }

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v9;
  *(v1 + 24) = v10;
  outlined copy of _SymbolEffect.Trigger?(v2);
LABEL_14:

  return outlined consume of _SymbolEffect.Trigger?(v2);
}

uint64_t closure #1 in RBSymbolAnimator.addAnimation(_:options:animationListener:logicalListener:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 17;
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  static Update.enqueueAction(reason:_:)(&v8, partial apply for closure #1 in closure #1 in RBSymbolAnimator.addAnimation(_:options:animationListener:logicalListener:), v6);
}

uint64_t closure #1 in closure #1 in RBSymbolAnimator.addAnimation(_:options:animationListener:logicalListener:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    result = (*(*result + 96))();
  }

  if (a2)
  {
    return (*(*a2 + 96))(result);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool, @unowned UInt32) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void _SymbolEffect.encode(to:)()
{
  v2 = *(v0 + 28);
  v3 = *(v0 + 32);
  v4 = *(v0 + 36);
  v5 = *(v0 + 40);
  v6 = *(v0 + 44);
  specialized ProtobufEncoder.messageField<A>(_:_:)(1, *v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  if (!v1 && ((v2 == 1.0) & v4 & v6) != 1)
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    specialized ProtobufEncoder.encodeMessage<A>(_:)(v3, v4 | (v5 << 32), v6, v2);
  }
}

unint64_t _SymbolEffect.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = 1;
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
LABEL_56:
    a1[3] = 0;
    goto LABEL_57;
  }

  v43 = 0;
  v44 = 0;
  v46 = 0;
  v47 = 0;
  v6 = 2;
  v7 = 1.0;
  v45 = 1;
  v8 = 4294967294;
  v9 = 1;
  while (1)
  {
    result = a1[3];
    if (result)
    {
      v11 = a1[4];
      if (v4 < v11)
      {
        goto LABEL_11;
      }

      if (v11 < v4)
      {
        goto LABEL_58;
      }

      a1[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_60;
    }

    if (result < 8)
    {
LABEL_58:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      v30 = v46;
      v31 = v47;
      v32 = v8;
      return outlined consume of _SymbolEffect.Storage?(v30, v31, v32, v6);
    }

LABEL_11:
    if (result >> 3 == 2)
    {
      break;
    }

    if (result >> 3 == 1)
    {
      if ((result & 7) != 2)
      {
        goto LABEL_58;
      }

      v12 = v8;
      v13 = a1[5];
      v8 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
      }

      v6 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v6 >= v14 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v6 + 1, 1, v13);
      }

      *(v13 + 2) = v6 + 1;
      *&v13[8 * v6 + 32] = v5;
      a1[5] = v13;
      v15 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        v33 = v46;
        v34 = v47;
        v35 = v12;
        v36 = v8;
        return outlined consume of _SymbolEffect.Storage?(v33, v34, v35, v36);
      }

      if (v15 < 0)
      {
        goto LABEL_72;
      }

      LOWORD(v6) = v8;
      v16 = a1[1] + v15;
      if (v5 < v16)
      {
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        v30 = v46;
        v31 = v47;
        v32 = v12;
        return outlined consume of _SymbolEffect.Storage?(v30, v31, v32, v6);
      }

      a1[2] = v16;
      _SymbolEffect.Storage.init(from:)(a1, &v48);
      v8 = v12;
      v17 = a1[5];
      if (!*(v17 + 2))
      {
        goto LABEL_74;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v18 = *(v17 + 2);
        if (!v18)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
        v18 = *(v17 + 2);
        if (!v18)
        {
          goto LABEL_75;
        }
      }

      v19 = v18 - 1;
      v5 = *&v17[8 * v19 + 32];
      *(v17 + 2) = v19;
      result = outlined consume of _SymbolEffect.Storage?(v46, v47, v12, v6);
      a1[5] = v17;
      a1[2] = v5;
      v46 = v48;
      v47 = v49;
      v8 = v50;
      v6 = v51;
      goto LABEL_4;
    }

    v28 = result & 7;
    if (v28 > 1)
    {
      if (v28 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_60;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_76;
        }

        v29 = a1[1] + result;
        if (v5 < v29)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v28 != 5)
        {
          goto LABEL_58;
        }

        v29 = a1[1] + 4;
        if (v5 < v29)
        {
          goto LABEL_58;
        }
      }
    }

    else
    {
      if ((result & 7) == 0)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_60;
        }

        goto LABEL_4;
      }

      if (v28 != 1)
      {
        goto LABEL_58;
      }

      v29 = a1[1] + 8;
      if (v5 < v29)
      {
        goto LABEL_58;
      }
    }

    a1[1] = v29;
LABEL_4:
    v4 = a1[1];
    if (v4 >= v5)
    {
      v53 = v9 & 1;
      v52 = v45 & 1;
      a1[3] = 0;
      if ((~v8 & 0xFFFFFFFE) != 0 || (v6 & 0xFEFE) != 2)
      {
        v37 = v53;
        v38 = v52;
        *a2 = v46;
        *(a2 + 8) = v47;
        *(a2 + 16) = v8;
        *(a2 + 24) = v6;
        *(a2 + 28) = v7;
        *(a2 + 32) = v44;
        *(a2 + 36) = v37;
        *(a2 + 40) = v43;
        *(a2 + 44) = v38;
        return result;
      }

LABEL_57:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }
  }

  if ((result & 7) != 2)
  {
    goto LABEL_58;
  }

  v20 = a1[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
  }

  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v20);
  }

  *(v20 + 2) = v22 + 1;
  *&v20[8 * v22 + 32] = v5;
  a1[5] = v20;
  v23 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
LABEL_60:
    v33 = v46;
    v34 = v47;
    v35 = v8;
    v36 = v6;
    return outlined consume of _SymbolEffect.Storage?(v33, v34, v35, v36);
  }

  if ((v23 & 0x8000000000000000) == 0)
  {
    v24 = a1[1] + v23;
    if (v5 < v24)
    {
      goto LABEL_58;
    }

    a1[2] = v24;
    _SymbolEffect.Options.init(from:)(a1, &v48);
    v25 = a1[5];
    if (!*(v25 + 16))
    {
      goto LABEL_73;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v26 = *(v25 + 16);
      if (!v26)
      {
        goto LABEL_55;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
      v25 = result;
      v26 = *(result + 16);
      if (!v26)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    v27 = v26 - 1;
    v5 = *(v25 + 8 * v27 + 32);
    *(v25 + 16) = v27;
    a1[5] = v25;
    a1[2] = v5;
    v7 = *&v48;
    v9 = v49;
    v43 = HIDWORD(v49);
    v44 = HIDWORD(v48);
    v45 = v50;
    goto LABEL_4;
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  __break(1u);
  do
  {
    __break(1u);
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    v39 = *(v9 + 16);
    if (v39)
    {
      goto LABEL_70;
    }

    __break(1u);
    v9 = a1[5];
  }

  while (!*(v9 + 16));
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v39 = *(v9 + 16);
    if (v39)
    {
LABEL_70:
      v40 = v39 - 1;
      v41 = *(v9 + 8 * v40 + 32);
      *(v9 + 16) = v40;
      result = outlined consume of _SymbolEffect.Storage?(v46, v47, v8, v6);
      a1[5] = v9;
      a1[2] = v41;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    v9 = result;
    v39 = *(result + 16);
    if (v39)
    {
      goto LABEL_70;
    }
  }

  __break(1u);
  return result;
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance _SymbolEffect()
{
  v2 = *(v0 + 28);
  v3 = *(v0 + 32);
  v4 = *(v0 + 36);
  v5 = *(v0 + 40);
  v6 = *(v0 + 44);
  specialized ProtobufEncoder.messageField<A>(_:_:)(1, *v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  if (!v1 && ((v2 == 1.0) & v4 & v6) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    specialized ProtobufEncoder.encodeMessage<A>(_:)(v3, v4 | (v5 << 32), v6, v2);
  }
}

void _SymbolEffect.Storage.encode(to:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24) >> 12;
  if (v3 <= 3)
  {
    if (*(v0 + 24) >> 12 > 1u)
    {
      if (v3 == 2)
      {
        specialized ProtobufEncoder.messageField<A>(_:_:)(2, v1, v2 & 0x1FFFFFFFFLL);
      }

      else
      {
        specialized ProtobufEncoder.messageField<A>(_:_:)(3);
      }
    }

    else if (v3)
    {
      specialized ProtobufEncoder.messageField<A>(_:_:)(8, v1, v2 & 0x1FFFFFFFFLL);
    }

    else
    {
      specialized ProtobufEncoder.messageField<A>(_:_:)(1, v1, v2 & 1);
    }
  }

  else if (*(v0 + 24) >> 12 <= 5u)
  {
    if (v3 == 4)
    {
      specialized ProtobufEncoder.messageField<A>(_:_:)(4, v1, v2 & 0x1FFFFFFFFLL);
    }

    else
    {
      specialized ProtobufEncoder.messageField<A>(_:_:)(5, v1, v2);
    }
  }

  else if (v3 == 6)
  {
    v5 = *v0;
    ProtobufEncoder.encodeVarint(_:)(0x32uLL);
    specialized ProtobufEncoder.encodeMessage<A>(_:)(v5 & 0x1FFFFFFFFLL);
  }

  else if (v3 == 7)
  {
    v4 = *v0;
    ProtobufEncoder.encodeVarint(_:)(0x3AuLL);
    specialized ProtobufEncoder.encodeMessage<A>(_:)(v4 & 0x10100FFFFFFFFLL | ((HIDWORD(v4) & 1) << 32));
  }
}

unint64_t _SymbolEffect.Storage.init(from:)@<X0>(unint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v106 = a2;
  v4 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
LABEL_167:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0x8000;
LABEL_168:
    v4[3] = 0;
    v96 = v106;
    *v106 = v7;
    v96[1] = v8;
    v96[2] = v9;
    *(v96 + 12) = v10;
    return result;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0x8000;
  while (1)
  {
    result = v4[3];
    if (result)
    {
      v11 = v4[4];
      if (v5 < v11)
      {
        goto LABEL_9;
      }

      if (v11 < v5)
      {
        goto LABEL_169;
      }

      v4[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
    }

    if (result < 8)
    {
      goto LABEL_169;
    }

LABEL_9:
    v12 = result >> 3;
    if (result >> 3 <= 4)
    {
      if (result >> 3 > 2)
      {
        if (v12 == 3)
        {
          if ((result & 7) != 2)
          {
            goto LABEL_169;
          }

          v65 = v4[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 2) + 1, 1, v65);
          }

          v3 = *(v65 + 2);
          v66 = *(v65 + 3);
          v67 = v3 + 1;
          if (v3 >= v66 >> 1)
          {
            v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v3 + 1, 1, v65);
            v67 = v3 + 1;
            v65 = v90;
          }

          *(v65 + 2) = v67;
          *&v65[8 * v3 + 32] = v6;
          v4[5] = v65;
          v68 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
          }

          if (v68 < 0)
          {
            goto LABEL_200;
          }

          v69 = v4[1] + v68;
          if (v6 < v69)
          {
LABEL_169:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
            return outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
          }

          v4[2] = v69;
          _SymbolEffect.WiggleConfiguration.init(from:)(v4, &v100);
          v70 = v4[5];
          if (!*(v70 + 2))
          {
            goto LABEL_202;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v71 = *(v70 + 2);
            if (!v71)
            {
              goto LABEL_212;
            }
          }

          else
          {
            v70 = specialized _ArrayBuffer._consumeAndCreateNew()(v70);
            v71 = *(v70 + 2);
            if (!v71)
            {
              goto LABEL_212;
            }
          }

          v72 = v71 - 1;
          v6 = *&v70[8 * v72 + 32];
          *(v70 + 2) = v72;
          result = outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
          v4[5] = v70;
          v4[2] = v6;
          v7 = v100;
          v8 = v101;
          v9 = v102 | (v103 << 32);
          if (v105)
          {
            v73 = 256;
          }

          else
          {
            v73 = 0;
          }

          v10 = v73 | v104 | 0x3000;
          goto LABEL_133;
        }

        if (v12 == 4)
        {
          if ((result & 7) != 2)
          {
            goto LABEL_169;
          }

          v31 = v4[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
          }

          v3 = *(v31 + 2);
          v32 = *(v31 + 3);
          v33 = v3 + 1;
          if (v3 >= v32 >> 1)
          {
            v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v3 + 1, 1, v31);
            v33 = v3 + 1;
            v31 = v94;
          }

          *(v31 + 2) = v33;
          *&v31[8 * v3 + 32] = v6;
          v4[5] = v31;
          v34 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
          }

          if (v34 < 0)
          {
            goto LABEL_199;
          }

          v35 = v4[1] + v34;
          if (v6 < v35)
          {
            goto LABEL_169;
          }

          v4[2] = v35;
          _SymbolEffect.BounceConfiguration.init(from:)(v4, &v100);
          v36 = v4[5];
          if (!*(v36 + 2))
          {
            goto LABEL_207;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v37 = *(v36 + 2);
            if (!v37)
            {
              goto LABEL_215;
            }
          }

          else
          {
            v36 = specialized _ArrayBuffer._consumeAndCreateNew()(v36);
            v37 = *(v36 + 2);
            if (!v37)
            {
              goto LABEL_215;
            }
          }

          v38 = v37 - 1;
          v6 = *&v36[8 * v38 + 32];
          *(v36 + 2) = v38;
          result = outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
          v9 = 0;
          v4[5] = v36;
          v4[2] = v6;
          v7 = v100;
          v39 = 0x100000000;
          if (!BYTE4(v101))
          {
            v39 = 0;
          }

          v8 = v39 | v101;
          v10 = 0x4000;
          goto LABEL_133;
        }
      }

      else
      {
        if (v12 == 1)
        {
          if ((result & 7) != 2)
          {
            goto LABEL_169;
          }

          v49 = v4[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
          }

          v3 = *(v49 + 2);
          v50 = *(v49 + 3);
          v51 = v3 + 1;
          if (v3 >= v50 >> 1)
          {
            v88 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v3 + 1, 1, v49);
            v51 = v3 + 1;
            v49 = v88;
          }

          *(v49 + 2) = v51;
          *&v49[8 * v3 + 32] = v6;
          v4[5] = v49;
          v52 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
          }

          if (v52 < 0)
          {
            goto LABEL_197;
          }

          v53 = v4[1] + v52;
          if (v6 < v53)
          {
            goto LABEL_169;
          }

          v4[2] = v53;
          _SymbolEffect.PulseConfiguration.init(from:)(v4, &v100);
          v54 = v4[5];
          if (!*(v54 + 2))
          {
            goto LABEL_204;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v55 = *(v54 + 2);
            if (!v55)
            {
              goto LABEL_211;
            }
          }

          else
          {
            v54 = specialized _ArrayBuffer._consumeAndCreateNew()(v54);
            v55 = *(v54 + 2);
            if (!v55)
            {
              goto LABEL_211;
            }
          }

          v56 = v55 - 1;
          v6 = *&v54[8 * v56 + 32];
          *(v54 + 2) = v56;
          result = outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
          v9 = 0;
          v10 = 0;
          v4[5] = v54;
          v4[2] = v6;
          v7 = v100;
          v8 = v101;
          goto LABEL_133;
        }

        if (v12 == 2)
        {
          if ((result & 7) != 2)
          {
            goto LABEL_169;
          }

          v13 = v4[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
          }

          v3 = *(v13 + 2);
          v14 = *(v13 + 3);
          v15 = v3 + 1;
          if (v3 >= v14 >> 1)
          {
            v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v3 + 1, 1, v13);
            v15 = v3 + 1;
            v13 = v92;
          }

          *(v13 + 2) = v15;
          *&v13[8 * v3 + 32] = v6;
          v4[5] = v13;
          v16 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
          }

          if (v16 < 0)
          {
            goto LABEL_198;
          }

          v17 = v4[1] + v16;
          if (v6 < v17)
          {
            goto LABEL_169;
          }

          v4[2] = v17;
          _SymbolEffect.BounceConfiguration.init(from:)(v4, &v100);
          v18 = v4[5];
          if (!*(v18 + 2))
          {
            goto LABEL_201;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v19 = *(v18 + 2);
            if (!v19)
            {
              goto LABEL_210;
            }
          }

          else
          {
            v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
            v19 = *(v18 + 2);
            if (!v19)
            {
              goto LABEL_210;
            }
          }

          v20 = v19 - 1;
          v6 = *&v18[8 * v20 + 32];
          *(v18 + 2) = v20;
          result = outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
          v9 = 0;
          v4[5] = v18;
          v4[2] = v6;
          v7 = v100;
          v21 = 0x100000000;
          if (!BYTE4(v101))
          {
            v21 = 0;
          }

          v8 = v21 | v101;
          v10 = 0x2000;
          goto LABEL_133;
        }
      }

      goto LABEL_136;
    }

    if (result >> 3 > 6)
    {
      if (v12 == 7)
      {
        if ((result & 7) != 2)
        {
          goto LABEL_169;
        }

        v74 = v4[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v74 + 2) + 1, 1, v74);
        }

        v3 = *(v74 + 2);
        v75 = *(v74 + 3);
        v76 = v3 + 1;
        if (v3 >= v75 >> 1)
        {
          v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v3 + 1, 1, v74);
          v76 = v3 + 1;
          v74 = v91;
        }

        *(v74 + 2) = v76;
        *&v74[8 * v3 + 32] = v6;
        v4[5] = v74;
        v77 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
        }

        if (v77 < 0)
        {
          goto LABEL_194;
        }

        v78 = v4[1] + v77;
        if (v6 < v78)
        {
          goto LABEL_169;
        }

        v4[2] = v78;
        _SymbolEffect.HiddenConfiguration.init(from:)(v4, &v100);
        v79 = v4[5];
        if (!*(v79 + 2))
        {
          goto LABEL_206;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v80 = *(v79 + 2);
          if (!v80)
          {
            goto LABEL_209;
          }
        }

        else
        {
          v79 = specialized _ArrayBuffer._consumeAndCreateNew()(v79);
          v80 = *(v79 + 2);
          if (!v80)
          {
            goto LABEL_209;
          }
        }

        v81 = v80 - 1;
        v6 = *&v79[8 * v81 + 32];
        *(v79 + 2) = v81;
        result = outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
        v8 = 0;
        v9 = 0;
        v4[5] = v79;
        v82 = 0x100000000;
        if (!BYTE4(v100))
        {
          v82 = 0;
        }

        v83 = v82 | v100;
        v84 = 0x10000000000;
        if (!BYTE5(v100))
        {
          v84 = 0;
        }

        v85 = 0x1000000000000;
        if (!BYTE6(v100))
        {
          v85 = 0;
        }

        v4[2] = v6;
        v7 = v83 | v84 | v85;
        v10 = 28672;
        goto LABEL_133;
      }

      if (v12 == 8)
      {
        if ((result & 7) != 2)
        {
          goto LABEL_169;
        }

        v40 = v4[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 2) + 1, 1, v40);
        }

        v3 = *(v40 + 2);
        v41 = *(v40 + 3);
        v42 = v3 + 1;
        if (v3 >= v41 >> 1)
        {
          v95 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v3 + 1, 1, v40);
          v42 = v3 + 1;
          v40 = v95;
        }

        *(v40 + 2) = v42;
        *&v40[8 * v3 + 32] = v6;
        v4[5] = v40;
        v43 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
        }

        if (v43 < 0)
        {
          goto LABEL_196;
        }

        v44 = v4[1] + v43;
        if (v6 < v44)
        {
          goto LABEL_169;
        }

        v4[2] = v44;
        _SymbolEffect.BreatheConfiguration.init(from:)(v4, &v100);
        v45 = v4[5];
        if (!*(v45 + 16))
        {
          goto LABEL_208;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v46 = *(v45 + 16);
          if (!v46)
          {
            goto LABEL_166;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v45);
          v45 = result;
          v46 = *(result + 16);
          if (!v46)
          {
LABEL_166:
            __break(1u);
            goto LABEL_167;
          }
        }

        v47 = v46 - 1;
        v6 = *(v45 + 8 * v47 + 32);
        *(v45 + 16) = v47;
        result = outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
        v9 = 0;
        v4[5] = v45;
        v4[2] = v6;
        v7 = v100;
        v48 = 0x100000000;
        if (!BYTE4(v101))
        {
          v48 = 0;
        }

        v8 = v48 | v101;
        v10 = 4096;
        goto LABEL_133;
      }

      goto LABEL_136;
    }

    if (v12 == 5)
    {
      if ((result & 7) != 2)
      {
        goto LABEL_169;
      }

      v57 = v4[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 2) + 1, 1, v57);
      }

      v3 = *(v57 + 2);
      v58 = *(v57 + 3);
      v59 = v3 + 1;
      if (v3 >= v58 >> 1)
      {
        v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v3 + 1, 1, v57);
        v59 = v3 + 1;
        v57 = v89;
      }

      *(v57 + 2) = v59;
      *&v57[8 * v3 + 32] = v6;
      v4[5] = v57;
      v60 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
      }

      if (v60 < 0)
      {
        goto LABEL_195;
      }

      v61 = v4[1] + v60;
      if (v6 < v61)
      {
        goto LABEL_169;
      }

      v4[2] = v61;
      _SymbolEffect.VariableColorConfiguration.init(from:)(v4, &v100);
      v62 = v4[5];
      if (!*(v62 + 2))
      {
        goto LABEL_203;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v63 = *(v62 + 2);
        if (!v63)
        {
          goto LABEL_214;
        }
      }

      else
      {
        v62 = specialized _ArrayBuffer._consumeAndCreateNew()(v62);
        v63 = *(v62 + 2);
        if (!v63)
        {
          goto LABEL_214;
        }
      }

      v64 = v63 - 1;
      v6 = *&v62[8 * v64 + 32];
      *(v62 + 2) = v64;
      result = outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
      v9 = 0;
      v4[5] = v62;
      v4[2] = v6;
      v7 = v100;
      v10 = 20480;
      v8 = v101;
      goto LABEL_133;
    }

    if (v12 == 6)
    {
      break;
    }

LABEL_136:
    v86 = result & 7;
    if (v86 > 1)
    {
      if (v86 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_216;
        }

        v87 = v4[1] + result;
        if (v6 < v87)
        {
          goto LABEL_169;
        }
      }

      else
      {
        if (v86 != 5)
        {
          goto LABEL_169;
        }

        v87 = v4[1] + 4;
        if (v6 < v87)
        {
          goto LABEL_169;
        }
      }

      goto LABEL_150;
    }

    if ((result & 7) != 0)
    {
      if (v86 != 1)
      {
        goto LABEL_169;
      }

      v87 = v4[1] + 8;
      if (v6 < v87)
      {
        goto LABEL_169;
      }

LABEL_150:
      v4[1] = v87;
      goto LABEL_134;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
    }

LABEL_134:
    v5 = v4[1];
    if (v5 >= v6)
    {
      goto LABEL_168;
    }
  }

  if ((result & 7) != 2)
  {
    goto LABEL_169;
  }

  v22 = v4[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
  }

  v3 = *(v22 + 2);
  v23 = *(v22 + 3);
  v24 = v3 + 1;
  if (v3 >= v23 >> 1)
  {
    v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v3 + 1, 1, v22);
    v24 = v3 + 1;
    v22 = v93;
  }

  *(v22 + 2) = v24;
  *&v22[8 * v3 + 32] = v6;
  v4[5] = v22;
  v25 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
  }

  if ((v25 & 0x8000000000000000) == 0)
  {
    v26 = v4[1] + v25;
    if (v6 < v26)
    {
      goto LABEL_169;
    }

    v4[2] = v26;
    _SymbolEffect.ScaleConfiguration.init(from:)(v4, &v100);
    v27 = v4[5];
    if (!*(v27 + 2))
    {
      goto LABEL_205;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v28 = *(v27 + 2);
      if (!v28)
      {
        goto LABEL_213;
      }
    }

    else
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
      v28 = *(v27 + 2);
      if (!v28)
      {
        goto LABEL_213;
      }
    }

    v29 = v28 - 1;
    v6 = *&v27[8 * v29 + 32];
    *(v27 + 2) = v29;
    result = outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
    v8 = 0;
    v9 = 0;
    v4[5] = v27;
    v4[2] = v6;
    v30 = 0x100000000;
    if (!BYTE4(v100))
    {
      v30 = 0;
    }

    v7 = v30 | v100;
    v10 = 24576;
LABEL_133:
    v2 = 0;
    goto LABEL_134;
  }

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
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
  do
  {
    __break(1u);
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v97 = *(v3 + 16);
    if (v97)
    {
      goto LABEL_192;
    }

    __break(1u);
    v3 = v4[5];
    if (!*(v3 + 16))
    {
      goto LABEL_217;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v97 = *(v3 + 16);
      if (v97)
      {
        goto LABEL_192;
      }
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v97 = *(v3 + 16);
      if (v97)
      {
        goto LABEL_192;
      }
    }

    __break(1u);
    v3 = v4[5];
    if (!*(v3 + 16))
    {
      goto LABEL_218;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v97 = *(v3 + 16);
      if (v97)
      {
        goto LABEL_192;
      }
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v97 = *(v3 + 16);
      if (v97)
      {
        goto LABEL_192;
      }
    }

    __break(1u);
    v3 = v4[5];
    if (!*(v3 + 16))
    {
      goto LABEL_219;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v97 = *(v3 + 16);
      if (v97)
      {
        goto LABEL_192;
      }
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v97 = *(v3 + 16);
      if (v97)
      {
        goto LABEL_192;
      }
    }

    __break(1u);
    v3 = v4[5];
    if (!*(v3 + 16))
    {
      goto LABEL_220;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v97 = *(v3 + 16);
      if (v97)
      {
        goto LABEL_192;
      }
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v97 = *(v3 + 16);
      if (v97)
      {
        goto LABEL_192;
      }
    }

    __break(1u);
    v3 = v4[5];
    if (!*(v3 + 16))
    {
      goto LABEL_221;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v97 = *(v3 + 16);
      if (v97)
      {
        goto LABEL_192;
      }
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v97 = *(v3 + 16);
      if (v97)
      {
        goto LABEL_192;
      }
    }

    __break(1u);
    v3 = v4[5];
    if (!*(v3 + 16))
    {
      goto LABEL_222;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v97 = *(v3 + 16);
      if (v97)
      {
        goto LABEL_192;
      }
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v97 = *(v3 + 16);
      if (v97)
      {
        goto LABEL_192;
      }
    }

    __break(1u);
    v3 = v4[5];
  }

  while (!*(v3 + 16));
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v97 = *(v3 + 16);
    if (v97)
    {
LABEL_192:
      v98 = v97 - 1;
      v99 = *(v3 + 8 * v98 + 32);
      *(v3 + 16) = v98;
      result = outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
      v4[5] = v3;
      v4[2] = v99;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    v97 = *(result + 16);
    if (v97)
    {
      goto LABEL_192;
    }
  }

  __break(1u);
  return result;
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance _SymbolEffect.Storage()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24) >> 12;
  if (v3 <= 3)
  {
    if (*(v0 + 24) >> 12 > 1u)
    {
      if (v3 == 2)
      {
        specialized ProtobufEncoder.messageField<A>(_:_:)(2, v1, v2 & 0x1FFFFFFFFLL);
      }

      else
      {
        specialized ProtobufEncoder.messageField<A>(_:_:)(3);
      }
    }

    else if (v3)
    {
      specialized ProtobufEncoder.messageField<A>(_:_:)(8, v1, v2 & 0x1FFFFFFFFLL);
    }

    else
    {
      specialized ProtobufEncoder.messageField<A>(_:_:)(1, v1, v2 & 1);
    }
  }

  else if (*(v0 + 24) >> 12 <= 5u)
  {
    if (v3 == 4)
    {
      specialized ProtobufEncoder.messageField<A>(_:_:)(4, v1, v2 & 0x1FFFFFFFFLL);
    }

    else
    {
      specialized ProtobufEncoder.messageField<A>(_:_:)(5, v1, v2);
    }
  }

  else if (v3 == 6)
  {
    v5 = *v0;
    ProtobufEncoder.encodeVarint(_:)(0x32uLL);
    specialized ProtobufEncoder.encodeMessage<A>(_:)(v5 & 0x1FFFFFFFFLL);
  }

  else if (v3 == 7)
  {
    v4 = *v0;
    ProtobufEncoder.encodeVarint(_:)(0x3AuLL);
    specialized ProtobufEncoder.encodeMessage<A>(_:)(v4 & 0x10100FFFFFFFFLL | ((HIDWORD(v4) & 1) << 32));
  }
}

_DWORD *_SymbolEffect.Options.encode(to:)(_DWORD *result)
{
  v2 = v1;
  v3 = result;
  v5 = *v2;
  v4 = *(v2 + 4);
  v6 = *(v2 + 8);
  v7 = *(v2 + 12);
  v8 = *(v2 + 16);
  if (*v2 != 1.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0xDuLL);
    v9 = v3[1];
    result = (v9 + 4);
    if (__OFADD__(v9, 4))
    {
      __break(1u);
    }

    else if (v3[2] >= result)
    {
      v3[1] = result;
      *(*v3 + v9) = v5;
      goto LABEL_5;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v5;
  }

LABEL_5:
  if (v4 == 0.0)
  {
    v10 = 1;
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    goto LABEL_13;
  }

  ProtobufEncoder.encodeVarint(_:)(0x15uLL);
  v11 = v3[1];
  v12 = v11 + 4;
  if (__OFADD__(v11, 4))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v3[2] < v12)
  {
    goto LABEL_24;
  }

  v3[1] = v12;
  for (result = (*v3 + v11); ; result = ProtobufEncoder.growBufferSlow(to:)(v12))
  {
    *result = v4;
LABEL_13:
    v13 = v7 == 0.0 ? 1 : v8;
    if (v13)
    {
      break;
    }

    ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
    v14 = v3[1];
    v12 = v14 + 4;
    if (!__OFADD__(v14, 4))
    {
      if (v3[2] < v12)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(v12);
      }

      else
      {
        v3[1] = v12;
        result = (*v3 + v14);
      }

      *result = v7;
      return result;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  return result;
}

unint64_t _SymbolEffect.Options.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 1.0;
    v11 = 1;
    v10 = 1;
LABEL_57:
    v3[3] = 0;
    *a2 = v9;
    *(a2 + 4) = v7;
    *(a2 + 8) = v10 & 1;
    *(a2 + 12) = v8;
    *(a2 + 16) = v11 & 1;
    return result;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1.0;
  v10 = 1;
  v11 = 1;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v12 = v3[4];
      if (v5 < v12)
      {
        goto LABEL_11;
      }

      if (v12 < v5)
      {
        goto LABEL_55;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_55:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v13 = result >> 3;
    v14 = result & 7;
    if (result >> 3 == 3)
    {
      if (v14 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_60;
        }

        v17 = v3[1];
        if (v6 < v17 + result)
        {
          goto LABEL_55;
        }

        v3[3] = 29;
        v3[4] = v17 + result;
      }

      else
      {
        if (v14 != 5)
        {
          goto LABEL_55;
        }

        v17 = v3[1];
      }

      v5 = (v17 + 1);
      if (v6 < (v17 + 1))
      {
        goto LABEL_55;
      }

      v11 = 0;
      v8 = *v17;
      v3[1] = v5;
      goto LABEL_4;
    }

    if (v13 == 2)
    {
      break;
    }

    if (v13 != 1)
    {
      if ((result & 7) > 1)
      {
        if (v14 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_62;
          }

          v5 = v3[1] + result;
          if (v6 < v5)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v14 != 5)
          {
            goto LABEL_55;
          }

          v5 = v3[1] + 4;
          if (v6 < v5)
          {
            goto LABEL_55;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          v5 = v3[1];
          goto LABEL_4;
        }

        if (v14 != 1)
        {
          goto LABEL_55;
        }

        v5 = v3[1] + 8;
        if (v6 < v5)
        {
          goto LABEL_55;
        }
      }

      v3[1] = v5;
      goto LABEL_4;
    }

    if (v14 == 2)
    {
      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_61;
      }

      v15 = v3[1];
      if (v6 < v15 + result)
      {
        goto LABEL_55;
      }

      v3[3] = 13;
      v3[4] = v15 + result;
    }

    else
    {
      if (v14 != 5)
      {
        goto LABEL_55;
      }

      v15 = v3[1];
    }

    v5 = (v15 + 1);
    if (v6 < (v15 + 1))
    {
      goto LABEL_55;
    }

    v9 = *v15;
    v3[1] = v5;
LABEL_4:
    if (v5 >= v6)
    {
      goto LABEL_57;
    }
  }

  if (v14 != 2)
  {
    if (v14 != 5)
    {
      goto LABEL_55;
    }

    v16 = v3[1];
LABEL_36:
    v5 = (v16 + 1);
    if (v6 < (v16 + 1))
    {
      goto LABEL_55;
    }

    v10 = 0;
    v7 = *v16;
    v3[1] = v5;
    goto LABEL_4;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v16 = v3[1];
    if (v6 < v16 + result)
    {
      goto LABEL_55;
    }

    v3[3] = 21;
    v3[4] = v16 + result;
    goto LABEL_36;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

void _SymbolEffect.Trigger.encode(to:)(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for UUID();
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (v7 < 0)
  {
    if (v7)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }
  }

  else
  {
    (*(*v7 + 96))(&v19, v4);
    if (v23)
    {
      UUID.init()();
      _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4UUIDV_Tt1g5(v6, v18);
      v8 = v18[0];
      v9 = v18[1];
      v10 = v18[2];
      v11 = v18[3];
      v12 = v18[4];
    }

    else
    {
      v11 = v21;
      v12 = v22;
      v9 = HIDWORD(v19);
      v10 = v20;
      v8 = v19;
    }

    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    v19 = __PAIR64__(v9, v8);
    v20 = v10;
    v21 = v11;
    v22 = v12;
    v13 = a1[1];
    v14 = a1[3];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    *&v14[8 * v16 + 32] = v13;
    a1[3] = v14;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
    }

    a1[1] = v13 + 1;
    StrongHash.encode(to:)(a1);
    ProtobufEncoder.endLengthDelimited()();
  }
}

unint64_t _SymbolEffect.Trigger.init(from:)@<X0>(unint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = 0x8000000000000000;
  while (1)
  {
    if (v5 >= v6)
    {
      goto LABEL_52;
    }

    result = v3[3];
    if (result)
    {
      v8 = v3[4];
      if (v5 < v8)
      {
        goto LABEL_9;
      }

      if (v8 < v5)
      {
        goto LABEL_53;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of _SymbolEffect.Trigger(v7);
    }

    if (result < 8)
    {
      goto LABEL_53;
    }

LABEL_9:
    if (result >> 3 == 2)
    {
      if ((result & 7) != 0)
      {
        if ((result & 7) != 2)
        {
          goto LABEL_53;
        }

        v19 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of _SymbolEffect.Trigger(v7);
        }

        if (v19 < 0)
        {
          goto LABEL_59;
        }

        v20 = v3[1] + v19;
        if (v6 < v20)
        {
LABEL_53:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          return outlined consume of _SymbolEffect.Trigger(v7);
        }

        v3[3] = 16;
        v3[4] = v20;
      }

      v21 = ProtobufDecoder.decodeVarint()();
      v15 = v2;
      if (v2)
      {
        return outlined consume of _SymbolEffect.Trigger(v7);
      }

      v22 = v21;
      result = outlined consume of _SymbolEffect.Trigger(v7);
      if (v22)
      {
        v7 = 0x8000000000000001;
      }

      else
      {
        v7 = 0x8000000000000000;
      }

      goto LABEL_33;
    }

    if (result >> 3 == 1)
    {
      break;
    }

    v23 = result & 7;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of _SymbolEffect.Trigger(v7);
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_60;
        }

        v5 = v3[1] + result;
        if (v6 < v5)
        {
          goto LABEL_53;
        }

        v3[1] = v5;
      }

      else
      {
        if (v23 != 5)
        {
          goto LABEL_53;
        }

        v5 = v3[1] + 4;
        if (v6 < v5)
        {
          goto LABEL_53;
        }

        v3[1] = v5;
      }
    }

    else if ((result & 7) != 0)
    {
      if (v23 != 1)
      {
        goto LABEL_53;
      }

      v5 = v3[1] + 8;
      if (v6 < v5)
      {
        goto LABEL_53;
      }

      v3[1] = v5;
    }

    else
    {
      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of _SymbolEffect.Trigger(v7);
      }

LABEL_34:
      v5 = v3[1];
    }
  }

  if ((result & 7) != 2)
  {
    goto LABEL_53;
  }

  v9 = v3[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  *&v9[8 * v11 + 32] = v6;
  v3[5] = v9;
  v12 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return outlined consume of _SymbolEffect.Trigger(v7);
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = v3[1] + v12;
    if (v6 < v13)
    {
      goto LABEL_53;
    }

    v3[2] = v13;
    StrongHash.init(from:)(v3, &v28);
    v14 = v3[5];
    if (!*(v14 + 16))
    {
      goto LABEL_58;
    }

    v15 = 0;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v16 = *(v14 + 16);
      if (!v16)
      {
        goto LABEL_51;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
      v14 = result;
      v16 = *(result + 16);
      if (!v16)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        v3[3] = 0;
        *a2 = v7;
        return result;
      }
    }

    v17 = v16 - 1;
    v6 = *(v14 + 8 * v17 + 32);
    *(v14 + 16) = v17;
    outlined consume of _SymbolEffect.Trigger(v7);
    v3[5] = v14;
    v3[2] = v6;
    v18 = v29;
    type metadata accessor for HashEquatableBox();
    result = swift_allocObject();
    v7 = result;
    *(result + 16) = v28;
    *(result + 32) = v18;
LABEL_33:
    v2 = v15;
    goto LABEL_34;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v26 = result;
  v27 = *(result + 16);
  if (v27)
  {
    v24 = v27 - 1;
    v25 = *(result + 8 * v24 + 32);
    *(result + 16) = v24;
    result = outlined consume of _SymbolEffect.Trigger(v7);
    v3[5] = v26;
    v3[2] = v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _SymbolEffect.PulseConfiguration.encode(to:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  if ((~*v0 & 0xF000000000000006) != 0)
  {
    outlined copy of _SymbolEffect.Trigger(v2);
    specialized ProtobufEncoder.messageField<A>(_:_:)(3, v2);
    outlined consume of _SymbolEffect.Trigger?(v2);
    if ((v1 != 0) | v3 & 1)
    {
      return;
    }

    goto LABEL_5;
  }

  if ((*(v0 + 8) & 1) == 0)
  {
LABEL_5:
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(0);
  }
}

unint64_t _SymbolEffect.PulseConfiguration.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = 0xF000000000000006;
  v6 = 1;
  v27 = 1;
  v7 = *(result + 8);
  v8 = *(result + 16);
  if (v7 >= v8)
  {
    goto LABEL_53;
  }

  while (1)
  {
    result = v3[3];
    if (result)
    {
      v9 = v3[4];
      if (v7 < v9)
      {
        goto LABEL_11;
      }

      if (v9 < v7)
      {
        goto LABEL_50;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of _SymbolEffect.Trigger?(v5);
    }

    if (result <= 7)
    {
      goto LABEL_50;
    }

LABEL_11:
    if (result >> 3 == 2)
    {
      if ((result & 7) != 0)
      {
        if ((result & 7) != 2)
        {
          goto LABEL_50;
        }

        v19 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of _SymbolEffect.Trigger?(v5);
        }

        if (v19 < 0)
        {
          goto LABEL_57;
        }

        v20 = v3[1] + v19;
        if (v8 < v20)
        {
          goto LABEL_50;
        }

        v3[3] = 16;
        v3[4] = v20;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of _SymbolEffect.Trigger?(v5);
      }

      v27 = result != 0;
      goto LABEL_4;
    }

    if (result >> 3 == 3)
    {
      break;
    }

    v21 = result & 7;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of _SymbolEffect.Trigger?(v5);
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_58;
        }

        v22 = v3[1] + result;
        if (v8 < v22)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v21 != 5)
        {
          goto LABEL_50;
        }

        v22 = v3[1] + 4;
        if (v8 < v22)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      if ((result & 7) == 0)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of _SymbolEffect.Trigger?(v5);
        }

        goto LABEL_4;
      }

      if (v21 != 1)
      {
        goto LABEL_50;
      }

      v22 = v3[1] + 8;
      if (v8 < v22)
      {
        goto LABEL_50;
      }
    }

    v3[1] = v22;
LABEL_4:
    v7 = v3[1];
    if (v7 >= v8)
    {
      v6 = v27;
LABEL_53:
      v3[3] = 0;
      *a2 = v5;
      *(a2 + 8) = v6;
      return result;
    }
  }

  if ((result & 7) != 2)
  {
    goto LABEL_50;
  }

  v10 = v3[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  *&v10[8 * v12 + 32] = v8;
  v3[5] = v10;
  v13 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return outlined consume of _SymbolEffect.Trigger?(v5);
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = v3[1] + v13;
    if (v8 < v14)
    {
      goto LABEL_50;
    }

    v3[2] = v14;
    _SymbolEffect.Trigger.init(from:)(v3, &v26);
    v15 = v3[5];
    if (!*(v15 + 2))
    {
      goto LABEL_56;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = *(v15 + 2);
      if (!v16)
      {
        goto LABEL_49;
      }

      goto LABEL_24;
    }

    v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
    v16 = *(v15 + 2);
    if (v16)
    {
LABEL_24:
      v17 = v16 - 1;
      v8 = *&v15[8 * v17 + 32];
      *(v15 + 2) = v17;
      v3[5] = v15;
      v3[2] = v8;
      v18 = v26;
      result = outlined consume of _SymbolEffect.Trigger?(v5);
      v5 = v18;
      goto LABEL_4;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    return outlined consume of _SymbolEffect.Trigger?(v5);
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v25 = *(result + 16);
  if (v25)
  {
    v23 = v25 - 1;
    v24 = *(result + 8 * v23 + 32);
    *(result + 16) = v23;
    v3[5] = result;
    v3[2] = v24;
    return outlined consume of _SymbolEffect.Trigger?(v5);
  }

  __break(1u);
  return result;
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance _SymbolEffect.PulseConfiguration()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  if ((~*v0 & 0xF000000000000006) != 0)
  {
    outlined copy of _SymbolEffect.Trigger(v2);
    specialized ProtobufEncoder.messageField<A>(_:_:)(3, v2);
    outlined consume of _SymbolEffect.Trigger?(v2);
    if ((v1 != 0) | v3 & 1)
    {
      return;
    }

    goto LABEL_5;
  }

  if ((*(v0 + 8) & 1) == 0)
  {
LABEL_5:
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(0);
  }
}

unint64_t _SymbolEffect.BreatheConfiguration.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = 0xF000000000000006;
  v6 = *(result + 8);
  v7 = *(result + 16);
  if (v6 >= v7)
  {
LABEL_59:
    LODWORD(v8) = 0;
    LOBYTE(v9) = 1;
LABEL_60:
    v3[3] = 0;
    *a2 = v5;
    *(a2 + 8) = v8;
    *(a2 + 12) = v9;
    return result;
  }

  v8 = 0;
  v9 = 1;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v10 = v3[4];
      if (v6 < v10)
      {
        goto LABEL_11;
      }

      if (v10 < v6)
      {
        goto LABEL_61;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of _SymbolEffect.Trigger?(v5);
    }

    if (result <= 7)
    {
      goto LABEL_61;
    }

LABEL_11:
    v11 = result >> 3;
    if (result >> 3 != 3)
    {
      break;
    }

    if ((result & 7) != 0)
    {
      if ((result & 7) != 2)
      {
        goto LABEL_61;
      }

      v24 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of _SymbolEffect.Trigger?(v5);
      }

      if (v24 < 0)
      {
        goto LABEL_67;
      }

      v25 = v3[1] + v24;
      if (v7 < v25)
      {
LABEL_61:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        return outlined consume of _SymbolEffect.Trigger?(v5);
      }

      v3[3] = 24;
      v3[4] = v25;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of _SymbolEffect.Trigger?(v5);
    }

    v9 = result != 0;
LABEL_4:
    v6 = v3[1];
    if (v6 >= v7)
    {
      goto LABEL_60;
    }
  }

  if (v11 == 2)
  {
    if ((result & 7) != 0)
    {
      if ((result & 7) != 2)
      {
        goto LABEL_61;
      }

      v22 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of _SymbolEffect.Trigger?(v5);
      }

      if (v22 < 0)
      {
        goto LABEL_66;
      }

      v23 = v3[1] + v22;
      if (v7 < v23)
      {
        goto LABEL_61;
      }

      v3[3] = 16;
      v3[4] = v23;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of _SymbolEffect.Trigger?(v5);
    }

    v8 = result;
    goto LABEL_4;
  }

  if (v11 != 1)
  {
    v26 = result & 7;
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of _SymbolEffect.Trigger?(v5);
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_68;
        }

        v27 = v3[1] + result;
        if (v7 < v27)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v26 != 5)
        {
          goto LABEL_61;
        }

        v27 = v3[1] + 4;
        if (v7 < v27)
        {
          goto LABEL_61;
        }
      }
    }

    else
    {
      if ((result & 7) == 0)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of _SymbolEffect.Trigger?(v5);
        }

        goto LABEL_4;
      }

      if (v26 != 1)
      {
        goto LABEL_61;
      }

      v27 = v3[1] + 8;
      if (v7 < v27)
      {
        goto LABEL_61;
      }
    }

    v3[1] = v27;
    goto LABEL_4;
  }

  if ((result & 7) != 2)
  {
    goto LABEL_61;
  }

  v31 = v8;
  v12 = a2;
  v13 = v3[5];
  a2 = v9;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  *&v13[8 * v15 + 32] = v7;
  v3[5] = v13;
  v16 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return outlined consume of _SymbolEffect.Trigger?(v5);
  }

  if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = v3[1] + v16;
    if (v7 < v17)
    {
      goto LABEL_61;
    }

    v3[2] = v17;
    _SymbolEffect.Trigger.init(from:)(v3, &v32);
    v18 = v3[5];
    if (!*(v18 + 16))
    {
      goto LABEL_65;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v19 = *(v18 + 16);
      if (!v19)
      {
        goto LABEL_58;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
      v18 = result;
      v19 = *(result + 16);
      if (!v19)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    v20 = v19 - 1;
    v7 = *(v18 + 8 * v20 + 32);
    *(v18 + 16) = v20;
    v3[5] = v18;
    v3[2] = v7;
    v21 = v32;
    result = outlined consume of _SymbolEffect.Trigger?(v5);
    v5 = v21;
    v9 = a2;
    a2 = v12;
    v8 = v31;
    goto LABEL_4;
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v30 = *(result + 16);
  if (v30)
  {
    v28 = v30 - 1;
    v29 = *(result + 8 * v28 + 32);
    *(result + 16) = v28;
    v3[5] = result;
    v3[2] = v29;
    return outlined consume of _SymbolEffect.Trigger?(v5);
  }

  __break(1u);
  return result;
}

void _SymbolEffect.WiggleConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 20);
  v9 = *(v3 + 24);
  v10 = *(v3 + 25);
  if ((~*v3 & 0xF000000000000006) != 0)
  {
    outlined copy of _SymbolEffect.Trigger(v5);
    specialized ProtobufEncoder.messageField<A>(_:_:)(5, v5);
    outlined consume of _SymbolEffect.Trigger?(v5);
    if (v2)
    {
      return;
    }
  }

  if (v6 == 0.0)
  {
    v11 = 1;
  }

  else
  {
    v11 = v7;
  }

  if ((v11 & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x11uLL);
    v12 = a1[1];
    v13 = v12 + 8;
    if (__OFADD__(v12, 8))
    {
      __break(1u);
    }

    else if (a1[2] >= v13)
    {
      a1[1] = v13;
      v14 = (*a1 + v12);
LABEL_10:
      *v14 = v6;
      goto LABEL_11;
    }

    v14 = ProtobufEncoder.growBufferSlow(to:)(v13);
    goto LABEL_10;
  }

LABEL_11:
  if (v8)
  {
    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)(v8);
  }

  if ((v9 & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x20uLL);
    ProtobufEncoder.encodeVarint(_:)(0);
  }

  if (v10)
  {
    ProtobufEncoder.encodeVarint(_:)(0x30uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }
}

unint64_t _SymbolEffect.WiggleConfiguration.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = 0xF000000000000006;
  v6 = 1;
  v43 = 1;
  v42 = 1;
  v7 = *(result + 8);
  v8 = *(result + 16);
  if (v7 >= v8)
  {
    LOBYTE(v9) = 0;
    LODWORD(v10) = 0;
    v11 = 0.0;
    v12 = 1;
LABEL_4:
    v3[3] = 0;
    *a2 = v5;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 20) = v10;
    *(a2 + 24) = v6;
    *(a2 + 25) = v9;
    return result;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0.0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v13 = v3[4];
      if (v7 < v13)
      {
        goto LABEL_13;
      }

      if (v13 < v7)
      {
        goto LABEL_84;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of _SymbolEffect.Trigger?(v5);
    }

    if (result <= 7)
    {
      goto LABEL_84;
    }

LABEL_13:
    v14 = result >> 3;
    if (result >> 3 <= 3)
    {
      if (v14 == 2)
      {
        v31 = result & 7;
        if (v31 == 5)
        {
          v35 = v3[1];
          if (v8 < (v35 + 1))
          {
            goto LABEL_84;
          }

          v36 = *v35;
          v3[1] = v35 + 1;
          v11 = v36;
          v43 = 0;
        }

        else
        {
          if (v31 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return outlined consume of _SymbolEffect.Trigger?(v5);
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_93;
            }

            v32 = v3[1];
            if (v8 < v32 + result)
            {
              goto LABEL_84;
            }

            v3[3] = 17;
            v3[4] = v32 + result;
          }

          else
          {
            if (v31 != 1)
            {
              goto LABEL_84;
            }

            v32 = v3[1];
          }

          if (v8 < (v32 + 1))
          {
            goto LABEL_84;
          }

          v11 = *v32;
          v3[1] = v32 + 1;
          v43 = 0;
        }

        goto LABEL_6;
      }

      if (v14 == 3)
      {
        if ((result & 7) != 0)
        {
          if ((result & 7) != 2)
          {
            goto LABEL_84;
          }

          v25 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return outlined consume of _SymbolEffect.Trigger?(v5);
          }

          if (v25 < 0)
          {
            goto LABEL_90;
          }

          v26 = v3[1] + v25;
          if (v8 < v26)
          {
            goto LABEL_84;
          }

          v3[3] = 24;
          v3[4] = v26;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of _SymbolEffect.Trigger?(v5);
        }

        v10 = result;
        goto LABEL_6;
      }

      goto LABEL_59;
    }

    if (v14 == 4)
    {
      if ((result & 7) != 0)
      {
        if ((result & 7) != 2)
        {
          goto LABEL_84;
        }

        v27 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of _SymbolEffect.Trigger?(v5);
        }

        if (v27 < 0)
        {
          goto LABEL_91;
        }

        v28 = v3[1] + v27;
        if (v8 < v28)
        {
          goto LABEL_84;
        }

        v3[3] = 32;
        v3[4] = v28;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of _SymbolEffect.Trigger?(v5);
      }

      v42 = result != 0;
      goto LABEL_6;
    }

    if (v14 == 6)
    {
      if ((result & 7) != 0)
      {
        if ((result & 7) != 2)
        {
          goto LABEL_84;
        }

        v29 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of _SymbolEffect.Trigger?(v5);
        }

        if (v29 < 0)
        {
          goto LABEL_92;
        }

        v30 = v3[1] + v29;
        if (v8 < v30)
        {
          goto LABEL_84;
        }

        v3[3] = 48;
        v3[4] = v30;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of _SymbolEffect.Trigger?(v5);
      }

      v9 = result != 0;
      goto LABEL_6;
    }

    if (v14 == 5)
    {
      break;
    }

LABEL_59:
    v33 = result & 7;
    if (v33 > 1)
    {
      if (v33 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of _SymbolEffect.Trigger?(v5);
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_94;
        }

        v34 = v3[1] + result;
        if (v8 < v34)
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v33 != 5)
        {
          goto LABEL_84;
        }

        v34 = v3[1] + 4;
        if (v8 < v34)
        {
          goto LABEL_84;
        }
      }
    }

    else
    {
      if ((result & 7) == 0)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of _SymbolEffect.Trigger?(v5);
        }

        goto LABEL_6;
      }

      if (v33 != 1)
      {
        goto LABEL_84;
      }

      v34 = v3[1] + 8;
      if (v8 < v34)
      {
        goto LABEL_84;
      }
    }

    v3[1] = v34;
LABEL_6:
    v7 = v3[1];
    if (v7 >= v8)
    {
      v12 = v43;
      v6 = v42;
      goto LABEL_4;
    }
  }

  if ((result & 7) != 2)
  {
    goto LABEL_84;
  }

  v15 = v3[5];
  v40 = v10;
  v16 = v9;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
  }

  *(v15 + 2) = v18 + 1;
  *&v15[8 * v18 + 32] = v8;
  v3[5] = v15;
  v19 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return outlined consume of _SymbolEffect.Trigger?(v5);
  }

  if ((v19 & 0x8000000000000000) == 0)
  {
    v20 = v3[1] + v19;
    if (v8 < v20)
    {
      goto LABEL_84;
    }

    v3[2] = v20;
    _SymbolEffect.Trigger.init(from:)(v3, &v41);
    v21 = v3[5];
    if (!*(v21 + 2))
    {
      goto LABEL_89;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v22 = *(v21 + 2);
      if (!v22)
      {
        goto LABEL_83;
      }

      goto LABEL_28;
    }

    v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
    v22 = *(v21 + 2);
    if (v22)
    {
LABEL_28:
      v23 = v22 - 1;
      v8 = *&v21[8 * v23 + 32];
      *(v21 + 2) = v23;
      v3[5] = v21;
      v3[2] = v8;
      v24 = v41;
      result = outlined consume of _SymbolEffect.Trigger?(v5);
      v5 = v24;
      v9 = v16;
      v10 = v40;
      goto LABEL_6;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    return outlined consume of _SymbolEffect.Trigger?(v5);
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v39 = *(result + 16);
  if (v39)
  {
    v37 = v39 - 1;
    v38 = *(result + 8 * v37 + 32);
    *(result + 16) = v37;
    v3[5] = result;
    v3[2] = v38;
    return outlined consume of _SymbolEffect.Trigger?(v5);
  }

  __break(1u);
  return result;
}

void _SymbolEffect.BreatheConfiguration.encode(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 12);
  if ((~*v2 & 0xF000000000000006) == 0 || (outlined copy of _SymbolEffect.Trigger(v4), specialized ProtobufEncoder.messageField<A>(_:_:)(a2, v4), outlined consume of _SymbolEffect.Trigger?(v4), !v3))
  {
    if (v5)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(v5);
    }

    if ((v6 & 1) == 0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x18uLL);
      ProtobufEncoder.encodeVarint(_:)(0);
    }
  }
}

unint64_t _SymbolEffect.BounceConfiguration.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = 0xF000000000000006;
  v6 = *(result + 8);
  v7 = *(result + 16);
  if (v6 >= v7)
  {
LABEL_59:
    LODWORD(v8) = 0;
    LOBYTE(v9) = 1;
LABEL_60:
    v3[3] = 0;
    *a2 = v5;
    *(a2 + 8) = v8;
    *(a2 + 12) = v9;
    return result;
  }

  v8 = 0;
  v9 = 1;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v10 = v3[4];
      if (v6 < v10)
      {
        goto LABEL_11;
      }

      if (v10 < v6)
      {
        goto LABEL_61;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of _SymbolEffect.Trigger?(v5);
    }

    if (result <= 7)
    {
      goto LABEL_61;
    }

LABEL_11:
    v11 = result >> 3;
    if (result >> 3 != 2)
    {
      break;
    }

    if ((result & 7) != 0)
    {
      if ((result & 7) != 2)
      {
        goto LABEL_61;
      }

      v24 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of _SymbolEffect.Trigger?(v5);
      }

      if (v24 < 0)
      {
        goto LABEL_67;
      }

      v25 = v3[1] + v24;
      if (v7 < v25)
      {
LABEL_61:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        return outlined consume of _SymbolEffect.Trigger?(v5);
      }

      v3[3] = 16;
      v3[4] = v25;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of _SymbolEffect.Trigger?(v5);
    }

    v8 = result;
LABEL_4:
    v6 = v3[1];
    if (v6 >= v7)
    {
      goto LABEL_60;
    }
  }

  if (v11 == 3)
  {
    if ((result & 7) != 0)
    {
      if ((result & 7) != 2)
      {
        goto LABEL_61;
      }

      v22 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of _SymbolEffect.Trigger?(v5);
      }

      if (v22 < 0)
      {
        goto LABEL_66;
      }

      v23 = v3[1] + v22;
      if (v7 < v23)
      {
        goto LABEL_61;
      }

      v3[3] = 24;
      v3[4] = v23;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of _SymbolEffect.Trigger?(v5);
    }

    v9 = result != 0;
    goto LABEL_4;
  }

  if (v11 != 4)
  {
    v26 = result & 7;
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of _SymbolEffect.Trigger?(v5);
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_68;
        }

        v27 = v3[1] + result;
        if (v7 < v27)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v26 != 5)
        {
          goto LABEL_61;
        }

        v27 = v3[1] + 4;
        if (v7 < v27)
        {
          goto LABEL_61;
        }
      }
    }

    else
    {
      if ((result & 7) == 0)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of _SymbolEffect.Trigger?(v5);
        }

        goto LABEL_4;
      }

      if (v26 != 1)
      {
        goto LABEL_61;
      }

      v27 = v3[1] + 8;
      if (v7 < v27)
      {
        goto LABEL_61;
      }
    }

    v3[1] = v27;
    goto LABEL_4;
  }

  if ((result & 7) != 2)
  {
    goto LABEL_61;
  }

  v31 = v8;
  v12 = a2;
  v13 = v3[5];
  a2 = v9;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  *&v13[8 * v15 + 32] = v7;
  v3[5] = v13;
  v16 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return outlined consume of _SymbolEffect.Trigger?(v5);
  }

  if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = v3[1] + v16;
    if (v7 < v17)
    {
      goto LABEL_61;
    }

    v3[2] = v17;
    _SymbolEffect.Trigger.init(from:)(v3, &v32);
    v18 = v3[5];
    if (!*(v18 + 16))
    {
      goto LABEL_65;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v19 = *(v18 + 16);
      if (!v19)
      {
        goto LABEL_58;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
      v18 = result;
      v19 = *(result + 16);
      if (!v19)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    v20 = v19 - 1;
    v7 = *(v18 + 8 * v20 + 32);
    *(v18 + 16) = v20;
    v3[5] = v18;
    v3[2] = v7;
    v21 = v32;
    result = outlined consume of _SymbolEffect.Trigger?(v5);
    v5 = v21;
    v9 = a2;
    a2 = v12;
    v8 = v31;
    goto LABEL_4;
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v30 = *(result + 16);
  if (v30)
  {
    v28 = v30 - 1;
    v29 = *(result + 8 * v28 + 32);
    *(result + 16) = v28;
    v3[5] = result;
    v3[2] = v29;
    return outlined consume of _SymbolEffect.Trigger?(v5);
  }

  __break(1u);
  return result;
}

void _SymbolEffect.VariableColorConfiguration.encode(to:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  if ((~*v0 & 0xF000000000000006) == 0)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_3;
  }

  outlined copy of _SymbolEffect.Trigger(v2);
  specialized ProtobufEncoder.messageField<A>(_:_:)(3, v2);
  outlined consume of _SymbolEffect.Trigger?(v2);
  if (v1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
LABEL_3:
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(v3);
  }
}

unint64_t _SymbolEffect.VariableColorConfiguration.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = 0xF000000000000006;
  v6 = *(result + 8);
  v7 = *(result + 16);
  if (v6 >= v7)
  {
LABEL_50:
    v8 = 0;
LABEL_51:
    v3[3] = 0;
    *a2 = v5;
    *(a2 + 8) = v8;
    return result;
  }

  v8 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v9 = v3[4];
      if (v6 < v9)
      {
        goto LABEL_11;
      }

      if (v9 < v6)
      {
        goto LABEL_52;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of _SymbolEffect.Trigger?(v5);
    }

    if (result <= 7)
    {
      goto LABEL_52;
    }

LABEL_11:
    if (result >> 3 != 2)
    {
      break;
    }

    if ((result & 7) != 0)
    {
      if ((result & 7) != 2)
      {
        goto LABEL_52;
      }

      v19 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of _SymbolEffect.Trigger?(v5);
      }

      if (v19 < 0)
      {
        goto LABEL_57;
      }

      v20 = v3[1] + v19;
      if (v7 < v20)
      {
LABEL_52:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        return outlined consume of _SymbolEffect.Trigger?(v5);
      }

      v3[3] = 16;
      v3[4] = v20;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of _SymbolEffect.Trigger?(v5);
    }

    v8 = result;
LABEL_4:
    v6 = v3[1];
    if (v6 >= v7)
    {
      goto LABEL_51;
    }
  }

  if (result >> 3 != 3)
  {
    v21 = result & 7;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of _SymbolEffect.Trigger?(v5);
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_58;
        }

        v22 = v3[1] + result;
        if (v7 < v22)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v21 != 5)
        {
          goto LABEL_52;
        }

        v22 = v3[1] + 4;
        if (v7 < v22)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
      if ((result & 7) == 0)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of _SymbolEffect.Trigger?(v5);
        }

        goto LABEL_4;
      }

      if (v21 != 1)
      {
        goto LABEL_52;
      }

      v22 = v3[1] + 8;
      if (v7 < v22)
      {
        goto LABEL_52;
      }
    }

    v3[1] = v22;
    goto LABEL_4;
  }

  if ((result & 7) != 2)
  {
    goto LABEL_52;
  }

  v10 = v3[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  *&v10[8 * v12 + 32] = v7;
  v3[5] = v10;
  v13 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return outlined consume of _SymbolEffect.Trigger?(v5);
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = v3[1] + v13;
    if (v7 < v14)
    {
      goto LABEL_52;
    }

    v3[2] = v14;
    _SymbolEffect.Trigger.init(from:)(v3, &v26);
    v15 = v3[5];
    if (!*(v15 + 16))
    {
      goto LABEL_56;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v16 = *(v15 + 16);
      if (!v16)
      {
        goto LABEL_49;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
      v15 = result;
      v16 = *(result + 16);
      if (!v16)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    v17 = v16 - 1;
    v7 = *(v15 + 8 * v17 + 32);
    *(v15 + 16) = v17;
    v3[5] = v15;
    v3[2] = v7;
    v18 = v26;
    result = outlined consume of _SymbolEffect.Trigger?(v5);
    v5 = v18;
    goto LABEL_4;
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v25 = *(result + 16);
  if (v25)
  {
    v23 = v25 - 1;
    v24 = *(result + 8 * v23 + 32);
    *(result + 16) = v23;
    v3[5] = result;
    v3[2] = v24;
    return outlined consume of _SymbolEffect.Trigger?(v5);
  }

  __break(1u);
  return result;
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance _SymbolEffect.VariableColorConfiguration()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  if ((~*v0 & 0xF000000000000006) == 0)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_3;
  }

  outlined copy of _SymbolEffect.Trigger(v2);
  specialized ProtobufEncoder.messageField<A>(_:_:)(3, v2);
  outlined consume of _SymbolEffect.Trigger?(v2);
  if (v1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
LABEL_3:
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(v3);
  }
}

void _SymbolEffect.ScaleConfiguration.encode(to:)()
{
  v1 = *v0;
  if ((v1 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 4);
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v1);
    if (v2 != 1)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(0);
    }
  }
}

unint64_t _SymbolEffect.ScaleConfiguration.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v8 = 1;
LABEL_47:
    v3[3] = 0;
    *a2 = v7;
    *(a2 + 4) = v8;
    return result;
  }

  v7 = 0;
  v8 = 1;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v9 = v3[4];
      if (v5 < v9)
      {
        goto LABEL_11;
      }

      if (v9 < v5)
      {
        goto LABEL_45;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_45:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v10 = result & 7;
    if (result >> 3 == 2)
    {
      if ((result & 7) != 0)
      {
        if (v10 != 2)
        {
          goto LABEL_45;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_50;
        }

        v12 = v3[1] + result;
        if (v6 < v12)
        {
          goto LABEL_45;
        }

        v3[3] = 16;
        v3[4] = v12;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      v8 = result != 0;
      goto LABEL_4;
    }

    if (result >> 3 == 1)
    {
      break;
    }

    if ((result & 7) > 1)
    {
      if (v10 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_51;
        }

        v13 = v3[1] + result;
        if (v6 < v13)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v10 != 5)
        {
          goto LABEL_45;
        }

        v13 = v3[1] + 4;
        if (v6 < v13)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_3;
    }

    if ((result & 7) != 0)
    {
      if (v10 != 1)
      {
        goto LABEL_45;
      }

      v13 = v3[1] + 8;
      if (v6 < v13)
      {
        goto LABEL_45;
      }

LABEL_3:
      v3[1] = v13;
      goto LABEL_4;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_47;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_19:
    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result >> 31)
    {
      v7 = 0;
    }

    else
    {
      v7 = result;
    }

    goto LABEL_4;
  }

  if (v10 != 2)
  {
    goto LABEL_45;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v11 = v3[1] + result;
    if (v6 < v11)
    {
      goto LABEL_45;
    }

    v3[3] = 8;
    v3[4] = v11;
    goto LABEL_19;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance _SymbolEffect.ScaleConfiguration()
{
  v1 = *v0;
  if ((v1 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 4);
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v1);
    if ((v2 & 1) == 0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(0);
    }
  }
}

void _SymbolEffect.HiddenConfiguration.encode(to:)()
{
  v1 = *v0;
  v2 = v0[4];
  v3 = v0[5];
  if ((v0[6] & 1) == 0)
  {
    if (v0[5])
    {
      goto LABEL_3;
    }

LABEL_6:
    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)(0);
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  ProtobufEncoder.encodeVarint(_:)(8uLL);
  ProtobufEncoder.encodeVarint(_:)(1uLL);
  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v2)
  {
LABEL_4:
    v4 = 32;
    goto LABEL_9;
  }

LABEL_7:
  if (!v1)
  {
    return;
  }

  v4 = 16;
LABEL_9:
  ProtobufEncoder.encodeVarint(_:)(v4);
  ProtobufEncoder.encodeVarint(_:)(v1);
}

unint64_t _SymbolEffect.HiddenConfiguration.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
LABEL_4:
    v3[3] = 0;
    *a2 = v9;
    *(a2 + 4) = v8 & 1;
    *(a2 + 5) = v10;
    *(a2 + 6) = v7;
    return result;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 1;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v11 = v3[4];
      if (v5 < v11)
      {
        goto LABEL_13;
      }

      if (v11 < v5)
      {
        goto LABEL_64;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_64:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_13:
    v12 = result >> 3;
    v13 = result & 7;
    if (result >> 3 <= 2)
    {
      break;
    }

    if (v12 == 3)
    {
      if ((result & 7) != 0)
      {
        if (v13 != 2)
        {
          goto LABEL_64;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_69;
        }

        v18 = v3[1] + result;
        if (v6 < v18)
        {
          goto LABEL_64;
        }

        v3[3] = 24;
        v3[4] = v18;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      v10 = result != 0;
      goto LABEL_6;
    }

    if (v12 == 4)
    {
      if ((result & 7) != 0)
      {
        if (v13 != 2)
        {
          goto LABEL_64;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_67;
        }

        v15 = v3[1] + result;
        if (v6 < v15)
        {
          goto LABEL_64;
        }

        v3[3] = 32;
        v3[4] = v15;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      v8 = 1;
      v9 = result;
      goto LABEL_6;
    }

LABEL_34:
    if ((result & 7) > 1)
    {
      if (v13 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_70;
        }

        v16 = v3[1] + result;
        if (v6 < v16)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_64;
        }

        v16 = v3[1] + 4;
        if (v6 < v16)
        {
          goto LABEL_64;
        }
      }

      goto LABEL_5;
    }

    if ((result & 7) != 0)
    {
      if (v13 != 1)
      {
        goto LABEL_64;
      }

      v16 = v3[1] + 8;
      if (v6 < v16)
      {
        goto LABEL_64;
      }

LABEL_5:
      v3[1] = v16;
      goto LABEL_6;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

LABEL_6:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  if (v12 == 1)
  {
    if ((result & 7) != 0)
    {
      if (v13 != 2)
      {
        goto LABEL_64;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_68;
      }

      v17 = v3[1] + result;
      if (v6 < v17)
      {
        goto LABEL_64;
      }

      v3[3] = 8;
      v3[4] = v17;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    v7 = result != 0;
    goto LABEL_6;
  }

  if (v12 != 2)
  {
    goto LABEL_34;
  }

  if ((result & 7) == 0)
  {
LABEL_22:
    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    v9 = result;
    v8 = 0;
    goto LABEL_6;
  }

  if (v13 != 2)
  {
    goto LABEL_64;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v14 = v3[1] + result;
    if (v6 < v14)
    {
      goto LABEL_64;
    }

    v3[3] = 16;
    v3[4] = v14;
    goto LABEL_22;
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

void _SymbolEffect.ReplaceConfiguration.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 4);
  v6 = *(v2 + 2);
  if (v4)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v4);
  }

  if ((v5 & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(0);
  }

  if (v6 != 1.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
    v7 = a1[1];
    v8 = v7 + 4;
    if (__OFADD__(v7, 4))
    {
      __break(1u);
    }

    else if (a1[2] >= v8)
    {
      a1[1] = v8;
      *(*a1 + v7) = v6;
      return;
    }

    *ProtobufEncoder.growBufferSlow(to:)(v8) = v6;
  }
}

unint64_t _SymbolEffect.ReplaceConfiguration.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v8 = 1.0;
    v9 = 1;
LABEL_55:
    v3[3] = 0;
    *a2 = v7;
    *(a2 + 4) = v9;
    *(a2 + 8) = v8;
    return result;
  }

  v7 = 0;
  v8 = 1.0;
  v9 = 1;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v10 = v3[4];
      if (v5 < v10)
      {
        goto LABEL_11;
      }

      if (v10 < v5)
      {
        goto LABEL_53;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_53:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v11 = result >> 3;
    v12 = result & 7;
    if (result >> 3 == 3)
    {
      if (v12 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_58;
        }

        v15 = v3[1];
        if (v6 < v15 + result)
        {
          goto LABEL_53;
        }

        v3[3] = 29;
        v3[4] = v15 + result;
      }

      else
      {
        if (v12 != 5)
        {
          goto LABEL_53;
        }

        v15 = v3[1];
      }

      if (v6 < (v15 + 1))
      {
        goto LABEL_53;
      }

      v8 = *v15;
      v3[1] = v15 + 1;
      goto LABEL_4;
    }

    if (v11 == 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if ((result & 7) != 0)
      {
        if (v12 != 2)
        {
          goto LABEL_53;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        v13 = v3[1] + result;
        if (v6 < v13)
        {
          goto LABEL_53;
        }

        v3[3] = 8;
        v3[4] = v13;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      v7 = result;
    }

    else
    {
      if ((result & 7) > 1)
      {
        if (v12 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_60;
          }

          v16 = v3[1] + result;
          if (v6 < v16)
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (v12 != 5)
          {
            goto LABEL_53;
          }

          v16 = v3[1] + 4;
          if (v6 < v16)
          {
            goto LABEL_53;
          }
        }

        goto LABEL_3;
      }

      if ((result & 7) != 0)
      {
        if (v12 != 1)
        {
          goto LABEL_53;
        }

        v16 = v3[1] + 8;
        if (v6 < v16)
        {
          goto LABEL_53;
        }

LABEL_3:
        v3[1] = v16;
        goto LABEL_4;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }
    }

LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_55;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_28:
    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    v9 = result != 0;
    goto LABEL_4;
  }

  if (v12 != 2)
  {
    goto LABEL_53;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v14 = v3[1] + result;
    if (v6 < v14)
    {
      goto LABEL_53;
    }

    v3[3] = 16;
    v3[4] = v14;
    goto LABEL_28;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance _SymbolEffect.ReplaceConfiguration(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 4);
  v6 = *(v2 + 2);
  if (v4)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v4);
  }

  if ((v5 & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(0);
  }

  if (v6 != 1.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
    v7 = a1[1];
    v8 = v7 + 4;
    if (__OFADD__(v7, 4))
    {
      __break(1u);
    }

    else if (a1[2] >= v8)
    {
      a1[1] = v8;
      v9 = (*a1 + v7);
LABEL_9:
      *v9 = v6;
      return;
    }

    v9 = ProtobufEncoder.growBufferSlow(to:)(v8);
    goto LABEL_9;
  }
}

BOOL _SymbolEffect.isIndefinite.getter()
{
  if ((*(v0 + 36) & 1) == 0)
  {
    return (~*(v0 + 32) & 0x7F800000) == 0;
  }

  return (~*v0 & 0xF000000000000006) == 0 || *(v0 + 24) >> 12 > 5u;
}

BOOL specialized static _SymbolEffect.Options.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 4) != *(a2 + 4))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    if (*(a1 + 12) != *(a2 + 12))
    {
      v3 = 1;
    }

    return (v3 & 1) == 0;
  }

  return (*(a2 + 16) & 1) != 0;
}

uint64_t specialized static _SymbolEffect.HiddenConfiguration.== infix(_:_:)(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  result = 0;
  if (v3)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return result;
    }
  }

  else if (*(a2 + 4))
  {
    return result;
  }

  if (v2 == *a2 && ((v4 ^ *(a2 + 5)) & 1) == 0)
  {
    return v5 ^ *(a2 + 6) ^ 1u;
  }

  return result;
}

uint64_t specialized static _SymbolEffect.Phase.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  v7 = *(a1 + 28);
  v8 = *(a1 + 32);
  v39 = *(a1 + 36);
  v40 = *(a1 + 40);
  v38 = *(a1 + 41);
  v36 = *(a1 + 42);
  v34 = *(a1 + 44);
  v30 = *(a1 + 48);
  v33 = *(a1 + 52);
  v27 = *(a1 + 56);
  v28 = *(a1 + 61);
  v9 = *(a2 + 8);
  v10 = *(a2 + 12);
  v12 = *(a2 + 16);
  v11 = *(a2 + 20);
  v13 = *(a2 + 24);
  v14 = *(a2 + 28);
  v15 = *(a2 + 32);
  v16 = *(a2 + 36);
  v17 = *(a2 + 40);
  v37 = *(a2 + 41);
  v35 = *(a2 + 42);
  v19 = *(a2 + 44);
  v18 = *(a2 + 48);
  v31 = *(a1 + 60);
  v32 = *(a2 + 52);
  v25 = *(a2 + 56);
  v29 = *(a2 + 60);
  v26 = *(a2 + 61);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI13_SymbolEffectV5Added33_2975F89CBD28662DFA5DA6D958CBE343LLV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (v2 == v9 && ((v3 ^ v10) & 1) == 0 && v4 == v12)
  {
    if (v6)
    {
      if (!v13)
      {
        return 0;
      }
    }

    else
    {
      if (v5 == v11)
      {
        v21 = v13;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        return 0;
      }
    }

    if (v8)
    {
      if (!v15)
      {
        return 0;
      }
    }

    else
    {
      if (v7 == v14)
      {
        v22 = v15;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        return 0;
      }
    }

    if (v40)
    {
      result = 0;
      if ((v17 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (v17)
      {
        return result;
      }
    }

    if (v39 == v16 && ((v38 ^ v37) & 1) == 0 && ((v36 ^ v35) & 1) == 0 && v34 == v19)
    {
      if (v33)
      {
        if (!v32)
        {
          return 0;
        }
      }

      else
      {
        v23 = v32;
        if (v30 != v18)
        {
          v23 = 1;
        }

        if (v23)
        {
          return 0;
        }
      }

      if ((v31 & 1) == 0)
      {
        v24 = v29;
        if (v27 != v25)
        {
          v24 = 1;
        }

        if (v24)
        {
          return 0;
        }

        return v28 ^ v26 ^ 1u;
      }

      if (v29)
      {
        return v28 ^ v26 ^ 1u;
      }

      return 0;
    }
  }

  return result;
}