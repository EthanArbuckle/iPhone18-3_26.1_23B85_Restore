uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t specialized static Date.AnchoredRelativeFormatStyle.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v6 = 0;
  if (((*a1 ^ *a2) & 1) == 0 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    v22 = v5;
    v23 = v4;
    v24 = v2;
    v25 = v3;
    v7 = *(a1 + 5);
    v8 = *(a1 + 6);
    v18 = *(a2 + 24);
    v19 = *(a1 + 24);
    v9 = *(a2 + 5);
    v10 = *(a2 + 6);
    v12 = *(a2 + 1);
    v11 = *(a2 + 2);
    v13 = *(a1 + 2);
    *&v21 = *(a1 + 1);
    *(&v21 + 1) = v13;
    *&v20 = v12;
    *(&v20 + 1) = v11;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();

    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();

    v14 = specialized static Locale.== infix(_:_:)(&v21, &v20);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v14 & 1) != 0 && (v20 = v18, v21 = v19, swift_unknownObjectRetain(), swift_unknownObjectRetain(), v15 = specialized static Calendar.== infix(_:_:)(&v21, &v20), swift_unknownObjectRelease(), swift_unknownObjectRelease(), (v15))
    {
      v16 = _sSh2eeoiySbShyxG_ABtFZs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_Tt1g5(v7, v9);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v16 & (v8 == v10);
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return v6;
}

unint64_t lazy protocol witness table accessor for type Date.AnchoredRelativeFormatStyle.CodingKeys and conformance Date.AnchoredRelativeFormatStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle.CodingKeys and conformance Date.AnchoredRelativeFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle.CodingKeys and conformance Date.AnchoredRelativeFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle.CodingKeys and conformance Date.AnchoredRelativeFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle.CodingKeys and conformance Date.AnchoredRelativeFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle.CodingKeys and conformance Date.AnchoredRelativeFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle.CodingKeys and conformance Date.AnchoredRelativeFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle.CodingKeys and conformance Date.AnchoredRelativeFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle.CodingKeys and conformance Date.AnchoredRelativeFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle.CodingKeys and conformance Date.AnchoredRelativeFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle.CodingKeys and conformance Date.AnchoredRelativeFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle.CodingKeys and conformance Date.AnchoredRelativeFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle.CodingKeys and conformance Date.AnchoredRelativeFormatStyle.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef()
{
  result = lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef;
  if (!lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef)
  {
    type metadata accessor for CFDictionaryRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle()
{
  result = lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle;
  if (!lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Date.AnchoredRelativeFormatStyle(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Date.AnchoredRelativeFormatStyle(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle();
  a1[2] = lazy protocol witness table accessor for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle();
  result = lazy protocol witness table accessor for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle();
  a1[3] = result;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Date.AnchoredRelativeFormatStyle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for Date.AnchoredRelativeFormatStyle(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined consume of Set<Date.ComponentsFormatStyle.Field>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void specialized Hasher.combine<A>(_:)(uint64_t a1)
{
  if (*a1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  v3 = *(a1 + 16);
  if (v3 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(a1 + 8);
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(v4, v3);
    String.hash(into:)();
  }

  v5 = *(a1 + 17);
  if (v5 == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  v6 = *(a1 + 18);
  if (v6 == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  if (*(a1 + 19) != 3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();

    if ((*(a1 + 33) & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    Hasher._combine(_:)(0);
    goto LABEL_26;
  }

  Hasher._combine(_:)(0);
  if (*(a1 + 33))
  {
    goto LABEL_18;
  }

LABEL_15:
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  Hasher._combine(_:)(1u);
  if ((v8 & 1) == 0)
  {
    v9 = 10;
    if (v7 < 10)
    {
      v9 = v7;
    }

    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    v11._countAndFlagsBits = 103;
    v11._object = 0xE100000000000000;
    String.init(repeating:count:)(v11, v10);
  }

  String.hash(into:)();

LABEL_26:
  if (*(a1 + 34) == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  v12 = *(a1 + 35);
  if (v12 == 6)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  if (*(a1 + 36) == 9)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    specialized RawRepresentable<>.hash(into:)();
  }

  v13 = *(a1 + 37);
  if (v13 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.HourOption.rawValue.getter(v13);
    String.hash(into:)();
  }

  if (*(a1 + 38) == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  if (*(a1 + 39) == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  v14 = *(a1 + 48);
  if (v14 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v15 = *(a1 + 40);
    Hasher._combine(_:)(1u);
    specialized RawRepresentable<>.hash(into:)(v1, v15, v14 & 1);
  }

  v16 = *(a1 + 49);
  if (v16 == 12)
  {

    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption.rawValue.getter(v16);
    String.hash(into:)();
  }
}

__n128 Date.IntervalFormatStyle.locale.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 Date.IntervalFormatStyle.timeZone.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  v1[1] = *a1;
  return result;
}

__n128 Date.IntervalFormatStyle.calendar.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  v1[2] = *a1;
  return result;
}

uint64_t Date.IntervalFormatStyle.init(date:time:locale:calendar:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  v23 = *a3;
  v24 = *a4;
  v10 = 3;
  v22 = *a5;
  if (*(a1 + 8))
  {
    v11 = 0x2020E0906030100;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 12;
    v16 = 5;
    v17 = -1;
    v18 = 5;
    v19 = 3;
    result = 255;
    if (*(a2 + 8))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v21 = *a1;
  v64 = 3;
  v65 = 0;
  v66 = 50660863;
  v67 = 0;
  v68 = 0;
  v69 = 1;
  v70 = 235472387;
  v71 = 514;
  v72 = 0;
  v73 = 3327;
  v53[0] = v21;
  Date.FormatStyle.DateFieldCollection.collection(date:)(v53, &v27);
  v10 = v27;
  v26[0] = *v28;
  *(v26 + 3) = *&v28[3];
  v12 = v29;
  v17 = v30;
  v16 = v31;
  v18 = v32;
  v19 = v33;
  v6 = v34;
  v13 = v35;
  v11 = v36;
  v14 = v37;
  result = v38;
  v15 = v39;
  if ((v9 & 1) == 0)
  {
LABEL_5:
    LOBYTE(v53[0]) = v10;
    *(v53 + 1) = v26[0];
    HIDWORD(v53[0]) = *(v26 + 3);
    v53[1] = v12;
    v54 = v17;
    v55 = v16;
    v56 = v18;
    v57 = v19;
    v58 = v6;
    v59 = v13;
    v60 = v11;
    v61 = v14;
    v62 = result;
    v63 = v15;
    v25 = v8;
    Date.FormatStyle.DateFieldCollection.collection(time:)(&v25, &v40);
    v10 = v40;
    v26[0] = *v41;
    *(v26 + 3) = *&v41[3];
    v12 = v42;
    v17 = v43;
    v16 = v44;
    v18 = v45;
    v19 = v46;
    v6 = v47;
    v13 = v48;
    v11 = v49;
    v14 = v50;
    result = v51;
    v15 = v52;
  }

LABEL_6:
  *a6 = v23;
  *(a6 + 16) = v22;
  *(a6 + 32) = v24;
  *(a6 + 48) = v10;
  *(a6 + 49) = v26[0];
  *(a6 + 52) = *(v26 + 3);
  *(a6 + 56) = v12;
  *(a6 + 64) = v17;
  *(a6 + 65) = v16;
  *(a6 + 66) = v18;
  *(a6 + 67) = v19;
  *(a6 + 68) = v6;
  *(a6 + 72) = v13;
  *(a6 + 80) = v11;
  *(a6 + 88) = v14;
  *(a6 + 96) = result;
  *(a6 + 97) = v15;
  return result;
}

id Date.IntervalFormatStyle.format(_:)(double *a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 80);
  v47[4] = *(v1 + 64);
  v47[5] = v4;
  v48 = *(v1 + 96);
  v5 = *(v1 + 16);
  v47[0] = *v1;
  v47[1] = v5;
  v6 = *(v1 + 48);
  v47[2] = *(v1 + 32);
  v47[3] = v6;
  if (specialized static ICUDateIntervalFormatter.formatter(for:)(v47))
  {
    v7 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
    v9 = v8;

    if (v9)
    {
      return v7;
    }
  }

  v11 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v12 = [v11 description];

  if (!v12)
  {
    goto LABEL_23;
  }

  isTaggedPointer = _objc_isTaggedPointer(v12);
  v14 = v12;
  v15 = v14;
  if (!isTaggedPointer)
  {
LABEL_10:
    *&v47[0] = 0;
    LOBYTE(v43) = 0;
    if (__CFStringIsCF())
    {
      v17 = *&v47[0];
      if (!*&v47[0])
      {

        goto LABEL_27;
      }

      goto LABEL_25;
    }

    v18 = v15;
    v19 = String.init(_nativeStorage:)();
    if (v20)
    {
      v17 = v19;

      goto LABEL_27;
    }

    *&v47[0] = [v18 length];
    if (*&v47[0])
    {
LABEL_25:
      v17 = String.init(_cocoaString:)();
      goto LABEL_26;
    }

LABEL_23:
    v17 = 0;
    goto LABEL_27;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v14);
  if (TaggedPointerTag)
  {
    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v17 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        goto LABEL_27;
      }

      goto LABEL_10;
    }

    result = [v15 UTF8String];
    if (!result)
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v21 = String.init(utf8String:)(result);
    if (v22)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  LOWORD(v43) = 0;
  _CFIndirectTaggedPointerStringGetContents();
  v21 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (!v23)
  {
    [v15 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v17 = v45;
    goto LABEL_26;
  }

LABEL_20:
  v17 = v21;

LABEL_26:
LABEL_27:
  v46 = v17;
  MEMORY[0x1865CB0E0](2108704, 0xE300000000000000);
  v24 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v25 = [v24 description];

  if (!v25)
  {
    goto LABEL_39;
  }

  v26 = _objc_isTaggedPointer(v25);
  v27 = v25;
  v28 = v27;
  if ((v26 & 1) == 0)
  {
LABEL_33:
    *&v47[0] = 0;
    if (__CFStringIsCF())
    {
      if (*&v47[0])
      {
LABEL_48:
        v39 = String.init(_cocoaString:)();
        v32 = v42;
        goto LABEL_49;
      }
    }

    else
    {
      v34 = v28;
      v35 = String.init(_nativeStorage:)();
      if (v36)
      {
        v32 = v36;
        v37 = v35;

        v33 = v37;
        goto LABEL_50;
      }

      *&v47[0] = [v34 length];
      if (*&v47[0])
      {
        goto LABEL_48;
      }
    }

LABEL_39:
    v33 = 0;
    v32 = 0xE000000000000000;
    goto LABEL_50;
  }

  v29 = _objc_getTaggedPointerTag(v27);
  if (!v29)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v40 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v41)
    {
      v32 = v41;
      v39 = v40;
    }

    else
    {
      [v28 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v39 = v43;
      v32 = v44;
    }

    goto LABEL_49;
  }

  if (v29 != 22)
  {
    if (v29 == 2)
    {
      MEMORY[0x1EEE9AC00](v29);
      v30 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v32 = v31;

      v33 = v30;
LABEL_50:
      MEMORY[0x1865CB0E0](v33, v32);

      return v46;
    }

    goto LABEL_33;
  }

  result = [v28 UTF8String];
  if (!result)
  {
    goto LABEL_52;
  }

  result = String.init(utf8String:)(result);
  if (v38)
  {
    v39 = result;
    v32 = v38;

LABEL_49:
    v33 = v39;
    goto LABEL_50;
  }

LABEL_53:
  __break(1u);
  return result;
}

__n128 Date.IntervalFormatStyle.locale(_:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 80);
  v17 = *(v2 + 64);
  v5 = v17;
  v18 = v6;
  v19 = *(v2 + 96);
  v7 = v19;
  v8 = *(v2 + 16);
  v14[0] = *v2;
  v14[1] = v8;
  v9 = *(v2 + 48);
  v15 = *(v2 + 32);
  v10 = v15;
  v16 = v9;
  *a2 = v14[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  *(a2 + 48) = v9;
  *(a2 + 64) = v5;
  *(a2 + 80) = v6;
  *(a2 + 96) = v7;
  outlined init with copy of Date.IntervalFormatStyle(v14, v13);
  v12 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = v12;
  *a2 = v12;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Date.IntervalFormatStyle.CodingKeys()
{
  v1 = 0x656C61636F6CLL;
  v2 = 0x7261646E656C6163;
  if (*v0 != 2)
  {
    v2 = 0x736C6F626D7973;
  }

  if (*v0)
  {
    v1 = 0x656E6F5A656D6974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Date.IntervalFormatStyle.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Date.IntervalFormatStyle.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Date.IntervalFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.IntervalFormatStyle.CodingKeys and conformance Date.IntervalFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Date.IntervalFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.IntervalFormatStyle.CodingKeys and conformance Date.IntervalFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Date.IntervalFormatStyle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation4DateV19IntervalFormatStyleV10CodingKeys33_4E22CAE5A43F1F72548E846EC95FA3C8LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  v9 = v3[1];
  v12 = v3[2];
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.IntervalFormatStyle.CodingKeys and conformance Date.IntervalFormatStyle.CodingKeys();
  v14 = *v3;
  swift_unknownObjectRetain();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v14;
  v19 = 0;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v15 = v13;
    v19 = 1;
    lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
    swift_unknownObjectRetain();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_unknownObjectRelease();
    v15 = v12;
    v19 = 2;
    lazy protocol witness table accessor for type Calendar and conformance Calendar();
    swift_unknownObjectRetain();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_unknownObjectRelease();
    v10 = v3[4];
    v15 = v3[3];
    v16 = v10;
    v17 = v3[5];
    v18 = *(v3 + 48);
    v19 = 3;
    lazy protocol witness table accessor for type Date.FormatStyle.DateFieldCollection and conformance Date.FormatStyle.DateFieldCollection();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void Date.IntervalFormatStyle.hash(into:)(Swift::Int a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 64);
  v59[0] = *(v1 + 48);
  v59[1] = v6;
  v59[2] = *(v1 + 80);
  v60 = *(v1 + 96);
  ObjectType = swift_getObjectType();
  if ((*(v3 + 48))(ObjectType, v3))
  {
    v8 = 1;
LABEL_5:
    Hasher._combine(_:)(v8);
    goto LABEL_53;
  }

  Hasher._combine(_:)(0);
  (*(v3 + 64))(ObjectType, v3);
  String.hash(into:)();

  (*(v3 + 464))(&v49, ObjectType, v3);
  v57[6] = v55;
  v58[0] = *v56;
  *(v58 + 12) = *&v56[12];
  v57[2] = v51;
  v57[3] = v52;
  v57[4] = v53;
  v57[5] = v54;
  v57[0] = v49;
  v57[1] = v50;
  if (_s10Foundation17LocalePreferencesVSgWOg(v57) == 1)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v9 = v49;
  v10 = *(&v49 + 1);
  v11 = *(&v50 + 1);
  v12 = *(&v51 + 1);
  v39 = v52;
  v40 = v53;
  v41 = v54;
  v42 = v55;
  v43 = *v56;
  v44 = *&v56[16];
  v45 = v56[24];
  v46 = v56[25];
  v47 = v56[26];
  v48 = v56[27];
  Hasher._combine(_:)(1u);
  if (v9 == 2)
  {
    v13 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v13 = v9 & 1;
  }

  Hasher._combine(_:)(v13);
  if (v10)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v10 + 16));
    v14 = *(v10 + 16);
    if (v14)
    {
      v15 = v10 + 40;
      do
      {

        String.hash(into:)();

        v15 += 16;
        --v14;
      }

      while (v14);
    }

    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v11)
    {
LABEL_14:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_17;
    }
  }

  Hasher._combine(_:)(0);
LABEL_17:
  if (v12)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v39)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v39, v16, v17, v18, v19, v20, v21);
    v22 = *(&v39 + 1);
    if (*(&v39 + 1))
    {
      goto LABEL_22;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v22 = *(&v39 + 1);
    if (*(&v39 + 1))
    {
LABEL_22:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v22, v23, v24, v25, v26, v27, v28);
      v29 = *(&v41 + 1);
      if (v40)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }
  }

  Hasher._combine(_:)(0);
  v29 = *(&v41 + 1);
  if (v40)
  {
LABEL_23:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v40 + 1))
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

LABEL_29:
  Hasher._combine(_:)(0);
  if (*(&v40 + 1))
  {
LABEL_24:
    v30 = v46;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v41)
    {
      goto LABEL_25;
    }

LABEL_31:
    Hasher._combine(_:)(0);
    v31 = v30;
    if (v29)
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

LABEL_30:
  v30 = v46;
  Hasher._combine(_:)(0);
  if (!v41)
  {
    goto LABEL_31;
  }

LABEL_25:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
  _CFObject.hash(into:)();
  v31 = v30;
  if (v29)
  {
LABEL_26:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_33;
  }

LABEL_32:
  Hasher._combine(_:)(0);
LABEL_33:
  if (v42)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    v32 = *(&v42 + 1);
    if (*(&v42 + 1))
    {
      goto LABEL_35;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v32 = *(&v42 + 1);
    if (*(&v42 + 1))
    {
LABEL_35:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v32);
      v33 = v43;
      if (v43)
      {
        goto LABEL_36;
      }

LABEL_40:
      v34 = v48;
      Hasher._combine(_:)(0);
      if (v44)
      {
        goto LABEL_37;
      }

      goto LABEL_41;
    }
  }

  Hasher._combine(_:)(0);
  v33 = v43;
  if (!v43)
  {
    goto LABEL_40;
  }

LABEL_36:
  v34 = v48;
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v33);
  if (v44)
  {
LABEL_37:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_42;
  }

LABEL_41:
  Hasher._combine(_:)(0);
LABEL_42:
  if (v45 == 2)
  {
    Hasher._combine(_:)(0);
    if (v31 != 2)
    {
      goto LABEL_44;
    }

LABEL_47:
    Hasher._combine(_:)(0);
    if (v47 != 2)
    {
      goto LABEL_45;
    }

LABEL_48:
    v35 = 0;
    goto LABEL_49;
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v45 & 1);
  if (v31 == 2)
  {
    goto LABEL_47;
  }

LABEL_44:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v31 & 1);
  if (v47 == 2)
  {
    goto LABEL_48;
  }

LABEL_45:
  Hasher._combine(_:)(1u);
  v35 = v47 & 1;
LABEL_49:
  Hasher._combine(_:)(v35);
  if (v34 == 2)
  {
    v36 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v36 = v34 & 1;
  }

  Hasher._combine(_:)(v36);
  outlined destroy of LocalePreferences?(&v49);
LABEL_53:
  v37 = swift_getObjectType();
  (*(v4 + 120))(a1, v37, v4);
  v38 = swift_getObjectType();
  (*(v5 + 120))(a1, v38, v5);
  specialized Hasher.combine<A>(_:)(v59);
}

uint64_t Date.IntervalFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation4DateV19IntervalFormatStyleV10CodingKeys33_4E22CAE5A43F1F72548E846EC95FA3C8LLOGMd);
  v5 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v7 = &v23 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.IntervalFormatStyle.CodingKeys and conformance Date.IntervalFormatStyle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  LOBYTE(v47) = 0;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v55;
  v46 = v54;
  LOBYTE(v47) = 1;
  lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v44 = v9;
  v45 = v54;
  v10 = v55;
  LOBYTE(v47) = 2;
  lazy protocol witness table accessor for type Calendar and conformance Calendar();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v42 = v10;
  v11 = v54;
  v41 = v55;
  v80 = 3;
  lazy protocol witness table accessor for type Date.FormatStyle.DateFieldCollection and conformance Date.FormatStyle.DateFieldCollection();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v43 = a1;
  (*(v8 + 8))(v7, v88);
  HIDWORD(v23) = v81;
  v87[0] = *v82;
  *(v87 + 3) = *&v82[3];
  v88 = v83;
  v39 = BYTE1(v84);
  v40 = v84;
  v37 = BYTE3(v84);
  v38 = BYTE2(v84);
  v36 = DWORD1(v84);
  v35 = *(&v84 + 1);
  v33 = BYTE1(v85);
  v34 = v85;
  v31 = BYTE3(v85);
  v32 = BYTE2(v85);
  v29 = BYTE5(v85);
  v30 = BYTE4(v85);
  v27 = BYTE7(v85);
  v28 = BYTE6(v85);
  v26 = *(&v85 + 1);
  *(&v50 + 1) = *v82;
  v24 = HIBYTE(v86);
  v25 = v86;
  v12 = v45;
  v13 = v46;
  v14 = v44;
  *&v47 = v46;
  *(&v47 + 1) = v44;
  v15 = v41;
  v16 = v42;
  *&v48 = v45;
  *(&v48 + 1) = v42;
  *&v49 = v11;
  *(&v49 + 1) = v41;
  LOBYTE(v50) = v81;
  DWORD1(v50) = *&v82[3];
  *(&v50 + 1) = v83;
  v51 = v84;
  v52 = v85;
  v53 = v86;
  v17 = v48;
  *a2 = v47;
  *(a2 + 16) = v17;
  v18 = v49;
  v19 = v50;
  v20 = v51;
  v21 = v52;
  *(a2 + 96) = v53;
  *(a2 + 64) = v20;
  *(a2 + 80) = v21;
  *(a2 + 32) = v18;
  *(a2 + 48) = v19;
  outlined init with copy of Date.IntervalFormatStyle(&v47, &v54);
  __swift_destroy_boxed_opaque_existential_1(v43);
  v54 = v13;
  v55 = v14;
  v56 = v12;
  v57 = v16;
  v58 = v11;
  v59 = v15;
  v60 = BYTE4(v23);
  *v61 = v87[0];
  *&v61[3] = *(v87 + 3);
  v62 = v88;
  v63 = v40;
  v64 = v39;
  v65 = v38;
  v66 = v37;
  v67 = v36;
  v68 = v35;
  v69 = v34;
  v70 = v33;
  v71 = v32;
  v72 = v31;
  v73 = v30;
  v74 = v29;
  v75 = v28;
  v76 = v27;
  v77 = v26;
  v78 = v25;
  v79 = v24;
  return outlined destroy of Date.IntervalFormatStyle(&v54);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.IntervalFormatStyle()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 64);
  v57[0] = *(v0 + 48);
  v57[1] = v4;
  v57[2] = *(v0 + 80);
  v58 = *(v0 + 96);
  Hasher.init(_seed:)();
  ObjectType = swift_getObjectType();
  if ((*(v1 + 48))(ObjectType, v1))
  {
    v6 = 1;
LABEL_5:
    Hasher._combine(_:)(v6);
    goto LABEL_55;
  }

  Hasher._combine(_:)(0);
  (*(v1 + 64))(ObjectType, v1);
  String.hash(into:)();

  (*(v1 + 464))(&v46, ObjectType, v1);
  v54[6] = v52;
  v55[0] = *v53;
  *(v55 + 12) = *&v53[12];
  v54[2] = v48;
  v54[3] = v49;
  v54[4] = v50;
  v54[5] = v51;
  v54[0] = v46;
  v54[1] = v47;
  if (_s10Foundation17LocalePreferencesVSgWOg(v54) == 1)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v7 = v46;
  v8 = *(&v46 + 1);
  v9 = *(&v47 + 1);
  v10 = *(&v48 + 1);
  v36 = v49;
  v37 = v50;
  v38 = v51;
  v39 = v52;
  v40 = *v53;
  v41 = *&v53[16];
  v42 = v53[24];
  v43 = v53[25];
  v44 = v53[26];
  v11 = v53[27];
  Hasher._combine(_:)(1u);
  if (v7 == 2)
  {
    v12 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v12 = v7 & 1;
  }

  v45 = v11;
  Hasher._combine(_:)(v12);
  if (v8)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v8 + 16));
    v13 = *(v8 + 16);
    if (v13)
    {
      v14 = v8 + 40;
      do
      {

        String.hash(into:)();

        v14 += 16;
        --v13;
      }

      while (v13);
    }

    if (v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v9)
    {
LABEL_14:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_17;
    }
  }

  Hasher._combine(_:)(0);
LABEL_17:
  if (v10)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v36)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v56, v36, v15, v16, v17, v18, v19, v20);
    if (*(&v36 + 1))
    {
      goto LABEL_22;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(&v36 + 1))
    {
LABEL_22:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v56, *(&v36 + 1), v21, v22, v23, v24, v25, v26);
      if (v37)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }
  }

  Hasher._combine(_:)(0);
  if (v37)
  {
LABEL_23:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v37 + 1))
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

LABEL_29:
  Hasher._combine(_:)(0);
  if (*(&v37 + 1))
  {
LABEL_24:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v38)
    {
      goto LABEL_25;
    }

LABEL_31:
    v27 = v42;
    Hasher._combine(_:)(0);
    if (*(&v38 + 1))
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

LABEL_30:
  Hasher._combine(_:)(0);
  if (!v38)
  {
    goto LABEL_31;
  }

LABEL_25:
  v27 = v42;
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
  _CFObject.hash(into:)();
  if (*(&v38 + 1))
  {
LABEL_26:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_33;
  }

LABEL_32:
  Hasher._combine(_:)(0);
LABEL_33:
  v28 = v27;
  if (v39)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(&v39 + 1))
  {
    v29 = v45;
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v56, *(&v39 + 1));
    v30 = v40;
    if (v40)
    {
LABEL_38:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v56, v30);
      goto LABEL_41;
    }
  }

  else
  {
    v29 = v45;
    Hasher._combine(_:)(0);
    v30 = v40;
    if (v40)
    {
      goto LABEL_38;
    }
  }

  Hasher._combine(_:)(0);
LABEL_41:
  if (v41)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v28 == 2)
  {
    Hasher._combine(_:)(0);
    if (v43 != 2)
    {
      goto LABEL_46;
    }

LABEL_49:
    Hasher._combine(_:)(0);
    if (v44 != 2)
    {
      goto LABEL_47;
    }

LABEL_50:
    v31 = 0;
    goto LABEL_51;
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v28 & 1);
  if (v43 == 2)
  {
    goto LABEL_49;
  }

LABEL_46:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v43 & 1);
  if (v44 == 2)
  {
    goto LABEL_50;
  }

LABEL_47:
  Hasher._combine(_:)(1u);
  v31 = v44 & 1;
LABEL_51:
  Hasher._combine(_:)(v31);
  if (v29 == 2)
  {
    v32 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v32 = v29 & 1;
  }

  Hasher._combine(_:)(v32);
  outlined destroy of LocalePreferences?(&v46);
LABEL_55:
  v33 = swift_getObjectType();
  (*(v2 + 120))(v56, v33, v2);
  v34 = swift_getObjectType();
  (*(v3 + 120))(v56, v34, v3);
  specialized Hasher.combine<A>(_:)(v57);
  return Hasher._finalize()();
}

id protocol witness for FormatStyle.format(_:) in conformance Date.IntervalFormatStyle@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  result = Date.IntervalFormatStyle.format(_:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

__n128 protocol witness for FormatStyle.locale(_:) in conformance Date.IntervalFormatStyle@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 80);
  v17 = *(v2 + 64);
  v5 = v17;
  v18 = v6;
  v19 = *(v2 + 96);
  v7 = v19;
  v8 = *(v2 + 16);
  v14[0] = *v2;
  v14[1] = v8;
  v9 = *(v2 + 48);
  v15 = *(v2 + 32);
  v10 = v15;
  v16 = v9;
  *a2 = v14[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  *(a2 + 48) = v9;
  *(a2 + 64) = v5;
  *(a2 + 80) = v6;
  *(a2 + 96) = v7;
  outlined init with copy of Date.IntervalFormatStyle(v14, v13);
  v12 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = v12;
  *a2 = v12;
  return result;
}

uint64_t Date.IntervalFormatStyle.year()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 56) = 0;
  *(a1 + 64) = 3;
  return outlined init with copy of Date.IntervalFormatStyle(v10, v9);
}

uint64_t Date.IntervalFormatStyle.month(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v5 = *(v2 + 80);
  v15 = *(v2 + 64);
  v4 = v15;
  v16 = v5;
  v17 = *(v2 + 96);
  v6 = v17;
  v7 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v7;
  v8 = *(v2 + 48);
  v13 = *(v2 + 32);
  v9 = v13;
  v14 = v8;
  *a2 = v12[0];
  *(a2 + 16) = v7;
  *(a2 + 96) = v6;
  *(a2 + 32) = v9;
  *(a2 + 48) = v8;
  *(a2 + 64) = v4;
  *(a2 + 80) = v5;
  *(a2 + 66) = v3;
  return outlined init with copy of Date.IntervalFormatStyle(v12, v11);
}

uint64_t Date.IntervalFormatStyle.day()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  return outlined init with copy of Date.IntervalFormatStyle(v10, v9);
}

uint64_t Date.IntervalFormatStyle.weekday(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v5 = *(v2 + 80);
  v15 = *(v2 + 64);
  v4 = v15;
  v16 = v5;
  v17 = *(v2 + 96);
  v6 = v17;
  v7 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v7;
  v8 = *(v2 + 48);
  v13 = *(v2 + 32);
  v9 = v13;
  v14 = v8;
  *a2 = v12[0];
  *(a2 + 16) = v7;
  *(a2 + 96) = v6;
  *(a2 + 64) = v4;
  *(a2 + 80) = v5;
  *(a2 + 32) = v9;
  *(a2 + 48) = v8;
  *(a2 + 83) = v3;
  return outlined init with copy of Date.IntervalFormatStyle(v12, v11);
}

uint64_t Date.IntervalFormatStyle.hour(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v5 = *(v2 + 80);
  v15 = *(v2 + 64);
  v4 = v15;
  v16 = v5;
  v17 = *(v2 + 96);
  v6 = v17;
  v7 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v7;
  v8 = *(v2 + 48);
  v13 = *(v2 + 32);
  v9 = v13;
  v14 = v8;
  *a2 = v12[0];
  *(a2 + 16) = v7;
  *(a2 + 96) = v6;
  *(a2 + 64) = v4;
  *(a2 + 80) = v5;
  *(a2 + 32) = v9;
  *(a2 + 48) = v8;
  *(a2 + 85) = v3;
  return outlined init with copy of Date.IntervalFormatStyle(v12, v11);
}

uint64_t Date.IntervalFormatStyle.minute()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 86) = 0;
  return outlined init with copy of Date.IntervalFormatStyle(v10, v9);
}

uint64_t Date.IntervalFormatStyle.second()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 87) = 0;
  return outlined init with copy of Date.IntervalFormatStyle(v10, v9);
}

uint64_t Date.IntervalFormatStyle.timeZone(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v5 = *(v2 + 80);
  v15 = *(v2 + 64);
  v4 = v15;
  v16 = v5;
  v17 = *(v2 + 96);
  v7 = *(v2 + 16);
  v12[0] = *v2;
  v6 = v12[0];
  v12[1] = v7;
  v8 = *(v2 + 48);
  v13 = *(v2 + 32);
  v9 = v13;
  v14 = v8;
  *(a2 + 96) = v17;
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v9;
  *(a2 + 48) = v8;
  *(a2 + 64) = v4;
  *(a2 + 80) = v5;
  *(a2 + 97) = v3;
  return outlined init with copy of Date.IntervalFormatStyle(v12, v11);
}

double static FormatStyle<>.interval.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v3 = lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  type metadata accessor for _CalendarAutoupdating();
  v4 = swift_initStaticObject();
  v5 = lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(&lazy protocol witness table cache variable for type _CalendarAutoupdating and conformance _CalendarAutoupdating, type metadata accessor for _CalendarAutoupdating);
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  type metadata accessor for _TimeZoneAutoupdating();
  v6 = swift_initStaticObject();
  v7 = lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(&lazy protocol witness table cache variable for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating, type metadata accessor for _TimeZoneAutoupdating);
  *a1 = inited;
  *(a1 + 8) = v3;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = 3;
  *(a1 + 56) = 0;
  *(a1 + 64) = 50660863;
  *(a1 + 72) = 0;
  *(a1 + 80) = 256;
  *&result = 235472387;
  *(a1 + 82) = 235472387;
  *(a1 + 86) = 514;
  *(a1 + 88) = 0;
  *(a1 + 96) = 3327;
  return result;
}

id Range<>.formatted()()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v4 = lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  type metadata accessor for _CalendarAutoupdating();
  v5 = swift_initStaticObject();
  v6 = lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(&lazy protocol witness table cache variable for type _CalendarAutoupdating and conformance _CalendarAutoupdating, type metadata accessor for _CalendarAutoupdating);
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  type metadata accessor for _TimeZoneAutoupdating();
  *&v10 = inited;
  *(&v10 + 1) = v4;
  *&v11 = swift_initStaticObject();
  *(&v11 + 1) = lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(&lazy protocol witness table cache variable for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating, type metadata accessor for _TimeZoneAutoupdating);
  *&v12 = v5;
  *(&v12 + 1) = v6;
  LOBYTE(v13) = 3;
  *(&v13 + 1) = 0;
  LODWORD(v14) = 50660863;
  *(&v14 + 1) = 0;
  LOWORD(v15) = 256;
  *(&v15 + 2) = 235472387;
  WORD3(v15) = 514;
  *(&v15 + 1) = 0;
  v16 = 3327;
  v9[0] = v1;
  v9[1] = v2;
  v7 = Date.IntervalFormatStyle.format(_:)(v9);
  v17[3] = v13;
  v17[4] = v14;
  v17[5] = v15;
  v17[0] = v10;
  v18 = v16;
  v17[1] = v11;
  v17[2] = v12;
  outlined destroy of Date.IntervalFormatStyle(v17);
  return v7;
}

id Range<>.formatted(date:time:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  v6 = v2[1];
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v8 = lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  type metadata accessor for _CalendarAutoupdating();
  v9 = swift_initStaticObject();
  v10 = lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(&lazy protocol witness table cache variable for type _CalendarAutoupdating and conformance _CalendarAutoupdating, type metadata accessor for _CalendarAutoupdating);
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  type metadata accessor for _TimeZoneAutoupdating();
  v11 = swift_initStaticObject();
  v12 = lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(&lazy protocol witness table cache variable for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating, type metadata accessor for _TimeZoneAutoupdating);
  v47 = 3;
  v48 = 0;
  v49 = 50660863;
  v50 = 0;
  v51 = 256;
  v52 = 235472387;
  v53 = 514;
  v54 = 0;
  v55 = 3327;
  *&v56[0] = v3;
  Date.FormatStyle.DateFieldCollection.collection(date:)(v56, &v23);
  v38 = v23;
  *v39 = *v24;
  *&v39[3] = *&v24[3];
  v40 = v25;
  v41 = v26;
  v42 = v27;
  v43 = v28;
  v44 = v29;
  v45 = v30;
  v46 = v31;
  *&v56[0] = v4;
  Date.FormatStyle.DateFieldCollection.collection(time:)(v56, &v32);
  *(&v19 + 1) = *v33;
  DWORD1(v19) = *&v33[3];
  *&v16 = inited;
  *(&v16 + 1) = v8;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  *&v18 = v9;
  *(&v18 + 1) = v10;
  LOBYTE(v19) = v32;
  *(&v19 + 1) = v34;
  v20 = v35;
  v21 = v36;
  v22 = v37;
  v15[0] = v5;
  v15[1] = v6;
  v13 = Date.IntervalFormatStyle.format(_:)(v15);
  v56[3] = v19;
  v56[4] = v20;
  v56[5] = v21;
  v56[0] = v16;
  v56[1] = v17;
  v57 = v22;
  v56[2] = v18;
  outlined destroy of Date.IntervalFormatStyle(v56);
  return v13;
}

BOOL specialized static Date.IntervalFormatStyle.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v12 = a1[2];
  v2 = a1[4];
  v3 = a1[5];
  v18[0] = a1[3];
  v18[1] = v2;
  v18[2] = v3;
  v19 = *(a1 + 48);
  v21 = *(a2 + 48);
  v4 = a2[5];
  v20[1] = a2[4];
  v20[2] = v4;
  v5 = a2[2];
  v20[0] = a2[3];
  v6 = *a1;
  v13 = a1[1];
  v14 = v5;
  v15 = a2[1];
  v16 = *a2;
  v17 = v6;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = specialized static Locale.== infix(_:_:)(&v17, &v16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v10 = (v7 & 1) != 0 && (v16 = v15, v17 = v13, swift_unknownObjectRetain(), swift_unknownObjectRetain(), v8 = specialized static TimeZone.== infix(_:_:)(&v17, &v16), swift_unknownObjectRelease(), swift_unknownObjectRelease(), (v8 & 1) != 0) && (v16 = v14, v17 = v12, swift_unknownObjectRetain(), swift_unknownObjectRetain(), v9 = specialized static Calendar.== infix(_:_:)(&v17, &v16), swift_unknownObjectRelease(), swift_unknownObjectRelease(), (v9 & 1) != 0) && specialized static Date.FormatStyle.DateFieldCollection.== infix(_:_:)(v18, v20);
  return v10;
}

unint64_t lazy protocol witness table accessor for type Date.IntervalFormatStyle.CodingKeys and conformance Date.IntervalFormatStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Date.IntervalFormatStyle.CodingKeys and conformance Date.IntervalFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.IntervalFormatStyle.CodingKeys and conformance Date.IntervalFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.IntervalFormatStyle.CodingKeys and conformance Date.IntervalFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.IntervalFormatStyle.CodingKeys and conformance Date.IntervalFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.IntervalFormatStyle.CodingKeys and conformance Date.IntervalFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.IntervalFormatStyle.CodingKeys and conformance Date.IntervalFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.IntervalFormatStyle.CodingKeys and conformance Date.IntervalFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.IntervalFormatStyle.CodingKeys and conformance Date.IntervalFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.IntervalFormatStyle.CodingKeys and conformance Date.IntervalFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.IntervalFormatStyle.CodingKeys and conformance Date.IntervalFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.IntervalFormatStyle.CodingKeys and conformance Date.IntervalFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.IntervalFormatStyle.CodingKeys and conformance Date.IntervalFormatStyle.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.DateFieldCollection and conformance Date.FormatStyle.DateFieldCollection()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.DateFieldCollection and conformance Date.FormatStyle.DateFieldCollection;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.DateFieldCollection and conformance Date.FormatStyle.DateFieldCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.DateFieldCollection and conformance Date.FormatStyle.DateFieldCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.DateFieldCollection and conformance Date.FormatStyle.DateFieldCollection;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.DateFieldCollection and conformance Date.FormatStyle.DateFieldCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.DateFieldCollection and conformance Date.FormatStyle.DateFieldCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.DateFieldCollection and conformance Date.FormatStyle.DateFieldCollection;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.DateFieldCollection and conformance Date.FormatStyle.DateFieldCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.DateFieldCollection and conformance Date.FormatStyle.DateFieldCollection);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Date.IntervalFormatStyle(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle();
  a1[2] = lazy protocol witness table accessor for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle();
  result = lazy protocol witness table accessor for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle();
  a1[3] = result;
  return result;
}

__n128 __swift_memcpy98_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Date.IntervalFormatStyle(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 98))
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

uint64_t storeEnumTagSinglePayload for Date.IntervalFormatStyle(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 98) = 1;
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

    *(result + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized Date.IntervalFormatStyle.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736C6F626D7973 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

Swift::String __swiftcall Date.RelativeFormatStyle.format(_:)(Foundation::Date a1)
{
  v82 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  *(&v76 + 3) = *(v2 + 3);
  HIBYTE(v76) = v2[7];
  v8 = *(v2 + 1);
  v7 = *(v2 + 2);
  v79 = *(v2 + 24);
  v80 = *(v2 + 5);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  LOBYTE(v76) = v4;
  BYTE1(v76) = v5;
  BYTE2(v76) = v6;
  v77 = v8;
  v78 = v7;
  v74 = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
  v75 = v3;
  Date.RelativeFormatStyle._largestNonZeroComponent(_:reference:adjustComponent:)(&v75, &v74, &__tp.tv_sec);
  if (LOBYTE(__tp.tv_sec) != 19)
  {
    tv_sec_low = LOBYTE(__tp.tv_sec);
    tv_nsec = __tp.tv_nsec;
    ObjectType = swift_getObjectType();
    v12 = (*(v7 + 64))(ObjectType, v7);
    v71 = v12;
    v73 = v13;
    v70 = v4;
    if (v5 > 1)
    {
      v15 = 0;
      if (v5 == 2)
      {
        v14 = 1;
        v16 = 1;
      }

      else
      {
        v16 = 1;
        v14 = 2;
      }
    }

    else
    {
      v14 = 0;
      if (v5)
      {
        v16 = 0;
        v15 = 5;
      }

      else
      {
        v15 = 0;
        v16 = 1;
      }
    }

    v72 = v16;
    v17 = dword_1812202C4[v6];
    if (one-time initialization token for cache != -1)
    {
      v12 = swift_once();
    }

    v18 = static ICURelativeDateFormatter.cache;
    v19 = qword_1EA822118;
    v20 = v71;
    v76 = v71;
    v77 = v73;
    LODWORD(v78) = v15;
    v21 = v72;
    BYTE4(v78) = v72;
    *&v79 = __PAIR64__(v17, v14);
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock((v19 + 24));
    partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v19 + 16, &__tp.tv_sec);
    os_unfair_lock_unlock((v19 + 24));
    tv_sec = __tp.tv_sec;
    if (__tp.tv_sec != 1)
    {
      goto LABEL_43;
    }

    type metadata accessor for ICURelativeDateFormatter();
    swift_allocObject();

    LOBYTE(__tp.tv_sec) = v72;
    v23 = v14 | (v17 << 32);
    v24 = v15;
    tv_sec = ICURelativeDateFormatter.init(signature:)(v71, v73, v15 | (v72 << 32));
    os_unfair_lock_lock((v19 + 24));
    if (v18 >= *(*(v19 + 16) + 16))
    {
    }

    else
    {
      *(v19 + 16) = MEMORY[0x1E69E7CC8];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    __tp.tv_sec = *(v19 + 16);
    v26 = __tp.tv_sec;
    *(v19 + 16) = 0x8000000000000000;
    LOBYTE(v75) = v72;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v71, v73, v24 | (v72 << 32), v23);
    v29 = *(v26 + 16);
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      __break(1u);
    }

    else
    {
      if (*(v26 + 24) < v32)
      {
        v33 = v28;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, isUniquelyReferenced_nonNull_native);
        v34 = __tp.tv_sec;
        LOBYTE(v75) = v72;
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v71, v73, v24 | (v72 << 32), v23);
        if ((v33 & 1) != (v35 & 1))
        {
LABEL_57:
          v9 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_58;
        }

        if ((v33 & 1) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_23;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v34 = v26;
        if ((v28 & 1) == 0)
        {
LABEL_41:
          LOBYTE(v75) = v21;
          specialized _NativeDictionary._insert(at:key:value:)(v27, v20, v73, v24 | (v21 << 32), v23, tv_sec, v34);
          goto LABEL_42;
        }

LABEL_23:
        v36 = v27;

        *(*(v34 + 56) + 8 * v36) = tv_sec;

LABEL_42:
        *(v19 + 16) = v34;

        os_unfair_lock_unlock((v19 + 24));

        outlined consume of ICUNumberFormatter??(1);
LABEL_43:
        if (!tv_sec)
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        if (one-time initialization token for componentsToURelativeDateUnit != -1)
        {
          swift_once();
        }

        v55 = static ICURelativeDateFormatter.componentsToURelativeDateUnit;
        if (*(static ICURelativeDateFormatter.componentsToURelativeDateUnit + 16) && (v56 = specialized __RawDictionaryStorage.find<A>(_:)(tv_sec_low), (v57 & 1) != 0))
        {
          v58 = *(*(v55 + 56) + 4 * v56);

          if (v70)
          {
            v59 = specialized _withResizingUCharBuffer(initialSize:_:)(32, tv_sec, tv_nsec, v58);
          }

          else
          {
            v59 = specialized _withResizingUCharBuffer(initialSize:_:)(32, tv_sec, tv_nsec, v58);
          }

          v61 = v59;
          v62 = v60;

          if (v62)
          {
            v10 = v62;
            v9 = v61;
            goto LABEL_58;
          }
        }

        else
        {
        }

        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    v66 = v28;
    v67 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICURelativeDateFormatterC9SignatureVAESgGMd);
    v37 = static _DictionaryStorage.copy(original:)();
    v34 = v37;
    if (*(v26 + 16))
    {
      v65 = v24;
      v38 = (v37 + 64);
      v39 = ((1 << *(v34 + 32)) + 63) >> 6;
      if (v34 != v26 || v38 >= v26 + 64 + 8 * v39)
      {
        memmove(v38, (v26 + 64), 8 * v39);
      }

      v40 = 0;
      *(v34 + 16) = *(v26 + 16);
      v41 = 1 << *(v26 + 32);
      v42 = -1;
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      v43 = v42 & *(v26 + 64);
      v64 = (v41 + 63) >> 6;
      while (v43)
      {
        v44 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
LABEL_38:
        v47 = v44 | (v40 << 6);
        v48 = *(v26 + 48) + 32 * v47;
        v49 = *(v48 + 8);
        v50 = *(v48 + 16);
        v51 = *(*(v26 + 56) + 8 * v47);
        v52 = *(v48 + 20);
        v53 = *(v34 + 48) + 32 * v47;
        v54 = *(v48 + 24);
        *v53 = *v48;
        *(v53 + 8) = v49;
        *(v53 + 16) = v50;
        *(v53 + 20) = v52;
        *(v53 + 24) = v54;
        *(*(v34 + 56) + 8 * v47) = v51;
      }

      v45 = v40;
      v21 = v72;
      v24 = v65;
      while (1)
      {
        v40 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_55;
        }

        if (v40 >= v64)
        {
          break;
        }

        v46 = *(v26 + 64 + 8 * v40);
        ++v45;
        if (v46)
        {
          v44 = __clz(__rbit64(v46));
          v43 = (v46 - 1) & v46;
          goto LABEL_38;
        }
      }
    }

    v27 = v67;
    v20 = v71;
    if ((v66 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_23;
  }

  v9 = 0;
  v10 = 0xE000000000000000;
LABEL_58:
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

__n128 Date.RelativeFormatStyle.locale(_:)@<Q0>(__n128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[1];
  v10[0] = *v2;
  v10[1] = v5;
  v11 = v2[2];
  v6 = v11;
  *a2 = v10[0];
  a2[1] = v5;
  a2[2] = v6;
  outlined init with copy of Date.RelativeFormatStyle(v10, v9);
  v8 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = v8;
  *(a2 + 8) = v8;
  return result;
}

uint64_t Date.RelativeFormatStyle.allowedFields.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

__n128 Date.RelativeFormatStyle.init(presentation:unitsStyle:locale:calendar:capitalizationContext:)@<Q0>(char *a1@<X0>, char *a2@<X1>, __int128 *a3@<X2>, __n128 *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *a1;
  v8 = *a2;
  v33 = *a4;
  v34 = *a3;
  v9 = *a5;
  v36 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 7, 0);
  v10 = v36;
  v11 = byte_1EEED0E60;
  v13 = *(v36 + 16);
  v12 = *(v36 + 24);
  v14 = v12 >> 1;
  v15 = v13 + 1;
  if (v12 >> 1 <= v13)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
    v10 = v36;
    v12 = *(v36 + 24);
    v14 = v12 >> 1;
  }

  *(v10 + 16) = v15;
  *(v10 + v13 + 32) = v11;
  v16 = byte_1EEED0E61;
  v36 = v10;
  v17 = v13 + 2;
  if (v14 <= v15)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 2, 1);
    v10 = v36;
    v12 = *(v36 + 24);
    v14 = v12 >> 1;
  }

  *(v10 + 16) = v17;
  *(v10 + v15 + 32) = v16;
  v18 = byte_1EEED0E62;
  v36 = v10;
  v19 = v13 + 3;
  if (v14 <= v17)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 3, 1);
    v10 = v36;
    v12 = *(v36 + 24);
    v14 = v12 >> 1;
  }

  *(v10 + 16) = v19;
  *(v10 + v17 + 32) = v18;
  v20 = byte_1EEED0E63;
  v36 = v10;
  v21 = v13 + 4;
  if (v14 <= v19)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 4, 1);
    v10 = v36;
    v12 = *(v36 + 24);
    v14 = v12 >> 1;
  }

  *(v10 + 16) = v21;
  *(v10 + v19 + 32) = v20;
  v22 = byte_1EEED0E64;
  v36 = v10;
  v23 = v13 + 5;
  if (v14 <= v21)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 5, 1);
    v10 = v36;
    v12 = *(v36 + 24);
    v14 = v12 >> 1;
  }

  *(v10 + 16) = v23;
  *(v10 + v21 + 32) = v22;
  v24 = byte_1EEED0E65;
  v36 = v10;
  v25 = v13 + 6;
  if (v14 <= v23)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 6, 1);
    v10 = v36;
    v12 = *(v36 + 24);
    v14 = v12 >> 1;
  }

  *(v10 + 16) = v25;
  *(v10 + v23 + 32) = v24;
  v26 = byte_1EEED0E66;
  v36 = v10;
  if (v14 <= v25)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 7, 1);
    v10 = v36;
  }

  *(v10 + 16) = v13 + 7;
  *(v10 + v25 + 32) = v26;
  v27 = lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field();
  v28 = MEMORY[0x1865CB700](v13 + 7, &type metadata for Date.ComponentsFormatStyle.Field, v27);
  v36 = v28;
  v29 = *(v10 + 16);
  if (v29)
  {
    v30 = 32;
    do
    {
      specialized Set._Variant.insert(_:)(&v35, *(v10 + v30++));
      --v29;
    }

    while (v29);

    v31 = v36;
  }

  else
  {
    v31 = v28;
  }

  *a6 = v7;
  *(a6 + 1) = v8;
  *(a6 + 2) = v9;
  result = v33;
  *(a6 + 8) = v34;
  *(a6 + 24) = v33;
  *(a6 + 40) = v31;
  return result;
}

__n128 Date.RelativeFormatStyle.init(allowedFields:presentation:unitsStyle:locale:calendar:capitalizationContext:)@<Q0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, _OWORD *a4@<X3>, __n128 *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a3;
  v8 = *a6;
  *a7 = *a2;
  *(a7 + 1) = v7;
  *(a7 + 2) = v8;
  *(a7 + 8) = *a4;
  result = *a5;
  *(a7 + 24) = *a5;
  *(a7 + 40) = a1;
  return result;
}

Swift::String __swiftcall Date.RelativeFormatStyle._format(_:refDate:)(Foundation::Date _, Foundation::Date refDate)
{
  v5 = *v2;
  v6 = *v3;
  v7 = *v4;
  v8 = v4[1];
  v9 = v4[2];
  *(&v83 + 3) = *(v4 + 3);
  HIBYTE(v83) = v4[7];
  v11 = *(v4 + 1);
  v10 = *(v4 + 2);
  v86 = *(v4 + 24);
  v87 = *(v4 + 5);
  LOBYTE(v83) = v7;
  BYTE1(v83) = v8;
  BYTE2(v83) = v9;
  v84 = v11;
  v85 = v10;
  v81 = v6;
  v82 = v5;
  Date.RelativeFormatStyle._largestNonZeroComponent(_:reference:adjustComponent:)(&v82, &v81, v88);
  if (LOBYTE(v88[0]) != 19)
  {
    v77 = LOBYTE(v88[0]);
    v76 = v88[1];
    ObjectType = swift_getObjectType();
    v15 = (*(v10 + 64))(ObjectType, v10);
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v8 = 0;
        v17 = 1;
        v18 = 1;
      }

      else
      {
        v8 = 0;
        v18 = 1;
        v17 = 2;
      }
    }

    else
    {
      v17 = 0;
      if (v8)
      {
        v18 = 0;
        v8 = 5;
      }

      else
      {
        v18 = 1;
      }
    }

    v79 = v15;
    v78 = v7;
    v19 = dword_1812202C4[v9];
    if (one-time initialization token for cache != -1)
    {
      v40 = v16;
      v15 = swift_once();
      v16 = v40;
    }

    v20 = static ICURelativeDateFormatter.cache;
    v21 = qword_1EA822118;
    v83 = v79;
    v84 = v16;
    v80 = v16;
    LODWORD(v85) = v8;
    BYTE4(v85) = v18;
    *&v86 = __PAIR64__(v19, v17);
    MEMORY[0x1EEE9AC00](v15);
    os_unfair_lock_lock((v21 + 24));
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v21 + 16, v88);
    os_unfair_lock_unlock((v21 + 24));
    v22 = v88[0];
    if (v88[0] != 1)
    {
      goto LABEL_43;
    }

    type metadata accessor for ICURelativeDateFormatter();
    swift_allocObject();

    v75 = v18;
    LOBYTE(v88[0]) = v18;
    v24 = v23;
    v73 = v8;
    v74 = v17 | (v19 << 32);
    v22 = ICURelativeDateFormatter.init(signature:)(v79, v23, v8 | (LOBYTE(v88[0]) << 32));
    os_unfair_lock_lock((v21 + 24));
    v25 = v79;
    if (v20 >= *(*(v21 + 16) + 16))
    {
    }

    else
    {
      *(v21 + 16) = MEMORY[0x1E69E7CC8];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88[0] = *(v21 + 16);
    v27 = v88[0];
    *(v21 + 16) = 0x8000000000000000;
    LOBYTE(v82) = v75;
    v29 = v73;
    v28 = v74;
    v30 = specialized __RawDictionaryStorage.find<A>(_:)(v79, v24, v73 | (v75 << 32), v74);
    v32 = *(v27 + 16);
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      __break(1u);
    }

    else
    {
      if (*(v27 + 24) < v35)
      {
        v36 = v31;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, isUniquelyReferenced_nonNull_native);
        v37 = v88[0];
        LOBYTE(v82) = v75;
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v79, v24, v73 | (v75 << 32), v74);
        if ((v36 & 1) != (v38 & 1))
        {
LABEL_57:
          v12 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_58;
        }

        if ((v36 & 1) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_23;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v37 = v27;
        if ((v31 & 1) == 0)
        {
LABEL_41:
          LOBYTE(v82) = v75;
          specialized _NativeDictionary._insert(at:key:value:)(v30, v25, v24, v29 | (v75 << 32), v28, v22, v37);
          goto LABEL_42;
        }

LABEL_23:
        v39 = v30;

        *(*(v37 + 56) + 8 * v39) = v22;

LABEL_42:
        *(v21 + 16) = v37;

        os_unfair_lock_unlock((v21 + 24));

        outlined consume of ICUNumberFormatter??(1);
LABEL_43:
        if (!v22)
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        if (one-time initialization token for componentsToURelativeDateUnit != -1)
        {
          swift_once();
        }

        v62 = static ICURelativeDateFormatter.componentsToURelativeDateUnit;
        if (*(static ICURelativeDateFormatter.componentsToURelativeDateUnit + 16) && (v63 = specialized __RawDictionaryStorage.find<A>(_:)(v77), (v64 & 1) != 0))
        {
          v65 = *(*(v62 + 56) + 4 * v63);

          if (v78)
          {
            v66 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v22, v76, v65);
          }

          else
          {
            v66 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v22, v76, v65);
          }

          v68 = v66;
          v69 = v67;

          if (v69)
          {
            v13 = v69;
            v12 = v68;
            goto LABEL_58;
          }
        }

        else
        {
        }

        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    v71 = v31;
    v72 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICURelativeDateFormatterC9SignatureVAESgGMd);
    v41 = static _DictionaryStorage.copy(original:)();
    v37 = v41;
    if (*(v27 + 16))
    {
      v42 = (v41 + 64);
      v43 = v27 + 64;
      v44 = ((1 << *(v37 + 32)) + 63) >> 6;
      if (v37 != v27 || v42 >= v43 + 8 * v44)
      {
        memmove(v42, (v27 + 64), 8 * v44);
      }

      v45 = 0;
      *(v37 + 16) = *(v27 + 16);
      v46 = 1 << *(v27 + 32);
      v47 = *(v27 + 64);
      v48 = -1;
      if (v46 < 64)
      {
        v48 = ~(-1 << v46);
      }

      v49 = v48 & v47;
      v50 = (v46 + 63) >> 6;
      if ((v48 & v47) != 0)
      {
        do
        {
          v51 = __clz(__rbit64(v49));
          v49 &= v49 - 1;
LABEL_38:
          v54 = v51 | (v45 << 6);
          v55 = *(v27 + 48) + 32 * v54;
          v56 = *(v55 + 8);
          v57 = *(v55 + 16);
          v58 = *(*(v27 + 56) + 8 * v54);
          v59 = *(v55 + 20);
          v60 = *(v37 + 48) + 32 * v54;
          v61 = *(v55 + 24);
          *v60 = *v55;
          *(v60 + 8) = v56;
          *(v60 + 16) = v57;
          *(v60 + 20) = v59;
          *(v60 + 24) = v61;
          *(*(v37 + 56) + 8 * v54) = v58;
        }

        while (v49);
      }

      v52 = v45;
      v25 = v79;
      v24 = v80;
      while (1)
      {
        v45 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          goto LABEL_55;
        }

        if (v45 >= v50)
        {
          break;
        }

        v53 = *(v43 + 8 * v45);
        ++v52;
        if (v53)
        {
          v51 = __clz(__rbit64(v53));
          v49 = (v53 - 1) & v53;
          goto LABEL_38;
        }
      }
    }

    v30 = v72;
    v29 = v73;
    v28 = v74;
    if ((v71 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_23;
  }

  v12 = 0;
  v13 = 0xE000000000000000;
LABEL_58:
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t Date.RelativeFormatStyle._largestNonZeroComponent(_:reference:adjustComponent:)@<X0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *a2;
  v70 = *v3;
  v13 = *(v3 + 3);
  v71 = *(v3 + 2);
  v14 = *(v3 + 4);
  v15 = *(v3 + 5);
  *v68 = *v3;
  v68[2] = *(v3 + 2);
  *&v68[3] = v13;
  v68[4] = v14;
  v68[5] = v15;
  v16 = Date.RelativeFormatStyle.sortedAllowedComponents.getter();
  v17 = *(v16 + 16);
  if (!v17)
  {

    *a3 = xmmword_18121FA20;
    return result;
  }

  v62 = *(v16 + v17 + 31);

  (*(v8 + 104))(v10, *MEMORY[0x1E69E7038], v7);
  v18 = specialized BinaryFloatingPoint.rounded<A>(increment:rule:)(v10, 1.0, v12 - v11);
  (*(v8 + 8))(v10, v7);
  *v68 = v70;
  v68[2] = v71;
  *&v68[3] = v13;
  v68[4] = v14;
  v68[5] = v15;
  v19 = Date.RelativeFormatStyle.sortedAllowedComponents.getter();
  v20 = *(v19 + 16);
  v21 = lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component();
  v22 = MEMORY[0x1865CB700](v20, &type metadata for Calendar.Component, v21);
  *&v67[0] = v22;
  v23 = *(v19 + 16);
  if (v23)
  {
    v24 = 32;
    do
    {
      specialized Set._Variant.insert(_:)(v64, *(v19 + v24++));
      --v23;
    }

    while (v23);

    v25 = *&v67[0];
  }

  else
  {
    v25 = v22;
  }

  v61 = a3;
  v27 = v11 + v18;
  swift_unknownObjectRetain();

  Calendar.ComponentSet.init(_:)(v28, v68);
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v29 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v27)
  {
    v30 = v27;
  }

  else
  {
    v30 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v30)
  {
    v30 = *&static Date.validCalendarRange;
  }

  v67[0] = v30;
  if (*(&static Date.validCalendarRange + 1) >= v11)
  {
    v29 = v11;
  }

  if (*&static Date.validCalendarRange >= v29)
  {
    v31 = *&static Date.validCalendarRange;
  }

  else
  {
    v31 = v29;
  }

  ObjectType = swift_getObjectType();
  *v64 = v31;
  v33 = *(v14 + 208);
  v33(v69, v68, v67, v64, ObjectType, v14);
  if (specialized Set.contains(_:)(0xEu, v25))
  {
    *v69 = v13;
    *(&v69[0] + 1) = v14;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (*&v69[1])
    {
      if (v13 != 0.0)
      {
        *v68 = v69[1];
        swift_unknownObjectRetain();
        Calendar.timeZone.setter(v68);
      }
    }
  }

  memcpy(v68, v69, 0x11BuLL);
  v34 = DateComponents.nonZeroComponentsAndValue.getter();
  if (*(v34 + 2))
  {
    v35 = v34[32];
    v60 = *(v34 + 5);
  }

  else
  {
    v60 = 0.0;
    v35 = v62;
  }

  if ((v35 - 4) <= 2)
  {
    v65 = v11;
    v66 = v27;
    *v64 = v13;
    v64[1] = v14;
    v63 = v35;
    static Date.RelativeFormatStyle._roundedLargestComponentValue(refDate:for:calendar:allowedComponents:largestAllowedComponent:)(&v66, &v65, v64, v25, &v63, v36, v37, v67);
    outlined destroy of DateComponents(v68);

    result = swift_unknownObjectRelease();
    v38 = v60;
    if (LOBYTE(v67[0]) != 19)
    {
      v38 = v67[1];
      LOBYTE(v35) = LOBYTE(v67[0]);
    }

    goto LABEL_62;
  }

  swift_unknownObjectRelease();
  v39 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v27)
  {
    v40 = v27;
  }

  else
  {
    v40 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v40)
  {
    v40 = *&static Date.validCalendarRange;
  }

  v62 = v35;
  LOBYTE(v66) = v35;
  if (*(&static Date.validCalendarRange + 1) >= v40)
  {
    v39 = v40;
  }

  if (*&static Date.validCalendarRange >= v39)
  {
    v39 = *&static Date.validCalendarRange;
  }

  *v64 = v39;
  (*(v14 + 160))(v67, &v66, v64, ObjectType, v14);
  if (LOBYTE(v67[2]))
  {
    outlined destroy of DateComponents(v68);
LABEL_64:

    v51 = v61;
    LOBYTE(v35) = v62;
    v38 = v60;
    goto LABEL_65;
  }

  v41 = v67[0];
  if (v27 >= v11)
  {
    v46 = v67[0] + v67[1] + -1.0;

    Calendar.ComponentSet.init(_:)(v47, v64);
    v43 = *(&static Date.validCalendarRange + 1);
    v44 = *&static Date.validCalendarRange;
    if (*(&static Date.validCalendarRange + 1) >= v46)
    {
      v45 = v46;
    }

    else
    {
      v45 = *(&static Date.validCalendarRange + 1);
    }
  }

  else
  {

    Calendar.ComponentSet.init(_:)(v42, v64);
    v43 = *(&static Date.validCalendarRange + 1);
    v44 = *&static Date.validCalendarRange;
    if (*(&static Date.validCalendarRange + 1) >= v41)
    {
      v45 = v41;
    }

    else
    {
      v45 = *(&static Date.validCalendarRange + 1);
    }
  }

  if (v44 >= v45)
  {
    v45 = v44;
  }

  if (v43 >= v11)
  {
    v43 = v11;
  }

  if (v44 >= v43)
  {
    v43 = v44;
  }

  v65 = v43;
  v66 = v45;
  v33(v67, v64, &v66, &v65, ObjectType, v14);
  v48 = specialized Set.contains(_:)(0xEu, v25);

  if (v48)
  {
    v67[0] = v13;
    *&v67[1] = v14;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (*&v67[2] && v13 != 0.0)
    {
      *v64 = v67[2];
      *&v64[1] = v67[3];
      swift_unknownObjectRetain();
      Calendar.timeZone.setter(v64);
      v13 = v67[0];
    }
  }

  else
  {
    v13 = v67[0];
  }

  v59 = LOBYTE(v67[5]);
  v58 = v67[6];
  v56 = LOBYTE(v67[9]);
  v57 = LOBYTE(v67[7]);
  v54 = v67[10];
  v55 = v67[8];
  v53 = LOBYTE(v67[11]);
  *&v52[1] = v67[12];
  v67[0] = v13;
  memcpy(v64, v67, 0x11BuLL);
  v49 = DateComponents.nonZeroComponentsAndValue.getter();
  if (!*(v49 + 2))
  {
    outlined destroy of DateComponents(v68);
    outlined destroy of DateComponents(v67);
    goto LABEL_64;
  }

  v50 = v49[32];
  v38 = *(v49 + 5);
  outlined destroy of DateComponents(v68);
  outlined destroy of DateComponents(v67);
  LOBYTE(v35) = v50;

LABEL_62:
  v51 = v61;
LABEL_65:
  *v51 = v35;
  v51[1] = v38;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Date.RelativeFormatStyle.UnitsStyle.Option@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Date.RelativeFormatStyle.UnitsStyle.Option.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Date.RelativeFormatStyle.UnitsStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.RelativeFormatStyle.UnitsStyle.CodingKeys and conformance Date.RelativeFormatStyle.UnitsStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Date.RelativeFormatStyle.UnitsStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.RelativeFormatStyle.UnitsStyle.CodingKeys and conformance Date.RelativeFormatStyle.UnitsStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Date.RelativeFormatStyle.UnitsStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation4DateV19RelativeFormatStyleV05UnitsH0V10CodingKeys33_32D8BDF3C0EBC9A73BD9D01B0534BC55LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.RelativeFormatStyle.UnitsStyle.CodingKeys and conformance Date.RelativeFormatStyle.UnitsStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  lazy protocol witness table accessor for type Date.RelativeFormatStyle.UnitsStyle.Option and conformance Date.RelativeFormatStyle.UnitsStyle.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

Swift::Int Date.RelativeFormatStyle.UnitsStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

uint64_t Date.RelativeFormatStyle.UnitsStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation4DateV19RelativeFormatStyleV05UnitsH0V10CodingKeys33_32D8BDF3C0EBC9A73BD9D01B0534BC55LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.RelativeFormatStyle.UnitsStyle.CodingKeys and conformance Date.RelativeFormatStyle.UnitsStyle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Date.RelativeFormatStyle.UnitsStyle.Option and conformance Date.RelativeFormatStyle.UnitsStyle.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Date.RelativeFormatStyle.UnitsStyle.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F6974706FLL && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Date.RelativeFormatStyle.Presentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.RelativeFormatStyle.Presentation.CodingKeys and conformance Date.RelativeFormatStyle.Presentation.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Date.RelativeFormatStyle.Presentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.RelativeFormatStyle.Presentation.CodingKeys and conformance Date.RelativeFormatStyle.Presentation.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Date.RelativeFormatStyle.Presentation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation4DateV19RelativeFormatStyleV12PresentationV10CodingKeys33_32D8BDF3C0EBC9A73BD9D01B0534BC55LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.RelativeFormatStyle.Presentation.CodingKeys and conformance Date.RelativeFormatStyle.Presentation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  lazy protocol witness table accessor for type Date.RelativeFormatStyle.Presentation.Option and conformance Date.RelativeFormatStyle.Presentation.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

Swift::Int Date.RelativeFormatStyle.Presentation.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

uint64_t Date.RelativeFormatStyle.Presentation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation4DateV19RelativeFormatStyleV12PresentationV10CodingKeys33_32D8BDF3C0EBC9A73BD9D01B0534BC55LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.RelativeFormatStyle.Presentation.CodingKeys and conformance Date.RelativeFormatStyle.Presentation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Date.RelativeFormatStyle.Presentation.Option and conformance Date.RelativeFormatStyle.Presentation.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 Date.RelativeFormatStyle.locale.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

__n128 Date.RelativeFormatStyle.calendar.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  *(v1 + 24) = *a1;
  return result;
}

uint64_t (*Date.RelativeFormatStyle.allowedFields.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 40);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return Date.AnchoredRelativeFormatStyle.allowedFields.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Date.RelativeFormatStyle.CodingKeys()
{
  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Date.RelativeFormatStyle.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Date.RelativeFormatStyle.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Date.RelativeFormatStyle.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006E6F6974;
  v4 = 0x61746E6573657270;
  v5 = 0xE600000000000000;
  v6 = 0x656C61636F6CLL;
  v7 = 0xE800000000000000;
  v8 = 0x7261646E656C6163;
  if (v2 != 4)
  {
    v8 = 0x466465776F6C6C61;
    v7 = 0xED000073646C6569;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA0000000000656CLL;
  v10 = 0x7974537374696E75;
  if (v2 != 1)
  {
    v10 = 0xD000000000000015;
    v9 = 0x800000018147CDF0;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Date.RelativeFormatStyle.CodingKeys()
{
  v1 = *v0;
  v2 = 0x61746E6573657270;
  v3 = 0x656C61636F6CLL;
  v4 = 0x7261646E656C6163;
  if (v1 != 4)
  {
    v4 = 0x466465776F6C6C61;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7974537374696E75;
  if (v1 != 1)
  {
    v5 = 0xD000000000000015;
  }

  if (*v0)
  {
    v2 = v5;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance Date.RelativeFormatStyle.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized Date.RelativeFormatStyle.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Date.RelativeFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.RelativeFormatStyle.CodingKeys and conformance Date.RelativeFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Date.RelativeFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.RelativeFormatStyle.CodingKeys and conformance Date.RelativeFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Date.RelativeFormatStyle.sortedAllowedComponents.getter()
{
  v1 = 0;
  v2 = *(v0 + 40);
  v3 = v2 + 56;
  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = *(&outlined read-only object #0 of one-time initialization function for sortedAllowedComponents + v1 + 32);
    if (v7 - 1) <= 0xA && ((0x63Fu >> (v7 - 1)))
    {
      if (*(v2 + 16))
      {
        v8 = qword_1812202D8[(v7 - 1)];
        Hasher.init(_seed:)();
        MEMORY[0x1865CD060](v8);
        v9 = Hasher._finalize()();
        v10 = -1 << *(v2 + 32);
        v11 = v9 & ~v10;
        if ((*(v3 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
        {
          v12 = ~v10;
          while (v8 != *(*(v2 + 48) + v11))
          {
            v11 = (v11 + 1) & v12;
            if (((*(v3 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1);
          }

          v6 = *(v4 + 16);
          v5 = *(v4 + 24);
          if (v6 >= v5 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
          }

          *(v4 + 16) = v6 + 1;
          *(v4 + v6 + 32) = v7;
        }
      }
    }

LABEL_5:
    ++v1;
  }

  while (v1 != 7);
  return v4;
}

char *DateComponents.nonZeroComponentsAndValue.getter()
{
  v1 = 0;
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v39 = *(v0 + 48);
  v38 = *(v0 + 56);
  v37 = *(v0 + 64);
  v36 = *(v0 + 72);
  v35 = *(v0 + 80);
  v34 = *(v0 + 88);
  v33 = *(v0 + 96);
  v32 = *(v0 + 104);
  v31 = *(v0 + 112);
  v30 = *(v0 + 120);
  v29 = *(v0 + 128);
  v28 = *(v0 + 136);
  v27 = *(v0 + 144);
  v26 = *(v0 + 152);
  v25 = *(v0 + 160);
  v24 = *(v0 + 168);
  v23 = *(v0 + 176);
  v22 = *(v0 + 184);
  v21 = *(v0 + 192);
  v20 = *(v0 + 200);
  v19 = *(v0 + 208);
  v18 = *(v0 + 216);
  v17 = *(v0 + 240);
  v16 = *(v0 + 248);
  v15 = *(v0 + 256);
  v14 = *(v0 + 264);
  v13 = *(v0 + 272);
  v4 = *(v0 + 280);
  v5 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v7 = *(&outlined read-only object #0 of one-time initialization function for sortedAllowedComponents + v1 + 32);
    v8 = v2;
    v9 = v3;
    switch(v7)
    {
      case 1:
        v8 = v39;
        if ((v38 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_3;
      case 2:
        v8 = v37;
        if ((v36 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_3;
      case 3:
        v8 = v35;
        if ((v34 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_3;
      case 4:
        v8 = v31;
        if ((v30 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_3;
      case 5:
        v8 = v29;
        if ((v28 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_3;
      case 6:
        v8 = v27;
        if ((v26 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_3;
      case 7:
        v8 = v23;
        if ((v22 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_3;
      case 8:
        v8 = v21;
        if ((v20 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_3;
      case 9:
        v8 = v19;
        if ((v18 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_3;
      case 10:
        v8 = v17;
        v9 = v16;
        goto LABEL_30;
      case 11:
        v8 = v15;
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_31;
      case 12:
        v8 = v13;
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_31;
      case 13:
        v8 = v25;
        if (v24)
        {
          goto LABEL_3;
        }

        goto LABEL_31;
      case 14:
      case 15:
      case 16:
      case 17:
        goto LABEL_3;
      case 18:
        v8 = v33;
        if (v32)
        {
          goto LABEL_3;
        }

        goto LABEL_31;
      default:
LABEL_30:
        if ((v9 & 1) == 0)
        {
LABEL_31:
          if (v8)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
            }

            v11 = *(v5 + 2);
            v10 = *(v5 + 3);
            if (v11 >= v10 >> 1)
            {
              v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v5);
            }

            *(v5 + 2) = v11 + 1;
            v6 = &v5[16 * v11];
            v6[32] = v7;
            *(v6 + 5) = v8;
          }
        }

LABEL_3:
        if (++v1 != 7)
        {
          continue;
        }

        return v5;
    }
  }
}

unint64_t static Date.RelativeFormatStyle._roundedLargestComponentValue(refDate:for:calendar:allowedComponents:largestAllowedComponent:)@<X0>(unint64_t result@<X0>, double *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = 0;
  v14 = *result;
  v15 = *a2;
  v16 = MEMORY[0x1E69E7CC0];
  v110 = *a3;
  v116 = a3[1];
  v17 = 7;
  v18 = *a5;
  v19 = 1599;
  v20 = -63;
  v21 = -61;
  v22 = -57;
  v23 = 451;
  v24 = -49;
  v25 = -33;
LABEL_2:
  v26 = 0;
  v27 = (v13 - 7);
  if (v13 > 7)
  {
    v17 = v13;
  }

  v28 = byte_1EEECE5F0;
  while (v13 != v17)
  {
    v12 = v28[v13];
    v29 = v12 - 1;
    if ((v12 - 1) > 0xA)
    {
      goto LABEL_328;
    }

    v9 = 0x63Fu >> v29;
    if (((0x63Fu >> v29) & 1) == 0)
    {
      goto LABEL_328;
    }

    if (v18 <= 4)
    {
      if (v18 <= 2)
      {
        if (v18 != 2)
        {
          if (v18 != 1)
          {
            goto LABEL_330;
          }

LABEL_28:
          result = swift_isUniquelyReferenced_nonNull_native();
          *&v144 = v16;
          if ((result & 1) == 0)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1);
            v16 = v144;
          }

          v10 = *(v16 + 16);
          v30 = *(v16 + 24);
          v11 = *&v10 + 1;
          if (*&v10 >= v30 >> 1)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), *&v10 + 1, 1);
            v16 = v144;
          }

          v31 = (v13 - 6);
          v13 = v13 - v26 + 1;
          *(v16 + 16) = v11;
          *(v16 + *&v10 + 32) = v12;
          v32 = v31 == v26;
          v17 = 7;
          v20 = -63;
          v21 = -61;
          v22 = -57;
          v24 = -49;
          v25 = -33;
          if (v32)
          {
            goto LABEL_36;
          }

          goto LABEL_2;
        }

        v8 = 0x1C1u >> v29;
        if ((v8 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else if (v18 == 3)
      {
        v8 = 0x7C3u >> v29;
        if ((v8 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v8 = 0x7C7u >> v29;
        if ((v8 & 1) == 0)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      LOBYTE(v9) = v18 - 10;
      if ((v18 - 10) < 2)
      {
        v8 = 0x1C3u >> v29;
        if ((v8 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else if (v18 == 5)
      {
        v8 = 0x7CFu >> v29;
        if ((v8 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v18 != 6)
        {
          goto LABEL_330;
        }

        v8 = 0x7DFu >> v29;
        if ((v8 & 1) == 0)
        {
          goto LABEL_28;
        }
      }
    }

    --v17;
    ++v28;
    v26 = (v26 - 1);
    if (v27 == v26)
    {
      v11 = *(v16 + 16);
LABEL_36:
      v33 = lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component();
      v34 = MEMORY[0x1865CB700](v11, &type metadata for Calendar.Component, v33);
      *&v144 = v34;
      v35 = *(v16 + 16);
      if (v35)
      {
        v36 = 32;
        v23 = __dst;
        v37 = v110;
        v38 = v116;
        do
        {
          specialized Set._Variant.insert(_:)(__dst, *(v16 + v36++));
          --v35;
        }

        while (v35);

        v39 = v144;
      }

      else
      {
        v39 = v34;

        v23 = __dst;
        v37 = v110;
        v38 = v116;
      }

      v40 = specialized Set.union<A>(_:)(&outlined read-only object #0 of static Date.RelativeFormatStyle._roundedLargestComponentValue(refDate:for:calendar:allowedComponents:largestAllowedComponent:), v39);

      Calendar.ComponentSet.init(_:)(v41, __dst);
      v26 = v191;
      if (one-time initialization token for validCalendarRange != -1)
      {
        swift_once();
      }

      v42 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v14)
      {
        v43 = v14;
      }

      else
      {
        v43 = *(&static Date.validCalendarRange + 1);
      }

      if (*&static Date.validCalendarRange >= v43)
      {
        v43 = *&static Date.validCalendarRange;
      }

      *__src = v43;
      if (*(&static Date.validCalendarRange + 1) >= v15)
      {
        v42 = v15;
      }

      if (*&static Date.validCalendarRange >= v42)
      {
        v44 = *&static Date.validCalendarRange;
      }

      else
      {
        v44 = v42;
      }

      *v128 = v44;
      v11 = &v144;
      ObjectType = swift_getObjectType();
      v94 = *(v38 + 208);
      (v94)(&v144, __dst, __src, v128);
      v45 = specialized Set.contains(_:)(0xEu, v40);

      if (v45)
      {
        *&v144 = v37;
        *(&v144 + 1) = v38;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        if (v145)
        {
          if (v37)
          {
            __dst[0] = v145;
            swift_unknownObjectRetain();
            Calendar.timeZone.setter(__dst);
          }
        }
      }

      v206 = v144;
      v207 = v145;
      v118 = v146;
      *&v10 = v147;
      v205[0] = *v148;
      *(v205 + 3) = *&v148[3];
      v12 = v149;
      v13 = v150;
      *(v204 + 3) = *&v151[3];
      v204[0] = *v151;
      v19 = v152;
      v203[0] = *v154;
      *(v203 + 3) = *&v154[3];
      v202[0] = *v157;
      *(v202 + 3) = *&v157[3];
      v201[0] = *v160;
      *(v201 + 3) = *&v160[3];
      result = v161;
      *(v200 + 3) = *&v163[3];
      v200[0] = *v163;
      *(v199 + 3) = *&v166[3];
      v199[0] = *v166;
      v125 = v167;
      v46 = v168;
      *(v197 + 3) = *&v169[3];
      v197[0] = *v169;
      v16 = v170;
      *(v196 + 3) = *&v172[3];
      v196[0] = *v172;
      *(v195 + 3) = *&v175[3];
      v195[0] = *v175;
      *(v194 + 3) = *&v178[3];
      v194[0] = *v178;
      v47 = v179;
      v115 = v180;
      v124 = v182;
      *(v193 + 15) = *&v181[15];
      v193[0] = *v181;
      v120 = v183;
      *(v192 + 3) = *&v184[3];
      v192[0] = *v184;
      v123 = v185;
      v119 = v186;
      *(v191 + 3) = *&v187[3];
      v191[0] = *v187;
      v122 = v188;
      v121 = v190;
      v198 = v168;
      v117 = v189;
      if (!v168)
      {
        if (v171)
        {
          goto LABEL_332;
        }

        v48 = v170;
        if (v170 < 0)
        {
          v48 = -v170;
          if (__OFSUB__(0, v170))
          {
            __break(1u);
            goto LABEL_327;
          }
        }

        if (v48 >= 500000000)
        {
          v49 = (v170 > 0) | (v170 >> 63);
          v50 = v167 + v49;
          if (__OFADD__(v167, v49))
          {
LABEL_322:
            __break(1u);
LABEL_323:
            __break(1u);
            goto LABEL_324;
          }

          v46 = v50 == 0x7FFFFFFFFFFFFFFFLL;
          if (v50 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v50 = 0;
          }

          v125 = v50;
          v198 = v46;
        }
      }

      *(&__dst[16] + 9) = *v187;
      *(&__dst[2] + 9) = *v148;
      HIDWORD(__dst[2]) = *&v148[3];
      *(&__dst[3] + 9) = *v151;
      HIDWORD(__dst[3]) = *&v151[3];
      HIDWORD(__dst[4]) = *&v154[3];
      *(&__dst[4] + 9) = *v154;
      HIDWORD(__dst[5]) = *&v157[3];
      *(&__dst[5] + 9) = *v157;
      HIDWORD(__dst[6]) = *&v160[3];
      *(&__dst[6] + 9) = *v160;
      HIDWORD(__dst[7]) = *&v163[3];
      *(&__dst[7] + 9) = *v163;
      HIDWORD(__dst[8]) = *&v166[3];
      *(&__dst[8] + 9) = *v166;
      HIDWORD(__dst[9]) = *&v169[3];
      *(&__dst[9] + 9) = *v169;
      HIDWORD(__dst[10]) = *&v172[3];
      *(&__dst[10] + 9) = *v172;
      HIDWORD(__dst[11]) = *&v175[3];
      *(&__dst[11] + 9) = *v175;
      HIDWORD(__dst[12]) = *&v178[3];
      *(&__dst[12] + 9) = *v178;
      HIDWORD(__dst[15]) = *&v184[3];
      *(&__dst[15] + 9) = *v184;
      HIDWORD(__dst[16]) = *&v187[3];
      v138 = v46;
      BYTE8(__dst[9]) = v46;
      *(&__dst[13] + 9) = *v181;
      *(&__dst[14] + 1) = *&v181[15];
      *(&__dst[17] + 9) = v190;
      __dst[0] = v144;
      __dst[1] = v145;
      v143 = v150;
      v142 = v153;
      v141 = v156;
      v140 = v162;
      v139 = v165;
      v137 = v174;
      v136 = v177;
      v51 = v180;
      v135 = v180;
      v134 = v183;
      v133 = v186;
      *&__dst[2] = v146;
      BYTE8(__dst[2]) = v147;
      *&__dst[3] = v149;
      BYTE8(__dst[3]) = v150;
      *&__dst[4] = v152;
      v102 = v156;
      v103 = v153;
      BYTE8(__dst[4]) = v153;
      v107 = v161;
      v108 = v155;
      *&__dst[5] = v155;
      BYTE8(__dst[5]) = v156;
      v101 = v158;
      *&__dst[6] = v158;
      v99 = v162;
      v100 = v159;
      BYTE8(__dst[6]) = v159;
      *&__dst[7] = v161;
      BYTE8(__dst[7]) = v162;
      v106 = v164;
      *&__dst[8] = v164;
      v97 = v174;
      v98 = v165;
      BYTE8(__dst[8]) = v165;
      *&__dst[9] = v125;
      *&__dst[10] = v170;
      v114 = v171;
      BYTE8(__dst[10]) = v171;
      v112 = v176;
      v113 = v173;
      *&__dst[11] = v173;
      BYTE8(__dst[11]) = v174;
      *&__dst[12] = v176;
      v96 = v177;
      BYTE8(__dst[12]) = v177;
      v111 = v179;
      *&__dst[13] = v179;
      BYTE8(__dst[13]) = v180;
      *&__dst[15] = v182;
      BYTE8(__dst[15]) = v183;
      *&__dst[16] = v185;
      BYTE8(__dst[16]) = v186;
      *&__dst[17] = v188;
      BYTE8(__dst[17]) = v189;
      v52 = DateComponents.nonZeroComponentsAndValue.getter();
      v104 = v16;
      if (*(v52 + 2))
      {
        v53 = v52[32];
      }

      else
      {
        v53 = 19;
      }

      v16 = 0;
      result = specialized BidirectionalCollection.lastIndex(where:)(&outlined read-only object #0 of one-time initialization function for sortedAllowedComponents, a4, v53);
      if (v54)
      {
        v55 = v106;
        *a8 = xmmword_18121FA20;
        v57 = v102;
        v56 = v103;
        v59 = v107;
        v58 = v108;
        v60 = v101;
        v62 = v99;
        v61 = v100;
        v63 = v97;
        v64 = v98;
        v65 = v104;
        v66 = v114;
LABEL_304:
        *&__dst[2] = v118;
        __dst[0] = v206;
        __dst[1] = v207;
        BYTE8(__dst[2]) = LOBYTE(v10);
        *(v23 + 41) = v205[0];
        HIDWORD(__dst[2]) = *(v26 + 139);
        *&__dst[3] = v12;
        BYTE8(__dst[3]) = v13;
        *(v23 + 57) = v204[0];
        HIDWORD(__dst[3]) = *(v26 + 131);
        *&__dst[4] = v19;
        BYTE8(__dst[4]) = v56;
        *(v23 + 73) = v203[0];
        HIDWORD(__dst[4]) = *(v26 + 123);
        *&__dst[5] = v58;
        BYTE8(__dst[5]) = v57;
        *(v23 + 89) = v202[0];
        HIDWORD(__dst[5]) = *(v26 + 115);
        *&__dst[6] = v60;
        BYTE8(__dst[6]) = v61;
        *(v23 + 105) = v201[0];
        HIDWORD(__dst[6]) = *(v26 + 107);
        *&__dst[7] = v59;
        BYTE8(__dst[7]) = v62;
        HIDWORD(__dst[7]) = *(v26 + 99);
        *(v23 + 121) = v200[0];
        *&__dst[8] = v55;
        BYTE8(__dst[8]) = v64;
        HIDWORD(__dst[8]) = *(v26 + 91);
        *(v23 + 137) = v199[0];
        *&__dst[9] = v125;
        BYTE8(__dst[9]) = v198;
        *(v23 + 153) = v197[0];
        HIDWORD(__dst[9]) = *(v26 + 75);
        *&__dst[10] = v65;
        BYTE8(__dst[10]) = v66;
        HIDWORD(__dst[10]) = *(v26 + 67);
        *(v23 + 169) = v196[0];
        *&__dst[11] = v113;
        BYTE8(__dst[11]) = v63;
        HIDWORD(__dst[11]) = *(v26 + 59);
        *(v23 + 185) = v195[0];
        *&__dst[12] = v112;
        BYTE8(__dst[12]) = v96;
        HIDWORD(__dst[12]) = *(v26 + 51);
        *(v23 + 201) = v194[0];
        *&__dst[13] = v111;
        BYTE8(__dst[13]) = v51;
        *(&__dst[14] + 1) = *(v26 + 31);
        *(v23 + 217) = v193[0];
        *&__dst[15] = v124;
        BYTE8(__dst[15]) = v120;
        HIDWORD(__dst[15]) = *(v26 + 11);
        *(v23 + 249) = v192[0];
        *&__dst[16] = v123;
        BYTE8(__dst[16]) = v119;
        v91 = *(v26 + 3);
        *(&__dst[16] + 9) = v191[0];
        HIDWORD(__dst[16]) = v91;
        *&__dst[17] = v122;
        BYTE8(__dst[17]) = v117;
        *(&__dst[17] + 9) = v121;
        return outlined destroy of DateComponents(__dst);
      }

      LOBYTE(a5) = v114;
      a6 = v112;
      v11 = v113;
      a7 = v47;
      if (result <= 6)
      {
        LODWORD(v27) = byte_1EEECE5F0[0];
        v67 = byte_1EEECE5F0[0] - 1;
        if (v67 > 0xA || ((0x63Fu >> v67) & 1) == 0)
        {
          goto LABEL_331;
        }

        LOBYTE(v28) = v143;
        LOBYTE(v9) = v142;
        v20 = v141;
        LOBYTE(v17) = v140;
        LOBYTE(v8) = v139;
        v24 = v138;
        v21 = v137;
        v22 = v136;
        LOBYTE(a3) = v135;
        v25 = v134;
        LODWORD(a2) = v133;
        v16 = byte_1EEECE5F0[result];
        v93 = v19;
        if (byte_1EEECE5F0[result] > 4u)
        {
          result = (v16 - 10);
          if (result < 2)
          {
            if ((0x3Cu >> v67))
            {
              goto LABEL_198;
            }
          }

          else if (v16 == 5)
          {
            if ((0x20u >> v67))
            {
              goto LABEL_198;
            }
          }

          else if (v16 != 6)
          {
            goto LABEL_333;
          }
        }

        else if (byte_1EEECE5F0[result] > 2u)
        {
          if (v16 == 3)
          {
            if ((0x38u >> v67))
            {
              goto LABEL_198;
            }
          }

          else
          {
            if (v16 != 4)
            {
              goto LABEL_333;
            }

            if ((0x30u >> v67))
            {
              goto LABEL_198;
            }
          }
        }

        else if (v16 == 1)
        {
          if ((0x63Eu >> v67))
          {
            goto LABEL_198;
          }
        }

        else
        {
          if (v16 != 2)
          {
            goto LABEL_333;
          }

          if ((0x63Cu >> v67))
          {
            goto LABEL_198;
          }
        }

        LODWORD(v27) = byte_1EEECE5F1;
        result = byte_1EEECE5F1 - 1;
        if (result > 0xA || ((0x63Fu >> (byte_1EEECE5F1 - 1)) & 1) == 0)
        {
          goto LABEL_331;
        }

        if (v16 > 4)
        {
          if ((v16 - 10) < 2)
          {
            if ((0x3Cu >> (byte_1EEECE5F1 - 1)))
            {
              goto LABEL_198;
            }
          }

          else if (v16 != 6)
          {
            if (v16 != 5)
            {
              goto LABEL_333;
            }

            if ((0x20u >> (byte_1EEECE5F1 - 1)))
            {
              goto LABEL_198;
            }
          }
        }

        else if (v16 > 2)
        {
          if (v16 == 3)
          {
            if ((0x38u >> (byte_1EEECE5F1 - 1)))
            {
              goto LABEL_198;
            }
          }

          else if ((0x30u >> (byte_1EEECE5F1 - 1)))
          {
            goto LABEL_198;
          }
        }

        else if (v16 == 1)
        {
          if ((0x63Eu >> (byte_1EEECE5F1 - 1)))
          {
            goto LABEL_198;
          }
        }

        else
        {
          if (v16 != 2)
          {
            goto LABEL_333;
          }

          if ((0x63Cu >> (byte_1EEECE5F1 - 1)))
          {
            goto LABEL_198;
          }
        }

        LODWORD(v27) = byte_1EEECE5F2;
        result = byte_1EEECE5F2 - 1;
        if (result > 0xA || ((0x63Fu >> (byte_1EEECE5F2 - 1)) & 1) == 0)
        {
          goto LABEL_331;
        }

        if (v16 > 4)
        {
          if ((v16 - 10) < 2)
          {
            v68 = 60;
          }

          else
          {
            if (v16 == 6)
            {
              goto LABEL_132;
            }

            if (v16 != 5)
            {
              goto LABEL_333;
            }

            v68 = 32;
          }
        }

        else if (v16 > 2)
        {
          if (v16 == 3)
          {
            v68 = 56;
          }

          else
          {
            v68 = 48;
          }
        }

        else if (v16 == 1)
        {
          v68 = 1598;
        }

        else
        {
          v68 = 1596;
        }

        if ((v68 >> (byte_1EEECE5F2 - 1)))
        {
          goto LABEL_198;
        }

LABEL_132:
        LODWORD(v27) = byte_1EEECE5F3;
        result = byte_1EEECE5F3 - 1;
        if (result > 0xA || ((0x63Fu >> (byte_1EEECE5F3 - 1)) & 1) == 0)
        {
          goto LABEL_331;
        }

        if (v16 <= 4)
        {
          if (v16 > 2)
          {
            if (v16 == 3)
            {
              v69 = 56;
            }

            else
            {
              v69 = 48;
            }
          }

          else
          {
            if (v16 == 1)
            {
              goto LABEL_146;
            }

            v69 = 1596;
          }

          goto LABEL_148;
        }

        if ((v16 - 10) < 2)
        {
          v69 = 60;
          goto LABEL_148;
        }

        if (v16 != 6)
        {
          if (v16 == 5)
          {
            v69 = 32;
            goto LABEL_148;
          }

          goto LABEL_333;
        }

LABEL_149:
        LODWORD(v27) = byte_1EEECE5F4;
        result = byte_1EEECE5F4 - 1;
        if (result > 0xA || ((0x63Fu >> (byte_1EEECE5F4 - 1)) & 1) == 0)
        {
          goto LABEL_331;
        }

        if (v16 > 4)
        {
          if ((v16 - 10) < 2)
          {
            v70 = 60;
          }

          else
          {
            if (v16 == 6)
            {
              goto LABEL_166;
            }

            if (v16 != 5)
            {
              goto LABEL_333;
            }

            v70 = 32;
          }
        }

        else if (v16 > 2)
        {
          if (v16 == 3)
          {
            v70 = 56;
          }

          else
          {
            v70 = 48;
          }
        }

        else if (v16 == 1)
        {
          v70 = 1598;
        }

        else
        {
          if (v16 != 2)
          {
            goto LABEL_333;
          }

          v70 = 1596;
        }

        if ((v70 >> (byte_1EEECE5F4 - 1)))
        {
          goto LABEL_198;
        }

LABEL_166:
        LODWORD(v27) = byte_1EEECE5F5;
        result = byte_1EEECE5F5 - 1;
        if (result > 0xA || ((0x63Fu >> (byte_1EEECE5F5 - 1)) & 1) == 0)
        {
          goto LABEL_331;
        }

        if (v16 > 4)
        {
          if ((v16 - 10) < 2)
          {
            v71 = 60;
          }

          else
          {
            if (v16 == 6)
            {
              goto LABEL_182;
            }

            if (v16 != 5)
            {
              goto LABEL_333;
            }

            v71 = 32;
          }
        }

        else if (v16 > 2)
        {
          if (v16 == 3)
          {
            v71 = 56;
          }

          else
          {
            v71 = 48;
          }
        }

        else if (v16 == 1)
        {
          v71 = 1598;
        }

        else
        {
          v71 = 1596;
        }

        if ((v71 >> (byte_1EEECE5F5 - 1)))
        {
          goto LABEL_198;
        }

LABEL_182:
        LODWORD(v27) = byte_1EEECE5F6;
        result = byte_1EEECE5F6 - 1;
        if (result > 0xA || ((0x63Fu >> (byte_1EEECE5F6 - 1)) & 1) == 0)
        {
          goto LABEL_331;
        }

        if (v16 > 4)
        {
          if ((v16 - 10) < 2)
          {
            v72 = 60;
          }

          else
          {
            if (v16 == 6)
            {
              goto LABEL_318;
            }

            if (v16 != 5)
            {
              goto LABEL_333;
            }

            v72 = 32;
          }
        }

        else if (v16 > 2)
        {
          if (v16 == 3)
          {
            v72 = 56;
          }

          else
          {
            v72 = 48;
          }
        }

        else if (v16 == 1)
        {
          v72 = 1598;
        }

        else
        {
          v72 = 1596;
        }

        result = v72 >> (byte_1EEECE5F6 - 1);
        if (result)
        {
          goto LABEL_198;
        }

LABEL_318:
        if ((a5 & 1) == 0)
        {
          LOBYTE(v27) = 13;
          v19 = v104;
          goto LABEL_230;
        }

        goto LABEL_334;
      }

      __break(1u);
LABEL_321:
      __break(1u);
      goto LABEL_322;
    }
  }

  __break(1u);
LABEL_146:
  v69 = 1598;
LABEL_148:
  if (((v69 >> result) & 1) == 0)
  {
    goto LABEL_149;
  }

LABEL_198:
  if (v27 <= 5)
  {
    if (v27 <= 2)
    {
      if (v27 == 1)
      {
        if (v28)
        {
          goto LABEL_229;
        }

        LOBYTE(v27) = 1;
        v19 = v12;
      }

      else
      {
        if (v9)
        {
          goto LABEL_229;
        }

        LOBYTE(v27) = 2;
      }
    }

    else if (v27 == 3)
    {
      if (v20)
      {
        goto LABEL_229;
      }

      LOBYTE(v27) = 3;
      v19 = v108;
    }

    else if (v27 == 4)
    {
      if (v17)
      {
        goto LABEL_229;
      }

      LOBYTE(v27) = 4;
      v19 = v107;
    }

    else
    {
      if (v8)
      {
        goto LABEL_229;
      }

      LOBYTE(v27) = 5;
      v19 = v106;
    }
  }

  else if (v27 > 8)
  {
    if (v27 == 9)
    {
      if (a3)
      {
        goto LABEL_229;
      }

      LOBYTE(v27) = 9;
      v19 = a7;
    }

    else if (v27 == 10)
    {
      if (v25)
      {
        goto LABEL_229;
      }

      LOBYTE(v27) = 10;
      v19 = v124;
    }

    else
    {
      if (a2)
      {
        goto LABEL_229;
      }

      LOBYTE(v27) = 11;
      v19 = v123;
    }
  }

  else if (v27 == 6)
  {
    if (v24)
    {
      goto LABEL_229;
    }

    LOBYTE(v27) = 6;
    v19 = v125;
  }

  else if (v27 == 7)
  {
    if ((v21 & 1) == 0)
    {
      LOBYTE(v27) = 7;
      v19 = v11;
      goto LABEL_230;
    }

LABEL_229:
    v19 = 0;
  }

  else
  {
    if (v22)
    {
      goto LABEL_229;
    }

    LOBYTE(v27) = 8;
    v19 = a6;
  }

LABEL_230:
  if (v16 <= 5)
  {
    if (v16 <= 2)
    {
      if (v16 == 1)
      {
        v11 = v12;
        if (v28)
        {
          goto LABEL_249;
        }
      }

      else
      {
        v11 = v93;
        if (v9)
        {
          goto LABEL_249;
        }
      }
    }

    else
    {
      if (v16 == 3)
      {
        v11 = v108;
        if ((v20 & 1) == 0)
        {
          goto LABEL_250;
        }

        goto LABEL_249;
      }

      if (v16 == 4)
      {
        v11 = v107;
        if (v17)
        {
          goto LABEL_249;
        }
      }

      else
      {
        v11 = v106;
        if (v8)
        {
          goto LABEL_249;
        }
      }
    }
  }

  else if (v16 > 8)
  {
    if (v16 == 9)
    {
      v11 = a7;
      if (a3)
      {
        goto LABEL_249;
      }
    }

    else if (v16 == 10)
    {
      v11 = v124;
      if (v25)
      {
        goto LABEL_249;
      }
    }

    else
    {
      v11 = v123;
      if (a2)
      {
        goto LABEL_249;
      }
    }
  }

  else if (v16 == 6)
  {
    v11 = v125;
    if (v24)
    {
      goto LABEL_249;
    }
  }

  else
  {
    if (v16 == 7)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_250;
      }

LABEL_249:
      v11 = 0;
      goto LABEL_250;
    }

    v11 = a6;
    if (v22)
    {
      goto LABEL_249;
    }
  }

LABEL_250:
  LOBYTE(__src[0]) = v27;
  LOBYTE(v128[0]) = v16;
  v73 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v15)
  {
    v73 = v15;
  }

  if (*&static Date.validCalendarRange >= v73)
  {
    v73 = *&static Date.validCalendarRange;
  }

  *__dst = v73;
  result = (*(v116 + 144))(__src, v128, __dst, ObjectType);
  if (v74.is_nil)
  {
LABEL_263:
    if (!__OFSUB__(0, v11))
    {
      v92 = v13;
      v13 = v12;
      LOBYTE(v12) = LOBYTE(v10);
      LOBYTE(v128[0]) = v16;
      v74.value = -v11;
      DateComponents.init(component:value:)(v74, v128, __src);
      memcpy(__dst, __src, 0x11BuLL);
      if (_s10Foundation13URLComponentsV01_B0VSgWOg(__dst) == 1)
      {
        goto LABEL_265;
      }

      if (*(&static Date.validCalendarRange + 1) >= v15)
      {
        v78 = v15;
      }

      else
      {
        v78 = *(&static Date.validCalendarRange + 1);
      }

      if (*&static Date.validCalendarRange >= v78)
      {
        v79 = *&static Date.validCalendarRange;
      }

      else
      {
        v79 = v78;
      }

      memcpy(v128, __dst, 0x11BuLL);
      if (*(&static Date.validCalendarRange + 1) >= v79)
      {
        v80 = v79;
      }

      else
      {
        v80 = *(&static Date.validCalendarRange + 1);
      }

      if (*&static Date.validCalendarRange >= v80)
      {
        v80 = *&static Date.validCalendarRange;
      }

      v127 = v80;
      (*(v116 + 200))(&v129, v128, &v127, 0, ObjectType);
      v10 = v129;
      LODWORD(v19) = v130;
      if (one-time initialization token for compatibility2 == -1)
      {
LABEL_278:
        v81 = static Calendar.compatibility2;
        outlined destroy of TermOfAddress?(__src, &_s10Foundation14DateComponentsVSgMd);
        if (v81 == 1)
        {
          if (v19)
          {
            v82 = v15;
          }

          else
          {
            v82 = v10;
          }

          v83 = v110;
LABEL_285:

          Calendar.ComponentSet.init(_:)(v84, v128);
          v85 = *(&static Date.validCalendarRange + 1);
          if (*(&static Date.validCalendarRange + 1) >= v82)
          {
            v86 = v82;
          }

          else
          {
            v86 = *(&static Date.validCalendarRange + 1);
          }

          if (*&static Date.validCalendarRange >= v86)
          {
            v86 = *&static Date.validCalendarRange;
          }

          v129 = v86;
          if (*(&static Date.validCalendarRange + 1) >= v15)
          {
            v85 = v15;
          }

          if (*&static Date.validCalendarRange >= v85)
          {
            v85 = *&static Date.validCalendarRange;
          }

          v127 = v85;
          v94(v126, v128, &v129, &v127, ObjectType, v116);
          if (specialized Set.contains(_:)(0xEu, a4))
          {
            v126[0] = v83;
            v126[1] = v116;
            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            if (v126[2])
            {
              if (v83)
              {
                v128[0] = v126[2];
                v128[1] = v126[3];
                swift_unknownObjectRetain();
                Calendar.timeZone.setter(v128);
              }
            }
          }

          memcpy(v128, v126, 0x11BuLL);
          v87 = DateComponents.nonZeroComponentsAndValue.getter();
          outlined destroy of DateComponents(v128);
          v88 = v87;
          LOBYTE(v10) = v12;
          if (*(v87 + 2))
          {
            v89 = v87[32];
            v90 = *(v88 + 5);

            v12 = v13;
            if (v89 != v16)
            {
              *a8 = v89;
              *(a8 + 8) = v90;
              goto LABEL_303;
            }
          }

          else
          {

            v12 = v13;
          }

          *a8 = v16;
          *(a8 + 8) = v11;
          goto LABEL_303;
        }

        v83 = v110;
        if ((v19 & 1) == 0)
        {
          v82 = v10;
          goto LABEL_285;
        }

LABEL_265:
        *a8 = xmmword_18121FA20;
        LOBYTE(v10) = v12;
        v12 = v13;
LABEL_303:
        LOBYTE(v13) = v92;
        v19 = v93;
        v57 = v102;
        v56 = v103;
        v59 = v107;
        v58 = v108;
        v60 = v101;
        v62 = v99;
        v61 = v100;
        v55 = v106;
        v63 = v97;
        v64 = v98;
        v65 = v104;
        v66 = v114;
        v51 = v115;
        goto LABEL_304;
      }

LABEL_325:
      swift_once();
      goto LABEL_278;
    }

    goto LABEL_321;
  }

  v75 = v19;
  if (v19 < 0)
  {
    v75 = -v19;
    if (__OFSUB__(0, v19))
    {
      goto LABEL_329;
    }
  }

  if (v75 + 0x4000000000000000 < 0)
  {
    goto LABEL_323;
  }

  if (__OFSUB__(v74.value, result))
  {
LABEL_324:
    __break(1u);
    goto LABEL_325;
  }

  if (2 * v75 < (v74.value - result))
  {
    goto LABEL_263;
  }

  v76 = -1;
  if (v19 >= 1)
  {
    v76 = 1;
  }

  v77 = __OFADD__(v11, v76);
  v11 += v76;
  if (!v77)
  {
    goto LABEL_263;
  }

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
LABEL_333:
  __break(1u);
LABEL_334:
  __break(1u);
  return result;
}

double specialized BinaryFloatingPoint.rounded<A>(increment:rule:)(uint64_t a1, double a2, double a3)
{
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 != 0.0)
  {
    v11 = a3 / a2;
    v16 = v11;
    (*(v7 + 16))(v10, a1, v6, v8);
    v12 = (*(v7 + 88))(v10, v6);
    if (v12 == *MEMORY[0x1E69E7038])
    {
      v13 = round(v11);
    }

    else if (v12 == *MEMORY[0x1E69E7030])
    {
      v13 = rint(v11);
    }

    else
    {
      if (v12 == *MEMORY[0x1E69E7040])
      {
        goto LABEL_7;
      }

      if (v12 == *MEMORY[0x1E69E7048])
      {
        goto LABEL_9;
      }

      if (v12 == *MEMORY[0x1E69E7020])
      {
        v13 = trunc(v11);
        return v13 * a2;
      }

      if (v12 != *MEMORY[0x1E69E7028])
      {
        Double._roundSlowPath(_:)();
        (*(v7 + 8))(v10, v6);
        v13 = v16;
        return v13 * a2;
      }

      if ((*&v11 & 0x8000000000000000) != 0)
      {
LABEL_9:
        v13 = floor(v11);
      }

      else
      {
LABEL_7:
        v13 = ceil(v11);
      }
    }

    return v13 * a2;
  }

  return a3;
}

uint64_t Date.RelativeFormatStyle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation4DateV19RelativeFormatStyleV10CodingKeys33_32D8BDF3C0EBC9A73BD9D01B0534BC55LLOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v18 = v1[1];
  v16 = v1[2];
  v9 = *(v1 + 8);
  v13 = *(v1 + 24);
  v14 = v9;
  v15 = *(v1 + 5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.RelativeFormatStyle.CodingKeys and conformance Date.RelativeFormatStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = v8;
  v19 = 0;
  lazy protocol witness table accessor for type Date.RelativeFormatStyle.Presentation and conformance Date.RelativeFormatStyle.Presentation();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = v16;
    v11 = v15;
    LOBYTE(v17) = v18;
    v19 = 1;
    lazy protocol witness table accessor for type Date.RelativeFormatStyle.UnitsStyle and conformance Date.RelativeFormatStyle.UnitsStyle();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17) = v10;
    v19 = 2;
    lazy protocol witness table accessor for type FormatStyleCapitalizationContext and conformance FormatStyleCapitalizationContext();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = v14;
    v19 = 3;
    lazy protocol witness table accessor for type Locale and conformance Locale();
    swift_unknownObjectRetain();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_unknownObjectRelease();
    v17 = v13;
    v19 = 4;
    lazy protocol witness table accessor for type Calendar and conformance Calendar();
    swift_unknownObjectRetain();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_unknownObjectRelease();
    *&v17 = v11;
    v19 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy10Foundation4DateV21ComponentsFormatStyleV5FieldVGMd);
    lazy protocol witness table accessor for type Set<Date.ComponentsFormatStyle.Field> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<Date.ComponentsFormatStyle.Field> and conformance <> Set<A>, lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Date.RelativeFormatStyle.hash(into:)(Swift::Int a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 2);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  MEMORY[0x1865CD060](*v1);
  MEMORY[0x1865CD060](v3);
  MEMORY[0x1865CD060](v4);
  ObjectType = swift_getObjectType();
  if ((*(v5 + 48))(ObjectType, v5))
  {
    v9 = 1;
LABEL_5:
    Hasher._combine(_:)(v9);
    goto LABEL_52;
  }

  Hasher._combine(_:)(0);
  (*(v5 + 64))(ObjectType, v5);
  String.hash(into:)();

  (*(v5 + 464))(&v49, ObjectType, v5);
  v57[6] = v55;
  v58[0] = *v56;
  *(v58 + 12) = *&v56[12];
  v57[2] = v51;
  v57[3] = v52;
  v57[4] = v53;
  v57[5] = v54;
  v57[0] = v49;
  v57[1] = v50;
  if (_s10Foundation17LocalePreferencesVSgWOg(v57) == 1)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v48 = v7;
  v10 = v49;
  v11 = *(&v49 + 1);
  v12 = *(&v50 + 1);
  v13 = *(&v51 + 1);
  v38 = v52;
  v39 = v53;
  v40 = v54;
  v41 = v55;
  v43 = *v56;
  v14 = *&v56[16];
  v45 = v56[24];
  v46 = v56[25];
  v47 = v56[26];
  v15 = v56[27];
  Hasher._combine(_:)(1u);
  if (v10 == 2)
  {
    v16 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v16 = v10 & 1;
  }

  v44 = v14;
  Hasher._combine(_:)(v16);
  if (v11)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v11 + 16));
    v17 = *(v11 + 16);
    if (v17)
    {
      v18 = v11 + 40;
      do
      {

        String.hash(into:)();

        v18 += 16;
        --v17;
      }

      while (v17);
    }

    v42 = v15;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v42 = v15;
    if (v12)
    {
LABEL_14:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_17;
    }
  }

  Hasher._combine(_:)(0);
LABEL_17:
  v7 = v48;
  if (v13)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v38)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v38, v19, v20, v21, v22, v23, v24);
    if (*(&v38 + 1))
    {
      goto LABEL_22;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(&v38 + 1))
    {
LABEL_22:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, *(&v38 + 1), v25, v26, v27, v28, v29, v30);
      if (v39)
      {
        goto LABEL_23;
      }

      goto LABEL_28;
    }
  }

  Hasher._combine(_:)(0);
  if (v39)
  {
LABEL_23:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v39 + 1))
    {
      goto LABEL_24;
    }

LABEL_29:
    Hasher._combine(_:)(0);
    if (v40)
    {
      goto LABEL_25;
    }

    goto LABEL_30;
  }

LABEL_28:
  Hasher._combine(_:)(0);
  if (!*(&v39 + 1))
  {
    goto LABEL_29;
  }

LABEL_24:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
  _CFObject.hash(into:)();
  if (v40)
  {
LABEL_25:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_31;
  }

LABEL_30:
  Hasher._combine(_:)(0);
LABEL_31:
  if (*(&v40 + 1))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v41)
    {
      goto LABEL_33;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v41)
    {
LABEL_33:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v31 = v46;
      if (*(&v41 + 1))
      {
        goto LABEL_34;
      }

      goto LABEL_42;
    }
  }

  Hasher._combine(_:)(0);
  v31 = v46;
  if (*(&v41 + 1))
  {
LABEL_34:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, *(&v41 + 1));
    v32 = v43;
    if (v43)
    {
      goto LABEL_35;
    }

    goto LABEL_43;
  }

LABEL_42:
  Hasher._combine(_:)(0);
  v32 = v43;
  if (v43)
  {
LABEL_35:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v32);
    v33 = v47;
    if (v44)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

LABEL_43:
  Hasher._combine(_:)(0);
  v33 = v47;
  if (v44)
  {
LABEL_36:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v45 == 2)
    {
      goto LABEL_37;
    }

    goto LABEL_45;
  }

LABEL_44:
  Hasher._combine(_:)(0);
  if (v45 == 2)
  {
LABEL_37:
    Hasher._combine(_:)(0);
    if (v31 != 2)
    {
      goto LABEL_38;
    }

LABEL_46:
    Hasher._combine(_:)(0);
    if (v33 != 2)
    {
      goto LABEL_39;
    }

LABEL_47:
    v34 = 0;
    goto LABEL_48;
  }

LABEL_45:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v45 & 1);
  if (v31 == 2)
  {
    goto LABEL_46;
  }

LABEL_38:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v31 & 1);
  if (v33 == 2)
  {
    goto LABEL_47;
  }

LABEL_39:
  Hasher._combine(_:)(1u);
  v34 = v33 & 1;
LABEL_48:
  Hasher._combine(_:)(v34);
  if (v42 == 2)
  {
    v35 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v35 = v42 & 1;
  }

  Hasher._combine(_:)(v35);
  outlined destroy of TermOfAddress?(&v49, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_52:
  v36 = swift_getObjectType();
  (*(v6 + 120))(a1, v36, v6);
  return specialized Set.hash(into:)(a1, v7);
}

uint64_t Date.RelativeFormatStyle.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation4DateV19RelativeFormatStyleV10CodingKeys33_32D8BDF3C0EBC9A73BD9D01B0534BC55LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.RelativeFormatStyle.CodingKeys and conformance Date.RelativeFormatStyle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v28) = 0;
  lazy protocol witness table accessor for type Date.RelativeFormatStyle.Presentation and conformance Date.RelativeFormatStyle.Presentation();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v31;
  LOBYTE(v28) = 1;
  lazy protocol witness table accessor for type Date.RelativeFormatStyle.UnitsStyle and conformance Date.RelativeFormatStyle.UnitsStyle();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v31;
  LOBYTE(v28) = 2;
  lazy protocol witness table accessor for type FormatStyleCapitalizationContext and conformance FormatStyleCapitalizationContext();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v10;
  v11 = v31;
  LOBYTE(v28) = 3;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v11;
  v12 = v32;
  v26 = v31;
  LOBYTE(v28) = 4;
  lazy protocol witness table accessor for type Calendar and conformance Calendar();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v32;
  v24 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy10Foundation4DateV21ComponentsFormatStyleV5FieldVGMd);
  v37 = 5;
  lazy protocol witness table accessor for type Set<Date.ComponentsFormatStyle.Field> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<Date.ComponentsFormatStyle.Field> and conformance <> Set<A>, lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v21 = v38;
  v22 = v12;
  LOBYTE(v28) = v9;
  v13 = v12;
  LOBYTE(v12) = v27;
  BYTE1(v28) = v27;
  v14 = v25;
  BYTE2(v28) = v25;
  v15 = v26;
  *(&v28 + 1) = v26;
  *&v29 = v13;
  v17 = v23;
  v16 = v24;
  *(&v29 + 1) = v24;
  *&v30 = v23;
  *(&v30 + 1) = v38;
  v18 = v29;
  *a2 = v28;
  a2[1] = v18;
  a2[2] = v30;
  outlined init with copy of Date.RelativeFormatStyle(&v28, &v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v31) = v9;
  BYTE1(v31) = v12;
  BYTE2(v31) = v14;
  v32 = v15;
  v33 = v22;
  v34 = v16;
  v35 = v17;
  v36 = v21;
  return outlined destroy of Date.RelativeFormatStyle(&v31);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.RelativeFormatStyle()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 2);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  MEMORY[0x1865CD060](v2);
  MEMORY[0x1865CD060](v3);
  ObjectType = swift_getObjectType();
  if ((*(v4 + 48))(ObjectType, v4))
  {
    v8 = 1;
LABEL_5:
    Hasher._combine(_:)(v8);
    goto LABEL_55;
  }

  Hasher._combine(_:)(0);
  (*(v4 + 64))(ObjectType, v4);
  String.hash(into:)();

  (*(v4 + 464))(&v45, ObjectType, v4);
  v53[6] = v51;
  v54[0] = *v52;
  *(v54 + 12) = *&v52[12];
  v53[2] = v47;
  v53[3] = v48;
  v53[4] = v49;
  v53[5] = v50;
  v53[0] = v45;
  v53[1] = v46;
  if (_s10Foundation17LocalePreferencesVSgWOg(v53) == 1)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v43 = v6;
  v9 = v45;
  v10 = *(&v45 + 1);
  v11 = *(&v46 + 1);
  v12 = *(&v47 + 1);
  v39 = v48;
  v13 = v49;
  v40 = v50;
  v14 = v51;
  v15 = *v52;
  v41 = *&v52[16];
  v42 = v52[24];
  v16 = v52[25];
  v17 = v52[26];
  v44 = v52[27];
  Hasher._combine(_:)(1u);
  if (v9 == 2)
  {
    v18 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v18 = v9 & 1;
  }

  Hasher._combine(_:)(v18);
  if (v10)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v10 + 16));
    v19 = *(v10 + 16);
    if (v19)
    {
      v20 = v10 + 40;
      do
      {

        String.hash(into:)();

        v20 += 16;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v11)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = v43;
  if (v12)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v39)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v55, v39, v21, v22, v23, v24, v25, v26);
    if (*(&v39 + 1))
    {
      goto LABEL_23;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(&v39 + 1))
    {
LABEL_23:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v55, *(&v39 + 1), v27, v28, v29, v30, v31, v32);
      if (v13)
      {
        goto LABEL_24;
      }

      goto LABEL_32;
    }
  }

  Hasher._combine(_:)(0);
  if (v13)
  {
LABEL_24:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v13 + 1))
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

LABEL_32:
  Hasher._combine(_:)(0);
  if (*(&v13 + 1))
  {
LABEL_25:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v40)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

LABEL_33:
  Hasher._combine(_:)(0);
  if (v40)
  {
LABEL_26:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v40 + 1))
    {
      goto LABEL_27;
    }

    goto LABEL_35;
  }

LABEL_34:
  Hasher._combine(_:)(0);
  if (*(&v40 + 1))
  {
LABEL_27:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v14)
    {
      goto LABEL_28;
    }

LABEL_36:
    v33 = v44;
    Hasher._combine(_:)(0);
    v34 = *(&v14 + 1);
    if (*(&v14 + 1))
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

LABEL_35:
  Hasher._combine(_:)(0);
  if (!v14)
  {
    goto LABEL_36;
  }

LABEL_28:
  v33 = v44;
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
  _CFObject.hash(into:)();
  v34 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
LABEL_29:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v55, v34);
    goto LABEL_38;
  }

LABEL_37:
  Hasher._combine(_:)(0);
LABEL_38:
  if (v15)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v55, v15);
    if (v41)
    {
LABEL_40:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_43;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v41)
    {
      goto LABEL_40;
    }
  }

  Hasher._combine(_:)(0);
LABEL_43:
  if (v42 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v42 & 1);
  }

  if (v16 != 2)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v16 & 1);
    if (v17 != 2)
    {
      goto LABEL_48;
    }

LABEL_50:
    v35 = 0;
    goto LABEL_51;
  }

  Hasher._combine(_:)(0);
  if (v17 == 2)
  {
    goto LABEL_50;
  }

LABEL_48:
  Hasher._combine(_:)(1u);
  v35 = v17 & 1;
LABEL_51:
  Hasher._combine(_:)(v35);
  if (v33 == 2)
  {
    v36 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v36 = v33 & 1;
  }

  Hasher._combine(_:)(v36);
  outlined destroy of TermOfAddress?(&v45, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_55:
  v37 = swift_getObjectType();
  (*(v5 + 120))(v55, v37, v5);
  specialized Set.hash(into:)(v55, v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance Date.RelativeFormatStyle@<X0>(Swift::String *a1@<X8>, Foundation::Date a2@<D0>)
{
  v4 = Date.RelativeFormatStyle.format(_:)(a2);
  result = v4._countAndFlagsBits;
  *a1 = v4;
  return result;
}

__n128 protocol witness for FormatStyle.locale(_:) in conformance Date.RelativeFormatStyle@<Q0>(__n128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[1];
  v10[0] = *v2;
  v10[1] = v5;
  v11 = v2[2];
  v6 = v11;
  *a2 = v10[0];
  a2[1] = v5;
  a2[2] = v6;
  outlined init with copy of Date.RelativeFormatStyle(v10, v9);
  v8 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = v8;
  *(a2 + 8) = v8;
  return result;
}

uint64_t static FormatStyle<>.relative(presentation:unitsStyle:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = *a2;
  v32 = *a1;
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v4 = _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  type metadata accessor for _CalendarAutoupdating();
  v5 = swift_initStaticObject();
  v6 = _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type _CalendarAutoupdating and conformance _CalendarAutoupdating, type metadata accessor for _CalendarAutoupdating);
  v34 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 7, 0);
  v7 = v34;
  v8 = byte_1EEED0E60;
  v10 = *(v34 + 16);
  v9 = *(v34 + 24);
  v11 = v9 >> 1;
  v12 = v10 + 1;
  if (v9 >> 1 <= v10)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
    v7 = v34;
    v9 = *(v34 + 24);
    v11 = v9 >> 1;
  }

  *(v7 + 16) = v12;
  *(v7 + v10 + 32) = v8;
  v13 = byte_1EEED0E61;
  v34 = v7;
  v14 = v10 + 2;
  if (v11 <= v12)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 2, 1);
    v7 = v34;
    v9 = *(v34 + 24);
    v11 = v9 >> 1;
  }

  *(v7 + 16) = v14;
  *(v7 + v12 + 32) = v13;
  v15 = byte_1EEED0E62;
  v34 = v7;
  v16 = v10 + 3;
  if (v11 <= v14)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 3, 1);
    v7 = v34;
    v9 = *(v34 + 24);
    v11 = v9 >> 1;
  }

  *(v7 + 16) = v16;
  *(v7 + v14 + 32) = v15;
  v17 = byte_1EEED0E63;
  v34 = v7;
  v18 = v10 + 4;
  if (v11 <= v16)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 4, 1);
    v7 = v34;
    v9 = *(v34 + 24);
    v11 = v9 >> 1;
  }

  *(v7 + 16) = v18;
  *(v7 + v16 + 32) = v17;
  v19 = byte_1EEED0E64;
  v34 = v7;
  v20 = v10 + 5;
  if (v11 <= v18)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 5, 1);
    v7 = v34;
    v9 = *(v34 + 24);
    v11 = v9 >> 1;
  }

  *(v7 + 16) = v20;
  *(v7 + v18 + 32) = v19;
  v21 = byte_1EEED0E65;
  v34 = v7;
  v22 = v10 + 6;
  if (v11 <= v20)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 6, 1);
    v7 = v34;
    v9 = *(v34 + 24);
    v11 = v9 >> 1;
  }

  *(v7 + 16) = v22;
  *(v7 + v20 + 32) = v21;
  v23 = byte_1EEED0E66;
  v34 = v7;
  if (v11 <= v22)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 7, 1);
    v7 = v34;
  }

  *(v7 + 16) = v10 + 7;
  *(v7 + v22 + 32) = v23;
  v24 = lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field();
  v25 = MEMORY[0x1865CB700](v10 + 7, &type metadata for Date.ComponentsFormatStyle.Field, v24);
  v34 = v25;
  v26 = *(v7 + 16);
  if (v26)
  {
    v27 = 32;
    do
    {
      specialized Set._Variant.insert(_:)(&v33, *(v7 + v27++));
      --v26;
    }

    while (v26);

    v29 = v34;
  }

  else
  {
    v29 = v25;
  }

  *a3 = v32;
  *(a3 + 1) = v31;
  *(a3 + 2) = 0;
  *(a3 + 8) = inited;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  *(a3 + 32) = v6;
  *(a3 + 40) = v29;
  return result;
}

uint64_t specialized static Date.RelativeFormatStyle.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  if (a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = *(a1 + 5);
  v5 = *(a2 + 24);
  v6 = *(a2 + 5);
  v13 = *(a1 + 8);
  v10 = v3;
  v11 = v5;
  v12 = *(a2 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = specialized static Locale.== infix(_:_:)(&v13, &v12);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v13 = v10;
  v12 = v11;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = specialized static Calendar.== infix(_:_:)(&v13, &v12);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_Tt1g5(v4, v6);
}

uint64_t specialized BidirectionalCollection.lastIndex(where:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = a1 + 32;
    v6 = a2 + 56;
    v7 = a3;
    do
    {
      --v3;
      if (*(a2 + 16))
      {
        v9 = *(v5 + v3);
        Hasher.init(_seed:)();
        MEMORY[0x1865CD060](v9);
        v10 = Hasher._finalize()();
        v11 = -1 << *(a2 + 32);
        v12 = v10 & ~v11;
        if ((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          while (*(*(a2 + 48) + v12) != v9)
          {
            v12 = (v12 + 1) & v13;
            if (((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v14 = v9 - 1;
          if (v9 - 1) <= 0xAu && ((0x63Fu >> v14))
          {
            if (v7 > 3)
            {
              if ((v7 - 10) < 2)
              {
                v8 = 1987;
              }

              else if (v7 == 4)
              {
                v8 = 1999;
              }

              else
              {
                if (v7 != 5)
                {
                  return v3;
                }

                v8 = 2015;
              }
            }

            else
            {
              switch(v7)
              {
                case 1:
                  v8 = 449;
                  break;
                case 2:
                  v8 = 451;
                  break;
                case 3:
                  v8 = 1991;
                  break;
                default:
                  return v3;
              }
            }

            if ((v8 >> v14))
            {
              return v3;
            }
          }
        }
      }

LABEL_5:
      ;
    }

    while (v3);
  }

  return v3;
}

unint64_t lazy protocol witness table accessor for type Date.RelativeFormatStyle.UnitsStyle.CodingKeys and conformance Date.RelativeFormatStyle.UnitsStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.CodingKeys and conformance Date.RelativeFormatStyle.UnitsStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.CodingKeys and conformance Date.RelativeFormatStyle.UnitsStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.CodingKeys and conformance Date.RelativeFormatStyle.UnitsStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.CodingKeys and conformance Date.RelativeFormatStyle.UnitsStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.CodingKeys and conformance Date.RelativeFormatStyle.UnitsStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.CodingKeys and conformance Date.RelativeFormatStyle.UnitsStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.CodingKeys and conformance Date.RelativeFormatStyle.UnitsStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.CodingKeys and conformance Date.RelativeFormatStyle.UnitsStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.CodingKeys and conformance Date.RelativeFormatStyle.UnitsStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.CodingKeys and conformance Date.RelativeFormatStyle.UnitsStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.CodingKeys and conformance Date.RelativeFormatStyle.UnitsStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.CodingKeys and conformance Date.RelativeFormatStyle.UnitsStyle.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.RelativeFormatStyle.UnitsStyle.Option and conformance Date.RelativeFormatStyle.UnitsStyle.Option()
{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.Option and conformance Date.RelativeFormatStyle.UnitsStyle.Option;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.Option and conformance Date.RelativeFormatStyle.UnitsStyle.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.Option and conformance Date.RelativeFormatStyle.UnitsStyle.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.Option and conformance Date.RelativeFormatStyle.UnitsStyle.Option;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.Option and conformance Date.RelativeFormatStyle.UnitsStyle.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.Option and conformance Date.RelativeFormatStyle.UnitsStyle.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.Option and conformance Date.RelativeFormatStyle.UnitsStyle.Option;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.Option and conformance Date.RelativeFormatStyle.UnitsStyle.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.Option and conformance Date.RelativeFormatStyle.UnitsStyle.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.Option and conformance Date.RelativeFormatStyle.UnitsStyle.Option;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.Option and conformance Date.RelativeFormatStyle.UnitsStyle.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle.Option and conformance Date.RelativeFormatStyle.UnitsStyle.Option);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.RelativeFormatStyle.Presentation.CodingKeys and conformance Date.RelativeFormatStyle.Presentation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.CodingKeys and conformance Date.RelativeFormatStyle.Presentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.CodingKeys and conformance Date.RelativeFormatStyle.Presentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.CodingKeys and conformance Date.RelativeFormatStyle.Presentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.CodingKeys and conformance Date.RelativeFormatStyle.Presentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.CodingKeys and conformance Date.RelativeFormatStyle.Presentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.CodingKeys and conformance Date.RelativeFormatStyle.Presentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.CodingKeys and conformance Date.RelativeFormatStyle.Presentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.CodingKeys and conformance Date.RelativeFormatStyle.Presentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.CodingKeys and conformance Date.RelativeFormatStyle.Presentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.CodingKeys and conformance Date.RelativeFormatStyle.Presentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.CodingKeys and conformance Date.RelativeFormatStyle.Presentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.CodingKeys and conformance Date.RelativeFormatStyle.Presentation.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.RelativeFormatStyle.Presentation.Option and conformance Date.RelativeFormatStyle.Presentation.Option()
{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.Option and conformance Date.RelativeFormatStyle.Presentation.Option;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.Option and conformance Date.RelativeFormatStyle.Presentation.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.Option and conformance Date.RelativeFormatStyle.Presentation.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.Option and conformance Date.RelativeFormatStyle.Presentation.Option;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.Option and conformance Date.RelativeFormatStyle.Presentation.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.Option and conformance Date.RelativeFormatStyle.Presentation.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.Option and conformance Date.RelativeFormatStyle.Presentation.Option;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.Option and conformance Date.RelativeFormatStyle.Presentation.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.Option and conformance Date.RelativeFormatStyle.Presentation.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.Option and conformance Date.RelativeFormatStyle.Presentation.Option;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.Option and conformance Date.RelativeFormatStyle.Presentation.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation.Option and conformance Date.RelativeFormatStyle.Presentation.Option);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.RelativeFormatStyle.CodingKeys and conformance Date.RelativeFormatStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.CodingKeys and conformance Date.RelativeFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.CodingKeys and conformance Date.RelativeFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.CodingKeys and conformance Date.RelativeFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.CodingKeys and conformance Date.RelativeFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.CodingKeys and conformance Date.RelativeFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.CodingKeys and conformance Date.RelativeFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.CodingKeys and conformance Date.RelativeFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.CodingKeys and conformance Date.RelativeFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.CodingKeys and conformance Date.RelativeFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.CodingKeys and conformance Date.RelativeFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.CodingKeys and conformance Date.RelativeFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.CodingKeys and conformance Date.RelativeFormatStyle.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.RelativeFormatStyle.Presentation and conformance Date.RelativeFormatStyle.Presentation()
{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation and conformance Date.RelativeFormatStyle.Presentation;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation and conformance Date.RelativeFormatStyle.Presentation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation and conformance Date.RelativeFormatStyle.Presentation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation and conformance Date.RelativeFormatStyle.Presentation;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation and conformance Date.RelativeFormatStyle.Presentation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation and conformance Date.RelativeFormatStyle.Presentation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation and conformance Date.RelativeFormatStyle.Presentation;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation and conformance Date.RelativeFormatStyle.Presentation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.Presentation and conformance Date.RelativeFormatStyle.Presentation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.RelativeFormatStyle.UnitsStyle and conformance Date.RelativeFormatStyle.UnitsStyle()
{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle and conformance Date.RelativeFormatStyle.UnitsStyle;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle and conformance Date.RelativeFormatStyle.UnitsStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle and conformance Date.RelativeFormatStyle.UnitsStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle and conformance Date.RelativeFormatStyle.UnitsStyle;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle and conformance Date.RelativeFormatStyle.UnitsStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle and conformance Date.RelativeFormatStyle.UnitsStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle and conformance Date.RelativeFormatStyle.UnitsStyle;
  if (!lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle and conformance Date.RelativeFormatStyle.UnitsStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle and conformance Date.RelativeFormatStyle.UnitsStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FormatStyleCapitalizationContext and conformance FormatStyleCapitalizationContext()
{
  result = lazy protocol witness table cache variable for type FormatStyleCapitalizationContext and conformance FormatStyleCapitalizationContext;
  if (!lazy protocol witness table cache variable for type FormatStyleCapitalizationContext and conformance FormatStyleCapitalizationContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormatStyleCapitalizationContext and conformance FormatStyleCapitalizationContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FormatStyleCapitalizationContext and conformance FormatStyleCapitalizationContext;
  if (!lazy protocol witness table cache variable for type FormatStyleCapitalizationContext and conformance FormatStyleCapitalizationContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormatStyleCapitalizationContext and conformance FormatStyleCapitalizationContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FormatStyleCapitalizationContext and conformance FormatStyleCapitalizationContext;
  if (!lazy protocol witness table cache variable for type FormatStyleCapitalizationContext and conformance FormatStyleCapitalizationContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormatStyleCapitalizationContext and conformance FormatStyleCapitalizationContext);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Set<Date.ComponentsFormatStyle.Field> and conformance <> Set<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy10Foundation4DateV21ComponentsFormatStyleV5FieldVGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Date.RelativeFormatStyle(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date.RelativeFormatStyle and conformance Date.RelativeFormatStyle();
  a1[2] = lazy protocol witness table accessor for type Date.RelativeFormatStyle and conformance Date.RelativeFormatStyle();
  result = lazy protocol witness table accessor for type Date.RelativeFormatStyle and conformance Date.RelativeFormatStyle();
  a1[3] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Date.RelativeFormatStyle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for Date.RelativeFormatStyle(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t specialized Date.RelativeFormatStyle.UnitsStyle.Option.init(rawValue:)(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t specialized Date.RelativeFormatStyle.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Date.RelativeFormatStyle.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

Swift::String __swiftcall Date.VerbatimFormatStyle.format(_:)(Foundation::Date a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = v2[1];
  v34[0] = *v2;
  v34[1] = v3;
  v4 = v2[3];
  v6 = *v2;
  v5 = v2[1];
  v34[2] = v2[2];
  v34[3] = v4;
  v7 = *v1;
  v35 = v6;
  v36 = v5;
  v8 = v2[3];
  v37 = v2[2];
  v38 = v8;
  outlined init with copy of Date.VerbatimFormatStyle(v34, v33);
  ICUDateFormatter.DateFormatInfo.init(_:)(&v35, v33);
  v9 = specialized static ICUDateFormatter.cachedFormatter(for:)(v33);
  v37 = v33[2];
  v38 = v33[3];
  v39 = v33[4];
  v40 = v33[5];
  v35 = v33[0];
  v36 = v33[1];
  outlined destroy of ICUDateFormatter.DateFormatInfo(&v35);
  if (v9)
  {
    v10 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
    v12 = v11;

    if (v12)
    {
      goto LABEL_26;
    }
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v14 = [v13 description];

  if (!v14)
  {
    goto LABEL_22;
  }

  isTaggedPointer = _objc_isTaggedPointer(v14);
  v16 = v14;
  v17 = v16;
  if (!isTaggedPointer)
  {
LABEL_9:
    *&v33[0] = 0;
    if (__CFStringIsCF())
    {
      v10 = *&v33[0];
      if (!*&v33[0])
      {

        v21 = 0xE000000000000000;
        goto LABEL_27;
      }

LABEL_24:
      v10 = String.init(_cocoaString:)();
      v12 = v29;
      goto LABEL_25;
    }

    v22 = v17;
    v23 = String.init(_nativeStorage:)();
    if (v24)
    {
      v10 = v23;
      v25 = v24;

      v21 = v25;
      goto LABEL_27;
    }

    *&v33[0] = [v22 length];
    if (*&v33[0])
    {
      goto LABEL_24;
    }

LABEL_22:
    v10 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_27;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v16);
  if (!TaggedPointerTag)
  {
    goto LABEL_18;
  }

  if (TaggedPointerTag == 22)
  {
    v26 = [v17 UTF8String];
    if (!v26)
    {
      __break(1u);
      goto LABEL_29;
    }

    v27 = String.init(utf8String:)(v26);
    if (v28)
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_18:
    _CFIndirectTaggedPointerStringGetContents();
    v27 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v28)
    {
      [v17 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v10 = v31;
      v12 = v32;
LABEL_25:

LABEL_26:
      v21 = v12;
      goto LABEL_27;
    }

LABEL_23:
    v10 = v27;
    v12 = v28;

    goto LABEL_25;
  }

  if (TaggedPointerTag != 2)
  {
    goto LABEL_9;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v20 = v19;

  v21 = v20;
LABEL_27:
  v26 = v10;
LABEL_29:
  result._object = v21;
  result._countAndFlagsBits = v26;
  return result;
}

uint64_t Date.VerbatimFormatStyle.locale(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = v2[1];
  v11[0] = *v2;
  v11[1] = v6;
  v8 = v2[3];
  v12 = v2[2];
  v7 = v12;
  v13 = v8;
  *a2 = v11[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  outlined init with copy of Date.VerbatimFormatStyle(v11, &v10);
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  return result;
}

__n128 Date.VerbatimFormatStyle.timeZone.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 Date.VerbatimFormatStyle.calendar.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  v1[1] = *a1;
  return result;
}

uint64_t Date.VerbatimFormatStyle.locale.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = swift_unknownObjectRelease();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

__n128 Date.VerbatimFormatStyle.init(format:locale:timeZone:calendar:)@<Q0>(void *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a1[1];
  *(a5 + 48) = *a1;
  *(a5 + 56) = v5;
  result = *a4;
  v7 = *a2;
  *(a5 + 16) = *a4;
  *(a5 + 32) = v7;
  *a5 = *a3;
  return result;
}

uint64_t Date.VerbatimFormatStyle.attributed.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v4 = v1[3];
  v11 = v1[2];
  v12 = v4;
  v13 = v10[0];
  v14 = v3;
  v15 = v11;
  v16 = v4;
  _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOi1_(&v13);
  v5 = v18;
  a1[4] = v17;
  a1[5] = v5;
  a1[6] = v19[0];
  *(a1 + 106) = *(v19 + 10);
  v6 = v14;
  *a1 = v13;
  a1[1] = v6;
  v7 = v16;
  a1[2] = v15;
  a1[3] = v7;
  return outlined init with copy of Date.VerbatimFormatStyle(v10, &v9);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Date.VerbatimFormatStyle.CodingKeys()
{
  v1 = 0x656E6F5A656D6974;
  v2 = 0x656C61636F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x615074616D726F66;
  }

  if (*v0)
  {
    v1 = 0x7261646E656C6163;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Date.VerbatimFormatStyle.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Date.VerbatimFormatStyle.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Date.VerbatimFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.VerbatimFormatStyle.CodingKeys and conformance Date.VerbatimFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Date.VerbatimFormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.VerbatimFormatStyle.CodingKeys and conformance Date.VerbatimFormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Date.VerbatimFormatStyle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation4DateV19VerbatimFormatStyleV10CodingKeys33_2CDBE5A76AD2A670215A09BC02CCA738LLOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  v15 = v1[1];
  v8 = *(v1 + 4);
  v13 = *(v1 + 5);
  v14 = v8;
  v12[1] = *(v1 + 6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.VerbatimFormatStyle.CodingKeys and conformance Date.VerbatimFormatStyle.CodingKeys();
  v16 = *v1;
  swift_unknownObjectRetain();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = v16;
  v18 = 0;
  lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = v13;
    v10 = v14;
    swift_unknownObjectRelease();
    v17 = v15;
    v18 = 1;
    lazy protocol witness table accessor for type Calendar and conformance Calendar();
    swift_unknownObjectRetain();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_unknownObjectRelease();
    *&v17 = v10;
    *(&v17 + 1) = v9;
    v18 = 2;
    lazy protocol witness table accessor for type Locale and conformance Locale();
    swift_unknownObjectRetain();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    swift_unknownObjectRelease();
    LOBYTE(v17) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Date.VerbatimFormatStyle.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation4DateV19VerbatimFormatStyleV10CodingKeys33_2CDBE5A76AD2A670215A09BC02CCA738LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.VerbatimFormatStyle.CodingKeys and conformance Date.VerbatimFormatStyle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return swift_unknownObjectRelease();
  }

  else
  {
    LOBYTE(v26) = 0;
    lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v31;
    v25 = v30;
    LOBYTE(v26) = 1;
    lazy protocol witness table accessor for type Calendar and conformance Calendar();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v23 = v31;
    v24 = v30;
    LOBYTE(v26) = 2;
    lazy protocol witness table accessor for type Locale and conformance Locale();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v21 = v9;
    v10 = v30;
    v22 = v31;
    v38 = 3;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v8;
    v14 = v13;
    (*(v6 + 8))(v12, v5);
    v15 = v25;
    v16 = v21;
    *&v26 = v25;
    *(&v26 + 1) = v21;
    v17 = v23;
    *&v27 = v24;
    *(&v27 + 1) = v23;
    *&v28 = v10;
    *(&v28 + 1) = v22;
    *&v29 = v11;
    *(&v29 + 1) = v14;
    v18 = v27;
    *a2 = v26;
    a2[1] = v18;
    v19 = v29;
    a2[2] = v28;
    a2[3] = v19;
    outlined init with copy of Date.VerbatimFormatStyle(&v26, &v30);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v30 = v15;
    v31 = v16;
    v32 = v24;
    v33 = v17;
    v34 = v10;
    v35 = v22;
    v36 = v11;
    v37 = v14;
    return outlined destroy of Date.VerbatimFormatStyle(&v30);
  }
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance Date.VerbatimFormatStyle@<X0>(Swift::String *a1@<X8>, Foundation::Date a2@<D0>)
{
  v4 = Date.VerbatimFormatStyle.format(_:)(a2);
  result = v4._countAndFlagsBits;
  *a1 = v4;
  return result;
}

uint64_t protocol witness for FormatStyle.locale(_:) in conformance Date.VerbatimFormatStyle@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = v2[1];
  v11[0] = *v2;
  v11[1] = v6;
  v8 = v2[3];
  v12 = v2[2];
  v7 = v12;
  v13 = v8;
  *a2 = v11[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  outlined init with copy of Date.VerbatimFormatStyle(v11, &v10);
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  return result;
}

uint64_t static FormatStyle<>.verbatim(_:locale:timeZone:calendar:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  *(a5 + 48) = v6;
  *(a5 + 56) = v5;
  v7 = *a2;
  *(a5 + 16) = *a4;
  *(a5 + 32) = v7;
  *a5 = *a3;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  return swift_unknownObjectRetain();
}

uint64_t Date.VerbatimFormatStyle.parseStrategy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 6);
  v3 = *(v1 + 7);
  v5 = *v1;
  v4 = v1[1];
  *(a1 + 16) = v1[2];
  *(a1 + 32) = v5;
  *(a1 + 64) = v2;
  *(a1 + 72) = v3;
  *(a1 + 48) = v4;
  *a1 = 0;
  *(a1 + 8) = 0xC1CD27E440000000;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
}

uint64_t protocol witness for ParseableFormatStyle.parseStrategy.getter in conformance Date.VerbatimFormatStyle@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 6);
  v3 = *(v1 + 7);
  v5 = *v1;
  v4 = v1[1];
  *(a1 + 16) = v1[2];
  *(a1 + 32) = v5;
  *(a1 + 64) = v2;
  *(a1 + 72) = v3;
  *(a1 + 48) = v4;
  *a1 = 0;
  *(a1 + 8) = 0xC1CD27E440000000;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
}

uint64_t Date.VerbatimFormatStyle.Attributed.subscript.getter()
{
  v1 = v0[1];
  v10[0] = *v0;
  v10[1] = v1;
  v2 = v0[3];
  v4 = *v0;
  v3 = v0[1];
  v10[2] = v0[2];
  v10[3] = v2;
  v6 = v4;
  v7 = v3;
  v8 = v0[2];
  v9 = v0[3];
  outlined init with copy of Date.VerbatimFormatStyle(v10, v11);
  swift_getAtKeyPath();
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  return outlined destroy of Date.VerbatimFormatStyle(v11);
}

uint64_t Date.VerbatimFormatStyle.Attributed.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  specialized Date.VerbatimFormatStyle.Attributed.subscript.setter(a1);

  v4 = *(*(*(v3 + *MEMORY[0x1E69E6CE8] + 8) - 8) + 8);

  return v4(a1);
}

void (*Date.VerbatimFormatStyle.Attributed.subscript.modify(void *a1, void *a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x138uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[32] = a2;
  v6[33] = v2;
  v8 = *(*a2 + *MEMORY[0x1E69E6CE8] + 8);
  v6[34] = v8;
  v9 = *(v8 - 8);
  v6[35] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[36] = swift_coroFrameAlloc();
    *(v7 + 296) = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[36] = malloc(v10);
    *(v7 + 296) = malloc(v10);
    v11 = malloc(v10);
  }

  *(v7 + 304) = v11;
  v12 = *v2;
  v13 = v2[1];
  v14 = v2[3];
  *(v7 + 96) = v2[2];
  *(v7 + 112) = v14;
  *(v7 + 64) = v12;
  *(v7 + 80) = v13;
  v15 = *v2;
  v16 = v2[1];
  v17 = v2[3];
  *(v7 + 160) = v2[2];
  *(v7 + 176) = v17;
  *(v7 + 128) = v15;
  *(v7 + 144) = v16;
  outlined init with copy of Date.VerbatimFormatStyle(v7 + 64, v7 + 192);
  swift_getAtKeyPath();
  v18 = *(v7 + 144);
  *v7 = *(v7 + 128);
  *(v7 + 16) = v18;
  v19 = *(v7 + 176);
  *(v7 + 32) = *(v7 + 160);
  *(v7 + 48) = v19;
  outlined destroy of Date.VerbatimFormatStyle(v7);
  return Date.VerbatimFormatStyle.Attributed.subscript.modify;
}

void Date.VerbatimFormatStyle.Attributed.subscript.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 280) + 16);
  v4(*(*a1 + 296), v3[38], v3[34]);
  v5 = v3[37];
  v11 = v3[38];
  v7 = v3[35];
  v6 = v3[36];
  v8 = v3[34];
  if (a2)
  {
    v4(v3[36], v5, v3[34]);
    swift_setAtWritableKeyPath();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_setAtWritableKeyPath();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t Date.VerbatimFormatStyle.Attributed.format(_:)@<X0>(double *a1@<X0>, uint64_t *a2@<X8>)
{
  v215 = *MEMORY[0x1E69E9840];
  v4 = v2[1];
  v208[0] = *v2;
  v208[1] = v4;
  v5 = v2[3];
  v7 = *v2;
  v6 = v2[1];
  v208[2] = v2[2];
  v208[3] = v5;
  v8 = *a1;
  v209 = v7;
  v210 = v6;
  v9 = v2[3];
  v211 = v2[2];
  v212 = v9;
  outlined init with copy of Date.VerbatimFormatStyle(v208, v191);
  ICUDateFormatter.DateFormatInfo.init(_:)(&v209, v191);
  v10 = specialized static ICUDateFormatter.cachedFormatter(for:)(v191);
  v211 = v191[2];
  v212 = v191[3];
  v213 = v191[4];
  v214 = v191[5];
  v209 = v191[0];
  v210 = v191[1];
  outlined destroy of ICUDateFormatter.DateFormatInfo(&v209);
  if (v10)
  {
    *v191 = v8;
    v216 = ICUDateFormatter.attributedFormat(_:)(v11);
    if (v216.value._0._object)
    {
      countAndFlagsBits = v216.value._0._countAndFlagsBits;
      object = v216.value._0._object;
      rawValue = v216.value._1._rawValue;
      v153 = a2;

      BigString.init(_:)();
      AttributedString.init(_:attributes:)(&v190, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], v191);
      v15 = *&v191[0];
      v158 = *(rawValue + 2);
      if (!v158)
      {
LABEL_106:

        *v153 = v15;
        return result;
      }

      v16 = 0;
      v157 = rawValue + 32;
      v155 = object;
      v156 = rawValue;
      v154 = countAndFlagsBits;
LABEL_7:
      if (v16 >= *(rawValue + 2))
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
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
      }

      v159 = v16;
      v17 = *&v157[24 * v16];
      *&v186 = countAndFlagsBits;
      *(&v186 + 1) = object;
      lazy protocol witness table accessor for type String and conformance String();

      v18 = String.Index.init<A>(utf16Offset:in:)();
      *&v186 = countAndFlagsBits;
      *(&v186 + 1) = object;

      v19 = String.Index.init<A>(utf16Offset:in:)();
      if (v19 >> 14 < v18 >> 14)
      {
        goto LABEL_136;
      }

      v20 = v19;

      _sSn10FoundationAA16AttributedStringV5IndexVRszrlE6_range2inSnyAEGSgSnySSADVG_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5(v18, v20, v15, &v186);
      v166 = v187;
      if (*(&v187 + 1) == 2)
      {
        goto LABEL_142;
      }

      v160 = v189;
      v162 = v188;
      v164 = v186;
      v21 = MEMORY[0x1E69E7CC8];
      v172 = MEMORY[0x1E69E7CC8];
      AttributeScopes.FoundationAttributes.DateFieldAttribute.Field.init(udateFormatField:)(v17, v182);
      v22 = v182[0];
      if (LOBYTE(v182[0]) == 17)
      {
        goto LABEL_45;
      }

      v182[3] = &type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field;
      v182[4] = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field();
      LOBYTE(v182[0]) = v22;
      v183 = xmmword_1812187D0;
      v184 = 1;
      v185 = 0;
      outlined init with copy of AttributedString._AttributeValue?(v182, &v177);
      if (!*(&v178 + 1))
      {
        outlined destroy of TermOfAddress?(&v177, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v33 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x800000018147E880);
        if ((v34 & 1) == 0)
        {
          v181 = 0;
          v179 = 0u;
          v180 = 0u;
          v177 = 0u;
          v178 = 0u;
LABEL_44:
          AttributedString._AttributeStorage._attributeModified(_:old:new:)(0xD00000000000001ALL, 0x800000018147E880, &v177, v182);
          outlined destroy of TermOfAddress?(v182, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v177, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          v21 = v172;
LABEL_45:
          v170 = v21;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v72 = *(v15 + 40);
            v205 = *(v15 + 24);
            v206 = v72;
            v207 = *(v15 + 56);
            v73 = *(v15 + 72);
            v74 = *(v15 + 80);
            v75 = *(v15 + 88);
            v76 = *(v15 + 96);
            type metadata accessor for AttributedString.Guts();
            v77 = swift_allocObject();
            v78 = BigString.isEmpty.getter() & 1;
            outlined init with copy of BigString(&v205, v182);
            v79 = swift_unknownObjectRetain();
            specialized Rope._endPath.getter(v79);
            if (v73)
            {
              v80 = v75 == 0;
            }

            else
            {
              v80 = 1;
            }

            v81 = v80;
            if (v81 != v78)
            {
              goto LABEL_139;
            }

            if (one-time initialization token for _nextVersion != -1)
            {
              swift_once();
            }

            *(v77 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
            v82 = v206;
            *(v77 + 24) = v205;
            *(v77 + 40) = v82;
            *(v77 + 56) = v207;
            *(v77 + 72) = v73;
            *(v77 + 80) = v74;
            *(v77 + 88) = v75;
            *(v77 + 96) = v76;
            *(v77 + 104) = MEMORY[0x1E69E7CC0];

            v15 = v77;
          }

          if (one-time initialization token for _nextVersion != -1)
          {
            swift_once();
          }

          *(v15 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
          v83 = *(v15 + 24);
          v84 = *(v15 + 56);
          v203 = *(v15 + 40);
          v204 = v84;
          v202 = v83;
          BigString.startIndex.getter();
          BigString.endIndex.getter();
          v195 = v164;
          v196 = v166;
          v197 = v162;
          v198 = v160;
          v85 = *(v15 + 40);
          v199 = *(v15 + 24);
          v200 = v85;
          v201 = *(v15 + 56);
          swift_unknownObjectRetain();

          BigString.UnicodeScalarView.subscript.getter();
          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(v191);
          if (one-time initialization token for currentIdentity != -1)
          {
            swift_once();
          }

          v86 = static AttributedString.currentIdentity;
          os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
          v87 = *(v86 + 16);
          v28 = __OFADD__(v87, 1);
          v88 = v87 + 1;
          if (v28)
          {
            goto LABEL_137;
          }

          *(v86 + 16) = v88;
          os_unfair_lock_unlock((v86 + 24));
          BigString.init()();
          v182[0] = 0;
          MEMORY[0x1865D26B0](v182, 8);
          v89 = v182[0];
          type metadata accessor for AttributedString.Guts();
          v90 = swift_allocObject();
          if ((BigString.isEmpty.getter() & 1) == 0)
          {
            goto LABEL_138;
          }

          *(v90 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
          v91 = v191[8];
          *(v90 + 24) = v191[7];
          *(v90 + 40) = v91;
          *(v90 + 56) = v191[9];
          *(v90 + 72) = 0;
          *(v90 + 80) = 0;
          *(v90 + 88) = 0;
          *(v90 + 96) = v89;
          *(v90 + 104) = MEMORY[0x1E69E7CC0];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v92 = *(v15 + 40);
            v192 = *(v15 + 24);
            v193 = v92;
            v194 = *(v15 + 56);
            v93 = *(v15 + 72);
            v94 = *(v15 + 80);
            v95 = *(v15 + 88);
            v96 = *(v15 + 96);
            v97 = swift_allocObject();
            v98 = BigString.isEmpty.getter() & 1;
            outlined init with copy of BigString(&v192, v182);
            v99 = swift_unknownObjectRetain();
            specialized Rope._endPath.getter(v99);
            if (v93)
            {
              v100 = v95 == 0;
            }

            else
            {
              v100 = 1;
            }

            v101 = v100;
            if (v101 != v98)
            {
              goto LABEL_140;
            }

            *(v97 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
            v102 = v193;
            *(v97 + 24) = v192;
            *(v97 + 40) = v102;
            *(v97 + 56) = v194;
            *(v97 + 72) = v93;
            *(v97 + 80) = v94;
            *(v97 + 88) = v95;
            *(v97 + 96) = v96;
            *(v97 + 104) = MEMORY[0x1E69E7CC0];

            v15 = v97;
          }

          v103 = *(v15 + 40);
          v191[13] = *(v15 + 24);
          v191[14] = v103;
          v191[15] = *(v15 + 56);
          swift_unknownObjectRetain();
          v104 = BigString.UnicodeScalarView.index(roundingDown:)();
          swift_unknownObjectRelease();
          v105 = *(v15 + 40);
          v191[10] = *(v15 + 24);
          v191[11] = v105;
          v191[12] = *(v15 + 56);
          swift_unknownObjectRetain();
          v106 = BigString.UnicodeScalarView.index(roundingDown:)();
          swift_unknownObjectRelease();
          v107 = v104 >> 11;
          v108 = (v106 >> 11);

          specialized AttributedString._InternalRunsSlice.updateEach(with:)(v15, v107, v106 >> 11, v170, 0);

          if ((specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v170) & 1) == 0)
          {

            goto LABEL_6;
          }

          v165 = v107;
          v109 = 1 << *(v170 + 32);
          if (v109 < 64)
          {
            v110 = ~(-1 << v109);
          }

          else
          {
            v110 = -1;
          }

          v111 = v110 & *(v170 + 64);
          v112 = (v109 + 63) >> 6;

          v113 = 0;
          v167 = MEMORY[0x1E69E7CC0];
          while (v111)
          {
            a2 = v170;
LABEL_83:
            v115 = __clz(__rbit64(v111));
            v111 &= v111 - 1;
            outlined init with copy of AttributedString._AttributeValue(a2[7] + 72 * (v115 | (v113 << 6)), v182);
            v116 = v183;
            outlined copy of AttributedString.AttributeRunBoundaries?(v183, *(&v183 + 1));
            outlined destroy of AttributedString._AttributeValue(v182);
            if (*(&v116 + 1) != 1)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v167 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v167 + 2) + 1, 1, v167);
              }

              v118 = *(v167 + 2);
              v117 = *(v167 + 3);
              v119 = v118 + 1;
              if (v118 >= v117 >> 1)
              {
                v163 = v118 + 1;
                v161 = *(v167 + 2);
                v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v117 > 1), v118 + 1, 1, v167);
                v119 = v163;
                v118 = v161;
                v167 = v120;
              }

              *(v167 + 2) = v119;
              *&v167[16 * v118 + 32] = v116;
            }
          }

          a2 = v170;
          while (1)
          {
            v114 = v113 + 1;
            if (__OFADD__(v113, 1))
            {
              break;
            }

            if (v114 >= v112)
            {

              AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v165, v108, 0, v167);

LABEL_6:
              object = v155;
              rawValue = v156;
              countAndFlagsBits = v154;
              v16 = v159 + 1;

              if (v159 + 1 == v158)
              {
                goto LABEL_106;
              }

              goto LABEL_7;
            }

            v111 = *(v170 + 64 + 8 * v114);
            ++v113;
            if (v111)
            {
              v113 = v114;
              goto LABEL_83;
            }
          }

          __break(1u);
          goto LABEL_129;
        }

        v35 = v33;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v31 = v21;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v121 = static _DictionaryStorage.copy(original:)();
          v31 = v121;
          v122 = *(v21 + 16);
          if (v122)
          {
            v123 = (v121 + 64);
            v124 = ((1 << *(v31 + 32)) + 63) >> 6;
            if (v31 != v21 || v123 >= v21 + 8 * v124 + 64)
            {
              memmove(v123, (v21 + 64), 8 * v124);
            }

            v125 = 0;
            *(v31 + 16) = v122;
            v126 = 1 << *(v21 + 32);
            if (v126 < 64)
            {
              v127 = ~(-1 << v126);
            }

            else
            {
              v127 = -1;
            }

            v128 = v127 & *(v21 + 64);
            v129 = (v126 + 63) >> 6;
            if (v128)
            {
              do
              {
                v171 = (v128 - 1) & v128;
                v130 = __clz(__rbit64(v128)) | (v125 << 6);
LABEL_103:
                v133 = 16 * v130;
                v134 = (*(MEMORY[0x1E69E7CC8] + 48) + 16 * v130);
                v136 = *v134;
                v135 = v134[1];
                v137 = 72 * v130;
                outlined init with copy of AttributedString._AttributeValue(*(MEMORY[0x1E69E7CC8] + 56) + 72 * v130, &v177);
                v138 = (*(v31 + 48) + v133);
                *v138 = v136;
                v138[1] = v135;
                v139 = *(v31 + 56) + v137;
                *v139 = v177;
                v140 = v178;
                v141 = v179;
                v142 = v180;
                *(v139 + 64) = v181;
                *(v139 + 32) = v141;
                *(v139 + 48) = v142;
                *(v139 + 16) = v140;

                v128 = v171;
              }

              while (v171);
            }

            while (1)
            {
              v131 = v125 + 1;
              if (__OFADD__(v125, 1))
              {
                goto LABEL_144;
              }

              if (v131 >= v129)
              {
                break;
              }

              v132 = *(MEMORY[0x1E69E7CC8] + 8 * v131 + 64);
              ++v125;
              if (v132)
              {
                v171 = (v132 - 1) & v132;
                v130 = __clz(__rbit64(v132)) | (v131 << 6);
                v125 = v131;
                goto LABEL_103;
              }
            }
          }
        }

        v36 = *(v31 + 56) + 72 * v35;
        v177 = *v36;
        v38 = *(v36 + 32);
        v37 = *(v36 + 48);
        v39 = *(v36 + 64);
        v178 = *(v36 + 16);
        v179 = v38;
        v181 = v39;
        v180 = v37;
        specialized _NativeDictionary._delete(at:)(v35, v31);
LABEL_43:
        v172 = v31;
        goto LABEL_44;
      }

      v175[2] = v179;
      v175[3] = v180;
      v176 = v181;
      v175[0] = v177;
      v175[1] = v178;
      outlined init with copy of AttributedString._AttributeValue(v175, v173);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x800000018147E880);
      v26 = *(v21 + 16);
      v27 = (v25 & 1) == 0;
      v28 = __OFADD__(v26, v27);
      v29 = v26 + v27;
      if (v28)
      {
        goto LABEL_141;
      }

      v30 = v25;
      if (*(v21 + 24) >= v29)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v168 = v24;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v48 = static _DictionaryStorage.copy(original:)();
          v31 = v48;
          v49 = *(v21 + 16);
          if (v49)
          {
            v50 = (v48 + 64);
            v51 = ((1 << *(v31 + 32)) + 63) >> 6;
            if (v31 != v21 || v50 >= v21 + 8 * v51 + 64)
            {
              memmove(v50, (v21 + 64), 8 * v51);
            }

            v52 = 0;
            *(v31 + 16) = v49;
            v53 = 1 << *(v21 + 32);
            if (v53 < 64)
            {
              v54 = ~(-1 << v53);
            }

            else
            {
              v54 = -1;
            }

            v55 = v54 & *(v21 + 64);
            v56 = (v53 + 63) >> 6;
            if (!v55)
            {
              goto LABEL_34;
            }

            while (1)
            {
              v169 = (v55 - 1) & v55;
              v57 = __clz(__rbit64(v55)) | (v52 << 6);
              v58 = MEMORY[0x1E69E7CC8];
              while (1)
              {
                v61 = 16 * v57;
                v62 = *(v58 + 56);
                v63 = (*(v58 + 48) + 16 * v57);
                v65 = *v63;
                v64 = v63[1];
                v66 = 72 * v57;
                outlined init with copy of AttributedString._AttributeValue(v62 + 72 * v57, &v177);
                v67 = (*(v31 + 48) + v61);
                *v67 = v65;
                v67[1] = v64;
                v68 = *(v31 + 56) + v66;
                *v68 = v177;
                v69 = v178;
                v70 = v179;
                v71 = v180;
                *(v68 + 64) = v181;
                *(v68 + 32) = v70;
                *(v68 + 48) = v71;
                *(v68 + 16) = v69;

                v55 = v169;
                if (v169)
                {
                  break;
                }

LABEL_34:
                v58 = MEMORY[0x1E69E7CC8];
                do
                {
                  v59 = v52 + 1;
                  if (__OFADD__(v52, 1))
                  {
                    goto LABEL_143;
                  }

                  if (v59 >= v56)
                  {
                    goto LABEL_41;
                  }

                  v60 = *(MEMORY[0x1E69E7CC8] + 8 * v59 + 64);
                  ++v52;
                }

                while (!v60);
                v169 = (v60 - 1) & v60;
                v57 = __clz(__rbit64(v60)) | (v59 << 6);
                v52 = v59;
              }
            }
          }

LABEL_41:

          v24 = v168;
          if (v30)
          {
            goto LABEL_23;
          }

          goto LABEL_42;
        }

        v31 = v21;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, isUniquelyReferenced_nonNull_native);
        v31 = v21;
        v24 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x800000018147E880);
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_147;
        }
      }

      if (v30)
      {
LABEL_23:
        v40 = *(v31 + 56) + 72 * v24;
        v42 = *(v40 + 16);
        v41 = *(v40 + 32);
        v43 = *(v40 + 48);
        v181 = *(v40 + 64);
        v180 = v43;
        v177 = *v40;
        v178 = v42;
        v179 = v41;
        v44 = *(v31 + 56) + 72 * v24;
        v45 = v173[1];
        v46 = v173[2];
        v47 = v173[3];
        *(v44 + 64) = v174;
        *(v44 + 32) = v46;
        *(v44 + 48) = v47;
        *(v44 + 16) = v45;
        *v44 = v173[0];
        outlined destroy of AttributedString._AttributeValue(v175);
        goto LABEL_43;
      }

LABEL_42:
      specialized _NativeDictionary._insert(at:key:value:)(v24, 0xD00000000000001ALL, 0x800000018147E880, v173, v31);
      outlined destroy of AttributedString._AttributeValue(v175);
      v177 = 0u;
      v178 = 0u;
      v179 = 0u;
      v180 = 0u;
      v181 = 0;
      goto LABEL_43;
    }
  }

  v144 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v145 = [v144 description];

  if (!v145)
  {
    goto LABEL_134;
  }

  isTaggedPointer = _objc_isTaggedPointer(v145);
  v147 = v145;
  v111 = v147;
  if (!isTaggedPointer)
  {
    goto LABEL_114;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v147);
  if (!TaggedPointerTag)
  {
    LOWORD(v182[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v152)
    {
    }

    else
    {
      [v111 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
    }

    goto LABEL_133;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_134;
    }

LABEL_114:
    LOBYTE(v186) = 0;
    *&v191[0] = 0;
    LOBYTE(v182[0]) = 0;
    LOBYTE(v177) = 0;
    if (__CFStringIsCF())
    {
      if (!*&v191[0])
      {

        goto LABEL_134;
      }

      if (v177 == 1)
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_133:

        goto LABEL_134;
      }

LABEL_132:
      String.init(_cocoaString:)();
      goto LABEL_133;
    }

    v108 = v111;
    String.init(_nativeStorage:)();
    if (!v149)
    {
LABEL_129:
      *&v191[0] = [v108 length];
      if (!*&v191[0])
      {

        goto LABEL_134;
      }

      goto LABEL_132;
    }

LABEL_134:
    BigString.init(_:)();
    result = AttributedString.init(_:attributes:)(v191, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v186);
    *a2 = v186;
    return result;
  }

  v150 = [v111 UTF8String];
  if (v150)
  {
    String.init(utf8String:)(v150);
    if (v151)
    {

      goto LABEL_134;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_147:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double Date.VerbatimFormatStyle.Attributed.locale(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = v2[1];
  v11 = *v2;
  v12 = v6;
  v7 = v2[3];
  v13 = v2[2];
  v14 = v7;
  v15[0] = v11;
  v15[1] = v6;
  v15[2] = v13;
  v15[3] = v7;
  outlined init with copy of Date.VerbatimFormatStyle.Attributed(&v11, v10);
  outlined destroy of Date.VerbatimFormatStyle.Attributed(v15);
  v17 = v11;
  v18 = v12;
  v16 = v14;
  outlined init with copy of Date.VerbatimFormatStyle.Attributed(&v11, v10);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v8 = v18;
  *a2 = v17;
  *(a2 + 16) = v8;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  result = *&v16;
  *(a2 + 48) = v16;
  return result;
}

uint64_t static Date.VerbatimFormatStyle.Attributed.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v22[0] = *a1;
  v22[1] = v2;
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  v22[2] = a1[2];
  v22[3] = v3;
  v6 = a2[1];
  v23[0] = *a2;
  v23[1] = v6;
  v7 = a2[3];
  v9 = *a2;
  v8 = a2[1];
  v23[2] = a2[2];
  v23[3] = v7;
  v18 = v5;
  v19 = v4;
  v10 = a1[3];
  v20 = a1[2];
  v21 = v10;
  v14 = v9;
  v15 = v8;
  v11 = a2[3];
  v16 = a2[2];
  v17 = v11;
  outlined init with copy of Date.VerbatimFormatStyle(v22, v25);
  outlined init with copy of Date.VerbatimFormatStyle(v23, v25);
  v12 = specialized static Date.VerbatimFormatStyle.== infix(_:_:)(&v18, &v14);
  v24[0] = v14;
  v24[1] = v15;
  v24[2] = v16;
  v24[3] = v17;
  outlined destroy of Date.VerbatimFormatStyle(v24);
  v25[0] = v18;
  v25[1] = v19;
  v25[2] = v20;
  v25[3] = v21;
  outlined destroy of Date.VerbatimFormatStyle(v25);
  return v12 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Date.VerbatimFormatStyle.Attributed.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702060386 && a2 == 0xE400000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Date.VerbatimFormatStyle.Attributed.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.VerbatimFormatStyle.Attributed.CodingKeys and conformance Date.VerbatimFormatStyle.Attributed.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Date.VerbatimFormatStyle.Attributed.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.VerbatimFormatStyle.Attributed.CodingKeys and conformance Date.VerbatimFormatStyle.Attributed.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Date.VerbatimFormatStyle.Attributed.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation4DateV19VerbatimFormatStyleV10AttributedV10CodingKeys33_2CDBE5A76AD2A670215A09BC02CCA738LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = v1[1];
  v15 = *v1;
  v16 = v7;
  v8 = v1[3];
  v17 = v1[2];
  v18 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined init with copy of Date.VerbatimFormatStyle(&v15, &v11);
  lazy protocol witness table accessor for type Date.VerbatimFormatStyle.Attributed.CodingKeys and conformance Date.VerbatimFormatStyle.Attributed.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v15;
  v12 = v16;
  v13 = v17;
  v14 = v18;
  lazy protocol witness table accessor for type Date.VerbatimFormatStyle and conformance Date.VerbatimFormatStyle();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v10[0] = v11;
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  outlined destroy of Date.VerbatimFormatStyle(v10);
  return (*(v4 + 8))(v6, v3);
}

uint64_t Date.VerbatimFormatStyle.hash(into:)(Swift::Int a1)
{
  v3 = v1[1];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  ObjectType = swift_getObjectType();
  (*(v3 + 120))(a1, ObjectType, v3);
  v8 = swift_getObjectType();
  (*(v4 + 120))(a1, v8, v4);
  if (!v6)
  {
    goto LABEL_5;
  }

  Hasher._combine(_:)(1u);
  v9 = swift_getObjectType();
  if ((*(v5 + 48))(v9, v5))
  {
    v10 = 1;
LABEL_6:
    Hasher._combine(_:)(v10);
    return String.hash(into:)();
  }

  Hasher._combine(_:)(0);
  (*(v5 + 64))(v9, v5);
  String.hash(into:)();

  (*(v5 + 464))(&v49, v9, v5);
  v57[6] = v55;
  v58[0] = *v56;
  *(v58 + 12) = *&v56[12];
  v57[2] = v51;
  v57[3] = v52;
  v57[4] = v53;
  v57[5] = v54;
  v57[0] = v49;
  v57[1] = v50;
  if (_s10Foundation17LocalePreferencesVSgWOg(v57) == 1)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v12 = v49;
  v13 = *(&v49 + 1);
  v14 = *(&v50 + 1);
  v15 = *(&v51 + 1);
  v41 = v52;
  v42 = v53;
  v43 = v54;
  v16 = v55;
  v17 = *v56;
  v45 = *&v56[16];
  v18 = v56[24];
  v47 = v56[25];
  v19 = v56[26];
  v48 = v56[27];
  Hasher._combine(_:)(1u);
  if (v12 == 2)
  {
    v20 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v20 = v12 & 1;
  }

  v46 = v18;
  Hasher._combine(_:)(v20);
  if (v13)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v13 + 16));
    v21 = *(v13 + 16);
    if (v21)
    {
      v22 = v13 + 40;
      do
      {

        String.hash(into:)();

        v22 += 16;
        --v21;
      }

      while (v21);
    }

    v44 = v19;
    if (v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v44 = v19;
    if (v14)
    {
LABEL_16:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_19;
    }
  }

  Hasher._combine(_:)(0);
LABEL_19:
  if (v15)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v41)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v41, v23, v24, v25, v26, v27, v28);
    v29 = *(&v41 + 1);
    if (*(&v41 + 1))
    {
      goto LABEL_24;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v29 = *(&v41 + 1);
    if (*(&v41 + 1))
    {
LABEL_24:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v29, v30, v31, v32, v33, v34, v35);
      if (v42)
      {
        goto LABEL_25;
      }

      goto LABEL_31;
    }
  }

  Hasher._combine(_:)(0);
  if (v42)
  {
LABEL_25:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    if (*(&v42 + 1))
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

LABEL_31:
  Hasher._combine(_:)(0);
  if (*(&v42 + 1))
  {
LABEL_26:
    v36 = v47;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    if (v43)
    {
      goto LABEL_27;
    }

LABEL_33:
    Hasher._combine(_:)(0);
    v37 = v36;
    if (*(&v43 + 1))
    {
      goto LABEL_28;
    }

    goto LABEL_34;
  }

LABEL_32:
  v36 = v47;
  Hasher._combine(_:)(0);
  if (!v43)
  {
    goto LABEL_33;
  }

LABEL_27:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
  _CFObject.hash(into:)();
  v37 = v36;
  if (*(&v43 + 1))
  {
LABEL_28:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    goto LABEL_35;
  }

LABEL_34:
  Hasher._combine(_:)(0);
LABEL_35:
  if (v16)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    v38 = *(&v16 + 1);
    if (*(&v16 + 1))
    {
LABEL_37:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v38);
      goto LABEL_40;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v38 = *(&v16 + 1);
    if (*(&v16 + 1))
    {
      goto LABEL_37;
    }
  }

  Hasher._combine(_:)(0);
LABEL_40:
  if (v17)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v17);
    if (v45)
    {
LABEL_42:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_45;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v45)
    {
      goto LABEL_42;
    }
  }

  Hasher._combine(_:)(0);
LABEL_45:
  if (v46 == 2)
  {
    Hasher._combine(_:)(0);
    if (v37 != 2)
    {
      goto LABEL_47;
    }

LABEL_50:
    Hasher._combine(_:)(0);
    if (v44 != 2)
    {
      goto LABEL_48;
    }

LABEL_51:
    v39 = 0;
    goto LABEL_52;
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v46 & 1);
  if (v37 == 2)
  {
    goto LABEL_50;
  }

LABEL_47:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v37 & 1);
  if (v44 == 2)
  {
    goto LABEL_51;
  }

LABEL_48:
  Hasher._combine(_:)(1u);
  v39 = v44 & 1;
LABEL_52:
  Hasher._combine(_:)(v39);
  if (v48 == 2)
  {
    v40 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v40 = v48 & 1;
  }

  Hasher._combine(_:)(v40);
  outlined destroy of TermOfAddress?(&v49, &_s10Foundation17LocalePreferencesVSgMd);
  return String.hash(into:)();
}

uint64_t Date.VerbatimFormatStyle.Attributed.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation4DateV19VerbatimFormatStyleV10AttributedV10CodingKeys33_2CDBE5A76AD2A670215A09BC02CCA738LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.VerbatimFormatStyle.Attributed.CodingKeys and conformance Date.VerbatimFormatStyle.Attributed.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Date.VerbatimFormatStyle and conformance Date.VerbatimFormatStyle();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v9 = v12[1];
    *a2 = v12[0];
    a2[1] = v9;
    v10 = v12[3];
    a2[2] = v12[2];
    a2[3] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double protocol witness for FormatStyle.locale(_:) in conformance Date.VerbatimFormatStyle.Attributed@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = v2[1];
  v11 = *v2;
  v12 = v6;
  v7 = v2[3];
  v13 = v2[2];
  v14 = v7;
  v15[0] = v11;
  v15[1] = v6;
  v15[2] = v13;
  v15[3] = v7;
  outlined init with copy of Date.VerbatimFormatStyle.Attributed(&v11, v10);
  outlined destroy of Date.VerbatimFormatStyle.Attributed(v15);
  v17 = v11;
  v18 = v12;
  v16 = v14;
  outlined init with copy of Date.VerbatimFormatStyle.Attributed(&v11, v10);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v8 = v18;
  *a2 = v17;
  *(a2 + 16) = v8;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  result = *&v16;
  *(a2 + 48) = v16;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.VerbatimFormatStyle()
{
  v1 = v0[1];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  Hasher.init(_seed:)();
  ObjectType = swift_getObjectType();
  (*(v1 + 120))(v51, ObjectType, v1);
  v6 = swift_getObjectType();
  (*(v2 + 120))(v51, v6, v2);
  if (!v4)
  {
    goto LABEL_5;
  }

  Hasher._combine(_:)(1u);
  v7 = swift_getObjectType();
  if ((*(v3 + 48))(v7, v3))
  {
    v8 = 1;
LABEL_6:
    Hasher._combine(_:)(v8);
    goto LABEL_7;
  }

  Hasher._combine(_:)(0);
  (*(v3 + 64))(v7, v3);
  String.hash(into:)();

  (*(v3 + 464))(&v41, v7, v3);
  v49[6] = v47;
  v50[0] = *v48;
  *(v50 + 12) = *&v48[12];
  v49[2] = v43;
  v49[3] = v44;
  v49[4] = v45;
  v49[5] = v46;
  v49[0] = v41;
  v49[1] = v42;
  if (_s10Foundation17LocalePreferencesVSgWOg(v49) == 1)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v10 = v41;
  v11 = *(&v41 + 1);
  v12 = *(&v42 + 1);
  v13 = *(&v43 + 1);
  v34 = v44;
  v35 = v45;
  v36 = v46;
  v14 = v47;
  v37 = *v48;
  v38 = *&v48[16];
  v39 = v48[24];
  v40 = v48[25];
  v15 = v48[26];
  v16 = v48[27];
  Hasher._combine(_:)(1u);
  if (v10 == 2)
  {
    v17 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v17 = v10 & 1;
  }

  Hasher._combine(_:)(v17);
  if (v11)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v11 + 16));
    v18 = *(v11 + 16);
    if (v18)
    {
      v19 = v11 + 40;
      do
      {

        String.hash(into:)();

        v19 += 16;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v12)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v13)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v34)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v51, v34, v20, v21, v22, v23, v24, v25);
    if (*(&v34 + 1))
    {
      goto LABEL_25;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(&v34 + 1))
    {
LABEL_25:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v51, *(&v34 + 1), v26, v27, v28, v29, v30, v31);
      if (v35)
      {
        goto LABEL_26;
      }

      goto LABEL_31;
    }
  }

  Hasher._combine(_:)(0);
  if (v35)
  {
LABEL_26:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    if (*(&v35 + 1))
    {
      goto LABEL_27;
    }

LABEL_32:
    Hasher._combine(_:)(0);
    if (v36)
    {
      goto LABEL_28;
    }

    goto LABEL_33;
  }

LABEL_31:
  Hasher._combine(_:)(0);
  if (!*(&v35 + 1))
  {
    goto LABEL_32;
  }

LABEL_27:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
  _CFObject.hash(into:)();
  if (v36)
  {
LABEL_28:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    goto LABEL_34;
  }

LABEL_33:
  Hasher._combine(_:)(0);
LABEL_34:
  if (*(&v36 + 1))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    _CFObject.hash(into:)();
    if (v14)
    {
LABEL_36:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
      _CFObject.hash(into:)();
      goto LABEL_39;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v14)
    {
      goto LABEL_36;
    }
  }

  Hasher._combine(_:)(0);
LABEL_39:
  if (*(&v14 + 1))
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v51, *(&v14 + 1));
    if (v37)
    {
      goto LABEL_41;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v37)
    {
LABEL_41:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v51, v37);
      if (v38)
      {
        goto LABEL_42;
      }

LABEL_46:
      Hasher._combine(_:)(0);
      if (v39 == 2)
      {
        goto LABEL_43;
      }

LABEL_47:
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v39 & 1);
      goto LABEL_48;
    }
  }

  Hasher._combine(_:)(0);
  if (!v38)
  {
    goto LABEL_46;
  }

LABEL_42:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (v39 != 2)
  {
    goto LABEL_47;
  }

LABEL_43:
  Hasher._combine(_:)(0);
LABEL_48:
  if (v40 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v40 & 1);
  }

  if (v15 == 2)
  {
    v32 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v32 = v15 & 1;
  }

  Hasher._combine(_:)(v32);
  if (v16 == 2)
  {
    v33 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v33 = v16 & 1;
  }

  Hasher._combine(_:)(v33);
  outlined destroy of TermOfAddress?(&v41, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_7:
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Date.VerbatimFormatStyle.Attributed(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v22[0] = *a1;
  v22[1] = v2;
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  v22[2] = a1[2];
  v22[3] = v3;
  v6 = a2[1];
  v23[0] = *a2;
  v23[1] = v6;
  v7 = a2[3];
  v9 = *a2;
  v8 = a2[1];
  v23[2] = a2[2];
  v23[3] = v7;
  v18 = v5;
  v19 = v4;
  v10 = a1[3];
  v20 = a1[2];
  v21 = v10;
  v14 = v9;
  v15 = v8;
  v11 = a2[3];
  v16 = a2[2];
  v17 = v11;
  outlined init with copy of Date.VerbatimFormatStyle(v22, v25);
  outlined init with copy of Date.VerbatimFormatStyle(v23, v25);
  v12 = specialized static Date.VerbatimFormatStyle.== infix(_:_:)(&v18, &v14);
  v24[0] = v14;
  v24[1] = v15;
  v24[2] = v16;
  v24[3] = v17;
  outlined destroy of Date.VerbatimFormatStyle(v24);
  v25[0] = v18;
  v25[1] = v19;
  v25[2] = v20;
  v25[3] = v21;
  outlined destroy of Date.VerbatimFormatStyle(v25);
  return v12 & 1;
}

uint64_t Date.VerbatimFormatStyle.attributedStyle.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return outlined init with copy of Date.VerbatimFormatStyle(v7, &v6);
}

void Date.VerbatimFormatStyle.consuming(_:startingAt:in:)(unint64_t a1@<X2>, unint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = *(v3 + 6);
  v7 = *(v3 + 7);
  LOBYTE(v42) = 0;
  *(&v42 + 1) = 0xC1CD27E440000000;
  v8 = v3[1];
  v43 = v3[2];
  v44 = *v3;
  v45 = v8;
  *&v46 = v6;
  *(&v46 + 1) = v7;
  v9 = a1 >> 14;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  if (v9 >= a2 >> 14 || (v39 = v44, v40 = v45, v41 = v46, v37 = v42, v38 = v43, (v10 = Date.ParseStrategy.formatter.getter()) == 0))
  {
    outlined destroy of Date.ParseStrategy(&v42);
    goto LABEL_6;
  }

  v11 = v10;
  v12 = String.subscript.getter();
  v16 = v15;
  if (v12 ^ v13) < 0x4000 || (v17 = v12, v18 = v13, v19 = v14, (*(v11 + 24) & 1) == 0) && (Substring.subscript.getter(), v20 = Character.isWhitespace.getter(), , (v20))
  {
    outlined destroy of Date.ParseStrategy(&v42);

LABEL_6:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
    return;
  }

  *&v37 = v17;
  *(&v37 + 1) = v18;
  *&v38 = v19;
  *(&v38 + 1) = v16;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  v36 = v16;

  v21 = String.init<A>(_:)();
  v22 = v19;
  v24 = v23;
  udat_getCalendar();
  v35 = v22;
  ucal_clone();
  v25 = MEMORY[0x1865CB200](v21, v24);
  if (v25)
  {
    v26 = v25;
    v27 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v25, 0);

    v28 = specialized Sequence._copySequenceContents(initializing:)(&v37, (v27 + 4), v26, v21, v24);

    if (v28 != v26)
    {
      goto LABEL_22;
    }

    v29 = v27;
    v30 = v36;
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
    v30 = v36;
  }

  lazy protocol witness table accessor for type String and conformance String();
  v31 = String.Index.utf16Offset<A>(in:)();

  if (v31 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v31 > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  LODWORD(v37) = v31;
  if (v29[2] >> 31)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  udat_parseCalendar();

  if (v31 == v37)
  {
    ucal_close();
    outlined destroy of Date.ParseStrategy(&v42);

    goto LABEL_6;
  }

  ucal_getMillis();
  v33 = v32 / 1000.0 + -978307200.0;
  ucal_close();
  *&v37 = v17;
  *(&v37 + 1) = v18;
  *&v38 = v35;
  *(&v38 + 1) = v30;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  v34 = String.Index.init<A>(utf16Offset:in:)();
  outlined destroy of Date.ParseStrategy(&v42);

  *a3 = v34;
  *(a3 + 8) = v33;
  *(a3 + 16) = 0;
}