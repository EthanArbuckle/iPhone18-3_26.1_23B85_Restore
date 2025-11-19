uint64_t protocol witness for RegexComponent.regex.getter in conformance Date.VerbatimFormatStyle(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.VerbatimFormatStyle and conformance Date.VerbatimFormatStyle();

  return MEMORY[0x1EEE6E5F8](a1, v2);
}

Foundation::Date_optional __swiftcall Date.VerbatimFormatStyle.discreteInput(before:)(Foundation::Date before)
{
  v3 = v2;
  *&v7._time = *v1;
  result = Date.VerbatimFormatStyle.bound(for:isLower:)(v7, &v7);
  v4 = v9;
  if (v9 == 2)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v8;
    if (v9)
    {
      v6 = 0.0 - v8;
      if (0.0 - v8 != INFINITY)
      {
        *&v6 += (*&v6 >> 63) | 1;
      }

      v5 = -v6;
    }
  }

  *v3 = v5;
  *(v3 + 8) = v4 == 2;
  result.value = *&v5;
  return result;
}

Swift::tuple_bound_Foundation_Date_includedInRangeOfInput_Bool_optional __swiftcall Date.VerbatimFormatStyle.bound(for:isLower:)(Foundation::Date a1, Swift::Bool isLower)
{
  v5 = v2;
  v6 = v3;
  v7 = v4[1];
  v22 = *v4;
  v23 = v7;
  v8 = v4[3];
  v24 = v4[2];
  v25 = v8;
  v20 = v22;
  v21 = v7;
  v26 = *v4;
  v27 = v7;
  v9 = *isLower;
  outlined init with copy of Calendar(&v27, &v18);
  outlined init with copy of TimeZone(&v26, &v18);
  Calendar.timeZone.setter(&v20);
  v20 = v21;
  v17 = v9;
  v10 = one-time initialization token for updateScheduleCache;
  v11 = swift_unknownObjectRetain();
  if (v10 != -1)
  {
    v11 = swift_once();
  }

  v12 = static ICUDateFormatter.DateFormatInfo.updateScheduleCache;
  MEMORY[0x1EEE9AC00](v11);
  os_unfair_lock_lock((v12 + 24));
  partial apply for closure #1 in static ICUDateFormatter.DateFormatInfo.cachedUpdateSchedule(for:)((v12 + 16), &v18);
  os_unfair_lock_unlock((v12 + 24));
  v15 = v18;
  v16 = v19;
  Calendar.bound(for:isLower:updateSchedule:)(&v17, v5 & 1, &v15, v6);
  swift_unknownObjectRelease();
  v13 = swift_unknownObjectRelease();
  result.value.bound._time = v14;
  result.value.includedInRangeOfInput = v13;
  return result;
}

Foundation::Date_optional __swiftcall Date.VerbatimFormatStyle.discreteInput(after:)(Foundation::Date after)
{
  v3 = v2;
  *&v6._time = *v1;
  result = Date.VerbatimFormatStyle.bound(for:isLower:)(v6, &v6);
  v4 = v8;
  if (v8 == 2)
  {
    v5 = 0.0;
  }

  else if (v8)
  {
    v5 = v7 + 0.0;
    if (v7 != INFINITY)
    {
      *&v5 += (*&v5 >> 63) | 1;
    }
  }

  else
  {
    v5 = v7;
  }

  *v3 = v5;
  *(v3 + 8) = v4 == 2;
  result.value = *&v5;
  return result;
}

Foundation::Date_optional __swiftcall Date.VerbatimFormatStyle.Attributed.discreteInput(before:)(Foundation::Date before)
{
  v2 = Date.VerbatimFormatStyle.Attributed.discreteInput(before:)(v1, Date.VerbatimFormatStyle.discreteInput(before:));
  result.value = *&v3;
  result.is_nil = v2;
  return result;
}

Foundation::Date_optional __swiftcall Date.VerbatimFormatStyle.Attributed.discreteInput(after:)(Foundation::Date after)
{
  v2 = Date.VerbatimFormatStyle.Attributed.discreteInput(before:)(v1, Date.VerbatimFormatStyle.discreteInput(after:));
  result.value = *&v3;
  result.is_nil = v2;
  return result;
}

uint64_t Date.VerbatimFormatStyle.Attributed.discreteInput(before:)(uint64_t *a1, void (*a2)(uint64_t *))
{
  v4 = *a1;
  v5 = v2[1];
  v11[0] = *v2;
  v11[1] = v5;
  v6 = v2[3];
  v11[2] = v2[2];
  v11[3] = v6;
  v10 = v4;
  outlined init with copy of Date.VerbatimFormatStyle(v11, v12);
  a2(&v10);
  v7 = v2[1];
  v12[0] = *v2;
  v12[1] = v7;
  v8 = v2[3];
  v12[2] = v2[2];
  v12[3] = v8;
  return outlined destroy of Date.VerbatimFormatStyle(v12);
}

void Date.VerbatimFormatStyle.input(before:)(double *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  v3 = v7;
  v6 = 1;
  static Calendar.nextAccuracyStep(for:direction:)(&v7, &v6, &v8);
  v4 = v8 >= v3;
  v5 = v8;
  if (v8 >= v3)
  {
    v5 = 0.0;
  }

  *a2 = v5;
  *(a2 + 8) = v4;
}

void Date.VerbatimFormatStyle.input(after:)(double *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  v3 = v7;
  v6 = 0;
  static Calendar.nextAccuracyStep(for:direction:)(&v7, &v6, &v8);
  v4 = v3 >= v8;
  v5 = v8;
  if (v3 >= v8)
  {
    v5 = 0.0;
  }

  *a2 = v5;
  *(a2 + 8) = v4;
}

uint64_t protocol witness for DiscreteFormatStyle.discreteInput(before:) in conformance Date.VerbatimFormatStyle.Attributed(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  v6 = *a1;
  v7 = v4[1];
  v13[0] = *v4;
  v13[1] = v7;
  v8 = v4[3];
  v13[2] = v4[2];
  v13[3] = v8;
  v12 = v6;
  outlined init with copy of Date.VerbatimFormatStyle(v13, v14);
  a4(&v12);
  v9 = v4[1];
  v14[0] = *v4;
  v14[1] = v9;
  v10 = v4[3];
  v14[2] = v4[2];
  v14[3] = v10;
  return outlined destroy of Date.VerbatimFormatStyle(v14);
}

uint64_t _sSn10FoundationAA16AttributedStringV5IndexVRszrlE6_range2inSnyAEGSgSnySSADVG_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 40);
  v29[0] = *(a3 + 24);
  v29[1] = v8;
  v29[2] = *(a3 + 56);
  v30[0] = v29[0];
  v30[1] = v8;
  v31 = *(a3 + 56);
  outlined init with copy of Rope<BigString._Chunk>._Node?(v30, v28);
  v9 = BigString.index(from:)(a1);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  outlined destroy of BigString(v29);
  if (v15 == 2 || (v16 = *(a3 + 40), v28[0] = *(a3 + 24), v28[1] = v16, v28[2] = *(a3 + 56), v32[0] = v28[0], v32[1] = v16, v33 = *(a3 + 56), outlined init with copy of Rope<BigString._Chunk>._Node?(v32, v27), v17 = BigString.index(from:)(a2), v26 = v18, v20 = v19, v22 = v21, outlined destroy of BigString(v28), v22 == 2) || (v23 = *(a3 + 40), v27[0] = *(a3 + 24), v27[1] = v23, v27[2] = *(a3 + 56), v9 >> 10 < BigString.startIndex.getter() >> 10) || BigString.endIndex.getter() >> 10 < v17 >> 10)
  {

    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 2;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
  }

  else
  {
    v25 = *(a3 + 16);

    *a4 = v9;
    *(a4 + 8) = v11;
    *(a4 + 16) = v13;
    *(a4 + 24) = v15;
    *(a4 + 32) = v25;
    *(a4 + 40) = v17;
    *(a4 + 48) = v26;
    *(a4 + 56) = v20;
    *(a4 + 64) = v22;
    *(a4 + 72) = v25;
  }

  return result;
}

uint64_t specialized static Date.VerbatimFormatStyle.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = *(a1 + 6);
  v5 = *(a1 + 7);
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  v8 = *(a2 + 6);
  v9 = *(a2 + 7);
  v10 = *a1;
  v15 = a1[1];
  v16 = a2[1];
  v17 = *a2;
  v18 = v10;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = specialized static TimeZone.== infix(_:_:)(&v18, &v17);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v17 = v16;
  v18 = v15;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = specialized static Calendar.== infix(_:_:)(&v18, &v17);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    *&v18 = v2;
    *(&v18 + 1) = v3;
    if (v6)
    {
      *&v17 = v6;
      *(&v17 + 1) = v7;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain();
      v13 = specialized static Locale.== infix(_:_:)(&v18, &v17);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v13)
      {
        goto LABEL_8;
      }

      return 0;
    }

LABEL_11:
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 0;
  }

  if (v6)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (v4 == v8 && v5 == v9)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t lazy protocol witness table accessor for type Date.VerbatimFormatStyle.CodingKeys and conformance Date.VerbatimFormatStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.CodingKeys and conformance Date.VerbatimFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.CodingKeys and conformance Date.VerbatimFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.CodingKeys and conformance Date.VerbatimFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.CodingKeys and conformance Date.VerbatimFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.CodingKeys and conformance Date.VerbatimFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.CodingKeys and conformance Date.VerbatimFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.CodingKeys and conformance Date.VerbatimFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.CodingKeys and conformance Date.VerbatimFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.CodingKeys and conformance Date.VerbatimFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.CodingKeys and conformance Date.VerbatimFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.CodingKeys and conformance Date.VerbatimFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.CodingKeys and conformance Date.VerbatimFormatStyle.CodingKeys);
  }

  return result;
}

uint64_t specialized Date.VerbatimFormatStyle.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x615074616D726F66 && a2 == 0xED00006E72657474)
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

uint64_t specialized Date.VerbatimFormatStyle.Attributed.subscript.setter(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return swift_setAtWritableKeyPath();
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.VerbatimFormatStyle.Attributed.CodingKeys and conformance Date.VerbatimFormatStyle.Attributed.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed.CodingKeys and conformance Date.VerbatimFormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed.CodingKeys and conformance Date.VerbatimFormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed.CodingKeys and conformance Date.VerbatimFormatStyle.Attributed.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed.CodingKeys and conformance Date.VerbatimFormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed.CodingKeys and conformance Date.VerbatimFormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed.CodingKeys and conformance Date.VerbatimFormatStyle.Attributed.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed.CodingKeys and conformance Date.VerbatimFormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed.CodingKeys and conformance Date.VerbatimFormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed.CodingKeys and conformance Date.VerbatimFormatStyle.Attributed.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed.CodingKeys and conformance Date.VerbatimFormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed.CodingKeys and conformance Date.VerbatimFormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed.CodingKeys and conformance Date.VerbatimFormatStyle.Attributed.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed()
{
  result = lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed;
  if (!lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed;
  if (!lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed;
  if (!lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed;
  if (!lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed;
  if (!lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ICUError and conformance ICUError()
{
  result = lazy protocol witness table cache variable for type ICUError and conformance ICUError;
  if (!lazy protocol witness table cache variable for type ICUError and conformance ICUError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICUError and conformance ICUError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.ParseStrategy and conformance Date.ParseStrategy()
{
  result = lazy protocol witness table cache variable for type Date.ParseStrategy and conformance Date.ParseStrategy;
  if (!lazy protocol witness table cache variable for type Date.ParseStrategy and conformance Date.ParseStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ParseStrategy and conformance Date.ParseStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ParseStrategy and conformance Date.ParseStrategy;
  if (!lazy protocol witness table cache variable for type Date.ParseStrategy and conformance Date.ParseStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ParseStrategy and conformance Date.ParseStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ParseStrategy and conformance Date.ParseStrategy;
  if (!lazy protocol witness table cache variable for type Date.ParseStrategy and conformance Date.ParseStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ParseStrategy and conformance Date.ParseStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ParseStrategy and conformance Date.ParseStrategy;
  if (!lazy protocol witness table cache variable for type Date.ParseStrategy and conformance Date.ParseStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ParseStrategy and conformance Date.ParseStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ParseStrategy and conformance Date.ParseStrategy;
  if (!lazy protocol witness table cache variable for type Date.ParseStrategy and conformance Date.ParseStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ParseStrategy and conformance Date.ParseStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ParseStrategy and conformance Date.ParseStrategy;
  if (!lazy protocol witness table cache variable for type Date.ParseStrategy and conformance Date.ParseStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ParseStrategy and conformance Date.ParseStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ParseStrategy and conformance Date.ParseStrategy;
  if (!lazy protocol witness table cache variable for type Date.ParseStrategy and conformance Date.ParseStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ParseStrategy and conformance Date.ParseStrategy);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Date.VerbatimFormatStyle(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Date.VerbatimFormatStyle.Attributed(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Date.VerbatimFormatStyle(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Date.VerbatimFormatStyle(uint64_t result, int a2, int a3)
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

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  if (qword_181222F88[a1] == qword_181222F88[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

{
  if (qword_181222FC0[a1] == qword_181222FC0[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

{
  if (qword_181222FF8[a1] == qword_181222FF8[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 65;
  }

  else
  {
    v3 = 83;
  }

  if (a2 >= 2)
  {

    MEMORY[0x1865CB0E0](v3, 0xE100000000000000);
    if (a2 != 2)
    {
      MEMORY[0x1865CB0E0](v3, 0xE100000000000000);
      if (a2 != 3)
      {
        MEMORY[0x1865CB0E0](v3, 0xE100000000000000);
        if (a2 != 4)
        {
          MEMORY[0x1865CB0E0](v3, 0xE100000000000000);
          if (a2 != 5)
          {
            MEMORY[0x1865CB0E0](v3, 0xE100000000000000);
            if (a2 != 6)
            {
              MEMORY[0x1865CB0E0](v3, 0xE100000000000000);
              if (a2 != 7)
              {
                MEMORY[0x1865CB0E0](v3, 0xE100000000000000);
                if (a2 != 8)
                {
                  MEMORY[0x1865CB0E0](v3, 0xE100000000000000);
                }
              }
            }
          }
        }
      }
    }
  }

  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

void *static Date.FormatStyle.Symbol.Hour.defaultDigits(amPM:)@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = 0x2000406u >> (8 * *result);
  }

  return result;
}

_BYTE *static Date.FormatStyle.Symbol.TimeZone.genericName(_:)@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = 7;
  }

  else
  {
    v2 = 6;
  }

  *a2 = v2;
  return result;
}

void Date.FormatStyle.Symbol.Era.hash(into:)()
{
  if (*v0 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }
}

Swift::Int Date.FormatStyle.Symbol.Era.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.Era()
{
  if (*v0 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.Era()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

BOOL static Date.FormatStyle.Symbol.Year.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (v3 == 255)
  {
    if (v4 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == 255)
    {
      return 0;
    }

    v5 = *a2;
    v6 = Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(*a1, v3);
    v8 = v7;
    if (v6 != Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(v5, v4) || v8 != v9)
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return (v11 & 1) != 0;
    }
  }

  return 1;
}

void Date.FormatStyle.Symbol.Year.hash(into:)()
{
  v1 = *(v0 + 8);
  if (v1 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *v0;
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(v2, v1);
    String.hash(into:)();
  }
}

Swift::Int Date.FormatStyle.Symbol.Year.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(v1, v2);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatStyle.Symbol.Year()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(v1, v2);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.Year()
{
  v1 = *(v0 + 8);
  if (v1 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *v0;
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(v2, v1);
    String.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.Year()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(v1, v2);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Date.FormatStyle.Symbol.Year(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (v3 == 255)
  {
    if (v4 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == 255)
    {
      return 0;
    }

    v5 = *a2;
    v6 = Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(*a1, v3);
    v8 = v7;
    if (v6 != Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(v5, v4) || v8 != v9)
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return (v11 & 1) != 0;
    }
  }

  return 1;
}

void Date.FormatStyle.Symbol.YearForWeekOfYear.hash(into:)()
{
  if (*(v0 + 9) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *v0;
    v2 = *(v0 + 8);
    Hasher._combine(_:)(1u);
    if ((v2 & 1) == 0)
    {
      v3 = 10;
      if (v1 < 10)
      {
        v3 = v1;
      }

      if (v3 <= 1)
      {
        v4 = 1;
      }

      else
      {
        v4 = v3;
      }

      v5._countAndFlagsBits = 89;
      v5._object = 0xE100000000000000;
      String.init(repeating:count:)(v5, v4);
    }

    String.hash(into:)();
  }
}

Swift::Int Date.FormatStyle.Symbol.YearForWeekOfYear.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  Hasher.init(_seed:)();
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v2 & 1) == 0)
    {
      v4 = 10;
      if (v1 < 10)
      {
        v4 = v1;
      }

      if (v4 <= 1)
      {
        v5 = 1;
      }

      else
      {
        v5 = v4;
      }

      v6._countAndFlagsBits = 89;
      v6._object = 0xE100000000000000;
      String.init(repeating:count:)(v6, v5);
    }

    String.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.YearForWeekOfYear()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  Hasher.init(_seed:)();
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v2 & 1) == 0)
    {
      v4 = 10;
      if (v1 < 10)
      {
        v4 = v1;
      }

      if (v4 <= 1)
      {
        v5 = 1;
      }

      else
      {
        v5 = v4;
      }

      v6._countAndFlagsBits = 89;
      v6._object = 0xE100000000000000;
      String.init(repeating:count:)(v6, v5);
    }

    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void Date.FormatStyle.Symbol.CyclicYear.hash(into:)()
{
  if (*v0 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }
}

Swift::Int Date.FormatStyle.Symbol.CyclicYear.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.CyclicYear()
{
  if (*v0 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.CyclicYear()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void Date.FormatStyle.Symbol.Quarter.hash(into:)()
{
  v1 = *v0;
  if (v1 == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }
}

Swift::Int Date.FormatStyle.Symbol.Quarter.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.Quarter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t static Date.FormatStyle.Symbol.Quarter.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == 5)
  {
    if (v4 == 5)
    {
      return 1;
    }
  }

  else if (v4 != 5 && (a3(v3, v4) & 1) != 0)
  {
    return 1;
  }

  return 0;
}

void Date.FormatStyle.Symbol.Month.hash(into:)()
{
  v1 = *v0;
  if (v1 == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }
}

Swift::Int Date.FormatStyle.Symbol.Month.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.Month()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Date.FormatStyle.Symbol.Quarter(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = *a2;
  if (v5 != 5)
  {
    return v6 != 5 && (a5(v5, v6) & 1) != 0;
  }

  return v6 == 5;
}

void Date.FormatStyle.Symbol.Week.hash(into:)()
{
  if (*v0 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }
}

Swift::Int Date.FormatStyle.Symbol.Week.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.Week()
{
  if (*v0 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.Week()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t static Date.FormatStyle.Symbol.YearForWeekOfYear.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void, void))
{
  if (*(a1 + 9))
  {
    if (*(a2 + 9))
    {
      return 1;
    }
  }

  else if (*(a2 + 9) & 1) == 0 && (a3(*a1, *(a1 + 8) & 1, *a2, *(a2 + 8) & 1))
  {
    return 1;
  }

  return 0;
}

void Date.FormatStyle.Symbol.Day.hash(into:)()
{
  if (*(v0 + 9) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *v0;
    v2 = *(v0 + 8);
    Hasher._combine(_:)(1u);
    if ((v2 & 1) == 0)
    {
      v3 = 10;
      if (v1 < 10)
      {
        v3 = v1;
      }

      if (v3 <= 1)
      {
        v4 = 1;
      }

      else
      {
        v4 = v3;
      }

      v5._countAndFlagsBits = 103;
      v5._object = 0xE100000000000000;
      String.init(repeating:count:)(v5, v4);
    }

    String.hash(into:)();
  }
}

Swift::Int Date.FormatStyle.Symbol.Day.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  Hasher.init(_seed:)();
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v2 & 1) == 0)
    {
      v4 = 10;
      if (v1 < 10)
      {
        v4 = v1;
      }

      if (v4 <= 1)
      {
        v5 = 1;
      }

      else
      {
        v5 = v4;
      }

      v6._countAndFlagsBits = 103;
      v6._object = 0xE100000000000000;
      String.init(repeating:count:)(v6, v5);
    }

    String.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.Day()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  Hasher.init(_seed:)();
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v2 & 1) == 0)
    {
      v4 = 10;
      if (v1 < 10)
      {
        v4 = v1;
      }

      if (v4 <= 1)
      {
        v5 = 1;
      }

      else
      {
        v5 = v4;
      }

      v6._countAndFlagsBits = 103;
      v6._object = 0xE100000000000000;
      String.init(repeating:count:)(v6, v5);
    }

    String.hash(into:)();
  }

  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Date.FormatStyle.Symbol.YearForWeekOfYear(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void, void))
{
  if ((*(a1 + 9) & 1) == 0)
  {
    return (*(a2 + 9) & 1) == 0 && (a5(*a1, *(a1 + 8) & 1, *a2, *(a2 + 8) & 1) & 1) != 0;
  }

  return (*(a2 + 9) & 1) != 0;
}

void Date.FormatStyle.Symbol.DayOfYear.hash(into:)()
{
  if (*v0 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }
}

Swift::Int Date.FormatStyle.Symbol.DayOfYear.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.DayOfYear()
{
  if (*v0 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.DayOfYear()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t static Date.FormatStyle.Symbol.Weekday.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 6)
  {
    if (v3 == 6)
    {
      return 1;
    }
  }

  else if (v3 != 6 && (specialized == infix<A>(_:_:)(v2, v3) & 1) != 0)
  {
    return 1;
  }

  return 0;
}

void Date.FormatStyle.Symbol.Weekday.hash(into:)()
{
  v1 = *v0;
  if (v1 == 6)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }
}

Swift::Int Date.FormatStyle.Symbol.Weekday.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 6)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.Weekday()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 6)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Date.FormatStyle.Symbol.Weekday(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 6)
  {
    return v3 != 6 && (specialized == infix<A>(_:_:)(v2, v3) & 1) != 0;
  }

  return v3 == 6;
}

uint64_t static Date.FormatStyle.Symbol.DayPeriod.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 9)
  {
    if (v3 == 9)
    {
      return 1;
    }
  }

  else if (v3 != 9 && (specialized == infix<A>(_:_:)(v2, v3) & 1) != 0)
  {
    return 1;
  }

  return 0;
}

void Date.FormatStyle.Symbol.DayPeriod.hash(into:)()
{
  if (*v0 == 9)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    specialized RawRepresentable<>.hash(into:)();
  }
}

Swift::Int Date.FormatStyle.Symbol.DayPeriod.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 9)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    specialized RawRepresentable<>.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatStyle.Symbol.DayPeriod()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 9)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    specialized RawRepresentable<>.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.DayPeriod()
{
  if (*v0 == 9)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    specialized RawRepresentable<>.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.DayPeriod()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 9)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    specialized RawRepresentable<>.hash(into:)();
  }

  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Date.FormatStyle.Symbol.DayPeriod(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 9)
  {
    return v3 != 9 && (specialized == infix<A>(_:_:)(v2, v3) & 1) != 0;
  }

  return v3 == 9;
}

uint64_t static Date.FormatStyle.Symbol.Hour.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 14)
  {
    return v3 == 14;
  }

  if (v3 == 14)
  {
    return 0;
  }

  v5 = Date.FormatStyle.Symbol.SymbolType.HourOption.rawValue.getter(v2);
  v7 = v6;
  if (v5 != Date.FormatStyle.Symbol.SymbolType.HourOption.rawValue.getter(v3) || v7 != v8)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v10 & 1) != 0;
  }

  return 1;
}

void Date.FormatStyle.Symbol.Hour.hash(into:)()
{
  v1 = *v0;
  if (v1 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.HourOption.rawValue.getter(v1);
    String.hash(into:)();
  }
}

Swift::Int Date.FormatStyle.Symbol.Hour.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.HourOption.rawValue.getter(v1);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatStyle.Symbol.Hour()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.HourOption.rawValue.getter(v1);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.Hour()
{
  v1 = *v0;
  if (v1 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.HourOption.rawValue.getter(v1);
    String.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.Hour()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.HourOption.rawValue.getter(v1);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Date.FormatStyle.Symbol.Hour(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 14)
  {
    return v3 == 14;
  }

  if (v3 == 14)
  {
    return 0;
  }

  v5 = Date.FormatStyle.Symbol.SymbolType.HourOption.rawValue.getter(v2);
  v7 = v6;
  if (v5 != Date.FormatStyle.Symbol.SymbolType.HourOption.rawValue.getter(v3) || v7 != v8)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v10 & 1) != 0;
  }

  return 1;
}

void Date.FormatStyle.Symbol.Minute.hash(into:)()
{
  if (*v0 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }
}

Swift::Int Date.FormatStyle.Symbol.Minute.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.Minute()
{
  if (*v0 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.Minute()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void Date.FormatStyle.Symbol.Second.hash(into:)()
{
  if (*v0 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }
}

Swift::Int Date.FormatStyle.Symbol.Second.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.Second()
{
  if (*v0 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.Second()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t static Date.FormatStyle.Symbol.SecondFraction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 255)
  {
    if (v3 == 255)
    {
      return 1;
    }
  }

  else if (v3 != 255 && (specialized == infix<A>(_:_:)(*a1, v2 & 1, *a2, v3 & 1) & 1) != 0)
  {
    return 1;
  }

  return 0;
}

void Date.FormatStyle.Symbol.SecondFraction.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  if (v3 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *v1;
    Hasher._combine(_:)(1u);

    specialized RawRepresentable<>.hash(into:)(a1, v4, v3 & 1);
  }
}

Swift::Int Date.FormatStyle.Symbol.SecondFraction.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    specialized RawRepresentable<>.hash(into:)(v4, v1, v2 & 1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatStyle.Symbol.SecondFraction()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    specialized RawRepresentable<>.hash(into:)(v4, v1, v2 & 1);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.SecondFraction(uint64_t a1)
{
  v3 = *(v1 + 8);
  if (v3 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *v1;
    Hasher._combine(_:)(1u);

    specialized RawRepresentable<>.hash(into:)(a1, v4, v3 & 1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.SecondFraction()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    specialized RawRepresentable<>.hash(into:)(v4, v1, v2 & 1);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Date.FormatStyle.Symbol.SecondFraction(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 255)
  {
    if (v3 == 255)
    {
      return 1;
    }
  }

  else if (v3 != 255 && (specialized == infix<A>(_:_:)(*a1, v2 & 1, *a2, v3 & 1) & 1) != 0)
  {
    return 1;
  }

  return 0;
}

uint64_t static Date.FormatStyle.Symbol.TimeZone.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 12)
  {
    return v3 == 12;
  }

  if (v3 == 12)
  {
    return 0;
  }

  v5 = Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption.rawValue.getter(v2);
  v7 = v6;
  if (v5 != Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption.rawValue.getter(v3) || v7 != v8)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v10 & 1) != 0;
  }

  return 1;
}

void Date.FormatStyle.Symbol.TimeZone.hash(into:)()
{
  v1 = *v0;
  if (v1 == 12)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption.rawValue.getter(v1);
    String.hash(into:)();
  }
}

Swift::Int Date.FormatStyle.Symbol.TimeZone.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 12)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption.rawValue.getter(v1);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatStyle.Symbol.TimeZone()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 12)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption.rawValue.getter(v1);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.TimeZone()
{
  v1 = *v0;
  if (v1 == 12)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption.rawValue.getter(v1);
    String.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.TimeZone()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 12)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption.rawValue.getter(v1);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Date.FormatStyle.Symbol.TimeZone(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 12)
  {
    return v3 == 12;
  }

  if (v3 == 12)
  {
    return 0;
  }

  v5 = Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption.rawValue.getter(v2);
  v7 = v6;
  if (v5 != Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption.rawValue.getter(v3) || v7 != v8)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v10 & 1) != 0;
  }

  return 1;
}

uint64_t static Date.FormatStyle.Symbol.StandaloneQuarter.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE100000000000000;
  v4 = 113;
  v5 = *a2;
  v6 = 0xE300000000000000;
  v7 = 7434609;
  v8 = 0xE400000000000000;
  v9 = 1903260017;
  if (v2 != 3)
  {
    v9 = 0x7171717171;
    v8 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  if (*a1)
  {
    v4 = 29041;
    v3 = 0xE200000000000000;
  }

  if (*a1 <= 1u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  if (v2 <= 1)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  v12 = 0xE100000000000000;
  v13 = 113;
  v14 = 0xE300000000000000;
  v15 = 7434609;
  v16 = 0xE400000000000000;
  v17 = 1903260017;
  if (v5 != 3)
  {
    v17 = 0x7171717171;
    v16 = 0xE500000000000000;
  }

  if (v5 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  if (*a2)
  {
    v13 = 29041;
    v12 = 0xE200000000000000;
  }

  if (*a2 <= 1u)
  {
    v18 = v13;
  }

  else
  {
    v18 = v15;
  }

  if (*a2 <= 1u)
  {
    v19 = v12;
  }

  else
  {
    v19 = v14;
  }

  if (v10 == v18 && v11 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

uint64_t Date.FormatStyle.Symbol.StandaloneQuarter.hash(into:)()
{
  String.hash(into:)();
}

Swift::Int Date.FormatStyle.Symbol.StandaloneQuarter.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t static Date.FormatStyle.Symbol.StandaloneMonth.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE100000000000000;
  v4 = 76;
  v5 = *a2;
  v6 = 0xE300000000000000;
  v7 = 5000268;
  v8 = 0xE400000000000000;
  v9 = 1280068684;
  if (v2 != 3)
  {
    v9 = 0x4C4C4C4C4CLL;
    v8 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  if (*a1)
  {
    v4 = 19532;
    v3 = 0xE200000000000000;
  }

  if (*a1 <= 1u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  if (v2 <= 1)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  v12 = 0xE100000000000000;
  v13 = 76;
  v14 = 0xE300000000000000;
  v15 = 5000268;
  v16 = 0xE400000000000000;
  v17 = 1280068684;
  if (v5 != 3)
  {
    v17 = 0x4C4C4C4C4CLL;
    v16 = 0xE500000000000000;
  }

  if (v5 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  if (*a2)
  {
    v13 = 19532;
    v12 = 0xE200000000000000;
  }

  if (*a2 <= 1u)
  {
    v18 = v13;
  }

  else
  {
    v18 = v15;
  }

  if (*a2 <= 1u)
  {
    v19 = v12;
  }

  else
  {
    v19 = v14;
  }

  if (v10 == v18 && v11 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

uint64_t Date.FormatStyle.Symbol.StandaloneMonth.hash(into:)()
{
  String.hash(into:)();
}

Swift::Int Date.FormatStyle.Symbol.StandaloneMonth.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t static Date.FormatStyle.Symbol.StandaloneWeekday.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE100000000000000;
  v4 = 99;
  v5 = *a2;
  v6 = 0xE400000000000000;
  v7 = 1667457891;
  v8 = 0xE500000000000000;
  v9 = 0x6363636363;
  if (v2 != 3)
  {
    v9 = 0x636363636363;
    v8 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  if (*a1)
  {
    v4 = 6513507;
    v3 = 0xE300000000000000;
  }

  if (*a1 <= 1u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  if (v2 <= 1)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  v12 = 0xE100000000000000;
  v13 = 99;
  v14 = 0xE400000000000000;
  v15 = 1667457891;
  v16 = 0xE500000000000000;
  v17 = 0x6363636363;
  if (v5 != 3)
  {
    v17 = 0x636363636363;
    v16 = 0xE600000000000000;
  }

  if (v5 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  if (*a2)
  {
    v13 = 6513507;
    v12 = 0xE300000000000000;
  }

  if (*a2 <= 1u)
  {
    v18 = v13;
  }

  else
  {
    v18 = v15;
  }

  if (*a2 <= 1u)
  {
    v19 = v12;
  }

  else
  {
    v19 = v14;
  }

  if (v10 == v18 && v11 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

uint64_t Date.FormatStyle.Symbol.StandaloneWeekday.hash(into:)()
{
  String.hash(into:)();
}

Swift::Int Date.FormatStyle.Symbol.StandaloneWeekday.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t Date.FormatStyle.Symbol.VerbatimHour.hash(into:)()
{
  String.hash(into:)();
}

Swift::Int Date.FormatStyle.Symbol.VerbatimHour.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.VerbatimHour()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Date.FormatStyle.Symbol.SymbolType.EraOption(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1195853639;
  if (v2 != 1)
  {
    v4 = 0x4747474747;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 71;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1195853639;
  if (*a2 != 1)
  {
    v8 = 0x4747474747;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 71;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE100000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Date.FormatStyle.Symbol.SymbolType.EraOption@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Date.FormatStyle.Symbol.SymbolType.EraOption.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.EraOption(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 0xE400000000000000;
  v5 = 1195853639;
  if (v2 != 1)
  {
    v5 = 0x4747474747;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 71;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.EraOption()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.SymbolType.EraOption()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.SymbolType.EraOption()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Date.FormatStyle.Symbol.SymbolType.YearOption@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized Date.FormatStyle.Symbol.SymbolType.YearOption.init(rawValue:)(*a1, *(a1 + 8));
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.YearOption@<X0>(uint64_t *a1@<X8>)
{
  result = Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(*v1, *(v1 + 8));
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.YearOption()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(v1, v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.SymbolType.YearOption()
{
  Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(*v0, *(v0 + 8));
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.SymbolType.YearOption()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(v1, v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Date.FormatStyle.Symbol.SymbolType.YearOption(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(*a1, *(a1 + 8));
  v6 = v5;
  if (v4 == Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(v2, v3) && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.YearForWeekOfYearOption@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8) == 1)
  {
    if (v3)
    {
      result = 22873;
    }

    else
    {
      result = 89;
    }

    if (v3)
    {
      object = 0xE200000000000000;
    }

    else
    {
      object = 0xE100000000000000;
    }
  }

  else
  {
    if (v3 >= 10)
    {
      v3 = 10;
    }

    if (v3 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v3;
    }

    v7._countAndFlagsBits = 89;
    v7._object = 0xE100000000000000;
    v8 = String.init(repeating:count:)(v7, v6);
    object = v8._object;
    result = v8._countAndFlagsBits;
  }

  *a1 = result;
  a1[1] = object;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.SymbolType.YearForWeekOfYearOption()
{
  v1 = *v0;
  if (*(v0 + 8) != 1)
  {
    if (v1 >= 10)
    {
      v1 = 10;
    }

    if (v1 <= 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = v1;
    }

    v3._countAndFlagsBits = 89;
    v3._object = 0xE100000000000000;
    String.init(repeating:count:)(v3, v2);
  }

  String.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Date.FormatStyle.Symbol.SymbolType.CyclicYearOption(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1431655765;
  if (v2 != 1)
  {
    v4 = 0x5555555555;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 85;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1431655765;
  if (*a2 != 1)
  {
    v8 = 0x5555555555;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 85;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE100000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Date.FormatStyle.Symbol.SymbolType.CyclicYearOption@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Date.FormatStyle.Symbol.SymbolType.CyclicYearOption.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.CyclicYearOption(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 0xE400000000000000;
  v5 = 1431655765;
  if (v2 != 1)
  {
    v5 = 0x5555555555;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 85;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.CyclicYearOption()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.SymbolType.CyclicYearOption()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.SymbolType.CyclicYearOption()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Date.FormatStyle.Symbol.SymbolType.QuarterOption@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Date.FormatStyle.Symbol.SymbolType.QuarterOption.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.QuarterOption(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 81;
  v5 = 0xE300000000000000;
  v6 = 5329233;
  v7 = 0xE400000000000000;
  v8 = 1364283729;
  if (v2 != 3)
  {
    v8 = 0x5151515151;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 20817;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.QuarterOption()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.SymbolType.QuarterOption()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.SymbolType.QuarterOption()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Date.FormatStyle.Symbol.SymbolType.StandaloneQuarterOption@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Date.FormatStyle.Symbol.SymbolType.StandaloneQuarterOption.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.StandaloneQuarterOption(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 113;
  v5 = 0xE300000000000000;
  v6 = 7434609;
  v7 = 0xE400000000000000;
  v8 = 1903260017;
  if (v2 != 3)
  {
    v8 = 0x7171717171;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 29041;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.StandaloneQuarterOption()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.StandaloneQuarter()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.StandaloneQuarter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Date.FormatStyle.Symbol.SymbolType.MonthOption@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Date.FormatStyle.Symbol.SymbolType.MonthOption.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.MonthOption(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 77;
  v5 = 0xE300000000000000;
  v6 = 5066061;
  v7 = 0xE400000000000000;
  v8 = 1296911693;
  if (v2 != 3)
  {
    v8 = 0x4D4D4D4D4DLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 19789;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.MonthOption()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.SymbolType.MonthOption()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.SymbolType.MonthOption()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Date.FormatStyle.Symbol.SymbolType.StandaloneMonthOption@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Date.FormatStyle.Symbol.SymbolType.StandaloneMonthOption.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.StandaloneMonthOption(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 76;
  v5 = 0xE300000000000000;
  v6 = 5000268;
  v7 = 0xE400000000000000;
  v8 = 1280068684;
  if (v2 != 3)
  {
    v8 = 0x4C4C4C4C4CLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 19532;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.StandaloneMonthOption()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.StandaloneMonth()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.StandaloneMonth()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Date.FormatStyle.Symbol.SymbolType.WeekOption(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 30583;
  if (v2 != 1)
  {
    v4 = 87;
    v3 = 0xE100000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 119;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 30583;
  if (*a2 != 1)
  {
    v8 = 87;
    v7 = 0xE100000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 119;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE100000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Date.FormatStyle.Symbol.SymbolType.WeekOption@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Date.FormatStyle.Symbol.SymbolType.WeekOption.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.WeekOption(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 0xE200000000000000;
  v5 = 30583;
  if (v2 != 1)
  {
    v5 = 87;
    v4 = 0xE100000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 119;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.WeekOption()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.SymbolType.WeekOption()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.SymbolType.WeekOption()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Date.FormatStyle.Symbol.SymbolType.DayOfYearOption(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 17476;
  if (v2 != 1)
  {
    v4 = 4473924;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 68;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 17476;
  if (*a2 != 1)
  {
    v8 = 4473924;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 68;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE100000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Date.FormatStyle.Symbol.SymbolType.DayOfYearOption@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Date.FormatStyle.Symbol.SymbolType.DayOfYearOption.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.DayOfYearOption(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 0xE200000000000000;
  v5 = 17476;
  if (v2 != 1)
  {
    v5 = 4473924;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 68;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.DayOfYearOption()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.SymbolType.DayOfYearOption()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.SymbolType.DayOfYearOption()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t Date.FormatStyle.Symbol.SymbolType.DayPeriodOption.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 97;
    v6 = 0x6161616161;
    if (a1 != 2)
    {
      v6 = 98;
    }

    if (a1)
    {
      v5 = 1633771873;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 66;
    v2 = 1111638594;
    if (a1 != 7)
    {
      v2 = 0x4242424242;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 1650614882;
    if (a1 != 4)
    {
      v3 = 0x6262626262;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Date.FormatStyle.Symbol.SymbolType.YearForWeekOfYearOption@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.DayOption@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8) == 1)
  {
    v4 = 0xE200000000000000;
    v5 = 25700;
    if (v3 != 1)
    {
      v5 = 70;
      v4 = 0xE100000000000000;
    }

    if (v3)
    {
      result = v5;
    }

    else
    {
      result = 100;
    }

    if (v3)
    {
      object = v4;
    }

    else
    {
      object = 0xE100000000000000;
    }
  }

  else
  {
    if (v3 >= 10)
    {
      v3 = 10;
    }

    if (v3 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v3;
    }

    v9._countAndFlagsBits = 103;
    v9._object = 0xE100000000000000;
    v10 = String.init(repeating:count:)(v9, v8);
    object = v10._object;
    result = v10._countAndFlagsBits;
  }

  *a1 = result;
  a1[1] = object;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.SymbolType.DayOption()
{
  v1 = *v0;
  if (*(v0 + 8) != 1)
  {
    if (v1 >= 10)
    {
      v1 = 10;
    }

    if (v1 <= 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = v1;
    }

    v3._countAndFlagsBits = 103;
    v3._object = 0xE100000000000000;
    String.init(repeating:count:)(v3, v2);
  }

  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Date.FormatStyle.Symbol.SymbolType.WeekdayOption@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Date.FormatStyle.Symbol.SymbolType.WeekdayOption.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.WeekdayOption(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 4539717;
  v5 = 0xE600000000000000;
  v6 = 0x454545454545;
  v7 = 0xE100000000000000;
  v8 = 101;
  if (v2 != 4)
  {
    v8 = 25957;
    v7 = 0xE200000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1162167621;
  if (v2 != 1)
  {
    v10 = 0x4545454545;
    v9 = 0xE500000000000000;
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

uint64_t protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.SymbolType.WeekdayOption()
{
  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Date.FormatStyle.Symbol.SymbolType.StandaloneWeekdayOption@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Date.FormatStyle.Symbol.SymbolType.StandaloneWeekdayOption.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.StandaloneWeekdayOption(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 99;
  v5 = 0xE400000000000000;
  v6 = 1667457891;
  v7 = 0xE500000000000000;
  v8 = 0x6363636363;
  if (v2 != 3)
  {
    v8 = 0x636363636363;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 6513507;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.StandaloneWeekdayOption()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.StandaloneWeekday()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.StandaloneWeekday()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Date.FormatStyle.Symbol.SymbolType.DayPeriodOption@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Date.FormatStyle.Symbol.SymbolType.DayPeriodOption.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.DayPeriodOption@<X0>(uint64_t *a1@<X8>)
{
  result = Date.FormatStyle.Symbol.SymbolType.DayPeriodOption.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.DayPeriodOption()
{
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.SymbolType.DayPeriodOption()
{
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Date.FormatStyle.Symbol.SymbolType.HourOption@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Date.FormatStyle.Symbol.SymbolType.HourOption.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.HourOption@<X0>(uint64_t *a1@<X8>)
{
  result = Date.FormatStyle.Symbol.SymbolType.HourOption.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Date.FormatStyle.Symbol.SymbolType.VerbatimHourOption@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Date.FormatStyle.Symbol.SymbolType.VerbatimHourOption.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.VerbatimHourOption(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 104;
  v5 = 0xE100000000000000;
  v6 = 107;
  if (v2 != 6)
  {
    v6 = 27499;
    v5 = 0xE200000000000000;
  }

  v7 = 0xE100000000000000;
  v8 = 75;
  if (v2 != 4)
  {
    v8 = 19275;
    v7 = 0xE200000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE100000000000000;
  v10 = 72;
  if (v2 != 2)
  {
    v10 = 18504;
    v9 = 0xE200000000000000;
  }

  if (*v1)
  {
    v4 = 26728;
    v3 = 0xE200000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Date.FormatStyle.Symbol.SymbolType.MinuteOption(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 28013;
  }

  else
  {
    v3 = 109;
  }

  if (v2)
  {
    v4 = 0xE100000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (*a2)
  {
    v5 = 28013;
  }

  else
  {
    v5 = 109;
  }

  if (*a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.MinuteOption(uint64_t *a1@<X8>)
{
  v2 = 109;
  if (*v1)
  {
    v2 = 28013;
  }

  v3 = 0xE100000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.MinuteOption()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.SymbolType.MinuteOption()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.SymbolType.MinuteOption()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Date.FormatStyle.Symbol.SymbolType.SecondOption(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 29555;
  }

  else
  {
    v3 = 115;
  }

  if (v2)
  {
    v4 = 0xE100000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (*a2)
  {
    v5 = 29555;
  }

  else
  {
    v5 = 115;
  }

  if (*a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Date.FormatStyle.Symbol.SymbolType.MinuteOption@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.SecondOption(uint64_t *a1@<X8>)
{
  v2 = 115;
  if (*v1)
  {
    v2 = 29555;
  }

  v3 = 0xE100000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.SecondOption()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.SymbolType.SecondOption()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.SymbolType.SecondOption()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t Date.FormatStyle.Symbol.SymbolType.SecondFractionOption.rawValue.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 65;
  }

  else
  {
    v2 = 83;
  }

  if (a1 >= 2)
  {

    MEMORY[0x1865CB0E0](v2, 0xE100000000000000);
    if (a1 != 2)
    {
      MEMORY[0x1865CB0E0](v2, 0xE100000000000000);
      if (a1 != 3)
      {
        MEMORY[0x1865CB0E0](v2, 0xE100000000000000);
        if (a1 != 4)
        {
          MEMORY[0x1865CB0E0](v2, 0xE100000000000000);
          if (a1 != 5)
          {
            MEMORY[0x1865CB0E0](v2, 0xE100000000000000);
            if (a1 != 6)
            {
              MEMORY[0x1865CB0E0](v2, 0xE100000000000000);
              if (a1 != 7)
              {
                MEMORY[0x1865CB0E0](v2, 0xE100000000000000);
                if (a1 != 8)
                {
                  MEMORY[0x1865CB0E0](v2, 0xE100000000000000);
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

uint64_t Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 22102;
    v7 = 5658198;
    if (a1 != 10)
    {
      v7 = 1448498774;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 118;
    v9 = 1987475062;
    if (a1 != 7)
    {
      v9 = 86;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 122;
    v2 = 1515870810;
    v3 = 0x5A5A5A5A5ALL;
    if (a1 != 4)
    {
      v3 = 79;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 2054847098;
    if (a1 != 1)
    {
      v4 = 90;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t Date.FormatStyle.Symbol.SymbolType.hash(into:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  switch(a3 >> 3)
  {
    case 1:
      MEMORY[0x1865CD060](1);
      Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(a2, a3 & 7);
      goto LABEL_30;
    case 2:
      MEMORY[0x1865CD060](2);
      if (a3)
      {
        goto LABEL_30;
      }

      v13 = 10;
      if (a2 < 10)
      {
        v13 = a2;
      }

      if (v13 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v13;
      }

      v12 = 89;
      break;
    case 3:
      MEMORY[0x1865CD060](3);
      goto LABEL_30;
    case 4:
      MEMORY[0x1865CD060](4);
      goto LABEL_30;
    case 5:
      MEMORY[0x1865CD060](5);
      goto LABEL_30;
    case 6:
      MEMORY[0x1865CD060](6);
      goto LABEL_30;
    case 7:
      MEMORY[0x1865CD060](7);
      goto LABEL_30;
    case 8:
      MEMORY[0x1865CD060](8);
      goto LABEL_30;
    case 9:
      MEMORY[0x1865CD060](9);
      if (a3)
      {
        goto LABEL_30;
      }

      v10 = 10;
      if (a2 < 10)
      {
        v10 = a2;
      }

      if (v10 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      v12 = 103;
      break;
    case 10:
      MEMORY[0x1865CD060](10);
      goto LABEL_30;
    case 11:
      MEMORY[0x1865CD060](11);
      goto LABEL_30;
    case 12:
      MEMORY[0x1865CD060](12);
      goto LABEL_30;
    case 13:
      MEMORY[0x1865CD060](13);

      return specialized RawRepresentable<>.hash(into:)();
    case 14:
      MEMORY[0x1865CD060](14);
      Date.FormatStyle.Symbol.SymbolType.HourOption.rawValue.getter(a2);
      goto LABEL_30;
    case 15:
      MEMORY[0x1865CD060](15);
      goto LABEL_30;
    case 16:
      MEMORY[0x1865CD060](16);
      goto LABEL_30;
    case 17:
      MEMORY[0x1865CD060](17);

      return specialized RawRepresentable<>.hash(into:)(a1, a2, a3 & 1);
    case 18:
      MEMORY[0x1865CD060](18);
      Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption.rawValue.getter(a2);
      goto LABEL_30;
    default:
      MEMORY[0x1865CD060](0);
      goto LABEL_30;
  }

  v14 = 0xE100000000000000;
  String.init(repeating:count:)(*&v12, v11);
LABEL_30:
  String.hash(into:)();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Date.FormatStyle.Symbol.SymbolType.SecondFractionOption@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized Date.FormatStyle.Symbol.SymbolType.SecondFractionOption.init(rawValue:)(*a1, *(a1 + 8));
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.SecondFractionOption@<X0>(uint64_t *a1@<X8>)
{
  result = Date.FormatStyle.Symbol.SymbolType.SecondFractionOption.rawValue.getter(*v1, *(v1 + 8));
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.SecondFractionOption()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.SymbolType.SecondFractionOption()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Date.FormatStyle.Symbol.SymbolType.HourOption(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption@<X0>(uint64_t *a1@<X8>)
{
  result = Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatStyle.Symbol.SymbolType.HourOption(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Date.FormatStyle.Symbol.SymbolType.HourOption(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.SymbolType.HourOption(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatStyle.Symbol.SymbolType()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Date.FormatStyle.Symbol.SymbolType.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol.SymbolType()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Date.FormatStyle.Symbol.SymbolType.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t Date.FormatStyle.Symbol.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  switch(v3 >> 3)
  {
    case 1u:
      MEMORY[0x1865CD060](1);
      Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(v2, v3 & 7);
      goto LABEL_30;
    case 2u:
      MEMORY[0x1865CD060](2);
      if (v3)
      {
        goto LABEL_30;
      }

      v9 = 10;
      if (v2 < 10)
      {
        v9 = v2;
      }

      if (v9 <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = v9;
      }

      v8 = 89;
      break;
    case 3u:
      MEMORY[0x1865CD060](3);
      goto LABEL_30;
    case 4u:
      MEMORY[0x1865CD060](4);
      goto LABEL_30;
    case 5u:
      MEMORY[0x1865CD060](5);
      goto LABEL_30;
    case 6u:
      MEMORY[0x1865CD060](6);
      goto LABEL_30;
    case 7u:
      MEMORY[0x1865CD060](7);
      goto LABEL_30;
    case 8u:
      MEMORY[0x1865CD060](8);
      goto LABEL_30;
    case 9u:
      MEMORY[0x1865CD060](9);
      if (v3)
      {
        goto LABEL_30;
      }

      v6 = 10;
      if (v2 < 10)
      {
        v6 = v2;
      }

      if (v6 <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = v6;
      }

      v8 = 103;
      break;
    case 0xAu:
      MEMORY[0x1865CD060](10);
      goto LABEL_30;
    case 0xBu:
      MEMORY[0x1865CD060](11);
      goto LABEL_30;
    case 0xCu:
      MEMORY[0x1865CD060](12);
      goto LABEL_30;
    case 0xDu:
      MEMORY[0x1865CD060](13);

      return specialized RawRepresentable<>.hash(into:)();
    case 0xEu:
      MEMORY[0x1865CD060](14);
      Date.FormatStyle.Symbol.SymbolType.HourOption.rawValue.getter(v2);
      goto LABEL_30;
    case 0xFu:
      MEMORY[0x1865CD060](15);
      goto LABEL_30;
    case 0x10u:
      MEMORY[0x1865CD060](16);
      goto LABEL_30;
    case 0x11u:
      MEMORY[0x1865CD060](17);

      return specialized RawRepresentable<>.hash(into:)(a1, v2, v3 & 1);
    case 0x12u:
      MEMORY[0x1865CD060](18);
      Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption.rawValue.getter(v2);
      goto LABEL_30;
    default:
      MEMORY[0x1865CD060](0);
      goto LABEL_30;
  }

  v10 = 0xE100000000000000;
  String.init(repeating:count:)(*&v8, v7);
LABEL_30:
  String.hash(into:)();
}

Swift::Int Date.FormatStyle.Symbol.hashValue.getter()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  Date.FormatStyle.Symbol.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatStyle.Symbol()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  Date.FormatStyle.Symbol.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Symbol()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  Date.FormatStyle.Symbol.hash(into:)(v3);
  return Hasher._finalize()();
}

uint64_t static Date.FormatStyle.Symbol.Year.extended(minimumLength:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 2;
  return result;
}

uint64_t static Date.FormatStyle.Symbol.YearForWeekOfYear.padded(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Int Date.FormatStyle.Symbol.DayPeriod.Width.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys and conformance Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys and conformance Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *static Date.FormatStyle.Symbol.Hour.twoDigits(amPM:)@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = 0x3010507u >> (8 * *result);
  }

  return result;
}

void *static Date.FormatStyle.Symbol.Hour.conversationalDefaultDigits(amPM:)@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = 0xA080C06u >> (8 * *result);
  }

  return result;
}

void *static Date.FormatStyle.Symbol.Hour.conversationalTwoDigits(amPM:)@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = 0xB090D07u >> (8 * *result);
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Date.FormatStyle.Symbol.Hour.AMPMStyle.encode(to:)(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v11 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

Swift::Int Date.FormatStyle.Symbol.Hour.AMPMStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

uint64_t Date.FormatStyle.Symbol.Hour.AMPMStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X3>, uint64_t *a4@<X8>)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v15 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v4)
  {
    v10 = v14;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v15 + 8))(v9, v7);
    *v10 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Date.FormatStyle.Symbol.Hour.AMPMStyle(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v13 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v8 + 8))(v10, v7);
}

void *static Date.FormatStyle.Symbol.VerbatimHour.defaultDigits(clock:hourCycle:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v3 = *a2;
  if (*result == 1)
  {
    if (v3)
    {
      v4 = 6;
    }

    else
    {
      v4 = 2;
    }

    *a3 = v4;
  }

  else if (*result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a3 = 4 * (v3 == 0);
  }

  return result;
}

void *static Date.FormatStyle.Symbol.VerbatimHour.twoDigits(clock:hourCycle:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v3 = *a2;
  if (*result == 1)
  {
    if (v3)
    {
      v4 = 7;
    }

    else
    {
      v4 = 3;
    }

    *a3 = v4;
  }

  else if (*result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    if (v3)
    {
      v5 = 1;
    }

    else
    {
      v5 = 5;
    }

    *a3 = v5;
  }

  return result;
}

uint64_t static Date.FormatStyle.Symbol.SecondFraction.fractional(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t static Date.FormatStyle.Symbol.SecondFraction.milliseconds(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 1;
  return result;
}

Swift::Int Date.FormatStyle.Symbol.TimeZone.Width.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

_BYTE *static Date.FormatStyle.Symbol.TimeZone.iso8601(_:)@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

_BYTE *static Date.FormatStyle.Symbol.TimeZone.localizedGMT(_:)@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = 3;
  }

  else
  {
    v2 = 5;
  }

  *a2 = v2;
  return result;
}

_BYTE *static Date.FormatStyle.Symbol.TimeZone.identifier(_:)@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = 9;
  }

  else
  {
    v2 = 8;
  }

  *a2 = v2;
  return result;
}

uint64_t specialized static Date.FormatStyle.Symbol.SymbolType.== infix(_:_:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  switch(a2 >> 3)
  {
    case 1:
      if ((a4 & 0xF8) != 8)
      {
        return 0;
      }

      v26 = a4 & 7;
      if ((a2 & 7u) > 1)
      {
        if ((a2 & 7) == 2)
        {
          v57 = 10;
          if (a1 < 10)
          {
            v57 = a1;
          }

          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58._countAndFlagsBits = 117;
          v58._object = 0xE100000000000000;
          v59 = a3;
          v60 = String.init(repeating:count:)(v58, v57);
          a3 = v59;
          countAndFlagsBits = v60._countAndFlagsBits;
          object = v60._object;
        }

        else
        {
          if (a1)
          {
            countAndFlagsBits = 31097;
          }

          else
          {
            countAndFlagsBits = 121;
          }

          if (a1)
          {
            object = 0xE200000000000000;
          }

          else
          {
            object = 0xE100000000000000;
          }
        }
      }

      else
      {
        v27 = a3;
        if ((a2 & 7) != 0)
        {
          v76 = 10;
          if (a1 < 10)
          {
            v76 = a1;
          }

          if (v76 <= 1)
          {
            v29 = 1;
          }

          else
          {
            v29 = v76;
          }

          v30 = 114;
        }

        else
        {
          v28 = 10;
          if (a1 < 10)
          {
            v28 = a1;
          }

          if (v28 <= 1)
          {
            v29 = 1;
          }

          else
          {
            v29 = v28;
          }

          v30 = 121;
        }

        v77 = 0xE100000000000000;
        v78 = String.init(repeating:count:)(*&v30, v29);
        countAndFlagsBits = v78._countAndFlagsBits;
        object = v78._object;
        a3 = v27;
      }

      if (v26 > 1)
      {
        if (v26 != 2)
        {
          v51 = a3 == 0;
          v52 = 31097;
          v53 = 121;
          goto LABEL_278;
        }

        v80 = 10;
        if (a3 < 10)
        {
          v80 = a3;
        }

        if (v80 <= 1)
        {
          v55 = 1;
        }

        else
        {
          v55 = v80;
        }

        v56 = 117;
      }

      else
      {
        v79 = 10;
        if (a3 < 10)
        {
          v79 = a3;
        }

        if (v79 <= 1)
        {
          v55 = 1;
        }

        else
        {
          v55 = v79;
        }

        if (v26)
        {
          v56 = 114;
        }

        else
        {
          v56 = 121;
        }
      }

      goto LABEL_275;
    case 2:
      if ((a4 & 0xF8) != 0x10)
      {
        return 0;
      }

      if (a2)
      {
        if (a1)
        {
          countAndFlagsBits = 22873;
        }

        else
        {
          countAndFlagsBits = 89;
        }

        if (a1)
        {
          object = 0xE200000000000000;
        }

        else
        {
          object = 0xE100000000000000;
        }
      }

      else
      {
        v46 = 10;
        if (a1 < 10)
        {
          v46 = a1;
        }

        if (v46 <= 1)
        {
          v46 = 1;
        }

        v47._countAndFlagsBits = 89;
        v47._object = 0xE100000000000000;
        v48 = a3;
        v49 = a4;
        v50 = String.init(repeating:count:)(v47, v46);
        a4 = v49;
        a3 = v48;
        countAndFlagsBits = v50._countAndFlagsBits;
        object = v50._object;
      }

      if (a4)
      {
        v51 = a3 == 0;
        v52 = 22873;
        v53 = 89;
LABEL_278:
        if (v51)
        {
          v84 = v53;
        }

        else
        {
          v84 = v52;
        }

        if (v51)
        {
          v83 = 0xE100000000000000;
        }

        else
        {
          v83 = 0xE200000000000000;
        }

        if (countAndFlagsBits != v84)
        {
          goto LABEL_286;
        }
      }

      else
      {
        v54 = 10;
        if (a3 < 10)
        {
          v54 = a3;
        }

        if (v54 <= 1)
        {
          v55 = 1;
        }

        else
        {
          v55 = v54;
        }

        v56 = 89;
LABEL_275:
        v81 = 0xE100000000000000;
        v82 = String.init(repeating:count:)(*&v56, v55);
        v83 = v82._object;
        if (countAndFlagsBits != v82._countAndFlagsBits)
        {
          goto LABEL_286;
        }
      }

      if (object == v83)
      {
        goto LABEL_333;
      }

LABEL_286:
      v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v85 & 1;
    case 3:
      if ((a4 & 0xF8) != 0x18)
      {
        return 0;
      }

      v24 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          v5 = 1431655765;
        }

        else
        {
          v5 = 0x5555555555;
        }

        if (v24 == 1)
        {
          v6 = 0xE400000000000000;
        }

        else
        {
          v6 = 0xE500000000000000;
        }
      }

      else
      {
        v6 = 0xE100000000000000;
        v5 = 85;
      }

      if (a3)
      {
        v71 = a3 == 1;
        v72 = 0xE400000000000000;
        v73 = 1431655765;
        v74 = 0xE500000000000000;
        v75 = 0x5555555555;
        goto LABEL_239;
      }

      v69 = 0xE100000000000000;
      v70 = 85;
      goto LABEL_331;
    case 4:
      if ((a4 & 0xF8) != 0x20)
      {
        return 0;
      }

      v13 = a1;
      if (a1 <= 1u)
      {
        if (a1)
        {
          v5 = 20817;
        }

        else
        {
          v5 = 81;
        }

        if (v13)
        {
          v6 = 0xE200000000000000;
        }

        else
        {
          v6 = 0xE100000000000000;
        }
      }

      else if (a1 == 2)
      {
        v6 = 0xE300000000000000;
        v5 = 5329233;
      }

      else
      {
        if (a1 == 3)
        {
          v5 = 1364283729;
        }

        else
        {
          v5 = 0x5151515151;
        }

        if (v13 == 3)
        {
          v6 = 0xE400000000000000;
        }

        else
        {
          v6 = 0xE500000000000000;
        }
      }

      v86 = a3;
      v87 = 0xE100000000000000;
      v88 = 81;
      v89 = 0xE300000000000000;
      v90 = 5329233;
      v91 = 0xE400000000000000;
      v92 = 1364283729;
      if (a3 != 3)
      {
        v92 = 0x5151515151;
        v91 = 0xE500000000000000;
      }

      if (a3 != 2)
      {
        v90 = v92;
        v89 = v91;
      }

      v93 = 0xE200000000000000;
      v94 = 20817;
      goto LABEL_323;
    case 5:
      if ((a4 & 0xF8) != 0x28)
      {
        return 0;
      }

      v33 = a1;
      if (a1 <= 1u)
      {
        if (a1)
        {
          v5 = 29041;
        }

        else
        {
          v5 = 113;
        }

        if (v33)
        {
          v6 = 0xE200000000000000;
        }

        else
        {
          v6 = 0xE100000000000000;
        }
      }

      else if (a1 == 2)
      {
        v6 = 0xE300000000000000;
        v5 = 7434609;
      }

      else
      {
        if (a1 == 3)
        {
          v5 = 1903260017;
        }

        else
        {
          v5 = 0x7171717171;
        }

        if (v33 == 3)
        {
          v6 = 0xE400000000000000;
        }

        else
        {
          v6 = 0xE500000000000000;
        }
      }

      v86 = a3;
      v87 = 0xE100000000000000;
      v88 = 113;
      v89 = 0xE300000000000000;
      v90 = 7434609;
      v99 = 0xE400000000000000;
      v100 = 1903260017;
      if (a3 != 3)
      {
        v100 = 0x7171717171;
        v99 = 0xE500000000000000;
      }

      if (a3 != 2)
      {
        v90 = v100;
        v89 = v99;
      }

      v93 = 0xE200000000000000;
      v94 = 29041;
      goto LABEL_323;
    case 6:
      if ((a4 & 0xF8) != 0x30)
      {
        return 0;
      }

      v34 = a1;
      if (a1 <= 1u)
      {
        if (a1)
        {
          v5 = 19789;
        }

        else
        {
          v5 = 77;
        }

        if (v34)
        {
          v6 = 0xE200000000000000;
        }

        else
        {
          v6 = 0xE100000000000000;
        }
      }

      else if (a1 == 2)
      {
        v6 = 0xE300000000000000;
        v5 = 5066061;
      }

      else
      {
        if (a1 == 3)
        {
          v5 = 1296911693;
        }

        else
        {
          v5 = 0x4D4D4D4D4DLL;
        }

        if (v34 == 3)
        {
          v6 = 0xE400000000000000;
        }

        else
        {
          v6 = 0xE500000000000000;
        }
      }

      v86 = a3;
      v87 = 0xE100000000000000;
      v88 = 77;
      v89 = 0xE300000000000000;
      v90 = 5066061;
      v101 = 0xE400000000000000;
      v102 = 1296911693;
      if (a3 != 3)
      {
        v102 = 0x4D4D4D4D4DLL;
        v101 = 0xE500000000000000;
      }

      if (a3 != 2)
      {
        v90 = v102;
        v89 = v101;
      }

      v93 = 0xE200000000000000;
      v94 = 19789;
      goto LABEL_323;
    case 7:
      if ((a4 & 0xF8) != 0x38)
      {
        return 0;
      }

      v25 = a1;
      if (a1 <= 1u)
      {
        if (a1)
        {
          v5 = 19532;
        }

        else
        {
          v5 = 76;
        }

        if (v25)
        {
          v6 = 0xE200000000000000;
        }

        else
        {
          v6 = 0xE100000000000000;
        }
      }

      else if (a1 == 2)
      {
        v6 = 0xE300000000000000;
        v5 = 5000268;
      }

      else
      {
        if (a1 == 3)
        {
          v5 = 1280068684;
        }

        else
        {
          v5 = 0x4C4C4C4C4CLL;
        }

        if (v25 == 3)
        {
          v6 = 0xE400000000000000;
        }

        else
        {
          v6 = 0xE500000000000000;
        }
      }

      v86 = a3;
      v87 = 0xE100000000000000;
      v88 = 76;
      v89 = 0xE300000000000000;
      v90 = 5000268;
      v97 = 0xE400000000000000;
      v98 = 1280068684;
      if (a3 != 3)
      {
        v98 = 0x4C4C4C4C4CLL;
        v97 = 0xE500000000000000;
      }

      if (a3 != 2)
      {
        v90 = v98;
        v89 = v97;
      }

      v93 = 0xE200000000000000;
      v94 = 19532;
      goto LABEL_323;
    case 8:
      if ((a4 & 0xF8) != 0x40)
      {
        return 0;
      }

      v45 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          v5 = 30583;
        }

        else
        {
          v5 = 87;
        }

        if (v45 == 1)
        {
          v6 = 0xE200000000000000;
        }

        else
        {
          v6 = 0xE100000000000000;
        }
      }

      else
      {
        v6 = 0xE100000000000000;
        v5 = 119;
      }

      if (a3)
      {
        v71 = a3 == 1;
        v72 = 0xE200000000000000;
        v73 = 30583;
        v74 = 0xE100000000000000;
        v75 = 87;
        goto LABEL_239;
      }

      v69 = 0xE100000000000000;
      v70 = 119;
      goto LABEL_331;
    case 9:
      if ((a4 & 0xF8) != 0x48)
      {
        return 0;
      }

      v15 = a2 & 1;
      v16 = a4 & 1;

      return specialized == infix<A>(_:_:)(a1, v15, a3, v16);
    case 10:
      if ((a4 & 0xF8) != 0x50)
      {
        return 0;
      }

      v44 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          v5 = 17476;
        }

        else
        {
          v5 = 4473924;
        }

        if (v44 == 1)
        {
          v6 = 0xE200000000000000;
        }

        else
        {
          v6 = 0xE300000000000000;
        }
      }

      else
      {
        v6 = 0xE100000000000000;
        v5 = 68;
      }

      if (a3)
      {
        v71 = a3 == 1;
        v72 = 0xE200000000000000;
        v73 = 17476;
        v74 = 0xE300000000000000;
        v75 = 4473924;
        goto LABEL_239;
      }

      v69 = 0xE100000000000000;
      v70 = 68;
      goto LABEL_331;
    case 11:
      if ((a4 & 0xF8) != 0x58)
      {
        return 0;
      }

      return specialized == infix<A>(_:_:)(a1, a3);
    case 12:
      if ((a4 & 0xF8) != 0x60)
      {
        return 0;
      }

      v14 = a1;
      if (a1 <= 1u)
      {
        if (a1)
        {
          v5 = 6513507;
        }

        else
        {
          v5 = 99;
        }

        if (v14)
        {
          v6 = 0xE300000000000000;
        }

        else
        {
          v6 = 0xE100000000000000;
        }
      }

      else if (a1 == 2)
      {
        v6 = 0xE400000000000000;
        v5 = 1667457891;
      }

      else
      {
        if (a1 == 3)
        {
          v5 = 0x6363636363;
        }

        else
        {
          v5 = 0x636363636363;
        }

        if (v14 == 3)
        {
          v6 = 0xE500000000000000;
        }

        else
        {
          v6 = 0xE600000000000000;
        }
      }

      v86 = a3;
      v87 = 0xE100000000000000;
      v88 = 99;
      v89 = 0xE400000000000000;
      v90 = 1667457891;
      v95 = 0xE500000000000000;
      v96 = 0x6363636363;
      if (a3 != 3)
      {
        v96 = 0x636363636363;
        v95 = 0xE600000000000000;
      }

      if (a3 != 2)
      {
        v90 = v96;
        v89 = v95;
      }

      v93 = 0xE300000000000000;
      v94 = 6513507;
LABEL_323:
      if (v86)
      {
        v88 = v94;
        v87 = v93;
      }

      if (v86 <= 1)
      {
        v70 = v88;
      }

      else
      {
        v70 = v90;
      }

      if (v86 <= 1)
      {
        v69 = v87;
      }

      else
      {
        v69 = v89;
      }

      goto LABEL_331;
    case 13:
      if ((a4 & 0xF8) != 0x68)
      {
        return 0;
      }

      return specialized == infix<A>(_:_:)(a1, a3);
    case 14:
      if ((a4 & 0xF8) != 0x70)
      {
        return 0;
      }

      v10 = a1;
      v6 = 0xE100000000000000;
      v5 = 106;
      v11 = a3;
      switch(v10)
      {
        case 1:
          v6 = 0xE200000000000000;
          v5 = 27242;
          break;
        case 2:
          v6 = 0xE300000000000000;
          v5 = 6974058;
          break;
        case 3:
          v6 = 0xE400000000000000;
          v5 = 1785358954;
          break;
        case 4:
          v6 = 0xE500000000000000;
          v5 = 0x6A6A6A6A6ALL;
          break;
        case 5:
          v6 = 0xE600000000000000;
          v5 = 0x6A6A6A6A6A6ALL;
          break;
        case 6:
          v5 = 74;
          break;
        case 7:
          v6 = 0xE200000000000000;
          v5 = 19018;
          break;
        case 8:
          v5 = 67;
          break;
        case 9:
          v6 = 0xE200000000000000;
          v5 = 17219;
          break;
        case 10:
          v6 = 0xE300000000000000;
          v5 = 4408131;
          break;
        case 11:
          v6 = 0xE400000000000000;
          v5 = 1128481603;
          break;
        case 12:
          v6 = 0xE500000000000000;
          v5 = 0x4343434343;
          break;
        case 13:
          v6 = 0xE600000000000000;
          v5 = 0x434343434343;
          break;
        default:
          break;
      }

      v69 = 0xE100000000000000;
      v70 = 106;
      switch(v11)
      {
        case 1:
          v69 = 0xE200000000000000;
          v70 = 27242;
          break;
        case 2:
          v69 = 0xE300000000000000;
          v70 = 6974058;
          break;
        case 3:
          v69 = 0xE400000000000000;
          v70 = 1785358954;
          break;
        case 4:
          v69 = 0xE500000000000000;
          v70 = 0x6A6A6A6A6ALL;
          break;
        case 5:
          v69 = 0xE600000000000000;
          v70 = 0x6A6A6A6A6A6ALL;
          break;
        case 6:
          v70 = 74;
          break;
        case 7:
          v69 = 0xE200000000000000;
          v70 = 19018;
          break;
        case 8:
          v70 = 67;
          break;
        case 9:
          v69 = 0xE200000000000000;
          v70 = 17219;
          break;
        case 10:
          v69 = 0xE300000000000000;
          v70 = 4408131;
          break;
        case 11:
          v69 = 0xE400000000000000;
          v70 = 1128481603;
          break;
        case 12:
          v69 = 0xE500000000000000;
          v70 = 0x4343434343;
          break;
        case 13:
          v69 = 0xE600000000000000;
          v70 = 0x434343434343;
          break;
        default:
          goto LABEL_331;
      }

      goto LABEL_331;
    case 15:
      if ((a4 & 0xF8) != 0x78)
      {
        return 0;
      }

      v7 = (a1 & 1) == 0;
      v8 = 109;
      v9 = 28013;
      goto LABEL_51;
    case 16:
      if ((a4 & 0xF8) != 0x80)
      {
        return 0;
      }

      v7 = (a1 & 1) == 0;
      v8 = 115;
      v9 = 29555;
LABEL_51:
      if (v7)
      {
        v19 = v8;
      }

      else
      {
        v19 = v9;
      }

      if (v7)
      {
        v20 = 0xE100000000000000;
      }

      else
      {
        v20 = 0xE200000000000000;
      }

      v21 = (a3 & 1) == 0;
      if (a3)
      {
        v22 = v9;
      }

      else
      {
        v22 = v8;
      }

      if (v21)
      {
        v23 = 0xE100000000000000;
      }

      else
      {
        v23 = 0xE200000000000000;
      }

      if (v19 == v22 && v20 == v23)
      {
        goto LABEL_333;
      }

      goto LABEL_334;
    case 17:
      if ((a4 & 0xF8) != 0x88)
      {
        return 0;
      }

      v31 = a2 & 1;
      v32 = a4 & 1;

      return specialized == infix<A>(_:_:)(a1, v31, a3, v32);
    case 18:
      if ((a4 & 0xF8) != 0x90)
      {
        return 0;
      }

      v35 = a1;
      if (a1 > 5u)
      {
        v61 = 0xE200000000000000;
        v62 = 22102;
        v63 = 0xE300000000000000;
        v64 = 5658198;
        v65 = 0xE400000000000000;
        if (a1 != 10)
        {
          v64 = 1448498774;
          v63 = 0xE400000000000000;
        }

        if (a1 != 9)
        {
          v62 = v64;
          v61 = v63;
        }

        v66 = 0xE100000000000000;
        v67 = 118;
        v68 = 1987475062;
        if (a1 != 7)
        {
          v68 = 86;
          v65 = 0xE100000000000000;
        }

        if (a1 != 6)
        {
          v67 = v68;
          v66 = v65;
        }

        if (a1 <= 8u)
        {
          v5 = v67;
        }

        else
        {
          v5 = v62;
        }

        if (v35 <= 8)
        {
          v6 = v66;
        }

        else
        {
          v6 = v61;
        }
      }

      else
      {
        v36 = 0xE100000000000000;
        v37 = 122;
        v38 = 0xE400000000000000;
        v39 = 1515870810;
        v40 = 0xE500000000000000;
        v41 = 0x5A5A5A5A5ALL;
        if (a1 != 4)
        {
          v41 = 79;
          v40 = 0xE100000000000000;
        }

        if (a1 != 3)
        {
          v39 = v41;
          v38 = v40;
        }

        v42 = 0xE400000000000000;
        v43 = 2054847098;
        if (a1 != 1)
        {
          v43 = 90;
          v42 = 0xE100000000000000;
        }

        if (a1)
        {
          v37 = v43;
          v36 = v42;
        }

        if (a1 <= 2u)
        {
          v5 = v37;
        }

        else
        {
          v5 = v39;
        }

        if (v35 <= 2)
        {
          v6 = v36;
        }

        else
        {
          v6 = v38;
        }
      }

      if (a3 > 5u)
      {
        if (a3 > 8u)
        {
          if (a3 == 9)
          {
            v69 = 0xE200000000000000;
            v70 = 22102;
          }

          else if (a3 == 10)
          {
            v69 = 0xE300000000000000;
            v70 = 5658198;
          }

          else
          {
            v69 = 0xE400000000000000;
            v70 = 1448498774;
          }
        }

        else if (a3 == 6)
        {
          v69 = 0xE100000000000000;
          v70 = 118;
        }

        else if (a3 == 7)
        {
          v69 = 0xE400000000000000;
          v70 = 1987475062;
        }

        else
        {
          v69 = 0xE100000000000000;
          v70 = 86;
        }
      }

      else if (a3 > 2u)
      {
        if (a3 == 3)
        {
          v69 = 0xE400000000000000;
          v70 = 1515870810;
        }

        else if (a3 == 4)
        {
          v69 = 0xE500000000000000;
          v70 = 0x5A5A5A5A5ALL;
        }

        else
        {
          v69 = 0xE100000000000000;
          v70 = 79;
        }
      }

      else if (a3)
      {
        if (a3 == 1)
        {
          v69 = 0xE400000000000000;
          v70 = 2054847098;
        }

        else
        {
          v69 = 0xE100000000000000;
          v70 = 90;
        }
      }

      else
      {
        v69 = 0xE100000000000000;
        v70 = 122;
      }

      goto LABEL_331;
    default:
      if (a4 >= 8u)
      {
        return 0;
      }

      v4 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          v5 = 1195853639;
        }

        else
        {
          v5 = 0x4747474747;
        }

        if (v4 == 1)
        {
          v6 = 0xE400000000000000;
        }

        else
        {
          v6 = 0xE500000000000000;
        }
      }

      else
      {
        v6 = 0xE100000000000000;
        v5 = 71;
      }

      if (a3)
      {
        v71 = a3 == 1;
        v72 = 0xE400000000000000;
        v73 = 1195853639;
        v74 = 0xE500000000000000;
        v75 = 0x4747474747;
LABEL_239:
        if (v71)
        {
          v70 = v73;
        }

        else
        {
          v70 = v75;
        }

        if (v71)
        {
          v69 = v72;
        }

        else
        {
          v69 = v74;
        }
      }

      else
      {
        v69 = 0xE100000000000000;
        v70 = 71;
      }

LABEL_331:
      if (v5 == v70 && v6 == v69)
      {
LABEL_333:

        return 1;
      }

      else
      {
LABEL_334:
        v103 = _stringCompareWithSmolCheck(_:_:expecting:)();

        return v103 & 1;
      }
  }
}

uint64_t specialized static Date.FormatStyle.Symbol.CyclicYear.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  v5 = 0xE400000000000000;
  v6 = 1431655765;
  if (v2 != 1)
  {
    v6 = 0x5555555555;
    v5 = 0xE500000000000000;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 85;
  }

  if (v2)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE100000000000000;
  }

  v9 = 0xE400000000000000;
  v10 = 1431655765;
  if (v3 != 1)
  {
    v10 = 0x5555555555;
    v9 = 0xE500000000000000;
  }

  if (*a2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 85;
  }

  if (*a2)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE100000000000000;
  }

  if (v7 != v11 || v8 != v12)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v13 & 1) != 0;
  }

  return 1;
}

uint64_t specialized static Date.FormatStyle.Symbol.Era.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  v5 = 0xE400000000000000;
  v6 = 1195853639;
  if (v2 != 1)
  {
    v6 = 0x4747474747;
    v5 = 0xE500000000000000;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 71;
  }

  if (v2)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE100000000000000;
  }

  v9 = 0xE400000000000000;
  v10 = 1195853639;
  if (v3 != 1)
  {
    v10 = 0x4747474747;
    v9 = 0xE500000000000000;
  }

  if (*a2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 71;
  }

  if (*a2)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE100000000000000;
  }

  if (v7 != v11 || v8 != v12)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v13 & 1) != 0;
  }

  return 1;
}

uint64_t specialized static Date.FormatStyle.Symbol.Week.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  v5 = 0xE200000000000000;
  v6 = 30583;
  if (v2 != 1)
  {
    v6 = 87;
    v5 = 0xE100000000000000;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 119;
  }

  if (v2)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE100000000000000;
  }

  v9 = 0xE200000000000000;
  v10 = 30583;
  if (v3 != 1)
  {
    v10 = 87;
    v9 = 0xE100000000000000;
  }

  if (*a2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 119;
  }

  if (*a2)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE100000000000000;
  }

  if (v7 != v11 || v8 != v12)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v13 & 1) != 0;
  }

  return 1;
}

uint64_t specialized static Date.FormatStyle.Symbol.Minute.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  if (v2)
  {
    v5 = 28013;
  }

  else
  {
    v5 = 109;
  }

  if (v2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  if (v3)
  {
    v7 = 28013;
  }

  else
  {
    v7 = 109;
  }

  if (v3)
  {
    v8 = 0xE200000000000000;
  }

  else
  {
    v8 = 0xE100000000000000;
  }

  if (v5 != v7 || v6 != v8)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v10 & 1) != 0;
  }

  return 1;
}

uint64_t specialized static Date.FormatStyle.Symbol.Second.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  if (v2)
  {
    v5 = 29555;
  }

  else
  {
    v5 = 115;
  }

  if (v2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  if (v3)
  {
    v7 = 29555;
  }

  else
  {
    v7 = 115;
  }

  if (v3)
  {
    v8 = 0xE200000000000000;
  }

  else
  {
    v8 = 0xE100000000000000;
  }

  if (v5 != v7 || v6 != v8)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v10 & 1) != 0;
  }

  return 1;
}

uint64_t specialized static Date.FormatStyle.Symbol.DayOfYear.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  v5 = 0xE200000000000000;
  v6 = 17476;
  if (v2 != 1)
  {
    v6 = 4473924;
    v5 = 0xE300000000000000;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 68;
  }

  if (v2)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE100000000000000;
  }

  v9 = 0xE200000000000000;
  v10 = 17476;
  if (v3 != 1)
  {
    v10 = 4473924;
    v9 = 0xE300000000000000;
  }

  if (*a2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 68;
  }

  if (*a2)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE100000000000000;
  }

  if (v7 != v11 || v8 != v12)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v13 & 1) != 0;
  }

  return 1;
}

uint64_t specialized static Date.FormatStyle.Symbol.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *(a2 + 8);
  switch(v4 >> 3)
  {
    case 1u:
      if ((v6 & 0xF8) != 8)
      {
        return 0;
      }

      v58 = v4 & 7;
      v59 = v6 & 7;
      if (v58 > 1)
      {
        if (v58 != 2)
        {
          if (v3)
          {
            v120 = 31097;
          }

          else
          {
            v120 = 121;
          }

          if (v3)
          {
            v121 = 0xE200000000000000;
          }

          else
          {
            v121 = 0xE100000000000000;
          }

LABEL_310:
          if (v59 > 1)
          {
            if (v59 != 2)
            {
              if (v5)
              {
                countAndFlagsBits = 31097;
              }

              else
              {
                countAndFlagsBits = 121;
              }

              if (v5)
              {
                object = 0xE200000000000000;
              }

              else
              {
                object = 0xE100000000000000;
              }

LABEL_333:
              if (v120 == countAndFlagsBits && v121 == object)
              {
                goto LABEL_295;
              }

              goto LABEL_335;
            }

            v125 = 10;
            if (v5 < 10)
            {
              v125 = v5;
            }

            if (v125 <= 1)
            {
              v123 = 1;
            }

            else
            {
              v123 = v125;
            }

            v124 = 117;
          }

          else
          {
            v122 = 10;
            if (v5 < 10)
            {
              v122 = v5;
            }

            if (v122 <= 1)
            {
              v123 = 1;
            }

            else
            {
              v123 = v122;
            }

            if (v59)
            {
              v124 = 114;
            }

            else
            {
              v124 = 121;
            }
          }

          v126 = 0xE100000000000000;
          v127 = String.init(repeating:count:)(*&v124, v123);
          countAndFlagsBits = v127._countAndFlagsBits;
          object = v127._object;
          goto LABEL_333;
        }

        v101 = 10;
        if (v3 < 10)
        {
          v101 = v3;
        }

        if (v101 <= 1)
        {
          v61 = 1;
        }

        else
        {
          v61 = v101;
        }

        v62 = 117;
      }

      else if (v58)
      {
        v117 = 10;
        if (v3 < 10)
        {
          v117 = v3;
        }

        if (v117 <= 1)
        {
          v61 = 1;
        }

        else
        {
          v61 = v117;
        }

        v62 = 114;
      }

      else
      {
        v60 = 10;
        if (v3 < 10)
        {
          v60 = v3;
        }

        if (v60 <= 1)
        {
          v61 = 1;
        }

        else
        {
          v61 = v60;
        }

        v62 = 121;
      }

      v118 = 0xE100000000000000;
      v119 = String.init(repeating:count:)(*&v62, v61);
      v120 = v119._countAndFlagsBits;
      v121 = v119._object;
      goto LABEL_310;
    case 2u:
      if ((v6 & 0xF8) != 0x10)
      {
        return 0;
      }

      if (v4)
      {
        if (v3)
        {
          v42 = 22873;
        }

        else
        {
          v42 = 89;
        }

        if (v3)
        {
          v43 = 0xE200000000000000;
        }

        else
        {
          v43 = 0xE100000000000000;
        }
      }

      else
      {
        v90 = 10;
        if (v3 < 10)
        {
          v90 = v3;
        }

        if (v90 <= 1)
        {
          v91 = 1;
        }

        else
        {
          v91 = v90;
        }

        v92._countAndFlagsBits = 89;
        v92._object = 0xE100000000000000;
        v93 = String.init(repeating:count:)(v92, v91);
        v42 = v93._countAndFlagsBits;
        v43 = v93._object;
      }

      if (v6)
      {
        if (v5)
        {
          v94 = 22873;
        }

        else
        {
          v94 = 89;
        }

        if (v5)
        {
          v95 = 0xE200000000000000;
        }

        else
        {
          v95 = 0xE100000000000000;
        }
      }

      else
      {
        v96 = 10;
        if (v5 < 10)
        {
          v96 = v5;
        }

        if (v96 <= 1)
        {
          v97 = 1;
        }

        else
        {
          v97 = v96;
        }

        v98._countAndFlagsBits = 89;
        v98._object = 0xE100000000000000;
        v99 = String.init(repeating:count:)(v98, v97);
        v94 = v99._countAndFlagsBits;
        v95 = v99._object;
      }

      if (v42 != v94 || v43 != v95)
      {
        goto LABEL_335;
      }

      goto LABEL_295;
    case 3u:
      if ((v6 & 0xF8) != 0x18)
      {
        return 0;
      }

      v49 = v3;
      if (v3)
      {
        if (v3 == 1)
        {
          v8 = 1431655765;
        }

        else
        {
          v8 = 0x5555555555;
        }

        if (v49 == 1)
        {
          v9 = 0xE400000000000000;
        }

        else
        {
          v9 = 0xE500000000000000;
        }
      }

      else
      {
        v9 = 0xE100000000000000;
        v8 = 85;
      }

      if (*a2)
      {
        v111 = *a2 == 1;
        v112 = 0xE400000000000000;
        v113 = 1431655765;
        v114 = 0xE500000000000000;
        v115 = 0x5555555555;
        goto LABEL_287;
      }

      v25 = 0xE100000000000000;
      v15 = 85;
      goto LABEL_293;
    case 4u:
      if ((v6 & 0xF8) != 0x20)
      {
        return 0;
      }

      v26 = v3;
      v27 = 0xE100000000000000;
      v28 = 81;
      v29 = 0xE300000000000000;
      v30 = 5329233;
      v31 = 0xE400000000000000;
      v32 = 1364283729;
      if (v3 != 3)
      {
        v32 = 0x5151515151;
        v31 = 0xE500000000000000;
      }

      if (v3 != 2)
      {
        v30 = v32;
        v29 = v31;
      }

      if (v3)
      {
        v28 = 20817;
        v27 = 0xE200000000000000;
      }

      if (v3 <= 1u)
      {
        v8 = v28;
      }

      else
      {
        v8 = v30;
      }

      if (v26 <= 1)
      {
        v9 = v27;
      }

      else
      {
        v9 = v29;
      }

      v33 = *a2;
      if (v33 <= 1)
      {
        if (*a2)
        {
          v25 = 0xE200000000000000;
          v15 = 20817;
        }

        else
        {
          v25 = 0xE100000000000000;
          v15 = 81;
        }
      }

      else if (v33 == 2)
      {
        v25 = 0xE300000000000000;
        v15 = 5329233;
      }

      else if (v33 == 3)
      {
        v25 = 0xE400000000000000;
        v15 = 1364283729;
      }

      else
      {
        v25 = 0xE500000000000000;
        v15 = 0x5151515151;
      }

      goto LABEL_293;
    case 5u:
      if ((v6 & 0xF8) != 0x28)
      {
        return 0;
      }

      v63 = v3;
      v64 = 0xE100000000000000;
      v65 = 113;
      v66 = 0xE300000000000000;
      v67 = 7434609;
      v68 = 0xE400000000000000;
      v69 = 1903260017;
      if (v3 != 3)
      {
        v69 = 0x7171717171;
        v68 = 0xE500000000000000;
      }

      if (v3 != 2)
      {
        v67 = v69;
        v66 = v68;
      }

      if (v3)
      {
        v65 = 29041;
        v64 = 0xE200000000000000;
      }

      if (v3 <= 1u)
      {
        v8 = v65;
      }

      else
      {
        v8 = v67;
      }

      if (v63 <= 1)
      {
        v9 = v64;
      }

      else
      {
        v9 = v66;
      }

      v70 = *a2;
      if (v70 <= 1)
      {
        if (*a2)
        {
          v25 = 0xE200000000000000;
          v15 = 29041;
        }

        else
        {
          v25 = 0xE100000000000000;
          v15 = 113;
        }
      }

      else if (v70 == 2)
      {
        v25 = 0xE300000000000000;
        v15 = 7434609;
      }

      else if (v70 == 3)
      {
        v25 = 0xE400000000000000;
        v15 = 1903260017;
      }

      else
      {
        v25 = 0xE500000000000000;
        v15 = 0x7171717171;
      }

      goto LABEL_293;
    case 6u:
      if ((v6 & 0xF8) != 0x30)
      {
        return 0;
      }

      v71 = v3;
      v72 = 0xE100000000000000;
      v73 = 77;
      v74 = 0xE300000000000000;
      v75 = 5066061;
      v76 = 0xE400000000000000;
      v77 = 1296911693;
      if (v3 != 3)
      {
        v77 = 0x4D4D4D4D4DLL;
        v76 = 0xE500000000000000;
      }

      if (v3 != 2)
      {
        v75 = v77;
        v74 = v76;
      }

      if (v3)
      {
        v73 = 19789;
        v72 = 0xE200000000000000;
      }

      if (v3 <= 1u)
      {
        v8 = v73;
      }

      else
      {
        v8 = v75;
      }

      if (v71 <= 1)
      {
        v9 = v72;
      }

      else
      {
        v9 = v74;
      }

      v78 = *a2;
      if (v78 <= 1)
      {
        if (*a2)
        {
          v25 = 0xE200000000000000;
          v15 = 19789;
        }

        else
        {
          v25 = 0xE100000000000000;
          v15 = 77;
        }
      }

      else if (v78 == 2)
      {
        v25 = 0xE300000000000000;
        v15 = 5066061;
      }

      else if (v78 == 3)
      {
        v25 = 0xE400000000000000;
        v15 = 1296911693;
      }

      else
      {
        v25 = 0xE500000000000000;
        v15 = 0x4D4D4D4D4DLL;
      }

      goto LABEL_293;
    case 7u:
      if ((v6 & 0xF8) != 0x38)
      {
        return 0;
      }

      v50 = v3;
      v51 = 0xE100000000000000;
      v52 = 76;
      v53 = 0xE300000000000000;
      v54 = 5000268;
      v55 = 0xE400000000000000;
      v56 = 1280068684;
      if (v3 != 3)
      {
        v56 = 0x4C4C4C4C4CLL;
        v55 = 0xE500000000000000;
      }

      if (v3 != 2)
      {
        v54 = v56;
        v53 = v55;
      }

      if (v3)
      {
        v52 = 19532;
        v51 = 0xE200000000000000;
      }

      if (v3 <= 1u)
      {
        v8 = v52;
      }

      else
      {
        v8 = v54;
      }

      if (v50 <= 1)
      {
        v9 = v51;
      }

      else
      {
        v9 = v53;
      }

      v57 = *a2;
      if (v57 <= 1)
      {
        if (*a2)
        {
          v25 = 0xE200000000000000;
          v15 = 19532;
        }

        else
        {
          v25 = 0xE100000000000000;
          v15 = 76;
        }
      }

      else if (v57 == 2)
      {
        v25 = 0xE300000000000000;
        v15 = 5000268;
      }

      else if (v57 == 3)
      {
        v25 = 0xE400000000000000;
        v15 = 1280068684;
      }

      else
      {
        v25 = 0xE500000000000000;
        v15 = 0x4C4C4C4C4CLL;
      }

      goto LABEL_293;
    case 8u:
      if ((v6 & 0xF8) != 0x40)
      {
        return 0;
      }

      v89 = v3;
      if (v3)
      {
        if (v3 == 1)
        {
          v8 = 30583;
        }

        else
        {
          v8 = 87;
        }

        if (v89 == 1)
        {
          v9 = 0xE200000000000000;
        }

        else
        {
          v9 = 0xE100000000000000;
        }
      }

      else
      {
        v9 = 0xE100000000000000;
        v8 = 119;
      }

      if (*a2)
      {
        v111 = *a2 == 1;
        v112 = 0xE200000000000000;
        v113 = 30583;
        v114 = 0xE100000000000000;
        v115 = 87;
        goto LABEL_287;
      }

      v25 = 0xE100000000000000;
      v15 = 119;
      goto LABEL_293;
    case 9u:
      return (v6 & 0xF8) == 0x48 && (specialized == infix<A>(_:_:)(v3, v4 & 1, v5, v6 & 1) & 1) != 0;
    case 0xAu:
      if ((v6 & 0xF8) != 0x50)
      {
        return 0;
      }

      v88 = v3;
      if (v3)
      {
        if (v3 == 1)
        {
          v8 = 17476;
        }

        else
        {
          v8 = 4473924;
        }

        if (v88 == 1)
        {
          v9 = 0xE200000000000000;
        }

        else
        {
          v9 = 0xE300000000000000;
        }
      }

      else
      {
        v9 = 0xE100000000000000;
        v8 = 68;
      }

      if (*a2)
      {
        v111 = *a2 == 1;
        v112 = 0xE200000000000000;
        v113 = 17476;
        v114 = 0xE300000000000000;
        v115 = 4473924;
        goto LABEL_287;
      }

      v25 = 0xE100000000000000;
      v15 = 68;
      goto LABEL_293;
    case 0xBu:
      if ((v6 & 0xF8) != 0x58)
      {
        return 0;
      }

      v15 = 4539717;
      v16 = v3;
      v17 = 0xE300000000000000;
      v18 = 0xE600000000000000;
      v19 = 0x454545454545;
      v20 = 0xE100000000000000;
      v21 = 101;
      if (v3 != 4)
      {
        v21 = 25957;
        v20 = 0xE200000000000000;
      }

      if (v3 != 3)
      {
        v19 = v21;
        v18 = v20;
      }

      v22 = 0xE400000000000000;
      v23 = 1162167621;
      if (v3 != 1)
      {
        v23 = 0x4545454545;
        v22 = 0xE500000000000000;
      }

      if (v3)
      {
        v17 = v22;
      }

      else
      {
        v23 = 4539717;
      }

      if (v3 <= 2u)
      {
        v8 = v23;
      }

      else
      {
        v8 = v19;
      }

      if (v16 <= 2)
      {
        v9 = v17;
      }

      else
      {
        v9 = v18;
      }

      v24 = *a2;
      if (v24 > 2)
      {
        if (v24 == 3)
        {
          v25 = 0xE600000000000000;
          v15 = 0x454545454545;
        }

        else if (v24 == 4)
        {
          v25 = 0xE100000000000000;
          v15 = 101;
        }

        else
        {
          v25 = 0xE200000000000000;
          v15 = 25957;
        }
      }

      else if (*a2)
      {
        if (v24 == 1)
        {
          v25 = 0xE400000000000000;
          v15 = 1162167621;
        }

        else
        {
          v25 = 0xE500000000000000;
          v15 = 0x4545454545;
        }
      }

      else
      {
        v25 = 0xE300000000000000;
      }

      goto LABEL_293;
    case 0xCu:
      if ((v6 & 0xF8) != 0x60)
      {
        return 0;
      }

      v34 = v3;
      v35 = 0xE100000000000000;
      v36 = 99;
      v37 = 0xE400000000000000;
      v38 = 1667457891;
      v39 = 0xE500000000000000;
      v40 = 0x6363636363;
      if (v3 != 3)
      {
        v40 = 0x636363636363;
        v39 = 0xE600000000000000;
      }

      if (v3 != 2)
      {
        v38 = v40;
        v37 = v39;
      }

      if (v3)
      {
        v36 = 6513507;
        v35 = 0xE300000000000000;
      }

      if (v3 <= 1u)
      {
        v8 = v36;
      }

      else
      {
        v8 = v38;
      }

      if (v34 <= 1)
      {
        v9 = v35;
      }

      else
      {
        v9 = v37;
      }

      v41 = *a2;
      if (v41 <= 1)
      {
        if (*a2)
        {
          v25 = 0xE300000000000000;
          v15 = 6513507;
        }

        else
        {
          v25 = 0xE100000000000000;
          v15 = 99;
        }
      }

      else if (v41 == 2)
      {
        v25 = 0xE400000000000000;
        v15 = 1667457891;
      }

      else if (v41 == 3)
      {
        v25 = 0xE500000000000000;
        v15 = 0x6363636363;
      }

      else
      {
        v25 = 0xE600000000000000;
        v15 = 0x636363636363;
      }

      goto LABEL_293;
    case 0xDu:
      return (v6 & 0xF8) == 0x68 && (specialized == infix<A>(_:_:)(v3, *a2) & 1) != 0;
    case 0xEu:
      if ((v6 & 0xF8) != 0x70)
      {
        return 0;
      }

      v13 = 0xE100000000000000;
      v14 = 106;
      switch(v3)
      {
        case 1:
          v13 = 0xE200000000000000;
          v14 = 27242;
          break;
        case 2:
          v13 = 0xE300000000000000;
          v14 = 6974058;
          break;
        case 3:
          v13 = 0xE400000000000000;
          v14 = 1785358954;
          break;
        case 4:
          v13 = 0xE500000000000000;
          v14 = 0x6A6A6A6A6ALL;
          break;
        case 5:
          v13 = 0xE600000000000000;
          v14 = 0x6A6A6A6A6A6ALL;
          break;
        case 6:
          v14 = 74;
          break;
        case 7:
          v13 = 0xE200000000000000;
          v14 = 19018;
          break;
        case 8:
          v14 = 67;
          break;
        case 9:
          v13 = 0xE200000000000000;
          v14 = 17219;
          break;
        case 10:
          v13 = 0xE300000000000000;
          v14 = 4408131;
          break;
        case 11:
          v13 = 0xE400000000000000;
          v14 = 1128481603;
          break;
        case 12:
          v13 = 0xE500000000000000;
          v14 = 0x4343434343;
          break;
        case 13:
          v13 = 0xE600000000000000;
          v14 = 0x434343434343;
          break;
        default:
          break;
      }

      v131 = 0xE100000000000000;
      v132 = 106;
      switch(*a2)
      {
        case 1u:
          v131 = 0xE200000000000000;
          v132 = 27242;
          break;
        case 2u:
          v131 = 0xE300000000000000;
          v132 = 6974058;
          break;
        case 3u:
          v131 = 0xE400000000000000;
          v132 = 1785358954;
          break;
        case 4u:
          v131 = 0xE500000000000000;
          v132 = 0x6A6A6A6A6ALL;
          break;
        case 5u:
          v131 = 0xE600000000000000;
          v132 = 0x6A6A6A6A6A6ALL;
          break;
        case 6u:
          v132 = 74;
          break;
        case 7u:
          v131 = 0xE200000000000000;
          v132 = 19018;
          break;
        case 8u:
          v132 = 67;
          break;
        case 9u:
          v131 = 0xE200000000000000;
          v132 = 17219;
          break;
        case 0xAu:
          v131 = 0xE300000000000000;
          v132 = 4408131;
          break;
        case 0xBu:
          v131 = 0xE400000000000000;
          v132 = 1128481603;
          break;
        case 0xCu:
          v131 = 0xE500000000000000;
          v132 = 0x4343434343;
          break;
        case 0xDu:
          v131 = 0xE600000000000000;
          v132 = 0x434343434343;
          break;
        default:
          break;
      }

      if (v14 == v132 && v13 == v131)
      {
        goto LABEL_295;
      }

      v133 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return (v133 & 1) != 0;
    case 0xFu:
      if ((v6 & 0xF8) != 0x78)
      {
        return 0;
      }

      v10 = (v3 & 1) == 0;
      v11 = 109;
      v12 = 28013;
      goto LABEL_82;
    case 0x10u:
      if ((v6 & 0xF8) != 0x80)
      {
        return 0;
      }

      v10 = (v3 & 1) == 0;
      v11 = 115;
      v12 = 29555;
LABEL_82:
      if (v10)
      {
        v44 = v11;
      }

      else
      {
        v44 = v12;
      }

      if (v10)
      {
        v45 = 0xE100000000000000;
      }

      else
      {
        v45 = 0xE200000000000000;
      }

      if (v5)
      {
        v46 = v12;
      }

      else
      {
        v46 = v11;
      }

      if (v5)
      {
        v47 = 0xE200000000000000;
      }

      else
      {
        v47 = 0xE100000000000000;
      }

      if (v44 != v46 || v45 != v47)
      {
        goto LABEL_335;
      }

      goto LABEL_295;
    case 0x11u:
      return (v6 & 0xF8) == 0x88 && (specialized == infix<A>(_:_:)(v3, v4 & 1, v5, v6 & 1) & 1) != 0;
    case 0x12u:
      if ((v6 & 0xF8) != 0x90)
      {
        return 0;
      }

      v79 = v3;
      if (v3 > 5u)
      {
        v102 = 0xE200000000000000;
        v103 = 22102;
        v104 = 0xE300000000000000;
        v105 = 5658198;
        v106 = 0xE400000000000000;
        if (v3 != 10)
        {
          v105 = 1448498774;
          v104 = 0xE400000000000000;
        }

        if (v3 != 9)
        {
          v103 = v105;
          v102 = v104;
        }

        v107 = 0xE100000000000000;
        v108 = 118;
        v109 = 1987475062;
        if (v3 != 7)
        {
          v109 = 86;
          v106 = 0xE100000000000000;
        }

        if (v3 != 6)
        {
          v108 = v109;
          v107 = v106;
        }

        if (v3 <= 8u)
        {
          v8 = v108;
        }

        else
        {
          v8 = v103;
        }

        if (v79 <= 8)
        {
          v9 = v107;
        }

        else
        {
          v9 = v102;
        }
      }

      else
      {
        v80 = 0xE100000000000000;
        v81 = 122;
        v82 = 0xE400000000000000;
        v83 = 1515870810;
        v84 = 0xE500000000000000;
        v85 = 0x5A5A5A5A5ALL;
        if (v3 != 4)
        {
          v85 = 79;
          v84 = 0xE100000000000000;
        }

        if (v3 != 3)
        {
          v83 = v85;
          v82 = v84;
        }

        v86 = 0xE400000000000000;
        v87 = 2054847098;
        if (v3 != 1)
        {
          v87 = 90;
          v86 = 0xE100000000000000;
        }

        if (v3)
        {
          v81 = v87;
          v80 = v86;
        }

        if (v3 <= 2u)
        {
          v8 = v81;
        }

        else
        {
          v8 = v83;
        }

        if (v79 <= 2)
        {
          v9 = v80;
        }

        else
        {
          v9 = v82;
        }
      }

      v110 = *a2;
      if (v110 > 5)
      {
        if (*a2 > 8u)
        {
          if (v110 == 9)
          {
            v25 = 0xE200000000000000;
            v15 = 22102;
          }

          else if (v110 == 10)
          {
            v25 = 0xE300000000000000;
            v15 = 5658198;
          }

          else
          {
            v25 = 0xE400000000000000;
            v15 = 1448498774;
          }
        }

        else if (v110 == 6)
        {
          v25 = 0xE100000000000000;
          v15 = 118;
        }

        else if (v110 == 7)
        {
          v25 = 0xE400000000000000;
          v15 = 1987475062;
        }

        else
        {
          v25 = 0xE100000000000000;
          v15 = 86;
        }
      }

      else if (*a2 > 2u)
      {
        if (v110 == 3)
        {
          v25 = 0xE400000000000000;
          v15 = 1515870810;
        }

        else if (v110 == 4)
        {
          v25 = 0xE500000000000000;
          v15 = 0x5A5A5A5A5ALL;
        }

        else
        {
          v25 = 0xE100000000000000;
          v15 = 79;
        }
      }

      else if (*a2)
      {
        if (v110 == 1)
        {
          v25 = 0xE400000000000000;
          v15 = 2054847098;
        }

        else
        {
          v25 = 0xE100000000000000;
          v15 = 90;
        }
      }

      else
      {
        v25 = 0xE100000000000000;
        v15 = 122;
      }

      goto LABEL_293;
    default:
      if (v6 >= 8)
      {
        return 0;
      }

      v7 = v3;
      if (v3)
      {
        if (v3 == 1)
        {
          v8 = 1195853639;
        }

        else
        {
          v8 = 0x4747474747;
        }

        if (v7 == 1)
        {
          v9 = 0xE400000000000000;
        }

        else
        {
          v9 = 0xE500000000000000;
        }
      }

      else
      {
        v9 = 0xE100000000000000;
        v8 = 71;
      }

      if (*a2)
      {
        v111 = *a2 == 1;
        v112 = 0xE400000000000000;
        v113 = 1195853639;
        v114 = 0xE500000000000000;
        v115 = 0x4747474747;
LABEL_287:
        if (v111)
        {
          v15 = v113;
        }

        else
        {
          v15 = v115;
        }

        if (v111)
        {
          v25 = v112;
        }

        else
        {
          v25 = v114;
        }
      }

      else
      {
        v25 = 0xE100000000000000;
        v15 = 71;
      }

LABEL_293:
      if (v8 == v15 && v9 == v25)
      {
LABEL_295:

        return 1;
      }

      else
      {
LABEL_335:
        v130 = _stringCompareWithSmolCheck(_:_:expecting:)();

        return (v130 & 1) != 0;
      }
  }
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys and conformance Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys and conformance Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys and conformance Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys and conformance Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys and conformance Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys and conformance Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys and conformance Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys and conformance Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys and conformance Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys and conformance Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys and conformance Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys and conformance Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys and conformance Date.FormatStyle.Symbol.Hour.AMPMStyle.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.HourCycle.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys and conformance Date.FormatStyle.Symbol.VerbatimHour.Clock.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.Era and conformance Date.FormatStyle.Symbol.Era()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Era and conformance Date.FormatStyle.Symbol.Era;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Era and conformance Date.FormatStyle.Symbol.Era)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Era and conformance Date.FormatStyle.Symbol.Era);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.Year and conformance Date.FormatStyle.Symbol.Year()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Year and conformance Date.FormatStyle.Symbol.Year;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Year and conformance Date.FormatStyle.Symbol.Year)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Year and conformance Date.FormatStyle.Symbol.Year);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.YearForWeekOfYear and conformance Date.FormatStyle.Symbol.YearForWeekOfYear()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.YearForWeekOfYear and conformance Date.FormatStyle.Symbol.YearForWeekOfYear;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.YearForWeekOfYear and conformance Date.FormatStyle.Symbol.YearForWeekOfYear)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.YearForWeekOfYear and conformance Date.FormatStyle.Symbol.YearForWeekOfYear);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.CyclicYear and conformance Date.FormatStyle.Symbol.CyclicYear()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.CyclicYear and conformance Date.FormatStyle.Symbol.CyclicYear;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.CyclicYear and conformance Date.FormatStyle.Symbol.CyclicYear)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.CyclicYear and conformance Date.FormatStyle.Symbol.CyclicYear);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.Quarter and conformance Date.FormatStyle.Symbol.Quarter()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Quarter and conformance Date.FormatStyle.Symbol.Quarter;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Quarter and conformance Date.FormatStyle.Symbol.Quarter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Quarter and conformance Date.FormatStyle.Symbol.Quarter);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.Month and conformance Date.FormatStyle.Symbol.Month()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Month and conformance Date.FormatStyle.Symbol.Month;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Month and conformance Date.FormatStyle.Symbol.Month)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Month and conformance Date.FormatStyle.Symbol.Month);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.Week and conformance Date.FormatStyle.Symbol.Week()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Week and conformance Date.FormatStyle.Symbol.Week;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Week and conformance Date.FormatStyle.Symbol.Week)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Week and conformance Date.FormatStyle.Symbol.Week);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.Day and conformance Date.FormatStyle.Symbol.Day()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Day and conformance Date.FormatStyle.Symbol.Day;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Day and conformance Date.FormatStyle.Symbol.Day)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Day and conformance Date.FormatStyle.Symbol.Day);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.DayOfYear and conformance Date.FormatStyle.Symbol.DayOfYear()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.DayOfYear and conformance Date.FormatStyle.Symbol.DayOfYear;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.DayOfYear and conformance Date.FormatStyle.Symbol.DayOfYear)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.DayOfYear and conformance Date.FormatStyle.Symbol.DayOfYear);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.Weekday and conformance Date.FormatStyle.Symbol.Weekday()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Weekday and conformance Date.FormatStyle.Symbol.Weekday;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Weekday and conformance Date.FormatStyle.Symbol.Weekday)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Weekday and conformance Date.FormatStyle.Symbol.Weekday);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.DayPeriod and conformance Date.FormatStyle.Symbol.DayPeriod()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.DayPeriod and conformance Date.FormatStyle.Symbol.DayPeriod;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.DayPeriod and conformance Date.FormatStyle.Symbol.DayPeriod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.DayPeriod and conformance Date.FormatStyle.Symbol.DayPeriod);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.Hour and conformance Date.FormatStyle.Symbol.Hour()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Hour and conformance Date.FormatStyle.Symbol.Hour;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Hour and conformance Date.FormatStyle.Symbol.Hour)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Hour and conformance Date.FormatStyle.Symbol.Hour);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.Minute and conformance Date.FormatStyle.Symbol.Minute()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Minute and conformance Date.FormatStyle.Symbol.Minute;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Minute and conformance Date.FormatStyle.Symbol.Minute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Minute and conformance Date.FormatStyle.Symbol.Minute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.Second and conformance Date.FormatStyle.Symbol.Second()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Second and conformance Date.FormatStyle.Symbol.Second;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Second and conformance Date.FormatStyle.Symbol.Second)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Second and conformance Date.FormatStyle.Symbol.Second);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SecondFraction and conformance Date.FormatStyle.Symbol.SecondFraction()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SecondFraction and conformance Date.FormatStyle.Symbol.SecondFraction;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SecondFraction and conformance Date.FormatStyle.Symbol.SecondFraction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SecondFraction and conformance Date.FormatStyle.Symbol.SecondFraction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.TimeZone and conformance Date.FormatStyle.Symbol.TimeZone()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.TimeZone and conformance Date.FormatStyle.Symbol.TimeZone;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.TimeZone and conformance Date.FormatStyle.Symbol.TimeZone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.TimeZone and conformance Date.FormatStyle.Symbol.TimeZone);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.StandaloneQuarter and conformance Date.FormatStyle.Symbol.StandaloneQuarter()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.StandaloneQuarter and conformance Date.FormatStyle.Symbol.StandaloneQuarter;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.StandaloneQuarter and conformance Date.FormatStyle.Symbol.StandaloneQuarter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.StandaloneQuarter and conformance Date.FormatStyle.Symbol.StandaloneQuarter);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.StandaloneMonth and conformance Date.FormatStyle.Symbol.StandaloneMonth()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.StandaloneMonth and conformance Date.FormatStyle.Symbol.StandaloneMonth;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.StandaloneMonth and conformance Date.FormatStyle.Symbol.StandaloneMonth)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.StandaloneMonth and conformance Date.FormatStyle.Symbol.StandaloneMonth);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.StandaloneWeekday and conformance Date.FormatStyle.Symbol.StandaloneWeekday()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.StandaloneWeekday and conformance Date.FormatStyle.Symbol.StandaloneWeekday;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.StandaloneWeekday and conformance Date.FormatStyle.Symbol.StandaloneWeekday)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.StandaloneWeekday and conformance Date.FormatStyle.Symbol.StandaloneWeekday);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.VerbatimHour and conformance Date.FormatStyle.Symbol.VerbatimHour()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour and conformance Date.FormatStyle.Symbol.VerbatimHour;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour and conformance Date.FormatStyle.Symbol.VerbatimHour)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour and conformance Date.FormatStyle.Symbol.VerbatimHour);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol and conformance Date.FormatStyle.Symbol()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol and conformance Date.FormatStyle.Symbol;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol and conformance Date.FormatStyle.Symbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol and conformance Date.FormatStyle.Symbol);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.DayPeriod.Width and conformance Date.FormatStyle.Symbol.DayPeriod.Width()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.DayPeriod.Width and conformance Date.FormatStyle.Symbol.DayPeriod.Width;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.DayPeriod.Width and conformance Date.FormatStyle.Symbol.DayPeriod.Width)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.DayPeriod.Width and conformance Date.FormatStyle.Symbol.DayPeriod.Width);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.Hour.AMPMStyle and conformance Date.FormatStyle.Symbol.Hour.AMPMStyle()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Hour.AMPMStyle and conformance Date.FormatStyle.Symbol.Hour.AMPMStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Hour.AMPMStyle and conformance Date.FormatStyle.Symbol.Hour.AMPMStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.Hour.AMPMStyle and conformance Date.FormatStyle.Symbol.Hour.AMPMStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.VerbatimHour.HourCycle and conformance Date.FormatStyle.Symbol.VerbatimHour.HourCycle()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.HourCycle and conformance Date.FormatStyle.Symbol.VerbatimHour.HourCycle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.HourCycle and conformance Date.FormatStyle.Symbol.VerbatimHour.HourCycle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.HourCycle and conformance Date.FormatStyle.Symbol.VerbatimHour.HourCycle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.VerbatimHour.Clock and conformance Date.FormatStyle.Symbol.VerbatimHour.Clock()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.Clock and conformance Date.FormatStyle.Symbol.VerbatimHour.Clock;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.Clock and conformance Date.FormatStyle.Symbol.VerbatimHour.Clock)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.VerbatimHour.Clock and conformance Date.FormatStyle.Symbol.VerbatimHour.Clock);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.TimeZone.Width and conformance Date.FormatStyle.Symbol.TimeZone.Width()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.TimeZone.Width and conformance Date.FormatStyle.Symbol.TimeZone.Width;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.TimeZone.Width and conformance Date.FormatStyle.Symbol.TimeZone.Width)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.TimeZone.Width and conformance Date.FormatStyle.Symbol.TimeZone.Width);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Date.FormatStyle.Symbol.Year(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Date.FormatStyle.Symbol.Year(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Date.FormatStyle.Symbol.Quarter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 6;
  if (v6 < 5)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t getEnumTagSinglePayload for Date.FormatStyle.Symbol.Era(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t getEnumTagSinglePayload for Date.FormatStyle.Symbol.Weekday(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 6)
  {
    v7 = 6;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 7;
  if (v6 < 6)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for Date.FormatStyle.Symbol.Weekday(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Date.FormatStyle.Symbol.DayPeriod(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 9)
  {
    v7 = 9;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 10;
  if (v6 < 9)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for Date.FormatStyle.Symbol.DayPeriod(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Date.FormatStyle.Symbol.Hour(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 0xE)
  {
    v7 = 14;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 15;
  if (v6 < 0xE)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for Date.FormatStyle.Symbol.Hour(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Date.FormatStyle.Symbol.Minute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}