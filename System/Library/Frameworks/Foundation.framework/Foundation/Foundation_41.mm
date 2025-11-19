uint64_t static PredicateExpressions.build_evaluate<A, B>(_:_:)@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = TupleTypeMetadata;
  v12 = 8 * a3;
  v50 = a6;
  v51 = a7;
  v52 = a5;
  v48 = a8;
  if (a3 == 1)
  {
    v13 = *(a5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v15 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a3)
    {
      v16 = 0;
      v17 = v14 & 0xFFFFFFFFFFFFFFFELL;
      if (a3 < 4)
      {
        goto LABEL_9;
      }

      if (&v15[-v17] < 0x20)
      {
        goto LABEL_9;
      }

      v16 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      v18 = (v17 + 16);
      v19 = v15 + 16;
      v20 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v21 = *v18;
        *(v19 - 1) = *(v18 - 1);
        *v19 = v21;
        v18 += 2;
        v19 += 2;
        v20 -= 4;
      }

      while (v20);
      if (v16 != a3)
      {
LABEL_9:
        v22 = a3 - v16;
        v23 = 8 * v16;
        v24 = &v15[8 * v16];
        v25 = (v17 + v23);
        do
        {
          v26 = *v25++;
          *v24 = v26;
          v24 += 8;
          --v22;
        }

        while (v22);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v13 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v28 = v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[2] = v47;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v33 + 16);
  v49 = a4;
  v35 = v34(v32, v11, a4, v30);
  v47[1] = v47;
  MEMORY[0x1EEE9AC00](v35);
  v36 = (v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v37 = (v52 & 0xFFFFFFFFFFFFFFFELL);
    v38 = (v13 + 32);
    v39 = (v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v40 = a3;
    do
    {
      if (a3 == 1)
      {
        v41 = 0;
      }

      else
      {
        v41 = *v38;
      }

      v43 = *v37++;
      v42 = v43;
      v44 = &v28[v41];
      v45 = *a2++;
      (*(*(v42 - 8) + 16))(&v28[v41], v45);
      *v39++ = v44;
      v38 += 4;
      --v40;
    }

    while (v40);
  }

  return PredicateExpressions.PredicateEvaluate.init(predicate:input:)(v32, v36, a3, v49, v52, v50, v51, v48);
}

uint64_t PredicateExpressions.PredicateEvaluate.init(predicate:input:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = a3;
  v55 = a2;
  v53 = a8;
  if (a3 == 1)
  {
    TupleTypeMetadata = *(a5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v12)
    {
      v17 = 0;
      v18 = a5 & 0xFFFFFFFFFFFFFFFELL;
      if (v12 < 4)
      {
        goto LABEL_9;
      }

      if (&v16[-v18] < 0x20)
      {
        goto LABEL_9;
      }

      v17 = v12 & 0xFFFFFFFFFFFFFFFCLL;
      v19 = (v18 + 16);
      v20 = v16 + 16;
      v21 = v12 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v22 = *v19;
        *(v20 - 1) = *(v19 - 1);
        *v20 = v22;
        v19 += 2;
        v20 += 2;
        v21 -= 4;
      }

      while (v21);
      if (v17 != v12)
      {
LABEL_9:
        v23 = v12 - v17;
        v24 = 8 * v17;
        v25 = &v16[8 * v17];
        v26 = (v18 + v24);
        do
        {
          v27 = *v26++;
          *v25 = v27;
          v25 += 8;
          --v23;
        }

        while (v23);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v56 = TupleTypeMetadata;
  v49 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v29 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v12;
  v58 = a4;
  v54 = a5;
  v59 = a5;
  v60 = a6;
  v61 = a7;
  v30 = type metadata accessor for PredicateExpressions.PredicateEvaluate();
  v50 = &v48;
  v31 = *(v30 - 8);
  v32.n128_f64[0] = MEMORY[0x1EEE9AC00](v30);
  v34 = &v48 - v33;
  v35 = *(a4 - 8);
  v36 = *(v35 + 16);
  v51 = a1;
  v52 = a4;
  v36(&v48 - v33, a1, a4, v32);
  if (v12)
  {
    v37 = v55;
    v38 = (v54 & 0xFFFFFFFFFFFFFFFELL);
    v39 = (v56 + 32);
    v40 = v12;
    do
    {
      if (v12 == 1)
      {
        v41 = 0;
      }

      else
      {
        v41 = *v39;
      }

      v43 = *v38++;
      v42 = v43;
      v44 = *v37++;
      (*(*(v42 - 8) + 16))(&v29[v41], v44);
      v39 += 4;
      --v40;
    }

    while (v40);
  }

  (*(v35 + 8))(v51, v52);
  (*(v49 + 32))(&v34[*(v30 + 60)], v29, v56);
  result = (*(v31 + 32))(v53, v34, v30);
  if (v12)
  {
    v46 = (v54 & 0xFFFFFFFFFFFFFFFELL) - 8;
    v47 = v55 - 1;
    do
    {
      result = (*(*(*(v46 + 8 * v12) - 8) + 8))(v47[v12]);
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t PredicateExpressions.PredicateEvaluate.input.getter@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t *a2@<X8>)
{
  v3 = TupleTypeMetadata;
  v5 = *(TupleTypeMetadata + 16);
  if (v5 == 1)
  {
    v6 = *(*(TupleTypeMetadata + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v9 = 0;
      v10 = *(v3 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v5 != v9)
      {
LABEL_9:
        v15 = v5 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v23 + 16))(v22, v2 + *(v3 + 60), v6, v20);
  if (v5)
  {
    v25 = (*(v3 + 32) & 0xFFFFFFFFFFFFFFFELL);
    v26 = (v6 + 32);
    v27 = v5;
    do
    {
      if (v5 == 1)
      {
        v28 = 0;
      }

      else
      {
        v28 = *v26;
      }

      v30 = *v25++;
      v29 = v30;
      v31 = *a2++;
      result = (*(*(v29 - 8) + 32))(v31, &v22[v28]);
      v26 += 4;
      --v27;
    }

    while (v27);
  }

  return result;
}

uint64_t PredicateExpressions.KeyPath.evaluate(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13[1] = a3;
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v13 - v10;
  v14 = *a1;
  result = (*(v5 + 16))(&v14, v6, v5, v9);
  if (!v3)
  {
    swift_getAtKeyPath();
    return (*(v8 + 8))(v11, AssociatedTypeWitness);
  }

  return result;
}

void _NSSetRectValueAndNotify(void *a1, const void *a2, double a3, double a4, double a5, double a6)
{
  v17[11] = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (class_getMethodImplementation(Class, sel__isKVOA) == NSKVOIsAutonotifying && (IndexedIvars = object_getIndexedIvars(Class)) != 0)
  {
    v14 = IndexedIvars;
    os_unfair_recursive_lock_lock_with_options();
    v15 = [CFDictionaryGetValue(v14[3] a2)];
    os_unfair_recursive_lock_unlock();
    if (v14[5])
    {
      [a1 willChangeValueForKey:v15];
      MethodImplementation = class_getMethodImplementation(*v14, a2);
      (MethodImplementation)(a1, a2, a3, a4, a5, a6);
      [a1 didChangeValueForKey:v15];
    }

    else
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = ___NSSetRectValueAndNotify_block_invoke;
      v17[3] = &unk_1E69F4708;
      v17[5] = v14;
      v17[6] = a2;
      v17[4] = a1;
      *&v17[7] = a3;
      *&v17[8] = a4;
      *&v17[9] = a5;
      *&v17[10] = a6;
      [a1 _changeValueForKey:v15 key:0 key:0 usingBlock:v17];
    }
  }

  else
  {

    [a1 a2];
  }
}

uint64_t Date.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v6 = v5;
    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Date.formatted(date:time:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v5 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  type metadata accessor for _CalendarAutoupdating();
  v6 = swift_initStaticObject();
  v7 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type _CalendarAutoupdating and conformance _CalendarAutoupdating, type metadata accessor for _CalendarAutoupdating);
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  type metadata accessor for _TimeZoneAutoupdating();
  v8 = swift_initStaticObject();
  v9 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating, type metadata accessor for _TimeZoneAutoupdating);
  v39 = 1;
  if (v2)
  {
    v39 = 0;
    v44 = xmmword_18121B8E0;
    v45 = xmmword_181223220;
    v46 = 0x2020E0906030100;
    v47 = 0;
    v48 = 3327;
    *&v33[0] = v2;
    Date.FormatStyle.DateFieldCollection.collection(date:)(v33, v40);
    v10 = v40[0];
    v11 = v40[1];
    v13 = v41;
    v12 = v42;
    v14 = v43;
    if (!v3)
    {
      goto LABEL_16;
    }

LABEL_7:
    if ((v13 & 0xFF000000000000) == 0x3000000000000)
    {
      v12 = 0;
      v15 = 0;
      v13 = 0x2020E0906030000;
      LOBYTE(v16) = 1;
      v11 = xmmword_181223220;
      v10 = xmmword_18121B8E0;
      LOWORD(v17) = 12;
      LOBYTE(v14) = -1;
    }

    else
    {
      v16 = v13 >> 8;
      v15 = v13;
      v17 = v14 >> 8;
    }

    v18 = v15 & 0xFFFFFFFFFFFF00FFLL | (v16 << 8);
    if (v3 == 3)
    {
      LOWORD(v17) = 0;
    }

    else if (v3 != 2)
    {
      v19 = v13 & 0xFF00000000000000;
LABEL_15:
      v13 = v19 | v13 & 0xFFFFFF0000 | v18 | 0x1000000000000;
      LOWORD(v14) = v14 | (v17 << 8);
      goto LABEL_16;
    }

    v19 = 0x100000000000000;
    goto LABEL_15;
  }

  v12 = 0;
  v14 = 0;
  v10 = 0uLL;
  v13 = 0x3000000000000;
  v11 = 0uLL;
  if (v3)
  {
    goto LABEL_7;
  }

LABEL_16:
  v33[0] = v10;
  v33[1] = v11;
  *&v34 = v13;
  *(&v34 + 1) = v12;
  LOWORD(v35) = v14;
  *(&v35 + 1) = v2;
  LOBYTE(v36) = v39;
  *(&v36 + 1) = inited;
  *&v37 = v5;
  *(&v37 + 1) = v8;
  *v38 = v9;
  *&v38[8] = v6;
  *&v38[16] = v7;
  *&v38[24] = 256;
  v30 = v36;
  v31 = v37;
  v32[0] = *v38;
  *(v32 + 10) = *&v38[10];
  v26 = v10;
  v27 = v11;
  v28 = v34;
  v29 = v35;
  outlined init with copy of Date.FormatStyle(v33, v25);
  ICUDateFormatter.DateFormatInfo.init(_:)(&v26, v25);
  v20 = specialized static ICUDateFormatter.cachedFormatter(for:)(v25);
  v28 = v25[2];
  v29 = v25[3];
  v30 = v25[4];
  v31 = v25[5];
  v26 = v25[0];
  v27 = v25[1];
  outlined destroy of ICUDateFormatter.DateFormatInfo(&v26);
  if (!v20 || (v21 = specialized _withResizingUCharBuffer(initialSize:_:)(32), v23 = v22, , !v23))
  {
    v21 = 0;
  }

  outlined destroy of Date.FormatStyle(v33);
  return v21;
}

uint64_t Date.FormatStyle.DateFieldCollection.collection(date:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 17);
  v5 = *(v2 + 18);
  v6 = *(v2 + 34);
  v7 = *(v2 + 35);
  if (*a1)
  {
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        v5 = 3;
      }

      else if (v3 == 4)
      {
        v5 = 3;
        v7 = 1;
      }
    }

    else if (v3 == 1)
    {
      v5 = 0;
    }

    else if (v3 == 2)
    {
      v5 = 2;
    }

    v12 = 0;
    v10 = 0;
    v14 = *(v2 + 19);
    v15 = *(v2 + 23);
    v9 = 1;
    result = 3;
    v8 = 0;
  }

  else
  {
    v8 = *(v2 + 33);
    v9 = *(v2 + 32);
    v10 = *(v2 + 24);
    result = *(v2 + 16);
    v12 = *(v2 + 8);
    v14 = *(v2 + 19);
    v15 = *(v2 + 23);
  }

  *&v13 = *(v2 + 36);
  *(&v13 + 6) = *(v2 + 42);
  *a2 = *v2;
  *(a2 + 8) = v12;
  *(a2 + 16) = result;
  *(a2 + 17) = v4;
  *(a2 + 18) = v5;
  *(a2 + 19) = v14;
  *(a2 + 23) = v15;
  *(a2 + 24) = v10;
  *(a2 + 32) = v9;
  *(a2 + 33) = v8;
  *(a2 + 34) = v6;
  *(a2 + 35) = v7;
  *(a2 + 36) = v13;
  *(a2 + 42) = *(&v13 + 6);
  return result;
}

uint64_t Calendar.dateComponents(in:from:)@<X0>(__int128 *a1@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  v13 = *a1;
  v5 = *a2;
  v7 = *v3;
  v6 = v3[1];
  v16 = 327679;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v8 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v5)
  {
    v8 = v5;
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
  v15 = v9;
  v14 = v13;
  (*(v6 + 184))(&v16, &v15, &v14, ObjectType, v6);
  *a3 = v7;
  a3[1] = v6;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = a3[2];
  if (result)
  {
    if (v7)
    {
      v12 = a3[3];
      *&v14 = a3[2];
      *(&v14 + 1) = v12;
      swift_unknownObjectRetain();
      return Calendar.timeZone.setter(&v14);
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16()
{
  result = lazy protocol witness table cache variable for type Unicode.UTF16 and conformance Unicode.UTF16;
  if (!lazy protocol witness table cache variable for type Unicode.UTF16 and conformance Unicode.UTF16)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.UTF16 and conformance Unicode.UTF16);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for URLComponents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 154) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 154) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void IndexSet.remove(integersIn:)(uint64_t a1, uint64_t a2)
{
  IndexSet.insert(integersIn:)(a1, a2, &selRef_removeIndexesInRange_);
}

{
  v2 = __OFADD__(a2, 1);
  v3 = a2 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    IndexSet.remove(integersIn:)(a1, v3);
  }
}

uint64_t protocol witness for _LocaleProtocol.copy(newCalendarIdentifier:) in conformance _LocaleAutoupdating(char *a1)
{
  v1 = *a1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v7 = static LocaleCache.cache;
  v8 = qword_1ED4404B0;
  LocaleCache._currentAndCache.getter();
  v3 = v2;
  ObjectType = swift_getObjectType();
  LOBYTE(v7) = v1;
  v5 = (*(v3 + 40))(&v7, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

void specialized NSDecimal.init(_:)(double a1)
{
  if ((~*&a1 & 0x7FF0000000000000) == 0)
  {
    if ((*&a1 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      *&v15[4] = 0uLL;
      _So9NSDecimala__exponent_setter(0, v15);
      _So9NSDecimala__length_setter(0, v15);
      _So9NSDecimala__isNegative_setter(1, v15);
      _So9NSDecimala__isCompact_setter_0(0, v15);
      _So9NSDecimala__reserved_setter(v15);
      v16 = *v15;
      v1 = *&v15[16];
      goto LABEL_4;
    }

    __break(1u);
    goto LABEL_43;
  }

  v16 = 0uLL;
  v17 = 0;
  if (a1 == 0.0)
  {
    return;
  }

  v2 = -a1;
  if (a1 >= 0.0)
  {
    v2 = a1;
  }

  v3 = 0;
  if (v2 < 1.84467441e19)
  {
    while (v3 != 128)
    {
      v2 = v2 * 10.0;
      --v3;
      if (v2 >= 1.84467441e19)
      {
        goto LABEL_11;
      }
    }

    *&v13[4] = 0uLL;
    _So9NSDecimala__exponent_setter(0, v13);
    _So9NSDecimala__length_setter(0, v13);
    _So9NSDecimala__isNegative_setter(1, v13);
    _So9NSDecimala__isCompact_setter_0(0, v13);
    _So9NSDecimala__reserved_setter(v13);
    v16 = *v13;
    v1 = *&v13[16];
LABEL_4:
    v17 = v1;
    return;
  }

LABEL_11:
  if (v2 >= 1.84467441e19)
  {
    while (v3 != 127)
    {
      v2 = v2 / 10.0;
      ++v3;
      if (v2 < 1.84467441e19)
      {
        goto LABEL_14;
      }
    }

    *&v14[4] = 0uLL;
    _So9NSDecimala__exponent_setter(0, v14);
    _So9NSDecimala__length_setter(0, v14);
    _So9NSDecimala__isNegative_setter(1, v14);
    _So9NSDecimala__isCompact_setter_0(0, v14);
    _So9NSDecimala__reserved_setter(v14);
    v16 = *v14;
    v1 = *&v14[16];
    goto LABEL_4;
  }

LABEL_14:
  if (v2 <= 1.84467441e19)
  {
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v2 <= -1.0)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v2 >= 1.84467441e19)
    {
LABEL_45:
      __break(1u);
      return;
    }

    v4 = v2;
    if (!v2)
    {
      v5 = 0;
      goto LABEL_36;
    }
  }

  else
  {
    v4 = -2048;
  }

  LODWORD(v5) = 0;
  v6 = v17;
  v7 = HIWORD(v16);
  v8 = WORD6(v16);
  v9 = *(&v16 + 4);
  while (1)
  {
    if (v5 <= 3)
    {
      if (v5 <= 1)
      {
        v10 = v9;
        LOWORD(v10) = v4;
        WORD1(v9) = v4;
        v11 = v5 == 0;
      }

      else
      {
        v11 = v5 == 2;
        v10 = v9;
        WORD2(v10) = v4;
        HIWORD(v9) = v4;
      }

      if (v11)
      {
        v9 = v10;
      }

      goto LABEL_24;
    }

    if (v5 <= 5)
    {
      if (v5 == 4)
      {
        v8 = v4;
      }

      else
      {
        v7 = v4;
      }

      goto LABEL_24;
    }

    if (v5 != 6)
    {
      break;
    }

    v6 = v4;
LABEL_24:
    v4 >>= 16;
    v5 = (v5 + 1);
    if (!v4)
    {
      LOWORD(v4) = HIWORD(v17);
      goto LABEL_35;
    }
  }

  v5 = 8;
LABEL_35:
  HIWORD(v17) = v4;
  LOWORD(v17) = v6;
  HIWORD(v16) = v7;
  WORD6(v16) = v8;
  *(&v16 + 4) = v9;
LABEL_36:
  v12 = a1 < 0.0;
  _So9NSDecimala__length_setter(v5, &v16);
  _So9NSDecimala__isNegative_setter(v12, &v16);
  _So9NSDecimala__isCompact_setter_0(0, &v16);
  _So9NSDecimala__exponent_setter(v3, &v16);
  NSDecimal.compact()();
}

unint64_t lazy protocol witness table accessor for type ICUPercentNumberFormatter.Signature and conformance ICUPercentNumberFormatter.Signature()
{
  result = lazy protocol witness table cache variable for type ICUPercentNumberFormatter.Signature and conformance ICUPercentNumberFormatter.Signature;
  if (!lazy protocol witness table cache variable for type ICUPercentNumberFormatter.Signature and conformance ICUPercentNumberFormatter.Signature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICUPercentNumberFormatter.Signature and conformance ICUPercentNumberFormatter.Signature);
  }

  return result;
}

uint64_t static FormatStyle.measurement<>(width:usage:hidesScaleName:numberFormatStyle:)@<X0>(char *a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = *a1;
  v14 = *a2;
  outlined init with copy of FloatingPointRoundingRule?(a4, &v23 - v11, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v16 = _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleVySo17NSUnitTemperatureC_GMd);
  v18 = v17[8];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  (*(*(v19 - 8) + 56))(a5 + v18, 1, 1, v19);
  v20 = v17[9];
  v21 = v17[10];
  *(a5 + v21) = 0;
  *a5 = v13;
  *(a5 + 8) = inited;
  *(a5 + 16) = v16;
  *(a5 + v20) = v14;
  result = outlined assign with take of FloatingPointFormatStyle<Double>?(v12, a5 + v18);
  *(a5 + v21) = a3;
  return result;
}

__n128 Measurement<>.FormatStyle.locale(_:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, v3, a2);
  v7 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = v7;
  *(a3 + 8) = v7;
  return result;
}

uint64_t Measurement<>.FormatStyle.skeletonForUsage(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v39 - v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a2 + 36);
  v15 = v3[v14];
  if (v15 != 14)
  {
    if (Usage.rawValue.getter(v3[v14]) == 0x6469766F72507361 && v16 == 0xEA00000000006465)
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        v39 = *(v3 + 8);
        v42 = v39;
        v19 = *(a2 + 16);
        v20 = swift_dynamicCastUnknownClassUnconditional();
        LOBYTE(v40) = v15;
        swift_unknownObjectRetain();
        v21 = bestUnitForUsage<A>(_:dimension:usage:)(&v42, v20, &v40, v19);
        swift_unknownObjectRelease();
        objc_opt_self();
        v22 = swift_dynamicCastObjCClassUnconditional();
        specialized Measurement<>.converted(to:)(&v42, v22, v12, v13);

        v23 = v42;
        goto LABEL_10;
      }
    }
  }

  v23 = v12;
LABEL_10:
  v24 = v23;
  v25 = NSDimension.skeleton.getter();
  v27 = v26;

  if (v27)
  {
    if (v3[*(a2 + 40)] == 1)
    {

      v27 = 0x80000001814880F0;
      v25 = 0xD000000000000020;
    }

    v28 = *v3;
    v29 = *(a2 + 32);
    *&v42 = 0;
    *(&v42 + 1) = 0xE000000000000000;
    v40 = v25;
    v41 = v27;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);
    v30 = "unit-width-iso-code";
    if (v28 == 1)
    {
      v31 = 0xD000000000000010;
    }

    else
    {
      v31 = 0xD000000000000011;
    }

    if (v28 != 1)
    {
      v30 = "unit-width-short";
    }

    if (v28)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0xD000000000000014;
    }

    if (v28)
    {
      v33 = v30;
    }

    else
    {
      v33 = "Invalid Precision";
    }

    MEMORY[0x1865CB0E0](v32, v33 | 0x8000000000000000);

    MEMORY[0x1865CB0E0](v40, v41);

    outlined init with copy of FloatingPointRoundingRule?(&v3[v29], v11, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
    if ((*(*(v34 - 8) + 48))(v11, 1, v34) == 1)
    {

      outlined destroy of TermOfAddress?(v11, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
    }

    else
    {
      outlined init with copy of NumberFormatStyleConfiguration.Collection(&v11[*(v34 + 36)], v8);
      outlined destroy of TermOfAddress?(v11, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
      v36 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
      v38 = v37;
      outlined destroy of NumberFormatStyleConfiguration.Collection(v8);
      if (String.count.getter() > 0)
      {
        MEMORY[0x1865CB0E0](32, 0xE100000000000000);
      }

      MEMORY[0x1865CB0E0](v36, v38);
    }

    return v42;
  }

  else
  {

    return 0;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v43 - v9;
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a2 + 36);
  v14 = v3[v13];
  v51 = *(v3 + 8);
  if (v14 == 14)
  {
    LOBYTE(v14) = 0;
  }

  LOBYTE(v49) = v14;
  v15 = *(a2 + 16);
  swift_unknownObjectRetain();
  v16 = bestUnitForUsage<A>(_:dimension:usage:)(&v51, v11, &v49, v15);
  swift_unknownObjectRelease();
  v49 = v11;
  v50 = v12;
  type metadata accessor for Measurement();
  Measurement<>.converted(to:)(v16, &v51);
  v17 = *(&v51 + 1);
  v18 = v51;
  v19 = NSDimension.skeleton.getter();
  v21 = v20;

  if (!v21)
  {

    return 0;
  }

  v44 = v18;
  v46 = v17;
  v47 = v16;
  v22 = *v3;
  v23 = v3[v13];
  v45 = *(a2 + 32);
  *&v51 = 0;
  *(&v51 + 1) = 0xE000000000000000;
  v49 = v19;
  v50 = v21;

  MEMORY[0x1865CB0E0](32, 0xE100000000000000);
  v24 = "unit-width-iso-code";
  if (v22 == 1)
  {
    v25 = 0xD000000000000010;
  }

  else
  {
    v25 = 0xD000000000000011;
  }

  if (v22 != 1)
  {
    v24 = "unit-width-short";
  }

  if (v22)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0xD000000000000014;
  }

  if (v22)
  {
    v27 = v24;
  }

  else
  {
    v27 = "Invalid Precision";
  }

  MEMORY[0x1865CB0E0](v26, v27 | 0x8000000000000000);

  MEMORY[0x1865CB0E0](v49, v50);

  v28 = v23 == 14;
  v29 = v23;
  v30 = v44;
  if (!v28)
  {
    if (Usage.rawValue.getter(v29) != 0x6469766F72507361 || v31 != 0xEA00000000006465)
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v33 & 1) != 0 || ([swift_getObjCClassFromMetadata() supportsRegionalPreference] & 1) == 0)
      {
        goto LABEL_23;
      }

      v34 = Usage.rawValue.getter(v29);
      v49 = 0x2F656761737520;
      v50 = 0xE700000000000000;
      MEMORY[0x1865CB0E0](v34);

      MEMORY[0x1865CB0E0](v49, v50);
    }
  }

LABEL_23:
  outlined init with copy of FloatingPointRoundingRule?(&v3[v45], v10, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  if ((*(*(v35 - 8) + 48))(v10, 1, v35) == 1)
  {

    outlined destroy of TermOfAddress?(v10, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
    v36 = v30;
  }

  else
  {
    v37 = &v10[*(v35 + 36)];
    v38 = v48;
    outlined init with copy of NumberFormatStyleConfiguration.Collection(v37, v48);
    outlined destroy of TermOfAddress?(v10, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
    v39 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v41 = v40;
    outlined destroy of NumberFormatStyleConfiguration.Collection(v38);
    v42 = String.count.getter();
    v36 = v47;
    if (v42 > 0)
    {
      MEMORY[0x1865CB0E0](32, 0xE100000000000000);
    }

    MEMORY[0x1865CB0E0](v39, v41);
  }

  return v51;
}

id Measurement<>.converted(to:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  if (([*v2 isEqual_] & 1) == 0)
  {
    v6 = [v4 converter];
    [v6 baseUnitValueFromValue_];
    v5 = v7;

    swift_getObjectType();
    v8 = [swift_getObjCClassFromMetadata() baseUnit];
    v9 = [a1 isEqual_];

    if ((v9 & 1) == 0)
    {
      v10 = [a1 converter];
      [v10 valueFromBaseUnitValue_];
      v5 = v11;
    }
  }

  a2[1] = v5;
  *a2 = a1;

  return a1;
}

Swift::Bool __swiftcall Calendar.isDateInTomorrow(_:)(Foundation::Date a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v5 = *v2;
  v4 = v2[1];
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  v6 = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
  LOBYTE(v12._time) = 3;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v7 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v7 = v6;
  }

  if (*&static Date.validCalendarRange >= v7)
  {
    v8 = *&static Date.validCalendarRange;
  }

  else
  {
    v8 = v7;
  }

  ObjectType = swift_getObjectType();
  *&__tp.tv_sec = v8;
  (*(*&v4 + 160))(&v14, &v12, &__tp, ObjectType, COERCE_DOUBLE(*&v4));
  if (v16)
  {
    return 0;
  }

  v11._time = v15 + v14 + 60.0;
  v14 = v5;
  v15 = v4;
  v12._time = v11._time;
  __tp.tv_sec = v3;
  return Calendar.compare(_:to:toGranularity:)(v11, 0x404E000000000000, &__tp) == NSOrderedSame;
}

uint64_t specialized _JSONSimpleValueArrayElement<>.serializeJsonRepresentation<A>(into:encoder:_:)(uint64_t a1, int a2)
{
  v8 = a2;
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v4 = *(*(a1 + 16) + 16);
  v7[0] = v3;
  v7[1] = v5;
  specialized String.withUTF8<A>(_:)(v7);

  return *(*(a1 + 16) + 16) - v4;
}

uint64_t specialized String.withUTF8<A>(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if ((v3 & 0x1000000000000000) != 0)
  {
    v9 = static String._copying(_:)();
    v11 = v10;

    v2 = v9;
    *a1 = v9;
    a1[1] = v11;
    v3 = v11;
    if ((v11 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v14[0] = v2;
    v14[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    v7 = v14;
    v8 = HIBYTE(v3) & 0xF;
    return specialized Array.append<A>(contentsOf:)(v7, v8);
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v2 & 0x1000000000000000) != 0)
  {
    v5 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = _StringObject.sharedUTF8.getter();
    v6 = v13;
  }

  v7 = v5;
  v8 = v6;
  return specialized Array.append<A>(contentsOf:)(v7, v8);
}

uint64_t static Measurement.< infix<A, B>(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  if (static NSObject.== infix(_:_:)())
  {
    return v3 < v5;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      ObjCClassFromObject = swift_getObjCClassFromObject();
      v11 = v2;
      v12 = v4;
      v13 = [ObjCClassFromObject baseUnit];
      v14 = [swift_getObjCClassFromObject() baseUnit];
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        v16 = [v7 converter];
        [v16 baseUnitValueFromValue_];
        v3 = v17;

        v18 = [v9 converter];
        [v18 baseUnitValueFromValue_];
        v5 = v19;

        return v3 < v5;
      }
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t String.init(format:locale:arguments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  swift_unknownObjectRetain();

  v9 = specialized withVaList<A>(_:_:)(a4, a4, a1, a2, v7, v8);

  swift_unknownObjectRelease();
  return v9;
}

Swift::Bool __swiftcall Calendar.isDate(_:inSameDayAs:)(Foundation::Date _, Foundation::Date inSameDayAs)
{
  *&v5._time = *v2;
  *&v6._time = *v3;
  v9 = *v4;
  time = v5._time;
  return Calendar.compare(_:to:toGranularity:)(v5, v6, &time) == NSOrderedSame;
}

uint64_t protocol witness for _LocaleProtocol.decimalSeparator.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 224))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t Locale.decimalSeparator.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 224))(ObjectType, v1);
}

uint64_t protocol witness for _LocaleProtocol.decimalSeparator.getter in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.decimalSeparator.getter(&v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

uint64_t static NumberFormatStyleConfiguration.Precision.integerAndFractionLength<A, B>(integerLimits:fractionLimits:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = RangeExpression.clampedLowerAndUpperBounds(_:)(0, 999, a1);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = RangeExpression.clampedLowerAndUpperBounds(_:)(0, 999, a2);
  *a3 = v5;
  *(a3 + 8) = v7 & 1;
  *(a3 + 16) = v9;
  *(a3 + 24) = v11 & 1;
  *(a3 + 32) = result;
  *(a3 + 40) = v13 & 1;
  *(a3 + 48) = v15;
  *(a3 + 56) = v14 & 1 | 0x80;
  return result;
}

uint64_t static RegexComponent<>.localizedDecimal(locale:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for NSDecimal.FormatStyle(0) + 20);
  *v4 = 0;
  v4[8] = 1;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0x1FFFFFFFELL;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  *(v4 + 6) = 0;
  *(v4 + 18) = 131584;
  *(v4 + 38) = 512;
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v6 = v5[9];
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *a1;
  (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
  v8 = &v4[v5[10]];
  *v8 = 0;
  v8[8] = -1;
  v4[v5[11]] = 3;
  *a2 = v10;

  return swift_unknownObjectRetain();
}

uint64_t lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for RegexComponent.regex.getter in conformance NSDecimal.FormatStyle(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle and conformance NSDecimal.FormatStyle, type metadata accessor for NSDecimal.FormatStyle);

  return MEMORY[0x1EEE6E5F8](a1, v2);
}

uint64_t protocol witness for CustomConsumingRegexComponent.consuming(_:startingAt:in:) in conformance NSDecimal.FormatStyle@<X0>(uint64_t (*a1)(void)@<X7>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
    *(a2 + 28) = BYTE4(v7) & 1;
  }

  return result;
}

uint64_t NSDecimal.FormatStyle.consuming(_:startingAt:in:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v109 = a3;
  v103 = a1;
  v104 = a2;
  v6 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v7 = *(v6 - 8);
  v105 = v6;
  v106 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v90 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v90 - v12;
  v14 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleVGMd);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v90 - v22;
  outlined init with copy of NSDecimal.FormatStyle(v108, &v90 - v22, type metadata accessor for NSDecimal.FormatStyle);
  v24 = v23;
  v25 = v109;
  *(v24 + *(v21 + 44)) = 0;
  v108 = a5;
  if (v25 >> 14 >= a5 >> 14)
  {
    goto LABEL_11;
  }

  v99 = v24;
  outlined init with copy of NSDecimal.FormatStyle(v24, v16, type metadata accessor for NSDecimal.FormatStyle);
  outlined init with take of NSDecimal.FormatStyle.Percent(v16 + *(v14 + 20), v19, type metadata accessor for NumberFormatStyleConfiguration.Collection);
  swift_storeEnumTagMultiPayload();
  v27 = *v16;
  v26 = v16[1];
  v101 = v19;
  outlined init with copy of NSDecimal.FormatStyle(v19, v13, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  ObjectType = swift_getObjectType();
  v29 = *(v26 + 64);
  swift_unknownObjectRetain();
  v100 = v27;
  v30 = v29(ObjectType, v26);
  v31 = v105;
  v32 = &v13[*(v105 + 20)];
  *v32 = v30;
  v32[1] = v33;
  v13[*(v31 + 24)] = 0;
  v34 = v13;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v35 = static ICULegacyNumberFormatter.cache;
  v36 = qword_1EA7AFFA0;
  v37 = v13;
  v38 = v107;
  outlined init with copy of NSDecimal.FormatStyle(v37, v107, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v39 = (*(v106 + 80) + 16) & ~*(v106 + 80);
  v40 = swift_allocObject();
  v41 = outlined init with take of NSDecimal.FormatStyle.Percent(v38, v40 + v39, type metadata accessor for ICULegacyNumberFormatter.Signature);
  MEMORY[0x1EEE9AC00](v41);
  *(&v90 - 2) = v34;
  os_unfair_lock_lock((v36 + 24));
  v42 = v110;
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v36 + 16, v111);
  if (v42)
  {
LABEL_44:
    os_unfair_lock_unlock((v36 + 24));
    __break(1u);
    goto LABEL_45;
  }

  os_unfair_lock_unlock((v36 + 24));
  if (v111[0])
  {
    v110 = 0;
LABEL_7:
    outlined destroy of NumberFormatStyleConfiguration.Collection(v34, type metadata accessor for ICULegacyNumberFormatter.Signature);
    swift_unknownObjectRelease();

    v43 = String.subscript.getter();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v112 = 0;
    v109 = specialized ICULegacyNumberFormatter.parseAsDecimal<A>(_:upperBound:)(v43, v44, v46, v48, &v112);
    if ((v50 & 0x100000000) == 0)
    {
      v111[0] = v43;
      v111[1] = v45;
      v111[2] = v47;
      v111[3] = v49;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      v51 = String.Index.init<A>(utf16Offset:in:)();
      swift_unknownObjectRelease();

      outlined destroy of NumberFormatStyleConfiguration.Collection(v101, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
      outlined destroy of TermOfAddress?(v99, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleVGMd);
      result = v51;
      v53 = 0;
LABEL_12:
      LOBYTE(v111[0]) = v53;
      return result;
    }

    swift_unknownObjectRelease();

    outlined destroy of NumberFormatStyleConfiguration.Collection(v101, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
    v24 = v99;
LABEL_11:
    outlined destroy of TermOfAddress?(v24, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleVGMd);
    result = 0;
    v53 = 1;
    goto LABEL_12;
  }

  v98 = partial apply for implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)();
  v110 = 0;
  os_unfair_lock_lock((v36 + 24));
  v54 = *(v36 + 16);
  if (v35 >= *(v54 + 16))
  {
  }

  else
  {
    *(v36 + 16) = MEMORY[0x1E69E7CC8];
  }

  v55 = v102;
  outlined init with copy of NSDecimal.FormatStyle(v34, v102, type metadata accessor for ICULegacyNumberFormatter.Signature);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v111[0] = *(v36 + 16);
  v57 = v111[0];
  *(v36 + 16) = 0x8000000000000000;
  v59 = specialized __RawDictionaryStorage.find<A>(_:)(v55);
  v60 = v57[2];
  v61 = (v58 & 1) == 0;
  v62 = v60 + v61;
  if (__OFADD__(v60, v61))
  {
    __break(1u);
LABEL_27:
    v91 = v59;
    v96 = v58;
    v92 = v54;
    v105 = v40;
    v93 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd);
    v97 = static _DictionaryStorage.copy(original:)();
    v95 = v57;
    if (!v57[2])
    {
LABEL_42:

      v40 = v105;
      v34 = v93;
      v55 = v102;
      v66 = v96;
      v59 = v91;
LABEL_20:
      v57 = v97;
      if (v66)
      {
LABEL_21:
        *(v57[7] + 8 * v59) = v98;

LABEL_25:
        outlined destroy of NumberFormatStyleConfiguration.Collection(v55, type metadata accessor for ICULegacyNumberFormatter.Signature);
        *(v36 + 16) = v57;

        os_unfair_lock_unlock((v36 + 24));

        goto LABEL_7;
      }

LABEL_24:
      v105 = v40;
      v67 = v107;
      v68 = v57;
      v69 = v59;
      outlined init with copy of NSDecimal.FormatStyle(v55, v107, type metadata accessor for ICULegacyNumberFormatter.Signature);
      v70 = v69;
      v57 = v68;
      specialized _NativeDictionary._insert(at:key:value:)(v70, v67, v98, v68);
      goto LABEL_25;
    }

    v71 = (v97 + 64);
    v72 = 1 << *(v97 + 32);
    v94 = (v95 + 8);
    v73 = (v72 + 63) >> 6;
    if (v97 != v95 || v71 >= &v94[8 * v73])
    {
      memmove(v71, v94, 8 * v73);
    }

    v74 = 0;
    v75 = v95;
    *(v97 + 16) = v95[2];
    v76 = 1 << *(v75 + 32);
    v77 = v75[8];
    v78 = -1;
    if (v76 < 64)
    {
      v78 = ~(-1 << v76);
    }

    v79 = v78 & v77;
    v80 = (v76 + 63) >> 6;
    if ((v78 & v77) != 0)
    {
      do
      {
        v81 = __clz(__rbit64(v79));
        v79 &= v79 - 1;
LABEL_40:
        v84 = v81 | (v74 << 6);
        v85 = v95;
        v86 = v107;
        v87 = *(v106 + 72) * v84;
        outlined init with copy of NSDecimal.FormatStyle(v95[6] + v87, v107, type metadata accessor for ICULegacyNumberFormatter.Signature);
        v88 = *(v85[7] + 8 * v84);
        v89 = v97;
        outlined init with take of NSDecimal.FormatStyle.Percent(v86, *(v97 + 48) + v87, type metadata accessor for ICULegacyNumberFormatter.Signature);
        *(*(v89 + 56) + 8 * v84) = v88;
      }

      while (v79);
    }

    v82 = v74;
    while (1)
    {
      v74 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        break;
      }

      if (v74 >= v80)
      {
        goto LABEL_42;
      }

      v83 = *&v94[8 * v74];
      ++v82;
      if (v83)
      {
        v81 = __clz(__rbit64(v83));
        v79 = (v83 - 1) & v83;
        goto LABEL_40;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  if (v57[3] >= v62)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v58)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    goto LABEL_27;
  }

  v96 = v58;
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v62, isUniquelyReferenced_nonNull_native);
  v97 = v111[0];
  v63 = specialized __RawDictionaryStorage.find<A>(_:)(v55);
  v65 = v64 & 1;
  v66 = v96;
  if ((v96 & 1) == v65)
  {
    v59 = v63;
    goto LABEL_20;
  }

LABEL_45:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t type metadata completion function for ICULegacyNumberFormatter.Signature()
{
  result = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata accessor for (CurrencyFormatStyleConfiguration.Collection, currencyCode: String)()
{
  if (!lazy cache variable for type metadata for (CurrencyFormatStyleConfiguration.Collection, currencyCode: String))
  {
    type metadata accessor for CurrencyFormatStyleConfiguration.Collection(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (CurrencyFormatStyleConfiguration.Collection, currencyCode: String));
    }
  }
}

void type metadata completion function for ICULegacyNumberFormatter.NumberFormatType()
{
  type metadata accessor for NumberFormatStyleConfiguration.Collection(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for (CurrencyFormatStyleConfiguration.Collection, currencyCode: String)();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t instantiation function for generic protocol witness table for NSDecimal.FormatStyle(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle and conformance NSDecimal.FormatStyle, type metadata accessor for NSDecimal.FormatStyle);
  a1[2] = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle and conformance NSDecimal.FormatStyle, type metadata accessor for NSDecimal.FormatStyle);
  result = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle and conformance NSDecimal.FormatStyle, type metadata accessor for NSDecimal.FormatStyle);
  a1[3] = result;
  return result;
}

uint64_t type metadata completion function for NSDecimal.ParseStrategy()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of NSDecimal.FormatStyle(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of NSDecimal.FormatStyle.Percent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ICULegacyNumberFormatter.Signature and conformance ICULegacyNumberFormatter.Signature(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for Hashable.hash(into:) in conformance NumberFormatStyleConfiguration.SignDisplayStrategy()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1865CD060](*v0);
  MEMORY[0x1865CD060](v1);
  return MEMORY[0x1865CD060](v2);
}

uint64_t _s10Foundation14FormatterCacheV9formatter3for7creatorq_x_q_yKXEtKFq_SgSDyxq_GzYbXEfU_AA015ICULegacyNumberB0C9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLV_AJTG5TA_0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, *(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t specialized closure #1 in FormatterCache.formatter(for:creator:)(uint64_t a1, uint64_t a2)
{
  if (!*(*a1 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t ICULegacyNumberFormatter.Signature.createNumberFormatter()()
{
  v1 = v0;
  v55 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v48 - v5;
  v7 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v1, &v48 - v17, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v48 = v2;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd);

      _s10Foundation32CurrencyFormatStyleConfigurationO10CollectionVWObTm_0(v18, v6, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
      outlined destroy of CurrencyFormatStyleConfiguration.Collection(v6, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    outlined destroy of CurrencyFormatStyleConfiguration.Collection(v18, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  }

  else
  {
    _s10Foundation32CurrencyFormatStyleConfigurationO10CollectionVWObTm_0(v18, v12, type metadata accessor for NumberFormatStyleConfiguration.Collection);
    outlined destroy of CurrencyFormatStyleConfiguration.Collection(v12, type metadata accessor for NumberFormatStyleConfiguration.Collection);
  }

  v51 = 0;
  type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  String.utf8CString.getter();
  v20 = unum_open();

  if (!v20)
  {
    lazy protocol witness table accessor for type ICUError and conformance ICUError();
    swift_allocError();
    *v23 = 16;
    return swift_willThrow();
  }

  v21 = v51;
  if (v51 >= 1)
  {
    lazy protocol witness table accessor for type ICUError and conformance ICUError();
    swift_allocError();
    *v22 = v21;
    return swift_willThrow();
  }

  unum_setAttribute();
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v1, v15, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  v25 = swift_getEnumCaseMultiPayload();
  if (v25 < 2)
  {
    _s10Foundation32CurrencyFormatStyleConfigurationO10CollectionVWObTm_0(v15, v9, type metadata accessor for NumberFormatStyleConfiguration.Collection);
    if (v9[8])
    {
LABEL_18:
      v26 = *(v9 + 2);
      v52 = *(v9 + 1);
      v53 = v26;
      v54[0] = *(v9 + 3);
      *(v54 + 9) = *(v9 + 57);
      setPrecision(_:formatter:)(&v52);
      v27 = v9[73];
      if (v27 != 2 && (v27 & 1) != 0)
      {
        unum_setAttribute();
      }

      v28 = v9[77];
      if (v28 != 2 && (v28 & 1) != 0)
      {
        unum_setAttribute();
      }

      v29 = &v9[*(v7 + 40)];
      v30 = v29[8];
      if (v30 == 255)
      {
        goto LABEL_50;
      }

      v31 = *v29;
      if (v30)
      {
        unum_setDoubleAttribute();
        goto LABEL_50;
      }

      if (v31 >= 0xFFFFFFFF80000000)
      {
        if (v31 <= 0x7FFFFFFF)
        {
          unum_setAttribute();
LABEL_50:
          v45 = *(v9 + 37);
          outlined destroy of CurrencyFormatStyleConfiguration.Collection(v9, type metadata accessor for NumberFormatStyleConfiguration.Collection);
          if (v45 != 2 && (v45 & 1) == 0)
          {
            unum_setAttribute();
          }

          goto LABEL_62;
        }

        goto LABEL_67;
      }

LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if ((~*v9 & 0x7FF0000000000000) != 0)
    {
      if (*v9 > -2147483650.0)
      {
        if (*v9 < 2147483650.0)
        {
          unum_setAttribute();
          goto LABEL_18;
        }

LABEL_65:
        __break(1u);
        goto LABEL_66;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_65;
  }

  if (v25 != 2)
  {
    v43 = *v15;
    if (v15[1] != 5)
    {
      LODWORD(v52) = 0;
      unum_setContext();
    }

    v44 = v50;
    if (v43 >= 2)
    {
      setTextAttribute(_:formatter:value:)(6, v20, 0xD000000000000012, 0x800000018147ED40);
      if (v44)
      {
        setTextAttribute(_:formatter:value:)(6, v20, 0xD00000000000001CLL, 0x800000018147ED60);
      }
    }

    goto LABEL_62;
  }

  v32 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd) + 48)];
  v34 = *v32;
  v33 = v32[1];
  v35 = v49;
  _s10Foundation32CurrencyFormatStyleConfigurationO10CollectionVWObTm_0(v15, v49, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
  v36 = v48;
  if ((*(v35 + 8) & 1) == 0)
  {
    if ((~*v35 & 0x7FF0000000000000) == 0)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (*v35 <= -2147483650.0)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (*v35 >= 2147483650.0)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    unum_setAttribute();
  }

  v37 = *(v35 + 32);
  v52 = *(v35 + 16);
  v53 = v37;
  v54[0] = *(v35 + 48);
  *(v54 + 9) = *(v35 + 57);
  setPrecision(_:formatter:)(&v52);
  v38 = *(v35 + 73);
  if (v38 != 2 && (v38 & 1) != 0)
  {
    unum_setAttribute();
  }

  v39 = *(v35 + 78);
  if (v39 != 2 && (v39 & 1) != 0)
  {
    unum_setAttribute();
  }

  v40 = v35 + *(v36 + 40);
  v41 = *(v40 + 8);
  if (v41 != 255)
  {
    v42 = *v40;
    if (v41)
    {
      unum_setDoubleAttribute();
    }

    else
    {
      if (v42 < 0xFFFFFFFF80000000)
      {
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
      }

      if (v42 > 0x7FFFFFFF)
      {
        goto LABEL_72;
      }

      unum_setAttribute();
    }
  }

  v46 = v50;
  setTextAttribute(_:formatter:value:)(5, v20, v34, v33);
  if (v46)
  {
    outlined destroy of CurrencyFormatStyleConfiguration.Collection(v35, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
  }

  v47 = *(v35 + 74);
  if (v47 != 2 && (v47 & 1) == 0)
  {
    unum_setAttribute();
  }

  outlined destroy of CurrencyFormatStyleConfiguration.Collection(v35, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
LABEL_62:
  type metadata accessor for ICULegacyNumberFormatter();
  result = swift_allocObject();
  *(result + 16) = v20;
  return result;
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)()
{
  type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  return implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)();
}

{
  return partial apply for implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)();
}

uint64_t outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of CurrencyFormatStyleConfiguration.Collection(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s10Foundation32CurrencyFormatStyleConfigurationO10CollectionVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CurrencyFormatStyleConfiguration.Collection(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t setPrecision(_:formatter:)(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 15);
  v3 = *(result + 13);
  v4 = *(result + 9);
  v5 = *(result + 23);
  v6 = *(result + 21);
  v7 = *(result + 24);
  v8 = *(result + 40);
  v9 = *(result + 56);
  if (v7 >> 1 == 0xFFFFFFFF && v8 <= 1 && v9 < 2)
  {
    return result;
  }

  v17 = *(result + 16);
  v10 = *(result + 8);
  if ((v9 & 0x80) == 0)
  {
    result = unum_setAttribute();
    if (v1 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v1 <= 0x7FFFFFFF)
    {
      result = unum_setAttribute();
      if (v17)
      {
        return result;
      }

      v11 = v10 | ((v4 | ((v3 | (v2 << 16)) << 32)) << 8);
      if (v11 >= 0xFFFFFFFF80000000)
      {
        if (v11 <= 0x7FFFFFFF)
        {
          goto LABEL_27;
        }

        goto LABEL_33;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_32;
  }

  v12 = *(result + 17);
  v16 = *(result + 32);
  v13 = *(result + 48);
  result = unum_setAttribute();
  if ((v10 & 1) == 0)
  {
    if (v1 < 0xFFFFFFFF80000000)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v1 > 0x7FFFFFFF)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    result = unum_setAttribute();
  }

  if ((v7 & 1) == 0)
  {
    v14 = v17 | ((v12 | ((v6 | (v5 << 16)) << 32)) << 8);
    if (v14 < 0xFFFFFFFF80000000)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v14 > 0x7FFFFFFF)
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    result = unum_setAttribute();
  }

  v15 = v13;
  if ((v8 & 1) == 0)
  {
    if (v16 < 0xFFFFFFFF80000000)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v16 > 0x7FFFFFFF)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    result = unum_setAttribute();
    v15 = v13;
  }

  if (v9)
  {
    return result;
  }

  if (v15 < 0xFFFFFFFF80000000)
  {
    goto LABEL_39;
  }

  if (v15 > 0x7FFFFFFF)
  {
LABEL_41:
    __break(1u);
    return result;
  }

LABEL_27:

  return unum_setAttribute();
}

void specialized Optional<A>.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 15);
  v3 = *(v0 + 13);
  v4 = *(v0 + 9);
  v5 = *(v0 + 56);
  v6 = v0[3];
  v7 = v0[5];
  if (v5 <= 1 && (v6 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL && v7 <= 1)
  {
    goto LABEL_20;
  }

  v12 = *(v0 + 21);
  v15 = *(v0 + 23);
  v16 = *(v0 + 17);
  v13 = v0[4];
  v14 = v0[6];
  v9 = *(v0 + 16);
  v10 = *(v0 + 8);
  Hasher._combine(_:)(1u);
  if ((v5 & 0x80) != 0)
  {
    MEMORY[0x1865CD060](1);
    if (v10)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v1);
    }

    if (v6)
    {
      Hasher._combine(_:)(0);
      if ((v7 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v9 | ((v16 | ((v12 | (v15 << 16)) << 32)) << 8));
      if ((v7 & 1) == 0)
      {
LABEL_15:
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v13);
        if (v5)
        {
          goto LABEL_20;
        }

LABEL_16:
        Hasher._combine(_:)(1u);
        v11 = v14;
        goto LABEL_17;
      }
    }

    Hasher._combine(_:)(0);
    if (v5)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  MEMORY[0x1865CD060](0);
  MEMORY[0x1865CD060](v1);
  if ((v9 & 1) == 0)
  {
    Hasher._combine(_:)(1u);
    v11 = v10 | ((v4 | ((v3 | (v2 << 16)) << 32)) << 8);
LABEL_17:
    MEMORY[0x1865CD060](v11);
    return;
  }

LABEL_20:
  Hasher._combine(_:)(0);
}

{
  if (v0[6])
  {
    Hasher._combine(_:)(0);
    return;
  }

  v1 = *v0;
  v2 = v0[2];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(v0 + 6);
  v6 = *(v0 + 2);
  Hasher._combine(_:)(1u);
  if (v6)
  {
    Hasher._combine(_:)(0);
    if ((v5 & 1) == 0)
    {
LABEL_5:
      Hasher._combine(_:)(1u);
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = v2;
      }

      else
      {
        v7 = 0;
      }

      MEMORY[0x1865CD090](v7);
      goto LABEL_14;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v1;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x1865CD090](v8);
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  Hasher._combine(_:)(0);
LABEL_14:
  MEMORY[0x1865CD060](v4);
  MEMORY[0x1865CD060](v3);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v40 = v3;
    v41 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v42 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v43)
      {
        outlined init with take of ICULegacyNumberFormatter.Signature(v25, v7);
        v26 = *(v10 + 56);
        v27 = v7;
        v28 = *(v26 + 8 * v23);
      }

      else
      {
        outlined init with copy of ICULegacyNumberFormatter.Signature(v25, v7);
        v29 = *(v10 + 56);
        v27 = v7;
        v28 = *(v29 + 8 * v23);
      }

      Hasher.init(_seed:)();
      v30 = v27;
      ICULegacyNumberFormatter.Signature.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = outlined init with take of ICULegacyNumberFormatter.Signature(v30, *(v11 + 48) + v24 * v19);
      *(*(v11 + 56) + 8 * v19) = v28;
      v7 = v30;
      ++*(v11 + 16);
      v10 = v41;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v5 = type metadata accessor for CombineIdentifier();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy7Combine0C10IdentifierVSo7NSTimerC10FoundationE14TimerPublisherC4SideVGMd);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v44 = v8;
    v45 = v5;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v25 = *(v9 + 48);
      v42 = *(v6 + 72);
      v43 = v21;
      v26 = v25 + v42 * v24;
      if (v39)
      {
        (*v40)(v44, v26, v45);
        v41 = *(*(v9 + 56) + 16 * v24);
      }

      else
      {
        (*v37)(v44, v26, v45);
        v41 = *(*(v9 + 56) + 16 * v24);
      }

      lazy protocol witness table accessor for type CombineIdentifier and conformance CombineIdentifier();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v9 = v38;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v44, v45);
      *(*(v11 + 56) + 16 * v19) = v41;
      ++*(v11 + 16);
      v16 = v43;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMd);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        outlined init with take of Any((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        outlined init with copy of Any(*(v9 + 56) + 32 * v23, v44);
      }

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = outlined init with take of Any(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd);
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation17RegexPatternCacheV3Key33_B716E24E4B0E6BAE66DBA40DF02722D8LLV17_StringProcessing0D0VyAI03AnyD6OutputVGGMd);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = (v5 + 16);
    v39 = v7;
    v40 = v5;
    v42 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(v7 + 48) + 24 * v22;
      v26 = *v24;
      v25 = *(v24 + 8);
      v27 = *(v24 + 16);
      v28 = v23 + *(v40 + 72) * v22;
      v43 = *(v40 + 72);
      if (v41)
      {
        (*v42)(v44, v28, v45);
      }

      else
      {
        (*v38)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      Hasher._combine(_:)(v27);
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 24 * v17;
      *v18 = v26;
      *(v18 + 8) = v25;
      *(v18 + 16) = v27;
      result = (*v42)(*(v9 + 56) + v43 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v39;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t outlined init with take of ICULegacyNumberFormatter.Signature(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NumberFormatStyleConfiguration.Collection(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t specialized ICULegacyNumberFormatter.parseAsDecimal<A>(_:upperBound:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = String.UTF16View.distance(from:to:)();
  if (v10)
  {
    v11 = v10;
    v12 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v10, 0);
    v13 = specialized Sequence._copySequenceContents(initializing:)(&v19, (v12 + 4), v11, a1, a2, a3, a4);
    swift_bridgeObjectRetain_n();

    if (v13 != v11)
    {
      __break(1u);
LABEL_16:
      __break(1u);
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  ufmt_open();
  if (v12[2] >> 31)
  {
    goto LABEL_16;
  }

  unum_parseToUFormattable();

  *a5 = 0;
  if (ufmt_getDecNumChars() && (v16 = MEMORY[0x1865CAEB0](), v17))
  {
    specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(v16, v17, 0x2EuLL, 0xE100000000000000, 0, &v19);

    v15 = v20;
    if (v20)
    {
      v18 = 0;
    }

    else
    {
      v18 = v19;
    }

    ufmt_close();
    result = v18;
  }

  else
  {
    ufmt_close();
    result = 0;
    v15 = 1;
  }

  LOBYTE(v19) = v15 & 1;
  return result;
}

unint64_t *specialized Sequence._copySequenceContents(initializing:)(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  if (!a2)
  {
    v9 = 0;
    v19 = a4;
LABEL_69:
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    result[3] = a7;
    result[4] = v19;
    return v9;
  }

  if (!a3)
  {
    v19 = a4;
LABEL_68:
    v9 = a3;
    goto LABEL_69;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = a5 >> 14;
    v11 = (a6 >> 59) & 1;
    if ((a7 & 0x1000000000000000) == 0)
    {
      LOBYTE(v11) = 1;
    }

    v12 = 4 << v11;
    v13 = a4 >> 14;
    v14 = a7 & 0xFFFFFFFFFFFFFFLL;
    v15 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
    if ((a7 & 0x2000000000000000) != 0)
    {
      v16 = HIBYTE(a7) & 0xF;
    }

    else
    {
      v16 = a6 & 0xFFFFFFFFFFFFLL;
    }

    if ((a7 & 0x2000000000000000) != 0)
    {
      v17 = (a7 & 0x4000000000000000) != 0;
    }

    else
    {
      v17 = a6 < 0;
    }

    v18 = a3 - 1;
    v19 = a4;
    while (1)
    {
      v20 = v19 >> 14;
      if (v19 >> 14 == v10)
      {
        goto LABEL_69;
      }

      v21 = v19;
      if ((v19 & 0xC) == v12)
      {
        v111 = v9;
        v119 = result;
        v95 = a3;
        v103 = a2;
        v79 = v13;
        v87 = a5;
        v25 = a4;
        v26 = v14;
        v66 = v16;
        v71 = v15;
        v27 = _StringGuts._slowEnsureMatchingEncoding(_:)(v19, a6, a7);
        v16 = v66;
        v15 = v71;
        v14 = v26;
        v13 = v79;
        a5 = v87;
        a3 = v95;
        a2 = v103;
        a4 = v25;
        v21 = v27;
        v9 = v111;
        result = v119;
        v20 = v21 >> 14;
        if (v21 >> 14 < v79)
        {
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          break;
        }
      }

      else if (v20 < v13)
      {
        goto LABEL_70;
      }

      if (v20 >= v10)
      {
        goto LABEL_70;
      }

      if ((a7 & 0x1000000000000000) != 0)
      {
        v112 = v9;
        v120 = result;
        v96 = a3;
        v104 = a2;
        v80 = v13;
        v88 = a5;
        v28 = a4;
        v30 = v14;
        v67 = v16;
        v72 = v15;
        v29 = String.UTF16View._foreignSubscript(position:)();
        v16 = v67;
        v15 = v72;
        v14 = v30;
        v13 = v80;
        a5 = v88;
        a3 = v96;
        a2 = v104;
        a4 = v28;
        LOWORD(v30) = v29;
        v9 = v112;
        result = v120;
        goto LABEL_41;
      }

      if (v21)
      {
        v22 = v21 >> 16;
        if ((a7 & 0x2000000000000000) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v113 = v9;
        v121 = result;
        v97 = a3;
        v105 = a2;
        v81 = v13;
        v89 = a5;
        v31 = a4;
        v63 = v14;
        v68 = v16;
        v73 = v15;
        v32 = _StringGuts.scalarAlignSlow(_:)(v21, a6, a7);
        v16 = v68;
        v15 = v73;
        v14 = v63;
        v13 = v81;
        a5 = v89;
        a3 = v97;
        a2 = v105;
        a4 = v31;
        v33 = v32;
        v9 = v113;
        result = v121;
        v22 = v33 >> 16;
        if ((a7 & 0x2000000000000000) != 0)
        {
LABEL_27:
          v127 = a6;
          v128 = v14;
          v24 = &v127 + v22;
          goto LABEL_28;
        }
      }

      v23 = v15;
      if ((a6 & 0x1000000000000000) == 0)
      {
        v116 = v9;
        v124 = result;
        v100 = a3;
        v108 = a2;
        v84 = v13;
        v92 = a5;
        v62 = a4;
        v64 = v14;
        v69 = v16;
        v76 = v15;
        v54 = _StringObject.sharedUTF8.getter();
        v16 = v69;
        v15 = v76;
        a4 = v62;
        v14 = v64;
        v13 = v84;
        a5 = v92;
        a3 = v100;
        a2 = v108;
        v23 = v54;
        v9 = v116;
        result = v124;
      }

      v24 = (v23 + v22);
LABEL_28:
      LODWORD(v30) = *v24;
      if (*v24 < 0)
      {
        v34 = (__clz(v30 ^ 0xFF) - 24);
        if (v34 > 2)
        {
          if (v34 == 3)
          {
            v35 = v24[1];
            v36 = v24[2];
            v37 = ((v30 & 0xF) << 12) | ((v35 & 0x3F) << 6);
          }

          else
          {
            v38 = v24[1];
            v39 = v24[2];
            v36 = v24[3];
            v37 = ((v30 & 0xF) << 18) | ((v38 & 0x3F) << 12) | ((v39 & 0x3F) << 6);
          }

          LODWORD(v30) = v37 & 0xFFFFFFC0 | v36 & 0x3F;
        }

        else if (v34 != 1)
        {
          LODWORD(v30) = v24[1] & 0x3F | ((v30 & 0x1F) << 6);
        }
      }

      if ((v21 & 0xC000) == 0x4000)
      {
        if (v30 < 0x10000)
        {
          goto LABEL_73;
        }

        LOWORD(v30) = v30 & 0x3FF | 0xDC00;
      }

      else if (WORD1(v30))
      {
        LODWORD(v30) = ((v30 + 67043328) >> 10) - 10240;
      }

LABEL_41:
      if ((v19 & 0xC) == v12)
      {
        v114 = v9;
        v122 = result;
        v44 = v19;
        v98 = a3;
        v106 = a2;
        v82 = v13;
        v90 = a5;
        v45 = a4;
        v46 = v14;
        v74 = v15;
        v47 = v16;
        v48 = _StringGuts._slowEnsureMatchingEncoding(_:)(v44, a6, a7);
        v16 = v47;
        v15 = v74;
        v13 = v82;
        v14 = v46;
        a3 = v98;
        a2 = v106;
        a4 = v45;
        a5 = v90;
        v19 = v48;
        v9 = v114;
        result = v122;
      }

      v40 = v19 >> 16;
      if (v19 >> 16 >= v16)
      {
        goto LABEL_71;
      }

      if ((a7 & 0x1000000000000000) != 0)
      {
        v115 = v9;
        v123 = result;
        v49 = v19;
        v99 = a3;
        v107 = a2;
        v83 = v13;
        v91 = a5;
        v50 = a4;
        v51 = v14;
        v75 = v15;
        v52 = v16;
        v53 = MEMORY[0x1865CB1C0](v49, a6, a7);
        v16 = v52;
        v15 = v75;
        v13 = v83;
        v14 = v51;
        a3 = v99;
        a2 = v107;
        a4 = v50;
        a5 = v91;
        v19 = v53;
        v9 = v115;
        result = v123;
        goto LABEL_62;
      }

      if (v17)
      {
        v19 = (v19 & 0xFFFFFFFFFFFF0000) + 65549;
        goto LABEL_62;
      }

      if ((v19 & 0xC001) != 0)
      {
        if ((a7 & 0x2000000000000000) == 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v117 = v9;
        v125 = result;
        v55 = v19;
        v101 = a3;
        v109 = a2;
        v85 = v13;
        v93 = a5;
        v56 = a4;
        v57 = v14;
        v77 = v15;
        v58 = v16;
        v59 = _StringGuts.scalarAlignSlow(_:)(v55, a6, a7);
        v16 = v58;
        v15 = v77;
        v13 = v85;
        v14 = v57;
        a3 = v101;
        a2 = v109;
        a4 = v56;
        a5 = v93;
        v19 = v59;
        v9 = v117;
        result = v125;
        v40 = v19 >> 16;
        if ((a7 & 0x2000000000000000) == 0)
        {
LABEL_49:
          v41 = v15;
          if ((a6 & 0x1000000000000000) == 0)
          {
            v118 = v9;
            v126 = result;
            v102 = a3;
            v110 = a2;
            v86 = v13;
            v94 = a5;
            v60 = a4;
            v65 = v14;
            v70 = v16;
            v78 = v15;
            v61 = _StringObject.sharedUTF8.getter();
            v16 = v70;
            v15 = v78;
            v14 = v65;
            v13 = v86;
            a5 = v94;
            a3 = v102;
            a2 = v110;
            a4 = v60;
            v41 = v61;
            v9 = v118;
            result = v126;
          }

          v42 = *(v41 + v40);
          if ((v42 & 0x80) == 0)
          {
LABEL_60:
            v43 = 1;
            goto LABEL_61;
          }

          goto LABEL_52;
        }
      }

      v127 = a6;
      v128 = v14;
      v42 = *(&v127 + v40);
      if ((v42 & 0x80) == 0)
      {
        goto LABEL_60;
      }

LABEL_52:
      LODWORD(v43) = __clz(v42 ^ 0xFF) - 24;
      if (v43 != 4)
      {
        v43 = v43;
        goto LABEL_61;
      }

      if ((v19 & 0xC000) != 0)
      {
        v43 = 4;
LABEL_61:
        v19 = (v19 + (v43 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
        goto LABEL_62;
      }

      v19 = v19 & 0xFFFFFFFFFFFF0000 | 0x4004;
LABEL_62:
      *(a2 + 2 * v9) = v30;
      if (v18 == v9)
      {
        goto LABEL_68;
      }

      if (__OFADD__(++v9, 1))
      {
        goto LABEL_72;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of ICULegacyNumberFormatter.Signature(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized static ICULegacyNumberFormatter.NumberFormatType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - v8;
  v10 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeO_AEtMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v46 - v23;
  v26 = (&v46 + *(v25 + 56) - v23);
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(a1, &v46 - v23, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v48, v26, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v24, v18, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v28 = type metadata accessor for NumberFormatStyleConfiguration.Collection;
        v29 = v18;
        goto LABEL_20;
      }

      v40 = v26;
      v41 = v46;
      _s10Foundation32CurrencyFormatStyleConfigurationO10CollectionVWObTm_0(v40, v46, type metadata accessor for NumberFormatStyleConfiguration.Collection);
      v42 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v18, v41);
      outlined destroy of CurrencyFormatStyleConfiguration.Collection(v41, type metadata accessor for NumberFormatStyleConfiguration.Collection);
      v43 = v18;
    }

    else
    {
      _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v24, v21, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
      if (swift_getEnumCaseMultiPayload())
      {
        v28 = type metadata accessor for NumberFormatStyleConfiguration.Collection;
        v29 = v21;
LABEL_20:
        outlined destroy of CurrencyFormatStyleConfiguration.Collection(v29, v28);
        goto LABEL_21;
      }

      _s10Foundation32CurrencyFormatStyleConfigurationO10CollectionVWObTm_0(v26, v9, type metadata accessor for NumberFormatStyleConfiguration.Collection);
      v42 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v21, v9);
      outlined destroy of CurrencyFormatStyleConfiguration.Collection(v9, type metadata accessor for NumberFormatStyleConfiguration.Collection);
      v43 = v21;
    }

    outlined destroy of CurrencyFormatStyleConfiguration.Collection(v43, type metadata accessor for NumberFormatStyleConfiguration.Collection);
LABEL_25:
    outlined destroy of CurrencyFormatStyleConfiguration.Collection(v24, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
    return v42 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v24, v15, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd) + 48);
    v32 = *&v15[v30];
    v31 = *&v15[v30 + 8];
    if (swift_getEnumCaseMultiPayload() != 2)
    {

      v28 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection;
      v29 = v15;
      goto LABEL_20;
    }

    v33 = v26 + v30;
    v35 = *(v26 + v30);
    v34 = *(v33 + 1);
    v36 = v47;
    _s10Foundation32CurrencyFormatStyleConfigurationO10CollectionVWObTm_0(v26, v47, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
    v37 = static CurrencyFormatStyleConfiguration.Collection.== infix(_:_:)(v15, v36);
    outlined destroy of CurrencyFormatStyleConfiguration.Collection(v15, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
    if (v37)
    {
      if (v32 == v35 && v31 == v34)
      {

        outlined destroy of CurrencyFormatStyleConfiguration.Collection(v36, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
LABEL_30:
        outlined destroy of CurrencyFormatStyleConfiguration.Collection(v24, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
        v42 = 1;
        return v42 & 1;
      }

      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined destroy of CurrencyFormatStyleConfiguration.Collection(v36, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
      if (v39)
      {
        goto LABEL_30;
      }
    }

    else
    {
      outlined destroy of CurrencyFormatStyleConfiguration.Collection(v36, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
    }

    outlined destroy of CurrencyFormatStyleConfiguration.Collection(v24, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
    goto LABEL_22;
  }

  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v24, v12, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v44 = *v26;
    v50 = *v12;
    v49 = v44;
    v42 = specialized static DescriptiveNumberFormatConfiguration.Collection.== infix(_:_:)(&v50, &v49);
    goto LABEL_25;
  }

LABEL_21:
  outlined destroy of (ICULegacyNumberFormatter.NumberFormatType, ICULegacyNumberFormatter.NumberFormatType)(v24);
LABEL_22:
  v42 = 0;
  return v42 & 1;
}

uint64_t outlined destroy of ICULegacyNumberFormatter.Signature(uint64_t a1)
{
  v2 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Measurement<>.FormatStyle.init(width:locale:usage:numberFormatStyle:)@<X0>(char *a1@<X0>, _OWORD *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a3;
  v10 = type metadata accessor for Measurement<>.FormatStyle();
  v11 = v10[8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  v13 = v10[9];
  *(a5 + v13) = 14;
  *(a5 + v10[10]) = 0;
  *a5 = v8;
  *(a5 + 8) = *a2;
  *(a5 + v13) = v9;

  return outlined assign with take of FloatingPointFormatStyle<Double>?(a4, a5 + v11);
}

uint64_t static Measurement.== infix<A, B>(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  if (static NSObject.== infix(_:_:)())
  {
    return v3 == v5;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v7 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v8 = result;
      ObjCClassFromObject = swift_getObjCClassFromObject();
      v10 = v2;
      v11 = v4;
      v12 = [ObjCClassFromObject baseUnit];
      v13 = [swift_getObjCClassFromObject() baseUnit];
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {
        v15 = [v7 converter];
        [v15 baseUnitValueFromValue_];
        v3 = v16;

        v17 = [v8 converter];
        [v17 baseUnitValueFromValue_];
        v5 = v18;

        return v3 == v5;
      }

      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TimeZone(uint64_t a1)
{
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 120))(a1, ObjectType, v3);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _TimeZoneGMTICU()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v0);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0x2820544D47;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed NSURLResponse?, @guaranteed Error?) -> ()(uint64_t a1, id a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  if (a2)
  {
    v8 = a2;
    a2 = specialized Data.init(referencing:)(v8);
    v10 = v9;
  }

  else
  {
    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(a2, v10, a3, a4);

  outlined consume of Data?(a2, v10);
}

uint64_t _AttributedStringFromMarkdownCreatorConcrete.append(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _AttributedStringFromMarkdownCreatorConcrete.processAttributes(_:)(a3, &v6);
  v3 = v6;

  BigString.init(_:)();
  AttributedString.init(_:attributes:)(v7, v3, *(&v3 + 1), &v5);
  specialized AttributedString.append<A>(_:)(v5);
}

uint64_t closure #1 in closure #1 in closure #1 in NSURLSession.data(for:delegate:)(uint64_t result, unint64_t a2, void *a3, id a4)
{
  if (a4)
  {
    v4 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataV_So13NSURLResponseCts5Error_pGMd);
    return CheckedContinuation.resume(throwing:)();
  }

  if (a2 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  outlined copy of Data?(result, a2);
  v6 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataV_So13NSURLResponseCts5Error_pGMd);
  return CheckedContinuation.resume(returning:)();
}

void AttributedString.Guts.replaceSubrange<A>(_:with:)(void *a1, uint64_t *a2, ValueMetadata *a3, uint64_t a4)
{
  v5 = v4;
  (*(a4 + 64))(&v50, a3, a4);
  v10 = *(v50 + 56);
  v11 = *(v50 + 64);
  v31 = *(v50 + 24);
  v33 = *(v50 + 40);
  swift_unknownObjectRetain();
  outlined destroy of AttributedString.UnicodeScalarView(&v50);
  v40 = v51;
  v41 = v52;
  v42 = v53;
  v43 = v54;
  v37[0] = v31;
  v37[1] = v33;
  v38 = v10;
  v39 = v11;
  v12 = *(v5 + 40);
  v13 = *(v5 + 56);
  v47 = *(v5 + 24);
  v48 = v12;
  v49 = v13;
  swift_unknownObjectRetain();
  BigString.UnicodeScalarView.subscript.getter();
  swift_unknownObjectRelease();
  v14 = BigSubstring.UnicodeScalarView.isIdentical(to:)();
  outlined destroy of BigSubstring.UnicodeScalarView(v36);
  v15 = v40 >> 11;
  v16 = v42 >> 11;
  if (a3 == &type metadata for AttributedString || a3 == &type metadata for AttributedSubstring)
  {
    v17 = *a2;
  }

  else
  {
    (*(a4 + 56))(v35, a3, a4);
    v17 = *&v35[0];
  }

  v18 = *a1 >> 11;
  v19 = a1[4];
  v20 = v19 >> 11;
  if (v14)
  {
    specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(*a1 >> 11, v19 >> 11, v17, v15, v16);
    v21 = v18;
    v22 = v20;
    v23 = 0;
LABEL_11:
    AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v21, v22, v23, 0);
    outlined destroy of BigSubstring.UnicodeScalarView(v37);

    return;
  }

  v32 = AttributedString.Guts.enforceAttributeConstraintsBeforeMutation(to:)(*a1 >> 11, v19 >> 11);
  v34 = v24;
  AttributedString.Guts._prepareTrackedIndicesUpdate(mutationRange:)(a1);
  v25 = *(v5 + 40);
  v44 = *(v5 + 24);
  v45 = v25;
  v46 = *(v5 + 56);
  v26 = BigString.UTF8View.count.getter();
  outlined init with copy of BigSubstring.UnicodeScalarView(v37, v35);
  v27 = BigString.unicodeScalars.modify();
  BigString.UnicodeScalarView.replaceSubrange(_:with:)();
  v27(v35, 0);
  specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v18, v20, v17, v15, v16);
  v28 = *(v5 + 40);
  v35[0] = *(v5 + 24);
  v35[1] = v28;
  v35[2] = *(v5 + 56);
  v29 = BigString.UTF8View.count.getter();
  v30 = v29 - v26;
  if (__OFSUB__(v29, v26))
  {
    __break(1u);
    goto LABEL_13;
  }

  AttributedString.Guts._finalizeTrackedIndicesUpdate(mutationStartOffset:isInsertion:utf8LengthDelta:)(v18, v18 == v20, v30);
  v22 = v34 + v30;
  if (__OFADD__(v34, v30))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = v32;
  if (v22 >= v32)
  {
    v23 = 1;
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
}

uint64_t AttributedString.init<A>(_:)@<X0>(__int128 *a1@<X0>, ValueMetadata *a2@<X1>, void (**a3)(void *__return_ptr, void, void)@<X2>, uint64_t *a4@<X8>)
{
  if (a2 != &type metadata for AttributedString)
  {
    if (a2 != &type metadata for AttributedSubstring)
    {
      (a3)[7](v67, a2, a3);
      v8 = *&v67[0];
      (a3)[4](v67, a2, a3);
      (a3)[5](&v57, a2, a3);
      v68 = v67[0];
      v69 = v67[1];
      v70 = v57;
      v71 = v58;
      v9 = *(v8 + 40);
      v72 = *(v8 + 24);
      v73 = v9;
      v74 = *(v8 + 56);
      swift_unknownObjectRetain();

      BigString.UnicodeScalarView.subscript.getter();
      swift_unknownObjectRelease();

      outlined destroy of BigSubstring.UnicodeScalarView(&v57);
      *v55 = v8;
      *&v55[24] = v61;
      *&v55[40] = v62;
      *&v55[56] = v63;
      *&v55[8] = v60;
      v56 = 0;
      v10 = *(v8 + 40);
      v67[7] = *(v8 + 24);
      v67[8] = v10;
      v67[9] = *(v8 + 56);
      outlined init with copy of AttributedSubstring(v55, v67);
      swift_unknownObjectRetain();
      BigString.UnicodeScalarView.subscript.getter();
      swift_unknownObjectRelease();
      BigString.init(_:)();
      v11 = *(v8 + 72);
      v12 = *(v8 + 80);
      v13 = *(v8 + 88);
      v14 = *&v55[8] >> 11;
      v15 = *&v55[40] >> 11;
      swift_unknownObjectRetain();
      v16 = specialized Rope.extract<A>(from:to:in:)(v14, v15, v11, v12, v13);
      v18 = v17;
      v20 = v19;
      v22 = v21;
      swift_unknownObjectRelease();
      outlined destroy of AttributedSubstring(v55);
      type metadata accessor for AttributedString.Guts();
      v23 = swift_allocObject();
      v24 = BigString.isEmpty.getter() & 1;
      specialized Rope._endPath.getter(v16);
      if (v16)
      {
        v25 = v20 == 0;
      }

      else
      {
        v25 = 1;
      }

      v26 = v25;
      if (v26 == v24)
      {
        if (one-time initialization token for _nextVersion == -1)
        {
LABEL_11:
          add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
          v28 = v65;
          *(v23 + 24) = v64;
          *(v23 + 16) = add_explicit;
          *(v23 + 40) = v28;
          *(v23 + 56) = v66;
          *(v23 + 72) = v16;
          *(v23 + 80) = v18;
          *(v23 + 88) = v20;
          *(v23 + 96) = v22;
          *(v23 + 104) = MEMORY[0x1E69E7CC0];
          v29 = v55;
LABEL_22:
          outlined destroy of AttributedSubstring(v29);
          goto LABEL_23;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_11;
    }

    v30 = a1[4];
    v60 = a1[3];
    v61 = v30;
    v31 = a1[2];
    v32 = a1[1];
    v57 = *a1;
    v58 = v32;
    v59 = v31;
    v33 = v57;
    v34 = *(a1 + 24);
    *v55 = *(a1 + 8);
    *&v55[16] = v34;
    v35 = *(a1 + 56);
    *&v55[32] = *(a1 + 40);
    *&v55[48] = v35;
    v36 = *(v57 + 40);
    v68 = *(v57 + 24);
    v69 = v36;
    v70 = *(v57 + 56);
    outlined init with copy of AttributedSubstring(&v57, v67);
    swift_unknownObjectRetain();
    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    BigString.init(_:)();
    v37 = v33[9];
    v38 = v33[10];
    v39 = v33[11];
    v40 = *(&v57 + 1) >> 11;
    v41 = *(&v59 + 1) >> 11;
    swift_unknownObjectRetain();
    v42 = specialized Rope.extract<A>(from:to:in:)(v40, v41, v37, v38, v39);
    v44 = v43;
    v46 = v45;
    v48 = v47;
    swift_unknownObjectRelease();
    type metadata accessor for AttributedString.Guts();
    v23 = swift_allocObject();
    v49 = BigString.isEmpty.getter() & 1;
    specialized Rope._endPath.getter(v42);
    if (v42)
    {
      v50 = v46 == 0;
    }

    else
    {
      v50 = 1;
    }

    v51 = v50;
    if (v51 == v49)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_21:
        v52 = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v53 = v73;
        *(v23 + 24) = v72;
        *(v23 + 16) = v52;
        *(v23 + 40) = v53;
        *(v23 + 56) = v74;
        *(v23 + 72) = v42;
        *(v23 + 80) = v44;
        *(v23 + 88) = v46;
        *(v23 + 96) = v48;
        *(v23 + 104) = MEMORY[0x1E69E7CC0];
        v29 = &v57;
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_21;
  }

  v23 = *a1;

LABEL_23:
  result = (*(a2[-1].Description + 1))(a1, a2);
  *a4 = v23;
  return result;
}

void specialized AttributedString.replaceSubrange<A, B>(_:with:)(_OWORD *a1, uint64_t *a2, ValueMetadata *a3, uint64_t a4)
{
  v5 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v4;
  v12 = &unk_1EA7B2000;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = a4;
    v13 = *(v11 + 40);
    v30 = *(v11 + 24);
    v31 = v13;
    v32 = *(v11 + 56);
    v14 = *(v11 + 72);
    v15 = *(v11 + 80);
    v17 = *(v11 + 88);
    v16 = *(v11 + 96);
    type metadata accessor for AttributedString.Guts();
    v11 = swift_allocObject();
    v18 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v30, v29);
    v19 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v19);
    if (v14)
    {
      v20 = v17 == 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = v20;
    if (v21 == v18)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_10:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v23 = v31;
        *(v11 + 24) = v30;
        *(v11 + 16) = add_explicit;
        *(v11 + 40) = v23;
        *(v11 + 56) = v32;
        *(v11 + 72) = v14;
        *(v11 + 80) = v15;
        *(v11 + 88) = v17;
        *(v11 + 96) = v16;
        *(v11 + 104) = MEMORY[0x1E69E7CC0];

        *v5 = v11;
        a4 = v27;
        v12 = &unk_1EA7B2000;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  if (v12[147] != -1)
  {
    swift_once();
  }

  *(v11 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v24 = *(v11 + 40);
  v29[0] = *(v11 + 24);
  v29[1] = v24;
  v29[2] = *(v11 + 56);
  BigString.startIndex.getter();
  BigString.endIndex.getter();
  v25 = a1[1];
  v28[0] = *a1;
  v28[1] = v25;
  v26 = *(a1 + 56);
  v28[2] = *(a1 + 40);
  v28[3] = v26;
  AttributedString.Guts.replaceSubrange<A>(_:with:)(v28, a2, a3, a4);
}

void AttributedString.append<A>(_:)(uint64_t *a1, ValueMetadata *a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  v23 = *(*v3 + 24);
  v24 = v8;
  v25 = *(v7 + 56);
  v9 = BigString.endIndex.getter();
  v10 = *(v7 + 16);
  *&v14 = v9;
  *(&v14 + 1) = v11;
  v15 = v12;
  v16 = v13;
  v17 = v10;
  v18 = v9;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v10;
  specialized AttributedString.replaceSubrange<A, B>(_:with:)(&v14, a1, a2, a3);
}

unint64_t instantiation function for generic protocol witness table for AttributedString(uint64_t a1)
{
  *(a1 + 16) = lazy protocol witness table accessor for type AttributedString and conformance AttributedString();
  result = lazy protocol witness table accessor for type AttributedString and conformance AttributedString();
  *(a1 + 24) = result;
  return result;
}

uint64_t @objc _AttributedStringFromMarkdownCreatorConcrete.finalize(withLanguageIdentifier:)(void *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = a1;
  _AttributedStringFromMarkdownCreatorConcrete.finalize(withLanguageIdentifier:)(v4, v6);
}

void *_AttributedStringFromMarkdownCreatorConcrete.finalize(withLanguageIdentifier:)(void *result, uint64_t a2)
{
  if (!a2)
  {
    return result;
  }

  v4 = v2;
  v5 = a2;
  v6 = MEMORY[0x1E69E7CC8];
  v139 = MEMORY[0x1E69E7CC8];
  v140 = MEMORY[0x1E69E7CD0];
  v135[3] = MEMORY[0x1E69E6158];
  v135[4] = MEMORY[0x1E69E6168];
  v135[0] = result;
  v135[1] = a2;
  v136 = xmmword_1812187D0;
  v137 = 1;
  v138 = 0;
  outlined init with copy of FloatingPointRoundingRule?(v135, &v130, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  if (*(&v131 + 1))
  {
    v127 = v132;
    v128 = v133;
    v129 = v134;
    v125 = v130;
    v126 = v131;
    outlined init with copy of AttributedString._AttributeValue(&v125, &v120);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v141 = v6;
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(0x6175676E614C534ELL, 0xEA00000000006567);
    v10 = *(v6 + 16);
    v11 = (v9 & 1) == 0;
    v12 = __OFADD__(v10, v11);
    v13 = v10 + v11;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      v5 = v9;
      if (*(v6 + 24) < v13)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, isUniquelyReferenced_nonNull_native);
        v14 = v141;
        v8 = specialized __RawDictionaryStorage.find<A>(_:)(0x6175676E614C534ELL, 0xEA00000000006567);
        if ((v5 & 1) != (v15 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_7;
        }

LABEL_12:
        if (v5)
        {
          goto LABEL_13;
        }

        goto LABEL_31;
      }

      v3 = MEMORY[0x1E69E7CC8];
      if (isUniquelyReferenced_nonNull_native)
      {
        v14 = MEMORY[0x1E69E7CC8];
        goto LABEL_12;
      }
    }

    v113 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
    v31 = static _DictionaryStorage.copy(original:)();
    v14 = v31;
    v32 = *(v3 + 16);
    if (v32)
    {
      result = (v31 + 64);
      v33 = ((1 << *(v14 + 32)) + 63) >> 6;
      if (v14 != v3 || result >= v3 + 8 * v33 + 64)
      {
        result = memmove(result, (v3 + 64), 8 * v33);
      }

      v34 = 0;
      *(v14 + 16) = v32;
      v35 = 1 << *(v3 + 32);
      v36 = -1;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      v37 = (v35 + 63) >> 6;
      v38 = v36 & *(v3 + 64);
      if (v38)
      {
        do
        {
          v117 = (v38 - 1) & v38;
          v39 = __clz(__rbit64(v38)) | (v34 << 6);
LABEL_28:
          v42 = 16 * v39;
          v43 = (*(v3 + 48) + 16 * v39);
          v44 = v43[1];
          v115 = *v43;
          v45 = 72 * v39;
          outlined init with copy of AttributedString._AttributeValue(*(v3 + 56) + 72 * v39, &v130);
          v46 = (*(v14 + 48) + v42);
          *v46 = v115;
          v46[1] = v44;
          v47 = *(v14 + 56) + v45;
          *v47 = v130;
          v48 = v131;
          v49 = v132;
          v50 = v133;
          *(v47 + 64) = v134;
          *(v47 + 32) = v49;
          *(v47 + 48) = v50;
          *(v47 + 16) = v48;

          v38 = v117;
        }

        while (v117);
      }

      while (1)
      {
        v40 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v40 >= v37)
        {
          goto LABEL_30;
        }

        v41 = *(v3 + 8 * v40 + 64);
        ++v34;
        if (v41)
        {
          v117 = (v41 - 1) & v41;
          v39 = __clz(__rbit64(v41)) | (v40 << 6);
          v34 = v40;
          goto LABEL_28;
        }
      }

      __break(1u);
      goto LABEL_83;
    }

LABEL_30:

    v8 = v113;
    if (v5)
    {
LABEL_13:
      v24 = *(v14 + 56) + 72 * v8;
      v130 = *v24;
      v25 = *(v24 + 16);
      v26 = *(v24 + 32);
      v27 = *(v24 + 48);
      v134 = *(v24 + 64);
      v132 = v26;
      v133 = v27;
      v131 = v25;
      v28 = v121;
      v29 = v122;
      v30 = v123;
      *(v24 + 64) = v124;
      *(v24 + 32) = v29;
      *(v24 + 48) = v30;
      *v24 = v120;
      *(v24 + 16) = v28;
      outlined destroy of AttributedString._AttributeValue(&v125);
      goto LABEL_32;
    }

LABEL_31:
    specialized _NativeDictionary._insert(at:key:value:)(v8, 0x6175676E614C534ELL, 0xEA00000000006567, &v120, v14);
    outlined destroy of AttributedString._AttributeValue(&v125);
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0;
    goto LABEL_32;
  }

LABEL_7:

  outlined destroy of TermOfAddress?(&v130, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(0x6175676E614C534ELL, 0xEA00000000006567);
  if ((v17 & 1) == 0)
  {
    v134 = 0;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    goto LABEL_33;
  }

  v18 = v16;
  v19 = MEMORY[0x1E69E7CC8];
  v14 = MEMORY[0x1E69E7CC8];
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
  v91 = static _DictionaryStorage.copy(original:)();
  v14 = v91;
  v92 = *(v19 + 16);
  if (v92)
  {
    result = (v91 + 64);
    v93 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v19 || result >= v19 + 8 * v93 + 64)
    {
      result = memmove(result, (v19 + 64), 8 * v93);
    }

    v94 = 0;
    *(v14 + 16) = v92;
    v95 = 1 << *(v19 + 32);
    v96 = -1;
    if (v95 < 64)
    {
      v96 = ~(-1 << v95);
    }

    v97 = (v95 + 63) >> 6;
    v98 = v96 & *(v19 + 64);
    if (v98)
    {
      do
      {
        v119 = (v98 - 1) & v98;
        v99 = __clz(__rbit64(v98)) | (v94 << 6);
LABEL_79:
        v102 = 16 * v99;
        v103 = (*(v19 + 48) + 16 * v99);
        v104 = v103[1];
        v116 = *v103;
        v105 = 72 * v99;
        outlined init with copy of AttributedString._AttributeValue(*(v19 + 56) + 72 * v99, &v130);
        v106 = (*(v14 + 48) + v102);
        *v106 = v116;
        v106[1] = v104;
        v107 = *(v14 + 56) + v105;
        *v107 = v130;
        v108 = v131;
        v109 = v132;
        v110 = v133;
        *(v107 + 64) = v134;
        *(v107 + 32) = v109;
        *(v107 + 48) = v110;
        *(v107 + 16) = v108;

        v98 = v119;
      }

      while (v119);
    }

    while (1)
    {
      v100 = v94 + 1;
      if (__OFADD__(v94, 1))
      {
        break;
      }

      if (v100 >= v97)
      {
        goto LABEL_81;
      }

      v101 = *(v19 + 8 * v100 + 64);
      ++v94;
      if (v101)
      {
        v119 = (v101 - 1) & v101;
        v99 = __clz(__rbit64(v101)) | (v100 << 6);
        v94 = v100;
        goto LABEL_79;
      }
    }

LABEL_83:
    __break(1u);
    return result;
  }

LABEL_81:

LABEL_9:

  v20 = *(v14 + 56) + 72 * v18;
  v130 = *v20;
  v22 = *(v20 + 32);
  v21 = *(v20 + 48);
  v23 = *(v20 + 64);
  v131 = *(v20 + 16);
  v132 = v22;
  v134 = v23;
  v133 = v21;
  specialized _NativeDictionary._delete(at:)(v18, v14);
LABEL_32:
  v139 = v14;
LABEL_33:
  AttributedString._AttributeStorage._attributeModified(_:old:new:)(0x6175676E614C534ELL, 0xEA00000000006567, &v130, v135);
  outlined destroy of TermOfAddress?(v135, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  outlined destroy of TermOfAddress?(&v130, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  v118 = v139;
  v51 = direct field offset for _AttributedStringFromMarkdownCreatorConcrete.str;
  v52 = &static AttributedString.Guts._nextVersion;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v53 = *(v4 + v51);
    v54 = *(v53 + 24);
    v55 = *(v53 + 56);
    v131 = *(v53 + 40);
    v132 = v55;
    v130 = v54;
    v56 = *(v53 + 72);
    v57 = *(v53 + 80);
    v58 = *(v53 + 88);
    v59 = *(v53 + 96);
    type metadata accessor for AttributedString.Guts();
    v60 = swift_allocObject();
    v61 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v130, v135);
    v62 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v62);
    if (v56)
    {
      v63 = v58 == 0;
    }

    else
    {
      v63 = 1;
    }

    v64 = v63;
    if (v64 == v61)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_42:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v66 = v131;
        *(v60 + 24) = v130;
        *(v60 + 16) = add_explicit;
        *(v60 + 40) = v66;
        *(v60 + 56) = v132;
        *(v60 + 72) = v56;
        *(v60 + 80) = v57;
        v67 = MEMORY[0x1E69E7CC0];
        *(v60 + 88) = v58;
        *(v60 + 96) = v59;
        *(v60 + 104) = v67;
        *(v4 + v51) = v60;

        goto LABEL_43;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_42;
  }

LABEL_43:
  v68 = *(v4 + v51);
  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    *(v68 + 16) = atomic_fetch_add_explicit(v52, 1uLL, memory_order_relaxed);
    v4 = *(v4 + v51);
    v69 = *(v4 + 24);
    v70 = *(v4 + 56);
    v126 = *(v4 + 40);
    v127 = v70;
    v125 = v69;
    v71 = *(v4 + 56);
    v72 = *(v4 + 64);
    v111 = *(v4 + 40);
    v112 = *(v4 + 24);
    BigString.startIndex.getter();
    BigString.endIndex.getter();
    v121 = v111;
    v120 = v112;
    *&v122 = v71;
    *(&v122 + 1) = v72;
    v144[0] = v125;
    v144[1] = v126;
    v145 = v127;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v144, v135);
    v73 = BigString.UnicodeScalarView.index(roundingDown:)();
    outlined destroy of BigString(&v125);
    v74 = *(v4 + 40);
    v141 = *(v4 + 24);
    v142 = v74;
    v143 = *(v4 + 56);
    swift_unknownObjectRetain();
    v75 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v68 = v73 >> 11;
    v76 = v75 >> 11;

    specialized AttributedString._InternalRunsSlice.updateEach(with:)(v4, v73 >> 11, v76, v118, 1);

    if ((specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v118) & 1) == 0)
    {
      break;
    }

    v51 = v118 + 64;
    v77 = 1 << *(v118 + 32);
    v78 = -1;
    if (v77 < 64)
    {
      v78 = ~(-1 << v77);
    }

    v79 = v78 & *(v118 + 64);
    v52 = ((v77 + 63) >> 6);

    v80 = 0;
    v81 = MEMORY[0x1E69E7CC0];
    if (!v79)
    {
      goto LABEL_50;
    }

    do
    {
LABEL_48:
      while (1)
      {
        v82 = __clz(__rbit64(v79));
        v79 &= v79 - 1;
        outlined init with copy of AttributedString._AttributeValue(*(v118 + 56) + 72 * (v82 | (v80 << 6)), v135);
        v83 = v136;
        outlined copy of AttributedString.AttributeRunBoundaries?(v136, *(&v136 + 1));
        outlined destroy of AttributedString._AttributeValue(v135);
        if (*(&v83 + 1) != 1)
        {
          break;
        }

        if (!v79)
        {
          goto LABEL_50;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v81 + 2) + 1, 1, v81);
      }

      v86 = *(v81 + 2);
      v85 = *(v81 + 3);
      v87 = v86 + 1;
      if (v86 >= v85 >> 1)
      {
        v114 = v86 + 1;
        v88 = v81;
        v89 = *(v81 + 2);
        v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, v88);
        v87 = v114;
        v86 = v89;
        v81 = v90;
      }

      *(v81 + 2) = v87;
      *&v81[16 * v86 + 32] = v83;
    }

    while (v79);
LABEL_50:
    while (1)
    {
      v84 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        break;
      }

      if (v84 >= v52)
      {

        AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v68, v76, 0, v81);

        goto LABEL_61;
      }

      v79 = *(v51 + 8 * v84);
      ++v80;
      if (v79)
      {
        v80 = v84;
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_64:
    swift_once();
  }

LABEL_61:
}

uint64_t @objc _AttributedStringFromMarkdownCreatorConcrete.__ivar_destroyer()
{
}

unint64_t lazy protocol witness table accessor for type AttributedString and conformance AttributedString()
{
  result = lazy protocol witness table cache variable for type AttributedString and conformance AttributedString;
  if (!lazy protocol witness table cache variable for type AttributedString and conformance AttributedString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString and conformance AttributedString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString and conformance AttributedString;
  if (!lazy protocol witness table cache variable for type AttributedString and conformance AttributedString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString and conformance AttributedString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString and conformance AttributedString;
  if (!lazy protocol witness table cache variable for type AttributedString and conformance AttributedString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString and conformance AttributedString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString and conformance AttributedString;
  if (!lazy protocol witness table cache variable for type AttributedString and conformance AttributedString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString and conformance AttributedString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString and conformance AttributedString;
  if (!lazy protocol witness table cache variable for type AttributedString and conformance AttributedString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString and conformance AttributedString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString and conformance AttributedString;
  if (!lazy protocol witness table cache variable for type AttributedString and conformance AttributedString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString and conformance AttributedString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString and conformance AttributedString;
  if (!lazy protocol witness table cache variable for type AttributedString and conformance AttributedString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString and conformance AttributedString);
  }

  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;

      v10 = a1(&v12);

      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t get_enum_tag_for_layout_string_10Foundation18PresentationIntentV4KindO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t Calendar.timeZone.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 48))(ObjectType, v1);
}

uint64_t FloatingPointFormatStyle.sign(strategy:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  result = (*(*(a2 - 8) + 16))(a3, v3, a2);
  if (v7)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  v11 = a3 + *(a2 + 36);
  *(v11 + 76) = v8 != 0;
  *(v11 + 74) = v10 | v6;
  return result;
}

__n128 FloatingPointFormatStyle.locale(_:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, v3, a2);
  v7 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = v7;
  *a3 = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type NumberFormatStyleConfiguration.SignDisplayStrategy and conformance NumberFormatStyleConfiguration.SignDisplayStrategy()
{
  result = lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.SignDisplayStrategy and conformance NumberFormatStyleConfiguration.SignDisplayStrategy;
  if (!lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.SignDisplayStrategy and conformance NumberFormatStyleConfiguration.SignDisplayStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.SignDisplayStrategy and conformance NumberFormatStyleConfiguration.SignDisplayStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.SignDisplayStrategy and conformance NumberFormatStyleConfiguration.SignDisplayStrategy;
  if (!lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.SignDisplayStrategy and conformance NumberFormatStyleConfiguration.SignDisplayStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.SignDisplayStrategy and conformance NumberFormatStyleConfiguration.SignDisplayStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.SignDisplayStrategy and conformance NumberFormatStyleConfiguration.SignDisplayStrategy;
  if (!lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.SignDisplayStrategy and conformance NumberFormatStyleConfiguration.SignDisplayStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.SignDisplayStrategy and conformance NumberFormatStyleConfiguration.SignDisplayStrategy);
  }

  return result;
}

__n128 FloatingPointFormatStyle.Percent.init(locale:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for FloatingPointFormatStyle.Percent() + 36);
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v6 = v5[9];
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *a1;
  (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
  *v4 = 0x4059000000000000;
  v4[8] = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0x1FFFFFFFELL;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  *(v4 + 6) = 0;
  *(v4 + 18) = 131584;
  *(v4 + 38) = 512;
  v8 = &v4[v5[10]];
  *v8 = 0;
  v8[8] = -1;
  v4[v5[11]] = 3;
  result = v10;
  *a2 = v10;
  return result;
}

uint64_t FloatingPointFormatStyle.Percent.format(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v71 = a1;
  v72 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v70 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v6;
  v7 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
  v9 = v8;
  v10 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  v12 = (*(v10 + 472))(ObjectType, v10);
  v14 = v13;
  if (one-time initialization token for cache != -1)
  {
    v33 = v12;
    swift_once();
    v12 = v33;
  }

  v16 = static ICUPercentNumberFormatter.cache;
  v15 = *algn_1EA7B0228;
  v79[0] = v7;
  v79[1] = v9;
  v74 = v12;
  v79[2] = v12;
  v79[3] = v14;
  MEMORY[0x1EEE9AC00](v12);
  *(&v62 - 2) = v79;
  os_unfair_lock_lock((v15 + 24));
  v17 = 0;
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v15 + 16, &v77);
  os_unfair_lock_unlock((v15 + 24));
  v18 = v77;
  if (v77 != 1)
  {
    goto LABEL_36;
  }

  v69 = 0;
  v77 = 0x746E6563726570;
  v78 = 0xE700000000000000;
  if (String.count.getter() > 0)
  {
    v75 = 32;
    v76 = 0xE100000000000000;
    MEMORY[0x1865CB0E0](v7, v9);
    MEMORY[0x1865CB0E0](v75, v76);
  }

  v19 = v77;
  v20 = v78;
  type metadata accessor for ICUPercentNumberFormatter();
  swift_allocObject();

  v18 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v19, v20);
  os_unfair_lock_lock((v15 + 24));
  if (v16 >= *(*(v15 + 16) + 16))
  {
  }

  else
  {
    *(v15 + 16) = MEMORY[0x1E69E7CC8];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = *(v15 + 16);
  v22 = v77;
  *(v15 + 16) = 0x8000000000000000;
  v24 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9, v74, v14);
  v25 = *(v22 + 16);
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (*(v22 + 24) >= v27)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v29 = v22;
      v17 = v69;
      if (v23)
      {
        goto LABEL_16;
      }

      goto LABEL_34;
    }

LABEL_18:
    v63 = v24;
    v64 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
    v34 = static _DictionaryStorage.copy(original:)();
    v29 = v34;
    v17 = v69;
    if (*(v22 + 16))
    {
      v35 = (v34 + 64);
      v36 = 1 << *(v29 + 32);
      v65 = (v22 + 64);
      v37 = (v36 + 63) >> 6;
      if (v29 != v22 || v35 >= &v65[8 * v37])
      {
        memmove(v35, v65, 8 * v37);
      }

      v38 = 0;
      *(v29 + 16) = *(v22 + 16);
      v39 = 1 << *(v22 + 32);
      v40 = -1;
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      v41 = v40 & *(v22 + 64);
      v62 = (v39 + 63) >> 6;
      if (v41)
      {
        do
        {
          v67 = (v41 - 1) & v41;
          v68 = v38;
          v42 = __clz(__rbit64(v41)) | (v38 << 6);
LABEL_31:
          v46 = *(v22 + 56);
          v47 = (*(v22 + 48) + 32 * v42);
          v48 = *v47;
          v49 = v47[1];
          v50 = v47[2];
          v66 = v47[3];
          v51 = v66;
          v52 = *(v46 + 8 * v42);
          v53 = (*(v29 + 48) + 32 * v42);
          *v53 = v48;
          v53[1] = v49;
          v53[2] = v50;
          v53[3] = v51;
          *(*(v29 + 56) + 8 * v42) = v52;

          v38 = v68;
          v17 = v69;
          v41 = v67;
        }

        while (v67);
      }

      v43 = v38;
      while (1)
      {
        v44 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        if (v44 >= v62)
        {
          goto LABEL_33;
        }

        v45 = *&v65[8 * v44];
        ++v43;
        if (v45)
        {
          v67 = (v45 - 1) & v45;
          v68 = v44;
          v42 = __clz(__rbit64(v45)) | (v44 << 6);
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

LABEL_33:

    v24 = v63;
    if (v64)
    {
      goto LABEL_16;
    }

LABEL_34:
    specialized _NativeDictionary._insert(at:key:value:)(v24, v7, v9, v74, v14, v18, v29);
    goto LABEL_35;
  }

  v28 = v23;
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
  v29 = v77;
  v30 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9, v74, v14);
  if ((v28 & 1) != (v31 & 1))
  {
LABEL_44:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v24 = v30;
  v17 = v69;
  if ((v28 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_16:
  v32 = v24;

  *(*(v29 + 56) + 8 * v32) = v18;

LABEL_35:
  *(v15 + 16) = v29;

  os_unfair_lock_unlock((v15 + 24));

  outlined consume of ICUNumberFormatter??(1);
LABEL_36:

  if (!v18)
  {
    v54 = *(v4 + 16);
    v57 = v72;
    v56 = v70;
    v55 = v71;
    goto LABEL_40;
  }

  v54 = *(v4 + 16);
  v56 = v70;
  v55 = v71;
  v57 = v72;
  v54(v70, v71, v72);
  specialized BinaryFloatingPoint.init<A>(_:)(v56, v57);
  type metadata accessor for ICUNumberFormatterBase.FormatResult();
  swift_initStackObject();
  ICUNumberFormatterBase.FormatResult.init(formatter:value:)();
  if (v17)
  {

LABEL_40:
    v54(v56, v55, v57);
    specialized BinaryFloatingPoint.init<A>(_:)(v56, v57);
    return Double.description.getter();
  }

  v59 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
  v61 = v60;

  if (!v61)
  {
    goto LABEL_40;
  }

  return v59;
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance FloatingPointFormatStyle<A>.Percent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = FloatingPointFormatStyle.Percent.format(_:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

Swift::Int NumberFormatStyleConfiguration.Precision.integerStem(min:max:)(Swift::Int result, uint64_t a2, char a3)
{
  v3 = result;
  strcpy(v9, "integer-width/");
  HIBYTE(v9[1]) = -18;
  if (a3)
  {
    MEMORY[0x1865CB0E0](43, 0xE100000000000000);
  }

  else
  {
    if (!(a2 | result))
    {
      MEMORY[0x1865CB0E0](42, 0xE100000000000000);
      return v9[0];
    }

    v6 = a2 - result;
    if (a2 < result)
    {
      return 0;
    }

    if (__OFSUB__(a2, result))
    {
      __break(1u);
      return result;
    }

    v7._countAndFlagsBits = 35;
    v7._object = 0xE100000000000000;
    countAndFlagsBits = String.init(repeating:count:)(v7, v6)._countAndFlagsBits;
    MEMORY[0x1865CB0E0](countAndFlagsBits);
  }

  v4._countAndFlagsBits = 48;
  v4._object = 0xE100000000000000;
  v5 = String.init(repeating:count:)(v4, v3)._countAndFlagsBits;
  MEMORY[0x1865CB0E0](v5);

  return v9[0];
}

void ICULegacyNumberFormatter.Signature.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v82 = *(v2 - 8);
  v83 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v81 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v79 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v79 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v79 - v10;
  v80 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v80);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v79 - v18;
  v20 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v1;
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v1, v22, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      _s10Foundation32CurrencyFormatStyleConfigurationO10CollectionVWObTm_0(v22, v16, type metadata accessor for NumberFormatStyleConfiguration.Collection);
      MEMORY[0x1865CD060](1);
      v28 = v82;
      v27 = v83;
      v29 = v14;
      if (v16[8])
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v43 = *v16;
        Hasher._combine(_:)(1u);
        if ((v43 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v44 = v43;
        }

        else
        {
          v44 = 0;
        }

        MEMORY[0x1865CD090](v44);
      }

      v45 = *(v16 + 2);
      v85 = *(v16 + 1);
      v86 = v45;
      v87[0] = *(v16 + 3);
      *(v87 + 9) = *(v16 + 57);
      specialized Optional<A>.hash(into:)();
      v46 = v16[73];
      if (v46 == 2)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v46 & 1);
      }

      v51 = *(v16 + 37);
      v52 = v51 | (v16[76] << 16);
      if (v51 == 2)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v52 & 1);
        MEMORY[0x1865CD060]((v52 >> 8) & 1);
        MEMORY[0x1865CD060](HIWORD(v52) & 1);
      }

      v55 = v16[77];
      if (v55 == 2)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v55 & 1);
      }

      outlined init with copy of FloatingPointRoundingRule?(&v16[v29[9]], v8);
      if ((*(v28 + 48))(v8, 1, v27) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v67 = v81;
        (*(v28 + 32))(v81, v8, v27);
        Hasher._combine(_:)(1u);
        dispatch thunk of Hashable.hash(into:)();
        (*(v28 + 8))(v67, v27);
      }

      v68 = &v16[v29[10]];
      v69 = v68[8];
      if (v69 == 255)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v70 = *v68;
        Hasher._combine(_:)(1u);
        if (v69)
        {
          MEMORY[0x1865CD060](1);
          if ((v70 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v71 = v70;
          }

          else
          {
            v71 = 0;
          }

          MEMORY[0x1865CD090](v71);
        }

        else
        {
          MEMORY[0x1865CD060](0);
          MEMORY[0x1865CD060](v70);
        }
      }

      v76 = v16[v29[11]];
      if (v76 == 3)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v76);
      }

      v73 = type metadata accessor for NumberFormatStyleConfiguration.Collection;
      v74 = v16;
    }

    else
    {
      _s10Foundation32CurrencyFormatStyleConfigurationO10CollectionVWObTm_0(v22, v19, type metadata accessor for NumberFormatStyleConfiguration.Collection);
      MEMORY[0x1865CD060](0);
      v25 = v82;
      v24 = v83;
      v26 = v14;
      if (v19[8])
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v32 = *v19;
        Hasher._combine(_:)(1u);
        if ((v32 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        MEMORY[0x1865CD090](v33);
      }

      v34 = *(v19 + 2);
      v85 = *(v19 + 1);
      v86 = v34;
      v87[0] = *(v19 + 3);
      *(v87 + 9) = *(v19 + 57);
      specialized Optional<A>.hash(into:)();
      v35 = v19[73];
      if (v35 == 2)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v35 & 1);
      }

      v47 = *(v19 + 37);
      v48 = v47 | (v19[76] << 16);
      if (v47 == 2)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v48 & 1);
        MEMORY[0x1865CD060]((v48 >> 8) & 1);
        MEMORY[0x1865CD060](HIWORD(v48) & 1);
      }

      v53 = v19[77];
      if (v53 == 2)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v53 & 1);
      }

      outlined init with copy of FloatingPointRoundingRule?(&v19[v26[9]], v11);
      if ((*(v25 + 48))(v11, 1, v24) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v57 = v81;
        (*(v25 + 32))(v81, v11, v24);
        Hasher._combine(_:)(1u);
        dispatch thunk of Hashable.hash(into:)();
        (*(v25 + 8))(v57, v24);
      }

      v58 = &v19[v26[10]];
      v59 = v58[8];
      if (v59 == 255)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v60 = *v58;
        Hasher._combine(_:)(1u);
        if (v59)
        {
          MEMORY[0x1865CD060](1);
          if ((v60 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v61 = v60;
          }

          else
          {
            v61 = 0;
          }

          MEMORY[0x1865CD090](v61);
        }

        else
        {
          MEMORY[0x1865CD060](0);
          MEMORY[0x1865CD060](v60);
        }
      }

      v72 = v19[v26[11]];
      if (v72 == 3)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v72);
      }

      v73 = type metadata accessor for NumberFormatStyleConfiguration.Collection;
      v74 = v19;
    }

LABEL_97:
    outlined destroy of CurrencyFormatStyleConfiguration.Collection(v74, v73);
    goto LABEL_98;
  }

  if (EnumCaseMultiPayload == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd);
    _s10Foundation32CurrencyFormatStyleConfigurationO10CollectionVWObTm_0(v22, v13, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
    MEMORY[0x1865CD060](2);
    if (v13[8])
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v36 = *v13;
      Hasher._combine(_:)(1u);
      if ((v36 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      MEMORY[0x1865CD090](v37);
    }

    v39 = v82;
    v38 = v83;
    v40 = v80;
    v41 = *(v13 + 2);
    v85 = *(v13 + 1);
    v86 = v41;
    v87[0] = *(v13 + 3);
    *(v87 + 9) = *(v13 + 57);
    specialized Optional<A>.hash(into:)();
    v42 = v13[73];
    if (v42 == 2)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v42 & 1);
    }

    v49 = *(v13 + 74);
    if (*(v13 + 74) == 2)
    {
      LOBYTE(v50) = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v49 & 1);
      MEMORY[0x1865CD060]((v49 >> 8) & 1);
      MEMORY[0x1865CD060](WORD1(v49) & 1);
      v50 = BYTE3(v49) & 1;
    }

    Hasher._combine(_:)(v50);
    v54 = v13[78];
    if (v54 == 2)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v54 & 1);
    }

    v56 = v79;
    outlined init with copy of FloatingPointRoundingRule?(&v13[v40[9]], v79);
    if ((*(v39 + 48))(v56, 1, v38) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v62 = v81;
      (*(v39 + 32))(v81, v56, v38);
      Hasher._combine(_:)(1u);
      dispatch thunk of Hashable.hash(into:)();
      (*(v39 + 8))(v62, v38);
    }

    v63 = &v13[v40[10]];
    v64 = v63[8];
    if (v64 == 255)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v65 = *v63;
      Hasher._combine(_:)(1u);
      if (v64)
      {
        MEMORY[0x1865CD060](1);
        if ((v65 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v66 = v65;
        }

        else
        {
          v66 = 0;
        }

        MEMORY[0x1865CD090](v66);
      }

      else
      {
        MEMORY[0x1865CD060](0);
        MEMORY[0x1865CD060](v65);
      }
    }

    MEMORY[0x1865CD060](v13[v40[11]]);
    v75 = v13[v40[12]];
    if (v75 == 3)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v75);
    }

    String.hash(into:)();

    v73 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection;
    v74 = v13;
    goto LABEL_97;
  }

  v30 = *v22;
  v31 = v22[1];
  MEMORY[0x1865CD060](3);
  MEMORY[0x1865CD060](v30 + 1);
  if (v31 == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v31);
  }

LABEL_98:
  v77 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v78 = v84;
  String.hash(into:)();
  Hasher._combine(_:)(*(v78 + *(v77 + 24)));
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t specialized static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSg_ACtMd);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - v13;
  v15 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v15;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = *(a1 + 40);
  v17 = *(a1 + 56);
  v18 = *(a1 + 72);
  v19 = *(a2 + 40);
  v20 = *(a2 + 56);
  v21 = *(a2 + 72);
  v22 = vmovn_s64(vandq_s8(vceqq_s64(vandq_s8(vzip1q_s64(v19, v16), vdupq_n_s64(0xFFFFFFFFFFFFFFFELL)), vdupq_n_s64(0x1FFFFFFFEuLL)), vcgtq_u64(vdupq_n_s64(2uLL), vzip1q_s64(v20, v17))));
  if ((v22.i8[4] & 1) != 0 && v18 < 2)
  {
    if ((v22.i8[0] & (v21 < 2)) == 0)
    {
      return 0;
    }
  }

  else
  {
    if ((v22.i8[0] & (v21 < 2)) != 0)
    {
      return 0;
    }

    v56 = *(a2 + 16);
    v57 = *(a2 + 32);
    v51 = *(a1 + 16);
    v52 = *(a1 + 32);
    v53 = v16;
    v54 = v17;
    v55 = v18;
    v58 = v19;
    v59 = v20;
    v60 = v21;
    v23 = v12;
    v24 = specialized static NumberFormatStyleConfiguration.Precision.Option.== infix(_:_:)(&v51, &v56);
    v12 = v23;
    if (!v24)
    {
      return 0;
    }
  }

  v25 = *(a1 + 73);
  v26 = *(a2 + 73);
  if (v25 == 2)
  {
    if (v26 != 2)
    {
      return 0;
    }
  }

  else if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
  {
    return 0;
  }

  v27 = *(a1 + 74) | (*(a1 + 76) << 16);
  v28 = *(a2 + 74) | (*(a2 + 76) << 16);
  v29 = *(a2 + 74);
  if (*(a1 + 74) == 2)
  {
    if (v29 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v29 == 2)
    {
      return 0;
    }

    v15 = 0;
    if ((v27 ^ v28) & 1) != 0 || (((v27 ^ v28) >> 8))
    {
      return v15;
    }

    if (((v28 & 0x10000) == 0) == (v27 & 0x10000u) >> 16)
    {
      return 0;
    }
  }

  v30 = *(a1 + 77);
  v31 = *(a2 + 77);
  if (v30 == 2)
  {
    if (v31 != 2)
    {
      return 0;
    }
  }

  else if (v31 == 2 || ((v30 ^ v31) & 1) != 0)
  {
    return 0;
  }

  v32 = v12;
  v50 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v33 = v50[9];
  v34 = *(v32 + 48);
  outlined init with copy of FloatingPointRoundingRule?(a1 + v33, v14);
  outlined init with copy of FloatingPointRoundingRule?(a2 + v33, &v14[v34]);
  v35 = *(v5 + 48);
  if (v35(v14, 1, v4) != 1)
  {
    outlined init with copy of FloatingPointRoundingRule?(v14, v10);
    if (v35(&v14[v34], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v34], v4);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v5 + 8);
      v38(v7, v4);
      v38(v10, v4);
      outlined destroy of TermOfAddress?(v14, &_ss25FloatingPointRoundingRuleOSgMd);
      if ((v37 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_39;
    }

    (*(v5 + 8))(v10, v4);
LABEL_35:
    outlined destroy of TermOfAddress?(v14, &_ss25FloatingPointRoundingRuleOSg_ACtMd);
    return 0;
  }

  if (v35(&v14[v34], 1, v4) != 1)
  {
    goto LABEL_35;
  }

  outlined destroy of TermOfAddress?(v14, &_ss25FloatingPointRoundingRuleOSgMd);
LABEL_39:
  v39 = v50[10];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = *(a2 + v39 + 8);
  if (v41 == 255)
  {
    if (v43 != 255)
    {
      return 0;
    }

    goto LABEL_49;
  }

  if (v43 == 255)
  {
    return 0;
  }

  v44 = *v40;
  v45 = *v42;
  if (v41)
  {
    v15 = 0;
    if ((v43 & 1) == 0 || v44 != v45)
    {
      return v15;
    }

LABEL_49:
    v46 = v50[11];
    v47 = *(a1 + v46);
    v48 = *(a2 + v46);
    if (v47 == 3)
    {
      if (v48 == 3)
      {
        return 1;
      }
    }

    else if (v47 == v48)
    {
      return 1;
    }

    return 0;
  }

  v15 = 0;
  if ((v43 & 1) == 0 && *&v44 == *&v45)
  {
    goto LABEL_49;
  }

  return v15;
}

uint64_t TimeZone.identifier.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 32))(ObjectType, v1);
}

uint64_t _AttributedStringFromMarkdownCreatorConcrete.processAttributes(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1;
  v450 = a2;
  v499 = *MEMORY[0x1E69E9840];
  v461 = *MEMORY[0x1E69E7D40] & *v2;
  v476 = MEMORY[0x1E69E7CC8];
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v473 = direct field offset for _AttributedStringFromMarkdownCreatorConcrete.hasInflectionAttributes;
  v469 = direct field offset for _AttributedStringFromMarkdownCreatorConcrete.attributeTable;
  v8 = (v5 + 63) >> 6;
  v447 = @"NSCocoaErrorDomain";
  v9 = 0;
  v10 = 0;
  v459 = xmmword_18121C7A0;

  v467 = v4;
  v468 = v8;
  while (1)
  {
    if (v7)
    {
      goto LABEL_12;
    }

    do
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_385;
      }

      if (v11 >= v8)
      {

        *v450 = v476;
        return result;
      }

      v7 = *(v4 + 8 * v11);
      ++v9;
    }

    while (!v7);
    v9 = v11;
LABEL_12:
    v12 = __clz(__rbit64(v7)) | (v9 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    outlined init with copy of Any(*(v3 + 56) + 32 * v12, v498);
    v496[0] = v14;
    v496[1] = v15;
    outlined init with take of Any(v498, &v497);
    v16 = v470;
    if (*(v470 + v473))
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      v17 = swift_allocObject();
      *(v17 + 16) = v459;
      v18 = one-time initialization token for name;

      if (v18 != -1)
      {
        swift_once();
      }

      v19 = qword_1EA7B2660;
      *(v17 + 32) = static AttributeScopes.FoundationAttributes.InflectionRuleAttribute.name;
      *(v17 + 40) = v19;
      v20 = one-time initialization token for name;

      if (v20 != -1)
      {
        swift_once();
      }

      v21 = unk_1EA7B25D8;
      *(v17 + 48) = static AttributeScopes.FoundationAttributes.InflectionAlternativeAttribute.name;
      *(v17 + 56) = v21;
      v22 = one-time initialization token for name;

      if (v22 != -1)
      {
        swift_once();
      }

      v23 = *algn_1EA7B2628;
      *(v17 + 64) = static AttributeScopes.FoundationAttributes.AgreementConceptAttribute.name;
      *(v17 + 72) = v23;
      v24 = one-time initialization token for name;

      if (v24 != -1)
      {
        swift_once();
      }

      v25 = qword_1EA7B2610;
      *(v17 + 80) = static AttributeScopes.FoundationAttributes.AgreementArgumentAttribute.name;
      *(v17 + 88) = v25;
      v26 = one-time initialization token for name;

      if (v26 != -1)
      {
        swift_once();
      }

      v27 = qword_1EA7B2640;
      *(v17 + 96) = static AttributeScopes.FoundationAttributes.ReferentConceptAttribute.name;
      *(v17 + 104) = v27;
      v28 = one-time initialization token for name;

      if (v28 != -1)
      {
        swift_once();
      }

      v29 = qword_1EA7B24E0;
      *(v17 + 112) = static AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.name;
      *(v17 + 120) = v29;
      *&v492 = v14;
      *(&v492 + 1) = v15;
      MEMORY[0x1EEE9AC00](v29);
      *(&v443 - 2) = &v492;

      v30 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), (&v443 - 4), v17);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      if (v30)
      {
        *(v16 + v473) = 1;
      }
    }

    v31 = *(v16 + v469);
    outlined init with copy of FloatingPointRoundingRule?(v496, &v492, &_sSS3key_yp5valuetMd);
    if (*(v31 + 16))
    {
      v32 = specialized __RawDictionaryStorage.find<A>(_:)(v492, *(&v492 + 1));
      v34 = v33;

      if (v34)
      {
        v464 = v7;
        v465 = v9;
        v471 = v10;
        v466 = *(*(v31 + 56) + 16 * v32);
        goto LABEL_35;
      }
    }

    else
    {
    }

    v35 = _s10Foundation14AttributeScopePAAE16scopeDescription33_4D406B8DD906487F9F362CE42830919ELLAA0cE0AELLVvgZAA0B6ScopesO0A10AttributesV_Ttg5();

    outlined init with copy of FloatingPointRoundingRule?(v496, &v487, &_sSS3key_yp5valuetMd);
    if (!*(v35 + 16))
    {

      __swift_destroy_boxed_opaque_existential_1(&v488);
      __swift_destroy_boxed_opaque_existential_1(&v493);
      v4 = v467;
      v8 = v468;
      goto LABEL_6;
    }

    v36 = specialized __RawDictionaryStorage.find<A>(_:)(v487, *(&v487 + 1));
    v38 = v37;

    if ((v38 & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(&v488);
      __swift_destroy_boxed_opaque_existential_1(&v493);
      v4 = v467;
      v8 = v468;
      goto LABEL_6;
    }

    v464 = v7;
    v465 = v9;
    v471 = v10;
    v466 = *(*(v35 + 56) + 16 * v36);

    __swift_destroy_boxed_opaque_existential_1(&v488);
LABEL_35:
    __swift_destroy_boxed_opaque_existential_1(&v493);
    v39 = *(v461 + 88);
    *&v492 = *(v461 + 80);
    v474 = v466;
    *(&v492 + 1) = v466;
    *&v493 = v39;
    v472 = *(&v466 + 1);
    *(&v493 + 1) = *(&v466 + 1);
    v40 = type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete.DecodedAttributeBox();
    *&v466 = &v443;
    v41 = *(v40 - 8);
    MEMORY[0x1EEE9AC00](v40);
    v43 = &v443 - v42;
    outlined init with copy of FloatingPointRoundingRule?(v496, &v492, &_sSS3key_yp5valuetMd);

    v44 = type metadata accessor for Optional();
    v45 = *(v44 - 8);
    MEMORY[0x1EEE9AC00](v44);
    v47 = &v443 - v46;
    v48 = swift_dynamicCast();
    v49 = *(v41 + 56);
    if (!v48)
    {
      v49(v47, 1, 1, v40);
      (*(v45 + 8))(v47, v44);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v456 = &v443;
      v462 = *(AssociatedTypeWitness - 8);
      v94 = *(v462 + 64);
      MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      v453 = &v443 - v95;
      v463 = v96;
      v97 = type metadata accessor for Optional();
      v455 = &v443;
      v458 = *(v97 - 1);
      v98 = v458[8];
      MEMORY[0x1EEE9AC00](v97);
      v454 = &v443 - v99;
      outlined init with copy of FloatingPointRoundingRule?(v496, &v492, &_sSS3key_yp5valuetMd);

      v100 = v494[1];
      v101 = __swift_project_boxed_opaque_existential_1(&v493, v494[1]);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v350 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
        (*(v352 + 16))(&v443 - ((v351 + 15) & 0xFFFFFFFFFFFFFFF0), v101, v100, v350);
        *&v466 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v9 = v465;
        goto LABEL_46;
      }

      v9 = v465;
      if (*(*(v100 - 8) + 64) == 8)
      {
        *&v466 = *v101;
        swift_unknownObjectRetain();
LABEL_46:
        v103 = v474;
        v104 = swift_conformsToProtocol2();
        v105 = v463;
        v457 = v97;
        if (v104 && v103)
        {
          v106 = v104;
          swift_getAssociatedTypeWitness();
          swift_unknownObjectRetain();
          v107 = swift_dynamicCastUnknownClass();
          if (v107)
          {
            v108 = v107;
            v109 = swift_getAssociatedTypeWitness();
            v465 = &v443;
            v110 = MEMORY[0x1EEE9AC00](v109);
            v111 = v108;
            v112 = v471;
            (*(v106 + 32))(v111, v103, v106, v110);
            if (v112)
            {

              swift_unknownObjectRelease_n();
              v10 = 0;
              v3 = v460;
              v4 = v467;
              v8 = v468;
              v113 = v462;
LABEL_311:
              __swift_destroy_boxed_opaque_existential_1(&v493);
              v349 = v454;
              (*(v113 + 56))(v454, 1, 1, v463);
              (v458[1])(v349, v457);
              v7 = v464;
              goto LABEL_6;
            }

            v451 = v94;
            v471 = 0;
            swift_unknownObjectRelease_n();
            v150 = v454;
            swift_dynamicCast();
            v148 = v462;
LABEL_94:
            __swift_destroy_boxed_opaque_existential_1(&v493);
            v199 = *(v148 + 56);
            v199(v150, 0, 1, v105);
            v200 = v453;
            v448 = *(v148 + 32);
            v201 = (v448)(v453, v150, v105);
            *&v466 = &v443;
            v202 = MEMORY[0x1EEE9AC00](v201);
            v465 = v98;
            v203 = &v443 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
            v204 = *(v148 + 16);
            v452 = (v148 + 16);
            v449 = v204;
            (v204)(v203, v200, v105, v202);
            v205 = (v199)(v203, 0, 1, v105);
            v455 = &v443;
            v206 = v451;
            MEMORY[0x1EEE9AC00](v205);
            v446 = (v206 + 15) & 0xFFFFFFFFFFFFFFF0;
            v207 = &v443 - v446;
            v454 = &v443;
            v209 = MEMORY[0x1EEE9AC00](v208);
            v210 = v203;
            v211 = v458;
            v212 = v458[2];
            v465 = v203;
            v212(v203, v203, v457, v209);
            if ((*(v148 + 48))(v203, 1, v105) == 1)
            {
              v213 = v211[1];
              v214 = v457;
              v213(v210, v457);
              v215 = v472[3]();
              v495 = 0;
              memset(v494, 0, sizeof(v494));
              v492 = 0u;
              v493 = 0u;
              specialized AttributedString._AttributeStorage.subscript.setter(&v492, v215, v216);

              v213(v465, v214);
              v217 = *(v462 + 8);
              v3 = v460;
              v218 = v105;
            }

            else
            {
              v445 = v207;
              (v448)(v207, v203, v105);
              v219 = v472;
              v220 = v474;
              v454 = (v472[3])(v474, v472);
              v218 = v105;
              v448 = v221;
              v444 = &v443;
              v222 = MEMORY[0x1EEE9AC00](v454);
              v223 = v446;
              v224 = &v443 - v446;
              v225 = v449;
              v226 = v449(v222);
              v443 = &v443;
              v227 = MEMORY[0x1EEE9AC00](v226);
              v228 = v462;
              (v225)(&v443 - v223, v224, v218, v227);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
              swift_dynamicCast();
              (v219[4])(&v487, v220, v219);
              *&v494[1] = v487;
              LOBYTE(v494[3]) = (v219[5])(v220, v219) & 1;
              v229 = (v219[6])(v220, v219);
              v217 = *(v228 + 8);
              v217(v224, v218);
              v495 = v229;
              specialized AttributedString._AttributeStorage.subscript.setter(&v492, v454, v448);

              (v458[1])(v465, v457);
              v217(v445, v218);
              v3 = v460;
            }

            v10 = v471;
            v217(v453, v218);
            v4 = v467;
            v8 = v468;
            v7 = v464;
            goto LABEL_6;
          }

          swift_unknownObjectRelease();
          v175 = v447;
          isTaggedPointer = _objc_isTaggedPointer(v447);
          v177 = v175;
          v178 = v177;
          LODWORD(v474) = isTaggedPointer;
          v179 = v471;
          if (isTaggedPointer)
          {
            TaggedPointerTag = _objc_getTaggedPointerTag(v177);
            switch(TaggedPointerTag)
            {
              case 0:
                LOWORD(v477) = 0;
                _CFIndirectTaggedPointerStringGetContents();
                _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (!v241)
                {
                  [(__CFString *)v178 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  goto LABEL_190;
                }

                goto LABEL_182;
              case 0x16:
                v239 = [(__CFString *)v178 UTF8String];
                if (!v239)
                {
                  goto LABEL_401;
                }

                String.init(utf8String:)(v239);
                if (!v240)
                {
                  goto LABEL_400;
                }

                goto LABEL_182;
              case 2:
                MEMORY[0x1EEE9AC00](TaggedPointerTag);
                *(&v443 - 2) = v178;
                String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                goto LABEL_190;
            }
          }

          LOBYTE(v482) = 0;
          *&v487 = 0;
          LOBYTE(v477) = 0;
          LOBYTE(v475) = 0;
          IsCF = __CFStringIsCF();
          if (IsCF)
          {
            v231 = v487;
            if (!v487)
            {
LABEL_182:

              goto LABEL_190;
            }

            if (v475 == 1)
            {
              if (v482)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_190:
              v279 = objc_allocWithZone(NSError);
              v280 = String._bridgeToObjectiveCImpl()();

              v249 = [v279 initWithDomain:v280 code:4866 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v281 = [v249 domain];
              v471 = v179;
              if (!v281)
              {
                goto LABEL_204;
              }

              v282 = v281;
              v283 = _objc_isTaggedPointer(v281);
              v284 = v282;
              v285 = v284;
              if (v283)
              {
                v286 = _objc_getTaggedPointerTag(v284);
                if (v286)
                {
                  if (v286 != 22)
                  {
                    if (v286 == 2)
                    {
                      MEMORY[0x1EEE9AC00](v286);
                      *(&v443 - 2) = v285;
                      v287 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v289 = v288;
                      v471 = v179;

                      goto LABEL_271;
                    }

                    goto LABEL_196;
                  }

                  v295 = [v285 UTF8String];
                  if (!v295)
                  {
                    goto LABEL_407;
                  }

                  v296 = String.init(utf8String:)(v295);
                  if (!v297)
                  {
                    goto LABEL_406;
                  }
                }

                else
                {
                  LOWORD(v477) = 0;
                  _CFIndirectTaggedPointerStringGetContents();
                  v296 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (!v297)
                  {
                    [v285 mutableCopy];
                    _bridgeAnyObjectToAny(_:)();

                    swift_unknownObjectRelease();
                    swift_dynamicCast();
                    v289 = *(&v482 + 1);
                    v287 = v482;
                    goto LABEL_270;
                  }
                }

                v287 = v296;
                v289 = v297;
LABEL_210:

LABEL_270:
LABEL_271:
                v327 = v178;
                v328 = v327;
                if (!v474)
                {
                  goto LABEL_276;
                }

                v329 = _objc_getTaggedPointerTag(v327);
                if (v329)
                {
                  if (v329 != 22)
                  {
                    if (v329 == 2)
                    {
                      MEMORY[0x1EEE9AC00](v329);
                      *(&v443 - 2) = v328;
                      v330 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v332 = v331;

LABEL_306:
                      v3 = v460;
                      if (v287 != v330 || v289 != v332)
                      {
                        v348 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        v113 = v462;
                        if ((v348 & 1) == 0)
                        {
                          goto LABEL_391;
                        }

                        goto LABEL_310;
                      }

LABEL_308:

                      v113 = v462;
LABEL_310:
                      swift_willThrow();

                      swift_unknownObjectRelease();
                      v10 = 0;
                      v4 = v467;
                      v8 = v468;
                      goto LABEL_311;
                    }

LABEL_276:
                    LOBYTE(v482) = 0;
                    *&v487 = 0;
                    LOBYTE(v477) = 0;
                    LOBYTE(v475) = 0;
                    v333 = __CFStringIsCF();
                    if (v333)
                    {
                      v334 = v487;
                      if (v487)
                      {
                        if (v475 == 1)
                        {
                          if (v482)
                          {
                            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                          }

                          else
                          {
                            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                          }

                          v341 = String.init<A>(_immortalCocoaString:count:encoding:)();
                          goto LABEL_305;
                        }

                        if (v477)
                        {
                          if (v482 == 1)
                          {
                            MEMORY[0x1EEE9AC00](v333);
                            *(&v443 - 4) = v328;
                            *(&v443 - 3) = &v487;
                            *(&v443 - 4) = 1536;
                            *(&v443 - 1) = v334;
                          }

                          else
                          {
                            v343 = [(__CFString *)v328 lengthOfBytesUsingEncoding:4];
                            MEMORY[0x1EEE9AC00](v343);
                            *(&v443 - 4) = v328;
                            *(&v443 - 3) = &v487;
                            *(&v443 - 4) = 134217984;
                            *(&v443 - 1) = v344;
                          }

                          v345 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                          v332 = v346;
                          v347 = HIBYTE(v346) & 0xF;
                          if ((v346 & 0x2000000000000000) == 0)
                          {
                            v347 = v345 & 0xFFFFFFFFFFFFLL;
                          }

                          if (v347)
                          {
                            v330 = v345;

                            goto LABEL_306;
                          }
                        }

LABEL_304:
                        v341 = String.init(_cocoaString:)();
LABEL_305:
                        v330 = v341;
                        v332 = v342;
                        goto LABEL_306;
                      }
                    }

                    else
                    {
                      v335 = v328;
                      v336 = String.init(_nativeStorage:)();
                      if (v337)
                      {
                        v330 = v336;
                        v332 = v337;

                        goto LABEL_306;
                      }

                      *&v487 = [(__CFString *)v335 length];
                      if (v487)
                      {
                        goto LABEL_304;
                      }
                    }

                    v330 = 0;
                    v332 = 0xE000000000000000;
                    goto LABEL_306;
                  }

                  v338 = [(__CFString *)v328 UTF8String];
                  if (!v338)
                  {
                    goto LABEL_403;
                  }

                  v339 = String.init(utf8String:)(v338);
                  if (!v340)
                  {
                    goto LABEL_402;
                  }
                }

                else
                {
                  LOWORD(v477) = 0;
                  _CFIndirectTaggedPointerStringGetContents();
                  v339 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (!v340)
                  {
                    [(__CFString *)v328 mutableCopy];
                    _bridgeAnyObjectToAny(_:)();

                    swift_unknownObjectRelease();
                    swift_dynamicCast();
                    v332 = *(&v482 + 1);
                    v330 = v482;
                    goto LABEL_306;
                  }
                }

                v330 = v339;
                v332 = v340;

                goto LABEL_306;
              }

LABEL_196:
              LOBYTE(v482) = 0;
              *&v487 = 0;
              LOBYTE(v477) = 0;
              LOBYTE(v475) = 0;
              v290 = __CFStringIsCF();
              if (v290)
              {
                v291 = v487;
                if (v487)
                {
                  if (v475 == 1)
                  {
                    if (v482)
                    {
                      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                    }

                    else
                    {
                      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                    }

                    v298 = String.init<A>(_immortalCocoaString:count:encoding:)();
                    goto LABEL_269;
                  }

                  if (v477)
                  {
                    if (v482 == 1)
                    {
                      MEMORY[0x1EEE9AC00](v290);
                      *(&v443 - 4) = v285;
                      *(&v443 - 3) = &v487;
                      *(&v443 - 4) = 1536;
                      *(&v443 - 1) = v291;
                    }

                    else
                    {
                      v322 = [v285 lengthOfBytesUsingEncoding_];
                      MEMORY[0x1EEE9AC00](v322);
                      *(&v443 - 4) = v285;
                      *(&v443 - 3) = &v487;
                      *(&v443 - 4) = 134217984;
                      *(&v443 - 1) = v323;
                    }

                    v324 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v289 = v325;
                    v471 = v179;
                    v326 = HIBYTE(v325) & 0xF;
                    if ((v325 & 0x2000000000000000) == 0)
                    {
                      v326 = v324 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v326)
                    {
                      v287 = v324;
                      goto LABEL_210;
                    }
                  }

LABEL_268:
                  v298 = String.init(_cocoaString:)();
LABEL_269:
                  v287 = v298;
                  v289 = v299;
                  goto LABEL_270;
                }
              }

              else
              {
                v292 = v285;
                v293 = String.init(_nativeStorage:)();
                if (v294)
                {
                  v287 = v293;
                  v289 = v294;

                  goto LABEL_271;
                }

                *&v487 = [v292 length];
                if (v487)
                {
                  goto LABEL_268;
                }
              }

LABEL_204:
              v287 = 0;
              v289 = 0xE000000000000000;
              goto LABEL_271;
            }

            if (v477)
            {
              if (v482 == 1)
              {
                MEMORY[0x1EEE9AC00](IsCF);
                *(&v443 - 4) = v178;
                *(&v443 - 3) = &v487;
                *(&v443 - 4) = 1536;
                *(&v443 - 1) = v231;
              }

              else
              {
                v269 = [(__CFString *)v178 lengthOfBytesUsingEncoding:4];
                MEMORY[0x1EEE9AC00](v269);
                *(&v443 - 4) = v178;
                *(&v443 - 3) = &v487;
                *(&v443 - 4) = 134217984;
                *(&v443 - 1) = v270;
              }

              v271 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v273 = HIBYTE(v272) & 0xF;
              if ((v272 & 0x2000000000000000) == 0)
              {
                v273 = v271 & 0xFFFFFFFFFFFFLL;
              }

              if (v273)
              {
                goto LABEL_182;
              }
            }
          }

          else
          {
            v234 = v178;
            String.init(_nativeStorage:)();
            if (v235 || (*&v487 = [(__CFString *)v234 length], !v487))
            {

              goto LABEL_190;
            }
          }

          String.init(_cocoaString:)();
          goto LABEL_190;
        }

        MEMORY[0x1EEE9AC00](v104);
        v452 = &v443;
        *&v487 = v466;
        MEMORY[0x1EEE9AC00](v147);
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          v465 = &v443;
          v451 = v94;
          swift_unknownObjectRelease();
          v148 = v462;
          (*(v462 + 56))(&v443 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 1, v105);
          v149 = *(v148 + 32);
          v149(&v443 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0), &v443 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0), v105);
          v150 = v454;
          v149(v454, &v443 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0), v105);
          goto LABEL_94;
        }

        (*(v462 + 56))(&v443 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0), 1, 1, v105);
        (v458[1])(&v443 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0), v97);
        v151 = v447;
        v152 = _objc_isTaggedPointer(v447);
        v153 = v151;
        v154 = v153;
        v155 = v471;
        if (v152)
        {
          v156 = _objc_getTaggedPointerTag(v153);
          switch(v156)
          {
            case 0:
              LOWORD(v477) = 0;
              _CFIndirectTaggedPointerStringGetContents();
              _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v238)
              {
                [(__CFString *)v154 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                goto LABEL_149;
              }

              goto LABEL_146;
            case 0x16:
              v236 = [(__CFString *)v154 UTF8String];
              if (!v236)
              {
                goto LABEL_397;
              }

              String.init(utf8String:)(v236);
              if (!v237)
              {
                goto LABEL_396;
              }

              goto LABEL_146;
            case 2:
              MEMORY[0x1EEE9AC00](v156);
              *(&v443 - 2) = v154;
              String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

              goto LABEL_149;
          }
        }

        LOBYTE(v482) = 0;
        *&v487 = 0;
        LOBYTE(v477) = 0;
        LOBYTE(v475) = 0;
        v181 = __CFStringIsCF();
        if (v181)
        {
          v182 = v487;
          if (!v487)
          {
LABEL_146:

            goto LABEL_149;
          }

          if (v475 == 1)
          {
            if (v482)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_149:
            v247 = objc_allocWithZone(NSError);
            v248 = String._bridgeToObjectiveCImpl()();

            v249 = [v247 initWithDomain:v248 code:4866 userInfo:_NativeDictionary.bridged()()];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v250 = [v249 domain];
            v471 = v155;
            if (!v250)
            {
              goto LABEL_163;
            }

            v251 = v250;
            v252 = _objc_isTaggedPointer(v250);
            v253 = v251;
            v254 = v253;
            if (v252)
            {
              v255 = _objc_getTaggedPointerTag(v253);
              if (v255)
              {
                if (v255 != 22)
                {
                  if (v255 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v255);
                    *(&v443 - 2) = v254;
                    v256 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v258 = v257;
                    v471 = v155;

                    goto LABEL_223;
                  }

                  goto LABEL_155;
                }

                v264 = [v254 UTF8String];
                if (!v264)
                {
                  goto LABEL_405;
                }

                v265 = String.init(utf8String:)(v264);
                if (!v266)
                {
                  goto LABEL_404;
                }
              }

              else
              {
                LOWORD(v477) = 0;
                _CFIndirectTaggedPointerStringGetContents();
                v265 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (!v266)
                {
                  [v254 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  v258 = *(&v482 + 1);
                  v256 = v482;
                  goto LABEL_222;
                }
              }

              v256 = v265;
              v258 = v266;
LABEL_169:

LABEL_222:
LABEL_223:
              v300 = v154;
              v301 = v300;
              if (!v152)
              {
                goto LABEL_228;
              }

              v302 = _objc_getTaggedPointerTag(v300);
              if (v302)
              {
                if (v302 != 22)
                {
                  if (v302 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v302);
                    *(&v443 - 2) = v301;
                    v303 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v305 = v304;

LABEL_258:
                    v3 = v460;
                    if (v256 != v303 || v258 != v305)
                    {
                      v321 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      v113 = v462;
                      if ((v321 & 1) == 0)
                      {
                        goto LABEL_390;
                      }

                      goto LABEL_310;
                    }

                    goto LABEL_308;
                  }

LABEL_228:
                  LOBYTE(v482) = 0;
                  *&v487 = 0;
                  LOBYTE(v477) = 0;
                  LOBYTE(v475) = 0;
                  v306 = __CFStringIsCF();
                  if (v306)
                  {
                    v307 = v487;
                    if (v487)
                    {
                      if (v475 == 1)
                      {
                        if (v482)
                        {
                          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                        }

                        else
                        {
                          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                        }

                        v314 = String.init<A>(_immortalCocoaString:count:encoding:)();
                        goto LABEL_257;
                      }

                      if (v477)
                      {
                        if (v482 == 1)
                        {
                          MEMORY[0x1EEE9AC00](v306);
                          *(&v443 - 4) = v301;
                          *(&v443 - 3) = &v487;
                          *(&v443 - 4) = 1536;
                          *(&v443 - 1) = v307;
                        }

                        else
                        {
                          v316 = [(__CFString *)v301 lengthOfBytesUsingEncoding:4];
                          MEMORY[0x1EEE9AC00](v316);
                          *(&v443 - 4) = v301;
                          *(&v443 - 3) = &v487;
                          *(&v443 - 4) = 134217984;
                          *(&v443 - 1) = v317;
                        }

                        v318 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        v305 = v319;
                        v320 = HIBYTE(v319) & 0xF;
                        if ((v319 & 0x2000000000000000) == 0)
                        {
                          v320 = v318 & 0xFFFFFFFFFFFFLL;
                        }

                        if (v320)
                        {
                          v303 = v318;

                          goto LABEL_258;
                        }
                      }

LABEL_256:
                      v314 = String.init(_cocoaString:)();
LABEL_257:
                      v303 = v314;
                      v305 = v315;
                      goto LABEL_258;
                    }
                  }

                  else
                  {
                    v308 = v301;
                    v309 = String.init(_nativeStorage:)();
                    if (v310)
                    {
                      v303 = v309;
                      v305 = v310;

                      goto LABEL_258;
                    }

                    *&v487 = [(__CFString *)v308 length];
                    if (v487)
                    {
                      goto LABEL_256;
                    }
                  }

                  v303 = 0;
                  v305 = 0xE000000000000000;
                  goto LABEL_258;
                }

                v311 = [(__CFString *)v301 UTF8String];
                if (!v311)
                {
                  goto LABEL_399;
                }

                v312 = String.init(utf8String:)(v311);
                if (!v313)
                {
                  goto LABEL_398;
                }
              }

              else
              {
                LOWORD(v477) = 0;
                _CFIndirectTaggedPointerStringGetContents();
                v312 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (!v313)
                {
                  [(__CFString *)v301 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  v305 = *(&v482 + 1);
                  v303 = v482;
                  goto LABEL_258;
                }
              }

              v303 = v312;
              v305 = v313;

              goto LABEL_258;
            }

LABEL_155:
            LOBYTE(v482) = 0;
            *&v487 = 0;
            LOBYTE(v477) = 0;
            LOBYTE(v475) = 0;
            v259 = __CFStringIsCF();
            if (v259)
            {
              v260 = v487;
              if (v487)
              {
                if (v475 == 1)
                {
                  if (v482)
                  {
                    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                  }

                  else
                  {
                    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                  }

                  v267 = String.init<A>(_immortalCocoaString:count:encoding:)();
                  goto LABEL_221;
                }

                if (v477)
                {
                  if (v482 == 1)
                  {
                    MEMORY[0x1EEE9AC00](v259);
                    *(&v443 - 4) = v254;
                    *(&v443 - 3) = &v487;
                    *(&v443 - 4) = 1536;
                    *(&v443 - 1) = v260;
                  }

                  else
                  {
                    v274 = [v254 lengthOfBytesUsingEncoding_];
                    MEMORY[0x1EEE9AC00](v274);
                    *(&v443 - 4) = v254;
                    *(&v443 - 3) = &v487;
                    *(&v443 - 4) = 134217984;
                    *(&v443 - 1) = v275;
                  }

                  v276 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v258 = v277;
                  v471 = v155;
                  v278 = HIBYTE(v277) & 0xF;
                  if ((v277 & 0x2000000000000000) == 0)
                  {
                    v278 = v276 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v278)
                  {
                    v256 = v276;
                    goto LABEL_169;
                  }
                }

LABEL_220:
                v267 = String.init(_cocoaString:)();
LABEL_221:
                v256 = v267;
                v258 = v268;
                goto LABEL_222;
              }
            }

            else
            {
              v261 = v254;
              v262 = String.init(_nativeStorage:)();
              if (v263)
              {
                v256 = v262;
                v258 = v263;

                goto LABEL_223;
              }

              *&v487 = [v261 length];
              if (v487)
              {
                goto LABEL_220;
              }
            }

LABEL_163:
            v256 = 0;
            v258 = 0xE000000000000000;
            goto LABEL_223;
          }

          if (v477)
          {
            if (v482 == 1)
            {
              MEMORY[0x1EEE9AC00](v181);
              *(&v443 - 4) = v154;
              *(&v443 - 3) = &v487;
              *(&v443 - 4) = 1536;
              *(&v443 - 1) = v182;
            }

            else
            {
              v242 = [(__CFString *)v154 lengthOfBytesUsingEncoding:4];
              MEMORY[0x1EEE9AC00](v242);
              *(&v443 - 4) = v154;
              *(&v443 - 3) = &v487;
              *(&v443 - 4) = 134217984;
              *(&v443 - 1) = v243;
            }

            v244 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v246 = HIBYTE(v245) & 0xF;
            if ((v245 & 0x2000000000000000) == 0)
            {
              v246 = v244 & 0xFFFFFFFFFFFFLL;
            }

            if (v246)
            {
              goto LABEL_146;
            }
          }
        }

        else
        {
          v232 = v154;
          String.init(_nativeStorage:)();
          if (v233 || (*&v487 = [(__CFString *)v232 length], !v487))
          {

            goto LABEL_149;
          }
        }

        String.init(_cocoaString:)();
        goto LABEL_149;
      }

LABEL_385:
      __break(1u);
      goto LABEL_386;
    }

    v49(v47, 0, 1, v40);
    v455 = v41;
    v456 = v40;
    (*(v41 + 32))(v43, v47, v40);
    v50 = swift_getAssociatedTypeWitness();
    v51 = type metadata accessor for Optional();
    v453 = &v443;
    v52 = *(v51 - 8);
    v462 = v51;
    v463 = v52;
    v53 = *(v52 + 64);
    v54.n128_f64[0] = MEMORY[0x1EEE9AC00](v51);
    v55 = &v443 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
    v56 = *(v50 - 8);
    v449 = *(v56 + 16);
    (v449)(v55, v43, v50, v54);
    v57 = (*(v56 + 56))(v55, 0, 1, v50);
    v457 = &v443;
    MEMORY[0x1EEE9AC00](v57);
    v448 = v58;
    v59 = (&v443 - v58);
    v458 = &v443;
    v61 = MEMORY[0x1EEE9AC00](v60);
    v62 = v55;
    v63 = v463;
    v64 = *(v463 + 16);
    v452 = v55;
    v65 = v55;
    v66 = v50;
    v67 = v56;
    v68 = v462;
    v64(v62, v65, v462, v61);
    v69 = (*(v67 + 48))(v62, 1, v66);
    v454 = v43;
    if (v69 != 1)
    {
      (*(v67 + 32))(v59, v62, v66);
      v114 = v472;
      v115 = v474;
      v116 = (v472[3])(v474, v472);
      v451 = v117;
      v445 = &v443;
      v446 = v116;
      v118 = MEMORY[0x1EEE9AC00](v116);
      v458 = v67;
      v119 = v448;
      v120 = v449;
      v121 = (&v443 - v448);
      v444 = v59;
      v122 = (v449)(&v443 - v448, v59, v66, v118);
      v123 = MEMORY[0x1EEE9AC00](v122);
      v124 = (&v443 - v119);
      v125 = v458;
      (v120)(v124, v121, v66, v123);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
      swift_dynamicCast();
      (v114[4])(&v487, v115, v114);
      *&v494[1] = v487;
      LOBYTE(v494[3]) = (v114[5])(v115, v114) & 1;
      v126 = (v114[6])(v115, v114);
      v127 = v125[1];
      v474 = v66;
      v472 = v127;
      (v127)(v121, v66);
      v495 = v126;
      outlined init with copy of FloatingPointRoundingRule?(&v492, &v487, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v458 = v125 + 1;
      if (!*(&v488 + 1))
      {
        outlined destroy of TermOfAddress?(&v487, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v130 = v446;
        v166 = specialized __RawDictionaryStorage.find<A>(_:)(v446, v451);
        if (v167)
        {
          v168 = v166;
          v169 = v476;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v170 = v169;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
            v419 = static _DictionaryStorage.copy(original:)();
            v170 = v419;
            if (*(v169 + 16))
            {
              v420 = (v419 + 64);
              v421 = v169 + 64;
              v422 = ((1 << *(v170 + 32)) + 63) >> 6;
              if (v170 != v169 || v420 >= v421 + 8 * v422)
              {
                memmove(v420, (v169 + 64), 8 * v422);
              }

              v423 = 0;
              *(v170 + 16) = *(v169 + 16);
              v424 = 1 << *(v169 + 32);
              v425 = *(v169 + 64);
              if (v424 < 64)
              {
                v426 = ~(-1 << v424);
              }

              else
              {
                v426 = -1;
              }

              v427 = v426 & v425;
              v448 = ((v424 + 63) >> 6);
              if ((v426 & v425) != 0)
              {
                do
                {
                  v428 = __clz(__rbit64(v427));
                  v427 &= v427 - 1;
LABEL_379:
                  v431 = v428 | (v423 << 6);
                  v432 = 16 * v431;
                  v433 = *(v169 + 56);
                  v434 = *(v169 + 48) + 16 * v431;
                  v435 = *(v434 + 8);
                  v449 = *v434;
                  v436 = 72 * v431;
                  outlined init with copy of AttributedString._AttributeValue(v433 + 72 * v431, &v487);
                  v437 = (*(v170 + 48) + v432);
                  *v437 = v449;
                  v437[1] = v435;
                  v438 = *(v170 + 56) + v436;
                  *v438 = v487;
                  v439 = v488;
                  v440 = v489;
                  v441 = v490;
                  *(v438 + 64) = v491;
                  *(v438 + 32) = v440;
                  *(v438 + 48) = v441;
                  *(v438 + 16) = v439;
                }

                while (v427);
              }

              v429 = v423;
              while (1)
              {
                v423 = v429 + 1;
                if (__OFADD__(v429, 1))
                {
                  goto LABEL_394;
                }

                if (v423 >= v448)
                {
                  break;
                }

                v430 = *(v421 + 8 * v423);
                ++v429;
                if (v430)
                {
                  v428 = __clz(__rbit64(v430));
                  v427 = (v430 - 1) & v430;
                  goto LABEL_379;
                }
              }
            }

            v130 = v446;
          }

          v171 = *(v170 + 56) + 72 * v168;
          v487 = *v171;
          v173 = *(v171 + 32);
          v172 = *(v171 + 48);
          v174 = *(v171 + 64);
          v488 = *(v171 + 16);
          v489 = v173;
          v491 = v174;
          v490 = v172;
          specialized _NativeDictionary._delete(at:)(v168, v170);
          *&v476 = v170;
        }

        else
        {
          v491 = 0;
          v489 = 0u;
          v490 = 0u;
          v487 = 0u;
          v488 = 0u;
        }

        v8 = v468;
        v9 = v465;
        v7 = v464;
LABEL_108:
        AttributedString._AttributeStorage._attributeModified(_:old:new:)(v130, v451, &v487, &v492);
        outlined destroy of TermOfAddress?(&v492, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v487, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

        (v472)(v444, v474);
        (*(v463 + 8))(v452, v462);
        (v455[1])(v454, v456);
        goto LABEL_109;
      }

      v484 = v489;
      v485 = v490;
      v486 = v491;
      v482 = v487;
      v483 = v488;
      outlined init with copy of AttributedString._AttributeValue(&v482, &v477);
      v128 = v476;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v475 = v128;
      v130 = v446;
      v131 = specialized __RawDictionaryStorage.find<A>(_:)(v446, v451);
      v133 = *(v128 + 16);
      v134 = (v132 & 1) == 0;
      v80 = __OFADD__(v133, v134);
      v135 = v133 + v134;
      if (!v80)
      {
        v136 = v132;
        if (*(v128 + 24) < v135)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v135, isUniquelyReferenced_nonNull_native);
          v137 = v475;
          v131 = specialized __RawDictionaryStorage.find<A>(_:)(v130, v451);
          if ((v136 & 1) != (v138 & 1))
          {
            goto LABEL_408;
          }

          v8 = v468;
          if (v136)
          {
            goto LABEL_57;
          }

          goto LABEL_90;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v137 = v128;
          v8 = v468;
          if ((v132 & 1) == 0)
          {
            goto LABEL_90;
          }
        }

        else
        {
          v448 = v131;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v374 = static _DictionaryStorage.copy(original:)();
          v137 = v374;
          if (*(v128 + 16))
          {
            v375 = (v374 + 64);
            v376 = ((1 << *(v137 + 32)) + 63) >> 6;
            if (v137 != v128 || v375 >= v128 + 64 + 8 * v376)
            {
              memmove(v375, (v128 + 64), 8 * v376);
            }

            v445 = (v128 + 64);
            v377 = 0;
            *(v137 + 16) = *(v128 + 16);
            v378 = 1 << *(v128 + 32);
            v379 = *(v128 + 64);
            if (v378 < 64)
            {
              v380 = ~(-1 << v378);
            }

            else
            {
              v380 = -1;
            }

            v381 = v380 & v379;
            v382 = (v378 + 63) >> 6;
            if ((v380 & v379) != 0)
            {
              do
              {
                v383 = __clz(__rbit64(v381));
                v381 &= v381 - 1;
LABEL_343:
                v386 = v383 | (v377 << 6);
                v387 = 16 * v386;
                v388 = *(v128 + 56);
                v389 = *(v128 + 48) + 16 * v386;
                v390 = *(v389 + 8);
                v449 = *v389;
                v391 = 72 * v386;
                outlined init with copy of AttributedString._AttributeValue(v388 + 72 * v386, &v487);
                v392 = (*(v137 + 48) + v387);
                *v392 = v449;
                v392[1] = v390;
                v393 = *(v137 + 56) + v391;
                *v393 = v487;
                v394 = v488;
                v395 = v489;
                v396 = v490;
                *(v393 + 64) = v491;
                *(v393 + 32) = v395;
                *(v393 + 48) = v396;
                *(v393 + 16) = v394;
              }

              while (v381);
            }

            v384 = v377;
            while (1)
            {
              v377 = v384 + 1;
              if (__OFADD__(v384, 1))
              {
                goto LABEL_393;
              }

              if (v377 >= v382)
              {
                break;
              }

              v385 = v445[v377];
              ++v384;
              if (v385)
              {
                v383 = __clz(__rbit64(v385));
                v381 = (v385 - 1) & v385;
                goto LABEL_343;
              }
            }
          }

          v131 = v448;
          v8 = v468;
          v130 = v446;
          if ((v136 & 1) == 0)
          {
LABEL_90:
            *(v137 + 8 * (v131 >> 6) + 64) |= 1 << v131;
            v191 = (*(v137 + 48) + 16 * v131);
            v192 = v451;
            *v191 = v130;
            v191[1] = v192;
            v193 = *(v137 + 56) + 72 * v131;
            *v193 = v477;
            v194 = v478;
            v195 = v479;
            v196 = v480;
            *(v193 + 64) = v481;
            *(v193 + 32) = v195;
            *(v193 + 48) = v196;
            *(v193 + 16) = v194;
            v197 = *(v137 + 16);
            v80 = __OFADD__(v197, 1);
            v198 = v197 + 1;
            if (!v80)
            {
              *(v137 + 16) = v198;

              outlined destroy of AttributedString._AttributeValue(&v482);
              v487 = 0u;
              v488 = 0u;
              v489 = 0u;
              v490 = 0u;
              v491 = 0;
              goto LABEL_92;
            }

            goto LABEL_389;
          }
        }

LABEL_57:
        v139 = *(v137 + 56) + 72 * v131;
        v141 = *(v139 + 16);
        v140 = *(v139 + 32);
        v142 = *(v139 + 48);
        v491 = *(v139 + 64);
        v490 = v142;
        v487 = *v139;
        v488 = v141;
        v489 = v140;
        v143 = *(v137 + 56) + 72 * v131;
        v144 = v478;
        v145 = v479;
        v146 = v480;
        *(v143 + 64) = v481;
        *(v143 + 32) = v145;
        *(v143 + 48) = v146;
        *(v143 + 16) = v144;
        *v143 = v477;
        outlined destroy of AttributedString._AttributeValue(&v482);
LABEL_92:
        v9 = v465;
        v7 = v464;
        *&v476 = v137;
        goto LABEL_108;
      }

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
    }

    v70 = *(v63 + 8);
    v463 = v63 + 8;
    v70(v62, v68);
    v71 = v472[3]();
    v73 = v72;
    v495 = 0;
    memset(v494, 0, sizeof(v494));
    v492 = 0u;
    v493 = 0u;
    outlined init with copy of FloatingPointRoundingRule?(&v492, &v487, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v451 = v70;
    if (!*(&v488 + 1))
    {
      outlined destroy of TermOfAddress?(&v487, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v157 = specialized __RawDictionaryStorage.find<A>(_:)(v71, v73);
      if (v158)
      {
        v159 = v157;
        v160 = v476;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v161 = v160;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v397 = static _DictionaryStorage.copy(original:)();
          v161 = v397;
          if (*(v160 + 16))
          {
            v398 = (v397 + 64);
            v399 = 1 << *(v161 + 32);
            v457 = (v160 + 64);
            v400 = (v399 + 63) >> 6;
            if (v161 != v160 || v398 >= &v457[v400])
            {
              memmove(v398, v457, 8 * v400);
            }

            v401 = 0;
            *(v161 + 16) = *(v160 + 16);
            v402 = 1 << *(v160 + 32);
            if (v402 < 64)
            {
              v403 = ~(-1 << v402);
            }

            else
            {
              v403 = -1;
            }

            v474 = v403 & *(v160 + 64);
            v404 = (v402 + 63) >> 6;
            for (i = v474; v474; i = v474)
            {
              v406 = __clz(__rbit64(i));
              v474 = (i - 1) & i;
LABEL_363:
              v409 = v406 | (v401 << 6);
              v458 = (16 * v409);
              v410 = *(v160 + 56);
              v411 = (*(v160 + 48) + 16 * v409);
              v412 = v411[1];
              v472 = *v411;
              v413 = 72 * v409;
              outlined init with copy of AttributedString._AttributeValue(v410 + 72 * v409, &v487);
              v414 = (v458 + *(v161 + 48));
              *v414 = v472;
              v414[1] = v412;
              v415 = *(v161 + 56) + v413;
              *v415 = v487;
              v416 = v488;
              v417 = v489;
              v418 = v490;
              *(v415 + 64) = v491;
              *(v415 + 32) = v417;
              *(v415 + 48) = v418;
              *(v415 + 16) = v416;
            }

            v407 = v401;
            while (1)
            {
              v401 = v407 + 1;
              if (__OFADD__(v407, 1))
              {
                goto LABEL_395;
              }

              if (v401 >= v404)
              {
                break;
              }

              v408 = v457[v401];
              ++v407;
              if (v408)
              {
                v406 = __clz(__rbit64(v408));
                v474 = (v408 - 1) & v408;
                goto LABEL_363;
              }
            }
          }
        }

        v162 = *(v161 + 56) + 72 * v159;
        v487 = *v162;
        v164 = *(v162 + 32);
        v163 = *(v162 + 48);
        v165 = *(v162 + 64);
        v488 = *(v162 + 16);
        v489 = v164;
        v491 = v165;
        v490 = v163;
        specialized _NativeDictionary._delete(at:)(v159, v161);
        *&v476 = v161;
      }

      else
      {
        v491 = 0;
        v489 = 0u;
        v490 = 0u;
        v487 = 0u;
        v488 = 0u;
      }

      v8 = v468;
      v9 = v465;
      v190 = v456;
      v7 = v464;
      goto LABEL_105;
    }

    v484 = v489;
    v485 = v490;
    v486 = v491;
    v482 = v487;
    v483 = v488;
    outlined init with copy of AttributedString._AttributeValue(&v482, &v477);
    v74 = v476;
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v475 = v74;
    v76 = specialized __RawDictionaryStorage.find<A>(_:)(v71, v73);
    v78 = *(v74 + 16);
    v79 = (v77 & 1) == 0;
    v80 = __OFADD__(v78, v79);
    v81 = v78 + v79;
    if (v80)
    {
      goto LABEL_387;
    }

    v82 = v77;
    if (*(v74 + 24) >= v81)
    {
      break;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v81, v75);
    v83 = v475;
    v76 = specialized __RawDictionaryStorage.find<A>(_:)(v71, v73);
    if ((v82 & 1) != (v84 & 1))
    {
      goto LABEL_408;
    }

    v8 = v468;
    if (v82)
    {
      goto LABEL_42;
    }

LABEL_85:
    *(v83 + 8 * (v76 >> 6) + 64) |= 1 << v76;
    v183 = (*(v83 + 48) + 16 * v76);
    *v183 = v71;
    v183[1] = v73;
    v184 = *(v83 + 56) + 72 * v76;
    *v184 = v477;
    v185 = v478;
    v186 = v479;
    v187 = v480;
    *(v184 + 64) = v481;
    *(v184 + 32) = v186;
    *(v184 + 48) = v187;
    *(v184 + 16) = v185;
    v188 = *(v83 + 16);
    v80 = __OFADD__(v188, 1);
    v189 = v188 + 1;
    if (v80)
    {
      goto LABEL_388;
    }

    *(v83 + 16) = v189;

    outlined destroy of AttributedString._AttributeValue(&v482);
    v487 = 0u;
    v488 = 0u;
    v489 = 0u;
    v490 = 0u;
    v491 = 0;
LABEL_87:
    v9 = v465;
    v190 = v456;
    v7 = v464;
    *&v476 = v83;
LABEL_105:
    AttributedString._AttributeStorage._attributeModified(_:old:new:)(v71, v73, &v487, &v492);
    outlined destroy of TermOfAddress?(&v492, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v487, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

    v451(v452, v462);
    (v455[1])(v454, v190);
LABEL_109:
    v4 = v467;
    v10 = v471;
    v3 = v460;
LABEL_6:
    v7 &= v7 - 1;
    outlined destroy of TermOfAddress?(v496, &_sSS3key_yp5valuetMd);
  }

  if (v75)
  {
    v83 = v74;
    v8 = v468;
    if ((v77 & 1) == 0)
    {
      goto LABEL_85;
    }

LABEL_42:
    v85 = *(v83 + 56) + 72 * v76;
    v87 = *(v85 + 16);
    v86 = *(v85 + 32);
    v88 = *(v85 + 48);
    v491 = *(v85 + 64);
    v490 = v88;
    v487 = *v85;
    v488 = v87;
    v489 = v86;
    v89 = *(v83 + 56) + 72 * v76;
    v90 = v478;
    v91 = v479;
    v92 = v480;
    *(v89 + 64) = v481;
    *(v89 + 32) = v91;
    *(v89 + 48) = v92;
    *(v89 + 16) = v90;
    *v89 = v477;
    outlined destroy of AttributedString._AttributeValue(&v482);
    goto LABEL_87;
  }

  v458 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
  v353 = static _DictionaryStorage.copy(original:)();
  v83 = v353;
  if (!*(v74 + 16))
  {
LABEL_345:

    v76 = v458;
    v8 = v468;
    if ((v82 & 1) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_42;
  }

  v354 = (v353 + 64);
  v355 = ((1 << *(v83 + 32)) + 63) >> 6;
  if (v83 != v74 || v354 >= v74 + 64 + 8 * v355)
  {
    memmove(v354, (v74 + 64), 8 * v355);
  }

  v457 = (v74 + 64);
  v356 = 0;
  *(v83 + 16) = *(v74 + 16);
  v357 = 1 << *(v74 + 32);
  if (v357 < 64)
  {
    v358 = ~(-1 << v357);
  }

  else
  {
    v358 = -1;
  }

  v474 = v358 & *(v74 + 64);
  v449 = ((v357 + 63) >> 6);
  for (j = v474; v474; j = v474)
  {
    v360 = __clz(__rbit64(j));
    v474 = (j - 1) & j;
LABEL_327:
    v363 = v360 | (v356 << 6);
    v364 = 16 * v363;
    v365 = *(v74 + 56);
    v366 = (*(v74 + 48) + 16 * v363);
    v367 = v366[1];
    v472 = *v366;
    v368 = 72 * v363;
    outlined init with copy of AttributedString._AttributeValue(v365 + 72 * v363, &v487);
    v369 = (*(v83 + 48) + v364);
    *v369 = v472;
    v369[1] = v367;
    v370 = *(v83 + 56) + v368;
    *v370 = v487;
    v371 = v488;
    v372 = v489;
    v373 = v490;
    *(v370 + 64) = v491;
    *(v370 + 32) = v372;
    *(v370 + 48) = v373;
    *(v370 + 16) = v371;
  }

  v361 = v356;
  while (1)
  {
    v356 = v361 + 1;
    if (__OFADD__(v361, 1))
    {
      break;
    }

    if (v356 >= v449)
    {
      goto LABEL_345;
    }

    v362 = v457[v356];
    ++v361;
    if (v362)
    {
      v360 = __clz(__rbit64(v362));
      v474 = (v362 - 1) & v362;
      goto LABEL_327;
    }
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t AttributedStringProtocol.settingAttributes(_:)@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, void (**a3)(void *__return_ptr, void, void)@<X2>, uint64_t *a4@<X8>)
{
  v8 = &v79;
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = (&v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *v12;
  v71 = v12[1];
  v72 = v13;
  (*(v14 + 16))(v11, v4, a2, v9);
  AttributedString.init<A>(_:)(v11, a2, a3, a4);
  v15 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = &unk_1EA7B2000;
  v18 = &static AttributedString.Guts._nextVersion;
  if (isUniquelyReferenced_nonNull_native)
  {
    v19 = v15;
    goto LABEL_12;
  }

  v20 = *(v15 + 40);
  v84 = *(v15 + 24);
  v85 = v20;
  v86 = *(v15 + 56);
  v21 = *(v15 + 72);
  v22 = *(v15 + 80);
  v24 = *(v15 + 88);
  v23 = *(v15 + 96);
  type metadata accessor for AttributedString.Guts();
  v19 = swift_allocObject();
  v25 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v84, v73);
  v26 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v26);
  if (v21)
  {
    v27 = v24 == 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = v27;
  if (v28 != v25)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_32:
    swift_once();
  }

  v18 = &static AttributedString.Guts._nextVersion;
  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v30 = v85;
  *(v19 + 24) = v84;
  *(v19 + 16) = add_explicit;
  *(v19 + 40) = v30;
  *(v19 + 56) = v86;
  *(v19 + 72) = v21;
  *(v19 + 80) = v22;
  *(v19 + 88) = v24;
  *(v19 + 96) = v23;
  *(v19 + 104) = MEMORY[0x1E69E7CC0];

  *a4 = v19;
  v17 = &unk_1EA7B2000;
LABEL_12:
  if (v17[147] != -1)
  {
LABEL_30:
    swift_once();
  }

  *(v19 + 16) = atomic_fetch_add_explicit(v18, 1uLL, memory_order_relaxed);
  v31 = *(v19 + 24);
  v32 = *(v19 + 56);
  *(v8 + 64) = *(v19 + 40);
  *(v8 + 80) = v32;
  *(v8 + 48) = v31;
  v33 = *(v19 + 56);
  v34 = *(v19 + 64);
  v35 = *(v19 + 24);
  v65 = *(v19 + 40);
  v66 = v35;
  BigString.startIndex.getter();
  v36 = BigString.endIndex.getter();
  v69 = v37;
  v70 = v36;
  v67 = v39;
  v68 = v38;
  v40 = v66;
  *(v8 + 16) = v65;
  v79 = v40;
  v80 = v33;
  v81 = v34;
  v41 = *(v8 + 64);
  *(v8 + 144) = *(v8 + 48);
  *(v8 + 160) = v41;
  v88 = v83;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v87, v73);
  v42 = BigString.UnicodeScalarView.index(roundingDown:)();
  outlined destroy of BigString(v82);
  v43 = *(v19 + 40);
  v76 = *(v19 + 24);
  v77 = v43;
  v78 = *(v19 + 56);
  swift_unknownObjectRetain();
  v44 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v45 = v44 >> 11;
  v46 = (v44 >> 11) - (v42 >> 11);
  v18 = (v19 + 72);
  v70 = v42 >> 11;
  v47 = v72;
  specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v42 >> 11, v45, v46, v72, v71);
  v48 = v47 + 64;
  v49 = 1 << *(v47 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v8 = v50 & *(v47 + 64);
  v51 = (v49 + 63) >> 6;

  v52 = 0;
  v53 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    goto LABEL_18;
  }

  do
  {
LABEL_16:
    while (1)
    {
      v54 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      outlined init with copy of AttributedString._AttributeValue(*(v72 + 56) + 72 * (v54 | (v52 << 6)), v73);
      v18 = v74;
      v55 = v75;
      outlined copy of AttributedString.AttributeRunBoundaries?(v74, v75);
      outlined destroy of AttributedString._AttributeValue(v73);
      if (v55 != 1)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_18;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v53 + 2) + 1, 1, v53);
    }

    v58 = *(v53 + 2);
    v57 = *(v53 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      v71 = v58 + 1;
      v61 = v53;
      v62 = v58;
      v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v61);
      v59 = v71;
      v58 = v62;
      v53 = v63;
    }

    *(v53 + 2) = v59;
    v60 = &v53[16 * v58];
    *(v60 + 4) = v18;
    *(v60 + 5) = v55;
  }

  while (v8);
  while (1)
  {
LABEL_18:
    v56 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v56 >= v51)
    {
      break;
    }

    v8 = *(v48 + 8 * v56);
    ++v52;
    if (v8)
    {
      v52 = v56;
      goto LABEL_16;
    }
  }

  AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v70, v45, 0, v53);
}

double protocol witness for AttributedStringProtocol.unicodeScalars.getter in conformance AttributedString@<D0>(uint64_t a1@<X8>)
{

  *&result = AttributedString.UnicodeScalarView.init(_:)(v2, a1).n128_u64[0];
  return result;
}

unint64_t instantiation function for generic protocol witness table for AttributedSubstring(uint64_t a1)
{
  *(a1 + 16) = lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring();
  result = lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring();
  *(a1 + 24) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedSubstring and conformance AttributedSubstring()
{
  result = lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring;
  if (!lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring;
  if (!lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring;
  if (!lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring);
  }

  return result;
}

uint64_t Locale.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation6LocaleV10CodingKeys33_2AAD75EEA5F8B89D2896E171C663EB3ELLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Locale.CodingKeys and conformance Locale.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  ObjectType = swift_getObjectType();
  (*(v8 + 64))(ObjectType, v8);
  LOBYTE(v16) = 0;
  v10 = v20;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v10)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {

    *&v16 = v7;
    *(&v16 + 1) = v8;
    type metadata accessor for _LocaleAutoupdating();
    inited = swift_initStaticObject();
    v13 = _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
    v18 = inited;
    v19 = v13;
    LOBYTE(inited) = specialized static Locale.== infix(_:_:)(&v16, &v18);
    swift_unknownObjectRelease();
    if (inited)
    {
      LOBYTE(v16) = 2;
      LOBYTE(v18) = 1;
      lazy protocol witness table accessor for type Locale.Current and conformance Locale.Current();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      return (*(v4 + 8))(v6, v3);
    }

    else
    {
      v18 = v7;
      v19 = v8;
      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      v16 = static LocaleCache.cache;
      v17 = qword_1ED4404B0;
      *&v16 = LocaleCache._currentAndCache.getter();
      *(&v16 + 1) = v14;
      v15 = specialized static Locale.== infix(_:_:)(&v18, &v16);
      swift_unknownObjectRelease();
      LOBYTE(v16) = (v15 & 1) != 0;
      LOBYTE(v18) = 1;
      lazy protocol witness table accessor for type Locale.Current and conformance Locale.Current();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      return (*(v4 + 8))(v6, v3);
    }
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Calendar.CodingKeys()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6565577473726966;
  v4 = 0xD000000000000016;
  if (v1 != 4)
  {
    v4 = 0x746E6572727563;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C61636F6CLL;
  if (v1 != 1)
  {
    v5 = 0x656E6F5A656D6974;
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

unint64_t lazy protocol witness table accessor for type Calendar.Current and conformance Calendar.Current()
{
  result = lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current;
  if (!lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current;
  if (!lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current;
  if (!lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current;
  if (!lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current);
  }

  return result;
}

void Calendar.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation8CalendarV10CodingKeys33_F3BDB2D973DC43C399EBDEAB6295AE62LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Calendar.CodingKeys and conformance Calendar.CodingKeys();
  v9 = v3;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  ObjectType = swift_getObjectType();
  (*(v8 + 24))(&v22, ObjectType, v8);
  Calendar.Identifier.cfCalendarIdentifier.getter();
  LOBYTE(v22) = 0;
  v11 = v23;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v11)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v23 = v4;

    v12 = (*(v8 + 32))(&v22, ObjectType, v8);
    v13 = v22;
    if (v22)
    {
      v14 = *(&v22 + 1);
    }

    else
    {
      if (one-time initialization token for cache != -1)
      {
        v12 = swift_once();
      }

      v15 = static LocaleCache.cache;
      MEMORY[0x1EEE9AC00](v12);
      *(&v20 - 2) = 0;
      *(&v20 - 1) = 0xE000000000000000;
      os_unfair_lock_lock((v15 + 48));
      closure #1 in LocaleCache.fixed(_:)partial apply((v15 + 16), &v21);
      os_unfair_lock_unlock((v15 + 48));
      v14 = *(&v21 + 1);
      v13 = v21;
      v9 = v3;
    }

    *&v22 = v13;
    *(&v22 + 1) = v14;
    LOBYTE(v21) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
    lazy protocol witness table accessor for type Locale? and conformance <A> A?();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_unknownObjectRelease();
    (*(v8 + 48))(&v22, ObjectType, v8);
    v21 = v22;
    LOBYTE(v20) = 2;
    lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_unknownObjectRelease();
    (*(v8 + 56))(ObjectType, v8);
    LOBYTE(v22) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v8 + 72))(ObjectType, v8);
    LOBYTE(v22) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v22 = v7;
    *(&v22 + 1) = v8;
    type metadata accessor for _CalendarAutoupdating();
    inited = swift_initStaticObject();
    v17 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _CalendarAutoupdating and conformance _CalendarAutoupdating, type metadata accessor for _CalendarAutoupdating);
    *&v21 = inited;
    *(&v21 + 1) = v17;
    LOBYTE(inited) = specialized static Calendar.== infix(_:_:)(&v22, &v21);
    swift_unknownObjectRelease();
    v18 = v23;
    if (inited)
    {
      LOBYTE(v22) = 2;
    }

    else
    {
      *&v22 = v7;
      *(&v22 + 1) = v8;
      static Calendar.current.getter(&v21);
      v20 = v21;
      v19 = specialized static Calendar.== infix(_:_:)(&v22, &v20);
      swift_unknownObjectRelease();
      LOBYTE(v22) = (v19 & 1) != 0;
    }

    LOBYTE(v21) = 5;
    lazy protocol witness table accessor for type Calendar.Current and conformance Calendar.Current();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v18 + 8))(v6, v9);
  }
}

unint64_t lazy protocol witness table accessor for type Calendar.CodingKeys and conformance Calendar.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Locale? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Locale? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation6LocaleVSgMd);
    lazy protocol witness table accessor for type Locale and conformance Locale();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale? and conformance <A> A?);
  }

  return result;
}

uint64_t _NSProgressIPCDebugLog()
{
  if (qword_1ED43F0A8 != -1)
  {
    dispatch_once(&qword_1ED43F0A8, &__block_literal_global_91);
  }

  return _MergedGlobals_25_0;
}

uint64_t lazy protocol witness table accessor for type Duration.TimeFormatStyle.Pattern.Fields and conformance Duration.TimeFormatStyle.Pattern.Fields(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t instantiation function for generic protocol witness table for Duration.TimeFormatStyle(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Duration.TimeFormatStyle.Pattern.Fields and conformance Duration.TimeFormatStyle.Pattern.Fields(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle, type metadata accessor for Duration.TimeFormatStyle);
  a1[2] = lazy protocol witness table accessor for type Duration.TimeFormatStyle.Pattern.Fields and conformance Duration.TimeFormatStyle.Pattern.Fields(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle, type metadata accessor for Duration.TimeFormatStyle);
  result = lazy protocol witness table accessor for type Duration.TimeFormatStyle.Pattern.Fields and conformance Duration.TimeFormatStyle.Pattern.Fields(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle, type metadata accessor for Duration.TimeFormatStyle);
  a1[3] = result;
  return result;
}

uint64_t Duration.formatted<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a2;
  v6[1] = a3;
  return (*(a5 + 48))(v6, a4, a5);
}

uint64_t PredicateExpressions.Comparison<>.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    v6 = *v1;
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    lazy protocol witness table accessor for type PredicateExpressions.ComparisonOperator and conformance PredicateExpressions.ComparisonOperator();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.ComparisonOperator and conformance PredicateExpressions.ComparisonOperator()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator and conformance PredicateExpressions.ComparisonOperator;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator and conformance PredicateExpressions.ComparisonOperator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator and conformance PredicateExpressions.ComparisonOperator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator and conformance PredicateExpressions.ComparisonOperator;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator and conformance PredicateExpressions.ComparisonOperator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator and conformance PredicateExpressions.ComparisonOperator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator and conformance PredicateExpressions.ComparisonOperator;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator and conformance PredicateExpressions.ComparisonOperator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator and conformance PredicateExpressions.ComparisonOperator);
  }

  return result;
}

uint64_t PredicateExpressions.ComparisonOperator.encode(to:)(void *a1)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation15EmptyCodingKeysOGMd);
  v3 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v5 = &v12 - v4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation20PredicateExpressionsO18ComparisonOperatorO10CodingKeys33_ABF9C2C4EB35CAE5C3D84C740B7347C5LLOGMd);
  v6 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v8 = &v12 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PredicateExpressions.ComparisonOperator.CodingKeys and conformance PredicateExpressions.ComparisonOperator.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v17 = 2;
    }

    else
    {
      v18 = 3;
    }
  }

  else if (v9)
  {
    v16 = 1;
  }

  else
  {
    v15 = 0;
  }

  lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
  v10 = v13;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v5, v14);
  return (*(v6 + 8))(v8, v10);
}

void NSObject.KVOSubscription.cancel()()
{
  v1 = *v0;
  v2 = *&v0[*(*v0 + 176)];
  os_unfair_lock_lock(v2);
  v3 = *(v0 + 2);
  if (v3)
  {
    v13 = v3;
    os_unfair_lock_unlock(v2);
    v4 = *(v0 + 2);
    *(v0 + 2) = 0;

    v5 = *(*v0 + 144);
    v6 = *(v1 + 96);
    v7 = type metadata accessor for Optional();
    (*(*(v7 - 8) + 8))(&v0[v5], v7);
    (*(*(v6 - 8) + 56))(&v0[v5], 1, 1, v6);
    v8 = *(*v0 + 136);
    v9 = *(v1 + 88);
    v10 = type metadata accessor for Optional();
    (*(*(v10 - 8) + 8))(&v0[v8], v10);
    (*(*(v9 - 8) + 56))(&v0[v8], 1, 1, v9);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      NSKeyValueObservation.Helper.invalidate()();
    }

    swift_unknownObjectWeakAssign();
  }

  else
  {

    os_unfair_lock_unlock(v2);
  }
}

uint64_t NSObject.KVOSubscription.__deallocating_deinit()
{
  MEMORY[0x1865D2690](*(v0 + *(*v0 + 22)), -1, -1);
  MEMORY[0x1865D2690](*(v0 + *(*v0 + 23)), -1, -1);

  v1 = *(*v0 + 17);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 18);
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  MEMORY[0x1865D27A0](v0 + *(*v0 + 19));

  return swift_deallocClassInstance();
}

void partial apply for closure #1 in _CalendarICU.copy(changingLocale:changingTimeZone:changingFirstWeekday:changingMinimumDaysInFirstWeek:)(uint64_t *a1@<X8>)
{
  closure #1 in _CalendarICU.copy(changingLocale:changingTimeZone:changingFirstWeekday:changingMinimumDaysInFirstWeek:)(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), a1, *(v1 + 80));
}

{
  partial apply for closure #1 in _CalendarICU.copy(changingLocale:changingTimeZone:changingFirstWeekday:changingMinimumDaysInFirstWeek:)(a1);
}

double partial apply for specialized closure #1 in LockedState<A>.withLock<A>(_:)@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

{
  return partial apply for specialized closure #1 in LockedState<A>.withLock<A>(_:)(a1);
}

void closure #1 in _CalendarICU.copy(changingLocale:changingTimeZone:changingFirstWeekday:changingMinimumDaysInFirstWeek:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, char a10)
{
  v13 = a4;
  v17 = *(a1 + 40);
  v16 = *(a1 + 48);
  v18 = a2;
  if (a2)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = *(a1 + 104);
    a3 = *(a1 + 112);
    swift_unknownObjectRetain();
    if (v13)
    {
LABEL_3:
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v19 = a10;
      if (a7)
      {
        goto LABEL_4;
      }

LABEL_8:
      v20 = 0;
      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = v17;
  a5 = v16;
  v19 = a10;
  if ((a7 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  a6 = *(a1 + 56);
  v20 = *(a1 + 64);
  if ((v19 & 1) == 0)
  {
LABEL_5:
    v21 = 0;
    goto LABEL_10;
  }

LABEL_9:
  a8 = *(a1 + 72);
  v21 = *(a1 + 80);
LABEL_10:
  v22 = *(a1 + 24);
  type metadata accessor for _CalendarICU();
  v23 = swift_allocObject();
  *(v23 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMd);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v23 + 16) = v24;
  *(v23 + 104) = v18;
  *(v23 + 112) = a3;
  *(v23 + 40) = v13;
  *(v23 + 48) = a5;
  *(v23 + 56) = a6;
  *(v23 + 64) = v20;
  *(v23 + 72) = a8;
  *(v23 + 80) = v21;
  *(v23 + 88) = 0;
  *(v23 + 96) = 1;
  swift_unknownObjectRetain();
  v36 = v22;
  v35[0] = v13;
  v35[1] = a5;
  if (v18)
  {
    swift_unknownObjectRetain();
LABEL_16:
    v33 = v18;
    v34 = a3;
    v28 = specialized static _CalendarICU.icuCalendar(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:)(&v36, v35, &v33, a6, v20, a8, v21);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(v23 + 32) = v28;
    v29 = lazy protocol witness table accessor for type _CalendarICU and conformance _CalendarICU(&lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU);
    *a9 = v23;
    a9[1] = v29;
    return;
  }

  v25 = one-time initialization token for cache;
  v26 = swift_unknownObjectRetain();
  if (v25 != -1)
  {
    v26 = swift_once();
  }

  v27 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v26);
  os_unfair_lock_lock((v27 + 48));
  partial apply for closure #1 in LocaleCache.fixed(_:)((v27 + 16), &v33);
  if (!v31)
  {
    os_unfair_lock_unlock((v27 + 48));
    v18 = v33;
    a3 = v34;
    goto LABEL_16;
  }

  os_unfair_lock_unlock((v27 + 48));
  __break(1u);
}

uint64_t specialized static _CalendarICU.icuCalendar(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v249 = *MEMORY[0x1E69E9840];
  v168 = *a1;
  v144 = *(a2 + 8);
  v7 = *(a3 + 8);
  ObjectType = swift_getObjectType();
  v142 = v7;
  v8 = (*(v7 + 64))(ObjectType, v7);
  v10 = v9;
  memset(v248, 0, 96);
  outlined destroy of Locale.Language.Components(v248);
  String.utf8CString.getter();
  Language = uloc_getLanguage();

  v12 = 0;
  v13 = 0;
  if (Language > 0)
  {
    v247[Language] = 0;
    v12 = MEMORY[0x1865CAEB0](v247);
    v13 = v14;
  }

  String.utf8CString.getter();
  Script = uloc_getScript();

  v16 = 0;
  v17 = 0;
  if (Script > 0)
  {
    v246[Script] = 0;
    v16 = MEMORY[0x1865CAEB0](v246);
    v17 = v18;
  }

  String.utf8CString.getter();
  Country = uloc_getCountry();

  v20 = 0;
  v21 = 0;
  if (Country > 0)
  {
    v245[Country] = 0;
    v20 = MEMORY[0x1865CAEB0](v245);
    v21 = v22;
  }

  if (v13)
  {
    v23 = String.lowercased()();
    object = v23._object;
    countAndFlagsBits = v23._countAndFlagsBits;
    if (v17)
    {
LABEL_9:
      v192._countAndFlagsBits = v16;
      v192._object = v17;

      String.init<A>(_:)();
      v24 = String._capitalized()();
      v181 = v24._object;
      v182 = v24._countAndFlagsBits;

      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
    object = 0;
    countAndFlagsBits = 0;
    if (v17)
    {
      goto LABEL_9;
    }
  }

  v16 = 0;
  v181 = 0;
  v182 = 0;
LABEL_12:
  v185 = v13;
  v179 = v8;
  v190 = v10;
  if (v21)
  {
    v25 = String.uppercased()();
    v26 = v25._countAndFlagsBits;
    v27 = v25._object;
  }

  else
  {
    v20 = 0;
    v26 = 0;
    v27 = 0;
  }

  v187 = v26;
  v172 = v20;
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  v244[0] = v12;
  v244[1] = v185;
  v244[2] = countAndFlagsBits;
  v244[3] = object;
  v244[4] = v16;
  v244[5] = v17;
  v244[6] = v182;
  v244[7] = v181;
  v244[8] = v20;
  v244[9] = v21;
  v244[10] = v26;
  v244[11] = v27;
  outlined copy of Locale.LanguageCode?(v12, v185);
  outlined copy of Locale.LanguageCode?(v16, v17);
  v171 = v27;
  outlined copy of Locale.LanguageCode?(v20, v21);
  outlined destroy of Locale.Language.Components(v244);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  LODWORD(v192._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  Variant = uloc_getVariant();

  v186 = v21;
  v151 = v12;
  v152 = v17;
  v153 = v16;
  if (Variant > 0 && (v243[Variant] = 0, v29 = MEMORY[0x1865CAEB0](v243), v30))
  {
    v139 = v29;
    v162 = v30;
    v31 = String.lowercased()();
    v150 = v31._countAndFlagsBits;
    v159 = v31._object;
    outlined consume of Locale.LanguageCode?(0, 0);
  }

  else
  {
    v139 = 0;
    v162 = 0;
    v150 = 0;
    v159 = 0;
  }

  String.utf8CString.getter();
  v32 = uloc_openKeywords();

  v33 = 0;
  v167 = 4;
  v173 = 7;
  v34 = v168;
  v174 = 0;
  v160 = 0;
  v161 = 0;
  v180 = 0;
  v148 = 0;
  v149 = 0;
  v169 = 0;
  v170 = 0;
  v157 = 0;
  v158 = 0;
  v177 = 0;
  v178 = 0;
  v146 = 0;
  v147 = 0;
  v165 = 0;
  v166 = 0;
  v155 = 0;
  v156 = 0;
  v175 = 0;
  v176 = 0;
  v35 = 0;
  v36 = 0;
  v163 = 0;
  v164 = 0;
  v154 = 0;
  if (v32)
  {
    type metadata accessor for ICU.Enumerator();
    *(swift_allocObject() + 16) = v32;
    LODWORD(v192._countAndFlagsBits) = 0;
    LODWORD(v235._countAndFlagsBits) = 0;
    v37 = uenum_next();
    v154 = 0;
    v155 = 0;
    v163 = 0;
    v164 = 0;
    v175 = 0;
    v176 = 0;
    v146 = 0;
    v147 = 0;
    v36 = 0;
    v160 = 0;
    v161 = 0;
    v189 = 0;
    v165 = 0;
    v166 = 0;
    v156 = 0;
    v157 = 0;
    v177 = 0;
    v178 = 0;
    v169 = 0;
    v170 = 0;
    v148 = 0;
    v149 = 0;
    v158 = 0;
    v180 = 0;
    v33 = 0;
    v173 = 7;
    v174 = 0;
    v167 = 4;
    while (1)
    {
      if (!v37)
      {
LABEL_21:

        v35 = v189;
        v34 = v168;
        break;
      }

      v57 = String.init(cString:)();
      static Locale.legacyKey(forKey:)(v57, v58, &v192._countAndFlagsBits);

      v59 = v192._object;
      if (v192._object)
      {
        v60 = v192._countAndFlagsBits;
        LODWORD(v192._countAndFlagsBits) = 0;
        String.utf8CString.getter();
        String.utf8CString.getter();
        KeywordValue = uloc_getKeywordValue();

        if (SLODWORD(v192._countAndFlagsBits) > 0)
        {
          goto LABEL_56;
        }

        if (KeywordValue <= 0)
        {
          goto LABEL_56;
        }

        v191[KeywordValue] = 0;
        v62 = MEMORY[0x1865CAEB0](v191);
        if (!v63)
        {
          goto LABEL_56;
        }

        v64 = v62;
        v65 = v63;
        if (v60 == 0x7261646E656C6163 && v59 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v66._countAndFlagsBits = v64;
          v66._object = v65;
          Calendar.Identifier.init(identifierString:)(v66);
          goto LABEL_57;
        }

        if (v60 == 0x6F6974616C6C6F63 && v59 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v67 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v33, v174);
          v33 = v64;
          v174 = v65;
          v161 = v67._countAndFlagsBits;
          v180 = v67._object;
          goto LABEL_57;
        }

        if (v60 == 0x79636E6572727563 && v59 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v68 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v149, v170);
          v149 = v64;
          v170 = v65;
          v158 = v68._countAndFlagsBits;
          v178 = v68._object;
          goto LABEL_57;
        }

        if (v60 == 0x737265626D756ELL && v59 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v69 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v148, v169);
          v148 = v64;
          v169 = v65;
          v157 = v69._countAndFlagsBits;
          v177 = v69._object;
          goto LABEL_57;
        }

        if (v60 == 30566 && v59 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v250._countAndFlagsBits = v64;
          v250._object = v65;
          Locale.Weekday.init(rawValue:)(v250, &v192);
          v173 = v192._countAndFlagsBits;
          goto LABEL_57;
        }

        if ((v60 != 0x7372756F68 || v59 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          if (v60 == 0x6572757361656DLL && v59 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            if (v64 == 0x6C61697265706D69 && v65 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              if (one-time initialization token for uk != -1)
              {
                swift_once();
              }

              v73 = static Locale.MeasurementSystem.uk;
              v72 = *algn_1EA7AFAD8;
              v74 = xmmword_1EA7AFAE0;

              outlined consume of Locale.LanguageCode?(v147, v166);
              v147 = v73;
              v166 = v72;
              v176 = *(&v74 + 1);
              v156 = v74;
            }

            else
            {
              v80 = String.lowercased()();
              outlined consume of Locale.LanguageCode?(v147, v166);
              v147 = v64;
              v166 = v65;
              v156 = v80._countAndFlagsBits;
              v176 = v80._object;
            }

            goto LABEL_57;
          }

          if (v60 == 26482 && v59 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            if (String.count.getter() > 2)
            {
              specialized Collection.prefix(_:)(2);

              v75 = Substring.uppercased()();

              v192 = v75;
              v76 = String.init<A>(_:)();
              v78 = v77;
              v79 = String.uppercased()();
              outlined consume of Locale.LanguageCode?(v165, v189);
              v165 = v76;
              v189 = v78;
              v160 = v79._countAndFlagsBits;
              v36 = v79._object;
              goto LABEL_57;
            }
          }

          else
          {
            if (v60 == 25715 && v59 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v81 = String.lowercased()();
              outlined consume of Locale.LanguageCode?(v146, v164);
              v146 = v64;
              v164 = v65;
              v155 = v81._countAndFlagsBits;
              v175 = v81._object;
              goto LABEL_57;
            }

            if (v60 == 0x656E6F7A656D6974 && v59 == 0xE800000000000000)
            {

LABEL_120:
              if (one-time initialization token for cache != -1)
              {
                v82 = swift_once();
              }

              v84 = static TimeZoneCache.cache;
              MEMORY[0x1EEE9AC00](v82);
              os_unfair_lock_lock(v84 + 30);
              partial apply for closure #1 in TimeZoneCache.fixed(_:)(&v192._countAndFlagsBits);
              os_unfair_lock_unlock(v84 + 30);
              v85 = v192;

              if (v85._countAndFlagsBits)
              {
                v86 = v85._object;
              }

              else
              {
                v86 = 0;
              }

              v154 = v86;
              swift_unknownObjectRelease();
              v163 = v85._countAndFlagsBits;
              goto LABEL_57;
            }

            v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v83)
            {
              goto LABEL_120;
            }
          }

LABEL_56:

          goto LABEL_57;
        }

        v70._countAndFlagsBits = v64;
        v70._object = v65;
        v71 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Locale.HourCycle.init(rawValue:), v70);

        if (v71 > 1)
        {
          if (v71 == 2)
          {
            v167 = 2;
            goto LABEL_57;
          }

          if (v71 != 3)
          {
            goto LABEL_103;
          }

          v167 = 3;
        }

        else
        {
          if (!v71)
          {
            v167 = 0;
            goto LABEL_57;
          }

          if (v71 != 1)
          {
LABEL_103:
            v167 = 4;
            goto LABEL_57;
          }

          v167 = 1;
        }
      }

LABEL_57:
      LODWORD(v192._countAndFlagsBits) = 0;
      LODWORD(v235._countAndFlagsBits) = 0;
      v37 = uenum_next();
      if (SLODWORD(v192._countAndFlagsBits) > 0)
      {
        goto LABEL_21;
      }
    }
  }

  v188 = v35;
  if (v34 != 27)
  {
    LOBYTE(v192._countAndFlagsBits) = v34;
    v41 = Calendar.Identifier.cldrIdentifier.getter();
    v43 = v42;
    v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v45 = v38[2];
    v44 = v38[3];
    v39 = v162;
    if (v45 >= v44 >> 1)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v38);
    }

    v40 = v165;
    v38[2] = v45 + 1;
    v46 = &v38[4 * v45];
    v46[4] = 0x7261646E656C6163;
    v46[5] = 0xE800000000000000;
    v46[6] = v41;
    v46[7] = v43;
    if (!v174)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  v38 = MEMORY[0x1E69E7CC0];
  v39 = v162;
  v40 = v165;
  if (v174)
  {
LABEL_28:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
    }

    v48 = v38[2];
    v47 = v38[3];
    if (v48 >= v47 >> 1)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v38);
    }

    v38[2] = v48 + 1;
    v49 = &v38[4 * v48];
    v49[4] = 0x6F6974616C6C6F63;
    v49[5] = 0xE90000000000006ELL;
    v49[6] = v161;
    v49[7] = v180;
  }

LABEL_33:
  if (v170)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
    }

    v51 = v38[2];
    v50 = v38[3];
    if (v51 >= v50 >> 1)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v38);
    }

    v38[2] = v51 + 1;
    v52 = &v38[4 * v51];
    v52[4] = 0x79636E6572727563;
    v52[5] = 0xE800000000000000;
    v52[6] = v158;
    v52[7] = v178;
  }

  if (v169)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
    }

    v54 = v38[2];
    v53 = v38[3];
    if (v54 >= v53 >> 1)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v38);
    }

    v38[2] = v54 + 1;
    v55 = &v38[4 * v54];
    v55[4] = 0x737265626D756ELL;
    v55[5] = 0xE700000000000000;
    v55[6] = v157;
    v55[7] = v177;
  }

  if (v173 <= 3u)
  {
    if (v173 > 1u)
    {
      if (v173 == 2)
      {
        v56 = 6649204;
      }

      else
      {
        v56 = 6579575;
      }
    }

    else
    {
      v56 = 7237485;
      if (!v173)
      {
        v56 = 7239027;
      }
    }

LABEL_129:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_130;
    }

    goto LABEL_222;
  }

  if (v173 <= 5u)
  {
    if (v173 == 4)
    {
      v56 = 7694452;
    }

    else
    {
      v56 = 6910566;
    }

    goto LABEL_129;
  }

  if (v173 == 6)
  {
    v56 = 7627123;
    goto LABEL_129;
  }

LABEL_133:
  if (v167 <= 1u)
  {
    v90 = 3223912;
    if (v167)
    {
      v90 = 3289448;
    }
  }

  else if (v167 == 2)
  {
    v90 = 3355240;
  }

  else
  {
    if (v167 != 3)
    {
      goto LABEL_145;
    }

    v90 = 3420776;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
  }

  v92 = v38[2];
  v91 = v38[3];
  if (v92 >= v91 >> 1)
  {
    v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v38);
  }

  v38[2] = v92 + 1;
  v93 = &v38[4 * v92];
  v93[4] = 0x7372756F68;
  v93[5] = 0xE500000000000000;
  v93[6] = v90;
  v93[7] = 0xE300000000000000;
LABEL_145:
  if (v166)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
    }

    v95 = v38[2];
    v94 = v38[3];
    if (v95 >= v94 >> 1)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v38);
    }

    v38[2] = v95 + 1;
    v96 = &v38[4 * v95];
    v96[4] = 0x6572757361656DLL;
    v96[5] = 0xE700000000000000;
    v96[6] = v156;
    v96[7] = v176;
  }

  v145 = v36;
  if (!v188)
  {
    goto LABEL_156;
  }

  if (v186)
  {
    if (v160 == v187 && v36 == v171)
    {
      outlined copy of Locale.LanguageCode?(v40, v188);
      outlined copy of Locale.LanguageCode?(v172, v186);
      outlined copy of Locale.LanguageCode?(v40, v188);
      outlined consume of Locale.LanguageCode?(v172, v186);

      outlined consume of Locale.LanguageCode?(v40, v188);
LABEL_156:
      v36 = v163;
      goto LABEL_164;
    }

    v137 = v33;
    v136 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v162 = v39;
    v97 = v188;
    outlined copy of Locale.LanguageCode?(v40, v188);
    outlined copy of Locale.LanguageCode?(v172, v186);
    outlined copy of Locale.LanguageCode?(v40, v188);
    outlined consume of Locale.LanguageCode?(v172, v186);

    outlined consume of Locale.LanguageCode?(v40, v188);
    if (v136)
    {
      v36 = v163;
      goto LABEL_164;
    }
  }

  else
  {
    v137 = v33;
    v97 = v188;
    outlined copy of Locale.LanguageCode?(v40, v188);
    outlined copy of Locale.LanguageCode?(v172, 0);
    outlined copy of Locale.LanguageCode?(v40, v188);

    outlined consume of Locale.LanguageCode?(v40, v188);
    outlined consume of Locale.LanguageCode?(v172, 0);
  }

  v192._countAndFlagsBits = v40;
  v192._object = v97;

  MEMORY[0x1865CB0E0](2054847098, 0xE400000000000000);
  v98 = String.lowercased()();
  v99 = v98._countAndFlagsBits;
  v100 = v98._object;

  v33 = v137;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_225;
  }

  while (1)
  {
    v102 = v38[2];
    v101 = v38[3];
    v36 = v163;
    if (v102 >= v101 >> 1)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1, v38);
    }

    v38[2] = v102 + 1;
    v103 = &v38[4 * v102];
    v103[4] = 26482;
    v103[5] = 0xE200000000000000;
    v103[6] = v99;
    v103[7] = v100;
LABEL_164:
    if (v164)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
      }

      v105 = v38[2];
      v104 = v38[3];
      if (v105 >= v104 >> 1)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v104 > 1), v105 + 1, 1, v38);
      }

      v38[2] = v105 + 1;
      v106 = &v38[4 * v105];
      v106[4] = 25715;
      v106[5] = 0xE200000000000000;
      v106[6] = v155;
      v106[7] = v175;
    }

    if (v36)
    {
      v107 = swift_getObjectType();
      v108 = v154[4](v107);
      v110 = v109;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
      }

      v112 = v38[2];
      v111 = v38[3];
      if (v112 >= v111 >> 1)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v111 > 1), v112 + 1, 1, v38);
      }

      v38[2] = v112 + 1;
      v113 = &v38[4 * v112];
      v113[4] = 0x656E6F7A656D6974;
      v113[5] = 0xE800000000000000;
      v113[6] = v108;
      v113[7] = v110;
    }

    if (v39)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
      }

      v115 = v38[2];
      v114 = v38[3];
      if (v115 >= v114 >> 1)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v114 > 1), v115 + 1, 1, v38);
      }

      v38[2] = v115 + 1;
      v116 = &v38[4 * v115];
      v116[4] = 24950;
      v116[5] = 0xE200000000000000;
      v116[6] = v150;
      v116[7] = v159;
    }

    v192._countAndFlagsBits = v151;
    v192._object = v185;
    *&v193 = countAndFlagsBits;
    *(&v193 + 1) = object;
    *&v194 = v153;
    *(&v194 + 1) = v152;
    *&v195 = v182;
    *(&v195 + 1) = v181;
    *&v196 = v172;
    *(&v196 + 1) = v186;
    *&v197 = v187;
    *(&v197 + 1) = v171;
    v235._countAndFlagsBits = Locale.Language.Components.identifier.getter();
    v235._object = v117;
    v56 = v38[2];
    if (v56)
    {
      MEMORY[0x1865CB0E0](64, 0xE100000000000000);
      v118 = v38[2];
      if (v118)
      {
        v119 = 0;
        v40 = v56 - 1;
        v39 = v38 + 7;
        while (v119 < v118)
        {
          v121 = *(v39 - 1);
          v120 = *v39;
          v122 = *(v39 - 2);
          v192._countAndFlagsBits = *(v39 - 3);
          v192._object = v122;

          MEMORY[0x1865CB0E0](61, 0xE100000000000000);
          MEMORY[0x1865CB0E0](v121, v120);

          v56 = v192._object;
          MEMORY[0x1865CB0E0](v192._countAndFlagsBits, v192._object);

          if (v40 != v119)
          {
            MEMORY[0x1865CB0E0](59, 0xE100000000000000);
          }

          ++v119;
          v118 = v38[2];
          v39 += 4;
          if (v119 == v118)
          {
            goto LABEL_189;
          }
        }

        __break(1u);
        goto LABEL_221;
      }
    }

LABEL_189:

    v56 = v235._object;
    v123 = swift_getObjectType();
    v124 = (*(v144 + 32))(v123);
    v99 = specialized _copyCollectionToContiguousArray<A>(_:)(v124, v125);

    v40 = *(v99 + 16);
    if (v40 >> 31)
    {
LABEL_221:
      __break(1u);
LABEL_222:
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
LABEL_130:
      v88 = v38[2];
      v87 = v38[3];
      if (v88 >= v87 >> 1)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1, v38);
      }

      v38[2] = v88 + 1;
      v89 = &v38[4 * v88];
      v89[4] = 30566;
      v89[5] = 0xE200000000000000;
      v89[6] = v56;
      v89[7] = 0xE300000000000000;
      goto LABEL_133;
    }

    v39 = v187;
    String.utf8CString.getter();
    v126 = ucal_open();

    if (!v126)
    {
      goto LABEL_231;
    }

    v38 = v152;
    if (!v168)
    {
      ucal_getGregorianChange();
      ucal_setGregorianChange();
    }

    v100 = &v192;
    if (a5)
    {
      break;
    }

LABEL_207:
    if (a4 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a4 <= 0x7FFFFFFF)
    {
LABEL_209:
      ucal_setAttribute();
LABEL_210:
      if ((a7 & 1) == 0)
      {
        goto LABEL_217;
      }

LABEL_211:
      (*(v142 + 464))(&v235, ObjectType);
      v197 = v240;
      v198 = v241;
      v199[0] = v242[0];
      *(v199 + 12) = *(v242 + 12);
      v193 = v236;
      v194 = v237;
      v195 = v238;
      v196 = v239;
      v192 = v235;
      if (_s10Foundation17LocalePreferencesVSgWOg(&v192) == 1)
      {
        goto LABEL_218;
      }

      v133 = *(&v195 + 1);

      outlined destroy of LocalePreferences?(&v235);
      if (!v133)
      {
        goto LABEL_218;
      }

      if (!*(v133 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v168), (v134 & 1) == 0))
      {

        goto LABEL_218;
      }

LABEL_217:
      ucal_setAttribute();
LABEL_218:
      v192._countAndFlagsBits = v151;
      v192._object = v185;
      *&v193 = countAndFlagsBits;
      *(&v193 + 1) = object;
      *&v194 = v153;
      *(&v194 + 1) = v152;
      *&v195 = v182;
      *(&v195 + 1) = v181;
      *&v196 = v172;
      *(&v196 + 1) = v186;
      *&v197 = v187;
      *(&v197 + 1) = v171;
      LOBYTE(v198) = v168;
      *(&v198 + 1) = v33;
      *&v199[0] = v174;
      *(&v199[0] + 1) = v161;
      *&v199[1] = v180;
      *(&v199[1] + 1) = v149;
      v200 = v170;
      v201 = v158;
      v202 = v178;
      v203 = v148;
      v204 = v169;
      v205 = v157;
      v206 = v177;
      v207 = v173;
      v208 = v167;
      v209 = v147;
      v210 = v166;
      v211 = v156;
      v212 = v176;
      v213 = v165;
      v214 = v188;
      v215 = v160;
      v216 = v145;
      v217 = v146;
      v218 = v164;
      v219 = v155;
      v220 = v175;
      v221 = v163;
      v222 = v154;
      v223 = v139;
      v224 = v162;
      v225 = v150;
      v226 = v159;
      outlined destroy of Locale.Components(&v192);
      return v126;
    }

    __break(1u);
LABEL_225:
    v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
  }

  (*(v142 + 464))(&v227, ObjectType);
  v240 = v232;
  v241 = v233;
  v242[0] = v234[0];
  *(v242 + 12) = *(v234 + 12);
  v237 = v229;
  v238 = v230;
  v239 = v231;
  v235 = v227;
  v236 = v228;
  v197 = v232;
  v198 = v233;
  v199[0] = v234[0];
  *(v199 + 12) = *(v234 + 12);
  v193 = v228;
  v194 = v229;
  v195 = v230;
  v196 = v231;
  v192 = v227;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v192) == 1)
  {
    goto LABEL_210;
  }

  v99 = v195;

  outlined destroy of LocalePreferences?(&v235);
  if (!v99)
  {
    goto LABEL_210;
  }

  if (!*(v99 + 16) || (v127 = specialized __RawDictionaryStorage.find<A>(_:)(v168), (v128 & 1) == 0))
  {

    if ((a7 & 1) == 0)
    {
      goto LABEL_217;
    }

    goto LABEL_211;
  }

  v129 = *(*(v99 + 56) + 8 * v127);

  if (v129 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
  }

  if (v129 > 0x7FFFFFFF)
  {
    goto LABEL_227;
  }

  if (v129 <= 0 || v129 > 7)
  {
    goto LABEL_210;
  }

  v130 = specialized Collection<>.firstIndex(of:)(outlined read-only object #0 of one-time initialization function for weekdays[v129 + 31], outlined read-only object #0 of one-time initialization function for weekdays);
  if ((v131 & 1) == 0)
  {
    v132 = v130 + 1;
    if (__OFADD__(v130, 1))
    {
      goto LABEL_228;
    }

    if (v132 < 0xFFFFFFFF80000000)
    {
      goto LABEL_229;
    }

    if (v132 <= 0x7FFFFFFF)
    {
      goto LABEL_209;
    }

    __break(1u);
    goto LABEL_207;
  }

  __break(1u);
LABEL_231:
  v192._countAndFlagsBits = 0;
  v192._object = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  MEMORY[0x1865CB0E0](0xD000000000000030, 0x800000018147E380);
  MEMORY[0x1865CB0E0](v179, v190);
  MEMORY[0x1865CB0E0](32, 0xE100000000000000);
  LOBYTE(v235._countAndFlagsBits) = v168;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](8250, 0xE200000000000000);
  LODWORD(v235._countAndFlagsBits) = 0;
  type metadata accessor for UErrorCode(0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}