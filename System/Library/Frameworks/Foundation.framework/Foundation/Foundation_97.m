char *static RegexComponent<>.iso8601(timeZone:includingFractionalSeconds:dateSeparator:dateTimeSeparator:timeSeparator:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *a3;
  v11 = *a4;
  v12 = *a5;
  v73 = 0;
  v13 = one-time initialization token for cache;
  swift_unknownObjectRetain();
  if (v13 != -1)
  {
    swift_once();
  }

  v70 = 1;
  swift_unknownObjectRetain();
  *&v75 = v8;
  *(&v75 + 1) = v9;
  v69 = 0x10000;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v14 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v15 = *(v14 + 16);
  if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v17 & 1) != 0))
  {
    v61 = *(*(v15 + 56) + 16 * v16);
    v18 = *(*(v15 + 56) + 16 * v16);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v14 + 24));
    if (v18)
    {
LABEL_41:
      v74 = v61;
      v66 = v8;
      v67 = v9;
      result = Calendar.timeZone.setter(&v66);
      v51 = BYTE2(v69);
      v52 = v73 | 0x1B;
      *a6 = v12;
      *(a6 + 1) = a2 & 1;
      *(a6 + 2) = v51;
      *(a6 + 3) = v10;
      *(a6 + 4) = v11;
      *(a6 + 5) = v71;
      *(a6 + 7) = v72;
      *(a6 + 8) = v52;
      v53 = v75;
      *(a6 + 16) = v74;
      *(a6 + 32) = v53;
      return result;
    }
  }

  else
  {
    os_unfair_lock_unlock((v14 + 24));
  }

  v60 = v9;
  v62 = v12;
  v19 = type metadata accessor for _CalendarGregorian();
  v20 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
  v68 = 7;
  v66 = 0;
  v67 = 0;
  v65[0] = 0;
  v65[1] = 0;
  v63 = 0;
  v64 = 1;
  v21 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v68, &v66, v65, 0, 1, 0, 1, &v63);
  os_unfair_lock_lock((v14 + 24));
  v22 = *(v14 + 16);
  if (*(v22 + 16))
  {
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    if (v24)
    {
      v25 = *(*(v22 + 56) + 16 * v23);
      v12 = v62;
LABEL_40:
      v61 = v25;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v14 + 24));

      v9 = v60;
      goto LABEL_41;
    }
  }

  v57 = v11;
  v58 = v10;
  v59 = a2;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66 = *(v14 + 16);
  v27 = v66;
  v28 = specialized __RawDictionaryStorage.find<A>(_:)(7);
  v30 = *(v27 + 16);
  v31 = (v29 & 1) == 0;
  v32 = __OFADD__(v30, v31);
  v33 = v30 + v31;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    v11 = v29;
    if (*(v27 + 24) < v33)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
      v34 = v66;
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(7);
      if ((v11 & 1) == (v35 & 1))
      {
        goto LABEL_19;
      }

      v28 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v34 = v27;
LABEL_19:
      v10 = v58;
      a2 = v59;
      if (v11)
      {
LABEL_20:
        v36 = (*(v34 + 56) + 16 * v28);
        *v36 = v21;
        v36[1] = v20;
        swift_unknownObjectRelease();
LABEL_39:
        v12 = v62;
        *(v14 + 16) = v34;
        *&v25 = v21;
        *(&v25 + 1) = v20;
        v11 = v57;
        goto LABEL_40;
      }

LABEL_38:
      specialized _NativeDictionary._insert(at:key:value:)(v28, 7, v21, v34, v19, v20);
      goto LABEL_39;
    }
  }

  v54 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
  v37 = static _DictionaryStorage.copy(original:)();
  v34 = v37;
  if (!*(v27 + 16))
  {
LABEL_37:

    v28 = v54;
    v10 = v58;
    a2 = v59;
    if (v11)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

  result = (v37 + 64);
  v39 = (v27 + 64);
  v40 = ((1 << *(v34 + 32)) + 63) >> 6;
  if (v34 != v27 || result >= &v39[8 * v40])
  {
    result = memmove(result, v39, 8 * v40);
  }

  v41 = 0;
  *(v34 + 16) = *(v27 + 16);
  v42 = 1 << *(v27 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v27 + 64);
  v45 = (v42 + 63) >> 6;
  v55 = v45;
  if (v44)
  {
    do
    {
      v46 = __clz(__rbit64(v44));
      v56 = (v44 - 1) & v44;
LABEL_35:
      v49 = v46 | (v41 << 6);
      v50 = *(*(v27 + 56) + 16 * v49);
      *(*(v34 + 48) + v49) = *(*(v27 + 48) + v49);
      *(*(v34 + 56) + 16 * v49) = v50;
      result = swift_unknownObjectRetain();
      v45 = v55;
      v44 = v56;
    }

    while (v56);
  }

  v47 = v41;
  while (1)
  {
    v41 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v41 >= v45)
    {
      goto LABEL_37;
    }

    v48 = *(v27 + 64 + 8 * v41);
    ++v47;
    if (v48)
    {
      v46 = __clz(__rbit64(v48));
      v56 = (v48 - 1) & v48;
      goto LABEL_35;
    }
  }

  __break(1u);
  return result;
}

char *static RegexComponent<>.iso8601Date(timeZone:dateSeparator:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  v60 = 0;
  v8 = one-time initialization token for cache;
  swift_unknownObjectRetain();
  if (v8 != -1)
  {
    swift_once();
  }

  BYTE3(v59) = v7;
  BYTE4(v59) = 1;
  swift_unknownObjectRetain();
  *&v62 = v5;
  *(&v62 + 1) = v6;
  LOWORD(v59) = 0;
  BYTE2(v59) = 1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v9 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v10 = *(v9 + 16);
  if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v12 & 1) != 0))
  {
    v51 = *(*(v10 + 56) + 16 * v11);
    v13 = *(*(v10 + 56) + 16 * v11);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v9 + 24));
    if (v13)
    {
LABEL_41:
      v61 = v51;
      v56 = v5;
      v57 = v6;
      result = Calendar.timeZone.setter(&v56);
      v46 = v60 | 0xB;
      *a3 = v59;
      *(a3 + 8) = v46;
      v47 = v62;
      *(a3 + 16) = v61;
      *(a3 + 32) = v47;
      return result;
    }
  }

  else
  {
    os_unfair_lock_unlock((v9 + 24));
  }

  v14 = type metadata accessor for _CalendarGregorian();
  v15 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
  v58 = 7;
  v56 = 0;
  v57 = 0;
  v55[0] = 0;
  v55[1] = 0;
  v53 = 0;
  v54 = 1;
  v16 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v58, &v56, v55, 0, 1, 0, 1, &v53);
  os_unfair_lock_lock((v9 + 24));
  v17 = *(v9 + 16);
  if (*(v17 + 16))
  {
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 16 * v18);
LABEL_40:
      v51 = v20;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v9 + 24));

      goto LABEL_41;
    }
  }

  v52 = v6;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *(v9 + 16);
  v22 = v56;
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(7);
  v25 = *(v22 + 16);
  v26 = (v24 & 1) == 0;
  v27 = __OFADD__(v25, v26);
  v28 = v25 + v26;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    v3 = v24;
    if (*(v22 + 24) < v28)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, isUniquelyReferenced_nonNull_native);
      v29 = v56;
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(7);
      if ((v3 & 1) == (v30 & 1))
      {
        goto LABEL_19;
      }

      v23 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v29 = v22;
LABEL_19:
      v6 = v52;
      if (v3)
      {
LABEL_20:
        v31 = (*(v29 + 56) + 16 * v23);
        *v31 = v16;
        v31[1] = v15;
        swift_unknownObjectRelease();
LABEL_39:
        *(v9 + 16) = v29;
        *&v20 = v16;
        *(&v20 + 1) = v15;
        goto LABEL_40;
      }

LABEL_38:
      specialized _NativeDictionary._insert(at:key:value:)(v23, 7, v16, v29, v14, v15);
      goto LABEL_39;
    }
  }

  v48 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
  v32 = static _DictionaryStorage.copy(original:)();
  v29 = v32;
  if (!*(v22 + 16))
  {
LABEL_37:

    v23 = v48;
    v6 = v52;
    if (v3)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

  result = (v32 + 64);
  v34 = (v22 + 64);
  v35 = ((1 << *(v29 + 32)) + 63) >> 6;
  if (v29 != v22 || result >= &v34[8 * v35])
  {
    result = memmove(result, v34, 8 * v35);
  }

  v36 = 0;
  *(v29 + 16) = *(v22 + 16);
  v37 = 1 << *(v22 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v22 + 64);
  v40 = (v37 + 63) >> 6;
  v49 = v40;
  if (v39)
  {
    do
    {
      v41 = __clz(__rbit64(v39));
      v50 = (v39 - 1) & v39;
LABEL_35:
      v44 = v41 | (v36 << 6);
      v45 = *(*(v22 + 56) + 16 * v44);
      *(*(v29 + 48) + v44) = *(*(v22 + 48) + v44);
      *(*(v29 + 56) + 16 * v44) = v45;
      result = swift_unknownObjectRetain();
      v40 = v49;
      v39 = v50;
    }

    while (v50);
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
      goto LABEL_37;
    }

    v43 = *(v22 + 64 + 8 * v36);
    ++v42;
    if (v43)
    {
      v41 = __clz(__rbit64(v43));
      v50 = (v43 - 1) & v43;
      goto LABEL_35;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfCSS10FoundationE22_BlockSearchingOptionsV_Tt1g5Tf4g_nTm(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t specialized static Date.ISO8601FormatStyle.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v4 = a1[4];
  v5 = *(a1 + 1);
  v33 = *a1;
  v34 = *a2;
  v6 = a2[1];
  v35 = a2[3];
  v7 = a2[4];
  v8 = *(a2 + 1);
  v36 = *(a1 + 2);
  v37 = *(a2 + 2);
  v9 = a1[2] == 0;
  if (a1[2])
  {
    v10 = 0;
  }

  else
  {
    v10 = 58;
  }

  if (v9)
  {
    v11 = 0xE100000000000000;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  if (a2[2])
  {
    v12 = 0;
  }

  else
  {
    v12 = 58;
  }

  if (a2[2])
  {
    v13 = 0xE000000000000000;
  }

  else
  {
    v13 = 0xE100000000000000;
  }

  if (v10 == v12 && v11 == v13)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  v38 = v37;
  v39 = v36;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v16 = specialized static TimeZone.== infix(_:_:)(&v39, &v38);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v17 = 0;
  if ((v16 & 1) != 0 && v5 == v8)
  {
    if (v4)
    {
      v18 = 2577447;
    }

    else
    {
      v18 = 32;
    }

    if (v4)
    {
      v19 = 0xE300000000000000;
    }

    else
    {
      v19 = 0xE100000000000000;
    }

    if (v7)
    {
      v20 = 2577447;
    }

    else
    {
      v20 = 32;
    }

    if (v7)
    {
      v21 = 0xE300000000000000;
    }

    else
    {
      v21 = 0xE100000000000000;
    }

    if (v18 == v20 && v19 == v21)
    {

      if (v2 != v6)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v17 = 0;
      if (v22 & 1) == 0 || ((v2 ^ v6))
      {
        return v17 & 1;
      }
    }

    if (v3)
    {
      v23 = 0;
    }

    else
    {
      v23 = 45;
    }

    if (v3)
    {
      v24 = 0xE000000000000000;
    }

    else
    {
      v24 = 0xE100000000000000;
    }

    if (v35)
    {
      v25 = 0;
    }

    else
    {
      v25 = 45;
    }

    if (v35)
    {
      v26 = 0xE000000000000000;
    }

    else
    {
      v26 = 0xE100000000000000;
    }

    if (v23 == v25 && v24 == v26)
    {

LABEL_56:
      if (v33)
      {
        v28 = 0;
      }

      else
      {
        v28 = 58;
      }

      if (v33)
      {
        v29 = 0xE000000000000000;
      }

      else
      {
        v29 = 0xE100000000000000;
      }

      if (v34)
      {
        v30 = 0;
      }

      else
      {
        v30 = 58;
      }

      if (v34)
      {
        v31 = 0xE000000000000000;
      }

      else
      {
        v31 = 0xE100000000000000;
      }

      if (v28 == v30 && v29 == v31)
      {
        v17 = 1;
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return v17 & 1;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_56;
    }

LABEL_71:
    v17 = 0;
  }

  return v17 & 1;
}

unint64_t lazy protocol witness table accessor for type DateComponents.ISO8601FormatStyle.CodingKeys and conformance DateComponents.ISO8601FormatStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.CodingKeys and conformance DateComponents.ISO8601FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.CodingKeys and conformance DateComponents.ISO8601FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.CodingKeys and conformance DateComponents.ISO8601FormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.CodingKeys and conformance DateComponents.ISO8601FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.CodingKeys and conformance DateComponents.ISO8601FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.CodingKeys and conformance DateComponents.ISO8601FormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.CodingKeys and conformance DateComponents.ISO8601FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.CodingKeys and conformance DateComponents.ISO8601FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.CodingKeys and conformance DateComponents.ISO8601FormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.CodingKeys and conformance DateComponents.ISO8601FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.CodingKeys and conformance DateComponents.ISO8601FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.CodingKeys and conformance DateComponents.ISO8601FormatStyle.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.ISO8601FormatStyle.TimeZoneSeparator and conformance Date.ISO8601FormatStyle.TimeZoneSeparator()
{
  result = lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeZoneSeparator and conformance Date.ISO8601FormatStyle.TimeZoneSeparator;
  if (!lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeZoneSeparator and conformance Date.ISO8601FormatStyle.TimeZoneSeparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeZoneSeparator and conformance Date.ISO8601FormatStyle.TimeZoneSeparator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeZoneSeparator and conformance Date.ISO8601FormatStyle.TimeZoneSeparator;
  if (!lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeZoneSeparator and conformance Date.ISO8601FormatStyle.TimeZoneSeparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeZoneSeparator and conformance Date.ISO8601FormatStyle.TimeZoneSeparator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeZoneSeparator and conformance Date.ISO8601FormatStyle.TimeZoneSeparator;
  if (!lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeZoneSeparator and conformance Date.ISO8601FormatStyle.TimeZoneSeparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeZoneSeparator and conformance Date.ISO8601FormatStyle.TimeZoneSeparator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeZoneSeparator and conformance Date.ISO8601FormatStyle.TimeZoneSeparator;
  if (!lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeZoneSeparator and conformance Date.ISO8601FormatStyle.TimeZoneSeparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeZoneSeparator and conformance Date.ISO8601FormatStyle.TimeZoneSeparator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DateComponents.ISO8601FormatStyle.Fields and conformance DateComponents.ISO8601FormatStyle.Fields()
{
  result = lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.Fields and conformance DateComponents.ISO8601FormatStyle.Fields;
  if (!lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.Fields and conformance DateComponents.ISO8601FormatStyle.Fields)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.Fields and conformance DateComponents.ISO8601FormatStyle.Fields);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.Fields and conformance DateComponents.ISO8601FormatStyle.Fields;
  if (!lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.Fields and conformance DateComponents.ISO8601FormatStyle.Fields)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.Fields and conformance DateComponents.ISO8601FormatStyle.Fields);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.Fields and conformance DateComponents.ISO8601FormatStyle.Fields;
  if (!lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.Fields and conformance DateComponents.ISO8601FormatStyle.Fields)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.Fields and conformance DateComponents.ISO8601FormatStyle.Fields);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.Fields and conformance DateComponents.ISO8601FormatStyle.Fields;
  if (!lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.Fields and conformance DateComponents.ISO8601FormatStyle.Fields)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.Fields and conformance DateComponents.ISO8601FormatStyle.Fields);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.Fields and conformance DateComponents.ISO8601FormatStyle.Fields;
  if (!lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.Fields and conformance DateComponents.ISO8601FormatStyle.Fields)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.Fields and conformance DateComponents.ISO8601FormatStyle.Fields);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.Fields and conformance DateComponents.ISO8601FormatStyle.Fields;
  if (!lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.Fields and conformance DateComponents.ISO8601FormatStyle.Fields)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle.Fields and conformance DateComponents.ISO8601FormatStyle.Fields);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.ISO8601FormatStyle.DateTimeSeparator and conformance Date.ISO8601FormatStyle.DateTimeSeparator()
{
  result = lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateTimeSeparator and conformance Date.ISO8601FormatStyle.DateTimeSeparator;
  if (!lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateTimeSeparator and conformance Date.ISO8601FormatStyle.DateTimeSeparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateTimeSeparator and conformance Date.ISO8601FormatStyle.DateTimeSeparator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateTimeSeparator and conformance Date.ISO8601FormatStyle.DateTimeSeparator;
  if (!lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateTimeSeparator and conformance Date.ISO8601FormatStyle.DateTimeSeparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateTimeSeparator and conformance Date.ISO8601FormatStyle.DateTimeSeparator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateTimeSeparator and conformance Date.ISO8601FormatStyle.DateTimeSeparator;
  if (!lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateTimeSeparator and conformance Date.ISO8601FormatStyle.DateTimeSeparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateTimeSeparator and conformance Date.ISO8601FormatStyle.DateTimeSeparator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateTimeSeparator and conformance Date.ISO8601FormatStyle.DateTimeSeparator;
  if (!lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateTimeSeparator and conformance Date.ISO8601FormatStyle.DateTimeSeparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateTimeSeparator and conformance Date.ISO8601FormatStyle.DateTimeSeparator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.ISO8601FormatStyle.DateSeparator and conformance Date.ISO8601FormatStyle.DateSeparator()
{
  result = lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateSeparator and conformance Date.ISO8601FormatStyle.DateSeparator;
  if (!lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateSeparator and conformance Date.ISO8601FormatStyle.DateSeparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateSeparator and conformance Date.ISO8601FormatStyle.DateSeparator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateSeparator and conformance Date.ISO8601FormatStyle.DateSeparator;
  if (!lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateSeparator and conformance Date.ISO8601FormatStyle.DateSeparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateSeparator and conformance Date.ISO8601FormatStyle.DateSeparator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateSeparator and conformance Date.ISO8601FormatStyle.DateSeparator;
  if (!lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateSeparator and conformance Date.ISO8601FormatStyle.DateSeparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateSeparator and conformance Date.ISO8601FormatStyle.DateSeparator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateSeparator and conformance Date.ISO8601FormatStyle.DateSeparator;
  if (!lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateSeparator and conformance Date.ISO8601FormatStyle.DateSeparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.DateSeparator and conformance Date.ISO8601FormatStyle.DateSeparator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.ISO8601FormatStyle.TimeSeparator and conformance Date.ISO8601FormatStyle.TimeSeparator()
{
  result = lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeSeparator and conformance Date.ISO8601FormatStyle.TimeSeparator;
  if (!lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeSeparator and conformance Date.ISO8601FormatStyle.TimeSeparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeSeparator and conformance Date.ISO8601FormatStyle.TimeSeparator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeSeparator and conformance Date.ISO8601FormatStyle.TimeSeparator;
  if (!lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeSeparator and conformance Date.ISO8601FormatStyle.TimeSeparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeSeparator and conformance Date.ISO8601FormatStyle.TimeSeparator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeSeparator and conformance Date.ISO8601FormatStyle.TimeSeparator;
  if (!lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeSeparator and conformance Date.ISO8601FormatStyle.TimeSeparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeSeparator and conformance Date.ISO8601FormatStyle.TimeSeparator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeSeparator and conformance Date.ISO8601FormatStyle.TimeSeparator;
  if (!lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeSeparator and conformance Date.ISO8601FormatStyle.TimeSeparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ISO8601FormatStyle.TimeSeparator and conformance Date.ISO8601FormatStyle.TimeSeparator);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Date.ISO8601FormatStyle(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date.ISO8601FormatStyle and conformance Date.ISO8601FormatStyle();
  a1[2] = lazy protocol witness table accessor for type Date.ISO8601FormatStyle and conformance Date.ISO8601FormatStyle();
  result = lazy protocol witness table accessor for type Date.ISO8601FormatStyle and conformance Date.ISO8601FormatStyle();
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Date.ISO8601FormatStyle(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Date.ISO8601FormatStyle and conformance Date.ISO8601FormatStyle();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Date.ISO8601FormatStyle(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Date.ISO8601FormatStyle(uint64_t result, int a2, int a3)
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

char *DateComponents.ISO8601FormatStyle.timeZone.setter(_OWORD *a1)
{
  v3 = v1;
  swift_unknownObjectRelease();
  *(v3 + 32) = *a1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v5 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v8 & 1) != 0))
  {
    v44 = *(*(v6 + 56) + 16 * v7);
    v9 = *(*(v6 + 56) + 16 * v7);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v5 + 24));
    if (v9)
    {
LABEL_39:
      v42 = (v3 + 16);
      swift_unknownObjectRelease();
      *v42 = v44;
      v49 = v42[1];
      swift_unknownObjectRetain();
      return Calendar.timeZone.setter(&v49);
    }
  }

  else
  {
    os_unfair_lock_unlock((v5 + 24));
  }

  v10 = type metadata accessor for _CalendarGregorian();
  v11 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
  v50 = 7;
  v49 = 0uLL;
  v48[0] = 0;
  v48[1] = 0;
  v46 = 0;
  v47 = 1;
  v12 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v50, &v49, v48, 0, 1, 0, 1, &v46);
  os_unfair_lock_lock((v5 + 24));
  v13 = *(v5 + 16);
  if (*(v13 + 16))
  {
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 16 * v14);
LABEL_38:
      v44 = v16;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v5 + 24));

      goto LABEL_39;
    }
  }

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v49 = *(v5 + 16);
  v18 = v49;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(7);
  v21 = *(v18 + 16);
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    v2 = v20;
    if (*(v18 + 24) < v24)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
      v25 = v49;
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(7);
      if ((v2 & 1) == (v26 & 1))
      {
        goto LABEL_17;
      }

      v19 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v25 = v18;
LABEL_17:
      if (v2)
      {
LABEL_18:
        v27 = (*(v25 + 56) + 16 * v19);
        *v27 = v12;
        v27[1] = v11;
        swift_unknownObjectRelease();
LABEL_37:
        *(v5 + 16) = v25;
        *&v16 = v12;
        *(&v16 + 1) = v11;
        goto LABEL_38;
      }

LABEL_36:
      specialized _NativeDictionary._insert(at:key:value:)(v19, 7, v12, v25, v10, v11);
      goto LABEL_37;
    }
  }

  v43 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
  v28 = static _DictionaryStorage.copy(original:)();
  v25 = v28;
  if (!*(v18 + 16))
  {
LABEL_35:

    v19 = v43;
    if (v2)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

  result = (v28 + 64);
  v30 = (v18 + 64);
  v31 = ((1 << *(v25 + 32)) + 63) >> 6;
  if (v25 != v18 || result >= &v30[8 * v31])
  {
    result = memmove(result, v30, 8 * v31);
  }

  v32 = 0;
  *(v25 + 16) = *(v18 + 16);
  v33 = 1 << *(v18 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v18 + 64);
  v36 = (v33 + 63) >> 6;
  if (v35)
  {
    do
    {
      v37 = __clz(__rbit64(v35));
      v45 = (v35 - 1) & v35;
LABEL_33:
      v40 = v37 | (v32 << 6);
      v41 = *(*(v18 + 56) + 16 * v40);
      *(*(v25 + 48) + v40) = *(*(v18 + 48) + v40);
      *(*(v25 + 56) + 16 * v40) = v41;
      result = swift_unknownObjectRetain();
      v35 = v45;
    }

    while (v45);
  }

  v38 = v32;
  while (1)
  {
    v32 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v32 >= v36)
    {
      goto LABEL_35;
    }

    v39 = *(v18 + 64 + 8 * v32);
    ++v38;
    if (v39)
    {
      v37 = __clz(__rbit64(v39));
      v45 = (v39 - 1) & v39;
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t DateComponents.ISO8601FormatStyle.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v57 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation14DateComponentsV18ISO8601FormatStyleV10CodingKeysOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - v6;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DateComponents.ISO8601FormatStyle.CodingKeys and conformance DateComponents.ISO8601FormatStyle.CodingKeys();
  swift_unknownObjectRetain();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return swift_unknownObjectRelease();
  }

  LOBYTE(v58[0]) = 0;
  lazy protocol witness table accessor for type Date.ISO8601FormatStyle.TimeZoneSeparator and conformance Date.ISO8601FormatStyle.TimeZoneSeparator();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  BYTE2(v62) = v59[0];
  LOBYTE(v58[0]) = 1;
  lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v56 = v59[0];
  swift_unknownObjectRelease();
  v64 = v56;
  LOBYTE(v58[0]) = 2;
  lazy protocol witness table accessor for type DateComponents.ISO8601FormatStyle.Fields and conformance DateComponents.ISO8601FormatStyle.Fields();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(&v62 + 1) = *&v59[0];
  LOBYTE(v58[0]) = 3;
  lazy protocol witness table accessor for type Date.ISO8601FormatStyle.DateTimeSeparator and conformance Date.ISO8601FormatStyle.DateTimeSeparator();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  BYTE4(v62) = v59[0];
  LOBYTE(v59[0]) = 4;
  BYTE1(v62) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v58[0]) = 5;
  lazy protocol witness table accessor for type Date.ISO8601FormatStyle.DateSeparator and conformance Date.ISO8601FormatStyle.DateSeparator();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  BYTE3(v62) = v59[0];
  LOBYTE(v58[0]) = 6;
  lazy protocol witness table accessor for type Date.ISO8601FormatStyle.TimeSeparator and conformance Date.ISO8601FormatStyle.TimeSeparator();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  LOBYTE(v62) = v59[0];
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v9 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v10 = *(v9 + 16);
  if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v12 & 1) != 0))
  {
    v55 = *(*(v10 + 56) + 16 * v11);
    v13 = v55;
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v9 + 24));
    v14 = v56;
    if (v13)
    {
LABEL_44:
      v63 = v55;
      v59[0] = v14;
      swift_unknownObjectRetain();
      Calendar.timeZone.setter(v59);
      (*(v5 + 8))(v7, v4);
      v48 = v63;
      v58[0] = v62;
      v58[1] = v63;
      v49 = v64;
      v58[2] = v64;
      v50 = v57;
      *v57 = v62;
      v50[1] = v48;
      v50[2] = v49;
      outlined init with copy of DateComponents.ISO8601FormatStyle(v58, v59);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v59[0] = v62;
      v59[1] = v63;
      v59[2] = v64;
      return outlined destroy of DateComponents.ISO8601FormatStyle(v59);
    }
  }

  else
  {
    os_unfair_lock_unlock((v9 + 24));
  }

  v15 = type metadata accessor for _CalendarGregorian();
  v16 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
  v66 = 7;
  v59[0] = 0uLL;
  v58[0] = 0uLL;
  v60 = 0;
  v61 = 1;
  *&v56 = v16;
  v54 = v15;
  v17 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v66, v59, v58, 0, 1, 0, 1, &v60);
  os_unfair_lock_lock((v9 + 24));
  v18 = *(v9 + 16);
  if (*(v18 + 16))
  {
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    if (v20)
    {
      v21 = *(*(v18 + 56) + 16 * v19);
LABEL_43:
      v55 = v21;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v9 + 24));

      v14 = v64;
      goto LABEL_44;
    }
  }

  *&v55 = v17;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v59[0] = *(v9 + 16);
  v23 = *&v59[0];
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(7);
  v26 = *(v23 + 16);
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
    __break(1u);
    goto LABEL_25;
  }

  v65 = v24;
  if (*(v23 + 24) >= v28)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v29 = v23;
      v32 = v56;
      v33 = v55;
      if (v65)
      {
        goto LABEL_23;
      }

      goto LABEL_41;
    }

LABEL_25:
    v51 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
    v35 = static _DictionaryStorage.copy(original:)();
    v29 = v35;
    if (*(v23 + 16))
    {
      v36 = (v35 + 64);
      v37 = 1 << *(v29 + 32);
      v53 = (v23 + 64);
      v38 = (v37 + 63) >> 6;
      if (v29 != v23 || v36 >= &v53[8 * v38])
      {
        memmove(v36, v53, 8 * v38);
      }

      v39 = 0;
      *(v29 + 16) = *(v23 + 16);
      v40 = 1 << *(v23 + 32);
      v41 = -1;
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      v52 = v41 & *(v23 + 64);
      v42 = (v40 + 63) >> 6;
      while (v52)
      {
        v43 = __clz(__rbit64(v52));
        v52 &= v52 - 1;
LABEL_39:
        v46 = v43 | (v39 << 6);
        v47 = *(*(v23 + 56) + 16 * v46);
        *(*(v29 + 48) + v46) = *(*(v23 + 48) + v46);
        *(*(v29 + 56) + 16 * v46) = v47;
        swift_unknownObjectRetain();
      }

      v44 = v39;
      while (1)
      {
        v39 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        if (v39 >= v42)
        {
          goto LABEL_40;
        }

        v45 = *&v53[8 * v39];
        ++v44;
        if (v45)
        {
          v43 = __clz(__rbit64(v45));
          v52 = (v45 - 1) & v45;
          goto LABEL_39;
        }
      }

      __break(1u);
      goto LABEL_46;
    }

LABEL_40:

    v32 = v56;
    v33 = v55;
    v25 = v51;
    if (v65)
    {
      goto LABEL_23;
    }

LABEL_41:
    specialized _NativeDictionary._insert(at:key:value:)(v25, 7, v33, v29, v54, v32);
    goto LABEL_42;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, isUniquelyReferenced_nonNull_native);
  v29 = *&v59[0];
  v30 = specialized __RawDictionaryStorage.find<A>(_:)(7);
  if ((v65 & 1) == (v31 & 1))
  {
    v25 = v30;
    v32 = v56;
    v33 = v55;
    if ((v65 & 1) == 0)
    {
      goto LABEL_41;
    }

LABEL_23:
    v34 = (*(v29 + 56) + 16 * v25);
    *v34 = v33;
    v34[1] = v32;
    swift_unknownObjectRelease();
LABEL_42:
    *(v9 + 16) = v29;
    *&v21 = v33;
    *(&v21 + 1) = v32;
    goto LABEL_43;
  }

LABEL_46:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t DateComponents.ISO8601FormatStyle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation14DateComponentsV18ISO8601FormatStyleV10CodingKeysOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v15 = *v1;
  v21 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v17 = v1[4];
  v18 = v9;
  v16 = *(v1 + 1);
  v19 = *(v1 + 2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DateComponents.ISO8601FormatStyle.CodingKeys and conformance DateComponents.ISO8601FormatStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20) = v8;
  v22 = 0;
  lazy protocol witness table accessor for type Date.ISO8601FormatStyle.TimeZoneSeparator and conformance Date.ISO8601FormatStyle.TimeZoneSeparator();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = v16;
    v11 = v17;
    v12 = v18;
    v20 = v19;
    v22 = 1;
    lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
    swift_unknownObjectRetain();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_unknownObjectRelease();
    *&v20 = v10;
    v22 = 2;
    lazy protocol witness table accessor for type DateComponents.ISO8601FormatStyle.Fields and conformance DateComponents.ISO8601FormatStyle.Fields();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v20) = v11;
    v22 = 3;
    lazy protocol witness table accessor for type Date.ISO8601FormatStyle.DateTimeSeparator and conformance Date.ISO8601FormatStyle.DateTimeSeparator();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v20) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v20) = v12;
    v22 = 5;
    lazy protocol witness table accessor for type Date.ISO8601FormatStyle.DateSeparator and conformance Date.ISO8601FormatStyle.DateSeparator();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v20) = v15;
    v22 = 6;
    lazy protocol witness table accessor for type Date.ISO8601FormatStyle.TimeSeparator and conformance Date.ISO8601FormatStyle.TimeSeparator();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

char *DateComponents.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t *a6@<X5>, _OWORD *a7@<X8>)
{
  v9 = *a1;
  v10 = *a2;
  v11 = *a3;
  v12 = *a4;
  v13 = *a6;
  v14 = a6[1];
  *(&v65 + 1) = 0;
  if (one-time initialization token for cache != -1)
  {
    v7 = a5;
    swift_once();
    a5 = v7;
  }

  BYTE3(v65) = v9;
  BYTE4(v65) = v10;
  *&v67 = v13;
  *(&v67 + 1) = v14;
  LOBYTE(v65) = v11;
  BYTE2(v65) = v12;
  BYTE1(v65) = a5 & 1;
  v15 = one-time initialization token for cache;
  swift_unknownObjectRetain();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v17 = *(v16 + 16);
  if (*(v17 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v19 & 1) != 0))
  {
    v57 = *(*(v17 + 56) + 16 * v18);
    v20 = *(*(v17 + 56) + 16 * v18);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v16 + 24));
    if (v20)
    {
LABEL_41:
      v66 = v57;
      v62 = v13;
      v63 = v14;
      result = Calendar.timeZone.setter(&v62);
      v53 = v66;
      *a7 = v65;
      a7[1] = v53;
      a7[2] = v67;
      return result;
    }
  }

  else
  {
    os_unfair_lock_unlock((v16 + 24));
  }

  v21 = type metadata accessor for _CalendarGregorian();
  v22 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
  v64 = 7;
  v62 = 0;
  v63 = 0;
  v61[0] = 0;
  v61[1] = 0;
  v59 = 0;
  v60 = 1;
  v23 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v64, &v62, v61, 0, 1, 0, 1, &v59);
  os_unfair_lock_lock((v16 + 24));
  v24 = *(v16 + 16);
  if (*(v24 + 16))
  {
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    if (v26)
    {
      v27 = *(*(v24 + 56) + 16 * v25);
LABEL_40:
      v57 = v27;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v16 + 24));

      goto LABEL_41;
    }
  }

  v58 = v14;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = *(v16 + 16);
  v29 = v62;
  v30 = specialized __RawDictionaryStorage.find<A>(_:)(7);
  v32 = *(v29 + 16);
  v33 = (v31 & 1) == 0;
  v34 = __OFADD__(v32, v33);
  v35 = v32 + v33;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    v7 = v31;
    if (*(v29 + 24) < v35)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, isUniquelyReferenced_nonNull_native);
      v36 = v62;
      v30 = specialized __RawDictionaryStorage.find<A>(_:)(7);
      if ((v7 & 1) == (v37 & 1))
      {
        goto LABEL_19;
      }

      v30 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v36 = v29;
LABEL_19:
      v14 = v58;
      if (v7)
      {
LABEL_20:
        v38 = (*(v36 + 56) + 16 * v30);
        *v38 = v23;
        v38[1] = v22;
        swift_unknownObjectRelease();
LABEL_39:
        *(v16 + 16) = v36;
        *&v27 = v23;
        *(&v27 + 1) = v22;
        goto LABEL_40;
      }

LABEL_38:
      specialized _NativeDictionary._insert(at:key:value:)(v30, 7, v23, v36, v21, v22);
      goto LABEL_39;
    }
  }

  v54 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
  v39 = static _DictionaryStorage.copy(original:)();
  v36 = v39;
  if (!*(v29 + 16))
  {
LABEL_37:

    v30 = v54;
    v14 = v58;
    if (v7)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

  result = (v39 + 64);
  v41 = (v29 + 64);
  v42 = ((1 << *(v36 + 32)) + 63) >> 6;
  if (v36 != v29 || result >= &v41[8 * v42])
  {
    result = memmove(result, v41, 8 * v42);
  }

  v43 = 0;
  *(v36 + 16) = *(v29 + 16);
  v44 = 1 << *(v29 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v29 + 64);
  v47 = (v44 + 63) >> 6;
  v55 = v47;
  if (v46)
  {
    do
    {
      v48 = __clz(__rbit64(v46));
      v56 = (v46 - 1) & v46;
LABEL_35:
      v51 = v48 | (v43 << 6);
      v52 = *(*(v29 + 56) + 16 * v51);
      *(*(v36 + 48) + v51) = *(*(v29 + 48) + v51);
      *(*(v36 + 56) + 16 * v51) = v52;
      result = swift_unknownObjectRetain();
      v47 = v55;
      v46 = v56;
    }

    while (v56);
  }

  v49 = v43;
  while (1)
  {
    v43 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v43 >= v47)
    {
      goto LABEL_37;
    }

    v50 = *(v29 + 64 + 8 * v43);
    ++v49;
    if (v50)
    {
      v48 = __clz(__rbit64(v50));
      v56 = (v50 - 1) & v50;
      goto LABEL_35;
    }
  }

  __break(1u);
  return result;
}

uint64_t DateComponents.ISO8601FormatStyle.year()@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v7[0] = v2;
  v7[1] = v3;
  v8 = v1[2];
  v4 = v8;
  *a1 = v2;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  if ((BYTE8(v2) & 1) == 0)
  {
    *(a1 + 8) = *(&v2 + 1) | 1;
  }

  return outlined init with copy of DateComponents.ISO8601FormatStyle(v7, &v6);
}

uint64_t DateComponents.ISO8601FormatStyle.weekOfYear()@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v7[0] = v2;
  v7[1] = v3;
  v8 = v1[2];
  v4 = v8;
  *a1 = v2;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  if ((BYTE8(v2) & 4) == 0)
  {
    *(a1 + 8) = *(&v2 + 1) | 4;
  }

  return outlined init with copy of DateComponents.ISO8601FormatStyle(v7, &v6);
}

uint64_t DateComponents.ISO8601FormatStyle.month()@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v7[0] = v2;
  v7[1] = v3;
  v8 = v1[2];
  v4 = v8;
  *a1 = v2;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  if ((BYTE8(v2) & 2) == 0)
  {
    *(a1 + 8) = *(&v2 + 1) | 2;
  }

  return outlined init with copy of DateComponents.ISO8601FormatStyle(v7, &v6);
}

uint64_t DateComponents.ISO8601FormatStyle.day()@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v7[0] = v2;
  v7[1] = v3;
  v8 = v1[2];
  v4 = v8;
  *a1 = v2;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  if ((BYTE8(v2) & 8) == 0)
  {
    *(a1 + 8) = *(&v2 + 1) | 8;
  }

  return outlined init with copy of DateComponents.ISO8601FormatStyle(v7, &v6);
}

uint64_t DateComponents.ISO8601FormatStyle.time(includingFractionalSeconds:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v8[0] = v3;
  v8[1] = v4;
  v9 = v2[2];
  v5 = v9;
  *a2 = v3;
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  if ((BYTE8(v3) & 0x10) == 0)
  {
    *(a2 + 8) = *(&v3 + 1) | 0x10;
  }

  *(a2 + 1) = a1 & 1;
  return outlined init with copy of DateComponents.ISO8601FormatStyle(v8, &v7);
}

uint64_t DateComponents.ISO8601FormatStyle.timeZone(separator:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *v2;
  v5 = v2[1];
  v9[0] = v4;
  v9[1] = v5;
  v10 = v2[2];
  v6 = v10;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  if ((BYTE8(v4) & 0x20) == 0)
  {
    *(a2 + 8) = *(&v4 + 1) | 0x20;
  }

  *(a2 + 2) = v3;
  return outlined init with copy of DateComponents.ISO8601FormatStyle(v9, &v8);
}

uint64_t DateComponents.ISO8601FormatStyle.dateSeparator(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  v9 = v2[2];
  v5 = v9;
  *a2 = v8[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  *(a2 + 3) = v3;
  return outlined init with copy of DateComponents.ISO8601FormatStyle(v8, &v7);
}

uint64_t DateComponents.ISO8601FormatStyle.dateTimeSeparator(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  v9 = v2[2];
  v5 = v9;
  *a2 = v8[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  *(a2 + 4) = v3;
  return outlined init with copy of DateComponents.ISO8601FormatStyle(v8, &v7);
}

uint64_t DateComponents.ISO8601FormatStyle.timeSeparator(_:)@<X0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  v9 = v2[2];
  v5 = v9;
  *a2 = v8[0];
  a2[1] = v4;
  a2[2] = v5;
  *a2 = v3;
  return outlined init with copy of DateComponents.ISO8601FormatStyle(v8, &v7);
}

uint64_t DateComponents.ISO8601FormatStyle.timeZoneSeparator(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  v9 = v2[2];
  v5 = v9;
  *a2 = v8[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  *(a2 + 2) = v3;
  return outlined init with copy of DateComponents.ISO8601FormatStyle(v8, &v7);
}

uint64_t protocol witness for Decodable.init(from:) in conformance DateComponents.ISO8601FormatStyle.Fields@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  __swift_destroy_boxed_opaque_existential_1(v7);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v5;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DateComponents.ISO8601FormatStyle.CodingKeys()
{
  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DateComponents.ISO8601FormatStyle.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DateComponents.ISO8601FormatStyle.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DateComponents.ISO8601FormatStyle.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656E6F5A656D6974;
  v5 = 0x6170655365746164;
  v6 = 0xED0000726F746172;
  if (v2 != 5)
  {
    v5 = 0x61706553656D6974;
    v6 = 0xED0000726F746172;
  }

  v7 = 0xD000000000000011;
  v8 = 0x800000018147D320;
  if (v2 != 3)
  {
    v7 = 0xD00000000000001ALL;
    v8 = 0x800000018147D340;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  if (v2 != 1)
  {
    v4 = 0x73646C656966;
    v3 = 0xE600000000000000;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x800000018147D2F0;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance DateComponents.ISO8601FormatStyle.CodingKeys()
{
  v1 = *v0;
  v2 = 0x656E6F5A656D6974;
  v3 = 0x6170655365746164;
  if (v1 != 5)
  {
    v3 = 0x61706553656D6974;
  }

  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x73646C656966;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance DateComponents.ISO8601FormatStyle.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized DateComponents.ISO8601FormatStyle.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DateComponents.ISO8601FormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DateComponents.ISO8601FormatStyle.CodingKeys and conformance DateComponents.ISO8601FormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DateComponents.ISO8601FormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DateComponents.ISO8601FormatStyle.CodingKeys and conformance DateComponents.ISO8601FormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateComponents.ISO8601FormatStyle.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 1);
  v4 = *(v1 + 8);
  v5 = *(v1 + 40);
  String.hash(into:)();

  ObjectType = swift_getObjectType();
  (*(v5 + 120))(a1, ObjectType, v5);
  MEMORY[0x1865CD060](v4);
  String.hash(into:)();

  Hasher._combine(_:)(v3);
  String.hash(into:)();

  String.hash(into:)();
}

char *DateComponents.ISO8601FormatStyle.timeZone.modify(char *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = result;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v4 = qword_1ED440450;
    os_unfair_lock_lock((qword_1ED440450 + 24));
    v5 = *(v4 + 16);
    if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v7 & 1) != 0))
    {
      v41 = *(*(v5 + 56) + 16 * v6);
      v8 = *(*(v5 + 56) + 16 * v6);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v4 + 24));
      if (v8)
      {
LABEL_39:
        v38 = (*v3 + 16);
        swift_unknownObjectRelease();
        *v38 = v41;
        v47 = v38[1];
        swift_unknownObjectRetain();
        return Calendar.timeZone.setter(&v47);
      }
    }

    else
    {
      os_unfair_lock_unlock((v4 + 24));
    }

    v9 = type metadata accessor for _CalendarGregorian();
    v10 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
    v43 = 7;
    v44[0] = 0;
    v44[1] = 0;
    v47 = 0uLL;
    v45 = 0;
    v46 = 1;
    v11 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v43, v44, &v47, 0, 1, 0, 1, &v45);
    os_unfair_lock_lock((v4 + 24));
    v12 = *(v4 + 16);
    if (*(v12 + 16))
    {
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(7);
      if (v14)
      {
        v15 = *(*(v12 + 56) + 16 * v13);
LABEL_38:
        v41 = v15;
        swift_unknownObjectRetain();
        os_unfair_lock_unlock((v4 + 24));

        goto LABEL_39;
      }
    }

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v47 = *(v4 + 16);
    v17 = v47;
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    v20 = *(v17 + 16);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      __break(1u);
    }

    else
    {
      v2 = v19;
      if (*(v17 + 24) < v23)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
        v24 = v47;
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(7);
        if ((v2 & 1) == (v25 & 1))
        {
          goto LABEL_18;
        }

        v18 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v24 = v17;
LABEL_18:
        if (v2)
        {
LABEL_19:
          v26 = (*(v24 + 56) + 16 * v18);
          *v26 = v11;
          v26[1] = v10;
          swift_unknownObjectRelease();
LABEL_37:
          *(v4 + 16) = v24;
          *&v15 = v11;
          *(&v15 + 1) = v10;
          goto LABEL_38;
        }

LABEL_36:
        specialized _NativeDictionary._insert(at:key:value:)(v18, 7, v11, v24, v9, v10);
        goto LABEL_37;
      }
    }

    v39 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
    v27 = static _DictionaryStorage.copy(original:)();
    v24 = v27;
    v28 = *(v17 + 16);
    if (!v28)
    {
LABEL_35:

      v18 = v39;
      if (v2)
      {
        goto LABEL_19;
      }

      goto LABEL_36;
    }

    result = (v27 + 64);
    __src = (v17 + 64);
    v29 = ((1 << *(v24 + 32)) + 63) >> 6;
    if (v24 != v17 || result >= &__src[8 * v29])
    {
      result = memmove(result, __src, 8 * v29);
      v28 = *(v17 + 16);
    }

    v30 = 0;
    *(v24 + 16) = v28;
    v31 = 1 << *(v17 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = (v31 + 63) >> 6;
    v34 = v32 & *(v17 + 64);
    if (v34)
    {
      do
      {
LABEL_33:
        v42 = (v34 - 1) & v34;
        v36 = __clz(__rbit64(v34)) | (v30 << 6);
        v37 = *(*(v17 + 56) + 16 * v36);
        *(*(v24 + 48) + v36) = *(*(v17 + 48) + v36);
        *(*(v24 + 56) + 16 * v36) = v37;
        result = swift_unknownObjectRetain();
        v34 = v42;
      }

      while (v42);
    }

    v35 = v30;
    while (1)
    {
      v30 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v30 >= v33)
      {
        goto LABEL_35;
      }

      v34 = *&__src[8 * v30];
      ++v35;
      if (v34)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int DateComponents.ISO8601FormatStyle.hashValue.getter()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 8);
  v3 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  ObjectType = swift_getObjectType();
  (*(v3 + 120))(v6, ObjectType, v3);
  MEMORY[0x1865CD060](v2);
  String.hash(into:)();

  Hasher._combine(_:)(v1);
  String.hash(into:)();

  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DateComponents.ISO8601FormatStyle()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 8);
  v3 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  ObjectType = swift_getObjectType();
  (*(v3 + 120))(v6, ObjectType, v3);
  MEMORY[0x1865CD060](v2);
  String.hash(into:)();

  Hasher._combine(_:)(v1);
  String.hash(into:)();

  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t DateComponents.ISO8601FormatStyle.format(_:)(void *__src)
{
  v25 = *MEMORY[0x1E69E9840];
  memcpy(__dst, __src, 0x11BuLL);
  v3 = v1[1];
  v19[0] = *v1;
  v19[1] = v3;
  v19[2] = v1[2];
  if (*(&v19[0] + 1))
  {
    v4 = (BYTE8(v19[0]) & 0x20) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    goto LABEL_8;
  }

  v18 = v1[2];
  v5 = *(&v18 + 1);
  ObjectType = swift_getObjectType();
  v7 = *(*(&v18 + 1) + 48);
  outlined init with copy of TimeZone(&v18, v20);
  v8 = v7(ObjectType, v5);
  if ((v9 & 1) == 0)
  {
LABEL_10:
    v13 = v8;
    outlined destroy of TimeZone(&v18);
    v14 = 0;
    goto LABEL_11;
  }

  v17 = v1[1];
  v10 = *(&v17 + 1);
  v11 = swift_getObjectType();
  memcpy(v20, __src, 0x11BuLL);
  v12 = *(*(&v17 + 1) + 176);
  outlined init with copy of Calendar(&v17, v16);
  v12(&v21, v20, v11, v10);
  outlined destroy of Calendar(&v17);
  if ((v22 & 1) == 0)
  {
    v20[0] = v21;
    v8 = (*(v5 + 40))(v20, ObjectType, v5);
    goto LABEL_10;
  }

  outlined destroy of TimeZone(&v18);
LABEL_8:
  v13 = 0;
  v14 = 1;
LABEL_11:
  v16[0] = 0;
  closure #1 in DateComponents.ISO8601FormatStyle.format(_:appendingTimeZoneOffset:)(v23, 129, v19, __dst, v16, v13, v14, v20);
  return v20[0];
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance DateComponents.ISO8601FormatStyle@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DateComponents.ISO8601FormatStyle.format(_:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

id DateComponents.ISO8601FormatStyle.parse(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v82 = *MEMORY[0x1E69E9840];
  v7 = v3[1];
  v74 = *v3;
  v75 = v7;
  v76 = v3[2];
  DateComponents.ISO8601FormatStyle.parse(_:fillMissingUnits:in:)(a1, a2, 0, v80);
  if (_s10Foundation17LocalePreferencesVSgWOg(v80) != 1)
  {
    return memcpy(a3, v81, 0x11BuLL);
  }

  v77 = v74;
  v78 = v75;
  v79 = v76;
  v72.tv_sec = 0;
  v72.tv_nsec = 0;
  outlined init with copy of DateComponents.ISO8601FormatStyle(&v74, v73);
  clock_gettime(_CLOCK_REALTIME, &v72);
  *&v72.tv_sec = v72.tv_sec + -978307200.0 + v72.tv_nsec * 0.000000001;
  v8 = Date.ISO8601FormatStyle.format(_:)(v72.tv_sec);
  v73[0] = v77;
  v73[1] = v78;
  v73[2] = v79;
  outlined destroy of Date.ISO8601FormatStyle(v73);
  *&v77 = 0;
  *(&v77 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(89);
  MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
  MEMORY[0x1865CB0E0](a1, a2);
  MEMORY[0x1865CB0E0](46, 0xE100000000000000);
  MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
  MEMORY[0x1865CB0E0](v8._countAndFlagsBits, v8._object);
  MEMORY[0x1865CB0E0](46, 0xE100000000000000);
  v9 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  v10 = swift_allocObject();
  isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
  v12 = @"NSDebugDescription";
  v13 = v12;
  if (!isTaggedPointer)
  {
    goto LABEL_8;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v12);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_18;
    case 0x16:
      result = [(__CFString *)v13 UTF8String];
      if (!result)
      {
        __break(1u);
        goto LABEL_99;
      }

      v22 = String.init(utf8String:)(result);
      if (v23)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_18:
      _CFIndirectTaggedPointerStringGetContents();
      v22 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v23)
      {
        [(__CFString *)v13 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        tv_sec = v72.tv_sec;
        tv_nsec = v72.tv_nsec;
        goto LABEL_24;
      }

LABEL_19:
      tv_sec = v22;
      tv_nsec = v23;

      goto LABEL_24;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      tv_sec = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      tv_nsec = v16;

      goto LABEL_24;
  }

LABEL_8:
  LOBYTE(v72.tv_sec) = 0;
  *&v77 = 0;
  if (!__CFStringIsCF())
  {
    v19 = v13;
    v20 = String.init(_nativeStorage:)();
    if (v21)
    {
      tv_sec = v20;
      tv_nsec = v21;

      goto LABEL_24;
    }

    *&v77 = [(__CFString *)v19 length];
    if (v77)
    {
      goto LABEL_23;
    }

LABEL_14:
    tv_sec = 0;
    tv_nsec = 0xE000000000000000;
    goto LABEL_24;
  }

  if (!v77)
  {

    goto LABEL_14;
  }

LABEL_23:
  tv_sec = String.init(_cocoaString:)();
  tv_nsec = v24;
LABEL_24:
  *(v10 + 32) = tv_sec;
  *(v10 + 40) = tv_nsec;
  *(v10 + 72) = MEMORY[0x1E69E6158];
  *(v10 + 48) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v25 = static _DictionaryStorage.allocate(capacity:)();
  outlined init with copy of FloatingPointRoundingRule?(v10 + 32, &v77, &_sSS_yptMd);
  swift_setDeallocating();

  outlined destroy of TermOfAddress?(v10 + 32, &_sSS_yptMd);
  swift_deallocClassInstance();
  v26 = v77;
  v27 = specialized __RawDictionaryStorage.find<A>(_:)(v77, *(&v77 + 1));
  v29 = v28;

  if (v29)
  {
    __break(1u);
    goto LABEL_96;
  }

  v25[(v27 >> 6) + 8] |= 1 << v27;
  *(v25[6] + 16 * v27) = v26;
  outlined init with take of Any(&v78, (v25[7] + 32 * v27));
  v30 = v25[2];
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v25[2] = v32;
  v33 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v34 = @"NSCocoaErrorDomain";
  v35 = v34;
  if (!v33)
  {
    goto LABEL_31;
  }

  v36 = _objc_getTaggedPointerTag(v34);
  switch(v36)
  {
    case 0:
LABEL_40:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v40)
      {
        [(__CFString *)v35 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_46;
      }

      goto LABEL_41;
    case 0x16:
      result = [(__CFString *)v35 UTF8String];
      if (result)
      {
        String.init(utf8String:)(result);
        if (v39)
        {
          goto LABEL_41;
        }

        __break(1u);
        goto LABEL_40;
      }

LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    case 2:
      MEMORY[0x1EEE9AC00](v36);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_46;
  }

LABEL_31:
  LOBYTE(v72.tv_sec) = 0;
  *&v77 = 0;
  if (!__CFStringIsCF())
  {
    v37 = v35;
    String.init(_nativeStorage:)();
    if (v38 || (*&v77 = [(__CFString *)v37 length], !v77))
    {

      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (!v77)
  {
LABEL_41:

    goto LABEL_46;
  }

LABEL_45:
  String.init(_cocoaString:)();
LABEL_46:
  v41 = objc_allocWithZone(NSError);
  v42 = String._bridgeToObjectiveCImpl()();

  v43 = [v41 initWithDomain:v42 code:2048 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v44 = [v43 domain];
  if (!v44)
  {
    goto LABEL_58;
  }

  v45 = v44;
  v46 = _objc_isTaggedPointer(v44);
  v47 = v45;
  v48 = v47;
  if ((v46 & 1) == 0)
  {
LABEL_52:
    LOBYTE(v72.tv_sec) = 0;
    *&v77 = 0;
    if (__CFStringIsCF())
    {
      if (v77)
      {
LABEL_67:
        v50 = String.init(_cocoaString:)();
        v52 = v58;
        goto LABEL_68;
      }
    }

    else
    {
      v53 = v48;
      v54 = String.init(_nativeStorage:)();
      if (v55)
      {
        v50 = v54;
        v52 = v55;

        goto LABEL_69;
      }

      *&v77 = [v53 length];
      if (v77)
      {
        goto LABEL_67;
      }
    }

LABEL_58:
    v50 = 0;
    v52 = 0xE000000000000000;
    goto LABEL_69;
  }

  v49 = _objc_getTaggedPointerTag(v47);
  if (!v49)
  {
    goto LABEL_62;
  }

  if (v49 != 22)
  {
    if (v49 == 2)
    {
      MEMORY[0x1EEE9AC00](v49);
      v50 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v52 = v51;

LABEL_69:
      v59 = v35;
      v60 = v59;
      if (!v33)
      {
        goto LABEL_74;
      }

      v61 = _objc_getTaggedPointerTag(v59);
      if (!v61)
      {
        goto LABEL_84;
      }

      if (v61 != 22)
      {
        if (v61 == 2)
        {
          MEMORY[0x1EEE9AC00](v61);
          v62 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v64 = v63;

          goto LABEL_90;
        }

LABEL_74:
        LOBYTE(v72.tv_sec) = 0;
        *&v77 = 0;
        if (__CFStringIsCF())
        {
          if (v77)
          {
LABEL_89:
            v62 = String.init(_cocoaString:)();
            v64 = v70;
LABEL_90:
            if (v50 == v62 && v52 == v64)
            {

              return swift_willThrow();
            }

            v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v71)
            {
              return swift_willThrow();
            }

LABEL_97:
            __break(1u);
          }
        }

        else
        {
          v65 = v60;
          v66 = String.init(_nativeStorage:)();
          if (v67)
          {
            v62 = v66;
            v64 = v67;

            goto LABEL_90;
          }

          *&v77 = [(__CFString *)v65 length];
          if (v77)
          {
            goto LABEL_89;
          }
        }

        v62 = 0;
        v64 = 0xE000000000000000;
        goto LABEL_90;
      }

      result = [(__CFString *)v60 UTF8String];
      if (result)
      {
        v68 = String.init(utf8String:)(result);
        if (v69)
        {
          goto LABEL_85;
        }

        __break(1u);
LABEL_84:
        _CFIndirectTaggedPointerStringGetContents();
        v68 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v69)
        {
          [(__CFString *)v60 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v62 = v72.tv_sec;
          v64 = v72.tv_nsec;
          goto LABEL_90;
        }

LABEL_85:
        v62 = v68;
        v64 = v69;

        goto LABEL_90;
      }

      goto LABEL_100;
    }

    goto LABEL_52;
  }

  result = [v48 UTF8String];
  if (result)
  {
    v56 = String.init(utf8String:)(result);
    if (v57)
    {
      goto LABEL_63;
    }

    __break(1u);
LABEL_62:
    _CFIndirectTaggedPointerStringGetContents();
    v56 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v57)
    {
      [v48 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v50 = v72.tv_sec;
      v52 = v72.tv_nsec;
      goto LABEL_68;
    }

LABEL_63:
    v50 = v56;
    v52 = v57;

LABEL_68:
    goto LABEL_69;
  }

LABEL_101:
  __break(1u);
  return result;
}

uint64_t DateComponents.ISO8601FormatStyle.parseStrategy.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v6[0] = *v1;
  v6[1] = v2;
  v7 = v1[2];
  v3 = v7;
  *a1 = v6[0];
  a1[1] = v2;
  a1[2] = v3;
  return outlined init with copy of DateComponents.ISO8601FormatStyle(v6, &v5);
}

uint64_t protocol witness for ParseableFormatStyle.parseStrategy.getter in conformance DateComponents.ISO8601FormatStyle@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v6[0] = *v1;
  v6[1] = v2;
  v7 = v1[2];
  v3 = v7;
  *a1 = v6[0];
  a1[1] = v2;
  a1[2] = v3;
  return outlined init with copy of DateComponents.ISO8601FormatStyle(v6, &v5);
}

void *DateComponents.ISO8601FormatStyle.consuming(_:startingAt:in:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X4>, void *a5@<X8>)
{
  if (a3 >> 14 >= a4 >> 14)
  {
    sub_1809417B0(&v11);
    v6 = &v11;
  }

  else
  {
    DateComponents.ISO8601FormatStyle.parse(_:fillMissingUnits:in:)(a1, a2, 0, &v11);
    if (_s10Foundation17LocalePreferencesVSgWOg(&v11) == 1)
    {
      sub_1809417B0(&v9);
    }

    else
    {
      memcpy(v10, v12, sizeof(v10));
      v9 = v11;
      _NSBundleDeallocatingImmortalBundle(&v9, v7);
    }

    v6 = &v9;
  }

  return memcpy(a5, v6, 0x123uLL);
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance DateComponents.ISO8601FormatStyle(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle();

  return MEMORY[0x1EEE6E5F8](a1, v2);
}

char *static RegexComponent<>.iso8601ComponentsWithTimeZone(includingFractionalSeconds:dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:)@<X0>(char a1@<W0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, _OWORD *a6@<X8>)
{
  v8 = *a2;
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  if (one-time initialization token for cache != -1)
  {
    v38 = a1;
    swift_once();
    a1 = v38;
  }

  v13 = *(&xmmword_1ED440468 + 1);
  v12 = xmmword_1ED440468;
  BYTE3(v65) = v8;
  BYTE4(v65) = v9;
  *(&v65 + 1) = 0;
  v67 = xmmword_1ED440468;
  LOBYTE(v65) = v10;
  BYTE2(v65) = v11;
  BYTE1(v65) = a1 & 1;
  v14 = one-time initialization token for cache;
  swift_unknownObjectRetain_n();
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v16 = *(v15 + 16);
  if (*(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v18 & 1) != 0))
  {
    v57 = *(*(v16 + 56) + 16 * v17);
    v19 = *(*(v16 + 56) + 16 * v17);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v15 + 24));
    if (v19)
    {
LABEL_41:
      v66 = v57;
      v62 = v12;
      v63 = v13;
      result = Calendar.timeZone.setter(&v62);
      v53 = v66;
      *a6 = v65;
      a6[1] = v53;
      a6[2] = v67;
      return result;
    }
  }

  else
  {
    os_unfair_lock_unlock((v15 + 24));
  }

  v20 = type metadata accessor for _CalendarGregorian();
  v21 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
  v64 = 7;
  v62 = 0;
  v63 = 0;
  v61[0] = 0;
  v61[1] = 0;
  v59 = 0;
  v60 = 1;
  v22 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v64, &v62, v61, 0, 1, 0, 1, &v59);
  os_unfair_lock_lock((v15 + 24));
  v23 = *(v15 + 16);
  if (*(v23 + 16))
  {
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    if (v25)
    {
      v26 = *(*(v23 + 56) + 16 * v24);
LABEL_40:
      v57 = v26;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v15 + 24));

      goto LABEL_41;
    }
  }

  v58 = v13;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = *(v15 + 16);
  v28 = v62;
  v29 = specialized __RawDictionaryStorage.find<A>(_:)(7);
  v31 = *(v28 + 16);
  v32 = (v30 & 1) == 0;
  v33 = __OFADD__(v31, v32);
  v34 = v31 + v32;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    v6 = v30;
    if (*(v28 + 24) < v34)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, isUniquelyReferenced_nonNull_native);
      v35 = v62;
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(7);
      if ((v6 & 1) == (v36 & 1))
      {
        goto LABEL_19;
      }

      v29 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v35 = v28;
LABEL_19:
      v13 = v58;
      if (v6)
      {
LABEL_20:
        v37 = (*(v35 + 56) + 16 * v29);
        *v37 = v22;
        v37[1] = v21;
        swift_unknownObjectRelease();
LABEL_39:
        *(v15 + 16) = v35;
        *&v26 = v22;
        *(&v26 + 1) = v21;
        goto LABEL_40;
      }

LABEL_38:
      specialized _NativeDictionary._insert(at:key:value:)(v29, 7, v22, v35, v20, v21);
      goto LABEL_39;
    }
  }

  v54 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
  v39 = static _DictionaryStorage.copy(original:)();
  v35 = v39;
  if (!*(v28 + 16))
  {
LABEL_37:

    v29 = v54;
    v13 = v58;
    if (v6)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

  result = (v39 + 64);
  v41 = (v28 + 64);
  v42 = ((1 << *(v35 + 32)) + 63) >> 6;
  if (v35 != v28 || result >= &v41[8 * v42])
  {
    result = memmove(result, v41, 8 * v42);
  }

  v43 = 0;
  *(v35 + 16) = *(v28 + 16);
  v44 = 1 << *(v28 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v28 + 64);
  v47 = (v44 + 63) >> 6;
  v55 = v47;
  if (v46)
  {
    do
    {
      v48 = __clz(__rbit64(v46));
      v56 = (v46 - 1) & v46;
LABEL_35:
      v51 = v48 | (v43 << 6);
      v52 = *(*(v28 + 56) + 16 * v51);
      *(*(v35 + 48) + v51) = *(*(v28 + 48) + v51);
      *(*(v35 + 56) + 16 * v51) = v52;
      result = swift_unknownObjectRetain();
      v47 = v55;
      v46 = v56;
    }

    while (v56);
  }

  v49 = v43;
  while (1)
  {
    v43 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v43 >= v47)
    {
      goto LABEL_37;
    }

    v50 = *(v28 + 64 + 8 * v43);
    ++v49;
    if (v50)
    {
      v48 = __clz(__rbit64(v50));
      v56 = (v50 - 1) & v50;
      goto LABEL_35;
    }
  }

  __break(1u);
  return result;
}

char *static RegexComponent<>.iso8601Components(timeZone:includingFractionalSeconds:dateSeparator:dateTimeSeparator:timeSeparator:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *a3;
  v11 = *a4;
  v12 = *a5;
  v72 = 0;
  v13 = one-time initialization token for cache;
  swift_unknownObjectRetain();
  if (v13 != -1)
  {
    swift_once();
  }

  LOBYTE(v71) = 1;
  swift_unknownObjectRetain();
  *&v74 = v8;
  *(&v74 + 1) = v9;
  v70 = 0x10000;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v14 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v15 = *(v14 + 16);
  if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v17 & 1) != 0))
  {
    v62 = *(*(v15 + 56) + 16 * v16);
    v18 = *(*(v15 + 56) + 16 * v16);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v14 + 24));
    if (v18)
    {
LABEL_41:
      v73 = v62;
      v67 = v8;
      v68 = v9;
      result = Calendar.timeZone.setter(&v67);
      v51 = BYTE2(v70);
      v52 = v71;
      v53 = v72 | 0x1B;
      *a6 = v12;
      *(a6 + 1) = a2 & 1;
      *(a6 + 2) = v51;
      *(a6 + 3) = v10;
      *(a6 + 4) = v52;
      *(a6 + 8) = v53;
      v54 = v74;
      *(a6 + 16) = v73;
      *(a6 + 32) = v54;
      *(a6 + 4) = v11;
      return result;
    }
  }

  else
  {
    os_unfair_lock_unlock((v14 + 24));
  }

  v61 = v9;
  v63 = v12;
  v19 = type metadata accessor for _CalendarGregorian();
  v20 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
  v69 = 7;
  v67 = 0;
  v68 = 0;
  v66[0] = 0;
  v66[1] = 0;
  v64 = 0;
  v65 = 1;
  v21 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v69, &v67, v66, 0, 1, 0, 1, &v64);
  os_unfair_lock_lock((v14 + 24));
  v22 = *(v14 + 16);
  if (*(v22 + 16))
  {
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    if (v24)
    {
      v25 = *(*(v22 + 56) + 16 * v23);
      v12 = v63;
LABEL_40:
      v62 = v25;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v14 + 24));

      v9 = v61;
      goto LABEL_41;
    }
  }

  v58 = v10;
  v59 = a2;
  v60 = v11;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = *(v14 + 16);
  v27 = v67;
  v28 = specialized __RawDictionaryStorage.find<A>(_:)(7);
  v30 = *(v27 + 16);
  v31 = (v29 & 1) == 0;
  v32 = __OFADD__(v30, v31);
  v33 = v30 + v31;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    v10 = v29;
    if (*(v27 + 24) < v33)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
      v34 = v67;
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(7);
      if ((v10 & 1) == (v35 & 1))
      {
        goto LABEL_19;
      }

      v28 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v34 = v27;
LABEL_19:
      a2 = v59;
      v11 = v60;
      if (v10)
      {
LABEL_20:
        v36 = (*(v34 + 56) + 16 * v28);
        *v36 = v21;
        v36[1] = v20;
        swift_unknownObjectRelease();
LABEL_39:
        v12 = v63;
        *(v14 + 16) = v34;
        *&v25 = v21;
        *(&v25 + 1) = v20;
        v10 = v58;
        goto LABEL_40;
      }

LABEL_38:
      specialized _NativeDictionary._insert(at:key:value:)(v28, 7, v21, v34, v19, v20);
      goto LABEL_39;
    }
  }

  v55 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
  v37 = static _DictionaryStorage.copy(original:)();
  v34 = v37;
  if (!*(v27 + 16))
  {
LABEL_37:

    v28 = v55;
    a2 = v59;
    v11 = v60;
    if (v10)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

  result = (v37 + 64);
  v39 = (v27 + 64);
  v40 = ((1 << *(v34 + 32)) + 63) >> 6;
  if (v34 != v27 || result >= &v39[8 * v40])
  {
    result = memmove(result, v39, 8 * v40);
  }

  v41 = 0;
  *(v34 + 16) = *(v27 + 16);
  v42 = 1 << *(v27 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v27 + 64);
  v45 = (v42 + 63) >> 6;
  v56 = v45;
  if (v44)
  {
    do
    {
      v46 = __clz(__rbit64(v44));
      v57 = (v44 - 1) & v44;
LABEL_35:
      v49 = v46 | (v41 << 6);
      v50 = *(*(v27 + 56) + 16 * v49);
      *(*(v34 + 48) + v49) = *(*(v27 + 48) + v49);
      *(*(v34 + 56) + 16 * v49) = v50;
      result = swift_unknownObjectRetain();
      v45 = v56;
      v44 = v57;
    }

    while (v57);
  }

  v47 = v41;
  while (1)
  {
    v41 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v41 >= v45)
    {
      goto LABEL_37;
    }

    v48 = *(v27 + 64 + 8 * v41);
    ++v47;
    if (v48)
    {
      v46 = __clz(__rbit64(v48));
      v57 = (v48 - 1) & v48;
      goto LABEL_35;
    }
  }

  __break(1u);
  return result;
}

char *static RegexComponent<>.iso8601DateComponents(timeZone:dateSeparator:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  v61 = 0;
  v8 = one-time initialization token for cache;
  swift_unknownObjectRetain();
  if (v8 != -1)
  {
    swift_once();
  }

  BYTE3(v60) = v7;
  BYTE4(v60) = 1;
  swift_unknownObjectRetain();
  *&v63 = v5;
  *(&v63 + 1) = v6;
  LOWORD(v60) = 0;
  BYTE2(v60) = 1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v9 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v10 = *(v9 + 16);
  if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v12 & 1) != 0))
  {
    v52 = *(*(v10 + 56) + 16 * v11);
    v13 = *(*(v10 + 56) + 16 * v11);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v9 + 24));
    if (v13)
    {
      goto LABEL_41;
    }
  }

  else
  {
    os_unfair_lock_unlock((v9 + 24));
  }

  v14 = type metadata accessor for _CalendarGregorian();
  v15 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
  v59 = 7;
  v57 = 0;
  v58 = 0;
  v56[0] = 0;
  v56[1] = 0;
  v54 = 0;
  v55 = 1;
  v16 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v59, &v57, v56, 0, 1, 0, 1, &v54);
  os_unfair_lock_lock((v9 + 24));
  v17 = *(v9 + 16);
  if (*(v17 + 16))
  {
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 16 * v18);
LABEL_40:
      v52 = v20;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v9 + 24));

LABEL_41:
      v62 = v52;
      v57 = v5;
      v58 = v6;
      result = Calendar.timeZone.setter(&v57);
      v46 = v61;
      v47 = v61 | 3;
      *a3 = v60;
      *(a3 + 8) = v47;
      v48 = v63;
      *(a3 + 16) = v62;
      *(a3 + 32) = v48;
      if ((v46 & 8) == 0)
      {
        *(a3 + 8) = v46 | 0xB;
      }

      return result;
    }
  }

  v53 = v6;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(v9 + 16);
  v22 = v57;
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(7);
  v25 = *(v22 + 16);
  v26 = (v24 & 1) == 0;
  v27 = __OFADD__(v25, v26);
  v28 = v25 + v26;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    v3 = v24;
    if (*(v22 + 24) < v28)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, isUniquelyReferenced_nonNull_native);
      v29 = v57;
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(7);
      if ((v3 & 1) == (v30 & 1))
      {
        goto LABEL_19;
      }

      v23 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v29 = v22;
LABEL_19:
      v6 = v53;
      if (v3)
      {
LABEL_20:
        v31 = (*(v29 + 56) + 16 * v23);
        *v31 = v16;
        v31[1] = v15;
        swift_unknownObjectRelease();
LABEL_39:
        *(v9 + 16) = v29;
        *&v20 = v16;
        *(&v20 + 1) = v15;
        goto LABEL_40;
      }

LABEL_38:
      specialized _NativeDictionary._insert(at:key:value:)(v23, 7, v16, v29, v14, v15);
      goto LABEL_39;
    }
  }

  v49 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
  v32 = static _DictionaryStorage.copy(original:)();
  v29 = v32;
  if (!*(v22 + 16))
  {
LABEL_37:

    v23 = v49;
    v6 = v53;
    if (v3)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

  result = (v32 + 64);
  v34 = (v22 + 64);
  v35 = ((1 << *(v29 + 32)) + 63) >> 6;
  if (v29 != v22 || result >= &v34[8 * v35])
  {
    result = memmove(result, v34, 8 * v35);
  }

  v36 = 0;
  *(v29 + 16) = *(v22 + 16);
  v37 = 1 << *(v22 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v22 + 64);
  v40 = (v37 + 63) >> 6;
  v50 = v40;
  if (v39)
  {
    do
    {
      v41 = __clz(__rbit64(v39));
      v51 = (v39 - 1) & v39;
LABEL_35:
      v44 = v41 | (v36 << 6);
      v45 = *(*(v22 + 56) + 16 * v44);
      *(*(v29 + 48) + v44) = *(*(v22 + 48) + v44);
      *(*(v29 + 56) + 16 * v44) = v45;
      result = swift_unknownObjectRetain();
      v40 = v50;
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
      goto LABEL_37;
    }

    v43 = *(v22 + 64 + 8 * v36);
    ++v42;
    if (v43)
    {
      v41 = __clz(__rbit64(v43));
      v51 = (v43 - 1) & v43;
      goto LABEL_35;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle()
{
  result = lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle;
  if (!lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle;
  if (!lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle;
  if (!lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle;
  if (!lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle;
  if (!lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle;
  if (!lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle;
  if (!lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle;
  if (!lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for DateComponents.ISO8601FormatStyle(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle();
  a1[2] = lazy protocol witness table accessor for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle();
  result = lazy protocol witness table accessor for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle();
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for DateComponents.ISO8601FormatStyle(uint64_t a1)
{
  result = lazy protocol witness table accessor for type DateComponents.ISO8601FormatStyle and conformance DateComponents.ISO8601FormatStyle();
  *(a1 + 8) = result;
  return result;
}

unint64_t specialized DateComponents.ISO8601FormatStyle.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DateComponents.ISO8601FormatStyle.CodingKeys.init(rawValue:), v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

double Date.nextDown.getter@<D0>(double *a1@<X8>)
{
  v2 = 0.0 - *v1;
  if (v2 != INFINITY)
  {
    *&v2 += (*&v2 >> 63) | 1;
  }

  result = -v2;
  *a1 = result;
  return result;
}

void Date.nextUp.getter(double *a1@<X8>)
{
  v2 = *v1 + 0.0;
  if (*v1 != INFINITY)
  {
    *&v2 += (*&v2 >> 63) | 1;
  }

  *a1 = v2;
}

uint64_t DiscreteFormatStyle<>.input(before:)()
{
  v0 = static Duration.< infix(_:_:)();
  result = 0;
  if (v0)
  {
    Duration.init(secondsComponent:attosecondsComponent:)();
    return static Duration.- infix(_:_:)();
  }

  return result;
}

uint64_t DiscreteFormatStyle<>.input(after:)()
{
  if ((static Duration.< infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  Duration.init(secondsComponent:attosecondsComponent:)();
  return static Duration.+ infix(_:_:)();
}

uint64_t Duration.nextDown.getter()
{
  Duration.init(secondsComponent:attosecondsComponent:)();

  return static Duration.- infix(_:_:)();
}

uint64_t Duration.nextUp.getter()
{
  Duration.init(secondsComponent:attosecondsComponent:)();

  return static Duration.+ infix(_:_:)();
}

uint64_t protocol witness for DiscreteFormatStyle.input(before:) in conformance Duration.TimeFormatStyle.Attributed@<X0>(uint64_t a1@<X8>)
{
  v2 = static Duration.< infix(_:_:)();
  result = 0;
  v4 = 0;
  if (v2)
  {
    Duration.init(secondsComponent:attosecondsComponent:)();
    result = static Duration.- infix(_:_:)();
  }

  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = (v2 & 1) == 0;
  return result;
}

uint64_t protocol witness for DiscreteFormatStyle.input(after:) in conformance Duration.TimeFormatStyle.Attributed@<X0>(uint64_t a1@<X8>)
{
  v2 = static Duration.< infix(_:_:)();
  if (v2)
  {
    Duration.init(secondsComponent:attosecondsComponent:)();
    result = static Duration.+ infix(_:_:)();
  }

  else
  {
    result = 0;
    v4 = 0;
  }

  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = (v2 & 1) == 0;
  return result;
}

uint64_t DiscreteFormatStyle<>.input(before:)@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  dispatch thunk of static FloatingPoint.infinity.getter();
  dispatch thunk of static SignedNumeric.- prefix(_:)();
  v9 = *(v3 + 8);
  v9(v5, AssociatedTypeWitness);
  v10 = dispatch thunk of static Comparable.> infix(_:_:)();
  v9(v8, AssociatedTypeWitness);
  if (v10)
  {
    dispatch thunk of FloatingPoint.nextDown.getter();
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  return (*(v3 + 56))(a1, v11, 1, AssociatedTypeWitness);
}

uint64_t DiscreteFormatStyle<>.input(after:)@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v9 - v4;
  dispatch thunk of static FloatingPoint.infinity.getter();
  v6 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  if (v6)
  {
    dispatch thunk of FloatingPoint.nextUp.getter();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return (*(v3 + 56))(a1, v7, 1, AssociatedTypeWitness);
}

uint64_t DiscreteFormatStyle<>.input(before:)@<X0>(void (*a1)(double)@<X0>, uint64_t a2@<X3>, void (*a3)(double)@<X4>, uint64_t (*a4)(void (*)(double), char *, uint64_t, uint64_t)@<X5>, void (*a5)(void (*)(double), char *, uint64_t, void)@<X6>, uint64_t a6@<X8>)
{
  v23 = a5;
  v24 = a3;
  v25 = a4;
  v26 = a6;
  v7 = *(a2 + 8);
  v22 = *(v7 + 24);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = swift_checkMetadataState();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  v24(v11);
  v14 = *(*(v7 + 32) + 8);
  v24 = a1;
  v15 = v25(a1, v13, v9, v14);
  v16 = *(v10 + 8);
  v16(v13, v9);
  if (v15)
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v17 = v26;
    v23(v24, v13, v9, *(v22 + 8));
    v16(v13, v9);
    v18 = 0;
    v19 = v17;
  }

  else
  {
    v18 = 1;
    v19 = v26;
  }

  return (*(v10 + 56))(v19, v18, 1, v9);
}

double *DiscreteFormatStyle<>.input(before:)@<X0>(double *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = 0.0;
  if (*result > -6.31140768e10)
  {
    v4 = 0.0 - v2;
    if (0.0 - v2 != INFINITY)
    {
      *&v4 += (*&v4 >> 63) | 1;
    }

    v3 = -v4;
  }

  *a2 = v3;
  *(a2 + 8) = v2 <= -6.31140768e10;
  return result;
}

double *DiscreteFormatStyle<>.input(after:)@<X0>(double *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = ((COERCE__INT64(*result + 0.0) >> 63) | 1) + COERCE__INT64(*result + 0.0);
  if (*result >= 6.3113904e10)
  {
    v3 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v2 >= 6.3113904e10;
  return result;
}

void __swiftcall parseError(_:exampleFormattedString:extendedDescription:)(Foundation::CocoaError *__return_ptr retstr, Swift::String _, Swift::String_optional exampleFormattedString, Swift::String_optional extendedDescription)
{
  object = extendedDescription.value._object;
  countAndFlagsBits = extendedDescription.value._countAndFlagsBits;
  v6 = _._object;
  v7 = _._countAndFlagsBits;
  v87[6] = *MEMORY[0x1E69E9840];
  if (exampleFormattedString.value._object)
  {
    v9 = exampleFormattedString.value._object;
    v10 = exampleFormattedString.value._countAndFlagsBits;
    v85[0] = 0;
    v85[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(89);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](v7, v6);
    if (object)
    {
      v83 = 8250;
      v84 = 0xE200000000000000;
      MEMORY[0x1865CB0E0](countAndFlagsBits, object);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      v11 = 8250;
      v12 = 0xE200000000000000;
    }

    else
    {
      v12 = 0xE100000000000000;
      v11 = 46;
    }

    MEMORY[0x1865CB0E0](v11, v12);

    MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
    MEMORY[0x1865CB0E0](v10, v9);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
  }

  else
  {
    _StringGuts.grow(_:)(17);

    strcpy(v85, "Cannot parse ");
    HIWORD(v85[1]) = -4864;
    MEMORY[0x1865CB0E0](v7, v6);
    if (object)
    {
      v83 = 8250;
      v84 = 0xE200000000000000;
      MEMORY[0x1865CB0E0](countAndFlagsBits, object);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      v13 = 8250;
      v14 = 0xE200000000000000;
    }

    else
    {
      v14 = 0xE100000000000000;
      v13 = 46;
    }

    MEMORY[0x1865CB0E0](v13, v14);
  }

  v15 = v85[0];
  v16 = v85[1];
  isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
  v18 = @"NSDebugDescription";
  v19 = v18;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v18);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v21 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v23 = v22;

          goto LABEL_28;
        }

        goto LABEL_15;
      }

      v27 = [(__CFString *)v19 UTF8String];
      if (!v27)
      {
        __break(1u);
        goto LABEL_103;
      }

      v28 = String.init(utf8String:)(v27);
      if (v29)
      {
LABEL_23:
        v21 = v28;
        v23 = v29;

        goto LABEL_28;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v28 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v29)
    {
      [(__CFString *)v19 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v21 = v83;
      v23 = v84;
      goto LABEL_28;
    }

    goto LABEL_23;
  }

LABEL_15:
  LOBYTE(v83) = 0;
  v85[0] = 0;
  if (__CFStringIsCF())
  {

    v21 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {
    v24 = v19;
    v25 = String.init(_nativeStorage:)();
    if (v26)
    {
      v21 = v25;
      v23 = v26;
    }

    else
    {
      v85[0] = [(__CFString *)v24 length];
      if (v85[0])
      {
        v21 = String.init(_cocoaString:)();
        v23 = v30;
      }

      else
      {

        v21 = 0;
        v23 = 0xE000000000000000;
      }
    }
  }

LABEL_28:
  v87[0] = v21;
  v87[1] = v23;
  v87[5] = MEMORY[0x1E69E6158];
  v87[2] = v15;
  v87[3] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v31 = static _DictionaryStorage.allocate(capacity:)();
  outlined init with copy of (String, Any)(v87, v85);

  outlined destroy of (String, Any)(v87);
  v32 = v85[0];
  v33 = v85[1];
  v34 = specialized __RawDictionaryStorage.find<A>(_:)(v85[0], v85[1]);
  v36 = v35;

  if (v36)
  {
    __break(1u);
    goto LABEL_100;
  }

  v31[(v34 >> 6) + 8] |= 1 << v34;
  v37 = (v31[6] + 16 * v34);
  *v37 = v32;
  v37[1] = v33;
  outlined init with take of Any(&v86, (v31[7] + 32 * v34));
  v38 = v31[2];
  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  if (v39)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v31[2] = v40;
  v41 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v42 = @"NSCocoaErrorDomain";
  v43 = v42;
  if (!v41)
  {
    goto LABEL_35;
  }

  v44 = _objc_getTaggedPointerTag(v42);
  switch(v44)
  {
    case 0:
LABEL_44:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v49)
      {
        [(__CFString *)v43 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_50;
      }

      goto LABEL_45;
    case 0x16:
      v47 = [(__CFString *)v43 UTF8String];
      if (v47)
      {
        String.init(utf8String:)(v47);
        if (v48)
        {
          goto LABEL_45;
        }

        __break(1u);
        goto LABEL_44;
      }

LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    case 2:
      MEMORY[0x1EEE9AC00](v44);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_50;
  }

LABEL_35:
  LOBYTE(v83) = 0;
  v85[0] = 0;
  if (!__CFStringIsCF())
  {
    v45 = v43;
    String.init(_nativeStorage:)();
    if (v46 || (v85[0] = [(__CFString *)v45 length]) == 0)
    {

      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (!v85[0])
  {
LABEL_45:

    goto LABEL_50;
  }

LABEL_49:
  String.init(_cocoaString:)();
LABEL_50:
  v50 = objc_allocWithZone(NSError);
  v51 = String._bridgeToObjectiveCImpl()();

  v52 = [v50 initWithDomain:v51 code:2048 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v53 = [v52 domain];
  if (!v53)
  {
    goto LABEL_62;
  }

  v54 = v53;
  v55 = _objc_isTaggedPointer(v53);
  v56 = v54;
  v57 = v56;
  if ((v55 & 1) == 0)
  {
LABEL_56:
    LOBYTE(v83) = 0;
    v85[0] = 0;
    if (__CFStringIsCF())
    {
      if (v85[0])
      {
LABEL_71:
        v59 = String.init(_cocoaString:)();
        v61 = v68;
        goto LABEL_72;
      }
    }

    else
    {
      v62 = v57;
      v63 = String.init(_nativeStorage:)();
      if (v64)
      {
        v59 = v63;
        v61 = v64;

        goto LABEL_73;
      }

      v85[0] = [v62 length];
      if (v85[0])
      {
        goto LABEL_71;
      }
    }

LABEL_62:
    v59 = 0;
    v61 = 0xE000000000000000;
    goto LABEL_73;
  }

  v58 = _objc_getTaggedPointerTag(v56);
  if (!v58)
  {
    goto LABEL_66;
  }

  if (v58 != 22)
  {
    if (v58 == 2)
    {
      MEMORY[0x1EEE9AC00](v58);
      v59 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v61 = v60;

LABEL_73:
      v69 = v43;
      v70 = v69;
      if (!v41)
      {
        goto LABEL_78;
      }

      v71 = _objc_getTaggedPointerTag(v69);
      if (!v71)
      {
        goto LABEL_88;
      }

      if (v71 != 22)
      {
        if (v71 == 2)
        {
          MEMORY[0x1EEE9AC00](v71);
          v72 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v74 = v73;

          goto LABEL_94;
        }

LABEL_78:
        v85[0] = 0;
        if (__CFStringIsCF())
        {
          if (v85[0])
          {
LABEL_93:
            v72 = String.init(_cocoaString:)();
            v74 = v81;
LABEL_94:
            if (v59 == v72 && v61 == v74)
            {

LABEL_98:
              retstr->_nsError.super.isa = v52;
              return;
            }

            v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v82)
            {
              goto LABEL_98;
            }

LABEL_101:
            __break(1u);
          }
        }

        else
        {
          v75 = v70;
          v76 = String.init(_nativeStorage:)();
          if (v77)
          {
            v72 = v76;
            v74 = v77;

            goto LABEL_94;
          }

          v85[0] = [(__CFString *)v75 length];
          if (v85[0])
          {
            goto LABEL_93;
          }
        }

        v72 = 0;
        v74 = 0xE000000000000000;
        goto LABEL_94;
      }

      v78 = [(__CFString *)v70 UTF8String];
      if (v78)
      {
        v79 = String.init(utf8String:)(v78);
        if (v80)
        {
          goto LABEL_89;
        }

        __break(1u);
LABEL_88:
        _CFIndirectTaggedPointerStringGetContents();
        v79 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v80)
        {
          [(__CFString *)v70 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v72 = v83;
          v74 = v84;
          goto LABEL_94;
        }

LABEL_89:
        v72 = v79;
        v74 = v80;

        goto LABEL_94;
      }

      goto LABEL_104;
    }

    goto LABEL_56;
  }

  v65 = [v57 UTF8String];
  if (v65)
  {
    v66 = String.init(utf8String:)(v65);
    if (v67)
    {
      goto LABEL_67;
    }

    __break(1u);
LABEL_66:
    _CFIndirectTaggedPointerStringGetContents();
    v66 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v67)
    {
      [v57 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v59 = v83;
      v61 = v84;
      goto LABEL_72;
    }

LABEL_67:
    v59 = v66;
    v61 = v67;

LABEL_72:
    goto LABEL_73;
  }

LABEL_105:
  __break(1u);
}

uint64_t specialized closure #1 in numericStringRepresentationForBinaryInteger<A>(words:isSigned:)(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v45[2] = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    goto LABEL_51;
  }

  if (a2 < 0)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v5 = v6;
  v8 = a1;
  *a1 = a3;
  v45[0] = a1;
  v45[1] = 1;
  v7 = a4 & (a3 < 0);
  if ((a4 & (a3 < 0)) != 0)
  {
    *a1 = -a3;
  }

  v10 = COERCE_DOUBLE(_sSd7exactlySdSgx_tcSzRzlufCs6UInt64V_Tt0g5(64));
  if (v11)
  {
    goto LABEL_52;
  }

  v12 = v10 * 0.301029996;
  if (COERCE__INT64(fabs(v10 * 0.301029996)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_38;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v4 = v12;
  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  a3 = v13 + v7;
  if (__OFADD__(v13, v7))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (a3 < 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    v36 = swift_slowAlloc();
    closure #1 in numericStringRepresentationForMutableBinaryInteger(words:isSigned:)(v36, v9, v45, v7, &v44);
    if (v5)
    {

      result = MEMORY[0x1865D2690](v36, -1, -1);
      __break(1u);
    }

    else
    {
      MEMORY[0x1865D2690](v36, -1, -1);
      return v44;
    }

    return result;
  }

  v41 = v6;
  if (a3 < 1025)
  {
    v38 = &v37;
    MEMORY[0x1EEE9AC00](*&v10);
    v15 = &v37;
    v17 = &v37 - v16;
    if (!v14)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_43:
  v9 = a3;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (!isStackAllocationSafe)
  {
    goto LABEL_47;
  }

  v38 = &v37;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v17 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v9;
LABEL_15:
  v18 = v14;
  memset(v17, 48, v14);
  v14 = v18;
LABEL_16:
  v19 = v8 - 1;
  v39 = v14;
  v40 = v7;
  v20 = v4 + v7 + 20;
  v21 = 1;
  do
  {
    v42 = v14;
    v43 = v20;
    v5 = v21;
    do
    {
      if (v21 < v5)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v9 = v19[v5];
      v22 = __udivti3();
      v23 = v9 - 0x8AC7230489E80000 * v22;
      v19[v5--] = v22;
      LOBYTE(v7) = v5;
    }

    while (v5);
    v24 = v21;
    v25 = v42;
    v26 = v43;
    do
    {
      v27 = v24;
      if (!v24)
      {
        break;
      }

      --v24;
    }

    while (!v19[v27]);
    if (v21 < v27)
    {
      __break(1u);
      goto LABEL_46;
    }

    v28 = v43;
    v15 = v42;
    do
    {
      if (v28 - 19 < 1)
      {
        goto LABEL_32;
      }

      v15 = (v15 - 1);
      v17[v28-- - 20] = (v23 % 0xA) | 0x30;
      v29 = v23 > 9;
      v23 /= 0xAuLL;
    }

    while (v29);
    v14 = v25 - 19;
    v20 = v26 - 19;
    v21 = v27;
  }

  while (v27);
  if (v40)
  {
    v30 = v39;
    if (v15)
    {
      v31 = v15 + v17;
      v15 = (v15 - 1);
      *(v31 - 1) = 45;
      goto LABEL_34;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

LABEL_33:
  v30 = v39;
LABEL_34:
  if (v30 < v15)
  {
    __break(1u);
    goto LABEL_50;
  }

  MEMORY[0x1EEE9AC00](v30 - v15);
  *(&v37 - 2) = v33;
  *(&v37 - 1) = v32;
  return String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
}

uint64_t specialized BufferViewIterator<A>.expectCharacter(_:input:onFailure:extendedDescription:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 **a6)
{
  v7 = v6;
  v157 = *MEMORY[0x1E69E9840];
  v10 = *a6;
  if (*a6 < a6[1])
  {
    v11 = *v10;
    *a6 = v10 + 1;
    if (v11 == result)
    {
      return result;
    }
  }

  v155[0].tv_sec = 0;
  v155[0].tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, v155);
  v13 = *&v155[0].tv_sec;
  tv_nsec = v155[0].tv_nsec;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v14 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  tv_sec = v14[1].tv_sec;
  v16 = &unk_1ED439000;
  if (*(tv_sec + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v18 & 1) != 0))
  {
    v19 = (*(tv_sec + 56) + 16 * v17);
    v20 = *v19;
    v21 = v19[1];
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(&v14[1].tv_nsec);
    if (v20)
    {
      goto LABEL_30;
    }
  }

  else
  {
    os_unfair_lock_unlock(&v14[1].tv_nsec);
  }

  v145 = a4;
  v147 = a5;
  type metadata accessor for _CalendarGregorian();
  v21 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_181232B40;
  *(v22 + 32) = xmmword_181232B50;
  *(v22 + 48) = 2299161;
  *(v22 + 80) = 0x4290000000000000;
  *(v22 + 96) = 0;
  v23 = (v22 + 96);
  *(v22 + 128) = 0;
  *(v22 + 104) = 0;
  *(v22 + 136) = 1;
  *(v22 + 144) = 0;
  *(v22 + 152) = 1;
  if (one-time initialization token for cache == -1)
  {
    goto LABEL_11;
  }

LABEL_194:
  swift_once();
LABEL_11:
  v24 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  v146 = v7;
  if (*(v24 + 32))
  {
    v25 = *(v24 + 40);
    v26 = *(v24 + 32);
  }

  else
  {
    v26 = *(v24 + 16);
    if (v26)
    {
      v25 = *(v24 + 24);
      swift_unknownObjectRetain();
    }

    else
    {
      TimeZoneCache.State.findCurrentTimeZone()(v155);
      v26 = v155[0].tv_sec;
      v25 = v155[0].tv_nsec;
      *(v24 + 16) = v155[0].tv_sec;
      *(v24 + 24) = v25;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v24 + 120));
  *(v22 + 112) = v26;
  *(v22 + 120) = v25;
  *(v22 + 56) = xmmword_181232B60;
  *(v22 + 72) = 0xC208951B28000000;
  *v23 = 0;
  v23[1] = 0;
  swift_unknownObjectRelease();
  *(v22 + 88) = 0;
  os_unfair_lock_lock(&v14[1].tv_nsec);
  v27 = v14[1].tv_sec;
  if (*(v27 + 16))
  {
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(0);
    if (v29)
    {
      v21 = *(*(v27 + 56) + 16 * v28 + 8);
      v7 = v146;
      a5 = v147;
      v16 = &unk_1ED439000;
      goto LABEL_29;
    }
  }

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v155[0].tv_sec = v14[1].tv_sec;
  v31 = v155[0].tv_sec;
  v33 = specialized __RawDictionaryStorage.find<A>(_:)(0);
  v34 = *(v31 + 16);
  v35 = (v32 & 1) == 0;
  v36 = v34 + v35;
  if (__OFADD__(v34, v35))
  {
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_197:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
      v130 = static _DictionaryStorage.copy(original:)();
      v37 = v130;
      if (*(v31 + 16))
      {
        v131 = (v130 + 64);
        v143 = (v31 + 64);
        v132 = ((1 << *(v37 + 32)) + 63) >> 6;
        if (v37 != v31 || v131 >= &v143[8 * v132])
        {
          memmove(v131, v143, 8 * v132);
        }

        v133 = 0;
        *(v37 + 16) = *(v31 + 16);
        v134 = 1 << *(v31 + 32);
        v135 = -1;
        if (v134 < 64)
        {
          v135 = ~(-1 << v134);
        }

        v136 = v135 & *(v31 + 64);
        v137 = (v134 + 63) >> 6;
        if (v136)
        {
          do
          {
            v138 = __clz(__rbit64(v136));
            v144 = (v136 - 1) & v136;
LABEL_210:
            v141 = v138 | (v133 << 6);
            v142 = *(*(v31 + 56) + 16 * v141);
            *(*(v37 + 48) + v141) = *(*(v31 + 48) + v141);
            *(*(v37 + 56) + 16 * v141) = v142;
            swift_unknownObjectRetain();
            v136 = v144;
          }

          while (v144);
        }

        v139 = v133;
        while (1)
        {
          v133 = v139 + 1;
          if (__OFADD__(v139, 1))
          {
            __break(1u);
          }

          if (v133 >= v137)
          {
            break;
          }

          v140 = *&v143[8 * v133];
          ++v139;
          if (v140)
          {
            v138 = __clz(__rbit64(v140));
            v144 = (v140 - 1) & v140;
            goto LABEL_210;
          }
        }
      }

LABEL_25:
      a5 = v147;
      v16 = &unk_1ED439000;
      if (v25)
      {
        v40 = (*(v37 + 56) + 16 * v33);
        *v40 = v22;
        v40[1] = v21;
        swift_unknownObjectRelease();
      }

      else
      {
        specialized _NativeDictionary._insert(at:key:value:)(v33, 0, v22, v37);
      }

      v14[1].tv_sec = v37;
      v7 = v146;
LABEL_29:
      swift_unknownObjectRetain();
      os_unfair_lock_unlock(&v14[1].tv_nsec);

      a4 = v145;
LABEL_30:
      v41 = tv_nsec;
      v42 = *&v13 + -978307200.0;
      v13 = v41 * 0.000000001;
      v43 = v16[87];
      swift_unknownObjectRetain();
      if (v43 != -1)
      {
        swift_once();
      }

      v44 = v42 + v13;
      v153 = 254;
      v45 = one-time initialization token for validCalendarRange;
      v148 = xmmword_1ED440468;
      swift_unknownObjectRetain();
      if (v45 != -1)
      {
        swift_once();
      }

      v46 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v44)
      {
        v46 = v44;
      }

      if (*&static Date.validCalendarRange >= v46)
      {
        tv_nsec = *&static Date.validCalendarRange;
      }

      else
      {
        *&tv_nsec = v46;
      }

      ObjectType = swift_getObjectType();
      v152 = tv_nsec;
      v151 = v148;
      (*(v21 + 184))(v155, &v153, &v152, &v151, ObjectType, v21);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
      memcpy(v156, v155, 0x11BuLL);
      closure #1 in DateComponents.HTTPFormatStyle.format(_:)(v154, 33, v156, v155);
      v21 = v7;
      if (v7)
      {
        goto LABEL_218;
      }

      v48 = v155[0].tv_sec;
      v49 = v155[0].tv_nsec;
      outlined destroy of DateComponents(v156);
      v155[0].tv_sec = 0;
      v155[0].tv_nsec = 0xE000000000000000;
      _StringGuts.grow(_:)(89);
      MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
      MEMORY[0x1865CB0E0](a2, a3);
      if (a5)
      {
        *&v151 = 8250;
        *(&v151 + 1) = 0xE200000000000000;
        MEMORY[0x1865CB0E0](a4, a5);
        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        v51 = *(&v151 + 1);
        v50 = v151;
      }

      else
      {
        v51 = 0xE100000000000000;
        v50 = 46;
      }

      MEMORY[0x1865CB0E0](v50, v51);

      MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
      MEMORY[0x1865CB0E0](v48, v49);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      v52 = v155[0].tv_sec;
      v7 = v155[0].tv_nsec;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
      v53 = swift_allocObject();
      isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
      v55 = @"NSDebugDescription";
      v56 = v55;
      v147 = v49;
      if (!isTaggedPointer)
      {
        goto LABEL_48;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v55);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            v58 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v60 = v59;

            goto LABEL_78;
          }

LABEL_48:
          LOBYTE(v151) = 0;
          v155[0].tv_sec = 0;
          LOBYTE(v153) = 0;
          LOBYTE(v152) = 0;
          IsCF = __CFStringIsCF();
          if (IsCF)
          {
            if (!v155[0].tv_sec)
            {

LABEL_56:
              v58 = 0;
              v60 = 0xE000000000000000;
              goto LABEL_78;
            }

            if (v152 == 1)
            {
              if (v151)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v68 = String.init<A>(_immortalCocoaString:count:encoding:)();
              goto LABEL_77;
            }

            if (v153)
            {
              if (v151 != 1)
              {
                IsCF = [(__CFString *)v56 lengthOfBytesUsingEncoding:4];
              }

              MEMORY[0x1EEE9AC00](IsCF);
              v70 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v60 = v71;
              v72 = HIBYTE(v71) & 0xF;
              if ((v71 & 0x2000000000000000) == 0)
              {
                v72 = v70 & 0xFFFFFFFFFFFFLL;
              }

              if (v72)
              {
                v58 = v70;

                goto LABEL_78;
              }
            }
          }

          else
          {
            v62 = v56;
            v63 = String.init(_nativeStorage:)();
            if (v64)
            {
              v58 = v63;
              v60 = v64;

              goto LABEL_78;
            }

            v155[0].tv_sec = [(__CFString *)v62 length];
            if (!v155[0].tv_sec)
            {

              goto LABEL_56;
            }
          }

          v68 = String.init(_cocoaString:)();
LABEL_77:
          v58 = v68;
          v60 = v69;
          goto LABEL_78;
        }

        v65 = [(__CFString *)v56 UTF8String];
        if (!v65)
        {
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          swift_willThrow();
          __break(1u);
          goto LABEL_219;
        }

        v66 = String.init(utf8String:)(v65);
        if (v67)
        {
LABEL_61:
          v58 = v66;
          v60 = v67;

          goto LABEL_78;
        }

        __break(1u);
      }

      LOWORD(v153) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v66 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v67)
      {
        goto LABEL_61;
      }

      [(__CFString *)v56 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v60 = *(&v151 + 1);
      v58 = v151;
LABEL_78:
      v53[4] = v58;
      v53[5] = v60;
      v53[9] = MEMORY[0x1E69E6158];
      v53[6] = v52;
      v53[7] = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
      v73 = static _DictionaryStorage.allocate(capacity:)();
      v14 = v155;
      outlined init with copy of (String, Any)((v53 + 4), v155);
      swift_setDeallocating();

      outlined destroy of (String, Any)((v53 + 4));
      swift_deallocClassInstance();
      v23 = v155[0].tv_sec;
      v74 = v155[0].tv_nsec;
      v75 = specialized __RawDictionaryStorage.find<A>(_:)(v155[0].tv_sec, v155[0].tv_nsec);
      v22 = v76;

      if (v22)
      {
        __break(1u);
LABEL_193:
        __break(1u);
        goto LABEL_194;
      }

      v73[(v75 >> 6) + 8] |= 1 << v75;
      v77 = (v73[6] + 16 * v75);
      *v77 = v23;
      v77[1] = v74;
      outlined init with take of Any(&v155[1].tv_sec, (v73[7] + 32 * v75));
      v78 = v73[2];
      v79 = __OFADD__(v78, 1);
      v80 = v78 + 1;
      if (v79)
      {
        goto LABEL_193;
      }

      v73[2] = v80;
      v81 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
      v82 = @"NSCocoaErrorDomain";
      v83 = v82;
      if (v81)
      {
        v84 = _objc_getTaggedPointerTag(v82);
        switch(v84)
        {
          case 0:
            goto LABEL_96;
          case 0x16:
            v88 = [(__CFString *)v83 UTF8String];
            if (!v88)
            {
              goto LABEL_215;
            }

            String.init(utf8String:)(v88);
            if (!v89)
            {
              __break(1u);
LABEL_96:
              LOWORD(v153) = 0;
              _CFIndirectTaggedPointerStringGetContents();
              _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v90)
              {
                [(__CFString *)v83 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                goto LABEL_113;
              }
            }

LABEL_110:

            goto LABEL_113;
          case 2:
            MEMORY[0x1EEE9AC00](v84);
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

            goto LABEL_113;
        }
      }

      LOBYTE(v151) = 0;
      v155[0].tv_sec = 0;
      LOBYTE(v153) = 0;
      LOBYTE(v152) = 0;
      v85 = __CFStringIsCF();
      if (!v85)
      {
        v86 = v83;
        String.init(_nativeStorage:)();
        if (v87 || (v155[0].tv_sec = [(__CFString *)v86 length]) == 0)
        {

          goto LABEL_113;
        }

LABEL_112:
        String.init(_cocoaString:)();
        goto LABEL_113;
      }

      if (!v155[0].tv_sec)
      {
        goto LABEL_110;
      }

      if (v152 != 1)
      {
        if (v153)
        {
          if (v151 != 1)
          {
            v85 = [(__CFString *)v83 lengthOfBytesUsingEncoding:4];
          }

          MEMORY[0x1EEE9AC00](v85);
          v91 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v93 = HIBYTE(v92) & 0xF;
          if ((v92 & 0x2000000000000000) == 0)
          {
            v93 = v91 & 0xFFFFFFFFFFFFLL;
          }

          if (v93)
          {
            goto LABEL_110;
          }
        }

        goto LABEL_112;
      }

      if (v151)
      {
        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
      }

      else
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
      }

      String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_113:
      v14 = objc_allocWithZone(NSError);
      v94 = String._bridgeToObjectiveCImpl()();

      v25 = [(timespec *)v14 initWithDomain:v94 code:2048 userInfo:_NativeDictionary.bridged()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v95 = [v25 domain];
      if (!v95)
      {
        goto LABEL_127;
      }

      v96 = v95;
      v97 = _objc_isTaggedPointer(v95);
      v98 = v96;
      v14 = v98;
      if (!v97)
      {
        goto LABEL_119;
      }

      v99 = _objc_getTaggedPointerTag(v98);
      switch(v99)
      {
        case 0:
          goto LABEL_131;
        case 0x16:
          v105 = [(timespec *)v14 UTF8String];
          if (!v105)
          {
            goto LABEL_217;
          }

          v106 = String.init(utf8String:)(v105);
          if (v107)
          {
            goto LABEL_132;
          }

          __break(1u);
LABEL_131:
          LOWORD(v153) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v106 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (v107)
          {
LABEL_132:
            v33 = v106;
            v31 = v107;
            goto LABEL_133;
          }

          [(timespec *)v14 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v31 = *(&v151 + 1);
          v33 = v151;
LABEL_150:

          break;
        case 2:
          MEMORY[0x1EEE9AC00](v99);
          v33 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v31 = v100;

          break;
        default:
LABEL_119:
          LOBYTE(v151) = 0;
          v155[0].tv_sec = 0;
          LOBYTE(v153) = 0;
          LOBYTE(v152) = 0;
          v101 = __CFStringIsCF();
          if (v101)
          {
            if (v155[0].tv_sec)
            {
              if (v152 == 1)
              {
                if (v151)
                {
                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                }

                else
                {
                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                }

                v108 = String.init<A>(_immortalCocoaString:count:encoding:)();
              }

              else
              {
                if (v153)
                {
                  if (v151 != 1)
                  {
                    v101 = [(timespec *)v14 lengthOfBytesUsingEncoding:4];
                  }

                  MEMORY[0x1EEE9AC00](v101);
                  v110 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v31 = v111;
                  v112 = HIBYTE(v111) & 0xF;
                  if ((v111 & 0x2000000000000000) == 0)
                  {
                    v112 = v110 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v112)
                  {
                    v33 = v110;
LABEL_133:

                    goto LABEL_150;
                  }
                }

LABEL_148:
                v108 = String.init(_cocoaString:)();
              }

              v33 = v108;
              v31 = v109;
              goto LABEL_150;
            }

            goto LABEL_127;
          }

          v102 = v14;
          v103 = String.init(_nativeStorage:)();
          if (!v104)
          {
            v155[0].tv_sec = [(timespec *)v102 length];
            if (v155[0].tv_sec)
            {
              goto LABEL_148;
            }

LABEL_127:
            v33 = 0;
            v31 = 0xE000000000000000;
            break;
          }

          v33 = v103;
          v31 = v104;

          break;
      }

      v113 = v83;
      v22 = v113;
      if (!v81)
      {
        goto LABEL_156;
      }

      v114 = _objc_getTaggedPointerTag(v113);
      switch(v114)
      {
        case 0:
          goto LABEL_168;
        case 0x16:
          v122 = [v22 UTF8String];
          if (!v122)
          {
            goto LABEL_216;
          }

          v123 = String.init(utf8String:)(v122);
          if (!v124)
          {
            __break(1u);
LABEL_168:
            LOWORD(v153) = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v123 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v124)
            {
              [v22 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v117 = *(&v151 + 1);
              v115 = v151;
              break;
            }
          }

          v115 = v123;
          v117 = v124;

          break;
        case 2:
          MEMORY[0x1EEE9AC00](v114);
          v115 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v117 = v116;

          break;
        default:
LABEL_156:
          LOBYTE(v151) = 0;
          v155[0].tv_sec = 0;
          LOBYTE(v153) = 0;
          LOBYTE(v152) = 0;
          v118 = __CFStringIsCF();
          if (v118)
          {
            if (!v155[0].tv_sec)
            {

LABEL_164:
              v115 = 0;
              v117 = 0xE000000000000000;
              break;
            }

            if (v152 == 1)
            {
              if (v151)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v125 = String.init<A>(_immortalCocoaString:count:encoding:)();
              goto LABEL_185;
            }

            if ((v153 & 1) == 0)
            {
              goto LABEL_184;
            }

            if (v151 != 1)
            {
              v118 = [v22 lengthOfBytesUsingEncoding_];
            }

            MEMORY[0x1EEE9AC00](v118);
            v127 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v117 = v128;
            v129 = HIBYTE(v128) & 0xF;
            if ((v128 & 0x2000000000000000) == 0)
            {
              v129 = v127 & 0xFFFFFFFFFFFFLL;
            }

            if (!v129)
            {

LABEL_184:
              v125 = String.init(_cocoaString:)();
LABEL_185:
              v115 = v125;
              v117 = v126;
              break;
            }

            v115 = v127;
          }

          else
          {
            v119 = v22;
            v120 = String.init(_nativeStorage:)();
            if (!v121)
            {
              v155[0].tv_sec = [v119 length];
              if (v155[0].tv_sec)
              {
                goto LABEL_184;
              }

              goto LABEL_164;
            }

            v115 = v120;
            v117 = v121;
          }

          break;
      }

      if (v33 == v115 && v31 == v117)
      {

        return swift_willThrow();
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        return swift_willThrow();
      }
    }
  }

  LOBYTE(v25) = v32;
  if (*(v31 + 24) >= v36)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v37 = v31;
      goto LABEL_25;
    }

    goto LABEL_197;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, isUniquelyReferenced_nonNull_native);
  v37 = v155[0].tv_sec;
  v38 = specialized __RawDictionaryStorage.find<A>(_:)(0);
  if ((v25 & 1) == (v39 & 1))
  {
    v33 = v38;
    goto LABEL_25;
  }

LABEL_219:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, os_unfair_lock_s *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25)
{
  v28 = v25;
  result = 0;
  v33 = 0;
  v342 = a25;
  v341 = a24;
  v34 = a23;
  v36 = a20;
  v35 = a21;
  v38 = a18;
  v37 = a19;
  v39 = a16;
  v346 = a15;
  *&v347 = a14;
  v343 = a13;
  v40 = a9;
  v361 = *MEMORY[0x1E69E9840];
  if (a3 >= 10)
  {
    v41 = 10;
  }

  else
  {
    v41 = a3;
  }

  if (v41 <= 1)
  {
    v41 = 1;
  }

  v42 = a10[1];
  v43 = v42 >= *a10;
  v44 = v42 - *a10;
  if (!v43)
  {
    v44 = 0;
  }

  v45 = (a4 & 1) == 0;
  v46 = a11;
  if (!v45)
  {
    v41 = 10;
  }

  v47 = *a10 + 1;
  while (v44 != v33)
  {
    v48 = *(v47 - 1);
    if ((v48 - 58) <= 0xF5u)
    {
      v44 = v33;
      break;
    }

    v49 = 10 * result;
    if ((result * 10) >> 64 != (10 * result) >> 63)
    {
      __break(1u);
LABEL_286:
      __break(1u);
      goto LABEL_287;
    }

    v50 = v48 - 48;
    result = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      goto LABEL_286;
    }

    *a10 = v47;
    ++v33;
    ++v47;
    if (v41 == v33)
    {
      goto LABEL_19;
    }
  }

  v41 = v44;
  if (v44 < 1)
  {
    v336 = a22;
    v337 = a23;
    v340 = a16;
    v334 = a20;
    v335 = a21;
    v349 = a6;
    v350 = a9;
    v343 = a17;
    v357[0].tv_sec = 0;
    v357[0].tv_nsec = 0;
    clock_gettime(_CLOCK_REALTIME, v357);
    v27 = *&v357[0].tv_sec;
    tv_nsec = v357[0].tv_nsec;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v39 = qword_1ED440450;
    os_unfair_lock_lock((qword_1ED440450 + 24));
    v61 = *&v39[4]._os_unfair_lock_opaque;
    v62 = *(v61 + 16);
    v338 = a18;
    v339 = a19;
    if (v62 && (v63 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v64 & 1) != 0))
    {
      v65 = (*(v61 + 56) + 16 * v63);
      v66 = *v65;
      v37 = v65[1];
      swift_unknownObjectRetain();
      os_unfair_lock_unlock(v39 + 6);
      if (v66)
      {
        goto LABEL_129;
      }
    }

    else
    {
      os_unfair_lock_unlock(v39 + 6);
    }

    *&v348 = a7;
    v344 = a8;
    type metadata accessor for _CalendarGregorian();
    v37 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_181232B40;
    *(v38 + 32) = xmmword_181232B50;
    *(v38 + 48) = 2299161;
    *(v38 + 80) = 0x4290000000000000;
    *(v38 + 96) = 0;
    a7 = v38 + 96;
    *(v38 + 128) = 0;
    *(v38 + 104) = 0;
    *(v38 + 136) = 1;
    *(v38 + 144) = 0;
    *(v38 + 152) = 1;
    if (one-time initialization token for cache == -1)
    {
      goto LABEL_46;
    }

    goto LABEL_354;
  }

LABEL_19:
  if ((a2 & 1) == 0 && v41 < a1)
  {
    v346 = a11;
    v342 = a12;
    v349 = a6;
    v350 = a9;
    v357[0].tv_sec = 0;
    v357[0].tv_nsec = 0;
    clock_gettime(_CLOCK_REALTIME, v357);
    v27 = *&v357[0].tv_sec;
    tv_nsec = v357[0].tv_nsec;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    *&v348 = a7;
    v39 = qword_1ED440450;
    os_unfair_lock_lock((qword_1ED440450 + 24));
    v51 = *&v39[4]._os_unfair_lock_opaque;
    v52 = &unk_1ED439000;
    if (*(v51 + 16) && (v53 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v54 & 1) != 0))
    {
      v55 = (*(v51 + 56) + 16 * v53);
      v56 = *v55;
      a7 = v55[1];
      swift_unknownObjectRetain();
      os_unfair_lock_unlock(v39 + 6);
      if (v56)
      {
        goto LABEL_71;
      }
    }

    else
    {
      os_unfair_lock_unlock(v39 + 6);
    }

    v344 = a8;
    type metadata accessor for _CalendarGregorian();
    a7 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
    a8 = swift_allocObject();
    *(a8 + 16) = xmmword_181232B40;
    *(a8 + 32) = xmmword_181232B50;
    *(a8 + 48) = 2299161;
    *(a8 + 80) = 0x4290000000000000;
    *(a8 + 96) = 0;
    v57 = (a8 + 96);
    *(a8 + 128) = 0;
    *(a8 + 104) = 0;
    *(a8 + 136) = 1;
    *(a8 + 144) = 0;
    *(a8 + 152) = 1;
    if (one-time initialization token for cache == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_350;
  }

  if ((a5 & 1) == 0)
  {
    return result;
  }

  if (v41 <= 4)
  {
    if (v41 > 2)
    {
      if (v41 != 3)
      {
        v41 = (result * 100000) >> 64;
        result *= 100000;
        if (v41 == result >> 63)
        {
          return result;
        }

        __break(1u);
        goto LABEL_108;
      }
    }

    else
    {
      if (v41 != 1)
      {
        if (v41 == 2)
        {
          v70 = (result * 10000000) >> 64;
          result *= 10000000;
          if (v70 != result >> 63)
          {
            __break(1u);
            goto LABEL_55;
          }

          return result;
        }

LABEL_178:
        v349 = a6;
        v350 = a9;
        v357[0].tv_sec = 0;
        v357[0].tv_nsec = 0;
        clock_gettime(_CLOCK_REALTIME, v357);
        v27 = *&v357[0].tv_sec;
        tv_nsec = v357[0].tv_nsec;
        if (one-time initialization token for cache != -1)
        {
          swift_once();
        }

        v39 = qword_1ED440450;
        os_unfair_lock_lock((qword_1ED440450 + 24));
        v153 = *&v39[4]._os_unfair_lock_opaque;
        if (*(v153 + 16) && (v154 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v155 & 1) != 0))
        {
          v156 = (*(v153 + 56) + 16 * v154);
          v157 = *v156;
          v37 = v156[1];
          swift_unknownObjectRetain();
          os_unfair_lock_unlock(v39 + 6);
          if (v157)
          {
LABEL_410:
            v300 = tv_nsec;
            v301 = *&v27 + -978307200.0;
            v302 = v300 * 0.000000001;
            v303 = one-time initialization token for cache;
            swift_unknownObjectRetain();
            if (v303 != -1)
            {
              goto LABEL_428;
            }

            while (1)
            {
              v304 = v301 + v302;
              v353 = 254;
              v305 = one-time initialization token for validCalendarRange;
              v348 = xmmword_1ED440468;
              swift_unknownObjectRetain();
              if (v305 != -1)
              {
                swift_once();
              }

              v306 = *(&static Date.validCalendarRange + 1);
              if (*(&static Date.validCalendarRange + 1) >= v304)
              {
                v306 = v304;
              }

              v301 = *&static Date.validCalendarRange >= v306 ? *&static Date.validCalendarRange : v306;
              ObjectType = swift_getObjectType();
              v352 = v301;
              v351 = v348;
              (*(v37 + 184))(v357, &v353, &v352, &v351, ObjectType, v37);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease_n();
              memcpy(v359, v357, 0x11BuLL);
              closure #1 in DateComponents.HTTPFormatStyle.format(_:)(v355, 33, v359, v357);
              if (v28)
              {
                goto LABEL_441;
              }

              tv_sec = v357[0].tv_sec;
              v309 = v357[0].tv_nsec;
              outlined destroy of DateComponents(v359);
              v357[0].tv_sec = 0;
              v357[0].tv_nsec = 0xE000000000000000;
              _StringGuts.grow(_:)(89);
              MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
              MEMORY[0x1865CB0E0](v349, a7);
              if (v350)
              {
                *&v351 = 8250;
                *(&v351 + 1) = 0xE200000000000000;
                MEMORY[0x1865CB0E0](a8);
                MEMORY[0x1865CB0E0](46, 0xE100000000000000);
                v311 = *(&v351 + 1);
                v310 = v351;
              }

              else
              {
                v311 = 0xE100000000000000;
                v310 = 46;
              }

              MEMORY[0x1865CB0E0](v310, v311);

              MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
              MEMORY[0x1865CB0E0](tv_sec, v309);
              MEMORY[0x1865CB0E0](46, 0xE100000000000000);
              v312 = v357[0].tv_sec;
              v313 = v357[0].tv_nsec;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
              v314 = swift_allocObject();
              v314[4] = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSDebugDescription");
              v314[9] = MEMORY[0x1E69E6158];
              v314[5] = v315;
              v314[6] = v312;
              v314[7] = v313;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
              v316 = static _DictionaryStorage.allocate(capacity:)();
              a8 = v357;
              outlined init with copy of (String, Any)((v314 + 4), v357);
              swift_setDeallocating();

              outlined destroy of (String, Any)((v314 + 4));
              swift_deallocClassInstance();
              v317 = v357[0].tv_sec;
              v318 = v357[0].tv_nsec;
              v319 = specialized __RawDictionaryStorage.find<A>(_:)(v357[0].tv_sec, v357[0].tv_nsec);
              v321 = v320;

              if (v321)
              {
                __break(1u);
LABEL_430:
                __break(1u);
              }

              v316[(v319 >> 6) + 8] |= 1 << v319;
              v322 = (v316[6] + 16 * v319);
              *v322 = v317;
              v322[1] = v318;
              outlined init with take of Any(&v357[1].tv_sec, (v316[7] + 32 * v319));
              v323 = v316[2];
              v172 = __OFADD__(v323, 1);
              v324 = v323 + 1;
              if (v172)
              {
                goto LABEL_430;
              }

              v316[2] = v324;
              static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
              v325 = objc_allocWithZone(NSError);
              v326 = String._bridgeToObjectiveCImpl()();

              v28 = [v325 initWithDomain:v326 code:2048 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v327 = [v28 domain];
              a7 = static String._unconditionallyBridgeFromObjectiveC(_:)(v327);
              v37 = v328;

              if (a7 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") && v37 == v329)
              {
                goto LABEL_332;
              }

              v330 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v330)
              {
                return swift_willThrow();
              }

              __break(1u);
LABEL_428:
              swift_once();
            }
          }
        }

        else
        {
          os_unfair_lock_unlock(v39 + 6);
        }

        *&v348 = a7;
        v344 = a8;
        type metadata accessor for _CalendarGregorian();
        v37 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_181232B40;
        *(v38 + 32) = xmmword_181232B50;
        *(v38 + 48) = 2299161;
        *(v38 + 80) = 0x4290000000000000;
        *(v38 + 96) = 0;
        a7 = v38 + 96;
        *(v38 + 128) = 0;
        *(v38 + 104) = 0;
        *(v38 + 136) = 1;
        *(v38 + 144) = 0;
        *(v38 + 152) = 1;
        if (one-time initialization token for cache != -1)
        {
          swift_once();
        }

        v160 = static TimeZoneCache.cache;
        os_unfair_lock_lock((static TimeZoneCache.cache + 120));
        v161 = *(v160 + 32);
        v345 = v25;
        if (v161)
        {
          v162 = *(v160 + 40);
          v163 = v161;
        }

        else
        {
          v163 = *(v160 + 16);
          if (v163)
          {
            v162 = *(v160 + 24);
            swift_unknownObjectRetain();
          }

          else
          {
            TimeZoneCache.State.findCurrentTimeZone()(v357);
            v163 = v357[0].tv_sec;
            v162 = v357[0].tv_nsec;
            *(v160 + 16) = v357[0].tv_sec;
            *(v160 + 24) = v162;
            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
          }
        }

        swift_unknownObjectRetain();
        os_unfair_lock_unlock((v160 + 120));
        *(v38 + 112) = v163;
        *(v38 + 120) = v162;
        *(v38 + 56) = xmmword_181232B60;
        *(v38 + 72) = 0xC208951B28000000;
        *a7 = 0;
        *(v38 + 104) = 0;
        swift_unknownObjectRelease();
        *(v38 + 88) = 0;
        os_unfair_lock_lock(v39 + 6);
        v246 = *&v39[4]._os_unfair_lock_opaque;
        if (*(v246 + 16))
        {
          v247 = specialized __RawDictionaryStorage.find<A>(_:)(0);
          if (v248)
          {
            v37 = *(*(v246 + 56) + 16 * v247 + 8);
            a8 = v344;
            v28 = v345;
LABEL_409:
            a7 = v348;
            swift_unknownObjectRetain();
            os_unfair_lock_unlock(v39 + 6);

            goto LABEL_410;
          }
        }

        swift_unknownObjectRetain();
        LOBYTE(v28) = swift_isUniquelyReferenced_nonNull_native();
        v357[0].tv_sec = *&v39[4]._os_unfair_lock_opaque;
        a8 = v357[0].tv_sec;
        v249 = specialized __RawDictionaryStorage.find<A>(_:)(0);
        v251 = *(a8 + 16);
        v252 = (v250 & 1) == 0;
        v172 = __OFADD__(v251, v252);
        v253 = v251 + v252;
        if (v172)
        {
          __break(1u);
        }

        else
        {
          LOBYTE(a7) = v250;
          if (*(a8 + 24) < v253)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v253, v28);
            v254 = v357[0].tv_sec;
            v249 = specialized __RawDictionaryStorage.find<A>(_:)(0);
            if ((a7 & 1) == (v255 & 1))
            {
              goto LABEL_346;
            }

LABEL_343:
            v249 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
          }

          if (v28)
          {
            v254 = a8;
LABEL_346:
            a8 = v344;
            v28 = v345;
            if (a7)
            {
LABEL_347:
              v256 = (*(v254 + 56) + 16 * v249);
              *v256 = v38;
              v256[1] = v37;
              swift_unknownObjectRelease();
LABEL_408:
              *&v39[4]._os_unfair_lock_opaque = v254;
              goto LABEL_409;
            }

LABEL_407:
            specialized _NativeDictionary._insert(at:key:value:)(v249, 0, v38, v254);
            goto LABEL_408;
          }
        }

        v346 = v249;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
        v285 = static _DictionaryStorage.copy(original:)();
        v254 = v285;
        if (*(a8 + 16))
        {
          v286 = (v285 + 64);
          v287 = 1 << *(v254 + 32);
          *&v347 = a8 + 64;
          v288 = (v287 + 63) >> 6;
          if (v254 != a8 || v286 >= v347 + 8 * v288)
          {
            memmove(v286, v347, 8 * v288);
          }

          v289 = 0;
          *(v254 + 16) = *(a8 + 16);
          v290 = 1 << *(a8 + 32);
          v291 = *(a8 + 64);
          v292 = -1;
          if (v290 < 64)
          {
            v292 = ~(-1 << v290);
          }

          v293 = v292 & v291;
          v294 = (v290 + 63) >> 6;
          if ((v292 & v291) != 0)
          {
            do
            {
              v295 = __clz(__rbit64(v293));
              v293 &= v293 - 1;
LABEL_404:
              v298 = v295 | (v289 << 6);
              v299 = *(*(a8 + 56) + 16 * v298);
              *(*(v254 + 48) + v298) = *(*(a8 + 48) + v298);
              *(*(v254 + 56) + 16 * v298) = v299;
              swift_unknownObjectRetain();
            }

            while (v293);
          }

          v296 = v289;
          while (1)
          {
            v289 = v296 + 1;
            if (__OFADD__(v296, 1))
            {
              goto LABEL_438;
            }

            if (v289 >= v294)
            {
              break;
            }

            v297 = *(v347 + 8 * v289);
            ++v296;
            if (v297)
            {
              v295 = __clz(__rbit64(v297));
              v293 = (v297 - 1) & v297;
              goto LABEL_404;
            }
          }
        }

        v249 = v346;
        a8 = v344;
        v28 = v345;
        if (a7)
        {
          goto LABEL_347;
        }

        goto LABEL_407;
      }

      v148 = (result * 100000000) >> 64;
      result *= 100000000;
      if (v148 == result >> 63)
      {
        return result;
      }

      __break(1u);
    }

    v149 = (result * 1000000) >> 64;
    result *= 1000000;
    if (v149 == result >> 63)
    {
      return result;
    }

    __break(1u);
LABEL_172:
    v150 = (result * 100) >> 64;
    result *= 100;
    if (v150 == result >> 63)
    {
      return result;
    }

    __break(1u);
    goto LABEL_174;
  }

  if (v41 > 6)
  {
    if (v41 != 7)
    {
      if (v41 != 8)
      {
        if (v41 == 9)
        {
          return result;
        }

        goto LABEL_178;
      }

      goto LABEL_176;
    }

    goto LABEL_172;
  }

LABEL_108:
  if (v41 == 5)
  {
LABEL_174:
    v151 = (result * 10000) >> 64;
    result *= 10000;
    if (v151 == result >> 63)
    {
      return result;
    }

    __break(1u);
LABEL_176:
    v152 = (result * 10) >> 64;
    result *= 10;
    if (v152 == result >> 63)
    {
      return result;
    }

    __break(1u);
    goto LABEL_178;
  }

  if (v41 != 6)
  {
    goto LABEL_178;
  }

  v107 = (result * 1000) >> 64;
  result *= 1000;
  if (v107 == result >> 63)
  {
    return result;
  }

  __break(1u);
LABEL_112:
  v357[0].tv_sec = [a7 length];
  if (!v357[0].tv_sec)
  {

    v98 = 0;
    v100 = 0xE000000000000000;
    goto LABEL_202;
  }

LABEL_200:
  v146 = String.init(_cocoaString:)();
LABEL_201:
  v98 = v146;
  v100 = v147;
  while (1)
  {
LABEL_202:
    *&v39[8]._os_unfair_lock_opaque = v98;
    *&v39[10]._os_unfair_lock_opaque = v100;
    *&v39[18]._os_unfair_lock_opaque = MEMORY[0x1E69E6158];
    *&v39[12]._os_unfair_lock_opaque = v28;
    *&v39[14]._os_unfair_lock_opaque = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v167 = static _DictionaryStorage.allocate(capacity:)();
    v28 = v357;
    outlined init with copy of (String, Any)(&v39[8], v357);
    swift_setDeallocating();

    outlined destroy of (String, Any)(&v39[8]);
    swift_deallocClassInstance();
    v57 = v357[0].tv_sec;
    v39 = v357[0].tv_nsec;
    v168 = specialized __RawDictionaryStorage.find<A>(_:)(v357[0].tv_sec, v357[0].tv_nsec);
    a7 = v169;

    if (a7)
    {
      __break(1u);
    }

    else
    {
      v167[(v168 >> 6) + 8] |= 1 << v168;
      v170 = (v167[6] + 16 * v168);
      *v170 = v57;
      v170[1] = v39;
      outlined init with take of Any(&v357[1].tv_sec, (v167[7] + 32 * v168));
      v171 = v167[2];
      v172 = __OFADD__(v171, 1);
      v173 = v171 + 1;
      if (!v172)
      {
        v167[2] = v173;
        static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
        v131 = v174;
        v175 = objc_allocWithZone(NSError);
        v176 = String._bridgeToObjectiveCImpl()();

        v28 = [v175 initWithDomain:v176 code:2048 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v177 = [v28 domain];
        v178 = static String._unconditionallyBridgeFromObjectiveC(_:)(v177);
        v180 = v179;

        v181 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
        v134 = v182;
        if (v178 == v181 && v180 == v182)
        {
LABEL_332:
        }

        else
        {
          v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v127 & 1) == 0)
          {
            __break(1u);
            goto LABEL_208;
          }
        }

        return swift_willThrow();
      }
    }

    __break(1u);
LABEL_350:
    swift_once();
LABEL_36:
    v58 = static TimeZoneCache.cache;
    os_unfair_lock_lock((static TimeZoneCache.cache + 120));
    v59 = *(v58 + 32);
    v345 = v28;
    if (v59)
    {
      v28 = *(v58 + 40);
      v60 = v59;
    }

    else
    {
      v60 = *(v58 + 16);
      if (v60)
      {
        v28 = *(v58 + 24);
        swift_unknownObjectRetain();
      }

      else
      {
        TimeZoneCache.State.findCurrentTimeZone()(v357);
        v60 = v357[0].tv_sec;
        v28 = v357[0].tv_nsec;
        *(v58 + 16) = v357[0].tv_sec;
        *(v58 + 24) = v28;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v58 + 120));
    *(a8 + 112) = v60;
    *(a8 + 120) = v28;
    *(a8 + 56) = xmmword_181232B60;
    *(a8 + 72) = 0xC208951B28000000;
    *v57 = 0;
    v57[1] = 0;
    swift_unknownObjectRelease();
    *(a8 + 88) = 0;
    os_unfair_lock_lock(v39 + 6);
    v71 = *&v39[4]._os_unfair_lock_opaque;
    if (!*(v71 + 16))
    {
      break;
    }

    v72 = specialized __RawDictionaryStorage.find<A>(_:)(0);
    if ((v73 & 1) == 0)
    {
      break;
    }

    a7 = *(*(v71 + 56) + 16 * v72 + 8);
    v28 = v345;
    v52 = &unk_1ED439000;
LABEL_70:
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v39 + 6);

    a8 = v344;
LABEL_71:
    v83 = tv_nsec;
    v84 = *&v27 + -978307200.0;
    v27 = v83 * 0.000000001;
    v85 = v52[87];
    swift_unknownObjectRetain();
    if (v85 != -1)
    {
      swift_once();
    }

    v86 = v84 + v27;
    v353 = 254;
    v87 = one-time initialization token for validCalendarRange;
    v347 = xmmword_1ED440468;
    swift_unknownObjectRetain();
    if (v87 != -1)
    {
      swift_once();
    }

    v88 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v86)
    {
      v88 = v86;
    }

    if (*&static Date.validCalendarRange >= v88)
    {
      tv_nsec = *&static Date.validCalendarRange;
    }

    else
    {
      *&tv_nsec = v88;
    }

    v89 = swift_getObjectType();
    v352 = *&tv_nsec;
    v351 = v347;
    (*(a7 + 184))(v357, &v353, &v352, &v351, v89, a7);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();
    memcpy(v358, v357, 0x11BuLL);
    closure #1 in DateComponents.HTTPFormatStyle.format(_:)(v354, 33, v358, v357);
    if (v28)
    {
      goto LABEL_440;
    }

    v90 = v357[0].tv_sec;
    v91 = v357[0].tv_nsec;
    outlined destroy of DateComponents(v358);
    v357[0].tv_sec = 0;
    v357[0].tv_nsec = 0xE000000000000000;
    _StringGuts.grow(_:)(89);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](v349, v348);
    if (v350)
    {
      *&v351 = 8250;
      *(&v351 + 1) = 0xE200000000000000;
      MEMORY[0x1865CB0E0](a8);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      v93 = *(&v351 + 1);
      v92 = v351;
    }

    else
    {
      v93 = 0xE100000000000000;
      v92 = 46;
    }

    MEMORY[0x1865CB0E0](v92, v93);

    MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
    *&v348 = v91;
    MEMORY[0x1865CB0E0](v90, v91);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    v28 = v357[0].tv_sec;
    v34 = v357[0].tv_nsec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    v39 = swift_allocObject();
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v95 = @"NSDebugDescription";
    v96 = v95;
    a8 = MEMORY[0x1E69E7CA0];
    if (!isTaggedPointer)
    {
      goto LABEL_89;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v95);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag == 22)
      {
        v104 = [(__CFString *)v96 UTF8String];
        if (!v104)
        {
          goto LABEL_433;
        }

        v105 = String.init(utf8String:)(v104);
        if (!v106)
        {
          __break(1u);
          goto LABEL_100;
        }

LABEL_101:
        v98 = v105;
        v100 = v106;
      }

      else
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v98 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v100 = v99;

          goto LABEL_198;
        }

LABEL_89:
        LOBYTE(v351) = 0;
        v357[0].tv_sec = 0;
        LOBYTE(v353) = 0;
        LOBYTE(v352) = 0;
        IsCF = __CFStringIsCF();
        if (IsCF)
        {
          v98 = v357[0].tv_sec;
          if (v357[0].tv_sec)
          {
            if (LOBYTE(v352) == 1)
            {
              if (v351)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v146 = String.init<A>(_immortalCocoaString:count:encoding:)();
              goto LABEL_201;
            }

            if ((v353 & 1) == 0)
            {
              goto LABEL_200;
            }

            if (v351 != 1)
            {
              IsCF = [(__CFString *)v96 lengthOfBytesUsingEncoding:4];
            }

            MEMORY[0x1EEE9AC00](IsCF);
            v164 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v100 = v165;
            v166 = HIBYTE(v165) & 0xF;
            if ((v165 & 0x2000000000000000) == 0)
            {
              v166 = v164 & 0xFFFFFFFFFFFFLL;
            }

            if (!v166)
            {
              a8 = MEMORY[0x1E69E7CA0];

              goto LABEL_200;
            }

            v98 = v164;

LABEL_198:
            a8 = MEMORY[0x1E69E7CA0];
          }

          else
          {

            v100 = 0xE000000000000000;
          }
        }

        else
        {
          a7 = v96;
          v102 = String.init(_nativeStorage:)();
          if (!v103)
          {
            goto LABEL_112;
          }

          v98 = v102;
          v100 = v103;
        }
      }
    }

    else
    {
LABEL_100:
      LOWORD(v353) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v105 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v106)
      {
        goto LABEL_101;
      }

      [(__CFString *)v96 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v100 = *(&v351 + 1);
      v98 = v351;
    }
  }

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v357[0].tv_sec = *&v39[4]._os_unfair_lock_opaque;
  v38 = v357[0].tv_sec;
  v37 = specialized __RawDictionaryStorage.find<A>(_:)(0);
  v76 = *(v38 + 16);
  v77 = (v75 & 1) == 0;
  v78 = v76 + v77;
  if (!__OFADD__(v76, v77))
  {
    LOBYTE(v28) = v75;
    if (*(v38 + 24) < v78)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v78, isUniquelyReferenced_nonNull_native);
      v79 = v357[0].tv_sec;
      v80 = specialized __RawDictionaryStorage.find<A>(_:)(0);
      if ((v28 & 1) != (v81 & 1))
      {
        goto LABEL_343;
      }

      v37 = v80;
      v52 = &unk_1ED439000;
      if (v28)
      {
        goto LABEL_65;
      }

LABEL_68:
      specialized _NativeDictionary._insert(at:key:value:)(v37, 0, a8, v79);
      goto LABEL_69;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v79 = v38;
      v52 = &unk_1ED439000;
      if ((v75 & 1) == 0)
      {
        goto LABEL_68;
      }
    }

    else
    {
LABEL_357:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
      v257 = static _DictionaryStorage.copy(original:)();
      v79 = v257;
      if (*(v38 + 16))
      {
        v258 = (v257 + 64);
        v259 = 1 << *(v79 + 32);
        v341 = (v38 + 64);
        v260 = (v259 + 63) >> 6;
        if (v79 != v38 || v258 >= &v341[8 * v260])
        {
          memmove(v258, v341, 8 * v260);
        }

        v261 = 0;
        *(v79 + 16) = *(v38 + 16);
        v262 = 1 << *(v38 + 32);
        v263 = -1;
        if (v262 < 64)
        {
          v263 = ~(-1 << v262);
        }

        *&v347 = v263 & *(v38 + 64);
        v264 = (v262 + 63) >> 6;
        for (i = v347; v347; i = v347)
        {
          v266 = __clz(__rbit64(i));
          *&v347 = (i - 1) & i;
LABEL_370:
          v269 = v266 | (v261 << 6);
          v270 = *(*(v38 + 56) + 16 * v269);
          *(*(v79 + 48) + v269) = *(*(v38 + 48) + v269);
          *(*(v79 + 56) + 16 * v269) = v270;
          swift_unknownObjectRetain();
        }

        v267 = v261;
        while (1)
        {
          v261 = v267 + 1;
          if (__OFADD__(v267, 1))
          {
            break;
          }

          if (v261 >= v264)
          {
            goto LABEL_372;
          }

          v268 = *&v341[8 * v261];
          ++v267;
          if (v268)
          {
            v266 = __clz(__rbit64(v268));
            *&v347 = (v268 - 1) & v268;
            goto LABEL_370;
          }
        }

        __break(1u);
        goto LABEL_432;
      }

LABEL_372:

      v52 = &unk_1ED439000;
      if ((v28 & 1) == 0)
      {
        goto LABEL_68;
      }
    }

LABEL_65:
    v82 = (*(v79 + 56) + 16 * v37);
    *v82 = a8;
    v82[1] = a7;
    swift_unknownObjectRelease();
LABEL_69:
    *&v39[4]._os_unfair_lock_opaque = v79;
    v28 = v345;
    goto LABEL_70;
  }

  while (1)
  {
    __break(1u);
LABEL_354:
    swift_once();
LABEL_46:
    a8 = static TimeZoneCache.cache;
    os_unfair_lock_lock((static TimeZoneCache.cache + 120));
    v67 = *(a8 + 32);
    v345 = v28;
    if (v67)
    {
      v68 = *(a8 + 40);
      v69 = v67;
    }

    else
    {
LABEL_55:
      v69 = *(a8 + 16);
      if (v69)
      {
        v68 = *(a8 + 24);
        swift_unknownObjectRetain();
      }

      else
      {
        TimeZoneCache.State.findCurrentTimeZone()(v357);
        v69 = v357[0].tv_sec;
        v68 = v357[0].tv_nsec;
        *(a8 + 16) = v357[0].tv_sec;
        *(a8 + 24) = v68;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRetain();
    os_unfair_lock_unlock((a8 + 120));
    *(v38 + 112) = v69;
    *(v38 + 120) = v68;
    *(v38 + 56) = xmmword_181232B60;
    *(v38 + 72) = 0xC208951B28000000;
    *a7 = 0;
    *(a7 + 8) = 0;
    swift_unknownObjectRelease();
    *(v38 + 88) = 0;
    os_unfair_lock_lock(v39 + 6);
    v108 = *&v39[4]._os_unfair_lock_opaque;
    if (!*(v108 + 16))
    {
      break;
    }

    v109 = specialized __RawDictionaryStorage.find<A>(_:)(0);
    if ((v110 & 1) == 0)
    {
      break;
    }

    v37 = *(*(v108 + 56) + 16 * v109 + 8);
    a8 = v344;
    v28 = v345;
    a7 = v348;
LABEL_128:
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v39 + 6);

LABEL_129:
    v120 = tv_nsec;
    v121 = *&v27 + -978307200.0;
    v27 = v120 * 0.000000001;
    v122 = one-time initialization token for cache;
    swift_unknownObjectRetain();
    if (v122 != -1)
    {
      swift_once();
    }

    v123 = v121 + v27;
    v353 = 254;
    v124 = one-time initialization token for validCalendarRange;
    v348 = xmmword_1ED440468;
    swift_unknownObjectRetain();
    if (v124 != -1)
    {
      swift_once();
    }

    v125 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v123)
    {
      v125 = v123;
    }

    if (*&static Date.validCalendarRange >= v125)
    {
      tv_nsec = *&static Date.validCalendarRange;
    }

    else
    {
      *&tv_nsec = v125;
    }

    v126 = swift_getObjectType();
    v352 = *&tv_nsec;
    v351 = v348;
    (*(v37 + 184))(v357, &v353, &v352, &v351, v126, v37);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();
    memcpy(v360, v357, 0x11BuLL);
    closure #1 in DateComponents.HTTPFormatStyle.format(_:)(v356, 33, v360, v357);
    v127 = v28;
    if (v28)
    {
      goto LABEL_441;
    }

    v128 = v357[0].tv_sec;
    v34 = v357[0].tv_nsec;
    outlined destroy of DateComponents(v360);
    v357[0].tv_sec = 0;
    v357[0].tv_nsec = 0xE000000000000000;
    _StringGuts.grow(_:)(89);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](v349, a7);
    if (v350)
    {
      *&v351 = 8250;
      *(&v351 + 1) = 0xE200000000000000;
      MEMORY[0x1865CB0E0](a8);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      v130 = *(&v351 + 1);
      v129 = v351;
    }

    else
    {
      v130 = 0xE100000000000000;
      v129 = 46;
    }

    MEMORY[0x1865CB0E0](v129, v130);

    MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
    MEMORY[0x1865CB0E0](v128, v34);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    a8 = v357[0].tv_sec;
    v28 = v357[0].tv_nsec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    v131 = swift_allocObject();
    v132 = _objc_isTaggedPointer(@"NSDebugDescription");
    v133 = @"NSDebugDescription";
    v134 = v133;
    if (!v132)
    {
      goto LABEL_147;
    }

    v135 = _objc_getTaggedPointerTag(v133);
    if (v135)
    {
      if (v135 != 22)
      {
        if (v135 == 2)
        {
          MEMORY[0x1EEE9AC00](v135);
          v136 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v138 = v137;
          v345 = 0;

          goto LABEL_216;
        }

LABEL_147:
        LOBYTE(v351) = 0;
        v357[0].tv_sec = 0;
        LOBYTE(v353) = 0;
        LOBYTE(v352) = 0;
        v139 = __CFStringIsCF();
        v345 = 0;
        if (v139)
        {
          if (v357[0].tv_sec)
          {
            if (LOBYTE(v352) == 1)
            {
              if (v351)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v158 = String.init<A>(_immortalCocoaString:count:encoding:)();
              goto LABEL_215;
            }

            if ((v353 & 1) == 0)
            {
LABEL_214:
              v158 = String.init(_cocoaString:)();
LABEL_215:
              v136 = v158;
              v138 = v159;
              goto LABEL_216;
            }

            if (v351 == 1)
            {
              MEMORY[0x1EEE9AC00](v139);
LABEL_209:
              v184 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v138 = v185;
              v345 = v127;
              v186 = HIBYTE(v185) & 0xF;
              if ((v185 & 0x2000000000000000) == 0)
              {
                v186 = v184 & 0xFFFFFFFFFFFFLL;
              }

              if (v186)
              {
                v136 = v184;

                goto LABEL_216;
              }

              goto LABEL_214;
            }

LABEL_208:
            v183 = [(__CFString *)v134 lengthOfBytesUsingEncoding:4];
            MEMORY[0x1EEE9AC00](v183);
            goto LABEL_209;
          }
        }

        else
        {
          v140 = v134;
          v141 = String.init(_nativeStorage:)();
          if (v142)
          {
            v136 = v141;
            v138 = v142;

            goto LABEL_216;
          }

          v357[0].tv_sec = [(__CFString *)v140 length];
          if (v357[0].tv_sec)
          {
            goto LABEL_214;
          }
        }

        v136 = 0;
        v138 = 0xE000000000000000;
        goto LABEL_216;
      }

      v345 = 0;
      v143 = [(__CFString *)v134 UTF8String];
      if (!v143)
      {
        goto LABEL_434;
      }

      v144 = String.init(utf8String:)(v143);
      if (v145)
      {
LABEL_160:
        v136 = v144;
        v138 = v145;

        goto LABEL_216;
      }

      __break(1u);
    }

    v345 = 0;
    LOWORD(v353) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v144 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v145)
    {
      goto LABEL_160;
    }

    [(__CFString *)v134 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v138 = *(&v351 + 1);
    v136 = v351;
LABEL_216:
    v131[4] = v136;
    v131[5] = v138;
    v131[9] = MEMORY[0x1E69E6158];
    v131[6] = a8;
    v131[7] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v37 = static _DictionaryStorage.allocate(capacity:)();
    outlined init with copy of (String, Any)((v131 + 4), v357);
    swift_setDeallocating();

    outlined destroy of (String, Any)((v131 + 4));
    swift_deallocClassInstance();
    v39 = v357[0].tv_sec;
    v38 = v357[0].tv_nsec;
    v187 = specialized __RawDictionaryStorage.find<A>(_:)(v357[0].tv_sec, v357[0].tv_nsec);
    a7 = v188;

    if ((a7 & 1) == 0)
    {
      *(v37 + 8 * (v187 >> 6) + 64) |= 1 << v187;
      v189 = (*(v37 + 48) + 16 * v187);
      *v189 = v39;
      v189[1] = v38;
      outlined init with take of Any(&v357[1].tv_sec, (*(v37 + 56) + 32 * v187));
      v190 = *(v37 + 16);
      v172 = __OFADD__(v190, 1);
      v191 = v190 + 1;
      if (v172)
      {
        goto LABEL_352;
      }

      *(v37 + 16) = v191;
      v36 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
      v192 = @"NSCocoaErrorDomain";
      v38 = v192;
      *&v348 = v34;
      if (!v36)
      {
        goto LABEL_223;
      }

      v193 = _objc_getTaggedPointerTag(v192);
      if (v193)
      {
        if (v193 != 22)
        {
          if (v193 == 2)
          {
            MEMORY[0x1EEE9AC00](v193);
            v194 = v345;
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v39 = v195;
            v345 = v194;

            goto LABEL_253;
          }

LABEL_223:
          LOBYTE(v351) = 0;
          v357[0].tv_sec = 0;
          LOBYTE(v353) = 0;
          LOBYTE(v352) = 0;
          v196 = __CFStringIsCF();
          if (v196)
          {
            if (v357[0].tv_sec)
            {
              if (LOBYTE(v352) == 1)
              {
                if (v351)
                {
                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                }

                else
                {
                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                }

                String.init<A>(_immortalCocoaString:count:encoding:)();
                goto LABEL_252;
              }

              if (v353)
              {
                if (v351 != 1)
                {
                  v196 = [v38 lengthOfBytesUsingEncoding_];
                }

                MEMORY[0x1EEE9AC00](v196);
                v202 = v345;
                v203 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v39 = v204;
                v345 = v202;
                v205 = (v204 >> 56) & 0xF;
                if ((v204 & 0x2000000000000000) == 0)
                {
                  v205 = v203 & 0xFFFFFFFFFFFFLL;
                }

                if (v205)
                {

                  goto LABEL_253;
                }
              }

LABEL_251:
              String.init(_cocoaString:)();
LABEL_252:
              v39 = v201;
LABEL_253:
              v206 = objc_allocWithZone(NSError);
              v207 = String._bridgeToObjectiveCImpl()();

              v28 = [v206 initWithDomain:v207 code:2048 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v208 = [v28 domain];
              if (!v208)
              {
                goto LABEL_267;
              }

              v209 = v208;
              v210 = _objc_isTaggedPointer(v208);
              v211 = v209;
              a8 = v211;
              if (!v210)
              {
LABEL_259:
                LOBYTE(v351) = 0;
                v357[0].tv_sec = 0;
                LOBYTE(v353) = 0;
                LOBYTE(v352) = 0;
                v215 = __CFStringIsCF();
                if (!v215)
                {
                  v39 = v28;
                  v216 = a8;
                  v217 = String.init(_nativeStorage:)();
                  if (v218)
                  {
                    a7 = v217;
                    v37 = v218;

                    v28 = v39;
                    goto LABEL_296;
                  }

                  v357[0].tv_sec = [v216 length];
                  if (!v357[0].tv_sec)
                  {

                    a7 = 0;
                    v37 = 0xE000000000000000;
                    v28 = v39;
                    goto LABEL_296;
                  }

                  v28 = v39;
                  goto LABEL_293;
                }

                if (v357[0].tv_sec)
                {
                  if (LOBYTE(v352) == 1)
                  {
                    if (v351)
                    {
                      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                    }

                    else
                    {
                      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                    }

                    v222 = String.init<A>(_immortalCocoaString:count:encoding:)();
                    goto LABEL_294;
                  }

                  if (v353)
                  {
                    if (v351 == 1)
                    {
                      v39 = &v331;
                      MEMORY[0x1EEE9AC00](v215);
                    }

                    else
                    {
LABEL_287:
                      v224 = [a8 lengthOfBytesUsingEncoding_];
                      v39 = &v331;
                      MEMORY[0x1EEE9AC00](v224);
                    }

                    v225 = v345;
                    v226 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v37 = v227;
                    v345 = v225;
                    v228 = HIBYTE(v227) & 0xF;
                    if ((v227 & 0x2000000000000000) == 0)
                    {
                      v228 = v226 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v228)
                    {
                      a7 = v226;
                      goto LABEL_273;
                    }
                  }

LABEL_293:
                  v222 = String.init(_cocoaString:)();
LABEL_294:
                  a7 = v222;
                  v37 = v223;
                  goto LABEL_295;
                }

LABEL_267:
                a7 = 0;
                v37 = 0xE000000000000000;
                goto LABEL_296;
              }

              v212 = _objc_getTaggedPointerTag(v211);
              if (v212)
              {
                if (v212 != 22)
                {
                  if (v212 == 2)
                  {
                    v39 = &v331;
                    MEMORY[0x1EEE9AC00](v212);
                    v213 = v345;
                    a7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v37 = v214;
                    v345 = v213;

                    goto LABEL_296;
                  }

                  goto LABEL_259;
                }

                v219 = [a8 UTF8String];
                if (!v219)
                {
                  goto LABEL_439;
                }

                v220 = String.init(utf8String:)(v219);
                if (v221)
                {
LABEL_272:
                  a7 = v220;
                  v37 = v221;
LABEL_273:

LABEL_295:
LABEL_296:
                  v229 = v38;
                  v230 = v229;
                  if (!v36)
                  {
                    goto LABEL_301;
                  }

                  v231 = _objc_getTaggedPointerTag(v229);
                  if (v231)
                  {
                    if (v231 != 22)
                    {
                      if (v231 == 2)
                      {
                        v39 = &v331;
                        MEMORY[0x1EEE9AC00](v231);
                        a8 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        v233 = v232;

                        goto LABEL_330;
                      }

LABEL_301:
                      LOBYTE(v351) = 0;
                      v357[0].tv_sec = 0;
                      LOBYTE(v353) = 0;
                      LOBYTE(v352) = 0;
                      v234 = __CFStringIsCF();
                      if (v234)
                      {
                        if (!v357[0].tv_sec)
                        {

                          a8 = 0;
                          v233 = 0xE000000000000000;
                          goto LABEL_330;
                        }

                        if (LOBYTE(v352) == 1)
                        {
                          if (v351)
                          {
                            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                          }

                          else
                          {
                            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                          }

                          a8 = String.init<A>(_immortalCocoaString:count:encoding:)();
                          v233 = v241;
                          goto LABEL_330;
                        }

                        v39 = v28;
                        if (v353)
                        {
                          if (v351 != 1)
                          {
                            v234 = [v230 lengthOfBytesUsingEncoding_];
                          }

                          MEMORY[0x1EEE9AC00](v234);
                          v242 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                          v233 = v243;
                          v244 = HIBYTE(v243) & 0xF;
                          if ((v243 & 0x2000000000000000) == 0)
                          {
                            v244 = v242 & 0xFFFFFFFFFFFFLL;
                          }

                          if (v244)
                          {
                            a8 = v242;

                            goto LABEL_330;
                          }
                        }

                        goto LABEL_328;
                      }

                      v39 = v28;
                      v235 = v230;
                      v236 = String.init(_nativeStorage:)();
                      if (v237)
                      {
                        a8 = v236;
                        v233 = v237;
                      }

                      else
                      {
                        v357[0].tv_sec = [v235 length];
                        if (v357[0].tv_sec)
                        {
LABEL_328:
                          a8 = String.init(_cocoaString:)();
                          v233 = v245;
                          goto LABEL_329;
                        }

                        a8 = 0;
                        v233 = 0xE000000000000000;
                      }

LABEL_329:
                      LOBYTE(v28) = v39;
LABEL_330:
                      if (a7 == a8 && v37 == v233)
                      {
                        goto LABEL_332;
                      }

                      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v38)
                      {
                        return swift_willThrow();
                      }

                      goto LABEL_356;
                    }

                    v238 = [v230 UTF8String];
                    if (!v238)
                    {
                      goto LABEL_436;
                    }

                    v239 = String.init(utf8String:)(v238);
                    if (!v240)
                    {
                      goto LABEL_437;
                    }
                  }

                  else
                  {
                    LOWORD(v353) = 0;
                    _CFIndirectTaggedPointerStringGetContents();
                    v239 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                    if (!v240)
                    {
                      [v230 mutableCopy];
                      _bridgeAnyObjectToAny(_:)();

                      swift_unknownObjectRelease();
                      swift_dynamicCast();
                      v233 = *(&v351 + 1);
                      a8 = v351;
                      goto LABEL_330;
                    }
                  }

                  a8 = v239;
                  v233 = v240;

                  goto LABEL_330;
                }

                __break(1u);
              }

              LOWORD(v353) = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v220 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v221)
              {
                [a8 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v37 = *(&v351 + 1);
                a7 = v351;
                goto LABEL_295;
              }

              goto LABEL_272;
            }
          }

          else
          {
            v197 = v38;
            String.init(_nativeStorage:)();
            if (v198)
            {
              v39 = v198;

              goto LABEL_253;
            }

            v357[0].tv_sec = [v197 length];
            if (v357[0].tv_sec)
            {
              goto LABEL_251;
            }
          }

          v39 = 0xE000000000000000;
          goto LABEL_253;
        }

        v199 = [v38 UTF8String];
        if (!v199)
        {
          goto LABEL_435;
        }

        String.init(utf8String:)(v199);
        if (v200)
        {
LABEL_236:
          v39 = v200;

          goto LABEL_253;
        }

        __break(1u);
      }

      LOWORD(v353) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v200)
      {
        [v38 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v39 = *(&v351 + 1);
        goto LABEL_253;
      }

      goto LABEL_236;
    }

    __break(1u);
LABEL_352:
    __break(1u);
  }

  swift_unknownObjectRetain();
  a7 = swift_isUniquelyReferenced_nonNull_native();
  v357[0].tv_sec = *&v39[4]._os_unfair_lock_opaque;
  v28 = v357[0].tv_sec;
  a8 = specialized __RawDictionaryStorage.find<A>(_:)(0);
  v112 = *(v28 + 16);
  v113 = (v111 & 1) == 0;
  v114 = v112 + v113;
  if (__OFADD__(v112, v113))
  {
    __break(1u);
LABEL_356:
    __break(1u);
    goto LABEL_357;
  }

  v115 = v111;
  if (*(v28 + 24) < v114)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v114, a7);
    v116 = v357[0].tv_sec;
    v117 = specialized __RawDictionaryStorage.find<A>(_:)(0);
    if ((v115 & 1) != (v118 & 1))
    {
      goto LABEL_343;
    }

    a8 = v117;
    goto LABEL_124;
  }

  if (a7)
  {
    v116 = v28;
LABEL_124:
    v28 = v345;
    a7 = v348;
    if (v115)
    {
      v119 = (*(v116 + 56) + 16 * a8);
      *v119 = v38;
      v119[1] = v37;
      swift_unknownObjectRelease();
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(a8, 0, v38, v116);
    }

    *&v39[4]._os_unfair_lock_opaque = v116;
    a8 = v344;
    goto LABEL_128;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
  v271 = static _DictionaryStorage.copy(original:)();
  v116 = v271;
  if (!*(v28 + 16))
  {
LABEL_389:

    goto LABEL_124;
  }

  v272 = (v271 + 64);
  v273 = 1 << *(v116 + 32);
  v332 = (v28 + 64);
  v274 = (v273 + 63) >> 6;
  if (v116 != v28 || v272 >= &v332[8 * v274])
  {
    memmove(v272, v332, 8 * v274);
  }

  v275 = 0;
  *(v116 + 16) = *(v28 + 16);
  v276 = 1 << *(v28 + 32);
  v277 = -1;
  if (v276 < 64)
  {
    v277 = ~(-1 << v276);
  }

  v333 = v277 & *(v28 + 64);
  v278 = (v276 + 63) >> 6;
  for (j = v333; v333; j = v333)
  {
    v280 = __clz(__rbit64(j));
    v333 = (j - 1) & j;
LABEL_387:
    v283 = v280 | (v275 << 6);
    v284 = *(*(v28 + 56) + 16 * v283);
    *(*(v116 + 48) + v283) = *(*(v28 + 48) + v283);
    *(*(v116 + 56) + 16 * v283) = v284;
    swift_unknownObjectRetain();
  }

  v281 = v275;
  while (1)
  {
    v275 = v281 + 1;
    if (__OFADD__(v281, 1))
    {
      break;
    }

    if (v275 >= v278)
    {
      goto LABEL_389;
    }

    v282 = *&v332[8 * v275];
    ++v281;
    if (v282)
    {
      v280 = __clz(__rbit64(v282));
      v333 = (v282 - 1) & v282;
      goto LABEL_387;
    }
  }

LABEL_432:
  __break(1u);
LABEL_433:
  __break(1u);
LABEL_434:
  __break(1u);
LABEL_435:
  __break(1u);
LABEL_436:
  __break(1u);
LABEL_437:
  __break(1u);
LABEL_438:
  __break(1u);
LABEL_439:
  __break(1u);
LABEL_440:
  swift_willThrow();
  __break(1u);
LABEL_441:
  result = swift_willThrow();
  __break(1u);
  return result;
}

uint64_t BufferViewIterator<A>.expectZeroOrMoreCharacters(_:)(uint64_t result)
{
  v3 = *v1;
  v2 = v1[1];
  if (*v1 < v2)
  {
    do
    {
      if (*v3 != result)
      {
        break;
      }

      *v1 = ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t specialized BufferViewIterator<A>.expectOneOrMoreCharacters(_:input:onFailure:extendedDescription:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 **a6, __int128 *a7)
{
  v92 = *MEMORY[0x1E69E9840];
  v14 = a7[1];
  v85 = *a7;
  v86 = v14;
  v87 = a7[2];
  result = specialized BufferViewIterator.next()();
  if ((result & 0x100) != 0 || result != a1)
  {
    v89 = v85;
    v90 = v86;
    v91 = v87;
    v83 = 0uLL;
    outlined init with copy of DateComponents.ISO8601FormatStyle(a7, v84);
    clock_gettime(_CLOCK_REALTIME, &v83);
    *&v83 = v83 + -978307200.0 + *(&v83 + 1) * 0.000000001;
    v18 = Date.ISO8601FormatStyle.format(_:)(v83);
    v84[0] = v89;
    v84[1] = v90;
    v84[2] = v91;
    outlined destroy of Date.ISO8601FormatStyle(v84);
    *&v89 = 0;
    *(&v89 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(89);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](a2, a3);
    if (a5)
    {
      *&v83 = 8250;
      *(&v83 + 1) = 0xE200000000000000;
      MEMORY[0x1865CB0E0](a4, a5);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      v19 = v83;
      v20 = *(&v83 + 1);
    }

    else
    {
      v20 = 0xE100000000000000;
      v19 = 46;
    }

    MEMORY[0x1865CB0E0](v19, v20);

    MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
    MEMORY[0x1865CB0E0](v18._countAndFlagsBits, v18._object);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    v22 = *(&v89 + 1);
    v21 = v89;
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v24 = @"NSDebugDescription";
    v25 = v24;
    if (!isTaggedPointer)
    {
      goto LABEL_15;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v24);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v27 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v29 = v28;

          goto LABEL_31;
        }

LABEL_15:
        LOBYTE(v83) = 0;
        *&v89 = 0;
        if (__CFStringIsCF())
        {
          if (v89)
          {
LABEL_30:
            v27 = String.init(_cocoaString:)();
            v29 = v35;
LABEL_31:
            v88[0] = v27;
            v88[1] = v29;
            v88[5] = MEMORY[0x1E69E6158];
            v88[2] = v21;
            v88[3] = v22;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
            v36 = static _DictionaryStorage.allocate(capacity:)();
            outlined init with copy of (String, Any)(v88, &v89);

            outlined destroy of (String, Any)(v88);
            v37 = v89;
            v38 = specialized __RawDictionaryStorage.find<A>(_:)(v89, *(&v89 + 1));
            v40 = v39;

            if (v40)
            {
              __break(1u);
            }

            else
            {
              v36[(v38 >> 6) + 8] |= 1 << v38;
              *(v36[6] + 16 * v38) = v37;
              outlined init with take of Any(&v90, (v36[7] + 32 * v38));
              v41 = v36[2];
              v42 = __OFADD__(v41, 1);
              v43 = v41 + 1;
              if (!v42)
              {
                v36[2] = v43;
                v44 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
                v45 = @"NSCocoaErrorDomain";
                v46 = v45;
                if (!v44)
                {
LABEL_38:
                  LOBYTE(v83) = 0;
                  *&v89 = 0;
                  if (!__CFStringIsCF())
                  {
                    v48 = v46;
                    String.init(_nativeStorage:)();
                    if (v49 || (*&v89 = [(__CFString *)v48 length], !v89))
                    {

                      goto LABEL_53;
                    }

                    goto LABEL_52;
                  }

                  if (v89)
                  {
LABEL_52:
                    String.init(_cocoaString:)();
LABEL_53:
                    v52 = objc_allocWithZone(NSError);
                    v53 = String._bridgeToObjectiveCImpl()();

                    v54 = [v52 initWithDomain:v53 code:2048 userInfo:_NativeDictionary.bridged()()];
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    v55 = [v54 domain];
                    if (!v55)
                    {
                      v61 = 0;
                      v63 = 0xE000000000000000;
                      goto LABEL_77;
                    }

                    v56 = v55;
                    v57 = _objc_isTaggedPointer(v55);
                    v58 = v56;
                    v59 = v58;
                    if (!v57)
                    {
LABEL_59:
                      LOBYTE(v83) = 0;
                      *&v89 = 0;
                      if (__CFStringIsCF())
                      {
                        if (v89)
                        {
LABEL_75:
                          v61 = String.init(_cocoaString:)();
                          v63 = v69;
                          goto LABEL_76;
                        }
                      }

                      else
                      {
                        v64 = v59;
                        v65 = String.init(_nativeStorage:)();
                        if (v66)
                        {
                          v61 = v65;
                          v63 = v66;

                          goto LABEL_77;
                        }

                        *&v89 = [v64 length];
                        if (v89)
                        {
                          goto LABEL_75;
                        }
                      }

                      v61 = 0;
                      v63 = 0xE000000000000000;
                      goto LABEL_77;
                    }

                    v60 = _objc_getTaggedPointerTag(v58);
                    if (v60)
                    {
                      if (v60 != 22)
                      {
                        if (v60 == 2)
                        {
                          MEMORY[0x1EEE9AC00](v60);
                          v61 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                          v63 = v62;

LABEL_77:
                          v70 = v46;
                          v71 = v70;
                          if (!v44)
                          {
                            goto LABEL_82;
                          }

                          v72 = _objc_getTaggedPointerTag(v70);
                          if (!v72)
                          {
                            goto LABEL_92;
                          }

                          if (v72 != 22)
                          {
                            if (v72 == 2)
                            {
                              MEMORY[0x1EEE9AC00](v72);
                              v73 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                              v75 = v74;

                              goto LABEL_98;
                            }

LABEL_82:
                            LOBYTE(v83) = 0;
                            *&v89 = 0;
                            if (__CFStringIsCF())
                            {
                              if (v89)
                              {
LABEL_97:
                                v73 = String.init(_cocoaString:)();
                                v75 = v81;
LABEL_98:
                                if (v61 == v73 && v63 == v75)
                                {

                                  return swift_willThrow();
                                }

                                v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v82)
                                {
                                  return swift_willThrow();
                                }

LABEL_106:
                                __break(1u);
                              }
                            }

                            else
                            {
                              v76 = v71;
                              v77 = String.init(_nativeStorage:)();
                              if (v78)
                              {
                                v73 = v77;
                                v75 = v78;

                                goto LABEL_98;
                              }

                              *&v89 = [(__CFString *)v76 length];
                              if (v89)
                              {
                                goto LABEL_97;
                              }
                            }

                            v73 = 0;
                            v75 = 0xE000000000000000;
                            goto LABEL_98;
                          }

                          result = [(__CFString *)v71 UTF8String];
                          if (result)
                          {
                            v79 = String.init(utf8String:)(result);
                            if (v80)
                            {
                              goto LABEL_93;
                            }

                            __break(1u);
LABEL_92:
                            _CFIndirectTaggedPointerStringGetContents();
                            v79 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                            if (!v80)
                            {
                              [(__CFString *)v71 mutableCopy];
                              _bridgeAnyObjectToAny(_:)();

                              swift_unknownObjectRelease();
                              swift_dynamicCast();
                              v73 = v83;
                              v75 = *(&v83 + 1);
                              goto LABEL_98;
                            }

LABEL_93:
                            v73 = v79;
                            v75 = v80;

                            goto LABEL_98;
                          }

                          goto LABEL_109;
                        }

                        goto LABEL_59;
                      }

                      result = [v59 UTF8String];
                      if (!result)
                      {
LABEL_110:
                        __break(1u);
                        return result;
                      }

                      v67 = String.init(utf8String:)(result);
                      if (v68)
                      {
                        goto LABEL_71;
                      }

                      __break(1u);
                    }

                    _CFIndirectTaggedPointerStringGetContents();
                    v67 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                    if (!v68)
                    {
                      [v59 mutableCopy];
                      _bridgeAnyObjectToAny(_:)();

                      swift_unknownObjectRelease();
                      swift_dynamicCast();
                      v61 = v83;
                      v63 = *(&v83 + 1);
                      goto LABEL_76;
                    }

LABEL_71:
                    v61 = v67;
                    v63 = v68;

LABEL_76:
                    goto LABEL_77;
                  }

LABEL_48:

                  goto LABEL_53;
                }

                v47 = _objc_getTaggedPointerTag(v45);
                if (!v47)
                {
LABEL_47:
                  _CFIndirectTaggedPointerStringGetContents();
                  _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (!v51)
                  {
                    [(__CFString *)v46 mutableCopy];
                    _bridgeAnyObjectToAny(_:)();

                    swift_unknownObjectRelease();
                    swift_dynamicCast();
                    goto LABEL_53;
                  }

                  goto LABEL_48;
                }

                if (v47 != 22)
                {
                  if (v47 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v47);
                    String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                    goto LABEL_53;
                  }

                  goto LABEL_38;
                }

                result = [(__CFString *)v46 UTF8String];
                if (result)
                {
                  String.init(utf8String:)(result);
                  if (v50)
                  {
                    goto LABEL_48;
                  }

                  __break(1u);
                  goto LABEL_47;
                }

LABEL_108:
                __break(1u);
LABEL_109:
                __break(1u);
                goto LABEL_110;
              }
            }

            __break(1u);
            goto LABEL_106;
          }
        }

        else
        {
          v30 = v25;
          v31 = String.init(_nativeStorage:)();
          if (v32)
          {
            v27 = v31;
            v29 = v32;

            goto LABEL_31;
          }

          *&v89 = [(__CFString *)v30 length];
          if (v89)
          {
            goto LABEL_30;
          }
        }

        v27 = 0;
        v29 = 0xE000000000000000;
        goto LABEL_31;
      }

      result = [(__CFString *)v25 UTF8String];
      if (!result)
      {
        __break(1u);
        goto LABEL_108;
      }

      v33 = String.init(utf8String:)(result);
      if (v34)
      {
LABEL_26:
        v27 = v33;
        v29 = v34;

        goto LABEL_31;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v33 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v34)
    {
      [(__CFString *)v25 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v27 = v83;
      v29 = *(&v83 + 1);
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  v17 = *a6;
  v16 = a6[1];
  if (*a6 < v16)
  {
    do
    {
      if (*v17 != a1)
      {
        break;
      }

      *a6 = ++v17;
    }

    while (v17 != v16);
  }

  return result;
}

void *partial apply for closure #1 in OutputBuffer<A>.append(_:zeroPad:)(void *__src, int64_t __n)
{
  if (__src)
  {
    v4 = *(v2 + 16);
    if (__n)
    {
      v5 = v4[2];
      if (v4[1] - v5 < __n)
      {
        __break(1u);
        return __src;
      }

      __src = memcpy((*v4 + v5), __src, __n);
    }

    v4[2] += __n;
  }

  return __src;
}

uint64_t protocol witness for FormatStyle.locale(_:) in conformance URL.FormatStyle@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[11];
  v30 = v1[10];
  v31 = v3;
  v4 = v1[11];
  v32 = v1[12];
  v5 = v1[5];
  v6 = v1[7];
  v26 = v1[6];
  v7 = v26;
  v27 = v6;
  v8 = v1[7];
  v9 = v1[9];
  v28 = v1[8];
  v10 = v28;
  v29 = v9;
  v11 = v1[1];
  v12 = v1[3];
  v22 = v1[2];
  v13 = v22;
  v23 = v12;
  v14 = v1[3];
  v15 = v1[5];
  v24 = v1[4];
  v16 = v24;
  v25 = v15;
  v17 = v1[1];
  v21[0] = *v1;
  v18 = v21[0];
  v21[1] = v17;
  a1[10] = v30;
  a1[11] = v4;
  a1[12] = v1[12];
  a1[6] = v7;
  a1[7] = v8;
  a1[8] = v10;
  a1[9] = v2;
  a1[2] = v13;
  a1[3] = v14;
  a1[4] = v16;
  a1[5] = v5;
  *a1 = v18;
  a1[1] = v11;
  return outlined init with copy of URL.FormatStyle(v21, &v20);
}

uint64_t FormatterCache.init()@<X0>(void *a1@<X8>)
{
  *a1 = 100;
  type metadata accessor for Dictionary();
  type metadata accessor for LockedState._Buffer();
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  a1[1] = result;
  return result;
}

void FormatterCache.formatter(for:creator:)(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a3;
  v43 = a2;
  v45 = a5;
  v8 = a4[3];
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v36 - v12;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  v21 = *v5;
  v20 = v5[1];
  v39 = a4[2];
  v46 = v39;
  v47 = v8;
  v22 = a4[4];
  v23 = v20;
  v37 = v21;
  v38 = v22;
  v48 = v22;
  v49 = a1;
  v41 = a1;
  os_unfair_lock_lock(v20 + 6);
  v24 = v50;
  partial apply for closure #1 in FormatterCache.formatter(for:creator:)(&v23[4]._os_unfair_lock_opaque);
  if (v24)
  {
    os_unfair_lock_unlock(v23 + 6);
    __break(1u);
  }

  else
  {
    v50 = v23;
    os_unfair_lock_unlock(v23 + 6);
    (*(v14 + 16))(v16, v19, v13);
    v25 = (*(v9 + 48))(v16, 1, v8);
    v28 = *(v14 + 8);
    v27 = v14 + 8;
    v26 = v28;
    if (v25 == 1)
    {
      v36 = v19;
      v29 = v26(v16, v13);
      v43(v29);
      v42 = v27;
      v43 = v13;
      v30 = v50;
      os_unfair_lock_lock(v50 + 6);
      v31 = *&v30[4]._os_unfair_lock_opaque;
      if ((v31 & 0xC000000000000001) != 0)
      {

        v32 = __CocoaSet.count.getter();
      }

      else
      {
        v32 = *(v31 + 16);
      }

      if (v37 < v32)
      {
        v33 = v50;

        *&v33[4]._os_unfair_lock_opaque = MEMORY[0x1E69E7CC8];
      }

      v34 = v44;
      (*(v9 + 16))(v40, v44, v8);
      type metadata accessor for Dictionary._Variant();
      v35 = v50;
      Dictionary._Variant.setValue(_:forKey:)();
      os_unfair_lock_unlock(v35 + 6);
      v16 = v34;

      v13 = v43;
      v19 = v36;
    }

    v26(v19, v13);
    (*(v9 + 32))(v45, v16, v8);
  }
}

Swift::Void __swiftcall FormatterCache.removeAllObjects()()
{
  v1 = *(v0 + 8);
  os_unfair_lock_lock((v1 + 24));
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
  os_unfair_lock_unlock((v1 + 24));
}

void FormatterCache.subscript.getter()
{
  v1 = *(v0 + 8);
  os_unfair_lock_lock((v1 + 24));
  partial apply for closure #1 in FormatterCache.subscript.getter((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t partial apply for closure #1 in FormatterCache.formatter(for:creator:)(void *a1)
{
  return partial apply for closure #1 in FormatterCache.formatter(for:creator:)(a1);
}

{
  return MEMORY[0x1865CAB40](v1[5], *a1, v1[2], v1[3], v1[4]);
}

uint64_t type metadata instantiation function for FormatterCache()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for BufferView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for BufferView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t associated type witness table accessor for Collection.Indices : RandomAccessCollection in BufferView<A>()
{
  return associated type witness table accessor for Collection.Indices : RandomAccessCollection in BufferView<A>();
}

{
  swift_getWitnessTable();
  lazy protocol witness table accessor for type Int and conformance Int();
  return swift_getWitnessTable();
}

uint64_t BufferView.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  result = a1(a2, a3);
  if (!v5)
  {
    return (*(*(a4 - 8) + 56))(a5, 0, 1, a4);
  }

  return result;
}

void protocol witness for Sequence.makeIterator() in conformance BufferView<A>(void *a1@<X8>)
{
  BufferView.makeIterator()();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance BufferView<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance BufferView<A>(uint64_t a1)
{
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;
  swift_getWitnessTable();
  return specialized Collection._copyToContiguousArray()(v5, a1);
}

uint64_t UnsafeRawPointer.loadUnaligned<A>(fromByteOffset:as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 80);
  if (((v10 + 1) & v10) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = a3;
  v5 = a2;
  v6 = a1;
  v7 = *(a3 - 8);
  a1 = *(v9 + 72);
  if (v10 > 0xF)
  {
    while (1)
    {
      a1 = swift_slowAlloc();
      v11 = *(v7 + 64);
      if ((v11 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      v18 = a1;
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      a1 = v18;
      if (isStackAllocationSafe)
      {
        goto LABEL_8;
      }
    }

    v12 = (v5 + v6);
    v13 = a1;
    memcpy(a1, v12, v11);
    (*(v7 + 16))(a4, v13, v4);

LABEL_15:
    JUMPOUT(0x1865D2690);
  }

  if (a1 >= 1025)
  {
    goto LABEL_12;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v20 - v14;
  v16 = *(v7 + 64);
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  memcpy(&v20 - v14, (v5 + v6), v16);
  return (*(v7 + 16))(a4, v15, v4);
}

void (*protocol witness for Collection.subscript.read in conformance BufferView<A>(uint64_t *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v7 + 64));
  }

  a1[2] = result;
  v10 = *(v8 + 72);
  if (!v10)
  {
    __break(1u);
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

  v11 = *a2;
  v12 = *a2 - *v3;
  if (v12 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_23;
  }

  if (v12 / v10 < 0)
  {
    goto LABEL_21;
  }

  v14 = *v3 + v10 * v3[1] - v11;
  if (v10 == -1 && v14 == 0x8000000000000000)
  {
    goto LABEL_24;
  }

  if (v14 / v10 < 1)
  {
    goto LABEL_22;
  }

  v16 = *(v8 + 80);
  if ((v16 & 0x10000) == 0)
  {
    UnsafeRawPointer.loadUnaligned<A>(fromByteOffset:as:)(0, v11, v6, result);
    return AttributedString.Runs.AttributesSlice1.subscript.read;
  }

  if ((v16 & v11) == 0)
  {
    (*(v8 + 16))(result, *a2, v6);
    return AttributedString.Runs.AttributesSlice1.subscript.read;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.subscript.getter in conformance BufferView<A>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  v5 = result[1];
  v6 = *v3;
  v7 = *(*(a2 + 16) - 8);
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 - v6 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  if ((v4 - v6) / v8 < 0)
  {
    goto LABEL_17;
  }

  if (v5 - v4 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_21;
  }

  v10 = (v5 - v4) / v8;
  if (v10 < 0)
  {
    goto LABEL_18;
  }

  v11 = v6 + v8 * v3[1] - v5;
  if (v8 == -1 && v11 == 0x8000000000000000)
  {
    goto LABEL_22;
  }

  if (v11 / v8 < 0)
  {
    goto LABEL_19;
  }

  v12 = *(v7 + 80);
  if ((v12 & 0x10000) == 0 || (v12 & (v5 | v4)) == 0)
  {
    *a3 = v4;
    a3[1] = v10;
    return result;
  }

LABEL_23:
  __break(1u);
  return result;
}

double protocol witness for Collection.indices.getter in conformance BufferView<A>@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for BufferViewIndex();
  swift_getWitnessTable();
  Range.init(uncheckedBounds:)();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance BufferView<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E66A8], MEMORY[0x1E69E5F48]);
}

{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E5F90], MEMORY[0x1E69E5F58]);
}

void *protocol witness for Collection.distance(from:to:) in conformance BufferView<A>(void *result, void *a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 72);
  if (v3)
  {
    v4 = *a2 - *result;
    if (v4 != 0x8000000000000000 || v3 != -1)
    {
      return (v4 / v3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E66A8], MEMORY[0x1E69E5F48]);
}

{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E5F90], MEMORY[0x1E69E5F58]);
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for Range();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t specialized Collection._copyToContiguousArray()(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v17 - v9;
  v11 = dispatch thunk of Collection.count.getter();
  if (!v11)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = v11;
  swift_getAssociatedTypeWitness();
  v13 = _ContiguousArrayBuffer.init(_uninitializedCount:minimumCapacity:)();
  v18 = AssociatedTypeWitness;
  v14 = v13;
  (*(v4 + 16))(v6, a1, a2);
  v15 = dispatch thunk of Sequence._copyContents(initializing:)();
  (*(v8 + 8))(v10, v18);
  if (v15 != v12)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v14;
}

Swift::Int BufferViewIndex.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](a1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BufferViewIndex<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69E50](a1, a2, a3, WitnessTable);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BufferViewIndex<A>()
{
  Hasher.init(_seed:)();
  BufferViewIndex.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

void *protocol witness for Strideable.distance(to:) in conformance BufferViewIndex<A>@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(*(a2 + 16) - 8) + 72);
  if (v4)
  {
    v5 = *result - *v3;
    if (v5 != 0x8000000000000000 || v4 != -1)
    {
      *a3 = v5 / v4;
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

uint64_t type metadata instantiation function for BufferViewIndex()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t BufferViewIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *v2;
  if (*v2 >= v2[1])
  {
    v7 = *(v4 + 56);

    return v7(a2, 1, 1, v3);
  }

  else
  {
    v9 = *(*(a1 + 16) - 8);
    if (*(v4 + 82))
    {
      (*(v4 + 16))(a2, v5, v3);
    }

    else
    {
      UnsafeRawPointer.loadUnaligned<A>(fromByteOffset:as:)(0, v5, v3, a2);
    }

    (*(v9 + 56))(a2, 0, 1, v3);
    result = v9 + 56;
    *v2 = v5 + *(v9 + 72);
  }

  return result;
}

uint64_t type metadata instantiation function for BufferViewIterator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t specialized BufferViewIterator.next()()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 < v2)
  {
    v3 = *v1;
    *v0 = (v1 + 1);
  }

  else
  {
    v3 = 0;
  }

  return v3 | ((v1 >= v2) << 8);
}

uint64_t specialized BufferView.dropFirst(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    if (result >= a3)
    {
      v3 = a3;
    }

    else
    {
      v3 = result;
    }

    return a2 + v3;
  }

  return result;
}

uint64_t specialized BufferView.suffix(from:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (((a2 + a3 - result) | (result - a2)) < 0)
  {
    __break(1u);
  }

  return result;
}

void *JSON5Scanner.scan()()
{
  v1 = v0;
  if (*v0 == 1)
  {
    v3 = v0[3];
    v2 = v0[4];
    if (v3 >= v2)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v4 = *v3;
      if (v4 < 0x41)
      {
        if (v4 == 64)
        {
          goto LABEL_35;
        }

        if (((1 << v4) & 0x100003E00) != 0)
        {
          goto LABEL_8;
        }
      }

      if (v4 != 47)
      {
        break;
      }

      if ((v3 + 1) >= v2)
      {
        goto LABEL_35;
      }

      v5 = v3[1];
      if (v5 == 42)
      {
        v9 = v3 + 3;
        if ((v3 + 3) >= v2)
        {
LABEL_34:
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          v14 = swift_allocError();
          *v15 = 3;
          *(v15 + 8) = 0u;
          *(v15 + 24) = 0u;
          *(v15 + 40) = 0;
          v16 = 12;
LABEL_43:
          *(v15 + 48) = v16;
          v1 = v14;
          swift_willThrow();
          return v1;
        }

        v10 = v3 + 2;
        while (2)
        {
          v12 = *v9;
          if (*v10 == 42)
          {
            if (v12 != 42)
            {
              if (v12 == 47)
              {
                v3 = v10 + 2;
                goto LABEL_9;
              }

LABEL_31:
              v11 = 2;
LABEL_25:
              v10 += v11;
              v9 = v10 + 1;
              if ((v10 + 1) >= v2)
              {
                goto LABEL_34;
              }

              continue;
            }
          }

          else if (v12 != 42)
          {
            goto LABEL_31;
          }

          break;
        }

        v11 = 1;
        goto LABEL_25;
      }

      if (v5 != 47)
      {
LABEL_35:
        v0[3] = v3;
        goto LABEL_39;
      }

      if ((v3 + 2) < v2)
      {
        v6 = v2 - 2 - v3;
        v3 += 3;
        while (1)
        {
          v7 = *(v3 - 1);
          if (v7 == 13 || v7 == 10)
          {
            break;
          }

          ++v3;
          if (!--v6)
          {
            goto LABEL_39;
          }
        }

LABEL_9:
        if (v3 < v2)
        {
          continue;
        }
      }

      goto LABEL_39;
    }

    if (v4 == 160)
    {
LABEL_8:
      ++v3;
      goto LABEL_9;
    }

    v0[3] = v3;
    if (v4 == 123)
    {
      JSON5Scanner.scanObject()();
      if (v17)
      {
        return v1;
      }
    }

    else
    {
LABEL_39:
      JSON5Scanner.scanObject(withoutBraces:)(1);
      if (v18)
      {
        return v1;
      }
    }
  }

  else
  {
    JSON5Scanner.scanValue()();
    if (v13)
    {
      return v1;
    }
  }

  v19 = JSON5Scanner.DocumentReader.consumeWhitespace(allowingEOF:)(1);
  if (!v20)
  {
    value = v19.value;
    if ((*&v19 & 0x100) != 0)
    {
      v28 = v1[6];
      v29 = v1[1];
      v30 = v1[2];
      type metadata accessor for JSONMap();
      v1 = swift_allocObject();
      v1[2] = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA0D4ViewVys5UInt8VG6buffer_SVSg10allocationt_GMd);
      v31 = swift_allocObject();
      *(v31 + 40) = 0;
      *(v31 + 16) = v29;
      *(v31 + 24) = v30;
      *(v31 + 32) = 0;
      v1[3] = v31;

      return v1;
    }

    v22 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v1[3], v1[1], v1[2]);
    v24 = v23;
    v26 = v25;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    v14 = swift_allocError();
    *v15 = 0xD000000000000015;
    *(v15 + 8) = 0x8000000181481B60;
    *(v15 + 16) = value;
    *(v15 + 24) = v22;
    *(v15 + 32) = v24;
    *(v15 + 40) = v26;
    v16 = 1;
    goto LABEL_43;
  }

  return v1;
}

Swift::UInt8_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSON5Scanner.DocumentReader.consumeWhitespace(allowingEOF:)(Swift::Bool allowingEOF)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (v3 < v2)
  {
    v4 = 3;
    while (1)
    {
      v5 = *v3;
      if (v5 <= 0x3F && ((1 << v5) & 0x100003E00) != 0)
      {
        goto LABEL_10;
      }

      if (v5 != 47)
      {
        if (v5 == 160)
        {
LABEL_10:
          ++v3;
          goto LABEL_11;
        }

        goto LABEL_38;
      }

      if ((v3 + 1) >= v2)
      {
        goto LABEL_37;
      }

      v7 = v3[1];
      if (v7 == 42)
      {
        break;
      }

      if (v7 != 47)
      {
LABEL_37:
        LOWORD(v5) = 47;
LABEL_38:
        *(v1 + 16) = v3;
        return v5;
      }

      if ((v3 + 2) < v2)
      {
        v8 = v2 - 2 - v3;
        v3 += 3;
        while (1)
        {
          v9 = *(v3 - 1);
          if (v9 == 13 || v9 == 10)
          {
            break;
          }

          ++v3;
          if (!--v8)
          {
            goto LABEL_34;
          }
        }

LABEL_11:
        if (v3 < v2)
        {
          continue;
        }
      }

      goto LABEL_34;
    }

    v11 = v3 + 3;
    if ((v3 + 3) < v2)
    {
      v12 = v3 + 2;
      while (1)
      {
        v14 = *v11;
        if (*v12 == 42)
        {
          if (v14 != 42)
          {
            if (v14 == 47)
            {
              v3 = v12 + 2;
              goto LABEL_11;
            }

LABEL_33:
            v13 = 2;
            goto LABEL_27;
          }
        }

        else if (v14 != 42)
        {
          goto LABEL_33;
        }

        v13 = 1;
LABEL_27:
        v12 += v13;
        v11 = v12 + 1;
        if ((v12 + 1) >= v2)
        {
          goto LABEL_36;
        }
      }
    }

    goto LABEL_36;
  }

LABEL_34:
  v4 = 1;
  if (!allowingEOF)
  {
LABEL_36:
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v16 = v4;
    *(v16 + 8) = 0u;
    *(v16 + 24) = 0u;
    *(v16 + 40) = 0;
    *(v16 + 48) = 12;
    return swift_willThrow();
  }

  return 256;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSON5Scanner.scanObject()()
{
  v1 = v0[3];
  if (v0[4] == v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *v1;
  v0[3] = v1 + 1;
  if (v2 != 123)
  {
LABEL_7:
    __break(1u);
    return;
  }

  if (v0[5] > 511)
  {
    v3 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v1, v0[1], v0[2]);
    v5 = v4;
    v7 = v6;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v8 = v3;
    *(v8 + 8) = v5;
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    *(v8 + 40) = 0;
    *(v8 + 48) = 2;
    swift_willThrow();
  }

  else
  {
    JSON5Scanner.scanObject(withoutBraces:)(0);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSON5Scanner.scanObject(withoutBraces:)(Swift::Bool withoutBraces)
{
  v3 = v1;
  v4 = withoutBraces;
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *(v1 + 40) = v6 + 1;
  v7 = *(v1 + 24);
  if (v7 >= v5)
  {
LABEL_32:
    if (withoutBraces)
    {
      v4 = v2;
      JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v1 + 8), *(v1 + 16), v7);
      v19 = *(*(v1 + 48) + 16);
      v20 = (v19 + 4);
      if (!__OFADD__(v19, 4))
      {
        goto LABEL_34;
      }

      __break(1u);
LABEL_61:
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
LABEL_43:
      v30 = *(v20 + 2);
      v29 = *(v20 + 3);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v20);
      }

      *(v20 + 2) = v31;
      *&v20[8 * v30 + 32] = 5;
      *(v3 + 48) = v20;
      specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of JSON5Scanner.scanObject(withoutBraces:));
      done = 0;
      while (1)
      {
        JSON5Scanner._scanObjectLoop(withoutBraces:count:done:)(v4, &count, &done);
        if (v32)
        {
          break;
        }

        if (done)
        {
          v33 = count;
          JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v3 + 8), *(v3 + 16), *(v3 + 24));
          v34 = *(v3 + 48);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
          }

          v35 = *(v34 + 2);
          v36 = *(v34 + 3);
          v37 = v35 + 1;
          if (v35 >= v36 >> 1)
          {
            v43 = v34;
            v44 = *(v34 + 2);
            v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v35 + 1, 1, v43);
            v35 = v44;
            v34 = v45;
          }

          goto LABEL_52;
        }
      }

      v33 = count;
      JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v3 + 8), *(v3 + 16), *(v3 + 24));
      v34 = *(v3 + 48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
      }

      v35 = *(v34 + 2);
      v38 = *(v34 + 3);
      v37 = v35 + 1;
      if (v35 >= v38 >> 1)
      {
        v40 = v34;
        v41 = *(v34 + 2);
        v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v35 + 1, 1, v40);
        v35 = v41;
        v34 = v42;
      }

LABEL_52:
      *(v34 + 2) = v37;
      *&v34[8 * v35 + 32] = 7;
      *&v34[8 * v31 + 32] = v37;
      *&v34[8 * v30 + 48] = v33;
      --*(v3 + 40);
      *(v3 + 48) = v34;
      return;
    }

    v8 = 1;
    goto LABEL_36;
  }

  v8 = 3;
  v9 = *(v1 + 24);
  while (1)
  {
    v10 = *v9;
    if (v10 < 0x41)
    {
      if (v10 == 64)
      {
        goto LABEL_38;
      }

      if (((1 << v10) & 0x100003E00) != 0)
      {
        goto LABEL_8;
      }
    }

    if (v10 != 47)
    {
      break;
    }

    if ((v9 + 1) >= v5)
    {
      goto LABEL_38;
    }

    v11 = v9[1];
    if (v11 == 42)
    {
      v15 = v9 + 3;
      if ((v9 + 3) < v5)
      {
        v16 = v9 + 2;
        do
        {
          v18 = *v15;
          if (*v16 == 42)
          {
            if (v18 != 42)
            {
              if (v18 == 47)
              {
                v9 = v16 + 2;
                goto LABEL_9;
              }

LABEL_31:
              v17 = 2;
              goto LABEL_25;
            }
          }

          else if (v18 != 42)
          {
            goto LABEL_31;
          }

          v17 = 1;
LABEL_25:
          v16 += v17;
          v15 = v16 + 1;
        }

        while ((v16 + 1) < v5);
      }

LABEL_36:
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      *v22 = v8;
      *(v22 + 8) = 0u;
      *(v22 + 24) = 0u;
      *(v22 + 40) = 0;
      *(v22 + 48) = 12;
      swift_willThrow();
LABEL_37:
      *(v3 + 40) = v6;
      return;
    }

    if (v11 != 47)
    {
LABEL_38:
      *(v1 + 24) = v9;
      goto LABEL_42;
    }

    if ((v9 + 2) < v5)
    {
      v12 = v5 - 2 - v9;
      v9 += 3;
      while (1)
      {
        v13 = *(v9 - 1);
        if (v13 == 13 || v13 == 10)
        {
          break;
        }

        ++v9;
        if (!--v12)
        {
          goto LABEL_32;
        }
      }

LABEL_9:
      if (v9 < v5)
      {
        continue;
      }
    }

    goto LABEL_32;
  }

  if (v10 == 160)
  {
LABEL_8:
    ++v9;
    goto LABEL_9;
  }

  *(v1 + 24) = v9;
  if (v10 != 125)
  {
LABEL_42:
    count = 0;
    JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v1 + 8), *(v1 + 16), v9);
    v20 = *(v1 + 48);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_43;
    }

    goto LABEL_61;
  }

  if (withoutBraces)
  {
    v23 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v9, *(v1 + 8), *(v1 + 16));
    v25 = v24;
    v27 = v26;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v28 = 0;
    *(v28 + 8) = 0;
    *(v28 + 16) = 125;
    *(v28 + 24) = v23;
    *(v28 + 32) = v25;
    *(v28 + 40) = v27;
    *(v28 + 48) = 1;
    swift_willThrow();
    goto LABEL_37;
  }

  *(v1 + 24) = v9 + 1;
  JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v1 + 8), *(v1 + 16), (v9 + 1));
  v39 = *(*(v1 + 48) + 16);
  v20 = (v39 + 4);
  if (!__OFADD__(v39, 4))
  {
LABEL_34:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18121D6C0;
    *(inited + 32) = 5;
    *(inited + 40) = v20;
    *(inited + 48) = xmmword_181237530;
    specialized Array.append<A>(contentsOf:)(inited);
    *(v3 + 40) = v6;
    return;
  }

  __break(1u);
}