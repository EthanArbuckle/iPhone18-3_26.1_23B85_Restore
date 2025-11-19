Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.Attributed()
{
  v1 = v0[1];
  v64 = *v0;
  v65 = v1;
  v66 = v0[2];
  v67 = *(v0 + 24);
  v2 = *(v0 + 7);
  v3 = *(v0 + 64);
  v4 = *(v0 + 10);
  v5 = *(v0 + 12);
  v6 = *(v0 + 14);
  v52 = *(v0 + 120);
  v7 = *(v0 + 121);
  Hasher.init(_seed:)();
  specialized Optional<A>.hash(into:)(v63);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v2);
  }

  ObjectType = swift_getObjectType();
  if ((*(v4 + 48))(ObjectType, v4))
  {
    v9 = 1;
LABEL_8:
    Hasher._combine(_:)(v9);
    v10 = v52;
    goto LABEL_57;
  }

  Hasher._combine(_:)(0);
  (*(v4 + 64))(ObjectType, v4);
  String.hash(into:)();

  (*(v4 + 464))(&v53, ObjectType, v4);
  v61[6] = v59;
  v62[0] = *v60;
  *(v62 + 12) = *&v60[12];
  v61[2] = v55;
  v61[3] = v56;
  v61[4] = v57;
  v61[5] = v58;
  v61[0] = v53;
  v61[1] = v54;
  if (_s10Foundation17LocalePreferencesVSgWOg(v61) == 1)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v51 = v7;
  v11 = v53;
  v12 = *(&v53 + 1);
  v13 = *(&v54 + 1);
  v14 = *(&v55 + 1);
  v41 = v56;
  v42 = v57;
  v43 = v58;
  v44 = v59;
  v45 = *v60;
  v46 = *&v60[16];
  v47 = v60[24];
  v15 = v60[25];
  v49 = v60[26];
  v50 = v60[27];
  Hasher._combine(_:)(1u);
  if (v11 == 2)
  {
    v16 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v16 = v11 & 1;
  }

  v48 = v15;
  Hasher._combine(_:)(v16);
  if (v12)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v12 + 16));
    v17 = *(v12 + 16);
    if (v17)
    {
      v18 = v12 + 40;
      do
      {

        String.hash(into:)();

        v18 += 16;
        --v17;
      }

      while (v17);
    }

    if (v13)
    {
      goto LABEL_17;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v13)
    {
LABEL_17:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_20;
    }
  }

  Hasher._combine(_:)(0);
LABEL_20:
  v7 = v51;
  if (v14)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    v19 = *(&v41 + 1);
    v20 = v41;
    if (v41)
    {
      goto LABEL_22;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v19 = *(&v41 + 1);
    v20 = v41;
    if (v41)
    {
LABEL_22:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v63, v20, v21, v22, v23, v24, v25, v26);
      if (v19)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }
  }

  Hasher._combine(_:)(0);
  if (v19)
  {
LABEL_23:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v63, v19, v27, v28, v29, v30, v31, v32);
    if (v42)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

LABEL_29:
  Hasher._combine(_:)(0);
  if (v42)
  {
LABEL_24:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v42 + 1))
    {
      goto LABEL_25;
    }

LABEL_31:
    Hasher._combine(_:)(0);
    if (v43)
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

LABEL_30:
  Hasher._combine(_:)(0);
  if (!*(&v42 + 1))
  {
    goto LABEL_31;
  }

LABEL_25:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
  _CFObject.hash(into:)();
  if (v43)
  {
LABEL_26:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_33;
  }

LABEL_32:
  Hasher._combine(_:)(0);
LABEL_33:
  if (*(&v43 + 1))
  {
    v33 = v48;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v44)
    {
LABEL_35:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      goto LABEL_38;
    }
  }

  else
  {
    v33 = v48;
    Hasher._combine(_:)(0);
    if (v44)
    {
      goto LABEL_35;
    }
  }

  Hasher._combine(_:)(0);
LABEL_38:
  v10 = v52;
  if (*(&v44 + 1))
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v63, *(&v44 + 1));
    v34 = v45;
    if (v45)
    {
      goto LABEL_40;
    }

LABEL_43:
    Hasher._combine(_:)(0);
    v35 = v49;
    if (v46)
    {
      goto LABEL_41;
    }

    goto LABEL_44;
  }

  Hasher._combine(_:)(0);
  v34 = v45;
  if (!v45)
  {
    goto LABEL_43;
  }

LABEL_40:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(v63, v34);
  v35 = v49;
  if (v46)
  {
LABEL_41:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_45;
  }

LABEL_44:
  Hasher._combine(_:)(0);
LABEL_45:
  if (v47 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v47 & 1);
  }

  if (v33 != 2)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v33 & 1);
    if (v35 != 2)
    {
      goto LABEL_50;
    }

LABEL_52:
    v36 = 0;
    goto LABEL_53;
  }

  Hasher._combine(_:)(0);
  if (v35 == 2)
  {
    goto LABEL_52;
  }

LABEL_50:
  Hasher._combine(_:)(1u);
  v36 = v35 & 1;
LABEL_53:
  Hasher._combine(_:)(v36);
  if (v50 == 2)
  {
    v37 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v37 = v50 & 1;
  }

  Hasher._combine(_:)(v37);
  outlined destroy of TermOfAddress?(&v53, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_57:
  v38 = swift_getObjectType();
  (*(v5 + 120))(v63, v38, v5);
  v39 = swift_getObjectType();
  (*(v6 + 120))(v63, v39, v6);
  MEMORY[0x1865CD060](v10);
  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Date.FormatStyle.DateStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.FormatStyle.DateStyle.CodingKeys and conformance Date.FormatStyle.DateStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Date.FormatStyle.DateStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.FormatStyle.DateStyle.CodingKeys and conformance Date.FormatStyle.DateStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Date.FormatStyle.TimeStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.FormatStyle.TimeStyle.CodingKeys and conformance Date.FormatStyle.TimeStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Date.FormatStyle.TimeStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.FormatStyle.TimeStyle.CodingKeys and conformance Date.FormatStyle.TimeStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Date.FormatStyle.DateStyle.encode(to:)(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

uint64_t Date.FormatStyle.DateStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X3>, uint64_t *a4@<X8>)
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

uint64_t protocol witness for Encodable.encode(to:) in conformance Date.FormatStyle.DateStyle(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
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

uint64_t Date.FormatStyle.parseStrategy.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[6];
  v4 = v16[0];
  *(v16 + 10) = *(v1 + 106);
  v5 = *(v16 + 10);
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v8 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 106) = v5;
  return outlined init with copy of Date.FormatStyle(v11, &v10);
}

uint64_t protocol witness for ParseableFormatStyle.parseStrategy.getter in conformance Date.FormatStyle@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[6];
  v4 = v16[0];
  *(v16 + 10) = *(v1 + 106);
  v5 = *(v16 + 10);
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v8 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 106) = v5;
  return outlined init with copy of Date.FormatStyle(v11, &v10);
}

Foundation::Date_optional __swiftcall Date.FormatStyle.discreteInput(before:)(Foundation::Date before)
{
  v3 = v2;
  *&v7._time = *v1;
  result = Date.FormatStyle.bound(for:isLower:)(v7, &v7);
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

Swift::tuple_bound_Foundation_Date_includedInRangeOfInput_Bool_optional __swiftcall Date.FormatStyle.bound(for:isLower:)(Foundation::Date a1, Swift::Bool isLower)
{
  v5 = v2;
  v6 = v3;
  v7 = *isLower;
  v8 = v4[5];
  v27 = v4[4];
  v28 = v8;
  v29[0] = v4[6];
  *(v29 + 10) = *(v4 + 106);
  v9 = v4[1];
  v23 = *v4;
  v24 = v9;
  v10 = v4[3];
  v25 = v4[2];
  v26 = v10;
  v31 = *(v4 + 104);
  v22 = v31;
  v30 = *(v4 + 88);
  v21 = *(v4 + 88);
  outlined init with copy of Calendar(&v31, &v19);
  outlined init with copy of TimeZone(&v30, &v19);
  Calendar.timeZone.setter(&v21);
  v21 = v22;
  v18 = v7;
  v11 = one-time initialization token for updateScheduleCache;
  v12 = swift_unknownObjectRetain();
  if (v11 != -1)
  {
    v12 = swift_once();
  }

  v13 = static ICUDateFormatter.DateFormatInfo.updateScheduleCache;
  MEMORY[0x1EEE9AC00](v12);
  os_unfair_lock_lock((v13 + 24));
  partial apply for closure #1 in static ICUDateFormatter.DateFormatInfo.cachedUpdateSchedule(for:)((v13 + 16), &v19);
  os_unfair_lock_unlock((v13 + 24));
  v16 = v19;
  v17 = v20;
  Calendar.bound(for:isLower:updateSchedule:)(&v18, v5 & 1, &v16, v6);
  v14 = swift_unknownObjectRelease_n();
  result.value.bound._time = v15;
  result.value.includedInRangeOfInput = v14;
  return result;
}

Foundation::Date_optional __swiftcall Date.FormatStyle.discreteInput(after:)(Foundation::Date after)
{
  v3 = v2;
  *&v6._time = *v1;
  result = Date.FormatStyle.bound(for:isLower:)(v6, &v6);
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

Foundation::Date_optional __swiftcall Date.FormatStyle.Attributed.discreteInput(before:)(Foundation::Date before)
{
  v2 = Date.FormatStyle.Attributed.discreteInput(before:)(v1, Date.FormatStyle.discreteInput(before:));
  result.value = *&v3;
  result.is_nil = v2;
  return result;
}

Foundation::Date_optional __swiftcall Date.FormatStyle.Attributed.discreteInput(after:)(Foundation::Date after)
{
  v2 = Date.FormatStyle.Attributed.discreteInput(before:)(v1, Date.FormatStyle.discreteInput(after:));
  result.value = *&v3;
  result.is_nil = v2;
  return result;
}

uint64_t Date.FormatStyle.Attributed.discreteInput(before:)(uint64_t *a1, void (*a2)(uint64_t *))
{
  v4 = *a1;
  v5 = v2[5];
  v13[4] = v2[4];
  v13[5] = v5;
  v14[0] = v2[6];
  *(v14 + 10) = *(v2 + 106);
  v6 = v2[1];
  v13[0] = *v2;
  v13[1] = v6;
  v7 = v2[3];
  v13[2] = v2[2];
  v13[3] = v7;
  v12 = v4;
  outlined init with copy of Date.FormatStyle(v13, v15);
  a2(&v12);
  v8 = v2[5];
  v15[4] = v2[4];
  v15[5] = v8;
  v16[0] = v2[6];
  *(v16 + 10) = *(v2 + 106);
  v9 = v2[1];
  v15[0] = *v2;
  v15[1] = v9;
  v10 = v2[3];
  v15[2] = v2[2];
  v15[3] = v10;
  return outlined destroy of Date.FormatStyle(v15);
}

uint64_t protocol witness for DiscreteFormatStyle.discreteInput(before:) in conformance Date.FormatStyle.Attributed(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  v6 = *a1;
  v7 = v4[5];
  v15[4] = v4[4];
  v15[5] = v7;
  v16[0] = v4[6];
  *(v16 + 10) = *(v4 + 106);
  v8 = v4[1];
  v15[0] = *v4;
  v15[1] = v8;
  v9 = v4[3];
  v15[2] = v4[2];
  v15[3] = v9;
  v14 = v6;
  outlined init with copy of Date.FormatStyle(v15, v17);
  a4(&v14);
  v10 = v4[5];
  v17[4] = v4[4];
  v17[5] = v10;
  v18[0] = v4[6];
  *(v18 + 10) = *(v4 + 106);
  v11 = v4[1];
  v17[0] = *v4;
  v17[1] = v11;
  v12 = v4[3];
  v17[2] = v4[2];
  v17[3] = v12;
  return outlined destroy of Date.FormatStyle(v17);
}

double *Calendar.advance(_:_:by:_:)@<X0>(double *result@<X0>, __int128 a2@<X2:X1>, _BYTE *a3@<X3>, uint64_t a4@<X8>, Foundation::Date a5@<D0>)
{
  v6 = *(&a2 + 1);
  v8 = *result;
  v9 = *a2;
  v10 = *a3;
  v12 = *v5;
  v11 = *(v5 + 8);
  if (!*a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd);
    v17 = static _SetStorage.allocate(capacity:)();
    v18 = v17 + 56;
    v10 = byte_1EEED0F60;
    Hasher.init(_seed:)();
    MEMORY[0x1865CD060](v10);
    v19 = Hasher._finalize()();
    v20 = -1 << *(v17 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    v23 = *(v17 + 56 + 8 * (v21 >> 6));
    v24 = 1 << v21;
    v25 = *(v17 + 48);
    if (((1 << v21) & v23) != 0)
    {
      v26 = ~v20;
      while (*(v25 + v21) != v10)
      {
        v21 = (v21 + 1) & v26;
        v22 = v21 >> 6;
        v23 = *(v18 + 8 * (v21 >> 6));
        v24 = 1 << v21;
        if (((1 << v21) & v23) == 0)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      *(v18 + 8 * v22) = v24 | v23;
      *(v25 + v21) = v10;
      v27 = *(v17 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        __break(1u);
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      *(v17 + 16) = v29;
    }

    v86[0] = v12;
    v86[1] = v11;
    Calendar.ComponentSet.init(_:)(v17, v92);
    if (one-time initialization token for validCalendarRange != -1)
    {
      swift_once();
    }

    v30 = static Date.validCalendarRange;
    if (*(&static Date.validCalendarRange + 1) >= v8)
    {
      v31 = v8;
    }

    else
    {
      v31 = *(&static Date.validCalendarRange + 1);
    }

    if (*&static Date.validCalendarRange >= v31)
    {
      v31 = *&static Date.validCalendarRange;
    }

    *__dst = v31;
    Calendar._dateComponents(_:from:)(v92, __dst, v95);
    result = outlined destroy of DateComponents(v95);
    if (v95[5])
    {
LABEL_132:
      *a4 = 0;
      goto LABEL_133;
    }

    if (v9)
    {
      v32 = v95[4] - v6;
      if (__OFSUB__(v95[4], v6))
      {
        __break(1u);
        goto LABEL_27;
      }
    }

    else
    {
      v32 = v95[4] + v6;
      if (__OFADD__(v95[4], v6))
      {
LABEL_139:
        __break(1u);
LABEL_140:
        swift_once();
        goto LABEL_38;
      }
    }

    BYTE8(__dst[2]) = 1;
    *&__dst[3] = 0;
    BYTE8(__dst[3]) = 1;
    *&__dst[4] = 0;
    BYTE8(__dst[4]) = 1;
    *&__dst[5] = 0;
    BYTE8(__dst[5]) = 1;
    *&__dst[6] = 0;
    BYTE8(__dst[6]) = 1;
    *&__dst[7] = 0;
    BYTE8(__dst[7]) = 1;
    *&__dst[8] = 0;
    BYTE8(__dst[8]) = 1;
    *&__dst[9] = 0;
    BYTE8(__dst[9]) = 1;
    *&__dst[10] = 0;
    BYTE8(__dst[10]) = 1;
    *&__dst[11] = 0;
    BYTE8(__dst[11]) = 1;
    *&__dst[12] = 0;
    BYTE8(__dst[12]) = 1;
    *&__dst[13] = 0;
    BYTE8(__dst[13]) = 1;
    *&__dst[14] = 0;
    BYTE8(__dst[14]) = 1;
    *&__dst[15] = 0;
    BYTE8(__dst[15]) = 1;
    BYTE8(__dst[16]) = 1;
    *&__dst[16] = 0;
    *&__dst[17] = 0;
    BYTE8(__dst[17]) = 1;
    *(&__dst[17] + 9) = 514;
    memset(__dst, 0, 40);
    __src[0] = 0uLL;
    DateComponents.timeZone.setter(__src);
    if (v32 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v46 = 0;
    }

    else
    {
      v46 = v32;
    }

    *&__dst[2] = v46;
    BYTE8(__dst[2]) = v32 == 0x7FFFFFFFFFFFFFFFLL;
    *&__dst[3] = 0;
    BYTE8(__dst[3]) = 1;
    *&__dst[4] = 0;
    BYTE8(__dst[4]) = 1;
    *&__dst[5] = 0;
    BYTE8(__dst[5]) = 1;
    *&__dst[7] = 0;
    BYTE8(__dst[7]) = 1;
    *&__dst[8] = 0;
    BYTE8(__dst[8]) = 1;
    *&__dst[9] = 0;
    BYTE8(__dst[9]) = 1;
    *&__dst[10] = 0;
    BYTE8(__dst[10]) = 1;
    *&__dst[11] = 0;
    BYTE8(__dst[11]) = 1;
    *&__dst[12] = 0;
    BYTE8(__dst[12]) = 1;
    *&__dst[13] = 0;
    BYTE8(__dst[13]) = 1;
    *&__dst[15] = 0;
    BYTE8(__dst[15]) = 1;
    BYTE8(__dst[16]) = 1;
    *&__dst[16] = 0;
    *&__dst[17] = 0;
    BYTE8(__dst[17]) = 1;
    *&__dst[6] = 0;
    BYTE8(__dst[6]) = 1;
    memcpy(__src, __dst, 0x11BuLL);
    memcpy(v90, __dst, sizeof(v90));
    *&v89[0] = v12;
    *(&v89[0] + 1) = v11;
    if (DateComponents._validate(for:)(v89) && v8 >= *&v30 && *(&v30 + 1) >= v8)
    {
      v47 = 101;
      v48 = *&v8;
      while (1)
      {
        *&v88[0] = v12;
        *(&v88[0] + 1) = v11;
        v78 = *&v8;
        memcpy(v90, __src, sizeof(v90));
        LOBYTE(v85) = 0;
        LOBYTE(v82) = 0;
        HIBYTE(v84) = v9;
        v91 = v48;
        v80 = 0.0;
        LOBYTE(v81) = 1;
        Calendar._enumerateDatesStep(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:inSearchingDate:previouslyReturnedMatchDate:)(&v78, v90, &v85, &v82, &v84 + 1, &v91, &v80, v89);
        if (BYTE8(v89[0]) != 2)
        {
          break;
        }

        v48 = *&v89[1];
        if (!--v47)
        {
          *v88 = v8;
          *&v89[0] = v12;
          *(&v89[0] + 1) = v11;
          memcpy(v90, __src, sizeof(v90));
          LOBYTE(v80) = v9;
          LOBYTE(v78) = 0;
          LOBYTE(v91) = 0;
          _handleCalendarResultNotFound(date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(v88, v89, v90, &v80, &v78, &v91);
          goto LABEL_70;
        }
      }

      v49 = *&v89[0];
      result = outlined destroy of DateComponents(__src);
      v50 = 0;
    }

    else
    {
LABEL_70:
      result = outlined destroy of DateComponents(__src);
      v49 = 0;
      v50 = 1;
    }

    *a4 = v49;
    goto LABEL_134;
  }

  if (v10 == 13)
  {
    v13 = (v8 + 978307200.0) * 1000.0;
    v14 = *(&a2 + 1) * 0.000001;
    v15 = v14 * floor(v13 / v14);
    if (v13 >= v15)
    {
      v13 = v15;
    }

    if (v9)
    {
      v16 = v13 / 1000.0 + -978307200.0;
      if (v8 < v16)
      {
        v16 = *result;
      }
    }

    else
    {
      v16 = (v14 + v13) / 1000.0 + -978307200.0;
      if (v8 >= v16)
      {
        v16 = *result;
      }
    }

    *a4 = v16;
LABEL_34:
    *(a4 + 8) = 0;
    return result;
  }

LABEL_27:
  if (v9)
  {
    if (!__OFSUB__(0, v6))
    {
      v90[0] = v10;
      *&a2 = -v6;
      DateComponents.init(component:value:)(a2, v90, __src);
      memcpy(__dst, __src, 0x11BuLL);
      memcpy(v95, __src, 0x11BuLL);
      result = _s10Foundation13URLComponentsV01_B0VSgWOg(v95);
      v33 = 0.0;
      if (result == 1)
      {
LABEL_30:
        *a4 = v33;
LABEL_133:
        v50 = 1;
LABEL_134:
        *(a4 + 8) = v50;
        return result;
      }

      if (one-time initialization token for validCalendarRange != -1)
      {
        swift_once();
      }

      if (*(&static Date.validCalendarRange + 1) >= v8)
      {
        v51 = v8;
      }

      else
      {
        v51 = *(&static Date.validCalendarRange + 1);
      }

      if (*&static Date.validCalendarRange >= v51)
      {
        v52 = *&static Date.validCalendarRange;
      }

      else
      {
        v52 = v51;
      }

      memcpy(__src, v95, 0x11BuLL);
      if (*(&static Date.validCalendarRange + 1) >= v52)
      {
        v53 = v52;
      }

      else
      {
        v53 = *(&static Date.validCalendarRange + 1);
      }

      if (*&static Date.validCalendarRange >= v53)
      {
        v54 = *&static Date.validCalendarRange;
      }

      else
      {
        v54 = v53;
      }

      ObjectType = swift_getObjectType();
      *v89 = v54;
      (*(v11 + 200))(v90, __src, v89, 0, ObjectType, v11);
      v33 = *v90;
      v56 = v90[8];
      if (one-time initialization token for compatibility2 != -1)
      {
        swift_once();
      }

      v57 = static Calendar.compatibility2;
      result = outlined destroy of TermOfAddress?(__dst, &_s10Foundation14DateComponentsVSgMd);
      if (v57 == 1)
      {
        if (v56)
        {
          v33 = v8;
        }
      }

      else if (v56)
      {
        goto LABEL_30;
      }

      BYTE8(__src[2]) = 1;
      *&__src[3] = 0;
      BYTE8(__src[3]) = 1;
      *&__src[4] = 0;
      BYTE8(__src[4]) = 1;
      *&__src[5] = 0;
      BYTE8(__src[5]) = 1;
      *&__src[6] = 0;
      BYTE8(__src[6]) = 1;
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
      *&__src[14] = 0;
      BYTE8(__src[14]) = 1;
      *&__src[15] = 0;
      BYTE8(__src[15]) = 1;
      BYTE8(__src[16]) = 1;
      *&__src[16] = 0;
      *&__src[17] = 0;
      BYTE8(__src[17]) = 1;
      *(&__src[17] + 9) = 514;
      memset(__src, 0, 40);
      *v90 = 0uLL;
      DateComponents.timeZone.setter(v90);
      *&__src[2] = 0;
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd);
      v58 = swift_allocObject();
      *(v58 + 32) = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd);
      v59 = static _SetStorage.allocate(capacity:)();
      v60 = v59 + 56;
      v61 = *(v58 + 32);
      Hasher.init(_seed:)();
      MEMORY[0x1865CD060](v61);
      v62 = Hasher._finalize()();
      v63 = -1 << *(v59 + 32);
      v64 = v62 & ~v63;
      v65 = v64 >> 6;
      v66 = *(v59 + 56 + 8 * (v64 >> 6));
      v67 = 1 << v64;
      v68 = *(v59 + 48);
      if (((1 << v64) & v66) != 0)
      {
        v69 = ~v63;
        while (*(v68 + v64) != v61)
        {
          v64 = (v64 + 1) & v69;
          v65 = v64 >> 6;
          v66 = *(v60 + 8 * (v64 >> 6));
          v67 = 1 << v64;
          if (((1 << v64) & v66) == 0)
          {
            goto LABEL_98;
          }
        }

        goto LABEL_100;
      }

LABEL_98:
      *(v60 + 8 * v65) = v67 | v66;
      *(v68 + v64) = v61;
      v70 = *(v59 + 16);
      v28 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (!v28)
      {
        *(v59 + 16) = v71;
LABEL_100:
        swift_setDeallocating();
        swift_deallocClassInstance();
        v92[0] = v12;
        v92[1] = v11;
        Calendar.ComponentSet.init(_:)(v59, &v91);
        v72 = static Date.validCalendarRange;
        if (*(&static Date.validCalendarRange + 1) >= v8)
        {
          v73 = v8;
        }

        else
        {
          v73 = *(&static Date.validCalendarRange + 1);
        }

        if (*&static Date.validCalendarRange >= v73)
        {
          v73 = *&static Date.validCalendarRange;
        }

        *v89 = v73;
        Calendar._dateComponents(_:from:)(&v91, v89, v90);
        outlined destroy of DateComponents(v90);
        v74.is_nil = 1;
        v74.value = 0;
        switch(v10)
        {
          case 1:
            v74 = *&v90[48];
            break;
          case 2:
            v74 = *&v90[64];
            break;
          case 3:
            v74 = *&v90[80];
            break;
          case 4:
            v74 = *&v90[112];
            break;
          case 5:
            v74 = *&v90[128];
            break;
          case 6:
            v74 = *&v90[144];
            break;
          case 7:
            v74 = *&v90[176];
            break;
          case 8:
            v74 = *&v90[192];
            break;
          case 9:
            v74 = *&v90[208];
            break;
          case 10:
            v74 = *&v90[240];
            break;
          case 11:
            v74 = *&v90[256];
            break;
          case 12:
            v74 = *&v90[272];
            break;
          case 13:
            v74 = *&v90[160];
            break;
          case 14:
          case 15:
          case 16:
          case 17:
            break;
          case 18:
            v74 = *&v90[96];
            break;
          default:
            v74 = *&v90[32];
            break;
        }

        LOBYTE(v88[0]) = v10;
        DateComponents.setValue(_:for:)(v74, v88);
        memcpy(v89, __src, 0x11BuLL);
        memcpy(v88, __src, 0x11BuLL);
        v86[0] = v12;
        v86[1] = v11;
        if (DateComponents._validate(for:)(v86) && v33 >= *&v72 && *(&v72 + 1) >= v33)
        {
          v75 = 101;
          v76 = v33;
          while (1)
          {
            v80 = *&v12;
            v81 = v11;
            v85 = *&v33;
            memcpy(v88, v89, 0x11BuLL);
            v84 = 0;
            v83 = 0;
            v82 = v76;
            v78 = 0;
            LOBYTE(v79) = 1;
            Calendar._enumerateDatesStep(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:inSearchingDate:previouslyReturnedMatchDate:)(&v85, v88, &v84 + 1, &v84, &v83, &v82, &v78, v86);
            if (LOBYTE(v86[1]) != 2)
            {
              break;
            }

            v76 = v87;
            if (!--v75)
            {
              v80 = v33;
              v86[0] = v12;
              v86[1] = v11;
              memcpy(v88, v89, 0x11BuLL);
              LOBYTE(v78) = 0;
              LOBYTE(v85) = 0;
              LOBYTE(v82) = 0;
              _handleCalendarResultNotFound(date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(&v80, v86, v88, &v78, &v85, &v82);
              goto LABEL_131;
            }
          }

          v77 = v86[0];
          memcpy(v88, __src, 0x11BuLL);
          result = outlined destroy of DateComponents(v88);
          *a4 = v77;
          goto LABEL_34;
        }

LABEL_131:
        memcpy(v88, __src, 0x11BuLL);
        result = outlined destroy of DateComponents(v88);
        goto LABEL_132;
      }

      __break(1u);
      goto LABEL_142;
    }

    goto LABEL_137;
  }

  v95[0] = v12;
  v95[1] = v11;
  LOBYTE(__src[0]) = v10;
  *__dst = v8;
  v34 = Calendar.component(_:from:)(__src, a5);
  v28 = __OFADD__(v34, v6);
  v6 += v34;
  if (v28)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  LOBYTE(v95[0]) = v10;
  v9 = v95;
  Calendar.Component.nextHigherUnit.getter(__dst);
  v35 = __dst[0];
  if (LOBYTE(__dst[0]) == 19)
  {
    goto LABEL_50;
  }

  LOBYTE(__dst[0]) = v10;
  LOBYTE(__src[0]) = v35;
  if (one-time initialization token for validCalendarRange != -1)
  {
    goto LABEL_140;
  }

LABEL_38:
  v36 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v8)
  {
    v36 = v8;
  }

  if (*&static Date.validCalendarRange >= v36)
  {
    v37 = *&static Date.validCalendarRange;
  }

  else
  {
    v37 = v36;
  }

  v38 = swift_getObjectType();
  *v95 = v37;
  v39 = (*(v11 + 144))(__dst, __src, v95, v38, v11);
  if ((v41 & 1) == 0 && v39 != v40 && v6 >= v40)
  {
    if (!v40)
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    if (v6 == 0x8000000000000000 && v40 == -1)
    {
      goto LABEL_144;
    }

    v28 = __OFADD__(v39, v6 % v40);
    v6 = v39 + v6 % v40;
    if (v28)
    {
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

LABEL_50:
  memset(&v95[2], 0, 24);
  v42 = 1;
  LOBYTE(v95[5]) = 1;
  v95[6] = 0;
  LOBYTE(v95[7]) = 1;
  v95[8] = 0;
  LOBYTE(v95[9]) = 1;
  v95[10] = 0;
  LOBYTE(v95[11]) = 1;
  v95[12] = 0;
  LOBYTE(v95[13]) = 1;
  v95[14] = 0;
  LOBYTE(v95[15]) = 1;
  v95[16] = 0;
  LOBYTE(v95[17]) = 1;
  v95[18] = 0;
  LOBYTE(v95[19]) = 1;
  v95[20] = 0;
  LOBYTE(v95[21]) = 1;
  v95[22] = 0;
  LOBYTE(v95[23]) = 1;
  v95[24] = 0;
  LOBYTE(v95[25]) = 1;
  v95[26] = 0;
  LOBYTE(v95[27]) = 1;
  v95[28] = 0;
  LOBYTE(v95[29]) = 1;
  v95[30] = 0;
  LOBYTE(v95[31]) = 1;
  LOBYTE(v95[33]) = 1;
  v95[32] = 0;
  v95[34] = 0;
  LOBYTE(v95[35]) = 1;
  *(v9 + 281) = 514;
  v95[0] = 0;
  v95[1] = 0;
  __dst[0] = 0uLL;
  DateComponents.timeZone.setter(__dst);
  v95[4] = 0;
  LOBYTE(v95[5]) = 1;
  v95[6] = 0;
  LOBYTE(v95[7]) = 1;
  v95[8] = 0;
  LOBYTE(v95[9]) = 1;
  v95[10] = 0;
  LOBYTE(v95[11]) = 1;
  v95[14] = 0;
  LOBYTE(v95[15]) = 1;
  v95[16] = 0;
  LOBYTE(v95[17]) = 1;
  v95[18] = 0;
  LOBYTE(v95[19]) = 1;
  v95[20] = 0;
  LOBYTE(v95[21]) = 1;
  v95[22] = 0;
  LOBYTE(v95[23]) = 1;
  v95[24] = 0;
  LOBYTE(v95[25]) = 1;
  v95[26] = 0;
  LOBYTE(v95[27]) = 1;
  v95[30] = 0;
  LOBYTE(v95[31]) = 1;
  LOBYTE(v95[33]) = 1;
  v95[32] = 0;
  v95[34] = 0;
  LOBYTE(v95[35]) = 1;
  v95[12] = 0;
  LOBYTE(v95[13]) = 1;
  LOBYTE(__dst[0]) = v10;
  v96.value = v6;
  v96.is_nil = 0;
  DateComponents.setValue(_:for:)(v96, __dst);
  memcpy(__dst, v95, 0x11BuLL);
  memcpy(__src, v95, 0x11BuLL);
  *v90 = v12;
  *&v90[8] = v11;
  if (DateComponents._validate(for:)(v90))
  {
    if (one-time initialization token for validCalendarRange != -1)
    {
      swift_once();
    }

    v43 = 0;
    if (v8 >= *&static Date.validCalendarRange && *(&static Date.validCalendarRange + 1) >= v8)
    {
      v44 = 101;
      v45 = *&v8;
      while (1)
      {
        *&v89[0] = v12;
        *(&v89[0] + 1) = v11;
        v86[0] = *&v8;
        memcpy(__src, __dst, 0x11BuLL);
        LOBYTE(v92[0]) = 0;
        LOBYTE(v78) = 0;
        LOBYTE(v91) = 0;
        v80 = *&v45;
        *&v88[0] = 0;
        BYTE8(v88[0]) = 1;
        Calendar._enumerateDatesStep(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:inSearchingDate:previouslyReturnedMatchDate:)(v86, __src, v92, &v78, &v91, &v80, v88, v90);
        if (v90[8] != 2)
        {
          break;
        }

        v45 = *&v90[16];
        if (!--v44)
        {
          *v89 = v8;
          *v90 = v12;
          *&v90[8] = v11;
          memcpy(__src, __dst, 0x11BuLL);
          LOBYTE(v88[0]) = 0;
          LOBYTE(v86[0]) = 0;
          LOBYTE(v80) = 0;
          _handleCalendarResultNotFound(date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(v89, v90, __src, v88, v86, &v80);
          v43 = 0;
          v42 = 1;
          goto LABEL_108;
        }
      }

      v42 = 0;
      v43 = *v90;
    }
  }

  else
  {
    v43 = 0;
  }

LABEL_108:
  *a4 = v43;
  *(a4 + 8) = v42;
  memcpy(__src, v95, 0x11BuLL);
  return outlined destroy of DateComponents(__src);
}

uint64_t AttributeScopes.FoundationAttributes.DateFieldAttribute.Field.init(udateFormatField:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 1;
  switch(result)
  {
    case 0:
      goto LABEL_22;
    case 1:
      v2 = 1;
      goto LABEL_22;
    case 2:
      v2 = 4;
      goto LABEL_22;
    case 3:
      v2 = 9;
      goto LABEL_22;
    case 4:
    case 5:
    case 15:
    case 16:
      v2 = 12;
      goto LABEL_22;
    case 6:
      v2 = 13;
      goto LABEL_22;
    case 7:
      v2 = 14;
      goto LABEL_22;
    case 8:
      v2 = 15;
      goto LABEL_22;
    case 9:
      v2 = 7;
      goto LABEL_22;
    case 10:
      v2 = 10;
      goto LABEL_22;
    case 11:
      v2 = 8;
      goto LABEL_22;
    case 12:
      v2 = 5;
      goto LABEL_22;
    case 13:
      v2 = 6;
      goto LABEL_22;
    case 14:
      v2 = 11;
      goto LABEL_22;
    case 17:
      v2 = 16;
LABEL_22:
      v3 = v2;
      goto LABEL_23;
    case 18:
    case 20:
    case 30:
LABEL_23:
      *a2 = v3;
      break;
    case 19:
    case 25:
      *a2 = 7;
      break;
    case 21:
      *a2 = 9;
      break;
    case 22:
      *a2 = 14;
      break;
    case 23:
    case 24:
    case 29:
    case 31:
    case 32:
    case 33:
      *a2 = 16;
      break;
    case 26:
      *a2 = 4;
      break;
    case 27:
    case 28:
      *a2 = 3;
      break;
    case 35:
    case 36:
      *a2 = 11;
      break;
    default:
      *a2 = 17;
      break;
  }

  return result;
}

void Date.FormatStyle.consuming(_:startingAt:in:)(unint64_t a1@<X2>, unint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = v3[5];
  v43[4] = v3[4];
  v43[5] = v5;
  v44[0] = v3[6];
  *(v44 + 10) = *(v3 + 106);
  v6 = v3[1];
  v43[0] = *v3;
  v43[1] = v6;
  v7 = v3[3];
  v43[2] = v3[2];
  v43[3] = v7;
  if (a1 >> 14 >= a2 >> 14)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
    return;
  }

  v8 = v3[5];
  v40 = v3[4];
  v41 = v8;
  v42[0] = v3[6];
  *(v42 + 10) = *(v3 + 106);
  v9 = v3[1];
  v36 = *v3;
  v37 = v9;
  v10 = v3[3];
  v38 = v3[2];
  v39 = v10;
  outlined init with copy of Date.FormatStyle(v43, v35);
  ICUDateFormatter.DateFormatInfo.init(_:)(&v36, v35);
  v11 = specialized static ICUDateFormatter.cachedFormatter(for:)(v35);
  v34[2] = v35[2];
  v34[3] = v35[3];
  v34[4] = v35[4];
  v34[5] = v35[5];
  v34[0] = v35[0];
  v34[1] = v35[1];
  outlined destroy of ICUDateFormatter.DateFormatInfo(v34);
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = String.subscript.getter();
  v16 = v15;
  if (v12 ^ v13) < 0x4000 || (v17 = v12, v18 = v13, v19 = v14, (*(v11 + 24) & 1) == 0) && (Substring.subscript.getter(), v20 = Character.isWhitespace.getter(), , (v20))
  {

LABEL_16:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
    return;
  }

  *&v36 = v17;
  *(&v36 + 1) = v18;
  *&v37 = v19;
  *(&v37 + 1) = v16;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  v21 = String.init<A>(_:)();
  v23 = v22;
  *&v35[0] = v21;
  *(&v35[0] + 1) = v22;
  udat_getCalendar();
  ucal_clone();
  v33 = v19;
  v24 = MEMORY[0x1865CB200](v21, v23);
  if (v24)
  {
    v25 = v24;
    v26 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v24, 0);

    v27 = specialized Sequence._copySequenceContents(initializing:)(&v36, (v26 + 4), v25, v21, v23);

    if (v27 != v25)
    {
      goto LABEL_23;
    }

    v28 = v26;
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  lazy protocol witness table accessor for type String and conformance String();
  v29 = String.Index.utf16Offset<A>(in:)();

  if (v29 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v29 > 0x7FFFFFFF)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  LODWORD(v36) = v29;
  if (v28[2] >> 31)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  udat_parseCalendar();

  if (v29 == v36)
  {
    ucal_close();

    goto LABEL_16;
  }

  ucal_getMillis();
  v31 = v30 / 1000.0 + -978307200.0;
  ucal_close();
  *&v36 = v17;
  *(&v36 + 1) = v18;
  *&v37 = v33;
  *(&v37 + 1) = v16;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  v32 = String.Index.init<A>(utf16Offset:in:)();

  *a3 = v32;
  *(a3 + 8) = v31;
  *(a3 + 16) = 0;
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance Date.FormatStyle(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle();

  return MEMORY[0x1EEE6E5F8](a1, v2);
}

void specialized Optional<A>.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 4);
  if ((v4 & 0xFF000000000000) == 0x3000000000000)
  {
LABEL_44:
    Hasher._combine(_:)(0);
    return;
  }

  v6 = *(v2 + 1);
  v5 = *(v2 + 2);
  v7 = *(v2 + 3);
  v18 = v2[32];
  v8 = v2[34];
  v9 = v2[35];
  v10 = v2[36];
  v11 = v2[37];
  v21 = v2[38];
  v22 = v2[39];
  v19 = *(v2 + 5);
  v20 = *(v2 + 24);
  v12 = *v2;
  Hasher._combine(_:)(1u);
  if (v12 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  if (v5 == 0xFF)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(v6, v5);
    String.hash(into:)();
  }

  if (BYTE1(v5) == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  if (BYTE2(v5) == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  if (BYTE3(v5) == 3)
  {
    Hasher._combine(_:)(0);
    if ((v4 & 0x100) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();

    if ((v4 & 0x100) != 0)
    {
LABEL_16:
      Hasher._combine(_:)(0);
      v13 = v11;
      if (v8 != 3)
      {
        goto LABEL_17;
      }

LABEL_28:
      Hasher._combine(_:)(0);
      if (v9 != 6)
      {
        goto LABEL_18;
      }

LABEL_29:
      Hasher._combine(_:)(0);
      v17 = v22;
      if (v10 == 9)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }
  }

  Hasher._combine(_:)(1u);
  if ((v18 & 1) == 0)
  {
    v14 = 10;
    if (v7 < 10)
    {
      v14 = v7;
    }

    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    v16._countAndFlagsBits = 103;
    v16._object = 0xE100000000000000;
    String.init(repeating:count:)(v16, v15);
  }

  v13 = v11;
  String.hash(into:)();

  if (v8 == 3)
  {
    goto LABEL_28;
  }

LABEL_17:
  Hasher._combine(_:)(1u);
  String.hash(into:)();

  if (v9 == 6)
  {
    goto LABEL_29;
  }

LABEL_18:
  Hasher._combine(_:)(1u);
  v17 = v22;
  String.hash(into:)();

  if (v10 == 9)
  {
LABEL_33:
    Hasher._combine(_:)(0);
    if (v13 == 14)
    {
      goto LABEL_34;
    }

LABEL_31:
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.HourOption.rawValue.getter(v13);
    String.hash(into:)();

    goto LABEL_35;
  }

LABEL_30:
  Hasher._combine(_:)(1u);
  specialized RawRepresentable<>.hash(into:)();
  if (v13 != 14)
  {
    goto LABEL_31;
  }

LABEL_34:
  Hasher._combine(_:)(0);
LABEL_35:
  if (v21 == 2)
  {
    Hasher._combine(_:)(0);
    if (v17 != 2)
    {
LABEL_37:
      Hasher._combine(_:)(1u);
      String.hash(into:)();

      goto LABEL_40;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();

    if (v17 != 2)
    {
      goto LABEL_37;
    }
  }

  Hasher._combine(_:)(0);
LABEL_40:
  if (v20 == 0xFF)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    specialized RawRepresentable<>.hash(into:)(a1, v19, v20 & 1);
  }

  if (v20 >> 8 == 12)
  {
    goto LABEL_44;
  }

  Hasher._combine(_:)(1u);
  Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption.rawValue.getter(BYTE1(v20));
  String.hash(into:)();
}

void specialized Optional<A>.hash(into:)(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  if (!a3)
  {
    goto LABEL_24;
  }

  Hasher._combine(_:)(1u);
  if (a2 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](a2 + 1);
  }

  if ((a2 & 0xFF00) == 0xE00)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](BYTE1(a2) + 1);
  }

  if ((*&a2 & 0xFF0000) == 0x60000)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](BYTE2(a2) + 1);
  }

  specialized Dictionary<>.hash(into:)(a1, a3);
  if (a4 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](a4 + 1);
  }

  if ((a4 & 0xFF00) == 0x300)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](BYTE1(a4) + 1);
  }

  if ((a4 & 0xFF0000) == 0x30000)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](BYTE2(a4) + 1);
  }

  if ((a4 & 0xFF000000) == 0x2000000)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](((a4 >> 24) & 1) + 1);
  }

  if ((a4 & 0xFF00000000) != 0x200000000)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060]((HIDWORD(a4) & 1) + 1);
  }

  else
  {
LABEL_24:
    Hasher._combine(_:)(0);
  }
}

uint64_t specialized static Date.AttributedStyle.InnerStyle.== infix(_:_:)(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v57 = a1[4];
  v58 = v3;
  v4 = a1[5];
  v59[0] = a1[6];
  *(v59 + 10) = *(a1 + 106);
  v5 = a1[1];
  v54[0] = *a1;
  v54[1] = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v55 = a1[2];
  v56 = v6;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v62 = a2[2];
  v63 = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v60 = v9;
  v61 = v12;
  *(v66 + 10) = *(a2 + 106);
  v15 = a2[5];
  v66[0] = a2[6];
  v16 = a2[3];
  v17 = a2[5];
  v64 = a2[4];
  v65 = v17;
  v18 = a1[3];
  v67[2] = a1[2];
  v67[3] = v18;
  v19 = a1[1];
  v67[0] = *a1;
  v67[1] = v19;
  *(v68 + 10) = *(a1 + 106);
  v20 = a1[5];
  v67[4] = a1[4];
  v67[5] = v20;
  v68[3] = v10;
  v68[4] = v13;
  v68[0] = a1[6];
  v68[2] = v14;
  *(v69 + 10) = *(a2 + 106);
  v21 = a2[6];
  v68[7] = v15;
  v69[0] = v21;
  v68[5] = v16;
  v68[6] = v64;
  v70[2] = v55;
  v70[3] = v2;
  v70[0] = v8;
  v70[1] = v7;
  v22 = a1[6];
  *&v71[10] = *(a1 + 106);
  v70[5] = v4;
  *v71 = v22;
  v70[4] = v57;
  if (_s10Foundation4DateV15AttributedStyleV05InnerD0OWOg(v70) == 1)
  {
    v23 = destructiveProjectEnumData for Date.AttributedStyle.InnerStyle(v70);
    v51 = v64;
    v52 = v65;
    v53[0] = v66[0];
    *(v53 + 10) = *(v66 + 10);
    v47 = v60;
    v48 = v61;
    v49 = v62;
    v50 = v63;
    v24 = _s10Foundation4DateV15AttributedStyleV05InnerD0OWOg(&v47);
    v25 = destructiveProjectEnumData for Date.AttributedStyle.InnerStyle(&v47);
    if (v24 == 1)
    {
      v26 = v23[1];
      v38 = *v23;
      v39 = v26;
      v27 = v23[3];
      v40 = v23[2];
      v41 = v27;
      v37[0] = *v25;
      v37[1] = v25[1];
      v37[2] = v25[2];
      v37[3] = v25[3];
      outlined init with copy of Date.AttributedStyle.InnerStyle(&v60, v45);
      outlined init with copy of Date.AttributedStyle.InnerStyle(v54, v45);
      outlined init with copy of Date.AttributedStyle.InnerStyle(v54, v45);
      outlined init with copy of Date.AttributedStyle.InnerStyle(&v60, v45);
      v28 = specialized static Date.VerbatimFormatStyle.== infix(_:_:)(&v38, v37);
LABEL_7:
      v32 = v28;
      outlined destroy of TermOfAddress?(v67, &_s10Foundation4DateV15AttributedStyleV05InnerD0O_AGtMd);
      outlined destroy of Date.AttributedStyle.InnerStyle(&v60);
      outlined destroy of Date.AttributedStyle.InnerStyle(v54);
      return v32 & 1;
    }
  }

  else
  {
    v29 = destructiveProjectEnumData for Date.AttributedStyle.InnerStyle(v70);
    v51 = v64;
    v52 = v65;
    v53[0] = v66[0];
    *(v53 + 10) = *(v66 + 10);
    v47 = v60;
    v48 = v61;
    v49 = v62;
    v50 = v63;
    v30 = _s10Foundation4DateV15AttributedStyleV05InnerD0OWOg(&v47);
    v31 = destructiveProjectEnumData for Date.AttributedStyle.InnerStyle(&v47);
    if (v30 != 1)
    {
      v45[4] = v29[4];
      v45[5] = v29[5];
      v46[0] = v29[6];
      *(v46 + 10) = *(v29 + 106);
      v45[0] = *v29;
      v45[1] = v29[1];
      v45[2] = v29[2];
      v45[3] = v29[3];
      v33 = v31[5];
      v42 = v31[4];
      v43 = v33;
      v44[0] = v31[6];
      *(v44 + 10) = *(v31 + 106);
      v34 = v31[1];
      v38 = *v31;
      v39 = v34;
      v35 = v31[3];
      v40 = v31[2];
      v41 = v35;
      outlined init with copy of Date.AttributedStyle.InnerStyle(&v60, v37);
      outlined init with copy of Date.AttributedStyle.InnerStyle(v54, v37);
      outlined init with copy of Date.AttributedStyle.InnerStyle(v54, v37);
      outlined init with copy of Date.AttributedStyle.InnerStyle(&v60, v37);
      v28 = specialized static Date.FormatStyle.== infix(_:_:)(v45, &v38);
      goto LABEL_7;
    }
  }

  outlined init with copy of Date.AttributedStyle.InnerStyle(v54, &v47);
  outlined init with copy of Date.AttributedStyle.InnerStyle(&v60, &v47);
  outlined destroy of TermOfAddress?(v67, &_s10Foundation4DateV15AttributedStyleV05InnerD0O_AGtMd);
  v32 = 0;
  return v32 & 1;
}

unint64_t lazy protocol witness table accessor for type Date.AttributedStyle.CodingKeys and conformance Date.AttributedStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Date.AttributedStyle.CodingKeys and conformance Date.AttributedStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.AttributedStyle.CodingKeys and conformance Date.AttributedStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AttributedStyle.CodingKeys and conformance Date.AttributedStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.AttributedStyle.CodingKeys and conformance Date.AttributedStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.AttributedStyle.CodingKeys and conformance Date.AttributedStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AttributedStyle.CodingKeys and conformance Date.AttributedStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.AttributedStyle.CodingKeys and conformance Date.AttributedStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.AttributedStyle.CodingKeys and conformance Date.AttributedStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AttributedStyle.CodingKeys and conformance Date.AttributedStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.AttributedStyle.CodingKeys and conformance Date.AttributedStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.AttributedStyle.CodingKeys and conformance Date.AttributedStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AttributedStyle.CodingKeys and conformance Date.AttributedStyle.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.AttributedStyle.InnerStyle and conformance Date.AttributedStyle.InnerStyle()
{
  result = lazy protocol witness table cache variable for type Date.AttributedStyle.InnerStyle and conformance Date.AttributedStyle.InnerStyle;
  if (!lazy protocol witness table cache variable for type Date.AttributedStyle.InnerStyle and conformance Date.AttributedStyle.InnerStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AttributedStyle.InnerStyle and conformance Date.AttributedStyle.InnerStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.AttributedStyle.InnerStyle and conformance Date.AttributedStyle.InnerStyle;
  if (!lazy protocol witness table cache variable for type Date.AttributedStyle.InnerStyle and conformance Date.AttributedStyle.InnerStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AttributedStyle.InnerStyle and conformance Date.AttributedStyle.InnerStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.AttributedStyle.InnerStyle and conformance Date.AttributedStyle.InnerStyle;
  if (!lazy protocol witness table cache variable for type Date.AttributedStyle.InnerStyle and conformance Date.AttributedStyle.InnerStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AttributedStyle.InnerStyle and conformance Date.AttributedStyle.InnerStyle);
  }

  return result;
}

uint64_t specialized Date.FormatStyle.DateFieldCollection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation4DateV11FormatStyleV0E15FieldCollectionV10CodingKeys33_83F1B432FCCCE88C2D9349A2B9C9BC3DLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.FormatStyle.DateFieldCollection.CodingKeys and conformance Date.FormatStyle.DateFieldCollection.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = 0;
  lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.EraOption and conformance Date.FormatStyle.Symbol.SymbolType.EraOption();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v9 = v36;
  v40 = 1;
  lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.YearOption and conformance Date.FormatStyle.Symbol.SymbolType.YearOption();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v39 = v9;
  v10 = v36;
  v11 = v37;
  v40 = 2;
  lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.QuarterOption and conformance Date.FormatStyle.Symbol.SymbolType.QuarterOption();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v34 = v10;
  v35 = v11;
  LOBYTE(v10) = v36;
  v40 = 3;
  lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.MonthOption and conformance Date.FormatStyle.Symbol.SymbolType.MonthOption();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v12 = v36;
  v40 = 4;
  lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.WeekOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekOption();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v33 = v12;
  v13 = v36;
  v40 = 5;
  lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.DayOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOption();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v32 = v13;
  v31 = v36;
  v14 = v37;
  v41 = v38;
  v40 = 6;
  lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.DayOfYearOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOfYearOption();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v30 = v14;
  LOBYTE(v14) = v36;
  v40 = 7;
  lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.WeekdayOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekdayOption();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v29 = v36;
  v40 = 8;
  lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.DayPeriodOption and conformance Date.FormatStyle.Symbol.SymbolType.DayPeriodOption();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v28 = v36;
  v40 = 9;
  lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.HourOption and conformance Date.FormatStyle.Symbol.SymbolType.HourOption();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v27 = v36;
  v40 = 10;
  lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.MinuteOption and conformance Date.FormatStyle.Symbol.SymbolType.MinuteOption();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v26 = v36;
  v40 = 11;
  lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.SecondOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondOption();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v25 = v36;
  v40 = 12;
  lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.SecondFractionOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondFractionOption();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v24 = v36;
  v23 = v37;
  v40 = 13;
  lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption and conformance Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v15 = v36;
  v16 = v41;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v39;
  *(a2 + 8) = v34;
  *(a2 + 16) = v35;
  *(a2 + 17) = v10;
  v18 = v32;
  *(a2 + 18) = v33;
  *(a2 + 19) = v18;
  *(a2 + 24) = v31;
  v19 = v29;
  *(a2 + 32) = v30;
  *(a2 + 33) = v16;
  *(a2 + 34) = v14;
  *(a2 + 35) = v19;
  v20 = v27;
  *(a2 + 36) = v28;
  *(a2 + 37) = v20;
  v21 = v25;
  *(a2 + 38) = v26;
  *(a2 + 39) = v21;
  *(a2 + 40) = v24;
  *(a2 + 48) = v23;
  *(a2 + 49) = v15;
  return result;
}

uint64_t specialized Date.FormatStyle.DateFieldCollection.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6386277 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1918985593 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72657472617571 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1801807223 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7954788 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x616559664F796164 && a2 == 0xE900000000000072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7961646B656577 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F69726550796164 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1920298856 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6574756E696DLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x646E6F636573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7246646E6F636573 && a2 == 0xEE006E6F69746361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xEE006C6F626D7953)
  {

    return 13;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t specialized Date.FormatStyle.Attributed.subscript.setter(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return swift_setAtWritableKeyPath();
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Attributed.CodingKeys and conformance Date.FormatStyle.Attributed.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Attributed.CodingKeys and conformance Date.FormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Attributed.CodingKeys and conformance Date.FormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Attributed.CodingKeys and conformance Date.FormatStyle.Attributed.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Attributed.CodingKeys and conformance Date.FormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Attributed.CodingKeys and conformance Date.FormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Attributed.CodingKeys and conformance Date.FormatStyle.Attributed.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Attributed.CodingKeys and conformance Date.FormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Attributed.CodingKeys and conformance Date.FormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Attributed.CodingKeys and conformance Date.FormatStyle.Attributed.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Attributed.CodingKeys and conformance Date.FormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Attributed.CodingKeys and conformance Date.FormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Attributed.CodingKeys and conformance Date.FormatStyle.Attributed.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.CodingKeys and conformance Date.FormatStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.CodingKeys and conformance Date.FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.CodingKeys and conformance Date.FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.CodingKeys and conformance Date.FormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.CodingKeys and conformance Date.FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.CodingKeys and conformance Date.FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.CodingKeys and conformance Date.FormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.CodingKeys and conformance Date.FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.CodingKeys and conformance Date.FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.CodingKeys and conformance Date.FormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.CodingKeys and conformance Date.FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.CodingKeys and conformance Date.FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.CodingKeys and conformance Date.FormatStyle.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.DateStyle and conformance Date.FormatStyle.DateStyle()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.DateStyle and conformance Date.FormatStyle.DateStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.DateStyle and conformance Date.FormatStyle.DateStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.DateStyle and conformance Date.FormatStyle.DateStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.DateStyle and conformance Date.FormatStyle.DateStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.DateStyle and conformance Date.FormatStyle.DateStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.DateStyle and conformance Date.FormatStyle.DateStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.DateStyle and conformance Date.FormatStyle.DateStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.DateStyle and conformance Date.FormatStyle.DateStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.DateStyle and conformance Date.FormatStyle.DateStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.DateStyle.CodingKeys and conformance Date.FormatStyle.DateStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.DateStyle.CodingKeys and conformance Date.FormatStyle.DateStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.DateStyle.CodingKeys and conformance Date.FormatStyle.DateStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.DateStyle.CodingKeys and conformance Date.FormatStyle.DateStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.DateStyle.CodingKeys and conformance Date.FormatStyle.DateStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.DateStyle.CodingKeys and conformance Date.FormatStyle.DateStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.DateStyle.CodingKeys and conformance Date.FormatStyle.DateStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.DateStyle.CodingKeys and conformance Date.FormatStyle.DateStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.DateStyle.CodingKeys and conformance Date.FormatStyle.DateStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.DateStyle.CodingKeys and conformance Date.FormatStyle.DateStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.DateStyle.CodingKeys and conformance Date.FormatStyle.DateStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.DateStyle.CodingKeys and conformance Date.FormatStyle.DateStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.DateStyle.CodingKeys and conformance Date.FormatStyle.DateStyle.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.TimeStyle.CodingKeys and conformance Date.FormatStyle.TimeStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.TimeStyle.CodingKeys and conformance Date.FormatStyle.TimeStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.TimeStyle.CodingKeys and conformance Date.FormatStyle.TimeStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.TimeStyle.CodingKeys and conformance Date.FormatStyle.TimeStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.TimeStyle.CodingKeys and conformance Date.FormatStyle.TimeStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.TimeStyle.CodingKeys and conformance Date.FormatStyle.TimeStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.TimeStyle.CodingKeys and conformance Date.FormatStyle.TimeStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.TimeStyle.CodingKeys and conformance Date.FormatStyle.TimeStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.TimeStyle.CodingKeys and conformance Date.FormatStyle.TimeStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.TimeStyle.CodingKeys and conformance Date.FormatStyle.TimeStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.TimeStyle.CodingKeys and conformance Date.FormatStyle.TimeStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.TimeStyle.CodingKeys and conformance Date.FormatStyle.TimeStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.TimeStyle.CodingKeys and conformance Date.FormatStyle.TimeStyle.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.AttributedStyle and conformance Date.AttributedStyle()
{
  result = lazy protocol witness table cache variable for type Date.AttributedStyle and conformance Date.AttributedStyle;
  if (!lazy protocol witness table cache variable for type Date.AttributedStyle and conformance Date.AttributedStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AttributedStyle and conformance Date.AttributedStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.AttributedStyle and conformance Date.AttributedStyle;
  if (!lazy protocol witness table cache variable for type Date.AttributedStyle and conformance Date.AttributedStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AttributedStyle and conformance Date.AttributedStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.AttributedStyle and conformance Date.AttributedStyle;
  if (!lazy protocol witness table cache variable for type Date.AttributedStyle and conformance Date.AttributedStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AttributedStyle and conformance Date.AttributedStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.AttributedStyle and conformance Date.AttributedStyle;
  if (!lazy protocol witness table cache variable for type Date.AttributedStyle and conformance Date.AttributedStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AttributedStyle and conformance Date.AttributedStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.TimeStyle and conformance Date.FormatStyle.TimeStyle()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.TimeStyle and conformance Date.FormatStyle.TimeStyle;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.TimeStyle and conformance Date.FormatStyle.TimeStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.TimeStyle and conformance Date.FormatStyle.TimeStyle);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Date.FormatStyle.Attributed(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Date.FormatStyle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 122))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Date.FormatStyle(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 122) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 122) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for Date.AttributedStyle.InnerStyle(uint64_t result, __int16 a2)
{
  v2 = *(result + 80) & 0xFFFFFFFFFFFFFF8;
  v3 = *(result + 96) & 0xFFFFFFFFFFFFFF8;
  v4 = *(result + 112) & 0xFFFFFFFFFFFFFF8;
  v5 = *(result + 120) & 0x107 | (a2 << 15);
  *(result + 64) &= 1uLL;
  *(result + 80) = v2;
  *(result + 96) = v3;
  *(result + 112) = v4;
  *(result + 120) = v5;
  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for Date.FormatStyle.DateFieldCollection(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 50))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 38);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 38);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for Date.FormatStyle.DateFieldCollection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 38) = a2 + 2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.DateFieldCollection.CodingKeys and conformance Date.FormatStyle.DateFieldCollection.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.DateFieldCollection.CodingKeys and conformance Date.FormatStyle.DateFieldCollection.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.DateFieldCollection.CodingKeys and conformance Date.FormatStyle.DateFieldCollection.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.DateFieldCollection.CodingKeys and conformance Date.FormatStyle.DateFieldCollection.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.DateFieldCollection.CodingKeys and conformance Date.FormatStyle.DateFieldCollection.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.DateFieldCollection.CodingKeys and conformance Date.FormatStyle.DateFieldCollection.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.DateFieldCollection.CodingKeys and conformance Date.FormatStyle.DateFieldCollection.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.DateFieldCollection.CodingKeys and conformance Date.FormatStyle.DateFieldCollection.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.DateFieldCollection.CodingKeys and conformance Date.FormatStyle.DateFieldCollection.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.DateFieldCollection.CodingKeys and conformance Date.FormatStyle.DateFieldCollection.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.DateFieldCollection.CodingKeys and conformance Date.FormatStyle.DateFieldCollection.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.DateFieldCollection.CodingKeys and conformance Date.FormatStyle.DateFieldCollection.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.DateFieldCollection.CodingKeys and conformance Date.FormatStyle.DateFieldCollection.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.AttributedStyle.InnerStyle.CodingKeys and conformance Date.AttributedStyle.InnerStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Date.AttributedStyle.InnerStyle.CodingKeys and conformance Date.AttributedStyle.InnerStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.AttributedStyle.InnerStyle.CodingKeys and conformance Date.AttributedStyle.InnerStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AttributedStyle.InnerStyle.CodingKeys and conformance Date.AttributedStyle.InnerStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.AttributedStyle.InnerStyle.CodingKeys and conformance Date.AttributedStyle.InnerStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.AttributedStyle.InnerStyle.CodingKeys and conformance Date.AttributedStyle.InnerStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AttributedStyle.InnerStyle.CodingKeys and conformance Date.AttributedStyle.InnerStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.AttributedStyle.InnerStyle.CodingKeys and conformance Date.AttributedStyle.InnerStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.AttributedStyle.InnerStyle.CodingKeys and conformance Date.AttributedStyle.InnerStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AttributedStyle.InnerStyle.CodingKeys and conformance Date.AttributedStyle.InnerStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.AttributedStyle.InnerStyle.CodingKeys and conformance Date.AttributedStyle.InnerStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.AttributedStyle.InnerStyle.CodingKeys and conformance Date.AttributedStyle.InnerStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.AttributedStyle.InnerStyle.CodingKeys and conformance Date.AttributedStyle.InnerStyle.CodingKeys);
  }

  return result;
}

uint64_t specialized Date.FormatStyle.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736C6F626D7973 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000018147CDF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C79745365746164 && a2 == 0xE900000000000065)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void Date.ParseStrategy.consuming(_:startingAt:in:)(unint64_t a1@<X2>, unint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a1 >> 14 >= a2 >> 14)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
    return;
  }

  v5 = v3[3];
  v32 = v3[2];
  v33 = v5;
  v34 = v3[4];
  v6 = v3[1];
  v30 = *v3;
  v31 = v6;
  v7 = Date.ParseStrategy.formatter.getter();
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  v9 = String.subscript.getter();
  v13 = v12;
  if (v9 ^ v10) < 0x4000 || (v14 = v9, v15 = v10, v16 = v11, (*(v8 + 24) & 1) == 0) && (Substring.subscript.getter(), v17 = Character.isWhitespace.getter(), , (v17))
  {

LABEL_16:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
    return;
  }

  *&v30 = v14;
  *(&v30 + 1) = v15;
  *&v31 = v16;
  *(&v31 + 1) = v13;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  v18 = String.init<A>(_:)();
  v20 = v19;
  udat_getCalendar();
  ucal_clone();
  v21 = MEMORY[0x1865CB200](v18, v20);
  if (v21)
  {
    v22 = v21;
    v23 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v21, 0);

    v29 = v23;
    v24 = specialized Sequence._copySequenceContents(initializing:)(&v30, (v23 + 4), v22, v18, v20);

    if (v24 == v22)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_12:
  lazy protocol witness table accessor for type String and conformance String();
  v25 = String.Index.utf16Offset<A>(in:)();

  if (v25 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v25 > 0x7FFFFFFF)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  LODWORD(v30) = v25;
  if (v29[2] >> 31)
  {
    goto LABEL_22;
  }

  udat_parseCalendar();

  if (v25 == v30)
  {
    ucal_close();

    goto LABEL_16;
  }

  ucal_getMillis();
  v27 = v26 / 1000.0 + -978307200.0;
  ucal_close();
  *&v30 = v14;
  *(&v30 + 1) = v15;
  *&v31 = v16;
  *(&v31 + 1) = v13;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  v28 = String.Index.init<A>(utf16Offset:in:)();

  *a3 = v28;
  *(a3 + 8) = v27;
  *(a3 + 16) = 0;
}

double Date.ParseStrategy.twoDigitStartDate.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double Date.ParseStrategy.twoDigitStartDate.setter(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

uint64_t Date.ParseStrategy.locale.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = swift_unknownObjectRelease();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

__n128 Date.ParseStrategy.timeZone.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  v1[2] = *a1;
  return result;
}

__n128 Date.ParseStrategy.calendar.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  v1[3] = *a1;
  return result;
}

uint64_t Date.ParseStrategy.format.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

__n128 Date.ParseStrategy.init(format:locale:timeZone:calendar:isLenient:twoDigitStartDate:)@<Q0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, __int128 *a3@<X2>, __n128 *a4@<X3>, char a5@<W4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *a6;
  *a7 = a5;
  *(a7 + 8) = v9;
  v10 = *a3;
  *(a7 + 16) = *a2;
  *(a7 + 32) = v10;
  result = *a4;
  *(a7 + 48) = *a4;
  *(a7 + 64) = v7;
  *(a7 + 72) = v8;
  return result;
}

uint64_t Date.ParseStrategy.formatter.getter()
{
  v22 = *v0;
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 5);
  v4 = *(v0 + 7);
  v5 = *(v0 + 9);
  v21 = *(v0 + 8);
  if (v2)
  {
    v6 = *(v0 + 3);
    ObjectType = swift_getObjectType();
    v2 = (*(v6 + 64))(ObjectType, v6);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = swift_getObjectType();
  v11 = (*(v3 + 32))(v10, v3);
  v13 = v12;
  v14 = swift_getObjectType();
  (*(v4 + 24))(&v26, v14, v4);
  v15 = (*(v4 + 56))(v14, v4);
  v16 = (*(v4 + 72))(v14, v4);
  if (v9)
  {
    v17 = v2;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0xE000000000000000;
  if (v9)
  {
    v18 = v9;
  }

  *&v24 = v17;
  *(&v24 + 1) = v18;
  *&v25 = v11;
  *(&v25 + 1) = v13;
  *(&v26 + 1) = v15;
  *&v27 = v16;
  BYTE8(v27) = 0;
  *&v28 = v21;
  *(&v28 + 1) = v5;
  LOBYTE(v29) = v22;
  *(&v29 + 1) = v1;
  v23[2] = v26;
  v23[3] = v27;
  v23[4] = v28;
  v23[5] = v29;
  v23[0] = v24;
  v23[1] = v25;

  v19 = specialized static ICUDateFormatter.cachedFormatter(for:)(v23);
  outlined destroy of ICUDateFormatter.DateFormatInfo(&v24);
  return v19;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Date.ParseStrategy.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6E65696E654C7369;
  v3 = 0x656E6F5A656D6974;
  v4 = 0x7261646E656C6163;
  if (v1 != 4)
  {
    v4 = 0x74616D726F66;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x656C61636F6CLL;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Date.ParseStrategy.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Date.ParseStrategy.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Date.ParseStrategy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.ParseStrategy.CodingKeys and conformance Date.ParseStrategy.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Date.ParseStrategy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.ParseStrategy.CodingKeys and conformance Date.ParseStrategy.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Date.ParseStrategy.hash(into:)(Swift::Int a1)
{
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 56);
  Hasher._combine(_:)(*v1);
  v8 = 0.0;
  if (v3 != 0.0)
  {
    v8 = v3;
  }

  MEMORY[0x1865CD090](*&v8);
  if (!v5)
  {
    Hasher._combine(_:)(0);
    goto LABEL_60;
  }

  Hasher._combine(_:)(1u);
  ObjectType = swift_getObjectType();
  if ((*(v4 + 48))(ObjectType, v4))
  {
    v10 = 1;
LABEL_9:
    Hasher._combine(_:)(v10);
    goto LABEL_60;
  }

  Hasher._combine(_:)(0);
  (*(v4 + 64))(ObjectType, v4);
  String.hash(into:)();

  (*(v4 + 464))(&v49, ObjectType, v4);
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
    v10 = 0;
    goto LABEL_9;
  }

  v11 = v49;
  v12 = *(&v49 + 1);
  v13 = *(&v50 + 1);
  v38 = *(&v51 + 1);
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
  if (v11 == 2)
  {
    v14 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v14 = v11 & 1;
  }

  Hasher._combine(_:)(v14);
  if (v12)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v12 + 16));
    v15 = *(v12 + 16);
    if (v15)
    {
      v16 = v12 + 40;
      do
      {

        String.hash(into:)();

        v16 += 16;
        --v15;
      }

      while (v15);
    }

    if (v13)
    {
      goto LABEL_18;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v13)
    {
LABEL_18:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_21;
    }
  }

  Hasher._combine(_:)(0);
LABEL_21:
  if (v38)
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
    specialized Dictionary<>.hash(into:)(a1, v39, v17, v18, v19, v20, v21, v22);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(&v39 + 1))
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, *(&v39 + 1), v23, v24, v25, v26, v27, v28);
    if (v40)
    {
      goto LABEL_29;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v40)
    {
LABEL_29:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*(&v40 + 1))
      {
        goto LABEL_30;
      }

      goto LABEL_35;
    }
  }

  Hasher._combine(_:)(0);
  if (*(&v40 + 1))
  {
LABEL_30:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v41)
    {
      goto LABEL_31;
    }

LABEL_36:
    v29 = v43;
    Hasher._combine(_:)(0);
    if (*(&v41 + 1))
    {
      goto LABEL_32;
    }

    goto LABEL_37;
  }

LABEL_35:
  Hasher._combine(_:)(0);
  if (!v41)
  {
    goto LABEL_36;
  }

LABEL_31:
  v29 = v43;
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
  _CFObject.hash(into:)();
  if (*(&v41 + 1))
  {
LABEL_32:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_38;
  }

LABEL_37:
  Hasher._combine(_:)(0);
LABEL_38:
  v30 = v29;
  if (v42)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    v31 = *(&v42 + 1);
    if (*(&v42 + 1))
    {
      goto LABEL_40;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v31 = *(&v42 + 1);
    if (*(&v42 + 1))
    {
LABEL_40:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v31);
      v32 = v45;
      if (v30)
      {
        goto LABEL_41;
      }

LABEL_45:
      Hasher._combine(_:)(0);
      if (v44)
      {
        goto LABEL_42;
      }

LABEL_46:
      Hasher._combine(_:)(0);
      goto LABEL_47;
    }
  }

  Hasher._combine(_:)(0);
  v32 = v45;
  if (!v30)
  {
    goto LABEL_45;
  }

LABEL_41:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v30);
  if (!v44)
  {
    goto LABEL_46;
  }

LABEL_42:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_47:
  if (v32 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v32 & 1);
  }

  if (v46 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v46 & 1);
  }

  if (v47 == 2)
  {
    v33 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v33 = v47 & 1;
  }

  Hasher._combine(_:)(v33);
  if (v48 == 2)
  {
    v34 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v34 = v48 & 1;
  }

  Hasher._combine(_:)(v34);
  outlined destroy of TermOfAddress?(&v49, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_60:
  v35 = swift_getObjectType();
  (*(v6 + 120))(a1, v35, v6);
  v36 = swift_getObjectType();
  (*(v7 + 120))(a1, v36, v7);
  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.ParseStrategy()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 40);
  v6 = *(v0 + 56);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v7 = 0.0;
  if (v2 != 0.0)
  {
    v7 = v2;
  }

  MEMORY[0x1865CD090](*&v7);
  if (!v4)
  {
    goto LABEL_7;
  }

  Hasher._combine(_:)(1u);
  ObjectType = swift_getObjectType();
  if ((*(v3 + 48))(ObjectType, v3))
  {
    v9 = 1;
LABEL_8:
    Hasher._combine(_:)(v9);
    goto LABEL_9;
  }

  Hasher._combine(_:)(0);
  (*(v3 + 64))(ObjectType, v3);
  String.hash(into:)();

  (*(v3 + 464))(&v48, ObjectType, v3);
  v56[6] = v54;
  v57[0] = *v55;
  *(v57 + 12) = *&v55[12];
  v56[2] = v50;
  v56[3] = v51;
  v56[4] = v52;
  v56[5] = v53;
  v56[0] = v48;
  v56[1] = v49;
  if (_s10Foundation17LocalePreferencesVSgWOg(v56) == 1)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v13 = v48;
  v14 = *(&v48 + 1);
  v15 = *(&v49 + 1);
  v38 = *(&v50 + 1);
  v16 = v51;
  v39 = v52;
  v40 = v53;
  v41 = v54;
  v42 = *v55;
  v43 = *&v55[16];
  v44 = v55[24];
  v45 = v55[25];
  v46 = v55[26];
  v47 = v55[27];
  Hasher._combine(_:)(1u);
  if (v13 == 2)
  {
    v17 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v17 = v13 & 1;
  }

  Hasher._combine(_:)(v17);
  if (v14)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v14 + 16));
    v18 = *(v14 + 16);
    if (v18)
    {
      v19 = v14 + 40;
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

  if (v15)
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
    String.hash(into:)();
    if (v16)
    {
      goto LABEL_24;
    }

LABEL_27:
    Hasher._combine(_:)(0);
    v26 = *(&v16 + 1);
    if (*(&v16 + 1))
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  Hasher._combine(_:)(0);
  if (!v16)
  {
    goto LABEL_27;
  }

LABEL_24:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(v58, v16, v20, v21, v22, v23, v24, v25);
  v26 = *(&v16 + 1);
  if (*(&v16 + 1))
  {
LABEL_25:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v58, v26, v27, v28, v29, v30, v31, v32);
    goto LABEL_29;
  }

LABEL_28:
  Hasher._combine(_:)(0);
LABEL_29:
  if (v39)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v39 + 1))
    {
LABEL_31:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      goto LABEL_34;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(&v39 + 1))
    {
      goto LABEL_31;
    }
  }

  Hasher._combine(_:)(0);
LABEL_34:
  if (v40)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v40 + 1))
    {
      goto LABEL_36;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(&v40 + 1))
    {
LABEL_36:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v41)
      {
        goto LABEL_37;
      }

      goto LABEL_42;
    }
  }

  Hasher._combine(_:)(0);
  if (v41)
  {
LABEL_37:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    v33 = *(&v41 + 1);
    if (*(&v41 + 1))
    {
      goto LABEL_38;
    }

LABEL_43:
    v34 = v46;
    Hasher._combine(_:)(0);
    v35 = v42;
    if (v42)
    {
      goto LABEL_39;
    }

    goto LABEL_44;
  }

LABEL_42:
  Hasher._combine(_:)(0);
  v33 = *(&v41 + 1);
  if (!*(&v41 + 1))
  {
    goto LABEL_43;
  }

LABEL_38:
  v34 = v46;
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(v58, v33);
  v35 = v42;
  if (v42)
  {
LABEL_39:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v58, v35);
    goto LABEL_45;
  }

LABEL_44:
  Hasher._combine(_:)(0);
LABEL_45:
  if (v43)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v44 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v44 & 1);
  }

  if (v45 != 2)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v45 & 1);
    if (v34 != 2)
    {
      goto LABEL_53;
    }

LABEL_55:
    v36 = 0;
    goto LABEL_56;
  }

  Hasher._combine(_:)(0);
  if (v34 == 2)
  {
    goto LABEL_55;
  }

LABEL_53:
  Hasher._combine(_:)(1u);
  v36 = v34 & 1;
LABEL_56:
  Hasher._combine(_:)(v36);
  if (v47 == 2)
  {
    v37 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v37 = v47 & 1;
  }

  Hasher._combine(_:)(v37);
  outlined destroy of TermOfAddress?(&v48, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_9:
  v10 = swift_getObjectType();
  (*(v5 + 120))(v58, v10, v5);
  v11 = swift_getObjectType();
  (*(v6 + 120))(v58, v11, v6);
  String.hash(into:)();
  return Hasher._finalize()();
}

Foundation::Date __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Date.ParseStrategy.parse(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = v1;
  v162 = *MEMORY[0x1E69E9840];
  v6 = *(v2 + 48);
  v161[1] = *(v2 + 32);
  v161[2] = v6;
  v161[3] = *(v2 + 64);
  v7 = *(v2 + 16);
  __tp = *v2;
  v161[0] = v7;
  if (Date.ParseStrategy.formatter.getter())
  {
    v157 = countAndFlagsBits;
    v158 = object;
    udat_getCalendar();
    ucal_clone();
    v8 = MEMORY[0x1865CB200](countAndFlagsBits, object);
    if (v8)
    {
      v9 = v8;
      v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v8, 0);

      v11 = specialized Sequence._copySequenceContents(initializing:)(&__tp, (v10 + 4), v9, countAndFlagsBits, object);

      if (v11 != v9)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    lazy protocol witness table accessor for type String and conformance String();
    v19 = String.Index.utf16Offset<A>(in:)();
    if (v19 < 0xFFFFFFFF80000000)
    {
LABEL_201:
      __break(1u);
      goto LABEL_202;
    }

    v20 = v19;
    if (v19 > 0x7FFFFFFF)
    {
LABEL_202:
      __break(1u);
      goto LABEL_203;
    }

    LODWORD(__tp.tv_sec) = v19;
    if (v10[2] >> 31)
    {
LABEL_203:
      __break(1u);
      goto LABEL_204;
    }

    udat_parseCalendar();

    if (v20 != SLODWORD(__tp.tv_sec))
    {
      ucal_getMillis();
      v49 = v48 / 1000.0 + -978307200.0;
      ucal_close();

      *v5 = v49;
      return result;
    }

    ucal_close();
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_REALTIME, &__tp);

    v21 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
    v23 = v22;

    __tp.tv_sec = 0;
    __tp.tv_nsec = 0xE000000000000000;
    if (v23)
    {
      _StringGuts.grow(_:)(89);
      MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
      MEMORY[0x1865CB0E0](countAndFlagsBits, object);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
      v24 = v21;
      v25 = v23;
    }

    else
    {
      _StringGuts.grow(_:)(17);

      strcpy(&__tp, "Cannot parse ");
      HIWORD(__tp.tv_nsec) = -4864;
      v24 = countAndFlagsBits;
      v25 = object;
    }

    MEMORY[0x1865CB0E0](v24, v25);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    tv_sec = __tp.tv_sec;
    tv_nsec = __tp.tv_nsec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    v28 = swift_allocObject();
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v30 = @"NSDebugDescription";
    v31 = v30;
    if (!isTaggedPointer)
    {
      goto LABEL_27;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v30);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v33 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v35 = v34;

          goto LABEL_55;
        }

LABEL_27:
        LOBYTE(v157) = 0;
        __tp.tv_sec = 0;
        if (__CFStringIsCF())
        {
          if (__tp.tv_sec)
          {
LABEL_54:
            v33 = String.init(_cocoaString:)();
            v35 = v51;
LABEL_55:
            v52 = MEMORY[0x1E69E6158];
            v28[4] = v33;
            v28[5] = v35;
            v28[9] = v52;
            v28[6] = tv_sec;
            v28[7] = tv_nsec;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
            v53 = static _DictionaryStorage.allocate(capacity:)();
            outlined init with copy of (String, Any)((v28 + 4), &__tp);
            swift_setDeallocating();

            outlined destroy of TermOfAddress?((v28 + 4), &_sSS_yptMd);
            swift_deallocClassInstance();
            v54 = __tp.tv_sec;
            v55 = __tp.tv_nsec;
            v56 = specialized __RawDictionaryStorage.find<A>(_:)(__tp.tv_sec, __tp.tv_nsec);
            v58 = v57;

            if (v58)
            {
              __break(1u);
            }

            else
            {
              v53[(v56 >> 6) + 8] |= 1 << v56;
              v59 = (v53[6] + 16 * v56);
              *v59 = v54;
              v59[1] = v55;
              outlined init with take of Any(v161, (v53[7] + 32 * v56));
              v60 = v53[2];
              v61 = __OFADD__(v60, 1);
              v62 = v60 + 1;
              if (!v61)
              {
                v53[2] = v62;
                v63 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
                v64 = @"NSCocoaErrorDomain";
                v65 = v64;
                if (!v63)
                {
LABEL_62:
                  LOBYTE(v157) = 0;
                  __tp.tv_sec = 0;
                  if (!__CFStringIsCF())
                  {
                    v67 = v65;
                    String.init(_nativeStorage:)();
                    if (v68 || (__tp.tv_sec = [(__CFString *)v67 length]) == 0)
                    {

                      goto LABEL_77;
                    }

                    goto LABEL_76;
                  }

                  if (__tp.tv_sec)
                  {
LABEL_76:
                    String.init(_cocoaString:)();
LABEL_77:
                    v72 = objc_allocWithZone(NSError);
                    v73 = String._bridgeToObjectiveCImpl()();

                    v74 = [v72 initWithDomain:v73 code:2048 userInfo:_NativeDictionary.bridged()()];
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    v75 = [v74 domain];
                    if (!v75)
                    {
                      goto LABEL_89;
                    }

                    v76 = v75;
                    v77 = _objc_isTaggedPointer(v75);
                    v78 = v76;
                    v79 = v78;
                    if ((v77 & 1) == 0)
                    {
LABEL_83:
                      LOBYTE(v157) = 0;
                      __tp.tv_sec = 0;
                      if (__CFStringIsCF())
                      {
                        if (__tp.tv_sec)
                        {
LABEL_98:
                          v81 = String.init(_cocoaString:)();
                          v83 = v90;
                          goto LABEL_99;
                        }
                      }

                      else
                      {
                        v84 = v79;
                        v85 = String.init(_nativeStorage:)();
                        if (v86)
                        {
                          v81 = v85;
                          v83 = v86;

                          goto LABEL_100;
                        }

                        __tp.tv_sec = [v84 length];
                        if (__tp.tv_sec)
                        {
                          goto LABEL_98;
                        }
                      }

LABEL_89:
                      v81 = 0;
                      v83 = 0xE000000000000000;
                      goto LABEL_100;
                    }

                    v80 = _objc_getTaggedPointerTag(v78);
                    if (v80)
                    {
                      if (v80 != 22)
                      {
                        if (v80 == 2)
                        {
                          MEMORY[0x1EEE9AC00](v80);
                          v81 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                          v83 = v82;

LABEL_100:
                          v91 = v65;
                          v92 = v91;
                          if (!v63)
                          {
                            goto LABEL_105;
                          }

                          v93 = _objc_getTaggedPointerTag(v91);
                          if (!v93)
                          {
                            goto LABEL_114;
                          }

                          if (v93 != 22)
                          {
                            if (v93 == 2)
                            {
                              MEMORY[0x1EEE9AC00](v93);
                              v94 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                              v96 = v95;

LABEL_120:
                              if (v81 == v94 && v83 == v96)
                              {
                              }

                              else
                              {
                                v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if ((v104 & 1) == 0)
                                {
LABEL_200:
                                  __break(1u);
                                  goto LABEL_201;
                                }
                              }

                              swift_willThrow();

                              return result;
                            }

LABEL_105:
                            __tp.tv_sec = 0;
                            if (__CFStringIsCF())
                            {
                              v94 = __tp.tv_sec;
                              if (!__tp.tv_sec)
                              {

                                v96 = 0xE000000000000000;
                                goto LABEL_120;
                              }
                            }

                            else
                            {
                              v97 = v92;
                              v98 = String.init(_nativeStorage:)();
                              if (v99)
                              {
                                v94 = v98;
                                v96 = v99;

                                goto LABEL_120;
                              }

                              __tp.tv_sec = [(__CFString *)v97 length];
                              if (!__tp.tv_sec)
                              {

                                v94 = 0;
                                v96 = 0xE000000000000000;
                                goto LABEL_120;
                              }
                            }

                            v94 = String.init(_cocoaString:)();
                            v96 = v103;
                            goto LABEL_120;
                          }

                          v100 = [(__CFString *)v92 UTF8String];
                          if (v100)
                          {
                            v101 = String.init(utf8String:)(v100);
                            if (v102)
                            {
LABEL_115:
                              v94 = v101;
                              v96 = v102;

                              goto LABEL_120;
                            }

                            __break(1u);
LABEL_114:
                            _CFIndirectTaggedPointerStringGetContents();
                            v101 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                            if (!v102)
                            {
                              [(__CFString *)v92 mutableCopy];
                              _bridgeAnyObjectToAny(_:)();

                              swift_unknownObjectRelease();
                              swift_dynamicCast();
                              v94 = v157;
                              v96 = v158;
                              goto LABEL_120;
                            }

                            goto LABEL_115;
                          }

                          goto LABEL_207;
                        }

                        goto LABEL_83;
                      }

                      v87 = [v79 UTF8String];
                      if (!v87)
                      {
LABEL_208:
                        __break(1u);
                        goto LABEL_209;
                      }

                      v88 = String.init(utf8String:)(v87);
                      if (v89)
                      {
                        goto LABEL_94;
                      }

                      __break(1u);
                    }

                    _CFIndirectTaggedPointerStringGetContents();
                    v88 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                    if (!v89)
                    {
                      [v79 mutableCopy];
                      _bridgeAnyObjectToAny(_:)();

                      swift_unknownObjectRelease();
                      swift_dynamicCast();
                      v81 = v157;
                      v83 = v158;
                      goto LABEL_99;
                    }

LABEL_94:
                    v81 = v88;
                    v83 = v89;

LABEL_99:
                    goto LABEL_100;
                  }

LABEL_72:

                  goto LABEL_77;
                }

                v66 = _objc_getTaggedPointerTag(v64);
                if (!v66)
                {
LABEL_71:
                  _CFIndirectTaggedPointerStringGetContents();
                  _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (!v71)
                  {
                    [(__CFString *)v65 mutableCopy];
                    _bridgeAnyObjectToAny(_:)();

                    swift_unknownObjectRelease();
                    swift_dynamicCast();
                    goto LABEL_77;
                  }

                  goto LABEL_72;
                }

                if (v66 != 22)
                {
                  if (v66 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v66);
                    String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                    goto LABEL_77;
                  }

                  goto LABEL_62;
                }

                v69 = [(__CFString *)v65 UTF8String];
                if (v69)
                {
                  String.init(utf8String:)(v69);
                  if (v70)
                  {
                    goto LABEL_72;
                  }

                  __break(1u);
                  goto LABEL_71;
                }

LABEL_206:
                __break(1u);
LABEL_207:
                __break(1u);
                goto LABEL_208;
              }
            }

            __break(1u);
            goto LABEL_198;
          }
        }

        else
        {
          v36 = v31;
          v37 = String.init(_nativeStorage:)();
          if (v38)
          {
            v33 = v37;
            v35 = v38;

            goto LABEL_55;
          }

          __tp.tv_sec = [(__CFString *)v36 length];
          if (__tp.tv_sec)
          {
            goto LABEL_54;
          }
        }

        v33 = 0;
        v35 = 0xE000000000000000;
        goto LABEL_55;
      }

      v42 = [(__CFString *)v31 UTF8String];
      if (!v42)
      {
        __break(1u);
        goto LABEL_206;
      }

      v43 = String.init(utf8String:)(v42);
      if (v44)
      {
LABEL_40:
        v33 = v43;
        v35 = v44;

        goto LABEL_55;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v43 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v44)
    {
      [(__CFString *)v31 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v33 = v157;
      v35 = v158;
      goto LABEL_55;
    }

    goto LABEL_40;
  }

LABEL_5:
  v12 = _objc_isTaggedPointer(@"NSDebugDescription");
  v13 = @"NSDebugDescription";
  v14 = v13;
  if (!v12)
  {
    goto LABEL_10;
  }

  v15 = _objc_getTaggedPointerTag(v13);
  switch(v15)
  {
    case 0:
      goto LABEL_48;
    case 0x16:
      v45 = [(__CFString *)v14 UTF8String];
      if (v45)
      {
        v46 = String.init(utf8String:)(v45);
        if (v47)
        {
          goto LABEL_49;
        }

        __break(1u);
LABEL_48:
        _CFIndirectTaggedPointerStringGetContents();
        v46 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v47)
        {
          [(__CFString *)v14 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v16 = v157;
          v18 = v158;
          goto LABEL_126;
        }

LABEL_49:
        v16 = v46;
        v18 = v47;

        goto LABEL_126;
      }

LABEL_209:
      __break(1u);
      goto LABEL_210;
    case 2:
      MEMORY[0x1EEE9AC00](v15);
      v16 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v18 = v17;

      goto LABEL_126;
  }

LABEL_10:
  LOBYTE(v157) = 0;
  __tp.tv_sec = 0;
  if (!__CFStringIsCF())
  {
    v39 = v14;
    v40 = String.init(_nativeStorage:)();
    if (v41)
    {
      v16 = v40;
      v18 = v41;

      goto LABEL_126;
    }

    __tp.tv_sec = [(__CFString *)v39 length];
    if (__tp.tv_sec)
    {
      goto LABEL_125;
    }

LABEL_42:
    v16 = 0;
    v18 = 0xE000000000000000;
    goto LABEL_126;
  }

  if (!__tp.tv_sec)
  {

    goto LABEL_42;
  }

LABEL_125:
  v16 = String.init(_cocoaString:)();
  v18 = v105;
LABEL_126:
  v159[0] = v16;
  v159[1] = v18;
  v159[5] = MEMORY[0x1E69E6158];
  v159[2] = 0xD000000000000021;
  v159[3] = 0x800000018147EA90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v106 = static _DictionaryStorage.allocate(capacity:)();
  outlined init with copy of (String, Any)(v159, &__tp);

  outlined destroy of TermOfAddress?(v159, &_sSS_yptMd);
  v107 = __tp.tv_sec;
  v108 = __tp.tv_nsec;
  v109 = specialized __RawDictionaryStorage.find<A>(_:)(__tp.tv_sec, __tp.tv_nsec);
  v111 = v110;

  if (v111)
  {
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  v106[(v109 >> 6) + 8] |= 1 << v109;
  v112 = (v106[6] + 16 * v109);
  *v112 = v107;
  v112[1] = v108;
  outlined init with take of Any(v161, (v106[7] + 32 * v109));
  v113 = v106[2];
  v61 = __OFADD__(v113, 1);
  v114 = v113 + 1;
  if (v61)
  {
LABEL_199:
    __break(1u);
    goto LABEL_200;
  }

  v106[2] = v114;
  v115 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v116 = @"NSCocoaErrorDomain";
  v117 = v116;
  if (!v115)
  {
    goto LABEL_133;
  }

  v118 = _objc_getTaggedPointerTag(v116);
  switch(v118)
  {
    case 0:
LABEL_142:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v123)
      {
        [(__CFString *)v117 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_148;
      }

      goto LABEL_143;
    case 0x16:
      v121 = [(__CFString *)v117 UTF8String];
      if (v121)
      {
        String.init(utf8String:)(v121);
        if (v122)
        {
          goto LABEL_143;
        }

        __break(1u);
        goto LABEL_142;
      }

LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
      goto LABEL_212;
    case 2:
      MEMORY[0x1EEE9AC00](v118);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_148;
  }

LABEL_133:
  LOBYTE(v157) = 0;
  __tp.tv_sec = 0;
  if (!__CFStringIsCF())
  {
    v119 = v117;
    String.init(_nativeStorage:)();
    if (v120 || (__tp.tv_sec = [(__CFString *)v119 length]) == 0)
    {

      goto LABEL_148;
    }

    goto LABEL_147;
  }

  if (!__tp.tv_sec)
  {
LABEL_143:

    goto LABEL_148;
  }

LABEL_147:
  String.init(_cocoaString:)();
LABEL_148:
  v124 = objc_allocWithZone(NSError);
  v125 = String._bridgeToObjectiveCImpl()();

  v126 = [v124 initWithDomain:v125 code:2048 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v127 = [v126 domain];
  if (!v127)
  {
    goto LABEL_160;
  }

  v128 = v127;
  v129 = _objc_isTaggedPointer(v127);
  v130 = v128;
  v131 = v130;
  if ((v129 & 1) == 0)
  {
LABEL_154:
    LOBYTE(v157) = 0;
    __tp.tv_sec = 0;
    if (__CFStringIsCF())
    {
      if (__tp.tv_sec)
      {
LABEL_169:
        v133 = String.init(_cocoaString:)();
        v135 = v142;
        goto LABEL_170;
      }
    }

    else
    {
      v136 = v131;
      v137 = String.init(_nativeStorage:)();
      if (v138)
      {
        v133 = v137;
        v135 = v138;

        goto LABEL_171;
      }

      __tp.tv_sec = [v136 length];
      if (__tp.tv_sec)
      {
        goto LABEL_169;
      }
    }

LABEL_160:
    v133 = 0;
    v135 = 0xE000000000000000;
    goto LABEL_171;
  }

  v132 = _objc_getTaggedPointerTag(v130);
  if (!v132)
  {
    goto LABEL_164;
  }

  if (v132 != 22)
  {
    if (v132 == 2)
    {
      MEMORY[0x1EEE9AC00](v132);
      v133 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v135 = v134;

LABEL_171:
      v143 = v117;
      v144 = v143;
      if (!v115)
      {
LABEL_176:
        __tp.tv_sec = 0;
        if (__CFStringIsCF())
        {
          v146 = __tp.tv_sec;
          if (!__tp.tv_sec)
          {

            v148 = 0xE000000000000000;
            goto LABEL_191;
          }
        }

        else
        {
          v149 = v144;
          v150 = String.init(_nativeStorage:)();
          if (v151)
          {
            v146 = v150;
            v148 = v151;

            goto LABEL_191;
          }

          __tp.tv_sec = [(__CFString *)v149 length];
          if (!__tp.tv_sec)
          {

            v146 = 0;
            v148 = 0xE000000000000000;
            goto LABEL_191;
          }
        }

        v146 = String.init(_cocoaString:)();
        v148 = v155;
LABEL_191:
        if (v133 == v146 && v135 == v148)
        {

LABEL_195:
          swift_willThrow();
          return result;
        }

        v156 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v156)
        {
          goto LABEL_195;
        }

LABEL_204:
        __break(1u);
      }

      v145 = _objc_getTaggedPointerTag(v143);
      if (!v145)
      {
        goto LABEL_185;
      }

      if (v145 != 22)
      {
        if (v145 == 2)
        {
          MEMORY[0x1EEE9AC00](v145);
          v146 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v148 = v147;

          goto LABEL_191;
        }

        goto LABEL_176;
      }

      v152 = [(__CFString *)v144 UTF8String];
      if (v152)
      {
        v153 = String.init(utf8String:)(v152);
        if (v154)
        {
          goto LABEL_186;
        }

        __break(1u);
LABEL_185:
        _CFIndirectTaggedPointerStringGetContents();
        v153 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v154)
        {
          [(__CFString *)v144 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v146 = v157;
          v148 = v158;
          goto LABEL_191;
        }

LABEL_186:
        v146 = v153;
        v148 = v154;

        goto LABEL_191;
      }

      goto LABEL_211;
    }

    goto LABEL_154;
  }

  v139 = [v131 UTF8String];
  if (v139)
  {
    v140 = String.init(utf8String:)(v139);
    if (v141)
    {
      goto LABEL_165;
    }

    __break(1u);
LABEL_164:
    _CFIndirectTaggedPointerStringGetContents();
    v140 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v141)
    {
      [v131 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v133 = v157;
      v135 = v158;
      goto LABEL_170;
    }

LABEL_165:
    v133 = v140;
    v135 = v141;

LABEL_170:
    goto LABEL_171;
  }

LABEL_212:
  __break(1u);
  return result;
}

uint64_t Date.ParseStrategy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation4DateV13ParseStrategyV10CodingKeys33_4BB8D346214ED2D40A5BC690C4D26AD4LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v20 = *(v1 + 24);
  v21 = v8;
  v9 = *(v1 + 32);
  v18 = *(v1 + 48);
  v19 = v9;
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  lazy protocol witness table accessor for type Date.ParseStrategy.CodingKeys and conformance Date.ParseStrategy.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v23) = 0;
  v14 = v22;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v14)
  {
    v15 = v20;
    v16 = v21;
    *&v23 = v7;
    v24 = 1;
    lazy protocol witness table accessor for type Date and conformance Date();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v23 = v16;
    *(&v23 + 1) = v15;
    v24 = 2;
    lazy protocol witness table accessor for type Locale and conformance Locale();
    swift_unknownObjectRetain();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    swift_unknownObjectRelease();
    v23 = v19;
    v24 = 3;
    lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
    swift_unknownObjectRetain();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_unknownObjectRelease();
    v23 = v18;
    v24 = 4;
    lazy protocol witness table accessor for type Calendar and conformance Calendar();
    swift_unknownObjectRetain();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_unknownObjectRelease();
    LOBYTE(v23) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v13);
}

uint64_t Date.ParseStrategy.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation4DateV13ParseStrategyV10CodingKeys33_4BB8D346214ED2D40A5BC690C4D26AD4LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.ParseStrategy.CodingKeys and conformance Date.ParseStrategy.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return swift_unknownObjectRelease();
  }

  else
  {
    LOBYTE(v36) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v31) = 1;
    lazy protocol witness table accessor for type Date and conformance Date();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = v36;
    LOBYTE(v31) = 2;
    lazy protocol witness table accessor for type Locale and conformance Locale();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v11 = v36;
    v30 = v37;
    LOBYTE(v31) = 3;
    lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v29 = v36;
    v28 = v37;
    LOBYTE(v31) = 4;
    lazy protocol witness table accessor for type Calendar and conformance Calendar();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26 = v9;
    v12 = v36;
    v27 = v37;
    v46 = 5;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 &= 1u;
    v14 = v26;
    v15 = *(v6 + 8);
    v25 = v13;
    v16 = v8;
    v18 = v17;
    v15(v16, v5);
    LOBYTE(v31) = v14;
    *(&v31 + 1) = v10;
    *&v32 = v11;
    *(&v32 + 1) = v30;
    v19 = v29;
    v20 = v28;
    *&v33 = v29;
    *(&v33 + 1) = v28;
    *&v34 = v12;
    *(&v34 + 1) = v27;
    v21 = v25;
    *&v35 = v25;
    *(&v35 + 1) = v18;
    v22 = v34;
    a2[2] = v33;
    a2[3] = v22;
    a2[4] = v35;
    v23 = v32;
    *a2 = v31;
    a2[1] = v23;
    outlined init with copy of Date.ParseStrategy(&v31, &v36);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v36) = v26;
    v37 = v10;
    v38 = v11;
    v39 = v30;
    v40 = v19;
    v41 = v20;
    v42 = v12;
    v43 = v27;
    v44 = v21;
    v45 = v18;
    return outlined destroy of Date.ParseStrategy(&v36);
  }
}

void static ParseStrategy.fixed<>(format:timeZone:locale:)(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v54 = *a2;
  v7 = *a3;
  v8 = a3[1];
  v9 = one-time initialization token for cache;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v11 = *(v10 + 16);
  if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v13 & 1) != 0))
  {
    v52 = *(*(v11 + 56) + 16 * v12);
    v14 = *(*(v11 + 56) + 16 * v12);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v10 + 24));
    if (v14)
    {
LABEL_39:
      *a4 = 1;
      *(a4 + 8) = 0xC1CD27E440000000;
      *(a4 + 16) = v7;
      *(a4 + 24) = v8;
      *(a4 + 32) = v54;
      *(a4 + 48) = v52;
      *(a4 + 64) = v5;
      *(a4 + 72) = v6;
      return;
    }
  }

  else
  {
    os_unfair_lock_unlock((v10 + 24));
  }

  v15 = type metadata accessor for _CalendarGregorian();
  v16 = _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_1(&lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian, type metadata accessor for _CalendarGregorian);
  v59[0] = 0;
  v58[0] = 0;
  v58[1] = 0;
  v57[0] = 0;
  v57[1] = 0;
  v55 = 0;
  v56 = 1;
  v17 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(v59, v58, v57, 0, 1, 0, 1, &v55);
  os_unfair_lock_lock((v10 + 24));
  v18 = *(v10 + 16);
  if (*(v18 + 16))
  {
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(0);
    if (v20)
    {
      v21 = *(*(v18 + 56) + 16 * v19);
LABEL_38:
      v52 = v21;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v10 + 24));

      goto LABEL_39;
    }
  }

  v50 = v8;
  v51 = v6;
  v53 = v5;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58[0] = *(v10 + 16);
  v23 = v58[0];
  v24 = specialized __RawDictionaryStorage.find<A>(_:)(0);
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
    LOBYTE(v8) = v25;
    if (*(v23 + 24) < v29)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, isUniquelyReferenced_nonNull_native);
      v30 = v58[0];
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(0);
      if ((v8 & 1) == (v31 & 1))
      {
        goto LABEL_17;
      }

      v24 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v30 = v23;
LABEL_17:
      v6 = v51;
      v5 = v53;
      if (v8)
      {
LABEL_18:
        v32 = (*(v30 + 56) + 16 * v24);
        *v32 = v17;
        v32[1] = v16;
        swift_unknownObjectRelease();
LABEL_37:
        *(v10 + 16) = v30;
        *&v21 = v17;
        *(&v21 + 1) = v16;
        v8 = v50;
        goto LABEL_38;
      }

LABEL_36:
      specialized _NativeDictionary._insert(at:key:value:)(v24, 0, v17, v30, v15, v16);
      goto LABEL_37;
    }
  }

  v47 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
  v33 = static _DictionaryStorage.copy(original:)();
  v30 = v33;
  if (!*(v23 + 16))
  {
LABEL_35:

    v24 = v47;
    v6 = v51;
    v5 = v53;
    if (v8)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

  v34 = (v33 + 64);
  v35 = (v23 + 64);
  v36 = ((1 << *(v30 + 32)) + 63) >> 6;
  if (v30 != v23 || v34 >= &v35[8 * v36])
  {
    memmove(v34, v35, 8 * v36);
  }

  v37 = 0;
  *(v30 + 16) = *(v23 + 16);
  v38 = 1 << *(v23 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v23 + 64);
  v41 = (v38 + 63) >> 6;
  v48 = v41;
  if (v40)
  {
    do
    {
      v42 = __clz(__rbit64(v40));
      v49 = (v40 - 1) & v40;
LABEL_33:
      v45 = v42 | (v37 << 6);
      v46 = *(*(v23 + 56) + 16 * v45);
      *(*(v30 + 48) + v45) = *(*(v23 + 48) + v45);
      *(*(v30 + 56) + 16 * v45) = v46;
      swift_unknownObjectRetain();
      v41 = v48;
      v40 = v49;
    }

    while (v49);
  }

  v43 = v37;
  while (1)
  {
    v37 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v37 >= v41)
    {
      goto LABEL_35;
    }

    v44 = *(v23 + 64 + 8 * v37);
    ++v43;
    if (v44)
    {
      v42 = __clz(__rbit64(v44));
      v49 = (v44 - 1) & v44;
      goto LABEL_33;
    }
  }

  __break(1u);
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance Date.ParseStrategy(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.ParseStrategy and conformance Date.ParseStrategy();

  return MEMORY[0x1EEE6E5F8](a1, v2);
}

uint64_t static RegexComponent<>.date(format:locale:timeZone:calendar:twoDigitStartDate:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v10 = *a2;
  v9 = a2[1];
  v18 = *a3;
  v11 = *a4;
  v12 = *a5;
  if (*a4)
  {
    v13 = a4[1];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v14 = v11;
  }

  else
  {
    ObjectType = swift_getObjectType();
    v16 = *(v9 + 192);
    swift_unknownObjectRetain_n();

    swift_unknownObjectRetain();
    v16(v20, ObjectType, v9);
    v19[0] = v10;
    v19[1] = v9;
    Calendar.locale.setter(v19);
    v14 = v20[0];
    v13 = v20[1];
  }

  *(a6 + 16) = v10;
  *(a6 + 24) = v9;
  *(a6 + 32) = v18;
  *(a6 + 64) = v8;
  *(a6 + 72) = v7;
  *(a6 + 48) = v14;
  *(a6 + 56) = v13;
  *a6 = 0;
  *(a6 + 8) = v12;

  return swift_unknownObjectRetain();
}

uint64_t static RegexComponent<>.dateTime(date:time:locale:timeZone:calendar:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v9 = *a3;
  v8 = a3[1];
  v86 = *a4;
  v10 = *a5;
  if (*a5)
  {
    v11 = a5[1];
    v106 = *a5;
    v107 = v11;
    swift_unknownObjectRetain();
    v85 = v10;
  }

  else
  {
    ObjectType = swift_getObjectType();
    v13 = *(v8 + 192);
    swift_unknownObjectRetain();
    v13(&v106, ObjectType, v8);
    *&v101[0] = v9;
    *(&v101[0] + 1) = v8;
    swift_unknownObjectRetain();
    Calendar.locale.setter(v101);
    v11 = v107;
    v85 = v106;
  }

  v105 = 1;
  if (v6)
  {
    v105 = 0;
    v118 = xmmword_18121B8E0;
    v119 = xmmword_181223220;
    v120 = 0x2020E0906030100;
    v121 = 0;
    v122 = 3327;
    *&v101[0] = v6;
    Date.FormatStyle.DateFieldCollection.collection(date:)(v101, v111);
    v14 = v111[0];
    v15 = v111[1];
    v16 = v111[2];
    v17 = v112;
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v17 = 0;
    v16 = xmmword_181223240;
    v14 = 0uLL;
    v15 = 0uLL;
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  if ((v16 & 0xFF000000000000) == 0x3000000000000)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0x2020E0906030000;
    LOBYTE(v21) = 1;
    v15 = xmmword_181223220;
    v14 = xmmword_18121B8E0;
    v17 = 3327;
  }

  else
  {
    v21 = v16 >> 8;
    v20 = v16 & 0xFFFFFFFFFFFF0000;
    v19 = v16;
    v18 = *(&v16 + 1);
  }

  v113 = v14;
  v114 = v15;
  v115 = v20 | (v21 << 8) | v19;
  v116 = v18;
  v117 = v17;
  *&v101[0] = v7;
  Date.FormatStyle.DateFieldCollection.collection(time:)(v101, v109);
  v14 = v109[0];
  v15 = v109[1];
  v16 = v109[2];
  v17 = v110;
LABEL_12:
  v101[0] = v14;
  v101[1] = v15;
  v101[2] = v16;
  LOWORD(v102) = v17;
  *(&v102 + 1) = v6;
  LOBYTE(v103) = v105;
  *(&v103 + 1) = v9;
  *v104 = v8;
  *&v104[8] = v86;
  *&v104[24] = v85;
  *&v104[32] = v11;
  *&v104[40] = 256;
  v98 = v103;
  v99 = *v104;
  v100[0] = *&v104[16];
  *(v100 + 10) = *&v104[26];
  v94 = v14;
  v95 = v15;
  v96 = v16;
  v97 = v102;
  Date.FormatStyle.symbols.getter(&v108);
  v90 = v9;
  v91 = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain_n();
  v83._countAndFlagsBits = Date.FormatStyle.DateFieldCollection.formatterTemplate(overridingDayPeriodWithLocale:)(&v90);
  v83._object = v22;
  swift_unknownObjectRelease();
  v23 = swift_getObjectType();
  v87 = v8;
  v24 = (*(v8 + 472))(v23, v8);
  v26 = v25;
  v27 = swift_getObjectType();
  v84 = v11;
  (*(v11 + 24))(&v93, v27, v11);
  v28 = v93;
  v29 = one-time initialization token for _patternGeneratorCache;

  if (v29 != -1)
  {
    v30 = swift_once();
  }

  v31 = qword_1EA8221B0;
  v80 = static ICUPatternGenerator._patternGeneratorCache;
  v90 = v24;
  v91 = v26;
  v92 = v28;
  MEMORY[0x1EEE9AC00](v30);
  os_unfair_lock_lock((v31 + 24));
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v31 + 16, &v89);
  os_unfair_lock_unlock((v31 + 24));
  v32 = v89;
  if (v89 != 1)
  {
    goto LABEL_27;
  }

  LOBYTE(v89) = v28;
  type metadata accessor for ICUPatternGenerator();
  swift_allocObject();

  v32 = ICUPatternGenerator.init(localeIdentifier:calendarIdentifier:)(v24, v26, &v89);
  os_unfair_lock_lock((v31 + 24));
  v33 = v91;
  v79 = v90;
  v78 = v92;
  if (v80 >= *(*(v31 + 16) + 16))
  {
  }

  else
  {
    *(v31 + 16) = MEMORY[0x1E69E7CC8];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v33;
  v89 = *(v31 + 16);
  v36 = v89;
  *(v31 + 16) = 0x8000000000000000;
  v81 = v35;
  v38 = specialized __RawDictionaryStorage.find<A>(_:)(v79, v35, v78);
  v39 = *(v36 + 16);
  v40 = (v37 & 1) == 0;
  v41 = v39 + v40;
  if (__OFADD__(v39, v40))
  {
    __break(1u);
    goto LABEL_34;
  }

  if (*(v36 + 24) >= v41)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v43 = v36;
      v44 = v81;
      if (v37)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }

LABEL_34:
    v73 = v38;
    v74 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation19ICUPatternGeneratorC07PatternE4InfoVAESgGMd);
    v56 = static _DictionaryStorage.copy(original:)();
    v43 = v56;
    if (*(v36 + 16))
    {
      v57 = (v56 + 64);
      v75 = (v36 + 64);
      v58 = ((1 << *(v43 + 32)) + 63) >> 6;
      if (v43 != v36 || v57 >= &v75[8 * v58])
      {
        memmove(v57, v75, 8 * v58);
      }

      v59 = 0;
      *(v43 + 16) = *(v36 + 16);
      v60 = 1 << *(v36 + 32);
      v61 = -1;
      if (v60 < 64)
      {
        v61 = ~(-1 << v60);
      }

      v62 = v61 & *(v36 + 64);
      v63 = (v60 + 63) >> 6;
      v76 = v63;
      if (v62)
      {
        do
        {
          v64 = __clz(__rbit64(v62));
          v77 = (v62 - 1) & v62;
LABEL_47:
          v67 = v64 | (v59 << 6);
          v68 = *(v36 + 48) + 24 * v67;
          v69 = *v68;
          v70 = *(v68 + 8);
          LOBYTE(v68) = *(v68 + 16);
          v71 = *(*(v36 + 56) + 8 * v67);
          v72 = *(v43 + 48) + 24 * v67;
          *v72 = v69;
          *(v72 + 8) = v70;
          *(v72 + 16) = v68;
          *(*(v43 + 56) + 8 * v67) = v71;

          v63 = v76;
          v62 = v77;
        }

        while (v77);
      }

      v65 = v59;
      while (1)
      {
        v59 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          break;
        }

        if (v59 >= v63)
        {
          goto LABEL_49;
        }

        v66 = *&v75[8 * v59];
        ++v65;
        if (v66)
        {
          v64 = __clz(__rbit64(v66));
          v77 = (v66 - 1) & v66;
          goto LABEL_47;
        }
      }

      __break(1u);
      goto LABEL_52;
    }

LABEL_49:

    v44 = v81;
    v38 = v73;
    if (v74)
    {
      goto LABEL_22;
    }

LABEL_25:
    specialized _NativeDictionary._insert(at:key:value:)(v38, v79, v44, v78, v32, v43);
    goto LABEL_26;
  }

  v42 = v37;
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v41, isUniquelyReferenced_nonNull_native);
  v43 = v89;
  v44 = v81;
  v45 = specialized __RawDictionaryStorage.find<A>(_:)(v79, v81, v78);
  if ((v42 & 1) != (v46 & 1))
  {
LABEL_52:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v38 = v45;
  if ((v42 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  v47 = v38;

  *(*(v43 + 56) + 8 * v47) = v32;

LABEL_26:
  *(v31 + 16) = v43;
  os_unfair_lock_unlock((v31 + 24));

  outlined consume of ICUNumberFormatter??(1);
LABEL_27:
  swift_bridgeObjectRelease_n();
  if (v32)
  {
    object = v83._object;
    countAndFlagsBits = v83._countAndFlagsBits;
    v50 = ICUPatternGenerator._patternForSkeleton(_:)(v83);

    swift_unknownObjectRelease();
    v51 = v85;
    swift_unknownObjectRelease();
    v52 = v87;
    v53 = v84;
    if (v50.value._object)
    {

      countAndFlagsBits = v50.value._countAndFlagsBits;
      object = v50.value._object;
    }

    v54 = a6;
  }

  else
  {
    swift_unknownObjectRelease();
    v51 = v85;
    swift_unknownObjectRelease();
    v54 = a6;
    countAndFlagsBits = v83._countAndFlagsBits;
    v52 = v87;
    object = v83._object;
    v53 = v84;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v88 = *&v104[8];
  swift_unknownObjectRetain();
  result = outlined destroy of Date.FormatStyle(v101);
  *v54 = 0;
  *(v54 + 8) = 0xC1CD27E440000000;
  *(v54 + 16) = v9;
  *(v54 + 24) = v52;
  *(v54 + 32) = v88;
  *(v54 + 48) = v51;
  *(v54 + 56) = v53;
  *(v54 + 64) = countAndFlagsBits;
  *(v54 + 72) = object;
  return result;
}

uint64_t static RegexComponent<>.date(_:locale:timeZone:calendar:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a1;
  v7 = *a2;
  v6 = a2[1];
  v82 = *a3;
  v8 = *a4;
  if (*a4)
  {
    v9 = a4[1];
    v102 = *a4;
    v103 = v9;
    swift_unknownObjectRetain();
    v10 = v8;
  }

  else
  {
    ObjectType = swift_getObjectType();
    v12 = *(v6 + 192);
    swift_unknownObjectRetain();
    v12(&v102, ObjectType, v6);
    *&v97[0] = v7;
    *(&v97[0] + 1) = v6;
    swift_unknownObjectRetain();
    Calendar.locale.setter(v97);
    v10 = v102;
    v9 = v103;
  }

  v101 = 1;
  if (v5)
  {
    v101 = 0;
    v107 = xmmword_18121B8E0;
    v108 = xmmword_181223220;
    v109 = 0x2020E0906030100;
    v110 = 0;
    v111 = 3327;
    *&v97[0] = v5;
    Date.FormatStyle.DateFieldCollection.collection(date:)(v97, v105);
    v13 = v105[0];
    v14 = v105[1];
    v15 = v105[2];
    v16 = v106;
  }

  else
  {
    v16 = 0;
    v15 = xmmword_181223240;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  v97[0] = v13;
  v97[1] = v14;
  v97[2] = v15;
  LOWORD(v98) = v16;
  *(&v98 + 1) = v5;
  LOBYTE(v99) = v101;
  *(&v99 + 1) = v7;
  *v100 = v6;
  *&v100[8] = v82;
  *&v100[24] = v10;
  *&v100[32] = v9;
  *&v100[40] = 256;
  v94 = v99;
  v95 = *v100;
  v96[0] = *&v100[16];
  *(v96 + 10) = *&v100[26];
  v90 = v13;
  v91 = v14;
  v92 = v15;
  v93 = v98;
  Date.FormatStyle.symbols.getter(&v104);
  v86 = v7;
  v87 = v6;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain_n();
  v79._countAndFlagsBits = Date.FormatStyle.DateFieldCollection.formatterTemplate(overridingDayPeriodWithLocale:)(&v86);
  v79._object = v17;
  swift_unknownObjectRelease();
  v18 = swift_getObjectType();
  v83 = v6;
  v19 = (*(v6 + 472))(v18, v6);
  v21 = v20;
  v22 = swift_getObjectType();
  v80 = v10;
  v81 = v9;
  (*(v9 + 24))(&v89, v22, v9);
  v23 = v89;
  v24 = one-time initialization token for _patternGeneratorCache;

  if (v24 != -1)
  {
    v25 = swift_once();
  }

  v26 = qword_1EA8221B0;
  v76 = static ICUPatternGenerator._patternGeneratorCache;
  v86 = v19;
  v87 = v21;
  v88 = v23;
  MEMORY[0x1EEE9AC00](v25);
  os_unfair_lock_lock((v26 + 24));
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v26 + 16, &v85);
  os_unfair_lock_unlock((v26 + 24));
  v27 = v85;
  if (v85 != 1)
  {
    goto LABEL_22;
  }

  LOBYTE(v85) = v23;
  type metadata accessor for ICUPatternGenerator();
  swift_allocObject();

  v27 = ICUPatternGenerator.init(localeIdentifier:calendarIdentifier:)(v19, v21, &v85);
  os_unfair_lock_lock((v26 + 24));
  v28 = v87;
  v75 = v86;
  v74 = v88;
  if (v76 >= *(*(v26 + 16) + 16))
  {
  }

  else
  {
    *(v26 + 16) = MEMORY[0x1E69E7CC8];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v28;
  v31 = isUniquelyReferenced_nonNull_native;
  v85 = *(v26 + 16);
  v32 = v85;
  *(v26 + 16) = 0x8000000000000000;
  v77 = v30;
  v34 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v30, v74);
  v35 = *(v32 + 16);
  v36 = (v33 & 1) == 0;
  v37 = v35 + v36;
  if (__OFADD__(v35, v36))
  {
    __break(1u);
    goto LABEL_29;
  }

  if (*(v32 + 24) >= v37)
  {
    if (v31)
    {
      v39 = v32;
      v40 = v77;
      if (v33)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }

LABEL_29:
    v69 = v34;
    v70 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation19ICUPatternGeneratorC07PatternE4InfoVAESgGMd);
    v52 = static _DictionaryStorage.copy(original:)();
    v39 = v52;
    if (*(v32 + 16))
    {
      v53 = (v52 + 64);
      v71 = (v32 + 64);
      v54 = ((1 << *(v39 + 32)) + 63) >> 6;
      if (v39 != v32 || v53 >= &v71[8 * v54])
      {
        memmove(v53, v71, 8 * v54);
      }

      v55 = 0;
      *(v39 + 16) = *(v32 + 16);
      v56 = 1 << *(v32 + 32);
      v57 = -1;
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      v58 = v57 & *(v32 + 64);
      v59 = (v56 + 63) >> 6;
      v72 = v59;
      if (v58)
      {
        do
        {
          v60 = __clz(__rbit64(v58));
          v73 = (v58 - 1) & v58;
LABEL_42:
          v63 = v60 | (v55 << 6);
          v64 = *(v32 + 48) + 24 * v63;
          v65 = *v64;
          v66 = *(v64 + 8);
          LOBYTE(v64) = *(v64 + 16);
          v67 = *(*(v32 + 56) + 8 * v63);
          v68 = *(v39 + 48) + 24 * v63;
          *v68 = v65;
          *(v68 + 8) = v66;
          *(v68 + 16) = v64;
          *(*(v39 + 56) + 8 * v63) = v67;

          v59 = v72;
          v58 = v73;
        }

        while (v73);
      }

      v61 = v55;
      while (1)
      {
        v55 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          break;
        }

        if (v55 >= v59)
        {
          goto LABEL_44;
        }

        v62 = *&v71[8 * v55];
        ++v61;
        if (v62)
        {
          v60 = __clz(__rbit64(v62));
          v73 = (v62 - 1) & v62;
          goto LABEL_42;
        }
      }

      __break(1u);
      goto LABEL_47;
    }

LABEL_44:

    v40 = v77;
    v34 = v69;
    if (v70)
    {
      goto LABEL_17;
    }

LABEL_20:
    specialized _NativeDictionary._insert(at:key:value:)(v34, v75, v40, v74, v27, v39);
    goto LABEL_21;
  }

  v38 = v33;
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, v31);
  v39 = v85;
  v40 = v77;
  v41 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v77, v74);
  if ((v38 & 1) != (v42 & 1))
  {
LABEL_47:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v34 = v41;
  if ((v38 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  v43 = v34;

  *(*(v39 + 56) + 8 * v43) = v27;

LABEL_21:
  *(v26 + 16) = v39;
  os_unfair_lock_unlock((v26 + 24));

  outlined consume of ICUNumberFormatter??(1);
LABEL_22:
  swift_bridgeObjectRelease_n();
  if (v27)
  {
    object = v79._object;
    countAndFlagsBits = v79._countAndFlagsBits;
    v46 = ICUPatternGenerator._patternForSkeleton(_:)(v79);

    swift_unknownObjectRelease();
    v47 = v80;
    swift_unknownObjectRelease();
    v49 = v81;
    v48 = v83;
    if (v46.value._object)
    {

      countAndFlagsBits = v46.value._countAndFlagsBits;
      object = v46.value._object;
    }

    v50 = a5;
  }

  else
  {
    swift_unknownObjectRelease();
    v47 = v80;
    swift_unknownObjectRelease();
    v50 = a5;
    countAndFlagsBits = v79._countAndFlagsBits;
    v49 = v81;
    v48 = v83;
    object = v79._object;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v84 = *&v100[8];
  swift_unknownObjectRetain();
  result = outlined destroy of Date.FormatStyle(v97);
  *v50 = 0;
  *(v50 + 8) = 0xC1CD27E440000000;
  *(v50 + 16) = v7;
  *(v50 + 24) = v48;
  *(v50 + 32) = v84;
  *(v50 + 48) = v47;
  *(v50 + 56) = v49;
  *(v50 + 64) = countAndFlagsBits;
  *(v50 + 72) = object;
  return result;
}

uint64_t specialized static Date.ParseStrategy.== infix(_:_:)(double *a1, double *a2)
{
  result = 0;
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return result;
  }

  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(a1 + 8);
  v7 = *(a1 + 9);
  v9 = *(a2 + 1);
  v8 = *(a2 + 2);
  v10 = *(a2 + 3);
  v11 = *(a2 + 8);
  v12 = *(a2 + 9);
  if (*(a1 + 2))
  {
    v21 = *(a1 + 1);
    if (v9)
    {
      v17 = v5;
      v18 = v10;
      v19 = v8;
      v20 = v9;
      v16 = v4;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain();
      v13 = specialized static Locale.== infix(_:_:)(&v21, &v20);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v8 = v19;
      v4 = v16;
      if (v13)
      {
        goto LABEL_8;
      }

      return 0;
    }

LABEL_13:
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 0;
  }

  v17 = *(a1 + 3);
  v18 = *(a2 + 3);
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v8;
  v21 = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14 = specialized static TimeZone.== infix(_:_:)(&v21, &v20);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v21 = v17;
  v20 = v18;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v15 = specialized static Calendar.== infix(_:_:)(&v21, &v20);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  if (v6 == v11 && v7 == v12)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Date.ParseStrategy.CodingKeys and conformance Date.ParseStrategy.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Date.ParseStrategy.CodingKeys and conformance Date.ParseStrategy.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.ParseStrategy.CodingKeys and conformance Date.ParseStrategy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ParseStrategy.CodingKeys and conformance Date.ParseStrategy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ParseStrategy.CodingKeys and conformance Date.ParseStrategy.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.ParseStrategy.CodingKeys and conformance Date.ParseStrategy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ParseStrategy.CodingKeys and conformance Date.ParseStrategy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ParseStrategy.CodingKeys and conformance Date.ParseStrategy.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.ParseStrategy.CodingKeys and conformance Date.ParseStrategy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ParseStrategy.CodingKeys and conformance Date.ParseStrategy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.ParseStrategy.CodingKeys and conformance Date.ParseStrategy.CodingKeys;
  if (!lazy protocol witness table cache variable for type Date.ParseStrategy.CodingKeys and conformance Date.ParseStrategy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ParseStrategy.CodingKeys and conformance Date.ParseStrategy.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Date.ParseStrategy(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date.ParseStrategy and conformance Date.ParseStrategy();
  a1[2] = lazy protocol witness table accessor for type Date.ParseStrategy and conformance Date.ParseStrategy();
  result = lazy protocol witness table accessor for type Date.ParseStrategy and conformance Date.ParseStrategy();
  a1[3] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Date.ParseStrategy(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Date.ParseStrategy(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized Date.ParseStrategy.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65696E654C7369 && a2 == 0xE900000000000074;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018147EAE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74616D726F66 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation8CalendarV9ComponentOG_AJ9component_Si9multitudets5NeverOTg5015_s10Foundation8e2V9f40OAESiIgnrd_A2E9component_Si9multitudets5i106OIegnrzr_TR090_s10Foundation16ICUDateFormatterC14DateFormatInfoV14UpdateScheduleO15updateIntervalsSayAA8b2L54C41O9component_Si9multitudetGvgAL_SitALXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v6 = v25;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + result);
    v12 = *(a1 + 36);
    v14 = *(v26 + 16);
    v13 = *(v26 + 24);
    if (v14 >= v13 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v6 = v25;
      v12 = v23;
      result = v24;
    }

    *(v26 + 16) = v14 + 1;
    v15 = v26 + 16 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = 1;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v9);
    if ((v16 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v9 << 6;
      v19 = v9 + 1;
      v20 = (a1 + 64 + 8 * v9);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          outlined consume of Set<Date.ComponentsFormatStyle.Field>.Index._Variant(result, v12, 0);
          v6 = v25;
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      outlined consume of Set<Date.ComponentsFormatStyle.Field>.Index._Variant(result, v12, 0);
      v6 = v25;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS9UTF16ViewV_So16UDateFormatFieldVs5NeverOTg5097_sSS10FoundationE14updateSchedule33_897C603A04DF76F04B69FE4D70F5F325LLAA16ICUDateFormatterC14Dateg22InfoV06UpdateC0OvgSo05f2P5H15Vs6UInt16VXEfU_Tf1cn_n(uint64_t a1, unint64_t a2)
{
  v3 = MEMORY[0x1865CB200]();
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v5 = v3;
  v26 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if (v5 < 0)
  {
    goto LABEL_55;
  }

  v7 = 0;
  v4 = v26;
  v8 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v24 = 4 << v8;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v10 = (a2 >> 62) & 1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    LOBYTE(v10) = a1 < 0;
  }

  v21 = v10;
  v11 = 15;
  v22 = v9;
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v13 = v11;
    if ((v11 & 0xC) == v24)
    {
      v13 = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, a1, a2);
    }

    result = v13 >> 16;
    if (v13 >> 16 >= v9)
    {
      goto LABEL_51;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      String.UTF16View._foreignSubscript(position:)();
    }

    else
    {
      if ((v13 & 1) == 0)
      {
        _StringGuts.scalarAlignSlow(_:)(v13, a1, a2);
      }

      result = _StringGuts.fastUTF8Scalar(startingAt:)();
      if ((v13 & 0xC000) == 0x4000)
      {
        if (result < 0x10000)
        {
          goto LABEL_53;
        }
      }

      else if (WORD1(result))
      {
        result = ((result + 67043328) >> 10) + 55296;
        if ((result & 0x10000) != 0)
        {
          goto LABEL_54;
        }
      }
    }

    v14 = v5;
    result = udat_patternCharToDateFormatField();
    v26 = v4;
    v16 = *(v4 + 16);
    v15 = *(v4 + 24);
    if (v16 >= v15 >> 1)
    {
      v20 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      result = v20;
      v4 = v26;
    }

    *(v4 + 16) = v16 + 1;
    *(v4 + 4 * v16 + 32) = result;
    if ((v11 & 0xC) == v24)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, a1, a2);
      v11 = result;
    }

    v5 = v14;
    v17 = v11 >> 16;
    v9 = v22;
    if (v11 >> 16 >= v22)
    {
      goto LABEL_52;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = MEMORY[0x1865CB1C0](v11, a1, a2);
      v11 = result;
      goto LABEL_12;
    }

    if (v21)
    {
      v11 = (v11 & 0xFFFFFFFFFFFF0000) + 65549;
      goto LABEL_12;
    }

    if ((v11 & 0xC001) != 0)
    {
      if ((a2 & 0x2000000000000000) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      result = _StringGuts.scalarAlignSlow(_:)(v11, a1, a2);
      v11 = result;
      v17 = result >> 16;
      if ((a2 & 0x2000000000000000) == 0)
      {
LABEL_37:
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v18 = *(result + v17);
        if ((v18 & 0x80) == 0)
        {
LABEL_47:
          v19 = 1;
          goto LABEL_48;
        }

        goto LABEL_40;
      }
    }

    v25[0] = a1;
    v25[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v18 = *(v25 + v17);
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_47;
    }

LABEL_40:
    LODWORD(v19) = __clz(v18 ^ 0xFF) - 24;
    if (v19 != 4)
    {
      v19 = v19;
      goto LABEL_48;
    }

    if ((v11 & 0xC000) != 0)
    {
      v19 = 4;
LABEL_48:
      v11 = (v11 + (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      goto LABEL_12;
    }

    v11 = v11 & 0xFFFFFFFFFFFF0000 | 0x4004;
LABEL_12:
    ++v7;
    if (v12 == v5)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

char *ICUDateFormatter.symbols(for:)(int a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = udat_countSymbols();
  if (v2 < 0)
  {
    goto LABEL_37;
  }

  v3 = v2;
  if (v2)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    v30 = a1;
    while (1)
    {

      v32 = 0;
      Symbols = udat_getSymbols();
      if (v32 == 15)
      {
        break;
      }

      if (v32 <= 0 && Symbols > 0)
      {
        if (Symbols < 0x156 || (v23 = Symbols, Symbols = swift_stdlib_isStackAllocationSafe(), (Symbols & 1) != 0))
        {
          MEMORY[0x1EEE9AC00](Symbols);
          closure #1 in String.init(_utf16:)(&v30 - ((v16 + 15) & 0x7FFFFFFF0), v38, v17, &v33);
          v11 = v33;
          v14 = v34;
        }

        else
        {
          v24 = v23;
          v25 = swift_slowAlloc();
          closure #1 in String.init(_utf16:)(v25, v38, v24, &v35);
          MEMORY[0x1865D2690](v25, -1, -1);
          v11 = v35;
          v14 = v36;
        }

LABEL_21:

        if (v14)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
          }

          v19 = *(v5 + 2);
          v18 = *(v5 + 3);
          if (v19 >= v18 >> 1)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v5);
          }

          *(v5 + 2) = v19 + 1;
          v20 = &v5[16 * v19];
          *(v20 + 4) = v11;
          *(v20 + 5) = v14;
        }

        goto LABEL_5;
      }

LABEL_5:
      if (v3 == ++v4)
      {
        return v5;
      }
    }

    v7 = Symbols + 1;
    if (__OFADD__(Symbols, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
    }

    if (v7 < 0)
    {
      goto LABEL_36;
    }

    if (v7 < 513 || (v21 = Symbols, Symbols = swift_stdlib_isStackAllocationSafe(), (Symbols & 1) != 0))
    {
      MEMORY[0x1EEE9AC00](Symbols);
      v9 = (&v30 - v8);
      v31 = 0;
      isStackAllocationSafe = udat_getSymbols();
      v11 = 0;
      if (v31 > 0 || isStackAllocationSafe <= 0)
      {
        v14 = 0;
      }

      else if (isStackAllocationSafe < 0x156 || (v26 = isStackAllocationSafe, isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        MEMORY[0x1EEE9AC00](isStackAllocationSafe);
        closure #1 in String.init(_utf16:)(&v30 - ((v12 + 15) & 0x7FFFFFFF0), v9, v13, &v33);
        v11 = v33;
        v14 = v34;
      }

      else
      {
        v27 = v26;
        v28 = swift_slowAlloc();
        closure #1 in String.init(_utf16:)(v28, v9, v27, &v35);
        MEMORY[0x1865D2690](v28, -1, -1);
        v11 = v35;
        v14 = v36;
      }
    }

    else
    {
      v22 = swift_slowAlloc();

      specialized closure #1 in closure #1 in _withResizingUCharBuffer(initialSize:_:)(v22, v21, v37);
      MEMORY[0x1865D2690](v22, -1, -1);
      v11 = v37[0];
      v14 = v37[1];
    }

    goto LABEL_21;
  }

  return MEMORY[0x1E69E7CC0];
}

Swift::tuple_String_OpaquePointer_optional __swiftcall ICUDateFormatter.attributedFormat(_:)(Foundation::Date a1)
{
  type metadata accessor for ICU.FieldPositer();
  inited = swift_initStackObject();
  v2 = ufieldpositer_open();
  if (!v2)
  {
    __break(1u);
  }

  *(inited + 16) = v2;

  v6 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
  v8 = v7;

  if (v8)
  {
    v15 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
    v5 = v15;
    for (i = ufieldpositer_next(); (i & 0x80000000) == 0; i = ufieldpositer_next())
    {
      v11 = v15[2];
      v10 = v15[3];
      if (v11 >= v10 >> 1)
      {
        v14 = i;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        i = v14;
      }

      v15[2] = v11 + 1;
      v12 = &v15[3 * v11];
      *(v12 + 8) = i;
      v12[5] = 0;
      v12[6] = 0;
    }

    v3 = v6;
    v4 = v8;
  }

  else
  {

    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  v13 = v5;
  result.value._1._rawValue = v13;
  result.value._0._object = v4;
  result.value._0._countAndFlagsBits = v3;
  return result;
}

void ICUDateFormatter.DateFormatInfo.UpdateSchedule.updateIntervals.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    v2 = Calendar.ComponentSet.set.getter();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation8CalendarV9ComponentOG_AJ9component_Si9multitudets5NeverOTg5015_s10Foundation8e2V9f40OAESiIgnrd_A2E9component_Si9multitudets5i106OIegnrzr_TR090_s10Foundation16ICUDateFormatterC14DateFormatInfoV14UpdateScheduleO15updateIntervalsSayAA8b2L54C41O9component_Si9multitudetGvgAL_SitALXEfU_Tf3nnnpf_nTf1cn_n(v2);

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentO9component_Si9multitudetGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_181218E20;
  *(v3 + 32) = 13;
  v4 = __exp10(v1);
  *&v5 = *&v4 + 1;
  if (v4 == INFINITY)
  {
    v5 = v4;
  }

  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v5 < 9.22337204e18)
  {
    *(v3 + 40) = v5;
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t ICUDateFormatter.__deallocating_deinit()
{
  udat_close();

  return swift_deallocClassInstance();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ICUDateFormatter.DateFormatInfo(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ICUDateFormatter.DateFormatInfo(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t ICUDateFormatter.DateFormatInfo.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[3];
  v24 = a1[6];
  v23 = a1[7];
  if (a1[4])
  {
    v5 = a1[5];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 64);
    swift_unknownObjectRetain();
    v22 = v7(ObjectType, v5);
    v9 = v8;
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0;
    v9 = 0;
  }

  v10 = swift_getObjectType();
  v11 = (*(v3 + 32))(v10, v3);
  v20 = v12;
  v21 = v11;
  v13 = swift_getObjectType();
  (*(v4 + 24))(&v25, v13, v4);
  v14 = v25;
  v15 = (*(v4 + 56))(v13, v4);
  v16 = (*(v4 + 72))(v13, v4);
  if (v9)
  {
    v17 = v22;
  }

  else
  {
    v17 = 0;
  }

  if (v9)
  {
    v18 = v9;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  *a2 = v17;
  *(a2 + 8) = v18;
  *(a2 + 16) = v21;
  *(a2 + 24) = v20;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  *(a2 + 56) = 0;
  *(a2 + 64) = v24;
  *(a2 + 72) = v23;
  *(a2 + 80) = 1;
  *(a2 + 88) = 0xC1CD27E440000000;
  return result;
}

uint64_t ICUDateFormatter.DateFormatInfo.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 32))(v24, ObjectType, v3);
  if (v24[0])
  {
    v6 = v24[1];
  }

  else
  {
    if (one-time initialization token for cache != -1)
    {
      v5 = swift_once();
    }

    v7 = static LocaleCache.cache;
    MEMORY[0x1EEE9AC00](v5);
    os_unfair_lock_lock((v7 + 48));
    partial apply for closure #1 in LocaleCache.fixed(_:)((v7 + 16), &v22);
    os_unfair_lock_unlock((v7 + 48));
    v6 = v23;
  }

  v8 = swift_getObjectType();
  v20 = (*(v6 + 64))(v8, v6);
  v10 = v9;
  swift_unknownObjectRelease();
  (*(v3 + 48))(&v22, ObjectType, v3);
  v11 = v23;
  v12 = swift_getObjectType();
  v13 = (*(v11 + 32))(v12, v11);
  v15 = v14;
  swift_unknownObjectRelease();
  (*(v3 + 24))(&v21, ObjectType, v3);
  v16 = v21;
  v17 = (*(v3 + 56))(ObjectType, v3);
  v18 = (*(v3 + 72))(ObjectType, v3);
  result = swift_unknownObjectRelease();
  *a2 = v20;
  *(a2 + 8) = v10;
  *(a2 + 16) = v13;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  *(a2 + 80) = 1;
  *(a2 + 88) = 0xC1CD27E440000000;
  return result;
}

uint64_t ICUDateFormatter.DateFormatInfo.UpdateSchedule.reduce(with:)(uint64_t result)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = *v1;
  if (*(v1 + 8))
  {
    if (*(result + 8))
    {
      v5 = v4 | v2;
      if ((v5 & 0x2000) != 0)
      {
        v2 = 0;
        v3 = 0;
      }

      else if ((v5 & 0x40) != 0)
      {
        v3 = 1;
        v2 = 64;
      }

      else
      {
        v6 = v5 & 1;
        if ((v5 & 0x20) != 0)
        {
          v2 = v6 | 0x20;
          v3 = 1;
        }

        else
        {
          v7 = v5 & 0x1E07;
          if ((v5 & 8) != 0)
          {
            v7 = v6 | 8;
          }

          if ((v5 & 0x80) != 0)
          {
            v7 = v6 | 0x80;
          }

          v8 = v6 | 0x10;
          if ((v5 & 0x10) != 0)
          {
            v2 = v8;
          }

          else
          {
            v2 = v7;
          }

          v3 = 1;
        }
      }
    }
  }

  else
  {
    if (*(result + 8))
    {
      return result;
    }

    v3 = 0;
    if (v2 >= v4)
    {
      v2 = *v1;
    }
  }

  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

char *closure #1 in static ICUDateFormatter.DateFormatInfo.cachedUpdateSchedule(for:)@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(a2 + 16);
  v113 = *a2;
  v114 = v8;
  v9 = *(a2 + 48);
  v115 = *(a2 + 32);
  v116 = v9;
  outlined init with copy of Date.VerbatimFormatStyle(a2, v119);
  ICUDateFormatter.DateFormatInfo.init(_:)(&v113, v119);
  v108 = a1;
  v10 = *a1;
  if (v10[2])
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v119);
    if (v12)
    {
      v15 = v11;
      result = outlined destroy of ICUDateFormatter.DateFormatInfo(v119);
      v14 = v10[7] + 16 * v15;
      v4 = *v14;
      LOBYTE(v15) = *(v14 + 8);
LABEL_105:
      *a3 = v4;
      *(a3 + 8) = v15 & 1;
      return result;
    }
  }

  v106 = a3;
  v16 = *(a2 + 48);
  v17 = *(a2 + 56);
  v18 = udat_toCalendarDateField();
  v109 = v18;
  *&v113 = 39;
  *(&v113 + 1) = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v18);
  v103[2] = &v113;

  isUniquelyReferenced_nonNull_native = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 0, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v103, v16, v17, v19);
  v21 = isUniquelyReferenced_nonNull_native;
  v107 = v3;
  v22 = 0;
  v23 = *(isUniquelyReferenced_nonNull_native + 16);
  v15 = isUniquelyReferenced_nonNull_native + 32;
  v24 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v25 = v22;
  v26 = v22 + (v22 & 1);
  v22 = v26 + 1;
  while (1)
  {
    if (v23 == v25)
    {

      v35 = *(v24 + 16);
      if (v35)
      {
        *&v113 = MEMORY[0x1E69E7CC0];
        v105 = v24;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
        v36 = v113;
        v37 = (v105 + 64);
        do
        {
          v38 = *(v37 - 3);
          v39 = *(v37 - 2);
          v40 = *v37;
          v110 = *(v37 - 1);
          *&v111 = v38;
          *&v113 = v36;
          v22 = *(v36 + 16);
          v41 = *(v36 + 24);

          if (v22 >= v41 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v22 + 1, 1);
            v36 = v113;
          }

          *(v36 + 16) = v22 + 1;
          v42 = (v36 + 32 * v22);
          v43 = v110;
          v42[4] = v111;
          v42[5] = v39;
          v42[6] = v43;
          v42[7] = v40;
          v37 += 5;
          --v35;
        }

        while (v35);
      }

      else
      {

        v36 = MEMORY[0x1E69E7CC0];
      }

      *&v113 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySsGMd);
      lazy protocol witness table accessor for type [Substring] and conformance [A]();
      lazy protocol witness table accessor for type Substring and conformance Substring();
      v44 = Sequence<>.joined(separator:)();
      v46 = v45;

      v47 = v107;
      updated = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS9UTF16ViewV_So16UDateFormatFieldVs5NeverOTg5097_sSS10FoundationE14updateSchedule33_897C603A04DF76F04B69FE4D70F5F325LLAA16ICUDateFormatterC14Dateg22InfoV06UpdateC0OvgSo05f2P5H15Vs6UInt16VXEfU_Tf1cn_n(v44, v46);
      v107 = v47;

      v49 = *(updated + 16);
      v110 = updated;
      if (v49)
      {
        v22 = updated + 32;
        v50 = MEMORY[0x1E69E7CC0];
        v111 = xmmword_181218E20;
        while (1)
        {
          v51 = *v22;
          v22 += 4;
          v4 = v51;
          v52 = v50[2];
          if (v52 && (v53 = v50[v52 + 3], (v54 = *(v53 + 2)) != 0) && *(v53 + 8) == v4)
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54 + 1, 1, v53);
            }

            v56 = *(v53 + 2);
            v55 = *(v53 + 3);
            if (v56 >= v55 >> 1)
            {
              v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v53);
            }

            *(v53 + 2) = v56 + 1;
            *&v53[4 * v56 + 32] = v4;
            v15 = v50[2];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew()(v50);
              v50 = isUniquelyReferenced_nonNull_native;
            }

            v21 = &_ss23_ContiguousArrayStorageCySo16UDateFormatFieldVGMd;
            if (!v15)
            {
              goto LABEL_84;
            }

            if (v15 > v50[2])
            {
              goto LABEL_85;
            }

            v50[v15 + 3] = v53;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16UDateFormatFieldVGMd);
            v57 = swift_allocObject();
            *(v57 + 16) = v111;
            *(v57 + 32) = v4;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50[2] + 1, 1, v50);
            }

            v59 = v50[2];
            v58 = v50[3];
            if (v59 >= v58 >> 1)
            {
              v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v50);
            }

            v50[2] = v59 + 1;
            v50[v59 + 4] = v57;
          }

          if (!--v49)
          {
            goto LABEL_42;
          }
        }
      }

      v50 = MEMORY[0x1E69E7CC0];
LABEL_42:

      v60 = v50[2];
      if (v60)
      {
        v4 = 0;
        v22 = 0;
        v21 = v50 + 4;
        LOBYTE(v15) = 1;
        v61 = v109;
        while (1)
        {
          if (v22 >= v50[2])
          {
            goto LABEL_83;
          }

          v65 = v21[v22];
          v66 = *(v65 + 16);
          if (v66)
          {
            if (*(v65 + 32) == 8)
            {
              v62 = 9 - v66;
              if (v62 >= v4)
              {
                v63 = v4;
              }

              else
              {
                v63 = v62;
              }

              v64 = (v15 & 1) == 0;
              LOBYTE(v15) = 0;
              if (v64)
              {
                v4 = v63;
              }

              else
              {
                v4 = v62;
              }

              goto LABEL_50;
            }

            v67 = udat_toCalendarDateField();
            if (v67 == v61 || (Calendar.Component.init(_:)(v67, &v113), v113 == 19))
            {
            }

            else
            {
              v68 = qword_181224760[v113];

              if (v15)
              {
                v69 = v68 | v4;
                if (((v68 | v4) & 0x2000) == 0)
                {
                  v61 = v109;
                  if ((v69 & 0x40) != 0)
                  {
                    LOBYTE(v15) = 1;
                    v4 = 64;
                  }

                  else
                  {
                    v70 = v69 & 1;
                    if ((v69 & 0x20) != 0)
                    {
                      v4 = v70 | 0x20;
                      LOBYTE(v15) = 1;
                    }

                    else if ((v69 & 0x10) != 0)
                    {
                      v4 = v70 | 0x10;
                      LOBYTE(v15) = 1;
                    }

                    else if ((v69 & 0x80) != 0)
                    {
                      v4 = v70 | 0x80;
                      LOBYTE(v15) = 1;
                    }

                    else
                    {
                      if ((v69 & 8) != 0)
                      {
                        v4 = v70 | 8;
                      }

                      else
                      {
                        v4 = v69 & 0x1E07;
                      }

                      LOBYTE(v15) = 1;
                    }
                  }

                  goto LABEL_50;
                }

                v4 = 0;
              }

              LOBYTE(v15) = 0;
              v61 = v109;
            }
          }

LABEL_50:
          if (v60 == ++v22)
          {
            goto LABEL_74;
          }
        }
      }

      v4 = 0;
      LOBYTE(v15) = 1;
LABEL_74:

      v71 = v108;
      v72 = swift_isUniquelyReferenced_nonNull_native();
      v120 = *v71;
      v21 = v120;
      isUniquelyReferenced_nonNull_native = specialized __RawDictionaryStorage.find<A>(_:)(v119);
      v74 = v21[2];
      v75 = (v73 & 1) == 0;
      v76 = __OFADD__(v74, v75);
      v77 = v74 + v75;
      if (v76)
      {
        goto LABEL_86;
      }

      LOBYTE(v22) = v73;
      if (v21[3] < v77)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v77, v72);
        v78 = v120;
        isUniquelyReferenced_nonNull_native = specialized __RawDictionaryStorage.find<A>(_:)(v119);
        if ((v22 & 1) == (v79 & 1))
        {
          goto LABEL_80;
        }

        isUniquelyReferenced_nonNull_native = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if ((v72 & 1) == 0)
      {
        goto LABEL_87;
      }

      v78 = v21;
LABEL_80:
      if ((v22 & 1) == 0)
      {
LABEL_103:
        result = specialized _NativeDictionary._insert(at:key:value:)(isUniquelyReferenced_nonNull_native, v119, v4, v15 & 1, v78);
        goto LABEL_104;
      }

LABEL_81:
      v80 = isUniquelyReferenced_nonNull_native;
      result = outlined destroy of ICUDateFormatter.DateFormatInfo(v119);
      v81 = *(v78 + 56) + 16 * v80;
      *v81 = v4;
      *(v81 + 8) = v15 & 1;
LABEL_104:
      *v71 = v78;
      a3 = v106;
      goto LABEL_105;
    }

    if (v25 >= v21[2])
    {
      break;
    }

    if (++v25)
    {
      v27 = (v15 + 32 * v26);
      v29 = *v27;
      v28 = v27[1];
      v30 = v27[3];
      v104 = v27[2];
      v105 = v28;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v113 = v24;
      v110 = v29;
      *&v111 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1);
        v24 = v113;
      }

      v4 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v4 >= v31 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v4 + 1, 1);
        v24 = v113;
      }

      *(v24 + 16) = v4 + 1;
      v32 = (v24 + 40 * v4);
      v33 = v110;
      v15 = v111;
      v32[4] = v26;
      v32[5] = v33;
      v34 = v104;
      v32[6] = v105;
      v32[7] = v34;
      v32[8] = v30;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  v105 = isUniquelyReferenced_nonNull_native;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation16ICUDateFormatterC14DateFormatInfoVAG14UpdateScheduleOGMd);
  v82 = static _DictionaryStorage.copy(original:)();
  v78 = v82;
  if (!v21[2])
  {
LABEL_102:

    isUniquelyReferenced_nonNull_native = v105;
    v71 = v108;
    if ((v22 & 1) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_81;
  }

  result = (v82 + 64);
  v83 = (v21 + 8);
  v84 = ((1 << *(v78 + 32)) + 63) >> 6;
  v104 = v21 + 8;
  if (v78 != v21 || result >= &v83[8 * v84])
  {
    result = memmove(result, v83, 8 * v84);
  }

  v85 = 0;
  *(v78 + 16) = v21[2];
  v86 = 1 << *(v21 + 32);
  v87 = -1;
  if (v86 < 64)
  {
    v87 = ~(-1 << v86);
  }

  v88 = v87 & v21[8];
  v89 = (v86 + 63) >> 6;
  if (v88)
  {
    do
    {
      v90 = __clz(__rbit64(v88));
      *&v111 = (v88 - 1) & v88;
LABEL_100:
      v93 = v90 | (v85 << 6);
      v94 = 96 * v93;
      v95 = (v21[6] + 96 * v93);
      v96 = v95[2];
      v97 = v95[3];
      v98 = v95[5];
      v117 = v95[4];
      v118 = v98;
      v116 = v97;
      v99 = v95[1];
      v113 = *v95;
      v114 = v99;
      v115 = v96;
      v100 = 16 * v93;
      v101 = v21[7] + 16 * v93;
      v110 = *v101;
      v109 = *(v101 + 8);
      memmove((*(v78 + 48) + v94), v95, 0x60uLL);
      v102 = *(v78 + 56) + v100;
      *v102 = v110;
      *(v102 + 8) = v109;
      result = outlined init with copy of ICUDateFormatter.DateFormatInfo(&v113, &v112);
      v88 = v111;
    }

    while (v111);
  }

  v91 = v85;
  while (1)
  {
    v85 = v91 + 1;
    if (__OFADD__(v91, 1))
    {
      break;
    }

    if (v85 >= v89)
    {
      goto LABEL_102;
    }

    v92 = v104[v85];
    ++v91;
    if (v92)
    {
      v90 = __clz(__rbit64(v92));
      *&v111 = (v92 - 1) & v92;
      goto LABEL_100;
    }
  }

  __break(1u);
  return result;
}

char *closure #1 in static ICUDateFormatter.DateFormatInfo.cachedUpdateSchedule(for:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = a2[5];
  v68 = a2[4];
  v69 = v8;
  v70[0] = a2[6];
  *(v70 + 10) = *(a2 + 106);
  v9 = a2[1];
  v64 = *a2;
  v65 = v9;
  v10 = a2[3];
  v66 = a2[2];
  v67 = v10;
  outlined init with copy of Date.FormatStyle(a2, v63);
  ICUDateFormatter.DateFormatInfo.init(_:)(&v64, v63);
  v11 = *a1;
  if (*(*a1 + 16))
  {
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v63);
    if (v13)
    {
      v14 = v12;
      result = outlined destroy of ICUDateFormatter.DateFormatInfo(v63);
      v16 = *(v11 + 56) + 16 * v14;
      v17 = *v16;
      v18 = *(v16 + 8);
LABEL_31:
      *a3 = v17;
      *(a3 + 8) = v18;
      return result;
    }
  }

  v72 = v3;
  v19 = a2[5];
  v68 = a2[4];
  v69 = v19;
  v70[0] = a2[6];
  *(v70 + 10) = *(a2 + 106);
  v20 = a2[1];
  v64 = *a2;
  v65 = v20;
  v21 = a2[3];
  v66 = a2[2];
  v67 = v21;
  Date.FormatStyle.symbols.getter(v71);
  Date.FormatStyle.DateFieldCollection.updateSchedule.getter(&v60);
  v17 = v60;
  v18 = v61;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = *a1;
  v23 = v62;
  v24 = specialized __RawDictionaryStorage.find<A>(_:)(v63);
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
    v4 = v25;
    if (*(v23 + 24) < v29)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, isUniquelyReferenced_nonNull_native);
      v30 = v62;
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v63);
      if ((v4 & 1) == (v31 & 1))
      {
        goto LABEL_10;
      }

      v24 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v30 = v23;
LABEL_10:
      if (v4)
      {
LABEL_11:
        v32 = v24;
        result = outlined destroy of ICUDateFormatter.DateFormatInfo(v63);
        v33 = *(v30 + 56) + 16 * v32;
        *v33 = v17;
        *(v33 + 8) = v18;
LABEL_30:
        *a1 = v30;
        goto LABEL_31;
      }

LABEL_29:
      result = specialized _NativeDictionary._insert(at:key:value:)(v24, v63, v17, v18, v30);
      goto LABEL_30;
    }
  }

  v54 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation16ICUDateFormatterC14DateFormatInfoVAG14UpdateScheduleOGMd);
  v34 = static _DictionaryStorage.copy(original:)();
  v30 = v34;
  if (!*(v23 + 16))
  {
LABEL_28:

    v24 = v54;
    if (v4)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

  result = (v34 + 64);
  v35 = (v23 + 64);
  v36 = ((1 << *(v30 + 32)) + 63) >> 6;
  if (v30 != v23 || result >= &v35[8 * v36])
  {
    result = memmove(result, v35, 8 * v36);
  }

  v37 = 0;
  *(v30 + 16) = *(v23 + 16);
  v38 = 1 << *(v23 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v23 + 64);
  v41 = (v38 + 63) >> 6;
  v55 = v41;
  if (v40)
  {
    do
    {
      v42 = __clz(__rbit64(v40));
      v56 = (v40 - 1) & v40;
LABEL_26:
      v45 = v42 | (v37 << 6);
      v46 = 96 * v45;
      v47 = (*(v23 + 48) + 96 * v45);
      v48 = v47[2];
      v49 = v47[3];
      v50 = v47[5];
      v68 = v47[4];
      v69 = v50;
      v67 = v49;
      v51 = v47[1];
      v64 = *v47;
      v65 = v51;
      v66 = v48;
      v57 = 16 * v45;
      v52 = *(v23 + 56) + 16 * v45;
      v59 = *v52;
      v58 = *(v52 + 8);
      memmove((*(v30 + 48) + v46), v47, 0x60uLL);
      v53 = *(v30 + 56) + v57;
      *v53 = v59;
      *(v53 + 8) = v58;
      result = outlined init with copy of ICUDateFormatter.DateFormatInfo(&v64, &v60);
      v41 = v55;
      v40 = v56;
    }

    while (v56);
  }

  v43 = v37;
  while (1)
  {
    v37 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v37 >= v41)
    {
      goto LABEL_28;
    }

    v44 = *(v23 + 64 + 8 * v37);
    ++v43;
    if (v44)
    {
      v42 = __clz(__rbit64(v44));
      v56 = (v44 - 1) & v44;
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

void Date.FormatStyle.DateFieldCollection.updateSchedule.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  if (v3 == 255)
  {
    if (*(v1 + 39) != 2)
    {
      *a1 = 64;
      *(a1 + 8) = 1;
      return;
    }

    v12 = 0;
    v13 = 1;
    if (*v1 != 3)
    {
      v10 = 1;
      v11 = 1;
      ICUDateFormatter.DateFormatInfo.UpdateSchedule.reduce(with:)(&v10);
    }

    if (*(v1 + 16) != 255)
    {
      v10 = 2;
      v11 = 1;
      ICUDateFormatter.DateFormatInfo.UpdateSchedule.reduce(with:)(&v10);
    }

    if (*(v1 + 17) != 5)
    {
      v10 = 512;
      v11 = 1;
      ICUDateFormatter.DateFormatInfo.UpdateSchedule.reduce(with:)(&v10);
    }

    if (*(v1 + 18) != 5)
    {
      v10 = 4;
      v11 = 1;
      ICUDateFormatter.DateFormatInfo.UpdateSchedule.reduce(with:)(&v10);
    }

    if (*(v1 + 19) > 1u)
    {
      if (*(v1 + 19) != 2)
      {
LABEL_24:
        if ((*(v1 + 33) & 1) == 0)
        {
          v10 = 8;
          v11 = 1;
          ICUDateFormatter.DateFormatInfo.UpdateSchedule.reduce(with:)(&v10);
        }

        if (*(v1 + 34) != 3)
        {
          v10 = 0x40000;
          v11 = 1;
          ICUDateFormatter.DateFormatInfo.UpdateSchedule.reduce(with:)(&v10);
        }

        if (*(v1 + 35) != 6)
        {
          v10 = 128;
          v11 = 1;
          ICUDateFormatter.DateFormatInfo.UpdateSchedule.reduce(with:)(&v10);
        }

        if (*(v1 + 36) != 9 || *(v1 + 37) != 14)
        {
          v10 = 16;
          v11 = 1;
          ICUDateFormatter.DateFormatInfo.UpdateSchedule.reduce(with:)(&v10);
        }

        if (*(v1 + 38) != 2)
        {
          v10 = 32;
          v11 = 1;
          ICUDateFormatter.DateFormatInfo.UpdateSchedule.reduce(with:)(&v10);
        }

        if (*(v1 + 49) != 12)
        {
          v10 = 0x8000;
          v11 = 1;
          ICUDateFormatter.DateFormatInfo.UpdateSchedule.reduce(with:)(&v10);
        }

        v9 = v13;
        *a1 = v12;
        *(a1 + 8) = v9;
        return;
      }

      v7 = 1024;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        v7 = 1024;
      }

      else
      {
        v7 = 2048;
      }
    }

    v10 = v7;
    v11 = 1;
    ICUDateFormatter.DateFormatInfo.UpdateSchedule.reduce(with:)(&v10);
    goto LABEL_24;
  }

  if (v3)
  {
    v4 = 0;
LABEL_16:
    *a1 = v4;
    *(a1 + 8) = 0;
    return;
  }

  v5 = *(v1 + 40);
  v6 = __OFSUB__(9, v5);
  v4 = 9 - v5;
  if (!v6)
  {
    goto LABEL_16;
  }

  __break(1u);
}

BOOL specialized static ICUDateFormatter.DateFormatInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v24 = *(a1 + 48);
  v23 = *(a1 + 56);
  v21 = *(a1 + 72);
  v22 = *(a1 + 64);
  v6 = *(a1 + 88);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  v12 = *(a2 + 56);
  v19 = *(a2 + 72);
  v20 = *(a2 + 64);
  v17 = *(a2 + 80);
  v18 = *(a1 + 80);
  v13 = *(a2 + 88);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    result = 0;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  if (v4 == v9 && v5 == v11 && v24 == v10 && v23 == v12)
  {
    if (v22 == v20 && v21 == v19)
    {
      if (v18 != v17)
      {
        return 0;
      }

      return v6 == v13;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v16 & 1) != 0 && ((v18 ^ v17) & 1) == 0)
    {
      return v6 == v13;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Substring] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Substring] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Substring] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySsGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Substring] and conformance [A]);
  }

  return result;
}

BOOL specialized static ICUDateFormatter.PatternCacheKey.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 5);
  v20[0] = *(a1 + 3);
  v20[1] = v7;
  v20[2] = *(a1 + 7);
  v21 = *(a1 + 36);
  v8 = a1[10];
  v9 = a1[11];
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 16);
  v13 = *(a2 + 3);
  v14 = *(a2 + 5);
  v15 = *(a2 + 7);
  v23 = *(a2 + 36);
  v22[1] = v14;
  v22[2] = v15;
  v22[0] = v13;
  v17 = a2[10];
  v16 = a2[11];
  if (v4 == v10 && v5 == v11)
  {
    if (v6 != v12)
    {
      return 0;
    }

LABEL_7:
    if (specialized static Date.FormatStyle.DateFieldCollection.== infix(_:_:)(v20, v22))
    {
      if (v9)
      {
        return v16 && (v8 == v17 && v9 == v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
      }

      if (!v16)
      {
        return 1;
      }
    }

    return 0;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v18 & 1) != 0 && v6 == v12)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICUDateFormatter.DateFormatInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for ICUDateFormatter.DateFormatInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ICUDateIntervalFormatter.Signature()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = v0[352];
  Hasher.init(_seed:)();
  Locale.Components.hash(into:)(v4);
  MEMORY[0x1865CD060](v1);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ICUDateIntervalFormatter.Signature(uint64_t a1)
{
  memcpy(v5, v1, sizeof(v5));
  v3 = v1[352];
  Locale.Components.hash(into:)(a1);
  MEMORY[0x1865CD060](v3);
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ICUDateIntervalFormatter.Signature()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = v0[352];
  Hasher.init(_seed:)();
  Locale.Components.hash(into:)(v4);
  MEMORY[0x1865CD060](v1);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t ICUDateIntervalFormatter.__deallocating_deinit()
{
  udtitvfmt_close();

  return swift_deallocClassInstance();
}

uint64_t specialized static ICUDateIntervalFormatter.Signature.== infix(_:_:)(unsigned __int8 *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v4 = __src[352];
  v5 = *(__src + 45);
  v6 = *(__src + 46);
  v15 = *(__src + 48);
  v16 = *(__src + 47);
  memcpy(v20, a2, sizeof(v20));
  v7 = *(a2 + 352);
  v8 = *(a2 + 360);
  v9 = *(a2 + 368);
  v10 = *(a2 + 376);
  v11 = *(a2 + 384);
  memcpy(v18, __src, sizeof(v18));
  memcpy(__srca, a2, sizeof(__srca));
  outlined init with copy of Locale.Components(__dst, v22);
  outlined init with copy of Locale.Components(v20, v22);
  LOBYTE(a2) = specialized static Locale.Components.== infix(_:_:)(v18, __srca);
  memcpy(v21, __srca, sizeof(v21));
  outlined destroy of Locale.Components(v21);
  memcpy(v22, v18, 0x160uLL);
  outlined destroy of Locale.Components(v22);
  v12 = 0;
  if ((a2 & 1) != 0 && v4 == v7)
  {
    if (v5 == v8 && v6 == v9 || (v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), v12 = 0, (v13 & 1) != 0))
    {
      if (v16 == v10 && v15 == v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }
  }

  return v12 & 1;
}

uint64_t specialized static ICUDateIntervalFormatter.formatter(for:)(uint64_t *a1)
{
  v127 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4);
  v123 = *(a1 + 3);
  v2 = v112;
  v4 = *a1;
  v3 = a1[1];
  v85 = a1[3];
  v80 = a1[5];
  v124 = v1;
  v125 = *(a1 + 5);
  v126 = *(a1 + 48);
  *v113 = v4;
  *&v113[8] = v3;
  swift_unknownObjectRetain_n();
  v5 = Date.FormatStyle.DateFieldCollection.formatterTemplate(overridingDayPeriodWithLocale:)(v113);
  v7 = v6;
  swift_unknownObjectRelease();
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    v114 = 3;
    v115 = 0;
    v116 = 50332931;
    v117 = 0;
    v118 = 1;
    v119 = 591363;
    v120 = 513;
    v121 = 0;
    v122 = 3327;
    *v113 = v4;
    *&v113[8] = v3;
    v5 = Date.FormatStyle.DateFieldCollection.formatterTemplate(overridingDayPeriodWithLocale:)(v113);
    v7 = v9;
  }

  swift_unknownObjectRelease();
  *v112 = v4;
  *&v112[8] = v3;
  swift_unknownObjectRetain();
  Locale.Components.init(locale:)(v112, v113);
  memcpy(v111, v113, sizeof(v111));
  ObjectType = swift_getObjectType();
  v11 = *(v80 + 24);
  outlined init with copy of Locale.Components(v111, v113);
  v11(v113, ObjectType, v80);
  v12 = v113[0];
  v13 = swift_getObjectType();
  v14 = (*(v85 + 32))(v13);
  v16 = v15;
  memcpy(v112, v111, 0x160uLL);
  v112[352] = v12;
  *&v112[360] = v14;
  *&v112[368] = v16;
  *&v112[376] = v5;
  *&v112[384] = v7;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v18 = static ICUDateIntervalFormatter.cache;
  v17 = qword_1EA8220C8;
  v19 = memcpy(v110, v112, sizeof(v110));
  MEMORY[0x1EEE9AC00](v19);
  os_unfair_lock_lock((v17 + 24));
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v17 + 16, v113);
  os_unfair_lock_unlock((v17 + 24));
  v20 = *v113;
  if (*v113 == 1)
  {
    v83 = v18;
    v21 = &v88;
    type metadata accessor for ICUDateIntervalFormatter();
    v86 = swift_allocObject();
    v106 = *&v112[32];
    v107 = *&v112[48];
    v108 = *&v112[64];
    v109 = *&v112[80];
    v104 = *v112;
    v105 = *&v112[16];
    v90 = *&v112[129];
    v91 = *&v112[145];
    v88 = *&v112[97];
    v89 = *&v112[113];
    v94 = *&v112[193];
    v95 = *&v112[209];
    v92 = *&v112[161];
    v93 = *&v112[177];
    v98 = *&v112[257];
    v99 = *&v112[273];
    v96 = *&v112[225];
    v97 = *&v112[241];
    *(v102 + 15) = *&v112[336];
    v102[0] = *&v112[321];
    v100 = *&v112[289];
    v101 = *&v112[305];
    v103[2] = *&v112[32];
    v103[3] = *&v112[48];
    v103[4] = *&v112[64];
    v103[5] = *&v112[80];
    v103[0] = *v112;
    v103[1] = *&v112[16];
    v81 = v112[352];
    LOBYTE(v103[6]) = v112[352];
    *(&v103[16] + 1) = *&v112[257];
    *(&v103[17] + 1) = *&v112[273];
    *(&v103[19] + 1) = *&v112[305];
    *(&v103[20] + 1) = *&v112[321];
    *(&v103[18] + 1) = *&v112[289];
    *(&v103[9] + 1) = *&v112[145];
    *(&v103[8] + 1) = *&v112[129];
    *(&v103[7] + 1) = *&v112[113];
    *(&v103[6] + 1) = *&v112[97];
    *(&v103[13] + 1) = *&v112[209];
    *(&v103[12] + 1) = *&v112[193];
    *(&v103[11] + 1) = *&v112[177];
    *(&v103[10] + 1) = *&v112[161];
    *(&v103[15] + 1) = *&v112[241];
    *(&v103[14] + 1) = *&v112[225];
    v103[21] = *&v112[336];
    outlined init with copy of ICUDateIntervalFormatter.Signature(v112, v113);
    outlined init with copy of Locale.Components(v112, v113);
    v22 = Locale.Components.icuIdentifier.getter();
    v24 = v23;
    v26 = *&v112[360];
    v25 = *&v112[368];

    v27 = MEMORY[0x1865CB200](v26, v25);
    if (v27)
    {
      v28 = v27;
      v29 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v27, 0);

      v30 = specialized Sequence._copySequenceContents(initializing:)(v113, (v29 + 4), v28, v26, v25);

      if (v30 != v28)
      {
        goto LABEL_42;
      }
    }

    else
    {

      v29 = MEMORY[0x1E69E7CC0];
    }

    v32 = *&v112[376];
    v31 = *&v112[384];

    v33 = MEMORY[0x1865CB200](v32, v31);
    if (v33)
    {
      v21 = v24;
      v34 = v17;
      v17 = v22;
      v35 = v33;
      v36 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v33, 0);

      v37 = specialized Sequence._copySequenceContents(initializing:)(v113, (v36 + 4), v35, v32, v31);

      if (v37 != v35)
      {
        goto LABEL_43;
      }

      outlined destroy of ICUDateIntervalFormatter.Signature(v112);

      v17 = v34;
      v21 = &v88;
    }

    else
    {
      outlined destroy of ICUDateIntervalFormatter.Signature(v112);

      v36 = MEMORY[0x1E69E7CC0];
    }

    LODWORD(v103[0]) = 0;
    if (v36[2] >> 31)
    {
      __break(1u);
    }

    else if (!(v29[2] >> 31))
    {
      String.utf8CString.getter();

      v2 = udtitvfmt_open();

      LODWORD(v29) = v103[0];
      if (SLODWORD(v103[0]) < 1)
      {
        v20 = v86;
        if (v2)
        {
          *(v86 + 16) = v2;
          udtitvfmt_setAttribute();
          specialized UErrorCode.checkSuccessAndLogError(_:)(v103[0]);
          *&v113[32] = v106;
          *&v113[48] = v107;
          *&v113[64] = v108;
          *&v113[80] = v109;
          v2 = v103;
          *v113 = v104;
          *&v113[16] = v105;
          v113[96] = v81;
          *&v113[257] = v98;
          *&v113[273] = v99;
          *&v113[305] = v101;
          *&v113[321] = v102[0];
          *&v113[289] = v100;
          *&v113[145] = v91;
          *&v113[129] = v90;
          *&v113[113] = v89;
          *&v113[97] = v88;
          *&v113[209] = v95;
          *&v113[193] = v94;
          *&v113[177] = v93;
          *&v113[161] = v92;
          *&v113[241] = v97;
          *&v113[225] = v96;
          *&v113[336] = *(v102 + 15);
          outlined destroy of Locale.Components(v113);
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      if (one-time initialization token for logger != -1)
      {
        goto LABEL_44;
      }

      while (1)
      {
        v38 = type metadata accessor for Logger();
        __swift_project_value_buffer(v38, static ICUError.logger);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *v113 = v42;
          *v41 = 136315394;
          *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000018147EBA0, v113);
          *(v41 + 12) = 2080;
          v43 = ICUError.debugDescription.getter(v29);
          v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v113);

          *(v41 + 14) = v45;
          _os_log_impl(&dword_18075C000, v39, v40, "%s. Error: %s", v41, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1865D2690](v42, -1, -1);
          MEMORY[0x1865D2690](v41, -1, -1);
        }

        if (v2)
        {
          udtitvfmt_close();
        }

LABEL_27:
        *&v113[32] = v106;
        *&v113[48] = v107;
        *&v113[64] = v108;
        *&v113[80] = v109;
        v2 = v103;
        *v113 = v104;
        *&v113[16] = v105;
        v113[96] = v81;
        v46 = v21[8];
        v47 = v21[9];
        v48 = v21[11];
        *&v113[257] = v21[10];
        *&v113[273] = v48;
        v49 = *(v21 + 239);
        v50 = v21[12];
        v51 = v21[14];
        *&v113[305] = v21[13];
        *&v113[321] = v51;
        *&v113[289] = v50;
        *&v113[145] = v91;
        *&v113[129] = v90;
        *&v113[113] = v89;
        *&v113[97] = v88;
        *&v113[209] = v95;
        *&v113[193] = v94;
        *&v113[177] = v93;
        *&v113[161] = v92;
        *&v113[241] = v47;
        *&v113[225] = v46;
        *&v113[336] = v49;
        outlined destroy of Locale.Components(v113);
        swift_deallocPartialClassInstance();
        v20 = 0;
LABEL_28:
        os_unfair_lock_lock((v17 + 24));
        v52 = *(v17 + 16);
        memcpy(v113, v110, sizeof(v113));
        if (v83 >= *(v52 + 16))
        {
        }

        else
        {
          *(v17 + 16) = MEMORY[0x1E69E7CC8];
        }

        outlined init with copy of ICUDateIntervalFormatter.Signature(v113, v103);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v104 = *(v17 + 16);
        v29 = v104;
        *(v17 + 16) = 0x8000000000000000;
        v54 = specialized __RawDictionaryStorage.find<A>(_:)(v113);
        v56 = v29[2];
        v57 = (v55 & 1) == 0;
        v58 = __OFADD__(v56, v57);
        v59 = v56 + v57;
        if (!v58)
        {
          break;
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        swift_once();
      }

      v60 = v55;
      if (v29[3] < v59)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v59, isUniquelyReferenced_nonNull_native);
        v61 = v104;
        v54 = specialized __RawDictionaryStorage.find<A>(_:)(v113);
        if ((v60 & 1) == (v62 & 1))
        {
          goto LABEL_37;
        }

        v54 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v77 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICUDateIntervalFormatterC9SignatureVAESgGMd);
        v63 = static _DictionaryStorage.copy(original:)();
        v61 = v63;
        if (v29[2])
        {
          v64 = (v63 + 64);
          v78 = (v29 + 8);
          v65 = ((1 << *(v61 + 32)) + 63) >> 6;
          if (v61 != v29 || v64 >= &v78[8 * v65])
          {
            memmove(v64, v78, 8 * v65);
          }

          v66 = 0;
          v61[2] = v29[2];
          v67 = 1 << *(v29 + 32);
          v68 = -1;
          if (v67 < 64)
          {
            v68 = ~(-1 << v67);
          }

          v69 = v68 & v29[8];
          v70 = (v67 + 63) >> 6;
          v87 = v20;
          v79 = v70;
          if (v69)
          {
            do
            {
              v71 = __clz(__rbit64(v69));
              v82 = (v69 - 1) & v69;
LABEL_58:
              v74 = v71 | (v66 << 6);
              v75 = v29[6];
              memcpy(v103, (v75 + 392 * v74), 0x188uLL);
              v84 = *(v29[7] + 8 * v74);
              memmove((v61[6] + 392 * v74), (v75 + 392 * v74), 0x188uLL);
              *(v61[7] + 8 * v74) = v84;
              outlined init with copy of ICUDateIntervalFormatter.Signature(v103, &v88);

              v20 = v87;
              v70 = v79;
              v69 = v82;
            }

            while (v82);
          }

          v72 = v66;
          while (1)
          {
            v66 = v72 + 1;
            if (__OFADD__(v72, 1))
            {
              __break(1u);
            }

            if (v66 >= v70)
            {
              break;
            }

            v73 = *&v78[8 * v66];
            ++v72;
            if (v73)
            {
              v71 = __clz(__rbit64(v73));
              v82 = (v73 - 1) & v73;
              goto LABEL_58;
            }
          }
        }

        v54 = v77;
        if (v60)
        {
          goto LABEL_38;
        }

        goto LABEL_61;
      }

      v61 = v29;
LABEL_37:
      if (v60)
      {
LABEL_38:
        *(v61[7] + 8 * v54) = v20;

        outlined destroy of ICUDateIntervalFormatter.Signature(v113);
LABEL_62:
        *(v17 + 16) = v61;

        os_unfair_lock_unlock((v17 + 24));

        outlined destroy of Locale.Components(v111);
        outlined consume of ICUNumberFormatter??(1);
        goto LABEL_63;
      }

LABEL_61:
      specialized _NativeDictionary._insert(at:key:value:)(v54, v113, v20, v61);
      goto LABEL_62;
    }

    __break(1u);
    goto LABEL_41;
  }

  outlined destroy of Locale.Components(v111);
LABEL_63:
  outlined destroy of ICUDateIntervalFormatter.Signature(v112);
  return v20;
}

uint64_t getEnumTagSinglePayload for ICUDateIntervalFormatter.Signature(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 392))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 368);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ICUDateIntervalFormatter.Signature(uint64_t result, int a2, int a3)
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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
      *(result + 368) = (a2 - 1);
      return result;
    }

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ICUDateIntervalFormatter.Signature and conformance ICUDateIntervalFormatter.Signature()
{
  result = lazy protocol witness table cache variable for type ICUDateIntervalFormatter.Signature and conformance ICUDateIntervalFormatter.Signature;
  if (!lazy protocol witness table cache variable for type ICUDateIntervalFormatter.Signature and conformance ICUDateIntervalFormatter.Signature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICUDateIntervalFormatter.Signature and conformance ICUDateIntervalFormatter.Signature);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ICURelativeDateFormatter.Signature()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 20);
  v4 = *(v0 + 24);
  v3 = *(v0 + 28);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ICURelativeDateFormatter.Signature()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 20);
  v4 = *(v0 + 24);
  v3 = *(v0 + 28);
  String.hash(into:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ICURelativeDateFormatter.Signature()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 20);
  v4 = *(v0 + 24);
  v3 = *(v0 + 28);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ICURelativeDateFormatter.Signature(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v5 = *(a1 + 24);
  v4 = *(a1 + 28);
  v6 = *(a2 + 16);
  v7 = *(a2 + 20);
  v9 = *(a2 + 24);
  v8 = *(a2 + 28);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (v5 == v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    if (v10 != 1)
    {
      return 0;
    }

    return v4 == v8;
  }

  result = 0;
  if ((v7 & 1) == 0 && v2 == v6 && v5 == v9)
  {
    return v4 == v8;
  }

  return result;
}

unint64_t one-time initialization function for componentsToURelativeDateUnit()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV9ComponentOSo21URelativeDateTimeUnitVGMd);
  v0 = static _DictionaryStorage.allocate(capacity:)();
  result = specialized __RawDictionaryStorage.find<A>(_:)(1);
  if (v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = v0 + 8;
  *(v0 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
  *(v0[6] + result) = 1;
  *(v0[7] + 4 * result) = 0;
  v4 = v0[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v0[2] = v6;
  result = specialized __RawDictionaryStorage.find<A>(_:)(2);
  if (v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(v0[6] + result) = 2;
  *(v0[7] + 4 * result) = 2;
  v8 = v0[2];
  v5 = __OFADD__(v8, 1);
  v9 = v8 + 1;
  if (v5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v0[2] = v9;
  result = specialized __RawDictionaryStorage.find<A>(_:)(10);
  if (v10)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(v0[6] + result) = 10;
  *(v0[7] + 4 * result) = 3;
  v11 = v0[2];
  v5 = __OFADD__(v11, 1);
  v12 = v11 + 1;
  if (v5)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v0[2] = v12;
  result = specialized __RawDictionaryStorage.find<A>(_:)(3);
  if (v13)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(v0[6] + result) = 3;
  *(v0[7] + 4 * result) = 4;
  v14 = v0[2];
  v5 = __OFADD__(v14, 1);
  v15 = v14 + 1;
  if (v5)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v0[2] = v15;
  result = specialized __RawDictionaryStorage.find<A>(_:)(4);
  if (v16)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(v0[6] + result) = 4;
  *(v0[7] + 4 * result) = 5;
  v17 = v0[2];
  v5 = __OFADD__(v17, 1);
  v18 = v17 + 1;
  if (v5)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v0[2] = v18;
  result = specialized __RawDictionaryStorage.find<A>(_:)(5);
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(v0[6] + result) = 5;
  *(v0[7] + 4 * result) = 6;
  v20 = v0[2];
  v5 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v5)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v0[2] = v21;
  result = specialized __RawDictionaryStorage.find<A>(_:)(6);
  if (v22)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(v0[6] + result) = 6;
  *(v0[7] + 4 * result) = 7;
  v23 = v0[2];
  v5 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v5)
  {
    v0[2] = v24;
    static ICURelativeDateFormatter.componentsToURelativeDateUnit = v0;
    return result;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t ICURelativeDateFormatter.init(signature:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x100000000) == 0)
  {
    String.utf8CString.getter();
    unum_open();
  }

  String.utf8CString.getter();

  v4 = ureldatefmt_open();

  if (v4)
  {
    *(v3 + 16) = v4;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t ICURelativeDateFormatter.__deallocating_deinit()
{
  ureldatefmt_close();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type ICURelativeDateFormatter.Signature and conformance ICURelativeDateFormatter.Signature()
{
  result = lazy protocol witness table cache variable for type ICURelativeDateFormatter.Signature and conformance ICURelativeDateFormatter.Signature;
  if (!lazy protocol witness table cache variable for type ICURelativeDateFormatter.Signature and conformance ICURelativeDateFormatter.Signature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICURelativeDateFormatter.Signature and conformance ICURelativeDateFormatter.Signature);
  }

  return result;
}

Swift::String __swiftcall BinaryFloatingPoint.formatted()()
{
  v2 = v1;
  v97 = *MEMORY[0x1E69E9840];
  v86 = *(v0 - 8);
  (MEMORY[0x1EEE9AC00])();
  v92 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v4;
  v5 = type metadata accessor for FloatingPointFormatStyle();
  v88 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v78 - v6);
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v9 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating();
  v90 = v5;
  v10 = v7 + *(v5 + 36);
  *v10 = 0;
  v10[8] = 1;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = 0;
  *(v10 + 5) = 0x1FFFFFFFELL;
  *(v10 + 7) = 0;
  *(v10 + 8) = 0;
  *(v10 + 6) = 0;
  *(v10 + 18) = 131584;
  *(v10 + 38) = 512;
  v11 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v12 = v11[9];
  v13 = type metadata accessor for FloatingPointRoundingRule();
  (*(*(v13 - 8) + 56))(&v10[v12], 1, 1, v13);
  v14 = &v10[v11[10]];
  *v14 = 0;
  v14[8] = -1;
  v10[v11[11]] = 3;
  *v7 = inited;
  v7[1] = v9;
  v15 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
  v17 = v16;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v91 = v2;
  v95 = static LocaleCache.cache;
  v96 = qword_1ED4404B0;
  LocaleCache._currentAndCache.getter();
  v19 = v18;
  ObjectType = swift_getObjectType();
  v21 = (*(v19 + 472))(ObjectType, v19);
  v23 = v22;
  v24 = swift_unknownObjectRelease();
  if (one-time initialization token for cache != -1)
  {
    v24 = swift_once();
  }

  v26 = static ICUNumberFormatter.cache;
  v25 = *algn_1EA7B1D98;
  v94[0] = v15;
  v94[1] = v17;
  v93 = v21;
  v94[2] = v21;
  v94[3] = v23;
  MEMORY[0x1EEE9AC00](v24);
  *(&v78 - 2) = v94;
  os_unfair_lock_lock((v25 + 24));
  v27 = 0;
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v25 + 16, &v95);
  os_unfair_lock_unlock((v25 + 24));
  v28 = v95;
  if (v95 == 1)
  {
    v85 = 0;
    type metadata accessor for ICUNumberFormatter();
    v28 = swift_allocObject();
    v28[3] = v15;
    v28[4] = v17;
    swift_bridgeObjectRetain_n();
    v29 = MEMORY[0x1865CB200](v15, v17);
    if (v29)
    {
      v30 = v29;
      v31 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v29, 0);

      v32 = specialized Sequence._copySequenceContents(initializing:)(&v95, (v31 + 4), v30, v15, v17);

      if (v32 != v30)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {

      v31 = MEMORY[0x1E69E7CC0];
    }

    LODWORD(v95) = 0;
    v30 = v31[2];
    if (v30 >> 31)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    String.utf8CString.getter();
    v34 = unumf_openForSkeletonAndLocale();

    if (v34)
    {
      if (v95 < 1)
      {
        v28[2] = v34;
LABEL_16:
        os_unfair_lock_lock((v25 + 24));
        v35 = *(*(v25 + 16) + 16);
        v84 = *(v25 + 16);
        if (v26 < v35)
        {
          *(v25 + 16) = MEMORY[0x1E69E7CC8];
        }

        else
        {
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v95 = *(v25 + 16);
        v30 = v95;
        *(v25 + 16) = 0x8000000000000000;
        v33 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v17, v93, v23);
        v38 = *(v30 + 16);
        v39 = (v37 & 1) == 0;
        v40 = v38 + v39;
        if (!__OFADD__(v38, v39))
        {
          LOBYTE(v26) = v37;
          if (*(v30 + 24) < v40)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v40, isUniquelyReferenced_nonNull_native);
            v41 = v95;
            v42 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v17, v93, v23);
            if ((v26 & 1) != (v43 & 1))
            {
              v74 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              goto LABEL_58;
            }

            v33 = v42;
LABEL_25:
            v27 = v85;
            if (v26)
            {
LABEL_26:
              v44 = v33;

              *(*(v41 + 56) + 8 * v44) = v28;

LABEL_47:
              *(v25 + 16) = v41;

              os_unfair_lock_unlock((v25 + 24));

              outlined consume of ICUNumberFormatter??(1);
              goto LABEL_48;
            }

LABEL_46:
            specialized _NativeDictionary._insert(at:key:value:)(v33, v15, v17, v93, v23, v28, v41);
            goto LABEL_47;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v41 = v30;
            goto LABEL_25;
          }

LABEL_30:
          v78 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
          v45 = static _DictionaryStorage.copy(original:)();
          v41 = v45;
          if (*(v30 + 16))
          {
            v46 = (v45 + 64);
            v47 = 1 << *(v41 + 32);
            v79 = (v30 + 64);
            v48 = (v47 + 63) >> 6;
            if (v41 != v30 || v46 >= &v79[8 * v48])
            {
              memmove(v46, v79, 8 * v48);
            }

            v49 = 0;
            *(v41 + 16) = *(v30 + 16);
            v50 = 1 << *(v30 + 32);
            v51 = -1;
            if (v50 < 64)
            {
              v51 = ~(-1 << v50);
            }

            v52 = v51 & *(v30 + 64);
            v53 = (v50 + 63) >> 6;
            v80 = v53;
            if (v52)
            {
              do
              {
                v54 = __clz(__rbit64(v52));
                v83 = (v52 - 1) & v52;
LABEL_43:
                v57 = v54 | (v49 << 6);
                v58 = *(v30 + 56);
                v59 = (*(v30 + 48) + 32 * v57);
                v60 = *v59;
                v81 = v59[1];
                v61 = v81;
                v62 = v59[2];
                v82 = v59[3];
                v63 = v82;
                v64 = *(v58 + 8 * v57);
                v65 = (*(v41 + 48) + 32 * v57);
                *v65 = v60;
                v65[1] = v61;
                v65[2] = v62;
                v65[3] = v63;
                *(*(v41 + 56) + 8 * v57) = v64;

                v53 = v80;
                v52 = v83;
              }

              while (v83);
            }

            v55 = v49;
            while (1)
            {
              v49 = v55 + 1;
              if (__OFADD__(v55, 1))
              {
                __break(1u);
              }

              if (v49 >= v53)
              {
                break;
              }

              v56 = *&v79[8 * v49];
              ++v55;
              if (v56)
              {
                v54 = __clz(__rbit64(v56));
                v83 = (v56 - 1) & v56;
                goto LABEL_43;
              }
            }
          }

          v27 = v85;
          v33 = v78;
          if (v26)
          {
            goto LABEL_26;
          }

          goto LABEL_46;
        }

        goto LABEL_28;
      }

      unumf_close();
    }

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v28 = 0;
    goto LABEL_16;
  }

LABEL_48:

  if (v28)
  {
    v66 = *(v86 + 16);
    v67 = v92;
    v68 = v87;
    v69 = v89;
    v66(v92, v87, v89);
    specialized BinaryFloatingPoint.init<A>(_:)(v67, v69);
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_initStackObject();
    ICUNumberFormatterBase.FormatResult.init(formatter:value:)();
    if (v27)
    {
    }

    else
    {

      v71 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
      v73 = v76;

      if (v73)
      {
        goto LABEL_53;
      }
    }
  }

  else
  {
    v66 = *(v86 + 16);
    v69 = v89;
    v68 = v87;
  }

  v70 = v92;
  v66(v92, v68, v69);
  specialized BinaryFloatingPoint.init<A>(_:)(v70, v69);
  v71 = Double.description.getter();
  v73 = v72;
LABEL_53:
  (*(v88 + 8))(v7, v90);
  v74 = v71;
  v75 = v73;
LABEL_58:
  result._object = v75;
  result._countAndFlagsBits = v74;
  return result;
}

uint64_t BinaryFloatingPoint.formatted<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v19[1] = a5;
  v19[2] = a6;
  v19[3] = a1;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = v19 - v16;
  (*(v10 + 16))(v12, v6, a2, v15);
  dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  (*(a4 + 48))(v17, a3, a4);
  return (*(v14 + 8))(v17, AssociatedTypeWitness);
}

uint64_t BinaryFloatingPoint.init<A>(_:strategy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v25[2] = a7;
  v25[3] = a5;
  v25[0] = a8;
  v25[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v25 - v19;
  v21 = *(a6 + 48);
  v26 = a1;
  v21(a1, a4, a6, v18);
  if (v8)
  {
    (*(*(a4 - 8) + 8))(a2, a4);
    v22 = swift_getAssociatedTypeWitness();
    return (*(*(v22 - 8) + 8))(v26, v22);
  }

  else
  {
    (*(v14 + 16))(v16, v20, AssociatedTypeWitness);
    dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
    (*(*(a4 - 8) + 8))(a2, a4);
    v24 = swift_getAssociatedTypeWitness();
    (*(*(v24 - 8) + 8))(v26, v24);
    return (*(v14 + 8))(v20, AssociatedTypeWitness);
  }
}

uint64_t BinaryFloatingPoint.init<A>(_:strategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 48))(a1, a4, a6);
  (*(*(a4 - 8) + 8))(a2, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
}

uint64_t BinaryFloatingPoint.init(_:format:lenient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  return BinaryFloatingPoint.init(_:format:lenient:)(a1, a2, a3, a4, a5, a6, type metadata accessor for FloatingPointFormatStyle, a7);
}

{
  return BinaryFloatingPoint.init(_:format:lenient:)(a1, a2, a3, a4, a5, a6, type metadata accessor for FloatingPointFormatStyle.Percent, a7);
}

{
  return BinaryFloatingPoint.init(_:format:lenient:)(a1, a2, a3, a4, a5, a6, type metadata accessor for FloatingPointFormatStyle.Currency, a7);
}

uint64_t BinaryFloatingPoint.init(_:format:lenient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  v35 = a2;
  v33 = a4;
  v34 = a1;
  v31 = a8;
  v11 = a7(255, a5, a6);
  swift_getWitnessTable();
  v32 = a6;
  v12 = type metadata accessor for FloatingPointParseStrategy();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v30 = a5;
  v29 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v22 = &v29 - v21;
  v23 = *(v11 - 8);
  v24 = *(v23 + 16);
  v37 = a3;
  v24(v15, a3, v11, v20);
  v15[*(v12 + 44)] = v33;
  v25 = v36;
  FloatingPointParseStrategy.parse(_:)(v34, v35, v12, v22);
  if (v25)
  {

    (*(v23 + 8))(v37, v11);
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    (*(v13 + 8))(v15, v12);

    v27 = v29;
    v28 = v30;
    (*(v29 + 16))(v18, v22, v30);
    dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
    (*(v23 + 8))(v37, v11);
    return (*(v27 + 8))(v22, v28);
  }
}