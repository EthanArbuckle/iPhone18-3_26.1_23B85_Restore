uint64_t next #1 () in Calendar.DatesByRecurring.Iterator.nextGroup()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (!*(result + 576))
  {
    v4 = 0;
    v3 = *result;
    goto LABEL_67;
  }

  v3 = 0.0;
  if (*(result + 568))
  {
    v4 = 1;
    goto LABEL_67;
  }

  v5 = *(result + 192);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_74;
  }

  v35 = a2;
  v8 = *(result + 216);
  while (1)
  {
    *(v2 + 192) = v7;
    v9 = *(v2 + 256);
    v10 = *(v2 + 264);
    v11 = *(v2 + 248);
    memcpy(__dst, (v2 + 272), 0x11BuLL);
    v12 = *(v2 + 555);
    v13 = *(v2 + 556);
    v14 = *(v2 + 557);
    v15 = *(v2 + 200);
    v16 = *(v2 + 208);
    v41[0] = v9;
    v41[1] = v10;
    memcpy(v46, (v2 + 272), 0x11BuLL);
    *v36 = v8;
    LOBYTE(v44) = v14;
    swift_unknownObjectRetain();
    outlined init with copy of DateComponents(__dst, __src);
    Calendar._adjustedComponents(_:date:direction:)(v46, v36, &v44, __src);
    memcpy(v49, __src, 0x11BuLL);
    *&v46[0] = v9;
    *(&v46[0] + 1) = v10;
    *v36 = v8;
    memcpy(__src, v49, 0x11BuLL);
    LOBYTE(v44) = v14;
    LOBYTE(v42[0]) = v12;
    LOBYTE(v45[0]) = v13;
    Calendar._matchingDate(after:matching:direction:matchingPolicy:repeatedTimePolicy:)(v36, __src, &v44, v42, v45, v41);
    if (v41[1])
    {
      outlined destroy of DateComponents(__dst);
      swift_unknownObjectRelease();
      outlined destroy of DateComponents(v49);
LABEL_12:
      *(v2 + 216) = v8;
      goto LABEL_13;
    }

    v17 = v41[0];
    LOBYTE(v43) = 1;
    v40 = 0;
    v41[0] = v9;
    v41[1] = v10;
    *&v44 = v11;
    v42[0] = v8;
    v45[0] = v17;
    memcpy(__src, __dst, 0x11BuLL);
    memcpy(v46, v49, 0x11BuLL);
    v39 = v14;
    v38 = v12;
    v37 = v13;
    Calendar._adjustedDateForMismatches(start:searchingDate:matchDate:matchingComponents:compsToMatch:direction:matchingPolicy:repeatedTimePolicy:isForwardDST:isExactMatch:isLeapDay:)(&v44, v42, v45, __src, v46, &v39, &v38, &v37, v36, &v40, &v43, &v40 + 1);
    v18 = *v36;
    if (v36[8])
    {
      *&v46[0] = v9;
      *(&v46[0] + 1) = v10;
      *&v44 = v8;
      memcpy(__src, __dst, 0x11BuLL);
      LOBYTE(v42[0]) = v14;
      v36[8] = 1;
      Calendar.bumpedDateUpToNextHigherUnitInComponents(_:_:_:_:)(&v44, v42, v36, v41);
      outlined destroy of DateComponents(v49);
      outlined destroy of DateComponents(__dst);
      swift_unknownObjectRelease();
      if (!LOBYTE(v41[1]))
      {
        v8 = *v41;
      }

      goto LABEL_12;
    }

    *&v46[0] = v9;
    *(&v46[0] + 1) = v10;
    memcpy(__src, __dst, 0x11BuLL);
    v20 = Calendar.date(_:containsMatchingComponents:)(v41, v36, __src);
    if (v20 && (v43 & 1) == 0)
    {
      LOBYTE(v43) = 1;
    }

    v21 = v41[0];
    *&v46[0] = v9;
    *(&v46[0] + 1) = v10;
    *&v44 = v8;
    memcpy(__src, __dst, 0x11BuLL);
    LOBYTE(v42[0]) = v14;
    *v36 = v18;
    v36[8] = 0;
    Calendar.bumpedDateUpToNextHigherUnitInComponents(_:_:_:_:)(&v44, v42, v36, v41);
    if (!LOBYTE(v41[1]))
    {
      v8 = *v41;
    }

    if (!v20 && (v21 & 0x2200) == 0)
    {
      LOBYTE(v43) = 0;
    }

    if ((v16 & 1) == 0)
    {
      if (v15 >= v18)
      {
        goto LABEL_24;
      }

LABEL_28:
      v22 = 1;
      if (!v14)
      {
        goto LABEL_41;
      }

LABEL_29:
      if ((v21 & 0x2000) != 0)
      {
        goto LABEL_41;
      }

      memcpy(__src, v49, 0x11BuLL);
      DateComponents.highestSetUnit.getter(v46);
      if (LOBYTE(v46[0]) != 4)
      {
        outlined destroy of DateComponents(__dst);
        outlined destroy of DateComponents(v49);
        swift_unknownObjectRelease();
        goto LABEL_12;
      }

      *&v44 = 16;
      if (one-time initialization token for validCalendarRange != -1)
      {
        swift_once();
      }

      v23 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v18)
      {
        v23 = v18;
      }

      if (*&static Date.validCalendarRange >= v23)
      {
        v24 = *&static Date.validCalendarRange;
      }

      else
      {
        v24 = v23;
      }

      ObjectType = swift_getObjectType();
      *v41 = v24;
      v26 = *(v10 + 192);
      v26(__src, &v44, v41, ObjectType, v10);
      memcpy(v46, __src, 0x11BuLL);
      outlined destroy of DateComponents(v46);
      if (BYTE8(v46[7]))
      {
        v27 = 0;
        if ((v14 & 1) == 0)
        {
LABEL_40:
          v28 = 3600.0;
LABEL_54:
          v30 = v28 + v18;
          *&v42[0] = 16;
          v31 = *(&static Date.validCalendarRange + 1);
          if (*(&static Date.validCalendarRange + 1) >= v30)
          {
            v31 = v30;
          }

          if (*&static Date.validCalendarRange >= v31)
          {
            v31 = *&static Date.validCalendarRange;
          }

          v45[0] = *&v31;
          v26(v41, v42, v45, ObjectType, v10);
          memcpy(v36, v41, sizeof(v36));
          outlined destroy of DateComponents(v36);
          outlined destroy of DateComponents(__dst);
          outlined destroy of DateComponents(v49);
          swift_unknownObjectRelease();
          if (v36[120])
          {
            v32 = v27 == 0;
          }

          else
          {
            v32 = v27 == *&v36[112];
          }

          if (v32)
          {
            v8 = v30;
          }

          goto LABEL_12;
        }
      }

      else
      {
        v27 = *&v46[7];
        if ((v14 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v28 = -3600.0;
      goto LABEL_54;
    }

    v15 = v11;
    if (v11 < v18)
    {
      goto LABEL_28;
    }

LABEL_24:
    v22 = v15 > v18;
    if ((v14 & 1) == 0 && v15 > v18)
    {
      goto LABEL_29;
    }

LABEL_41:
    outlined destroy of DateComponents(__dst);
    outlined destroy of DateComponents(v49);
    result = swift_unknownObjectRelease();
    v29 = v43;
    if (v40 == 1)
    {
      if (v12 != 3)
      {
        v29 = 1;
      }

      if ((v29 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if ((v43 & 1) == 0 && (v12 == 3 || (v40 & 0x100) == 0))
    {
      goto LABEL_12;
    }

    *(v2 + 216) = v8;
    if (v22)
    {
      break;
    }

LABEL_13:
    v19 = *(v2 + 192);
    if (v19 >= *(v2 + 560))
    {
      *&v44 = *(v2 + 248);
      *v36 = *(v2 + 256);
      memcpy(v46, (v2 + 272), 0x11BuLL);
      memcpy(v41, (v2 + 272), 0x11BuLL);
      LOBYTE(v42[0]) = *(v2 + 557);
      LOBYTE(v45[0]) = *(v2 + 555);
      LOBYTE(v43) = *(v2 + 556);
      swift_unknownObjectRetain();
      outlined init with copy of DateComponents(v46, __src);
      _handleCalendarResultNotFound(date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(&v44, v36, v41, v42, v45, &v43);
      memcpy(__src, v41, 0x11BuLL);
      outlined destroy of DateComponents(__src);
      result = swift_unknownObjectRelease();
LABEL_65:
      v4 = 1;
      *(v2 + 568) = 1;
      goto LABEL_66;
    }

    *(v2 + 216) = v8;
    v7 = v19 + 1;
  }

  if ((*(v2 + 240) & 1) == 0 && (*(v2 + 224) > v18 || *(v2 + 232) <= v18))
  {
    goto LABEL_65;
  }

  v4 = 0;
  *(v2 + 200) = v18;
  *(v2 + 208) = 0;
  v3 = v18;
LABEL_66:
  a2 = v35;
LABEL_67:
  v33 = *(v2 + 576);
  v6 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (!v6)
  {
    *(v2 + 576) = v34;
    *a2 = v3;
    *(a2 + 8) = v4;
    return result;
  }

LABEL_74:
  __break(1u);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

char *Calendar._dates(startingAfter:matching:in:matchingPolicy:repeatedTimePolicy:)(double *a1, uint64_t *a2, double *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  v8 = *a1;
  v9 = *a3;
  v10 = a3[1];
  v11 = *a4;
  v12 = *a5;
  v14 = *v5;
  v13 = v5[1];
  v38 = v13;
  if (one-time initialization token for validCalendarRange != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    if (v8 < *&static Date.validCalendarRange || *(&static Date.validCalendarRange + 1) < v8)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v42[0] = v14;
    v42[1] = v13;
    v40[0] = v8;
    __dst[0] = v11;
    LOBYTE(__src[0]) = v12;
    v16 = Calendar._unadjustedDates(after:matching:matchingPolicy:repeatedTimePolicy:)(v40, a2, __dst, __src);
    if (v6)
    {
      return v7;
    }

    v7 = MEMORY[0x1E69E7CC0];
    if (!v16)
    {
      return v7;
    }

    v18 = *(v16 + 16);
    if (!v18)
    {
      break;
    }

    v44 = MEMORY[0x1E69E7CC0];
    v37 = v16;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v19 = v37;
    if (*(v37 + 16))
    {
      v20 = 0;
      v21 = v44;
      v36 = v18 - 1;
      v22 = 32;
      v7 = &_s10Foundation4DateV_AA0B10ComponentsVtMd;
      while (1)
      {
        v23 = v19;
        memcpy(__dst, (v19 + v22), 0x123uLL);
        memcpy(__src, (v23 + v22), 0x123uLL);
        outlined init with copy of FloatingPointRoundingRule?(__dst, v40, &_s10Foundation4DateV_AA0B10ComponentsVtMd);
        v6 = 0;
        closure #1 in Calendar._dates(startingAfter:matching:in:matchingPolicy:repeatedTimePolicy:)(v42, &v42[3], __src, &__src[1], v14, v13, v11, v12, v8);
        v24 = v14;
        v25 = v12;
        v26 = v11;
        memcpy(v39, __src, 0x123uLL);
        outlined destroy of TermOfAddress?(v39, &_s10Foundation4DateV_AA0B10ComponentsVtMd);
        memcpy(v40, v42, 0x133uLL);
        v44 = v21;
        v28 = *(v21 + 16);
        v27 = *(v21 + 24);
        if (v28 >= v27 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          v21 = v44;
        }

        *(v21 + 16) = v28 + 1;
        memcpy((v21 + 312 * v28 + 32), v40, 0x133uLL);
        if (v36 == v20)
        {
          break;
        }

        v19 = v37;
        v22 += 296;
        ++v20;
        v11 = v26;
        v12 = v25;
        v14 = v24;
        v13 = v38;
        if (v20 >= *(v37 + 16))
        {
          goto LABEL_36;
        }
      }

      v29 = *(v21 + 16);
      if (!v29)
      {
        goto LABEL_35;
      }

      goto LABEL_20;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    v35 = a2;
    swift_once();
    a2 = v35;
    v13 = v38;
  }

  v21 = MEMORY[0x1E69E7CC0];
  v29 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v29)
  {
LABEL_35:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_20:
  v30 = (v21 + 40);
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    if (*v30 != 2)
    {
      v31 = *(v30 - 1);
      if (v31 >= v9 && v31 < v10)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
        }

        v34 = *(v7 + 2);
        v33 = *(v7 + 3);
        if (v34 >= v33 >> 1)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v7);
        }

        *(v7 + 2) = v34 + 1;
        *&v7[8 * v34 + 32] = v31;
      }
    }

    v30 += 39;
    --v29;
  }

  while (v29);

  return v7;
}

Swift::Void __swiftcall Calendar.RecurrenceRule._limitMonths(dates:anchor:)(Swift::OpaquePointer *dates, Foundation::Date anchor)
{
  v5 = *v2;
  v6 = v3[1];
  v7 = v3[12];
  __src[0] = *v3;
  __src[1] = v6;
  __dst[0] = v5;
  swift_unknownObjectRetain();
  v8 = Calendar._normalizedMonths(_:for:)(v7, __dst);
  swift_unknownObjectRelease();
  rawValue = dates->_rawValue;
  v35 = *(dates->_rawValue + 2);
  if (v35)
  {
    ObjectType = swift_getObjectType();
    v11 = 0;
    v34 = *(v6 + 192);
    v12 = *(v8 + 16);
    v31 = (v8 + 40);
    v32 = v8;
    v33 = MEMORY[0x1E69E7CC0];
    v30 = v6;
    v13 = ObjectType;
    do
    {
      v14 = rawValue[v11 + 4];
      v41 = 4;
      v15 = one-time initialization token for validCalendarRange;
      swift_unknownObjectRetain();
      if (v15 != -1)
      {
        swift_once();
      }

      v16 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v14)
      {
        v16 = v14;
      }

      if (*&static Date.validCalendarRange >= v16)
      {
        v16 = *&static Date.validCalendarRange;
      }

      *v39 = v16;
      (v34)(__src, &v41, v39, v13, v6);
      memcpy(__dst, __src, 0x11BuLL);
      outlined destroy of DateComponents(__dst);
      swift_unknownObjectRelease();
      v17 = v6;
      if (LOBYTE(__dst[9]))
      {
        v18 = 0.0;
      }

      else
      {
        v18 = __dst[8];
      }

      v38 = 4;
      v19 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v14)
      {
        v19 = v14;
      }

      if (*&static Date.validCalendarRange >= v19)
      {
        v19 = *&static Date.validCalendarRange;
      }

      v36 = v19;
      v20 = v17;
      v34(v39, &v38, &v36, v13);
      memcpy(v37, v39, 0x11BuLL);
      outlined destroy of DateComponents(v37);
      if (v12)
      {
        v21 = v31;
        v22 = *(v32 + 16);
        v23 = v12;
        v24 = v33;
        while (1)
        {
          if (!v22)
          {
            __break(1u);
            goto LABEL_38;
          }

          v25 = *(v21 - 1) != *&v18 || v37[281] == 2;
          if (!v25 && ((*v21 ^ v37[281]) & 1) == 0)
          {
            break;
          }

          --v22;
          v21 += 16;
          if (!--v23)
          {
            goto LABEL_30;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1);
          v24 = v43;
        }

        v28 = v24[2];
        v27 = v24[3];
        if (v28 >= v27 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          v24 = v43;
        }

        v24[2] = v28 + 1;
        v33 = v24;
        *&v24[v28 + 4] = v14;
        v6 = v30;
      }

      else
      {
LABEL_30:
        v6 = v20;
      }

      if (++v11 == v35)
      {

        v29 = v33;
        goto LABEL_36;
      }
    }

    while (v11 < *(rawValue + 2));
LABEL_38:
    __break(1u);
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
LABEL_36:
    dates->_rawValue = v29;
  }
}

Swift::Void __swiftcall Calendar.RecurrenceRule._limitDaysOfTheYear(dates:anchor:)(Swift::OpaquePointer *dates, Foundation::Date anchor)
{
  v3 = dates;
  rawValue = dates->_rawValue;
  v29 = *(dates->_rawValue + 2);
  if (!v29)
  {

    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_39;
  }

  v5 = *(v2 + 8);
  v6 = *(v2 + 88);
  v7 = *(v6 + 16);
  v28 = rawValue + 32;
  ObjectType = swift_getObjectType();
  v32 = v5;
  v8 = 0;
  v27 = *(v5 + 192);
  v9 = MEMORY[0x1E69E7CC0];
  v26 = rawValue;
  do
  {
    v10 = *&v28[8 * v8];
    v37 = 0x40000;
    v11 = one-time initialization token for validCalendarRange;
    swift_unknownObjectRetain();
    if (v11 != -1)
    {
      swift_once();
    }

    v12 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v10)
    {
      v12 = v10;
    }

    if (*&static Date.validCalendarRange >= v12)
    {
      v12 = *&static Date.validCalendarRange;
    }

    v35 = v12;
    v27(__src, &v37, &v35, ObjectType, v32);
    memcpy(__dst, __src, 0x11BuLL);
    outlined destroy of DateComponents(__dst);
    swift_unknownObjectRelease();
    if (__dst[13])
    {
      if (!v7)
      {
        goto LABEL_34;
      }

      v30 = v9;
      v13 = 0;
    }

    else
    {
      if (!v7)
      {
        goto LABEL_34;
      }

      v30 = v9;
      v13 = __dst[12];
    }

    v14 = 0;
    v15 = 0;
    v16 = 1;
    while (1)
    {
      if (v15 >= *(v6 + 16))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v17 = *(v6 + 8 * v15 + 32);
      if (v17 <= 0)
      {
        break;
      }

      if (v17 == v13)
      {
        goto LABEL_29;
      }

LABEL_16:
      if (v7 == ++v15)
      {

        rawValue = v26;
        v9 = v30;
        goto LABEL_34;
      }
    }

    if (v16)
    {
      v34 = 18;
      v16 = 1;
      v33 = 1;
      v18 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v10)
      {
        v18 = v10;
      }

      if (*&static Date.validCalendarRange >= v18)
      {
        v18 = *&static Date.validCalendarRange;
      }

      v35 = v18;
      v19 = *(v32 + 144);
      swift_unknownObjectRetain();
      v19(&v34, &v33, &v35, ObjectType, v32);
      v14 = v20;
      LOBYTE(v19) = v21;
      swift_unknownObjectRelease();
      if (v19)
      {
        goto LABEL_16;
      }
    }

    if (__OFADD__(v14, v17))
    {
      goto LABEL_41;
    }

    if (v14 + v17 != v13)
    {
      v16 = 0;
      goto LABEL_16;
    }

LABEL_29:

    v9 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v30;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30[2] + 1, 1);
      v9 = v39;
    }

    v24 = v9[2];
    v23 = v9[3];
    if (v24 >= v23 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
      v9 = v39;
    }

    v9[2] = v24 + 1;
    *&v9[v24 + 4] = v10;
    rawValue = v26;
LABEL_34:
    if (++v8 == v29)
    {

      v3 = dates;
LABEL_39:
      v3->_rawValue = v9;
      return;
    }
  }

  while (v8 < *(rawValue + 2));
LABEL_42:
  __break(1u);
}

Swift::Void __swiftcall Calendar.RecurrenceRule._limitDaysOfTheMonth(dates:anchor:)(Swift::OpaquePointer *dates, Foundation::Date anchor)
{
  v3 = dates;
  rawValue = dates->_rawValue;
  v32 = *(dates->_rawValue + 2);
  if (!v32)
  {

    v26 = MEMORY[0x1E69E7CC0];
    goto LABEL_40;
  }

  v5 = *(v2 + 8);
  v6 = *(v2 + 80);
  v7 = *(v6 + 16);
  v31 = rawValue + 32;
  ObjectType = swift_getObjectType();
  v9 = 0;
  v30 = *(v5 + 192);
  v33 = ObjectType;
  v28 = rawValue;
  v29 = MEMORY[0x1E69E7CC0];
  do
  {
    v10 = *&v31[8 * v9];
    v38 = 8;
    v11 = one-time initialization token for validCalendarRange;
    swift_unknownObjectRetain();
    if (v11 != -1)
    {
      swift_once();
    }

    v12 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v10)
    {
      v12 = v10;
    }

    if (*&static Date.validCalendarRange >= v12)
    {
      v12 = *&static Date.validCalendarRange;
    }

    v36 = v12;
    v30(__src, &v38, &v36, v33, v5);
    memcpy(__dst, __src, 0x11BuLL);
    outlined destroy of DateComponents(__dst);
    swift_unknownObjectRelease();
    if (__dst[11])
    {
      if (!v7)
      {
        goto LABEL_35;
      }

      v13 = 0;
    }

    else
    {
      if (!v7)
      {
        goto LABEL_35;
      }

      v13 = __dst[10];
    }

    v14 = 0;
    v15 = 0;
    v16 = 1;
    while (1)
    {
      if (v15 >= *(v6 + 16))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v17 = *(v6 + 8 * v15 + 32);
      if (v17 <= 0)
      {
        break;
      }

      if (v17 == v13)
      {
        goto LABEL_30;
      }

LABEL_16:
      if (v7 == ++v15)
      {

        rawValue = v28;
        goto LABEL_35;
      }
    }

    if (v16)
    {
      v35 = 3;
      v34 = 2;
      v18 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v10)
      {
        v18 = v10;
      }

      if (*&static Date.validCalendarRange >= v18)
      {
        v18 = *&static Date.validCalendarRange;
      }

      v36 = v18;
      v19 = *(v5 + 144);
      swift_unknownObjectRetain();
      v19(&v35, &v34, &v36, v33, v5);
      v14 = v20;
      LOBYTE(v19) = v21;
      swift_unknownObjectRelease();
      if (v19)
      {
        v16 = 1;
        goto LABEL_16;
      }
    }

    if (__OFADD__(v14, v17))
    {
      goto LABEL_42;
    }

    if (v14 + v17 != v13)
    {
      v16 = 0;
      goto LABEL_16;
    }

LABEL_30:

    v22 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1);
      v22 = v40;
    }

    rawValue = v28;
    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
      v22 = v40;
    }

    v22[2] = v25 + 1;
    v29 = v22;
    *&v22[v25 + 4] = v10;
LABEL_35:
    if (++v9 == v32)
    {

      v3 = dates;
      v26 = v29;
LABEL_40:
      v3->_rawValue = v26;
      return;
    }
  }

  while (v9 < *(rawValue + 2));
LABEL_43:
  __break(1u);
}

Swift::Void __swiftcall Calendar.RecurrenceRule._limitWeekdays(dates:anchor:)(Swift::OpaquePointer *dates, Foundation::Date anchor)
{
  v143 = dates;
  v207 = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v5 = v3[1];
  v162 = *v3;
  v6._rawValue = v3[9];
  if (*(v3 + 18) == 5)
  {
    if (*(v3[12] + 16))
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 2;
  }

  *&v193 = v162;
  *(&v193 + 1) = v5;
  LOBYTE(v173[0]) = v7;
  *&v174[0] = v4;
  swift_unknownObjectRetain();
  v9 = Calendar._weekdayComponents(for:in:anchor:)(v6, v173, v8);
  swift_unknownObjectRelease();
  rawValue = v143->_rawValue;
  v11 = *(v143->_rawValue + 2);
  if (v11)
  {
    v12 = 0;
    v139 = 0;
    v144 = rawValue + 32;
    v161 = v5;
    v159 = v5 + 192;
    v150 = v205;
    v152 = &v206[10] + 9;
    v153 = v9 + 32;
    v148 = &v174[10] + 9;
    v149 = &v173[10] + 9;
    v146 = &v170[10] + 9;
    v147 = &v169[10] + 9;
    v140 = MEMORY[0x1E69E7CC0];
    v141 = v11;
    v151 = v9;
    v142 = rawValue;
    while (1)
    {
      if (v12 >= *(rawValue + 2))
      {
        goto LABEL_162;
      }

      if (!v9)
      {
        goto LABEL_9;
      }

      v145 = v12;
      v13 = *&v144[8 * v12];
      v14 = *(v9 + 16);

      v154 = v14;
      if (!v14)
      {
        goto LABEL_8;
      }

      v15 = 0;
      while (2)
      {
        if (v15 >= *(v9 + 16))
        {
          goto LABEL_161;
        }

        memcpy(v206, (v153 + 288 * v15), 0x11BuLL);
        v156 = v15 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd);
        v16 = static _SetStorage.allocate(capacity:)();
        v17 = 0;
        v18 = v16 + 56;
        do
        {
          v22 = outlined read-only object #0 of Calendar.RecurrenceRule._limitWeekdays(dates:anchor:)[v17 + 32];
          Hasher.init(_seed:)();
          MEMORY[0x1865CD060](v22);
          v23 = Hasher._finalize()();
          v24 = ~(-1 << *(v16 + 32));
          v25 = v23 & v24;
          v26 = (v23 & v24) >> 6;
          v27 = *(v18 + 8 * v26);
          v28 = 1 << (v23 & v24);
          v29 = *(v16 + 48);
          if ((v28 & v27) != 0)
          {
            while (*(v29 + v25) != v22)
            {
              v25 = (v25 + 1) & v24;
              v26 = v25 >> 6;
              v27 = *(v18 + 8 * (v25 >> 6));
              v28 = 1 << v25;
              if (((1 << v25) & v27) == 0)
              {
                goto LABEL_16;
              }
            }
          }

          else
          {
LABEL_16:
            *(v18 + 8 * v26) = v28 | v27;
            *(v29 + v25) = v22;
            v19 = *(v16 + 16);
            v20 = __OFADD__(v19, 1);
            v21 = v19 + 1;
            if (v20)
            {
              goto LABEL_157;
            }

            *(v16 + 16) = v21;
          }

          ++v17;
        }

        while (v17 != 15);
        MEMORY[0x1EEE9AC00](v23);
        *(&v139 - 2) = v206;
        v30 = *(v16 + 32);
        v155 = ((1 << v30) + 63) >> 6;
        v31 = 8 * v155;
        v158 = &v139;
        if ((v30 & 0x3Fu) > 0xD)
        {
          outlined init with copy of DateComponents(v206, &v193);

          if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
          {
            v131 = swift_slowAlloc();

            v132 = v139;
            _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy10Foundation8CalendarV9ComponentOG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab20VKXEfU_10Foundation8j2V9K5O_TG5AMxSbs5Error_pRi_zRi0_zlyALIsgndzo_Tf1nc_n(v131, v155, v16, partial apply for closure #1 in Calendar.date(_:matchesComponents:));
            v139 = v132;
            if (!v132)
            {
              v59 = v133;

              MEMORY[0x1865D2690](v131, -1, -1);
              goto LABEL_93;
            }

            MEMORY[0x1865D2690](v131, -1, -1);
            __break(1u);
            return;
          }
        }

        else
        {
          v32 = outlined init with copy of DateComponents(v206, &v193);
        }

        v157 = &v139;
        MEMORY[0x1EEE9AC00](v32);
        v33 = (&v139 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0));
        bzero(v33, v31);
        v34 = 0;
        v35 = 0;
        v36 = 1 << *(v16 + 32);
        v37 = BYTE8(v206[6]);
        if (v36 < 64)
        {
          v38 = ~(-1 << v36);
        }

        else
        {
          v38 = -1;
        }

        v39 = *(v16 + 56) & v38;
        v40 = BYTE8(v206[10]);
        v41 = (v36 + 63) >> 6;
        v42 = BYTE8(v206[17]);
        v43 = BYTE8(v206[16]);
        v44 = BYTE8(v206[15]);
        v45 = BYTE8(v206[13]);
        v46 = BYTE8(v206[12]);
        v47 = BYTE8(v206[11]);
        v48 = BYTE8(v206[9]);
        v49 = BYTE8(v206[8]);
        v50 = BYTE8(v206[7]);
        v51 = BYTE8(v206[5]);
        v52 = BYTE8(v206[4]);
        v53 = BYTE8(v206[3]);
        v54 = BYTE8(v206[2]);
        while (2)
        {
          if (v39)
          {
            v55 = __clz(__rbit64(v39));
            v39 &= v39 - 1;
LABEL_36:
            v58 = v55 | (v35 << 6);
            switch(*(*(v16 + 48) + v58))
            {
              case 1:
                if ((v53 & 1) == 0)
                {
                  goto LABEL_66;
                }

                continue;
              case 2:
                if ((v52 & 1) == 0)
                {
                  goto LABEL_66;
                }

                continue;
              case 3:
                if ((v51 & 1) == 0)
                {
                  goto LABEL_66;
                }

                continue;
              case 4:
                if ((v50 & 1) == 0)
                {
                  goto LABEL_66;
                }

                continue;
              case 5:
                if ((v49 & 1) == 0)
                {
                  goto LABEL_66;
                }

                continue;
              case 6:
                if ((v48 & 1) == 0)
                {
                  goto LABEL_66;
                }

                continue;
              case 7:
                if ((v47 & 1) == 0)
                {
                  goto LABEL_66;
                }

                continue;
              case 8:
                if ((v46 & 1) == 0)
                {
                  goto LABEL_66;
                }

                continue;
              case 9:
                if ((v45 & 1) == 0)
                {
                  goto LABEL_66;
                }

                continue;
              case 0xA:
                if ((v44 & 1) == 0)
                {
                  goto LABEL_66;
                }

                continue;
              case 0xB:
                if ((v43 & 1) == 0)
                {
                  goto LABEL_66;
                }

                continue;
              case 0xC:
                if ((v42 & 1) == 0)
                {
                  goto LABEL_66;
                }

                continue;
              case 0xD:
                if ((v40 & 1) == 0)
                {
                  goto LABEL_66;
                }

                continue;
              case 0xE:
              case 0xF:
              case 0x10:
              case 0x11:
                continue;
              case 0x12:
                if ((v37 & 1) == 0)
                {
                  goto LABEL_66;
                }

                continue;
              default:
                if (v54)
                {
                  continue;
                }

LABEL_66:
                *(v33 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
                v20 = __OFADD__(v34++, 1);
                if (!v20)
                {
                  continue;
                }

                goto LABEL_164;
            }
          }

          break;
        }

        v56 = v35;
        while (1)
        {
          v35 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:

            v138 = v140;
            goto LABEL_154;
          }

          if (v35 >= v41)
          {
            break;
          }

          v57 = *(v18 + 8 * v35);
          ++v56;
          if (v57)
          {
            v55 = __clz(__rbit64(v57));
            v39 = (v57 - 1) & v57;
            goto LABEL_36;
          }
        }

        if (!v34)
        {

          v59 = MEMORY[0x1E69E7CD0];
          goto LABEL_93;
        }

        if (v34 == *(v16 + 16))
        {
          v59 = v16;
          goto LABEL_93;
        }

        v60 = v34;
        v61 = static _SetStorage.allocate(capacity:)();
        v62 = v60;
        v59 = v61;
        v63 = 0;
        v64 = *v33;
        v65 = v61 + 56;
        while (2)
        {
          if (v64)
          {
            v160 = v62;
            v68 = __clz(__rbit64(v64));
            v64 &= v64 - 1;
            goto LABEL_83;
          }

          v69 = v63;
          while (2)
          {
            v63 = v69 + 1;
            if (__OFADD__(v69, 1))
            {
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
            }

            if (v63 >= v155)
            {
              goto LABEL_92;
            }

            v70 = v33[v63];
            ++v69;
            if (!v70)
            {
              continue;
            }

            break;
          }

          v160 = v62;
          v68 = __clz(__rbit64(v70));
          v64 = (v70 - 1) & v70;
LABEL_83:
          v71 = *(*(v16 + 48) + (v68 | (v63 << 6)));
          Hasher.init(_seed:)();
          MEMORY[0x1865CD060](v71);
          v72 = Hasher._finalize()();
          v73 = -1 << *(v59 + 32);
          v74 = v72 & ~v73;
          v75 = v74 >> 6;
          if (((-1 << v74) & ~*(v65 + 8 * (v74 >> 6))) != 0)
          {
            v66 = __clz(__rbit64((-1 << v74) & ~*(v65 + 8 * (v74 >> 6)))) | v74 & 0x7FFFFFFFFFFFFFC0;
            v67 = v160;
          }

          else
          {
            v76 = 0;
            v77 = (63 - v73) >> 6;
            v67 = v160;
            do
            {
              if (++v75 == v77 && (v76 & 1) != 0)
              {
                goto LABEL_160;
              }

              v78 = v75 == v77;
              if (v75 == v77)
              {
                v75 = 0;
              }

              v76 |= v78;
              v79 = *(v65 + 8 * v75);
            }

            while (v79 == -1);
            v66 = __clz(__rbit64(~v79)) + (v75 << 6);
          }

          *(v65 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v66;
          *(*(v59 + 48) + v66) = v71;
          ++*(v59 + 16);
          v62 = v67 - 1;
          if (v62)
          {
            continue;
          }

          break;
        }

LABEL_92:

LABEL_93:
        v80 = 0;
        v81 = 0;
        v82 = 1 << *(v59 + 32);
        if (v82 < 64)
        {
          v83 = ~(-1 << v82);
        }

        else
        {
          v83 = -1;
        }

        v84 = v83 & *(v59 + 56);
        v85 = (v82 + 63) >> 6;
        if (v84)
        {
          while (1)
          {
            v86 = v80;
LABEL_102:
            v87 = __clz(__rbit64(v84));
            v84 &= v84 - 1;
            v81 |= qword_1812330F8[*(*(v59 + 48) + (v87 | (v86 << 6)))];
            if (!v84)
            {
              goto LABEL_98;
            }
          }
        }

        while (1)
        {
LABEL_98:
          v86 = v80 + 1;
          if (__OFADD__(v80, 1))
          {
            goto LABEL_156;
          }

          if (v86 >= v85)
          {
            break;
          }

          v84 = *(v59 + 56 + 8 * v86);
          ++v80;
          if (v84)
          {
            v80 = v86;
            goto LABEL_102;
          }
        }

        if (one-time initialization token for validCalendarRange != -1)
        {
          swift_once();
        }

        v88 = *(&static Date.validCalendarRange + 1);
        if (*(&static Date.validCalendarRange + 1) >= v13)
        {
          v89 = v13;
        }

        else
        {
          v89 = *(&static Date.validCalendarRange + 1);
        }

        if (*&static Date.validCalendarRange >= v89)
        {
          v89 = *&static Date.validCalendarRange;
        }

        *&v174[0] = v81;
        if (*(&static Date.validCalendarRange + 1) >= v89)
        {
          v88 = v89;
        }

        if (*&static Date.validCalendarRange >= v88)
        {
          v90 = *&static Date.validCalendarRange;
        }

        else
        {
          v90 = v88;
        }

        ObjectType = swift_getObjectType();
        *v173 = v90;
        v92 = *(v161 + 192);
        v92(&v193, v174, v173, ObjectType);
        if ((v81 & 0x4000) != 0)
        {
          *&v193 = v162;
          *(&v193 + 1) = v161;
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          if (v194)
          {
            if (v162)
            {
              v174[0] = v194;
              swift_unknownObjectRetain();
              Calendar.timeZone.setter(v174);
            }
          }
        }

        v93 = v203;
        v94 = v204;
        v95 = v205[112];
        v96 = v205[113];
        v164 = v204;
        v189 = v206[6];
        v190 = v206[7];
        v191 = v206[8];
        v192 = v206[9];
        v185 = v206[2];
        v186 = v206[3];
        v187 = v206[4];
        v188 = v206[5];
        v183 = v206[0];
        v184 = v206[1];
        v97 = *&v206[10];
        v98 = BYTE8(v206[10]);
        v163 = BYTE8(v206[10]);
        v99 = *(v152 + 5);
        v179 = *(v152 + 4);
        v180 = v99;
        v181 = *(v152 + 6);
        v182 = *(v152 + 56);
        v100 = *(v152 + 1);
        v175 = *v152;
        v176 = v100;
        v101 = *(v152 + 3);
        v177 = *(v152 + 2);
        v178 = v101;
        if (BYTE9(v206[17]) == 2)
        {
          outlined init with copy of DateComponents(v206, v174);
        }

        else
        {
          v172[0] = 4;
          v102 = *(&static Date.validCalendarRange + 1);
          if (*(&static Date.validCalendarRange + 1) >= v13)
          {
            v102 = v13;
          }

          if (*&static Date.validCalendarRange >= v102)
          {
            v102 = *&static Date.validCalendarRange;
          }

          *v173 = v102;
          outlined init with copy of DateComponents(v206, v174);
          (v92)(v174, v172, v173, ObjectType, v161);
          memcpy(v173, v174, 0x11BuLL);
          outlined destroy of DateComponents(v173);
          v95 = BYTE9(v173[17]);
        }

        if (BYTE10(v206[17]) != 2)
        {
          v172[0] = 0x80000;
          v103 = *(&static Date.validCalendarRange + 1);
          if (*(&static Date.validCalendarRange + 1) >= v13)
          {
            v103 = v13;
          }

          if (*&static Date.validCalendarRange >= v103)
          {
            v103 = *&static Date.validCalendarRange;
          }

          *v173 = v103;
          (v92)(v174, v172, v173, ObjectType, v161);
          memcpy(v173, v174, 0x11BuLL);
          outlined destroy of DateComponents(v173);
          v96 = BYTE10(v173[17]);
        }

        if (v94 & 1) != 0 || (BYTE8(v206[10]))
        {
          goto LABEL_141;
        }

        v104 = v93 - *&v206[10];
        if (__OFSUB__(v93, *&v206[10]))
        {
          goto LABEL_163;
        }

        if (v104 < 0)
        {
          v104 = *&v206[10] - v93;
        }

        if (v104 >= 0x1F5)
        {
          outlined destroy of DateComponents(v206);
          v173[6] = v189;
          v173[7] = v190;
          v173[8] = v191;
          v173[9] = v192;
          v173[2] = v185;
          v173[3] = v186;
          v173[4] = v187;
          v173[5] = v188;
          v173[0] = v183;
          v173[1] = v184;
          *&v173[10] = v97;
          BYTE8(v173[10]) = v98;
          v105 = v180;
          v106 = v149;
          *(v149 + 4) = v179;
          *(v106 + 5) = v105;
          *(v106 + 6) = v181;
          *(v106 + 56) = v182;
          v107 = v176;
          *v106 = v175;
          *(v106 + 1) = v107;
          v108 = v178;
          *(v106 + 2) = v177;
          *(v106 + 3) = v108;
          outlined destroy of DateComponents(v173);
          v174[6] = v199;
          v174[7] = v200;
          v174[8] = v201;
          v174[9] = v202;
          v174[2] = v195;
          v174[3] = v196;
          v174[4] = v197;
          v174[5] = v198;
          v174[0] = v193;
          v174[1] = v194;
          *&v174[10] = v93;
          BYTE8(v174[10]) = v94;
          v109 = v150;
          v110 = *(v150 + 5);
          v111 = v148;
          *(v148 + 4) = *(v150 + 4);
          v111[5] = v110;
          v111[6] = v109[6];
          v112 = v109[1];
          *v111 = *v109;
          v111[1] = v112;
          v113 = v109[3];
          v111[2] = v109[2];
          v111[3] = v113;
          BYTE9(v174[17]) = v95;
          BYTE10(v174[17]) = v96;
          outlined destroy of DateComponents(v174);
          goto LABEL_142;
        }

        v94 = 0;
        v98 = 0;
        v93 = 0;
        v97 = 0;
        v164 = 0;
        v163 = 0;
LABEL_141:
        v169[6] = v189;
        v169[7] = v190;
        v169[8] = v191;
        v169[9] = v192;
        v169[2] = v185;
        v169[3] = v186;
        v169[4] = v187;
        v169[5] = v188;
        v169[0] = v183;
        v169[1] = v184;
        *&v169[10] = v97;
        BYTE8(v169[10]) = v98;
        v114 = v180;
        v115 = v147;
        *(v147 + 4) = v179;
        *(v115 + 5) = v114;
        *(v115 + 6) = v181;
        *(v115 + 56) = v182;
        v116 = v176;
        *v115 = v175;
        *(v115 + 1) = v116;
        v117 = v178;
        *(v115 + 2) = v177;
        *(v115 + 3) = v117;
        memcpy(v168, v169, 0x11BuLL);
        v170[6] = v199;
        v170[7] = v200;
        v170[8] = v201;
        v170[9] = v202;
        v170[2] = v195;
        v170[3] = v196;
        v170[4] = v197;
        v170[5] = v198;
        v170[0] = v193;
        v170[1] = v194;
        *&v170[10] = v93;
        BYTE8(v170[10]) = v94;
        v118 = v150;
        v119 = *(v150 + 5);
        v120 = v146;
        *(v146 + 4) = *(v150 + 4);
        v120[5] = v119;
        v120[6] = v118[6];
        v121 = v118[1];
        *v120 = *v118;
        v120[1] = v121;
        v122 = v118[3];
        v120[2] = v118[2];
        v120[3] = v122;
        BYTE9(v170[17]) = v95;
        BYTE10(v170[17]) = v96;
        memcpy(v167, v170, 0x11BuLL);
        outlined init with copy of DateComponents(v169, v166);
        outlined init with copy of DateComponents(v170, v166);
        LODWORD(v160) = specialized static DateComponents.== infix(_:_:)(v168, v167);
        outlined destroy of DateComponents(v206);
        memcpy(v171, v167, 0x11BuLL);
        outlined destroy of DateComponents(v171);
        memcpy(v172, v168, 0x11BuLL);
        outlined destroy of DateComponents(v172);
        v173[6] = v189;
        v173[7] = v190;
        v173[8] = v191;
        v173[9] = v192;
        v173[2] = v185;
        v173[3] = v186;
        v173[4] = v187;
        v173[5] = v188;
        v173[0] = v183;
        v173[1] = v184;
        *&v173[10] = v97;
        BYTE8(v173[10]) = v98;
        v123 = v180;
        v124 = v149;
        *(v149 + 4) = v179;
        *(v124 + 5) = v123;
        *(v124 + 6) = v181;
        *(v124 + 56) = v182;
        v125 = v176;
        *v124 = v175;
        *(v124 + 1) = v125;
        v126 = v178;
        *(v124 + 2) = v177;
        *(v124 + 3) = v126;
        outlined destroy of DateComponents(v173);
        v174[6] = v199;
        v174[7] = v200;
        v174[8] = v201;
        v174[9] = v202;
        v174[2] = v195;
        v174[3] = v196;
        v174[4] = v197;
        v174[5] = v198;
        v174[0] = v193;
        v174[1] = v194;
        *&v174[10] = v93;
        BYTE8(v174[10]) = v94;
        v127 = v118[5];
        v128 = v148;
        *(v148 + 4) = v118[4];
        v128[5] = v127;
        v128[6] = v118[6];
        v129 = v118[1];
        *v128 = *v118;
        v128[1] = v129;
        v130 = v118[3];
        v128[2] = v118[2];
        v128[3] = v130;
        BYTE9(v174[17]) = v95;
        BYTE10(v174[17]) = v96;
        outlined destroy of DateComponents(v174);
        if ((v160 & 1) == 0)
        {
LABEL_142:
          v9 = v151;
          v15 = v156;
          if (v156 == v154)
          {
LABEL_8:

            v11 = v141;
            rawValue = v142;
            v12 = v145;
            goto LABEL_9;
          }

          continue;
        }

        break;
      }

      v9 = v151;

      v134 = v140;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v165 = v134;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v134[2] + 1, 1);
        v134 = v165;
      }

      v11 = v141;
      rawValue = v142;
      v12 = v145;
      v137 = v134[2];
      v136 = v134[3];
      if (v137 >= v136 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v136 > 1), v137 + 1, 1);
        v12 = v145;
        v11 = v141;
        rawValue = v142;
        v134 = v165;
      }

      v134[2] = v137 + 1;
      v140 = v134;
      *&v134[v137 + 4] = v13;
LABEL_9:
      if (++v12 == v11)
      {
        goto LABEL_158;
      }
    }
  }

  v138 = MEMORY[0x1E69E7CC0];
LABEL_154:
  v143->_rawValue = v138;
}

Swift::Void __swiftcall Calendar.RecurrenceRule._limitTimeComponent(_:dates:anchor:)(Foundation::Calendar::Component _, Swift::OpaquePointer *dates, Foundation::Date anchor)
{
  v4 = dates;
  v5 = *_;
  v6 = (v3 + 4);
  v22 = *v3;
  if (v5 != 4)
  {
    if (v5 == 6)
    {
      v6 = (v3 + 3);
    }

    else
    {
      if (v5 != 5)
      {
        return;
      }

      v6 = v3 + 7;
    }
  }

  v7 = *(dates->_rawValue + 2);
  if (v7)
  {
    v8 = *v6;
    v9 = dates->_rawValue + 32;

    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      v14 = *&v9[8 * v10];
      v24 = v22;
      v23 = v5;
      swift_unknownObjectRetain();
      v16 = Calendar.component(_:from:)(&v23, v15);
      swift_unknownObjectRelease();
      v17 = *(v8 + 16);
      v18 = 32;
      while (v17)
      {
        v19 = *(v8 + v18);
        v18 += 8;
        --v17;
        if (v19 == v16)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v25 = v11;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1);
            v11 = v25;
          }

          v13 = v11[2];
          v12 = v11[3];
          if (v13 >= v12 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
            v11 = v25;
          }

          v11[2] = v13 + 1;
          v11[v13 + 4] = v14;
          break;
        }
      }

      ++v10;
    }

    while (v10 != v7);

    v4 = dates;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v4->_rawValue = v11;
}

uint64_t specialized Sequence.reversed()(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      v1 = result;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 40 * v2 - 8;
  for (i = 4; ; i += 5)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v8 = v1[2];
    if (v3 >= v8)
    {
      break;
    }

    result = outlined init with copy of Hashable & Sendable(&v1[i], v10);
    if (v5 >= v8)
    {
      goto LABEL_14;
    }

    outlined init with copy of Hashable & Sendable(v1 + v6, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    __swift_destroy_boxed_opaque_existential_1(&v1[i]);
    result = outlined init with take of Equatable(v9, &v1[i]);
    if (v5 >= v1[2])
    {
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1(v1 + v6);
    result = outlined init with take of Equatable(v10, v1 + v6);
LABEL_5:
    ++v3;
    --v5;
    v6 -= 40;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

Foundation::Date_optional __swiftcall Calendar.DatesByRecurring.Iterator.next()()
{
  v3 = v0;
  if (*(v1 + 584))
  {
LABEL_2:
    *v3 = 0;
    v4 = 1;
LABEL_26:
    *(v3 + 8) = v4;
    goto LABEL_29;
  }

  if (*(v1 + 48) == 1 && *(v1 + 176) >= *(v1 + 40))
  {
LABEL_24:
    v4 = 1;
    *(v1 + 584) = 1;
    *v3 = 0;
    goto LABEL_26;
  }

  v5 = *(v1 + 608);
  while (!*(v5 + 16))
  {
    Calendar.DatesByRecurring.Iterator.nextGroup()();
    v5 = *(v1 + 608);
    if (*(v5 + 16))
    {
      *(v1 + 600) = 0;
    }

    else
    {
      v12 = *(v1 + 600);
      v10 = __OFADD__(v12, 1);
      v13 = v12 + 1;
      if (v10)
      {
        goto LABEL_28;
      }

      *(v1 + 600) = v13;
      if (*(v1 + 592) < v13)
      {
        goto LABEL_24;
      }
    }

LABEL_8:
    if (*(v1 + 584))
    {
      goto LABEL_2;
    }
  }

  LOBYTE(v6) = swift_isUniquelyReferenced_nonNull_native();
  if (v6)
  {
    v7 = *(v5 + 16);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = v6;
    v7 = *(v6 + 2);
    if (!v7)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  v8 = v7 - 1;
  v2 = *(v5 + 8 * v8 + 32);
  *(v5 + 16) = v8;
  *(v1 + 608) = v5;
  v9 = *(v1 + 176);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (!v10)
  {
    *(v1 + 176) = v11;
    if (!*(v1 + 48) && *(v1 + 40) < v2)
    {
      goto LABEL_24;
    }

    if (*(v1 + 144))
    {
      goto LABEL_25;
    }

    if (v2 >= *(v1 + 136))
    {
      goto LABEL_24;
    }

    if (v2 >= *(v1 + 128))
    {
LABEL_25:
      v4 = 0;
      *v3 = v2;
      goto LABEL_26;
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result.value = *&v2;
  result.is_nil = v6;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance Calendar.DatesByRecurring@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 88);
  v17[4] = *(v1 + 72);
  v17[5] = v4;
  v17[6] = *(v1 + 104);
  v18 = *(v1 + 120);
  v5 = *(v1 + 24);
  v17[0] = *(v1 + 8);
  v17[1] = v5;
  v6 = *(v1 + 56);
  v17[2] = *(v1 + 40);
  v17[3] = v6;
  v7 = *(v1 + 144);
  v16 = v3;
  v14 = *(v1 + 128);
  v15 = v7;
  outlined init with copy of Calendar.RecurrenceRule(v17, v19);
  Calendar.DatesByRecurring.Iterator.init(start:matching:range:)(&v16, (v1 + 8), &v14, a1, v8);
  v9 = *(v1 + 112);
  v19[6] = *(v1 + 96);
  v19[7] = v9;
  v19[8] = *(v1 + 128);
  v20 = *(v1 + 144);
  v10 = *(v1 + 48);
  v19[2] = *(v1 + 32);
  v19[3] = v10;
  v11 = *(v1 + 80);
  v19[4] = *(v1 + 64);
  v19[5] = v11;
  v12 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v12;
  return outlined destroy of Calendar.DatesByRecurring(v19);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance Calendar.DatesByRecurring()
{
  v1 = *(v0 + 112);
  v8[6] = *(v0 + 96);
  v8[7] = v1;
  v8[8] = *(v0 + 128);
  v9 = *(v0 + 144);
  v2 = *(v0 + 48);
  v8[2] = *(v0 + 32);
  v8[3] = v2;
  v3 = *(v0 + 80);
  v8[4] = *(v0 + 64);
  v8[5] = v3;
  v4 = *(v0 + 16);
  v8[0] = *v0;
  v8[1] = v4;
  specialized _copySequenceToContiguousArray<A>(_:)(v8);
  v6 = v5;
  outlined destroy of Calendar.DatesByRecurring(v8);
  return v6;
}

uint64_t Calendar._normalizedMonths(_:for:)(uint64_t a1, double *a2)
{
  v3 = *a2;
  v4 = *v2;
  v5 = v2[1];
  v18 = 0;
  v19 = 0;
  v20 = 256;
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = (a1 + 40);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = *(v7 - 1);
    v11 = *v7;
    if (v10 > 0)
    {
      goto LABEL_11;
    }

    result = specialized getter of monthRange #1 in Calendar._normalizedMonths(_:for:)(&v18, v3, v4, v5, 2, 1);
    if (v14)
    {
      goto LABEL_19;
    }

    if (__OFSUB__(0, v13))
    {
      break;
    }

    if (-v13 < v10)
    {
      if (v20)
      {
        goto LABEL_20;
      }

      v15 = __OFADD__(v19, v10);
      v10 += v19;
      if (v15)
      {
        goto LABEL_18;
      }

LABEL_11:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      }

      v17 = *(v8 + 2);
      v16 = *(v8 + 3);
      if (v17 >= v16 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v8);
      }

      *(v8 + 2) = v17 + 1;
      v9 = &v8[16 * v17];
      *(v9 + 4) = v10;
      v9[40] = v11;
    }

    v7 += 16;
    if (!--v6)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

Swift::OpaquePointer_optional __swiftcall Calendar._weekdayComponents(for:in:anchor:)(Swift::OpaquePointer a1, Foundation::Calendar::Component in, Foundation::Date anchor)
{
  v145 = *in;
  v5 = *v3;
  v143 = v4[1];
  v144 = *v4;
  v6 = *(a1._rawValue + 2);
  if (v6)
  {
    v7 = 0;
    v8 = a1._rawValue + 32;
    v9 = MEMORY[0x1E69E7CC8];
    v10 = MEMORY[0x1E69E7CC0];
    v142 = 1;
    v11 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v12 = &v8[16 * v7];
      v13 = *v12;
      v14 = v12[8];
      if ((v14 & 0x80000000) == 0)
      {
        break;
      }

      v25 = v14 & 0x7F;
      if (!*(v11 + 16) || (v26 = specialized __RawDictionaryStorage.find<A>(_:)(v25), (v27 & 1) == 0))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_181218E20;
        *(v40 + 32) = v13;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&__src[0] = v9;
        v42 = specialized __RawDictionaryStorage.find<A>(_:)(v25);
        v44 = *(v9 + 16);
        v45 = (v43 & 1) == 0;
        v20 = __OFADD__(v44, v45);
        v46 = v44 + v45;
        if (v20)
        {
          goto LABEL_152;
        }

        v47 = v43;
        if (*(v9 + 24) >= v46)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v23 = v9;
          }

          else
          {
            v135 = v42;
            v139 = v8;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation6LocaleV7WeekdayOSaySiGGMd);
            v65 = static _DictionaryStorage.copy(original:)();
            v23 = v65;
            if (*(v9 + 16))
            {
              v66 = (v65 + 64);
              v67 = ((1 << *(v23 + 32)) + 63) >> 6;
              if (v23 != v9 || v66 >= v9 + 64 + 8 * v67)
              {
                memmove(v66, (v9 + 64), 8 * v67);
              }

              v68 = 0;
              *(v23 + 16) = *(v9 + 16);
              v69 = 1 << *(v9 + 32);
              v70 = *(v9 + 64);
              if (v69 < 64)
              {
                v71 = ~(-1 << v69);
              }

              else
              {
                v71 = -1;
              }

              v11 = v71 & v70;
              v72 = (v69 + 63) >> 6;
              if ((v71 & v70) != 0)
              {
                do
                {
                  v73 = __clz(__rbit64(v11));
                  v11 &= v11 - 1;
LABEL_74:
                  v76 = v73 | (v68 << 6);
                  v77 = *(*(v9 + 56) + 8 * v76);
                  *(*(v23 + 48) + v76) = *(*(v9 + 48) + v76);
                  *(*(v23 + 56) + 8 * v76) = v77;
                }

                while (v11);
              }

              v74 = v68;
              while (1)
              {
                v68 = v74 + 1;
                if (__OFADD__(v74, 1))
                {
                  goto LABEL_159;
                }

                if (v68 >= v72)
                {
                  break;
                }

                v75 = *(v9 + 64 + 8 * v68);
                ++v74;
                if (v75)
                {
                  v73 = __clz(__rbit64(v75));
                  v11 = (v75 - 1) & v75;
                  goto LABEL_74;
                }
              }
            }

            v42 = v135;
            v8 = v139;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v46, isUniquelyReferenced_nonNull_native);
          v23 = *&__src[0];
          v42 = specialized __RawDictionaryStorage.find<A>(_:)(v25);
          if ((v47 & 1) != (v48 & 1))
          {
            goto LABEL_162;
          }
        }

        v10 = MEMORY[0x1E69E7CC0];
        if (v47)
        {
          *(*(v23 + 56) + 8 * v42) = v40;
LABEL_30:

LABEL_39:
          v11 = v23;
          goto LABEL_40;
        }

        *(v23 + 8 * (v42 >> 6) + 64) |= 1 << v42;
        *(*(v23 + 48) + v42) = v25;
        *(*(v23 + 56) + 8 * v42) = v40;
        v49 = *(v23 + 16);
        v20 = __OFADD__(v49, 1);
        v39 = v49 + 1;
        if (v20)
        {
          goto LABEL_153;
        }

LABEL_38:
        *(v23 + 16) = v39;
        goto LABEL_39;
      }

      v28 = *(*(v11 + 56) + 8 * v26);
      if (*(v28 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_181218E20;
        *(v29 + 32) = v13;

        specialized Array.append<A>(contentsOf:)(v29);
        v11 = v28;
        v30 = swift_isUniquelyReferenced_nonNull_native();
        *&__src[0] = v9;
        v31 = specialized __RawDictionaryStorage.find<A>(_:)(v25);
        v33 = *(v9 + 16);
        v34 = (v32 & 1) == 0;
        v20 = __OFADD__(v33, v34);
        v35 = v33 + v34;
        if (v20)
        {
          goto LABEL_155;
        }

        v36 = v32;
        if (*(v9 + 24) >= v35)
        {
          if (v30)
          {
            v23 = v9;
            if (v32)
            {
LABEL_16:
              *(*(v23 + 56) + 8 * v31) = v11;
              goto LABEL_30;
            }
          }

          else
          {
            v136 = v31;
            v140 = v8;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation6LocaleV7WeekdayOSaySiGGMd);
            v78 = static _DictionaryStorage.copy(original:)();
            v23 = v78;
            if (*(v9 + 16))
            {
              v79 = (v78 + 64);
              v80 = ((1 << *(v23 + 32)) + 63) >> 6;
              if (v23 != v9 || v79 >= v9 + 64 + 8 * v80)
              {
                memmove(v79, (v9 + 64), 8 * v80);
              }

              v81 = 0;
              *(v23 + 16) = *(v9 + 16);
              v82 = 1 << *(v9 + 32);
              v83 = *(v9 + 64);
              if (v82 < 64)
              {
                v84 = ~(-1 << v82);
              }

              else
              {
                v84 = -1;
              }

              v85 = v84 & v83;
              v86 = (v82 + 63) >> 6;
              if ((v84 & v83) != 0)
              {
                do
                {
                  v87 = __clz(__rbit64(v85));
                  v85 &= v85 - 1;
LABEL_91:
                  v90 = v87 | (v81 << 6);
                  v91 = *(*(v9 + 56) + 8 * v90);
                  *(*(v23 + 48) + v90) = *(*(v9 + 48) + v90);
                  *(*(v23 + 56) + 8 * v90) = v91;
                }

                while (v85);
              }

              v88 = v81;
              while (1)
              {
                v81 = v88 + 1;
                if (__OFADD__(v88, 1))
                {
                  break;
                }

                if (v81 >= v86)
                {
                  goto LABEL_93;
                }

                v89 = *(v9 + 64 + 8 * v81);
                ++v88;
                if (v89)
                {
                  v87 = __clz(__rbit64(v89));
                  v85 = (v89 - 1) & v89;
                  goto LABEL_91;
                }
              }

LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              v128 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              goto LABEL_163;
            }

LABEL_93:

            v31 = v136;
            v8 = v140;
            v10 = MEMORY[0x1E69E7CC0];
            if (v36)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, v30);
          v23 = *&__src[0];
          v31 = specialized __RawDictionaryStorage.find<A>(_:)(v25);
          if ((v36 & 1) != (v37 & 1))
          {
            goto LABEL_162;
          }

          if (v36)
          {
            goto LABEL_16;
          }
        }

        *(v23 + 8 * (v31 >> 6) + 64) |= 1 << v31;
        *(*(v23 + 48) + v31) = v25;
        *(*(v23 + 56) + 8 * v31) = v11;
        v50 = *(v23 + 16);
        v20 = __OFADD__(v50, 1);
        v39 = v50 + 1;
        if (v20)
        {
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        goto LABEL_38;
      }

      v23 = v9;
LABEL_40:
      ++v7;
      v9 = v23;
      if (v7 == v6)
      {
        goto LABEL_96;
      }
    }

    v15 = swift_isUniquelyReferenced_nonNull_native();
    *&__src[0] = v9;
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    v18 = *(v9 + 16);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
      goto LABEL_156;
    }

    v22 = v17;
    if (*(v9 + 24) >= v21)
    {
      if (v15)
      {
        v23 = v9;
        if (v17)
        {
LABEL_8:
          *(*(v23 + 56) + 8 * v16) = v10;
          goto LABEL_30;
        }
      }

      else
      {
        v134 = v16;
        v138 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation6LocaleV7WeekdayOSaySiGGMd);
        v51 = static _DictionaryStorage.copy(original:)();
        v23 = v51;
        if (*(v9 + 16))
        {
          v52 = (v51 + 64);
          v53 = v9 + 64;
          v54 = ((1 << *(v23 + 32)) + 63) >> 6;
          if (v23 != v9 || v52 >= v53 + 8 * v54)
          {
            memmove(v52, (v9 + 64), 8 * v54);
          }

          v55 = 0;
          *(v23 + 16) = *(v9 + 16);
          v56 = 1 << *(v9 + 32);
          v57 = *(v9 + 64);
          if (v56 < 64)
          {
            v58 = ~(-1 << v56);
          }

          else
          {
            v58 = -1;
          }

          v11 = v58 & v57;
          v59 = (v56 + 63) >> 6;
          if ((v58 & v57) != 0)
          {
            do
            {
              v60 = __clz(__rbit64(v11));
              v11 &= v11 - 1;
LABEL_56:
              v63 = v60 | (v55 << 6);
              v64 = *(*(v9 + 56) + 8 * v63);
              *(*(v23 + 48) + v63) = *(*(v9 + 48) + v63);
              *(*(v23 + 56) + 8 * v63) = v64;
            }

            while (v11);
          }

          v61 = v55;
          while (1)
          {
            v55 = v61 + 1;
            if (__OFADD__(v61, 1))
            {
              goto LABEL_158;
            }

            if (v55 >= v59)
            {
              break;
            }

            v62 = *(v53 + 8 * v55);
            ++v61;
            if (v62)
            {
              v60 = __clz(__rbit64(v62));
              v11 = (v62 - 1) & v62;
              goto LABEL_56;
            }
          }
        }

        v16 = v134;
        v8 = v138;
        v10 = MEMORY[0x1E69E7CC0];
        if (v22)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, v15);
      v23 = *&__src[0];
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_162;
      }

      if (v22)
      {
        goto LABEL_8;
      }
    }

    *(v23 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    *(*(v23 + 48) + v16) = v13;
    *(*(v23 + 56) + 8 * v16) = v10;
    v38 = *(v23 + 16);
    v20 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v20)
    {
      goto LABEL_151;
    }

    goto LABEL_38;
  }

  v11 = MEMORY[0x1E69E7CC8];
LABEL_96:
  if (v145 == 2)
  {
    v92 = 10;
  }

  else
  {
    v92 = 11;
  }

  v142 = v92;
  LOBYTE(v158[0]) = v145;
  if (one-time initialization token for validCalendarRange != -1)
  {
LABEL_156:
    swift_once();
  }

  v93 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v5)
  {
    v93 = v5;
  }

  if (*&static Date.validCalendarRange >= v93)
  {
    v94 = *&static Date.validCalendarRange;
  }

  else
  {
    v94 = v93;
  }

  ObjectType = swift_getObjectType();
  *__dst = v94;
  (*(v143 + 160))(__src, v158, __dst, ObjectType);
  if ((__src[1] & 1) == 0)
  {
    v98 = *(__src + 1);
    v99 = *__src;
    v100 = swift_allocObject();
    *(v100 + 16) = 0;
    *(v100 + 24) = 0;
    *(v100 + 32) = 1;
    v167 = 0;
    v168 = 1;
    v165 = 0;
    v102 = v11 + 64;
    v101 = *(v11 + 64);
    v166 = 1;
    v103 = 1 << *(v11 + 32);
    v104 = -1;
    if (v103 < 64)
    {
      v104 = ~(-1 << v103);
    }

    v132 = v104 & v101;
    v137 = v100;
    v105 = (v103 + 63) >> 6;

    v106 = 0;
    v97 = MEMORY[0x1E69E7CC0];
    v130 = v105;
    v131 = v11;
    v129 = v11 + 64;
    v107 = v132;
    if (!v132)
    {
      goto LABEL_110;
    }

LABEL_114:
    while (1)
    {
      v109 = __clz(__rbit64(v107)) | (v106 << 6);
      v110 = *(*(v11 + 56) + 8 * v109);
      v111 = *(*(v11 + 48) + v109);

      v112 = specialized Collection<>.firstIndex(of:)(v111, outlined read-only object #0 of one-time initialization function for weekdays);
      if (v113)
      {
        goto LABEL_161;
      }

      v114 = v112 + 1;
      v11 = v142;
      if (__OFADD__(v112, 1))
      {
        goto LABEL_154;
      }

      v115 = *(v110 + 16);
      v133 = (v107 - 1) & v107;
      if (v115)
      {
        v163 = 0;
        v164 = 1;
        v161 = 0;
        v162 = 1;
        if (v112 == 0x7FFFFFFFFFFFFFFELL)
        {
          v116 = 0;
        }

        else
        {
          v116 = v112 + 1;
        }

        v141 = v116;
        v117 = v115 - 1;
        for (i = 32; ; i += 8)
        {
          v119 = *(v110 + i);
          *&__src[14] = 0;
          BYTE8(__src[14]) = 1;
          *(&__src[17] + 9) = 514;
          memset(__src, 0, 40);
          BYTE8(__src[2]) = 1;
          *&__src[3] = 0;
          BYTE8(__src[3]) = 1;
          *&__src[4] = 0;
          BYTE8(__src[4]) = 1;
          *&__src[5] = 0;
          BYTE8(__src[5]) = 1;
          *&__src[7] = 0;
          BYTE8(__src[7]) = 1;
          *&__src[8] = 0;
          BYTE8(__src[8]) = 1;
          *&__src[9] = 0;
          BYTE8(__src[9]) = 1;
          *&__src[10] = 0;
          BYTE8(__src[10]) = 1;
          *&__src[11] = 0;
          BYTE8(__src[11]) = 1;
          *&__src[12] = 0;
          BYTE8(__src[12]) = 1;
          *&__src[13] = 0;
          BYTE8(__src[13]) = 1;
          *&__src[15] = 0;
          BYTE8(__src[15]) = 1;
          BYTE8(__src[16]) = 1;
          *&__src[16] = 0;
          *&__src[17] = 0;
          BYTE8(__src[17]) = 1;
          *&__src[6] = 0;
          BYTE8(__src[6]) = 1;
          if (v119 < 1)
          {
            v122.value = specialized getter of lastWeek #1 in Calendar._weekdayComponents(for:in:anchor:)(&v161, v137, v144, v143, v11, v145, v114, &v165, v5, v99, v98);
            v20 = __OFADD__(v122.value, v119);
            v122.value += v119;
            if (v20)
            {
              goto LABEL_149;
            }
          }

          else
          {
            v120 = specialized getter of firstWeek #1 in Calendar._weekdayComponents(for:in:anchor:)(&v163, v137, v144, v143, v11, v145, v114, &v167, v5, v99);
            v121 = v120 - 1;
            if (__OFSUB__(v120, 1))
            {
              __break(1u);
LABEL_147:
              __break(1u);
              goto LABEL_148;
            }

            v122.value = v121 + v119;
            if (__OFADD__(v121, v119))
            {
              goto LABEL_147;
            }
          }

          LOBYTE(__dst[0]) = v11;
          v122.is_nil = 0;
          DateComponents.setValue(_:for:)(v122, __dst);
          *&__src[11] = v141;
          BYTE8(__src[11]) = v114 == 0x7FFFFFFFFFFFFFFFLL;
          memcpy(__dst, __src, 0x11BuLL);
          outlined init with copy of DateComponents(__dst, v158);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v97 + 2) + 1, 1, v97);
          }

          v124 = *(v97 + 2);
          v123 = *(v97 + 3);
          if (v124 >= v123 >> 1)
          {
            v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v123 > 1), v124 + 1, 1, v97);
          }

          memcpy(v158, __src, 0x11BuLL);
          outlined destroy of DateComponents(v158);
          *(v97 + 2) = v124 + 1;
          memcpy(&v97[288 * v124 + 32], __dst, 0x11BuLL);
          if (!v117)
          {
            break;
          }

          --v117;
          v11 = v142;
        }

        v105 = v130;
        v11 = v131;
        v102 = v129;
        v107 = v133;
        if (v133)
        {
          continue;
        }

LABEL_110:
        while (1)
        {
          v108 = v106 + 1;
          if (__OFADD__(v106, 1))
          {
            break;
          }

          if (v108 >= v105)
          {

            goto LABEL_145;
          }

          v107 = *(v102 + 8 * v108);
          ++v106;
          if (v107)
          {
            v106 = v108;
            goto LABEL_114;
          }
        }

LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      if (v114 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v125 = 0;
      }

      else
      {
        v125 = v114;
      }

      memset(__src, 0, 40);
      BYTE8(__src[2]) = 1;
      *(&__src[2] + 9) = v158[0];
      HIDWORD(__src[2]) = *(v158 + 3);
      *&__src[3] = 0;
      BYTE8(__src[3]) = 1;
      *(&__src[3] + 9) = v163;
      HIDWORD(__src[3]) = *(&v163 + 3);
      *&__src[4] = 0;
      BYTE8(__src[4]) = 1;
      HIDWORD(__src[4]) = *(&v161 + 3);
      *(&__src[4] + 9) = v161;
      *&__src[5] = 0;
      BYTE8(__src[5]) = 1;
      HIDWORD(__src[5]) = *&v157[3];
      *(&__src[5] + 9) = *v157;
      *&__src[6] = 0;
      BYTE8(__src[6]) = 1;
      HIDWORD(__src[6]) = *&v156[3];
      *(&__src[6] + 9) = *v156;
      *&__src[7] = 0;
      BYTE8(__src[7]) = 1;
      HIDWORD(__src[7]) = *&v155[3];
      *(&__src[7] + 9) = *v155;
      *&__src[8] = 0;
      BYTE8(__src[8]) = 1;
      HIDWORD(__src[8]) = *&v154[3];
      *(&__src[8] + 9) = *v154;
      *&__src[9] = 0;
      BYTE8(__src[9]) = 1;
      HIDWORD(__src[9]) = *&v153[3];
      *(&__src[9] + 9) = *v153;
      *&__src[10] = 0;
      BYTE8(__src[10]) = 1;
      HIDWORD(__src[10]) = *&v152[3];
      *(&__src[10] + 9) = *v152;
      *&__src[11] = v125;
      BYTE8(__src[11]) = v114 == 0x7FFFFFFFFFFFFFFFLL;
      HIDWORD(__src[11]) = *&v151[3];
      *(&__src[11] + 9) = *v151;
      *&__src[12] = 0;
      BYTE8(__src[12]) = 1;
      HIDWORD(__src[12]) = *&v150[3];
      *(&__src[12] + 9) = *v150;
      *&__src[13] = 0;
      BYTE8(__src[13]) = 1;
      HIDWORD(__src[13]) = *&v149[3];
      *(&__src[13] + 9) = *v149;
      *&__src[14] = 0;
      BYTE8(__src[14]) = 1;
      HIDWORD(__src[14]) = *&v148[3];
      *(&__src[14] + 9) = *v148;
      *&__src[15] = 0;
      BYTE8(__src[15]) = 1;
      HIDWORD(__src[15]) = *&v147[3];
      *(&__src[15] + 9) = *v147;
      *&__src[16] = 0;
      BYTE8(__src[16]) = 1;
      HIDWORD(__src[16]) = *&v146[3];
      *(&__src[16] + 9) = *v146;
      *&__src[17] = 0;
      BYTE8(__src[17]) = 1;
      *(&__src[17] + 9) = 514;
      outlined init with copy of DateComponents(__src, __dst);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v97 + 2) + 1, 1, v97);
      }

      v105 = v130;
      v127 = *(v97 + 2);
      v126 = *(v97 + 3);
      if (v127 >= v126 >> 1)
      {
        v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v127 + 1, 1, v97);
      }

      memset(__dst, 0, 40);
      BYTE8(__dst[2]) = 1;
      *(&__dst[2] + 9) = v158[0];
      HIDWORD(__dst[2]) = *(v158 + 3);
      *&__dst[3] = 0;
      BYTE8(__dst[3]) = 1;
      *(&__dst[3] + 9) = v163;
      HIDWORD(__dst[3]) = *(&v163 + 3);
      *&__dst[4] = 0;
      BYTE8(__dst[4]) = 1;
      *(&__dst[4] + 9) = v161;
      HIDWORD(__dst[4]) = *(&v161 + 3);
      *&__dst[5] = 0;
      BYTE8(__dst[5]) = 1;
      *(&__dst[5] + 9) = *v157;
      HIDWORD(__dst[5]) = *&v157[3];
      *&__dst[6] = 0;
      BYTE8(__dst[6]) = 1;
      HIDWORD(__dst[6]) = *&v156[3];
      *(&__dst[6] + 9) = *v156;
      *&__dst[7] = 0;
      BYTE8(__dst[7]) = 1;
      HIDWORD(__dst[7]) = *&v155[3];
      *(&__dst[7] + 9) = *v155;
      *&__dst[8] = 0;
      BYTE8(__dst[8]) = 1;
      HIDWORD(__dst[8]) = *&v154[3];
      *(&__dst[8] + 9) = *v154;
      *&__dst[9] = 0;
      BYTE8(__dst[9]) = 1;
      HIDWORD(__dst[9]) = *&v153[3];
      *(&__dst[9] + 9) = *v153;
      *&__dst[10] = 0;
      BYTE8(__dst[10]) = 1;
      HIDWORD(__dst[10]) = *&v152[3];
      *(&__dst[10] + 9) = *v152;
      *&__dst[11] = v125;
      BYTE8(__dst[11]) = v114 == 0x7FFFFFFFFFFFFFFFLL;
      HIDWORD(__dst[11]) = *&v151[3];
      *(&__dst[11] + 9) = *v151;
      *&__dst[12] = 0;
      BYTE8(__dst[12]) = 1;
      HIDWORD(__dst[12]) = *&v150[3];
      *(&__dst[12] + 9) = *v150;
      *&__dst[13] = 0;
      BYTE8(__dst[13]) = 1;
      HIDWORD(__dst[13]) = *&v149[3];
      *(&__dst[13] + 9) = *v149;
      *&__dst[14] = 0;
      BYTE8(__dst[14]) = 1;
      HIDWORD(__dst[14]) = *&v148[3];
      *(&__dst[14] + 9) = *v148;
      *&__dst[15] = 0;
      BYTE8(__dst[15]) = 1;
      HIDWORD(__dst[15]) = *&v147[3];
      *(&__dst[15] + 9) = *v147;
      *&__dst[16] = 0;
      BYTE8(__dst[16]) = 1;
      HIDWORD(__dst[16]) = *&v146[3];
      *(&__dst[16] + 9) = *v146;
      *&__dst[17] = 0;
      BYTE8(__dst[17]) = 1;
      *(&__dst[17] + 9) = 514;
      outlined destroy of DateComponents(__dst);
      *(v97 + 2) = v127 + 1;
      memcpy(&v97[288 * v127 + 32], __src, 0x11BuLL);
      v11 = v131;
      v107 = v133;
      if (!v133)
      {
        goto LABEL_110;
      }
    }
  }

  v97 = 0;
LABEL_145:
  v128 = v97;
LABEL_163:
  result.value._rawValue = v128;
  result.is_nil = v96;
  return result;
}

uint64_t getter of weekRange #1 in Calendar._weekdayComponents(for:in:anchor:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (*(a1 + 32) != 1)
  {
    return *(a1 + 16);
  }

  v16 = a5;
  v15 = a6;
  if (one-time initialization token for validCalendarRange != -1)
  {
    v13 = a2;
    swift_once();
    a2 = v13;
  }

  if (*(&static Date.validCalendarRange + 1) < a2)
  {
    a2 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= a2)
  {
    v8 = *&static Date.validCalendarRange;
  }

  else
  {
    v8 = a2;
  }

  ObjectType = swift_getObjectType();
  v14 = v8;
  result = (*(a4 + 144))(&v16, &v15, &v14, ObjectType, a4);
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = result;
    *(a1 + 24) = v11;
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t specialized getter of firstWeekday #1 in Calendar._weekdayComponents(for:in:anchor:)(_BYTE *a1, double a2, uint64_t a3, uint64_t a4)
{
  if (a1[8] != 1)
  {
    return *a1;
  }

  v13 = 128;
  if (one-time initialization token for validCalendarRange != -1)
  {
    v9 = a2;
    swift_once();
    a2 = v9;
  }

  if (*(&static Date.validCalendarRange + 1) < a2)
  {
    a2 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= a2)
  {
    v6 = *&static Date.validCalendarRange;
  }

  else
  {
    v6 = a2;
  }

  ObjectType = swift_getObjectType();
  v10 = v6;
  (*(a4 + 192))(v11, &v13, &v10, ObjectType, a4);
  outlined destroy of DateComponents(v11);
  if (v12)
  {
    result = 0;
  }

  else
  {
    result = v11[22];
  }

  *a1 = result;
  a1[8] = 0;
  return result;
}

uint64_t specialized getter of lastWeekday #1 in Calendar._weekdayComponents(for:in:anchor:)(_BYTE *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  if (a1[8] != 1)
  {
    return *a1;
  }

  v7 = a2 + a3 + -0.1;
  v15 = 128;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v8 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v7)
  {
    v8 = v7;
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
  (*(a5 + 192))(v13, &v15, &v12, ObjectType, a5);
  outlined destroy of DateComponents(v13);
  if (v14)
  {
    result = 0;
  }

  else
  {
    result = v13[22];
  }

  *a1 = result;
  a1[8] = 0;
  return result;
}

uint64_t specialized getter of firstWeek #1 in Calendar._weekdayComponents(for:in:anchor:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, _BYTE *a8, double a9, double a10)
{
  if (a1[8] != 1)
  {
    return *a1;
  }

  v16 = getter of weekRange #1 in Calendar._weekdayComponents(for:in:anchor:)(a2, a9, a3, a4, a5, a6);
  v17 = specialized getter of firstWeekday #1 in Calendar._weekdayComponents(for:in:anchor:)(a8, a10, a3, a4) > a7;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    a1[8] = 0;
  }

  return result;
}

uint64_t specialized getter of lastWeek #1 in Calendar._weekdayComponents(for:in:anchor:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, _BYTE *a8, double a9, double a10, double a11)
{
  if (a1[8] != 1)
  {
    return *a1;
  }

  getter of weekRange #1 in Calendar._weekdayComponents(for:in:anchor:)(a2, a9, a3, a4, a5, a6);
  v19 = v18;
  v20 = specialized getter of lastWeekday #1 in Calendar._weekdayComponents(for:in:anchor:)(a8, a10, a11, a3, a4) < a7;
  result = v19 - v20;
  if (__OFSUB__(v19, v20))
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    a1[8] = 0;
  }

  return result;
}

uint64_t Calendar._normalizedDaysOfMonth(_:for:)(uint64_t a1, double *a2, char a3)
{
  v4 = *a2;
  v6 = *v3;
  v5 = v3[1];
  v19 = 0;
  v20 = 0;
  v21 = 256;
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = (a1 + 32);
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = *v9++;
    v11 = v12;
    if (v12 > 0)
    {
      goto LABEL_11;
    }

    result = specialized getter of monthRange #1 in Calendar._normalizedMonths(_:for:)(&v19, v4, v6, v5, 3, a3);
    if (v15)
    {
      goto LABEL_19;
    }

    if (__OFSUB__(0, v14))
    {
      break;
    }

    if (-v14 < v11)
    {
      if (v21)
      {
        goto LABEL_20;
      }

      v16 = __OFADD__(v20, v11);
      v11 += v20;
      if (v16)
      {
        goto LABEL_18;
      }

LABEL_11:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v18 = *(v10 + 2);
      v17 = *(v10 + 3);
      if (v18 >= v17 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v10);
      }

      *(v10 + 2) = v18 + 1;
      *&v10[8 * v18 + 32] = v11;
    }

    if (!--v7)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized getter of monthRange #1 in Calendar._normalizedMonths(_:for:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if ((*(a1 + 17) & 1) == 0)
  {
    return *a1;
  }

  v16 = a5;
  v15 = a6;
  if (one-time initialization token for validCalendarRange != -1)
  {
    v13 = a2;
    swift_once();
    a2 = v13;
  }

  if (*(&static Date.validCalendarRange + 1) < a2)
  {
    a2 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= a2)
  {
    v8 = *&static Date.validCalendarRange;
  }

  else
  {
    v8 = a2;
  }

  ObjectType = swift_getObjectType();
  v14 = v8;
  result = (*(a4 + 144))(&v16, &v15, &v14, ObjectType, a4);
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 17) = 0;
  return result;
}

uint64_t Calendar._normalizedWeeksOfYear(_:anchor:)(uint64_t a1, double *a2)
{
  v4 = *a2;
  v5 = *v2;
  v6 = v2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 1;
  v23 = 0;
  v24 = 1;
  v21 = 0;
  v22 = 1;
  v19 = 0;
  v20 = 1;
  v17 = 0;
  v18 = 1;
  v8 = *(a1 + 16);
  if (!v8)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v9 = (a1 + 32);
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = *v9++;
    v11 = v12;
    if (v12 > 0)
    {
      goto LABEL_9;
    }

    result = specialized getter of lastWeekIdx #1 in Calendar._normalizedWeeksOfYear(_:anchor:)(&v17, &v19, &v21, v5, v6, &v23, v7, v4);
    if (__OFSUB__(0, result))
    {
      break;
    }

    if (-result < v11)
    {
      v14 = __OFADD__(v17, v11);
      v11 += v17;
      if (v14)
      {
        goto LABEL_17;
      }

LABEL_9:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v16 = *(v10 + 2);
      v15 = *(v10 + 3);
      if (v16 >= v15 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v10);
      }

      *(v10 + 2) = v16 + 1;
      *&v10[8 * v16 + 32] = v11;
    }

    if (!--v8)
    {

      return v10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t getter of weekRange #1 in Calendar._normalizedWeeksOfYear(_:anchor:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 32) != 1)
  {
    return *(a1 + 16);
  }

  v14 = 11;
  v13 = 1;
  if (one-time initialization token for validCalendarRange != -1)
  {
    v11 = a2;
    swift_once();
    a2 = v11;
  }

  if (*(&static Date.validCalendarRange + 1) < a2)
  {
    a2 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= a2)
  {
    v6 = *&static Date.validCalendarRange;
  }

  else
  {
    v6 = a2;
  }

  ObjectType = swift_getObjectType();
  v12 = v6;
  result = (*(a4 + 144))(&v14, &v13, &v12, ObjectType, a4);
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = result;
    *(a1 + 24) = v9;
    *(a1 + 32) = 0;
  }

  return result;
}

double *specialized getter of lastDayOfYear #1 in Calendar._normalizedWeeksOfYear(_:anchor:)@<X0>(double *result@<X0>, uint64_t a2@<X2>, double *a3@<X8>, double a4@<D0>)
{
  v4 = result;
  if ((result[1] & 1) == 0)
  {
    v9 = *result;
    goto LABEL_12;
  }

  v12 = 1;
  if (one-time initialization token for validCalendarRange != -1)
  {
    v10 = a4;
    swift_once();
    a4 = v10;
  }

  if (*(&static Date.validCalendarRange + 1) < a4)
  {
    a4 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= a4)
  {
    v7 = *&static Date.validCalendarRange;
  }

  else
  {
    v7 = a4;
  }

  ObjectType = swift_getObjectType();
  v11 = v7;
  result = (*(a2 + 160))(v13, &v12, &v11, ObjectType, a2);
  if ((v14 & 1) == 0)
  {
    v9 = v13[1] + v13[0] + -0.01;
    *v4 = v9;
    *(v4 + 8) = 0;
LABEL_12:
    *a3 = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t specialized getter of lastWeekayOfYear #1 in Calendar._normalizedWeeksOfYear(_:anchor:)(_BYTE *a1, double a2, uint64_t a3, uint64_t a4, double *a5)
{
  if (a1[8] != 1)
  {
    return *a1;
  }

  specialized getter of lastDayOfYear #1 in Calendar._normalizedWeeksOfYear(_:anchor:)(a5, a4, &v16, a2);
  v7 = v16;
  v15 = 128;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v8 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v7)
  {
    v8 = v7;
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
  (*(a4 + 192))(v13, &v15, &v12, ObjectType, a4);
  outlined destroy of DateComponents(v13);
  if (v14)
  {
    result = 0;
  }

  else
  {
    result = v13[22];
  }

  *a1 = result;
  a1[8] = 0;
  return result;
}

uint64_t specialized getter of daysLeftInLastWeek #1 in Calendar._normalizedWeeksOfYear(_:anchor:)(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, double *a5, double a6)
{
  if (a1[8] != 1)
  {
    return *a1;
  }

  result = specialized getter of lastWeekayOfYear #1 in Calendar._normalizedWeeksOfYear(_:anchor:)(a2, a6, a3, a4, a5);
  v9 = 7 - result;
  if (__OFSUB__(7, result))
  {
    __break(1u);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v11 = (*(a4 + 56))(ObjectType, a4);
    v12 = __OFADD__(v9, v11);
    result = v9 + v11;
    if (!v12)
    {
      *a1 = result;
      a1[8] = 0;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized getter of lastWeekIdx #1 in Calendar._normalizedWeeksOfYear(_:anchor:)(_BYTE *a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, double *a6, uint64_t a7, double a8)
{
  if (a1[8] != 1)
  {
    return *a1;
  }

  v13 = specialized getter of daysLeftInLastWeek #1 in Calendar._normalizedWeeksOfYear(_:anchor:)(a2, a3, a4, a5, a6, a8);
  ObjectType = swift_getObjectType();
  v15 = (*(a5 + 72))(ObjectType, a5);
  getter of weekRange #1 in Calendar._normalizedWeeksOfYear(_:anchor:)(a7, a8, a4, a5);
  result = v16;
  if (v13 >= v15 && (result = v16 - 1, __OFSUB__(v16, 1)))
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    a1[8] = 0;
  }

  return result;
}

uint64_t Calendar._unadjustedDates(after:matching:matchingPolicy:repeatedTimePolicy:)(double *a1, uint64_t *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v6 = v5;
  v8 = *a1;
  v144 = *a3;
  v133 = *a4;
  v9 = *v4;
  v10 = v4[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DateV4date_AC0E10ComponentsV10componentstGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_181218E20;
  *(v11 + 32) = v8;
  v12 = (v11 + 32);
  LOBYTE(__src[5]) = 1;
  __src[6] = 0;
  LOBYTE(__src[7]) = 1;
  __src[8] = 0;
  LOBYTE(__src[9]) = 1;
  __src[10] = 0;
  LOBYTE(__src[11]) = 1;
  __src[12] = 0;
  LOBYTE(__src[13]) = 1;
  __src[14] = 0;
  LOBYTE(__src[15]) = 1;
  __src[16] = 0;
  LOBYTE(__src[17]) = 1;
  __src[18] = 0;
  LOBYTE(__src[19]) = 1;
  __src[20] = 0;
  LOBYTE(__src[21]) = 1;
  __src[22] = 0;
  LOBYTE(__src[23]) = 1;
  __src[24] = 0;
  LOBYTE(__src[25]) = 1;
  __src[26] = 0;
  LOBYTE(__src[27]) = 1;
  __src[28] = 0;
  LOBYTE(__src[29]) = 1;
  __src[30] = 0;
  LOBYTE(__src[31]) = 1;
  __src[32] = 0;
  LOBYTE(__src[33]) = 1;
  __src[34] = 0;
  LOBYTE(__src[35]) = 1;
  *(&__src[35] + 1) = 514;
  memset(__src, 0, 40);
  *&__dst[8] = 0;
  *__dst = 0;
  DateComponents.timeZone.setter(__dst);
  __src[4] = 0;
  LOBYTE(__src[5]) = 1;
  __src[6] = 0;
  LOBYTE(__src[7]) = 1;
  __src[8] = 0;
  LOBYTE(__src[9]) = 1;
  __src[10] = 0;
  LOBYTE(__src[11]) = 1;
  __src[14] = 0;
  LOBYTE(__src[15]) = 1;
  __src[16] = 0;
  LOBYTE(__src[17]) = 1;
  __src[18] = 0;
  LOBYTE(__src[19]) = 1;
  __src[20] = 0;
  LOBYTE(__src[21]) = 1;
  __src[22] = 0;
  LOBYTE(__src[23]) = 1;
  __src[24] = 0;
  LOBYTE(__src[25]) = 1;
  __src[26] = 0;
  LOBYTE(__src[27]) = 1;
  __src[30] = 0;
  LOBYTE(__src[31]) = 1;
  __src[32] = 0;
  LOBYTE(__src[33]) = 1;
  __src[34] = 0;
  LOBYTE(__src[35]) = 1;
  __src[12] = 0;
  LOBYTE(__src[13]) = 1;
  result = memcpy((v11 + 40), __src, 0x11BuLL);
  v189 = 19;
  v14 = a2[2];
  if (!v14)
  {
    v16 = v11;
    goto LABEL_19;
  }

  memcpy(__dst, v12, sizeof(__dst));
  memcpy(v187, v12, sizeof(v187));
  outlined init with copy of FloatingPointRoundingRule?(__dst, v186, &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd);
  v15 = closure #1 in Calendar._unadjustedDates(after:matching:matchingPolicy:repeatedTimePolicy:)(v187, &v187[8], v9, v10, v14);
  if (v5)
  {
LABEL_3:

    memcpy(v186, v187, 0x123uLL);
    outlined destroy of TermOfAddress?(v186, &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd);
LABEL_170:

    return v14;
  }

  v14 = v15;
  memcpy(v186, v187, 0x123uLL);
  result = outlined destroy of TermOfAddress?(v186, &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd);
  v17 = *(MEMORY[0x1E69E7CC0] + 16);
  v191 = v14[2];
  v18 = v17 + v191;
  if (__OFADD__(v17, v191))
  {
    goto LABEL_197;
  }

  v19 = MEMORY[0x1E69E7CC0];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0 || (v20 = v19, v18 > *(v19 + 24) >> 1))
  {
    if (v17 <= v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = v17;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v21, 1, MEMORY[0x1E69E7CC0]);
    v20 = result;
  }

  v22 = v191;
  if (!v14[2])
  {
    v23 = v20;

    if (v22)
    {
      goto LABEL_198;
    }

    goto LABEL_18;
  }

  if ((*(v20 + 24) >> 1) - *(v20 + 16) < v191)
  {
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
    goto LABEL_203;
  }

  v23 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd);
  swift_arrayInitWithCopy();

  if (!v22)
  {
LABEL_18:

    v16 = v23;
LABEL_19:
    v27 = a2[1];
    v154 = v9;
    v191 = v10;
    v132 = a2;
    fora = v27;
    if (v27)
    {
      v134 = v16[2];
      if (v134)
      {
        v28 = 0;
        v29 = MEMORY[0x1E69E7CC0];
        v30 = 4;
        v31 = &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd;
        v32 = &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMR;
        v149 = v16;
        while (v28 < v16[2])
        {
          memcpy(__dst, &v16[v30], sizeof(__dst));
          memcpy(v187, __dst, sizeof(v187));
          outlined init with copy of FloatingPointRoundingRule?(__dst, v186, v31);
          v33 = closure #2 in Calendar._unadjustedDates(after:matching:matchingPolicy:repeatedTimePolicy:)(v187, &v187[8], v9, v191, fora);
          if (v6)
          {
            goto LABEL_3;
          }

          v34 = v33;
          memcpy(v186, v187, 0x123uLL);
          v35 = v31;
          v14 = v32;
          result = outlined destroy of TermOfAddress?(v186, v31);
          v36 = v34[2];
          v37 = v29[2];
          v38 = v37 + v36;
          if (__OFADD__(v37, v36))
          {
            goto LABEL_175;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0 || v38 > v29[3] >> 1)
          {
            if (v37 <= v38)
            {
              v39 = v37 + v36;
            }

            else
            {
              v39 = v37;
            }

            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v39, 1, v29);
            v29 = result;
          }

          v9 = v154;
          v32 = v14;
          if (v34[2])
          {
            if ((v29[3] >> 1) - v29[2] < v36)
            {
              goto LABEL_183;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(v35);
            v32 = v14;
            swift_arrayInitWithCopy();

            v16 = v149;
            if (v36)
            {
              v40 = v29[2];
              v25 = __OFADD__(v40, v36);
              v41 = v40 + v36;
              if (v25)
              {
                goto LABEL_189;
              }

              v29[2] = v41;
            }
          }

          else
          {

            v16 = v149;
            if (v36)
            {
              goto LABEL_176;
            }
          }

          ++v28;
          v30 += 37;
          v31 = v35;
          v6 = 0;
          if (v134 == v28)
          {
            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
        goto LABEL_177;
      }

      v29 = MEMORY[0x1E69E7CC0];
LABEL_39:

      v189 = 18;
      v16 = v29;
      v10 = v191;
      a2 = v132;
    }

    forb = a2[3];
    if (forb)
    {
      v135 = v16[2];
      if (v135)
      {
        v42 = 0;
        v43 = MEMORY[0x1E69E7CC0];
        v44 = 4;
        v45 = &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd;
        v14 = &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMR;
        v150 = v16;
        while (v42 < v16[2])
        {
          memcpy(__dst, &v16[v44], sizeof(__dst));
          memcpy(v187, __dst, sizeof(v187));
          outlined init with copy of FloatingPointRoundingRule?(__dst, v186, v45);
          v46 = closure #3 in Calendar._unadjustedDates(after:matching:matchingPolicy:repeatedTimePolicy:)(v187, &v187[8], v9, v191, forb, v144 == 3);
          if (v6)
          {
            goto LABEL_3;
          }

          v47 = v46;
          memcpy(v186, v187, 0x123uLL);
          v48 = v45;
          result = outlined destroy of TermOfAddress?(v186, v45);
          v49 = v47[2];
          v50 = v43[2];
          v51 = v50 + v49;
          if (__OFADD__(v50, v49))
          {
            goto LABEL_178;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0 || v51 > v43[3] >> 1)
          {
            if (v50 <= v51)
            {
              v52 = v50 + v49;
            }

            else
            {
              v52 = v50;
            }

            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v52, 1, v43);
            v43 = result;
          }

          v9 = v154;
          v45 = v48;
          if (v47[2])
          {
            if ((v43[3] >> 1) - v43[2] < v49)
            {
              goto LABEL_187;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(v48);
            v45 = v48;
            swift_arrayInitWithCopy();

            v6 = 0;
            v16 = v150;
            if (v49)
            {
              v53 = v43[2];
              v25 = __OFADD__(v53, v49);
              v54 = v53 + v49;
              if (v25)
              {
                goto LABEL_191;
              }

              v43[2] = v54;
            }
          }

          else
          {

            v6 = 0;
            v16 = v150;
            if (v49)
            {
              goto LABEL_179;
            }
          }

          ++v42;
          v44 += 37;
          if (v135 == v42)
          {
            goto LABEL_61;
          }
        }

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
LABEL_184:
        __break(1u);
LABEL_185:
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
        goto LABEL_192;
      }

      v43 = MEMORY[0x1E69E7CC0];
LABEL_61:

      v189 = 2;
      v16 = v43;
      v10 = v191;
      a2 = v132;
    }

    forc = a2[4];
    if (forc)
    {
      v136 = v16[2];
      if (v136)
      {
        v55 = 0;
        v145 = MEMORY[0x1E69E7CC0];
        v151 = v16;
        v56 = &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd;
        v57 = &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMR;
        v58 = 4;
        while (v55 < v16[2])
        {
          memcpy(__dst, &v16[v58], sizeof(__dst));
          memcpy(v187, __dst, sizeof(v187));
          outlined init with copy of FloatingPointRoundingRule?(__dst, v186, v56);
          v59._rawValue = forc;
          v61 = closure #4 in Calendar._unadjustedDates(after:matching:matchingPolicy:repeatedTimePolicy:)(v187, &v187[8], v154, v10, v60, v59);
          if (v6)
          {
            goto LABEL_3;
          }

          v62 = v61;
          v14 = 0;
          memcpy(v186, v187, 0x123uLL);
          v63 = v56;
          v64 = v57;
          result = outlined destroy of TermOfAddress?(v186, v56);
          v65 = v62[2];
          v66 = v145[2];
          v67 = v66 + v65;
          if (__OFADD__(v66, v65))
          {
            goto LABEL_181;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0 || v67 > v145[3] >> 1)
          {
            if (v66 <= v67)
            {
              v68 = v66 + v65;
            }

            else
            {
              v68 = v66;
            }

            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v68, 1, v145);
            v145 = result;
          }

          v10 = v191;
          v57 = v64;
          if (v62[2])
          {
            if ((v145[3] >> 1) - v145[2] < v65)
            {
              goto LABEL_188;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_AA0B10ComponentsVtMd);
            v57 = v64;
            swift_arrayInitWithCopy();

            v16 = v151;
            if (v65)
            {
              v69 = v145[2];
              v25 = __OFADD__(v69, v65);
              v70 = v69 + v65;
              if (v25)
              {
                goto LABEL_193;
              }

              v145[2] = v70;
            }
          }

          else
          {

            v16 = v151;
            if (v65)
            {
              goto LABEL_182;
            }
          }

          ++v55;
          v58 += 37;
          v56 = v63;
          v6 = 0;
          if (v136 == v55)
          {
            goto LABEL_83;
          }
        }

        goto LABEL_180;
      }

      v145 = MEMORY[0x1E69E7CC0];
LABEL_83:

      v14 = v145;
      v152 = specialized _arrayForceCast<A, B>(_:)(v145);

      v9 = v154;
      a2 = v132;
    }

    else
    {
      v152 = v16;
    }

    ford = *a2;
    if (*a2)
    {
      v146 = v6;
      v71 = v152;
      v137 = *(v152 + 16);
      if (v137)
      {
        v72 = 0;
        v73 = MEMORY[0x1E69E7CC0];
        v74 = 32;
        v75 = &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd;
        v76 = &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMR;
        while (v72 < *(v71 + 16))
        {
          memcpy(__dst, (v71 + v74), sizeof(__dst));
          memcpy(v187, __dst, sizeof(v187));
          outlined init with copy of FloatingPointRoundingRule?(__dst, v186, v75);
          v77 = closure #5 in Calendar._unadjustedDates(after:matching:matchingPolicy:repeatedTimePolicy:)(v187, &v187[8], v9, v191, ford, v8);
          if (v146)
          {

            memcpy(v186, v187, 0x123uLL);
            outlined destroy of TermOfAddress?(v186, &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd);

            return v14;
          }

          v78 = v77;
          memcpy(v186, v187, 0x123uLL);
          v79 = v75;
          v14 = v76;
          result = outlined destroy of TermOfAddress?(v186, v75);
          v80 = v78[2];
          v81 = v73[2];
          v82 = v81 + v80;
          if (__OFADD__(v81, v80))
          {
            goto LABEL_185;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (!result || v82 > v73[3] >> 1)
          {
            if (v81 <= v82)
            {
              v83 = v81 + v80;
            }

            else
            {
              v83 = v81;
            }

            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v83, 1, v73);
            v73 = result;
          }

          v9 = v154;
          v76 = v14;
          if (v78[2])
          {
            if ((v73[3] >> 1) - v73[2] < v80)
            {
              goto LABEL_190;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(v79);
            v76 = v14;
            swift_arrayInitWithCopy();

            v71 = v152;
            if (v80)
            {
              v84 = v73[2];
              v25 = __OFADD__(v84, v80);
              v85 = v84 + v80;
              if (v25)
              {
                goto LABEL_195;
              }

              v73[2] = v85;
            }
          }

          else
          {

            v71 = v152;
            if (v80)
            {
              goto LABEL_186;
            }
          }

          ++v72;
          v74 += 296;
          v75 = v79;
          if (v137 == v72)
          {
            goto LABEL_106;
          }
        }

        goto LABEL_184;
      }

      v73 = MEMORY[0x1E69E7CC0];
LABEL_106:

      v189 = 3;
      result = v73;
      v10 = v191;
      a2 = v132;
      v6 = v146;
    }

    else
    {
      result = v152;
    }

    v153 = result;
    v138 = a2[5];
    if (v138)
    {
      v86 = MEMORY[0x1E69E7CC0];
      v128 = *(result + 16);
      if (v128)
      {
        v87 = 0;
        v129 = result + 32;
        while (v87 < *(result + 16))
        {
          v130 = v87;
          memcpy(__dst, (v129 + 296 * v87), sizeof(__dst));
          v89 = *__dst;
          if (v189 == 18 || v189 == 3)
          {
            outlined init with copy of FloatingPointRoundingRule?(__dst, v187, &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd);
            v90 = v89;
          }

          else
          {
            LOBYTE(v165[0]) = 3;
            outlined init with copy of FloatingPointRoundingRule?(__dst, v187, &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd);
            if (one-time initialization token for validCalendarRange != -1)
            {
              swift_once();
            }

            v91 = *(&static Date.validCalendarRange + 1);
            if (*(&static Date.validCalendarRange + 1) >= v89)
            {
              v91 = v89;
            }

            if (*&static Date.validCalendarRange >= v91)
            {
              v92 = *&static Date.validCalendarRange;
            }

            else
            {
              v92 = v91;
            }

            ObjectType = swift_getObjectType();
            *v186 = v92;
            result = (*(v10 + 160))(v187, v165, v186, ObjectType, v10);
            if (v187[16])
            {
              goto LABEL_205;
            }

            v90 = *v187;
          }

          v94 = *(v138 + 16);
          if (v94)
          {
            v131 = v86;
            v185 = MEMORY[0x1E69E7CC0];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94, 0);
            v147 = v185;
            fore._rawValue = (v94 - 1);
            v95 = (v138 + 32);
            while (1)
            {
              v97 = *v95++;
              v96 = v97;
              v182 = *&__dst[72];
              v183 = *&__dst[88];
              v184 = *&__dst[104];
              v178 = *&__dst[8];
              v179 = *&__dst[24];
              v181 = *&__dst[56];
              v180 = *&__dst[40];
              v167 = *&__dst[145];
              v166 = *&__dst[129];
              v171 = *&__dst[209];
              v170 = *&__dst[193];
              v168 = *&__dst[161];
              v169 = *&__dst[177];
              v175 = *&__dst[273];
              v174 = *&__dst[257];
              v172 = *&__dst[225];
              v173 = *&__dst[241];
              v165[4] = *&__dst[72];
              v165[5] = *&__dst[88];
              v165[6] = *&__dst[104];
              v165[0] = *&__dst[8];
              v165[1] = *&__dst[24];
              v165[3] = *&__dst[56];
              v165[2] = *&__dst[40];
              *(&v165[7] + 9) = *&__dst[129];
              *(&v165[8] + 9) = *&__dst[145];
              *(&v165[11] + 9) = *&__dst[193];
              *(&v165[12] + 9) = *&__dst[209];
              v176 = *&__dst[289];
              v98 = v97 == 0x7FFFFFFFFFFFFFFFLL;
              v99 = v97 == 0x7FFFFFFFFFFFFFFFLL ? 0 : v96;
              v177 = v98;
              v162[0] = v154;
              v162[1] = v10;
              v161 = v90;
              v160 = v8;
              *&v165[7] = v99;
              v100 = v98;
              BYTE8(v165[7]) = v98;
              *(&v165[9] + 9) = *&__dst[161];
              *(&v165[10] + 9) = *&__dst[177];
              *(&v165[17] + 9) = *&__dst[289];
              *(&v165[15] + 9) = *&__dst[257];
              *(&v165[16] + 9) = *&__dst[273];
              *(&v165[13] + 9) = *&__dst[225];
              *(&v165[14] + 9) = *&__dst[241];
              memcpy(v159, v165, 0x11BuLL);
              v158 = 0;
              v157 = v144;
              outlined init with copy of FloatingPointRoundingRule?(__dst, v187, &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd);
              outlined init with copy of DateComponents(v165, v187);
              v14 = v162;
              Calendar.dateAfterMatchingHour(startingAt:originalStartDate:components:direction:findLastMatch:isStrictMatching:matchingPolicy:)(&v161, &v160, v159, &v158, v133, v144 == 3, &v157, &v163);
              if (v6)
              {
                break;
              }

              memcpy(v187, v159, 0x11BuLL);
              outlined destroy of DateComponents(v187);
              v101 = v147;
              if (v164)
              {
                *&v156[64] = v182;
                *&v156[80] = v183;
                *&v156[96] = v184;
                *v156 = v178;
                *&v156[16] = v179;
                *&v156[32] = v180;
                *&v156[48] = v181;
                *&v156[112] = v99;
                v156[120] = v100;
                *&v156[121] = v166;
                *&v156[137] = v167;
                *&v156[185] = v170;
                *&v156[201] = v171;
                *&v156[153] = v168;
                *&v156[169] = v169;
                *&v156[281] = v176;
                *&v156[249] = v174;
                *&v156[265] = v175;
                *&v156[217] = v172;
                *&v156[233] = v173;
                memcpy(v186, v156, 0x11BuLL);
                outlined init with copy of DateComponents(v156, v155);
                v102 = v89;
              }

              else
              {
                v102 = v163;
                *&v156[64] = v182;
                *&v156[80] = v183;
                *&v156[96] = v184;
                *v156 = v178;
                *&v156[16] = v179;
                *&v156[32] = v180;
                *&v156[48] = v181;
                *&v156[112] = v99;
                v156[120] = v100;
                *&v156[121] = v166;
                *&v156[137] = v167;
                *&v156[185] = v170;
                *&v156[201] = v171;
                *&v156[153] = v168;
                *&v156[169] = v169;
                *&v156[281] = v176;
                *&v156[249] = v174;
                *&v156[265] = v175;
                *&v156[217] = v172;
                *&v156[233] = v173;
                memcpy(v186, v156, 0x11BuLL);
                outlined init with copy of DateComponents(v156, v155);
              }

              *&v156[64] = v182;
              *&v156[80] = v183;
              *&v156[96] = v184;
              *v156 = v178;
              *&v156[16] = v179;
              *&v156[32] = v180;
              *&v156[48] = v181;
              *&v156[112] = v99;
              v156[120] = v100;
              *&v156[121] = v166;
              *&v156[137] = v167;
              *&v156[185] = v170;
              *&v156[201] = v171;
              *&v156[153] = v168;
              *&v156[169] = v169;
              *&v156[281] = v176;
              *&v156[249] = v174;
              *&v156[265] = v175;
              *&v156[217] = v172;
              *&v156[233] = v173;
              outlined destroy of DateComponents(v156);
              v185 = v147;
              v104 = *(v147 + 16);
              v103 = *(v147 + 24);
              if (v104 >= v103 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1);
                v101 = v185;
              }

              memcpy(v155, v186, 0x11BuLL);
              *(v101 + 16) = v104 + 1;
              v105 = v101 + 296 * v104;
              *(v105 + 32) = v102;
              memcpy((v105 + 40), v155, 0x11BuLL);
              v10 = v191;
              if (!fore._rawValue)
              {
                result = outlined destroy of TermOfAddress?(__dst, &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd);
                v86 = v131;
                goto LABEL_140;
              }

              v147 = v101;
              --fore._rawValue;
            }

            memcpy(v156, v159, sizeof(v156));
            outlined destroy of DateComponents(v156);
            *&v187[64] = v182;
            *&v187[80] = v183;
            *&v187[96] = v184;
            *v187 = v178;
            *&v187[16] = v179;
            *&v187[48] = v181;
            *&v187[32] = v180;
            *&v187[265] = v175;
            *&v187[249] = v174;
            *&v187[233] = v173;
            *&v187[217] = v172;
            *&v187[201] = v171;
            *&v187[185] = v170;
            *&v187[169] = v169;
            *&v187[121] = v166;
            *&v187[137] = v167;
            *&v187[112] = v99;
            v187[120] = v100;
            *&v187[281] = v176;
            *&v187[153] = v168;
            outlined destroy of DateComponents(v187);

            outlined destroy of TermOfAddress?(__dst, &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd);
            goto LABEL_170;
          }

          result = outlined destroy of TermOfAddress?(__dst, &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd);
          v101 = MEMORY[0x1E69E7CC0];
LABEL_140:
          v148 = v101;
          v14 = *(v101 + 16);
          v106 = v86[2];
          v107 = v14 + v106;
          if (__OFADD__(v106, v14))
          {
            goto LABEL_199;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v109 = v86[3] >> 1, v109 < v107))
          {
            if (v106 <= v107)
            {
              v110 = v14 + v106;
            }

            else
            {
              v110 = v106;
            }

            v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v110, 1, v86);
            v109 = v86[3] >> 1;
          }

          a2 = v132;
          result = v148;
          if (*(v148 + 16))
          {
            if (v109 - v86[2] < v14)
            {
              goto LABEL_202;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_AA0B10ComponentsVtMd);
            swift_arrayInitWithCopy();

            v88 = v130;
            result = v153;
            if (v14)
            {
              v111 = v86[2];
              v25 = __OFADD__(v111, v14);
              v112 = v14 + v111;
              if (v25)
              {
                goto LABEL_204;
              }

              v86[2] = v112;
            }
          }

          else
          {

            result = v153;
            v88 = v130;
            if (v14)
            {
              goto LABEL_200;
            }
          }

          v87 = v88 + 1;
          if (v87 == v128)
          {
            goto LABEL_153;
          }
        }

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
        goto LABEL_201;
      }

LABEL_153:

      v153 = specialized _arrayForceCast<A, B>(_:)(v86);

      v189 = 4;
    }

    v113 = a2[6];
    if (v113)
    {
      *&v165[0] = MEMORY[0x1E69E7CC0];
      v114 = v153;
      v115 = *(v153 + 16);
      if (v115)
      {
        v116 = 0;
        v117 = 32;
        while (v116 < *(v114 + 16))
        {
          memcpy(__dst, (v114 + v117), sizeof(__dst));
          memcpy(v187, __dst, sizeof(v187));
          outlined init with copy of FloatingPointRoundingRule?(__dst, v186, &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd);
          v118 = closure #7 in Calendar._unadjustedDates(after:matching:matchingPolicy:repeatedTimePolicy:)(v187, &v187[8], &v189, v154, v191, v113);
          if (v6)
          {
LABEL_169:

            memcpy(v186, v187, 0x123uLL);
            outlined destroy of TermOfAddress?(v186, &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd);
            goto LABEL_170;
          }

          v119 = v118;
          ++v116;
          memcpy(v186, v187, 0x123uLL);
          outlined destroy of TermOfAddress?(v186, &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd);
          v14 = v165;
          result = specialized Array.append<A>(contentsOf:)(v119);
          v117 += 296;
          v114 = v153;
          if (v115 == v116)
          {
            goto LABEL_160;
          }
        }

LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
        goto LABEL_194;
      }

LABEL_160:

      v14 = *&v165[0];
      v153 = specialized _arrayForceCast<A, B>(_:)(*&v165[0]);

      v189 = 5;
      a2 = v132;
    }

    v120 = a2[7];
    if (v120)
    {
      *&v165[0] = MEMORY[0x1E69E7CC0];
      v121 = v153;
      v122 = *(v153 + 16);
      if (v122)
      {
        v123 = 0;
        v124 = 32;
        while (v123 < *(v121 + 16))
        {
          memcpy(__dst, (v121 + v124), sizeof(__dst));
          memcpy(v187, __dst, sizeof(v187));
          outlined init with copy of FloatingPointRoundingRule?(__dst, v186, &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd);
          v125 = closure #8 in Calendar._unadjustedDates(after:matching:matchingPolicy:repeatedTimePolicy:)(v187, &v187[8], &v189, v154, v191, v120, v8);
          if (v6)
          {
            goto LABEL_169;
          }

          v126 = v125;
          ++v123;
          memcpy(v186, v187, 0x123uLL);
          outlined destroy of TermOfAddress?(v186, &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd);
          v14 = v165;
          result = specialized Array.append<A>(contentsOf:)(v126);
          v124 += 296;
          v121 = v153;
          if (v122 == v123)
          {
            goto LABEL_167;
          }
        }

LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
        goto LABEL_196;
      }

LABEL_167:

      v127 = specialized _arrayForceCast<A, B>(_:)(*&v165[0]);
    }

    else
    {
      v127 = v153;
    }

    v14 = specialized _arrayForceCast<A, B>(_:)(v127);

    return v14;
  }

  v24 = v23[2];
  v25 = __OFADD__(v24, v22);
  v26 = v24 + v22;
  if (!v25)
  {
    v23[2] = v26;
    goto LABEL_18;
  }

LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
  return result;
}

void *closure #1 in Calendar._unadjustedDates(after:matching:matchingPolicy:repeatedTimePolicy:)(double *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  memcpy(__dst, a2, 0x11BuLL);
  v37 = *&a3;
  *&__src[0] = a3;
  *(&__src[0] + 1) = a4;
  v66[0] = v9;
  v10 = Calendar._normalizedWeeksOfYear(_:anchor:)(a5, v66);
  v11 = *(v10 + 16);
  if (!v11)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v92 = MEMORY[0x1E69E7CC0];
  v38 = v10;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
  result = v38;
  if (*(v38 + 16))
  {
    v13 = 0;
    v14 = v92;
    v36 = v11 - 1;
    while (1)
    {
      v15 = v14;
      v87 = __dst[12];
      v88 = __dst[13];
      v89 = __dst[14];
      v90 = __dst[15];
      v83 = __dst[8];
      v84 = __dst[9];
      v85 = __dst[10];
      v86 = __dst[11];
      v79 = __dst[4];
      v80 = __dst[5];
      v81 = __dst[6];
      v82 = __dst[7];
      v75 = __dst[0];
      v76 = __dst[1];
      v77 = __dst[2];
      v78 = __dst[3];
      v72 = *(&__dst[16] + 9);
      v16 = result[v13 + 4];
      __src[12] = __dst[12];
      __src[13] = __dst[13];
      __src[14] = __dst[14];
      __src[15] = __dst[15];
      __src[8] = __dst[8];
      __src[9] = __dst[9];
      __src[10] = __dst[10];
      __src[11] = __dst[11];
      __src[4] = __dst[4];
      __src[5] = __dst[5];
      __src[6] = __dst[6];
      __src[7] = __dst[7];
      __src[0] = __dst[0];
      __src[1] = __dst[1];
      v73 = *(&__dst[17] + 9);
      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = 0;
      }

      else
      {
        v17 = v16;
      }

      v74 = v16 == 0x7FFFFFFFFFFFFFFFLL;
      *v68 = v37;
      v68[1] = a4;
      v67 = v9;
      __src[2] = __dst[2];
      __src[3] = __dst[3];
      *&__src[16] = v17;
      v18 = v16 == 0x7FFFFFFFFFFFFFFFLL;
      BYTE8(__src[16]) = v16 == 0x7FFFFFFFFFFFFFFFLL;
      *(&__src[16] + 9) = *(&__dst[16] + 9);
      *(&__src[17] + 9) = *(&__dst[17] + 9);
      memcpy(v66, __src, 0x11BuLL);
      v65 = 0;
      outlined init with copy of DateComponents(__dst, v64);
      outlined init with copy of DateComponents(__src, v64);
      v14 = v68;
      Calendar.dateAfterMatchingYearForWeekOfYear(startingAt:components:direction:)(&v67, v66, &v65, &v69);
      if (v5)
      {

        memcpy(v63, v66, 0x11BuLL);
        outlined destroy of DateComponents(v63);
        v64[12] = v87;
        v64[13] = v88;
        v64[14] = v89;
        v64[15] = v90;
        v64[8] = v83;
        v64[9] = v84;
        v64[10] = v85;
        v64[11] = v86;
        v64[4] = v79;
        v64[5] = v80;
        v64[6] = v81;
        v64[7] = v82;
        v64[0] = v75;
        v64[1] = v76;
        v64[2] = v77;
        v64[3] = v78;
        *&v64[16] = v17;
        BYTE8(v64[16]) = v18;
        *(&v64[16] + 9) = v72;
        *(&v64[17] + 9) = v73;
        outlined destroy of DateComponents(v64);

        return v14;
      }

      memcpy(v64, v66, 0x11BuLL);
      outlined destroy of DateComponents(v64);
      if (v70)
      {
        v19 = v9;
      }

      else
      {
        v19 = v69;
      }

      v60[1] = v37;
      *&v60[2] = a4;
      v60[0] = v19;
      v63[12] = v87;
      v63[13] = v88;
      v63[14] = v89;
      v63[15] = v90;
      v63[8] = v83;
      v63[9] = v84;
      v63[10] = v85;
      v63[11] = v86;
      v63[4] = v79;
      v63[5] = v80;
      v63[6] = v81;
      v63[7] = v82;
      v63[0] = v75;
      v63[1] = v76;
      v63[2] = v77;
      v63[3] = v78;
      *&v63[16] = v17;
      BYTE8(v63[16]) = v18;
      *(&v63[16] + 9) = v72;
      *(&v63[17] + 9) = v73;
      memcpy(v59, v63, 0x11BuLL);
      v58 = 0;
      outlined init with copy of DateComponents(v63, v57);
      Calendar.dateAfterMatchingWeekOfYear(startingAt:components:direction:)(v60, v59, &v58, &v61);
      v20 = a4;
      memcpy(v57, v59, 0x11BuLL);
      outlined destroy of DateComponents(v57);
      if (!v62)
      {
        v19 = v61;
      }

      v14 = v15;
      v92 = v15;
      v22 = v15[2];
      v21 = v15[3];
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v14 = v92;
      }

      v53 = v87;
      v54 = v88;
      v55 = v89;
      v56 = v90;
      v49 = v83;
      v50 = v84;
      v51 = v85;
      v52 = v86;
      v45 = v79;
      v46 = v80;
      v47 = v81;
      v48 = v82;
      v41 = v75;
      v42 = v76;
      v43 = v77;
      v44 = v78;
      v40 = v73;
      v39 = v72;
      v14[2] = v22 + 1;
      v23 = &v14[37 * v22];
      *(v23 + 4) = v19;
      v23 += 4;
      v24 = v41;
      v25 = v42;
      v26 = v43;
      *(v23 + 7) = v44;
      *(v23 + 5) = v26;
      *(v23 + 3) = v25;
      *(v23 + 1) = v24;
      v27 = v45;
      v28 = v46;
      v29 = v47;
      *(v23 + 15) = v48;
      *(v23 + 13) = v29;
      *(v23 + 11) = v28;
      *(v23 + 9) = v27;
      v30 = v49;
      v31 = v50;
      v32 = v51;
      *(v23 + 23) = v52;
      *(v23 + 21) = v32;
      *(v23 + 19) = v31;
      *(v23 + 17) = v30;
      v33 = v53;
      v34 = v54;
      v35 = v55;
      *(v23 + 31) = v56;
      *(v23 + 29) = v35;
      *(v23 + 27) = v34;
      *(v23 + 25) = v33;
      v23[33] = v17;
      *(v23 + 272) = v18;
      v23 = (v23 + 273);
      *(v23 + 8) = v40;
      *v23 = v39;
      result = v38;
      if (v36 == v13)
      {
        break;
      }

      ++v13;
      a4 = v20;
      if (v13 >= *(v38 + 16))
      {
        goto LABEL_22;
      }
    }

    return v14;
  }

LABEL_22:
  __break(1u);
  return result;
}

void *closure #2 in Calendar._unadjustedDates(after:matching:matchingPolicy:repeatedTimePolicy:)(double *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  memcpy(__dst, a2, 0x11BuLL);
  *&__src[0] = a3;
  *(&__src[0] + 1) = a4;
  v29[0] = v9;
  v10 = Calendar._normalizedDaysOfMonth(_:for:)(a5, v29, 1);
  v11 = *(v10 + 16);
  if (!v11)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v56 = v5;
  v54 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v54;
    v24 = v11 - 1;
    while (1)
    {
      v50 = __dst[2];
      v51 = __dst[3];
      v52 = __dst[4];
      v53 = __dst[5];
      v48 = __dst[0];
      v49 = __dst[1];
      v38 = *(&__dst[9] + 9);
      v37 = *(&__dst[8] + 9);
      v36 = *(&__dst[7] + 9);
      v35 = *(&__dst[6] + 9);
      v42 = *(&__dst[13] + 9);
      v41 = *(&__dst[12] + 9);
      v40 = *(&__dst[11] + 9);
      v39 = *(&__dst[10] + 9);
      v45 = *(&__dst[16] + 9);
      v44 = *(&__dst[15] + 9);
      v43 = *(&__dst[14] + 9);
      v15 = v10;
      v16 = *(v10 + 8 * v13 + 32);
      __src[2] = __dst[2];
      __src[3] = __dst[3];
      __src[4] = __dst[4];
      __src[5] = __dst[5];
      __src[0] = __dst[0];
      __src[1] = __dst[1];
      *(&__src[8] + 9) = *(&__dst[8] + 9);
      *(&__src[9] + 9) = *(&__dst[9] + 9);
      *(&__src[6] + 9) = *(&__dst[6] + 9);
      *(&__src[7] + 9) = *(&__dst[7] + 9);
      *(&__src[12] + 9) = *(&__dst[12] + 9);
      *(&__src[13] + 9) = *(&__dst[13] + 9);
      v46 = *(&__dst[17] + 9);
      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = 0;
      }

      else
      {
        v17 = v16;
      }

      v47 = v16 == 0x7FFFFFFFFFFFFFFFLL;
      *&v30[1] = a3;
      *&v30[2] = a4;
      v30[0] = v9;
      *&__src[6] = v17;
      v18 = v16 == 0x7FFFFFFFFFFFFFFFLL;
      BYTE8(__src[6]) = v16 == 0x7FFFFFFFFFFFFFFFLL;
      *(&__src[10] + 9) = *(&__dst[10] + 9);
      *(&__src[11] + 9) = *(&__dst[11] + 9);
      *(&__src[17] + 9) = *(&__dst[17] + 9);
      *(&__src[15] + 9) = *(&__dst[15] + 9);
      *(&__src[16] + 9) = *(&__dst[16] + 9);
      *(&__src[14] + 9) = *(&__dst[14] + 9);
      memcpy(v29, __src, 0x11BuLL);
      v28 = 0;
      outlined init with copy of DateComponents(__dst, v27);
      outlined init with copy of DateComponents(__src, v27);
      v19 = v56;
      Calendar.dateAfterMatchingDayOfYear(startingAt:components:direction:)(v30, v29, &v28, &v31);
      v56 = v19;
      if (v19)
      {

        memcpy(v26, v29, 0x11BuLL);
        outlined destroy of DateComponents(v26);
        v27[2] = v50;
        v27[3] = v51;
        v27[4] = v52;
        v27[5] = v53;
        v27[0] = v48;
        v27[1] = v49;
        *&v27[6] = v17;
        BYTE8(v27[6]) = v18;
        *(&v27[17] + 9) = v46;
        *(&v27[16] + 9) = v45;
        *(&v27[9] + 9) = v38;
        *(&v27[8] + 9) = v37;
        *(&v27[7] + 9) = v36;
        *(&v27[6] + 9) = v35;
        *(&v27[13] + 9) = v42;
        *(&v27[12] + 9) = v41;
        *(&v27[11] + 9) = v40;
        *(&v27[10] + 9) = v39;
        *(&v27[15] + 9) = v44;
        *(&v27[14] + 9) = v43;
        outlined destroy of DateComponents(v27);

        return v14;
      }

      memcpy(v27, v29, 0x11BuLL);
      outlined destroy of DateComponents(v27);
      if (v32)
      {
        v26[2] = v50;
        v26[3] = v51;
        v26[4] = v52;
        v26[5] = v53;
        v26[0] = v48;
        v26[1] = v49;
        *&v26[6] = v17;
        BYTE8(v26[6]) = v18;
        *(&v26[8] + 9) = v37;
        *(&v26[9] + 9) = v38;
        *(&v26[6] + 9) = v35;
        *(&v26[7] + 9) = v36;
        *(&v26[12] + 9) = v41;
        *(&v26[13] + 9) = v42;
        *(&v26[10] + 9) = v39;
        *(&v26[11] + 9) = v40;
        *(&v26[17] + 9) = v46;
        *(&v26[15] + 9) = v44;
        *(&v26[16] + 9) = v45;
        *(&v26[14] + 9) = v43;
        memcpy(v33, v26, sizeof(v33));
        outlined init with copy of DateComponents(v26, v25);
        v20 = v9;
      }

      else
      {
        v20 = v31;
        v26[2] = v50;
        v26[3] = v51;
        v26[4] = v52;
        v26[5] = v53;
        v26[0] = v48;
        v26[1] = v49;
        *&v26[6] = v17;
        BYTE8(v26[6]) = v18;
        *(&v26[8] + 9) = v37;
        *(&v26[9] + 9) = v38;
        *(&v26[6] + 9) = v35;
        *(&v26[7] + 9) = v36;
        *(&v26[12] + 9) = v41;
        *(&v26[13] + 9) = v42;
        *(&v26[10] + 9) = v39;
        *(&v26[11] + 9) = v40;
        *(&v26[17] + 9) = v46;
        *(&v26[15] + 9) = v44;
        *(&v26[16] + 9) = v45;
        *(&v26[14] + 9) = v43;
        memcpy(v33, v26, sizeof(v33));
        outlined init with copy of DateComponents(v26, v25);
      }

      v26[2] = v50;
      v26[3] = v51;
      v26[4] = v52;
      v26[5] = v53;
      v26[0] = v48;
      v26[1] = v49;
      *&v26[6] = v17;
      BYTE8(v26[6]) = v18;
      *(&v26[8] + 9) = v37;
      *(&v26[9] + 9) = v38;
      *(&v26[6] + 9) = v35;
      *(&v26[7] + 9) = v36;
      *(&v26[12] + 9) = v41;
      *(&v26[13] + 9) = v42;
      *(&v26[10] + 9) = v39;
      *(&v26[11] + 9) = v40;
      *(&v26[17] + 9) = v46;
      *(&v26[15] + 9) = v44;
      *(&v26[16] + 9) = v45;
      *(&v26[14] + 9) = v43;
      outlined destroy of DateComponents(v26);
      v54 = v14;
      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v14 = v54;
      }

      memcpy(v25, v33, 0x11BuLL);
      *(v14 + 16) = v22 + 1;
      v23 = v14 + 296 * v22;
      *(v23 + 32) = v20;
      result = memcpy((v23 + 40), v25, 0x11BuLL);
      if (v24 == v13)
      {
        break;
      }

      v10 = v15;
      if (++v13 >= *(v15 + 16))
      {
        goto LABEL_20;
      }
    }

    return v14;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *closure #3 in Calendar._unadjustedDates(after:matching:matchingPolicy:repeatedTimePolicy:)(double *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = *a1;
  memcpy(__dst, a2, 0x11BuLL);
  v30 = a4;
  *&__src[0] = a3;
  *(&__src[0] + 1) = a4;
  v38[0] = v10;
  v11 = Calendar._normalizedMonths(_:for:)(a5, v38);
  v12 = *(v11 + 16);
  if (!v12)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v65 = v6;
  v63 = MEMORY[0x1E69E7CC0];
  v13 = v11;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
  if (*(v13 + 16))
  {
    v15 = 0;
    v16 = v63;
    v17 = (v13 + 40);
    v28 = v12 - 1;
    v29 = v13;
    while (1)
    {
      v32 = v15;
      v33 = v16;
      v59 = __dst[0];
      v60 = __dst[1];
      v61 = __dst[2];
      v62 = __dst[3];
      v55 = *(&__dst[14] + 9);
      v56 = *(&__dst[15] + 9);
      v57 = *(&__dst[16] + 9);
      v51 = *(&__dst[10] + 9);
      v52 = *(&__dst[11] + 9);
      v54 = *(&__dst[13] + 9);
      v53 = *(&__dst[12] + 9);
      v47 = *(&__dst[6] + 9);
      v48 = *(&__dst[7] + 9);
      v50 = *(&__dst[9] + 9);
      v49 = *(&__dst[8] + 9);
      v46 = *(&__dst[5] + 9);
      v45 = *(&__dst[4] + 9);
      v18 = *(v17 - 1);
      v19 = *v17;
      __src[0] = __dst[0];
      __src[1] = __dst[1];
      __src[2] = __dst[2];
      __src[3] = __dst[3];
      *(&__src[14] + 9) = *(&__dst[14] + 9);
      *(&__src[15] + 9) = *(&__dst[15] + 9);
      *(&__src[16] + 9) = *(&__dst[16] + 9);
      *(&__src[10] + 9) = *(&__dst[10] + 9);
      *(&__src[11] + 9) = *(&__dst[11] + 9);
      *(&__src[12] + 9) = *(&__dst[12] + 9);
      *(&__src[13] + 9) = *(&__dst[13] + 9);
      *(&__src[6] + 9) = *(&__dst[6] + 9);
      *(&__src[7] + 9) = *(&__dst[7] + 9);
      *(&__src[8] + 9) = *(&__dst[8] + 9);
      *(&__src[9] + 9) = *(&__dst[9] + 9);
      v20 = BYTE10(__dst[17]);
      v21 = v18 == 0x7FFFFFFFFFFFFFFFLL;
      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

      v58 = v18 == 0x7FFFFFFFFFFFFFFFLL;
      v40[0] = a3;
      v40[1] = v30;
      v39 = v10;
      *&__src[4] = v22;
      BYTE8(__src[4]) = v18 == 0x7FFFFFFFFFFFFFFFLL;
      *(&__src[4] + 9) = *(&__dst[4] + 9);
      *(&__src[5] + 9) = *(&__dst[5] + 9);
      BYTE9(__src[17]) = v19;
      BYTE10(__src[17]) = BYTE10(__dst[17]);
      memcpy(v38, __src, 0x11BuLL);
      v37 = 0;
      outlined init with copy of DateComponents(__dst, v36);
      outlined init with copy of DateComponents(__src, v36);
      v16 = v40;
      v23 = v65;
      Calendar.dateAfterMatchingMonth(startingAt:components:direction:strictMatching:)(&v39, v38, &v37, a6 & 1, &v41);
      v65 = v23;
      if (v23)
      {

        memcpy(v35, v38, 0x11BuLL);
        outlined destroy of DateComponents(v35);
        *(&v36[16] + 9) = v57;
        v36[0] = v59;
        v36[1] = v60;
        v36[2] = v61;
        v36[3] = v62;
        *(&v36[13] + 9) = v54;
        *(&v36[14] + 9) = v55;
        *(&v36[15] + 9) = v56;
        *(&v36[9] + 9) = v50;
        *(&v36[10] + 9) = v51;
        *(&v36[11] + 9) = v52;
        *(&v36[12] + 9) = v53;
        *(&v36[5] + 9) = v46;
        *(&v36[6] + 9) = v47;
        *(&v36[7] + 9) = v48;
        *(&v36[8] + 9) = v49;
        *&v36[4] = v22;
        BYTE8(v36[4]) = v21;
        *(&v36[4] + 9) = v45;
        BYTE9(v36[17]) = v19;
        BYTE10(v36[17]) = v20;
        outlined destroy of DateComponents(v36);

        return v16;
      }

      memcpy(v36, v38, 0x11BuLL);
      outlined destroy of DateComponents(v36);
      v16 = v33;
      if (v42)
      {
        v35[0] = v59;
        v35[1] = v60;
        v35[2] = v61;
        v35[3] = v62;
        *&v35[4] = v22;
        BYTE8(v35[4]) = v21;
        *(&v35[14] + 9) = v55;
        *(&v35[15] + 9) = v56;
        *(&v35[16] + 9) = v57;
        *(&v35[10] + 9) = v51;
        *(&v35[11] + 9) = v52;
        *(&v35[12] + 9) = v53;
        *(&v35[13] + 9) = v54;
        *(&v35[6] + 9) = v47;
        *(&v35[7] + 9) = v48;
        *(&v35[8] + 9) = v49;
        *(&v35[9] + 9) = v50;
        *(&v35[4] + 9) = v45;
        *(&v35[5] + 9) = v46;
        BYTE9(v35[17]) = v19;
        BYTE10(v35[17]) = v20;
        memcpy(v43, v35, sizeof(v43));
        outlined init with copy of DateComponents(v35, v34);
        v24 = v10;
      }

      else
      {
        v24 = v41;
        v35[0] = v59;
        v35[1] = v60;
        v35[2] = v61;
        v35[3] = v62;
        *&v35[4] = v22;
        BYTE8(v35[4]) = v21;
        *(&v35[14] + 9) = v55;
        *(&v35[15] + 9) = v56;
        *(&v35[16] + 9) = v57;
        *(&v35[10] + 9) = v51;
        *(&v35[11] + 9) = v52;
        *(&v35[12] + 9) = v53;
        *(&v35[13] + 9) = v54;
        *(&v35[6] + 9) = v47;
        *(&v35[7] + 9) = v48;
        *(&v35[8] + 9) = v49;
        *(&v35[9] + 9) = v50;
        *(&v35[4] + 9) = v45;
        *(&v35[5] + 9) = v46;
        BYTE9(v35[17]) = v19;
        BYTE10(v35[17]) = v20;
        memcpy(v43, v35, sizeof(v43));
        outlined init with copy of DateComponents(v35, v34);
      }

      v35[0] = v59;
      v35[1] = v60;
      v35[2] = v61;
      v35[3] = v62;
      *&v35[4] = v22;
      BYTE8(v35[4]) = v21;
      *(&v35[14] + 9) = v55;
      *(&v35[15] + 9) = v56;
      *(&v35[16] + 9) = v57;
      *(&v35[10] + 9) = v51;
      *(&v35[11] + 9) = v52;
      *(&v35[12] + 9) = v53;
      *(&v35[13] + 9) = v54;
      *(&v35[6] + 9) = v47;
      *(&v35[7] + 9) = v48;
      *(&v35[8] + 9) = v49;
      *(&v35[9] + 9) = v50;
      *(&v35[4] + 9) = v45;
      *(&v35[5] + 9) = v46;
      BYTE9(v35[17]) = v19;
      BYTE10(v35[17]) = v20;
      outlined destroy of DateComponents(v35);
      v63 = v33;
      v26 = v33[2];
      v25 = v33[3];
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        v16 = v63;
      }

      memcpy(v34, v43, 0x11BuLL);
      v16[2] = v26 + 1;
      v27 = &v16[37 * v26];
      v27[4] = v24;
      memcpy(v27 + 5, v34, 0x11BuLL);
      result = v29;
      if (v28 == v32)
      {
        break;
      }

      v15 = v32 + 1;
      v17 += 16;
      if ((v32 + 1) >= v29[2])
      {
        goto LABEL_20;
      }
    }

    return v16;
  }

LABEL_20:
  __break(1u);
  return result;
}

int64_t *closure #4 in Calendar._unadjustedDates(after:matching:matchingPolicy:repeatedTimePolicy:)(double *a1, int a2, uint64_t a3, uint64_t a4, double a5, Swift::OpaquePointer a6)
{
  v7 = a4;
  v9 = *a1;
  __dst[0] = a3;
  __dst[1] = a4;
  v28[0] = 2;
  *__src = v9;
  result = Calendar._weekdayComponents(for:in:anchor:)(a6, v28, *&a5);
  if (result)
  {
    v11 = result;
    v12 = result[2];
    if (!v12)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v36 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    if (v11[2])
    {
      v13 = 0;
      v14 = v36;
      v24 = v12 - 1;
      v15 = 4;
      while (1)
      {
        v16 = v14;
        memcpy(__dst, &v11[v15], 0x11BuLL);
        v30 = *&a3;
        v31 = v7;
        v29 = v9;
        memcpy(v28, &v11[v15], 0x11BuLL);
        v27 = 0;
        outlined init with copy of DateComponents(__dst, &v25);
        v14 = &v30;
        Calendar.dateAfterMatchingWeekOfYear(startingAt:components:direction:)(&v29, v28, &v27, &v32);
        if (v6)
        {

          outlined destroy of DateComponents(__dst);

          return v14;
        }

        if (v33)
        {
          v17 = v9;
        }

        else
        {
          v17 = v32;
        }

        v25 = a3;
        v26 = v7;
        v32 = v17;
        memcpy(v28, __dst, 0x11BuLL);
        LOBYTE(v29) = 0;
        Calendar.dateAfterMatchingWeekOfMonth(startingAt:components:direction:)(&v32, v28, &v29, &v30);
        if (!v31)
        {
          v17 = v30;
        }

        v25 = a3;
        v26 = v7;
        v32 = v17;
        memcpy(v28, __dst, 0x11BuLL);
        LOBYTE(v29) = 0;
        Calendar.dateAfterMatchingWeekdayOrdinal(startingAt:components:direction:)(&v32, v28, &v29, &v30);
        if (!v31)
        {
          v17 = v30;
        }

        v25 = a3;
        v26 = v7;
        v32 = v17;
        memcpy(v28, __dst, 0x11BuLL);
        LOBYTE(v29) = 0;
        Calendar.dateAfterMatchingWeekday(startingAt:components:direction:)(&v32, v28, &v29, &v30);
        v18 = v7;
        v19 = v11;
        if (!v31)
        {
          v17 = v30;
        }

        memcpy(__src, __dst, 0x11BuLL);
        v14 = v16;
        v36 = v16;
        v21 = *(v16 + 2);
        v20 = *(v16 + 3);
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          v14 = v36;
        }

        memcpy(v28, __src, 0x11BuLL);
        *(v14 + 2) = v21 + 1;
        v22 = &v14[37 * v21];
        v22[4] = v17;
        result = memcpy(v22 + 5, v28, 0x11BuLL);
        if (v24 == v13)
        {
          break;
        }

        v11 = v19;
        v23 = v19[2];
        v15 += 36;
        ++v13;
        v7 = v18;
        if (v13 >= v23)
        {
          goto LABEL_24;
        }
      }

      return v14;
    }

LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *closure #5 in Calendar._unadjustedDates(after:matching:matchingPolicy:repeatedTimePolicy:)(double *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = *a1;
  memcpy(__dst, a2, 0x11BuLL);
  *&__src[0] = a3;
  *(&__src[0] + 1) = a4;
  v30[0] = v11;
  v12 = Calendar._normalizedDaysOfMonth(_:for:)(a5, v30, 2);
  v13 = *(v12 + 16);
  if (!v13)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v56 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = v56;
    v25 = v13 - 1;
    while (1)
    {
      v53 = __dst[2];
      v54 = __dst[3];
      v55 = __dst[4];
      v52 = __dst[1];
      v51 = __dst[0];
      v47 = *(&__dst[15] + 9);
      v48 = *(&__dst[16] + 9);
      v43 = *(&__dst[11] + 9);
      v44 = *(&__dst[12] + 9);
      v46 = *(&__dst[14] + 9);
      v45 = *(&__dst[13] + 9);
      v39 = *(&__dst[7] + 9);
      v40 = *(&__dst[8] + 9);
      v42 = *(&__dst[10] + 9);
      v41 = *(&__dst[9] + 9);
      v38 = *(&__dst[6] + 9);
      v37 = *(&__dst[5] + 9);
      v17 = v12;
      v18 = *(v12 + 8 * v15 + 32);
      __src[2] = __dst[2];
      __src[3] = __dst[3];
      __src[4] = __dst[4];
      __src[1] = __dst[1];
      __src[0] = __dst[0];
      *(&__src[7] + 9) = *(&__dst[7] + 9);
      *(&__src[8] + 9) = *(&__dst[8] + 9);
      *(&__src[5] + 9) = *(&__dst[5] + 9);
      *(&__src[6] + 9) = *(&__dst[6] + 9);
      *(&__src[11] + 9) = *(&__dst[11] + 9);
      *(&__src[12] + 9) = *(&__dst[12] + 9);
      v49 = *(&__dst[17] + 9);
      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18;
      }

      v50 = v18 == 0x7FFFFFFFFFFFFFFFLL;
      *&v32[1] = a3;
      *&v32[2] = a4;
      v32[0] = v11;
      v31 = a6;
      *&__src[5] = v19;
      v20 = v18 == 0x7FFFFFFFFFFFFFFFLL;
      BYTE8(__src[5]) = v18 == 0x7FFFFFFFFFFFFFFFLL;
      *(&__src[9] + 9) = *(&__dst[9] + 9);
      *(&__src[10] + 9) = *(&__dst[10] + 9);
      *(&__src[17] + 9) = *(&__dst[17] + 9);
      *(&__src[15] + 9) = *(&__dst[15] + 9);
      *(&__src[16] + 9) = *(&__dst[16] + 9);
      *(&__src[13] + 9) = *(&__dst[13] + 9);
      *(&__src[14] + 9) = *(&__dst[14] + 9);
      memcpy(v30, __src, 0x11BuLL);
      v29 = 0;
      outlined init with copy of DateComponents(__dst, v28);
      outlined init with copy of DateComponents(__src, v28);
      Calendar.dateAfterMatchingDay(startingAt:originalStartDate:components:direction:)(v32, &v31, v30, &v29, &v33);
      if (v6)
      {

        memcpy(v27, v30, 0x11BuLL);
        outlined destroy of DateComponents(v27);
        *&v28[32] = v53;
        *&v28[48] = v54;
        *&v28[64] = v55;
        *v28 = v51;
        *&v28[16] = v52;
        *&v28[265] = v48;
        *&v28[249] = v47;
        *&v28[233] = v46;
        *&v28[217] = v45;
        *&v28[201] = v44;
        *&v28[185] = v43;
        *&v28[169] = v42;
        *&v28[153] = v41;
        *&v28[137] = v40;
        *&v28[121] = v39;
        *&v28[105] = v38;
        *&v28[80] = v19;
        v28[88] = v20;
        *&v28[281] = v49;
        *&v28[89] = v37;
        outlined destroy of DateComponents(v28);

        return v16;
      }

      memcpy(v28, v30, sizeof(v28));
      outlined destroy of DateComponents(v28);
      if (v34)
      {
        v27[2] = v53;
        v27[3] = v54;
        v27[4] = v55;
        v27[0] = v51;
        v27[1] = v52;
        *&v27[5] = v19;
        BYTE8(v27[5]) = v20;
        *(&v27[15] + 9) = v47;
        *(&v27[16] + 9) = v48;
        *(&v27[17] + 9) = v49;
        *(&v27[11] + 9) = v43;
        *(&v27[12] + 9) = v44;
        *(&v27[13] + 9) = v45;
        *(&v27[14] + 9) = v46;
        *(&v27[7] + 9) = v39;
        *(&v27[8] + 9) = v40;
        *(&v27[9] + 9) = v41;
        *(&v27[10] + 9) = v42;
        *(&v27[5] + 9) = v37;
        *(&v27[6] + 9) = v38;
        memcpy(v35, v27, sizeof(v35));
        outlined init with copy of DateComponents(v27, v26);
        v21 = v11;
      }

      else
      {
        v21 = v33;
        v27[2] = v53;
        v27[3] = v54;
        v27[4] = v55;
        v27[0] = v51;
        v27[1] = v52;
        *&v27[5] = v19;
        BYTE8(v27[5]) = v20;
        *(&v27[15] + 9) = v47;
        *(&v27[16] + 9) = v48;
        *(&v27[17] + 9) = v49;
        *(&v27[11] + 9) = v43;
        *(&v27[12] + 9) = v44;
        *(&v27[13] + 9) = v45;
        *(&v27[14] + 9) = v46;
        *(&v27[7] + 9) = v39;
        *(&v27[8] + 9) = v40;
        *(&v27[9] + 9) = v41;
        *(&v27[10] + 9) = v42;
        *(&v27[5] + 9) = v37;
        *(&v27[6] + 9) = v38;
        memcpy(v35, v27, sizeof(v35));
        outlined init with copy of DateComponents(v27, v26);
      }

      v27[2] = v53;
      v27[3] = v54;
      v27[4] = v55;
      v27[0] = v51;
      v27[1] = v52;
      *&v27[5] = v19;
      BYTE8(v27[5]) = v20;
      *(&v27[15] + 9) = v47;
      *(&v27[16] + 9) = v48;
      *(&v27[17] + 9) = v49;
      *(&v27[11] + 9) = v43;
      *(&v27[12] + 9) = v44;
      *(&v27[13] + 9) = v45;
      *(&v27[14] + 9) = v46;
      *(&v27[7] + 9) = v39;
      *(&v27[8] + 9) = v40;
      *(&v27[9] + 9) = v41;
      *(&v27[10] + 9) = v42;
      *(&v27[5] + 9) = v37;
      *(&v27[6] + 9) = v38;
      outlined destroy of DateComponents(v27);
      v56 = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v16 = v56;
      }

      memcpy(v26, v35, 0x11BuLL);
      *(v16 + 16) = v23 + 1;
      v24 = v16 + 296 * v23;
      *(v24 + 32) = v21;
      result = memcpy((v24 + 40), v26, 0x11BuLL);
      if (v25 == v15)
      {
        break;
      }

      v12 = v17;
      if (++v15 >= *(v17 + 16))
      {
        goto LABEL_20;
      }
    }

    return v16;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *closure #7 in Calendar._unadjustedDates(after:matching:matchingPolicy:repeatedTimePolicy:)(double *a1, const void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  memcpy(__dst, a2, 0x11BuLL);
  v11 = v10;
  if (*a3 != 4)
  {
    LOBYTE(__src[0]) = 4;
    if (one-time initialization token for validCalendarRange != -1)
    {
      swift_once();
    }

    v12 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v10)
    {
      v12 = v10;
    }

    if (*&static Date.validCalendarRange >= v12)
    {
      v13 = *&static Date.validCalendarRange;
    }

    else
    {
      v13 = v12;
    }

    ObjectType = swift_getObjectType();
    *v53 = v13;
    result = (*(a5 + 160))(v85, __src, v53, ObjectType, a5);
    if (v85[2])
    {
      __break(1u);
      return result;
    }

    v11 = *v85;
  }

  v16 = *(a6 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (!v16)
  {
    return v17;
  }

  v86 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
  v18 = 0;
  v17 = v86;
  v88 = a5 + 192;
  v43 = v16;
  while (1)
  {
    v81 = __dst[4];
    v82 = __dst[5];
    v83 = __dst[6];
    v84 = __dst[7];
    v77 = __dst[0];
    v78 = __dst[1];
    v79 = __dst[2];
    v80 = __dst[3];
    v72 = *(&__dst[14] + 9);
    v73 = *(&__dst[15] + 9);
    v74 = *(&__dst[16] + 9);
    v68 = *(&__dst[10] + 9);
    v69 = *(&__dst[11] + 9);
    v70 = *(&__dst[12] + 9);
    v71 = *(&__dst[13] + 9);
    v66 = *(&__dst[8] + 9);
    v67 = *(&__dst[9] + 9);
    v53[4] = __dst[4];
    v53[5] = __dst[5];
    v53[6] = __dst[6];
    v53[7] = __dst[7];
    v53[0] = __dst[0];
    v53[1] = __dst[1];
    v53[2] = __dst[2];
    v53[3] = __dst[3];
    v62 = *(&__dst[14] + 9);
    v63 = *(&__dst[15] + 9);
    v64 = *(&__dst[16] + 9);
    v58 = *(&__dst[10] + 9);
    v59 = *(&__dst[11] + 9);
    v60 = *(&__dst[12] + 9);
    v61 = *(&__dst[13] + 9);
    v19 = *(a6 + 32 + 8 * v18);
    v75 = *(&__dst[17] + 9);
    v20 = v19 == 0x7FFFFFFFFFFFFFFFLL ? 0 : v19;
    v76 = v19 == 0x7FFFFFFFFFFFFFFFLL;
    v54 = v20;
    v21 = v19 == 0x7FFFFFFFFFFFFFFFLL;
    v55 = v19 == 0x7FFFFFFFFFFFFFFFLL;
    v65 = *(&__dst[17] + 9);
    v56 = *(&__dst[8] + 9);
    v57 = *(&__dst[9] + 9);
    v45 = v18;
    if (v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    outlined init with copy of DateComponents(__dst, v51);
    __src[4] = v81;
    __src[5] = v82;
    __src[6] = v83;
    __src[7] = v84;
    __src[0] = v77;
    __src[1] = v78;
    __src[2] = v79;
    __src[3] = v80;
    *&__src[8] = v20;
    BYTE8(__src[8]) = v21;
    *(&__src[8] + 9) = v66;
    *(&__src[9] + 9) = v67;
    *(&__src[12] + 9) = v70;
    *(&__src[13] + 9) = v71;
    *(&__src[10] + 9) = v68;
    *(&__src[11] + 9) = v69;
    *(&__src[17] + 9) = v75;
    *(&__src[15] + 9) = v73;
    *(&__src[16] + 9) = v74;
    *(&__src[14] + 9) = v72;
    memcpy(v85, __src, 0x11BuLL);
    outlined init with copy of DateComponents(__src, v51);
    v22 = v10;
LABEL_61:
    __src[4] = v81;
    __src[5] = v82;
    __src[6] = v83;
    __src[7] = v84;
    __src[0] = v77;
    __src[1] = v78;
    __src[2] = v79;
    __src[3] = v80;
    *&__src[8] = v20;
    BYTE8(__src[8]) = v21;
    *(&__src[17] + 9) = v75;
    *(&__src[15] + 9) = v73;
    *(&__src[16] + 9) = v74;
    *(&__src[13] + 9) = v71;
    *(&__src[14] + 9) = v72;
    *(&__src[11] + 9) = v69;
    *(&__src[12] + 9) = v70;
    *(&__src[9] + 9) = v67;
    *(&__src[10] + 9) = v68;
    *(&__src[8] + 9) = v66;
    outlined destroy of DateComponents(__src);
    v86 = v17;
    v38 = *(v17 + 16);
    v37 = *(v17 + 24);
    if (v38 >= v37 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
      v17 = v86;
    }

    v18 = v45 + 1;
    memcpy(v51, v85, 0x11BuLL);
    *(v17 + 16) = v38 + 1;
    v39 = v17 + 296 * v38;
    *(v39 + 32) = v22;
    memcpy((v39 + 40), v51, 0x11BuLL);
    if (v45 + 1 == v16)
    {
      return v17;
    }
  }

  v44 = v17;
  v50 = 32;
  outlined init with copy of DateComponents(__dst, v51);
  outlined init with copy of DateComponents(v53, v51);
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v23 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v11)
  {
    v23 = v11;
  }

  if (*&static Date.validCalendarRange >= v23)
  {
    v24 = *&static Date.validCalendarRange;
  }

  else
  {
    v24 = v23;
  }

  v25 = swift_getObjectType();
  *v49 = v24;
  v17 = a4;
  v26 = *(a5 + 192);
  v27 = v17;
  v26(__src, &v50, v49, v25, a5);
  memcpy(v51, __src, 0x11BuLL);
  outlined destroy of DateComponents(v51);
  if (v51[17])
  {
    if (v20)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

  if (v20 == v51[16])
  {
LABEL_52:
    LOBYTE(v48) = 5;
    v36 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v11)
    {
      v36 = v11;
    }

    if (*&static Date.validCalendarRange >= v36)
    {
      v36 = *&static Date.validCalendarRange;
    }

    *v47 = v36;
    a4 = v17;
    (*(a5 + 160))(v49, &v48, v47, v25, a5);
    if (v49[1])
    {
      outlined destroy of DateComponents(v53);
      v22 = v11;
    }

    else
    {
      v22 = *v49;
      outlined destroy of DateComponents(v53);
    }

    v16 = v43;
    v17 = v44;
LABEL_60:
    v49[4] = v81;
    v49[5] = v82;
    v49[6] = v83;
    v49[7] = v84;
    v49[0] = v77;
    v49[1] = v78;
    v49[2] = v79;
    v49[3] = v80;
    *&v49[8] = v20;
    BYTE8(v49[8]) = v21;
    *(&v49[17] + 9) = v75;
    *(&v49[15] + 9) = v73;
    *(&v49[16] + 9) = v74;
    *(&v49[13] + 9) = v71;
    *(&v49[14] + 9) = v72;
    *(&v49[11] + 9) = v69;
    *(&v49[12] + 9) = v70;
    *(&v49[9] + 9) = v67;
    *(&v49[10] + 9) = v68;
    *(&v49[8] + 9) = v66;
    memcpy(v85, v49, 0x11BuLL);
    outlined init with copy of DateComponents(v49, v47);
    goto LABEL_61;
  }

LABEL_27:
  v42 = v21;
  v28 = v20;
  v29 = static Date.validCalendarRange;
  v30 = *(a5 + 160);
  LOBYTE(v48) = 5;
  if (*(&static Date.validCalendarRange + 1) >= v11)
  {
    v31 = v11;
  }

  else
  {
    v31 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v31)
  {
    v31 = *&static Date.validCalendarRange;
  }

  *v47 = v31;
  v30(v49, &v48, v47, v25, a5);
  if ((v49[1] & 1) == 0)
  {
    v32 = v11;
    v33 = a5;
    while (1)
    {
      v22 = *(v49 + 1) + *v49;
      v48 = 32;
      v35 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= *(v49 + 1) + *v49)
      {
        v35 = *(v49 + 1) + *v49;
      }

      if (*&static Date.validCalendarRange >= v35)
      {
        v35 = *&static Date.validCalendarRange;
      }

      v46 = v35;
      v26(v49, &v48, &v46, v25, v33);
      memcpy(v47, v49, 0x11BuLL);
      outlined destroy of DateComponents(v47);
      if (v47[17])
      {
        v20 = v28;
        if (v22 == v32)
        {
          goto LABEL_65;
        }

        if (!v28)
        {
LABEL_50:
          outlined destroy of DateComponents(v53);
          a4 = v27;
          v16 = v43;
          v17 = v44;
          v21 = v42;
          goto LABEL_60;
        }
      }

      else
      {
        v20 = v28;
        if (v22 == v32)
        {
LABEL_65:
          lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
          swift_allocError();
          *v40 = v22;
          *(v40 + 8) = v32;
          *(v40 + 16) = 1;
          goto LABEL_68;
        }

        if (v28 == v47[16])
        {
          goto LABEL_50;
        }
      }

      LOBYTE(v48) = 5;
      if (*(&v29 + 1) >= v22)
      {
        v34 = v22;
      }

      else
      {
        v34 = *(&v29 + 1);
      }

      if (*&v29 >= v34)
      {
        v34 = *&v29;
      }

      *v47 = v34;
      v17 = v27;
      v33 = a5;
      v30(v49, &v48, v47, v25, a5);
      v32 = v22;
      if (v49[1])
      {
        goto LABEL_67;
      }
    }
  }

  v22 = v11;
LABEL_67:
  lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
  swift_allocError();
  *v41 = 5;
  *(v41 + 8) = v22;
  *(v41 + 16) = 0;
  v20 = v28;
LABEL_68:
  swift_willThrow();
  outlined destroy of DateComponents(v53);
  v49[4] = v81;
  v49[5] = v82;
  v49[6] = v83;
  v49[7] = v84;
  v49[0] = v77;
  v49[1] = v78;
  v49[2] = v79;
  v49[3] = v80;
  *(&v49[16] + 9) = v74;
  *(&v49[14] + 9) = v72;
  *(&v49[15] + 9) = v73;
  *(&v49[10] + 9) = v68;
  *(&v49[11] + 9) = v69;
  *(&v49[12] + 9) = v70;
  *(&v49[13] + 9) = v71;
  *(&v49[8] + 9) = v66;
  *&v49[8] = v20;
  BYTE8(v49[8]) = v76;
  *(&v49[17] + 9) = v75;
  *(&v49[9] + 9) = v67;
  outlined destroy of DateComponents(v49);

  return v17;
}

void *closure #8 in Calendar._unadjustedDates(after:matching:matchingPolicy:repeatedTimePolicy:)(double *a1, const void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v11 = *a1;
  memcpy(__dst, a2, 0x11BuLL);
  v12 = v11;
  if (*a3 != 5)
  {
    v36[0] = 5;
    if (one-time initialization token for validCalendarRange != -1)
    {
      swift_once();
    }

    v13 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v11)
    {
      v13 = v11;
    }

    if (*&static Date.validCalendarRange >= v13)
    {
      v14 = *&static Date.validCalendarRange;
    }

    else
    {
      v14 = v13;
    }

    ObjectType = swift_getObjectType();
    *__src = v14;
    result = (*(a5 + 160))(v61, v36, __src, ObjectType);
    if (v61[2])
    {
      __break(1u);
      return result;
    }

    v12 = *v61;
  }

  v17 = *(a6 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v64 = v7;
    v62 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v19 = (a6 + 32);
    v18 = v62;
    while (1)
    {
      v58 = __dst[6];
      v59 = __dst[7];
      v60 = __dst[8];
      v54 = __dst[2];
      v55 = __dst[3];
      v57 = __dst[5];
      v56 = __dst[4];
      v53 = __dst[1];
      v52 = __dst[0];
      v48 = *(&__dst[15] + 9);
      v49 = *(&__dst[16] + 9);
      v44 = *(&__dst[11] + 9);
      v45 = *(&__dst[12] + 9);
      v47 = *(&__dst[14] + 9);
      v46 = *(&__dst[13] + 9);
      v43 = *(&__dst[10] + 9);
      v42 = *(&__dst[9] + 9);
      __src[6] = __dst[6];
      __src[7] = __dst[7];
      __src[8] = __dst[8];
      __src[2] = __dst[2];
      __src[3] = __dst[3];
      __src[5] = __dst[5];
      __src[4] = __dst[4];
      __src[1] = __dst[1];
      __src[0] = __dst[0];
      *(&__src[15] + 9) = *(&__dst[15] + 9);
      *(&__src[16] + 9) = *(&__dst[16] + 9);
      *(&__src[11] + 9) = *(&__dst[11] + 9);
      *(&__src[12] + 9) = *(&__dst[12] + 9);
      v21 = *v19++;
      v20 = v21;
      *(&__src[13] + 9) = *(&__dst[13] + 9);
      *(&__src[14] + 9) = *(&__dst[14] + 9);
      v50 = *(&__dst[17] + 9);
      v22 = v21 == 0x7FFFFFFFFFFFFFFFLL;
      v23 = v21 == 0x7FFFFFFFFFFFFFFFLL ? 0 : v20;
      v51 = v22;
      *&v38[1] = a4;
      *&v38[2] = a5;
      v38[0] = v12;
      v37 = a7;
      *&__src[9] = v23;
      v24 = v22;
      BYTE8(__src[9]) = v22;
      *(&__src[17] + 9) = *(&__dst[17] + 9);
      *(&__src[9] + 9) = *(&__dst[9] + 9);
      *(&__src[10] + 9) = *(&__dst[10] + 9);
      memcpy(v36, __src, 0x11BuLL);
      v35 = 0;
      outlined init with copy of DateComponents(__dst, v34);
      outlined init with copy of DateComponents(__src, v34);
      v25 = v64;
      Calendar.dateAfterMatchingSecond(startingAt:originalStartDate:components:direction:)(v38, &v37, v36, &v35, &v39);
      v64 = v25;
      if (v25)
      {
        break;
      }

      memcpy(v34, v36, sizeof(v34));
      outlined destroy of DateComponents(v34);
      if (v40)
      {
        v33[6] = v58;
        v33[7] = v59;
        v33[8] = v60;
        v33[2] = v54;
        v33[3] = v55;
        v33[4] = v56;
        v33[5] = v57;
        v33[0] = v52;
        v33[1] = v53;
        *&v33[9] = v23;
        BYTE8(v33[9]) = v24;
        *(&v33[15] + 9) = v48;
        *(&v33[16] + 9) = v49;
        *(&v33[17] + 9) = v50;
        *(&v33[11] + 9) = v44;
        *(&v33[12] + 9) = v45;
        *(&v33[13] + 9) = v46;
        *(&v33[14] + 9) = v47;
        *(&v33[9] + 9) = v42;
        *(&v33[10] + 9) = v43;
        memcpy(v61, v33, 0x11BuLL);
        outlined init with copy of DateComponents(v33, v32);
        v26 = v11;
      }

      else
      {
        v26 = v39;
        v33[6] = v58;
        v33[7] = v59;
        v33[8] = v60;
        v33[2] = v54;
        v33[3] = v55;
        v33[4] = v56;
        v33[5] = v57;
        v33[0] = v52;
        v33[1] = v53;
        *&v33[9] = v23;
        BYTE8(v33[9]) = v24;
        *(&v33[15] + 9) = v48;
        *(&v33[16] + 9) = v49;
        *(&v33[17] + 9) = v50;
        *(&v33[11] + 9) = v44;
        *(&v33[12] + 9) = v45;
        *(&v33[13] + 9) = v46;
        *(&v33[14] + 9) = v47;
        *(&v33[9] + 9) = v42;
        *(&v33[10] + 9) = v43;
        memcpy(v61, v33, 0x11BuLL);
        outlined init with copy of DateComponents(v33, v32);
      }

      v33[6] = v58;
      v33[7] = v59;
      v33[8] = v60;
      v33[2] = v54;
      v33[3] = v55;
      v33[4] = v56;
      v33[5] = v57;
      v33[0] = v52;
      v33[1] = v53;
      *&v33[9] = v23;
      BYTE8(v33[9]) = v24;
      *(&v33[15] + 9) = v48;
      *(&v33[16] + 9) = v49;
      *(&v33[17] + 9) = v50;
      *(&v33[11] + 9) = v44;
      *(&v33[12] + 9) = v45;
      *(&v33[13] + 9) = v46;
      *(&v33[14] + 9) = v47;
      *(&v33[9] + 9) = v42;
      *(&v33[10] + 9) = v43;
      outlined destroy of DateComponents(v33);
      v62 = v18;
      v28 = *(v18 + 16);
      v27 = *(v18 + 24);
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        v18 = v62;
      }

      memcpy(v32, v61, 0x11BuLL);
      *(v18 + 16) = v28 + 1;
      v29 = v18 + 296 * v28;
      *(v29 + 32) = v26;
      memcpy((v29 + 40), v32, 0x11BuLL);
      if (!--v17)
      {
        return v18;
      }
    }

    memcpy(v33, v36, 0x11BuLL);
    outlined destroy of DateComponents(v33);
    *&v34[96] = v58;
    *&v34[112] = v59;
    *&v34[128] = v60;
    *&v34[32] = v54;
    *&v34[48] = v55;
    *&v34[64] = v56;
    *&v34[80] = v57;
    *v34 = v52;
    *&v34[16] = v53;
    *&v34[265] = v49;
    *&v34[233] = v47;
    *&v34[249] = v48;
    *&v34[169] = v43;
    *&v34[185] = v44;
    *&v34[201] = v45;
    *&v34[217] = v46;
    *&v34[144] = v23;
    v34[152] = v24;
    *&v34[281] = v50;
    *&v34[153] = v42;
    outlined destroy of DateComponents(v34);
  }

  return v18;
}

uint64_t closure #1 in Calendar._dates(startingAfter:matching:in:matchingPolicy:repeatedTimePolicy:)(uint64_t a1, void *a2, uint64_t *a3, void *__src, uint64_t a5, uint64_t a6, unsigned __int8 a7, char a8, double a9)
{
  v18 = *a3;
  memcpy(__dst, __src, 0x11BuLL);
  *&v37[0] = a5;
  *(&v37[0] + 1) = a6;
  memcpy(v46, __src, 0x11BuLL);
  *v33 = a9;
  LOBYTE(v41) = 0;
  Calendar._adjustedComponents(_:date:direction:)(v46, v33, &v41, __srca);
  v45 = 1;
  v44 = 0;
  v43 = 0;
  *v33 = a5;
  *&v33[8] = a6;
  v40 = *&a9;
  v39 = a9;
  v38 = v18;
  memcpy(v46, __dst, 0x11BuLL);
  memcpy(v37, __srca, 0x11BuLL);
  v36 = 0;
  v35 = a7;
  v34 = a8 & 1;
  Calendar._adjustedDateForMismatches(start:searchingDate:matchDate:matchingComponents:compsToMatch:direction:matchingPolicy:repeatedTimePolicy:isForwardDST:isExactMatch:isLeapDay:)(&v40, &v39, &v38, v46, v37, &v36, &v35, &v34, &v41, &v43, &v45, &v44);
  if (v9)
  {
    return outlined destroy of DateComponents(__srca);
  }

  v20 = *&v41;
  if (v42)
  {
    *&v37[0] = a5;
    *(&v37[0] + 1) = a6;
    v40 = *&a9;
    memcpy(v46, __dst, 0x11BuLL);
    LOBYTE(v39) = 0;
    v42 = 1;
    Calendar.bumpedDateUpToNextHigherUnitInComponents(_:_:_:_:)(&v40, &v39, &v41, v33);
    outlined destroy of DateComponents(__srca);
    if (v33[8])
    {
      v21 = a9;
    }

    else
    {
      v21 = *v33;
    }

LABEL_7:
    v22 = 2;
    goto LABEL_8;
  }

  *&v37[0] = a5;
  *(&v37[0] + 1) = a6;
  memcpy(v46, __dst, 0x11BuLL);
  v23 = Calendar.date(_:containsMatchingComponents:)(v33, &v41, v46);
  v24 = *v33;
  if (v23 && (v45 & 1) == 0)
  {
    v45 = 1;
  }

  *&v37[0] = a5;
  *(&v37[0] + 1) = a6;
  v40 = *&a9;
  memcpy(v46, __dst, 0x11BuLL);
  LOBYTE(v39) = 0;
  *&v41 = v20;
  v42 = 0;
  Calendar.bumpedDateUpToNextHigherUnitInComponents(_:_:_:_:)(&v40, &v39, &v41, v33);
  if (v33[8])
  {
    v21 = a9;
  }

  else
  {
    v21 = *v33;
  }

  if (!v23 && (v24 & 0x2200) == 0)
  {
    v45 = 0;
  }

  if (v20 < a9 && (v24 & 0x2000) == 0)
  {
    memcpy(v46, __srca, 0x11BuLL);
    DateComponents.highestSetUnit.getter(v37);
    if (LOBYTE(v37[0]) == 4)
    {
      v41 = 16;
      if (one-time initialization token for validCalendarRange != -1)
      {
        swift_once();
      }

      v25 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v20)
      {
        v25 = v20;
      }

      if (*&static Date.validCalendarRange >= v25)
      {
        v26 = *&static Date.validCalendarRange;
      }

      else
      {
        v26 = v25;
      }

      ObjectType = swift_getObjectType();
      *v37 = v26;
      v28 = *(a6 + 192);
      v28(v46, &v41, v37, ObjectType, a6);
      outlined destroy of DateComponents(v46);
      v29 = *&v46[7];
      if (BYTE8(v46[7]))
      {
        v29 = 0;
      }

      v32 = v29;
      v40 = 16;
      v30 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v20 + 3600.0)
      {
        v30 = v20 + 3600.0;
      }

      if (*&static Date.validCalendarRange >= v30)
      {
        v30 = *&static Date.validCalendarRange;
      }

      v39 = v30;
      v28(v37, &v40, &v39, ObjectType, a6);
      outlined destroy of DateComponents(__srca);
      memcpy(v33, v37, sizeof(v33));
      outlined destroy of DateComponents(v33);
      if (v33[120])
      {
        if (!v32)
        {
          v21 = v20 + 3600.0;
        }
      }

      else if (v32 == *&v33[112])
      {
        v21 = v20 + 3600.0;
      }
    }

    else
    {
      outlined destroy of DateComponents(__srca);
    }

    goto LABEL_7;
  }

  outlined destroy of DateComponents(__srca);
  v22 = v45;
  if (v43 == 1)
  {
    if (a7 == 3)
    {
      v31 = v45;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v45)
  {
    v22 = 1;
    goto LABEL_9;
  }

  v22 = 2;
  if (a7 != 3 && (v44 & 1) != 0)
  {
    v22 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v20 = 0.0;
LABEL_9:
  *a1 = v20;
  *(a1 + 8) = v22;
  *(a1 + 16) = v21;
  memcpy(a2, __dst, 0x11BuLL);
  return outlined init with copy of DateComponents(__dst, v46);
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, double *a2, uint64_t *a3)
{
  v4 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_58;
  }

  while (1)
  {
    *a1 = v4;
    v6 = *(v4 + 16);
    if (v6 < 2)
    {
      return 1;
    }

    while (1)
    {
      v7 = *a3;
      if (!*a3)
      {
        __break(1u);
        return result;
      }

      v39 = v6;
      v40 = v4;
      v8 = *(v4 + 16 * v6);
      v38 = v6 - 1;
      v11 = (v4 + 16 * (v6 - 1) + 32);
      v9 = *v11;
      v10 = v11[1];
      v42 = v8;
      v12 = 8 * v8;
      v13 = (v7 + 8 * v8);
      v14 = 8 * *v11;
      v15 = (v7 + v14);
      v41 = v10;
      v16 = 8 * v10;
      v17 = (v7 + 8 * v10);
      v18 = v14 - 8 * v8;
      v4 = 8 * v10 - v14;
      if (v18 >= v4)
      {
        if (v15 != a2 || v17 <= a2)
        {
          memmove(a2, (v7 + 8 * v9), 8 * v10 - 8 * v9);
        }

        v20 = (a2 + v4);
        if (v4 < 1 || v14 <= v12)
        {
          v23 = a2;
          v26 = v42;
          v22 = v41;
        }

        else
        {
          v26 = v42;
          v22 = v41;
          do
          {
            v29 = v15 - 1;
            --v17;
            v30 = v20;
            while (1)
            {
              v31 = v17 + 1;
              v32 = *(v30 - 8);
              v30 -= 8;
              v33 = v32;
              if (v32 < *v29)
              {
                break;
              }

              if (v31 != v20)
              {
                *v17 = v33;
              }

              --v17;
              v20 = v30;
              if (v30 <= a2)
              {
                v20 = v30;
                v23 = a2;
                goto LABEL_47;
              }
            }

            if (v31 != v15)
            {
              *v17 = *v29;
            }

            if (v20 <= a2)
            {
              break;
            }

            --v15;
          }

          while (v13 < v29);
          v23 = a2;
          v15 = v29;
        }
      }

      else
      {
        if (v13 != a2 || v15 <= a2)
        {
          memmove(a2, (v7 + 8 * v8), 8 * v9 - 8 * v8);
        }

        v20 = (a2 + v18);
        v21 = v18 < 1 || v16 <= v14;
        v22 = v41;
        v23 = a2;
        if (!v21)
        {
          v26 = v42;
          while (1)
          {
            v27 = *v15;
            if (*v15 >= *v23)
            {
              break;
            }

            v28 = v13 == v15++;
            if (!v28)
            {
              goto LABEL_32;
            }

LABEL_33:
            ++v13;
            if (v23 >= v20 || v15 >= v17)
            {
              v15 = v13;
              goto LABEL_47;
            }
          }

          v27 = *v23;
          v28 = v13 == v23++;
          if (v28)
          {
            goto LABEL_33;
          }

LABEL_32:
          *v13 = v27;
          goto LABEL_33;
        }

        v15 = v13;
        v26 = v42;
      }

LABEL_47:
      v34 = v20 - v23 + (v20 - v23 < 0 ? 7uLL : 0);
      if (v15 != v23 || v15 >= (v23 + (v34 & 0xFFFFFFFFFFFFFFF8)))
      {
        memmove(v15, v23, 8 * (v34 >> 3));
      }

      if (v22 < v26)
      {
        break;
      }

      v4 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
      }

      if ((v39 - 2) >= *(v4 + 16))
      {
        goto LABEL_57;
      }

      v35 = (v4 + 16 * v39);
      *v35 = v26;
      v35[1] = v22;
      *a1 = v4;
      result = specialized Array.remove(at:)(v38);
      v4 = *a1;
      v6 = *(*a1 + 16);
      if (v6 <= 1)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t result, double *a2)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 32;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v4 == v3)
    {
      return v6;
    }

    if (v3 >= v4)
    {
      break;
    }

    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_13;
    }

    v8 = *(v5 + 8 * v3++);
    if (v8 >= *a2)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
      }

      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
      }

      *(v6 + 16) = v10 + 1;
      *(v6 + 8 * v10 + 32) = v8;
      v3 = v7;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating()
{
  result = lazy protocol witness table cache variable for type _CalendarAutoupdating and conformance _CalendarAutoupdating;
  if (!lazy protocol witness table cache variable for type _CalendarAutoupdating and conformance _CalendarAutoupdating)
  {
    type metadata accessor for _CalendarAutoupdating();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _CalendarAutoupdating and conformance _CalendarAutoupdating);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Calendar._DateComponentCombinations(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Calendar._DateComponentCombinations(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Calendar.DatesByRecurring.Iterator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 616))
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

uint64_t storeEnumTagSinglePayload for Calendar.DatesByRecurring.Iterator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 584) = 0u;
    *(result + 600) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 616) = 1;
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

    *(result + 616) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ComponentAction and conformance ComponentAction()
{
  result = lazy protocol witness table cache variable for type ComponentAction and conformance ComponentAction;
  if (!lazy protocol witness table cache variable for type ComponentAction and conformance ComponentAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ComponentAction and conformance ComponentAction);
  }

  return result;
}

double Date.init<A>(_:strategy:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>)
{
  (*(a4 + 48))(&v12, a1, a3, a4);
  (*(*(a3 - 8) + 8))(a2, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  if (!v5)
  {
    result = v12;
    *a5 = v12;
  }

  return result;
}

double Date.init<A, B>(_:strategy:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X8>)
{
  v19 = a6;
  v12 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  (*(v12 + 16))(&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15, v13);
  v20[0] = String.init<A>(_:)();
  v20[1] = v16;
  (*(a5 + 48))(&v21, v20, a3, a5);
  (*(*(a3 - 8) + 8))(a2, a3);
  (*(v12 + 8))(a1, a4);

  if (!v6)
  {
    result = v21;
    *v19 = v21;
  }

  return result;
}

double DateComponents.init<A>(_:strategy:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v141 = 1;
  v139 = 1;
  v137 = 1;
  v135 = 1;
  v133 = 1;
  v131 = 1;
  v129 = 1;
  v127 = 1;
  v125 = 1;
  v123 = 1;
  v121 = 1;
  v119 = 1;
  v117 = 1;
  v115 = 1;
  v113 = 1;
  v111 = 1;
  (*(a4 + 48))(v62, a1, a3, a4);
  (*(*(a3 - 8) + 8))(a2, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v15 = v141;
  *v16 = *v140;
  *&v16[3] = *&v140[3];
  v17 = 0;
  v18 = v139;
  *v19 = *v138;
  *&v19[3] = *&v138[3];
  v20 = 0;
  v21 = v137;
  *v22 = *v136;
  *&v22[3] = *&v136[3];
  v23 = 0;
  v24 = v135;
  *v25 = *v134;
  *&v25[3] = *&v134[3];
  v26 = 0;
  v27 = v133;
  *v28 = *v132;
  *&v28[3] = *&v132[3];
  v29 = 0;
  v30 = v131;
  *&v31[3] = *&v130[3];
  *v31 = *v130;
  v32 = 0;
  v33 = v129;
  *&v34[3] = *&v128[3];
  *v34 = *v128;
  v35 = 0;
  v36 = v127;
  *&v37[3] = *&v126[3];
  *v37 = *v126;
  v38 = 0;
  v39 = v125;
  *&v40[3] = *&v124[3];
  *v40 = *v124;
  v41 = 0;
  v42 = v123;
  *&v43[3] = *&v122[3];
  *v43 = *v122;
  v44 = 0;
  v45 = v121;
  *&v46[3] = *&v120[3];
  *v46 = *v120;
  v47 = 0;
  v48 = v119;
  *&v49[3] = *&v118[3];
  *v49 = *v118;
  v50 = 0;
  v51 = v117;
  *&v52[3] = *&v116[3];
  *v52 = *v116;
  v53 = 0;
  v54 = v115;
  *&v55[3] = *&v114[3];
  *v55 = *v114;
  v56 = 0;
  v57 = v113;
  *v58 = *v112;
  *&v58[3] = *&v112[3];
  v59 = 0;
  v60 = v111;
  v61 = 514;
  outlined destroy of DateComponents(v13);
  if (!v5)
  {
    *(a5 + 268) = *&v107[3];
    *(a5 + 265) = *v107;
    *(a5 + 32) = v63;
    *(a5 + 40) = v64;
    *(a5 + 41) = *v65;
    *(a5 + 44) = *&v65[3];
    *(a5 + 48) = v66;
    *(a5 + 56) = v67;
    *(a5 + 57) = *v68;
    *(a5 + 60) = *&v68[3];
    *(a5 + 64) = v69;
    *(a5 + 72) = v70;
    *(a5 + 76) = *&v71[3];
    *(a5 + 73) = *v71;
    *(a5 + 80) = v72;
    *(a5 + 88) = v73;
    *(a5 + 92) = *&v74[3];
    *(a5 + 89) = *v74;
    *(a5 + 96) = v75;
    *(a5 + 104) = v76;
    *(a5 + 105) = *v77;
    *(a5 + 108) = *&v77[3];
    *(a5 + 112) = v78;
    *(a5 + 120) = v79;
    *(a5 + 124) = *&v80[3];
    *(a5 + 121) = *v80;
    *(a5 + 128) = v81;
    *(a5 + 136) = v82;
    *(a5 + 137) = *v83;
    *(a5 + 140) = *&v83[3];
    *(a5 + 144) = v84;
    *(a5 + 152) = v85;
    *(a5 + 153) = *v86;
    *(a5 + 156) = *&v86[3];
    *(a5 + 160) = v87;
    *(a5 + 168) = v88;
    *(a5 + 172) = *&v89[3];
    *(a5 + 169) = *v89;
    *(a5 + 176) = v90;
    *(a5 + 184) = v91;
    *(a5 + 188) = *&v92[3];
    *(a5 + 185) = *v92;
    *(a5 + 192) = v93;
    *(a5 + 200) = v94;
    *(a5 + 204) = *&v95[3];
    *(a5 + 201) = *v95;
    *(a5 + 208) = v96;
    *(a5 + 216) = v97;
    *(a5 + 220) = *&v98[3];
    *(a5 + 217) = *v98;
    *(a5 + 224) = v99;
    *(a5 + 232) = v100;
    *(a5 + 236) = *&v101[3];
    *(a5 + 233) = *v101;
    *(a5 + 240) = v102;
    *(a5 + 248) = v103;
    *(a5 + 252) = *&v104[3];
    *(a5 + 249) = *v104;
    *(a5 + 256) = v105;
    *(a5 + 264) = v106;
    *(a5 + 272) = v108;
    *(a5 + 280) = v109;
    *(a5 + 282) = v110;
    result = *v62;
    v12 = v62[1];
    *a5 = v62[0];
    *(a5 + 16) = v12;
  }

  return result;
}

double DateComponents.init<A, B>(_:strategy:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a2;
  v10 = *(a4 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v155 = 1;
  v153 = 1;
  v151 = 1;
  v149 = 1;
  v147 = 1;
  v145 = 1;
  v143 = 1;
  v141 = 1;
  v139 = 1;
  v137 = 1;
  v135 = 1;
  v133 = 1;
  v131 = 1;
  v129 = 1;
  v127 = 1;
  v125 = 1;
  v13 = *(v10 + 16);
  v156 = v14;
  v13(&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v75[0] = String.init<A>(_:)();
  v75[1] = v15;
  v16 = a5;
  v17 = *(a5 + 48);
  v18 = v24;
  v19 = v23;
  v17(v76, v75, a3, v16);
  if (v18)
  {
    (*(*(a3 - 8) + 8))(v19, a3);
    (*(v10 + 8))(v156, a4);

    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v28 = v155;
    *v29 = v154[0];
    *&v29[3] = *(v154 + 3);
    v30 = 0;
    v31 = v153;
    *v32 = *v152;
    *&v32[3] = *&v152[3];
    v33 = 0;
    v34 = v151;
    *v35 = *v150;
    *&v35[3] = *&v150[3];
    v36 = 0;
    v37 = v149;
    *v38 = *v148;
    *&v38[3] = *&v148[3];
    v39 = 0;
    v40 = v147;
    *v41 = *v146;
    *&v41[3] = *&v146[3];
    v42 = 0;
    v43 = v145;
    *&v44[3] = *&v144[3];
    *v44 = *v144;
    v45 = 0;
    v46 = v143;
    *&v47[3] = *&v142[3];
    *v47 = *v142;
    v48 = 0;
    v49 = v141;
    *&v50[3] = *&v140[3];
    *v50 = *v140;
    v51 = 0;
    v52 = v139;
    *&v53[3] = *&v138[3];
    *v53 = *v138;
    v54 = 0;
    v55 = v137;
    *&v56[3] = *&v136[3];
    *v56 = *v136;
    v57 = 0;
    v58 = v135;
    *&v59[3] = *&v134[3];
    *v59 = *v134;
    v60 = 0;
    v61 = v133;
    *&v62[3] = *&v132[3];
    *v62 = *v132;
    v63 = 0;
    v64 = v131;
    *&v65[3] = *&v130[3];
    *v65 = *v130;
    v66 = 0;
    v67 = v129;
    *&v68[3] = *&v128[3];
    *v68 = *v128;
    v69 = 0;
    v70 = v127;
    *v71 = *v126;
    *&v71[3] = *&v126[3];
    v72 = 0;
    v73 = v125;
    v74 = 514;
    outlined destroy of DateComponents(&v25);
  }

  else
  {
    v24 = 0;
    (*(*(a3 - 8) + 8))(v19, a3);
    (*(v10 + 8))(v156, a4);

    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v28 = v155;
    *v29 = v154[0];
    *&v29[3] = *(v154 + 3);
    v30 = 0;
    v31 = v153;
    *v32 = *v152;
    *&v32[3] = *&v152[3];
    v33 = 0;
    v34 = v151;
    *v35 = *v150;
    *&v35[3] = *&v150[3];
    v36 = 0;
    v37 = v149;
    *v38 = *v148;
    *&v38[3] = *&v148[3];
    v39 = 0;
    v40 = v147;
    *v41 = *v146;
    *&v41[3] = *&v146[3];
    v42 = 0;
    v43 = v145;
    *&v44[3] = *&v144[3];
    *v44 = *v144;
    v45 = 0;
    v46 = v143;
    *&v47[3] = *&v142[3];
    *v47 = *v142;
    v48 = 0;
    v49 = v141;
    *&v50[3] = *&v140[3];
    *v50 = *v140;
    v51 = 0;
    v52 = v139;
    *&v53[3] = *&v138[3];
    *v53 = *v138;
    v54 = 0;
    v55 = v137;
    *&v56[3] = *&v136[3];
    *v56 = *v136;
    v57 = 0;
    v58 = v135;
    *&v59[3] = *&v134[3];
    *v59 = *v134;
    v60 = 0;
    v61 = v133;
    *&v62[3] = *&v132[3];
    *v62 = *v132;
    v63 = 0;
    v64 = v131;
    *&v65[3] = *&v130[3];
    *v65 = *v130;
    v66 = 0;
    v67 = v129;
    *&v68[3] = *&v128[3];
    *v68 = *v128;
    v69 = 0;
    v70 = v127;
    *v71 = *v126;
    *&v71[3] = *&v126[3];
    v72 = 0;
    v73 = v125;
    v74 = 514;
    outlined destroy of DateComponents(&v25);
    v21 = *&v79[3];
    *(a6 + 268) = *&v121[3];
    *(a6 + 265) = *v121;
    *(a6 + 32) = v77;
    *(a6 + 40) = v78;
    *(a6 + 41) = *v79;
    *(a6 + 44) = v21;
    *(a6 + 48) = v80;
    *(a6 + 56) = v81;
    *(a6 + 57) = *v82;
    *(a6 + 60) = *&v82[3];
    *(a6 + 64) = v83;
    *(a6 + 72) = v84;
    *(a6 + 76) = *&v85[3];
    *(a6 + 73) = *v85;
    *(a6 + 80) = v86;
    *(a6 + 88) = v87;
    *(a6 + 92) = *&v88[3];
    *(a6 + 89) = *v88;
    *(a6 + 96) = v89;
    *(a6 + 104) = v90;
    *(a6 + 105) = *v91;
    *(a6 + 108) = *&v91[3];
    *(a6 + 112) = v92;
    *(a6 + 120) = v93;
    *(a6 + 124) = *&v94[3];
    *(a6 + 121) = *v94;
    *(a6 + 128) = v95;
    *(a6 + 136) = v96;
    *(a6 + 137) = *v97;
    *(a6 + 140) = *&v97[3];
    *(a6 + 144) = v98;
    *(a6 + 152) = v99;
    *(a6 + 153) = *v100;
    *(a6 + 156) = *&v100[3];
    *(a6 + 160) = v101;
    *(a6 + 168) = v102;
    *(a6 + 172) = *&v103[3];
    *(a6 + 169) = *v103;
    *(a6 + 176) = v104;
    *(a6 + 184) = v105;
    *(a6 + 188) = *&v106[3];
    *(a6 + 185) = *v106;
    *(a6 + 192) = v107;
    *(a6 + 200) = v108;
    *(a6 + 204) = *&v109[3];
    *(a6 + 201) = *v109;
    *(a6 + 208) = v110;
    *(a6 + 216) = v111;
    *(a6 + 220) = *&v112[3];
    *(a6 + 217) = *v112;
    *(a6 + 224) = v113;
    *(a6 + 232) = v114;
    *(a6 + 236) = *&v115[3];
    *(a6 + 233) = *v115;
    *(a6 + 240) = v116;
    *(a6 + 248) = v117;
    *(a6 + 252) = *&v118[3];
    *(a6 + 249) = *v118;
    *(a6 + 256) = v119;
    *(a6 + 264) = v120;
    *(a6 + 272) = v122;
    *(a6 + 280) = v123;
    *(a6 + 282) = v124;
    result = *v76;
    v22 = v76[1];
    *a6 = v76[0];
    *(a6 + 16) = v22;
  }

  return result;
}

uint64_t DateComponents.era.setter(uint64_t result, char a2)
{
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  if (a2)
  {
    v3 = result;
  }

  *(v2 + 32) = v3;
  *(v2 + 40) = a2 & 1 | (result == 0x7FFFFFFFFFFFFFFFLL);
  return result;
}

uint64_t DateComponents.quarter.setter(uint64_t result, char a2)
{
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  if (a2)
  {
    v3 = result;
  }

  *(v2 + 208) = v3;
  *(v2 + 216) = a2 & 1 | (result == 0x7FFFFFFFFFFFFFFFLL);
  return result;
}

uint64_t DateComponents.dayOfYear.setter(uint64_t result, char a2)
{
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  if (a2)
  {
    v3 = result;
  }

  *(v2 + 96) = v3;
  *(v2 + 104) = a2 & 1 | (result == 0x7FFFFFFFFFFFFFFFLL);
  return result;
}

uint64_t DateComponents.weekOfYear.setter(uint64_t result, char a2)
{
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  if (a2)
  {
    v3 = result;
  }

  *(v2 + 256) = v3;
  *(v2 + 264) = a2 & 1 | (result == 0x7FFFFFFFFFFFFFFFLL);
  return result;
}

uint64_t DateComponents.weekOfMonth.setter(uint64_t result, char a2)
{
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  if (a2)
  {
    v3 = result;
  }

  *(v2 + 240) = v3;
  *(v2 + 248) = a2 & 1 | (result == 0x7FFFFFFFFFFFFFFFLL);
  return result;
}

uint64_t DateComponents.yearForWeekOfYear.setter(uint64_t result, char a2)
{
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  if (a2)
  {
    v3 = result;
  }

  *(v2 + 272) = v3;
  *(v2 + 280) = a2 & 1 | (result == 0x7FFFFFFFFFFFFFFFLL);
  return result;
}

uint64_t DateComponents.weekday.setter(uint64_t result, char a2)
{
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  if (a2)
  {
    v3 = result;
  }

  *(v2 + 176) = v3;
  *(v2 + 184) = a2 & 1 | (result == 0x7FFFFFFFFFFFFFFFLL);
  return result;
}

uint64_t DateComponents.weekdayOrdinal.setter(uint64_t result, char a2)
{
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  if (a2)
  {
    v3 = result;
  }

  *(v2 + 192) = v3;
  *(v2 + 200) = a2 & 1 | (result == 0x7FFFFFFFFFFFFFFFLL);
  return result;
}

uint64_t DateComponents.hour.setter(uint64_t result, char a2)
{
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  if (a2)
  {
    v3 = result;
  }

  *(v2 + 112) = v3;
  *(v2 + 120) = a2 & 1 | (result == 0x7FFFFFFFFFFFFFFFLL);
  return result;
}

uint64_t DateComponents.minute.setter(uint64_t result, char a2)
{
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  if (a2)
  {
    v3 = result;
  }

  *(v2 + 128) = v3;
  *(v2 + 136) = a2 & 1 | (result == 0x7FFFFFFFFFFFFFFFLL);
  return result;
}

uint64_t DateComponents.second.setter(uint64_t result, char a2)
{
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  if (a2)
  {
    v3 = result;
  }

  *(v2 + 144) = v3;
  *(v2 + 152) = a2 & 1 | (result == 0x7FFFFFFFFFFFFFFFLL);
  return result;
}

uint64_t DateComponents.nanosecond.setter(uint64_t result, char a2)
{
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  if (a2)
  {
    v3 = result;
  }

  *(v2 + 160) = v3;
  *(v2 + 168) = a2 & 1 | (result == 0x7FFFFFFFFFFFFFFFLL);
  return result;
}

uint64_t DateComponents.calendar.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_unknownObjectRelease();
  *v1 = v2;
  v1[1] = v3;
  result = v1[2];
  if (result)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v1[3];
    v7[0] = v1[2];
    v7[1] = v6;
    swift_unknownObjectRetain();
    return Calendar.timeZone.setter(v7);
  }

  return result;
}

uint64_t DateComponents.scaled(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, v2, 0x11BuLL);
  v5 = v2[1];
  v82 = *v2;
  v83 = v5;
  v6 = __dst[4];
  v81 = __dst[5];
  v7 = *(v2 + 41);
  *(v80 + 3) = *(v2 + 11);
  v80[0] = v7;
  v62 = __dst[6];
  v79 = __dst[7];
  v8 = *(v2 + 57);
  *(v78 + 3) = *(v2 + 15);
  v78[0] = v8;
  v61 = __dst[8];
  v77 = __dst[9];
  v9 = *(v2 + 73);
  *(v76 + 3) = *(v2 + 19);
  v76[0] = v9;
  v10 = __dst[10];
  v75 = __dst[11];
  v11 = *(v2 + 89);
  *&v74[15] = *(v2 + 13);
  *v74 = v11;
  v12 = __dst[14];
  v73 = __dst[15];
  v13 = *(v2 + 121);
  *(v72 + 3) = *(v2 + 31);
  v72[0] = v13;
  v14 = __dst[16];
  v71 = __dst[17];
  v15 = __dst[18];
  v70 = __dst[19];
  result = __dst[20];
  v69 = __dst[21];
  v68 = __dst[27];
  v67 = __dst[29];
  v66 = __dst[31];
  v65 = __dst[33];
  v17 = __dst[35];
  v64 = __dst[35];
  v60 = *(&__dst[35] + 1);
  if ((__dst[5] & 1) == 0)
  {
    v18 = __dst[4] * a1;
    if ((__dst[4] * a1) >> 64 != (__dst[4] * a1) >> 63)
    {
      __break(1u);
      goto LABEL_79;
    }

    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      v6 = __dst[4] * a1;
    }

    v81 = v18 == 0x7FFFFFFFFFFFFFFFLL;
  }

  if (__dst[7])
  {
    goto LABEL_12;
  }

  v19 = __dst[6] * a1;
  if ((__dst[6] * a1) >> 64 != (__dst[6] * a1) >> 63)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v20 = v19 == 0x7FFFFFFFFFFFFFFFLL;
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0;
  }

  v62 = v19;
  v79 = v20;
LABEL_12:
  if (__dst[9])
  {
    goto LABEL_17;
  }

  v21 = __dst[8] * a1;
  if ((__dst[8] * a1) >> 64 != (__dst[8] * a1) >> 63)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v22 = v21 == 0x7FFFFFFFFFFFFFFFLL;
  if (v21 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = 0;
  }

  v61 = v21;
  v77 = v22;
LABEL_17:
  v23 = __dst[34];
  v24 = __dst[32];
  v25 = __dst[30];
  v26 = __dst[28];
  v27 = __dst[26];
  v28 = __dst[20];
  result = v6;
  if (__dst[11])
  {
    goto LABEL_23;
  }

  v29 = __dst[10] * a1;
  if ((__dst[10] * a1) >> 64 != (__dst[10] * a1) >> 63)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v29 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v10 = __dst[10] * a1;
  }

  v75 = v29 == 0x7FFFFFFFFFFFFFFFLL;
LABEL_23:
  if (__dst[15])
  {
    goto LABEL_29;
  }

  v30 = __dst[14] * a1;
  if ((__dst[14] * a1) >> 64 != (__dst[14] * a1) >> 63)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v30 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v12 = __dst[14] * a1;
  }

  v73 = v30 == 0x7FFFFFFFFFFFFFFFLL;
LABEL_29:
  if (__dst[17])
  {
    goto LABEL_35;
  }

  v31 = __dst[16] * a1;
  if ((__dst[16] * a1) >> 64 != (__dst[16] * a1) >> 63)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v31 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 0;
  }

  else
  {
    v14 = __dst[16] * a1;
  }

  v71 = v31 == 0x7FFFFFFFFFFFFFFFLL;
LABEL_35:
  if (__dst[19])
  {
    goto LABEL_41;
  }

  v32 = __dst[18] * a1;
  if ((__dst[18] * a1) >> 64 != (__dst[18] * a1) >> 63)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v32 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0;
  }

  else
  {
    v15 = __dst[18] * a1;
  }

  v70 = v32 == 0x7FFFFFFFFFFFFFFFLL;
LABEL_41:
  if (__dst[21])
  {
    goto LABEL_47;
  }

  v33 = __dst[20] * a1;
  if ((__dst[20] * a1) >> 64 != (__dst[20] * a1) >> 63)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v33 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v28 = 0;
  }

  else
  {
    v28 = __dst[20] * a1;
  }

  v69 = v33 == 0x7FFFFFFFFFFFFFFFLL;
LABEL_47:
  if (__dst[27])
  {
    goto LABEL_53;
  }

  v34 = __dst[26] * a1;
  if ((__dst[26] * a1) >> 64 != (__dst[26] * a1) >> 63)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v34 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = 0;
  }

  else
  {
    v27 = __dst[26] * a1;
  }

  v68 = v34 == 0x7FFFFFFFFFFFFFFFLL;
LABEL_53:
  if (__dst[29])
  {
    goto LABEL_59;
  }

  v35 = __dst[28] * a1;
  if ((__dst[28] * a1) >> 64 != (__dst[28] * a1) >> 63)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v35 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = 0;
  }

  else
  {
    v26 = __dst[28] * a1;
  }

  v67 = v35 == 0x7FFFFFFFFFFFFFFFLL;
LABEL_59:
  if (__dst[31])
  {
    goto LABEL_65;
  }

  v36 = __dst[30] * a1;
  if ((__dst[30] * a1) >> 64 != (__dst[30] * a1) >> 63)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (v36 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = 0;
  }

  else
  {
    v25 = __dst[30] * a1;
  }

  v66 = v36 == 0x7FFFFFFFFFFFFFFFLL;
LABEL_65:
  if ((__dst[33] & 1) == 0)
  {
    v37 = __dst[32] * a1;
    if ((__dst[32] * a1) >> 64 == (__dst[32] * a1) >> 63)
    {
      if (v37 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = 0;
      }

      else
      {
        v24 = __dst[32] * a1;
      }

      v65 = v37 == 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_71;
    }

LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

LABEL_71:
  if (__dst[35])
  {
LABEL_77:
    v39 = v81;
    v40 = v79;
    v41 = v77;
    v42 = v75;
    v43 = v73;
    v44 = v71;
    v45 = v70;
    v46 = v69;
    v47 = v68;
    v48 = v67;
    v49 = v66;
    v50 = v65;
    v51 = v83;
    *a2 = v82;
    *(a2 + 16) = v51;
    *(a2 + 32) = v6;
    *(a2 + 40) = v39;
    *(a2 + 41) = v80[0];
    *(a2 + 44) = *(v80 + 3);
    *(a2 + 48) = v62;
    *(a2 + 56) = v40;
    *(a2 + 57) = v78[0];
    *(a2 + 60) = *(v78 + 3);
    *(a2 + 64) = v61;
    *(a2 + 72) = v41;
    *(a2 + 73) = v76[0];
    *(a2 + 76) = *(v76 + 3);
    *(a2 + 80) = v10;
    *(a2 + 88) = v42;
    v52 = *v74;
    *(a2 + 104) = *&v74[15];
    *(a2 + 112) = v12;
    *(a2 + 89) = v52;
    *(a2 + 120) = v43;
    *(a2 + 124) = *(v72 + 3);
    *(a2 + 121) = v72[0];
    *(a2 + 128) = v14;
    *(a2 + 136) = v44;
    *(a2 + 140) = *(v2 + 35);
    *(a2 + 137) = *(v2 + 137);
    *(a2 + 144) = v15;
    *(a2 + 152) = v45;
    v53 = *(v2 + 153);
    *(a2 + 156) = *(v2 + 39);
    *(a2 + 153) = v53;
    *(a2 + 160) = v28;
    *(a2 + 168) = v46;
    v54 = *(v2 + 169);
    v55 = *(v2 + 185);
    *(a2 + 200) = *(v2 + 25);
    *(a2 + 208) = v27;
    *(a2 + 185) = v55;
    *(a2 + 169) = v54;
    *(a2 + 216) = v47;
    v56 = *(v2 + 217);
    *(a2 + 220) = *(v2 + 55);
    *(a2 + 217) = v56;
    *(a2 + 224) = v26;
    *(a2 + 232) = v48;
    v57 = *(v2 + 233);
    *(a2 + 236) = *(v2 + 59);
    *(a2 + 233) = v57;
    *(a2 + 240) = v25;
    *(a2 + 248) = v49;
    v58 = *(v2 + 249);
    *(a2 + 252) = *(v2 + 63);
    *(a2 + 249) = v58;
    *(a2 + 256) = v24;
    *(a2 + 264) = v50;
    v59 = *(v2 + 265);
    *(a2 + 268) = *(v2 + 67);
    *(a2 + 265) = v59;
    *(a2 + 272) = v23;
    *(a2 + 280) = v17;
    *(a2 + 281) = v60;
    return outlined init with copy of DateComponents(__dst, v63);
  }

  v38 = __dst[34] * a1;
  if ((__dst[34] * a1) >> 64 == (__dst[34] * a1) >> 63)
  {
    v17 = v38 == 0x7FFFFFFFFFFFFFFFLL;
    if (v38 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = 0;
    }

    else
    {
      v23 = __dst[34] * a1;
    }

    v64 = v38 == 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_77;
  }

LABEL_90:
  __break(1u);
  return result;
}

uint64_t key path setter for DateComponents.calendar : DateComponents(_OWORD *a1, uint64_t a2)
{
  *a2 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = *(a2 + 16);
  if (result)
  {
    if (*a2)
    {
      v4 = *(a2 + 24);
      v5[0] = *(a2 + 16);
      v5[1] = v4;
      swift_unknownObjectRetain();
      return Calendar.timeZone.setter(v5);
    }
  }

  return result;
}

uint64_t (*DateComponents.calendar.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  swift_unknownObjectRetain();
  return DateComponents.calendar.modify;
}

uint64_t DateComponents.calendar.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    *v2 = v4;
    v2[1] = v3;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (v2[2] && *v2)
    {
      v5 = v2[3];
      v9 = v2[2];
      v10 = v5;
      swift_unknownObjectRetain();
      Calendar.timeZone.setter(&v9);
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    *v2 = v4;
    v2[1] = v3;
    result = v2[2];
    if (result)
    {
      v7 = v4 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = v2[3];
      v9 = v2[2];
      v10 = v8;
      swift_unknownObjectRetain();
      return Calendar.timeZone.setter(&v9);
    }
  }

  return result;
}

uint64_t *(*DateComponents.timeZone.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 16);
  swift_unknownObjectRetain();
  return DateComponents.timeZone.modify;
}

uint64_t *DateComponents.timeZone.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {
    v4 = *a1;
    v5 = v2;
    swift_unknownObjectRetain();
    DateComponents.timeZone.setter(&v4);

    return swift_unknownObjectRelease();
  }

  else
  {
    v4 = *a1;
    v5 = v2;
    return DateComponents.timeZone.setter(&v4);
  }
}

uint64_t *(*DateComponents.era.modify(uint64_t a1))(uint64_t *result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  return DateComponents.era.modify;
}

uint64_t *DateComponents.era.modify(uint64_t *result)
{
  v1 = result[2];
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  return result;
}

uint64_t *(*DateComponents.year.modify(uint64_t a1))(uint64_t *result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  return DateComponents.year.modify;
}

uint64_t *DateComponents.year.modify(uint64_t *result)
{
  v1 = result[2];
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(v1 + 48) = v2;
  *(v1 + 56) = v4;
  return result;
}

uint64_t *(*DateComponents.month.modify(uint64_t a1))(uint64_t *result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
  return DateComponents.month.modify;
}

uint64_t *DateComponents.month.modify(uint64_t *result)
{
  v1 = result[2];
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(v1 + 64) = v2;
  *(v1 + 72) = v4;
  return result;
}

uint64_t *(*DateComponents.day.modify(uint64_t a1))(uint64_t *result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  return DateComponents.day.modify;
}

uint64_t *DateComponents.day.modify(uint64_t *result)
{
  v1 = result[2];
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(v1 + 80) = v2;
  *(v1 + 88) = v4;
  return result;
}

uint64_t *(*DateComponents.hour.modify(uint64_t a1))(uint64_t *result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 120);
  *a1 = *(v1 + 112);
  *(a1 + 8) = v2;
  return DateComponents.hour.modify;
}

uint64_t *DateComponents.hour.modify(uint64_t *result)
{
  v1 = result[2];
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(v1 + 112) = v2;
  *(v1 + 120) = v4;
  return result;
}

uint64_t *(*DateComponents.minute.modify(uint64_t a1))(uint64_t *result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 136);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
  return DateComponents.minute.modify;
}

uint64_t *DateComponents.minute.modify(uint64_t *result)
{
  v1 = result[2];
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(v1 + 128) = v2;
  *(v1 + 136) = v4;
  return result;
}

uint64_t *(*DateComponents.second.modify(uint64_t a1))(uint64_t *result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 152);
  *a1 = *(v1 + 144);
  *(a1 + 8) = v2;
  return DateComponents.second.modify;
}

uint64_t *DateComponents.second.modify(uint64_t *result)
{
  v1 = result[2];
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(v1 + 144) = v2;
  *(v1 + 152) = v4;
  return result;
}

uint64_t *(*DateComponents.nanosecond.modify(uint64_t a1))(uint64_t *result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 168);
  *a1 = *(v1 + 160);
  *(a1 + 8) = v2;
  return DateComponents.nanosecond.modify;
}

uint64_t *DateComponents.nanosecond.modify(uint64_t *result)
{
  v1 = result[2];
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(v1 + 160) = v2;
  *(v1 + 168) = v4;
  return result;
}

uint64_t *(*DateComponents.weekday.modify(uint64_t a1))(uint64_t *result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 184);
  *a1 = *(v1 + 176);
  *(a1 + 8) = v2;
  return DateComponents.weekday.modify;
}

uint64_t *DateComponents.weekday.modify(uint64_t *result)
{
  v1 = result[2];
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(v1 + 176) = v2;
  *(v1 + 184) = v4;
  return result;
}

uint64_t *(*DateComponents.weekdayOrdinal.modify(uint64_t a1))(uint64_t *result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 200);
  *a1 = *(v1 + 192);
  *(a1 + 8) = v2;
  return DateComponents.weekdayOrdinal.modify;
}

uint64_t *DateComponents.weekdayOrdinal.modify(uint64_t *result)
{
  v1 = result[2];
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(v1 + 192) = v2;
  *(v1 + 200) = v4;
  return result;
}

uint64_t *(*DateComponents.quarter.modify(uint64_t a1))(uint64_t *result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 216);
  *a1 = *(v1 + 208);
  *(a1 + 8) = v2;
  return DateComponents.quarter.modify;
}

uint64_t *DateComponents.quarter.modify(uint64_t *result)
{
  v1 = result[2];
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(v1 + 208) = v2;
  *(v1 + 216) = v4;
  return result;
}

uint64_t *(*DateComponents.weekOfMonth.modify(uint64_t a1))(uint64_t *result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 248);
  *a1 = *(v1 + 240);
  *(a1 + 8) = v2;
  return DateComponents.weekOfMonth.modify;
}

uint64_t *DateComponents.weekOfMonth.modify(uint64_t *result)
{
  v1 = result[2];
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(v1 + 240) = v2;
  *(v1 + 248) = v4;
  return result;
}

uint64_t *(*DateComponents.weekOfYear.modify(uint64_t a1))(uint64_t *result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 264);
  *a1 = *(v1 + 256);
  *(a1 + 8) = v2;
  return DateComponents.weekOfYear.modify;
}

uint64_t *DateComponents.weekOfYear.modify(uint64_t *result)
{
  v1 = result[2];
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(v1 + 256) = v2;
  *(v1 + 264) = v4;
  return result;
}

uint64_t *(*DateComponents.dayOfYear.modify(uint64_t a1))(uint64_t *result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 104);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  return DateComponents.dayOfYear.modify;
}

uint64_t *DateComponents.dayOfYear.modify(uint64_t *result)
{
  v1 = result[2];
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(v1 + 96) = v2;
  *(v1 + 104) = v4;
  return result;
}

uint64_t DateComponents.week.setter(uint64_t result, char a2)
{
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  if (a2)
  {
    v3 = result;
  }

  *(v2 + 224) = v3;
  *(v2 + 232) = a2 & 1 | (result == 0x7FFFFFFFFFFFFFFFLL);
  return result;
}

uint64_t *(*DateComponents.week.modify(uint64_t a1))(uint64_t *result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 232);
  *a1 = *(v1 + 224);
  *(a1 + 8) = v2;
  return DateComponents.week.modify;
}

uint64_t *DateComponents.week.modify(uint64_t *result)
{
  v1 = result[2];
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(v1 + 224) = v2;
  *(v1 + 232) = v4;
  return result;
}

uint64_t *(*DateComponents.yearForWeekOfYear.modify(uint64_t a1))(uint64_t *result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 280);
  *a1 = *(v1 + 272);
  *(a1 + 8) = v2;
  return DateComponents.yearForWeekOfYear.modify;
}

uint64_t *DateComponents.yearForWeekOfYear.modify(uint64_t *result)
{
  v1 = result[2];
  v2 = *result;
  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
  }

  if (*result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(result + 8);
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *(v1 + 272) = v2;
  *(v1 + 280) = v4;
  return result;
}

_BYTE *(*DateComponents.isLeapMonth.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 281);
  return DateComponents.isLeapMonth.modify;
}

_BYTE *(*DateComponents.isRepeatedDay.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 282);
  return DateComponents.isRepeatedDay.modify;
}

void DateComponents.date.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (!*v1)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    return;
  }

  v4 = v1[1];
  v3 = v1[2];
  v5 = (v1 + 4);
  v6 = v1[3];
  if (v3)
  {
    ObjectType = swift_getObjectType();
    v8 = *(v4 + 48);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v8(&v30, ObjectType, v4);
    v29 = v30;
    v28[0] = v3;
    v28[1] = v6;
    v9 = specialized static TimeZone.== infix(_:_:)(&v29, v28);
    swift_unknownObjectRelease();
    if ((v9 & 1) == 0)
    {
      *&v29 = v2;
      *(&v29 + 1) = v4;
      *&v30 = v3;
      *(&v30 + 1) = v6;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      Calendar.timeZone.setter(&v30);
      v18 = *(&v29 + 1);
      v19 = swift_getObjectType();
      *&v30 = v2;
      *(&v30 + 1) = v4;
      v31 = v3;
      v32 = v6;
      *(v47 + 11) = *(v5 + 235);
      v20 = v5[13];
      v45 = v5[12];
      v46 = v20;
      v47[0] = v5[14];
      v21 = v5[9];
      v41 = v5[8];
      v42 = v21;
      v22 = v5[11];
      v43 = v5[10];
      v44 = v22;
      v23 = v5[5];
      v37 = v5[4];
      v38 = v23;
      v24 = v5[7];
      v39 = v5[6];
      v40 = v24;
      v25 = v5[1];
      v33 = *v5;
      v34 = v25;
      v26 = v5[3];
      v35 = v5[2];
      v36 = v26;
      v27 = *(v18 + 176);
      swift_unknownObjectRetain();
      v27(&v30, v19, v18);
      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
  }

  v10 = swift_getObjectType();
  *&v30 = v2;
  *(&v30 + 1) = v4;
  v31 = v3;
  v32 = v6;
  *(v47 + 11) = *(v5 + 235);
  v11 = v5[13];
  v45 = v5[12];
  v46 = v11;
  v47[0] = v5[14];
  v12 = v5[9];
  v41 = v5[8];
  v42 = v12;
  v13 = v5[11];
  v43 = v5[10];
  v44 = v13;
  v14 = v5[5];
  v37 = v5[4];
  v38 = v14;
  v15 = v5[7];
  v39 = v5[6];
  v40 = v15;
  v16 = v5[1];
  v33 = *v5;
  v34 = v16;
  v17 = v5[3];
  v35 = v5[2];
  v36 = v17;
  (*(v4 + 176))(&v30, v10, v4);
LABEL_9:
  swift_unknownObjectRelease();
}

uint64_t DateComponents.isValidDate.getter()
{
  memcpy(__dst, v0, 0x11BuLL);
  v1 = __dst[0];
  if (!__dst[0])
  {
    return 0;
  }

  v2 = __dst[1];
  if (__dst[21])
  {
    goto LABEL_3;
  }

  if (__dst[20] > 999999999)
  {
    return 0;
  }

  if ((__dst[20] & 0x8000000000000000) != 0)
  {
LABEL_3:
    ObjectType = swift_getObjectType();
    memcpy(v26, v0, 0x11BuLL);
    v4 = *(v2 + 176);
    swift_unknownObjectRetain();
    v4(__src, v26, ObjectType, v2);
    if ((BYTE8(__src[0]) & 1) == 0)
    {
      v5 = *__src;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  LOBYTE(v24) = 0;
  v6 = v0[7];
  __src[6] = v0[6];
  __src[7] = v6;
  v7 = v0[9];
  __src[8] = v0[8];
  __src[9] = v7;
  v8 = v0[3];
  __src[2] = v0[2];
  __src[3] = v8;
  v9 = v0[5];
  __src[4] = v0[4];
  __src[5] = v9;
  v10 = v0[1];
  __src[0] = *v0;
  __src[1] = v10;
  *&__src[10] = 0;
  BYTE8(__src[10]) = 0;
  *(&__src[16] + 9) = *(v0 + 265);
  *(&__src[17] + 9) = *(v0 + 281);
  *(&__src[14] + 9) = *(v0 + 233);
  *(&__src[15] + 9) = *(v0 + 249);
  *(&__src[10] + 9) = *(v0 + 169);
  *(&__src[11] + 9) = *(v0 + 185);
  *(&__src[12] + 9) = *(v0 + 201);
  *(&__src[13] + 9) = *(v0 + 217);
  v11 = swift_getObjectType();
  memcpy(v21, __src, 0x11BuLL);
  v12 = *(v2 + 176);
  swift_unknownObjectRetain();
  outlined init with copy of DateComponents(__dst, v26);
  outlined init with copy of DateComponents(__src, v26);
  v12(&v22, v21, v11, v2);
  v13 = v0[7];
  v26[6] = v0[6];
  v26[7] = v13;
  v14 = v0[9];
  v26[8] = v0[8];
  v26[9] = v14;
  v15 = v0[3];
  v26[2] = v0[2];
  v26[3] = v15;
  v16 = v0[5];
  v26[4] = v0[4];
  v26[5] = v16;
  v17 = v0[1];
  v26[0] = *v0;
  v26[1] = v17;
  *&v26[10] = 0;
  BYTE8(v26[10]) = 0;
  *(&v26[16] + 9) = *(v0 + 265);
  *(&v26[17] + 9) = *(v0 + 281);
  *(&v26[14] + 9) = *(v0 + 233);
  *(&v26[15] + 9) = *(v0 + 249);
  *(&v26[10] + 9) = *(v0 + 169);
  *(&v26[11] + 9) = *(v0 + 185);
  *(&v26[12] + 9) = *(v0 + 201);
  *(&v26[13] + 9) = *(v0 + 217);
  outlined destroy of DateComponents(v26);
  outlined destroy of DateComponents(__src);
  if (v23)
  {
LABEL_8:
    swift_unknownObjectRelease();
    return 0;
  }

  v5 = v22;
LABEL_11:
  v19 = lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component();
  *&__src[0] = MEMORY[0x1865CB700](14, &type metadata for Calendar.Component, v19);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DB8);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DB9);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DBA);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DBB);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DBC);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DBD);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DBE);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DBF);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DC0);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DC1);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DC2);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DC3);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DC4);
  specialized Set._Variant.insert(_:)(v21, byte_1EEED2DC5);
  v21[0] = v1;
  v21[1] = v2;
  Calendar.ComponentSet.init(_:)(*&__src[0], &v22);
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v20 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v5)
  {
    v20 = v5;
  }

  if (*&static Date.validCalendarRange >= v20)
  {
    v20 = *&static Date.validCalendarRange;
  }

  v24 = v20;
  Calendar._dateComponents(_:from:)(&v22, &v24, v26);
  memcpy(__src, v26, 0x11BuLL);
  outlined destroy of DateComponents(__src);
  swift_unknownObjectRelease();
  if ((__dst[5] & 1) == 0 && ((BYTE8(__src[2]) & 1) != 0 || __dst[4] != *&__src[2]) || (__dst[7] & 1) == 0 && ((BYTE8(__src[3]) & 1) != 0 || __dst[6] != *&__src[3]) || (__dst[27] & 1) == 0 && ((BYTE8(__src[13]) & 1) != 0 || __dst[26] != *&__src[13]) || (__dst[9] & 1) == 0 && ((BYTE8(__src[4]) & 1) != 0 || __dst[8] != *&__src[4]) || (__dst[11] & 1) == 0 && ((BYTE8(__src[5]) & 1) != 0 || __dst[10] != *&__src[5]) || (__dst[15] & 1) == 0 && ((BYTE8(__src[7]) & 1) != 0 || __dst[14] != *&__src[7]) || (__dst[17] & 1) == 0 && ((BYTE8(__src[8]) & 1) != 0 || __dst[16] != *&__src[8]) || (__dst[19] & 1) == 0 && ((BYTE8(__src[9]) & 1) != 0 || __dst[18] != *&__src[9]) || (__dst[23] & 1) == 0 && ((BYTE8(__src[11]) & 1) != 0 || __dst[22] != *&__src[11]) || (__dst[25] & 1) == 0 && ((BYTE8(__src[12]) & 1) != 0 || __dst[24] != *&__src[12]) || (__dst[31] & 1) == 0 && ((BYTE8(__src[15]) & 1) != 0 || __dst[30] != *&__src[15]) || (__dst[33] & 1) == 0 && ((BYTE8(__src[16]) & 1) != 0 || __dst[32] != *&__src[16]) || (__dst[35] & 1) == 0 && ((BYTE8(__src[17]) & 1) != 0 || __dst[34] != *&__src[17]))
  {
    return 0;
  }

  if (__dst[13])
  {
    return 1;
  }

  else
  {
    return (__dst[12] == *&__src[6]) & ~BYTE8(__src[6]);
  }
}